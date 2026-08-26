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
  int _71;
  int _72;
  int4 _80;
  int _90;
  int _94;
  uint _100;
  uint _102;
  float _103;
  float _104;
  float _105;
  float _106;
  float _110;
  float _111;
  float _113;
  uint2 _116;
  int _118;
  float _121;
  float _122;
  bool _127;
  float _128;
  float _129;
  bool _130;
  float _131;
  bool _132;
  float _133;
  bool _134;
  float _135;
  bool _136;
  half _277;
  half _278;
  half _279;
  half _280;
  half _281;
  int _468;
  half _510;
  half _511;
  half _512;
  half _513;
  half _521;
  half _522;
  half _523;
  half _524;
  int _525;
  int _526;
  float _527;
  float _528;
  bool _629;
  float _851;
  float _852;
  float _1071;
  float _1072;
  float _1073;
  float _1074;
  float _1108;
  float _1109;
  float _1110;
  float _1111;
  int _1117;
  half _1118;
  float _1119;
  float _1120;
  float _1121;
  float _1122;
  float _1151;
  half _1152;
  float _1154;
  float _1180;
  float _1181;
  float _1188;
  float _1189;
  float _1190;
  float _1191;
  half _1192;
  float _1198;
  float _1199;
  float _1200;
  float _1201;
  half _1202;
  half _1263;
  float _1280;
  float _1644;
  half _1645;
  float _1646;
  float _1647;
  float _1648;
  int _1649;
  float _1650;
  float _1651;
  float _1652;
  bool _1705;
  bool _1708;
  bool _1709;
  float _1727;
  float _1738;
  float _1739;
  half _1749;
  half _1750;
  float _1751;
  half _1752;
  half _1753;
  half _1754;
  float _1755;
  float _1767;
  bool _1790;
  float _1799;
  float _1840;
  float _1841;
  float _1929;
  float _2007;
  float _2166;
  float _2167;
  float _2168;
  float _2169;
  float _2332;
  int _2333;
  float _2390;
  float _2402;
  float _2434;
  float _2521;
  float _2522;
  float _2523;
  float _2524;
  float _2526;
  float _2527;
  float _2528;
  float _2529;
  float _2533;
  float _2534;
  float _2535;
  float _2536;
  float _2537;
  float _2562;
  float _2587;
  bool _2598;
  half _2641;
  int _2642;
  float _2643;
  float _2644;
  float _2645;
  float _2782;
  float _2835;
  float _2854;
  float _2858;
  half _2882;
  half _2885;
  half _2886;
  float _2992;
  float _3040;
  float _3055;
  float _3157;
  int _3158;
  int _3159;
  float _3160;
  float _3161;
  float _3162;
  float _3163;
  float _3321;
  float _3322;
  float _3323;
  float _3324;
  float _3389;
  float _3402;
  float _3403;
  float _3404;
  float _3458;
  float _3459;
  float _3523;
  float _3524;
  float _3525;
  float _3594;
  float _3595;
  float _3596;
  float _3611;
  float _3612;
  float _3613;
  float _3614;
  float _3615;
  bool _3677;
  bool _3678;
  float _3714;
  float _3715;
  float _3716;
  float _3717;
  float _3783;
  float _3786;
  float _3787;
  float _3788;
  float _3789;
  float _3824;
  float _3825;
  float _3826;
  float _3841;
  float _3870;
  float _3871;
  float _3872;
  float _3873;
  float _3874;
  half _3881;
  half _3882;
  half _3883;
  half _3884;
  half _3885;
  float _3886;
  float _3892;
  half _3893;
  half _3894;
  half _3895;
  half _3896;
  half _3897;
  float _3898;
  float _3899;
  float _3900;
  float _3901;
  float _3902;
  float _3903;
  half _3944;
  half _3945;
  half _3946;
  float _3961;
  float _3962;
  float _3963;
  float _3983;
  float _4048;
  float _4146;
  float _4147;
  float _4148;
  bool _4208;
  bool _4228;
  bool _4230;
  bool _4231;
  float _4248;
  int _4249;
  float _4250;
  float _4251;
  float _4252;
  float _4253;
  float _4297;
  float _4334;
  float _4341;
  float _4342;
  float _4343;
  bool _4367;
  bool _4370;
  bool _4371;
  float _4388;
  float _4389;
  float _4390;
  float _4431;
  float _4699;
  float _4700;
  float _4701;
  float _4702;
  float _4703;
  float _4704;
  float _4705;
  float _4706;
  float _4707;
  float _4879;
  float _4880;
  float _4881;
  float _4882;
  float _4883;
  float _4884;
  float _4885;
  float _4886;
  float _4887;
  float _4977;
  float _4978;
  float _4979;
  float _5018;
  float _5019;
  float _5020;
  float _5023;
  float _5024;
  float _5025;
  float _5053;
  float _5054;
  float _5055;
  float _5056;
  float _5057;
  float _5058;
  float _5124;
  float _5125;
  float _5126;
  float _5127;
  float _5128;
  float _5129;
  float _5130;
  float _5131;
  float _5163;
  float _5164;
  float _5165;
  float _5166;
  float _5167;
  float _5168;
  float _5169;
  float _5170;
  float _5171;
  float _5172;
  float _5173;
  float _5185;
  float _5186;
  float _5187;
  float _5490;
  float _5506;
  float _5507;
  float _5508;
  float _5509;
  float _5510;
  float _5511;
  float _5512;
  float _5513;
  float _5514;
  float _5525;
  float _5526;
  float _5527;
  float _5539;
  float _5540;
  float _5541;
  float _5542;
  float _5543;
  float _5544;
  float _5545;
  float _5546;
  float _5547;
  float _5548;
  float _5549;
  float _5550;
  float _5552;
  float _5553;
  float _5554;
  float _5555;
  float _5556;
  float _5557;
  float _5558;
  float _5559;
  float _5560;
  float _5561;
  float _5562;
  float _5563;
  float _5577;
  float _5578;
  float _5693;
  float _5694;
  float _5695;
  float _5696;
  float _5697;
  float _5698;
  float _5699;
  float _5700;
  float _5701;
  float _5745;
  half _5794;
  half _5795;
  half _5796;
  float _5811;
  float _5846;
  float _5847;
  float _5940;
  float _5941;
  float _5942;
  float _6001;
  float _6002;
  float _6003;
  float _6036;
  float _6037;
  float _6038;
  bool _6064;
  float _6097;
  float _6098;
  float _6099;
  float _6119;
  float _6120;
  float _6121;
  float _6136;
  float _6137;
  float _6138;
  float _6157;
  float _6158;
  float _6159;
  uint4 _145;
  float4 _151;
  half _160;
  half _164;
  half _169;
  half _173;
  half _178;
  half _182;
  uint _185;
  bool _186;
  bool _187;
  float _197;
  float _198;
  float _199;
  float _201;
  half _205;
  half _206;
  half _207;
  int _208;
  half _222;
  half _223;
  float _228;
  float _229;
  float _233;
  float _235;
  float _242;
  float _243;
  float _244;
  float _246;
  float _249;
  float _250;
  float _251;
  float _252;
  float _259;
  float _260;
  float _261;
  half _283;
  half _284;
  half _285;
  half _286;
  half _290;
  half _291;
  half _292;
  half _308;
  half _309;
  half _310;
  bool _315;
  half _317;
  uint _335;
  uint _343;
  uint _351;
  uint _359;
  uint _367;
  uint _375;
  uint _383;
  uint _391;
  uint _399;
  uint _407;
  uint _415;
  uint _423;
  uint _431;
  uint _439;
  uint _447;
  uint _455;
  int _497;
  int _498;
  int4 _531;
  int _536;
  int _540;
  int _544;
  int _548;
  float _575;
  float _580;
  float _581;
  float _582;
  float _583;
  float _584;
  float _585;
  float _586;
  float _587;
  int _588;
  int _589;
  int _590;
  int _591;
  float _631;
  float _636;
  float _638;
  bool _657;
  int4 _686;
  float _705;
  float _706;
  float _707;
  float _709;
  float _713;
  float _714;
  float _715;
  float _731;
  float _732;
  float _733;
  float _735;
  float _754;
  float _755;
  float _756;
  float _758;
  float _777;
  float _778;
  float _779;
  float _781;
  bool _786;
  float _787;
  float _800;
  float _801;
  float _802;
  float _803;
  float _808;
  float _811;
  float _814;
  float _817;
  float _820;
  float _853;
  float _854;
  float _855;
  float _856;
  float _857;
  float _858;
  float _859;
  float _860;
  bool _869;
  float _878;
  float _879;
  float _880;
  float _881;
  float _882;
  float _883;
  float _888;
  float _889;
  float _890;
  float _891;
  float _895;
  float _904;
  float _905;
  float _906;
  float _907;
  half4 _909;
  uint _919;
  half4 _920;
  uint _933;
  half4 _934;
  half4 _947;
  float4 _961;
  float4 _968;
  float4 _978;
  float4 _988;
  bool _1005;
  float _1007;
  float _1009;
  float _1045;
  float _1046;
  float _1047;
  float _1048;
  float _1050;
  float _1051;
  float _1052;
  float _1053;
  bool _1054;
  bool _1056;
  bool _1060;
  float4 _1065;
  uint _1093;
  int _1095;
  float4 _1102;
  bool _1126;
  float _1133;
  float _1164;
  float _1165;
  float _1167;
  float _1168;
  float _1169;
  float _1183;
  float4 _1204;
  float4 _1211;
  float4 _1221;
  float4 _1231;
  float _1244;
  float _1245;
  float _1246;
  float _1248;
  float _1249;
  float _1250;
  float _1251;
  float _1264;
  float _1281;
  float _1282;
  float _1283;
  float _1284;
  float _1285;
  float _1286;
  float _1287;
  float _1288;
  float _1294;
  float _1298;
  float _1299;
  float _1300;
  float _1304;
  float _1305;
  float _1306;
  float _1313;
  float _1323;
  float _1324;
  float _1325;
  float _1326;
  float _1327;
  float _1328;
  float _1337;
  float _1342;
  float _1348;
  float _1349;
  float _1353;
  float _1354;
  float _1359;
  float _1360;
  float _1361;
  float _1362;
  float _1374;
  float _1378;
  float _1388;
  float _1389;
  float _1393;
  float _1395;
  float _1396;
  float _1409;
  float _1419;
  float _1420;
  float _1421;
  float _1430;
  float2 _1439;
  float2 _1442;
  float2 _1445;
  float _1452;
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
  float _1479;
  float _1480;
  float _1481;
  float _1482;
  float _1483;
  float _1484;
  float _1492;
  float _1493;
  float _1494;
  float _1495;
  float _1497;
  float _1498;
  float _1499;
  float _1500;
  float _1501;
  float _1502;
  float _1505;
  float _1506;
  float _1507;
  float _1517;
  float _1540;
  float _1544;
  float _1548;
  float _1566;
  float _1573;
  float _1574;
  float _1575;
  float _1584;
  float _1591;
  float _1598;
  float _1626;
  float _1627;
  float _1628;
  float _1629;
  float _1630;
  float _1659;
  float _1660;
  float _1661;
  half2 _1663;
  half2 _1670;
  half2 _1679;
  half2 _1688;
  float _1695;
  bool _1702;
  bool _1714;
  bool _1715;
  float _1717;
  bool _1720;
  bool _1722;
  uint _1729;
  half _1740;
  bool _1744;
  int _1756;
  bool _1757;
  bool _1758;
  bool _1759;
  float _1760;
  float _1761;
  float _1762;
  float _1763;
  float _1768;
  int _1769;
  bool _1770;
  float _1827;
  float2 _1834;
  float _1843;
  float _1846;
  float _1847;
  float _1855;
  float _1861;
  float _1862;
  int _1865;
  int _1866;
  float _1867;
  float _1868;
  float _1873;
  float _1874;
  int4 _1876;
  int _1899;
  float _1937;
  float _1938;
  float _1939;
  float _1940;
  float _1944;
  float _1961;
  float _1962;
  float _1965;
  bool _1980;
  float _1982;
  float _1984;
  bool _1988;
  float _2013;
  float _2018;
  float _2019;
  float _2020;
  float _2021;
  float _2022;
  float _2023;
  float _2024;
  float _2025;
  float _2027;
  float _2040;
  float _2041;
  float _2042;
  float _2043;
  int _2045;
  int _2046;
  int _2047;
  int _2048;
  bool _2070;
  bool _2074;
  bool _2078;
  bool _2082;
  bool _2095;
  bool _2097;
  bool _2106;
  bool _2128;
  int4 _2171;
  float _2190;
  float _2191;
  float _2192;
  float _2194;
  float _2199;
  float _2214;
  float _2215;
  float _2216;
  float _2218;
  float _2223;
  float _2238;
  float _2239;
  float _2240;
  float _2242;
  float _2247;
  float _2262;
  float _2263;
  float _2264;
  float _2266;
  float _2271;
  float _2274;
  float _2291;
  float _2292;
  float _2293;
  float _2294;
  float _2299;
  float _2301;
  float _2303;
  float _2305;
  float _2307;
  float _2308;
  float _2309;
  float _2310;
  int _2313;
  int _2314;
  int _2322;
  int _2324;
  float _2343;
  uint _2344;
  half4 _2346;
  uint _2351;
  half4 _2352;
  half4 _2357;
  half4 _2362;
  float _2367;
  float _2376;
  float _2381;
  float _2394;
  float _2397;
  bool _2398;
  bool _2403;
  float _2404;
  float _2406;
  float4 _2409;
  float _2414;
  float _2416;
  float _2418;
  float _2419;
  float _2420;
  float _2421;
  float _2476;
  float _2493;
  float _2494;
  float _2495;
  float _2500;
  float _2516;
  float _2544;
  float _2545;
  float _2546;
  float _2553;
  float _2554;
  float _2555;
  float _2563;
  float _2569;
  float _2579;
  float _2580;
  float _2581;
  float _2582;
  bool _2590;
  bool _2600;
  half _2603;
  uint _2626;
  int _2628;
  float4 _2635;
  float _2647;
  float _2651;
  float _2652;
  float _2653;
  float _2659;
  float _2667;
  float _2669;
  float _2671;
  float _2675;
  float _2685;
  float _2686;
  float _2687;
  float _2688;
  float _2693;
  float _2698;
  float _2700;
  float _2702;
  float _2726;
  float _2730;
  float _2734;
  float _2738;
  float _2768;
  float _2773;
  float _2774;
  int _2786;
  bool _2789;
  float _2791;
  float _2795;
  float _2800;
  float _2826;
  float _2837;
  float _2843;
  float _2865;
  half _2871;
  half _2877;
  float _2887;
  float _2888;
  float _2889;
  float _2902;
  float _2903;
  float _2904;
  float _2905;
  float _2945;
  float _2950;
  float _2951;
  float _2952;
  float _2953;
  float _2963;
  float _2966;
  float _2982;
  float _3020;
  float _3023;
  float _3024;
  float _3025;
  float _3026;
  float _3056;
  bool _3058;
  float _3069;
  float _3070;
  int _3073;
  int _3074;
  float _3075;
  float _3076;
  int4 _3086;
  int _3093;
  float _3122;
  float _3123;
  float _3124;
  float _3125;
  float _3140;
  float _3141;
  float _3142;
  float _3143;
  bool _3164;
  uint _3165;
  half4 _3167;
  float _3180;
  uint _3186;
  half4 _3187;
  float _3200;
  half4 _3210;
  float _3223;
  half4 _3233;
  float _3246;
  float _3270;
  float _3272;
  float _3274;
  float _3276;
  float _3277;
  float _3286;
  float _3293;
  float _3300;
  float _3325;
  float _3326;
  float _3327;
  float _3340;
  float _3350;
  float _3351;
  float _3352;
  float _3364;
  float _3369;
  bool _3370;
  int _3372;
  bool _3392;
  float _3393;
  float _3394;
  float _3395;
  float _3396;
  float _3406;
  float _3407;
  float _3408;
  bool _3410;
  float _3411;
  float _3412;
  float _3413;
  float2 _3428;
  float2 _3434;
  float _3441;
  float _3442;
  float _3444;
  float _3452;
  float _3454;
  float _3461;
  float _3464;
  float _3465;
  float _3467;
  float _3475;
  float _3476;
  float _3477;
  float4 _3482;
  float _3486;
  float _3487;
  float _3488;
  float _3490;
  float _3494;
  float _3495;
  float _3496;
  float _3498;
  float2 _3511;
  float _3518;
  float _3531;
  float2 _3536;
  float2 _3541;
  float _3545;
  float _3547;
  float _3564;
  float _3568;
  float _3569;
  float _3570;
  float _3577;
  float2 _3601;
  float _3618;
  float _3625;
  float _3626;
  float _3627;
  float _3648;
  float4 _3658;
  bool _3688;
  float4 _3708;
  float _3724;
  float _3727;
  float _3740;
  float _3741;
  float _3742;
  float _3747;
  float _3752;
  float _3763;
  float _3781;
  float _3793;
  bool _3794;
  float _3797;
  float _3842;
  float _3843;
  float _3844;
  float _3849;
  float _3852;
  float _3859;
  float _3860;
  half4 _3905;
  float _3910;
  float _3911;
  float _3912;
  uint _3916;
  float _3932;
  float _3933;
  float _3934;
  float _3936;
  bool _3949;
  float _3990;
  float _3991;
  float _3992;
  float _3993;
  float _3999;
  float _4004;
  float _4010;
  float _4018;
  float _4025;
  float2 _4053;
  float _4075;
  float _4093;
  float _4094;
  float _4095;
  float _4111;
  float _4119;
  float _4131;
  float _4134;
  float _4140;
  float _4168;
  float _4170;
  float _4177;
  float _4178;
  float _4179;
  float _4180;
  float _4200;
  float _4201;
  float _4202;
  float _4210;
  float _4211;
  bool _4214;
  bool _4217;
  bool _4225;
  float _4232;
  float _4233;
  float _4234;
  uint16_t _4236;
  float _4258;
  float _4259;
  float _4260;
  float _4261;
  float _4272;
  float _4277;
  float _4278;
  float _4279;
  float _4281;
  float _4282;
  float _4283;
  float _4284;
  bool _4287;
  float _4289;
  bool _4290;
  float _4303;
  float _4313;
  float _4314;
  float _4315;
  float _4316;
  int _4317;
  bool _4318;
  bool _4321;
  float _4335;
  float _4344;
  float _4345;
  bool _4347;
  float _4349;
  float _4350;
  float _4351;
  bool _4353;
  float _4376;
  float _4391;
  float _4392;
  float _4393;
  float _4394;
  float _4395;
  float _4396;
  float _4397;
  float _4399;
  float _4400;
  float _4401;
  float _4402;
  float _4403;
  float _4404;
  float _4406;
  float _4408;
  float _4409;
  float _4411;
  bool _4412;
  bool _4413;
  bool _4414;
  float _4446;
  float _4450;
  float4 _4455;
  float _4459;
  float _4460;
  float _4461;
  float _4462;
  float _4473;
  float _4474;
  float _4480;
  float _4484;
  float _4485;
  float _4486;
  float _4490;
  float _4491;
  float _4492;
  float _4499;
  float _4503;
  float _4510;
  float _4511;
  float _4512;
  float _4513;
  float _4514;
  float _4515;
  float _4517;
  float _4531;
  float _4532;
  float _4539;
  float _4548;
  float _4553;
  float _4559;
  float _4560;
  float _4564;
  float _4565;
  float _4570;
  float _4571;
  float _4572;
  float _4573;
  float _4585;
  float _4589;
  float _4599;
  float _4600;
  float _4604;
  float _4606;
  float _4607;
  float _4620;
  float _4627;
  float _4628;
  float _4638;
  float _4649;
  float _4654;
  float _4673;
  float _4675;
  float _4677;
  float _4679;
  float _4686;
  float _4687;
  float _4688;
  float _4695;
  float _4696;
  float _4697;
  bool _4709;
  bool _4710;
  bool _4711;
  float _4726;
  float _4732;
  float _4733;
  float _4734;
  float _4735;
  float _4736;
  float _4737;
  float _4738;
  float _4745;
  float _4758;
  float _4761;
  float _4762;
  float _4764;
  float _4767;
  float _4768;
  float _4769;
  float _4773;
  float _4774;
  float _4775;
  float _4776;
  float _4777;
  float _4778;
  float _4790;
  float _4794;
  float _4798;
  float _4799;
  float _4800;
  float _4801;
  float _4813;
  float _4817;
  float _4833;
  float _4838;
  float _4839;
  float _4849;
  float _4874;
  float _4890;
  float _4891;
  float _4892;
  float _4893;
  float _4896;
  float _4897;
  float _4898;
  float _4903;
  float _4904;
  float _4931;
  float _4934;
  float _4935;
  float _4937;
  float _4940;
  float _4941;
  float _4945;
  float _4946;
  float _4947;
  float _4949;
  float _4950;
  float _4962;
  float _4966;
  float _4987;
  float _4999;
  float _5003;
  float _5010;
  float _5030;
  float _5039;
  float _5061;
  float _5065;
  float _5066;
  float _5067;
  float _5068;
  float _5069;
  float _5070;
  float _5072;
  float _5073;
  float _5074;
  float _5075;
  float _5076;
  float _5077;
  float _5078;
  float _5080;
  float _5082;
  float _5084;
  float _5095;
  float _5098;
  float _5153;
  float _5154;
  float _5155;
  float _5177;
  float _5189;
  float _5193;
  float _5194;
  float _5196;
  float _5201;
  float _5209;
  float _5215;
  float _5217;
  float _5222;
  float _5237;
  float _5247;
  float _5250;
  float _5257;
  float _5258;
  float _5259;
  float _5265;
  float2 _5274;
  float2 _5277;
  float2 _5280;
  float _5289;
  float _5290;
  float _5291;
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
  float _5302;
  float _5303;
  float _5304;
  float _5305;
  float _5306;
  float _5316;
  float _5317;
  float _5318;
  float _5319;
  float _5320;
  float _5321;
  float _5329;
  float _5330;
  float _5331;
  float _5332;
  float _5334;
  float _5335;
  float _5336;
  float _5337;
  float _5338;
  float _5339;
  float _5343;
  float _5344;
  float _5354;
  float _5377;
  float _5381;
  float _5385;
  float _5403;
  float _5410;
  float _5411;
  float _5412;
  float _5416;
  float _5423;
  float _5430;
  float _5438;
  float _5459;
  float _5491;
  float _5501;
  float _5528;
  float _5529;
  float _5530;
  float _5532;
  float _5534;
  float _5536;
  float _5571;
  float _5573;
  float _5580;
  float _5583;
  float _5584;
  float _5586;
  float4 _5594;
  float _5598;
  float _5599;
  float _5600;
  float _5602;
  float _5606;
  float _5607;
  float _5608;
  float _5610;
  float _5611;
  float _5612;
  float _5613;
  float _5625;
  float _5626;
  float _5629;
  float _5630;
  float _5644;
  float _5646;
  float _5648;
  float _5649;
  float _5651;
  float _5667;
  float _5674;
  float _5679;
  float _5708;
  float _5709;
  float _5710;
  uint _5713;
  bool _5728;
  float _5760;
  float _5764;
  float _5765;
  float _5766;
  float _5769;
  half _5776;
  half _5777;
  half _5778;
  half _5801;
  float _5802;
  float _5803;
  float _5804;
  float _5812;
  float _5818;
  float _5825;
  float _5826;
  float _5827;
  float _5828;
  float _5829;
  float _5830;
  float2 _5842;
  float _5851;
  float _5852;
  float _5853;
  float _5855;
  float _5862;
  float _5863;
  float _5864;
  float _5881;
  float _5882;
  float _5883;
  float _5884;
  float _5895;
  half _5905;
  half _5906;
  half _5907;
  float _5909;
  float _5910;
  float _5911;
  float _5915;
  float _5923;
  float _5946;
  float _5947;
  float _5948;
  float _5977;
  float _5978;
  float _5979;
  float _5980;
  float _5993;
  float _5994;
  float _5995;
  float _6007;
  float _6008;
  float _6009;
  float _6011;
  float _6012;
  float _6013;
  float _6014;
  float _6015;
  float _6016;
  float _6020;
  float _6021;
  float _6022;
  float _6026;
  float _6027;
  float _6028;
  float _6043;
  float _6104;
  float _6108;
  float _6122;
  float _6123;
  float _6124;
  float _6129;
  float _6130;
  float _6131;
  float _6147;
  float _6148;
  float _6152;
  int _57[4];
  _71 = (int)(SV_GroupID.x) & 15;
  _72 = (uint)((uint)(_71)) >> 2;
  _80 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 7))]);
  _57[0] = _80.x;
  _57[1] = _80.y;
  _57[2] = _80.z;
  _57[3] = _80.w;
  _90 = _57[(((uint)(SV_GroupID.x) >> 5) & 3)];
  _94 = select((((int)(SV_GroupID.x) & 16) == 0), _90, ((uint)((uint)(_90)) >> 16));
  _100 = (uint)((uint)((uint)((int)((int)(_71) - (int)((int)(_72) << 2)) << 3)) + (uint)(SV_GroupThreadID.x)) + (uint)((uint)(((int)((uint)((uint)(_94)) << 5)) & 8160));
  _102 = (uint)((uint)((uint)((int)(_72) << 3)) + (uint)(SV_GroupThreadID.y)) + (uint)((uint)(((uint)((uint)(_94)) >> 3) & 8160));
  _103 = (float)((uint)((uint)(_100)));
  _104 = (float)((uint)((uint)(_102)));
  _105 = _103 + 0.5f;
  _106 = _104 + 0.5f;
  _110 = _bufferSizeAndInvSize.z * _105;
  _111 = _106 * _bufferSizeAndInvSize.w;
  _113 = __3__36__0__0__g_depth.Load(int3(_100, _102, 0));  // [sem: _3__36__0__0__g_depth_load]
  _116 = __3__36__0__0__g_stencil.Load(int3(_100, _102, 0));  // [sem: _3__36__0__0__g_stencil_load]
  _118 = _116.x & 127;  // [sem: _3__36__0__0__g_stencil_load_derived]
  _121 = max(1e-07f, _113.x);  // [sem: _3__36__0__0__g_depth_load_derived]
  _122 = _nearFarProj.x / _121;
  _127 = ((_113.x < 1e-07f) || (_113.x == 1.0f)) || (_118 == 10);
  _128 = (float)((bool)(_127));
  _129 = QuadReadLaneAt(_128, 0);
  _130 = !(_129 == 0.0f);
  _131 = QuadReadLaneAt(_128, 1);
  _132 = !(_131 == 0.0f);
  _133 = QuadReadLaneAt(_128, 2);
  _134 = !(_133 == 0.0f);
  _135 = QuadReadLaneAt(_128, 3);
  _136 = !(_135 == 0.0f);
  if (!(((_130 && _132) && _134) && _136)) {
    _145 = __3__36__0__0__g_baseColor.Load(int3(_100, _102, 0));  // [sem: _3__36__0__0__g_baseColor_load]
    _151 = __3__36__0__0__g_normal.Load(int3(_100, _102, 0));  // [sem: _3__36__0__0__g_normal_load]
    _160 = half(((float)((uint)((uint)(((uint)((uint)(_145.x)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _164 = half(((float)((uint)((uint)(_145.x & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _169 = half(((float)((uint)((uint)(((uint)((uint)(_145.y)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _173 = half(((float)((uint)((uint)(_145.y & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _178 = half(((float)((uint)((uint)(((uint)((uint)(_145.w)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _182 = half(((float)((uint)((uint)(_145.w & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _185 = (uint)((_151.w * 3.0f) + 0.5f);  // [sem: _3__36__0__0__g_normal_load_derived]
    _186 = (_185 == 1);
    _187 = (_185 == 3);
    _197 = (saturate(_151.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _198 = (saturate(_151.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _199 = (saturate(_151.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _201 = rsqrt(dot(float3(_197, _198, _199), float3(_197, _198, _199)));  // [sem: invLength]
    _205 = half(_201 * _197);
    _206 = half(_201 * _198);
    _207 = half(_199 * _201);
    _208 = _116.x & 126;  // [sem: _3__36__0__0__g_stencil_load_derived]
    if (!(_208 == 24)) {
      _222 = ((half)(_178 * 2.0h)) + -1.0h;
      _223 = ((half)(_182 * 2.0h)) + -1.0h;
      _228 = float(_222 + _223) * 0.5f;
      _229 = float(_222 - _223) * 0.5f;
      _233 = (1.0f - abs(_228)) - abs(_229);
      _235 = rsqrt(dot(float3(_228, _229, _233), float3(_228, _229, _233)));  // [sem: invLength]
      _242 = float(_205);
      _243 = float(_206);
      _244 = float(_207);
      _246 = select((_207 >= 0.0h), 1.0f, -1.0f);
      _249 = -0.0f - (1.0f / (_246 + _244));
      _250 = _243 * _249;
      _251 = _250 * _242;
      _252 = _246 * _242;
      _259 = float(half(_235 * _228));
      _260 = float(half(_235 * _229));
      _261 = float(half(_235 * _233));
      _277 = (half)(half(((float)((uint)((uint)(_145.z & 255)))) * 0.003921569f));
      _278 = (half)(half(((float)((uint)((uint)(((uint)((uint)(_145.z)) >> 8) & 255)))) * 0.003921569f));
      _279 = (half)(half(mad(_261, _242, mad(_260, _251, (_259 * (((_252 * _242) * _249) + 1.0f))))));
      _280 = (half)(half(mad(_261, _243, mad(_260, ((_250 * _243) + _246), ((_259 * _246) * _251)))));
      _281 = (half)(half(mad(_261, _244, mad(_260, (-0.0f - _243), (-0.0f - (_252 * _259))))));
    } else {
      _277 = _182;
      _278 = _178;
      _279 = _205;
      _280 = _206;
      _281 = _207;
    }
    _283 = rsqrt((half)(dot(half3(_279, _280, _281), half3(_279, _280, _281))));  // [sem: invLength]
    _284 = _283 * _279;
    _285 = _283 * _280;
    _286 = _283 * _281;
    _290 = saturate((half)(_160 * _160));  // [sem: expr_sat]
    _291 = saturate((half)(_164 * _164));  // [sem: expr_sat]
    _292 = saturate((half)(_169 * _169));  // [sem: expr_sat]
    // [sem: expr_sat]
    _308 = saturate((half)(((half)(((half)(_291 * 0.3395996h)) + ((half)(_290 * 0.61328125h)))) + ((half)(_292 * 0.04736328h))));
    // [sem: expr_sat]
    _309 = saturate((half)(((half)(((half)(_291 * 0.9165039h)) + ((half)(_290 * 0.07019043h)))) + ((half)(_292 * 0.013450623h))));
    // [sem: expr_sat]
    _310 = saturate((half)(((half)(((half)(_291 * 0.109558105h)) + ((half)(_290 * 0.020614624h)))) + ((half)(_292 * 0.8696289h))));
    if ((uint)((int)(_118) + (int)(-65)) < (uint)2) {
      _510 = _173;
      _511 = _205;
      _512 = _206;
      _513 = _207;
      _521 = _510;
      _522 = _511;
      _523 = _512;
      _524 = _513;
      _525 = ((int)((int)((uint)((uint)(max((int)(1), (int)(_100)))) + (uint)(-1))) >> 1);
      _526 = ((int)((int)((uint)((uint)(max((int)(1), (int)(_102)))) + (uint)(-1))) >> 1);
      _527 = _110;
      _528 = _111;
    } else {
      _315 = (_118 == 29);
      _317 = select(((_118 == 24) || _315), 0.0f, _173);
      if (_315) {
        _335 = (uint)((uint)((_bufferSizeAndInvSize.x * ((float)((int)(_102)))) + ((float)((int)(_100))))) + (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524))));
        _343 = (uint)((uint)((((int)((uint)((uint)((uint)(_335)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_335)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_335)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
        _351 = (uint)((uint)((((int)((uint)((uint)((uint)(_343)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_343)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_343)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_335));
        _359 = (uint)((uint)((((int)((uint)((uint)((uint)(_351)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_351)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_351)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_343));
        _367 = (uint)((uint)((((int)((uint)((uint)((uint)(_359)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_359)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_359)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_351));
        _375 = (uint)((uint)((((int)((uint)((uint)((uint)(_367)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_367)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_367)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_359));
        _383 = (uint)((uint)((((int)((uint)((uint)((uint)(_375)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_375)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_375)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_367));
        _391 = (uint)((uint)((((int)((uint)((uint)((uint)(_383)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_383)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_383)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_375));
        _399 = (uint)((uint)((((int)((uint)((uint)((uint)(_391)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_391)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_391)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_383));
        _407 = (uint)((uint)((((int)((uint)((uint)((uint)(_399)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_399)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_399)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_391));
        _415 = (uint)((uint)((((int)((uint)((uint)((uint)(_407)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_407)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_407)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_399));
        _423 = (uint)((uint)((((int)((uint)((uint)((uint)(_415)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_415)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_415)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_407));
        _431 = (uint)((uint)((((int)((uint)((uint)((uint)(_423)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_423)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_423)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_415));
        _439 = (uint)((uint)((((int)((uint)((uint)((uint)(_431)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_431)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_431)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_423));
        _447 = (uint)((uint)((((int)((uint)((uint)((uint)(_439)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_439)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_439)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_431));
        _455 = (uint)((uint)((((int)((uint)((uint)((uint)(_447)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_447)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_447)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_439));
        if ((_447 & 16777215) == 0) {
          _468 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_455)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_455)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_455)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_447))));
        } else {
          _468 = _447;
        }
        _497 = (int)(min(max(((((saturate(1.0f - (_122 * 0.015625f)) * 4.0f) * ((((float)((uint)((uint)(((int)((uint)((uint)(_468)) * (uint)(48271))) & 16777215)))) * 1.1920929e-07f) + -1.0f)) + ((float)((int)((int)((uint)((uint)(max((int)(1), (int)(_100)))) + (uint)(-1)))))) * 0.5f), 0.0f), ((_bufferSizeAndInvSize.x * 0.5f) + -2.0f)));
        _498 = (int)(min(max((((float)((int)((int)((uint)((uint)(max((int)(1), (int)(_102)))) + (uint)(-1))))) * 0.5f), 0.0f), ((_bufferSizeAndInvSize.y * 0.5f) + -2.0f)));
        _521 = _317;
        _522 = _284;
        _523 = _285;
        _524 = _286;
        _525 = _497;
        _526 = _498;
        _527 = ((_bufferSizeAndInvSize.z * 2.0f) * (((float)((int)(_497))) + 0.5f));
        _528 = ((_bufferSizeAndInvSize.w * 2.0f) * (((float)((int)(_498))) + 0.5f));
      } else {
        _510 = _317;
        _511 = _284;
        _512 = _285;
        _513 = _286;
        _521 = _510;
        _522 = _511;
        _523 = _512;
        _524 = _513;
        _525 = ((int)((int)((uint)((uint)(max((int)(1), (int)(_100)))) + (uint)(-1))) >> 1);
        _526 = ((int)((int)((uint)((uint)(max((int)(1), (int)(_102)))) + (uint)(-1))) >> 1);
        _527 = _110;
        _528 = _111;
      }
    }
    _531 = __3__36__0__0__g_normalDepthHalf.GatherGreen(__3__40__0__0__g_samplerPoint, float2(_527, _528));  // [sem: _3__36__0__0__g_normalDepthHalf_gather]
    _536 = (uint)((uint)(_531.w)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _540 = (uint)((uint)(_531.z)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _544 = (uint)((uint)(_531.x)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _548 = (uint)((uint)(_531.y)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _575 = (max(0.0f, (_122 + -1.0f)) * 0.05f) * _temporalReprojectionParams.y;
    _580 = max(0.0f, (abs(_122 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_531.w & 16777215)))) * 5.960465e-08f)))) - _575));
    _581 = max(0.0f, (abs(_122 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_531.z & 16777215)))) * 5.960465e-08f)))) - _575));
    _582 = max(0.0f, (abs(_122 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_531.x & 16777215)))) * 5.960465e-08f)))) - _575));
    _583 = max(0.0f, (abs(_122 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_531.y & 16777215)))) * 5.960465e-08f)))) - _575));
    _584 = _580 * _580;
    _585 = _581 * _581;
    _586 = _582 * _582;
    _587 = _583 * _583;
    _588 = _536 & 127;
    _589 = _540 & 127;
    _590 = _544 & 127;
    _591 = _548 & 127;
    if ((uint)_118 > (uint)11) {
      if (!(((uint)_118 < (uint)21) || (_118 == 107))) {
        _629 = (_118 == 7);
      } else {
        _629 = true;
      }
    } else {
      if (!(_118 == 6)) {
        _629 = (_118 == 7);
      } else {
        _629 = true;
      }
    }
    _631 = _122 * _122;
    _636 = (_631 * 0.2f) + 1.0f;
    _638 = select(_629, -7.213475f, -72.13475f) * (1.0f / ((select(_629, 0.05f, 0.01f) * _631) + 1.0f));
    _657 = (_208 == 66) || (_118 == 53);
    _686 = __3__36__0__0__g_normalDepthHalf.GatherRed(__3__40__0__0__g_samplerPoint, float2(_527, _528));  // [sem: _3__36__0__0__g_normalDepthHalf_gather]
    _705 = min(1.0f, ((((float)((uint)((uint)(_686.w & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _706 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_686.w)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _707 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_686.w)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _709 = rsqrt(dot(float3(_705, _706, _707), float3(_705, _706, _707)));  // [sem: invLength]
    _713 = float(_522);
    _714 = float(_523);
    _715 = float(_524);
    _731 = min(1.0f, ((((float)((uint)((uint)(_686.z & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _732 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_686.z)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _733 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_686.z)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _735 = rsqrt(dot(float3(_731, _732, _733), float3(_731, _732, _733)));  // [sem: invLength]
    _754 = min(1.0f, ((((float)((uint)((uint)(_686.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _755 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_686.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _756 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_686.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _758 = rsqrt(dot(float3(_754, _755, _756), float3(_754, _755, _756)));  // [sem: invLength]
    _777 = min(1.0f, ((((float)((uint)((uint)(_686.y & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _778 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_686.y)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _779 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_686.y)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _781 = rsqrt(dot(float3(_777, _778, _779), float3(_777, _778, _779)));  // [sem: invLength]
    _786 = (_118 == 29);
    _787 = select(_786, 8192.0f, 256.0f);
    _800 = exp2(log2(saturate(dot(float3(_713, _714, _715), float3((_709 * _705), (_709 * _706), (_709 * _707))))) * _787);
    _801 = exp2(log2(saturate(dot(float3(_713, _714, _715), float3((_735 * _731), (_735 * _732), (_735 * _733))))) * _787);
    _802 = exp2(log2(saturate(dot(float3(_713, _714, _715), float3((_758 * _754), (_758 * _755), (_758 * _756))))) * _787);
    _803 = exp2(log2(saturate(dot(float3(_713, _714, _715), float3((_781 * _777), (_781 * _778), (_781 * _779))))) * _787);
    _808 = 1.0f / max(1e-06f, (((_801 + _800) + _802) + _803));
    _811 = ((select((_584 > _636), 0.0f, exp2(_638 * _584)) * ((float)((bool)(!(_657 ^ (((_536 & 126) == 66) || (_588 == 53))))))) * _800) * _808;
    _814 = ((select((_585 > _636), 0.0f, exp2(_638 * _585)) * ((float)((bool)(!(_657 ^ (((_540 & 126) == 66) || (_589 == 53))))))) * _801) * _808;
    _817 = ((select((_586 > _636), 0.0f, exp2(_638 * _586)) * ((float)((bool)(!(_657 ^ (((_544 & 126) == 66) || (_590 == 53))))))) * _802) * _808;
    _820 = ((select((_587 > _636), 0.0f, exp2(_638 * _587)) * ((float)((bool)(!(_657 ^ (((_548 & 126) == 66) || (_591 == 53))))))) * _803) * _808;
    if (_786) {
      _851 = abs(((((float)((int)(_100))) * 0.5f) + -0.25f) - ((float)((int)(_525))));
      _852 = abs(((((float)((int)(_102))) * 0.5f) + -0.25f) - ((float)((int)(_526))));
    } else {
      _851 = (((float)((uint)((uint)((uint)((uint)(_100)) - (uint)((uint)((uint)(_525)) << 1)) - (uint)((uint)(_frameNumber.x & 1))))) * 0.5f);
      _852 = (((float)((uint)((uint)((uint)((uint)(_102)) - (uint)((uint)((uint)(_526)) << 1)) - (uint)((uint)(((uint)((uint)(_frameNumber.x)) >> 1) & 1))))) * 0.5f);
    }
    _853 = saturate(_851);  // [sem: _851_sat]
    _854 = saturate(_852);  // [sem: _852_sat]
    _855 = 1.0f - _853;
    _856 = 1.0f - _854;
    _857 = _856 * _855;
    _858 = _856 * _853;
    _859 = _855 * _854;
    _860 = _854 * _853;
    _869 = (_118 != 29) && ((_820 == 0.0f) && ((_817 == 0.0f) && ((_811 == 0.0f) && (_814 == 0.0f))));
    _878 = saturate(_857 * select(_869, 1.0f, _811));  // [sem: expr_sat]
    _879 = saturate(_858 * select(_869, 1.0f, _814));  // [sem: expr_sat]
    _880 = saturate(_859 * select(_869, 1.0f, _817));  // [sem: expr_sat]
    _881 = saturate(_860 * select(_869, 1.0f, _820));  // [sem: expr_sat]
    _882 = dot(float4(_878, _879, _880, _881), float4(1.0f, 1.0f, 1.0f, 1.0f));
    _883 = max(0.0f, _882);
    _888 = saturate(_878 / _883);  // [sem: expr_sat]
    _889 = saturate(_879 / _883);  // [sem: expr_sat]
    _890 = saturate(_880 / _883);  // [sem: expr_sat]
    _891 = saturate(_881 / _883);  // [sem: expr_sat]
    _895 = (float)((bool)(((((_591 == 6) || ((_591 == 107) || ((uint)((int)(_591) + (int)(-12)) < (uint)9))) || (((_590 == 6) || ((_590 == 107) || ((uint)((int)(_590) + (int)(-12)) < (uint)9))) || (((_588 == 6) || ((_588 == 107) || ((uint)((int)(_588) + (int)(-12)) < (uint)9))) || ((_589 == 6) || ((_589 == 107) || ((uint)((int)(_589) + (int)(-12)) < (uint)9)))))) || _629) && (_882 < 0.0001f)));
    _904 = ((_857 - _888) * _895) + _888;
    _905 = ((_858 - _889) * _895) + _889;
    _906 = ((_859 - _890) * _895) + _890;
    _907 = ((_860 - _891) * _895) + _891;
    half4 _909 = __3__36__0__0__g_diffuseResult.Load(int3(_525, _526, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    _919 = (uint)((uint)(_525)) + (uint)(1);
    half4 _920 = __3__36__0__0__g_diffuseResult.Load(int3(_919, _526, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    _933 = (uint)((uint)(_526)) + (uint)(1);
    half4 _934 = __3__36__0__0__g_diffuseResult.Load(int3(_525, _933, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    half4 _947 = __3__36__0__0__g_diffuseResult.Load(int3(_919, _933, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    _961 = __3__36__0__0__g_specularResult.Load(int3(_525, _526, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _968 = __3__36__0__0__g_specularResult.Load(int3(_919, _526, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _978 = __3__36__0__0__g_specularResult.Load(int3(_525, _933, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _988 = __3__36__0__0__g_specularResult.Load(int3(_919, _933, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _1005 = ((uint)((int)(_118) + (int)(-27)) < (uint)2) || ((_118 == 26) || (((uint)((int)(_118) + (int)(-105)) < (uint)2) || _187));
    _1007 = (_110 * 2.0f) + -1.0f;
    _1009 = 1.0f - (_111 * 2.0f);
    _1045 = mad((_invViewProjRelative[3].z), _121, mad((_invViewProjRelative[3].y), _1009, ((_invViewProjRelative[3].x) * _1007))) + (_invViewProjRelative[3].w);
    _1046 = (mad((_invViewProjRelative[0].z), _121, mad((_invViewProjRelative[0].y), _1009, ((_invViewProjRelative[0].x) * _1007))) + (_invViewProjRelative[0].w)) / _1045;
    _1047 = (mad((_invViewProjRelative[1].z), _121, mad((_invViewProjRelative[1].y), _1009, ((_invViewProjRelative[1].x) * _1007))) + (_invViewProjRelative[1].w)) / _1045;
    _1048 = (mad((_invViewProjRelative[2].z), _121, mad((_invViewProjRelative[2].y), _1009, ((_invViewProjRelative[2].x) * _1007))) + (_invViewProjRelative[2].w)) / _1045;
    _1050 = rsqrt(dot(float3(_1046, _1047, _1048), float3(_1046, _1047, _1048)));  // [sem: invLength]
    _1051 = _1050 * _1046;
    _1052 = _1050 * _1047;
    _1053 = _1050 * _1048;
    _1054 = (_118 == 33);
    _1056 = (_118 == 54);
    _1060 = (_118 == 55);
    if (((_208 == 64) || (_1056 || (_1054 || _657))) || (_1060 || _1005)) {
      _1065 = __3__36__0__0__g_character.Load(int3(_100, _102, 0));  // [sem: _3__36__0__0__g_character_load]
      _1071 = _1065.x;  // [sem: _3__36__0__0__g_character_load_derived]
      _1072 = _1065.y;  // [sem: _3__36__0__0__g_character_load_derived]
      _1073 = _1065.z;  // [sem: _3__36__0__0__g_character_load_derived]
      _1074 = _1065.w;  // [sem: _3__36__0__0__g_character_load_derived]
    } else {
      _1071 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
      _1072 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
      _1073 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
      _1074 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
    }
    if (!_1054) {
      if (_1056) {
        if ((((int)((uint)((_1073 * 255.0f) + 0.5f))) & 112) == 0) {
          _1117 = 52;
          _1118 = _521;
          _1119 = 0.0f;
          _1120 = 0.0f;
          _1121 = 0.0f;
          _1122 = 0.0f;
        } else {
          _1093 = (uint)((_1073 * 255.0f) + 0.5f);
          _1095 = ((uint)((uint)(_1093)) >> 4) & 7;
          if (!(_1095 == 0)) {
            _1102 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_1095) + (int)(1)))];
            _1108 = min((1.0f - _1102.y), _1102.x);
            _1109 = (((float)((uint)((uint)(_1093 & 15)))) * 0.06666667f);
            _1110 = _1102.y;
            _1111 = _1102.x;
          } else {
            _1108 = 0.0f;
            _1109 = 0.0f;
            _1110 = 0.0f;
            _1111 = 0.0f;
          }
          _1117 = _118;
          _1118 = (half)(half(_effectiveMetallicForVelvet * _1111));
          _1119 = _1108;
          _1120 = _1109;
          _1121 = _1110;
          _1122 = _1111;
        }
      } else {
        if (_1060) {
          if ((((int)((uint)((_1073 * 255.0f) + 0.5f))) & 127) == 0) {
            _1117 = 52;
            _1118 = _521;
            _1119 = 0.0f;
            _1120 = 0.0f;
            _1121 = 0.0f;
            _1122 = 0.0f;
          } else {
            _1117 = 55;
            _1118 = _521;
            _1119 = 0.0f;
            _1120 = 0.0f;
            _1121 = 0.0f;
            _1122 = 0.0f;
          }
        } else {
          _1117 = _118;
          _1118 = _521;
          _1119 = 0.0f;
          _1120 = 0.0f;
          _1121 = 0.0f;
          _1122 = 0.0f;
        }
      }
    } else {
      _1093 = (uint)((_1073 * 255.0f) + 0.5f);
      _1095 = ((uint)((uint)(_1093)) >> 4) & 7;
      if (!(_1095 == 0)) {
        _1102 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_1095) + (int)(1)))];
        _1108 = min((1.0f - _1102.y), _1102.x);
        _1109 = (((float)((uint)((uint)(_1093 & 15)))) * 0.06666667f);
        _1110 = _1102.y;
        _1111 = _1102.x;
      } else {
        _1108 = 0.0f;
        _1109 = 0.0f;
        _1110 = 0.0f;
        _1111 = 0.0f;
      }
      _1117 = _118;
      _1118 = (half)(half(_effectiveMetallicForVelvet * _1111));
      _1119 = _1108;
      _1120 = _1109;
      _1121 = _1110;
      _1122 = _1111;
    }
    if (_1117 == 66) {
      _1154 = float(_1118);
      _1188 = _1154;
      _1189 = ((_1071 * 2.0f) + -1.0f);
      _1190 = ((_1072 * 2.0f) + -1.0f);
      _1191 = ((_1073 * 2.0f) + -1.0f);
      _1192 = 0.0h;
      if ((_1117 == 53) || ((_1117 & 126) == 66)) {
        _1198 = _1188;
        _1199 = _1189;
        _1200 = _1190;
        _1201 = _1191;
        _1202 = _1192;
        _1204 = __3__36__0__0__g_bentCone.Load(int3(_525, _526, 0));  // [sem: _3__36__0__0__g_bentCone_load]
        _1211 = __3__36__0__0__g_bentCone.Load(int3(_919, _526, 0));  // [sem: _3__36__0__0__g_bentCone_load]
        _1221 = __3__36__0__0__g_bentCone.Load(int3(_525, _933, 0));  // [sem: _3__36__0__0__g_bentCone_load]
        _1231 = __3__36__0__0__g_bentCone.Load(int3(_919, _933, 0));  // [sem: _3__36__0__0__g_bentCone_load]
        _1244 = (((((_1211.x * _905) + (_1204.x * _904)) + (_1221.x * _906)) + (_1231.x * _907)) * 2.0f) + -1.0f;
        _1245 = (((((_1211.y * _905) + (_1204.y * _904)) + (_1221.y * _906)) + (_1231.y * _907)) * 2.0f) + -1.0f;
        _1246 = (((((_1211.z * _905) + (_1204.z * _904)) + (_1221.z * _906)) + (_1231.z * _907)) * 2.0f) + -1.0f;
        _1248 = rsqrt(dot(float3(_1244, _1245, _1246), float3(_1244, _1245, _1246)));  // [sem: invLength]
        _1249 = _1244 * _1248;
        _1250 = _1245 * _1248;
        _1251 = _1246 * _1248;
        if (!(_renderParams.z > 0.0f)) {
          if (!(_renderParams2.y > 0.0f)) {
            _1263 = (half)(saturate((half)(_278 + 0.15002441h)));
          } else {
            _1263 = _278;
          }
        } else {
          _1263 = _278;
        }
        _1264 = float(_1263);
        if (_1117 == 53) {
          _1280 = (((asfloat(_globalLightParams.z) * _1264) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_277)));
        } else {
          _1280 = _bevelParams.y;
        }
        _1281 = float(_308);
        _1282 = float(_309);
        _1283 = float(_310);
        _1284 = dot(float3(_1199, _1200, _1201), float3(_1249, _1250, _1251));
        _1285 = -0.0f - _1051;
        _1286 = -0.0f - _1052;
        _1287 = -0.0f - _1053;
        _1288 = dot(float3(_1199, _1200, _1201), float3(_1285, _1286, _1287));
        _1294 = cos(abs(asin(_1288) - asin(_1284)) * 0.5f);
        _1298 = _1249 - (_1284 * _1199);
        _1299 = _1250 - (_1284 * _1200);
        _1300 = _1251 - (_1284 * _1201);
        _1304 = _1285 - (_1288 * _1199);
        _1305 = _1286 - (_1288 * _1200);
        _1306 = _1287 - (_1288 * _1201);
        // [sem: invLength]
        _1313 = rsqrt((dot(float3(_1304, _1305, _1306), float3(_1304, _1305, _1306)) * dot(float3(_1298, _1299, _1300), float3(_1298, _1299, _1300))) + 0.0001f) * dot(float3(_1298, _1299, _1300), float3(_1304, _1305, _1306));
        _1323 = min(max(_1264, 0.09803922f), 1.0f);
        _1324 = _1323 * _1323;
        _1325 = _1324 * 0.5f;
        _1326 = _1324 * 2.0f;
        _1327 = _1288 + _1284;
        _1328 = _1327 - _1280;
        _1337 = 1.0f / ((1.19f / _1294) + (_1294 * 0.36f));
        _1342 = ((_1337 * (0.6f - (_1313 * 0.8f))) + 1.0f) * sqrt(saturate((_1313 * 0.5f) + 0.5f));
        _1348 = 1.0f - (sqrt(saturate(1.0f - (_1342 * _1342))) * _1294);
        _1349 = _1348 * _1348;
        _1353 = 0.9534794f - ((_1349 * _1349) * (_1348 * 0.9534794f));
        _1354 = _1337 * _1342;
        _1359 = (sqrt(1.0f - (_1354 * _1354)) * 0.5f) / _1294;
        _1360 = log2(_1281);
        _1361 = log2(_1282);
        _1362 = log2(_1283);
        _1374 = ((_1353 * _1353) * (exp2((((_1328 * _1328) * -0.5f) / (_1325 * _1325)) * 1.442695f) / (_1324 * 1.2533141f))) * exp2(-5.741926f - (_1313 * 5.265837f));
        _1378 = _1327 - (_1280 * 4.0f);
        _1388 = 1.0f - (_1294 * 0.5f);
        _1389 = _1388 * _1388;
        _1393 = (_1389 * _1389) * (0.9534794f - (_1294 * 0.4767397f));
        _1395 = 0.9534794f - _1393;
        _1396 = 0.8f / _1294;
        _1409 = (((_1395 * _1395) * (_1393 + 0.046520565f)) * (exp2((((_1378 * _1378) * -0.5f) / (_1326 * _1326)) * 1.442695f) / (_1324 * 5.0132565f))) * exp2((_1313 * 24.525816f) + -24.208424f);
        _1419 = min(0.0f, (-0.0f - ((_1374 * exp2(_1360 * _1359)) + (_1409 * exp2(_1396 * _1360)))));
        _1420 = min(0.0f, (-0.0f - ((_1374 * exp2(_1361 * _1359)) + (_1409 * exp2(_1396 * _1361)))));
        _1421 = min(0.0f, (-0.0f - ((_1374 * exp2(_1362 * _1359)) + (_1409 * exp2(_1396 * _1362)))));
        _1430 = saturate(abs(dot(float3(_1249, _1250, _1251), float3(_1199, _1200, _1201))));  // [sem: expr_sat]
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _1439 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1430, _1264, saturate(sqrt(exp2(_1360 * 1.5f)))), 0.0f);
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _1442 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1430, _1264, saturate(sqrt(exp2(_1361 * 1.5f)))), 0.0f);
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _1445 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1430, _1264, saturate(sqrt(exp2(_1362 * 1.5f)))), 0.0f);
        _1452 = min(0.99f, _1439.x);
        _1453 = min(0.99f, _1442.x);
        _1454 = min(0.99f, _1445.x);
        _1455 = min(0.99f, _1439.y);
        _1456 = min(0.99f, _1442.y);
        _1457 = min(0.99f, _1445.y);
        _1458 = _1452 * _1452;
        _1459 = _1453 * _1453;
        _1460 = _1454 * _1454;
        _1461 = _1455 * _1455;
        _1462 = _1456 * _1456;
        _1463 = _1457 * _1457;
        _1464 = _1461 * _1455;
        _1465 = _1462 * _1456;
        _1466 = _1463 * _1457;
        _1467 = 1.0f - _1458;
        _1468 = 1.0f - _1459;
        _1469 = 1.0f - _1460;
        _1479 = _1467 * _1467;
        _1480 = _1468 * _1468;
        _1481 = _1469 * _1469;
        _1482 = _1479 * _1467;
        _1483 = _1480 * _1468;
        _1484 = _1481 * _1469;
        _1492 = min(max(_1264, 0.18f), 0.6f);
        _1493 = _1492 * _1492;
        _1494 = _1493 * 0.25f;
        _1495 = _1493 * 4.0f;
        _1497 = (_1453 + _1452) + _1454;
        _1498 = _1452 / _1497;
        _1499 = _1453 / _1497;
        _1500 = _1454 / _1497;
        _1501 = dot(float3(_1493, _1494, _1495), float3(_1498, _1499, _1500));
        _1502 = _1501 * _1501;
        _1505 = asin(min(max(_1288, -1.0f), 1.0f)) + asin(min(max(_1284, -1.0f), 1.0f));
        _1506 = _1505 * 0.5f;
        _1507 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1498, _1499, _1500));
        _1517 = _1507 * _1507;
        _1540 = (_1456 + _1455) + _1457;
        _1544 = dot(float3(_1493, _1494, _1495), float3((_1455 / _1540), (_1456 / _1540), (_1457 / _1540)));
        _1548 = sqrt((_1544 * _1544) + (_1502 * 2.0f));
        _1566 = (_1544 * 3.0f) + (_1501 * 2.0f);
        _1573 = (((_1464 + _1455) * ((_1458 * 0.7f) + 1.0f)) * _1548) / ((_1566 * _1464) + _1455);
        _1574 = (((_1465 + _1456) * ((_1459 * 0.7f) + 1.0f)) * _1548) / ((_1566 * _1465) + _1456);
        _1575 = (((_1466 + _1457) * ((_1460 * 0.7f) + 1.0f)) * _1548) / ((_1566 * _1466) + _1457);
        _1584 = _1506 - (((_1517 * (((_1458 * 4.0f) * _1461) + (_1479 * 2.0f))) * (1.0f - ((_1461 * 2.0f) / _1479))) / _1482);
        _1591 = _1506 - (((_1517 * (((_1459 * 4.0f) * _1462) + (_1480 * 2.0f))) * (1.0f - ((_1462 * 2.0f) / _1480))) / _1483);
        _1598 = _1506 - (((_1517 * (((_1460 * 4.0f) * _1463) + (_1481 * 2.0f))) * (1.0f - ((_1463 * 2.0f) / _1481))) / _1484);
        _1626 = exp2((((_1505 * -0.25f) * _1506) / _1502) * 1.442695f) * 1.4f;
        _1627 = ((((((_1464 * _1458) / _1482) + ((_1455 * _1458) / _1467)) * 4.3982296f) * exp2((((_1584 * _1584) * -0.5f) / ((_1573 * _1573) + _1502)) * 1.442695f)) + ((((_1439.x + _1419) * 0.25f) - _1419) * 6.2831855f)) * _1626;
        _1628 = ((((((_1465 * _1459) / _1483) + ((_1456 * _1459) / _1468)) * 4.3982296f) * exp2((((_1591 * _1591) * -0.5f) / ((_1574 * _1574) + _1502)) * 1.442695f)) + ((((_1442.x + _1420) * 0.25f) - _1420) * 6.2831855f)) * _1626;
        _1629 = ((((((_1466 * _1460) / _1484) + ((_1457 * _1460) / _1469)) * 4.3982296f) * exp2((((_1598 * _1598) * -0.5f) / ((_1575 * _1575) + _1502)) * 1.442695f)) + ((((_1445.x + _1421) * 0.25f) - _1421) * 6.2831855f)) * _1626;
        _1630 = max(0.125f, _1198);
        _1644 = _1198;
        _1645 = _1202;
        _1646 = _1199;
        _1647 = _1200;
        _1648 = _1201;
        _1649 = _1117;
        _1650 = max(0.01f, ((_1630 * (_1281 - _1627)) + _1627));
        _1651 = max(0.01f, (lerp(_1628, _1282, _1630)));
        _1652 = max(0.01f, (lerp(_1629, _1283, _1630)));
      } else {
        _1644 = _1188;
        _1645 = _1192;
        _1646 = _1189;
        _1647 = _1190;
        _1648 = _1191;
        _1649 = _1117;
        _1650 = 0.0f;
        _1651 = 0.0f;
        _1652 = 0.0f;
      }
    } else {
      _1126 = (_1117 == 53);
      if ((_1117 == 67) || _1126) {
        _1133 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 127)));
        if (!(float(_1118) > (frac(frac(dot(float2(((_1133 * 32.665f) + _103), ((_1133 * 11.815f) + _104)), float2(0.06711056f, 0.00583715f))) * 52.982918f) * 0.2f))) {
          if ((_1117 & 126) == 66) {
            _1154 = 1.0f;
            _1188 = _1154;
            _1189 = ((_1071 * 2.0f) + -1.0f);
            _1190 = ((_1072 * 2.0f) + -1.0f);
            _1191 = ((_1073 * 2.0f) + -1.0f);
            _1192 = 0.0h;
            if ((_1117 == 53) || ((_1117 & 126) == 66)) {
              _1198 = _1188;
              _1199 = _1189;
              _1200 = _1190;
              _1201 = _1191;
              _1202 = _1192;
              _1204 = __3__36__0__0__g_bentCone.Load(int3(_525, _526, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1211 = __3__36__0__0__g_bentCone.Load(int3(_919, _526, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1221 = __3__36__0__0__g_bentCone.Load(int3(_525, _933, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1231 = __3__36__0__0__g_bentCone.Load(int3(_919, _933, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1244 = (((((_1211.x * _905) + (_1204.x * _904)) + (_1221.x * _906)) + (_1231.x * _907)) * 2.0f) + -1.0f;
              _1245 = (((((_1211.y * _905) + (_1204.y * _904)) + (_1221.y * _906)) + (_1231.y * _907)) * 2.0f) + -1.0f;
              _1246 = (((((_1211.z * _905) + (_1204.z * _904)) + (_1221.z * _906)) + (_1231.z * _907)) * 2.0f) + -1.0f;
              _1248 = rsqrt(dot(float3(_1244, _1245, _1246), float3(_1244, _1245, _1246)));  // [sem: invLength]
              _1249 = _1244 * _1248;
              _1250 = _1245 * _1248;
              _1251 = _1246 * _1248;
              if (!(_renderParams.z > 0.0f)) {
                if (!(_renderParams2.y > 0.0f)) {
                  _1263 = (half)(saturate((half)(_278 + 0.15002441h)));
                } else {
                  _1263 = _278;
                }
              } else {
                _1263 = _278;
              }
              _1264 = float(_1263);
              if (_1117 == 53) {
                _1280 = (((asfloat(_globalLightParams.z) * _1264) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_277)));
              } else {
                _1280 = _bevelParams.y;
              }
              _1281 = float(_308);
              _1282 = float(_309);
              _1283 = float(_310);
              _1284 = dot(float3(_1199, _1200, _1201), float3(_1249, _1250, _1251));
              _1285 = -0.0f - _1051;
              _1286 = -0.0f - _1052;
              _1287 = -0.0f - _1053;
              _1288 = dot(float3(_1199, _1200, _1201), float3(_1285, _1286, _1287));
              _1294 = cos(abs(asin(_1288) - asin(_1284)) * 0.5f);
              _1298 = _1249 - (_1284 * _1199);
              _1299 = _1250 - (_1284 * _1200);
              _1300 = _1251 - (_1284 * _1201);
              _1304 = _1285 - (_1288 * _1199);
              _1305 = _1286 - (_1288 * _1200);
              _1306 = _1287 - (_1288 * _1201);
              // [sem: invLength]
              _1313 = rsqrt((dot(float3(_1304, _1305, _1306), float3(_1304, _1305, _1306)) * dot(float3(_1298, _1299, _1300), float3(_1298, _1299, _1300))) + 0.0001f) * dot(float3(_1298, _1299, _1300), float3(_1304, _1305, _1306));
              _1323 = min(max(_1264, 0.09803922f), 1.0f);
              _1324 = _1323 * _1323;
              _1325 = _1324 * 0.5f;
              _1326 = _1324 * 2.0f;
              _1327 = _1288 + _1284;
              _1328 = _1327 - _1280;
              _1337 = 1.0f / ((1.19f / _1294) + (_1294 * 0.36f));
              _1342 = ((_1337 * (0.6f - (_1313 * 0.8f))) + 1.0f) * sqrt(saturate((_1313 * 0.5f) + 0.5f));
              _1348 = 1.0f - (sqrt(saturate(1.0f - (_1342 * _1342))) * _1294);
              _1349 = _1348 * _1348;
              _1353 = 0.9534794f - ((_1349 * _1349) * (_1348 * 0.9534794f));
              _1354 = _1337 * _1342;
              _1359 = (sqrt(1.0f - (_1354 * _1354)) * 0.5f) / _1294;
              _1360 = log2(_1281);
              _1361 = log2(_1282);
              _1362 = log2(_1283);
              _1374 = ((_1353 * _1353) * (exp2((((_1328 * _1328) * -0.5f) / (_1325 * _1325)) * 1.442695f) / (_1324 * 1.2533141f))) * exp2(-5.741926f - (_1313 * 5.265837f));
              _1378 = _1327 - (_1280 * 4.0f);
              _1388 = 1.0f - (_1294 * 0.5f);
              _1389 = _1388 * _1388;
              _1393 = (_1389 * _1389) * (0.9534794f - (_1294 * 0.4767397f));
              _1395 = 0.9534794f - _1393;
              _1396 = 0.8f / _1294;
              _1409 = (((_1395 * _1395) * (_1393 + 0.046520565f)) * (exp2((((_1378 * _1378) * -0.5f) / (_1326 * _1326)) * 1.442695f) / (_1324 * 5.0132565f))) * exp2((_1313 * 24.525816f) + -24.208424f);
              _1419 = min(0.0f, (-0.0f - ((_1374 * exp2(_1360 * _1359)) + (_1409 * exp2(_1396 * _1360)))));
              _1420 = min(0.0f, (-0.0f - ((_1374 * exp2(_1361 * _1359)) + (_1409 * exp2(_1396 * _1361)))));
              _1421 = min(0.0f, (-0.0f - ((_1374 * exp2(_1362 * _1359)) + (_1409 * exp2(_1396 * _1362)))));
              _1430 = saturate(abs(dot(float3(_1249, _1250, _1251), float3(_1199, _1200, _1201))));  // [sem: expr_sat]
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1439 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1430, _1264, saturate(sqrt(exp2(_1360 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1442 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1430, _1264, saturate(sqrt(exp2(_1361 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1445 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1430, _1264, saturate(sqrt(exp2(_1362 * 1.5f)))), 0.0f);
              _1452 = min(0.99f, _1439.x);
              _1453 = min(0.99f, _1442.x);
              _1454 = min(0.99f, _1445.x);
              _1455 = min(0.99f, _1439.y);
              _1456 = min(0.99f, _1442.y);
              _1457 = min(0.99f, _1445.y);
              _1458 = _1452 * _1452;
              _1459 = _1453 * _1453;
              _1460 = _1454 * _1454;
              _1461 = _1455 * _1455;
              _1462 = _1456 * _1456;
              _1463 = _1457 * _1457;
              _1464 = _1461 * _1455;
              _1465 = _1462 * _1456;
              _1466 = _1463 * _1457;
              _1467 = 1.0f - _1458;
              _1468 = 1.0f - _1459;
              _1469 = 1.0f - _1460;
              _1479 = _1467 * _1467;
              _1480 = _1468 * _1468;
              _1481 = _1469 * _1469;
              _1482 = _1479 * _1467;
              _1483 = _1480 * _1468;
              _1484 = _1481 * _1469;
              _1492 = min(max(_1264, 0.18f), 0.6f);
              _1493 = _1492 * _1492;
              _1494 = _1493 * 0.25f;
              _1495 = _1493 * 4.0f;
              _1497 = (_1453 + _1452) + _1454;
              _1498 = _1452 / _1497;
              _1499 = _1453 / _1497;
              _1500 = _1454 / _1497;
              _1501 = dot(float3(_1493, _1494, _1495), float3(_1498, _1499, _1500));
              _1502 = _1501 * _1501;
              _1505 = asin(min(max(_1288, -1.0f), 1.0f)) + asin(min(max(_1284, -1.0f), 1.0f));
              _1506 = _1505 * 0.5f;
              _1507 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1498, _1499, _1500));
              _1517 = _1507 * _1507;
              _1540 = (_1456 + _1455) + _1457;
              _1544 = dot(float3(_1493, _1494, _1495), float3((_1455 / _1540), (_1456 / _1540), (_1457 / _1540)));
              _1548 = sqrt((_1544 * _1544) + (_1502 * 2.0f));
              _1566 = (_1544 * 3.0f) + (_1501 * 2.0f);
              _1573 = (((_1464 + _1455) * ((_1458 * 0.7f) + 1.0f)) * _1548) / ((_1566 * _1464) + _1455);
              _1574 = (((_1465 + _1456) * ((_1459 * 0.7f) + 1.0f)) * _1548) / ((_1566 * _1465) + _1456);
              _1575 = (((_1466 + _1457) * ((_1460 * 0.7f) + 1.0f)) * _1548) / ((_1566 * _1466) + _1457);
              _1584 = _1506 - (((_1517 * (((_1458 * 4.0f) * _1461) + (_1479 * 2.0f))) * (1.0f - ((_1461 * 2.0f) / _1479))) / _1482);
              _1591 = _1506 - (((_1517 * (((_1459 * 4.0f) * _1462) + (_1480 * 2.0f))) * (1.0f - ((_1462 * 2.0f) / _1480))) / _1483);
              _1598 = _1506 - (((_1517 * (((_1460 * 4.0f) * _1463) + (_1481 * 2.0f))) * (1.0f - ((_1463 * 2.0f) / _1481))) / _1484);
              _1626 = exp2((((_1505 * -0.25f) * _1506) / _1502) * 1.442695f) * 1.4f;
              _1627 = ((((((_1464 * _1458) / _1482) + ((_1455 * _1458) / _1467)) * 4.3982296f) * exp2((((_1584 * _1584) * -0.5f) / ((_1573 * _1573) + _1502)) * 1.442695f)) + ((((_1439.x + _1419) * 0.25f) - _1419) * 6.2831855f)) * _1626;
              _1628 = ((((((_1465 * _1459) / _1483) + ((_1456 * _1459) / _1468)) * 4.3982296f) * exp2((((_1591 * _1591) * -0.5f) / ((_1574 * _1574) + _1502)) * 1.442695f)) + ((((_1442.x + _1420) * 0.25f) - _1420) * 6.2831855f)) * _1626;
              _1629 = ((((((_1466 * _1460) / _1484) + ((_1457 * _1460) / _1469)) * 4.3982296f) * exp2((((_1598 * _1598) * -0.5f) / ((_1575 * _1575) + _1502)) * 1.442695f)) + ((((_1445.x + _1421) * 0.25f) - _1421) * 6.2831855f)) * _1626;
              _1630 = max(0.125f, _1198);
              _1644 = _1198;
              _1645 = _1202;
              _1646 = _1199;
              _1647 = _1200;
              _1648 = _1201;
              _1649 = _1117;
              _1650 = max(0.01f, ((_1630 * (_1281 - _1627)) + _1627));
              _1651 = max(0.01f, (lerp(_1628, _1282, _1630)));
              _1652 = max(0.01f, (lerp(_1629, _1283, _1630)));
            } else {
              _1644 = _1188;
              _1645 = _1192;
              _1646 = _1189;
              _1647 = _1190;
              _1648 = _1191;
              _1649 = _1117;
              _1650 = 0.0f;
              _1651 = 0.0f;
              _1652 = 0.0f;
            }
          } else {
            _1151 = 1.0f;
            _1152 = 0.0h;
            if (_1126) {
              _1164 = (_1071 * 2.0f) + -1.0f;
              _1165 = (_1072 * 2.0f) + -1.0f;
              _1167 = 1.0f - abs(_1164);
              _1168 = abs(_1165);
              _1169 = _1167 - _1168;
              if (!(_1169 >= 0.0f)) {
                _1180 = ((1.0f - _1168) * select((_1164 >= 0.0f), 1.0f, -1.0f));
                _1181 = (_1167 * select((_1165 >= 0.0f), 1.0f, -1.0f));
              } else {
                _1180 = _1164;
                _1181 = _1165;
              }
              _1183 = rsqrt(dot(float3(_1180, _1181, _1169), float3(_1180, _1181, _1169)));  // [sem: invLength]
              _1198 = _1151;
              _1199 = (_1183 * _1180);
              _1200 = (_1183 * _1181);
              _1201 = (_1183 * _1169);
              _1202 = 0.0h;
              _1204 = __3__36__0__0__g_bentCone.Load(int3(_525, _526, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1211 = __3__36__0__0__g_bentCone.Load(int3(_919, _526, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1221 = __3__36__0__0__g_bentCone.Load(int3(_525, _933, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1231 = __3__36__0__0__g_bentCone.Load(int3(_919, _933, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1244 = (((((_1211.x * _905) + (_1204.x * _904)) + (_1221.x * _906)) + (_1231.x * _907)) * 2.0f) + -1.0f;
              _1245 = (((((_1211.y * _905) + (_1204.y * _904)) + (_1221.y * _906)) + (_1231.y * _907)) * 2.0f) + -1.0f;
              _1246 = (((((_1211.z * _905) + (_1204.z * _904)) + (_1221.z * _906)) + (_1231.z * _907)) * 2.0f) + -1.0f;
              _1248 = rsqrt(dot(float3(_1244, _1245, _1246), float3(_1244, _1245, _1246)));  // [sem: invLength]
              _1249 = _1244 * _1248;
              _1250 = _1245 * _1248;
              _1251 = _1246 * _1248;
              if (!(_renderParams.z > 0.0f)) {
                if (!(_renderParams2.y > 0.0f)) {
                  _1263 = (half)(saturate((half)(_278 + 0.15002441h)));
                } else {
                  _1263 = _278;
                }
              } else {
                _1263 = _278;
              }
              _1264 = float(_1263);
              if (_1117 == 53) {
                _1280 = (((asfloat(_globalLightParams.z) * _1264) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_277)));
              } else {
                _1280 = _bevelParams.y;
              }
              _1281 = float(_308);
              _1282 = float(_309);
              _1283 = float(_310);
              _1284 = dot(float3(_1199, _1200, _1201), float3(_1249, _1250, _1251));
              _1285 = -0.0f - _1051;
              _1286 = -0.0f - _1052;
              _1287 = -0.0f - _1053;
              _1288 = dot(float3(_1199, _1200, _1201), float3(_1285, _1286, _1287));
              _1294 = cos(abs(asin(_1288) - asin(_1284)) * 0.5f);
              _1298 = _1249 - (_1284 * _1199);
              _1299 = _1250 - (_1284 * _1200);
              _1300 = _1251 - (_1284 * _1201);
              _1304 = _1285 - (_1288 * _1199);
              _1305 = _1286 - (_1288 * _1200);
              _1306 = _1287 - (_1288 * _1201);
              // [sem: invLength]
              _1313 = rsqrt((dot(float3(_1304, _1305, _1306), float3(_1304, _1305, _1306)) * dot(float3(_1298, _1299, _1300), float3(_1298, _1299, _1300))) + 0.0001f) * dot(float3(_1298, _1299, _1300), float3(_1304, _1305, _1306));
              _1323 = min(max(_1264, 0.09803922f), 1.0f);
              _1324 = _1323 * _1323;
              _1325 = _1324 * 0.5f;
              _1326 = _1324 * 2.0f;
              _1327 = _1288 + _1284;
              _1328 = _1327 - _1280;
              _1337 = 1.0f / ((1.19f / _1294) + (_1294 * 0.36f));
              _1342 = ((_1337 * (0.6f - (_1313 * 0.8f))) + 1.0f) * sqrt(saturate((_1313 * 0.5f) + 0.5f));
              _1348 = 1.0f - (sqrt(saturate(1.0f - (_1342 * _1342))) * _1294);
              _1349 = _1348 * _1348;
              _1353 = 0.9534794f - ((_1349 * _1349) * (_1348 * 0.9534794f));
              _1354 = _1337 * _1342;
              _1359 = (sqrt(1.0f - (_1354 * _1354)) * 0.5f) / _1294;
              _1360 = log2(_1281);
              _1361 = log2(_1282);
              _1362 = log2(_1283);
              _1374 = ((_1353 * _1353) * (exp2((((_1328 * _1328) * -0.5f) / (_1325 * _1325)) * 1.442695f) / (_1324 * 1.2533141f))) * exp2(-5.741926f - (_1313 * 5.265837f));
              _1378 = _1327 - (_1280 * 4.0f);
              _1388 = 1.0f - (_1294 * 0.5f);
              _1389 = _1388 * _1388;
              _1393 = (_1389 * _1389) * (0.9534794f - (_1294 * 0.4767397f));
              _1395 = 0.9534794f - _1393;
              _1396 = 0.8f / _1294;
              _1409 = (((_1395 * _1395) * (_1393 + 0.046520565f)) * (exp2((((_1378 * _1378) * -0.5f) / (_1326 * _1326)) * 1.442695f) / (_1324 * 5.0132565f))) * exp2((_1313 * 24.525816f) + -24.208424f);
              _1419 = min(0.0f, (-0.0f - ((_1374 * exp2(_1360 * _1359)) + (_1409 * exp2(_1396 * _1360)))));
              _1420 = min(0.0f, (-0.0f - ((_1374 * exp2(_1361 * _1359)) + (_1409 * exp2(_1396 * _1361)))));
              _1421 = min(0.0f, (-0.0f - ((_1374 * exp2(_1362 * _1359)) + (_1409 * exp2(_1396 * _1362)))));
              _1430 = saturate(abs(dot(float3(_1249, _1250, _1251), float3(_1199, _1200, _1201))));  // [sem: expr_sat]
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1439 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1430, _1264, saturate(sqrt(exp2(_1360 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1442 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1430, _1264, saturate(sqrt(exp2(_1361 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1445 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1430, _1264, saturate(sqrt(exp2(_1362 * 1.5f)))), 0.0f);
              _1452 = min(0.99f, _1439.x);
              _1453 = min(0.99f, _1442.x);
              _1454 = min(0.99f, _1445.x);
              _1455 = min(0.99f, _1439.y);
              _1456 = min(0.99f, _1442.y);
              _1457 = min(0.99f, _1445.y);
              _1458 = _1452 * _1452;
              _1459 = _1453 * _1453;
              _1460 = _1454 * _1454;
              _1461 = _1455 * _1455;
              _1462 = _1456 * _1456;
              _1463 = _1457 * _1457;
              _1464 = _1461 * _1455;
              _1465 = _1462 * _1456;
              _1466 = _1463 * _1457;
              _1467 = 1.0f - _1458;
              _1468 = 1.0f - _1459;
              _1469 = 1.0f - _1460;
              _1479 = _1467 * _1467;
              _1480 = _1468 * _1468;
              _1481 = _1469 * _1469;
              _1482 = _1479 * _1467;
              _1483 = _1480 * _1468;
              _1484 = _1481 * _1469;
              _1492 = min(max(_1264, 0.18f), 0.6f);
              _1493 = _1492 * _1492;
              _1494 = _1493 * 0.25f;
              _1495 = _1493 * 4.0f;
              _1497 = (_1453 + _1452) + _1454;
              _1498 = _1452 / _1497;
              _1499 = _1453 / _1497;
              _1500 = _1454 / _1497;
              _1501 = dot(float3(_1493, _1494, _1495), float3(_1498, _1499, _1500));
              _1502 = _1501 * _1501;
              _1505 = asin(min(max(_1288, -1.0f), 1.0f)) + asin(min(max(_1284, -1.0f), 1.0f));
              _1506 = _1505 * 0.5f;
              _1507 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1498, _1499, _1500));
              _1517 = _1507 * _1507;
              _1540 = (_1456 + _1455) + _1457;
              _1544 = dot(float3(_1493, _1494, _1495), float3((_1455 / _1540), (_1456 / _1540), (_1457 / _1540)));
              _1548 = sqrt((_1544 * _1544) + (_1502 * 2.0f));
              _1566 = (_1544 * 3.0f) + (_1501 * 2.0f);
              _1573 = (((_1464 + _1455) * ((_1458 * 0.7f) + 1.0f)) * _1548) / ((_1566 * _1464) + _1455);
              _1574 = (((_1465 + _1456) * ((_1459 * 0.7f) + 1.0f)) * _1548) / ((_1566 * _1465) + _1456);
              _1575 = (((_1466 + _1457) * ((_1460 * 0.7f) + 1.0f)) * _1548) / ((_1566 * _1466) + _1457);
              _1584 = _1506 - (((_1517 * (((_1458 * 4.0f) * _1461) + (_1479 * 2.0f))) * (1.0f - ((_1461 * 2.0f) / _1479))) / _1482);
              _1591 = _1506 - (((_1517 * (((_1459 * 4.0f) * _1462) + (_1480 * 2.0f))) * (1.0f - ((_1462 * 2.0f) / _1480))) / _1483);
              _1598 = _1506 - (((_1517 * (((_1460 * 4.0f) * _1463) + (_1481 * 2.0f))) * (1.0f - ((_1463 * 2.0f) / _1481))) / _1484);
              _1626 = exp2((((_1505 * -0.25f) * _1506) / _1502) * 1.442695f) * 1.4f;
              _1627 = ((((((_1464 * _1458) / _1482) + ((_1455 * _1458) / _1467)) * 4.3982296f) * exp2((((_1584 * _1584) * -0.5f) / ((_1573 * _1573) + _1502)) * 1.442695f)) + ((((_1439.x + _1419) * 0.25f) - _1419) * 6.2831855f)) * _1626;
              _1628 = ((((((_1465 * _1459) / _1483) + ((_1456 * _1459) / _1468)) * 4.3982296f) * exp2((((_1591 * _1591) * -0.5f) / ((_1574 * _1574) + _1502)) * 1.442695f)) + ((((_1442.x + _1420) * 0.25f) - _1420) * 6.2831855f)) * _1626;
              _1629 = ((((((_1466 * _1460) / _1484) + ((_1457 * _1460) / _1469)) * 4.3982296f) * exp2((((_1598 * _1598) * -0.5f) / ((_1575 * _1575) + _1502)) * 1.442695f)) + ((((_1445.x + _1421) * 0.25f) - _1421) * 6.2831855f)) * _1626;
              _1630 = max(0.125f, _1198);
              _1644 = _1198;
              _1645 = _1202;
              _1646 = _1199;
              _1647 = _1200;
              _1648 = _1201;
              _1649 = _1117;
              _1650 = max(0.01f, ((_1630 * (_1281 - _1627)) + _1627));
              _1651 = max(0.01f, (lerp(_1628, _1282, _1630)));
              _1652 = max(0.01f, (lerp(_1629, _1283, _1630)));
            } else {
              _1188 = _1151;
              _1189 = _713;
              _1190 = _714;
              _1191 = _715;
              _1192 = _1152;
              if ((_1117 == 53) || ((_1117 & 126) == 66)) {
                _1198 = _1188;
                _1199 = _1189;
                _1200 = _1190;
                _1201 = _1191;
                _1202 = _1192;
                _1204 = __3__36__0__0__g_bentCone.Load(int3(_525, _526, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _1211 = __3__36__0__0__g_bentCone.Load(int3(_919, _526, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _1221 = __3__36__0__0__g_bentCone.Load(int3(_525, _933, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _1231 = __3__36__0__0__g_bentCone.Load(int3(_919, _933, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _1244 = (((((_1211.x * _905) + (_1204.x * _904)) + (_1221.x * _906)) + (_1231.x * _907)) * 2.0f) + -1.0f;
                _1245 = (((((_1211.y * _905) + (_1204.y * _904)) + (_1221.y * _906)) + (_1231.y * _907)) * 2.0f) + -1.0f;
                _1246 = (((((_1211.z * _905) + (_1204.z * _904)) + (_1221.z * _906)) + (_1231.z * _907)) * 2.0f) + -1.0f;
                _1248 = rsqrt(dot(float3(_1244, _1245, _1246), float3(_1244, _1245, _1246)));  // [sem: invLength]
                _1249 = _1244 * _1248;
                _1250 = _1245 * _1248;
                _1251 = _1246 * _1248;
                if (!(_renderParams.z > 0.0f)) {
                  if (!(_renderParams2.y > 0.0f)) {
                    _1263 = (half)(saturate((half)(_278 + 0.15002441h)));
                  } else {
                    _1263 = _278;
                  }
                } else {
                  _1263 = _278;
                }
                _1264 = float(_1263);
                if (_1117 == 53) {
                  _1280 = (((asfloat(_globalLightParams.z) * _1264) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_277)));
                } else {
                  _1280 = _bevelParams.y;
                }
                _1281 = float(_308);
                _1282 = float(_309);
                _1283 = float(_310);
                _1284 = dot(float3(_1199, _1200, _1201), float3(_1249, _1250, _1251));
                _1285 = -0.0f - _1051;
                _1286 = -0.0f - _1052;
                _1287 = -0.0f - _1053;
                _1288 = dot(float3(_1199, _1200, _1201), float3(_1285, _1286, _1287));
                _1294 = cos(abs(asin(_1288) - asin(_1284)) * 0.5f);
                _1298 = _1249 - (_1284 * _1199);
                _1299 = _1250 - (_1284 * _1200);
                _1300 = _1251 - (_1284 * _1201);
                _1304 = _1285 - (_1288 * _1199);
                _1305 = _1286 - (_1288 * _1200);
                _1306 = _1287 - (_1288 * _1201);
                // [sem: invLength]
                _1313 = rsqrt((dot(float3(_1304, _1305, _1306), float3(_1304, _1305, _1306)) * dot(float3(_1298, _1299, _1300), float3(_1298, _1299, _1300))) + 0.0001f) * dot(float3(_1298, _1299, _1300), float3(_1304, _1305, _1306));
                _1323 = min(max(_1264, 0.09803922f), 1.0f);
                _1324 = _1323 * _1323;
                _1325 = _1324 * 0.5f;
                _1326 = _1324 * 2.0f;
                _1327 = _1288 + _1284;
                _1328 = _1327 - _1280;
                _1337 = 1.0f / ((1.19f / _1294) + (_1294 * 0.36f));
                _1342 = ((_1337 * (0.6f - (_1313 * 0.8f))) + 1.0f) * sqrt(saturate((_1313 * 0.5f) + 0.5f));
                _1348 = 1.0f - (sqrt(saturate(1.0f - (_1342 * _1342))) * _1294);
                _1349 = _1348 * _1348;
                _1353 = 0.9534794f - ((_1349 * _1349) * (_1348 * 0.9534794f));
                _1354 = _1337 * _1342;
                _1359 = (sqrt(1.0f - (_1354 * _1354)) * 0.5f) / _1294;
                _1360 = log2(_1281);
                _1361 = log2(_1282);
                _1362 = log2(_1283);
                _1374 = ((_1353 * _1353) * (exp2((((_1328 * _1328) * -0.5f) / (_1325 * _1325)) * 1.442695f) / (_1324 * 1.2533141f))) * exp2(-5.741926f - (_1313 * 5.265837f));
                _1378 = _1327 - (_1280 * 4.0f);
                _1388 = 1.0f - (_1294 * 0.5f);
                _1389 = _1388 * _1388;
                _1393 = (_1389 * _1389) * (0.9534794f - (_1294 * 0.4767397f));
                _1395 = 0.9534794f - _1393;
                _1396 = 0.8f / _1294;
                _1409 = (((_1395 * _1395) * (_1393 + 0.046520565f)) * (exp2((((_1378 * _1378) * -0.5f) / (_1326 * _1326)) * 1.442695f) / (_1324 * 5.0132565f))) * exp2((_1313 * 24.525816f) + -24.208424f);
                _1419 = min(0.0f, (-0.0f - ((_1374 * exp2(_1360 * _1359)) + (_1409 * exp2(_1396 * _1360)))));
                _1420 = min(0.0f, (-0.0f - ((_1374 * exp2(_1361 * _1359)) + (_1409 * exp2(_1396 * _1361)))));
                _1421 = min(0.0f, (-0.0f - ((_1374 * exp2(_1362 * _1359)) + (_1409 * exp2(_1396 * _1362)))));
                _1430 = saturate(abs(dot(float3(_1249, _1250, _1251), float3(_1199, _1200, _1201))));  // [sem: expr_sat]
                // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
                _1439 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1430, _1264, saturate(sqrt(exp2(_1360 * 1.5f)))), 0.0f);
                // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
                _1442 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1430, _1264, saturate(sqrt(exp2(_1361 * 1.5f)))), 0.0f);
                // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
                _1445 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1430, _1264, saturate(sqrt(exp2(_1362 * 1.5f)))), 0.0f);
                _1452 = min(0.99f, _1439.x);
                _1453 = min(0.99f, _1442.x);
                _1454 = min(0.99f, _1445.x);
                _1455 = min(0.99f, _1439.y);
                _1456 = min(0.99f, _1442.y);
                _1457 = min(0.99f, _1445.y);
                _1458 = _1452 * _1452;
                _1459 = _1453 * _1453;
                _1460 = _1454 * _1454;
                _1461 = _1455 * _1455;
                _1462 = _1456 * _1456;
                _1463 = _1457 * _1457;
                _1464 = _1461 * _1455;
                _1465 = _1462 * _1456;
                _1466 = _1463 * _1457;
                _1467 = 1.0f - _1458;
                _1468 = 1.0f - _1459;
                _1469 = 1.0f - _1460;
                _1479 = _1467 * _1467;
                _1480 = _1468 * _1468;
                _1481 = _1469 * _1469;
                _1482 = _1479 * _1467;
                _1483 = _1480 * _1468;
                _1484 = _1481 * _1469;
                _1492 = min(max(_1264, 0.18f), 0.6f);
                _1493 = _1492 * _1492;
                _1494 = _1493 * 0.25f;
                _1495 = _1493 * 4.0f;
                _1497 = (_1453 + _1452) + _1454;
                _1498 = _1452 / _1497;
                _1499 = _1453 / _1497;
                _1500 = _1454 / _1497;
                _1501 = dot(float3(_1493, _1494, _1495), float3(_1498, _1499, _1500));
                _1502 = _1501 * _1501;
                _1505 = asin(min(max(_1288, -1.0f), 1.0f)) + asin(min(max(_1284, -1.0f), 1.0f));
                _1506 = _1505 * 0.5f;
                _1507 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1498, _1499, _1500));
                _1517 = _1507 * _1507;
                _1540 = (_1456 + _1455) + _1457;
                _1544 = dot(float3(_1493, _1494, _1495), float3((_1455 / _1540), (_1456 / _1540), (_1457 / _1540)));
                _1548 = sqrt((_1544 * _1544) + (_1502 * 2.0f));
                _1566 = (_1544 * 3.0f) + (_1501 * 2.0f);
                _1573 = (((_1464 + _1455) * ((_1458 * 0.7f) + 1.0f)) * _1548) / ((_1566 * _1464) + _1455);
                _1574 = (((_1465 + _1456) * ((_1459 * 0.7f) + 1.0f)) * _1548) / ((_1566 * _1465) + _1456);
                _1575 = (((_1466 + _1457) * ((_1460 * 0.7f) + 1.0f)) * _1548) / ((_1566 * _1466) + _1457);
                _1584 = _1506 - (((_1517 * (((_1458 * 4.0f) * _1461) + (_1479 * 2.0f))) * (1.0f - ((_1461 * 2.0f) / _1479))) / _1482);
                _1591 = _1506 - (((_1517 * (((_1459 * 4.0f) * _1462) + (_1480 * 2.0f))) * (1.0f - ((_1462 * 2.0f) / _1480))) / _1483);
                _1598 = _1506 - (((_1517 * (((_1460 * 4.0f) * _1463) + (_1481 * 2.0f))) * (1.0f - ((_1463 * 2.0f) / _1481))) / _1484);
                _1626 = exp2((((_1505 * -0.25f) * _1506) / _1502) * 1.442695f) * 1.4f;
                _1627 = ((((((_1464 * _1458) / _1482) + ((_1455 * _1458) / _1467)) * 4.3982296f) * exp2((((_1584 * _1584) * -0.5f) / ((_1573 * _1573) + _1502)) * 1.442695f)) + ((((_1439.x + _1419) * 0.25f) - _1419) * 6.2831855f)) * _1626;
                _1628 = ((((((_1465 * _1459) / _1483) + ((_1456 * _1459) / _1468)) * 4.3982296f) * exp2((((_1591 * _1591) * -0.5f) / ((_1574 * _1574) + _1502)) * 1.442695f)) + ((((_1442.x + _1420) * 0.25f) - _1420) * 6.2831855f)) * _1626;
                _1629 = ((((((_1466 * _1460) / _1484) + ((_1457 * _1460) / _1469)) * 4.3982296f) * exp2((((_1598 * _1598) * -0.5f) / ((_1575 * _1575) + _1502)) * 1.442695f)) + ((((_1445.x + _1421) * 0.25f) - _1421) * 6.2831855f)) * _1626;
                _1630 = max(0.125f, _1198);
                _1644 = _1198;
                _1645 = _1202;
                _1646 = _1199;
                _1647 = _1200;
                _1648 = _1201;
                _1649 = _1117;
                _1650 = max(0.01f, ((_1630 * (_1281 - _1627)) + _1627));
                _1651 = max(0.01f, (lerp(_1628, _1282, _1630)));
                _1652 = max(0.01f, (lerp(_1629, _1283, _1630)));
              } else {
                _1644 = _1188;
                _1645 = _1192;
                _1646 = _1189;
                _1647 = _1190;
                _1648 = _1191;
                _1649 = _1117;
                _1650 = 0.0f;
                _1651 = 0.0f;
                _1652 = 0.0f;
              }
            }
          }
        } else {
          _1644 = 1.0f;
          _1645 = 0.0h;
          _1646 = _713;
          _1647 = _714;
          _1648 = _715;
          _1649 = 52;
          _1650 = 0.0f;
          _1651 = 0.0f;
          _1652 = 0.0f;
        }
      } else {
        _1151 = 0.0f;
        _1152 = _1118;
        if (_1126) {
          _1164 = (_1071 * 2.0f) + -1.0f;
          _1165 = (_1072 * 2.0f) + -1.0f;
          _1167 = 1.0f - abs(_1164);
          _1168 = abs(_1165);
          _1169 = _1167 - _1168;
          if (!(_1169 >= 0.0f)) {
            _1180 = ((1.0f - _1168) * select((_1164 >= 0.0f), 1.0f, -1.0f));
            _1181 = (_1167 * select((_1165 >= 0.0f), 1.0f, -1.0f));
          } else {
            _1180 = _1164;
            _1181 = _1165;
          }
          _1183 = rsqrt(dot(float3(_1180, _1181, _1169), float3(_1180, _1181, _1169)));  // [sem: invLength]
          _1198 = _1151;
          _1199 = (_1183 * _1180);
          _1200 = (_1183 * _1181);
          _1201 = (_1183 * _1169);
          _1202 = 0.0h;
          _1204 = __3__36__0__0__g_bentCone.Load(int3(_525, _526, 0));  // [sem: _3__36__0__0__g_bentCone_load]
          _1211 = __3__36__0__0__g_bentCone.Load(int3(_919, _526, 0));  // [sem: _3__36__0__0__g_bentCone_load]
          _1221 = __3__36__0__0__g_bentCone.Load(int3(_525, _933, 0));  // [sem: _3__36__0__0__g_bentCone_load]
          _1231 = __3__36__0__0__g_bentCone.Load(int3(_919, _933, 0));  // [sem: _3__36__0__0__g_bentCone_load]
          _1244 = (((((_1211.x * _905) + (_1204.x * _904)) + (_1221.x * _906)) + (_1231.x * _907)) * 2.0f) + -1.0f;
          _1245 = (((((_1211.y * _905) + (_1204.y * _904)) + (_1221.y * _906)) + (_1231.y * _907)) * 2.0f) + -1.0f;
          _1246 = (((((_1211.z * _905) + (_1204.z * _904)) + (_1221.z * _906)) + (_1231.z * _907)) * 2.0f) + -1.0f;
          _1248 = rsqrt(dot(float3(_1244, _1245, _1246), float3(_1244, _1245, _1246)));  // [sem: invLength]
          _1249 = _1244 * _1248;
          _1250 = _1245 * _1248;
          _1251 = _1246 * _1248;
          if (!(_renderParams.z > 0.0f)) {
            if (!(_renderParams2.y > 0.0f)) {
              _1263 = (half)(saturate((half)(_278 + 0.15002441h)));
            } else {
              _1263 = _278;
            }
          } else {
            _1263 = _278;
          }
          _1264 = float(_1263);
          if (_1117 == 53) {
            _1280 = (((asfloat(_globalLightParams.z) * _1264) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_277)));
          } else {
            _1280 = _bevelParams.y;
          }
          _1281 = float(_308);
          _1282 = float(_309);
          _1283 = float(_310);
          _1284 = dot(float3(_1199, _1200, _1201), float3(_1249, _1250, _1251));
          _1285 = -0.0f - _1051;
          _1286 = -0.0f - _1052;
          _1287 = -0.0f - _1053;
          _1288 = dot(float3(_1199, _1200, _1201), float3(_1285, _1286, _1287));
          _1294 = cos(abs(asin(_1288) - asin(_1284)) * 0.5f);
          _1298 = _1249 - (_1284 * _1199);
          _1299 = _1250 - (_1284 * _1200);
          _1300 = _1251 - (_1284 * _1201);
          _1304 = _1285 - (_1288 * _1199);
          _1305 = _1286 - (_1288 * _1200);
          _1306 = _1287 - (_1288 * _1201);
          // [sem: invLength]
          _1313 = rsqrt((dot(float3(_1304, _1305, _1306), float3(_1304, _1305, _1306)) * dot(float3(_1298, _1299, _1300), float3(_1298, _1299, _1300))) + 0.0001f) * dot(float3(_1298, _1299, _1300), float3(_1304, _1305, _1306));
          _1323 = min(max(_1264, 0.09803922f), 1.0f);
          _1324 = _1323 * _1323;
          _1325 = _1324 * 0.5f;
          _1326 = _1324 * 2.0f;
          _1327 = _1288 + _1284;
          _1328 = _1327 - _1280;
          _1337 = 1.0f / ((1.19f / _1294) + (_1294 * 0.36f));
          _1342 = ((_1337 * (0.6f - (_1313 * 0.8f))) + 1.0f) * sqrt(saturate((_1313 * 0.5f) + 0.5f));
          _1348 = 1.0f - (sqrt(saturate(1.0f - (_1342 * _1342))) * _1294);
          _1349 = _1348 * _1348;
          _1353 = 0.9534794f - ((_1349 * _1349) * (_1348 * 0.9534794f));
          _1354 = _1337 * _1342;
          _1359 = (sqrt(1.0f - (_1354 * _1354)) * 0.5f) / _1294;
          _1360 = log2(_1281);
          _1361 = log2(_1282);
          _1362 = log2(_1283);
          _1374 = ((_1353 * _1353) * (exp2((((_1328 * _1328) * -0.5f) / (_1325 * _1325)) * 1.442695f) / (_1324 * 1.2533141f))) * exp2(-5.741926f - (_1313 * 5.265837f));
          _1378 = _1327 - (_1280 * 4.0f);
          _1388 = 1.0f - (_1294 * 0.5f);
          _1389 = _1388 * _1388;
          _1393 = (_1389 * _1389) * (0.9534794f - (_1294 * 0.4767397f));
          _1395 = 0.9534794f - _1393;
          _1396 = 0.8f / _1294;
          _1409 = (((_1395 * _1395) * (_1393 + 0.046520565f)) * (exp2((((_1378 * _1378) * -0.5f) / (_1326 * _1326)) * 1.442695f) / (_1324 * 5.0132565f))) * exp2((_1313 * 24.525816f) + -24.208424f);
          _1419 = min(0.0f, (-0.0f - ((_1374 * exp2(_1360 * _1359)) + (_1409 * exp2(_1396 * _1360)))));
          _1420 = min(0.0f, (-0.0f - ((_1374 * exp2(_1361 * _1359)) + (_1409 * exp2(_1396 * _1361)))));
          _1421 = min(0.0f, (-0.0f - ((_1374 * exp2(_1362 * _1359)) + (_1409 * exp2(_1396 * _1362)))));
          _1430 = saturate(abs(dot(float3(_1249, _1250, _1251), float3(_1199, _1200, _1201))));  // [sem: expr_sat]
          // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
          _1439 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1430, _1264, saturate(sqrt(exp2(_1360 * 1.5f)))), 0.0f);
          // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
          _1442 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1430, _1264, saturate(sqrt(exp2(_1361 * 1.5f)))), 0.0f);
          // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
          _1445 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1430, _1264, saturate(sqrt(exp2(_1362 * 1.5f)))), 0.0f);
          _1452 = min(0.99f, _1439.x);
          _1453 = min(0.99f, _1442.x);
          _1454 = min(0.99f, _1445.x);
          _1455 = min(0.99f, _1439.y);
          _1456 = min(0.99f, _1442.y);
          _1457 = min(0.99f, _1445.y);
          _1458 = _1452 * _1452;
          _1459 = _1453 * _1453;
          _1460 = _1454 * _1454;
          _1461 = _1455 * _1455;
          _1462 = _1456 * _1456;
          _1463 = _1457 * _1457;
          _1464 = _1461 * _1455;
          _1465 = _1462 * _1456;
          _1466 = _1463 * _1457;
          _1467 = 1.0f - _1458;
          _1468 = 1.0f - _1459;
          _1469 = 1.0f - _1460;
          _1479 = _1467 * _1467;
          _1480 = _1468 * _1468;
          _1481 = _1469 * _1469;
          _1482 = _1479 * _1467;
          _1483 = _1480 * _1468;
          _1484 = _1481 * _1469;
          _1492 = min(max(_1264, 0.18f), 0.6f);
          _1493 = _1492 * _1492;
          _1494 = _1493 * 0.25f;
          _1495 = _1493 * 4.0f;
          _1497 = (_1453 + _1452) + _1454;
          _1498 = _1452 / _1497;
          _1499 = _1453 / _1497;
          _1500 = _1454 / _1497;
          _1501 = dot(float3(_1493, _1494, _1495), float3(_1498, _1499, _1500));
          _1502 = _1501 * _1501;
          _1505 = asin(min(max(_1288, -1.0f), 1.0f)) + asin(min(max(_1284, -1.0f), 1.0f));
          _1506 = _1505 * 0.5f;
          _1507 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1498, _1499, _1500));
          _1517 = _1507 * _1507;
          _1540 = (_1456 + _1455) + _1457;
          _1544 = dot(float3(_1493, _1494, _1495), float3((_1455 / _1540), (_1456 / _1540), (_1457 / _1540)));
          _1548 = sqrt((_1544 * _1544) + (_1502 * 2.0f));
          _1566 = (_1544 * 3.0f) + (_1501 * 2.0f);
          _1573 = (((_1464 + _1455) * ((_1458 * 0.7f) + 1.0f)) * _1548) / ((_1566 * _1464) + _1455);
          _1574 = (((_1465 + _1456) * ((_1459 * 0.7f) + 1.0f)) * _1548) / ((_1566 * _1465) + _1456);
          _1575 = (((_1466 + _1457) * ((_1460 * 0.7f) + 1.0f)) * _1548) / ((_1566 * _1466) + _1457);
          _1584 = _1506 - (((_1517 * (((_1458 * 4.0f) * _1461) + (_1479 * 2.0f))) * (1.0f - ((_1461 * 2.0f) / _1479))) / _1482);
          _1591 = _1506 - (((_1517 * (((_1459 * 4.0f) * _1462) + (_1480 * 2.0f))) * (1.0f - ((_1462 * 2.0f) / _1480))) / _1483);
          _1598 = _1506 - (((_1517 * (((_1460 * 4.0f) * _1463) + (_1481 * 2.0f))) * (1.0f - ((_1463 * 2.0f) / _1481))) / _1484);
          _1626 = exp2((((_1505 * -0.25f) * _1506) / _1502) * 1.442695f) * 1.4f;
          _1627 = ((((((_1464 * _1458) / _1482) + ((_1455 * _1458) / _1467)) * 4.3982296f) * exp2((((_1584 * _1584) * -0.5f) / ((_1573 * _1573) + _1502)) * 1.442695f)) + ((((_1439.x + _1419) * 0.25f) - _1419) * 6.2831855f)) * _1626;
          _1628 = ((((((_1465 * _1459) / _1483) + ((_1456 * _1459) / _1468)) * 4.3982296f) * exp2((((_1591 * _1591) * -0.5f) / ((_1574 * _1574) + _1502)) * 1.442695f)) + ((((_1442.x + _1420) * 0.25f) - _1420) * 6.2831855f)) * _1626;
          _1629 = ((((((_1466 * _1460) / _1484) + ((_1457 * _1460) / _1469)) * 4.3982296f) * exp2((((_1598 * _1598) * -0.5f) / ((_1575 * _1575) + _1502)) * 1.442695f)) + ((((_1445.x + _1421) * 0.25f) - _1421) * 6.2831855f)) * _1626;
          _1630 = max(0.125f, _1198);
          _1644 = _1198;
          _1645 = _1202;
          _1646 = _1199;
          _1647 = _1200;
          _1648 = _1201;
          _1649 = _1117;
          _1650 = max(0.01f, ((_1630 * (_1281 - _1627)) + _1627));
          _1651 = max(0.01f, (lerp(_1628, _1282, _1630)));
          _1652 = max(0.01f, (lerp(_1629, _1283, _1630)));
        } else {
          _1188 = _1151;
          _1189 = _713;
          _1190 = _714;
          _1191 = _715;
          _1192 = _1152;
          if ((_1117 == 53) || ((_1117 & 126) == 66)) {
            _1198 = _1188;
            _1199 = _1189;
            _1200 = _1190;
            _1201 = _1191;
            _1202 = _1192;
            _1204 = __3__36__0__0__g_bentCone.Load(int3(_525, _526, 0));  // [sem: _3__36__0__0__g_bentCone_load]
            _1211 = __3__36__0__0__g_bentCone.Load(int3(_919, _526, 0));  // [sem: _3__36__0__0__g_bentCone_load]
            _1221 = __3__36__0__0__g_bentCone.Load(int3(_525, _933, 0));  // [sem: _3__36__0__0__g_bentCone_load]
            _1231 = __3__36__0__0__g_bentCone.Load(int3(_919, _933, 0));  // [sem: _3__36__0__0__g_bentCone_load]
            _1244 = (((((_1211.x * _905) + (_1204.x * _904)) + (_1221.x * _906)) + (_1231.x * _907)) * 2.0f) + -1.0f;
            _1245 = (((((_1211.y * _905) + (_1204.y * _904)) + (_1221.y * _906)) + (_1231.y * _907)) * 2.0f) + -1.0f;
            _1246 = (((((_1211.z * _905) + (_1204.z * _904)) + (_1221.z * _906)) + (_1231.z * _907)) * 2.0f) + -1.0f;
            _1248 = rsqrt(dot(float3(_1244, _1245, _1246), float3(_1244, _1245, _1246)));  // [sem: invLength]
            _1249 = _1244 * _1248;
            _1250 = _1245 * _1248;
            _1251 = _1246 * _1248;
            if (!(_renderParams.z > 0.0f)) {
              if (!(_renderParams2.y > 0.0f)) {
                _1263 = (half)(saturate((half)(_278 + 0.15002441h)));
              } else {
                _1263 = _278;
              }
            } else {
              _1263 = _278;
            }
            _1264 = float(_1263);
            if (_1117 == 53) {
              _1280 = (((asfloat(_globalLightParams.z) * _1264) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_277)));
            } else {
              _1280 = _bevelParams.y;
            }
            _1281 = float(_308);
            _1282 = float(_309);
            _1283 = float(_310);
            _1284 = dot(float3(_1199, _1200, _1201), float3(_1249, _1250, _1251));
            _1285 = -0.0f - _1051;
            _1286 = -0.0f - _1052;
            _1287 = -0.0f - _1053;
            _1288 = dot(float3(_1199, _1200, _1201), float3(_1285, _1286, _1287));
            _1294 = cos(abs(asin(_1288) - asin(_1284)) * 0.5f);
            _1298 = _1249 - (_1284 * _1199);
            _1299 = _1250 - (_1284 * _1200);
            _1300 = _1251 - (_1284 * _1201);
            _1304 = _1285 - (_1288 * _1199);
            _1305 = _1286 - (_1288 * _1200);
            _1306 = _1287 - (_1288 * _1201);
            // [sem: invLength]
            _1313 = rsqrt((dot(float3(_1304, _1305, _1306), float3(_1304, _1305, _1306)) * dot(float3(_1298, _1299, _1300), float3(_1298, _1299, _1300))) + 0.0001f) * dot(float3(_1298, _1299, _1300), float3(_1304, _1305, _1306));
            _1323 = min(max(_1264, 0.09803922f), 1.0f);
            _1324 = _1323 * _1323;
            _1325 = _1324 * 0.5f;
            _1326 = _1324 * 2.0f;
            _1327 = _1288 + _1284;
            _1328 = _1327 - _1280;
            _1337 = 1.0f / ((1.19f / _1294) + (_1294 * 0.36f));
            _1342 = ((_1337 * (0.6f - (_1313 * 0.8f))) + 1.0f) * sqrt(saturate((_1313 * 0.5f) + 0.5f));
            _1348 = 1.0f - (sqrt(saturate(1.0f - (_1342 * _1342))) * _1294);
            _1349 = _1348 * _1348;
            _1353 = 0.9534794f - ((_1349 * _1349) * (_1348 * 0.9534794f));
            _1354 = _1337 * _1342;
            _1359 = (sqrt(1.0f - (_1354 * _1354)) * 0.5f) / _1294;
            _1360 = log2(_1281);
            _1361 = log2(_1282);
            _1362 = log2(_1283);
            _1374 = ((_1353 * _1353) * (exp2((((_1328 * _1328) * -0.5f) / (_1325 * _1325)) * 1.442695f) / (_1324 * 1.2533141f))) * exp2(-5.741926f - (_1313 * 5.265837f));
            _1378 = _1327 - (_1280 * 4.0f);
            _1388 = 1.0f - (_1294 * 0.5f);
            _1389 = _1388 * _1388;
            _1393 = (_1389 * _1389) * (0.9534794f - (_1294 * 0.4767397f));
            _1395 = 0.9534794f - _1393;
            _1396 = 0.8f / _1294;
            _1409 = (((_1395 * _1395) * (_1393 + 0.046520565f)) * (exp2((((_1378 * _1378) * -0.5f) / (_1326 * _1326)) * 1.442695f) / (_1324 * 5.0132565f))) * exp2((_1313 * 24.525816f) + -24.208424f);
            _1419 = min(0.0f, (-0.0f - ((_1374 * exp2(_1360 * _1359)) + (_1409 * exp2(_1396 * _1360)))));
            _1420 = min(0.0f, (-0.0f - ((_1374 * exp2(_1361 * _1359)) + (_1409 * exp2(_1396 * _1361)))));
            _1421 = min(0.0f, (-0.0f - ((_1374 * exp2(_1362 * _1359)) + (_1409 * exp2(_1396 * _1362)))));
            _1430 = saturate(abs(dot(float3(_1249, _1250, _1251), float3(_1199, _1200, _1201))));  // [sem: expr_sat]
            // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
            _1439 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1430, _1264, saturate(sqrt(exp2(_1360 * 1.5f)))), 0.0f);
            // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
            _1442 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1430, _1264, saturate(sqrt(exp2(_1361 * 1.5f)))), 0.0f);
            // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
            _1445 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1430, _1264, saturate(sqrt(exp2(_1362 * 1.5f)))), 0.0f);
            _1452 = min(0.99f, _1439.x);
            _1453 = min(0.99f, _1442.x);
            _1454 = min(0.99f, _1445.x);
            _1455 = min(0.99f, _1439.y);
            _1456 = min(0.99f, _1442.y);
            _1457 = min(0.99f, _1445.y);
            _1458 = _1452 * _1452;
            _1459 = _1453 * _1453;
            _1460 = _1454 * _1454;
            _1461 = _1455 * _1455;
            _1462 = _1456 * _1456;
            _1463 = _1457 * _1457;
            _1464 = _1461 * _1455;
            _1465 = _1462 * _1456;
            _1466 = _1463 * _1457;
            _1467 = 1.0f - _1458;
            _1468 = 1.0f - _1459;
            _1469 = 1.0f - _1460;
            _1479 = _1467 * _1467;
            _1480 = _1468 * _1468;
            _1481 = _1469 * _1469;
            _1482 = _1479 * _1467;
            _1483 = _1480 * _1468;
            _1484 = _1481 * _1469;
            _1492 = min(max(_1264, 0.18f), 0.6f);
            _1493 = _1492 * _1492;
            _1494 = _1493 * 0.25f;
            _1495 = _1493 * 4.0f;
            _1497 = (_1453 + _1452) + _1454;
            _1498 = _1452 / _1497;
            _1499 = _1453 / _1497;
            _1500 = _1454 / _1497;
            _1501 = dot(float3(_1493, _1494, _1495), float3(_1498, _1499, _1500));
            _1502 = _1501 * _1501;
            _1505 = asin(min(max(_1288, -1.0f), 1.0f)) + asin(min(max(_1284, -1.0f), 1.0f));
            _1506 = _1505 * 0.5f;
            _1507 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1498, _1499, _1500));
            _1517 = _1507 * _1507;
            _1540 = (_1456 + _1455) + _1457;
            _1544 = dot(float3(_1493, _1494, _1495), float3((_1455 / _1540), (_1456 / _1540), (_1457 / _1540)));
            _1548 = sqrt((_1544 * _1544) + (_1502 * 2.0f));
            _1566 = (_1544 * 3.0f) + (_1501 * 2.0f);
            _1573 = (((_1464 + _1455) * ((_1458 * 0.7f) + 1.0f)) * _1548) / ((_1566 * _1464) + _1455);
            _1574 = (((_1465 + _1456) * ((_1459 * 0.7f) + 1.0f)) * _1548) / ((_1566 * _1465) + _1456);
            _1575 = (((_1466 + _1457) * ((_1460 * 0.7f) + 1.0f)) * _1548) / ((_1566 * _1466) + _1457);
            _1584 = _1506 - (((_1517 * (((_1458 * 4.0f) * _1461) + (_1479 * 2.0f))) * (1.0f - ((_1461 * 2.0f) / _1479))) / _1482);
            _1591 = _1506 - (((_1517 * (((_1459 * 4.0f) * _1462) + (_1480 * 2.0f))) * (1.0f - ((_1462 * 2.0f) / _1480))) / _1483);
            _1598 = _1506 - (((_1517 * (((_1460 * 4.0f) * _1463) + (_1481 * 2.0f))) * (1.0f - ((_1463 * 2.0f) / _1481))) / _1484);
            _1626 = exp2((((_1505 * -0.25f) * _1506) / _1502) * 1.442695f) * 1.4f;
            _1627 = ((((((_1464 * _1458) / _1482) + ((_1455 * _1458) / _1467)) * 4.3982296f) * exp2((((_1584 * _1584) * -0.5f) / ((_1573 * _1573) + _1502)) * 1.442695f)) + ((((_1439.x + _1419) * 0.25f) - _1419) * 6.2831855f)) * _1626;
            _1628 = ((((((_1465 * _1459) / _1483) + ((_1456 * _1459) / _1468)) * 4.3982296f) * exp2((((_1591 * _1591) * -0.5f) / ((_1574 * _1574) + _1502)) * 1.442695f)) + ((((_1442.x + _1420) * 0.25f) - _1420) * 6.2831855f)) * _1626;
            _1629 = ((((((_1466 * _1460) / _1484) + ((_1457 * _1460) / _1469)) * 4.3982296f) * exp2((((_1598 * _1598) * -0.5f) / ((_1575 * _1575) + _1502)) * 1.442695f)) + ((((_1445.x + _1421) * 0.25f) - _1421) * 6.2831855f)) * _1626;
            _1630 = max(0.125f, _1198);
            _1644 = _1198;
            _1645 = _1202;
            _1646 = _1199;
            _1647 = _1200;
            _1648 = _1201;
            _1649 = _1117;
            _1650 = max(0.01f, ((_1630 * (_1281 - _1627)) + _1627));
            _1651 = max(0.01f, (lerp(_1628, _1282, _1630)));
            _1652 = max(0.01f, (lerp(_1629, _1283, _1630)));
          } else {
            _1644 = _1188;
            _1645 = _1192;
            _1646 = _1189;
            _1647 = _1190;
            _1648 = _1191;
            _1649 = _1117;
            _1650 = 0.0f;
            _1651 = 0.0f;
            _1652 = 0.0f;
          }
        }
      }
    }
    _1659 = -0.0f - min(0.0f, (-0.0f - ((((float(_909.x) * _904) + (float(_920.x) * _905)) + (float(_934.x) * _906)) + (float(_947.x) * _907))));
    _1660 = -0.0f - min(0.0f, (-0.0f - ((((float(_909.y) * _904) + (float(_920.y) * _905)) + (float(_934.y) * _906)) + (float(_947.y) * _907))));
    _1661 = -0.0f - min(0.0f, (-0.0f - ((((float(_909.z) * _904) + (float(_920.z) * _905)) + (float(_934.z) * _906)) + (float(_947.z) * _907))));
    half2 _1663 = __3__36__0__0__g_sceneAO.Load(int3(_525, _526, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    half2 _1670 = __3__36__0__0__g_sceneAO.Load(int3(_919, _526, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    half2 _1679 = __3__36__0__0__g_sceneAO.Load(int3(_525, _933, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    half2 _1688 = __3__36__0__0__g_sceneAO.Load(int3(_919, _933, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    _1695 = (((float(_1670.x) * _905) + (float(_1663.x) * _904)) + (float(_1679.x) * _906)) + (float(_1688.x) * _907);
    if ((uint)_1649 > (uint)11) {
      _1702 = ((uint)_1649 < (uint)19);
      if (!((uint)_1649 < (uint)20)) {
        _1705 = _1702;
        _1708 = _1705;
        _1709 = (_1649 == 107);
      } else {
        _1708 = _1702;
        _1709 = true;
      }
    } else {
      if (!((uint)_1649 > (uint)10)) {
        _1705 = false;
        _1708 = _1705;
        _1709 = (_1649 == 107);
      } else {
        _1708 = false;
        _1709 = true;
      }
    }
    _1714 = (_1649 == 65);
    _1715 = _1714 || (_1708 || ((_1649 == 96) || _1709));
    _1717 = select(_1715, float(_1645), 0.0f);
    _1720 = ((uint)(_1649 & 24) > (uint)23);
    if (_1720) {
      _1722 = (_1649 == 29);
      if (_1722) {
        _1727 = float(saturate(_278));
      } else {
        _1727 = 0.0f;
      }
      _1729 = (uint)((half)(_277 * 255.0h));
      if (_186) {
        _1738 = select(((_1729 & 128) != 0), 1.0f, 0.0f);
        _1739 = (((float)((uint)((uint)(_1729 & 127)))) * 0.007874016f);
      } else {
        _1738 = 0.0f;
        _1739 = 0.0f;
      }
      _1740 = half(_1739);
      _1744 = (_1740 > 0.99902344h);
      _1749 = _1740;
      _1750 = (half)(select(((_1649 == 24) || _1722), 0.010002136f, _278));
      _1751 = _1738;
      _1752 = (half)(select(_1744, 1.0f, _308));
      _1753 = (half)(select(_1744, 1.0f, _309));
      _1754 = (half)(select(_1744, 1.0f, _310));
      _1755 = _1727;
    } else {
      _1749 = (half)(select(_1715, 0.0f, _1645));
      _1750 = _278;
      _1751 = 0.0f;
      _1752 = _308;
      _1753 = _309;
      _1754 = _310;
      _1755 = 0.0f;
    }
    // RenoDX: >>> [Patch: FoliageColorCorrect] [Version: 1.16.00]
    // Description: Applies RenoDX foliage color shaping to foliage stencil materials (stencil ids
    //              12..18) right after the shader has resolved the direct-diffuse base color for the
    //              pixel. Vanilla foliage albedo reads flat and yellow-green under strong sun, so the
    //              helper re-balances hue and saturation. The shadow-map visibility term from
    //              g_sceneShadowColor is passed in so foliage that is shadowed is not pushed through
    //              the fully sunlit shaping curve, which would otherwise make shaded leaves glow.
    //              Gated by FOLIAGE_COLOR_CORRECT; at 0 the block does not execute.
    if (FOLIAGE_COLOR_CORRECT > 0.0f && ((uint)(_118 - 12) < 7u)) {
      float3 _rndx_fcBaseColor = float3(float(_1752), float(_1753), float(_1754));
      half4 _rndx_fcShadow = __3__36__0__0__g_sceneShadowColor.Load(int3(_100, _102, 0));
      float _rndx_fcShadowVis = saturate(dot(float3(_rndx_fcShadow.xyz), float3(0.2126f, 0.7152f, 0.0722f)));
      float3 _rndx_fcCorrected = FoliageColorCorrect(_rndx_fcBaseColor, _sunDirection.xyz, _rndx_fcShadowVis, float3(1.0f, 1.0f, 1.0f));
      float3 _rndx_fscColor = FoliageSelectiveColor(_rndx_fcCorrected);
      _1752 = half(_rndx_fscColor.x);
      _1753 = half(_rndx_fscColor.y);
      _1754 = half(_rndx_fscColor.z);
    }
    // RenoDX: <<< [Patch: FoliageColorCorrect]
    _1756 = _1649 & -2;
    _1757 = (_1756 == 66);
    _1758 = (_1649 == 53);
    _1759 = _1758 || _1757;
    _1760 = -0.0f - _1051;
    _1761 = -0.0f - _1052;
    _1762 = -0.0f - _1053;
    _1763 = dot(float3(_1760, _1761, _1762), float3(_713, _714, _715));
    if (_1759) {
      _1767 = abs(_1763);
    } else {
      _1767 = _1763;
    }
    _1768 = saturate(_1767);  // [sem: _1767_sat]
    _1769 = _116.x & 128;  // [sem: _3__36__0__0__g_stencil_load_derived]
    _1770 = (_1769 == 0);
    if (_1770) {
      if ((uint)_118 > (uint)51) {
        if (!(((_116.x & 125) == 105) || ((uint)_118 < (uint)68))) {
          _1790 = (_118 == 98);
        } else {
          _1790 = true;
        }
      } else {
        if ((uint)_118 > (uint)10) {
          if ((uint)_118 < (uint)20) {
            if (_208 == 14) {
              _1790 = (_118 == 98);
            } else {
              _1790 = true;
            }
          } else {
            if (!((_116.x & 125) == 105)) {
              _1790 = (_118 == 98);
            } else {
              _1790 = true;
            }
          }
        } else {
          _1790 = (_118 == 98);
        }
      }
    } else {
      _1790 = true;
    }
    [branch]
    if (_1720) {
      _1799 = (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(_100, _102, 0)))).x) & 16777215)))) * 5.960465e-08f);
    } else {
      _1799 = _113.x;
    }
    _1827 = mad((_projToPrevProj[3].z), _1799, mad((_projToPrevProj[3].y), _1009, ((_projToPrevProj[3].x) * _1007))) + (_projToPrevProj[3].w);
    if (_1790) {
      _1834 = __3__36__0__0__g_velocity.Load(int3(_100, _102, 0));  // [sem: _3__36__0__0__g_velocity_load]
      _1840 = (_1834.x * 2.0f);
      _1841 = (_1834.y * 2.0f);
    } else {
      _1840 = (((mad((_projToPrevProj[0].z), _1799, mad((_projToPrevProj[0].y), _1009, ((_projToPrevProj[0].x) * _1007))) + (_projToPrevProj[0].w)) / _1827) - _1007);
      _1841 = (((mad((_projToPrevProj[1].z), _1799, mad((_projToPrevProj[1].y), _1009, ((_projToPrevProj[1].x) * _1007))) + (_projToPrevProj[1].w)) / _1827) - _1009);
    }
    _1843 = _nearFarProj.x / max(1e-07f, _1799);
    _1846 = (_1840 * 0.5f) + _110;
    _1847 = _111 - (_1841 * 0.5f);
    _1855 = select((((_1846 < 0.0f) || (_1846 > 1.0f)) || ((_1847 < 0.0f) || (_1847 > 1.0f))), 1.0f, 0.0f);
    _1861 = (_bufferSizeAndInvSize.x * _1846) + -0.5f;
    _1862 = (_bufferSizeAndInvSize.y * _1847) + -0.5f;
    _1865 = (int)(floor(_1861));
    _1866 = (int)(floor(_1862));
    _1867 = (float)((int)(_1865));
    _1868 = (float)((int)(_1866));
    _1873 = (_1867 + 0.5f) * _bufferSizeAndInvSize.z;
    _1874 = (_1868 + 0.5f) * _bufferSizeAndInvSize.w;
    _1876 = __3__36__0__0__g_depthOpaquePrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(_1873, _1874));  // [sem: _3__36__0__0__g_depthOpaquePrev_gather]
    _1899 = mad(((uint)((uint)(_1876.w)) >> 24), 16777216, mad(((uint)((uint)(_1876.z)) >> 24), 65536, mad(((uint)((uint)(_1876.y)) >> 24), 256, ((uint)((uint)(_1876.x)) >> 24))));
    if (_1770) {
      if ((uint)_118 > (uint)51) {
        if (!((_118 == 98) || (((_116.x & 125) == 105) || ((uint)_118 < (uint)68)))) {
          _1929 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
        } else {
          _1929 = 0.0f;
        }
      } else {
        if ((uint)_118 > (uint)10) {
          if ((uint)_118 < (uint)20) {
            if (_208 == 14) {
              _1929 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
            } else {
              _1929 = 0.0f;
            }
          } else {
            if (!((_116.x & 125) == 105)) {
              _1929 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
            } else {
              _1929 = 0.0f;
            }
          }
        } else {
          _1929 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
        }
      }
    } else {
      _1929 = 0.0f;
    }
    _1937 = _screenPercentage.x * 2.0f;
    _1938 = _1937 * abs(_110 + -0.5f);
    _1939 = _screenPercentage.y * 2.0f;
    _1940 = _1939 * abs(_111 + -0.5f);
    _1944 = sqrt(dot(float2(_1938, _1940), float2(_1938, _1940)) + 1.0f) * _1843;
    _1961 = _1937 * abs(_1846 + -0.5f);
    _1962 = _1939 * abs(_1847 + -0.5f);
    _1965 = sqrt(dot(float2(_1961, _1962), float2(_1961, _1962)) + 1.0f);
    _1980 = _629 || ((uint)((int)(_1649) + (int)(-97)) < (uint)2);
    _1982 = _1843 * _1843;
    _1984 = (_1982 * select(_1980, 0.5f, 0.2f)) + 1.0f;
    _1988 = ((uint)((int)(_1649) + (int)(-52)) < (uint)16);
    if (_1988) {
      _2007 = (1000.0f - (saturate((float)((bool)((sqrt(((_diffViewPosAccurate.x * _diffViewPosAccurate.x) + (_diffViewPosAccurate.y * _diffViewPosAccurate.y)) + (_diffViewPosAccurate.z * _diffViewPosAccurate.z)) * 50.0f) > 1.0f))) * 875.0f));
    } else {
      _2007 = 50.0f;
    }
    _2013 = select(_1988, 0.0f, ((_temporalReprojectionParams.y * 0.1f) * max(0.0f, (_1843 + -1.0f))));
    _2018 = max(0.0f, (abs(_1944 - (_1965 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1876.x & 16777215)))) * 5.960465e-08f))) - _1929))) - _2013));
    _2019 = max(0.0f, (abs(_1944 - (_1965 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1876.y & 16777215)))) * 5.960465e-08f))) - _1929))) - _2013));
    _2020 = max(0.0f, (abs(_1944 - (_1965 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1876.z & 16777215)))) * 5.960465e-08f))) - _1929))) - _2013));
    _2021 = max(0.0f, (abs(_1944 - (_1965 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1876.w & 16777215)))) * 5.960465e-08f))) - _1929))) - _2013));
    _2022 = _2018 * _2018;
    _2023 = _2019 * _2019;
    _2024 = _2020 * _2020;
    _2025 = _2021 * _2021;
    _2027 = (-1.442695f / ((_1982 * 0.1f) + 1.0f)) * select(_1980, 0.2f, _2007);
    _2040 = select((_2022 > _1984), 0.0f, exp2(_2027 * _2022));
    _2041 = select((_2023 > _1984), 0.0f, exp2(_2023 * _2027));
    _2042 = select((_2024 > _1984), 0.0f, exp2(_2024 * _2027));
    _2043 = select((_2025 > _1984), 0.0f, exp2(_2025 * _2027));
    if (!_1720) {
      _2045 = _1899 & 127;
      _2046 = _1899 & 32512;
      _2047 = _1899 & 8323072;
      _2048 = _1899 & 2130706432;
      _2070 = ((uint)((int)(_2045) + (int)(-52)) < (uint)16);
      _2074 = ((uint)((int)(((uint)((uint)(_1899)) >> 8) & 127) + (int)(-52)) < (uint)16);
      _2078 = ((uint)((int)(((uint)((uint)(_1899)) >> 16) & 127) + (int)(-52)) < (uint)16);
      _2082 = ((uint)((int)(((uint)((uint)(_1899)) >> 24) & 127) + (int)(-52)) < (uint)16);
      _2095 = ((uint)((int)(_118) + (int)(-52)) < (uint)16);
      _2097 = (_1769 != 0) || _2095;
      _2106 = (_1649 == 6);
      _2128 = ((uint)((int)(_1649) + (int)(-105)) < (uint)3);
      _2166 = (_2040 * ((float)((bool)((_657 || ((_2045 != 53) && ((_1899 & 126) != 66))) && (!((_2097 ^ (((_1899 & 128) != 0) || _2070)) || ((_2106 ^ (_2045 == 6)) || ((_2095 ^ _2070) || (_2128 ^ ((_2045 == 107) || ((uint)((int)(_2045) + (int)(-105)) < (uint)2)))))))))));
      _2167 = (_2041 * ((float)((bool)((_657 || ((_2046 != 13568) && ((_1899 & 32256) != 16896))) && (!((_2097 ^ (((_1899 & 32768) != 0) || _2074)) || ((_2106 ^ (_2046 == 1536)) || ((_2095 ^ _2074) || (_2128 ^ (((_1899 & 32000) == 26880) || (_2046 == 27136)))))))))));
      _2168 = (_2042 * ((float)((bool)((_657 || ((_2047 != 3473408) && ((_1899 & 8257536) != 4325376))) && (!((_2097 ^ (((_1899 & 8388608) != 0) || _2078)) || ((_2106 ^ (_2047 == 393216)) || ((_2095 ^ _2078) || (_2128 ^ (((_1899 & 8192000) == 6881280) || (_2047 == 6946816)))))))))));
      _2169 = (_2043 * ((float)((bool)((_657 || ((_2048 != 889192448) && ((_1899 & 2113929216) != 1107296256))) && (!((_2097 ^ (((int)_1899 < (int)0) || _2082)) || ((_2106 ^ (_2048 == 100663296)) || ((_2095 ^ _2082) || (_2128 ^ (((_1899 & 2097152000) == 1761607680) || (_2048 == 1778384896)))))))))));
    } else {
      _2166 = _2040;
      _2167 = _2041;
      _2168 = _2042;
      _2169 = _2043;
    }
    _2171 = __3__36__0__0__g_sceneNormalPrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(_1873, _1874));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather]
    _2190 = min(1.0f, ((((float)((uint)((uint)(_2171.w & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2191 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2171.w)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2192 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2171.w)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2194 = rsqrt(dot(float3(_2190, _2191, _2192), float3(_2190, _2191, _2192)));  // [sem: invLength]
    _2199 = saturate(dot(float3(_713, _714, _715), float3((_2194 * _2190), (_2194 * _2191), (_2194 * _2192))));  // [sem: expr_sat]
    _2214 = min(1.0f, ((((float)((uint)((uint)(_2171.z & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2215 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2171.z)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2216 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2171.z)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2218 = rsqrt(dot(float3(_2214, _2215, _2216), float3(_2214, _2215, _2216)));  // [sem: invLength]
    _2223 = saturate(dot(float3(_713, _714, _715), float3((_2218 * _2214), (_2218 * _2215), (_2218 * _2216))));  // [sem: expr_sat]
    _2238 = min(1.0f, ((((float)((uint)((uint)(_2171.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2239 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2171.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2240 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2171.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2242 = rsqrt(dot(float3(_2238, _2239, _2240), float3(_2238, _2239, _2240)));  // [sem: invLength]
    _2247 = saturate(dot(float3(_713, _714, _715), float3((_2242 * _2238), (_2242 * _2239), (_2242 * _2240))));  // [sem: expr_sat]
    _2262 = min(1.0f, ((((float)((uint)((uint)(_2171.y & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2263 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2171.y)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2264 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2171.y)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2266 = rsqrt(dot(float3(_2262, _2263, _2264), float3(_2262, _2263, _2264)));  // [sem: invLength]
    _2271 = saturate(dot(float3(_713, _714, _715), float3((_2266 * _2262), (_2266 * _2263), (_2266 * _2264))));  // [sem: expr_sat]
    _2274 = select((_1758 || (_1757 || _1980)), 0.01f, 1.0f);
    _2291 = _1861 - _1867;
    _2292 = _1862 - _1868;
    _2293 = 1.0f - _2291;
    _2294 = 1.0f - _2292;
    _2299 = (_2293 * _2292) * _2166;
    _2301 = (_2292 * _2291) * _2167;
    _2303 = (_2294 * _2291) * _2168;
    _2305 = (_2294 * _2293) * _2169;
    _2307 = saturate(select(_1720, 1.0f, (pow(_2247, _2274))) * _2299);  // [sem: expr_sat]
    _2308 = saturate(select(_1720, 1.0f, (pow(_2271, _2274))) * _2301);  // [sem: expr_sat]
    _2309 = saturate(select(_1720, 1.0f, (pow(_2223, _2274))) * _2303);  // [sem: expr_sat]
    _2310 = saturate(select(_1720, 1.0f, (pow(_2199, _2274))) * _2305);  // [sem: expr_sat]
    _2313 = asint(__3__37__0__0__g_structureCounterBuffer.Load(8));
    _2314 = WaveReadLaneFirst(_2313);
    [branch]
    if (!(_2314 == 0)) {
      _2322 = (((uint)(__3__36__0__0__g_tiledManyLightsMasks.Load(int3(((int)(_100) >> 5), ((int)(_102) >> 5), 0)))).x) & 4;
      _2324 = (uint)((uint)(_2322)) >> 2;
      if (!(_2322 == 0)) {
        _2332 = max((saturate(dot(float3(_1659, _1660, _1661), float3(0.212671f, 0.71516f, 0.072169f)) * 0.01f) * 0.875f), _1855);
        _2333 = _2324;
      } else {
        _2332 = _1855;
        _2333 = _2324;
      }
    } else {
      _2332 = _1855;
      _2333 = 0;
    }
    // [sem: expr_sat]
    _2343 = saturate(max(_2332, (((_environmentLightingHistory[1].w) + _temporalReprojectionParams.w) + _renderParams.y)));
    _2344 = (uint)((uint)(_1866)) + (uint)(1);
    half4 _2346 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1865, _2344, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    _2351 = (uint)((uint)(_1865)) + (uint)(1);
    half4 _2352 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_2351, _2344, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    half4 _2357 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_2351, _1866, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    half4 _2362 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1865, _1866, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    _2367 = dot(float4(_2307, _2308, _2309, _2310), float4(1.0f, 1.0f, 1.0f, 1.0f));
    // [sem: expr_sat]
    _2376 = saturate(dot(float4(_2307, _2308, _2309, _2310), float4(float(_2346.w), float(_2352.w), float(_2357.w), float(_2362.w))) * (1.0f / max(1.0f, _2367)));
    _2381 = sqrt((_1841 * _1841) + (_1840 * _1840)) * 50.0f;
    if (_1988) {
      _2390 = saturate(1.0f - _2381);  // [sem: expr_sat]
    } else {
      _2390 = (1.0f - (saturate(_2381) * 0.5f));  // [sem: expr_sat]
    }
    _2394 = max(1.0f, (_bufferSizeAndInvSize.w * 2160.0f));
    _2397 = min(31.0f, ((_2390 * 15.0f) * _2394));
    _2398 = (_1649 == 29);
    if (_2398) {
      _2402 = min(2.0f, _2397);
    } else {
      _2402 = _2397;
    }
    _2403 = (_1649 == 24);
    _2404 = select(_2403, 1.0f, _2376);
    _2406 = (_2404 * _2404) * 4.0f;
    _2409 = __3__36__0__0__g_manyLightsMoments.SampleLevel(__3__40__0__0__g_sampler, float2(_110, _111), 0.0f);  // [sem: _3__36__0__0__g_manyLightsMoments_sampleLod]
    _2414 = saturate(_2409.w);  // [sem: expr_sat]
    _2416 = 1.0f / max(1e-06f, _2367);
    _2418 = _2416 * _2307;
    _2419 = _2416 * _2308;
    _2420 = _2416 * _2309;
    _2421 = _2416 * _2310;
    if (!((_2416 * _2367) == 0.0f)) {
      _2434 = saturate(saturate(max(_2343, (1.0f / ((saturate(_2406) * _2402) + 1.0f))) + _renderParams.z));  // [sem: expr_sat]
    } else {
      _2434 = 1.0f;  // [sem: expr_sat]
    }
    _2476 = 1.0f / _exposure4.x;
    _2493 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (-0.0f - (min(0.0f, (-0.0f - ((_2421 * float(_2362.x)) + ((_2420 * float(_2357.x)) + ((_2418 * float(_2346.x)) + (_2419 * float(_2352.x))))))) * _exposure4.y)))));
    _2494 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (-0.0f - (min(0.0f, (-0.0f - ((_2421 * float(_2362.y)) + ((_2420 * float(_2357.y)) + ((_2418 * float(_2346.y)) + (_2419 * float(_2352.y))))))) * _exposure4.y)))));
    _2495 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (-0.0f - (min(0.0f, (-0.0f - ((_2421 * float(_2362.z)) + ((_2420 * float(_2357.z)) + ((_2418 * float(_2346.z)) + (_2419 * float(_2352.z))))))) * _exposure4.y)))));
    if (_renderParams.y == 0.0f) {
      if (_1757) {
        _2526 = _2493;
        _2527 = _2494;
        _2528 = _2495;
        _2529 = _2434;
        _2533 = _2526;
        _2534 = _2527;
        _2535 = _2528;
        _2536 = _2529;
        _2537 = saturate(_2376 + 0.0625f);  // [sem: expr_sat]
      } else {
        if (!_1758) {
          _2500 = dot(float3(_2493, _2494, _2495), float3(0.212671f, 0.71516f, 0.072169f));
          _2516 = ((min(_2500, _2409.y) / max(1e-06f, _2500)) * _2414) + saturate(1.0f - _2414);
          _2521 = saturate(((_2414 * 0.5f) * saturate(((_2409.x - _2500) * 2.0f) / max(1e-06f, _2409.x))) + _2434);  // [sem: expr_sat]
          _2522 = (_2516 * _2493);
          _2523 = (_2516 * _2494);
          _2524 = (_2516 * _2495);
        } else {
          _2521 = _2434;  // [sem: expr_sat]
          _2522 = _2493;
          _2523 = _2494;
          _2524 = _2495;
        }
        if (!_2403) {
          _2526 = _2522;
          _2527 = _2523;
          _2528 = _2524;
          _2529 = _2521;
          _2533 = _2526;
          _2534 = _2527;
          _2535 = _2528;
          _2536 = _2529;
          _2537 = saturate(_2376 + 0.0625f);  // [sem: expr_sat]
        } else {
          _2533 = _2522;
          _2534 = _2523;
          _2535 = _2524;
          _2536 = _2521;
          _2537 = 0.0f;  // [sem: expr_sat]
        }
      }
    } else {
      _2521 = _2434;  // [sem: expr_sat]
      _2522 = _2493;
      _2523 = _2494;
      _2524 = _2495;
      if (!_2403) {
        _2526 = _2522;
        _2527 = _2523;
        _2528 = _2524;
        _2529 = _2521;
        _2533 = _2526;
        _2534 = _2527;
        _2535 = _2528;
        _2536 = _2529;
        _2537 = saturate(_2376 + 0.0625f);  // [sem: expr_sat]
      } else {
        _2533 = _2522;
        _2534 = _2523;
        _2535 = _2524;
        _2536 = _2521;
        _2537 = 0.0f;  // [sem: expr_sat]
      }
    }
    _2544 = (_2536 * (_1659 - _2533)) + _2533;
    _2545 = (_2536 * (_1660 - _2534)) + _2534;
    _2546 = (_2536 * (_1661 - _2535)) + _2535;
    __3__38__0__1__g_diffuseResultUAV[int2(_100, _102)] = float4((half)(half(_2544)), (half)(half(_2545)), (half)(half(_2546)), (half)(half(_2537)));
    _2553 = float(_1752);
    _2554 = float(_1753);
    _2555 = float(_1754);
    if (_1649 == 52) {
      _2562 = saturate(((_2554 + _2553) + _2555) * 1.2f);  // [sem: expr_sat]
    } else {
      _2562 = 1.0f;  // [sem: expr_sat]
    }
    _2563 = float(_1749);
    _2569 = (0.7f / min(max(max(max(_2553, _2554), _2555), 0.01f), 0.7f)) * _2562;
    _2579 = (((_2569 * _2553) + -0.04f) * _2563) + 0.04f;
    _2580 = (((_2569 * _2554) + -0.04f) * _2563) + 0.04f;
    _2581 = (((_2569 * _2555) + -0.04f) * _2563) + 0.04f;
    _2582 = select(_1720, 1.0f, ((((float(_1670.y) * _905) + (float(_1663.y) * _904)) + (float(_1679.y) * _906)) + (float(_1688.y) * _907)));
    if (!_1720) {
      _2587 = saturate(1.0f - _1695);  // [sem: expr_sat]
    } else {
      _2587 = 1.0f;  // [sem: expr_sat]
    }
    _2590 = (_1649 == 98) || (_1756 == 96);
    if (!_2590) {
      bool __branch_chain_2591;
      if ((uint)((int)(_1649) + (int)(-105)) < (uint)2) {
        _2598 = _186;
        __branch_chain_2591 = true;
      } else {
        if (!((uint)((int)(_1649) + (int)(-11)) < (uint)9)) {
          _2598 = false;
          __branch_chain_2591 = true;
        } else {
          _2641 = 0.0h;
          _2642 = _1649;
          _2643 = 0.0f;
          _2644 = 0.0f;
          _2645 = 0.0f;
          __branch_chain_2591 = false;
        }
      }
      if (__branch_chain_2591) {
        _2600 = (_1649 == 107) || _2598;
        _2603 = select(_2600, 0.0f, _1749);
        if (_2600 || (!_1714)) {
          if (!(_1649 == 33)) {
            if (_1649 == 54) {
              if (!((((int)((uint)((_1073 * 255.0f) + 0.5f))) & 112) == 0)) {
                _2626 = (uint)((_1073 * 255.0f) + 0.5f);
                _2628 = ((uint)((uint)(_2626)) >> 4) & 7;
                if (!(_2628 == 0)) {
                  _2635 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_2628) + (int)(1)))];
                  _2641 = _2603;
                  _2642 = _1649;
                  _2643 = min((1.0f - _2635.y), _2635.x);
                  _2644 = (((float)((uint)((uint)(_2626 & 15)))) * 0.06666667f);
                  _2645 = _2635.x;
                } else {
                  _2641 = _2603;
                  _2642 = _1649;
                  _2643 = 0.0f;
                  _2644 = 0.0f;
                  _2645 = 0.0f;
                }
              } else {
                _2641 = _2603;
                _2642 = 52;
                _2643 = 0.0f;
                _2644 = 0.0f;
                _2645 = 0.0f;
              }
            } else {
              if (_1649 == 55) {
                _2641 = _2603;
                _2642 = select(((((int)((uint)((_1073 * 255.0f) + 0.5f))) & 127) == 0), 52, 55);
                _2643 = 0.0f;
                _2644 = 0.0f;
                _2645 = 0.0f;
              } else {
                _2641 = _2603;
                _2642 = _1649;
                _2643 = 0.0f;
                _2644 = 0.0f;
                _2645 = 0.0f;
              }
            }
          } else {
            _2626 = (uint)((_1073 * 255.0f) + 0.5f);
            _2628 = ((uint)((uint)(_2626)) >> 4) & 7;
            if (!(_2628 == 0)) {
              _2635 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_2628) + (int)(1)))];
              _2641 = _2603;
              _2642 = _1649;
              _2643 = min((1.0f - _2635.y), _2635.x);
              _2644 = (((float)((uint)((uint)(_2626 & 15)))) * 0.06666667f);
              _2645 = _2635.x;
            } else {
              _2641 = _2603;
              _2642 = _1649;
              _2643 = 0.0f;
              _2644 = 0.0f;
              _2645 = 0.0f;
            }
          }
        } else {
          _2641 = 0.0h;
          _2642 = 65;
          _2643 = 0.0f;
          _2644 = 0.0f;
          _2645 = 0.0f;
        }
      }
    } else {
      _2641 = 0.0h;
      _2642 = _1649;
      _2643 = 0.0f;
      _2644 = 0.0f;
      _2645 = 0.0f;
    }
    _2647 = dot(float3(_1051, _1052, _1053), float3(_713, _714, _715)) * 2.0f;
    _2651 = _1051 - (_2647 * _713);
    _2652 = _1052 - (_2647 * _714);
    _2653 = _1053 - (_2647 * _715);
    _2659 = dot(float3(_1051, _1052, _1053), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
    _2667 = (_1048 * _1048) + (_1046 * _1046);
    _2669 = sqrt(_2667 + (_1047 * _1047));
    _2671 = sqrt(max(0.0f, (dot(float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z)) - (_2659 * _2659)))) / (_2669 + 5.0f);
    _2675 = float(_1750);
    if ((_1750 < 0.099975586h) && (_2671 < 0.125f)) {
      _2685 = select((_2675 < 0.8f), ((__3__36__0__0__g_specularRayHitDistance.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_110, _111), 0.0f)).x), 0.0f) * rsqrt(dot(float3(_2651, _2652, _2653), float3(_2651, _2652, _2653)));
      _2686 = _2685 * _2651;
      _2687 = _2685 * _2652;
      _2688 = _2685 * _2653;
      _2693 = dot(float3(_2686, _2687, _2688), float3((-0.0f - _713), (-0.0f - _714), (-0.0f - _715))) * 2.0f;
      _2698 = ((_2693 * _713) + _1046) + _2686;
      _2700 = ((_2693 * _714) + _1047) + _2687;
      _2702 = ((_2693 * _715) + _1048) + _2688;
      _2726 = mad((_viewProjRelative[0].z), _2702, mad((_viewProjRelative[0].y), _2700, (_2698 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w);
      _2730 = mad((_viewProjRelative[1].z), _2702, mad((_viewProjRelative[1].y), _2700, (_2698 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w);
      _2734 = mad((_viewProjRelative[2].z), _2702, mad((_viewProjRelative[2].y), _2700, (_2698 * (_viewProjRelative[2].x)))) + (_viewProjRelative[2].w);
      _2738 = mad((_viewProjRelative[3].z), _2702, mad((_viewProjRelative[3].y), _2700, (_2698 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
      _2768 = mad((_projToPrevProj[3].w), _2738, mad((_projToPrevProj[3].z), _2734, mad((_projToPrevProj[3].y), _2730, ((_projToPrevProj[3].x) * _2726))));
      _2773 = ((mad((_projToPrevProj[0].w), _2738, mad((_projToPrevProj[0].z), _2734, mad((_projToPrevProj[0].y), _2730, ((_projToPrevProj[0].x) * _2726)))) / _2768) - (_2726 / _2738)) - _1840;
      _2774 = ((mad((_projToPrevProj[1].w), _2738, mad((_projToPrevProj[1].z), _2734, mad((_projToPrevProj[1].y), _2730, ((_projToPrevProj[1].x) * _2726)))) / _2768) - (_2730 / _2738)) - _1841;
      _2782 = max(_2671, saturate(sqrt((_2774 * _2774) + (_2773 * _2773))));
    } else {
      _2782 = _2671;
    }
    _2786 = _2642 & -2;
    _2789 = (_2642 == 29);
    _2791 = select((_2789 || ((_2786 == 24) || (_renderParams.y > 0.0f))), 1.0f, _2582);
    _2795 = float(_2641);
    _2800 = min(max((_cavityParams.y + -1.0f), 0.0f), 2.0f);
    // [sem: expr_sat]
    _2826 = saturate(saturate(1.0f - (((_2795 * _122) / max(0.001f, _1768)) * 0.001f)) * 1.25f) * saturate(((((-0.05f - (_2800 * 0.075f)) + max(0.02f, _2675)) + (saturate(_122 * 0.025f) * 0.1f)) * min(max((_122 + 1.0f), 5.0f), 50.0f)) * (1.0f - (saturate(_2795) * 0.75f)));
    if (_2642 == 64) {
      _2835 = ((saturate(_122 * 0.25f) * (_2826 + -0.39990234f)) + 0.39990234f);
    } else {
      _2835 = _2826;
    }
    _2837 = (_2800 * 16.0f) + 16.0f;
    _2843 = select((_2800 > 1.0f), 0.0f, saturate((1.0f / _2837) * (_122 - _2837)));
    if (_2642 == 105) {
      _2854 = 1.0f;
      _2858 = select((_2642 == 65), 0.0f, _2854);
    } else {
      if (!((uint)(_2642 & 24) > (uint)23)) {
        _2854 = select((_2642 == 107), 1.0f, ((_2843 + _2835) - (_2843 * _2835)));
        _2858 = select((_2642 == 65), 0.0f, _2854);
      } else {
        _2858 = 0.0f;
      }
    }
    _2865 = saturate(select((_lightingParams.y == 0.0f), 1.0f, (1.0f - _2858))) * _2782;
    if ((uint)_2642 > (uint)51) {
      if ((uint)_2642 < (uint)68) {
        if (_2642 == 66) {
          _2882 = (half)(max(0.099975586h, _1750));
          _2885 = _2882;
          _2886 = (half)(max(0.89990234h, _1750));
        } else {
          _2877 = max(0.099975586h, _1750);
          if ((_2642 == 53) || (_2786 == 66)) {
            _2882 = _2877;
            _2885 = _2882;
            _2886 = (half)(max(0.89990234h, _1750));
          } else {
            _2885 = _2877;
            _2886 = _2877;
          }
        }
      } else {
        _2871 = max(0.099975586h, _1750);
        _2885 = _2871;
        _2886 = _2871;
      }
    } else {
      _2877 = max(0.099975586h, _1750);
      if ((_2642 == 53) || (_2786 == 66)) {
        _2882 = _2877;
        _2885 = _2882;
        _2886 = (half)(max(0.89990234h, _1750));
      } else {
        _2885 = _2877;
        _2886 = _2877;
      }
    }
    _2887 = float(_2886);
    _2888 = _2887 * _2887;
    _2889 = _2888 * _2888;
    _2902 = (((_2889 * _2247) - _2247) * _2247) + 1.0f;
    _2903 = (((_2889 * _2271) - _2271) * _2271) + 1.0f;
    _2904 = (((_2889 * _2223) - _2223) * _2223) + 1.0f;
    _2905 = (((_2889 * _2199) - _2199) * _2199) + 1.0f;
    _2945 = (((((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_2351, _2344, 0))).x) * saturate(_2301)) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1865, _2344, 0))).x) * saturate(_2299))) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_2351, _1866, 0))).x) * saturate(_2303))) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1865, _1866, 0))).x) * saturate(_2305));
    _2950 = saturate(select(_2789, 1.0f, saturate((_2889 / (_2902 * _2902)) * _2247)) * _2299);  // [sem: expr_sat]
    _2951 = saturate(select(_2789, 1.0f, saturate((_2889 / (_2903 * _2903)) * _2271)) * _2301);  // [sem: expr_sat]
    _2952 = saturate(select(_2789, 1.0f, saturate((_2889 / (_2904 * _2904)) * _2223)) * _2303);  // [sem: expr_sat]
    _2953 = saturate(select(_2789, 1.0f, saturate((_2889 / (_2905 * _2905)) * _2199)) * _2305);  // [sem: expr_sat]
    _2963 = exp2(log2(saturate(max(float(((half)(((half)(1.0h - _1750)) * 0.75h)) * _2641), (1.0f - _1768)))) * 0.1f);
    _2966 = float(((half)(_1750 * _1750)) + 1.0009766h);
    _2982 = select(_2789, 1.0f, saturate(((_2394 * _2394) * _2406) * exp2((log2(float(_2885)) * 0.5f) * (((_2865 * 15.0f) * ((_2963 + _2966) / (_2966 - _2963))) + 1.0f))));
    if ((uint)((int)((uint)((uint)(_2642)) + (uint)(-12))) < (uint)9) {
      _2992 = ((saturate(_122 * 0.005f) * (_2982 + -1.0f)) + 1.0f);
    } else {
      _2992 = _2982;
    }
    _3020 = mad((_projToPrevProj[3].z), _113.x, mad((_projToPrevProj[3].y), _1009, ((_projToPrevProj[3].x) * _1007))) + (_projToPrevProj[3].w);
    _3023 = ((mad((_projToPrevProj[0].z), _113.x, mad((_projToPrevProj[0].y), _1009, ((_projToPrevProj[0].x) * _1007))) + (_projToPrevProj[0].w)) / _3020) - _1007;
    _3024 = ((mad((_projToPrevProj[1].z), _113.x, mad((_projToPrevProj[1].y), _1009, ((_projToPrevProj[1].x) * _1007))) + (_projToPrevProj[1].w)) / _3020) - _1009;
    _3025 = _1840 - _3023;
    _3026 = _1841 - _3024;
    if (_1790 || ((uint)((int)((uint)((uint)(_2642)) + (uint)(-52))) < (uint)16)) {
      _3040 = (31.0f - (saturate(sqrt((_3026 * _3026) + (_3025 * _3025)) * 500.0f) * 24.0f));
    } else {
      _3040 = 63.0f;
    }
    if (_renderParams.z > 0.0f) {
      _3055 = saturate((_2865 * 200.0f) + 0.125f);  // [sem: expr_sat]
    } else {
      _3055 = 0.0f;  // [sem: expr_sat]
    }
    _3056 = max(max(saturate(_2343), saturate(max(0.0f, (1.0f / (((_2992 * _2945) * _3040) + 1.0f))))), _3055);
    _3058 = ((uint)(_2642 & 24) > (uint)23);
    [branch]
    if (_3058) {
      _3069 = (_bufferSizeAndInvSize.x * ((_3023 * 0.5f) + _110)) + -0.5f;
      _3070 = (_bufferSizeAndInvSize.y * (_111 - (_3024 * 0.5f))) + -0.5f;
      _3073 = (int)(floor(_3069));
      _3074 = (int)(floor(_3070));
      _3075 = (float)((int)(_3073));
      _3076 = (float)((int)(_3074));
      [branch]
      if (_2789) {
        // [sem: _3__36__0__0__g_stencilPrev_gather]
        _3086 = __3__36__0__0__g_stencilPrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(((_3075 + 0.5f) * _bufferSizeAndInvSize.z), ((_3076 + 0.5f) * _bufferSizeAndInvSize.w)));
        _3093 = mad(_3086.w, 16777216, mad(_3086.z, 65536, mad(_3086.y, 256, _3086.x)));
        _3122 = saturate(((float)((bool)(((uint)(_3093 & 24) > (uint)23) && ((_3093 & 127) != 24)))) * _2950);  // [sem: expr_sat]
        _3123 = saturate(((float)((bool)(((uint)(_3093 & 6144) > (uint)5888) && ((_3093 & 32512) != 6144)))) * _2951);  // [sem: expr_sat]
        // [sem: expr_sat]
        _3124 = saturate(((float)((bool)(((uint)(_3093 & 1572864) > (uint)1507328) && ((_3093 & 8323072) != 1572864)))) * _2952);
        // [sem: expr_sat]
        _3125 = saturate(((float)((bool)(((uint)(_3093 & 402653184) > (uint)385875968) && ((_3093 & 2130706432) != 402653184)))) * _2953);
        _3157 = max(saturate(min(max(((_1755 / ((_631 * 0.005f) + 1.0f)) + (_2865 * 500.0f)), 0.03125f), 0.5f) + _3056), saturate(1.0f - dot(float4(_3122, _3123, _3124, _3125), float4(1.0f, 1.0f, 1.0f, 1.0f))));
        _3158 = _3073;
        _3159 = _3074;
        _3160 = _3122;
        _3161 = _3123;
        _3162 = _3124;
        _3163 = _3125;
      } else {
        _3140 = _3069 - _3075;
        _3141 = _3070 - _3076;
        _3142 = 1.0f - _3140;
        _3143 = 1.0f - _3141;
        _3157 = (saturate((sqrt((_3024 * _3024) + (_3023 * _3023)) * 50.0f) + 0.125f) * 0.875f);
        _3158 = _3073;
        _3159 = _3074;
        _3160 = (_3142 * _3141);
        _3161 = (_3141 * _3140);
        _3162 = (_3143 * _3140);
        _3163 = (_3143 * _3142);
      }
    } else {
      _3157 = _3056;
      _3158 = _1865;
      _3159 = _1866;
      _3160 = _2950;
      _3161 = _2951;
      _3162 = _2952;
      _3163 = _2953;
    }
    _3164 = (_2795 > 0.2f);
    _3165 = (uint)((uint)(_3159)) + (uint)(1);
    half4 _3167 = __3__36__0__0__g_specularResultPrev.Load(int3(_3158, _3165, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _3180 = ((float)((bool)(!(_3164 ^ ((half)(_3167.w) < 0.0h))))) * _3160;
    _3186 = (uint)((uint)(_3158)) + (uint)(1);
    half4 _3187 = __3__36__0__0__g_specularResultPrev.Load(int3(_3186, _3165, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _3200 = ((float)((bool)(!(_3164 ^ ((half)(_3187.w) < 0.0h))))) * _3161;
    half4 _3210 = __3__36__0__0__g_specularResultPrev.Load(int3(_3186, _3159, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _3223 = ((float)((bool)(!(_3164 ^ ((half)(_3210.w) < 0.0h))))) * _3162;
    half4 _3233 = __3__36__0__0__g_specularResultPrev.Load(int3(_3158, _3159, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _3246 = ((float)((bool)(!(_3164 ^ ((half)(_3233.w) < 0.0h))))) * _3163;
    _3270 = 1.0f / max(((saturate(_122 * 0.0625f) * 0.000999f) + 1e-06f), dot(float4(_3180, _3200, _3223, _3246), float4(1.0f, 1.0f, 1.0f, 1.0f)));
    _3272 = -0.0f - (min(0.0f, (-0.0f - ((((_3180 * float(_3167.x)) + (_3200 * float(_3187.x))) + (_3223 * float(_3210.x))) + (_3246 * float(_3233.x))))) * _3270);
    _3274 = -0.0f - (min(0.0f, (-0.0f - ((((_3180 * float(_3167.y)) + (_3200 * float(_3187.y))) + (_3223 * float(_3210.y))) + (_3246 * float(_3233.y))))) * _3270);
    _3276 = -0.0f - (min(0.0f, (-0.0f - ((((_3180 * float(_3167.z)) + (_3200 * float(_3187.z))) + (_3223 * float(_3210.z))) + (_3246 * float(_3233.z))))) * _3270);
    _3277 = _3270 * min(0.0f, (-0.0f - ((((_3180 * abs(float(_3167.w))) + (_3200 * abs(float(_3187.w)))) + (_3223 * abs(float(_3210.w)))) + (_3246 * abs(float(_3233.w))))));
    _3286 = max(_3157, saturate((_2675 * _2675) * max(0.0f, saturate(((1.0f - _2582) - _2587) * 2.0f))));
    if ((_2642 != 53) && ((_2786 != 66) && (_renderParams.y == 0.0f))) {
      _3293 = dot(float3(_3272, _3274, _3276), float3(0.212671f, 0.71516f, 0.072169f));
      _3300 = ((min(_3293, _2409.z) / max(1e-09f, _3293)) * _2414) + saturate(1.0f - _2414);
      // [sem: expr_sat]
      _3321 = saturate(((_2414 * 0.5f) * saturate((((_2675 * 1000.0f) * _2865) * ((float(1.0h / ((half)(8.0h - ((half)(_1750 * 7.0h))))) * _2409.z) - _3293)) / max(1e-06f, _2409.z))) + _3286);
      _3322 = (_3300 * _3272);
      _3323 = (_3300 * _3274);
      _3324 = (_3300 * _3276);
    } else {
      _3321 = _3286;  // [sem: expr_sat]
      _3322 = _3272;
      _3323 = _3274;
      _3324 = _3276;
    }
    _3325 = _3322 * _exposure4.y;
    _3326 = _3323 * _exposure4.y;
    _3327 = _3324 * _exposure4.y;
    _3340 = ((max(0.001f, _2587) + _3277) * _3321) - _3277;
    _3350 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_2791 * ((((_968.x * _905) + (_961.x * _904)) + (_978.x * _906)) + (_988.x * _907))) - _3325) * _3321) + _3325))));
    _3351 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_2791 * ((((_968.y * _905) + (_961.y * _904)) + (_978.y * _906)) + (_988.y * _907))) - _3326) * _3321) + _3326))));
    _3352 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_2791 * ((((_968.z * _905) + (_961.z * _904)) + (_978.z * _906)) + (_988.z * _907))) - _3327) * _3321) + _3327))));
    __3__38__0__1__g_specularResultUAV[int2(_100, _102)] = float4((half)(half(_3350)), (half)(half(_3351)), (half)(half(_3352)), (half)(half(select(_3164, (-0.0f - _3340), _3340))));
    __3__38__0__1__g_specularSampleCountUAV[int2(_100, _102)] = saturate((_2945 * 0.984375f) + 0.015625f);
    _3364 = select(_3058, 0.0f, _3340);
    _3369 = float(half(lerp(_3364, 1.0f, _2675)));
    _3370 = (_2786 == 64);
    _3372 = ((int)(uint)(_187)) ^ 1;
    if ((((int)(uint)(_3370)) & _3372) == 0) {
      _3389 = saturate(exp2((_3369 * _3369) * (_122 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _3389 = select((_cavityParams.z > 0.0f), select(_187, 0.0f, _1072), 1.0f);  // [sem: expr_sat]
    }
    _3392 = (_cavityParams.x == 0.0f);
    _3393 = select(_3392, 1.0f, _3389);
    _3394 = float(_205);
    _3395 = float(_206);
    _3396 = float(_207);
    if (_3370) {
      _3402 = (_3393 * _2579);
      _3403 = (_3393 * _2580);
      _3404 = (_3393 * _2581);
    } else {
      _3402 = _2579;
      _3403 = _2580;
      _3404 = _2581;
    }
    _3406 = _2553 * 0.875f;
    _3407 = _2554 * 0.875f;
    _3408 = _2555 * 0.875f;
    if (!(_2642 == 37)) {
      _3410 = (_2642 == 55);
      _3411 = select(_3410, _3406, _3402);
      _3412 = select(_3410, _3407, _3403);
      _3413 = select(_3410, _3408, _3404);
      if ((_2642 == 53) || (_2786 == 66)) {
        // [sem: _3__36__0__0__g_hairBrdfLookup_sampleLod]
        _3428 = __3__36__0__0__g_hairBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, (1.0f - saturate(abs(dot(float3(_1646, _1647, _1648), float3(_1051, _1052, _1053)))))), (1.0f - max(0.75f, (_3369 * 2.0f)))), 0.0f);
        // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
        _3434 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1768), (1.0f - _3369)), 0.0f);
        _3441 = ((_3434.x - _3428.x) * _1644) + _3428.x;
        _3442 = ((_3434.y - _3428.y) * _1644) + _3428.y;
        _3444 = (_3441 * 0.01f) + _3442;
        _3611 = _3441;
        _3612 = _3442;
        _3613 = _3444;
        _3614 = _3444;
        _3615 = _3444;
      } else {
        if ((uint)((int)((uint)((uint)(_2642)) + (uint)(-97))) < (uint)2) {
          if (!(abs(_3395) > 0.99f)) {
            _3452 = -0.0f - _3396;
            _3454 = rsqrt(dot(float3(_3452, 0.0f, _3394), float3(_3452, 0.0f, _3394)));  // [sem: invLength]
            _3458 = (_3454 * _3452);
            _3459 = (_3454 * _3394);
          } else {
            _3458 = 1.0f;
            _3459 = 0.0f;
          }
          _3461 = -0.0f - (_3395 * _3459);
          _3464 = (_3459 * _3394) - (_3458 * _3396);
          _3465 = _3458 * _3395;
          _3467 = rsqrt(dot(float3(_3461, _3464, _3465), float3(_3461, _3464, _3465)));  // [sem: invLength]
          _3475 = _viewPos.x + _1046;
          _3476 = _viewPos.y + _1047;
          _3477 = _viewPos.z + _1048;
          // [sem: _3__36__0__0__g_blueNoise_sampleLod]
          _3482 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_3458, 0.0f, _3459), float3(_3475, _3476, _3477)), dot(float3((_3467 * _3461), (_3464 * _3467), (_3467 * _3465)), float3(_3475, _3476, _3477))), 0.0f);
          _3486 = _3482.x + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _3487 = _3482.y + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _3488 = _3482.z + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _3490 = rsqrt(dot(float3(_3486, _3487, _3488), float3(_3486, _3487, _3488)));  // [sem: invLength]
          _3494 = (_3486 * _3490) + _713;
          _3495 = (_3487 * _3490) + _714;
          _3496 = (_3488 * _3490) + _715;
          _3498 = rsqrt(dot(float3(_3494, _3495, _3496), float3(_3494, _3495, _3496)));  // [sem: invLength]
          // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
          _3511 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1768), (1.0f - _3369)), 0.0f);
          _3518 = _3511.y + (exp2(log2(saturate(dot(float3(_1760, _1761, _1762), float3((_3494 * _3498), (_3495 * _3498), (_3496 * _3498))))) * 512.0f) * 20.0f);
          _3611 = _3511.x;
          _3612 = _3511.y;
          _3613 = (_3518 + (_3511.x * _3411));
          _3614 = (_3518 + (_3511.x * _3412));
          _3615 = (_3518 + (_3511.x * _3413));
        } else {
          _3523 = _3411;
          _3524 = _3412;
          _3525 = _3413;
          if (_3370) {
            if (_2642 == 65) {
              _3594 = _3523;
              _3595 = _3524;
              _3596 = _3525;
              // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
              _3601 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1768), (1.0f - _3369)), 0.0f);
              _3611 = _3601.x;
              _3612 = _3601.y;
              _3613 = ((_3601.x * _3594) + _3601.y);
              _3614 = ((_3601.x * _3595) + _3601.y);
              _3615 = ((_3601.x * _3596) + _3601.y);
            } else {
              _3531 = min(0.99f, _1768);
              // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
              _3536 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_3531, saturate(1.0f - (_3369 * 1.33f))), 0.0f);
              // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
              _3541 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_3531, saturate(1.0f - (_3369 * 0.47998047f))), 0.0f);
              _3545 = (_3541.x + _3536.x) * 0.5f;
              _3547 = (_3541.y + _3536.y) * 0.5f;
              _3611 = _3545;
              _3612 = _3547;
              _3613 = ((_3545 * _3523) + _3547);
              _3614 = ((_3545 * _3524) + _3547);
              _3615 = ((_3545 * _3525) + _3547);
            }
          } else {
            if ((_2642 == 33) || (_2642 == 54)) {
              _3564 = max(dot(float3(_2553, _2554, _2555), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
              _3568 = sqrt(_2553) - _3564;
              _3569 = sqrt(_2554) - _3564;
              _3570 = sqrt(_2555) - _3564;
              _3577 = saturate(1.0f - (pow(_1768, 4.0f)));  // [sem: expr_sat]
              _3594 = ((((_3568 * _2643) + _3564) + (_3577 * (_3568 * (_2645 - _2643)))) * _2644);
              _3595 = ((((_3569 * _2643) + _3564) + ((_3569 * (_2645 - _2643)) * _3577)) * _2644);
              _3596 = ((((_3570 * _2643) + _3564) + ((_3570 * (_2645 - _2643)) * _3577)) * _2644);
            } else {
              _3594 = _3523;
              _3595 = _3524;
              _3596 = _3525;
            }
            // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
            _3601 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1768), (1.0f - _3369)), 0.0f);
            _3611 = _3601.x;
            _3612 = _3601.y;
            _3613 = ((_3601.x * _3594) + _3601.y);
            _3614 = ((_3601.x * _3595) + _3601.y);
            _3615 = ((_3601.x * _3596) + _3601.y);
          }
        }
      }
    } else {
      _3523 = _3406;
      _3524 = _3407;
      _3525 = _3408;
      if (_3370) {
        if (_2642 == 65) {
          _3594 = _3523;
          _3595 = _3524;
          _3596 = _3525;
          // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
          _3601 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1768), (1.0f - _3369)), 0.0f);
          _3611 = _3601.x;
          _3612 = _3601.y;
          _3613 = ((_3601.x * _3594) + _3601.y);
          _3614 = ((_3601.x * _3595) + _3601.y);
          _3615 = ((_3601.x * _3596) + _3601.y);
        } else {
          _3531 = min(0.99f, _1768);
          // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
          _3536 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_3531, saturate(1.0f - (_3369 * 1.33f))), 0.0f);
          // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
          _3541 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_3531, saturate(1.0f - (_3369 * 0.47998047f))), 0.0f);
          _3545 = (_3541.x + _3536.x) * 0.5f;
          _3547 = (_3541.y + _3536.y) * 0.5f;
          _3611 = _3545;
          _3612 = _3547;
          _3613 = ((_3545 * _3523) + _3547);
          _3614 = ((_3545 * _3524) + _3547);
          _3615 = ((_3545 * _3525) + _3547);
        }
      } else {
        if ((_2642 == 33) || (_2642 == 54)) {
          _3564 = max(dot(float3(_2553, _2554, _2555), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
          _3568 = sqrt(_2553) - _3564;
          _3569 = sqrt(_2554) - _3564;
          _3570 = sqrt(_2555) - _3564;
          _3577 = saturate(1.0f - (pow(_1768, 4.0f)));  // [sem: expr_sat]
          _3594 = ((((_3568 * _2643) + _3564) + (_3577 * (_3568 * (_2645 - _2643)))) * _2644);
          _3595 = ((((_3569 * _2643) + _3564) + ((_3569 * (_2645 - _2643)) * _3577)) * _2644);
          _3596 = ((((_3570 * _2643) + _3564) + ((_3570 * (_2645 - _2643)) * _3577)) * _2644);
        } else {
          _3594 = _3523;
          _3595 = _3524;
          _3596 = _3525;
        }
        // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
        _3601 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1768), (1.0f - _3369)), 0.0f);
        _3611 = _3601.x;
        _3612 = _3601.y;
        _3613 = ((_3601.x * _3594) + _3601.y);
        _3614 = ((_3601.x * _3595) + _3601.y);
        _3615 = ((_3601.x * _3596) + _3601.y);
      }
    }
    _3618 = select((_3370 || _3058), 1.0f, _3393) * _2476;
    _3625 = _2544 * _2476;
    _3626 = _2545 * _2476;
    _3627 = _2546 * _2476;
    if (_1988 || _1720) {
      _3881 = _1749;
      _3882 = _1750;
      _3883 = _1752;
      _3884 = _1753;
      _3885 = _1754;
      _3886 = _3364;
      if (_1759) {
        _3892 = _3886;
        _3893 = _3883;
        _3894 = _3884;
        _3895 = _3885;
        _3896 = _3882;
        _3897 = _3881;
        _3898 = 0.0f;
        _3899 = 0.0f;
        _3900 = 0.0f;
        _3901 = (_3625 * _1650);
        _3902 = (_3626 * _1651);
        _3903 = (_3627 * _1652);
      } else {
        _3892 = _3886;
        _3893 = _3883;
        _3894 = _3884;
        _3895 = _3885;
        _3896 = _3882;
        _3897 = _3881;
        _3898 = _3625;
        _3899 = _3626;
        _3900 = _3627;
        _3901 = 0.0f;
        _3902 = 0.0f;
        _3903 = 0.0f;
      }
    } else {
      if (!((_1649 == 6) || ((_1756 == 106) || (((uint)((int)(_1649) + (int)(-27)) < (uint)2) || ((_1649 == 105) || (_1649 == 26)))))) {
        if (!(_1649 == 7)) {
          _3648 = exp2(log2(_3364) * (saturate(_122 * 0.03125f) + 1.0f));
          // [sem: _3__36__0__0__g_puddleMask_sampleLod]
          _3658 = __3__36__0__0__g_puddleMask.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_110, _111), 0.0f);
          bool __branch_chain_3642;
          if ((_1649 == 15) || ((_1756 == 12) || ((_1649 & -4) == 16))) {
            _3677 = false;
            _3678 = true;
            __branch_chain_3642 = true;
          } else {
            if (!((uint)_1649 > (uint)10)) {
              _3677 = true;
              _3678 = false;
              __branch_chain_3642 = true;
            } else {
              if ((uint)_1649 < (uint)20) {
                _3677 = false;
                _3678 = false;
                __branch_chain_3642 = true;
              } else {
                if (!(_1649 == 97)) {
                  _3677 = (_1649 != 107);
                  _3678 = false;
                  __branch_chain_3642 = true;
                } else {
                  _3870 = _2563;
                  _3871 = _2675;
                  _3872 = _2553;
                  _3873 = _2554;
                  _3874 = _2555;
                  __branch_chain_3642 = false;
                }
              }
            }
          }
          if (__branch_chain_3642) {
            if (_3658.w < 1.0f) {
              if ((_weatherCheckFlag & 5) == 5) {
                _3688 = (_1649 == 36);
                if (!_3688) {
                  // [sem: _3__36__0__0__g_climateSandTex_sampleLod]
                  _3708 = __3__36__0__0__g_climateSandTex.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((_viewPos.x + _1046) / _climateTextureOnePixelMeter.x) + ((float)((int)((int)(_climateTextureSize.x) >> 1)))) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((_viewPos.z + _1048) / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                  _3714 = _3708.x;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3715 = _3708.y;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3716 = _3708.z;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3717 = _3708.w;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                } else {
                  _3714 = 0.12f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3715 = 0.12f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3716 = 0.1f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3717 = 0.5f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                }
                _3724 = 1.0f - saturate(((_viewPos.y + _1047) - _paramGlobalSand.x) / _paramGlobalSand.y);
                if (!(_3724 <= 0.0f)) {
                  _3727 = saturate(_3648);  // [sem: _3648_sat]
                  _3740 = ((_3715 * 0.33951f) + (_3714 * 0.61312f)) + (_3716 * 0.04737f);
                  _3741 = ((_3715 * 0.91636f) + (_3714 * 0.0702f)) + (_3716 * 0.01345f);
                  _3742 = ((_3715 * 0.10958f) + (_3714 * 0.02062f)) + (_3716 * 0.8698f);
                  _3747 = select(_3678, 1.0f, ((float)((bool)(saturate(dot(float3(_713, _714, _715), float3(0.0f, 1.0f, 0.0f))) > 0.5f))));
                  if (_enableSandAO == 1) {
                    _3752 = 1.0f - _3658.x;  // [sem: _3__36__0__0__g_puddleMask_sampleLod_derived]
                    if (_3688) {
                      _3783 = ((((_3752 * 10.0f) * _3717) * _3724) * _3727);
                      _3786 = _3740;
                      _3787 = _3741;
                      _3788 = _3742;
                      _3789 = saturate(_3783);  // [sem: _3783_sat]
                    } else {
                      _3763 = saturate(_3717 + -0.5f);  // [sem: expr_sat]
                      _3786 = _3740;
                      _3787 = _3741;
                      _3788 = _3742;
                      // [sem: _3783_sat]
                      _3789 = ((((_3763 * 2.0f) * max((_3747 * _3658.x), min((_3727 * ((_3658.x * 7.0f) + 3.0f)), (_3763 * 40.0f)))) + (((_3752 * 10.0f) * _3727) * saturate((0.5f - _3717) * 2.0f))) * _3724);
                    }
                  } else {
                    _3781 = ((_3724 * _3717) * _3658.x) * _3747;
                    if (_3688) {
                      _3783 = _3781;
                      _3786 = _3740;
                      _3787 = _3741;
                      _3788 = _3742;
                      _3789 = saturate(_3783);  // [sem: _3783_sat]
                    } else {
                      _3786 = _3740;
                      _3787 = _3741;
                      _3788 = _3742;
                      _3789 = _3781;  // [sem: _3783_sat]
                    }
                  }
                } else {
                  _3786 = 0.0f;
                  _3787 = 0.0f;
                  _3788 = 0.0f;
                  _3789 = 0.0f;  // [sem: _3783_sat]
                }
                _3793 = ((1.0f - _3658.w) * (1.0f - _3658.y)) * _3789;
                _3794 = (_3793 > 0.0001f);
                if (_3794) {
                  if (_3678) {
                    _3797 = saturate(_3793);  // [sem: _3793_sat]
                    _3824 = (((sqrt(_3786 * _2553) - _2553) * _3797) + _2553);
                    _3825 = (((sqrt(_3787 * _2554) - _2554) * _3797) + _2554);
                    _3826 = (((sqrt(_3788 * _2555) - _2555) * _3797) + _2555);
                  } else {
                    _3824 = ((_3793 * (_3786 - _2553)) + _2553);
                    _3825 = ((_3793 * (_3787 - _2554)) + _2554);
                    _3826 = ((_3793 * (_3788 - _2555)) + _2555);
                  }
                } else {
                  _3824 = _2553;
                  _3825 = _2554;
                  _3826 = _2555;
                }
                if (_3688 && _3794) {
                  if (_3678) {
                    _3841 = (((sqrt(_2675 * 0.25f) - _2675) * saturate(_3793)) + _2675);
                  } else {
                    _3841 = ((_3793 * (0.25f - _2675)) + _2675);
                  }
                } else {
                  _3841 = _2675;
                }
                _3842 = saturate(_3824);  // [sem: _3824_sat]
                _3843 = saturate(_3825);  // [sem: _3825_sat]
                _3844 = saturate(_3826);  // [sem: _3826_sat]
                _3849 = (_3841 * (1.0f - _3648)) + _3648;
                _3852 = ((_3841 - _3849) * _3658.y) + _3849;
                _3859 = (((_3648 * _3648) * _3658.z) * ((float)((bool)(_3677)))) * saturate(dot(float3(_713, _714, _715), float3(0.0f, 1.0f, 0.0f)));
                _3860 = _3859 * -0.5f;
                _3870 = (_2563 - (_3648 * _2563));
                _3871 = (_3852 - (_3859 * _3852));
                _3872 = ((_3860 * _3842) + _3842);
                _3873 = ((_3860 * _3843) + _3843);
                _3874 = ((_3860 * _3844) + _3844);
              } else {
                _3870 = _2563;
                _3871 = _2675;
                _3872 = _2553;
                _3873 = _2554;
                _3874 = _2555;
              }
            } else {
              _3870 = _2563;
              _3871 = _2675;
              _3872 = _2553;
              _3873 = _2554;
              _3874 = _2555;
            }
          }
          _3881 = (half)(half(_3870));
          _3882 = (half)(half(_3871));
          _3883 = (half)(half(_3872));
          _3884 = (half)(half(_3873));
          _3885 = (half)(half(_3874));
          _3886 = _3648;
        } else {
          _3881 = _1749;
          _3882 = _1750;
          _3883 = _1752;
          _3884 = _1753;
          _3885 = _1754;
          _3886 = _3364;
        }
        if (_1759) {
          _3892 = _3886;
          _3893 = _3883;
          _3894 = _3884;
          _3895 = _3885;
          _3896 = _3882;
          _3897 = _3881;
          _3898 = 0.0f;
          _3899 = 0.0f;
          _3900 = 0.0f;
          _3901 = (_3625 * _1650);
          _3902 = (_3626 * _1651);
          _3903 = (_3627 * _1652);
        } else {
          _3892 = _3886;
          _3893 = _3883;
          _3894 = _3884;
          _3895 = _3885;
          _3896 = _3882;
          _3897 = _3881;
          _3898 = _3625;
          _3899 = _3626;
          _3900 = _3627;
          _3901 = 0.0f;
          _3902 = 0.0f;
          _3903 = 0.0f;
        }
      } else {
        _3892 = _3364;
        _3893 = _1752;
        _3894 = _1753;
        _3895 = _1754;
        _3896 = _1750;
        _3897 = _1749;
        _3898 = _3625;
        _3899 = _3626;
        _3900 = _3627;
        _3901 = 0.0f;
        _3902 = 0.0f;
        _3903 = 0.0f;
      }
    }
    half4 _3905 = __3__36__0__0__g_sceneShadowColor.Load(int3(_100, _102, 0));  // [sem: _3__36__0__0__g_sceneShadowColor_load]
    _3910 = float(_3905.x);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    _3911 = float(_3905.y);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    _3912 = float(_3905.z);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    [branch]
    if (_1720) {
      _3916 = __3__36__0__0__g_sceneNormal.Load(int3(_100, _102, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
      _3932 = min(1.0f, ((((float)((uint)((uint)(_3916.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _3933 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_3916.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _3934 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_3916.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _3936 = rsqrt(dot(float3(_3932, _3933, _3934), float3(_3932, _3933, _3934)));  // [sem: invLength]
      _3944 = (half)(half(_3936 * _3932));
      _3945 = (half)(half(_3936 * _3933));
      _3946 = (half)(half(_3936 * _3934));
    } else {
      _3944 = _522;
      _3945 = _523;
      _3946 = _524;
    }
    _3949 = (_sunDirection.y > 0.0f);
    if ((_3949) || ((!(_3949)) && (_sunDirection.y > _moonDirection.y))) {
      _3961 = _sunDirection.x;
      _3962 = _sunDirection.y;
      _3963 = _sunDirection.z;
    } else {
      _3961 = _moonDirection.x;
      _3962 = _moonDirection.y;
      _3963 = _moonDirection.z;
    }
    if ((_3949) || ((!(_3949)) && (_sunDirection.y > _moonDirection.y))) {
      _3983 = _precomputedAmbient7.y;
    } else {
      _3983 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
    }
    _3990 = _viewPos.x + _1046;
    _3991 = _viewPos.y + _1047;
    _3992 = _3991 + _earthRadius;
    _3993 = _viewPos.z + _1048;
    _3999 = sqrt(((_3990 * _3990) + (_3992 * _3992)) + (_3993 * _3993));
    _4004 = dot(float3((_3990 / _3999), (_3992 / _3999), (_3993 / _3999)), float3(_3961, _3962, _3963));
    _4010 = min(max(((_3999 - _earthRadius) / _atmosphereThickness), 16.0f), (_atmosphereThickness + -16.0f));
    _4018 = max(_4010, 0.0f);
    _4025 = (-0.0f - sqrt((_4018 + (_earthRadius * 2.0f)) * _4018)) / (_4018 + _earthRadius);
    if (_4004 > _4025) {
      _4048 = ((exp2(log2(saturate((_4004 - _4025) / (1.0f - _4025))) * 0.2f) * 0.4921875f) + 0.50390625f);
    } else {
      _4048 = ((exp2(log2(saturate((_4025 - _4004) / (_4025 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
    }
    // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
    _4053 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_4010 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f), _4048), 0.0f);
    _4075 = ((_4053.y * 2e-05f) * _mieAerosolDensity) * (_mieAerosolAbsorption + 1.0f);  // [sem: _3__36__0__0__g_texNetDensity_sampleLod_derived]
    _4093 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.0556001e-06f)) * _4053.x) + _4075) * -1.442695f);
    _4094 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 4.9788005e-06f)) * _4053.x) + _4075) * -1.442695f);
    _4095 = exp2(((((_ozoneRatio * 2.1360002e-07f) + (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f)) * _4053.x) + _4075) * -1.442695f);
    _4111 = sqrt(_2667);
    _4119 = (_cloudAltitude - (max(((_4111 * _4111) + -400000.0f), 0.0f) * 1e-06f)) - _viewPos.y;
    _4131 = (_cloudThickness * (0.5f - (((float)((int)((int)((int)(uint)((int)(_3962 > 0.0f))) - (int)((int)(uint)((int)(_3962 < 0.0f)))))) * 0.5f))) + _4119;
    if (_1047 < _4119) {
      _4134 = dot(float3(0.0f, 1.0f, 0.0f), float3(_3961, _3962, _3963));
      _4140 = select((abs(_4134) < 1e-08f), 1e+08f, ((_4131 - dot(float3(0.0f, 1.0f, 0.0f), float3(_1046, _1047, _1048))) / _4134));
      _4146 = ((_4140 * _3961) + _1046);
      _4147 = _4131;
      _4148 = ((_4140 * _3963) + _1048);
    } else {
      _4146 = _1046;
      _4147 = _1047;
      _4148 = _1048;
    }
    _4168 = saturate(abs(_3962) * 4.0f);  // [sem: expr_sat]
    _4170 = (_4168 * _4168) * exp2(((_distanceScale * -1.442695f) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_4146 * 5e-05f) + 0.5f), ((_4147 - _4119) / _cloudThickness), ((_4148 * 5e-05f) + 0.5f)), 0.0f)).x)) * (_cloudScatteringCoefficient / _distanceScale));
    _4177 = ((1.0f - _4170) * saturate(((_1047 - _cloudThickness) - _4119) * 0.1f)) + _4170;
    _4178 = _4177 * (((_4094 * 0.33951f) + (_4093 * 0.61312f)) + (_4095 * 0.04737f));
    _4179 = _4177 * (((_4094 * 0.91636f) + (_4093 * 0.0702f)) + (_4095 * 0.01345f));
    _4180 = _4177 * (((_4094 * 0.10958f) + (_4093 * 0.02062f)) + (_4095 * 0.8698f));
    _4200 = float(_3893);
    _4201 = float(_3894);
    _4202 = float(_3895);
    if (!_2590) {
      _4208 = (_186 && ((uint)((int)(_1649) + (int)(-105)) < (uint)2));
    } else {
      _4208 = true;
    }
    _4210 = float(max(0.010002136h, _3896));
    _4211 = float(_3897);
    _4214 = (_1649 == 107);
    _4217 = _1714 || (((uint)((int)(_1649) + (int)(-11)) < (uint)9) || (_4214 || _4208));
    if ((_1756 == 26) || ((_1649 == 105) || (_1649 == 28))) {
      _4228 = true;
      _4230 = _4228;
      _4231 = _4214;
    } else {
      _4225 = (_1649 == 106);
      if (!(_1649 == 19)) {
        _4228 = _4225;
        _4230 = _4228;
        _4231 = _4214;
      } else {
        _4230 = _4225;
        _4231 = true;
      }
    }
    _4232 = float(_3944);
    _4233 = float(_3945);
    _4234 = float(_3946);
    _4236 = __3__36__0__0__g_sceneDecalMask.Load(int3(_100, _102, 0));  // [sem: _3__36__0__0__g_sceneDecalMask_load]
    if (_1649 == 97) {
      _4248 = (((float)((uint16_t)((int16_t)((uint16_t)((int16_t)(_4236.x)) >> 2)))) * 0.015873017f);
      _4249 = ((int)((uint)((uint)((int)(min16uint)((int)((int)(_4236.x) & 2)))) >> 1) + (int)(97));
      _4250 = 0.0f;
      _4251 = 0.0f;
      _4252 = 0.0f;
      _4253 = 0.0f;
    } else {
      _4248 = select(_4217, _4211, 0.0f);
      _4249 = _1649;
      _4250 = _1119;
      _4251 = _1120;
      _4252 = _1121;
      _4253 = _1122;
    }
    _4258 = float(saturate(_206));
    _4259 = _4258 * _4258;
    _4260 = _4259 * _4259;
    _4261 = _4260 * _4260;
    _4272 = ((_4261 * _4261) * select((_2398 || (_4230 || _4231)), 0.0f, 1.0f)) * (((float4)(__3__36__0__0__g_puddleMask.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((_bufferSizeAndInvSize.z * _105), (_bufferSizeAndInvSize.w * _106)), 0.0f))).y);
    _4277 = _4232 - (_4272 * _4232);
    _4278 = (_4272 * (1.0f - _4233)) + _4233;
    _4279 = _4234 - (_4272 * _4234);
    _4281 = rsqrt(dot(float3(_4277, _4278, _4279), float3(_4277, _4278, _4279)));  // [sem: invLength]
    _4282 = _4277 * _4281;
    _4283 = _4278 * _4281;
    _4284 = _4279 * _4281;
    _4287 = (_4249 == 37) || (_4249 == 55);
    _4289 = select((_4217 || _4287), 0.0f, _4211);
    _4290 = (_4249 == 52);
    if (_4290) {
      _4297 = saturate(((_4201 + _4200) + _4202) * 1.2f);  // [sem: expr_sat]
    } else {
      _4297 = 1.0f;  // [sem: expr_sat]
    }
    _4303 = (0.7f / min(max(max(max(_4200, _4201), _4202), 0.01f), 0.7f)) * _4297;
    _4313 = (((_4303 * _4200) + -0.04f) * _4289) + 0.04f;
    _4314 = (((_4303 * _4201) + -0.04f) * _4289) + 0.04f;
    _4315 = (((_4303 * _4202) + -0.04f) * _4289) + 0.04f;
    _4316 = float(_3896);
    _4317 = _4249 & -2;
    _4318 = (_4317 == 64);
    _4321 = ((((int)(uint)(_4318)) & _3372) == 0);
    if (_4321) {
      _4334 = saturate(exp2((_4316 * _4316) * (_122 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _4334 = select((_cavityParams.z > 0.0f), select(_187, 0.0f, _1072), 1.0f);  // [sem: expr_sat]
    }
    _4335 = select(_3392, 1.0f, _4334);
    if (_4318) {
      _4341 = (_4335 * _4313);
      _4342 = (_4335 * _4314);
      _4343 = (_4335 * _4315);
    } else {
      _4341 = _4313;
      _4342 = _4314;
      _4343 = _4315;
    }
    _4344 = _4210 * _4210;
    _4345 = _4344 * _4344;
    _4347 = ((uint)((int)(_4249) + (int)(-97)) < (uint)2);
    _4349 = select(_4347, 0.5f, (_4210 * 0.60009766f));
    _4350 = _4349 * _4349;
    _4351 = _4350 * _4350;
    _4353 = (_4249 == 98);
    if (!(_4353 || (_4317 == 96))) {
      if ((uint)((int)(_4249) + (int)(-105)) < (uint)2) {
        _4367 = _186;
        _4370 = _4367;
        _4371 = (_4249 == 7);
      } else {
        if ((uint)_4249 > (uint)11) {
          if (!(((uint)_4249 < (uint)21) || (_4249 == 107))) {
            _4367 = false;
            _4370 = _4367;
            _4371 = (_4249 == 7);
          } else {
            _4370 = false;
            _4371 = true;
          }
        } else {
          if (!(_4249 == 6)) {
            _4367 = false;
            _4370 = _4367;
            _4371 = (_4249 == 7);
          } else {
            _4370 = false;
            _4371 = true;
          }
        }
      }
    } else {
      _4367 = true;
      _4370 = _4367;
      _4371 = (_4249 == 7);
    }
    _4376 = exp2(log2(float(_3905.w)) * 2.2f) * 1000.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    if ((_3949) || ((!(_3949)) && (_sunDirection.y > _moonDirection.y))) {
      _4388 = _sunDirection.x;
      _4389 = _sunDirection.y;
      _4390 = _sunDirection.z;
    } else {
      _4388 = _moonDirection.x;
      _4389 = _moonDirection.y;
      _4390 = _moonDirection.z;
    }
    _4391 = _lightingParams.x * _3983;
    // RenoDX: >>> [Patch: DirectLightMatrixFix] [Version: 1.16.00]
    // Description: The game converts the direct beam's transmittance to working space a second time
    //              here: _4178/_4179/_4180 are already the working-space result of that same matrix
    //              applied to the exp2 transmittance triple, scaled by the cloud blend. The matrix
    //              has unit row sums, so applying it twice preserves luminance and only desaturates,
    //              most visibly at low sun where the beam is strongly tinted. On uses the single
    //              conversion so low-sun light keeps the colour of the sky it arrives through.
    _4392 = (DIRECT_LIGHT_MATRIX_FIX != 0.f) ? (_4178 * _4391) : ((((_4178 * 0.61312f) + (_4179 * 0.33951f)) + (_4180 * 0.04737f)) * _4391);
    _4393 = (DIRECT_LIGHT_MATRIX_FIX != 0.f) ? (_4179 * _4391) : ((((_4178 * 0.0702f) + (_4179 * 0.91636f)) + (_4180 * 0.01345f)) * _4391);
    _4394 = (DIRECT_LIGHT_MATRIX_FIX != 0.f) ? (_4180 * _4391) : ((((_4178 * 0.02062f) + (_4179 * 0.10958f)) + (_4180 * 0.8698f)) * _4391);
    // RenoDX: <<< [Patch: DirectLightMatrixFix]
    _4395 = _4388 - _1051;
    _4396 = _4389 - _1052;
    _4397 = _4390 - _1053;
    _4399 = rsqrt(dot(float3(_4395, _4396, _4397), float3(_4395, _4396, _4397)));  // [sem: invLength]
    _4400 = _4399 * _4395;
    _4401 = _4399 * _4396;
    _4402 = _4399 * _4397;
    _4403 = dot(float3(_4232, _4233, _4234), float3(_4388, _4389, _4390));
    _4404 = dot(float3(_4282, _4283, _4284), float3(_4388, _4389, _4390));
    _4406 = saturate(dot(float3(_4232, _4233, _4234), float3(_1760, _1761, _1762)));  // [sem: expr_sat]
    _4408 = saturate(dot(float3(_4282, _4283, _4284), float3(_4400, _4401, _4402)));  // [sem: expr_sat]
    _4409 = dot(float3(_1760, _1761, _1762), float3(_4400, _4401, _4402));
    _4411 = saturate(dot(float3(_4388, _4389, _4390), float3(_4400, _4401, _4402)));  // [sem: expr_sat]
    _4412 = (_4317 == 66);
    _4413 = (_4249 == 53);
    _4414 = _4413 || _4412;
    if (_4414) {
      if (_4413) {
        _4431 = (((asfloat(_globalLightParams.z) * _4210) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_277)));
      } else {
        _4431 = _bevelParams.y;
      }
      _4446 = (_2669 * 2.0f) + 1.0f;
      _4450 = (_1644 * 7.0f) + 1.0f;
      // [sem: _3__36__0__0__g_blueNoise_sampleLod]
      _4455 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2((((dot(float3(_1046, _1047, _1048), float3(((_1648 * _3395) - (_1647 * _3396)), ((_1646 * _3396) - (_1648 * _3394)), ((_1647 * _3394) - (_1646 * _3395)))) * 2.0f) / _4446) * _4450), (((dot(float3(_1046, _1047, _1048), float3(_1646, _1647, _1648)) * 0.5f) / _4446) * _4450)), 0.0f);
      _4459 = _1644 * 0.5f;
      _4460 = _4455.x * 2.0f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
      _4461 = _4455.y * 2.0f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
      _4462 = _4455.z * 2.0f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
      _4473 = dot(float3(_1646, _1647, _1648), float3(_4388, _4389, _4390));
      _4474 = dot(float3(_1646, _1647, _1648), float3(_1760, _1761, _1762));
      _4480 = cos(abs(asin(_4474) - asin(_4473)) * 0.5f);
      _4484 = _4388 - (_4473 * _1646);
      _4485 = _4389 - (_4473 * _1647);
      _4486 = _4390 - (_4473 * _1648);
      _4490 = _1760 - (_4474 * _1646);
      _4491 = _1761 - (_4474 * _1647);
      _4492 = _1762 - (_4474 * _1648);
      // [sem: invLength]
      _4499 = rsqrt((dot(float3(_4490, _4491, _4492), float3(_4490, _4491, _4492)) * dot(float3(_4484, _4485, _4486), float3(_4484, _4485, _4486))) + 0.0001f) * dot(float3(_4484, _4485, _4486), float3(_4490, _4491, _4492));
      _4503 = sqrt(saturate((_4499 * 0.5f) + 0.5f));
      _4510 = min(max(max(0.05f, _4210), 0.09803922f), 1.0f);
      _4511 = _4510 * _4510;
      _4512 = _4511 * 0.5f;
      _4513 = _4511 * 2.0f;
      _4514 = _4474 + _4473;
      _4515 = _4514 + (_4431 * 2.0f);
      _4517 = (_4503 * 1.4142135f) * _4511;
      _4531 = 1.0f - sqrt(saturate((dot(float3(_1760, _1761, _1762), float3(_4388, _4389, _4390)) * 0.5f) + 0.5f));
      _4532 = _4531 * _4531;
      _4539 = _4514 - _4431;
      _4548 = 1.0f / ((1.19f / _4480) + (_4480 * 0.36f));
      _4553 = ((_4548 * (0.6f - (_4499 * 0.8f))) + 1.0f) * _4503;
      _4559 = 1.0f - (sqrt(saturate(1.0f - (_4553 * _4553))) * _4480);
      _4560 = _4559 * _4559;
      _4564 = 0.9534794f - ((_4560 * _4560) * (_4559 * 0.9534794f));
      _4565 = _4548 * _4553;
      _4570 = (sqrt(1.0f - (_4565 * _4565)) * 0.5f) / _4480;
      _4571 = log2(_4200);
      _4572 = log2(_4201);
      _4573 = log2(_4202);
      _4585 = ((_4564 * _4564) * (exp2((((_4539 * _4539) * -0.5f) / (_4512 * _4512)) * 1.442695f) / (_4511 * 1.2533141f))) * exp2(-5.741926f - (_4499 * 5.265837f));
      _4589 = _4514 - (_4431 * 4.0f);
      _4599 = 1.0f - (_4480 * 0.5f);
      _4600 = _4599 * _4599;
      _4604 = (_4600 * _4600) * (0.9534794f - (_4480 * 0.4767397f));
      _4606 = 0.9534794f - _4604;
      _4607 = 0.8f / _4480;
      _4620 = (((_4606 * _4606) * (_4604 + 0.046520565f)) * (exp2((((_4589 * _4589) * -0.5f) / (_4513 * _4513)) * 1.442695f) / (_4511 * 5.0132565f))) * exp2((_4499 * 24.525816f) + -24.208424f);
      _4627 = saturate(_4404);  // [sem: _4404_sat]
      _4628 = (((_4503 * 0.25f) * (exp2((((_4515 * _4515) * -0.5f) / (_4517 * _4517)) * 1.442695f) / (_4517 * 2.5066283f))) * (((_4532 * _4532) * (_4531 * 0.9534794f)) + 0.046520565f)) * _4627;
      _4638 = -0.0f - _4627;
      _4649 = saturate((_4404 + 1.0f) * 0.25f);  // [sem: expr_sat]
      _4654 = max(0.001f, dot(float3(_4200, _4201, _4202), float3(0.3f, 0.59f, 0.11f)));
      _4673 = ((((1.0f - abs(_4404)) - _4649) * 0.33f) + _4649) * 0.07957747f;
      _4675 = (exp2(log2(_4200 / _4654) * (1.0f - _3910)) * _4673) * sqrt(_4200);
      _4677 = (exp2(log2(_4201 / _4654) * (1.0f - _3911)) * _4673) * sqrt(_4201);
      _4679 = (exp2(log2(_4202 / _4654) * (1.0f - _3912)) * _4673) * sqrt(_4202);
      _4686 = min(2048.0f, (-0.0f - min(0.0f, min(0.0f, (((_4620 * exp2(_4607 * _4571)) + (_4585 * exp2(_4571 * _4570))) * _4638)))));
      _4687 = min(2048.0f, (-0.0f - min(0.0f, min(0.0f, (((_4620 * exp2(_4607 * _4572)) + (_4585 * exp2(_4572 * _4570))) * _4638)))));
      _4688 = min(2048.0f, (-0.0f - min(0.0f, min(0.0f, (((_4620 * exp2(_4607 * _4573)) + (_4585 * exp2(_4573 * _4570))) * _4638)))));
      _4695 = -0.0f - min(0.0f, (min(0.0f, (-0.0f - ((lerp(_4460, 1.0f, _4459)) * _4628))) * _3910));
      _4696 = -0.0f - min(0.0f, (min(0.0f, (-0.0f - ((lerp(_4461, 1.0f, _4459)) * _4628))) * _3911));
      _4697 = -0.0f - min(0.0f, (min(0.0f, (-0.0f - ((lerp(_4462, 1.0f, _4459)) * _4628))) * _3912));
      if (!_4412) {
        _4699 = _4686;
        _4700 = _4687;
        _4701 = _4688;
        _4702 = _4695;
        _4703 = _4696;
        _4704 = _4697;
        _4705 = _4675;
        _4706 = _4677;
        _4707 = _4679;
        if (!_4413) {
          _4709 = (_4249 == 33);
          _4710 = (_4249 == 54);
          _4711 = _4709 || _4710;
          if (_4711) {
            _4726 = (saturate(_4403) * 0.31830987f) * (((saturate(1.0f - _effectiveMetallicForVelvet) + -1.0f) * _4253) + 1.0f);
            _4732 = max(dot(float3(_4200, _4201, _4202), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
            _4733 = sqrt(_4200);
            _4734 = sqrt(_4201);
            _4735 = sqrt(_4202);
            _4736 = _4733 - _4732;
            _4737 = _4734 - _4732;
            _4738 = _4735 - _4732;
            _4745 = saturate(1.0f - (pow(_4406, 4.0f)));  // [sem: expr_sat]
            _4758 = (((_4737 * _4250) + _4732) + ((_4737 * (_4253 - _4250)) * _4745)) * _4251;
            _4761 = saturate(1.0f - saturate(_4409));  // [sem: expr_sat]
            _4762 = _4761 * _4761;
            _4764 = (_4762 * _4762) * _4761;
            _4767 = _4764 * saturate(_4758 * 50.0f);
            _4768 = 1.0f - _4764;
            _4769 = _4768 * _4251;
            _4773 = (_4769 * (((_4736 * _4250) + _4732) + (_4745 * (_4736 * (_4253 - _4250))))) + _4767;
            _4774 = (_4768 * _4758) + _4767;
            _4775 = (_4769 * (((_4738 * _4250) + _4732) + ((_4738 * (_4253 - _4250)) * _4745))) + _4767;
            _4776 = min(_4408, 0.9999f);
            _4777 = _4776 * _4776;
            _4778 = 1.0f - _4777;
            _4790 = (((exp2(((-0.0f - _4777) / (_4778 * _4345)) * 1.442695f) * 4.0f) / (_4778 * _4778)) + 1.0f) / ((_4345 * 12.566371f) + 3.1415927f);
            _4794 = ((_4406 + _4404) - (_4406 * _4404)) * 4.0f;
            _4798 = (_4773 * _4790) / _4794;
            _4799 = (_4774 * _4790) / _4794;
            _4800 = (_4775 * _4790) / _4794;
            _4801 = 1.0f - _4344;
            _4813 = (((_4408 * _4345) - _4408) * _4408) + 1.0f;
            _4817 = (_4345 / ((_4813 * _4813) * 3.1415927f)) * (0.5f / ((((_4406 * _4801) + _4344) * _4403) + (_4406 * ((_4403 * _4801) + _4344))));
            _4833 = saturate(_4404);  // [sem: _4404_sat]
            _4838 = (_4252 * 1.5f) + 2.5f;
            _4839 = _4838 * _4838;
            _4849 = (max(0.0f, (0.3f - _4403)) * 0.25f) * ((exp2(_4839 * -0.48089835f) * 3.0f) + exp2(_4839 * -1.442695f));
            _4874 = (((1.0f - _4253) * 0.4774648f) * saturate(_4252)) * saturate((pow(_4408, 4.0f)) * exp2(log2(saturate(1.0f - abs(_4403))) * 3.0f));
            _4879 = (_4874 * _4733);
            _4880 = (_4874 * _4734);
            _4881 = (_4874 * _4735);
            _4882 = ((((max((_4817 * _4773), 0.0f) - _4798) * _4250) + _4798) * _4833);
            _4883 = ((((max((_4817 * _4774), 0.0f) - _4799) * _4250) + _4799) * _4833);
            _4884 = ((((max((_4817 * _4775), 0.0f) - _4800) * _4250) + _4800) * _4833);
            _4885 = (((_4733 * _3910) * _4849) + _4726);
            _4886 = (((_4734 * _3911) * _4849) + _4726);
            _4887 = (((_4735 * _3912) * _4849) + _4726);
            if (!_4709) {
              if (_4710) {
                _5053 = _4702;
                _5054 = _4703;
                _5055 = _4704;
                _5056 = _4705;
                _5057 = _4706;
                _5058 = _4707;
                if (_4287) {
                  _5061 = dot(float3(_1760, _1761, _1762), float3(_4282, _4283, _4284)) * 2.0f;
                  _5065 = _1760 - (_5061 * _4282);
                  _5066 = _1761 - (_5061 * _4283);
                  _5067 = _1762 - (_5061 * _4284);
                  _5068 = _4388 - _5065;
                  _5069 = _4389 - _5066;
                  _5070 = _4390 - _5067;
                  _5072 = rsqrt(dot(float3(_5068, _5069, _5070), float3(_5068, _5069, _5070)));  // [sem: invLength]
                  _5073 = _5068 * _5072;
                  _5074 = _5069 * _5072;
                  _5075 = _5070 * _5072;
                  _5076 = -0.0f - _5065;
                  _5077 = -0.0f - _5066;
                  _5078 = -0.0f - _5067;
                  _5080 = saturate(dot(float3(_4232, _4233, _4234), float3(_5076, _5077, _5078)));  // [sem: expr_sat]
                  _5082 = saturate(dot(float3(_4282, _4283, _4284), float3(_5073, _5074, _5075)));  // [sem: expr_sat]
                  _5084 = saturate(_4404);  // [sem: _4404_sat]
                  _5095 = 1.0f - ((_5082 * _5082) * 0.9f);
                  _5098 = (0.03183099f / (_5095 * _5095)) * (0.5f / ((((_5080 * 0.9f) + 0.1f) * _4404) + (_5080 * ((_4404 * 0.9f) + 0.1f))));
                  _5124 = _5056;
                  _5125 = _5057;
                  _5126 = _5058;
                  _5127 = dot(float3(_5076, _5077, _5078), float3(_5073, _5074, _5075));
                  _5128 = _5082;
                  _5129 = (((float(half(max((_5098 * _4200), 0.0f) * _5084)) - _5053) * 0.875f) + _5053);
                  _5130 = (((float(half(max((_5098 * _4201), 0.0f) * _5084)) - _5054) * 0.875f) + _5054);
                  _5131 = (((float(half(max((_5098 * _4202), 0.0f) * _5084)) - _5055) * 0.875f) + _5055);
                } else {
                  _5124 = _5056;
                  _5125 = _5057;
                  _5126 = _5058;
                  _5127 = _4409;
                  _5128 = _4408;
                  _5129 = _5053;
                  _5130 = _5054;
                  _5131 = _5055;
                }
              } else {
                _4890 = saturate(_4403);  // [sem: _4403_sat]
                _4891 = 1.0f - _4345;
                _4892 = 1.0f - _4411;
                _4893 = _4892 * _4892;
                _4896 = ((_4893 * _4893) * _4892) + _4411;
                _4897 = 1.0f - _4890;
                _4898 = _4897 * _4897;
                _4903 = 1.0f - _4406;
                _4904 = _4903 * _4903;
                _4931 = (_4890 * 0.31830987f) * ((((_4411 * ((((_4891 * 34.5f) + -59.0f) * _4891) + 24.5f)) * exp2(-0.0f - (max(((_4891 * 73.2f) + -21.2f), 8.9f) * sqrt(_4408)))) + _4896) + ((((1.0f - ((_4898 * _4898) * (_4897 * 0.75f))) * (1.0f - ((_4904 * _4904) * (_4903 * 0.75f)))) - _4896) * saturate((_4891 * 2.2f) + -0.5f)));
                _4934 = saturate(1.0f - saturate(_4409));  // [sem: expr_sat]
                _4935 = _4934 * _4934;
                _4937 = (_4935 * _4935) * _4934;
                _4940 = _4937 * saturate(_4342 * 50.0f);
                _4941 = 1.0f - _4937;
                _4945 = (_4941 * _4341) + _4940;
                _4946 = (_4941 * _4342) + _4940;
                _4947 = (_4941 * _4343) + _4940;
                if (!(_4249 == 29)) {
                  _4949 = saturate(_4404);  // [sem: _4404_sat]
                  _4950 = 1.0f - _4344;
                  _4962 = (((_4408 * _4345) - _4408) * _4408) + 1.0f;
                  _4966 = (_4345 / ((_4962 * _4962) * 3.1415927f)) * (0.5f / ((((_4406 * _4950) + _4344) * _4404) + (_4406 * ((_4404 * _4950) + _4344))));
                  _4977 = (max((_4966 * _4945), 0.0f) * _4949);
                  _4978 = (max((_4966 * _4946), 0.0f) * _4949);
                  _4979 = (max((_4966 * _4947), 0.0f) * _4949);
                } else {
                  _4977 = 0.0f;
                  _4978 = 0.0f;
                  _4979 = 0.0f;
                }
                if (_4318) {
                  if (_4249 == 65) {
                    _5023 = _4977;
                    _5024 = _4978;
                    _5025 = _4979;
                    _5030 = max(1e-06f, _exposure2.x);
                    _5039 = ((_4890 * 50.265484f) * exp2(log2(saturate(dot(float3(_4282, _4283, _4284), float3(_1760, _1761, _1762)))) * 16.0f)) / (((_5030 * _5030) * 1e+06f) + 1.0f);
                    _5124 = ((((_5039 * _4200) - _4931) * _4248) + _4931);
                    _5125 = ((((_5039 * _4201) - _4931) * _4248) + _4931);
                    _5126 = ((((_5039 * _4202) - _4931) * _4248) + _4931);
                    _5127 = _4409;
                    _5128 = _4408;
                    _5129 = _5023;
                    _5130 = _5024;
                    _5131 = _5025;
                  } else {
                    _4987 = 1.0f - _4350;
                    _4999 = (((_4408 * _4351) - _4408) * _4408) + 1.0f;
                    _5003 = (_4351 / ((_4999 * _4999) * 3.1415927f)) * (0.5f / ((((_4406 * _4987) + _4350) * _4404) + (_4406 * ((_4404 * _4987) + _4350))));
                    _5010 = saturate(_4404) * 0.39990234f;
                    _5018 = ((max((_5003 * _4945), 0.0f) * _5010) + (_4977 * 0.60009766f));
                    _5019 = ((max((_5003 * _4946), 0.0f) * _5010) + (_4978 * 0.60009766f));
                    _5020 = ((max((_5003 * _4947), 0.0f) * _5010) + (_4979 * 0.60009766f));
                    if (_4249 == 65) {
                      _5023 = _5018;
                      _5024 = _5019;
                      _5025 = _5020;
                      _5030 = max(1e-06f, _exposure2.x);
                      _5039 = ((_4890 * 50.265484f) * exp2(log2(saturate(dot(float3(_4282, _4283, _4284), float3(_1760, _1761, _1762)))) * 16.0f)) / (((_5030 * _5030) * 1e+06f) + 1.0f);
                      _5124 = ((((_5039 * _4200) - _4931) * _4248) + _4931);
                      _5125 = ((((_5039 * _4201) - _4931) * _4248) + _4931);
                      _5126 = ((((_5039 * _4202) - _4931) * _4248) + _4931);
                      _5127 = _4409;
                      _5128 = _4408;
                      _5129 = _5023;
                      _5130 = _5024;
                      _5131 = _5025;
                    } else {
                      _5053 = _5018;
                      _5054 = _5019;
                      _5055 = _5020;
                      _5056 = _4931;
                      _5057 = _4931;
                      _5058 = _4931;
                      if (_4287) {
                        _5061 = dot(float3(_1760, _1761, _1762), float3(_4282, _4283, _4284)) * 2.0f;
                        _5065 = _1760 - (_5061 * _4282);
                        _5066 = _1761 - (_5061 * _4283);
                        _5067 = _1762 - (_5061 * _4284);
                        _5068 = _4388 - _5065;
                        _5069 = _4389 - _5066;
                        _5070 = _4390 - _5067;
                        _5072 = rsqrt(dot(float3(_5068, _5069, _5070), float3(_5068, _5069, _5070)));  // [sem: invLength]
                        _5073 = _5068 * _5072;
                        _5074 = _5069 * _5072;
                        _5075 = _5070 * _5072;
                        _5076 = -0.0f - _5065;
                        _5077 = -0.0f - _5066;
                        _5078 = -0.0f - _5067;
                        _5080 = saturate(dot(float3(_4232, _4233, _4234), float3(_5076, _5077, _5078)));  // [sem: expr_sat]
                        _5082 = saturate(dot(float3(_4282, _4283, _4284), float3(_5073, _5074, _5075)));  // [sem: expr_sat]
                        _5084 = saturate(_4404);  // [sem: _4404_sat]
                        _5095 = 1.0f - ((_5082 * _5082) * 0.9f);
                        _5098 = (0.03183099f / (_5095 * _5095)) * (0.5f / ((((_5080 * 0.9f) + 0.1f) * _4404) + (_5080 * ((_4404 * 0.9f) + 0.1f))));
                        _5124 = _5056;
                        _5125 = _5057;
                        _5126 = _5058;
                        _5127 = dot(float3(_5076, _5077, _5078), float3(_5073, _5074, _5075));
                        _5128 = _5082;
                        _5129 = (((float(half(max((_5098 * _4200), 0.0f) * _5084)) - _5053) * 0.875f) + _5053);
                        _5130 = (((float(half(max((_5098 * _4201), 0.0f) * _5084)) - _5054) * 0.875f) + _5054);
                        _5131 = (((float(half(max((_5098 * _4202), 0.0f) * _5084)) - _5055) * 0.875f) + _5055);
                      } else {
                        _5124 = _5056;
                        _5125 = _5057;
                        _5126 = _5058;
                        _5127 = _4409;
                        _5128 = _4408;
                        _5129 = _5053;
                        _5130 = _5054;
                        _5131 = _5055;
                      }
                    }
                  }
                } else {
                  _5018 = _4977;
                  _5019 = _4978;
                  _5020 = _4979;
                  if (_4249 == 65) {
                    _5023 = _5018;
                    _5024 = _5019;
                    _5025 = _5020;
                    _5030 = max(1e-06f, _exposure2.x);
                    _5039 = ((_4890 * 50.265484f) * exp2(log2(saturate(dot(float3(_4282, _4283, _4284), float3(_1760, _1761, _1762)))) * 16.0f)) / (((_5030 * _5030) * 1e+06f) + 1.0f);
                    _5124 = ((((_5039 * _4200) - _4931) * _4248) + _4931);
                    _5125 = ((((_5039 * _4201) - _4931) * _4248) + _4931);
                    _5126 = ((((_5039 * _4202) - _4931) * _4248) + _4931);
                    _5127 = _4409;
                    _5128 = _4408;
                    _5129 = _5023;
                    _5130 = _5024;
                    _5131 = _5025;
                  } else {
                    _5053 = _5018;
                    _5054 = _5019;
                    _5055 = _5020;
                    _5056 = _4931;
                    _5057 = _4931;
                    _5058 = _4931;
                    if (_4287) {
                      _5061 = dot(float3(_1760, _1761, _1762), float3(_4282, _4283, _4284)) * 2.0f;
                      _5065 = _1760 - (_5061 * _4282);
                      _5066 = _1761 - (_5061 * _4283);
                      _5067 = _1762 - (_5061 * _4284);
                      _5068 = _4388 - _5065;
                      _5069 = _4389 - _5066;
                      _5070 = _4390 - _5067;
                      _5072 = rsqrt(dot(float3(_5068, _5069, _5070), float3(_5068, _5069, _5070)));  // [sem: invLength]
                      _5073 = _5068 * _5072;
                      _5074 = _5069 * _5072;
                      _5075 = _5070 * _5072;
                      _5076 = -0.0f - _5065;
                      _5077 = -0.0f - _5066;
                      _5078 = -0.0f - _5067;
                      _5080 = saturate(dot(float3(_4232, _4233, _4234), float3(_5076, _5077, _5078)));  // [sem: expr_sat]
                      _5082 = saturate(dot(float3(_4282, _4283, _4284), float3(_5073, _5074, _5075)));  // [sem: expr_sat]
                      _5084 = saturate(_4404);  // [sem: _4404_sat]
                      _5095 = 1.0f - ((_5082 * _5082) * 0.9f);
                      _5098 = (0.03183099f / (_5095 * _5095)) * (0.5f / ((((_5080 * 0.9f) + 0.1f) * _4404) + (_5080 * ((_4404 * 0.9f) + 0.1f))));
                      _5124 = _5056;
                      _5125 = _5057;
                      _5126 = _5058;
                      _5127 = dot(float3(_5076, _5077, _5078), float3(_5073, _5074, _5075));
                      _5128 = _5082;
                      _5129 = (((float(half(max((_5098 * _4200), 0.0f) * _5084)) - _5053) * 0.875f) + _5053);
                      _5130 = (((float(half(max((_5098 * _4201), 0.0f) * _5084)) - _5054) * 0.875f) + _5054);
                      _5131 = (((float(half(max((_5098 * _4202), 0.0f) * _5084)) - _5055) * 0.875f) + _5055);
                    } else {
                      _5124 = _5056;
                      _5125 = _5057;
                      _5126 = _5058;
                      _5127 = _4409;
                      _5128 = _4408;
                      _5129 = _5053;
                      _5130 = _5054;
                      _5131 = _5055;
                    }
                  }
                }
              }
            } else {
              _5124 = _4705;
              _5125 = _4706;
              _5126 = _4707;
              _5127 = _4409;
              _5128 = _4408;
              _5129 = _4702;
              _5130 = _4703;
              _5131 = _4704;
            }
            _5153 = select(_4711, _4882, _5129) * _3910;
            _5154 = select(_4711, _4883, _5130) * _3911;
            _5155 = select(_4711, _4884, _5131) * _3912;
            _5163 = _5127;
            _5164 = _5128;
            _5165 = select(_4711, 0.0f, _4699);
            _5166 = select(_4711, 0.0f, _4700);
            _5167 = select(_4711, 0.0f, _4701);
            _5168 = select(_4711, (_5153 + _4879), _5153);
            _5169 = select(_4711, (_5154 + _4880), _5154);
            _5170 = select(_4711, (_5155 + _4881), _5155);
            _5171 = (select(_4711, _4885, (-0.0f - min(-0.0f, (-0.0f - _5124)))) * _3910);
            _5172 = (select(_4711, _4886, (-0.0f - min(-0.0f, (-0.0f - _5125)))) * _3911);
            _5173 = (select(_4711, _4887, (-0.0f - min(-0.0f, (-0.0f - _5126)))) * _3912);
          } else {
            if ((_4403 > 0.0f) || (_4404 > 0.0f)) {
              _4879 = 0.0f;
              _4880 = 0.0f;
              _4881 = 0.0f;
              _4882 = 0.0f;
              _4883 = 0.0f;
              _4884 = 0.0f;
              _4885 = 0.0f;
              _4886 = 0.0f;
              _4887 = 0.0f;
              if (!_4709) {
                if (_4710) {
                  _5053 = _4702;
                  _5054 = _4703;
                  _5055 = _4704;
                  _5056 = _4705;
                  _5057 = _4706;
                  _5058 = _4707;
                  if (_4287) {
                    _5061 = dot(float3(_1760, _1761, _1762), float3(_4282, _4283, _4284)) * 2.0f;
                    _5065 = _1760 - (_5061 * _4282);
                    _5066 = _1761 - (_5061 * _4283);
                    _5067 = _1762 - (_5061 * _4284);
                    _5068 = _4388 - _5065;
                    _5069 = _4389 - _5066;
                    _5070 = _4390 - _5067;
                    _5072 = rsqrt(dot(float3(_5068, _5069, _5070), float3(_5068, _5069, _5070)));  // [sem: invLength]
                    _5073 = _5068 * _5072;
                    _5074 = _5069 * _5072;
                    _5075 = _5070 * _5072;
                    _5076 = -0.0f - _5065;
                    _5077 = -0.0f - _5066;
                    _5078 = -0.0f - _5067;
                    _5080 = saturate(dot(float3(_4232, _4233, _4234), float3(_5076, _5077, _5078)));  // [sem: expr_sat]
                    _5082 = saturate(dot(float3(_4282, _4283, _4284), float3(_5073, _5074, _5075)));  // [sem: expr_sat]
                    _5084 = saturate(_4404);  // [sem: _4404_sat]
                    _5095 = 1.0f - ((_5082 * _5082) * 0.9f);
                    _5098 = (0.03183099f / (_5095 * _5095)) * (0.5f / ((((_5080 * 0.9f) + 0.1f) * _4404) + (_5080 * ((_4404 * 0.9f) + 0.1f))));
                    _5124 = _5056;
                    _5125 = _5057;
                    _5126 = _5058;
                    _5127 = dot(float3(_5076, _5077, _5078), float3(_5073, _5074, _5075));
                    _5128 = _5082;
                    _5129 = (((float(half(max((_5098 * _4200), 0.0f) * _5084)) - _5053) * 0.875f) + _5053);
                    _5130 = (((float(half(max((_5098 * _4201), 0.0f) * _5084)) - _5054) * 0.875f) + _5054);
                    _5131 = (((float(half(max((_5098 * _4202), 0.0f) * _5084)) - _5055) * 0.875f) + _5055);
                  } else {
                    _5124 = _5056;
                    _5125 = _5057;
                    _5126 = _5058;
                    _5127 = _4409;
                    _5128 = _4408;
                    _5129 = _5053;
                    _5130 = _5054;
                    _5131 = _5055;
                  }
                } else {
                  _4890 = saturate(_4403);  // [sem: _4403_sat]
                  _4891 = 1.0f - _4345;
                  _4892 = 1.0f - _4411;
                  _4893 = _4892 * _4892;
                  _4896 = ((_4893 * _4893) * _4892) + _4411;
                  _4897 = 1.0f - _4890;
                  _4898 = _4897 * _4897;
                  _4903 = 1.0f - _4406;
                  _4904 = _4903 * _4903;
                  _4931 = (_4890 * 0.31830987f) * ((((_4411 * ((((_4891 * 34.5f) + -59.0f) * _4891) + 24.5f)) * exp2(-0.0f - (max(((_4891 * 73.2f) + -21.2f), 8.9f) * sqrt(_4408)))) + _4896) + ((((1.0f - ((_4898 * _4898) * (_4897 * 0.75f))) * (1.0f - ((_4904 * _4904) * (_4903 * 0.75f)))) - _4896) * saturate((_4891 * 2.2f) + -0.5f)));
                  _4934 = saturate(1.0f - saturate(_4409));  // [sem: expr_sat]
                  _4935 = _4934 * _4934;
                  _4937 = (_4935 * _4935) * _4934;
                  _4940 = _4937 * saturate(_4342 * 50.0f);
                  _4941 = 1.0f - _4937;
                  _4945 = (_4941 * _4341) + _4940;
                  _4946 = (_4941 * _4342) + _4940;
                  _4947 = (_4941 * _4343) + _4940;
                  if (!(_4249 == 29)) {
                    _4949 = saturate(_4404);  // [sem: _4404_sat]
                    _4950 = 1.0f - _4344;
                    _4962 = (((_4408 * _4345) - _4408) * _4408) + 1.0f;
                    _4966 = (_4345 / ((_4962 * _4962) * 3.1415927f)) * (0.5f / ((((_4406 * _4950) + _4344) * _4404) + (_4406 * ((_4404 * _4950) + _4344))));
                    _4977 = (max((_4966 * _4945), 0.0f) * _4949);
                    _4978 = (max((_4966 * _4946), 0.0f) * _4949);
                    _4979 = (max((_4966 * _4947), 0.0f) * _4949);
                  } else {
                    _4977 = 0.0f;
                    _4978 = 0.0f;
                    _4979 = 0.0f;
                  }
                  if (_4318) {
                    if (_4249 == 65) {
                      _5023 = _4977;
                      _5024 = _4978;
                      _5025 = _4979;
                      _5030 = max(1e-06f, _exposure2.x);
                      _5039 = ((_4890 * 50.265484f) * exp2(log2(saturate(dot(float3(_4282, _4283, _4284), float3(_1760, _1761, _1762)))) * 16.0f)) / (((_5030 * _5030) * 1e+06f) + 1.0f);
                      _5124 = ((((_5039 * _4200) - _4931) * _4248) + _4931);
                      _5125 = ((((_5039 * _4201) - _4931) * _4248) + _4931);
                      _5126 = ((((_5039 * _4202) - _4931) * _4248) + _4931);
                      _5127 = _4409;
                      _5128 = _4408;
                      _5129 = _5023;
                      _5130 = _5024;
                      _5131 = _5025;
                    } else {
                      _4987 = 1.0f - _4350;
                      _4999 = (((_4408 * _4351) - _4408) * _4408) + 1.0f;
                      _5003 = (_4351 / ((_4999 * _4999) * 3.1415927f)) * (0.5f / ((((_4406 * _4987) + _4350) * _4404) + (_4406 * ((_4404 * _4987) + _4350))));
                      _5010 = saturate(_4404) * 0.39990234f;
                      _5018 = ((max((_5003 * _4945), 0.0f) * _5010) + (_4977 * 0.60009766f));
                      _5019 = ((max((_5003 * _4946), 0.0f) * _5010) + (_4978 * 0.60009766f));
                      _5020 = ((max((_5003 * _4947), 0.0f) * _5010) + (_4979 * 0.60009766f));
                      if (_4249 == 65) {
                        _5023 = _5018;
                        _5024 = _5019;
                        _5025 = _5020;
                        _5030 = max(1e-06f, _exposure2.x);
                        _5039 = ((_4890 * 50.265484f) * exp2(log2(saturate(dot(float3(_4282, _4283, _4284), float3(_1760, _1761, _1762)))) * 16.0f)) / (((_5030 * _5030) * 1e+06f) + 1.0f);
                        _5124 = ((((_5039 * _4200) - _4931) * _4248) + _4931);
                        _5125 = ((((_5039 * _4201) - _4931) * _4248) + _4931);
                        _5126 = ((((_5039 * _4202) - _4931) * _4248) + _4931);
                        _5127 = _4409;
                        _5128 = _4408;
                        _5129 = _5023;
                        _5130 = _5024;
                        _5131 = _5025;
                      } else {
                        _5053 = _5018;
                        _5054 = _5019;
                        _5055 = _5020;
                        _5056 = _4931;
                        _5057 = _4931;
                        _5058 = _4931;
                        if (_4287) {
                          _5061 = dot(float3(_1760, _1761, _1762), float3(_4282, _4283, _4284)) * 2.0f;
                          _5065 = _1760 - (_5061 * _4282);
                          _5066 = _1761 - (_5061 * _4283);
                          _5067 = _1762 - (_5061 * _4284);
                          _5068 = _4388 - _5065;
                          _5069 = _4389 - _5066;
                          _5070 = _4390 - _5067;
                          _5072 = rsqrt(dot(float3(_5068, _5069, _5070), float3(_5068, _5069, _5070)));  // [sem: invLength]
                          _5073 = _5068 * _5072;
                          _5074 = _5069 * _5072;
                          _5075 = _5070 * _5072;
                          _5076 = -0.0f - _5065;
                          _5077 = -0.0f - _5066;
                          _5078 = -0.0f - _5067;
                          _5080 = saturate(dot(float3(_4232, _4233, _4234), float3(_5076, _5077, _5078)));  // [sem: expr_sat]
                          _5082 = saturate(dot(float3(_4282, _4283, _4284), float3(_5073, _5074, _5075)));  // [sem: expr_sat]
                          _5084 = saturate(_4404);  // [sem: _4404_sat]
                          _5095 = 1.0f - ((_5082 * _5082) * 0.9f);
                          _5098 = (0.03183099f / (_5095 * _5095)) * (0.5f / ((((_5080 * 0.9f) + 0.1f) * _4404) + (_5080 * ((_4404 * 0.9f) + 0.1f))));
                          _5124 = _5056;
                          _5125 = _5057;
                          _5126 = _5058;
                          _5127 = dot(float3(_5076, _5077, _5078), float3(_5073, _5074, _5075));
                          _5128 = _5082;
                          _5129 = (((float(half(max((_5098 * _4200), 0.0f) * _5084)) - _5053) * 0.875f) + _5053);
                          _5130 = (((float(half(max((_5098 * _4201), 0.0f) * _5084)) - _5054) * 0.875f) + _5054);
                          _5131 = (((float(half(max((_5098 * _4202), 0.0f) * _5084)) - _5055) * 0.875f) + _5055);
                        } else {
                          _5124 = _5056;
                          _5125 = _5057;
                          _5126 = _5058;
                          _5127 = _4409;
                          _5128 = _4408;
                          _5129 = _5053;
                          _5130 = _5054;
                          _5131 = _5055;
                        }
                      }
                    }
                  } else {
                    _5018 = _4977;
                    _5019 = _4978;
                    _5020 = _4979;
                    if (_4249 == 65) {
                      _5023 = _5018;
                      _5024 = _5019;
                      _5025 = _5020;
                      _5030 = max(1e-06f, _exposure2.x);
                      _5039 = ((_4890 * 50.265484f) * exp2(log2(saturate(dot(float3(_4282, _4283, _4284), float3(_1760, _1761, _1762)))) * 16.0f)) / (((_5030 * _5030) * 1e+06f) + 1.0f);
                      _5124 = ((((_5039 * _4200) - _4931) * _4248) + _4931);
                      _5125 = ((((_5039 * _4201) - _4931) * _4248) + _4931);
                      _5126 = ((((_5039 * _4202) - _4931) * _4248) + _4931);
                      _5127 = _4409;
                      _5128 = _4408;
                      _5129 = _5023;
                      _5130 = _5024;
                      _5131 = _5025;
                    } else {
                      _5053 = _5018;
                      _5054 = _5019;
                      _5055 = _5020;
                      _5056 = _4931;
                      _5057 = _4931;
                      _5058 = _4931;
                      if (_4287) {
                        _5061 = dot(float3(_1760, _1761, _1762), float3(_4282, _4283, _4284)) * 2.0f;
                        _5065 = _1760 - (_5061 * _4282);
                        _5066 = _1761 - (_5061 * _4283);
                        _5067 = _1762 - (_5061 * _4284);
                        _5068 = _4388 - _5065;
                        _5069 = _4389 - _5066;
                        _5070 = _4390 - _5067;
                        _5072 = rsqrt(dot(float3(_5068, _5069, _5070), float3(_5068, _5069, _5070)));  // [sem: invLength]
                        _5073 = _5068 * _5072;
                        _5074 = _5069 * _5072;
                        _5075 = _5070 * _5072;
                        _5076 = -0.0f - _5065;
                        _5077 = -0.0f - _5066;
                        _5078 = -0.0f - _5067;
                        _5080 = saturate(dot(float3(_4232, _4233, _4234), float3(_5076, _5077, _5078)));  // [sem: expr_sat]
                        _5082 = saturate(dot(float3(_4282, _4283, _4284), float3(_5073, _5074, _5075)));  // [sem: expr_sat]
                        _5084 = saturate(_4404);  // [sem: _4404_sat]
                        _5095 = 1.0f - ((_5082 * _5082) * 0.9f);
                        _5098 = (0.03183099f / (_5095 * _5095)) * (0.5f / ((((_5080 * 0.9f) + 0.1f) * _4404) + (_5080 * ((_4404 * 0.9f) + 0.1f))));
                        _5124 = _5056;
                        _5125 = _5057;
                        _5126 = _5058;
                        _5127 = dot(float3(_5076, _5077, _5078), float3(_5073, _5074, _5075));
                        _5128 = _5082;
                        _5129 = (((float(half(max((_5098 * _4200), 0.0f) * _5084)) - _5053) * 0.875f) + _5053);
                        _5130 = (((float(half(max((_5098 * _4201), 0.0f) * _5084)) - _5054) * 0.875f) + _5054);
                        _5131 = (((float(half(max((_5098 * _4202), 0.0f) * _5084)) - _5055) * 0.875f) + _5055);
                      } else {
                        _5124 = _5056;
                        _5125 = _5057;
                        _5126 = _5058;
                        _5127 = _4409;
                        _5128 = _4408;
                        _5129 = _5053;
                        _5130 = _5054;
                        _5131 = _5055;
                      }
                    }
                  }
                }
              } else {
                _5124 = _4705;
                _5125 = _4706;
                _5126 = _4707;
                _5127 = _4409;
                _5128 = _4408;
                _5129 = _4702;
                _5130 = _4703;
                _5131 = _4704;
              }
              _5153 = select(_4711, _4882, _5129) * _3910;
              _5154 = select(_4711, _4883, _5130) * _3911;
              _5155 = select(_4711, _4884, _5131) * _3912;
              _5163 = _5127;
              _5164 = _5128;
              _5165 = select(_4711, 0.0f, _4699);
              _5166 = select(_4711, 0.0f, _4700);
              _5167 = select(_4711, 0.0f, _4701);
              _5168 = select(_4711, (_5153 + _4879), _5153);
              _5169 = select(_4711, (_5154 + _4880), _5154);
              _5170 = select(_4711, (_5155 + _4881), _5155);
              _5171 = (select(_4711, _4885, (-0.0f - min(-0.0f, (-0.0f - _5124)))) * _3910);
              _5172 = (select(_4711, _4886, (-0.0f - min(-0.0f, (-0.0f - _5125)))) * _3911);
              _5173 = (select(_4711, _4887, (-0.0f - min(-0.0f, (-0.0f - _5126)))) * _3912);
            } else {
              _5163 = _4409;
              _5164 = _4408;
              _5165 = _4699;
              _5166 = _4700;
              _5167 = _4701;
              _5168 = _4702;
              _5169 = _4703;
              _5170 = _4704;
              _5171 = _4705;
              _5172 = _4706;
              _5173 = _4707;
            }
          }
        } else {
          _5163 = _4409;
          _5164 = _4408;
          _5165 = _4699;
          _5166 = _4700;
          _5167 = _4701;
          _5168 = _4702;
          _5169 = _4703;
          _5170 = _4704;
          _5171 = _4705;
          _5172 = _4706;
          _5173 = _4707;
        }
      } else {
        _5163 = _4409;
        _5164 = _4408;
        _5165 = _4686;
        _5166 = _4687;
        _5167 = _4688;
        _5168 = _4695;
        _5169 = _4696;
        _5170 = _4697;
        _5171 = _4675;
        _5172 = _4677;
        _5173 = _4679;
      }
    } else {
      _4699 = 0.0f;
      _4700 = 0.0f;
      _4701 = 0.0f;
      _4702 = 0.0f;
      _4703 = 0.0f;
      _4704 = 0.0f;
      _4705 = 0.0f;
      _4706 = 0.0f;
      _4707 = 0.0f;
      if (!_4413) {
        _4709 = (_4249 == 33);
        _4710 = (_4249 == 54);
        _4711 = _4709 || _4710;
        if (_4711) {
          _4726 = (saturate(_4403) * 0.31830987f) * (((saturate(1.0f - _effectiveMetallicForVelvet) + -1.0f) * _4253) + 1.0f);
          _4732 = max(dot(float3(_4200, _4201, _4202), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
          _4733 = sqrt(_4200);
          _4734 = sqrt(_4201);
          _4735 = sqrt(_4202);
          _4736 = _4733 - _4732;
          _4737 = _4734 - _4732;
          _4738 = _4735 - _4732;
          _4745 = saturate(1.0f - (pow(_4406, 4.0f)));  // [sem: expr_sat]
          _4758 = (((_4737 * _4250) + _4732) + ((_4737 * (_4253 - _4250)) * _4745)) * _4251;
          _4761 = saturate(1.0f - saturate(_4409));  // [sem: expr_sat]
          _4762 = _4761 * _4761;
          _4764 = (_4762 * _4762) * _4761;
          _4767 = _4764 * saturate(_4758 * 50.0f);
          _4768 = 1.0f - _4764;
          _4769 = _4768 * _4251;
          _4773 = (_4769 * (((_4736 * _4250) + _4732) + (_4745 * (_4736 * (_4253 - _4250))))) + _4767;
          _4774 = (_4768 * _4758) + _4767;
          _4775 = (_4769 * (((_4738 * _4250) + _4732) + ((_4738 * (_4253 - _4250)) * _4745))) + _4767;
          _4776 = min(_4408, 0.9999f);
          _4777 = _4776 * _4776;
          _4778 = 1.0f - _4777;
          _4790 = (((exp2(((-0.0f - _4777) / (_4778 * _4345)) * 1.442695f) * 4.0f) / (_4778 * _4778)) + 1.0f) / ((_4345 * 12.566371f) + 3.1415927f);
          _4794 = ((_4406 + _4404) - (_4406 * _4404)) * 4.0f;
          _4798 = (_4773 * _4790) / _4794;
          _4799 = (_4774 * _4790) / _4794;
          _4800 = (_4775 * _4790) / _4794;
          _4801 = 1.0f - _4344;
          _4813 = (((_4408 * _4345) - _4408) * _4408) + 1.0f;
          _4817 = (_4345 / ((_4813 * _4813) * 3.1415927f)) * (0.5f / ((((_4406 * _4801) + _4344) * _4403) + (_4406 * ((_4403 * _4801) + _4344))));
          _4833 = saturate(_4404);  // [sem: _4404_sat]
          _4838 = (_4252 * 1.5f) + 2.5f;
          _4839 = _4838 * _4838;
          _4849 = (max(0.0f, (0.3f - _4403)) * 0.25f) * ((exp2(_4839 * -0.48089835f) * 3.0f) + exp2(_4839 * -1.442695f));
          _4874 = (((1.0f - _4253) * 0.4774648f) * saturate(_4252)) * saturate((pow(_4408, 4.0f)) * exp2(log2(saturate(1.0f - abs(_4403))) * 3.0f));
          _4879 = (_4874 * _4733);
          _4880 = (_4874 * _4734);
          _4881 = (_4874 * _4735);
          _4882 = ((((max((_4817 * _4773), 0.0f) - _4798) * _4250) + _4798) * _4833);
          _4883 = ((((max((_4817 * _4774), 0.0f) - _4799) * _4250) + _4799) * _4833);
          _4884 = ((((max((_4817 * _4775), 0.0f) - _4800) * _4250) + _4800) * _4833);
          _4885 = (((_4733 * _3910) * _4849) + _4726);
          _4886 = (((_4734 * _3911) * _4849) + _4726);
          _4887 = (((_4735 * _3912) * _4849) + _4726);
          if (!_4709) {
            if (_4710) {
              _5053 = _4702;
              _5054 = _4703;
              _5055 = _4704;
              _5056 = _4705;
              _5057 = _4706;
              _5058 = _4707;
              if (_4287) {
                _5061 = dot(float3(_1760, _1761, _1762), float3(_4282, _4283, _4284)) * 2.0f;
                _5065 = _1760 - (_5061 * _4282);
                _5066 = _1761 - (_5061 * _4283);
                _5067 = _1762 - (_5061 * _4284);
                _5068 = _4388 - _5065;
                _5069 = _4389 - _5066;
                _5070 = _4390 - _5067;
                _5072 = rsqrt(dot(float3(_5068, _5069, _5070), float3(_5068, _5069, _5070)));  // [sem: invLength]
                _5073 = _5068 * _5072;
                _5074 = _5069 * _5072;
                _5075 = _5070 * _5072;
                _5076 = -0.0f - _5065;
                _5077 = -0.0f - _5066;
                _5078 = -0.0f - _5067;
                _5080 = saturate(dot(float3(_4232, _4233, _4234), float3(_5076, _5077, _5078)));  // [sem: expr_sat]
                _5082 = saturate(dot(float3(_4282, _4283, _4284), float3(_5073, _5074, _5075)));  // [sem: expr_sat]
                _5084 = saturate(_4404);  // [sem: _4404_sat]
                _5095 = 1.0f - ((_5082 * _5082) * 0.9f);
                _5098 = (0.03183099f / (_5095 * _5095)) * (0.5f / ((((_5080 * 0.9f) + 0.1f) * _4404) + (_5080 * ((_4404 * 0.9f) + 0.1f))));
                _5124 = _5056;
                _5125 = _5057;
                _5126 = _5058;
                _5127 = dot(float3(_5076, _5077, _5078), float3(_5073, _5074, _5075));
                _5128 = _5082;
                _5129 = (((float(half(max((_5098 * _4200), 0.0f) * _5084)) - _5053) * 0.875f) + _5053);
                _5130 = (((float(half(max((_5098 * _4201), 0.0f) * _5084)) - _5054) * 0.875f) + _5054);
                _5131 = (((float(half(max((_5098 * _4202), 0.0f) * _5084)) - _5055) * 0.875f) + _5055);
              } else {
                _5124 = _5056;
                _5125 = _5057;
                _5126 = _5058;
                _5127 = _4409;
                _5128 = _4408;
                _5129 = _5053;
                _5130 = _5054;
                _5131 = _5055;
              }
            } else {
              _4890 = saturate(_4403);  // [sem: _4403_sat]
              _4891 = 1.0f - _4345;
              _4892 = 1.0f - _4411;
              _4893 = _4892 * _4892;
              _4896 = ((_4893 * _4893) * _4892) + _4411;
              _4897 = 1.0f - _4890;
              _4898 = _4897 * _4897;
              _4903 = 1.0f - _4406;
              _4904 = _4903 * _4903;
              _4931 = (_4890 * 0.31830987f) * ((((_4411 * ((((_4891 * 34.5f) + -59.0f) * _4891) + 24.5f)) * exp2(-0.0f - (max(((_4891 * 73.2f) + -21.2f), 8.9f) * sqrt(_4408)))) + _4896) + ((((1.0f - ((_4898 * _4898) * (_4897 * 0.75f))) * (1.0f - ((_4904 * _4904) * (_4903 * 0.75f)))) - _4896) * saturate((_4891 * 2.2f) + -0.5f)));
              _4934 = saturate(1.0f - saturate(_4409));  // [sem: expr_sat]
              _4935 = _4934 * _4934;
              _4937 = (_4935 * _4935) * _4934;
              _4940 = _4937 * saturate(_4342 * 50.0f);
              _4941 = 1.0f - _4937;
              _4945 = (_4941 * _4341) + _4940;
              _4946 = (_4941 * _4342) + _4940;
              _4947 = (_4941 * _4343) + _4940;
              if (!(_4249 == 29)) {
                _4949 = saturate(_4404);  // [sem: _4404_sat]
                _4950 = 1.0f - _4344;
                _4962 = (((_4408 * _4345) - _4408) * _4408) + 1.0f;
                _4966 = (_4345 / ((_4962 * _4962) * 3.1415927f)) * (0.5f / ((((_4406 * _4950) + _4344) * _4404) + (_4406 * ((_4404 * _4950) + _4344))));
                _4977 = (max((_4966 * _4945), 0.0f) * _4949);
                _4978 = (max((_4966 * _4946), 0.0f) * _4949);
                _4979 = (max((_4966 * _4947), 0.0f) * _4949);
              } else {
                _4977 = 0.0f;
                _4978 = 0.0f;
                _4979 = 0.0f;
              }
              if (_4318) {
                if (_4249 == 65) {
                  _5023 = _4977;
                  _5024 = _4978;
                  _5025 = _4979;
                  _5030 = max(1e-06f, _exposure2.x);
                  _5039 = ((_4890 * 50.265484f) * exp2(log2(saturate(dot(float3(_4282, _4283, _4284), float3(_1760, _1761, _1762)))) * 16.0f)) / (((_5030 * _5030) * 1e+06f) + 1.0f);
                  _5124 = ((((_5039 * _4200) - _4931) * _4248) + _4931);
                  _5125 = ((((_5039 * _4201) - _4931) * _4248) + _4931);
                  _5126 = ((((_5039 * _4202) - _4931) * _4248) + _4931);
                  _5127 = _4409;
                  _5128 = _4408;
                  _5129 = _5023;
                  _5130 = _5024;
                  _5131 = _5025;
                } else {
                  _4987 = 1.0f - _4350;
                  _4999 = (((_4408 * _4351) - _4408) * _4408) + 1.0f;
                  _5003 = (_4351 / ((_4999 * _4999) * 3.1415927f)) * (0.5f / ((((_4406 * _4987) + _4350) * _4404) + (_4406 * ((_4404 * _4987) + _4350))));
                  _5010 = saturate(_4404) * 0.39990234f;
                  _5018 = ((max((_5003 * _4945), 0.0f) * _5010) + (_4977 * 0.60009766f));
                  _5019 = ((max((_5003 * _4946), 0.0f) * _5010) + (_4978 * 0.60009766f));
                  _5020 = ((max((_5003 * _4947), 0.0f) * _5010) + (_4979 * 0.60009766f));
                  if (_4249 == 65) {
                    _5023 = _5018;
                    _5024 = _5019;
                    _5025 = _5020;
                    _5030 = max(1e-06f, _exposure2.x);
                    _5039 = ((_4890 * 50.265484f) * exp2(log2(saturate(dot(float3(_4282, _4283, _4284), float3(_1760, _1761, _1762)))) * 16.0f)) / (((_5030 * _5030) * 1e+06f) + 1.0f);
                    _5124 = ((((_5039 * _4200) - _4931) * _4248) + _4931);
                    _5125 = ((((_5039 * _4201) - _4931) * _4248) + _4931);
                    _5126 = ((((_5039 * _4202) - _4931) * _4248) + _4931);
                    _5127 = _4409;
                    _5128 = _4408;
                    _5129 = _5023;
                    _5130 = _5024;
                    _5131 = _5025;
                  } else {
                    _5053 = _5018;
                    _5054 = _5019;
                    _5055 = _5020;
                    _5056 = _4931;
                    _5057 = _4931;
                    _5058 = _4931;
                    if (_4287) {
                      _5061 = dot(float3(_1760, _1761, _1762), float3(_4282, _4283, _4284)) * 2.0f;
                      _5065 = _1760 - (_5061 * _4282);
                      _5066 = _1761 - (_5061 * _4283);
                      _5067 = _1762 - (_5061 * _4284);
                      _5068 = _4388 - _5065;
                      _5069 = _4389 - _5066;
                      _5070 = _4390 - _5067;
                      _5072 = rsqrt(dot(float3(_5068, _5069, _5070), float3(_5068, _5069, _5070)));  // [sem: invLength]
                      _5073 = _5068 * _5072;
                      _5074 = _5069 * _5072;
                      _5075 = _5070 * _5072;
                      _5076 = -0.0f - _5065;
                      _5077 = -0.0f - _5066;
                      _5078 = -0.0f - _5067;
                      _5080 = saturate(dot(float3(_4232, _4233, _4234), float3(_5076, _5077, _5078)));  // [sem: expr_sat]
                      _5082 = saturate(dot(float3(_4282, _4283, _4284), float3(_5073, _5074, _5075)));  // [sem: expr_sat]
                      _5084 = saturate(_4404);  // [sem: _4404_sat]
                      _5095 = 1.0f - ((_5082 * _5082) * 0.9f);
                      _5098 = (0.03183099f / (_5095 * _5095)) * (0.5f / ((((_5080 * 0.9f) + 0.1f) * _4404) + (_5080 * ((_4404 * 0.9f) + 0.1f))));
                      _5124 = _5056;
                      _5125 = _5057;
                      _5126 = _5058;
                      _5127 = dot(float3(_5076, _5077, _5078), float3(_5073, _5074, _5075));
                      _5128 = _5082;
                      _5129 = (((float(half(max((_5098 * _4200), 0.0f) * _5084)) - _5053) * 0.875f) + _5053);
                      _5130 = (((float(half(max((_5098 * _4201), 0.0f) * _5084)) - _5054) * 0.875f) + _5054);
                      _5131 = (((float(half(max((_5098 * _4202), 0.0f) * _5084)) - _5055) * 0.875f) + _5055);
                    } else {
                      _5124 = _5056;
                      _5125 = _5057;
                      _5126 = _5058;
                      _5127 = _4409;
                      _5128 = _4408;
                      _5129 = _5053;
                      _5130 = _5054;
                      _5131 = _5055;
                    }
                  }
                }
              } else {
                _5018 = _4977;
                _5019 = _4978;
                _5020 = _4979;
                if (_4249 == 65) {
                  _5023 = _5018;
                  _5024 = _5019;
                  _5025 = _5020;
                  _5030 = max(1e-06f, _exposure2.x);
                  _5039 = ((_4890 * 50.265484f) * exp2(log2(saturate(dot(float3(_4282, _4283, _4284), float3(_1760, _1761, _1762)))) * 16.0f)) / (((_5030 * _5030) * 1e+06f) + 1.0f);
                  _5124 = ((((_5039 * _4200) - _4931) * _4248) + _4931);
                  _5125 = ((((_5039 * _4201) - _4931) * _4248) + _4931);
                  _5126 = ((((_5039 * _4202) - _4931) * _4248) + _4931);
                  _5127 = _4409;
                  _5128 = _4408;
                  _5129 = _5023;
                  _5130 = _5024;
                  _5131 = _5025;
                } else {
                  _5053 = _5018;
                  _5054 = _5019;
                  _5055 = _5020;
                  _5056 = _4931;
                  _5057 = _4931;
                  _5058 = _4931;
                  if (_4287) {
                    _5061 = dot(float3(_1760, _1761, _1762), float3(_4282, _4283, _4284)) * 2.0f;
                    _5065 = _1760 - (_5061 * _4282);
                    _5066 = _1761 - (_5061 * _4283);
                    _5067 = _1762 - (_5061 * _4284);
                    _5068 = _4388 - _5065;
                    _5069 = _4389 - _5066;
                    _5070 = _4390 - _5067;
                    _5072 = rsqrt(dot(float3(_5068, _5069, _5070), float3(_5068, _5069, _5070)));  // [sem: invLength]
                    _5073 = _5068 * _5072;
                    _5074 = _5069 * _5072;
                    _5075 = _5070 * _5072;
                    _5076 = -0.0f - _5065;
                    _5077 = -0.0f - _5066;
                    _5078 = -0.0f - _5067;
                    _5080 = saturate(dot(float3(_4232, _4233, _4234), float3(_5076, _5077, _5078)));  // [sem: expr_sat]
                    _5082 = saturate(dot(float3(_4282, _4283, _4284), float3(_5073, _5074, _5075)));  // [sem: expr_sat]
                    _5084 = saturate(_4404);  // [sem: _4404_sat]
                    _5095 = 1.0f - ((_5082 * _5082) * 0.9f);
                    _5098 = (0.03183099f / (_5095 * _5095)) * (0.5f / ((((_5080 * 0.9f) + 0.1f) * _4404) + (_5080 * ((_4404 * 0.9f) + 0.1f))));
                    _5124 = _5056;
                    _5125 = _5057;
                    _5126 = _5058;
                    _5127 = dot(float3(_5076, _5077, _5078), float3(_5073, _5074, _5075));
                    _5128 = _5082;
                    _5129 = (((float(half(max((_5098 * _4200), 0.0f) * _5084)) - _5053) * 0.875f) + _5053);
                    _5130 = (((float(half(max((_5098 * _4201), 0.0f) * _5084)) - _5054) * 0.875f) + _5054);
                    _5131 = (((float(half(max((_5098 * _4202), 0.0f) * _5084)) - _5055) * 0.875f) + _5055);
                  } else {
                    _5124 = _5056;
                    _5125 = _5057;
                    _5126 = _5058;
                    _5127 = _4409;
                    _5128 = _4408;
                    _5129 = _5053;
                    _5130 = _5054;
                    _5131 = _5055;
                  }
                }
              }
            }
          } else {
            _5124 = _4705;
            _5125 = _4706;
            _5126 = _4707;
            _5127 = _4409;
            _5128 = _4408;
            _5129 = _4702;
            _5130 = _4703;
            _5131 = _4704;
          }
          _5153 = select(_4711, _4882, _5129) * _3910;
          _5154 = select(_4711, _4883, _5130) * _3911;
          _5155 = select(_4711, _4884, _5131) * _3912;
          _5163 = _5127;
          _5164 = _5128;
          _5165 = select(_4711, 0.0f, _4699);
          _5166 = select(_4711, 0.0f, _4700);
          _5167 = select(_4711, 0.0f, _4701);
          _5168 = select(_4711, (_5153 + _4879), _5153);
          _5169 = select(_4711, (_5154 + _4880), _5154);
          _5170 = select(_4711, (_5155 + _4881), _5155);
          _5171 = (select(_4711, _4885, (-0.0f - min(-0.0f, (-0.0f - _5124)))) * _3910);
          _5172 = (select(_4711, _4886, (-0.0f - min(-0.0f, (-0.0f - _5125)))) * _3911);
          _5173 = (select(_4711, _4887, (-0.0f - min(-0.0f, (-0.0f - _5126)))) * _3912);
        } else {
          if ((_4403 > 0.0f) || (_4404 > 0.0f)) {
            _4879 = 0.0f;
            _4880 = 0.0f;
            _4881 = 0.0f;
            _4882 = 0.0f;
            _4883 = 0.0f;
            _4884 = 0.0f;
            _4885 = 0.0f;
            _4886 = 0.0f;
            _4887 = 0.0f;
            if (!_4709) {
              if (_4710) {
                _5053 = _4702;
                _5054 = _4703;
                _5055 = _4704;
                _5056 = _4705;
                _5057 = _4706;
                _5058 = _4707;
                if (_4287) {
                  _5061 = dot(float3(_1760, _1761, _1762), float3(_4282, _4283, _4284)) * 2.0f;
                  _5065 = _1760 - (_5061 * _4282);
                  _5066 = _1761 - (_5061 * _4283);
                  _5067 = _1762 - (_5061 * _4284);
                  _5068 = _4388 - _5065;
                  _5069 = _4389 - _5066;
                  _5070 = _4390 - _5067;
                  _5072 = rsqrt(dot(float3(_5068, _5069, _5070), float3(_5068, _5069, _5070)));  // [sem: invLength]
                  _5073 = _5068 * _5072;
                  _5074 = _5069 * _5072;
                  _5075 = _5070 * _5072;
                  _5076 = -0.0f - _5065;
                  _5077 = -0.0f - _5066;
                  _5078 = -0.0f - _5067;
                  _5080 = saturate(dot(float3(_4232, _4233, _4234), float3(_5076, _5077, _5078)));  // [sem: expr_sat]
                  _5082 = saturate(dot(float3(_4282, _4283, _4284), float3(_5073, _5074, _5075)));  // [sem: expr_sat]
                  _5084 = saturate(_4404);  // [sem: _4404_sat]
                  _5095 = 1.0f - ((_5082 * _5082) * 0.9f);
                  _5098 = (0.03183099f / (_5095 * _5095)) * (0.5f / ((((_5080 * 0.9f) + 0.1f) * _4404) + (_5080 * ((_4404 * 0.9f) + 0.1f))));
                  _5124 = _5056;
                  _5125 = _5057;
                  _5126 = _5058;
                  _5127 = dot(float3(_5076, _5077, _5078), float3(_5073, _5074, _5075));
                  _5128 = _5082;
                  _5129 = (((float(half(max((_5098 * _4200), 0.0f) * _5084)) - _5053) * 0.875f) + _5053);
                  _5130 = (((float(half(max((_5098 * _4201), 0.0f) * _5084)) - _5054) * 0.875f) + _5054);
                  _5131 = (((float(half(max((_5098 * _4202), 0.0f) * _5084)) - _5055) * 0.875f) + _5055);
                } else {
                  _5124 = _5056;
                  _5125 = _5057;
                  _5126 = _5058;
                  _5127 = _4409;
                  _5128 = _4408;
                  _5129 = _5053;
                  _5130 = _5054;
                  _5131 = _5055;
                }
              } else {
                _4890 = saturate(_4403);  // [sem: _4403_sat]
                _4891 = 1.0f - _4345;
                _4892 = 1.0f - _4411;
                _4893 = _4892 * _4892;
                _4896 = ((_4893 * _4893) * _4892) + _4411;
                _4897 = 1.0f - _4890;
                _4898 = _4897 * _4897;
                _4903 = 1.0f - _4406;
                _4904 = _4903 * _4903;
                _4931 = (_4890 * 0.31830987f) * ((((_4411 * ((((_4891 * 34.5f) + -59.0f) * _4891) + 24.5f)) * exp2(-0.0f - (max(((_4891 * 73.2f) + -21.2f), 8.9f) * sqrt(_4408)))) + _4896) + ((((1.0f - ((_4898 * _4898) * (_4897 * 0.75f))) * (1.0f - ((_4904 * _4904) * (_4903 * 0.75f)))) - _4896) * saturate((_4891 * 2.2f) + -0.5f)));
                _4934 = saturate(1.0f - saturate(_4409));  // [sem: expr_sat]
                _4935 = _4934 * _4934;
                _4937 = (_4935 * _4935) * _4934;
                _4940 = _4937 * saturate(_4342 * 50.0f);
                _4941 = 1.0f - _4937;
                _4945 = (_4941 * _4341) + _4940;
                _4946 = (_4941 * _4342) + _4940;
                _4947 = (_4941 * _4343) + _4940;
                if (!(_4249 == 29)) {
                  _4949 = saturate(_4404);  // [sem: _4404_sat]
                  _4950 = 1.0f - _4344;
                  _4962 = (((_4408 * _4345) - _4408) * _4408) + 1.0f;
                  _4966 = (_4345 / ((_4962 * _4962) * 3.1415927f)) * (0.5f / ((((_4406 * _4950) + _4344) * _4404) + (_4406 * ((_4404 * _4950) + _4344))));
                  _4977 = (max((_4966 * _4945), 0.0f) * _4949);
                  _4978 = (max((_4966 * _4946), 0.0f) * _4949);
                  _4979 = (max((_4966 * _4947), 0.0f) * _4949);
                } else {
                  _4977 = 0.0f;
                  _4978 = 0.0f;
                  _4979 = 0.0f;
                }
                if (_4318) {
                  if (_4249 == 65) {
                    _5023 = _4977;
                    _5024 = _4978;
                    _5025 = _4979;
                    _5030 = max(1e-06f, _exposure2.x);
                    _5039 = ((_4890 * 50.265484f) * exp2(log2(saturate(dot(float3(_4282, _4283, _4284), float3(_1760, _1761, _1762)))) * 16.0f)) / (((_5030 * _5030) * 1e+06f) + 1.0f);
                    _5124 = ((((_5039 * _4200) - _4931) * _4248) + _4931);
                    _5125 = ((((_5039 * _4201) - _4931) * _4248) + _4931);
                    _5126 = ((((_5039 * _4202) - _4931) * _4248) + _4931);
                    _5127 = _4409;
                    _5128 = _4408;
                    _5129 = _5023;
                    _5130 = _5024;
                    _5131 = _5025;
                  } else {
                    _4987 = 1.0f - _4350;
                    _4999 = (((_4408 * _4351) - _4408) * _4408) + 1.0f;
                    _5003 = (_4351 / ((_4999 * _4999) * 3.1415927f)) * (0.5f / ((((_4406 * _4987) + _4350) * _4404) + (_4406 * ((_4404 * _4987) + _4350))));
                    _5010 = saturate(_4404) * 0.39990234f;
                    _5018 = ((max((_5003 * _4945), 0.0f) * _5010) + (_4977 * 0.60009766f));
                    _5019 = ((max((_5003 * _4946), 0.0f) * _5010) + (_4978 * 0.60009766f));
                    _5020 = ((max((_5003 * _4947), 0.0f) * _5010) + (_4979 * 0.60009766f));
                    if (_4249 == 65) {
                      _5023 = _5018;
                      _5024 = _5019;
                      _5025 = _5020;
                      _5030 = max(1e-06f, _exposure2.x);
                      _5039 = ((_4890 * 50.265484f) * exp2(log2(saturate(dot(float3(_4282, _4283, _4284), float3(_1760, _1761, _1762)))) * 16.0f)) / (((_5030 * _5030) * 1e+06f) + 1.0f);
                      _5124 = ((((_5039 * _4200) - _4931) * _4248) + _4931);
                      _5125 = ((((_5039 * _4201) - _4931) * _4248) + _4931);
                      _5126 = ((((_5039 * _4202) - _4931) * _4248) + _4931);
                      _5127 = _4409;
                      _5128 = _4408;
                      _5129 = _5023;
                      _5130 = _5024;
                      _5131 = _5025;
                    } else {
                      _5053 = _5018;
                      _5054 = _5019;
                      _5055 = _5020;
                      _5056 = _4931;
                      _5057 = _4931;
                      _5058 = _4931;
                      if (_4287) {
                        _5061 = dot(float3(_1760, _1761, _1762), float3(_4282, _4283, _4284)) * 2.0f;
                        _5065 = _1760 - (_5061 * _4282);
                        _5066 = _1761 - (_5061 * _4283);
                        _5067 = _1762 - (_5061 * _4284);
                        _5068 = _4388 - _5065;
                        _5069 = _4389 - _5066;
                        _5070 = _4390 - _5067;
                        _5072 = rsqrt(dot(float3(_5068, _5069, _5070), float3(_5068, _5069, _5070)));  // [sem: invLength]
                        _5073 = _5068 * _5072;
                        _5074 = _5069 * _5072;
                        _5075 = _5070 * _5072;
                        _5076 = -0.0f - _5065;
                        _5077 = -0.0f - _5066;
                        _5078 = -0.0f - _5067;
                        _5080 = saturate(dot(float3(_4232, _4233, _4234), float3(_5076, _5077, _5078)));  // [sem: expr_sat]
                        _5082 = saturate(dot(float3(_4282, _4283, _4284), float3(_5073, _5074, _5075)));  // [sem: expr_sat]
                        _5084 = saturate(_4404);  // [sem: _4404_sat]
                        _5095 = 1.0f - ((_5082 * _5082) * 0.9f);
                        _5098 = (0.03183099f / (_5095 * _5095)) * (0.5f / ((((_5080 * 0.9f) + 0.1f) * _4404) + (_5080 * ((_4404 * 0.9f) + 0.1f))));
                        _5124 = _5056;
                        _5125 = _5057;
                        _5126 = _5058;
                        _5127 = dot(float3(_5076, _5077, _5078), float3(_5073, _5074, _5075));
                        _5128 = _5082;
                        _5129 = (((float(half(max((_5098 * _4200), 0.0f) * _5084)) - _5053) * 0.875f) + _5053);
                        _5130 = (((float(half(max((_5098 * _4201), 0.0f) * _5084)) - _5054) * 0.875f) + _5054);
                        _5131 = (((float(half(max((_5098 * _4202), 0.0f) * _5084)) - _5055) * 0.875f) + _5055);
                      } else {
                        _5124 = _5056;
                        _5125 = _5057;
                        _5126 = _5058;
                        _5127 = _4409;
                        _5128 = _4408;
                        _5129 = _5053;
                        _5130 = _5054;
                        _5131 = _5055;
                      }
                    }
                  }
                } else {
                  _5018 = _4977;
                  _5019 = _4978;
                  _5020 = _4979;
                  if (_4249 == 65) {
                    _5023 = _5018;
                    _5024 = _5019;
                    _5025 = _5020;
                    _5030 = max(1e-06f, _exposure2.x);
                    _5039 = ((_4890 * 50.265484f) * exp2(log2(saturate(dot(float3(_4282, _4283, _4284), float3(_1760, _1761, _1762)))) * 16.0f)) / (((_5030 * _5030) * 1e+06f) + 1.0f);
                    _5124 = ((((_5039 * _4200) - _4931) * _4248) + _4931);
                    _5125 = ((((_5039 * _4201) - _4931) * _4248) + _4931);
                    _5126 = ((((_5039 * _4202) - _4931) * _4248) + _4931);
                    _5127 = _4409;
                    _5128 = _4408;
                    _5129 = _5023;
                    _5130 = _5024;
                    _5131 = _5025;
                  } else {
                    _5053 = _5018;
                    _5054 = _5019;
                    _5055 = _5020;
                    _5056 = _4931;
                    _5057 = _4931;
                    _5058 = _4931;
                    if (_4287) {
                      _5061 = dot(float3(_1760, _1761, _1762), float3(_4282, _4283, _4284)) * 2.0f;
                      _5065 = _1760 - (_5061 * _4282);
                      _5066 = _1761 - (_5061 * _4283);
                      _5067 = _1762 - (_5061 * _4284);
                      _5068 = _4388 - _5065;
                      _5069 = _4389 - _5066;
                      _5070 = _4390 - _5067;
                      _5072 = rsqrt(dot(float3(_5068, _5069, _5070), float3(_5068, _5069, _5070)));  // [sem: invLength]
                      _5073 = _5068 * _5072;
                      _5074 = _5069 * _5072;
                      _5075 = _5070 * _5072;
                      _5076 = -0.0f - _5065;
                      _5077 = -0.0f - _5066;
                      _5078 = -0.0f - _5067;
                      _5080 = saturate(dot(float3(_4232, _4233, _4234), float3(_5076, _5077, _5078)));  // [sem: expr_sat]
                      _5082 = saturate(dot(float3(_4282, _4283, _4284), float3(_5073, _5074, _5075)));  // [sem: expr_sat]
                      _5084 = saturate(_4404);  // [sem: _4404_sat]
                      _5095 = 1.0f - ((_5082 * _5082) * 0.9f);
                      _5098 = (0.03183099f / (_5095 * _5095)) * (0.5f / ((((_5080 * 0.9f) + 0.1f) * _4404) + (_5080 * ((_4404 * 0.9f) + 0.1f))));
                      _5124 = _5056;
                      _5125 = _5057;
                      _5126 = _5058;
                      _5127 = dot(float3(_5076, _5077, _5078), float3(_5073, _5074, _5075));
                      _5128 = _5082;
                      _5129 = (((float(half(max((_5098 * _4200), 0.0f) * _5084)) - _5053) * 0.875f) + _5053);
                      _5130 = (((float(half(max((_5098 * _4201), 0.0f) * _5084)) - _5054) * 0.875f) + _5054);
                      _5131 = (((float(half(max((_5098 * _4202), 0.0f) * _5084)) - _5055) * 0.875f) + _5055);
                    } else {
                      _5124 = _5056;
                      _5125 = _5057;
                      _5126 = _5058;
                      _5127 = _4409;
                      _5128 = _4408;
                      _5129 = _5053;
                      _5130 = _5054;
                      _5131 = _5055;
                    }
                  }
                }
              }
            } else {
              _5124 = _4705;
              _5125 = _4706;
              _5126 = _4707;
              _5127 = _4409;
              _5128 = _4408;
              _5129 = _4702;
              _5130 = _4703;
              _5131 = _4704;
            }
            _5153 = select(_4711, _4882, _5129) * _3910;
            _5154 = select(_4711, _4883, _5130) * _3911;
            _5155 = select(_4711, _4884, _5131) * _3912;
            _5163 = _5127;
            _5164 = _5128;
            _5165 = select(_4711, 0.0f, _4699);
            _5166 = select(_4711, 0.0f, _4700);
            _5167 = select(_4711, 0.0f, _4701);
            _5168 = select(_4711, (_5153 + _4879), _5153);
            _5169 = select(_4711, (_5154 + _4880), _5154);
            _5170 = select(_4711, (_5155 + _4881), _5155);
            _5171 = (select(_4711, _4885, (-0.0f - min(-0.0f, (-0.0f - _5124)))) * _3910);
            _5172 = (select(_4711, _4886, (-0.0f - min(-0.0f, (-0.0f - _5125)))) * _3911);
            _5173 = (select(_4711, _4887, (-0.0f - min(-0.0f, (-0.0f - _5126)))) * _3912);
          } else {
            _5163 = _4409;
            _5164 = _4408;
            _5165 = _4699;
            _5166 = _4700;
            _5167 = _4701;
            _5168 = _4702;
            _5169 = _4703;
            _5170 = _4704;
            _5171 = _4705;
            _5172 = _4706;
            _5173 = _4707;
          }
        }
      } else {
        _5163 = _4409;
        _5164 = _4408;
        _5165 = _4699;
        _5166 = _4700;
        _5167 = _4701;
        _5168 = _4702;
        _5169 = _4703;
        _5170 = _4704;
        _5171 = _4705;
        _5172 = _4706;
        _5173 = _4707;
      }
    }
    if (_4371) {
      _5177 = max(0.0f, (0.3f - _4403)) * 0.23190688f;
      _5185 = ((_5177 * _3910) + _5171);
      _5186 = ((_5177 * _3911) + _5172);
      _5187 = ((_5177 * _3912) + _5173);
    } else {
      _5185 = _5171;
      _5186 = _5172;
      _5187 = _5173;
    }
    _5189 = 1.0f - (_5163 * 0.85f);
    if (_4318) {
      _5193 = max(4.0f, _4376);
      _5194 = _5193 * _5193;
      _5196 = exp2(_5194 * -225.4211f);
      _5201 = exp2(_5194 * -29.807749f);
      _5209 = exp2(_5194 * -7.7149463f);
      _5215 = exp2(_5194 * -2.5444357f);
      _5217 = _5215 * 0.007f;
      _5222 = exp2(_5194 * -0.72497237f);
      _5237 = saturate(dot(float3(_4388, _4389, _4390), float3((-0.0f - _3394), (-0.0f - _3395), (-0.0f - _3396))) + 0.3f) * 0.31830987f;
      _5525 = ((_5237 * ((((((_5201 * 0.1f) + (_5196 * 0.233f)) + (_5209 * 0.118f)) + (_5215 * 0.113f)) + (_5222 * 0.358f)) + (exp2(_5194 * -0.19469568f) * 0.078f))) + _5185);
      _5526 = ((_5237 * (((((_5201 * 0.336f) + (_5196 * 0.455f)) + (_5209 * 0.198f)) + _5217) + (_5222 * 0.004f))) + _5186);
      _5527 = ((_5237 * (((_5201 * 0.344f) + (_5196 * 0.649f)) + _5217)) + _5187);
      _5528 = _5525 * _4392;
      _5529 = _5526 * _4393;
      _5530 = _5527 * _4394;
      _5532 = (_5168 * _4392) * _3910;
      _5534 = (_5169 * _4393) * _3911;
      _5536 = (_5170 * _4394) * _3912;
      bool __branch_chain_5524;
      if (_4249 == 97) {
        _5552 = _5532;
        _5553 = _5534;
        _5554 = _5536;
        _5555 = _5528;
        _5556 = _5529;
        _5557 = _5530;
        _5558 = _5165;
        _5559 = _5166;
        _5560 = _5167;
        _5561 = _3910;
        _5562 = _3911;
        _5563 = _3912;
        __branch_chain_5524 = true;
      } else {
        _5539 = _5532;
        _5540 = _5534;
        _5541 = _5536;
        _5542 = _5528;
        _5543 = _5529;
        _5544 = _5530;
        _5545 = _5165;
        _5546 = _5166;
        _5547 = _5167;
        _5548 = _3910;
        _5549 = _3911;
        _5550 = _3912;
        if (_4353) {
          _5552 = _5539;
          _5553 = _5540;
          _5554 = _5541;
          _5555 = _5542;
          _5556 = _5543;
          _5557 = _5544;
          _5558 = _5545;
          _5559 = _5546;
          _5560 = _5547;
          _5561 = _5548;
          _5562 = _5549;
          _5563 = _5550;
          __branch_chain_5524 = true;
        } else {
          _5693 = _5542;
          _5694 = _5543;
          _5695 = _5544;
          _5696 = _5545;
          _5697 = _5546;
          _5698 = _5547;
          _5699 = _5539;
          _5700 = _5540;
          _5701 = _5541;
          __branch_chain_5524 = false;
        }
      }
      if (__branch_chain_5524) {
        if ((_122 < 1000.0f) && (_3897 == 0.0h)) {
          if (!(abs(_3395) > 0.99f)) {
            _5571 = -0.0f - _3396;
            _5573 = rsqrt(dot(float3(_5571, 0.0f, _3394), float3(_5571, 0.0f, _3394)));  // [sem: invLength]
            _5577 = (_5573 * _5571);
            _5578 = (_5573 * _3394);
          } else {
            _5577 = 1.0f;
            _5578 = 0.0f;
          }
          _5580 = -0.0f - (_3395 * _5578);
          _5583 = (_5578 * _3394) - (_5577 * _3396);
          _5584 = _5577 * _3395;
          _5586 = rsqrt(dot(float3(_5580, _5583, _5584), float3(_5580, _5583, _5584)));  // [sem: invLength]
          // [sem: _3__36__0__0__g_blueNoise_sampleLod]
          _5594 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_5577, 0.0f, _5578), float3(_3990, _3991, _3993)), dot(float3((_5586 * _5580), (_5583 * _5586), (_5586 * _5584)), float3(_3990, _3991, _3993))), 0.0f);
          _5598 = _5594.x + -0.5f;
          _5599 = _5594.y + -0.5f;
          _5600 = _5594.z + -0.5f;
          _5602 = rsqrt(dot(float3(_5598, _5599, _5600), float3(_5598, _5599, _5600)));  // [sem: invLength]
          _5606 = (_5598 * _5602) + _4282;
          _5607 = (_5599 * _5602) + _4283;
          _5608 = (_5600 * _5602) + _4284;
          _5610 = rsqrt(dot(float3(_5606, _5607, _5608), float3(_5606, _5607, _5608)));  // [sem: invLength]
          _5611 = _5606 * _5610;
          _5612 = _5607 * _5610;
          _5613 = _5608 * _5610;
          _5625 = abs(((_103 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
          _5626 = abs(1.0f - ((_104 * 2.0f) * _bufferSizeAndInvSize.w));
          _5629 = saturate(_5625 * _5625);  // [sem: expr_sat]
          _5630 = saturate(_5626 * _5626);  // [sem: expr_sat]
          _5644 = dot(float3((-0.0f - _5611), (-0.0f - _5612), (-0.0f - _5613)), float3(_4388, _4389, _4390));
          _5646 = saturate(dot(float3(_5611, _5612, _5613), float3(_1760, _1761, _1762)));  // [sem: expr_sat]
          _5648 = saturate(1.0f - _5163);  // [sem: expr_sat]
          _5649 = _5648 * _5648;
          _5651 = (_5649 * _5649) * _5648;
          _5667 = 1.0f - ((_5164 * _5164) * 0.9999f);
          _5674 = (max((((3.1830987e-05f / (_5667 * _5667)) * (0.5f / ((((_5646 * 0.9999f) + 0.0001f) * _5644) + (_5646 * ((_5644 * 0.9999f) + 0.0001f))))) * (lerp(_5651, 1.0f, 0.08f))), 0.0f) * saturate(_5644)) + (exp2(log2(saturate(dot(float3(_1760, _1761, _1762), float3(_5611, _5612, _5613)))) * 1024.0f) * 50.0f);
          // [sem: expr_sat]
          _5679 = saturate(1.0f - (_122 * 0.001f)) * ((1.0f - ((_5630 * _5630) * (3.0f - (_5630 * 2.0f)))) * (1.0f - ((_5629 * _5629) * (3.0f - (_5629 * 2.0f)))));
          _5693 = _5555;
          _5694 = _5556;
          _5695 = _5557;
          _5696 = _5558;
          _5697 = _5559;
          _5698 = _5560;
          _5699 = ((((_5679 * _4392) * _5561) * _5674) + _5552);
          _5700 = ((((_5679 * _4393) * _5562) * _5674) + _5553);
          _5701 = ((((_5679 * _4394) * _5563) * _5674) + _5554);
        } else {
          _5693 = _5555;
          _5694 = _5556;
          _5695 = _5557;
          _5696 = _5558;
          _5697 = _5559;
          _5698 = _5560;
          _5699 = _5552;
          _5700 = _5553;
          _5701 = _5554;
        }
      }
    } else {
      if (_4414) {
        _5247 = dot(float3(_4200, _4201, _4202), float3(0.212671f, 0.71516f, 0.072169f)) * _renderParams2.w;
        _5250 = _5247 + (_1695 - (_5247 * _1695));
        _5257 = (pow(_3910, 1.2f));
        _5258 = (pow(_3911, 1.2f));
        _5259 = (pow(_3912, 1.2f));
        _5265 = saturate(abs(dot(float3(_4388, _4389, _4390), float3(_1646, _1647, _1648))));  // [sem: expr_sat]
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _5274 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_5265, _4210, saturate(sqrt(sqrt(_4200)))), 0.0f);
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _5277 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_5265, _4210, saturate(sqrt(sqrt(_4201)))), 0.0f);
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _5280 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_5265, _4210, saturate(sqrt(sqrt(_4202)))), 0.0f);
        _5289 = min(0.99f, _5274.x);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _5290 = min(0.99f, _5277.x);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _5291 = min(0.99f, _5280.x);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _5292 = min(0.99f, _5274.y);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _5293 = min(0.99f, _5277.y);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _5294 = min(0.99f, _5280.y);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _5295 = _5289 * _5289;
        _5296 = _5290 * _5290;
        _5297 = _5291 * _5291;
        _5298 = _5292 * _5292;
        _5299 = _5293 * _5293;
        _5300 = _5294 * _5294;
        _5301 = _5298 * _5292;
        _5302 = _5299 * _5293;
        _5303 = _5300 * _5294;
        _5304 = 1.0f - _5295;
        _5305 = 1.0f - _5296;
        _5306 = 1.0f - _5297;
        _5316 = _5304 * _5304;
        _5317 = _5305 * _5305;
        _5318 = _5306 * _5306;
        _5319 = _5316 * _5304;
        _5320 = _5317 * _5305;
        _5321 = _5318 * _5306;
        _5329 = min(max(_4210, 0.18f), 0.6f);
        _5330 = _5329 * _5329;
        _5331 = _5330 * 0.25f;
        _5332 = _5330 * 4.0f;
        _5334 = (_5290 + _5289) + _5291;
        _5335 = _5289 / _5334;
        _5336 = _5290 / _5334;
        _5337 = _5291 / _5334;
        _5338 = dot(float3(_5330, _5331, _5332), float3(_5335, _5336, _5337));
        _5339 = _5338 * _5338;
        _5343 = (asin(min(max(dot(float3(_1646, _1647, _1648), float3(_1760, _1761, _1762)), -1.0f), 1.0f)) + asin(min(max(dot(float3(_1646, _1647, _1648), float3(_4388, _4389, _4390)), -1.0f), 1.0f))) * 0.5f;
        _5344 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_5335, _5336, _5337));
        _5354 = _5344 * _5344;
        _5377 = (_5293 + _5292) + _5294;
        _5381 = dot(float3(_5330, _5331, _5332), float3((_5292 / _5377), (_5293 / _5377), (_5294 / _5377)));
        _5385 = sqrt((_5381 * _5381) + (_5339 * 2.0f));
        _5403 = (_5381 * 3.0f) + (_5338 * 2.0f);
        _5410 = (((_5301 + _5292) * ((_5295 * 0.7f) + 1.0f)) * _5385) / ((_5403 * _5301) + _5292);
        _5411 = (((_5302 + _5293) * ((_5296 * 0.7f) + 1.0f)) * _5385) / ((_5403 * _5302) + _5293);
        _5412 = (((_5303 + _5294) * ((_5297 * 0.7f) + 1.0f)) * _5385) / ((_5403 * _5303) + _5294);
        _5416 = _5343 - (((_5354 * (((_5295 * 4.0f) * _5298) + (_5316 * 2.0f))) * (1.0f - ((_5298 * 2.0f) / _5316))) / _5319);
        _5423 = _5343 - (((_5354 * (((_5296 * 4.0f) * _5299) + (_5317 * 2.0f))) * (1.0f - ((_5299 * 2.0f) / _5317))) / _5320);
        _5430 = _5343 - (((_5354 * (((_5297 * 4.0f) * _5300) + (_5318 * 2.0f))) * (1.0f - ((_5300 * 2.0f) / _5318))) / _5321);
        _5438 = (1.0f - _1644) * 2.1f;
        _5459 = (_1644 * 0.31830987f) * saturate(_4403);
        _5506 = _5257;
        _5507 = _5258;
        _5508 = _5259;
        _5509 = (((_5250 * _4392) * _5257) * ((((((_5301 * _5295) / _5319) + ((_5292 * _5295) / _5304)) * _5438) * exp2((((_5416 * _5416) * -0.5f) / ((_5410 * _5410) + _5339)) * 1.442695f)) + _5165));
        _5510 = (((_5250 * _4393) * _5258) * ((((((_5302 * _5296) / _5320) + ((_5293 * _5296) / _5305)) * _5438) * exp2((((_5423 * _5423) * -0.5f) / ((_5411 * _5411) + _5339)) * 1.442695f)) + _5166));
        _5511 = (((_5250 * _4394) * _5259) * ((((((_5303 * _5297) / _5321) + ((_5294 * _5297) / _5306)) * _5438) * exp2((((_5430 * _5430) * -0.5f) / ((_5412 * _5412) + _5339)) * 1.442695f)) + _5167));
        _5512 = (_5459 * _5257);
        _5513 = (_5459 * _5258);
        _5514 = (_5459 * _5259);
        _5539 = ((_5168 * _4392) * _5506);
        _5540 = ((_5169 * _4393) * _5507);
        _5541 = ((_5170 * _4394) * _5508);
        _5542 = (_5512 * _4392);
        _5543 = (_5513 * _4393);
        _5544 = (_5514 * _4394);
        _5545 = _5509;
        _5546 = _5510;
        _5547 = _5511;
        _5548 = _5506;
        _5549 = _5507;
        _5550 = _5508;
        if (_4353) {
          _5552 = _5539;
          _5553 = _5540;
          _5554 = _5541;
          _5555 = _5542;
          _5556 = _5543;
          _5557 = _5544;
          _5558 = _5545;
          _5559 = _5546;
          _5560 = _5547;
          _5561 = _5548;
          _5562 = _5549;
          _5563 = _5550;
          if ((_122 < 1000.0f) && (_3897 == 0.0h)) {
            if (!(abs(_3395) > 0.99f)) {
              _5571 = -0.0f - _3396;
              _5573 = rsqrt(dot(float3(_5571, 0.0f, _3394), float3(_5571, 0.0f, _3394)));  // [sem: invLength]
              _5577 = (_5573 * _5571);
              _5578 = (_5573 * _3394);
            } else {
              _5577 = 1.0f;
              _5578 = 0.0f;
            }
            _5580 = -0.0f - (_3395 * _5578);
            _5583 = (_5578 * _3394) - (_5577 * _3396);
            _5584 = _5577 * _3395;
            _5586 = rsqrt(dot(float3(_5580, _5583, _5584), float3(_5580, _5583, _5584)));  // [sem: invLength]
            // [sem: _3__36__0__0__g_blueNoise_sampleLod]
            _5594 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_5577, 0.0f, _5578), float3(_3990, _3991, _3993)), dot(float3((_5586 * _5580), (_5583 * _5586), (_5586 * _5584)), float3(_3990, _3991, _3993))), 0.0f);
            _5598 = _5594.x + -0.5f;
            _5599 = _5594.y + -0.5f;
            _5600 = _5594.z + -0.5f;
            _5602 = rsqrt(dot(float3(_5598, _5599, _5600), float3(_5598, _5599, _5600)));  // [sem: invLength]
            _5606 = (_5598 * _5602) + _4282;
            _5607 = (_5599 * _5602) + _4283;
            _5608 = (_5600 * _5602) + _4284;
            _5610 = rsqrt(dot(float3(_5606, _5607, _5608), float3(_5606, _5607, _5608)));  // [sem: invLength]
            _5611 = _5606 * _5610;
            _5612 = _5607 * _5610;
            _5613 = _5608 * _5610;
            _5625 = abs(((_103 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
            _5626 = abs(1.0f - ((_104 * 2.0f) * _bufferSizeAndInvSize.w));
            _5629 = saturate(_5625 * _5625);  // [sem: expr_sat]
            _5630 = saturate(_5626 * _5626);  // [sem: expr_sat]
            _5644 = dot(float3((-0.0f - _5611), (-0.0f - _5612), (-0.0f - _5613)), float3(_4388, _4389, _4390));
            _5646 = saturate(dot(float3(_5611, _5612, _5613), float3(_1760, _1761, _1762)));  // [sem: expr_sat]
            _5648 = saturate(1.0f - _5163);  // [sem: expr_sat]
            _5649 = _5648 * _5648;
            _5651 = (_5649 * _5649) * _5648;
            _5667 = 1.0f - ((_5164 * _5164) * 0.9999f);
            _5674 = (max((((3.1830987e-05f / (_5667 * _5667)) * (0.5f / ((((_5646 * 0.9999f) + 0.0001f) * _5644) + (_5646 * ((_5644 * 0.9999f) + 0.0001f))))) * (lerp(_5651, 1.0f, 0.08f))), 0.0f) * saturate(_5644)) + (exp2(log2(saturate(dot(float3(_1760, _1761, _1762), float3(_5611, _5612, _5613)))) * 1024.0f) * 50.0f);
            // [sem: expr_sat]
            _5679 = saturate(1.0f - (_122 * 0.001f)) * ((1.0f - ((_5630 * _5630) * (3.0f - (_5630 * 2.0f)))) * (1.0f - ((_5629 * _5629) * (3.0f - (_5629 * 2.0f)))));
            _5693 = _5555;
            _5694 = _5556;
            _5695 = _5557;
            _5696 = _5558;
            _5697 = _5559;
            _5698 = _5560;
            _5699 = ((((_5679 * _4392) * _5561) * _5674) + _5552);
            _5700 = ((((_5679 * _4393) * _5562) * _5674) + _5553);
            _5701 = ((((_5679 * _4394) * _5563) * _5674) + _5554);
          } else {
            _5693 = _5555;
            _5694 = _5556;
            _5695 = _5557;
            _5696 = _5558;
            _5697 = _5559;
            _5698 = _5560;
            _5699 = _5552;
            _5700 = _5553;
            _5701 = _5554;
          }
        } else {
          _5693 = _5542;
          _5694 = _5543;
          _5695 = _5544;
          _5696 = _5545;
          _5697 = _5546;
          _5698 = _5547;
          _5699 = _5539;
          _5700 = _5540;
          _5701 = _5541;
        }
      } else {
        if (_4370) {
          if (_4249 == 97) {
            _5552 = ((_5168 * _4392) * _3910);
            _5553 = ((_5169 * _4393) * _3911);
            _5554 = ((_5170 * _4394) * _3912);
            _5555 = (_5185 * _4392);
            _5556 = (_5186 * _4393);
            _5557 = (_5187 * _4394);
            _5558 = _5165;
            _5559 = _5166;
            _5560 = _5167;
            _5561 = _3910;
            _5562 = _3911;
            _5563 = _3912;
            if ((_122 < 1000.0f) && (_3897 == 0.0h)) {
              if (!(abs(_3395) > 0.99f)) {
                _5571 = -0.0f - _3396;
                _5573 = rsqrt(dot(float3(_5571, 0.0f, _3394), float3(_5571, 0.0f, _3394)));  // [sem: invLength]
                _5577 = (_5573 * _5571);
                _5578 = (_5573 * _3394);
              } else {
                _5577 = 1.0f;
                _5578 = 0.0f;
              }
              _5580 = -0.0f - (_3395 * _5578);
              _5583 = (_5578 * _3394) - (_5577 * _3396);
              _5584 = _5577 * _3395;
              _5586 = rsqrt(dot(float3(_5580, _5583, _5584), float3(_5580, _5583, _5584)));  // [sem: invLength]
              // [sem: _3__36__0__0__g_blueNoise_sampleLod]
              _5594 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_5577, 0.0f, _5578), float3(_3990, _3991, _3993)), dot(float3((_5586 * _5580), (_5583 * _5586), (_5586 * _5584)), float3(_3990, _3991, _3993))), 0.0f);
              _5598 = _5594.x + -0.5f;
              _5599 = _5594.y + -0.5f;
              _5600 = _5594.z + -0.5f;
              _5602 = rsqrt(dot(float3(_5598, _5599, _5600), float3(_5598, _5599, _5600)));  // [sem: invLength]
              _5606 = (_5598 * _5602) + _4282;
              _5607 = (_5599 * _5602) + _4283;
              _5608 = (_5600 * _5602) + _4284;
              _5610 = rsqrt(dot(float3(_5606, _5607, _5608), float3(_5606, _5607, _5608)));  // [sem: invLength]
              _5611 = _5606 * _5610;
              _5612 = _5607 * _5610;
              _5613 = _5608 * _5610;
              _5625 = abs(((_103 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
              _5626 = abs(1.0f - ((_104 * 2.0f) * _bufferSizeAndInvSize.w));
              _5629 = saturate(_5625 * _5625);  // [sem: expr_sat]
              _5630 = saturate(_5626 * _5626);  // [sem: expr_sat]
              _5644 = dot(float3((-0.0f - _5611), (-0.0f - _5612), (-0.0f - _5613)), float3(_4388, _4389, _4390));
              _5646 = saturate(dot(float3(_5611, _5612, _5613), float3(_1760, _1761, _1762)));  // [sem: expr_sat]
              _5648 = saturate(1.0f - _5163);  // [sem: expr_sat]
              _5649 = _5648 * _5648;
              _5651 = (_5649 * _5649) * _5648;
              _5667 = 1.0f - ((_5164 * _5164) * 0.9999f);
              _5674 = (max((((3.1830987e-05f / (_5667 * _5667)) * (0.5f / ((((_5646 * 0.9999f) + 0.0001f) * _5644) + (_5646 * ((_5644 * 0.9999f) + 0.0001f))))) * (lerp(_5651, 1.0f, 0.08f))), 0.0f) * saturate(_5644)) + (exp2(log2(saturate(dot(float3(_1760, _1761, _1762), float3(_5611, _5612, _5613)))) * 1024.0f) * 50.0f);
              // [sem: expr_sat]
              _5679 = saturate(1.0f - (_122 * 0.001f)) * ((1.0f - ((_5630 * _5630) * (3.0f - (_5630 * 2.0f)))) * (1.0f - ((_5629 * _5629) * (3.0f - (_5629 * 2.0f)))));
              _5693 = _5555;
              _5694 = _5556;
              _5695 = _5557;
              _5696 = _5558;
              _5697 = _5559;
              _5698 = _5560;
              _5699 = ((((_5679 * _4392) * _5561) * _5674) + _5552);
              _5700 = ((((_5679 * _4393) * _5562) * _5674) + _5553);
              _5701 = ((((_5679 * _4394) * _5563) * _5674) + _5554);
            } else {
              _5693 = _5555;
              _5694 = _5556;
              _5695 = _5557;
              _5696 = _5558;
              _5697 = _5559;
              _5698 = _5560;
              _5699 = _5552;
              _5700 = _5553;
              _5701 = _5554;
            }
          } else {
            if ((uint)((int)(_4249) + (int)(-105)) < (uint)2) {
              _5506 = _3910;
              _5507 = _3911;
              _5508 = _3912;
              _5509 = _5165;
              _5510 = _5166;
              _5511 = _5167;
              _5512 = _5185;
              _5513 = _5186;
              _5514 = _5187;
              _5539 = ((_5168 * _4392) * _5506);
              _5540 = ((_5169 * _4393) * _5507);
              _5541 = ((_5170 * _4394) * _5508);
              _5542 = (_5512 * _4392);
              _5543 = (_5513 * _4393);
              _5544 = (_5514 * _4394);
              _5545 = _5509;
              _5546 = _5510;
              _5547 = _5511;
              _5548 = _5506;
              _5549 = _5507;
              _5550 = _5508;
              if (_4353) {
                _5552 = _5539;
                _5553 = _5540;
                _5554 = _5541;
                _5555 = _5542;
                _5556 = _5543;
                _5557 = _5544;
                _5558 = _5545;
                _5559 = _5546;
                _5560 = _5547;
                _5561 = _5548;
                _5562 = _5549;
                _5563 = _5550;
                if ((_122 < 1000.0f) && (_3897 == 0.0h)) {
                  if (!(abs(_3395) > 0.99f)) {
                    _5571 = -0.0f - _3396;
                    _5573 = rsqrt(dot(float3(_5571, 0.0f, _3394), float3(_5571, 0.0f, _3394)));  // [sem: invLength]
                    _5577 = (_5573 * _5571);
                    _5578 = (_5573 * _3394);
                  } else {
                    _5577 = 1.0f;
                    _5578 = 0.0f;
                  }
                  _5580 = -0.0f - (_3395 * _5578);
                  _5583 = (_5578 * _3394) - (_5577 * _3396);
                  _5584 = _5577 * _3395;
                  _5586 = rsqrt(dot(float3(_5580, _5583, _5584), float3(_5580, _5583, _5584)));  // [sem: invLength]
                  // [sem: _3__36__0__0__g_blueNoise_sampleLod]
                  _5594 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_5577, 0.0f, _5578), float3(_3990, _3991, _3993)), dot(float3((_5586 * _5580), (_5583 * _5586), (_5586 * _5584)), float3(_3990, _3991, _3993))), 0.0f);
                  _5598 = _5594.x + -0.5f;
                  _5599 = _5594.y + -0.5f;
                  _5600 = _5594.z + -0.5f;
                  _5602 = rsqrt(dot(float3(_5598, _5599, _5600), float3(_5598, _5599, _5600)));  // [sem: invLength]
                  _5606 = (_5598 * _5602) + _4282;
                  _5607 = (_5599 * _5602) + _4283;
                  _5608 = (_5600 * _5602) + _4284;
                  _5610 = rsqrt(dot(float3(_5606, _5607, _5608), float3(_5606, _5607, _5608)));  // [sem: invLength]
                  _5611 = _5606 * _5610;
                  _5612 = _5607 * _5610;
                  _5613 = _5608 * _5610;
                  _5625 = abs(((_103 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
                  _5626 = abs(1.0f - ((_104 * 2.0f) * _bufferSizeAndInvSize.w));
                  _5629 = saturate(_5625 * _5625);  // [sem: expr_sat]
                  _5630 = saturate(_5626 * _5626);  // [sem: expr_sat]
                  _5644 = dot(float3((-0.0f - _5611), (-0.0f - _5612), (-0.0f - _5613)), float3(_4388, _4389, _4390));
                  _5646 = saturate(dot(float3(_5611, _5612, _5613), float3(_1760, _1761, _1762)));  // [sem: expr_sat]
                  _5648 = saturate(1.0f - _5163);  // [sem: expr_sat]
                  _5649 = _5648 * _5648;
                  _5651 = (_5649 * _5649) * _5648;
                  _5667 = 1.0f - ((_5164 * _5164) * 0.9999f);
                  _5674 = (max((((3.1830987e-05f / (_5667 * _5667)) * (0.5f / ((((_5646 * 0.9999f) + 0.0001f) * _5644) + (_5646 * ((_5644 * 0.9999f) + 0.0001f))))) * (lerp(_5651, 1.0f, 0.08f))), 0.0f) * saturate(_5644)) + (exp2(log2(saturate(dot(float3(_1760, _1761, _1762), float3(_5611, _5612, _5613)))) * 1024.0f) * 50.0f);
                  // [sem: expr_sat]
                  _5679 = saturate(1.0f - (_122 * 0.001f)) * ((1.0f - ((_5630 * _5630) * (3.0f - (_5630 * 2.0f)))) * (1.0f - ((_5629 * _5629) * (3.0f - (_5629 * 2.0f)))));
                  _5693 = _5555;
                  _5694 = _5556;
                  _5695 = _5557;
                  _5696 = _5558;
                  _5697 = _5559;
                  _5698 = _5560;
                  _5699 = ((((_5679 * _4392) * _5561) * _5674) + _5552);
                  _5700 = ((((_5679 * _4393) * _5562) * _5674) + _5553);
                  _5701 = ((((_5679 * _4394) * _5563) * _5674) + _5554);
                } else {
                  _5693 = _5555;
                  _5694 = _5556;
                  _5695 = _5557;
                  _5696 = _5558;
                  _5697 = _5559;
                  _5698 = _5560;
                  _5699 = _5552;
                  _5700 = _5553;
                  _5701 = _5554;
                }
              } else {
                _5693 = _5542;
                _5694 = _5543;
                _5695 = _5544;
                _5696 = _5545;
                _5697 = _5546;
                _5698 = _5547;
                _5699 = _5539;
                _5700 = _5540;
                _5701 = _5541;
              }
            } else {
              if (!(_4376 >= 999.9f)) {
                _5490 = ((max(0.002f, _4376) * 0.4f) / ((_4248 * 100.0f) + 0.1f));
              } else {
                _5490 = 1000.0f;
              }
              _5491 = _5490 * _5490;
              _5501 = (((_4248 * 0.25f) * (0.022082746f / (_5189 * _5189))) * max(0.0f, (0.3f - _4403))) * ((exp2(_5491 * -0.48089835f) * 3.0f) + exp2(_5491 * -1.442695f));
              _5525 = (_5501 + _5185);
              _5526 = (_5501 + _5186);
              _5527 = (_5501 + _5187);
              _5528 = _5525 * _4392;
              _5529 = _5526 * _4393;
              _5530 = _5527 * _4394;
              _5532 = (_5168 * _4392) * _3910;
              _5534 = (_5169 * _4393) * _3911;
              _5536 = (_5170 * _4394) * _3912;
              bool __branch_chain_5524;
              if (_4249 == 97) {
                _5552 = _5532;
                _5553 = _5534;
                _5554 = _5536;
                _5555 = _5528;
                _5556 = _5529;
                _5557 = _5530;
                _5558 = _5165;
                _5559 = _5166;
                _5560 = _5167;
                _5561 = _3910;
                _5562 = _3911;
                _5563 = _3912;
                __branch_chain_5524 = true;
              } else {
                _5539 = _5532;
                _5540 = _5534;
                _5541 = _5536;
                _5542 = _5528;
                _5543 = _5529;
                _5544 = _5530;
                _5545 = _5165;
                _5546 = _5166;
                _5547 = _5167;
                _5548 = _3910;
                _5549 = _3911;
                _5550 = _3912;
                if (_4353) {
                  _5552 = _5539;
                  _5553 = _5540;
                  _5554 = _5541;
                  _5555 = _5542;
                  _5556 = _5543;
                  _5557 = _5544;
                  _5558 = _5545;
                  _5559 = _5546;
                  _5560 = _5547;
                  _5561 = _5548;
                  _5562 = _5549;
                  _5563 = _5550;
                  __branch_chain_5524 = true;
                } else {
                  _5693 = _5542;
                  _5694 = _5543;
                  _5695 = _5544;
                  _5696 = _5545;
                  _5697 = _5546;
                  _5698 = _5547;
                  _5699 = _5539;
                  _5700 = _5540;
                  _5701 = _5541;
                  __branch_chain_5524 = false;
                }
              }
              if (__branch_chain_5524) {
                if ((_122 < 1000.0f) && (_3897 == 0.0h)) {
                  if (!(abs(_3395) > 0.99f)) {
                    _5571 = -0.0f - _3396;
                    _5573 = rsqrt(dot(float3(_5571, 0.0f, _3394), float3(_5571, 0.0f, _3394)));  // [sem: invLength]
                    _5577 = (_5573 * _5571);
                    _5578 = (_5573 * _3394);
                  } else {
                    _5577 = 1.0f;
                    _5578 = 0.0f;
                  }
                  _5580 = -0.0f - (_3395 * _5578);
                  _5583 = (_5578 * _3394) - (_5577 * _3396);
                  _5584 = _5577 * _3395;
                  _5586 = rsqrt(dot(float3(_5580, _5583, _5584), float3(_5580, _5583, _5584)));  // [sem: invLength]
                  // [sem: _3__36__0__0__g_blueNoise_sampleLod]
                  _5594 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_5577, 0.0f, _5578), float3(_3990, _3991, _3993)), dot(float3((_5586 * _5580), (_5583 * _5586), (_5586 * _5584)), float3(_3990, _3991, _3993))), 0.0f);
                  _5598 = _5594.x + -0.5f;
                  _5599 = _5594.y + -0.5f;
                  _5600 = _5594.z + -0.5f;
                  _5602 = rsqrt(dot(float3(_5598, _5599, _5600), float3(_5598, _5599, _5600)));  // [sem: invLength]
                  _5606 = (_5598 * _5602) + _4282;
                  _5607 = (_5599 * _5602) + _4283;
                  _5608 = (_5600 * _5602) + _4284;
                  _5610 = rsqrt(dot(float3(_5606, _5607, _5608), float3(_5606, _5607, _5608)));  // [sem: invLength]
                  _5611 = _5606 * _5610;
                  _5612 = _5607 * _5610;
                  _5613 = _5608 * _5610;
                  _5625 = abs(((_103 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
                  _5626 = abs(1.0f - ((_104 * 2.0f) * _bufferSizeAndInvSize.w));
                  _5629 = saturate(_5625 * _5625);  // [sem: expr_sat]
                  _5630 = saturate(_5626 * _5626);  // [sem: expr_sat]
                  _5644 = dot(float3((-0.0f - _5611), (-0.0f - _5612), (-0.0f - _5613)), float3(_4388, _4389, _4390));
                  _5646 = saturate(dot(float3(_5611, _5612, _5613), float3(_1760, _1761, _1762)));  // [sem: expr_sat]
                  _5648 = saturate(1.0f - _5163);  // [sem: expr_sat]
                  _5649 = _5648 * _5648;
                  _5651 = (_5649 * _5649) * _5648;
                  _5667 = 1.0f - ((_5164 * _5164) * 0.9999f);
                  _5674 = (max((((3.1830987e-05f / (_5667 * _5667)) * (0.5f / ((((_5646 * 0.9999f) + 0.0001f) * _5644) + (_5646 * ((_5644 * 0.9999f) + 0.0001f))))) * (lerp(_5651, 1.0f, 0.08f))), 0.0f) * saturate(_5644)) + (exp2(log2(saturate(dot(float3(_1760, _1761, _1762), float3(_5611, _5612, _5613)))) * 1024.0f) * 50.0f);
                  // [sem: expr_sat]
                  _5679 = saturate(1.0f - (_122 * 0.001f)) * ((1.0f - ((_5630 * _5630) * (3.0f - (_5630 * 2.0f)))) * (1.0f - ((_5629 * _5629) * (3.0f - (_5629 * 2.0f)))));
                  _5693 = _5555;
                  _5694 = _5556;
                  _5695 = _5557;
                  _5696 = _5558;
                  _5697 = _5559;
                  _5698 = _5560;
                  _5699 = ((((_5679 * _4392) * _5561) * _5674) + _5552);
                  _5700 = ((((_5679 * _4393) * _5562) * _5674) + _5553);
                  _5701 = ((((_5679 * _4394) * _5563) * _5674) + _5554);
                } else {
                  _5693 = _5555;
                  _5694 = _5556;
                  _5695 = _5557;
                  _5696 = _5558;
                  _5697 = _5559;
                  _5698 = _5560;
                  _5699 = _5552;
                  _5700 = _5553;
                  _5701 = _5554;
                }
              }
            }
          }
        } else {
          _5525 = _5185;
          _5526 = _5186;
          _5527 = _5187;
          _5528 = _5525 * _4392;
          _5529 = _5526 * _4393;
          _5530 = _5527 * _4394;
          _5532 = (_5168 * _4392) * _3910;
          _5534 = (_5169 * _4393) * _3911;
          _5536 = (_5170 * _4394) * _3912;
          bool __branch_chain_5524;
          if (_4249 == 97) {
            _5552 = _5532;
            _5553 = _5534;
            _5554 = _5536;
            _5555 = _5528;
            _5556 = _5529;
            _5557 = _5530;
            _5558 = _5165;
            _5559 = _5166;
            _5560 = _5167;
            _5561 = _3910;
            _5562 = _3911;
            _5563 = _3912;
            __branch_chain_5524 = true;
          } else {
            _5539 = _5532;
            _5540 = _5534;
            _5541 = _5536;
            _5542 = _5528;
            _5543 = _5529;
            _5544 = _5530;
            _5545 = _5165;
            _5546 = _5166;
            _5547 = _5167;
            _5548 = _3910;
            _5549 = _3911;
            _5550 = _3912;
            if (_4353) {
              _5552 = _5539;
              _5553 = _5540;
              _5554 = _5541;
              _5555 = _5542;
              _5556 = _5543;
              _5557 = _5544;
              _5558 = _5545;
              _5559 = _5546;
              _5560 = _5547;
              _5561 = _5548;
              _5562 = _5549;
              _5563 = _5550;
              __branch_chain_5524 = true;
            } else {
              _5693 = _5542;
              _5694 = _5543;
              _5695 = _5544;
              _5696 = _5545;
              _5697 = _5546;
              _5698 = _5547;
              _5699 = _5539;
              _5700 = _5540;
              _5701 = _5541;
              __branch_chain_5524 = false;
            }
          }
          if (__branch_chain_5524) {
            if ((_122 < 1000.0f) && (_3897 == 0.0h)) {
              if (!(abs(_3395) > 0.99f)) {
                _5571 = -0.0f - _3396;
                _5573 = rsqrt(dot(float3(_5571, 0.0f, _3394), float3(_5571, 0.0f, _3394)));  // [sem: invLength]
                _5577 = (_5573 * _5571);
                _5578 = (_5573 * _3394);
              } else {
                _5577 = 1.0f;
                _5578 = 0.0f;
              }
              _5580 = -0.0f - (_3395 * _5578);
              _5583 = (_5578 * _3394) - (_5577 * _3396);
              _5584 = _5577 * _3395;
              _5586 = rsqrt(dot(float3(_5580, _5583, _5584), float3(_5580, _5583, _5584)));  // [sem: invLength]
              // [sem: _3__36__0__0__g_blueNoise_sampleLod]
              _5594 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_5577, 0.0f, _5578), float3(_3990, _3991, _3993)), dot(float3((_5586 * _5580), (_5583 * _5586), (_5586 * _5584)), float3(_3990, _3991, _3993))), 0.0f);
              _5598 = _5594.x + -0.5f;
              _5599 = _5594.y + -0.5f;
              _5600 = _5594.z + -0.5f;
              _5602 = rsqrt(dot(float3(_5598, _5599, _5600), float3(_5598, _5599, _5600)));  // [sem: invLength]
              _5606 = (_5598 * _5602) + _4282;
              _5607 = (_5599 * _5602) + _4283;
              _5608 = (_5600 * _5602) + _4284;
              _5610 = rsqrt(dot(float3(_5606, _5607, _5608), float3(_5606, _5607, _5608)));  // [sem: invLength]
              _5611 = _5606 * _5610;
              _5612 = _5607 * _5610;
              _5613 = _5608 * _5610;
              _5625 = abs(((_103 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
              _5626 = abs(1.0f - ((_104 * 2.0f) * _bufferSizeAndInvSize.w));
              _5629 = saturate(_5625 * _5625);  // [sem: expr_sat]
              _5630 = saturate(_5626 * _5626);  // [sem: expr_sat]
              _5644 = dot(float3((-0.0f - _5611), (-0.0f - _5612), (-0.0f - _5613)), float3(_4388, _4389, _4390));
              _5646 = saturate(dot(float3(_5611, _5612, _5613), float3(_1760, _1761, _1762)));  // [sem: expr_sat]
              _5648 = saturate(1.0f - _5163);  // [sem: expr_sat]
              _5649 = _5648 * _5648;
              _5651 = (_5649 * _5649) * _5648;
              _5667 = 1.0f - ((_5164 * _5164) * 0.9999f);
              _5674 = (max((((3.1830987e-05f / (_5667 * _5667)) * (0.5f / ((((_5646 * 0.9999f) + 0.0001f) * _5644) + (_5646 * ((_5644 * 0.9999f) + 0.0001f))))) * (lerp(_5651, 1.0f, 0.08f))), 0.0f) * saturate(_5644)) + (exp2(log2(saturate(dot(float3(_1760, _1761, _1762), float3(_5611, _5612, _5613)))) * 1024.0f) * 50.0f);
              // [sem: expr_sat]
              _5679 = saturate(1.0f - (_122 * 0.001f)) * ((1.0f - ((_5630 * _5630) * (3.0f - (_5630 * 2.0f)))) * (1.0f - ((_5629 * _5629) * (3.0f - (_5629 * 2.0f)))));
              _5693 = _5555;
              _5694 = _5556;
              _5695 = _5557;
              _5696 = _5558;
              _5697 = _5559;
              _5698 = _5560;
              _5699 = ((((_5679 * _4392) * _5561) * _5674) + _5552);
              _5700 = ((((_5679 * _4393) * _5562) * _5674) + _5553);
              _5701 = ((((_5679 * _4394) * _5563) * _5674) + _5554);
            } else {
              _5693 = _5555;
              _5694 = _5556;
              _5695 = _5557;
              _5696 = _5558;
              _5697 = _5559;
              _5698 = _5560;
              _5699 = _5552;
              _5700 = _5553;
              _5701 = _5554;
            }
          }
        }
      }
    }
    _5708 = _5693 + _3898;
    _5709 = _5694 + _3899;
    _5710 = _5695 + _3900;
    _5713 = (uint)((uint)(_frameNumber.x)) * (uint)(13);
    [branch]
    if ((((int)((int)((uint)((uint)(_5713)) + (uint)((uint)(_100)))) | (int)((int)((uint)((uint)(_5713)) + (uint)((uint)(_102))))) & 31) == 0) {
      __3__38__0__1__g_sceneColorLightingOnlyForAwbUAV[int2(((int)(_100) >> 5), ((int)(_102) >> 5))] = float4((half)(half(_5708)), (half)(half(_5709)), (half)(half(_5710)), 1.0f);
    }
    _5728 = ((uint)(_4249 & 24) > (uint)23);
    if (_4321) {
      _5745 = saturate(exp2((_4316 * _4316) * (_122 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _5745 = select((_cavityParams.z > 0.0f), select(_187, 0.0f, _1751), 1.0f);  // [sem: expr_sat]
    }
    _5760 = select(_4318, 1.0f, (select((_cavityParams.x == 0.0f), 1.0f, _5745) * select((_186 && _5728), (1.0f - _1751), 1.0f)));
    _5764 = min(60000.0f, (_5760 * (((_3613 * _3350) * _3618) - min(0.0f, (-0.0f - _5699)))));
    _5765 = min(60000.0f, (_5760 * (((_3614 * _3351) * _3618) - min(0.0f, (-0.0f - _5700)))));
    _5766 = min(60000.0f, (_5760 * (((_3615 * _3352) * _3618) - min(0.0f, (-0.0f - _5701)))));
    _5769 = 1.0f - _renderParams.x;
    _5776 = half((_renderParams.x * _4200) + _5769);
    _5777 = half((_renderParams.x * _4201) + _5769);
    _5778 = half((_renderParams.x * _4202) + _5769);
    if (_4318 && (_renderParams2.x == 0.0f)) {
      _5794 = (half)(exp2((half)((half)(log2(_5776)) * 0.5h)));
      _5795 = (half)(exp2((half)((half)(log2(_5777)) * 0.5h)));
      _5796 = (half)(exp2((half)((half)(log2(_5778)) * 0.5h)));
    } else {
      _5794 = _5776;
      _5795 = _5777;
      _5796 = _5778;
    }
    _5801 = select(((_4317 == 54) || ((_4249 & -5) == 33)), 0.0f, _3897);
    _5802 = float(_5794);
    _5803 = float(_5795);
    _5804 = float(_5796);
    if (_4290) {
      _5811 = saturate(((_5803 + _5802) + _5804) * 1.2f);  // [sem: expr_sat]
    } else {
      _5811 = 1.0f;  // [sem: expr_sat]
    }
    _5812 = float(_5801);
    _5818 = (0.7f / min(max(max(max(_5802, _5803), _5804), 0.01f), 0.7f)) * _5811;
    _5825 = ((_5818 * _5802) + -0.04f) * _5812;
    _5826 = ((_5818 * _5803) + -0.04f) * _5812;
    _5827 = ((_5818 * _5804) + -0.04f) * _5812;
    _5828 = _5825 + 0.04f;
    _5829 = _5826 + 0.04f;
    _5830 = _5827 + 0.04f;
    if (_4347 || (_4413 || (_4412 || ((_4249 == 33) || (_4249 == 54))))) {
      // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
      _5842 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__3__40__0__0__g_samplerClamp, float2(min(0.99f, _1768), (1.0f - max(0.02f, float(_278)))), 0.0f);
      _5846 = _5842.x;
      _5847 = _5842.y;
    } else {
      _5846 = _3611;
      _5847 = _3612;
    }
    _5851 = (_5846 * _5828) + _5847;
    _5852 = (_5846 * _5829) + _5847;
    _5853 = (_5846 * _5830) + _5847;
    _5855 = (1.0f - _5846) - _5847;
    _5862 = ((0.96f - _5825) * 0.04761905f) + _5828;
    _5863 = ((0.96f - _5826) * 0.04761905f) + _5829;
    _5864 = ((0.96f - _5827) * 0.04761905f) + _5830;
    _5881 = saturate(1.0f - _3892);  // [sem: expr_sat]
    _5882 = (((_5851 * _5862) / (1.0f - (_5855 * _5862))) * _5855) * _5881;
    _5883 = (((_5852 * _5863) / (1.0f - (_5855 * _5863))) * _5855) * _5881;
    _5884 = (((_5853 * _5864) / (1.0f - (_5855 * _5864))) * _5855) * _5881;
    _5895 = float(1.0h - _5801);
    _5905 = half(((_5802 * _5895) * saturate((1.0f - _5851) - _5882)) + _5882);
    _5906 = half(((_5803 * _5895) * saturate((1.0f - _5852) - _5883)) + _5883);
    _5907 = half(((_5804 * _5895) * saturate((1.0f - _5853) - _5884)) + _5884);
    _5909 = float(_5905);
    _5910 = float(_5906);
    _5911 = float(_5907);
    if (_4249 == 65) {
      _5915 = max(1e-06f, _exposure2.x);
      _5923 = ((pow(_4406, 16.0f)) * 50.265484f) / (((_5915 * _5915) * 1e+06f) + 1.0f);
      _5940 = (((((_5909 * _5708) * _5923) - _5708) * _1717) + _5708);
      _5941 = (((((_5910 * _5709) * _5923) - _5709) * _1717) + _5709);
      _5942 = (((((_5911 * _5710) * _5923) - _5710) * _1717) + _5710);
    } else {
      _5940 = _5708;
      _5941 = _5709;
      _5942 = _5710;
    }
    _5946 = (min(65535.0f, _5696) + _3901) + (_5940 * _5909);
    _5947 = (min(65535.0f, _5697) + _3902) + (_5941 * _5910);
    _5948 = (min(65535.0f, _5698) + _3903) + (_5942 * _5911);
    _5977 = exp2((saturate(_1074) * 20.0f) + -8.0f) + -0.00390625f;
    _5978 = _5977 * select((_1071 < 0.04045f), (_1071 * 0.07739938f), exp2(log2((_1071 + 0.055f) * 0.94786733f) * 2.4f));
    _5979 = _5977 * select((_1072 < 0.04045f), (_1072 * 0.07739938f), exp2(log2((_1072 + 0.055f) * 0.94786733f) * 2.4f));
    _5980 = _5977 * select((_1073 < 0.04045f), (_1073 * 0.07739938f), exp2(log2((_1073 + 0.055f) * 0.94786733f) * 2.4f));
    _5993 = ((_5978 * 0.61312f) + (_5979 * 0.33951f)) + (_5980 * 0.04737f);
    _5994 = ((_5978 * 0.0702f) + (_5979 * 0.91636f)) + (_5980 * 0.01345f);
    _5995 = ((_5978 * 0.02062f) + (_5979 * 0.10958f)) + (_5980 * 0.8698f);
    if (_1005) {
      _6001 = (_5993 + _5946);
      _6002 = (_5994 + _5947);
      _6003 = (_5995 + _5948);
    } else {
      _6001 = _5946;
      _6002 = _5947;
      _6003 = _5948;
    }
    _6007 = _6001 + (_5764 * _5812);
    _6008 = _6002 + (_5765 * _5812);
    _6009 = _6003 + (_5766 * _5812);
    if (!(((_130 || _132) || _134) || _136)) {
      _6011 = QuadReadLaneAt(_6007, 0);
      _6012 = QuadReadLaneAt(_6008, 0);
      _6013 = QuadReadLaneAt(_6009, 0);
      _6014 = QuadReadLaneAt(_6007, 1);
      _6015 = QuadReadLaneAt(_6008, 1);
      _6016 = QuadReadLaneAt(_6009, 1);
      _6020 = QuadReadLaneAt(_6007, 2);
      _6021 = QuadReadLaneAt(_6008, 2);
      _6022 = QuadReadLaneAt(_6009, 2);
      _6026 = QuadReadLaneAt(_6007, 3);
      _6027 = QuadReadLaneAt(_6008, 3);
      _6028 = QuadReadLaneAt(_6009, 3);
      _6036 = ((((_6014 + _6011) + _6020) + _6026) * 0.25f);
      _6037 = ((((_6015 + _6012) + _6021) + _6027) * 0.25f);
      _6038 = ((((_6016 + _6013) + _6022) + _6028) * 0.25f);
    } else {
      _6036 = _6007;
      _6037 = _6008;
      _6038 = _6009;
    }
    [branch]
    if ((((int)(_102) | (int)(_100)) & 1) == 0) {
      _6043 = dot(float3(_6036, _6037, _6038), float3(0.212671f, 0.71516f, 0.072169f));
      __3__38__0__1__g_diffuseHalfPrevUAV[int2(((int)(_100) >> 1), ((int)(_102) >> 1))] = float4(min(60000.0f, _6036), min(60000.0f, _6037), min(60000.0f, _6038), min(60000.0f, select((_2333 != 0), (-0.0f - _6043), _6043)));
    }
    if (_5728) {
      _6064 = ((_5801 == 0.0h) && (((_5905 < 0.010002136h) && (_5906 < 0.010002136h)) && (_5907 < 0.010002136h)));
    } else {
      _6064 = false;
    }
    if ((_5728 || ((_4249 == 96) || (_4413 || ((_4249 & -4) == 64)))) || ((_122 <= 10.0f) && _4347)) {
      __3__38__0__1__g_sceneSpecularUAV[int2(_100, _102)] = float4(((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _5764)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _5765)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _5766)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _3364)))))));
      _6097 = _6001;
      _6098 = _6002;
      _6099 = _6003;
    } else {
      _6097 = (_6001 + _5764);
      _6098 = (_6002 + _5765);
      _6099 = (_6003 + _5766);
    }
    if (_1005 && ((uint)((int)(_4249) + (int)(-52)) > (uint)15)) {
      _6104 = dot(float3(_5993, _5994, _5995), float3(0.212671f, 0.71516f, 0.072169f));
      _6108 = max((max(_6104, 1.0f) / max(_6104, 0.1f)), 0.0f);
      _6119 = ((_6097 - _5993) + (_6108 * _5993));
      _6120 = ((_6098 - _5994) + (_6108 * _5994));
      _6121 = ((_6099 - _5995) + (_6108 * _5995));
    } else {
      _6119 = _6097;
      _6120 = _6098;
      _6121 = _6099;
    }
    _6122 = min(60000.0f, _6119);
    _6123 = min(60000.0f, _6120);
    _6124 = min(60000.0f, _6121);
    if (!_127) {
      [branch]
      if (_6064) {
        _6129 = __3__38__0__1__g_sceneColorUAV[int2(_100, _102)].x;
        _6130 = __3__38__0__1__g_sceneColorUAV[int2(_100, _102)].y;
        _6131 = __3__38__0__1__g_sceneColorUAV[int2(_100, _102)].z;
        _6136 = (_6129 + _6122);
        _6137 = (_6130 + _6123);
        _6138 = (_6131 + _6124);
      } else {
        _6136 = _6122;
        _6137 = _6123;
        _6138 = _6124;
      }
      if (!(_renderParams.y == 0.0f)) {
        _6147 = dot(float3(_6136, _6137, _6138), float3(0.212671f, 0.71516f, 0.072169f));
        _6148 = min((max(0.01f, _exposure3.w) * 4096.0f), _6147);
        _6152 = max(1e-09f, _6147);
        _6157 = ((_6148 * _6136) / _6152);
        _6158 = ((_6148 * _6137) / _6152);
        _6159 = ((_6148 * _6138) / _6152);
      } else {
        _6157 = _6136;
        _6158 = _6137;
        _6159 = _6138;
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
      if (FOLIAGE_AO_STRENGTH > 0.0f && ((uint)(_118 - 12) < 7u)) {
        half4 _rndx_shadow = __3__36__0__0__g_sceneShadowColor.Load(int3(_100, _102, 0));
        float _rndx_directRatio = saturate(dot(float3(_rndx_shadow.xyz), float3(0.333f, 0.333f, 0.333f)));
        float _rndx_ao = lerp(1.0f, saturate(_1695), _rndx_directRatio * FOLIAGE_AO_STRENGTH);
        _6157 *= _rndx_ao;
        _6158 *= _rndx_ao;
        _6159 *= _rndx_ao;
      }
      // RenoDX: <<< [Patch: FoliageFinalAO]
      __3__38__0__1__g_sceneColorUAV[int2(_100, _102)] = float4(_6157, _6158, _6159, 1.0f);
    }
  }
}
