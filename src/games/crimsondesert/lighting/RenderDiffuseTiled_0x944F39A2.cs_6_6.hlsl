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
  int _72;
  int _73;
  int4 _75;
  int _87;
  int _91;
  uint _98;
  uint _103;
  float _104;
  float _105;
  float _106;
  float _107;
  float _110;
  float _112;
  float _114;
  uint2 _117;
  int _119;
  float _120;
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
  int _464;
  float _513;
  float _514;
  int _515;
  int _516;
  half _517;
  half _518;
  half _519;
  half _520;
  int _596;
  float _820;
  float _821;
  bool _892;
  bool _951;
  float _1017;
  float _1018;
  float _1019;
  float _1020;
  float _1043;
  float _1044;
  float _1045;
  float _1046;
  float _1077;
  float _1078;
  float _1079;
  float _1080;
  float _1086;
  float _1087;
  float _1088;
  float _1089;
  half _1090;
  half _1161;
  int _1528;
  half _1529;
  float _1530;
  float _1531;
  float _1532;
  float _1533;
  float _1590;
  float _1591;
  half _1667;
  float _2033;
  float _2034;
  float _2035;
  float _2036;
  float _2037;
  float _2038;
  float _2039;
  int _2040;
  float _2041;
  float _2042;
  float _2043;
  half _2044;
  float _2045;
  int _2125;
  int _2126;
  bool _2133;
  bool _2134;
  float _2145;
  float _2156;
  float _2157;
  float _2169;
  half _2170;
  half _2171;
  half _2172;
  float _2173;
  half _2174;
  half _2175;
  float _2187;
  int _2213;
  float _2222;
  float _2265;
  float _2266;
  float _2372;
  float _2424;
  bool _2547;
  float _2552;
  float _2558;
  bool _2575;
  float _2580;
  float _2581;
  float _2587;
  float _2588;
  bool _2605;
  float _2610;
  float _2611;
  float _2612;
  float _2618;
  float _2619;
  float _2620;
  bool _2636;
  float _2639;
  float _2640;
  float _2641;
  bool _2642;
  float _2646;
  float _2647;
  float _2648;
  float _2649;
  int _2812;
  float _2813;
  float _2870;
  float _2882;
  float _2914;
  float _3002;
  float _3003;
  float _3004;
  float _3005;
  float _3014;
  float _3015;
  float _3016;
  float _3017;
  float _3018;
  float _3043;
  float _3067;
  int _3080;
  bool _3140;
  float _3141;
  float _3142;
  float _3143;
  int _3144;
  half _3145;
  float _3282;
  bool _3304;
  float _3346;
  float _3368;
  half _3395;
  float _3501;
  float _3550;
  float _3559;
  float _3657;
  float _3658;
  float _3659;
  float _3660;
  int _3661;
  int _3662;
  float _3663;
  float _3811;
  float _3812;
  float _3813;
  float _3814;
  float _3905;
  float _3915;
  float _3916;
  float _3917;
  float _3971;
  float _3972;
  float _4106;
  float _4107;
  float _4108;
  float _4161;
  float _4162;
  float _4163;
  float _4164;
  float _4165;
  int _4221;
  int _4222;
  float _4263;
  float _4264;
  float _4265;
  float _4266;
  float _4338;
  float _4339;
  float _4340;
  float _4341;
  float _4371;
  float _4372;
  float _4373;
  float _4390;
  float _4391;
  float _4392;
  float _4393;
  float _4423;
  float _4424;
  float _4425;
  float _4426;
  float _4427;
  float _4434;
  half _4435;
  half _4436;
  half _4437;
  half _4438;
  half _4439;
  float _4445;
  float _4446;
  float _4447;
  float _4448;
  float _4449;
  float _4450;
  half _4451;
  half _4452;
  half _4453;
  half _4454;
  half _4455;
  float _4456;
  half _4496;
  half _4497;
  half _4498;
  float _4517;
  float _4518;
  float _4519;
  float _4534;
  float _4535;
  float _4536;
  float _4537;
  float _4595;
  float _4685;
  float _4686;
  float _4687;
  int _4744;
  bool _4756;
  int _4771;
  int _4772;
  float _4791;
  float _4792;
  float _4793;
  float _4794;
  int _4795;
  float _4796;
  float _4841;
  float _4878;
  float _4885;
  float _4886;
  float _4887;
  int _4920;
  int _4921;
  float _4938;
  float _4939;
  float _4940;
  float _4997;
  float _5496;
  float _5497;
  float _5602;
  float _5603;
  float _5604;
  float _5824;
  float _5825;
  float _5826;
  float _5827;
  float _5828;
  float _5829;
  float _5830;
  float _5831;
  float _6082;
  float _6083;
  float _6189;
  float _6190;
  float _6191;
  float _6413;
  float _6414;
  float _6415;
  float _6416;
  float _6417;
  float _6418;
  float _6419;
  float _6420;
  float _6437;
  float _6438;
  float _6439;
  float _6440;
  float _6441;
  float _6442;
  float _6443;
  float _6444;
  float _6445;
  float _6446;
  float _6447;
  float _6460;
  float _6461;
  float _6462;
  float _6538;
  float _6539;
  float _6889;
  float _6890;
  float _7026;
  float _7027;
  float _7158;
  float _7200;
  float _7201;
  float _7334;
  float _7335;
  float _7445;
  float _7446;
  float _7447;
  float _7448;
  float _7449;
  float _7450;
  float _7451;
  float _7452;
  float _7453;
  float _7488;
  half _7548;
  half _7549;
  half _7550;
  half _7555;
  half _7556;
  half _7557;
  half _7558;
  float _7568;
  float _7605;
  float _7606;
  float _7697;
  float _7698;
  float _7699;
  float _7764;
  float _7765;
  float _7766;
  float _7802;
  float _7803;
  float _7804;
  bool _7830;
  int _7842;
  int _7865;
  float _7866;
  float _7867;
  float _7868;
  float _7888;
  float _7889;
  float _7890;
  float _7906;
  float _7907;
  float _7908;
  float _7927;
  float _7928;
  float _7929;
  uint4 _143;
  float4 _149;
  half _158;
  half _162;
  half _167;
  half _171;
  half _176;
  half _180;
  uint _183;
  bool _184;
  bool _185;
  float _189;
  float _193;
  float _197;
  float _199;
  half _201;
  half _203;
  half _205;
  half _212;
  half _218;
  float _221;
  float _224;
  float _228;
  float _230;
  float _231;
  float _232;
  float _233;
  float _235;
  float _238;
  float _239;
  float _240;
  float _241;
  float _242;
  float _245;
  float _248;
  float _251;
  half _258;
  half _265;
  half _270;
  half _272;
  half _273;
  half _274;
  half _275;
  half _277;
  half _279;
  half _281;
  half _287;
  half _293;
  half _299;
  bool _310;
  half _313;
  uint _331;
  uint _339;
  uint _347;
  uint _355;
  uint _363;
  uint _371;
  uint _379;
  uint _387;
  uint _395;
  uint _403;
  uint _411;
  uint _419;
  uint _427;
  uint _435;
  uint _443;
  uint _451;
  int _484;
  int _494;
  int4 _523;
  int _528;
  int _529;
  int _530;
  int _531;
  float _537;
  float _548;
  float _557;
  float _566;
  float _575;
  float _576;
  float _577;
  float _578;
  float _579;
  int _580;
  int _581;
  int _582;
  int _583;
  float _597;
  float _599;
  bool _600;
  float _606;
  int _607;
  bool _608;
  bool _610;
  int4 _611;
  float _620;
  float _626;
  float _632;
  float _634;
  float _635;
  float _636;
  float _637;
  float _642;
  float _648;
  float _654;
  float _656;
  float _661;
  float _667;
  float _673;
  float _675;
  float _680;
  float _686;
  float _692;
  float _694;
  bool _695;
  float _696;
  float _704;
  float _712;
  float _720;
  float _728;
  float _733;
  float _747;
  float _761;
  float _775;
  float _789;
  float _822;
  float _823;
  float _824;
  float _825;
  float _826;
  float _827;
  float _828;
  float _829;
  bool _838;
  float _841;
  float _844;
  float _847;
  float _850;
  float _851;
  float _852;
  float _854;
  float _856;
  float _858;
  float _860;
  float _893;
  float _896;
  float _899;
  float _902;
  float _905;
  half4 _907;
  uint _911;
  half4 _912;
  uint _916;
  half4 _917;
  half4 _921;
  float4 _926;
  float4 _930;
  float4 _934;
  float4 _938;
  float _953;
  float _955;
  float _967;
  float _976;
  float _985;
  float _994;
  float _996;
  float _997;
  float _998;
  float _999;
  bool _1000;
  bool _1001;
  bool _1002;
  float4 _1011;
  uint _1025;
  int _1030;
  float4 _1034;
  uint _1062;
  int _1064;
  float4 _1068;
  float _1093;
  float _1095;
  float _1097;
  float _1099;
  float4 _1102;
  float4 _1106;
  float4 _1110;
  float4 _1114;
  float _1126;
  float _1135;
  float _1144;
  float _1146;
  float _1147;
  float _1148;
  float _1149;
  float _1162;
  float _1165;
  float _1166;
  float _1167;
  float _1168;
  float _1169;
  float _1170;
  float _1171;
  float _1172;
  float _1178;
  float _1180;
  float _1182;
  float _1184;
  float _1186;
  float _1188;
  float _1190;
  float _1197;
  float _1199;
  float _1200;
  float _1201;
  float _1202;
  float _1203;
  float _1204;
  float _1208;
  float _1217;
  float _1223;
  float _1224;
  float _1228;
  float _1229;
  float _1234;
  float _1235;
  float _1236;
  float _1237;
  float _1251;
  float _1253;
  float _1255;
  float _1256;
  float _1260;
  float _1261;
  float _1262;
  float _1278;
  float _1287;
  float _1296;
  float _1305;
  float _1308;
  float2 _1315;
  float2 _1322;
  float2 _1329;
  float _1332;
  float _1333;
  float _1334;
  float _1335;
  float _1336;
  float _1337;
  float _1338;
  float _1339;
  float _1340;
  float _1341;
  float _1342;
  float _1343;
  float _1344;
  float _1345;
  float _1346;
  float _1347;
  float _1348;
  float _1349;
  float _1350;
  float _1351;
  float _1352;
  float _1353;
  float _1354;
  float _1355;
  float _1357;
  float _1358;
  float _1359;
  float _1360;
  float _1362;
  float _1363;
  float _1364;
  float _1365;
  float _1366;
  float _1367;
  float _1374;
  float _1375;
  float _1376;
  float _1377;
  float _1379;
  float _1383;
  float _1387;
  float _1390;
  float _1398;
  float _1406;
  float _1414;
  float _1425;
  float _1436;
  float _1447;
  float _1453;
  float _1473;
  float _1493;
  float _1513;
  float _1514;
  bool _1534;
  float _1542;
  float _1573;
  float _1575;
  float _1577;
  float _1578;
  float _1579;
  float _1593;
  float4 _1608;
  float4 _1612;
  float4 _1616;
  float4 _1620;
  float _1632;
  float _1641;
  float _1650;
  float _1652;
  float _1653;
  float _1654;
  float _1655;
  float _1668;
  float _1671;
  float _1672;
  float _1673;
  float _1674;
  float _1675;
  float _1676;
  float _1677;
  float _1678;
  float _1684;
  float _1686;
  float _1688;
  float _1690;
  float _1692;
  float _1694;
  float _1696;
  float _1703;
  float _1705;
  float _1706;
  float _1707;
  float _1708;
  float _1709;
  float _1710;
  float _1714;
  float _1723;
  float _1729;
  float _1730;
  float _1734;
  float _1735;
  float _1740;
  float _1741;
  float _1742;
  float _1743;
  float _1757;
  float _1759;
  float _1761;
  float _1762;
  float _1766;
  float _1767;
  float _1768;
  float _1784;
  float _1793;
  float _1802;
  float _1811;
  float _1814;
  float2 _1821;
  float2 _1828;
  float2 _1835;
  float _1838;
  float _1839;
  float _1840;
  float _1841;
  float _1842;
  float _1843;
  float _1844;
  float _1845;
  float _1846;
  float _1847;
  float _1848;
  float _1849;
  float _1850;
  float _1851;
  float _1852;
  float _1853;
  float _1854;
  float _1855;
  float _1856;
  float _1857;
  float _1858;
  float _1859;
  float _1860;
  float _1861;
  float _1863;
  float _1864;
  float _1865;
  float _1866;
  float _1868;
  float _1869;
  float _1870;
  float _1871;
  float _1872;
  float _1873;
  float _1880;
  float _1881;
  float _1882;
  float _1883;
  float _1885;
  float _1889;
  float _1893;
  float _1896;
  float _1904;
  float _1912;
  float _1920;
  float _1931;
  float _1942;
  float _1953;
  float _1959;
  float _1979;
  float _1999;
  float _2019;
  float _2059;
  float _2073;
  float _2087;
  half2 _2089;
  half2 _2092;
  half2 _2095;
  half2 _2098;
  float _2111;
  int _2116;
  float _2136;
  bool _2138;
  bool _2140;
  uint _2147;
  half _2158;
  bool _2159;
  int _2176;
  bool _2177;
  bool _2178;
  bool _2179;
  float _2180;
  float _2181;
  float _2182;
  float _2183;
  float _2188;
  int _2189;
  bool _2190;
  float _2234;
  float2 _2238;
  float _2268;
  float _2270;
  float _2272;
  float _2280;
  float _2284;
  float _2287;
  int _2289;
  int _2291;
  float _2292;
  float _2293;
  float _2296;
  float _2299;
  int4 _2301;
  int _2312;
  float _2375;
  float _2378;
  float _2380;
  float _2383;
  float _2387;
  float _2390;
  float _2393;
  float _2396;
  bool _2399;
  float _2400;
  float _2403;
  bool _2405;
  float _2429;
  float _2440;
  float _2451;
  float _2462;
  float _2473;
  float _2474;
  float _2475;
  float _2476;
  float _2477;
  float _2482;
  float _2486;
  float _2490;
  float _2494;
  float _2498;
  int _2500;
  int _2501;
  int _2502;
  int _2503;
  bool _2505;
  bool _2509;
  bool _2513;
  bool _2517;
  bool _2519;
  bool _2521;
  bool _2522;
  bool _2524;
  float _2550;
  float _2578;
  float _2608;
  int4 _2651;
  float _2660;
  float _2666;
  float _2672;
  float _2674;
  float _2679;
  float _2684;
  float _2690;
  float _2696;
  float _2698;
  float _2703;
  float _2708;
  float _2714;
  float _2720;
  float _2722;
  float _2727;
  float _2732;
  float _2738;
  float _2744;
  float _2746;
  float _2751;
  float _2754;
  float _2755;
  float _2756;
  float _2757;
  float _2758;
  float _2760;
  float _2762;
  float _2764;
  float _2766;
  float _2772;
  float _2778;
  float _2784;
  float _2790;
  int _2793;
  int _2794;
  int _2802;
  int _2803;
  float _2823;
  uint _2824;
  half4 _2826;
  uint _2831;
  half4 _2832;
  half4 _2837;
  half4 _2842;
  float _2847;
  float _2856;
  float _2861;
  float _2874;
  float _2877;
  bool _2878;
  bool _2883;
  float _2884;
  float _2886;
  float4 _2889;
  float _2894;
  float _2896;
  float _2897;
  float _2898;
  float _2899;
  float _2900;
  float _2917;
  float _2932;
  float _2937;
  float _2955;
  float _2973;
  float _2981;
  float _2988;
  float _3021;
  float _3024;
  float _3027;
  float _3033;
  float _3034;
  float _3035;
  float _3044;
  float _3050;
  float _3054;
  float _3058;
  float _3062;
  bool _3081;
  half _3086;
  uint _3096;
  int _3101;
  float4 _3105;
  uint _3125;
  int _3127;
  float4 _3131;
  float _3147;
  float _3149;
  float _3151;
  float _3153;
  float _3158;
  float _3161;
  float _3164;
  float _3171;
  float _3172;
  float _3185;
  float _3186;
  float _3187;
  float _3188;
  float _3193;
  float _3196;
  float _3199;
  float _3202;
  float _3214;
  float _3222;
  float _3230;
  float _3238;
  float _3250;
  float _3262;
  float _3274;
  int _3283;
  bool _3284;
  float _3305;
  float _3306;
  float _3311;
  float _3337;
  float _3348;
  float _3354;
  float _3375;
  half _3377;
  float _3396;
  float _3397;
  float _3398;
  float _3402;
  float _3406;
  float _3410;
  float _3414;
  float _3434;
  float _3441;
  float _3448;
  float _3455;
  float _3462;
  float _3472;
  float _3475;
  float _3491;
  float _3513;
  float _3523;
  float _3533;
  float _3534;
  float _3535;
  float _3568;
  bool _3570;
  float _3577;
  float _3582;
  int _3584;
  int _3586;
  float _3587;
  float _3588;
  int4 _3598;
  int _3605;
  float _3610;
  float _3615;
  float _3620;
  float _3625;
  float _3640;
  float _3641;
  float _3642;
  float _3643;
  bool _3664;
  uint _3665;
  half4 _3667;
  float _3676;
  uint _3677;
  half4 _3678;
  float _3687;
  half4 _3688;
  float _3697;
  half4 _3698;
  float _3707;
  float _3714;
  float _3728;
  float _3729;
  float _3743;
  float _3757;
  float _3775;
  float _3783;
  float _3790;
  float _3817;
  float _3818;
  float _3819;
  float _3823;
  float _3838;
  float _3853;
  float _3868;
  float _3880;
  float _3885;
  bool _3886;
  int _3888;
  bool _3908;
  float _3909;
  float _3918;
  float _3919;
  float _3920;
  bool _3923;
  float _3924;
  float _3925;
  float _3926;
  float2 _3941;
  float2 _3947;
  float _3952;
  float _3955;
  float _3957;
  float _3965;
  float _3967;
  float _3974;
  float _3977;
  float _3978;
  float _3980;
  float _3983;
  float _3985;
  float _3987;
  float4 _3995;
  float _3999;
  float _4000;
  float _4001;
  float _4003;
  float _4005;
  float _4007;
  float _4009;
  float _4011;
  float2 _4016;
  float _4028;
  float _4038;
  float2 _4043;
  float2 _4056;
  float2 _4062;
  float _4066;
  float _4068;
  float _4081;
  float _4095;
  float2 _4113;
  float _4123;
  float2 _4130;
  float2 _4136;
  float _4140;
  float _4142;
  float2 _4151;
  float _4168;
  float _4169;
  float _4170;
  float _4171;
  float _4197;
  float4 _4200;
  bool _4230;
  float4 _4257;
  float _4276;
  float _4279;
  float _4284;
  float _4289;
  float _4294;
  float _4300;
  float _4306;
  float _4314;
  float _4334;
  float _4345;
  bool _4348;
  float _4350;
  float _4374;
  float _4375;
  float _4376;
  float _4394;
  float _4395;
  float _4396;
  float _4399;
  float _4402;
  float _4410;
  float _4411;
  half4 _4458;
  float _4463;
  float _4464;
  float _4465;
  uint _4468;
  float _4474;
  float _4480;
  float _4486;
  float _4488;
  bool _4501;
  bool _4508;
  float _4513;
  float _4514;
  float _4515;
  float _4540;
  float _4542;
  float _4545;
  float _4547;
  float _4553;
  float _4557;
  float _4564;
  float _4565;
  float _4572;
  float2 _4607;
  float _4616;
  float _4630;
  float _4640;
  float _4649;
  float _4650;
  float _4658;
  float _4670;
  float _4673;
  float _4679;
  float _4690;
  float _4709;
  float _4716;
  float _4722;
  float _4728;
  float _4734;
  float _4735;
  float _4736;
  float _4737;
  float _4746;
  float _4747;
  bool _4748;
  float _4773;
  float _4774;
  float _4775;
  uint16_t _4777;
  float _4798;
  float _4799;
  float _4800;
  float _4801;
  float _4816;
  float _4818;
  float _4821;
  float _4823;
  float _4825;
  float _4826;
  float _4827;
  float _4828;
  bool _4829;
  bool _4830;
  bool _4831;
  float _4833;
  bool _4834;
  float _4847;
  float _4851;
  float _4855;
  float _4859;
  float _4860;
  int _4861;
  bool _4862;
  bool _4865;
  float _4879;
  float _4888;
  float _4889;
  bool _4891;
  float _4893;
  float _4894;
  float _4895;
  bool _4896;
  float _4926;
  float _4943;
  float _4949;
  float _4955;
  float _4961;
  float _4962;
  float _4963;
  float _4964;
  float _4966;
  float _4967;
  float _4968;
  float _4969;
  float _4970;
  float _4971;
  float _4973;
  float _4975;
  float _4976;
  float _4978;
  bool _4979;
  bool _4980;
  bool _4981;
  float _4999;
  float _5001;
  float4 _5021;
  float _5025;
  float _5026;
  float _5027;
  float _5028;
  float _5029;
  float _5030;
  float _5036;
  float _5038;
  float _5040;
  float _5042;
  float _5044;
  float _5046;
  float _5048;
  float _5055;
  float _5059;
  float _5062;
  float _5063;
  float _5064;
  float _5065;
  float _5066;
  float _5068;
  float _5070;
  float _5076;
  float _5077;
  float _5078;
  float _5082;
  float _5087;
  float _5093;
  float _5094;
  float _5098;
  float _5099;
  float _5104;
  float _5105;
  float _5106;
  float _5107;
  float _5121;
  float _5123;
  float _5125;
  float _5126;
  float _5130;
  float _5131;
  float _5132;
  float _5148;
  float _5149;
  float _5165;
  float _5166;
  float _5169;
  float _5171;
  float _5177;
  float _5184;
  float _5185;
  float _5192;
  float _5193;
  float _5200;
  float _5201;
  float _5213;
  float _5225;
  float _5237;
  float _5246;
  float _5255;
  float _5264;
  bool _5267;
  bool _5268;
  float _5280;
  float _5282;
  float _5293;
  float _5296;
  float _5299;
  float _5300;
  float _5302;
  float _5305;
  float _5306;
  float _5307;
  float _5311;
  float _5313;
  float _5317;
  float _5318;
  float _5319;
  float _5320;
  float _5332;
  float _5336;
  float _5338;
  float _5340;
  float _5342;
  float _5343;
  float _5347;
  float _5359;
  float _5361;
  float _5362;
  float _5372;
  float _5388;
  float _5420;
  float _5422;
  float _5424;
  float _5426;
  float _5427;
  float _5428;
  float _5429;
  float _5431;
  float _5432;
  float _5433;
  float _5434;
  bool _5442;
  float _5448;
  float _5450;
  float _5452;
  float _5454;
  float _5455;
  float _5456;
  float _5457;
  float _5459;
  float _5460;
  float _5461;
  float _5462;
  float _5474;
  float _5476;
  float _5478;
  float _5480;
  float _5481;
  float _5482;
  float _5483;
  float _5485;
  float _5486;
  float _5487;
  float _5488;
  float _5515;
  float _5516;
  float _5517;
  float _5518;
  float _5521;
  float _5522;
  float _5523;
  float _5524;
  float _5525;
  float _5556;
  float _5559;
  float _5560;
  float _5562;
  float _5565;
  float _5566;
  float _5568;
  float _5570;
  float _5572;
  float _5575;
  float _5579;
  float _5591;
  bool _5605;
  float _5610;
  float _5621;
  float _5635;
  float _5639;
  float _5651;
  float _5652;
  float _5657;
  float _5662;
  float _5667;
  float _5670;
  float _5672;
  float _5674;
  float _5676;
  float _5677;
  float _5678;
  float _5679;
  float _5681;
  float _5682;
  float _5683;
  float _5684;
  float _5685;
  float _5686;
  float _5687;
  float _5689;
  float _5691;
  float _5694;
  float _5705;
  float _5735;
  float _5746;
  float _5762;
  float _5764;
  float _5766;
  float _5768;
  float _5769;
  float _5770;
  float _5771;
  float _5773;
  float _5774;
  float _5775;
  float _5776;
  float _5777;
  float _5778;
  float _5779;
  float _5781;
  float _5783;
  float _5786;
  float _5797;
  bool _5848;
  bool _5849;
  float _5861;
  float _5863;
  float _5864;
  float _5865;
  float _5866;
  float _5877;
  float _5880;
  float _5883;
  float _5884;
  float _5886;
  float _5889;
  float _5890;
  float _5891;
  float _5895;
  float _5897;
  float _5901;
  float _5902;
  float _5903;
  float _5904;
  float _5916;
  float _5920;
  float _5922;
  float _5924;
  float _5926;
  float _5927;
  float _5931;
  float _5943;
  float _5944;
  float _5946;
  float _5947;
  float _5957;
  float _5973;
  float _6005;
  float _6007;
  float _6009;
  float _6011;
  float _6012;
  float _6013;
  float _6014;
  float _6016;
  float _6017;
  float _6018;
  float _6019;
  bool _6027;
  float _6033;
  float _6035;
  float _6037;
  float _6039;
  float _6040;
  float _6041;
  float _6042;
  float _6044;
  float _6045;
  float _6046;
  float _6047;
  float _6060;
  float _6062;
  float _6064;
  float _6066;
  float _6067;
  float _6068;
  float _6069;
  float _6071;
  float _6072;
  float _6073;
  float _6074;
  float _6101;
  float _6102;
  float _6103;
  float _6104;
  float _6107;
  float _6108;
  float _6109;
  float _6110;
  float _6111;
  float _6142;
  float _6145;
  float _6146;
  float _6148;
  float _6151;
  float _6152;
  float _6154;
  float _6156;
  float _6158;
  float _6161;
  float _6162;
  float _6166;
  float _6178;
  bool _6192;
  float _6197;
  float _6208;
  float _6222;
  float _6226;
  float _6238;
  float _6239;
  float _6240;
  float _6245;
  float _6250;
  float _6255;
  float _6258;
  float _6260;
  float _6262;
  float _6264;
  float _6265;
  float _6266;
  float _6267;
  float _6269;
  float _6270;
  float _6271;
  float _6272;
  float _6273;
  float _6274;
  float _6275;
  float _6277;
  float _6279;
  float _6282;
  float _6293;
  float _6323;
  float _6334;
  float _6350;
  float _6352;
  float _6354;
  float _6356;
  float _6357;
  float _6358;
  float _6359;
  float _6361;
  float _6362;
  float _6363;
  float _6364;
  float _6365;
  float _6366;
  float _6367;
  float _6369;
  float _6371;
  float _6372;
  float _6375;
  float _6386;
  float _6452;
  float _6464;
  float _6466;
  float _6467;
  float _6469;
  float _6471;
  float _6473;
  float _6475;
  float _6476;
  float _6478;
  float _6480;
  float _6484;
  float _6516;
  float _6517;
  float _6518;
  float _6519;
  float _6521;
  float _6523;
  float _6534;
  float _6541;
  float _6544;
  float _6545;
  float _6547;
  float4 _6555;
  float _6559;
  float _6560;
  float _6561;
  float _6563;
  float _6565;
  float _6567;
  float _6569;
  float _6571;
  float _6572;
  float _6573;
  float _6574;
  float _6578;
  float _6582;
  float _6584;
  float _6586;
  float _6590;
  float _6592;
  float _6594;
  float _6595;
  float _6597;
  float _6600;
  float _6641;
  float _6653;
  float _6656;
  float _6659;
  float _6662;
  float _6665;
  float _6668;
  float2 _6674;
  float2 _6680;
  float2 _6686;
  float _6689;
  float _6690;
  float _6691;
  float _6692;
  float _6693;
  float _6694;
  float _6695;
  float _6696;
  float _6697;
  float _6698;
  float _6699;
  float _6700;
  float _6701;
  float _6702;
  float _6703;
  float _6704;
  float _6705;
  float _6706;
  float _6707;
  float _6708;
  float _6709;
  float _6710;
  float _6711;
  float _6712;
  float _6714;
  float _6715;
  float _6716;
  float _6717;
  float _6719;
  float _6720;
  float _6721;
  float _6722;
  float _6723;
  float _6724;
  float _6734;
  float _6735;
  float _6736;
  float _6738;
  float _6742;
  float _6746;
  float _6749;
  float _6757;
  float _6765;
  float _6773;
  float _6784;
  float _6795;
  float _6806;
  float _6808;
  float _6811;
  float _6827;
  float _6829;
  float _6845;
  float _6847;
  float _6863;
  float _6865;
  float _6867;
  float _6869;
  float _6871;
  float _6872;
  float _6873;
  float _6874;
  float _6883;
  float _6885;
  float _6892;
  float _6895;
  float _6896;
  float _6898;
  float4 _6906;
  float _6910;
  float _6911;
  float _6912;
  float _6914;
  float _6916;
  float _6918;
  float _6920;
  float _6922;
  float _6923;
  float _6924;
  float _6925;
  float _6929;
  float _6933;
  float _6935;
  float _6937;
  float _6941;
  float _6943;
  float _6945;
  float _6946;
  float _6948;
  float _6951;
  float _6992;
  float _7004;
  float _7006;
  float _7008;
  float _7010;
  float _7011;
  float _7012;
  float _7020;
  float _7022;
  float _7029;
  float _7032;
  float _7033;
  float _7035;
  float4 _7043;
  float _7047;
  float _7048;
  float _7049;
  float _7051;
  float _7053;
  float _7055;
  float _7057;
  float _7059;
  float _7060;
  float _7061;
  float _7062;
  float _7066;
  float _7070;
  float _7072;
  float _7074;
  float _7078;
  float _7080;
  float _7082;
  float _7083;
  float _7085;
  float _7088;
  float _7129;
  float _7159;
  float _7173;
  float _7177;
  float _7178;
  float _7179;
  float _7180;
  float _7182;
  float _7184;
  float _7194;
  float _7196;
  float _7203;
  float _7206;
  float _7207;
  float _7209;
  float4 _7217;
  float _7221;
  float _7222;
  float _7223;
  float _7225;
  float _7227;
  float _7229;
  float _7231;
  float _7233;
  float _7234;
  float _7235;
  float _7236;
  float _7240;
  float _7244;
  float _7246;
  float _7248;
  float _7252;
  float _7254;
  float _7256;
  float _7257;
  float _7259;
  float _7262;
  float _7303;
  float _7311;
  float _7312;
  float _7313;
  float _7314;
  float _7316;
  float _7318;
  float _7328;
  float _7330;
  float _7337;
  float _7340;
  float _7341;
  float _7343;
  float4 _7351;
  float _7355;
  float _7356;
  float _7357;
  float _7359;
  float _7361;
  float _7363;
  float _7365;
  float _7367;
  float _7368;
  float _7369;
  float _7370;
  float _7374;
  float _7378;
  float _7380;
  float _7382;
  float _7386;
  float _7388;
  float _7390;
  float _7391;
  float _7393;
  float _7396;
  float _7437;
  float _7454;
  float _7455;
  float _7456;
  uint _7459;
  bool _7474;
  float _7497;
  float _7504;
  float _7511;
  float _7518;
  float _7521;
  half _7524;
  half _7527;
  half _7530;
  float _7559;
  float _7560;
  float _7561;
  float _7569;
  float _7575;
  float _7578;
  float _7581;
  float _7584;
  float _7585;
  float _7586;
  float _7587;
  float2 _7601;
  float _7608;
  float _7610;
  float _7612;
  float _7614;
  float _7617;
  float _7620;
  float _7623;
  float _7630;
  float _7631;
  float _7636;
  float _7641;
  float _7643;
  half _7650;
  half _7657;
  half _7664;
  float _7665;
  float _7666;
  float _7667;
  float _7672;
  float _7680;
  float _7703;
  float _7707;
  float _7711;
  float _7716;
  float _7725;
  float _7734;
  float _7743;
  float _7748;
  float _7753;
  float _7758;
  float _7768;
  float _7770;
  float _7772;
  float _7777;
  float _7778;
  float _7779;
  float _7780;
  float _7781;
  float _7782;
  float _7783;
  float _7784;
  float _7785;
  float _7786;
  float _7787;
  float _7788;
  float _7809;
  float _7873;
  float _7877;
  float _7891;
  float _7892;
  float _7893;
  float _7899;
  float _7900;
  float _7901;
  float _7913;
  float _7918;
  float _7919;
  int _70[4];
  _72 = (int)(SV_GroupID.x) & 15;
  _73 = (uint)((uint)(_72)) >> 2;
  _75 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 7))]);
  _70[0] = _75.x;
  _70[1] = _75.y;
  _70[2] = _75.z;
  _70[3] = _75.w;
  _87 = _70[(((uint)(SV_GroupID.x) >> 5) & 3)];
  _91 = select((((int)(SV_GroupID.x) & 16) == 0), _87, ((uint)((uint)(_87)) >> 16));
  _98 = (uint)((uint)((uint)((int)((int)(_72) - (int)((int)(_73) << 2)) << 3)) + (uint)(SV_GroupThreadID.x)) + (uint)((uint)(((int)((uint)((uint)(_91)) << 5)) & 8160));
  _103 = (uint)((uint)((uint)((int)(_73) << 3)) + (uint)(SV_GroupThreadID.y)) + (uint)((uint)(((uint)((uint)(_91)) >> 3) & 8160));
  _104 = (float)((uint)((uint)(_98)));
  _105 = (float)((uint)((uint)(_103)));
  _106 = _104 + 0.5f;
  _107 = _105 + 0.5f;
  _110 = _106 * _bufferSizeAndInvSize.z;
  _112 = _107 * _bufferSizeAndInvSize.w;
  _114 = __3__36__0__0__g_depth.Load(int3(_98, _103, 0));  // [sem: _3__36__0__0__g_depth_load]
  _117 = __3__36__0__0__g_stencil.Load(int3(_98, _103, 0));  // [sem: _3__36__0__0__g_stencil_load]
  _119 = _117.x & 127;  // [sem: _3__36__0__0__g_stencil_load_derived]
  _120 = max(1e-07f, _114.x);  // [sem: _3__36__0__0__g_depth_load_derived]
  _123 = _nearFarProj.x / _120;
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
    _143 = __3__36__0__0__g_baseColor.Load(int3(_98, _103, 0));  // [sem: _3__36__0__0__g_baseColor_load]
    _149 = __3__36__0__0__g_normal.Load(int3(_98, _103, 0));  // [sem: _3__36__0__0__g_normal_load]
    _158 = half(((float)((uint)((uint)(((uint)((uint)(_143.x)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _162 = half(((float)((uint)((uint)(_143.x & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _167 = half(((float)((uint)((uint)(((uint)((uint)(_143.y)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _171 = half(((float)((uint)((uint)(_143.y & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _176 = half(((float)((uint)((uint)(((uint)((uint)(_143.z)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _180 = half(((float)((uint)((uint)(_143.z & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _183 = (uint)((_149.w * 3.0f) + 0.5f);  // [sem: _3__36__0__0__g_normal_load_derived]
    _184 = (_183 == 1);
    _185 = (_183 == 3);
    _189 = (saturate(_149.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _193 = (saturate(_149.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _197 = (saturate(_149.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _199 = rsqrt(dot(float3(_189, _193, _197), float3(_189, _193, _197)));  // [sem: invLength]
    _201 = half(_199 * _189);
    _203 = half(_199 * _193);
    _205 = half(_197 * _199);
    // [sem: _3__36__0__0__g_baseColor_load_derived]
    _212 = ((half)((half)(half(((float)((uint)((uint)(((uint)((uint)(_143.w)) >> 8) & 255)))) * 0.003921569f)) * 2.0h)) + -1.0h;
    _218 = ((half)((half)(half(((float)((uint)((uint)(_143.w & 255)))) * 0.003921569f)) * 2.0h)) + -1.0h;  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _221 = float(_212 + _218) * 0.5f;
    _224 = float(_212 - _218) * 0.5f;
    _228 = (1.0f - abs(_221)) - abs(_224);
    _230 = rsqrt(dot(float3(_221, _224, _228), float3(_221, _224, _228)));  // [sem: invLength]
    _231 = float(_201);
    _232 = float(_203);
    _233 = float(_205);
    _235 = select((_205 >= 0.0h), 1.0f, -1.0f);
    _238 = -0.0f - (1.0f / (_235 + _233));
    _239 = _232 * _238;
    _240 = _239 * _231;
    _241 = _235 * _231;
    _242 = -0.0f - _232;
    _245 = float(half(_230 * _221));
    _248 = float(half(_230 * _224));
    _251 = float(half(_230 * _228));
    _258 = half(mad(_251, _231, mad(_248, _240, ((((_241 * _231) * _238) + 1.0f) * _245))));
    _265 = half(mad(_251, _232, mad(_248, ((_239 * _232) + _235), ((_245 * _235) * _240))));
    _270 = half(mad(_251, _233, mad(_248, _242, (-0.0f - (_241 * _245)))));
    _272 = rsqrt((half)(dot(half3(_258, _265, _270), half3(_258, _265, _270))));  // [sem: invLength]
    _273 = _272 * _258;
    _274 = _272 * _265;
    _275 = _272 * _270;
    _277 = saturate((half)(_158 * _158));  // [sem: expr_sat]
    _279 = saturate((half)(_162 * _162));  // [sem: expr_sat]
    _281 = saturate((half)(_167 * _167));  // [sem: expr_sat]
    // [sem: expr_sat]
    _287 = saturate((half)(((half)(((half)(_279 * 0.3395996h)) + ((half)(_277 * 0.61328125h)))) + ((half)(_281 * 0.04736328h))));
    // [sem: expr_sat]
    _293 = saturate((half)(((half)(((half)(_279 * 0.9165039h)) + ((half)(_277 * 0.07019043h)))) + ((half)(_281 * 0.013450623h))));
    // [sem: expr_sat]
    _299 = saturate((half)(((half)(((half)(_279 * 0.109558105h)) + ((half)(_277 * 0.020614624h)))) + ((half)(_281 * 0.8696289h))));
    if ((uint)((int)(_119) + (int)(-65)) < (uint)2) {
      _513 = _112;
      _514 = _110;
      _515 = ((int)((int)((uint)((uint)(max((int)(1), (int)(_103)))) + (uint)(-1))) >> 1);
      _516 = ((int)((int)((uint)((uint)(max((int)(1), (int)(_98)))) + (uint)(-1))) >> 1);
      _517 = _205;
      _518 = _203;
      _519 = _201;
      _520 = _171;
    } else {
      _310 = (_119 == 29);
      _313 = select(((_119 == 24) || _310), 0.0f, _171);
      if (_310) {
        _331 = (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524)))) + (uint)((uint)((_bufferSizeAndInvSize.x * ((float)((int)(_103)))) + ((float)((int)(_98)))));
        _339 = (uint)((uint)((((int)((uint)((uint)((uint)(_331)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_331)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_331)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
        _347 = (uint)((uint)((((int)((uint)((uint)((uint)(_339)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_339)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_339)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_331));
        _355 = (uint)((uint)((((int)((uint)((uint)((uint)(_347)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_347)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_347)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_339));
        _363 = (uint)((uint)((((int)((uint)((uint)((uint)(_355)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_355)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_355)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_347));
        _371 = (uint)((uint)((((int)((uint)((uint)((uint)(_363)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_363)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_363)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_355));
        _379 = (uint)((uint)((((int)((uint)((uint)((uint)(_371)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_371)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_371)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_363));
        _387 = (uint)((uint)((((int)((uint)((uint)((uint)(_379)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_379)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_379)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_371));
        _395 = (uint)((uint)((((int)((uint)((uint)((uint)(_387)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_387)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_387)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_379));
        _403 = (uint)((uint)((((int)((uint)((uint)((uint)(_395)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_395)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_395)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_387));
        _411 = (uint)((uint)((((int)((uint)((uint)((uint)(_403)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_403)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_403)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_395));
        _419 = (uint)((uint)((((int)((uint)((uint)((uint)(_411)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_411)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_411)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_403));
        _427 = (uint)((uint)((((int)((uint)((uint)((uint)(_419)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_419)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_419)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_411));
        _435 = (uint)((uint)((((int)((uint)((uint)((uint)(_427)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_427)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_427)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_419));
        _443 = (uint)((uint)((((int)((uint)((uint)((uint)(_435)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_435)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_435)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_427));
        _451 = (uint)((uint)((((int)((uint)((uint)((uint)(_443)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_443)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_443)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_435));
        if ((_443 & 16777215) == 0) {
          _464 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_451)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_451)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_451)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_443))));
        } else {
          _464 = _443;
        }
        _484 = (int)(min(max(((((saturate(1.0f - (_123 * 0.015625f)) * 4.0f) * ((((float)((uint)((uint)(((int)((uint)((uint)(_464)) * (uint)(48271))) & 16777215)))) * 1.1920929e-07f) + -1.0f)) + ((float)((int)((int)((uint)((uint)(max((int)(1), (int)(_98)))) + (uint)(-1)))))) * 0.5f), 0.0f), ((_bufferSizeAndInvSize.x * 0.5f) + -2.0f)));
        _494 = (int)(min(max((((float)((int)((int)((uint)((uint)(max((int)(1), (int)(_103)))) + (uint)(-1))))) * 0.5f), 0.0f), ((_bufferSizeAndInvSize.y * 0.5f) + -2.0f)));
        _513 = ((_bufferSizeAndInvSize.w * 2.0f) * (((float)((int)(_494))) + 0.5f));
        _514 = ((_bufferSizeAndInvSize.z * 2.0f) * (((float)((int)(_484))) + 0.5f));
        _515 = _494;
        _516 = _484;
        _517 = _275;
        _518 = _274;
        _519 = _273;
        _520 = _313;
      } else {
        _513 = _112;
        _514 = _110;
        _515 = ((int)((int)((uint)((uint)(max((int)(1), (int)(_103)))) + (uint)(-1))) >> 1);
        _516 = ((int)((int)((uint)((uint)(max((int)(1), (int)(_98)))) + (uint)(-1))) >> 1);
        _517 = _275;
        _518 = _274;
        _519 = _273;
        _520 = _313;
      }
    }
    _523 = __3__36__0__0__g_normalDepthHalf.GatherGreen(__3__40__0__0__g_samplerPoint, float2(_514, _513));  // [sem: _3__36__0__0__g_normalDepthHalf_gather]
    _528 = (uint)((uint)(_523.w)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _529 = (uint)((uint)(_523.z)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _530 = (uint)((uint)(_523.x)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _531 = (uint)((uint)(_523.y)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _537 = (max(0.0f, (_123 + -1.0f)) * 0.05f) * _temporalReprojectionParams.y;
    _548 = max(0.0f, (abs(_123 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_523.w & 16777215)))) * 5.960465e-08f)))) - _537));
    _557 = max(0.0f, (abs(_123 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_523.z & 16777215)))) * 5.960465e-08f)))) - _537));
    _566 = max(0.0f, (abs(_123 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_523.x & 16777215)))) * 5.960465e-08f)))) - _537));
    _575 = max(0.0f, (abs(_123 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_523.y & 16777215)))) * 5.960465e-08f)))) - _537));
    _576 = _548 * _548;
    _577 = _557 * _557;
    _578 = _566 * _566;
    _579 = _575 * _575;
    _580 = _528 & 127;
    _581 = _529 & 127;
    _582 = _530 & 127;
    _583 = _531 & 127;
    if ((uint)_119 > (uint)11) {
      _596 = ((int)(uint)((int)(((uint)_119 < (uint)21) || (_119 == 107))));
    } else {
      if (!(_119 == 6)) {
        _596 = ((int)(uint)((int)(_119 == 7)));
      } else {
        _596 = 1;
      }
    }
    _597 = _123 * _123;
    _599 = (_597 * 0.2f) + 1.0f;
    _600 = (_596 != 0);
    _606 = select(_600, -7.213475f, -72.13475f) * (1.0f / ((select(_600, 0.05f, 0.01f) * _597) + 1.0f));
    _607 = _117.x & 126;  // [sem: _3__36__0__0__g_stencil_load_derived]
    _608 = (_607 == 66);
    _610 = _608 || (_119 == 53);
    _611 = __3__36__0__0__g_normalDepthHalf.GatherRed(__3__40__0__0__g_samplerPoint, float2(_514, _513));  // [sem: _3__36__0__0__g_normalDepthHalf_gather]
    _620 = min(1.0f, ((((float)((uint)((uint)(_611.w & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _626 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_611.w)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _632 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_611.w)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _634 = rsqrt(dot(float3(_620, _626, _632), float3(_620, _626, _632)));  // [sem: invLength]
    _635 = float(_519);
    _636 = float(_518);
    _637 = float(_517);
    _642 = min(1.0f, ((((float)((uint)((uint)(_611.z & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _648 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_611.z)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _654 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_611.z)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _656 = rsqrt(dot(float3(_642, _648, _654), float3(_642, _648, _654)));  // [sem: invLength]
    _661 = min(1.0f, ((((float)((uint)((uint)(_611.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _667 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_611.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _673 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_611.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _675 = rsqrt(dot(float3(_661, _667, _673), float3(_661, _667, _673)));  // [sem: invLength]
    _680 = min(1.0f, ((((float)((uint)((uint)(_611.y & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _686 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_611.y)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _692 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_611.y)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _694 = rsqrt(dot(float3(_680, _686, _692), float3(_680, _686, _692)));  // [sem: invLength]
    _695 = (_119 == 29);
    _696 = select(_695, 8192.0f, 256.0f);
    _704 = exp2(log2(saturate(dot(float3(_635, _636, _637), float3((_634 * _620), (_634 * _626), (_634 * _632))))) * _696);
    _712 = exp2(log2(saturate(dot(float3(_635, _636, _637), float3((_656 * _642), (_656 * _648), (_656 * _654))))) * _696);
    _720 = exp2(log2(saturate(dot(float3(_635, _636, _637), float3((_675 * _661), (_675 * _667), (_675 * _673))))) * _696);
    _728 = exp2(log2(saturate(dot(float3(_635, _636, _637), float3((_694 * _680), (_694 * _686), (_694 * _692))))) * _696);
    _733 = 1.0f / max(1e-06f, (((_712 + _704) + _720) + _728));
    _747 = ((_704 * ((float)((bool)(!(_610 ^ (((_528 & 126) == 66) || (_580 == 53))))))) * _733) * select((_576 > _599), 0.0f, exp2(_606 * _576));
    _761 = ((_712 * ((float)((bool)(!(_610 ^ (((_529 & 126) == 66) || (_581 == 53))))))) * _733) * select((_577 > _599), 0.0f, exp2(_606 * _577));
    _775 = ((_720 * ((float)((bool)(!(_610 ^ (((_530 & 126) == 66) || (_582 == 53))))))) * _733) * select((_578 > _599), 0.0f, exp2(_606 * _578));
    _789 = ((_728 * ((float)((bool)(!(_610 ^ (((_531 & 126) == 66) || (_583 == 53))))))) * _733) * select((_579 > _599), 0.0f, exp2(_606 * _579));
    if (_695) {
      _820 = abs(((((float)((int)(_103))) * 0.5f) + -0.25f) - ((float)((int)(_515))));
      _821 = abs(((((float)((int)(_98))) * 0.5f) + -0.25f) - ((float)((int)(_516))));
    } else {
      _820 = (((float)((uint)((uint)((uint)((uint)(_103)) - (uint)((uint)((uint)(_515)) << 1)) - (uint)((uint)(((uint)((uint)(_frameNumber.x)) >> 1) & 1))))) * 0.5f);
      _821 = (((float)((uint)((uint)((uint)((uint)(_98)) - (uint)((uint)((uint)(_516)) << 1)) - (uint)((uint)(_frameNumber.x & 1))))) * 0.5f);
    }
    _822 = saturate(_821);  // [sem: _821_sat]
    _823 = saturate(_820);  // [sem: _820_sat]
    _824 = 1.0f - _822;
    _825 = 1.0f - _823;
    _826 = _825 * _824;
    _827 = _825 * _822;
    _828 = _824 * _823;
    _829 = _823 * _822;
    _838 = (_761 == 0.0f) && ((_747 == 0.0f) && ((_775 == 0.0f) && ((_119 != 29) && (_789 == 0.0f))));
    _841 = saturate(_826 * select(_838, 1.0f, _747));  // [sem: expr_sat]
    _844 = saturate(_827 * select(_838, 1.0f, _761));  // [sem: expr_sat]
    _847 = saturate(_828 * select(_838, 1.0f, _775));  // [sem: expr_sat]
    _850 = saturate(_829 * select(_838, 1.0f, _789));  // [sem: expr_sat]
    _851 = dot(float4(_841, _844, _847, _850), float4(1.0f, 1.0f, 1.0f, 1.0f));
    _852 = max(0.0f, _851);
    _854 = saturate(_841 / _852);  // [sem: expr_sat]
    _856 = saturate(_844 / _852);  // [sem: expr_sat]
    _858 = saturate(_847 / _852);  // [sem: expr_sat]
    _860 = saturate(_850 / _852);  // [sem: expr_sat]
    if (((_581 == 107) || ((_581 == 6) || (((uint)((int)(_580) + (int)(-12)) < (uint)9) || ((_580 == 107) || ((_580 == 6) || (((uint)((int)(_582) + (int)(-12)) < (uint)9) || ((_582 == 107) || ((_582 == 6) || (((_583 == 6) || (_583 == 107)) || ((uint)((int)(_583) + (int)(-12)) < (uint)9)))))))))) || (((uint)((int)(_581) + (int)(-12)) < (uint)9) || _600)) {
      _892 = (_851 < 0.0001f);
    } else {
      _892 = false;
    }
    _893 = (float)((bool)(_892));
    _896 = (_893 * (_826 - _854)) + _854;
    _899 = (_893 * (_827 - _856)) + _856;
    _902 = (_893 * (_828 - _858)) + _858;
    _905 = (_893 * (_829 - _860)) + _860;
    half4 _907 = __3__36__0__0__g_diffuseResult.Load(int3(_516, _515, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    _911 = (uint)((uint)(_516)) + (uint)(1);
    half4 _912 = __3__36__0__0__g_diffuseResult.Load(int3(_911, _515, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    _916 = (uint)((uint)(_515)) + (uint)(1);
    half4 _917 = __3__36__0__0__g_diffuseResult.Load(int3(_516, _916, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    half4 _921 = __3__36__0__0__g_diffuseResult.Load(int3(_911, _916, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    _926 = __3__36__0__0__g_specularResult.Load(int3(_516, _515, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _930 = __3__36__0__0__g_specularResult.Load(int3(_911, _515, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _934 = __3__36__0__0__g_specularResult.Load(int3(_516, _916, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _938 = __3__36__0__0__g_specularResult.Load(int3(_911, _916, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    if (!((_119 == 26) || ((uint)((int)(_119) + (int)(-27)) < (uint)2))) {
      _951 = (((uint)((int)(_119) + (int)(-105)) < (uint)2) || _185);
    } else {
      _951 = true;
    }
    _953 = (_110 * 2.0f) + -1.0f;
    _955 = 1.0f - (_112 * 2.0f);
    _967 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _120, mad((_invViewProjRelative[3].y), _955, ((_invViewProjRelative[3].x) * _953)));
    _976 = (mad((_invViewProjRelative[0].z), _120, mad((_invViewProjRelative[0].y), _955, ((_invViewProjRelative[0].x) * _953))) + (_invViewProjRelative[0].w)) / _967;
    _985 = (mad((_invViewProjRelative[1].z), _120, mad((_invViewProjRelative[1].y), _955, ((_invViewProjRelative[1].x) * _953))) + (_invViewProjRelative[1].w)) / _967;
    _994 = (mad((_invViewProjRelative[2].z), _120, mad((_invViewProjRelative[2].y), _955, ((_invViewProjRelative[2].x) * _953))) + (_invViewProjRelative[2].w)) / _967;
    _996 = rsqrt(dot(float3(_976, _985, _994), float3(_976, _985, _994)));  // [sem: invLength]
    _997 = _996 * _976;
    _998 = _996 * _985;
    _999 = _996 * _994;
    _1000 = (_119 == 33);
    _1001 = (_119 == 54);
    _1002 = (_119 == 55);
    if ((_1002 || (_610 || (_1000 || ((_607 == 64) || _1001)))) || _951) {
      _1011 = __3__36__0__0__g_character.Load(int3(_98, _103, 0));  // [sem: _3__36__0__0__g_character_load]
      _1017 = _1011.w;  // [sem: _3__36__0__0__g_character_load_derived]
      _1018 = _1011.z;  // [sem: _3__36__0__0__g_character_load_derived]
      _1019 = _1011.y;  // [sem: _3__36__0__0__g_character_load_derived]
      _1020 = _1011.x;  // [sem: _3__36__0__0__g_character_load_derived]
    } else {
      _1017 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
      _1018 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
      _1019 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
      _1020 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
    }
    if (!_1000) {
      if (_1001) {
        _1025 = (uint)((_1018 * 255.0f) + 0.5f);
        if ((_1025 & 112) == 0) {
          _1528 = 52;
          _1529 = _520;
          _1530 = 0.0f;
          _1531 = 0.0f;
          _1532 = 0.0f;
          _1533 = 0.0f;
          _1534 = (_1528 == 53);
          if ((_1528 == 67) || _1534) {
            _1542 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 127)));
            if (!(float(_1529) > (frac(frac(dot(float2(((_1542 * 32.665f) + _104), ((_1542 * 11.815f) + _105)), float2(0.06711056f, 0.00583715f))) * 52.982918f) * 0.2f))) {
              if ((_1528 & 126) == 66) {
                _2033 = _1530;
                _2034 = _1531;
                _2035 = _1532;
                _2036 = _1533;
                _2037 = max(0.01f, float(_299));
                _2038 = max(0.01f, float(_293));
                _2039 = max(0.01f, float(_287));
                _2040 = _1528;
                _2041 = ((_1018 * 2.0f) + -1.0f);
                _2042 = ((_1019 * 2.0f) + -1.0f);
                _2043 = ((_1020 * 2.0f) + -1.0f);
                _2044 = 0.0h;
                _2045 = 1.0f;
              } else {
                if (_1534) {
                  _1573 = (_1020 * 2.0f) + -1.0f;
                  _1575 = (_1019 * 2.0f) + -1.0f;
                  _1577 = 1.0f - abs(_1573);
                  _1578 = abs(_1575);
                  _1579 = _1577 - _1578;
                  if (!(_1579 >= 0.0f)) {
                    _1590 = (_1577 * select((_1575 >= 0.0f), 1.0f, -1.0f));
                    _1591 = ((1.0f - _1578) * select((_1573 >= 0.0f), 1.0f, -1.0f));
                  } else {
                    _1590 = _1575;
                    _1591 = _1573;
                  }
                  _1593 = rsqrt(dot(float3(_1591, _1590, _1579), float3(_1591, _1590, _1579)));  // [sem: invLength]
                  _2033 = _1530;
                  _2034 = _1531;
                  _2035 = _1532;
                  _2036 = _1533;
                  _2037 = max(0.01f, float(_299));
                  _2038 = max(0.01f, float(_293));
                  _2039 = max(0.01f, float(_287));
                  _2040 = 53;
                  _2041 = (_1593 * _1579);
                  _2042 = (_1593 * _1590);
                  _2043 = (_1593 * _1591);
                  _2044 = 0.0h;
                  _2045 = 1.0f;
                } else {
                  _2033 = _1530;
                  _2034 = _1531;
                  _2035 = _1532;
                  _2036 = _1533;
                  _2037 = 0.0f;
                  _2038 = 0.0f;
                  _2039 = 0.0f;
                  _2040 = _1528;
                  _2041 = _637;
                  _2042 = _636;
                  _2043 = _635;
                  _2044 = 0.0h;
                  _2045 = 1.0f;
                }
              }
            } else {
              _2033 = _1530;
              _2034 = _1531;
              _2035 = _1532;
              _2036 = _1533;
              _2037 = 0.0f;
              _2038 = 0.0f;
              _2039 = 0.0f;
              _2040 = 52;
              _2041 = _637;
              _2042 = _636;
              _2043 = _635;
              _2044 = 0.0h;
              _2045 = 1.0f;
            }
          } else {
            if ((_1528 & 126) == 66) {
              _1608 = __3__36__0__0__g_bentCone.Load(int3(_516, _515, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1612 = __3__36__0__0__g_bentCone.Load(int3(_911, _515, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1616 = __3__36__0__0__g_bentCone.Load(int3(_516, _916, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1620 = __3__36__0__0__g_bentCone.Load(int3(_911, _916, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1632 = (((((_1612.x * _899) + (_1608.x * _896)) + (_1616.x * _902)) + (_1620.x * _905)) * 2.0f) + -1.0f;
              _1641 = (((((_1612.y * _899) + (_1608.y * _896)) + (_1616.y * _902)) + (_1620.y * _905)) * 2.0f) + -1.0f;
              _1650 = (((((_1612.z * _899) + (_1608.z * _896)) + (_1616.z * _902)) + (_1620.z * _905)) * 2.0f) + -1.0f;
              _1652 = rsqrt(dot(float3(_1632, _1641, _1650), float3(_1632, _1641, _1650)));  // [sem: invLength]
              _1653 = _1632 * _1652;
              _1654 = _1641 * _1652;
              _1655 = _1650 * _1652;
              if (!(_renderParams.z > 0.0f)) {
                if (!(_renderParams2.y > 0.0f)) {
                  _1667 = (half)(saturate((half)(_176 + 0.15002441h)));
                } else {
                  _1667 = _176;
                }
              } else {
                _1667 = _176;
              }
              _1668 = float(_1667);
              _1671 = float(_287);
              _1672 = float(_293);
              _1673 = float(_299);
              _1674 = dot(float3(_635, _636, _637), float3(_1653, _1654, _1655));
              _1675 = -0.0f - _997;
              _1676 = -0.0f - _998;
              _1677 = -0.0f - _999;
              _1678 = dot(float3(_635, _636, _637), float3(_1675, _1676, _1677));
              _1684 = cos(abs(asin(_1678) - asin(_1674)) * 0.5f);
              _1686 = _1653 - (_1674 * _635);
              _1688 = _1654 - (_1674 * _636);
              _1690 = _1655 - (_1674 * _637);
              _1692 = _1675 - (_1678 * _635);
              _1694 = _1676 - (_1678 * _636);
              _1696 = _1677 - (_1678 * _637);
              _1703 = dot(float3(_1686, _1688, _1690), float3(_1692, _1694, _1696)) * rsqrt((dot(float3(_1686, _1688, _1690), float3(_1686, _1688, _1690)) * dot(float3(_1692, _1694, _1696), float3(_1692, _1694, _1696))) + 0.0001f);
              _1705 = min(max(_1668, 0.09803922f), 1.0f);
              _1706 = _1705 * _1705;
              _1707 = _1706 * 0.5f;
              _1708 = _1706 * 2.0f;
              _1709 = _1678 + _1674;
              _1710 = _1709 - _bevelParams.y;
              _1714 = 1.0f / ((1.19f / _1684) + (_1684 * 0.36f));
              _1723 = ((_1714 * (0.6f - (_1703 * 0.8f))) + 1.0f) * sqrt(saturate((_1703 * 0.5f) + 0.5f));
              _1729 = 1.0f - (sqrt(saturate(1.0f - (_1723 * _1723))) * _1684);
              _1730 = _1729 * _1729;
              _1734 = 0.9534794f - ((_1730 * _1730) * (_1729 * 0.9534794f));
              _1735 = _1723 * _1714;
              _1740 = (sqrt(1.0f - (_1735 * _1735)) * 0.5f) / _1684;
              _1741 = log2(_1671);
              _1742 = log2(_1672);
              _1743 = log2(_1673);
              _1757 = ((_1734 * _1734) * (exp2((((_1710 * _1710) * -0.5f) / (_1707 * _1707)) * 1.442695f) / (_1706 * 1.2533141f))) * exp2(-5.741926f - (_1703 * 5.265837f));
              _1759 = _1709 - (_bevelParams.y * 4.0f);
              _1761 = 1.0f - (_1684 * 0.5f);
              _1762 = _1761 * _1761;
              _1766 = (_1762 * _1762) * (0.9534794f - (_1684 * 0.4767397f));
              _1767 = 0.9534794f - _1766;
              _1768 = 0.8f / _1684;
              _1784 = (((_1767 * _1767) * (_1766 + 0.046520565f)) * (exp2((((_1759 * _1759) * -0.5f) / (_1708 * _1708)) * 1.442695f) / (_1706 * 5.0132565f))) * exp2((_1703 * 24.525816f) + -24.208424f);
              _1793 = min(0.0f, (-0.0f - ((exp2(_1741 * _1740) * _1757) + (exp2(_1768 * _1741) * _1784))));
              _1802 = min(0.0f, (-0.0f - ((exp2(_1742 * _1740) * _1757) + (exp2(_1768 * _1742) * _1784))));
              _1811 = min(0.0f, (-0.0f - ((exp2(_1743 * _1740) * _1757) + (exp2(_1768 * _1743) * _1784))));
              _1814 = saturate(abs(dot(float3(_1653, _1654, _1655), float3(_635, _636, _637))));  // [sem: expr_sat]
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1821 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1814, _1668, saturate(sqrt(exp2(_1741 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1828 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1814, _1668, saturate(sqrt(exp2(_1742 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1835 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1814, _1668, saturate(sqrt(exp2(_1743 * 1.5f)))), 0.0f);
              _1838 = min(0.99f, _1821.x);
              _1839 = min(0.99f, _1828.x);
              _1840 = min(0.99f, _1835.x);
              _1841 = min(0.99f, _1821.y);
              _1842 = min(0.99f, _1828.y);
              _1843 = min(0.99f, _1835.y);
              _1844 = _1838 * _1838;
              _1845 = _1839 * _1839;
              _1846 = _1840 * _1840;
              _1847 = _1841 * _1841;
              _1848 = _1842 * _1842;
              _1849 = _1843 * _1843;
              _1850 = _1847 * _1841;
              _1851 = _1848 * _1842;
              _1852 = _1849 * _1843;
              _1853 = 1.0f - _1844;
              _1854 = 1.0f - _1845;
              _1855 = 1.0f - _1846;
              _1856 = _1853 * _1853;
              _1857 = _1854 * _1854;
              _1858 = _1855 * _1855;
              _1859 = _1856 * _1853;
              _1860 = _1857 * _1854;
              _1861 = _1858 * _1855;
              _1863 = min(max(_1668, 0.18f), 0.6f);
              _1864 = _1863 * _1863;
              _1865 = _1864 * 0.25f;
              _1866 = _1864 * 4.0f;
              _1868 = (_1839 + _1838) + _1840;
              _1869 = _1838 / _1868;
              _1870 = _1839 / _1868;
              _1871 = _1840 / _1868;
              _1872 = dot(float3(_1864, _1865, _1866), float3(_1869, _1870, _1871));
              _1873 = _1872 * _1872;
              _1880 = asin(min(max(_1674, -1.0f), 1.0f)) + asin(min(max(_1678, -1.0f), 1.0f));
              _1881 = _1880 * 0.5f;
              _1882 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1869, _1870, _1871));
              _1883 = _1882 * _1882;
              _1885 = (_1842 + _1841) + _1843;
              _1889 = dot(float3(_1864, _1865, _1866), float3((_1841 / _1885), (_1842 / _1885), (_1843 / _1885)));
              _1893 = sqrt((_1889 * _1889) + (_1873 * 2.0f));
              _1896 = (_1889 * 3.0f) + (_1872 * 2.0f);
              _1904 = (((_1850 + _1841) * ((_1844 * 0.7f) + 1.0f)) * _1893) / ((_1896 * _1850) + _1841);
              _1912 = (((_1851 + _1842) * ((_1845 * 0.7f) + 1.0f)) * _1893) / ((_1896 * _1851) + _1842);
              _1920 = (((_1852 + _1843) * ((_1846 * 0.7f) + 1.0f)) * _1893) / ((_1896 * _1852) + _1843);
              _1931 = _1881 - (((_1883 * (((_1844 * 4.0f) * _1847) + (_1856 * 2.0f))) * (1.0f - ((_1847 * 2.0f) / _1856))) / _1859);
              _1942 = _1881 - (((_1883 * (((_1845 * 4.0f) * _1848) + (_1857 * 2.0f))) * (1.0f - ((_1848 * 2.0f) / _1857))) / _1860);
              _1953 = _1881 - (((_1883 * (((_1846 * 4.0f) * _1849) + (_1858 * 2.0f))) * (1.0f - ((_1849 * 2.0f) / _1858))) / _1861);
              _1959 = exp2((((_1880 * -0.25f) * _1881) / _1873) * 1.442695f) * 1.4f;
              _1979 = ((((((_1841 * _1844) / _1853) + ((_1850 * _1844) / _1859)) * 4.3982296f) * exp2((((_1931 * _1931) * -0.5f) / ((_1904 * _1904) + _1873)) * 1.442695f)) + ((((_1821.x + _1793) * 0.25f) - _1793) * 6.2831855f)) * _1959;
              _1999 = ((((((_1842 * _1845) / _1854) + ((_1851 * _1845) / _1860)) * 4.3982296f) * exp2((((_1942 * _1942) * -0.5f) / ((_1912 * _1912) + _1873)) * 1.442695f)) + ((((_1828.x + _1802) * 0.25f) - _1802) * 6.2831855f)) * _1959;
              _2019 = ((((((_1843 * _1846) / _1855) + ((_1852 * _1846) / _1861)) * 4.3982296f) * exp2((((_1953 * _1953) * -0.5f) / ((_1920 * _1920) + _1873)) * 1.442695f)) + ((((_1835.x + _1811) * 0.25f) - _1811) * 6.2831855f)) * _1959;
              _2033 = _1530;
              _2034 = _1531;
              _2035 = _1532;
              _2036 = _1533;
              _2037 = max(0.01f, (lerp(_2019, _1673, 0.125f)));
              _2038 = max(0.01f, (lerp(_1999, _1672, 0.125f)));
              _2039 = max(0.01f, (lerp(_1979, _1671, 0.125f)));
              _2040 = _1528;
              _2041 = _637;
              _2042 = _636;
              _2043 = _635;
              _2044 = _1529;
              _2045 = 0.0f;
            } else {
              _2033 = _1530;
              _2034 = _1531;
              _2035 = _1532;
              _2036 = _1533;
              _2037 = 0.0f;
              _2038 = 0.0f;
              _2039 = 0.0f;
              _2040 = _1528;
              _2041 = _637;
              _2042 = _636;
              _2043 = _635;
              _2044 = _1529;
              _2045 = 0.0f;
            }
          }
        } else {
          _1030 = ((uint)((uint)(_1025)) >> 4) & 7;
          if (!(_1030 == 0)) {
            _1034 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_1030) + (int)(1)))];
            _1043 = _1034.x;
            _1044 = _1034.y;
            _1045 = (((float)((uint)((uint)(_1025 & 15)))) * 0.06666667f);
            _1046 = min((1.0f - _1034.y), _1034.x);
          } else {
            _1043 = 0.0f;
            _1044 = 0.0f;
            _1045 = 0.0f;
            _1046 = 0.0f;
          }
          _1086 = _1043;
          _1087 = _1044;
          _1088 = _1045;
          _1089 = _1046;
          _1090 = (half)(half(_effectiveMetallicForVelvet * _1043));
          if (_119 == 66) {
            _1093 = float(_1090);
            _1095 = (_1020 * 2.0f) + -1.0f;
            _1097 = (_1019 * 2.0f) + -1.0f;
            _1099 = (_1018 * 2.0f) + -1.0f;
            if (_608) {
              _1102 = __3__36__0__0__g_bentCone.Load(int3(_516, _515, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1106 = __3__36__0__0__g_bentCone.Load(int3(_911, _515, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1110 = __3__36__0__0__g_bentCone.Load(int3(_516, _916, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1114 = __3__36__0__0__g_bentCone.Load(int3(_911, _916, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1126 = (((((_1106.x * _899) + (_1102.x * _896)) + (_1110.x * _902)) + (_1114.x * _905)) * 2.0f) + -1.0f;
              _1135 = (((((_1106.y * _899) + (_1102.y * _896)) + (_1110.y * _902)) + (_1114.y * _905)) * 2.0f) + -1.0f;
              _1144 = (((((_1106.z * _899) + (_1102.z * _896)) + (_1110.z * _902)) + (_1114.z * _905)) * 2.0f) + -1.0f;
              _1146 = rsqrt(dot(float3(_1126, _1135, _1144), float3(_1126, _1135, _1144)));  // [sem: invLength]
              _1147 = _1126 * _1146;
              _1148 = _1135 * _1146;
              _1149 = _1144 * _1146;
              if (!(_renderParams.z > 0.0f)) {
                if (!(_renderParams2.y > 0.0f)) {
                  _1161 = (half)(saturate((half)(_176 + 0.15002441h)));
                } else {
                  _1161 = _176;
                }
              } else {
                _1161 = _176;
              }
              _1162 = float(_1161);
              _1165 = float(_287);
              _1166 = float(_293);
              _1167 = float(_299);
              _1168 = dot(float3(_1095, _1097, _1099), float3(_1147, _1148, _1149));
              _1169 = -0.0f - _997;
              _1170 = -0.0f - _998;
              _1171 = -0.0f - _999;
              _1172 = dot(float3(_1095, _1097, _1099), float3(_1169, _1170, _1171));
              _1178 = cos(abs(asin(_1172) - asin(_1168)) * 0.5f);
              _1180 = _1147 - (_1168 * _1095);
              _1182 = _1148 - (_1168 * _1097);
              _1184 = _1149 - (_1168 * _1099);
              _1186 = _1169 - (_1172 * _1095);
              _1188 = _1170 - (_1172 * _1097);
              _1190 = _1171 - (_1172 * _1099);
              _1197 = dot(float3(_1180, _1182, _1184), float3(_1186, _1188, _1190)) * rsqrt((dot(float3(_1180, _1182, _1184), float3(_1180, _1182, _1184)) * dot(float3(_1186, _1188, _1190), float3(_1186, _1188, _1190))) + 0.0001f);
              _1199 = min(max(_1162, 0.09803922f), 1.0f);
              _1200 = _1199 * _1199;
              _1201 = _1200 * 0.5f;
              _1202 = _1200 * 2.0f;
              _1203 = _1172 + _1168;
              _1204 = _1203 - _bevelParams.y;
              _1208 = 1.0f / ((1.19f / _1178) + (_1178 * 0.36f));
              _1217 = ((_1208 * (0.6f - (_1197 * 0.8f))) + 1.0f) * sqrt(saturate((_1197 * 0.5f) + 0.5f));
              _1223 = 1.0f - (sqrt(saturate(1.0f - (_1217 * _1217))) * _1178);
              _1224 = _1223 * _1223;
              _1228 = 0.9534794f - ((_1224 * _1224) * (_1223 * 0.9534794f));
              _1229 = _1217 * _1208;
              _1234 = (sqrt(1.0f - (_1229 * _1229)) * 0.5f) / _1178;
              _1235 = log2(_1165);
              _1236 = log2(_1166);
              _1237 = log2(_1167);
              _1251 = ((_1228 * _1228) * (exp2((((_1204 * _1204) * -0.5f) / (_1201 * _1201)) * 1.442695f) / (_1200 * 1.2533141f))) * exp2(-5.741926f - (_1197 * 5.265837f));
              _1253 = _1203 - (_bevelParams.y * 4.0f);
              _1255 = 1.0f - (_1178 * 0.5f);
              _1256 = _1255 * _1255;
              _1260 = (_1256 * _1256) * (0.9534794f - (_1178 * 0.4767397f));
              _1261 = 0.9534794f - _1260;
              _1262 = 0.8f / _1178;
              _1278 = (((_1261 * _1261) * (_1260 + 0.046520565f)) * (exp2((((_1253 * _1253) * -0.5f) / (_1202 * _1202)) * 1.442695f) / (_1200 * 5.0132565f))) * exp2((_1197 * 24.525816f) + -24.208424f);
              _1287 = min(0.0f, (-0.0f - ((exp2(_1235 * _1234) * _1251) + (exp2(_1262 * _1235) * _1278))));
              _1296 = min(0.0f, (-0.0f - ((exp2(_1236 * _1234) * _1251) + (exp2(_1262 * _1236) * _1278))));
              _1305 = min(0.0f, (-0.0f - ((exp2(_1237 * _1234) * _1251) + (exp2(_1262 * _1237) * _1278))));
              _1308 = saturate(abs(dot(float3(_1147, _1148, _1149), float3(_1095, _1097, _1099))));  // [sem: expr_sat]
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1315 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1308, _1162, saturate(sqrt(exp2(_1235 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1322 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1308, _1162, saturate(sqrt(exp2(_1236 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1329 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1308, _1162, saturate(sqrt(exp2(_1237 * 1.5f)))), 0.0f);
              _1332 = min(0.99f, _1315.x);
              _1333 = min(0.99f, _1322.x);
              _1334 = min(0.99f, _1329.x);
              _1335 = min(0.99f, _1315.y);
              _1336 = min(0.99f, _1322.y);
              _1337 = min(0.99f, _1329.y);
              _1338 = _1332 * _1332;
              _1339 = _1333 * _1333;
              _1340 = _1334 * _1334;
              _1341 = _1335 * _1335;
              _1342 = _1336 * _1336;
              _1343 = _1337 * _1337;
              _1344 = _1341 * _1335;
              _1345 = _1342 * _1336;
              _1346 = _1343 * _1337;
              _1347 = 1.0f - _1338;
              _1348 = 1.0f - _1339;
              _1349 = 1.0f - _1340;
              _1350 = _1347 * _1347;
              _1351 = _1348 * _1348;
              _1352 = _1349 * _1349;
              _1353 = _1350 * _1347;
              _1354 = _1351 * _1348;
              _1355 = _1352 * _1349;
              _1357 = min(max(_1162, 0.18f), 0.6f);
              _1358 = _1357 * _1357;
              _1359 = _1358 * 0.25f;
              _1360 = _1358 * 4.0f;
              _1362 = (_1333 + _1332) + _1334;
              _1363 = _1332 / _1362;
              _1364 = _1333 / _1362;
              _1365 = _1334 / _1362;
              _1366 = dot(float3(_1358, _1359, _1360), float3(_1363, _1364, _1365));
              _1367 = _1366 * _1366;
              _1374 = asin(min(max(_1168, -1.0f), 1.0f)) + asin(min(max(_1172, -1.0f), 1.0f));
              _1375 = _1374 * 0.5f;
              _1376 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1363, _1364, _1365));
              _1377 = _1376 * _1376;
              _1379 = (_1336 + _1335) + _1337;
              _1383 = dot(float3(_1358, _1359, _1360), float3((_1335 / _1379), (_1336 / _1379), (_1337 / _1379)));
              _1387 = sqrt((_1383 * _1383) + (_1367 * 2.0f));
              _1390 = (_1383 * 3.0f) + (_1366 * 2.0f);
              _1398 = (((_1344 + _1335) * ((_1338 * 0.7f) + 1.0f)) * _1387) / ((_1390 * _1344) + _1335);
              _1406 = (((_1345 + _1336) * ((_1339 * 0.7f) + 1.0f)) * _1387) / ((_1390 * _1345) + _1336);
              _1414 = (((_1346 + _1337) * ((_1340 * 0.7f) + 1.0f)) * _1387) / ((_1390 * _1346) + _1337);
              _1425 = _1375 - (((_1377 * (((_1338 * 4.0f) * _1341) + (_1350 * 2.0f))) * (1.0f - ((_1341 * 2.0f) / _1350))) / _1353);
              _1436 = _1375 - (((_1377 * (((_1339 * 4.0f) * _1342) + (_1351 * 2.0f))) * (1.0f - ((_1342 * 2.0f) / _1351))) / _1354);
              _1447 = _1375 - (((_1377 * (((_1340 * 4.0f) * _1343) + (_1352 * 2.0f))) * (1.0f - ((_1343 * 2.0f) / _1352))) / _1355);
              _1453 = exp2((((_1374 * -0.25f) * _1375) / _1367) * 1.442695f) * 1.4f;
              _1473 = ((((((_1335 * _1338) / _1347) + ((_1344 * _1338) / _1353)) * 4.3982296f) * exp2((((_1425 * _1425) * -0.5f) / ((_1398 * _1398) + _1367)) * 1.442695f)) + ((((_1315.x + _1287) * 0.25f) - _1287) * 6.2831855f)) * _1453;
              _1493 = ((((((_1336 * _1339) / _1348) + ((_1345 * _1339) / _1354)) * 4.3982296f) * exp2((((_1436 * _1436) * -0.5f) / ((_1406 * _1406) + _1367)) * 1.442695f)) + ((((_1322.x + _1296) * 0.25f) - _1296) * 6.2831855f)) * _1453;
              _1513 = ((((((_1337 * _1340) / _1349) + ((_1346 * _1340) / _1355)) * 4.3982296f) * exp2((((_1447 * _1447) * -0.5f) / ((_1414 * _1414) + _1367)) * 1.442695f)) + ((((_1329.x + _1305) * 0.25f) - _1305) * 6.2831855f)) * _1453;
              _1514 = max(0.125f, _1093);
              _2033 = _1089;
              _2034 = _1088;
              _2035 = _1087;
              _2036 = _1086;
              _2037 = max(0.01f, (lerp(_1513, _1167, _1514)));
              _2038 = max(0.01f, ((_1514 * (_1166 - _1493)) + _1493));
              _2039 = max(0.01f, ((_1514 * (_1165 - _1473)) + _1473));
              _2040 = 66;
              _2041 = _1099;
              _2042 = _1097;
              _2043 = _1095;
              _2044 = 0.0h;
              _2045 = _1093;
            } else {
              _2033 = _1089;
              _2034 = _1088;
              _2035 = _1087;
              _2036 = _1086;
              _2037 = 0.0f;
              _2038 = 0.0f;
              _2039 = 0.0f;
              _2040 = 66;
              _2041 = _1099;
              _2042 = _1097;
              _2043 = _1095;
              _2044 = 0.0h;
              _2045 = _1093;
            }
          } else {
            _1528 = _119;
            _1529 = _1090;
            _1530 = _1089;
            _1531 = _1088;
            _1532 = _1087;
            _1533 = _1086;
            _1534 = (_1528 == 53);
            if ((_1528 == 67) || _1534) {
              _1542 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 127)));
              if (!(float(_1529) > (frac(frac(dot(float2(((_1542 * 32.665f) + _104), ((_1542 * 11.815f) + _105)), float2(0.06711056f, 0.00583715f))) * 52.982918f) * 0.2f))) {
                if ((_1528 & 126) == 66) {
                  _2033 = _1530;
                  _2034 = _1531;
                  _2035 = _1532;
                  _2036 = _1533;
                  _2037 = max(0.01f, float(_299));
                  _2038 = max(0.01f, float(_293));
                  _2039 = max(0.01f, float(_287));
                  _2040 = _1528;
                  _2041 = ((_1018 * 2.0f) + -1.0f);
                  _2042 = ((_1019 * 2.0f) + -1.0f);
                  _2043 = ((_1020 * 2.0f) + -1.0f);
                  _2044 = 0.0h;
                  _2045 = 1.0f;
                } else {
                  if (_1534) {
                    _1573 = (_1020 * 2.0f) + -1.0f;
                    _1575 = (_1019 * 2.0f) + -1.0f;
                    _1577 = 1.0f - abs(_1573);
                    _1578 = abs(_1575);
                    _1579 = _1577 - _1578;
                    if (!(_1579 >= 0.0f)) {
                      _1590 = (_1577 * select((_1575 >= 0.0f), 1.0f, -1.0f));
                      _1591 = ((1.0f - _1578) * select((_1573 >= 0.0f), 1.0f, -1.0f));
                    } else {
                      _1590 = _1575;
                      _1591 = _1573;
                    }
                    _1593 = rsqrt(dot(float3(_1591, _1590, _1579), float3(_1591, _1590, _1579)));  // [sem: invLength]
                    _2033 = _1530;
                    _2034 = _1531;
                    _2035 = _1532;
                    _2036 = _1533;
                    _2037 = max(0.01f, float(_299));
                    _2038 = max(0.01f, float(_293));
                    _2039 = max(0.01f, float(_287));
                    _2040 = 53;
                    _2041 = (_1593 * _1579);
                    _2042 = (_1593 * _1590);
                    _2043 = (_1593 * _1591);
                    _2044 = 0.0h;
                    _2045 = 1.0f;
                  } else {
                    _2033 = _1530;
                    _2034 = _1531;
                    _2035 = _1532;
                    _2036 = _1533;
                    _2037 = 0.0f;
                    _2038 = 0.0f;
                    _2039 = 0.0f;
                    _2040 = _1528;
                    _2041 = _637;
                    _2042 = _636;
                    _2043 = _635;
                    _2044 = 0.0h;
                    _2045 = 1.0f;
                  }
                }
              } else {
                _2033 = _1530;
                _2034 = _1531;
                _2035 = _1532;
                _2036 = _1533;
                _2037 = 0.0f;
                _2038 = 0.0f;
                _2039 = 0.0f;
                _2040 = 52;
                _2041 = _637;
                _2042 = _636;
                _2043 = _635;
                _2044 = 0.0h;
                _2045 = 1.0f;
              }
            } else {
              if ((_1528 & 126) == 66) {
                _1608 = __3__36__0__0__g_bentCone.Load(int3(_516, _515, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _1612 = __3__36__0__0__g_bentCone.Load(int3(_911, _515, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _1616 = __3__36__0__0__g_bentCone.Load(int3(_516, _916, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _1620 = __3__36__0__0__g_bentCone.Load(int3(_911, _916, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _1632 = (((((_1612.x * _899) + (_1608.x * _896)) + (_1616.x * _902)) + (_1620.x * _905)) * 2.0f) + -1.0f;
                _1641 = (((((_1612.y * _899) + (_1608.y * _896)) + (_1616.y * _902)) + (_1620.y * _905)) * 2.0f) + -1.0f;
                _1650 = (((((_1612.z * _899) + (_1608.z * _896)) + (_1616.z * _902)) + (_1620.z * _905)) * 2.0f) + -1.0f;
                _1652 = rsqrt(dot(float3(_1632, _1641, _1650), float3(_1632, _1641, _1650)));  // [sem: invLength]
                _1653 = _1632 * _1652;
                _1654 = _1641 * _1652;
                _1655 = _1650 * _1652;
                if (!(_renderParams.z > 0.0f)) {
                  if (!(_renderParams2.y > 0.0f)) {
                    _1667 = (half)(saturate((half)(_176 + 0.15002441h)));
                  } else {
                    _1667 = _176;
                  }
                } else {
                  _1667 = _176;
                }
                _1668 = float(_1667);
                _1671 = float(_287);
                _1672 = float(_293);
                _1673 = float(_299);
                _1674 = dot(float3(_635, _636, _637), float3(_1653, _1654, _1655));
                _1675 = -0.0f - _997;
                _1676 = -0.0f - _998;
                _1677 = -0.0f - _999;
                _1678 = dot(float3(_635, _636, _637), float3(_1675, _1676, _1677));
                _1684 = cos(abs(asin(_1678) - asin(_1674)) * 0.5f);
                _1686 = _1653 - (_1674 * _635);
                _1688 = _1654 - (_1674 * _636);
                _1690 = _1655 - (_1674 * _637);
                _1692 = _1675 - (_1678 * _635);
                _1694 = _1676 - (_1678 * _636);
                _1696 = _1677 - (_1678 * _637);
                _1703 = dot(float3(_1686, _1688, _1690), float3(_1692, _1694, _1696)) * rsqrt((dot(float3(_1686, _1688, _1690), float3(_1686, _1688, _1690)) * dot(float3(_1692, _1694, _1696), float3(_1692, _1694, _1696))) + 0.0001f);
                _1705 = min(max(_1668, 0.09803922f), 1.0f);
                _1706 = _1705 * _1705;
                _1707 = _1706 * 0.5f;
                _1708 = _1706 * 2.0f;
                _1709 = _1678 + _1674;
                _1710 = _1709 - _bevelParams.y;
                _1714 = 1.0f / ((1.19f / _1684) + (_1684 * 0.36f));
                _1723 = ((_1714 * (0.6f - (_1703 * 0.8f))) + 1.0f) * sqrt(saturate((_1703 * 0.5f) + 0.5f));
                _1729 = 1.0f - (sqrt(saturate(1.0f - (_1723 * _1723))) * _1684);
                _1730 = _1729 * _1729;
                _1734 = 0.9534794f - ((_1730 * _1730) * (_1729 * 0.9534794f));
                _1735 = _1723 * _1714;
                _1740 = (sqrt(1.0f - (_1735 * _1735)) * 0.5f) / _1684;
                _1741 = log2(_1671);
                _1742 = log2(_1672);
                _1743 = log2(_1673);
                _1757 = ((_1734 * _1734) * (exp2((((_1710 * _1710) * -0.5f) / (_1707 * _1707)) * 1.442695f) / (_1706 * 1.2533141f))) * exp2(-5.741926f - (_1703 * 5.265837f));
                _1759 = _1709 - (_bevelParams.y * 4.0f);
                _1761 = 1.0f - (_1684 * 0.5f);
                _1762 = _1761 * _1761;
                _1766 = (_1762 * _1762) * (0.9534794f - (_1684 * 0.4767397f));
                _1767 = 0.9534794f - _1766;
                _1768 = 0.8f / _1684;
                _1784 = (((_1767 * _1767) * (_1766 + 0.046520565f)) * (exp2((((_1759 * _1759) * -0.5f) / (_1708 * _1708)) * 1.442695f) / (_1706 * 5.0132565f))) * exp2((_1703 * 24.525816f) + -24.208424f);
                _1793 = min(0.0f, (-0.0f - ((exp2(_1741 * _1740) * _1757) + (exp2(_1768 * _1741) * _1784))));
                _1802 = min(0.0f, (-0.0f - ((exp2(_1742 * _1740) * _1757) + (exp2(_1768 * _1742) * _1784))));
                _1811 = min(0.0f, (-0.0f - ((exp2(_1743 * _1740) * _1757) + (exp2(_1768 * _1743) * _1784))));
                _1814 = saturate(abs(dot(float3(_1653, _1654, _1655), float3(_635, _636, _637))));  // [sem: expr_sat]
                // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
                _1821 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1814, _1668, saturate(sqrt(exp2(_1741 * 1.5f)))), 0.0f);
                // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
                _1828 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1814, _1668, saturate(sqrt(exp2(_1742 * 1.5f)))), 0.0f);
                // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
                _1835 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1814, _1668, saturate(sqrt(exp2(_1743 * 1.5f)))), 0.0f);
                _1838 = min(0.99f, _1821.x);
                _1839 = min(0.99f, _1828.x);
                _1840 = min(0.99f, _1835.x);
                _1841 = min(0.99f, _1821.y);
                _1842 = min(0.99f, _1828.y);
                _1843 = min(0.99f, _1835.y);
                _1844 = _1838 * _1838;
                _1845 = _1839 * _1839;
                _1846 = _1840 * _1840;
                _1847 = _1841 * _1841;
                _1848 = _1842 * _1842;
                _1849 = _1843 * _1843;
                _1850 = _1847 * _1841;
                _1851 = _1848 * _1842;
                _1852 = _1849 * _1843;
                _1853 = 1.0f - _1844;
                _1854 = 1.0f - _1845;
                _1855 = 1.0f - _1846;
                _1856 = _1853 * _1853;
                _1857 = _1854 * _1854;
                _1858 = _1855 * _1855;
                _1859 = _1856 * _1853;
                _1860 = _1857 * _1854;
                _1861 = _1858 * _1855;
                _1863 = min(max(_1668, 0.18f), 0.6f);
                _1864 = _1863 * _1863;
                _1865 = _1864 * 0.25f;
                _1866 = _1864 * 4.0f;
                _1868 = (_1839 + _1838) + _1840;
                _1869 = _1838 / _1868;
                _1870 = _1839 / _1868;
                _1871 = _1840 / _1868;
                _1872 = dot(float3(_1864, _1865, _1866), float3(_1869, _1870, _1871));
                _1873 = _1872 * _1872;
                _1880 = asin(min(max(_1674, -1.0f), 1.0f)) + asin(min(max(_1678, -1.0f), 1.0f));
                _1881 = _1880 * 0.5f;
                _1882 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1869, _1870, _1871));
                _1883 = _1882 * _1882;
                _1885 = (_1842 + _1841) + _1843;
                _1889 = dot(float3(_1864, _1865, _1866), float3((_1841 / _1885), (_1842 / _1885), (_1843 / _1885)));
                _1893 = sqrt((_1889 * _1889) + (_1873 * 2.0f));
                _1896 = (_1889 * 3.0f) + (_1872 * 2.0f);
                _1904 = (((_1850 + _1841) * ((_1844 * 0.7f) + 1.0f)) * _1893) / ((_1896 * _1850) + _1841);
                _1912 = (((_1851 + _1842) * ((_1845 * 0.7f) + 1.0f)) * _1893) / ((_1896 * _1851) + _1842);
                _1920 = (((_1852 + _1843) * ((_1846 * 0.7f) + 1.0f)) * _1893) / ((_1896 * _1852) + _1843);
                _1931 = _1881 - (((_1883 * (((_1844 * 4.0f) * _1847) + (_1856 * 2.0f))) * (1.0f - ((_1847 * 2.0f) / _1856))) / _1859);
                _1942 = _1881 - (((_1883 * (((_1845 * 4.0f) * _1848) + (_1857 * 2.0f))) * (1.0f - ((_1848 * 2.0f) / _1857))) / _1860);
                _1953 = _1881 - (((_1883 * (((_1846 * 4.0f) * _1849) + (_1858 * 2.0f))) * (1.0f - ((_1849 * 2.0f) / _1858))) / _1861);
                _1959 = exp2((((_1880 * -0.25f) * _1881) / _1873) * 1.442695f) * 1.4f;
                _1979 = ((((((_1841 * _1844) / _1853) + ((_1850 * _1844) / _1859)) * 4.3982296f) * exp2((((_1931 * _1931) * -0.5f) / ((_1904 * _1904) + _1873)) * 1.442695f)) + ((((_1821.x + _1793) * 0.25f) - _1793) * 6.2831855f)) * _1959;
                _1999 = ((((((_1842 * _1845) / _1854) + ((_1851 * _1845) / _1860)) * 4.3982296f) * exp2((((_1942 * _1942) * -0.5f) / ((_1912 * _1912) + _1873)) * 1.442695f)) + ((((_1828.x + _1802) * 0.25f) - _1802) * 6.2831855f)) * _1959;
                _2019 = ((((((_1843 * _1846) / _1855) + ((_1852 * _1846) / _1861)) * 4.3982296f) * exp2((((_1953 * _1953) * -0.5f) / ((_1920 * _1920) + _1873)) * 1.442695f)) + ((((_1835.x + _1811) * 0.25f) - _1811) * 6.2831855f)) * _1959;
                _2033 = _1530;
                _2034 = _1531;
                _2035 = _1532;
                _2036 = _1533;
                _2037 = max(0.01f, (lerp(_2019, _1673, 0.125f)));
                _2038 = max(0.01f, (lerp(_1999, _1672, 0.125f)));
                _2039 = max(0.01f, (lerp(_1979, _1671, 0.125f)));
                _2040 = _1528;
                _2041 = _637;
                _2042 = _636;
                _2043 = _635;
                _2044 = _1529;
                _2045 = 0.0f;
              } else {
                _2033 = _1530;
                _2034 = _1531;
                _2035 = _1532;
                _2036 = _1533;
                _2037 = 0.0f;
                _2038 = 0.0f;
                _2039 = 0.0f;
                _2040 = _1528;
                _2041 = _637;
                _2042 = _636;
                _2043 = _635;
                _2044 = _1529;
                _2045 = 0.0f;
              }
            }
          }
        }
      } else {
        if (_1002) {
          _1528 = select(((((int)((uint)((_1018 * 255.0f) + 0.5f))) & 127) == 0), 52, 55);
          _1529 = _520;
          _1530 = 0.0f;
          _1531 = 0.0f;
          _1532 = 0.0f;
          _1533 = 0.0f;
          _1534 = (_1528 == 53);
          if ((_1528 == 67) || _1534) {
            _1542 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 127)));
            if (!(float(_1529) > (frac(frac(dot(float2(((_1542 * 32.665f) + _104), ((_1542 * 11.815f) + _105)), float2(0.06711056f, 0.00583715f))) * 52.982918f) * 0.2f))) {
              if ((_1528 & 126) == 66) {
                _2033 = _1530;
                _2034 = _1531;
                _2035 = _1532;
                _2036 = _1533;
                _2037 = max(0.01f, float(_299));
                _2038 = max(0.01f, float(_293));
                _2039 = max(0.01f, float(_287));
                _2040 = _1528;
                _2041 = ((_1018 * 2.0f) + -1.0f);
                _2042 = ((_1019 * 2.0f) + -1.0f);
                _2043 = ((_1020 * 2.0f) + -1.0f);
                _2044 = 0.0h;
                _2045 = 1.0f;
              } else {
                if (_1534) {
                  _1573 = (_1020 * 2.0f) + -1.0f;
                  _1575 = (_1019 * 2.0f) + -1.0f;
                  _1577 = 1.0f - abs(_1573);
                  _1578 = abs(_1575);
                  _1579 = _1577 - _1578;
                  if (!(_1579 >= 0.0f)) {
                    _1590 = (_1577 * select((_1575 >= 0.0f), 1.0f, -1.0f));
                    _1591 = ((1.0f - _1578) * select((_1573 >= 0.0f), 1.0f, -1.0f));
                  } else {
                    _1590 = _1575;
                    _1591 = _1573;
                  }
                  _1593 = rsqrt(dot(float3(_1591, _1590, _1579), float3(_1591, _1590, _1579)));  // [sem: invLength]
                  _2033 = _1530;
                  _2034 = _1531;
                  _2035 = _1532;
                  _2036 = _1533;
                  _2037 = max(0.01f, float(_299));
                  _2038 = max(0.01f, float(_293));
                  _2039 = max(0.01f, float(_287));
                  _2040 = 53;
                  _2041 = (_1593 * _1579);
                  _2042 = (_1593 * _1590);
                  _2043 = (_1593 * _1591);
                  _2044 = 0.0h;
                  _2045 = 1.0f;
                } else {
                  _2033 = _1530;
                  _2034 = _1531;
                  _2035 = _1532;
                  _2036 = _1533;
                  _2037 = 0.0f;
                  _2038 = 0.0f;
                  _2039 = 0.0f;
                  _2040 = _1528;
                  _2041 = _637;
                  _2042 = _636;
                  _2043 = _635;
                  _2044 = 0.0h;
                  _2045 = 1.0f;
                }
              }
            } else {
              _2033 = _1530;
              _2034 = _1531;
              _2035 = _1532;
              _2036 = _1533;
              _2037 = 0.0f;
              _2038 = 0.0f;
              _2039 = 0.0f;
              _2040 = 52;
              _2041 = _637;
              _2042 = _636;
              _2043 = _635;
              _2044 = 0.0h;
              _2045 = 1.0f;
            }
          } else {
            if ((_1528 & 126) == 66) {
              _1608 = __3__36__0__0__g_bentCone.Load(int3(_516, _515, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1612 = __3__36__0__0__g_bentCone.Load(int3(_911, _515, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1616 = __3__36__0__0__g_bentCone.Load(int3(_516, _916, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1620 = __3__36__0__0__g_bentCone.Load(int3(_911, _916, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1632 = (((((_1612.x * _899) + (_1608.x * _896)) + (_1616.x * _902)) + (_1620.x * _905)) * 2.0f) + -1.0f;
              _1641 = (((((_1612.y * _899) + (_1608.y * _896)) + (_1616.y * _902)) + (_1620.y * _905)) * 2.0f) + -1.0f;
              _1650 = (((((_1612.z * _899) + (_1608.z * _896)) + (_1616.z * _902)) + (_1620.z * _905)) * 2.0f) + -1.0f;
              _1652 = rsqrt(dot(float3(_1632, _1641, _1650), float3(_1632, _1641, _1650)));  // [sem: invLength]
              _1653 = _1632 * _1652;
              _1654 = _1641 * _1652;
              _1655 = _1650 * _1652;
              if (!(_renderParams.z > 0.0f)) {
                if (!(_renderParams2.y > 0.0f)) {
                  _1667 = (half)(saturate((half)(_176 + 0.15002441h)));
                } else {
                  _1667 = _176;
                }
              } else {
                _1667 = _176;
              }
              _1668 = float(_1667);
              _1671 = float(_287);
              _1672 = float(_293);
              _1673 = float(_299);
              _1674 = dot(float3(_635, _636, _637), float3(_1653, _1654, _1655));
              _1675 = -0.0f - _997;
              _1676 = -0.0f - _998;
              _1677 = -0.0f - _999;
              _1678 = dot(float3(_635, _636, _637), float3(_1675, _1676, _1677));
              _1684 = cos(abs(asin(_1678) - asin(_1674)) * 0.5f);
              _1686 = _1653 - (_1674 * _635);
              _1688 = _1654 - (_1674 * _636);
              _1690 = _1655 - (_1674 * _637);
              _1692 = _1675 - (_1678 * _635);
              _1694 = _1676 - (_1678 * _636);
              _1696 = _1677 - (_1678 * _637);
              _1703 = dot(float3(_1686, _1688, _1690), float3(_1692, _1694, _1696)) * rsqrt((dot(float3(_1686, _1688, _1690), float3(_1686, _1688, _1690)) * dot(float3(_1692, _1694, _1696), float3(_1692, _1694, _1696))) + 0.0001f);
              _1705 = min(max(_1668, 0.09803922f), 1.0f);
              _1706 = _1705 * _1705;
              _1707 = _1706 * 0.5f;
              _1708 = _1706 * 2.0f;
              _1709 = _1678 + _1674;
              _1710 = _1709 - _bevelParams.y;
              _1714 = 1.0f / ((1.19f / _1684) + (_1684 * 0.36f));
              _1723 = ((_1714 * (0.6f - (_1703 * 0.8f))) + 1.0f) * sqrt(saturate((_1703 * 0.5f) + 0.5f));
              _1729 = 1.0f - (sqrt(saturate(1.0f - (_1723 * _1723))) * _1684);
              _1730 = _1729 * _1729;
              _1734 = 0.9534794f - ((_1730 * _1730) * (_1729 * 0.9534794f));
              _1735 = _1723 * _1714;
              _1740 = (sqrt(1.0f - (_1735 * _1735)) * 0.5f) / _1684;
              _1741 = log2(_1671);
              _1742 = log2(_1672);
              _1743 = log2(_1673);
              _1757 = ((_1734 * _1734) * (exp2((((_1710 * _1710) * -0.5f) / (_1707 * _1707)) * 1.442695f) / (_1706 * 1.2533141f))) * exp2(-5.741926f - (_1703 * 5.265837f));
              _1759 = _1709 - (_bevelParams.y * 4.0f);
              _1761 = 1.0f - (_1684 * 0.5f);
              _1762 = _1761 * _1761;
              _1766 = (_1762 * _1762) * (0.9534794f - (_1684 * 0.4767397f));
              _1767 = 0.9534794f - _1766;
              _1768 = 0.8f / _1684;
              _1784 = (((_1767 * _1767) * (_1766 + 0.046520565f)) * (exp2((((_1759 * _1759) * -0.5f) / (_1708 * _1708)) * 1.442695f) / (_1706 * 5.0132565f))) * exp2((_1703 * 24.525816f) + -24.208424f);
              _1793 = min(0.0f, (-0.0f - ((exp2(_1741 * _1740) * _1757) + (exp2(_1768 * _1741) * _1784))));
              _1802 = min(0.0f, (-0.0f - ((exp2(_1742 * _1740) * _1757) + (exp2(_1768 * _1742) * _1784))));
              _1811 = min(0.0f, (-0.0f - ((exp2(_1743 * _1740) * _1757) + (exp2(_1768 * _1743) * _1784))));
              _1814 = saturate(abs(dot(float3(_1653, _1654, _1655), float3(_635, _636, _637))));  // [sem: expr_sat]
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1821 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1814, _1668, saturate(sqrt(exp2(_1741 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1828 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1814, _1668, saturate(sqrt(exp2(_1742 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1835 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1814, _1668, saturate(sqrt(exp2(_1743 * 1.5f)))), 0.0f);
              _1838 = min(0.99f, _1821.x);
              _1839 = min(0.99f, _1828.x);
              _1840 = min(0.99f, _1835.x);
              _1841 = min(0.99f, _1821.y);
              _1842 = min(0.99f, _1828.y);
              _1843 = min(0.99f, _1835.y);
              _1844 = _1838 * _1838;
              _1845 = _1839 * _1839;
              _1846 = _1840 * _1840;
              _1847 = _1841 * _1841;
              _1848 = _1842 * _1842;
              _1849 = _1843 * _1843;
              _1850 = _1847 * _1841;
              _1851 = _1848 * _1842;
              _1852 = _1849 * _1843;
              _1853 = 1.0f - _1844;
              _1854 = 1.0f - _1845;
              _1855 = 1.0f - _1846;
              _1856 = _1853 * _1853;
              _1857 = _1854 * _1854;
              _1858 = _1855 * _1855;
              _1859 = _1856 * _1853;
              _1860 = _1857 * _1854;
              _1861 = _1858 * _1855;
              _1863 = min(max(_1668, 0.18f), 0.6f);
              _1864 = _1863 * _1863;
              _1865 = _1864 * 0.25f;
              _1866 = _1864 * 4.0f;
              _1868 = (_1839 + _1838) + _1840;
              _1869 = _1838 / _1868;
              _1870 = _1839 / _1868;
              _1871 = _1840 / _1868;
              _1872 = dot(float3(_1864, _1865, _1866), float3(_1869, _1870, _1871));
              _1873 = _1872 * _1872;
              _1880 = asin(min(max(_1674, -1.0f), 1.0f)) + asin(min(max(_1678, -1.0f), 1.0f));
              _1881 = _1880 * 0.5f;
              _1882 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1869, _1870, _1871));
              _1883 = _1882 * _1882;
              _1885 = (_1842 + _1841) + _1843;
              _1889 = dot(float3(_1864, _1865, _1866), float3((_1841 / _1885), (_1842 / _1885), (_1843 / _1885)));
              _1893 = sqrt((_1889 * _1889) + (_1873 * 2.0f));
              _1896 = (_1889 * 3.0f) + (_1872 * 2.0f);
              _1904 = (((_1850 + _1841) * ((_1844 * 0.7f) + 1.0f)) * _1893) / ((_1896 * _1850) + _1841);
              _1912 = (((_1851 + _1842) * ((_1845 * 0.7f) + 1.0f)) * _1893) / ((_1896 * _1851) + _1842);
              _1920 = (((_1852 + _1843) * ((_1846 * 0.7f) + 1.0f)) * _1893) / ((_1896 * _1852) + _1843);
              _1931 = _1881 - (((_1883 * (((_1844 * 4.0f) * _1847) + (_1856 * 2.0f))) * (1.0f - ((_1847 * 2.0f) / _1856))) / _1859);
              _1942 = _1881 - (((_1883 * (((_1845 * 4.0f) * _1848) + (_1857 * 2.0f))) * (1.0f - ((_1848 * 2.0f) / _1857))) / _1860);
              _1953 = _1881 - (((_1883 * (((_1846 * 4.0f) * _1849) + (_1858 * 2.0f))) * (1.0f - ((_1849 * 2.0f) / _1858))) / _1861);
              _1959 = exp2((((_1880 * -0.25f) * _1881) / _1873) * 1.442695f) * 1.4f;
              _1979 = ((((((_1841 * _1844) / _1853) + ((_1850 * _1844) / _1859)) * 4.3982296f) * exp2((((_1931 * _1931) * -0.5f) / ((_1904 * _1904) + _1873)) * 1.442695f)) + ((((_1821.x + _1793) * 0.25f) - _1793) * 6.2831855f)) * _1959;
              _1999 = ((((((_1842 * _1845) / _1854) + ((_1851 * _1845) / _1860)) * 4.3982296f) * exp2((((_1942 * _1942) * -0.5f) / ((_1912 * _1912) + _1873)) * 1.442695f)) + ((((_1828.x + _1802) * 0.25f) - _1802) * 6.2831855f)) * _1959;
              _2019 = ((((((_1843 * _1846) / _1855) + ((_1852 * _1846) / _1861)) * 4.3982296f) * exp2((((_1953 * _1953) * -0.5f) / ((_1920 * _1920) + _1873)) * 1.442695f)) + ((((_1835.x + _1811) * 0.25f) - _1811) * 6.2831855f)) * _1959;
              _2033 = _1530;
              _2034 = _1531;
              _2035 = _1532;
              _2036 = _1533;
              _2037 = max(0.01f, (lerp(_2019, _1673, 0.125f)));
              _2038 = max(0.01f, (lerp(_1999, _1672, 0.125f)));
              _2039 = max(0.01f, (lerp(_1979, _1671, 0.125f)));
              _2040 = _1528;
              _2041 = _637;
              _2042 = _636;
              _2043 = _635;
              _2044 = _1529;
              _2045 = 0.0f;
            } else {
              _2033 = _1530;
              _2034 = _1531;
              _2035 = _1532;
              _2036 = _1533;
              _2037 = 0.0f;
              _2038 = 0.0f;
              _2039 = 0.0f;
              _2040 = _1528;
              _2041 = _637;
              _2042 = _636;
              _2043 = _635;
              _2044 = _1529;
              _2045 = 0.0f;
            }
          }
        } else {
          _1086 = 0.0f;
          _1087 = 0.0f;
          _1088 = 0.0f;
          _1089 = 0.0f;
          _1090 = _520;
          if (_119 == 66) {
            _1093 = float(_1090);
            _1095 = (_1020 * 2.0f) + -1.0f;
            _1097 = (_1019 * 2.0f) + -1.0f;
            _1099 = (_1018 * 2.0f) + -1.0f;
            if (_608) {
              _1102 = __3__36__0__0__g_bentCone.Load(int3(_516, _515, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1106 = __3__36__0__0__g_bentCone.Load(int3(_911, _515, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1110 = __3__36__0__0__g_bentCone.Load(int3(_516, _916, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1114 = __3__36__0__0__g_bentCone.Load(int3(_911, _916, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1126 = (((((_1106.x * _899) + (_1102.x * _896)) + (_1110.x * _902)) + (_1114.x * _905)) * 2.0f) + -1.0f;
              _1135 = (((((_1106.y * _899) + (_1102.y * _896)) + (_1110.y * _902)) + (_1114.y * _905)) * 2.0f) + -1.0f;
              _1144 = (((((_1106.z * _899) + (_1102.z * _896)) + (_1110.z * _902)) + (_1114.z * _905)) * 2.0f) + -1.0f;
              _1146 = rsqrt(dot(float3(_1126, _1135, _1144), float3(_1126, _1135, _1144)));  // [sem: invLength]
              _1147 = _1126 * _1146;
              _1148 = _1135 * _1146;
              _1149 = _1144 * _1146;
              if (!(_renderParams.z > 0.0f)) {
                if (!(_renderParams2.y > 0.0f)) {
                  _1161 = (half)(saturate((half)(_176 + 0.15002441h)));
                } else {
                  _1161 = _176;
                }
              } else {
                _1161 = _176;
              }
              _1162 = float(_1161);
              _1165 = float(_287);
              _1166 = float(_293);
              _1167 = float(_299);
              _1168 = dot(float3(_1095, _1097, _1099), float3(_1147, _1148, _1149));
              _1169 = -0.0f - _997;
              _1170 = -0.0f - _998;
              _1171 = -0.0f - _999;
              _1172 = dot(float3(_1095, _1097, _1099), float3(_1169, _1170, _1171));
              _1178 = cos(abs(asin(_1172) - asin(_1168)) * 0.5f);
              _1180 = _1147 - (_1168 * _1095);
              _1182 = _1148 - (_1168 * _1097);
              _1184 = _1149 - (_1168 * _1099);
              _1186 = _1169 - (_1172 * _1095);
              _1188 = _1170 - (_1172 * _1097);
              _1190 = _1171 - (_1172 * _1099);
              _1197 = dot(float3(_1180, _1182, _1184), float3(_1186, _1188, _1190)) * rsqrt((dot(float3(_1180, _1182, _1184), float3(_1180, _1182, _1184)) * dot(float3(_1186, _1188, _1190), float3(_1186, _1188, _1190))) + 0.0001f);
              _1199 = min(max(_1162, 0.09803922f), 1.0f);
              _1200 = _1199 * _1199;
              _1201 = _1200 * 0.5f;
              _1202 = _1200 * 2.0f;
              _1203 = _1172 + _1168;
              _1204 = _1203 - _bevelParams.y;
              _1208 = 1.0f / ((1.19f / _1178) + (_1178 * 0.36f));
              _1217 = ((_1208 * (0.6f - (_1197 * 0.8f))) + 1.0f) * sqrt(saturate((_1197 * 0.5f) + 0.5f));
              _1223 = 1.0f - (sqrt(saturate(1.0f - (_1217 * _1217))) * _1178);
              _1224 = _1223 * _1223;
              _1228 = 0.9534794f - ((_1224 * _1224) * (_1223 * 0.9534794f));
              _1229 = _1217 * _1208;
              _1234 = (sqrt(1.0f - (_1229 * _1229)) * 0.5f) / _1178;
              _1235 = log2(_1165);
              _1236 = log2(_1166);
              _1237 = log2(_1167);
              _1251 = ((_1228 * _1228) * (exp2((((_1204 * _1204) * -0.5f) / (_1201 * _1201)) * 1.442695f) / (_1200 * 1.2533141f))) * exp2(-5.741926f - (_1197 * 5.265837f));
              _1253 = _1203 - (_bevelParams.y * 4.0f);
              _1255 = 1.0f - (_1178 * 0.5f);
              _1256 = _1255 * _1255;
              _1260 = (_1256 * _1256) * (0.9534794f - (_1178 * 0.4767397f));
              _1261 = 0.9534794f - _1260;
              _1262 = 0.8f / _1178;
              _1278 = (((_1261 * _1261) * (_1260 + 0.046520565f)) * (exp2((((_1253 * _1253) * -0.5f) / (_1202 * _1202)) * 1.442695f) / (_1200 * 5.0132565f))) * exp2((_1197 * 24.525816f) + -24.208424f);
              _1287 = min(0.0f, (-0.0f - ((exp2(_1235 * _1234) * _1251) + (exp2(_1262 * _1235) * _1278))));
              _1296 = min(0.0f, (-0.0f - ((exp2(_1236 * _1234) * _1251) + (exp2(_1262 * _1236) * _1278))));
              _1305 = min(0.0f, (-0.0f - ((exp2(_1237 * _1234) * _1251) + (exp2(_1262 * _1237) * _1278))));
              _1308 = saturate(abs(dot(float3(_1147, _1148, _1149), float3(_1095, _1097, _1099))));  // [sem: expr_sat]
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1315 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1308, _1162, saturate(sqrt(exp2(_1235 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1322 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1308, _1162, saturate(sqrt(exp2(_1236 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1329 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1308, _1162, saturate(sqrt(exp2(_1237 * 1.5f)))), 0.0f);
              _1332 = min(0.99f, _1315.x);
              _1333 = min(0.99f, _1322.x);
              _1334 = min(0.99f, _1329.x);
              _1335 = min(0.99f, _1315.y);
              _1336 = min(0.99f, _1322.y);
              _1337 = min(0.99f, _1329.y);
              _1338 = _1332 * _1332;
              _1339 = _1333 * _1333;
              _1340 = _1334 * _1334;
              _1341 = _1335 * _1335;
              _1342 = _1336 * _1336;
              _1343 = _1337 * _1337;
              _1344 = _1341 * _1335;
              _1345 = _1342 * _1336;
              _1346 = _1343 * _1337;
              _1347 = 1.0f - _1338;
              _1348 = 1.0f - _1339;
              _1349 = 1.0f - _1340;
              _1350 = _1347 * _1347;
              _1351 = _1348 * _1348;
              _1352 = _1349 * _1349;
              _1353 = _1350 * _1347;
              _1354 = _1351 * _1348;
              _1355 = _1352 * _1349;
              _1357 = min(max(_1162, 0.18f), 0.6f);
              _1358 = _1357 * _1357;
              _1359 = _1358 * 0.25f;
              _1360 = _1358 * 4.0f;
              _1362 = (_1333 + _1332) + _1334;
              _1363 = _1332 / _1362;
              _1364 = _1333 / _1362;
              _1365 = _1334 / _1362;
              _1366 = dot(float3(_1358, _1359, _1360), float3(_1363, _1364, _1365));
              _1367 = _1366 * _1366;
              _1374 = asin(min(max(_1168, -1.0f), 1.0f)) + asin(min(max(_1172, -1.0f), 1.0f));
              _1375 = _1374 * 0.5f;
              _1376 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1363, _1364, _1365));
              _1377 = _1376 * _1376;
              _1379 = (_1336 + _1335) + _1337;
              _1383 = dot(float3(_1358, _1359, _1360), float3((_1335 / _1379), (_1336 / _1379), (_1337 / _1379)));
              _1387 = sqrt((_1383 * _1383) + (_1367 * 2.0f));
              _1390 = (_1383 * 3.0f) + (_1366 * 2.0f);
              _1398 = (((_1344 + _1335) * ((_1338 * 0.7f) + 1.0f)) * _1387) / ((_1390 * _1344) + _1335);
              _1406 = (((_1345 + _1336) * ((_1339 * 0.7f) + 1.0f)) * _1387) / ((_1390 * _1345) + _1336);
              _1414 = (((_1346 + _1337) * ((_1340 * 0.7f) + 1.0f)) * _1387) / ((_1390 * _1346) + _1337);
              _1425 = _1375 - (((_1377 * (((_1338 * 4.0f) * _1341) + (_1350 * 2.0f))) * (1.0f - ((_1341 * 2.0f) / _1350))) / _1353);
              _1436 = _1375 - (((_1377 * (((_1339 * 4.0f) * _1342) + (_1351 * 2.0f))) * (1.0f - ((_1342 * 2.0f) / _1351))) / _1354);
              _1447 = _1375 - (((_1377 * (((_1340 * 4.0f) * _1343) + (_1352 * 2.0f))) * (1.0f - ((_1343 * 2.0f) / _1352))) / _1355);
              _1453 = exp2((((_1374 * -0.25f) * _1375) / _1367) * 1.442695f) * 1.4f;
              _1473 = ((((((_1335 * _1338) / _1347) + ((_1344 * _1338) / _1353)) * 4.3982296f) * exp2((((_1425 * _1425) * -0.5f) / ((_1398 * _1398) + _1367)) * 1.442695f)) + ((((_1315.x + _1287) * 0.25f) - _1287) * 6.2831855f)) * _1453;
              _1493 = ((((((_1336 * _1339) / _1348) + ((_1345 * _1339) / _1354)) * 4.3982296f) * exp2((((_1436 * _1436) * -0.5f) / ((_1406 * _1406) + _1367)) * 1.442695f)) + ((((_1322.x + _1296) * 0.25f) - _1296) * 6.2831855f)) * _1453;
              _1513 = ((((((_1337 * _1340) / _1349) + ((_1346 * _1340) / _1355)) * 4.3982296f) * exp2((((_1447 * _1447) * -0.5f) / ((_1414 * _1414) + _1367)) * 1.442695f)) + ((((_1329.x + _1305) * 0.25f) - _1305) * 6.2831855f)) * _1453;
              _1514 = max(0.125f, _1093);
              _2033 = _1089;
              _2034 = _1088;
              _2035 = _1087;
              _2036 = _1086;
              _2037 = max(0.01f, (lerp(_1513, _1167, _1514)));
              _2038 = max(0.01f, ((_1514 * (_1166 - _1493)) + _1493));
              _2039 = max(0.01f, ((_1514 * (_1165 - _1473)) + _1473));
              _2040 = 66;
              _2041 = _1099;
              _2042 = _1097;
              _2043 = _1095;
              _2044 = 0.0h;
              _2045 = _1093;
            } else {
              _2033 = _1089;
              _2034 = _1088;
              _2035 = _1087;
              _2036 = _1086;
              _2037 = 0.0f;
              _2038 = 0.0f;
              _2039 = 0.0f;
              _2040 = 66;
              _2041 = _1099;
              _2042 = _1097;
              _2043 = _1095;
              _2044 = 0.0h;
              _2045 = _1093;
            }
          } else {
            _1528 = _119;
            _1529 = _1090;
            _1530 = _1089;
            _1531 = _1088;
            _1532 = _1087;
            _1533 = _1086;
            _1534 = (_1528 == 53);
            if ((_1528 == 67) || _1534) {
              _1542 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 127)));
              if (!(float(_1529) > (frac(frac(dot(float2(((_1542 * 32.665f) + _104), ((_1542 * 11.815f) + _105)), float2(0.06711056f, 0.00583715f))) * 52.982918f) * 0.2f))) {
                if ((_1528 & 126) == 66) {
                  _2033 = _1530;
                  _2034 = _1531;
                  _2035 = _1532;
                  _2036 = _1533;
                  _2037 = max(0.01f, float(_299));
                  _2038 = max(0.01f, float(_293));
                  _2039 = max(0.01f, float(_287));
                  _2040 = _1528;
                  _2041 = ((_1018 * 2.0f) + -1.0f);
                  _2042 = ((_1019 * 2.0f) + -1.0f);
                  _2043 = ((_1020 * 2.0f) + -1.0f);
                  _2044 = 0.0h;
                  _2045 = 1.0f;
                } else {
                  if (_1534) {
                    _1573 = (_1020 * 2.0f) + -1.0f;
                    _1575 = (_1019 * 2.0f) + -1.0f;
                    _1577 = 1.0f - abs(_1573);
                    _1578 = abs(_1575);
                    _1579 = _1577 - _1578;
                    if (!(_1579 >= 0.0f)) {
                      _1590 = (_1577 * select((_1575 >= 0.0f), 1.0f, -1.0f));
                      _1591 = ((1.0f - _1578) * select((_1573 >= 0.0f), 1.0f, -1.0f));
                    } else {
                      _1590 = _1575;
                      _1591 = _1573;
                    }
                    _1593 = rsqrt(dot(float3(_1591, _1590, _1579), float3(_1591, _1590, _1579)));  // [sem: invLength]
                    _2033 = _1530;
                    _2034 = _1531;
                    _2035 = _1532;
                    _2036 = _1533;
                    _2037 = max(0.01f, float(_299));
                    _2038 = max(0.01f, float(_293));
                    _2039 = max(0.01f, float(_287));
                    _2040 = 53;
                    _2041 = (_1593 * _1579);
                    _2042 = (_1593 * _1590);
                    _2043 = (_1593 * _1591);
                    _2044 = 0.0h;
                    _2045 = 1.0f;
                  } else {
                    _2033 = _1530;
                    _2034 = _1531;
                    _2035 = _1532;
                    _2036 = _1533;
                    _2037 = 0.0f;
                    _2038 = 0.0f;
                    _2039 = 0.0f;
                    _2040 = _1528;
                    _2041 = _637;
                    _2042 = _636;
                    _2043 = _635;
                    _2044 = 0.0h;
                    _2045 = 1.0f;
                  }
                }
              } else {
                _2033 = _1530;
                _2034 = _1531;
                _2035 = _1532;
                _2036 = _1533;
                _2037 = 0.0f;
                _2038 = 0.0f;
                _2039 = 0.0f;
                _2040 = 52;
                _2041 = _637;
                _2042 = _636;
                _2043 = _635;
                _2044 = 0.0h;
                _2045 = 1.0f;
              }
            } else {
              if ((_1528 & 126) == 66) {
                _1608 = __3__36__0__0__g_bentCone.Load(int3(_516, _515, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _1612 = __3__36__0__0__g_bentCone.Load(int3(_911, _515, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _1616 = __3__36__0__0__g_bentCone.Load(int3(_516, _916, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _1620 = __3__36__0__0__g_bentCone.Load(int3(_911, _916, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _1632 = (((((_1612.x * _899) + (_1608.x * _896)) + (_1616.x * _902)) + (_1620.x * _905)) * 2.0f) + -1.0f;
                _1641 = (((((_1612.y * _899) + (_1608.y * _896)) + (_1616.y * _902)) + (_1620.y * _905)) * 2.0f) + -1.0f;
                _1650 = (((((_1612.z * _899) + (_1608.z * _896)) + (_1616.z * _902)) + (_1620.z * _905)) * 2.0f) + -1.0f;
                _1652 = rsqrt(dot(float3(_1632, _1641, _1650), float3(_1632, _1641, _1650)));  // [sem: invLength]
                _1653 = _1632 * _1652;
                _1654 = _1641 * _1652;
                _1655 = _1650 * _1652;
                if (!(_renderParams.z > 0.0f)) {
                  if (!(_renderParams2.y > 0.0f)) {
                    _1667 = (half)(saturate((half)(_176 + 0.15002441h)));
                  } else {
                    _1667 = _176;
                  }
                } else {
                  _1667 = _176;
                }
                _1668 = float(_1667);
                _1671 = float(_287);
                _1672 = float(_293);
                _1673 = float(_299);
                _1674 = dot(float3(_635, _636, _637), float3(_1653, _1654, _1655));
                _1675 = -0.0f - _997;
                _1676 = -0.0f - _998;
                _1677 = -0.0f - _999;
                _1678 = dot(float3(_635, _636, _637), float3(_1675, _1676, _1677));
                _1684 = cos(abs(asin(_1678) - asin(_1674)) * 0.5f);
                _1686 = _1653 - (_1674 * _635);
                _1688 = _1654 - (_1674 * _636);
                _1690 = _1655 - (_1674 * _637);
                _1692 = _1675 - (_1678 * _635);
                _1694 = _1676 - (_1678 * _636);
                _1696 = _1677 - (_1678 * _637);
                _1703 = dot(float3(_1686, _1688, _1690), float3(_1692, _1694, _1696)) * rsqrt((dot(float3(_1686, _1688, _1690), float3(_1686, _1688, _1690)) * dot(float3(_1692, _1694, _1696), float3(_1692, _1694, _1696))) + 0.0001f);
                _1705 = min(max(_1668, 0.09803922f), 1.0f);
                _1706 = _1705 * _1705;
                _1707 = _1706 * 0.5f;
                _1708 = _1706 * 2.0f;
                _1709 = _1678 + _1674;
                _1710 = _1709 - _bevelParams.y;
                _1714 = 1.0f / ((1.19f / _1684) + (_1684 * 0.36f));
                _1723 = ((_1714 * (0.6f - (_1703 * 0.8f))) + 1.0f) * sqrt(saturate((_1703 * 0.5f) + 0.5f));
                _1729 = 1.0f - (sqrt(saturate(1.0f - (_1723 * _1723))) * _1684);
                _1730 = _1729 * _1729;
                _1734 = 0.9534794f - ((_1730 * _1730) * (_1729 * 0.9534794f));
                _1735 = _1723 * _1714;
                _1740 = (sqrt(1.0f - (_1735 * _1735)) * 0.5f) / _1684;
                _1741 = log2(_1671);
                _1742 = log2(_1672);
                _1743 = log2(_1673);
                _1757 = ((_1734 * _1734) * (exp2((((_1710 * _1710) * -0.5f) / (_1707 * _1707)) * 1.442695f) / (_1706 * 1.2533141f))) * exp2(-5.741926f - (_1703 * 5.265837f));
                _1759 = _1709 - (_bevelParams.y * 4.0f);
                _1761 = 1.0f - (_1684 * 0.5f);
                _1762 = _1761 * _1761;
                _1766 = (_1762 * _1762) * (0.9534794f - (_1684 * 0.4767397f));
                _1767 = 0.9534794f - _1766;
                _1768 = 0.8f / _1684;
                _1784 = (((_1767 * _1767) * (_1766 + 0.046520565f)) * (exp2((((_1759 * _1759) * -0.5f) / (_1708 * _1708)) * 1.442695f) / (_1706 * 5.0132565f))) * exp2((_1703 * 24.525816f) + -24.208424f);
                _1793 = min(0.0f, (-0.0f - ((exp2(_1741 * _1740) * _1757) + (exp2(_1768 * _1741) * _1784))));
                _1802 = min(0.0f, (-0.0f - ((exp2(_1742 * _1740) * _1757) + (exp2(_1768 * _1742) * _1784))));
                _1811 = min(0.0f, (-0.0f - ((exp2(_1743 * _1740) * _1757) + (exp2(_1768 * _1743) * _1784))));
                _1814 = saturate(abs(dot(float3(_1653, _1654, _1655), float3(_635, _636, _637))));  // [sem: expr_sat]
                // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
                _1821 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1814, _1668, saturate(sqrt(exp2(_1741 * 1.5f)))), 0.0f);
                // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
                _1828 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1814, _1668, saturate(sqrt(exp2(_1742 * 1.5f)))), 0.0f);
                // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
                _1835 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1814, _1668, saturate(sqrt(exp2(_1743 * 1.5f)))), 0.0f);
                _1838 = min(0.99f, _1821.x);
                _1839 = min(0.99f, _1828.x);
                _1840 = min(0.99f, _1835.x);
                _1841 = min(0.99f, _1821.y);
                _1842 = min(0.99f, _1828.y);
                _1843 = min(0.99f, _1835.y);
                _1844 = _1838 * _1838;
                _1845 = _1839 * _1839;
                _1846 = _1840 * _1840;
                _1847 = _1841 * _1841;
                _1848 = _1842 * _1842;
                _1849 = _1843 * _1843;
                _1850 = _1847 * _1841;
                _1851 = _1848 * _1842;
                _1852 = _1849 * _1843;
                _1853 = 1.0f - _1844;
                _1854 = 1.0f - _1845;
                _1855 = 1.0f - _1846;
                _1856 = _1853 * _1853;
                _1857 = _1854 * _1854;
                _1858 = _1855 * _1855;
                _1859 = _1856 * _1853;
                _1860 = _1857 * _1854;
                _1861 = _1858 * _1855;
                _1863 = min(max(_1668, 0.18f), 0.6f);
                _1864 = _1863 * _1863;
                _1865 = _1864 * 0.25f;
                _1866 = _1864 * 4.0f;
                _1868 = (_1839 + _1838) + _1840;
                _1869 = _1838 / _1868;
                _1870 = _1839 / _1868;
                _1871 = _1840 / _1868;
                _1872 = dot(float3(_1864, _1865, _1866), float3(_1869, _1870, _1871));
                _1873 = _1872 * _1872;
                _1880 = asin(min(max(_1674, -1.0f), 1.0f)) + asin(min(max(_1678, -1.0f), 1.0f));
                _1881 = _1880 * 0.5f;
                _1882 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1869, _1870, _1871));
                _1883 = _1882 * _1882;
                _1885 = (_1842 + _1841) + _1843;
                _1889 = dot(float3(_1864, _1865, _1866), float3((_1841 / _1885), (_1842 / _1885), (_1843 / _1885)));
                _1893 = sqrt((_1889 * _1889) + (_1873 * 2.0f));
                _1896 = (_1889 * 3.0f) + (_1872 * 2.0f);
                _1904 = (((_1850 + _1841) * ((_1844 * 0.7f) + 1.0f)) * _1893) / ((_1896 * _1850) + _1841);
                _1912 = (((_1851 + _1842) * ((_1845 * 0.7f) + 1.0f)) * _1893) / ((_1896 * _1851) + _1842);
                _1920 = (((_1852 + _1843) * ((_1846 * 0.7f) + 1.0f)) * _1893) / ((_1896 * _1852) + _1843);
                _1931 = _1881 - (((_1883 * (((_1844 * 4.0f) * _1847) + (_1856 * 2.0f))) * (1.0f - ((_1847 * 2.0f) / _1856))) / _1859);
                _1942 = _1881 - (((_1883 * (((_1845 * 4.0f) * _1848) + (_1857 * 2.0f))) * (1.0f - ((_1848 * 2.0f) / _1857))) / _1860);
                _1953 = _1881 - (((_1883 * (((_1846 * 4.0f) * _1849) + (_1858 * 2.0f))) * (1.0f - ((_1849 * 2.0f) / _1858))) / _1861);
                _1959 = exp2((((_1880 * -0.25f) * _1881) / _1873) * 1.442695f) * 1.4f;
                _1979 = ((((((_1841 * _1844) / _1853) + ((_1850 * _1844) / _1859)) * 4.3982296f) * exp2((((_1931 * _1931) * -0.5f) / ((_1904 * _1904) + _1873)) * 1.442695f)) + ((((_1821.x + _1793) * 0.25f) - _1793) * 6.2831855f)) * _1959;
                _1999 = ((((((_1842 * _1845) / _1854) + ((_1851 * _1845) / _1860)) * 4.3982296f) * exp2((((_1942 * _1942) * -0.5f) / ((_1912 * _1912) + _1873)) * 1.442695f)) + ((((_1828.x + _1802) * 0.25f) - _1802) * 6.2831855f)) * _1959;
                _2019 = ((((((_1843 * _1846) / _1855) + ((_1852 * _1846) / _1861)) * 4.3982296f) * exp2((((_1953 * _1953) * -0.5f) / ((_1920 * _1920) + _1873)) * 1.442695f)) + ((((_1835.x + _1811) * 0.25f) - _1811) * 6.2831855f)) * _1959;
                _2033 = _1530;
                _2034 = _1531;
                _2035 = _1532;
                _2036 = _1533;
                _2037 = max(0.01f, (lerp(_2019, _1673, 0.125f)));
                _2038 = max(0.01f, (lerp(_1999, _1672, 0.125f)));
                _2039 = max(0.01f, (lerp(_1979, _1671, 0.125f)));
                _2040 = _1528;
                _2041 = _637;
                _2042 = _636;
                _2043 = _635;
                _2044 = _1529;
                _2045 = 0.0f;
              } else {
                _2033 = _1530;
                _2034 = _1531;
                _2035 = _1532;
                _2036 = _1533;
                _2037 = 0.0f;
                _2038 = 0.0f;
                _2039 = 0.0f;
                _2040 = _1528;
                _2041 = _637;
                _2042 = _636;
                _2043 = _635;
                _2044 = _1529;
                _2045 = 0.0f;
              }
            }
          }
        }
      }
    } else {
      _1062 = (uint)((_1018 * 255.0f) + 0.5f);
      _1064 = ((uint)((uint)(_1062)) >> 4) & 7;
      if (!(_1064 == 0)) {
        _1068 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_1064) + (int)(1)))];
        _1077 = _1068.x;
        _1078 = _1068.y;
        _1079 = (((float)((uint)((uint)(_1062 & 15)))) * 0.06666667f);
        _1080 = min((1.0f - _1068.y), _1068.x);
      } else {
        _1077 = 0.0f;
        _1078 = 0.0f;
        _1079 = 0.0f;
        _1080 = 0.0f;
      }
      _1086 = _1077;
      _1087 = _1078;
      _1088 = _1079;
      _1089 = _1080;
      _1090 = (half)(half(_effectiveMetallicForVelvet * _1077));
      if (_119 == 66) {
        _1093 = float(_1090);
        _1095 = (_1020 * 2.0f) + -1.0f;
        _1097 = (_1019 * 2.0f) + -1.0f;
        _1099 = (_1018 * 2.0f) + -1.0f;
        if (_608) {
          _1102 = __3__36__0__0__g_bentCone.Load(int3(_516, _515, 0));  // [sem: _3__36__0__0__g_bentCone_load]
          _1106 = __3__36__0__0__g_bentCone.Load(int3(_911, _515, 0));  // [sem: _3__36__0__0__g_bentCone_load]
          _1110 = __3__36__0__0__g_bentCone.Load(int3(_516, _916, 0));  // [sem: _3__36__0__0__g_bentCone_load]
          _1114 = __3__36__0__0__g_bentCone.Load(int3(_911, _916, 0));  // [sem: _3__36__0__0__g_bentCone_load]
          _1126 = (((((_1106.x * _899) + (_1102.x * _896)) + (_1110.x * _902)) + (_1114.x * _905)) * 2.0f) + -1.0f;
          _1135 = (((((_1106.y * _899) + (_1102.y * _896)) + (_1110.y * _902)) + (_1114.y * _905)) * 2.0f) + -1.0f;
          _1144 = (((((_1106.z * _899) + (_1102.z * _896)) + (_1110.z * _902)) + (_1114.z * _905)) * 2.0f) + -1.0f;
          _1146 = rsqrt(dot(float3(_1126, _1135, _1144), float3(_1126, _1135, _1144)));  // [sem: invLength]
          _1147 = _1126 * _1146;
          _1148 = _1135 * _1146;
          _1149 = _1144 * _1146;
          if (!(_renderParams.z > 0.0f)) {
            if (!(_renderParams2.y > 0.0f)) {
              _1161 = (half)(saturate((half)(_176 + 0.15002441h)));
            } else {
              _1161 = _176;
            }
          } else {
            _1161 = _176;
          }
          _1162 = float(_1161);
          _1165 = float(_287);
          _1166 = float(_293);
          _1167 = float(_299);
          _1168 = dot(float3(_1095, _1097, _1099), float3(_1147, _1148, _1149));
          _1169 = -0.0f - _997;
          _1170 = -0.0f - _998;
          _1171 = -0.0f - _999;
          _1172 = dot(float3(_1095, _1097, _1099), float3(_1169, _1170, _1171));
          _1178 = cos(abs(asin(_1172) - asin(_1168)) * 0.5f);
          _1180 = _1147 - (_1168 * _1095);
          _1182 = _1148 - (_1168 * _1097);
          _1184 = _1149 - (_1168 * _1099);
          _1186 = _1169 - (_1172 * _1095);
          _1188 = _1170 - (_1172 * _1097);
          _1190 = _1171 - (_1172 * _1099);
          _1197 = dot(float3(_1180, _1182, _1184), float3(_1186, _1188, _1190)) * rsqrt((dot(float3(_1180, _1182, _1184), float3(_1180, _1182, _1184)) * dot(float3(_1186, _1188, _1190), float3(_1186, _1188, _1190))) + 0.0001f);
          _1199 = min(max(_1162, 0.09803922f), 1.0f);
          _1200 = _1199 * _1199;
          _1201 = _1200 * 0.5f;
          _1202 = _1200 * 2.0f;
          _1203 = _1172 + _1168;
          _1204 = _1203 - _bevelParams.y;
          _1208 = 1.0f / ((1.19f / _1178) + (_1178 * 0.36f));
          _1217 = ((_1208 * (0.6f - (_1197 * 0.8f))) + 1.0f) * sqrt(saturate((_1197 * 0.5f) + 0.5f));
          _1223 = 1.0f - (sqrt(saturate(1.0f - (_1217 * _1217))) * _1178);
          _1224 = _1223 * _1223;
          _1228 = 0.9534794f - ((_1224 * _1224) * (_1223 * 0.9534794f));
          _1229 = _1217 * _1208;
          _1234 = (sqrt(1.0f - (_1229 * _1229)) * 0.5f) / _1178;
          _1235 = log2(_1165);
          _1236 = log2(_1166);
          _1237 = log2(_1167);
          _1251 = ((_1228 * _1228) * (exp2((((_1204 * _1204) * -0.5f) / (_1201 * _1201)) * 1.442695f) / (_1200 * 1.2533141f))) * exp2(-5.741926f - (_1197 * 5.265837f));
          _1253 = _1203 - (_bevelParams.y * 4.0f);
          _1255 = 1.0f - (_1178 * 0.5f);
          _1256 = _1255 * _1255;
          _1260 = (_1256 * _1256) * (0.9534794f - (_1178 * 0.4767397f));
          _1261 = 0.9534794f - _1260;
          _1262 = 0.8f / _1178;
          _1278 = (((_1261 * _1261) * (_1260 + 0.046520565f)) * (exp2((((_1253 * _1253) * -0.5f) / (_1202 * _1202)) * 1.442695f) / (_1200 * 5.0132565f))) * exp2((_1197 * 24.525816f) + -24.208424f);
          _1287 = min(0.0f, (-0.0f - ((exp2(_1235 * _1234) * _1251) + (exp2(_1262 * _1235) * _1278))));
          _1296 = min(0.0f, (-0.0f - ((exp2(_1236 * _1234) * _1251) + (exp2(_1262 * _1236) * _1278))));
          _1305 = min(0.0f, (-0.0f - ((exp2(_1237 * _1234) * _1251) + (exp2(_1262 * _1237) * _1278))));
          _1308 = saturate(abs(dot(float3(_1147, _1148, _1149), float3(_1095, _1097, _1099))));  // [sem: expr_sat]
          // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
          _1315 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1308, _1162, saturate(sqrt(exp2(_1235 * 1.5f)))), 0.0f);
          // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
          _1322 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1308, _1162, saturate(sqrt(exp2(_1236 * 1.5f)))), 0.0f);
          // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
          _1329 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1308, _1162, saturate(sqrt(exp2(_1237 * 1.5f)))), 0.0f);
          _1332 = min(0.99f, _1315.x);
          _1333 = min(0.99f, _1322.x);
          _1334 = min(0.99f, _1329.x);
          _1335 = min(0.99f, _1315.y);
          _1336 = min(0.99f, _1322.y);
          _1337 = min(0.99f, _1329.y);
          _1338 = _1332 * _1332;
          _1339 = _1333 * _1333;
          _1340 = _1334 * _1334;
          _1341 = _1335 * _1335;
          _1342 = _1336 * _1336;
          _1343 = _1337 * _1337;
          _1344 = _1341 * _1335;
          _1345 = _1342 * _1336;
          _1346 = _1343 * _1337;
          _1347 = 1.0f - _1338;
          _1348 = 1.0f - _1339;
          _1349 = 1.0f - _1340;
          _1350 = _1347 * _1347;
          _1351 = _1348 * _1348;
          _1352 = _1349 * _1349;
          _1353 = _1350 * _1347;
          _1354 = _1351 * _1348;
          _1355 = _1352 * _1349;
          _1357 = min(max(_1162, 0.18f), 0.6f);
          _1358 = _1357 * _1357;
          _1359 = _1358 * 0.25f;
          _1360 = _1358 * 4.0f;
          _1362 = (_1333 + _1332) + _1334;
          _1363 = _1332 / _1362;
          _1364 = _1333 / _1362;
          _1365 = _1334 / _1362;
          _1366 = dot(float3(_1358, _1359, _1360), float3(_1363, _1364, _1365));
          _1367 = _1366 * _1366;
          _1374 = asin(min(max(_1168, -1.0f), 1.0f)) + asin(min(max(_1172, -1.0f), 1.0f));
          _1375 = _1374 * 0.5f;
          _1376 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1363, _1364, _1365));
          _1377 = _1376 * _1376;
          _1379 = (_1336 + _1335) + _1337;
          _1383 = dot(float3(_1358, _1359, _1360), float3((_1335 / _1379), (_1336 / _1379), (_1337 / _1379)));
          _1387 = sqrt((_1383 * _1383) + (_1367 * 2.0f));
          _1390 = (_1383 * 3.0f) + (_1366 * 2.0f);
          _1398 = (((_1344 + _1335) * ((_1338 * 0.7f) + 1.0f)) * _1387) / ((_1390 * _1344) + _1335);
          _1406 = (((_1345 + _1336) * ((_1339 * 0.7f) + 1.0f)) * _1387) / ((_1390 * _1345) + _1336);
          _1414 = (((_1346 + _1337) * ((_1340 * 0.7f) + 1.0f)) * _1387) / ((_1390 * _1346) + _1337);
          _1425 = _1375 - (((_1377 * (((_1338 * 4.0f) * _1341) + (_1350 * 2.0f))) * (1.0f - ((_1341 * 2.0f) / _1350))) / _1353);
          _1436 = _1375 - (((_1377 * (((_1339 * 4.0f) * _1342) + (_1351 * 2.0f))) * (1.0f - ((_1342 * 2.0f) / _1351))) / _1354);
          _1447 = _1375 - (((_1377 * (((_1340 * 4.0f) * _1343) + (_1352 * 2.0f))) * (1.0f - ((_1343 * 2.0f) / _1352))) / _1355);
          _1453 = exp2((((_1374 * -0.25f) * _1375) / _1367) * 1.442695f) * 1.4f;
          _1473 = ((((((_1335 * _1338) / _1347) + ((_1344 * _1338) / _1353)) * 4.3982296f) * exp2((((_1425 * _1425) * -0.5f) / ((_1398 * _1398) + _1367)) * 1.442695f)) + ((((_1315.x + _1287) * 0.25f) - _1287) * 6.2831855f)) * _1453;
          _1493 = ((((((_1336 * _1339) / _1348) + ((_1345 * _1339) / _1354)) * 4.3982296f) * exp2((((_1436 * _1436) * -0.5f) / ((_1406 * _1406) + _1367)) * 1.442695f)) + ((((_1322.x + _1296) * 0.25f) - _1296) * 6.2831855f)) * _1453;
          _1513 = ((((((_1337 * _1340) / _1349) + ((_1346 * _1340) / _1355)) * 4.3982296f) * exp2((((_1447 * _1447) * -0.5f) / ((_1414 * _1414) + _1367)) * 1.442695f)) + ((((_1329.x + _1305) * 0.25f) - _1305) * 6.2831855f)) * _1453;
          _1514 = max(0.125f, _1093);
          _2033 = _1089;
          _2034 = _1088;
          _2035 = _1087;
          _2036 = _1086;
          _2037 = max(0.01f, (lerp(_1513, _1167, _1514)));
          _2038 = max(0.01f, ((_1514 * (_1166 - _1493)) + _1493));
          _2039 = max(0.01f, ((_1514 * (_1165 - _1473)) + _1473));
          _2040 = 66;
          _2041 = _1099;
          _2042 = _1097;
          _2043 = _1095;
          _2044 = 0.0h;
          _2045 = _1093;
        } else {
          _2033 = _1089;
          _2034 = _1088;
          _2035 = _1087;
          _2036 = _1086;
          _2037 = 0.0f;
          _2038 = 0.0f;
          _2039 = 0.0f;
          _2040 = 66;
          _2041 = _1099;
          _2042 = _1097;
          _2043 = _1095;
          _2044 = 0.0h;
          _2045 = _1093;
        }
      } else {
        _1528 = _119;
        _1529 = _1090;
        _1530 = _1089;
        _1531 = _1088;
        _1532 = _1087;
        _1533 = _1086;
        _1534 = (_1528 == 53);
        if ((_1528 == 67) || _1534) {
          _1542 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 127)));
          if (!(float(_1529) > (frac(frac(dot(float2(((_1542 * 32.665f) + _104), ((_1542 * 11.815f) + _105)), float2(0.06711056f, 0.00583715f))) * 52.982918f) * 0.2f))) {
            if ((_1528 & 126) == 66) {
              _2033 = _1530;
              _2034 = _1531;
              _2035 = _1532;
              _2036 = _1533;
              _2037 = max(0.01f, float(_299));
              _2038 = max(0.01f, float(_293));
              _2039 = max(0.01f, float(_287));
              _2040 = _1528;
              _2041 = ((_1018 * 2.0f) + -1.0f);
              _2042 = ((_1019 * 2.0f) + -1.0f);
              _2043 = ((_1020 * 2.0f) + -1.0f);
              _2044 = 0.0h;
              _2045 = 1.0f;
            } else {
              if (_1534) {
                _1573 = (_1020 * 2.0f) + -1.0f;
                _1575 = (_1019 * 2.0f) + -1.0f;
                _1577 = 1.0f - abs(_1573);
                _1578 = abs(_1575);
                _1579 = _1577 - _1578;
                if (!(_1579 >= 0.0f)) {
                  _1590 = (_1577 * select((_1575 >= 0.0f), 1.0f, -1.0f));
                  _1591 = ((1.0f - _1578) * select((_1573 >= 0.0f), 1.0f, -1.0f));
                } else {
                  _1590 = _1575;
                  _1591 = _1573;
                }
                _1593 = rsqrt(dot(float3(_1591, _1590, _1579), float3(_1591, _1590, _1579)));  // [sem: invLength]
                _2033 = _1530;
                _2034 = _1531;
                _2035 = _1532;
                _2036 = _1533;
                _2037 = max(0.01f, float(_299));
                _2038 = max(0.01f, float(_293));
                _2039 = max(0.01f, float(_287));
                _2040 = 53;
                _2041 = (_1593 * _1579);
                _2042 = (_1593 * _1590);
                _2043 = (_1593 * _1591);
                _2044 = 0.0h;
                _2045 = 1.0f;
              } else {
                _2033 = _1530;
                _2034 = _1531;
                _2035 = _1532;
                _2036 = _1533;
                _2037 = 0.0f;
                _2038 = 0.0f;
                _2039 = 0.0f;
                _2040 = _1528;
                _2041 = _637;
                _2042 = _636;
                _2043 = _635;
                _2044 = 0.0h;
                _2045 = 1.0f;
              }
            }
          } else {
            _2033 = _1530;
            _2034 = _1531;
            _2035 = _1532;
            _2036 = _1533;
            _2037 = 0.0f;
            _2038 = 0.0f;
            _2039 = 0.0f;
            _2040 = 52;
            _2041 = _637;
            _2042 = _636;
            _2043 = _635;
            _2044 = 0.0h;
            _2045 = 1.0f;
          }
        } else {
          if ((_1528 & 126) == 66) {
            _1608 = __3__36__0__0__g_bentCone.Load(int3(_516, _515, 0));  // [sem: _3__36__0__0__g_bentCone_load]
            _1612 = __3__36__0__0__g_bentCone.Load(int3(_911, _515, 0));  // [sem: _3__36__0__0__g_bentCone_load]
            _1616 = __3__36__0__0__g_bentCone.Load(int3(_516, _916, 0));  // [sem: _3__36__0__0__g_bentCone_load]
            _1620 = __3__36__0__0__g_bentCone.Load(int3(_911, _916, 0));  // [sem: _3__36__0__0__g_bentCone_load]
            _1632 = (((((_1612.x * _899) + (_1608.x * _896)) + (_1616.x * _902)) + (_1620.x * _905)) * 2.0f) + -1.0f;
            _1641 = (((((_1612.y * _899) + (_1608.y * _896)) + (_1616.y * _902)) + (_1620.y * _905)) * 2.0f) + -1.0f;
            _1650 = (((((_1612.z * _899) + (_1608.z * _896)) + (_1616.z * _902)) + (_1620.z * _905)) * 2.0f) + -1.0f;
            _1652 = rsqrt(dot(float3(_1632, _1641, _1650), float3(_1632, _1641, _1650)));  // [sem: invLength]
            _1653 = _1632 * _1652;
            _1654 = _1641 * _1652;
            _1655 = _1650 * _1652;
            if (!(_renderParams.z > 0.0f)) {
              if (!(_renderParams2.y > 0.0f)) {
                _1667 = (half)(saturate((half)(_176 + 0.15002441h)));
              } else {
                _1667 = _176;
              }
            } else {
              _1667 = _176;
            }
            _1668 = float(_1667);
            _1671 = float(_287);
            _1672 = float(_293);
            _1673 = float(_299);
            _1674 = dot(float3(_635, _636, _637), float3(_1653, _1654, _1655));
            _1675 = -0.0f - _997;
            _1676 = -0.0f - _998;
            _1677 = -0.0f - _999;
            _1678 = dot(float3(_635, _636, _637), float3(_1675, _1676, _1677));
            _1684 = cos(abs(asin(_1678) - asin(_1674)) * 0.5f);
            _1686 = _1653 - (_1674 * _635);
            _1688 = _1654 - (_1674 * _636);
            _1690 = _1655 - (_1674 * _637);
            _1692 = _1675 - (_1678 * _635);
            _1694 = _1676 - (_1678 * _636);
            _1696 = _1677 - (_1678 * _637);
            _1703 = dot(float3(_1686, _1688, _1690), float3(_1692, _1694, _1696)) * rsqrt((dot(float3(_1686, _1688, _1690), float3(_1686, _1688, _1690)) * dot(float3(_1692, _1694, _1696), float3(_1692, _1694, _1696))) + 0.0001f);
            _1705 = min(max(_1668, 0.09803922f), 1.0f);
            _1706 = _1705 * _1705;
            _1707 = _1706 * 0.5f;
            _1708 = _1706 * 2.0f;
            _1709 = _1678 + _1674;
            _1710 = _1709 - _bevelParams.y;
            _1714 = 1.0f / ((1.19f / _1684) + (_1684 * 0.36f));
            _1723 = ((_1714 * (0.6f - (_1703 * 0.8f))) + 1.0f) * sqrt(saturate((_1703 * 0.5f) + 0.5f));
            _1729 = 1.0f - (sqrt(saturate(1.0f - (_1723 * _1723))) * _1684);
            _1730 = _1729 * _1729;
            _1734 = 0.9534794f - ((_1730 * _1730) * (_1729 * 0.9534794f));
            _1735 = _1723 * _1714;
            _1740 = (sqrt(1.0f - (_1735 * _1735)) * 0.5f) / _1684;
            _1741 = log2(_1671);
            _1742 = log2(_1672);
            _1743 = log2(_1673);
            _1757 = ((_1734 * _1734) * (exp2((((_1710 * _1710) * -0.5f) / (_1707 * _1707)) * 1.442695f) / (_1706 * 1.2533141f))) * exp2(-5.741926f - (_1703 * 5.265837f));
            _1759 = _1709 - (_bevelParams.y * 4.0f);
            _1761 = 1.0f - (_1684 * 0.5f);
            _1762 = _1761 * _1761;
            _1766 = (_1762 * _1762) * (0.9534794f - (_1684 * 0.4767397f));
            _1767 = 0.9534794f - _1766;
            _1768 = 0.8f / _1684;
            _1784 = (((_1767 * _1767) * (_1766 + 0.046520565f)) * (exp2((((_1759 * _1759) * -0.5f) / (_1708 * _1708)) * 1.442695f) / (_1706 * 5.0132565f))) * exp2((_1703 * 24.525816f) + -24.208424f);
            _1793 = min(0.0f, (-0.0f - ((exp2(_1741 * _1740) * _1757) + (exp2(_1768 * _1741) * _1784))));
            _1802 = min(0.0f, (-0.0f - ((exp2(_1742 * _1740) * _1757) + (exp2(_1768 * _1742) * _1784))));
            _1811 = min(0.0f, (-0.0f - ((exp2(_1743 * _1740) * _1757) + (exp2(_1768 * _1743) * _1784))));
            _1814 = saturate(abs(dot(float3(_1653, _1654, _1655), float3(_635, _636, _637))));  // [sem: expr_sat]
            // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
            _1821 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1814, _1668, saturate(sqrt(exp2(_1741 * 1.5f)))), 0.0f);
            // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
            _1828 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1814, _1668, saturate(sqrt(exp2(_1742 * 1.5f)))), 0.0f);
            // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
            _1835 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1814, _1668, saturate(sqrt(exp2(_1743 * 1.5f)))), 0.0f);
            _1838 = min(0.99f, _1821.x);
            _1839 = min(0.99f, _1828.x);
            _1840 = min(0.99f, _1835.x);
            _1841 = min(0.99f, _1821.y);
            _1842 = min(0.99f, _1828.y);
            _1843 = min(0.99f, _1835.y);
            _1844 = _1838 * _1838;
            _1845 = _1839 * _1839;
            _1846 = _1840 * _1840;
            _1847 = _1841 * _1841;
            _1848 = _1842 * _1842;
            _1849 = _1843 * _1843;
            _1850 = _1847 * _1841;
            _1851 = _1848 * _1842;
            _1852 = _1849 * _1843;
            _1853 = 1.0f - _1844;
            _1854 = 1.0f - _1845;
            _1855 = 1.0f - _1846;
            _1856 = _1853 * _1853;
            _1857 = _1854 * _1854;
            _1858 = _1855 * _1855;
            _1859 = _1856 * _1853;
            _1860 = _1857 * _1854;
            _1861 = _1858 * _1855;
            _1863 = min(max(_1668, 0.18f), 0.6f);
            _1864 = _1863 * _1863;
            _1865 = _1864 * 0.25f;
            _1866 = _1864 * 4.0f;
            _1868 = (_1839 + _1838) + _1840;
            _1869 = _1838 / _1868;
            _1870 = _1839 / _1868;
            _1871 = _1840 / _1868;
            _1872 = dot(float3(_1864, _1865, _1866), float3(_1869, _1870, _1871));
            _1873 = _1872 * _1872;
            _1880 = asin(min(max(_1674, -1.0f), 1.0f)) + asin(min(max(_1678, -1.0f), 1.0f));
            _1881 = _1880 * 0.5f;
            _1882 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1869, _1870, _1871));
            _1883 = _1882 * _1882;
            _1885 = (_1842 + _1841) + _1843;
            _1889 = dot(float3(_1864, _1865, _1866), float3((_1841 / _1885), (_1842 / _1885), (_1843 / _1885)));
            _1893 = sqrt((_1889 * _1889) + (_1873 * 2.0f));
            _1896 = (_1889 * 3.0f) + (_1872 * 2.0f);
            _1904 = (((_1850 + _1841) * ((_1844 * 0.7f) + 1.0f)) * _1893) / ((_1896 * _1850) + _1841);
            _1912 = (((_1851 + _1842) * ((_1845 * 0.7f) + 1.0f)) * _1893) / ((_1896 * _1851) + _1842);
            _1920 = (((_1852 + _1843) * ((_1846 * 0.7f) + 1.0f)) * _1893) / ((_1896 * _1852) + _1843);
            _1931 = _1881 - (((_1883 * (((_1844 * 4.0f) * _1847) + (_1856 * 2.0f))) * (1.0f - ((_1847 * 2.0f) / _1856))) / _1859);
            _1942 = _1881 - (((_1883 * (((_1845 * 4.0f) * _1848) + (_1857 * 2.0f))) * (1.0f - ((_1848 * 2.0f) / _1857))) / _1860);
            _1953 = _1881 - (((_1883 * (((_1846 * 4.0f) * _1849) + (_1858 * 2.0f))) * (1.0f - ((_1849 * 2.0f) / _1858))) / _1861);
            _1959 = exp2((((_1880 * -0.25f) * _1881) / _1873) * 1.442695f) * 1.4f;
            _1979 = ((((((_1841 * _1844) / _1853) + ((_1850 * _1844) / _1859)) * 4.3982296f) * exp2((((_1931 * _1931) * -0.5f) / ((_1904 * _1904) + _1873)) * 1.442695f)) + ((((_1821.x + _1793) * 0.25f) - _1793) * 6.2831855f)) * _1959;
            _1999 = ((((((_1842 * _1845) / _1854) + ((_1851 * _1845) / _1860)) * 4.3982296f) * exp2((((_1942 * _1942) * -0.5f) / ((_1912 * _1912) + _1873)) * 1.442695f)) + ((((_1828.x + _1802) * 0.25f) - _1802) * 6.2831855f)) * _1959;
            _2019 = ((((((_1843 * _1846) / _1855) + ((_1852 * _1846) / _1861)) * 4.3982296f) * exp2((((_1953 * _1953) * -0.5f) / ((_1920 * _1920) + _1873)) * 1.442695f)) + ((((_1835.x + _1811) * 0.25f) - _1811) * 6.2831855f)) * _1959;
            _2033 = _1530;
            _2034 = _1531;
            _2035 = _1532;
            _2036 = _1533;
            _2037 = max(0.01f, (lerp(_2019, _1673, 0.125f)));
            _2038 = max(0.01f, (lerp(_1999, _1672, 0.125f)));
            _2039 = max(0.01f, (lerp(_1979, _1671, 0.125f)));
            _2040 = _1528;
            _2041 = _637;
            _2042 = _636;
            _2043 = _635;
            _2044 = _1529;
            _2045 = 0.0f;
          } else {
            _2033 = _1530;
            _2034 = _1531;
            _2035 = _1532;
            _2036 = _1533;
            _2037 = 0.0f;
            _2038 = 0.0f;
            _2039 = 0.0f;
            _2040 = _1528;
            _2041 = _637;
            _2042 = _636;
            _2043 = _635;
            _2044 = _1529;
            _2045 = 0.0f;
          }
        }
      }
    }
    _2059 = -0.0f - min(0.0f, (-0.0f - ((((float(_907.x) * _896) + (float(_912.x) * _899)) + (float(_917.x) * _902)) + (float(_921.x) * _905))));
    _2073 = -0.0f - min(0.0f, (-0.0f - ((((float(_907.y) * _896) + (float(_912.y) * _899)) + (float(_917.y) * _902)) + (float(_921.y) * _905))));
    _2087 = -0.0f - min(0.0f, (-0.0f - ((((float(_907.z) * _896) + (float(_912.z) * _899)) + (float(_917.z) * _902)) + (float(_921.z) * _905))));
    half2 _2089 = __3__36__0__0__g_sceneAO.Load(int3(_516, _515, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    half2 _2092 = __3__36__0__0__g_sceneAO.Load(int3(_911, _515, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    half2 _2095 = __3__36__0__0__g_sceneAO.Load(int3(_516, _916, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    half2 _2098 = __3__36__0__0__g_sceneAO.Load(int3(_911, _916, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    _2111 = (((float(_2092.x) * _899) + (float(_2089.x) * _896)) + (float(_2095.x) * _902)) + (float(_2098.x) * _905);
    if ((uint)_2040 > (uint)11) {
      _2116 = (int)(uint)((int)((uint)_2040 < (uint)19));
      bool __branch_chain_2113;
      if ((uint)_2040 < (uint)20) {
        _2125 = _2116;
        _2126 = 1;
        __branch_chain_2113 = true;
      } else {
        if (!(_2040 == 65)) {
          _2125 = _2116;
          _2126 = ((int)(uint)((int)(_2040 == 107)));
          __branch_chain_2113 = true;
        } else {
          _2133 = true;
          _2134 = true;
          __branch_chain_2113 = false;
        }
      }
      if (__branch_chain_2113) {
        if (_2125 == 0) {
          _2133 = false;
          _2134 = ((_2040 == 96) || (_2126 != 0));
        } else {
          _2133 = false;
          _2134 = true;
        }
      }
    } else {
      _2125 = 0;
      _2126 = ((int)(uint)((int)((uint)_2040 > (uint)10)));
      if (_2125 == 0) {
        _2133 = false;
        _2134 = ((_2040 == 96) || (_2126 != 0));
      } else {
        _2133 = false;
        _2134 = true;
      }
    }
    _2136 = select(_2134, float(_2044), 0.0f);
    _2138 = ((uint)(_2040 & 24) > (uint)23);
    if (_2138) {
      _2140 = (_2040 == 29);
      if (_2140) {
        _2145 = float(saturate(_176));
      } else {
        _2145 = 0.0f;
      }
      _2147 = (uint)((half)(_180 * 255.0h));
      if (_184) {
        _2156 = (((float)((uint)((uint)(_2147 & 127)))) * 0.007874016f);
        _2157 = select(((_2147 & 128) != 0), 1.0f, 0.0f);
      } else {
        _2156 = 0.0f;
        _2157 = 0.0f;
      }
      _2158 = half(_2156);
      _2159 = (_2158 > 0.99902344h);
      _2169 = _2145;
      _2170 = (half)(select(_2159, 1.0f, _299));
      _2171 = (half)(select(_2159, 1.0f, _293));
      _2172 = (half)(select(_2159, 1.0f, _287));
      _2173 = _2157;
      _2174 = (half)(select(((_2040 == 24) || _2140), 0.010002136f, _176));
      _2175 = _2158;
    } else {
      _2169 = 0.0f;
      _2170 = _299;
      _2171 = _293;
      _2172 = _287;
      _2173 = 0.0f;
      _2174 = _176;
      _2175 = (half)(select(_2134, 0.0f, _2044));
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
      float3 _rndx_fcBaseColor = float3(float(_2172), float(_2171), float(_2170));
      half4 _rndx_fcShadow = __3__36__0__0__g_sceneShadowColor.Load(int3(_98, _103, 0));
      float _rndx_fcShadowVis = saturate(dot(float3(_rndx_fcShadow.xyz), float3(0.2126f, 0.7152f, 0.0722f)));
      float3 _rndx_fcCorrected = FoliageColorCorrect(_rndx_fcBaseColor, _sunDirection.xyz, _rndx_fcShadowVis, float3(1.0f, 1.0f, 1.0f));
      float3 _rndx_fscColor = FoliageSelectiveColor(_rndx_fcCorrected);
      _2172 = half(_rndx_fscColor.x);
      _2171 = half(_rndx_fscColor.y);
      _2170 = half(_rndx_fscColor.z);
    }
    // RenoDX: <<< [Patch: FoliageColorCorrect]
    _2176 = _2040 & -2;
    _2177 = (_2176 == 66);
    _2178 = (_2040 == 53);
    _2179 = _2178 || _2177;
    _2180 = -0.0f - _997;
    _2181 = -0.0f - _998;
    _2182 = -0.0f - _999;
    _2183 = dot(float3(_2180, _2181, _2182), float3(_635, _636, _637));
    if (_2179) {
      _2187 = abs(_2183);
    } else {
      _2187 = _2183;
    }
    _2188 = saturate(_2187);  // [sem: _2187_sat]
    _2189 = _117.x & 128;  // [sem: _3__36__0__0__g_stencil_load_derived]
    _2190 = (_2189 == 0);
    if (_2190) {
      if ((uint)_119 > (uint)51) {
        if (!(((_117.x & 125) == 105) || ((uint)_119 < (uint)68))) {
          _2213 = ((int)(uint)((int)(_119 == 98)));
        } else {
          _2213 = 1;
        }
      } else {
        if ((uint)_119 > (uint)10) {
          if ((uint)_119 < (uint)20) {
            _2213 = ((int)(uint)((int)(_607 != 14)));
          } else {
            _2213 = ((int)(uint)((int)((_117.x & 125) == 105)));
          }
        } else {
          _2213 = 0;
        }
      }
    } else {
      _2213 = 1;
    }
    [branch]
    if (_2138) {
      _2222 = (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(_98, _103, 0)))).x) & 16777215)))) * 5.960465e-08f);
    } else {
      _2222 = _114.x;
    }
    _2234 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), _2222, mad((_projToPrevProj[3].y), _955, ((_projToPrevProj[3].x) * _953)));
    if (_2213 == 0) {
      _2265 = (((mad((_projToPrevProj[1].z), _2222, mad((_projToPrevProj[1].y), _955, ((_projToPrevProj[1].x) * _953))) + (_projToPrevProj[1].w)) / _2234) - _955);
      _2266 = (((mad((_projToPrevProj[0].z), _2222, mad((_projToPrevProj[0].y), _955, ((_projToPrevProj[0].x) * _953))) + (_projToPrevProj[0].w)) / _2234) - _953);
    } else {
      _2238 = __3__36__0__0__g_velocity.Load(int3(_98, _103, 0));  // [sem: _3__36__0__0__g_velocity_load]
      _2265 = (_2238.y * 2.0f);
      _2266 = (_2238.x * 2.0f);
    }
    _2268 = _nearFarProj.x / max(1e-07f, _2222);
    _2270 = (_2266 * 0.5f) + _110;
    _2272 = _112 - (_2265 * 0.5f);
    _2280 = select(((_2272 > 1.0f) || ((_2272 < 0.0f) || ((_2270 < 0.0f) || (_2270 > 1.0f)))), 1.0f, 0.0f);
    _2284 = (_bufferSizeAndInvSize.x * _2270) + -0.5f;
    _2287 = (_bufferSizeAndInvSize.y * _2272) + -0.5f;
    _2289 = (int)(floor(_2284));
    _2291 = (int)(floor(_2287));
    _2292 = (float)((int)(_2289));
    _2293 = (float)((int)(_2291));
    _2296 = (_2292 + 0.5f) * _bufferSizeAndInvSize.z;
    _2299 = (_2293 + 0.5f) * _bufferSizeAndInvSize.w;
    _2301 = __3__36__0__0__g_depthOpaquePrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(_2296, _2299));  // [sem: _3__36__0__0__g_depthOpaquePrev_gather]
    _2312 = mad(((uint)((uint)(_2301.w)) >> 24), 16777216, mad(((uint)((uint)(_2301.z)) >> 24), 65536, mad(((uint)((uint)(_2301.y)) >> 24), 256, ((uint)((uint)(_2301.x)) >> 24))));
    if (_2190) {
      if ((uint)_119 > (uint)51) {
        if (!(_119 == 98)) {
          if (!(((_117.x & 125) == 105) || ((uint)_119 < (uint)68))) {
            _2372 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
          } else {
            _2372 = 0.0f;
          }
        } else {
          _2372 = 0.0f;
        }
      } else {
        if ((uint)_119 > (uint)10) {
          if ((uint)_119 < (uint)20) {
            if (_607 == 14) {
              _2372 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
            } else {
              _2372 = 0.0f;
            }
          } else {
            if (!((_117.x & 125) == 105)) {
              _2372 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
            } else {
              _2372 = 0.0f;
            }
          }
        } else {
          _2372 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
        }
      }
    } else {
      _2372 = 0.0f;
    }
    _2375 = _screenPercentage.x * 2.0f;
    _2378 = _2375 * abs(_110 + -0.5f);
    _2380 = _screenPercentage.y * 2.0f;
    _2383 = _2380 * abs(_112 + -0.5f);
    _2387 = sqrt(dot(float2(_2378, _2383), float2(_2378, _2383)) + 1.0f) * _2268;
    _2390 = abs(_2270 + -0.5f) * _2375;
    _2393 = abs(_2272 + -0.5f) * _2380;
    _2396 = sqrt(dot(float2(_2390, _2393), float2(_2390, _2393)) + 1.0f);
    _2399 = _600 || ((uint)((int)(_2040) + (int)(-97)) < (uint)2);
    _2400 = _2268 * _2268;
    _2403 = (_2400 * select(_2399, 0.5f, 0.2f)) + 1.0f;
    _2405 = ((uint)((int)(_2040) + (int)(-52)) < (uint)16);
    if (_2405) {
      _2424 = (1000.0f - (saturate((float)((bool)((sqrt(((_diffViewPosAccurate.y * _diffViewPosAccurate.y) + (_diffViewPosAccurate.x * _diffViewPosAccurate.x)) + (_diffViewPosAccurate.z * _diffViewPosAccurate.z)) * 50.0f) > 1.0f))) * 875.0f));
    } else {
      _2424 = 50.0f;
    }
    _2429 = select(_2405, 0.0f, ((_temporalReprojectionParams.y * 0.1f) * max(0.0f, (_2268 + -1.0f))));
    _2440 = max(0.0f, (abs(_2387 - (((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_2301.x & 16777215)))) * 5.960465e-08f))) - _2372) * _2396)) - _2429));
    _2451 = max(0.0f, (abs(_2387 - (((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_2301.y & 16777215)))) * 5.960465e-08f))) - _2372) * _2396)) - _2429));
    _2462 = max(0.0f, (abs(_2387 - (((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_2301.z & 16777215)))) * 5.960465e-08f))) - _2372) * _2396)) - _2429));
    _2473 = max(0.0f, (abs(_2387 - (((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_2301.w & 16777215)))) * 5.960465e-08f))) - _2372) * _2396)) - _2429));
    _2474 = _2440 * _2440;
    _2475 = _2451 * _2451;
    _2476 = _2462 * _2462;
    _2477 = _2473 * _2473;
    _2482 = (-1.442695f / ((_2400 * 0.1f) + 1.0f)) * select(_2399, 0.2f, _2424);
    _2486 = select((_2474 > _2403), 0.0f, exp2(_2482 * _2474));
    _2490 = select((_2475 > _2403), 0.0f, exp2(_2482 * _2475));
    _2494 = select((_2476 > _2403), 0.0f, exp2(_2482 * _2476));
    _2498 = select((_2477 > _2403), 0.0f, exp2(_2482 * _2477));
    if (!_2138) {
      _2500 = _2312 & 127;
      _2501 = _2312 & 32512;
      _2502 = _2312 & 8323072;
      _2503 = _2312 & 2130706432;
      _2505 = ((uint)((int)(_2500) + (int)(-52)) < (uint)16);
      _2509 = ((uint)((int)(((uint)((uint)(_2312)) >> 8) & 127) + (int)(-52)) < (uint)16);
      _2513 = ((uint)((int)(((uint)((uint)(_2312)) >> 16) & 127) + (int)(-52)) < (uint)16);
      _2517 = ((uint)((int)(((uint)((uint)(_2312)) >> 24) & 127) + (int)(-52)) < (uint)16);
      _2519 = ((uint)((int)(_119) + (int)(-52)) < (uint)16);
      _2521 = (_2189 != 0) || _2519;
      _2522 = (_2040 == 6);
      _2524 = ((uint)((int)(_2040) + (int)(-105)) < (uint)3);
      if (_610) {
        if (!((_2519 ^ _2505) || ((_2522 ^ (_2500 == 6)) || (_2521 ^ (((_2312 & 128) != 0) || _2505))))) {
          _2547 = (_2524 ^ ((_2500 == 107) || ((uint)((int)(_2500) + (int)(-105)) < (uint)2)));
        } else {
          _2547 = true;
        }
        _2550 = ((float)((bool)(!_2547))) * _2486;
        _2558 = _2550;
        if (!((_2519 ^ _2509) || ((_2522 ^ (_2501 == 1536)) || (_2521 ^ (((_2312 & 32768) != 0) || _2509))))) {
          _2575 = (_2524 ^ (((_2312 & 32000) == 26880) || (_2501 == 27136)));
        } else {
          _2575 = true;
        }
        _2578 = ((float)((bool)(!_2575))) * _2490;
        _2587 = _2578;
        _2588 = _2558;
        if (!((_2519 ^ _2513) || ((_2522 ^ (_2502 == 393216)) || (_2521 ^ (((_2312 & 8388608) != 0) || _2513))))) {
          _2605 = (_2524 ^ (((_2312 & 8192000) == 6881280) || (_2502 == 6946816)));
        } else {
          _2605 = true;
        }
        _2608 = ((float)((bool)(!_2605))) * _2494;
        _2618 = _2608;
        _2619 = _2588;
        _2620 = _2587;
        if (!((_2519 ^ _2517) || ((_2522 ^ (_2503 == 100663296)) || (_2521 ^ (((int)_2312 < (int)0) || _2517))))) {
          _2636 = (_2524 ^ (((_2312 & 2097152000) == 1761607680) || (_2503 == 1778384896)));
        } else {
          _2636 = true;
        }
        _2639 = _2618;
        _2640 = _2619;
        _2641 = _2620;
        _2642 = (!_2636);
      } else {
        if ((_2500 != 53) && ((_2312 & 126) != 66)) {
          if (!((_2519 ^ _2505) || ((_2522 ^ (_2500 == 6)) || (_2521 ^ (((_2312 & 128) != 0) || _2505))))) {
            _2547 = (_2524 ^ ((_2500 == 107) || ((uint)((int)(_2500) + (int)(-105)) < (uint)2)));
          } else {
            _2547 = true;
          }
          _2550 = ((float)((bool)(!_2547))) * _2486;
          _2552 = _2550;
          if ((_2501 != 13568) && ((_2312 & 32256) != 16896)) {
            _2558 = _2552;
            if (!((_2519 ^ _2509) || ((_2522 ^ (_2501 == 1536)) || (_2521 ^ (((_2312 & 32768) != 0) || _2509))))) {
              _2575 = (_2524 ^ (((_2312 & 32000) == 26880) || (_2501 == 27136)));
            } else {
              _2575 = true;
            }
            _2578 = ((float)((bool)(!_2575))) * _2490;
            _2580 = _2578;
            _2581 = _2558;
            if ((_2502 != 3473408) && ((_2312 & 8257536) != 4325376)) {
              _2587 = _2580;
              _2588 = _2581;
              if (!((_2519 ^ _2513) || ((_2522 ^ (_2502 == 393216)) || (_2521 ^ (((_2312 & 8388608) != 0) || _2513))))) {
                _2605 = (_2524 ^ (((_2312 & 8192000) == 6881280) || (_2502 == 6946816)));
              } else {
                _2605 = true;
              }
              _2608 = ((float)((bool)(!_2605))) * _2494;
              _2610 = _2608;
              _2611 = _2588;
              _2612 = _2587;
              if ((_2503 != 889192448) && ((_2312 & 2113929216) != 1107296256)) {
                _2618 = _2610;
                _2619 = _2611;
                _2620 = _2612;
                if (!((_2519 ^ _2517) || ((_2522 ^ (_2503 == 100663296)) || (_2521 ^ (((int)_2312 < (int)0) || _2517))))) {
                  _2636 = (_2524 ^ (((_2312 & 2097152000) == 1761607680) || (_2503 == 1778384896)));
                } else {
                  _2636 = true;
                }
                _2639 = _2618;
                _2640 = _2619;
                _2641 = _2620;
                _2642 = (!_2636);
              } else {
                _2639 = _2610;
                _2640 = _2611;
                _2641 = _2612;
                _2642 = false;
              }
            } else {
              _2610 = 0.0f;
              _2611 = _2581;
              _2612 = _2580;
              if ((_2503 != 889192448) && ((_2312 & 2113929216) != 1107296256)) {
                _2618 = _2610;
                _2619 = _2611;
                _2620 = _2612;
                if (!((_2519 ^ _2517) || ((_2522 ^ (_2503 == 100663296)) || (_2521 ^ (((int)_2312 < (int)0) || _2517))))) {
                  _2636 = (_2524 ^ (((_2312 & 2097152000) == 1761607680) || (_2503 == 1778384896)));
                } else {
                  _2636 = true;
                }
                _2639 = _2618;
                _2640 = _2619;
                _2641 = _2620;
                _2642 = (!_2636);
              } else {
                _2639 = _2610;
                _2640 = _2611;
                _2641 = _2612;
                _2642 = false;
              }
            }
          } else {
            _2580 = 0.0f;
            _2581 = _2552;
            if ((_2502 != 3473408) && ((_2312 & 8257536) != 4325376)) {
              _2587 = _2580;
              _2588 = _2581;
              if (!((_2519 ^ _2513) || ((_2522 ^ (_2502 == 393216)) || (_2521 ^ (((_2312 & 8388608) != 0) || _2513))))) {
                _2605 = (_2524 ^ (((_2312 & 8192000) == 6881280) || (_2502 == 6946816)));
              } else {
                _2605 = true;
              }
              _2608 = ((float)((bool)(!_2605))) * _2494;
              _2610 = _2608;
              _2611 = _2588;
              _2612 = _2587;
              if ((_2503 != 889192448) && ((_2312 & 2113929216) != 1107296256)) {
                _2618 = _2610;
                _2619 = _2611;
                _2620 = _2612;
                if (!((_2519 ^ _2517) || ((_2522 ^ (_2503 == 100663296)) || (_2521 ^ (((int)_2312 < (int)0) || _2517))))) {
                  _2636 = (_2524 ^ (((_2312 & 2097152000) == 1761607680) || (_2503 == 1778384896)));
                } else {
                  _2636 = true;
                }
                _2639 = _2618;
                _2640 = _2619;
                _2641 = _2620;
                _2642 = (!_2636);
              } else {
                _2639 = _2610;
                _2640 = _2611;
                _2641 = _2612;
                _2642 = false;
              }
            } else {
              _2610 = 0.0f;
              _2611 = _2581;
              _2612 = _2580;
              if ((_2503 != 889192448) && ((_2312 & 2113929216) != 1107296256)) {
                _2618 = _2610;
                _2619 = _2611;
                _2620 = _2612;
                if (!((_2519 ^ _2517) || ((_2522 ^ (_2503 == 100663296)) || (_2521 ^ (((int)_2312 < (int)0) || _2517))))) {
                  _2636 = (_2524 ^ (((_2312 & 2097152000) == 1761607680) || (_2503 == 1778384896)));
                } else {
                  _2636 = true;
                }
                _2639 = _2618;
                _2640 = _2619;
                _2641 = _2620;
                _2642 = (!_2636);
              } else {
                _2639 = _2610;
                _2640 = _2611;
                _2641 = _2612;
                _2642 = false;
              }
            }
          }
        } else {
          _2552 = 0.0f;
          if ((_2501 != 13568) && ((_2312 & 32256) != 16896)) {
            _2558 = _2552;
            if (!((_2519 ^ _2509) || ((_2522 ^ (_2501 == 1536)) || (_2521 ^ (((_2312 & 32768) != 0) || _2509))))) {
              _2575 = (_2524 ^ (((_2312 & 32000) == 26880) || (_2501 == 27136)));
            } else {
              _2575 = true;
            }
            _2578 = ((float)((bool)(!_2575))) * _2490;
            _2580 = _2578;
            _2581 = _2558;
            if ((_2502 != 3473408) && ((_2312 & 8257536) != 4325376)) {
              _2587 = _2580;
              _2588 = _2581;
              if (!((_2519 ^ _2513) || ((_2522 ^ (_2502 == 393216)) || (_2521 ^ (((_2312 & 8388608) != 0) || _2513))))) {
                _2605 = (_2524 ^ (((_2312 & 8192000) == 6881280) || (_2502 == 6946816)));
              } else {
                _2605 = true;
              }
              _2608 = ((float)((bool)(!_2605))) * _2494;
              _2610 = _2608;
              _2611 = _2588;
              _2612 = _2587;
              if ((_2503 != 889192448) && ((_2312 & 2113929216) != 1107296256)) {
                _2618 = _2610;
                _2619 = _2611;
                _2620 = _2612;
                if (!((_2519 ^ _2517) || ((_2522 ^ (_2503 == 100663296)) || (_2521 ^ (((int)_2312 < (int)0) || _2517))))) {
                  _2636 = (_2524 ^ (((_2312 & 2097152000) == 1761607680) || (_2503 == 1778384896)));
                } else {
                  _2636 = true;
                }
                _2639 = _2618;
                _2640 = _2619;
                _2641 = _2620;
                _2642 = (!_2636);
              } else {
                _2639 = _2610;
                _2640 = _2611;
                _2641 = _2612;
                _2642 = false;
              }
            } else {
              _2610 = 0.0f;
              _2611 = _2581;
              _2612 = _2580;
              if ((_2503 != 889192448) && ((_2312 & 2113929216) != 1107296256)) {
                _2618 = _2610;
                _2619 = _2611;
                _2620 = _2612;
                if (!((_2519 ^ _2517) || ((_2522 ^ (_2503 == 100663296)) || (_2521 ^ (((int)_2312 < (int)0) || _2517))))) {
                  _2636 = (_2524 ^ (((_2312 & 2097152000) == 1761607680) || (_2503 == 1778384896)));
                } else {
                  _2636 = true;
                }
                _2639 = _2618;
                _2640 = _2619;
                _2641 = _2620;
                _2642 = (!_2636);
              } else {
                _2639 = _2610;
                _2640 = _2611;
                _2641 = _2612;
                _2642 = false;
              }
            }
          } else {
            _2580 = 0.0f;
            _2581 = _2552;
            if ((_2502 != 3473408) && ((_2312 & 8257536) != 4325376)) {
              _2587 = _2580;
              _2588 = _2581;
              if (!((_2519 ^ _2513) || ((_2522 ^ (_2502 == 393216)) || (_2521 ^ (((_2312 & 8388608) != 0) || _2513))))) {
                _2605 = (_2524 ^ (((_2312 & 8192000) == 6881280) || (_2502 == 6946816)));
              } else {
                _2605 = true;
              }
              _2608 = ((float)((bool)(!_2605))) * _2494;
              _2610 = _2608;
              _2611 = _2588;
              _2612 = _2587;
              if ((_2503 != 889192448) && ((_2312 & 2113929216) != 1107296256)) {
                _2618 = _2610;
                _2619 = _2611;
                _2620 = _2612;
                if (!((_2519 ^ _2517) || ((_2522 ^ (_2503 == 100663296)) || (_2521 ^ (((int)_2312 < (int)0) || _2517))))) {
                  _2636 = (_2524 ^ (((_2312 & 2097152000) == 1761607680) || (_2503 == 1778384896)));
                } else {
                  _2636 = true;
                }
                _2639 = _2618;
                _2640 = _2619;
                _2641 = _2620;
                _2642 = (!_2636);
              } else {
                _2639 = _2610;
                _2640 = _2611;
                _2641 = _2612;
                _2642 = false;
              }
            } else {
              _2610 = 0.0f;
              _2611 = _2581;
              _2612 = _2580;
              if ((_2503 != 889192448) && ((_2312 & 2113929216) != 1107296256)) {
                _2618 = _2610;
                _2619 = _2611;
                _2620 = _2612;
                if (!((_2519 ^ _2517) || ((_2522 ^ (_2503 == 100663296)) || (_2521 ^ (((int)_2312 < (int)0) || _2517))))) {
                  _2636 = (_2524 ^ (((_2312 & 2097152000) == 1761607680) || (_2503 == 1778384896)));
                } else {
                  _2636 = true;
                }
                _2639 = _2618;
                _2640 = _2619;
                _2641 = _2620;
                _2642 = (!_2636);
              } else {
                _2639 = _2610;
                _2640 = _2611;
                _2641 = _2612;
                _2642 = false;
              }
            }
          }
        }
      }
      _2646 = (((float)((bool)(_2642))) * _2498);
      _2647 = _2639;
      _2648 = _2641;
      _2649 = _2640;
    } else {
      _2646 = _2498;
      _2647 = _2494;
      _2648 = _2490;
      _2649 = _2486;
    }
    _2651 = __3__36__0__0__g_sceneNormalPrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(_2296, _2299));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather]
    _2660 = min(1.0f, ((((float)((uint)((uint)(_2651.w & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2666 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2651.w)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2672 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2651.w)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2674 = rsqrt(dot(float3(_2660, _2666, _2672), float3(_2660, _2666, _2672)));  // [sem: invLength]
    _2679 = saturate(dot(float3(_635, _636, _637), float3((_2674 * _2660), (_2674 * _2666), (_2674 * _2672))));  // [sem: expr_sat]
    _2684 = min(1.0f, ((((float)((uint)((uint)(_2651.z & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2690 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2651.z)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2696 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2651.z)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2698 = rsqrt(dot(float3(_2684, _2690, _2696), float3(_2684, _2690, _2696)));  // [sem: invLength]
    _2703 = saturate(dot(float3(_635, _636, _637), float3((_2698 * _2684), (_2698 * _2690), (_2698 * _2696))));  // [sem: expr_sat]
    _2708 = min(1.0f, ((((float)((uint)((uint)(_2651.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2714 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2651.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2720 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2651.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2722 = rsqrt(dot(float3(_2708, _2714, _2720), float3(_2708, _2714, _2720)));  // [sem: invLength]
    _2727 = saturate(dot(float3(_635, _636, _637), float3((_2722 * _2708), (_2722 * _2714), (_2722 * _2720))));  // [sem: expr_sat]
    _2732 = min(1.0f, ((((float)((uint)((uint)(_2651.y & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2738 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2651.y)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2744 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2651.y)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2746 = rsqrt(dot(float3(_2732, _2738, _2744), float3(_2732, _2738, _2744)));  // [sem: invLength]
    _2751 = saturate(dot(float3(_635, _636, _637), float3((_2746 * _2732), (_2746 * _2738), (_2746 * _2744))));  // [sem: expr_sat]
    _2754 = select((_2178 || (_2177 || _2399)), 0.01f, 1.0f);
    _2755 = _2284 - _2292;
    _2756 = _2287 - _2293;
    _2757 = 1.0f - _2755;
    _2758 = 1.0f - _2756;
    _2760 = (_2757 * _2756) * _2649;
    _2762 = (_2756 * _2755) * _2648;
    _2764 = (_2758 * _2755) * _2647;
    _2766 = (_2758 * _2757) * _2646;
    _2772 = saturate(select(_2138, 1.0f, (pow(_2727, _2754))) * _2760);  // [sem: expr_sat]
    _2778 = saturate(select(_2138, 1.0f, (pow(_2751, _2754))) * _2762);  // [sem: expr_sat]
    _2784 = saturate(select(_2138, 1.0f, (pow(_2703, _2754))) * _2764);  // [sem: expr_sat]
    _2790 = saturate(select(_2138, 1.0f, (pow(_2679, _2754))) * _2766);  // [sem: expr_sat]
    _2793 = asint(__3__37__0__0__g_structureCounterBuffer.Load(8));
    _2794 = WaveReadLaneFirst(_2793);
    [branch]
    if (!(_2794 == 0)) {
      _2802 = (((uint)(__3__36__0__0__g_tiledManyLightsMasks.Load(int3(((int)(_98) >> 5), ((int)(_103) >> 5), 0)))).x) & 4;
      _2803 = (uint)((uint)(_2802)) >> 2;
      if (!(_2802 == 0)) {
        _2812 = _2803;
        _2813 = max((saturate(dot(float3(_2059, _2073, _2087), float3(0.212671f, 0.71516f, 0.072169f)) * 0.01f) * 0.875f), _2280);
      } else {
        _2812 = _2803;
        _2813 = _2280;
      }
    } else {
      _2812 = 0;
      _2813 = _2280;
    }
    // [sem: expr_sat]
    _2823 = saturate(max(_2813, ((_temporalReprojectionParams.w + (_environmentLightingHistory[1].w)) + _renderParams.y)));
    _2824 = (uint)((uint)(_2291)) + (uint)(1);
    half4 _2826 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_2289, _2824, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    _2831 = (uint)((uint)(_2289)) + (uint)(1);
    half4 _2832 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_2831, _2824, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    half4 _2837 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_2831, _2291, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    half4 _2842 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_2289, _2291, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    _2847 = dot(float4(_2772, _2778, _2784, _2790), float4(1.0f, 1.0f, 1.0f, 1.0f));
    // [sem: expr_sat]
    _2856 = saturate((1.0f / max(1.0f, _2847)) * dot(float4(_2772, _2778, _2784, _2790), float4(float(_2826.w), float(_2832.w), float(_2837.w), float(_2842.w))));
    _2861 = sqrt((_2266 * _2266) + (_2265 * _2265)) * 50.0f;
    if (_2405) {
      _2870 = saturate(1.0f - _2861);  // [sem: expr_sat]
    } else {
      _2870 = (1.0f - (saturate(_2861) * 0.5f));  // [sem: expr_sat]
    }
    _2874 = max(1.0f, (_bufferSizeAndInvSize.w * 2160.0f));
    _2877 = min(31.0f, ((_2870 * 15.0f) * _2874));
    _2878 = (_2040 == 29);
    if (_2878) {
      _2882 = min(2.0f, _2877);
    } else {
      _2882 = _2877;
    }
    _2883 = (_2040 == 24);
    _2884 = select(_2883, 1.0f, _2856);
    _2886 = (_2884 * _2884) * 4.0f;
    _2889 = __3__36__0__0__g_manyLightsMoments.SampleLevel(__3__40__0__0__g_sampler, float2(_110, _112), 0.0f);  // [sem: _3__36__0__0__g_manyLightsMoments_sampleLod]
    _2894 = saturate(_2889.w);  // [sem: expr_sat]
    _2896 = 1.0f / max(1e-06f, _2847);
    _2897 = _2896 * _2772;
    _2898 = _2896 * _2778;
    _2899 = _2896 * _2784;
    _2900 = _2896 * _2790;
    if (!((_2896 * _2847) == 0.0f)) {
      _2914 = saturate(saturate(max(_2823, (1.0f / ((saturate(_2886) * _2882) + 1.0f))) + _renderParams.z));  // [sem: expr_sat]
    } else {
      _2914 = 1.0f;  // [sem: expr_sat]
    }
    _2917 = 1.0f / _exposure4.x;
    _2932 = -0.0f - _exposure4.y;
    _2937 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (min(0.0f, (-0.0f - ((_2900 * float(_2842.x)) + ((_2899 * float(_2837.x)) + ((_2897 * float(_2826.x)) + (_2898 * float(_2832.x))))))) * _2932))));
    _2955 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (min(0.0f, (-0.0f - ((_2900 * float(_2842.y)) + ((_2899 * float(_2837.y)) + ((_2897 * float(_2826.y)) + (_2898 * float(_2832.y))))))) * _2932))));
    _2973 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (min(0.0f, (-0.0f - ((_2900 * float(_2842.z)) + ((_2899 * float(_2837.z)) + ((_2897 * float(_2826.z)) + (_2898 * float(_2832.z))))))) * _2932))));
    if (_renderParams.y == 0.0f) {
      if (_2177) {
        _3014 = saturate(_2856 + 0.0625f);  // [sem: expr_sat]
        _3015 = _2914;
        _3016 = _2973;
        _3017 = _2955;
        _3018 = _2937;
      } else {
        if (!_2178) {
          _2981 = dot(float3(_2937, _2955, _2973), float3(0.212671f, 0.71516f, 0.072169f));
          _2988 = ((min(_2981, _2889.y) / max(1e-06f, _2981)) * _2894) + saturate(1.0f - _2894);
          _3002 = (_2988 * _2973);
          _3003 = (_2988 * _2955);
          _3004 = (_2988 * _2937);
          _3005 = saturate(((_2894 * 0.5f) * saturate(((_2889.x - _2981) * 2.0f) / max(1e-06f, _2889.x))) + _2914);  // [sem: expr_sat]
        } else {
          _3002 = _2973;
          _3003 = _2955;
          _3004 = _2937;
          _3005 = _2914;  // [sem: expr_sat]
        }
        if (!_2883) {
          _3014 = saturate(_2856 + 0.0625f);  // [sem: expr_sat]
          _3015 = _3005;
          _3016 = _3002;
          _3017 = _3003;
          _3018 = _3004;
        } else {
          _3014 = 0.0f;  // [sem: expr_sat]
          _3015 = _3005;
          _3016 = _3002;
          _3017 = _3003;
          _3018 = _3004;
        }
      }
    } else {
      if (!_2883) {
        _3014 = saturate(_2856 + 0.0625f);  // [sem: expr_sat]
        _3015 = _2914;
        _3016 = _2973;
        _3017 = _2955;
        _3018 = _2937;
      } else {
        _3014 = 0.0f;  // [sem: expr_sat]
        _3015 = _2914;
        _3016 = _2973;
        _3017 = _2955;
        _3018 = _2937;
      }
    }
    _3021 = ((_2059 - _3018) * _3015) + _3018;
    _3024 = ((_2073 - _3017) * _3015) + _3017;
    _3027 = ((_2087 - _3016) * _3015) + _3016;
    __3__38__0__1__g_diffuseResultUAV[int2(_98, _103)] = float4((half)(half(_3021)), (half)(half(_3024)), (half)(half(_3027)), (half)(half(_3014)));
    _3033 = float(_2172);
    _3034 = float(_2171);
    _3035 = float(_2170);
    if (_2040 == 52) {
      _3043 = saturate(((_3034 + _3035) + _3033) * 1.2f);  // [sem: expr_sat]
    } else {
      _3043 = 1.0f;  // [sem: expr_sat]
    }
    _3044 = float(_2175);
    _3050 = (0.7f / min(max(max(max(_3033, _3034), _3035), 0.01f), 0.7f)) * _3043;
    _3054 = (((_3050 * _3033) + -0.04f) * _3044) + 0.04f;
    _3058 = (((_3050 * _3034) + -0.04f) * _3044) + 0.04f;
    _3062 = (((_3050 * _3035) + -0.04f) * _3044) + 0.04f;
    if (!_2138) {
      _3067 = saturate(1.0f - _2111);  // [sem: expr_sat]
    } else {
      _3067 = 1.0f;  // [sem: expr_sat]
    }
    if (!(_2040 == 98)) {
      if (!(_2176 == 96)) {
        if ((uint)((int)(_2040) + (int)(-105)) < (uint)2) {
          _3080 = ((int)(uint)(_184));
          _3081 = (_2040 == 107);
          _3086 = select((_3081 || (_3080 != 0)), 0.0f, _2175);
          if (!(_2133 && (((int)(_3080) | (int)((int)(uint)(_3081))) == 0))) {
            if (_2040 == 33) {
              _3125 = (uint)((_1018 * 255.0f) + 0.5f);
              _3127 = ((uint)((uint)(_3125)) >> 4) & 7;
              if (!(_3127 == 0)) {
                _3131 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_3127) + (int)(1)))];
                _3140 = false;
                _3141 = _3131.x;
                _3142 = (((float)((uint)((uint)(_3125 & 15)))) * 0.06666667f);
                _3143 = min((1.0f - _3131.y), _3131.x);
                _3144 = 33;
                _3145 = _3086;
              } else {
                _3140 = false;
                _3141 = 0.0f;
                _3142 = 0.0f;
                _3143 = 0.0f;
                _3144 = 33;
                _3145 = _3086;
              }
            } else {
              if (_2040 == 54) {
                _3096 = (uint)((_1018 * 255.0f) + 0.5f);
                if (!((_3096 & 112) == 0)) {
                  _3101 = ((uint)((uint)(_3096)) >> 4) & 7;
                  if (!(_3101 == 0)) {
                    _3105 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_3101) + (int)(1)))];
                    _3140 = false;
                    _3141 = _3105.x;
                    _3142 = (((float)((uint)((uint)(_3096 & 15)))) * 0.06666667f);
                    _3143 = min((1.0f - _3105.y), _3105.x);
                    _3144 = 54;
                    _3145 = _3086;
                  } else {
                    _3140 = false;
                    _3141 = 0.0f;
                    _3142 = 0.0f;
                    _3143 = 0.0f;
                    _3144 = 54;
                    _3145 = _3086;
                  }
                } else {
                  _3140 = false;
                  _3141 = 0.0f;
                  _3142 = 0.0f;
                  _3143 = 0.0f;
                  _3144 = 52;
                  _3145 = _3086;
                }
              } else {
                if (_2040 == 55) {
                  _3140 = false;
                  _3141 = 0.0f;
                  _3142 = 0.0f;
                  _3143 = 0.0f;
                  _3144 = select(((((int)((uint)((_1018 * 255.0f) + 0.5f))) & 127) == 0), 52, 55);
                  _3145 = _3086;
                } else {
                  _3140 = false;
                  _3141 = 0.0f;
                  _3142 = 0.0f;
                  _3143 = 0.0f;
                  _3144 = _2040;
                  _3145 = _3086;
                }
              }
            }
          } else {
            _3140 = false;
            _3141 = 0.0f;
            _3142 = 0.0f;
            _3143 = 0.0f;
            _3144 = 65;
            _3145 = 0.0h;
          }
        } else {
          if (!((uint)((int)(_2040) + (int)(-11)) < (uint)9)) {
            _3080 = 0;
            _3081 = (_2040 == 107);
            _3086 = select((_3081 || (_3080 != 0)), 0.0f, _2175);
            if (!(_2133 && (((int)(_3080) | (int)((int)(uint)(_3081))) == 0))) {
              if (_2040 == 33) {
                _3125 = (uint)((_1018 * 255.0f) + 0.5f);
                _3127 = ((uint)((uint)(_3125)) >> 4) & 7;
                if (!(_3127 == 0)) {
                  _3131 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_3127) + (int)(1)))];
                  _3140 = false;
                  _3141 = _3131.x;
                  _3142 = (((float)((uint)((uint)(_3125 & 15)))) * 0.06666667f);
                  _3143 = min((1.0f - _3131.y), _3131.x);
                  _3144 = 33;
                  _3145 = _3086;
                } else {
                  _3140 = false;
                  _3141 = 0.0f;
                  _3142 = 0.0f;
                  _3143 = 0.0f;
                  _3144 = 33;
                  _3145 = _3086;
                }
              } else {
                if (_2040 == 54) {
                  _3096 = (uint)((_1018 * 255.0f) + 0.5f);
                  if (!((_3096 & 112) == 0)) {
                    _3101 = ((uint)((uint)(_3096)) >> 4) & 7;
                    if (!(_3101 == 0)) {
                      _3105 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_3101) + (int)(1)))];
                      _3140 = false;
                      _3141 = _3105.x;
                      _3142 = (((float)((uint)((uint)(_3096 & 15)))) * 0.06666667f);
                      _3143 = min((1.0f - _3105.y), _3105.x);
                      _3144 = 54;
                      _3145 = _3086;
                    } else {
                      _3140 = false;
                      _3141 = 0.0f;
                      _3142 = 0.0f;
                      _3143 = 0.0f;
                      _3144 = 54;
                      _3145 = _3086;
                    }
                  } else {
                    _3140 = false;
                    _3141 = 0.0f;
                    _3142 = 0.0f;
                    _3143 = 0.0f;
                    _3144 = 52;
                    _3145 = _3086;
                  }
                } else {
                  if (_2040 == 55) {
                    _3140 = false;
                    _3141 = 0.0f;
                    _3142 = 0.0f;
                    _3143 = 0.0f;
                    _3144 = select(((((int)((uint)((_1018 * 255.0f) + 0.5f))) & 127) == 0), 52, 55);
                    _3145 = _3086;
                  } else {
                    _3140 = false;
                    _3141 = 0.0f;
                    _3142 = 0.0f;
                    _3143 = 0.0f;
                    _3144 = _2040;
                    _3145 = _3086;
                  }
                }
              }
            } else {
              _3140 = false;
              _3141 = 0.0f;
              _3142 = 0.0f;
              _3143 = 0.0f;
              _3144 = 65;
              _3145 = 0.0h;
            }
          } else {
            _3140 = false;
            _3141 = 0.0f;
            _3142 = 0.0f;
            _3143 = 0.0f;
            _3144 = _2040;
            _3145 = 0.0h;
          }
        }
      } else {
        _3140 = true;
        _3141 = 0.0f;
        _3142 = 0.0f;
        _3143 = 0.0f;
        _3144 = _2040;
        _3145 = 0.0h;
      }
    } else {
      _3140 = true;
      _3141 = 0.0f;
      _3142 = 0.0f;
      _3143 = 0.0f;
      _3144 = 98;
      _3145 = 0.0h;
    }
    _3147 = dot(float3(_997, _998, _999), float3(_635, _636, _637)) * 2.0f;
    _3149 = _997 - (_3147 * _635);
    _3151 = _998 - (_3147 * _636);
    _3153 = _999 - (_3147 * _637);
    _3158 = dot(float3(_997, _998, _999), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
    _3161 = (_994 * _994) + (_976 * _976);
    _3164 = sqrt(_3161 + (_985 * _985));
    _3171 = sqrt(max(0.0f, (dot(float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z)) - (_3158 * _3158)))) / (_3164 + 5.0f);
    _3172 = float(_2174);
    if ((_2174 < 0.099975586h) && (_3171 < 0.125f)) {
      _3185 = select((_3172 < 0.8f), ((__3__36__0__0__g_specularRayHitDistance.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_110, _112), 0.0f)).x), 0.0f) * rsqrt(dot(float3(_3149, _3151, _3153), float3(_3149, _3151, _3153)));
      _3186 = _3185 * _3149;
      _3187 = _3185 * _3151;
      _3188 = _3185 * _3153;
      _3193 = dot(float3(_3186, _3187, _3188), float3((-0.0f - _635), (-0.0f - _636), (-0.0f - _637))) * 2.0f;
      _3196 = (_3186 + _976) + (_3193 * _635);
      _3199 = (_3187 + _985) + (_3193 * _636);
      _3202 = (_3188 + _994) + (_3193 * _637);
      _3214 = (_viewProjRelative[0].w) + mad((_viewProjRelative[0].z), _3202, mad((_viewProjRelative[0].y), _3199, (_3196 * (_viewProjRelative[0].x))));
      _3222 = mad((_viewProjRelative[1].z), _3202, mad((_viewProjRelative[1].y), _3199, (_3196 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w);
      _3230 = mad((_viewProjRelative[2].z), _3202, mad((_viewProjRelative[2].y), _3199, (_3196 * (_viewProjRelative[2].x)))) + (_viewProjRelative[2].w);
      _3238 = mad((_viewProjRelative[3].z), _3202, mad((_viewProjRelative[3].y), _3199, (_3196 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
      _3250 = mad((_projToPrevProj[3].w), _3238, mad((_projToPrevProj[3].z), _3230, mad((_projToPrevProj[3].y), _3222, ((_projToPrevProj[3].x) * _3214))));
      _3262 = ((mad((_projToPrevProj[0].w), _3238, mad((_projToPrevProj[0].z), _3230, mad((_projToPrevProj[0].y), _3222, ((_projToPrevProj[0].x) * _3214)))) / _3250) - (_3214 / _3238)) - _2266;
      _3274 = ((mad((_projToPrevProj[1].w), _3238, mad((_projToPrevProj[1].z), _3230, mad((_projToPrevProj[1].y), _3222, ((_projToPrevProj[1].x) * _3214)))) / _3250) - (_3222 / _3238)) - _2265;
      _3282 = max(_3171, saturate(sqrt((_3274 * _3274) + (_3262 * _3262))));
    } else {
      _3282 = _3171;
    }
    _3283 = _3144 & -2;
    _3284 = (_3144 == 29);
    if (!((_2138 || _3284) || (_3283 == 24))) {
      _3304 = (_renderParams.y > 0.0f);
    } else {
      _3304 = true;
    }
    _3305 = select(_3304, 1.0f, ((((float(_2092.y) * _899) + (float(_2089.y) * _896)) + (float(_2095.y) * _902)) + (float(_2098.y) * _905)));
    _3306 = float(_3145);
    _3311 = min(max((_cavityParams.y + -1.0f), 0.0f), 2.0f);
    // [sem: expr_sat]
    _3337 = saturate(((((-0.05f - (_3311 * 0.075f)) + max(0.02f, _3172)) + (saturate(_123 * 0.025f) * 0.1f)) * min(max((_123 + 1.0f), 5.0f), 50.0f)) * (1.0f - (saturate(_3306) * 0.75f))) * saturate(saturate(1.0f - (((_3306 * _123) / max(0.001f, _2188)) * 0.001f)) * 1.25f);
    if (_3144 == 64) {
      _3346 = ((saturate(_123 * 0.25f) * (_3337 + -0.39990234f)) + 0.39990234f);
    } else {
      _3346 = _3337;
    }
    _3348 = (_3311 * 16.0f) + 16.0f;
    _3354 = select((_3311 > 1.0f), 0.0f, saturate((1.0f / _3348) * (_123 - _3348)));
    if (!(_3144 == 105)) {
      if (!((uint)(_3144 & 24) > (uint)23)) {
        _3368 = select((_3144 == 65), 0.0f, select((_3144 == 107), 1.0f, ((_3354 + _3346) - (_3354 * _3346))));
      } else {
        _3368 = 0.0f;
      }
    } else {
      _3368 = 1.0f;
    }
    _3375 = saturate(select((_lightingParams.y == 0.0f), 1.0f, (1.0f - _3368))) * _3282;
    _3377 = max(0.099975586h, _2174);
    if ((uint)_3144 > (uint)51) {
      if ((uint)_3144 < (uint)68) {
        if (_3144 == 66) {
          _3395 = (half)(max(0.89990234h, _2174));
        } else {
          if ((_3144 == 53) || (_3283 == 66)) {
            _3395 = (half)(max(0.89990234h, _2174));
          } else {
            _3395 = _3377;
          }
        }
      } else {
        _3395 = _3377;
      }
    } else {
      if (_3283 == 66) {
        _3395 = (half)(max(0.89990234h, _2174));
      } else {
        _3395 = _3377;
      }
    }
    _3396 = float(_3395);
    _3397 = _3396 * _3396;
    _3398 = _3397 * _3397;
    _3402 = (((_3398 * _2727) - _2727) * _2727) + 1.0f;
    _3406 = (((_3398 * _2751) - _2751) * _2751) + 1.0f;
    _3410 = (((_3398 * _2703) - _2703) * _2703) + 1.0f;
    _3414 = (((_3398 * _2679) - _2679) * _2679) + 1.0f;
    _3434 = (((((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_2289, _2824, 0))).x) * saturate(_2760)) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_2831, _2824, 0))).x) * saturate(_2762))) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_2831, _2291, 0))).x) * saturate(_2764))) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_2289, _2291, 0))).x) * saturate(_2766));
    _3441 = saturate(select(_3284, 1.0f, saturate((_3398 / (_3402 * _3402)) * _2727)) * _2760);  // [sem: expr_sat]
    _3448 = saturate(select(_3284, 1.0f, saturate((_3398 / (_3406 * _3406)) * _2751)) * _2762);  // [sem: expr_sat]
    _3455 = saturate(select(_3284, 1.0f, saturate((_3398 / (_3410 * _3410)) * _2703)) * _2764);  // [sem: expr_sat]
    _3462 = saturate(select(_3284, 1.0f, saturate((_3398 / (_3414 * _3414)) * _2679)) * _2766);  // [sem: expr_sat]
    _3472 = exp2(log2(saturate(max(float(((half)(((half)(1.0h - _2174)) * 0.75h)) * _3145), (1.0f - _2188)))) * 0.1f);
    _3475 = float(((half)(_2174 * _2174)) + 1.0009766h);
    _3491 = select(_3284, 1.0f, saturate(((_2874 * _2874) * _2886) * exp2((log2(float(_3377)) * 0.5f) * (((_3375 * 15.0f) * ((_3472 + _3475) / (_3475 - _3472))) + 1.0f))));
    if ((uint)((int)((uint)((uint)(_3144)) + (uint)(-12))) < (uint)9) {
      _3501 = ((saturate(_123 * 0.005f) * (_3491 + -1.0f)) + 1.0f);
    } else {
      _3501 = _3491;
    }
    _3513 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), _114.x, mad((_projToPrevProj[3].y), _955, ((_projToPrevProj[3].x) * _953)));
    _3523 = ((mad((_projToPrevProj[0].z), _114.x, mad((_projToPrevProj[0].y), _955, ((_projToPrevProj[0].x) * _953))) + (_projToPrevProj[0].w)) / _3513) - _953;
    _3533 = ((mad((_projToPrevProj[1].z), _114.x, mad((_projToPrevProj[1].y), _955, ((_projToPrevProj[1].x) * _953))) + (_projToPrevProj[1].w)) / _3513) - _955;
    _3534 = _2266 - _3523;
    _3535 = _2265 - _3533;
    if ((_2213 != 0) || ((uint)((int)((uint)((uint)(_3144)) + (uint)(-52))) < (uint)16)) {
      _3550 = (31.0f - (saturate(sqrt((_3535 * _3535) + (_3534 * _3534)) * 500.0f) * 24.0f));
    } else {
      _3550 = 63.0f;
    }
    if (_renderParams.z > 0.0f) {
      _3559 = saturate((_3375 * 200.0f) + 0.125f);  // [sem: expr_sat]
    } else {
      _3559 = 0.0f;  // [sem: expr_sat]
    }
    _3568 = max(max(saturate(_2823), saturate(max(0.0f, (1.0f / (((_3501 * _3434) * _3550) + 1.0f))))), _3559);
    _3570 = ((uint)(_3144 & 24) > (uint)23);
    [branch]
    if (_3570) {
      _3577 = (_bufferSizeAndInvSize.x * ((_3523 * 0.5f) + _110)) + -0.5f;
      _3582 = (_bufferSizeAndInvSize.y * (_112 - (_3533 * 0.5f))) + -0.5f;
      _3584 = (int)(floor(_3577));
      _3586 = (int)(floor(_3582));
      _3587 = (float)((int)(_3584));
      _3588 = (float)((int)(_3586));
      [branch]
      if (_3284) {
        // [sem: _3__36__0__0__g_stencilPrev_gather]
        _3598 = __3__36__0__0__g_stencilPrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(((_3587 + 0.5f) * _bufferSizeAndInvSize.z), ((_3588 + 0.5f) * _bufferSizeAndInvSize.w)));
        _3605 = mad(_3598.w, 16777216, mad(_3598.z, 65536, mad(_3598.y, 256, _3598.x)));
        _3610 = saturate(((float)((bool)((uint)(_3605 & 24) > (uint)23))) * _3441);  // [sem: expr_sat]
        _3615 = saturate(((float)((bool)((uint)(_3605 & 6144) > (uint)5888))) * _3448);  // [sem: expr_sat]
        _3620 = saturate(((float)((bool)((uint)(_3605 & 1572864) > (uint)1507328))) * _3455);  // [sem: expr_sat]
        _3625 = saturate(((float)((bool)((uint)(_3605 & 402653184) > (uint)385875968))) * _3462);  // [sem: expr_sat]
        _3657 = _3625;
        _3658 = _3620;
        _3659 = _3615;
        _3660 = _3610;
        _3661 = _3586;
        _3662 = _3584;
        _3663 = max(saturate(min(max(((_2169 / ((_597 * 0.005f) + 1.0f)) + (_3375 * 500.0f)), 0.03125f), 0.5f) + _3568), saturate(1.0f - dot(float4(_3610, _3615, _3620, _3625), float4(1.0f, 1.0f, 1.0f, 1.0f))));
      } else {
        _3640 = _3577 - _3587;
        _3641 = _3582 - _3588;
        _3642 = 1.0f - _3640;
        _3643 = 1.0f - _3641;
        _3657 = (_3643 * _3642);
        _3658 = (_3643 * _3640);
        _3659 = (_3641 * _3640);
        _3660 = (_3642 * _3641);
        _3661 = _3586;
        _3662 = _3584;
        _3663 = (saturate((sqrt((_3533 * _3533) + (_3523 * _3523)) * 50.0f) + 0.125f) * 0.875f);
      }
    } else {
      _3657 = _3462;
      _3658 = _3455;
      _3659 = _3448;
      _3660 = _3441;
      _3661 = _2291;
      _3662 = _2289;
      _3663 = _3568;
    }
    _3664 = (_3306 > 0.2f);
    _3665 = (uint)((uint)(_3661)) + (uint)(1);
    half4 _3667 = __3__36__0__0__g_specularResultPrev.Load(int3(_3662, _3665, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _3676 = ((float)((bool)(!(_3664 ^ ((half)(_3667.w) < 0.0h))))) * _3660;
    _3677 = (uint)((uint)(_3662)) + (uint)(1);
    half4 _3678 = __3__36__0__0__g_specularResultPrev.Load(int3(_3677, _3665, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _3687 = ((float)((bool)(!(_3664 ^ ((half)(_3678.w) < 0.0h))))) * _3659;
    half4 _3688 = __3__36__0__0__g_specularResultPrev.Load(int3(_3677, _3661, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _3697 = ((float)((bool)(!(_3664 ^ ((half)(_3688.w) < 0.0h))))) * _3658;
    half4 _3698 = __3__36__0__0__g_specularResultPrev.Load(int3(_3662, _3661, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _3707 = ((float)((bool)(!(_3664 ^ ((half)(_3698.w) < 0.0h))))) * _3657;
    _3714 = 1.0f / max(((saturate(_123 * 0.0625f) * 0.000999f) + 1e-06f), dot(float4(_3676, _3687, _3697, _3707), float4(1.0f, 1.0f, 1.0f, 1.0f)));
    _3728 = -0.0f - _3714;
    _3729 = min(0.0f, (-0.0f - ((((_3676 * float(_3667.x)) + (_3687 * float(_3678.x))) + (_3697 * float(_3688.x))) + (_3707 * float(_3698.x))))) * _3728;
    _3743 = min(0.0f, (-0.0f - ((((_3676 * float(_3667.y)) + (_3687 * float(_3678.y))) + (_3697 * float(_3688.y))) + (_3707 * float(_3698.y))))) * _3728;
    _3757 = min(0.0f, (-0.0f - ((((_3676 * float(_3667.z)) + (_3687 * float(_3678.z))) + (_3697 * float(_3688.z))) + (_3707 * float(_3698.z))))) * _3728;
    _3775 = min(0.0f, (-0.0f - ((((abs(float(_3667.w)) * _3676) + (abs(float(_3678.w)) * _3687)) + (abs(float(_3688.w)) * _3697)) + (abs(float(_3698.w)) * _3707)))) * _3714;
    if (((_3144 != 53) && (_3283 != 66)) && (_renderParams.y == 0.0f)) {
      _3783 = dot(float3(_3729, _3743, _3757), float3(0.212671f, 0.71516f, 0.072169f));
      _3790 = ((min(_3783, _2889.z) / max(1e-09f, _3783)) * _2894) + saturate(1.0f - _2894);
      _3811 = (_3790 * _3757);
      _3812 = (_3790 * _3743);
      _3813 = (_3790 * _3729);
      // [sem: expr_sat]
      _3814 = saturate(((_2894 * 0.5f) * saturate((((_3172 * 1000.0f) * _3375) * ((float(1.0h / ((half)(8.0h - ((half)(_2174 * 7.0h))))) * _2889.z) - _3783)) / max(1e-06f, _2889.z))) + _3663);
    } else {
      _3811 = _3757;
      _3812 = _3743;
      _3813 = _3729;
      _3814 = _3663;  // [sem: expr_sat]
    }
    _3817 = _exposure4.y * _3813;
    _3818 = _exposure4.y * _3812;
    _3819 = _exposure4.y * _3811;
    _3823 = ((max(0.001f, _3067) + _3775) * _3814) - _3775;
    _3838 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_3305 * ((((_930.x * _899) + (_926.x * _896)) + (_934.x * _902)) + (_938.x * _905))) - _3817) * _3814) + _3817))));
    _3853 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_3305 * ((((_930.y * _899) + (_926.y * _896)) + (_934.y * _902)) + (_938.y * _905))) - _3818) * _3814) + _3818))));
    _3868 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_3305 * ((((_930.z * _899) + (_926.z * _896)) + (_934.z * _902)) + (_938.z * _905))) - _3819) * _3814) + _3819))));
    __3__38__0__1__g_specularResultUAV[int2(_98, _103)] = float4((half)(half(_3838)), (half)(half(_3853)), (half)(half(_3868)), (half)(half(select(_3664, (-0.0f - _3823), _3823))));
    __3__38__0__1__g_specularSampleCountUAV[int2(_98, _103)] = saturate((_3434 * 0.984375f) + 0.015625f);
    _3880 = select(_3570, 0.0f, _3823);
    _3885 = float(half(lerp(_3880, 1.0f, _3172)));
    _3886 = (_3283 == 64);
    _3888 = ((int)(uint)(_185)) ^ 1;
    if ((((int)(uint)(_3886)) & _3888) == 0) {
      _3905 = saturate(exp2((_3885 * _3885) * (_123 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _3905 = select((_cavityParams.z > 0.0f), select(_185, 0.0f, _1019), 1.0f);  // [sem: expr_sat]
    }
    _3908 = (_cavityParams.x == 0.0f);
    _3909 = select(_3908, 1.0f, _3905);
    if (_3886) {
      _3915 = (_3909 * _3062);
      _3916 = (_3909 * _3058);
      _3917 = (_3909 * _3054);
    } else {
      _3915 = _3062;
      _3916 = _3058;
      _3917 = _3054;
    }
    _3918 = _3033 * 0.875f;
    _3919 = _3034 * 0.875f;
    _3920 = _3035 * 0.875f;
    if (!(_3144 == 37)) {
      _3923 = (_3144 == 55);
      _3924 = select(_3923, _3918, _3917);
      _3925 = select(_3923, _3919, _3916);
      _3926 = select(_3923, _3920, _3915);
      if ((_3144 == 53) || (_3283 == 66)) {
        // [sem: _3__36__0__0__g_hairBrdfLookup_sampleLod]
        _3941 = __3__36__0__0__g_hairBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, (1.0f - saturate(abs(dot(float3(_2043, _2042, _2041), float3(_997, _998, _999)))))), (1.0f - max(0.75f, (_3885 * 2.0f)))), 0.0f);
        // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
        _3947 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _2188), (1.0f - _3885)), 0.0f);
        _3952 = ((_3947.x - _3941.x) * _2045) + _3941.x;
        _3955 = ((_3947.y - _3941.y) * _2045) + _3941.y;
        _3957 = (_3952 * 0.01f) + _3955;
        _4161 = _3957;
        _4162 = _3957;
        _4163 = _3957;
        _4164 = _3955;
        _4165 = _3952;
      } else {
        if ((uint)((int)((uint)((uint)(_3144)) + (uint)(-97))) < (uint)2) {
          if (!(abs(_232) > 0.99f)) {
            _3965 = -0.0f - _233;
            _3967 = rsqrt(dot(float3(_3965, 0.0f, _231), float3(_3965, 0.0f, _231)));  // [sem: invLength]
            _3971 = (_3967 * _231);
            _3972 = (_3967 * _3965);
          } else {
            _3971 = 0.0f;
            _3972 = 1.0f;
          }
          _3974 = -0.0f - (_232 * _3971);
          _3977 = (_3971 * _231) - (_3972 * _233);
          _3978 = _3972 * _232;
          _3980 = rsqrt(dot(float3(_3974, _3977, _3978), float3(_3974, _3977, _3978)));  // [sem: invLength]
          _3983 = _viewPos.x + _976;
          _3985 = _viewPos.y + _985;
          _3987 = _viewPos.z + _994;
          // [sem: _3__36__0__0__g_blueNoise_sampleLod]
          _3995 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_3972, 0.0f, _3971), float3(_3983, _3985, _3987)), dot(float3((_3980 * _3974), (_3977 * _3980), (_3980 * _3978)), float3(_3983, _3985, _3987))), 0.0f);
          _3999 = _3995.x + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _4000 = _3995.y + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _4001 = _3995.z + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _4003 = rsqrt(dot(float3(_3999, _4000, _4001), float3(_3999, _4000, _4001)));  // [sem: invLength]
          _4005 = (_3999 * _4003) + _635;
          _4007 = (_4000 * _4003) + _636;
          _4009 = (_4001 * _4003) + _637;
          _4011 = rsqrt(dot(float3(_4005, _4007, _4009), float3(_4005, _4007, _4009)));  // [sem: invLength]
          // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
          _4016 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _2188), (1.0f - _3885)), 0.0f);
          _4028 = (exp2(log2(saturate(dot(float3(_2180, _2181, _2182), float3((_4005 * _4011), (_4007 * _4011), (_4009 * _4011))))) * 512.0f) * 20.0f) + _4016.y;
          _4161 = (_4028 + (_4016.x * _3926));
          _4162 = (_4028 + (_4016.x * _3925));
          _4163 = (_4028 + (_4016.x * _3924));
          _4164 = _4016.y;
          _4165 = _4016.x;
        } else {
          if (_3886) {
            _4038 = min(0.99f, _2188);
            if (_3144 == 65) {
              // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
              _4043 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_4038, (1.0f - _3885)), 0.0f);
              _4161 = ((_4043.x * _3926) + _4043.y);
              _4162 = ((_4043.x * _3925) + _4043.y);
              _4163 = ((_4043.x * _3924) + _4043.y);
              _4164 = _4043.y;
              _4165 = _4043.x;
            } else {
              // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
              _4056 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_4038, saturate(1.0f - (_3885 * 1.33f))), 0.0f);
              // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
              _4062 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_4038, saturate(1.0f - (_3885 * 0.47998047f))), 0.0f);
              _4066 = (_4062.x + _4056.x) * 0.5f;
              _4068 = (_4062.y + _4056.y) * 0.5f;
              _4161 = ((_4066 * _3926) + _4068);
              _4162 = ((_4066 * _3925) + _4068);
              _4163 = ((_4066 * _3924) + _4068);
              _4164 = _4068;
              _4165 = _4066;
            }
          } else {
            if ((_3144 == 33) || (_3144 == 54)) {
              _4081 = max(dot(float3(_3033, _3034, _3035), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
              _4095 = (saturate(1.0f - (pow(_2188, 4.0f))) * (_3141 - _3143)) + _3143;
              _4106 = (((_4095 * (sqrt(_3035) - _4081)) + _4081) * _3142);
              _4107 = (((_4095 * (sqrt(_3034) - _4081)) + _4081) * _3142);
              _4108 = (((_4095 * (sqrt(_3033) - _4081)) + _4081) * _3142);
            } else {
              _4106 = _3926;
              _4107 = _3925;
              _4108 = _3924;
            }
            // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
            _4113 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _2188), (1.0f - _3885)), 0.0f);
            _4161 = ((_4113.x * _4106) + _4113.y);
            _4162 = ((_4113.x * _4107) + _4113.y);
            _4163 = ((_4113.x * _4108) + _4113.y);
            _4164 = _4113.y;
            _4165 = _4113.x;
          }
        }
      }
    } else {
      _4123 = min(0.99f, _2188);
      if (_3886) {
        // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
        _4130 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_4123, saturate(1.0f - (_3885 * 1.33f))), 0.0f);
        // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
        _4136 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_4123, saturate(1.0f - (_3885 * 0.47998047f))), 0.0f);
        _4140 = (_4136.x + _4130.x) * 0.5f;
        _4142 = (_4136.y + _4130.y) * 0.5f;
        _4161 = ((_4140 * _3920) + _4142);
        _4162 = ((_4140 * _3919) + _4142);
        _4163 = ((_4140 * _3918) + _4142);
        _4164 = _4142;
        _4165 = _4140;
      } else {
        // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
        _4151 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_4123, (1.0f - _3885)), 0.0f);
        _4161 = ((_4151.x * _3920) + _4151.y);
        _4162 = ((_4151.x * _3919) + _4151.y);
        _4163 = ((_4151.x * _3918) + _4151.y);
        _4164 = _4151.y;
        _4165 = _4151.x;
      }
    }
    _4168 = select((_3886 || _3570), 1.0f, _3909) * _2917;
    _4169 = _3021 * _2917;
    _4170 = _3024 * _2917;
    _4171 = _3027 * _2917;
    if (_2405 || _2138) {
      if (_2179) {
        _4445 = (_4171 * _2037);
        _4446 = (_4170 * _2038);
        _4447 = (_4169 * _2039);
        _4448 = 0.0f;
        _4449 = 0.0f;
        _4450 = 0.0f;
        _4451 = _2175;
        _4452 = _2174;
        _4453 = _2170;
        _4454 = _2171;
        _4455 = _2172;
        _4456 = _3880;
      } else {
        _4445 = 0.0f;
        _4446 = 0.0f;
        _4447 = 0.0f;
        _4448 = _4171;
        _4449 = _4170;
        _4450 = _4169;
        _4451 = _2175;
        _4452 = _2174;
        _4453 = _2170;
        _4454 = _2171;
        _4455 = _2172;
        _4456 = _3880;
      }
    } else {
      if (!((_2040 == 26) || ((_2040 == 105) || (((uint)((int)(_2040) + (int)(-27)) < (uint)2) || ((_2040 == 6) || (_2176 == 106)))))) {
        if (!(_2040 == 7)) {
          _4197 = exp2((saturate(_123 * 0.03125f) + 1.0f) * log2(_3880));
          // [sem: _3__36__0__0__g_puddleMask_sampleLod]
          _4200 = __3__36__0__0__g_puddleMask.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_110, _112), 0.0f);
          if (((_2040 & -4) == 16) || ((_2040 == 15) || (_2176 == 12))) {
            _4221 = 1;
            _4222 = 0;
            if (_4200.w < 1.0f) {
              if ((_weatherCheckFlag & 5) == 5) {
                _4230 = (_2040 == 36);
                if (!_4230) {
                  // [sem: _3__36__0__0__g_climateSandTex_sampleLod]
                  _4257 = __3__36__0__0__g_climateSandTex.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + ((_viewPos.x + _976) / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + ((_viewPos.z + _994) / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                  _4263 = _4257.w;
                  _4264 = _4257.z;
                  _4265 = _4257.y;
                  _4266 = _4257.x;
                } else {
                  _4263 = 0.5f;
                  _4264 = 0.1f;
                  _4265 = 0.12f;
                  _4266 = 0.12f;
                }
                _4276 = 1.0f - saturate(((_viewPos.y + _985) - _paramGlobalSand.x) / _paramGlobalSand.y);
                if (!(_4276 <= 0.0f)) {
                  _4279 = saturate(_4197);  // [sem: _4197_sat]
                  _4284 = ((_4265 * 0.33951f) + (_4264 * 0.04737f)) + (_4266 * 0.61312f);
                  _4289 = ((_4265 * 0.91636f) + (_4264 * 0.01345f)) + (_4266 * 0.0702f);
                  _4294 = ((_4265 * 0.10958f) + (_4264 * 0.8698f)) + (_4266 * 0.02062f);
                  _4300 = select((_4221 != 0), 1.0f, ((float)((bool)(saturate(dot(float3(_635, _636, _637), float3(0.0f, 1.0f, 0.0f))) > 0.5f))));
                  if (_enableSandAO == 1) {
                    _4306 = (1.0f - _4200.x) * 10.0f;
                    if (_4230) {
                      _4338 = saturate(((_4276 * _4263) * _4306) * _4279);  // [sem: _4334_sat]
                      _4339 = _4294;
                      _4340 = _4289;
                      _4341 = _4284;
                    } else {
                      _4314 = saturate(_4263 + -0.5f);  // [sem: expr_sat]
                      // [sem: _4334_sat]
                      _4338 = ((((_4279 * _4306) * saturate((0.5f - _4263) * 2.0f)) + ((_4314 * 2.0f) * max((_4300 * _4200.x), min((_4279 * ((_4200.x * 7.0f) + 3.0f)), (_4314 * 40.0f))))) * _4276);
                      _4339 = _4294;
                      _4340 = _4289;
                      _4341 = _4284;
                    }
                  } else {
                    _4334 = ((_4276 * _4263) * _4200.x) * _4300;
                    if (_4230) {
                      _4338 = saturate(_4334);  // [sem: _4334_sat]
                      _4339 = _4294;
                      _4340 = _4289;
                      _4341 = _4284;
                    } else {
                      _4338 = _4334;  // [sem: _4334_sat]
                      _4339 = _4294;
                      _4340 = _4289;
                      _4341 = _4284;
                    }
                  }
                } else {
                  _4338 = 0.0f;  // [sem: _4334_sat]
                  _4339 = 0.0f;
                  _4340 = 0.0f;
                  _4341 = 0.0f;
                }
                _4345 = ((1.0f - _4200.w) * (1.0f - _4200.y)) * _4338;
                if (_4345 > 0.0001f) {
                  _4348 = (_4221 == 0);
                  if (_4348) {
                    _4371 = ((_4339 - _3035) * _4345);
                    _4372 = ((_4340 - _3034) * _4345);
                    _4373 = ((_4341 - _3033) * _4345);
                  } else {
                    _4350 = saturate(_4345);  // [sem: _4345_sat]
                    _4371 = ((sqrt(_4339 * _3035) - _3035) * _4350);
                    _4372 = ((sqrt(_4340 * _3034) - _3034) * _4350);
                    _4373 = ((sqrt(_4341 * _3033) - _3033) * _4350);
                  }
                  _4374 = _3033 + _4373;
                  _4375 = _3034 + _4372;
                  _4376 = _4371 + _3035;
                  if (_4230) {
                    if (_4348) {
                      _4390 = _4374;
                      _4391 = _4375;
                      _4392 = _4376;
                      _4393 = ((_4345 * (0.25f - _3172)) + _3172);
                    } else {
                      _4390 = _4374;
                      _4391 = _4375;
                      _4392 = _4376;
                      _4393 = (((sqrt(_3172 * 0.25f) - _3172) * saturate(_4345)) + _3172);
                    }
                  } else {
                    _4390 = _4374;
                    _4391 = _4375;
                    _4392 = _4376;
                    _4393 = _3172;
                  }
                } else {
                  _4390 = _3033;
                  _4391 = _3034;
                  _4392 = _3035;
                  _4393 = _3172;
                }
                _4394 = saturate(_4390);  // [sem: _4390_sat]
                _4395 = saturate(_4391);  // [sem: _4391_sat]
                _4396 = saturate(_4392);  // [sem: _4392_sat]
                _4399 = (_4393 * (1.0f - _4197)) + _4197;
                _4402 = ((_4393 - _4399) * _4200.y) + _4399;
                _4410 = (((_4197 * _4197) * _4200.z) * ((float)((bool)(_4222 != 0)))) * saturate(dot(float3(_635, _636, _637), float3(0.0f, 1.0f, 0.0f)));
                _4411 = _4410 * -0.5f;
                _4423 = ((_4411 * _4396) + _4396);
                _4424 = ((_4411 * _4395) + _4395);
                _4425 = ((_4411 * _4394) + _4394);
                _4426 = (_4402 - (_4410 * _4402));
                _4427 = (_3044 - (_4197 * _3044));
              } else {
                _4423 = _3035;
                _4424 = _3034;
                _4425 = _3033;
                _4426 = _3172;
                _4427 = _3044;
              }
            } else {
              _4423 = _3035;
              _4424 = _3034;
              _4425 = _3033;
              _4426 = _3172;
              _4427 = _3044;
            }
          } else {
            if ((uint)_2040 > (uint)10) {
              if ((uint)_2040 < (uint)20) {
                _4221 = 0;
                _4222 = 0;
                if (_4200.w < 1.0f) {
                  if ((_weatherCheckFlag & 5) == 5) {
                    _4230 = (_2040 == 36);
                    if (!_4230) {
                      // [sem: _3__36__0__0__g_climateSandTex_sampleLod]
                      _4257 = __3__36__0__0__g_climateSandTex.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + ((_viewPos.x + _976) / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + ((_viewPos.z + _994) / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                      _4263 = _4257.w;
                      _4264 = _4257.z;
                      _4265 = _4257.y;
                      _4266 = _4257.x;
                    } else {
                      _4263 = 0.5f;
                      _4264 = 0.1f;
                      _4265 = 0.12f;
                      _4266 = 0.12f;
                    }
                    _4276 = 1.0f - saturate(((_viewPos.y + _985) - _paramGlobalSand.x) / _paramGlobalSand.y);
                    if (!(_4276 <= 0.0f)) {
                      _4279 = saturate(_4197);  // [sem: _4197_sat]
                      _4284 = ((_4265 * 0.33951f) + (_4264 * 0.04737f)) + (_4266 * 0.61312f);
                      _4289 = ((_4265 * 0.91636f) + (_4264 * 0.01345f)) + (_4266 * 0.0702f);
                      _4294 = ((_4265 * 0.10958f) + (_4264 * 0.8698f)) + (_4266 * 0.02062f);
                      _4300 = select((_4221 != 0), 1.0f, ((float)((bool)(saturate(dot(float3(_635, _636, _637), float3(0.0f, 1.0f, 0.0f))) > 0.5f))));
                      if (_enableSandAO == 1) {
                        _4306 = (1.0f - _4200.x) * 10.0f;
                        if (_4230) {
                          _4338 = saturate(((_4276 * _4263) * _4306) * _4279);  // [sem: _4334_sat]
                          _4339 = _4294;
                          _4340 = _4289;
                          _4341 = _4284;
                        } else {
                          _4314 = saturate(_4263 + -0.5f);  // [sem: expr_sat]
                          // [sem: _4334_sat]
                          _4338 = ((((_4279 * _4306) * saturate((0.5f - _4263) * 2.0f)) + ((_4314 * 2.0f) * max((_4300 * _4200.x), min((_4279 * ((_4200.x * 7.0f) + 3.0f)), (_4314 * 40.0f))))) * _4276);
                          _4339 = _4294;
                          _4340 = _4289;
                          _4341 = _4284;
                        }
                      } else {
                        _4334 = ((_4276 * _4263) * _4200.x) * _4300;
                        if (_4230) {
                          _4338 = saturate(_4334);  // [sem: _4334_sat]
                          _4339 = _4294;
                          _4340 = _4289;
                          _4341 = _4284;
                        } else {
                          _4338 = _4334;  // [sem: _4334_sat]
                          _4339 = _4294;
                          _4340 = _4289;
                          _4341 = _4284;
                        }
                      }
                    } else {
                      _4338 = 0.0f;  // [sem: _4334_sat]
                      _4339 = 0.0f;
                      _4340 = 0.0f;
                      _4341 = 0.0f;
                    }
                    _4345 = ((1.0f - _4200.w) * (1.0f - _4200.y)) * _4338;
                    if (_4345 > 0.0001f) {
                      _4348 = (_4221 == 0);
                      if (_4348) {
                        _4371 = ((_4339 - _3035) * _4345);
                        _4372 = ((_4340 - _3034) * _4345);
                        _4373 = ((_4341 - _3033) * _4345);
                      } else {
                        _4350 = saturate(_4345);  // [sem: _4345_sat]
                        _4371 = ((sqrt(_4339 * _3035) - _3035) * _4350);
                        _4372 = ((sqrt(_4340 * _3034) - _3034) * _4350);
                        _4373 = ((sqrt(_4341 * _3033) - _3033) * _4350);
                      }
                      _4374 = _3033 + _4373;
                      _4375 = _3034 + _4372;
                      _4376 = _4371 + _3035;
                      if (_4230) {
                        if (_4348) {
                          _4390 = _4374;
                          _4391 = _4375;
                          _4392 = _4376;
                          _4393 = ((_4345 * (0.25f - _3172)) + _3172);
                        } else {
                          _4390 = _4374;
                          _4391 = _4375;
                          _4392 = _4376;
                          _4393 = (((sqrt(_3172 * 0.25f) - _3172) * saturate(_4345)) + _3172);
                        }
                      } else {
                        _4390 = _4374;
                        _4391 = _4375;
                        _4392 = _4376;
                        _4393 = _3172;
                      }
                    } else {
                      _4390 = _3033;
                      _4391 = _3034;
                      _4392 = _3035;
                      _4393 = _3172;
                    }
                    _4394 = saturate(_4390);  // [sem: _4390_sat]
                    _4395 = saturate(_4391);  // [sem: _4391_sat]
                    _4396 = saturate(_4392);  // [sem: _4392_sat]
                    _4399 = (_4393 * (1.0f - _4197)) + _4197;
                    _4402 = ((_4393 - _4399) * _4200.y) + _4399;
                    _4410 = (((_4197 * _4197) * _4200.z) * ((float)((bool)(_4222 != 0)))) * saturate(dot(float3(_635, _636, _637), float3(0.0f, 1.0f, 0.0f)));
                    _4411 = _4410 * -0.5f;
                    _4423 = ((_4411 * _4396) + _4396);
                    _4424 = ((_4411 * _4395) + _4395);
                    _4425 = ((_4411 * _4394) + _4394);
                    _4426 = (_4402 - (_4410 * _4402));
                    _4427 = (_3044 - (_4197 * _3044));
                  } else {
                    _4423 = _3035;
                    _4424 = _3034;
                    _4425 = _3033;
                    _4426 = _3172;
                    _4427 = _3044;
                  }
                } else {
                  _4423 = _3035;
                  _4424 = _3034;
                  _4425 = _3033;
                  _4426 = _3172;
                  _4427 = _3044;
                }
              } else {
                if (!(_2040 == 97)) {
                  _4221 = 0;
                  _4222 = ((int)(uint)((int)(_2040 != 107)));
                  if (_4200.w < 1.0f) {
                    if ((_weatherCheckFlag & 5) == 5) {
                      _4230 = (_2040 == 36);
                      if (!_4230) {
                        // [sem: _3__36__0__0__g_climateSandTex_sampleLod]
                        _4257 = __3__36__0__0__g_climateSandTex.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + ((_viewPos.x + _976) / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + ((_viewPos.z + _994) / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                        _4263 = _4257.w;
                        _4264 = _4257.z;
                        _4265 = _4257.y;
                        _4266 = _4257.x;
                      } else {
                        _4263 = 0.5f;
                        _4264 = 0.1f;
                        _4265 = 0.12f;
                        _4266 = 0.12f;
                      }
                      _4276 = 1.0f - saturate(((_viewPos.y + _985) - _paramGlobalSand.x) / _paramGlobalSand.y);
                      if (!(_4276 <= 0.0f)) {
                        _4279 = saturate(_4197);  // [sem: _4197_sat]
                        _4284 = ((_4265 * 0.33951f) + (_4264 * 0.04737f)) + (_4266 * 0.61312f);
                        _4289 = ((_4265 * 0.91636f) + (_4264 * 0.01345f)) + (_4266 * 0.0702f);
                        _4294 = ((_4265 * 0.10958f) + (_4264 * 0.8698f)) + (_4266 * 0.02062f);
                        _4300 = select((_4221 != 0), 1.0f, ((float)((bool)(saturate(dot(float3(_635, _636, _637), float3(0.0f, 1.0f, 0.0f))) > 0.5f))));
                        if (_enableSandAO == 1) {
                          _4306 = (1.0f - _4200.x) * 10.0f;
                          if (_4230) {
                            _4338 = saturate(((_4276 * _4263) * _4306) * _4279);  // [sem: _4334_sat]
                            _4339 = _4294;
                            _4340 = _4289;
                            _4341 = _4284;
                          } else {
                            _4314 = saturate(_4263 + -0.5f);  // [sem: expr_sat]
                            // [sem: _4334_sat]
                            _4338 = ((((_4279 * _4306) * saturate((0.5f - _4263) * 2.0f)) + ((_4314 * 2.0f) * max((_4300 * _4200.x), min((_4279 * ((_4200.x * 7.0f) + 3.0f)), (_4314 * 40.0f))))) * _4276);
                            _4339 = _4294;
                            _4340 = _4289;
                            _4341 = _4284;
                          }
                        } else {
                          _4334 = ((_4276 * _4263) * _4200.x) * _4300;
                          if (_4230) {
                            _4338 = saturate(_4334);  // [sem: _4334_sat]
                            _4339 = _4294;
                            _4340 = _4289;
                            _4341 = _4284;
                          } else {
                            _4338 = _4334;  // [sem: _4334_sat]
                            _4339 = _4294;
                            _4340 = _4289;
                            _4341 = _4284;
                          }
                        }
                      } else {
                        _4338 = 0.0f;  // [sem: _4334_sat]
                        _4339 = 0.0f;
                        _4340 = 0.0f;
                        _4341 = 0.0f;
                      }
                      _4345 = ((1.0f - _4200.w) * (1.0f - _4200.y)) * _4338;
                      if (_4345 > 0.0001f) {
                        _4348 = (_4221 == 0);
                        if (_4348) {
                          _4371 = ((_4339 - _3035) * _4345);
                          _4372 = ((_4340 - _3034) * _4345);
                          _4373 = ((_4341 - _3033) * _4345);
                        } else {
                          _4350 = saturate(_4345);  // [sem: _4345_sat]
                          _4371 = ((sqrt(_4339 * _3035) - _3035) * _4350);
                          _4372 = ((sqrt(_4340 * _3034) - _3034) * _4350);
                          _4373 = ((sqrt(_4341 * _3033) - _3033) * _4350);
                        }
                        _4374 = _3033 + _4373;
                        _4375 = _3034 + _4372;
                        _4376 = _4371 + _3035;
                        if (_4230) {
                          if (_4348) {
                            _4390 = _4374;
                            _4391 = _4375;
                            _4392 = _4376;
                            _4393 = ((_4345 * (0.25f - _3172)) + _3172);
                          } else {
                            _4390 = _4374;
                            _4391 = _4375;
                            _4392 = _4376;
                            _4393 = (((sqrt(_3172 * 0.25f) - _3172) * saturate(_4345)) + _3172);
                          }
                        } else {
                          _4390 = _4374;
                          _4391 = _4375;
                          _4392 = _4376;
                          _4393 = _3172;
                        }
                      } else {
                        _4390 = _3033;
                        _4391 = _3034;
                        _4392 = _3035;
                        _4393 = _3172;
                      }
                      _4394 = saturate(_4390);  // [sem: _4390_sat]
                      _4395 = saturate(_4391);  // [sem: _4391_sat]
                      _4396 = saturate(_4392);  // [sem: _4392_sat]
                      _4399 = (_4393 * (1.0f - _4197)) + _4197;
                      _4402 = ((_4393 - _4399) * _4200.y) + _4399;
                      _4410 = (((_4197 * _4197) * _4200.z) * ((float)((bool)(_4222 != 0)))) * saturate(dot(float3(_635, _636, _637), float3(0.0f, 1.0f, 0.0f)));
                      _4411 = _4410 * -0.5f;
                      _4423 = ((_4411 * _4396) + _4396);
                      _4424 = ((_4411 * _4395) + _4395);
                      _4425 = ((_4411 * _4394) + _4394);
                      _4426 = (_4402 - (_4410 * _4402));
                      _4427 = (_3044 - (_4197 * _3044));
                    } else {
                      _4423 = _3035;
                      _4424 = _3034;
                      _4425 = _3033;
                      _4426 = _3172;
                      _4427 = _3044;
                    }
                  } else {
                    _4423 = _3035;
                    _4424 = _3034;
                    _4425 = _3033;
                    _4426 = _3172;
                    _4427 = _3044;
                  }
                } else {
                  _4423 = _3035;
                  _4424 = _3034;
                  _4425 = _3033;
                  _4426 = _3172;
                  _4427 = _3044;
                }
              }
            } else {
              _4221 = 0;
              _4222 = 1;
              if (_4200.w < 1.0f) {
                if ((_weatherCheckFlag & 5) == 5) {
                  _4230 = (_2040 == 36);
                  if (!_4230) {
                    // [sem: _3__36__0__0__g_climateSandTex_sampleLod]
                    _4257 = __3__36__0__0__g_climateSandTex.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + ((_viewPos.x + _976) / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + ((_viewPos.z + _994) / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                    _4263 = _4257.w;
                    _4264 = _4257.z;
                    _4265 = _4257.y;
                    _4266 = _4257.x;
                  } else {
                    _4263 = 0.5f;
                    _4264 = 0.1f;
                    _4265 = 0.12f;
                    _4266 = 0.12f;
                  }
                  _4276 = 1.0f - saturate(((_viewPos.y + _985) - _paramGlobalSand.x) / _paramGlobalSand.y);
                  if (!(_4276 <= 0.0f)) {
                    _4279 = saturate(_4197);  // [sem: _4197_sat]
                    _4284 = ((_4265 * 0.33951f) + (_4264 * 0.04737f)) + (_4266 * 0.61312f);
                    _4289 = ((_4265 * 0.91636f) + (_4264 * 0.01345f)) + (_4266 * 0.0702f);
                    _4294 = ((_4265 * 0.10958f) + (_4264 * 0.8698f)) + (_4266 * 0.02062f);
                    _4300 = select((_4221 != 0), 1.0f, ((float)((bool)(saturate(dot(float3(_635, _636, _637), float3(0.0f, 1.0f, 0.0f))) > 0.5f))));
                    if (_enableSandAO == 1) {
                      _4306 = (1.0f - _4200.x) * 10.0f;
                      if (_4230) {
                        _4338 = saturate(((_4276 * _4263) * _4306) * _4279);  // [sem: _4334_sat]
                        _4339 = _4294;
                        _4340 = _4289;
                        _4341 = _4284;
                      } else {
                        _4314 = saturate(_4263 + -0.5f);  // [sem: expr_sat]
                        // [sem: _4334_sat]
                        _4338 = ((((_4279 * _4306) * saturate((0.5f - _4263) * 2.0f)) + ((_4314 * 2.0f) * max((_4300 * _4200.x), min((_4279 * ((_4200.x * 7.0f) + 3.0f)), (_4314 * 40.0f))))) * _4276);
                        _4339 = _4294;
                        _4340 = _4289;
                        _4341 = _4284;
                      }
                    } else {
                      _4334 = ((_4276 * _4263) * _4200.x) * _4300;
                      if (_4230) {
                        _4338 = saturate(_4334);  // [sem: _4334_sat]
                        _4339 = _4294;
                        _4340 = _4289;
                        _4341 = _4284;
                      } else {
                        _4338 = _4334;  // [sem: _4334_sat]
                        _4339 = _4294;
                        _4340 = _4289;
                        _4341 = _4284;
                      }
                    }
                  } else {
                    _4338 = 0.0f;  // [sem: _4334_sat]
                    _4339 = 0.0f;
                    _4340 = 0.0f;
                    _4341 = 0.0f;
                  }
                  _4345 = ((1.0f - _4200.w) * (1.0f - _4200.y)) * _4338;
                  if (_4345 > 0.0001f) {
                    _4348 = (_4221 == 0);
                    if (_4348) {
                      _4371 = ((_4339 - _3035) * _4345);
                      _4372 = ((_4340 - _3034) * _4345);
                      _4373 = ((_4341 - _3033) * _4345);
                    } else {
                      _4350 = saturate(_4345);  // [sem: _4345_sat]
                      _4371 = ((sqrt(_4339 * _3035) - _3035) * _4350);
                      _4372 = ((sqrt(_4340 * _3034) - _3034) * _4350);
                      _4373 = ((sqrt(_4341 * _3033) - _3033) * _4350);
                    }
                    _4374 = _3033 + _4373;
                    _4375 = _3034 + _4372;
                    _4376 = _4371 + _3035;
                    if (_4230) {
                      if (_4348) {
                        _4390 = _4374;
                        _4391 = _4375;
                        _4392 = _4376;
                        _4393 = ((_4345 * (0.25f - _3172)) + _3172);
                      } else {
                        _4390 = _4374;
                        _4391 = _4375;
                        _4392 = _4376;
                        _4393 = (((sqrt(_3172 * 0.25f) - _3172) * saturate(_4345)) + _3172);
                      }
                    } else {
                      _4390 = _4374;
                      _4391 = _4375;
                      _4392 = _4376;
                      _4393 = _3172;
                    }
                  } else {
                    _4390 = _3033;
                    _4391 = _3034;
                    _4392 = _3035;
                    _4393 = _3172;
                  }
                  _4394 = saturate(_4390);  // [sem: _4390_sat]
                  _4395 = saturate(_4391);  // [sem: _4391_sat]
                  _4396 = saturate(_4392);  // [sem: _4392_sat]
                  _4399 = (_4393 * (1.0f - _4197)) + _4197;
                  _4402 = ((_4393 - _4399) * _4200.y) + _4399;
                  _4410 = (((_4197 * _4197) * _4200.z) * ((float)((bool)(_4222 != 0)))) * saturate(dot(float3(_635, _636, _637), float3(0.0f, 1.0f, 0.0f)));
                  _4411 = _4410 * -0.5f;
                  _4423 = ((_4411 * _4396) + _4396);
                  _4424 = ((_4411 * _4395) + _4395);
                  _4425 = ((_4411 * _4394) + _4394);
                  _4426 = (_4402 - (_4410 * _4402));
                  _4427 = (_3044 - (_4197 * _3044));
                } else {
                  _4423 = _3035;
                  _4424 = _3034;
                  _4425 = _3033;
                  _4426 = _3172;
                  _4427 = _3044;
                }
              } else {
                _4423 = _3035;
                _4424 = _3034;
                _4425 = _3033;
                _4426 = _3172;
                _4427 = _3044;
              }
            }
          }
          _4434 = _4197;
          _4435 = (half)(half(_4423));
          _4436 = (half)(half(_4424));
          _4437 = (half)(half(_4425));
          _4438 = (half)(half(_4426));
          _4439 = (half)(half(_4427));
        } else {
          _4434 = _3880;
          _4435 = _2170;
          _4436 = _2171;
          _4437 = _2172;
          _4438 = _2174;
          _4439 = _2175;
        }
        if (_2179) {
          _4445 = (_4171 * _2037);
          _4446 = (_4170 * _2038);
          _4447 = (_4169 * _2039);
          _4448 = 0.0f;
          _4449 = 0.0f;
          _4450 = 0.0f;
          _4451 = _4439;
          _4452 = _4438;
          _4453 = _4435;
          _4454 = _4436;
          _4455 = _4437;
          _4456 = _4434;
        } else {
          _4445 = 0.0f;
          _4446 = 0.0f;
          _4447 = 0.0f;
          _4448 = _4171;
          _4449 = _4170;
          _4450 = _4169;
          _4451 = _4439;
          _4452 = _4438;
          _4453 = _4435;
          _4454 = _4436;
          _4455 = _4437;
          _4456 = _4434;
        }
      } else {
        _4445 = 0.0f;
        _4446 = 0.0f;
        _4447 = 0.0f;
        _4448 = _4171;
        _4449 = _4170;
        _4450 = _4169;
        _4451 = _2175;
        _4452 = _2174;
        _4453 = _2170;
        _4454 = _2171;
        _4455 = _2172;
        _4456 = _3880;
      }
    }
    half4 _4458 = __3__36__0__0__g_sceneShadowColor.Load(int3(_98, _103, 0));  // [sem: _3__36__0__0__g_sceneShadowColor_load]
    _4463 = float(_4458.x);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    _4464 = float(_4458.y);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    _4465 = float(_4458.z);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    [branch]
    if (_2138) {
      _4468 = __3__36__0__0__g_sceneNormal.Load(int3(_98, _103, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
      _4474 = min(1.0f, ((((float)((uint)((uint)(_4468.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _4480 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_4468.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _4486 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_4468.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _4488 = rsqrt(dot(float3(_4474, _4480, _4486), float3(_4474, _4480, _4486)));  // [sem: invLength]
      _4496 = (half)(half(_4488 * _4486));
      _4497 = (half)(half(_4488 * _4480));
      _4498 = (half)(half(_4488 * _4474));
    } else {
      _4496 = _517;
      _4497 = _518;
      _4498 = _519;
    }
    _4501 = (_sunDirection.y > 0.0f);
    if (_4501) {
      _4517 = _sunDirection.x;
      _4518 = _sunDirection.y;
      _4519 = _sunDirection.z;
      _4534 = _4517;
      _4535 = _4518;
      _4536 = _4519;
      _4537 = _precomputedAmbient7.y;
    } else {
      _4508 = (_sunDirection.y > _moonDirection.y);
      _4513 = select(_4508, _sunDirection.z, _moonDirection.z);
      _4514 = select(_4508, _sunDirection.x, _moonDirection.x);
      _4515 = select(_4508, _sunDirection.y, _moonDirection.y);
      if (_4508) {
        _4517 = _4514;
        _4518 = _4515;
        _4519 = _4513;
        _4534 = _4517;
        _4535 = _4518;
        _4536 = _4519;
        _4537 = _precomputedAmbient7.y;
      } else {
        _4534 = _4514;
        _4535 = _4515;
        _4536 = _4513;
        _4537 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
      }
    }
    _4540 = _viewPos.x + _976;
    _4542 = _viewPos.y + _985;
    _4545 = _4542 + _earthRadius;
    _4547 = _viewPos.z + _994;
    _4553 = sqrt(((_4547 * _4547) + (_4540 * _4540)) + (_4545 * _4545));
    _4557 = dot(float3((_4540 / _4553), (_4545 / _4553), (_4547 / _4553)), float3(_4534, _4535, _4536));
    _4564 = min(max(((_4553 - _earthRadius) / _atmosphereThickness), 16.0f), (_atmosphereThickness + -16.0f));
    _4565 = max(_4564, 0.0f);
    _4572 = (-0.0f - sqrt((_4565 + (_earthRadius * 2.0f)) * _4565)) / (_4565 + _earthRadius);
    if (_4557 > _4572) {
      _4595 = ((exp2(log2(saturate((_4557 - _4572) / (1.0f - _4572))) * 0.2f) * 0.4921875f) + 0.50390625f);
    } else {
      _4595 = ((exp2(log2(saturate((_4572 - _4557) / (_4572 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
    }
    // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
    _4607 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_4564 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f), _4595), 0.0f);
    _4616 = ((_4607.y * 2e-05f) * _mieAerosolDensity) * (_mieAerosolAbsorption + 1.0f);  // [sem: _3__36__0__0__g_texNetDensity_sampleLod_derived]
    _4630 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.0556001e-06f)) * _4607.x) + _4616) * -1.442695f);
    _4640 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 4.9788005e-06f)) * _4607.x) + _4616) * -1.442695f);
    _4649 = exp2(((((((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.1360002e-07f)) * _4607.x) + _4616) * -1.442695f);
    _4650 = sqrt(_3161);
    _4658 = (_cloudAltitude - (max(((_4650 * _4650) + -400000.0f), 0.0f) * 1e-06f)) - _viewPos.y;
    _4670 = (_cloudThickness * (0.5f - (((float)((int)((int)((int)(uint)((int)(_4535 > 0.0f))) - (int)((int)(uint)((int)(_4535 < 0.0f)))))) * 0.5f))) + _4658;
    if (_985 < _4658) {
      _4673 = dot(float3(0.0f, 1.0f, 0.0f), float3(_4534, _4535, _4536));
      _4679 = select((abs(_4673) < 1e-08f), 1e+08f, ((_4670 - dot(float3(0.0f, 1.0f, 0.0f), float3(_976, _985, _994))) / _4673));
      _4685 = ((_4679 * _4536) + _994);
      _4686 = _4670;
      _4687 = ((_4679 * _4534) + _976);
    } else {
      _4685 = _994;
      _4686 = _985;
      _4687 = _976;
    }
    _4690 = saturate(abs(_4535) * 4.0f);  // [sem: expr_sat]
    _4709 = (_4690 * _4690) * exp2(((_distanceScale * -1.442695f) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_4687 * 5e-05f) + 0.5f), ((_4686 - _4658) / _cloudThickness), ((_4685 * 5e-05f) + 0.5f)), 0.0f)).x)) * (_cloudScatteringCoefficient / _distanceScale));
    _4716 = ((1.0f - _4709) * saturate(((_985 - _cloudThickness) - _4658) * 0.1f)) + _4709;
    _4722 = _4716 * (((_4640 * 0.33951f) + (_4630 * 0.61312f)) + (_4649 * 0.04737f));
    _4728 = _4716 * (((_4640 * 0.91636f) + (_4630 * 0.0702f)) + (_4649 * 0.01345f));
    _4734 = _4716 * (((_4640 * 0.10958f) + (_4630 * 0.02062f)) + (_4649 * 0.8698f));
    _4735 = float(_4455);
    _4736 = float(_4454);
    _4737 = float(_4453);
    if (!_3140) {
      _4744 = ((int)(uint)((int)(_184 && ((uint)((int)(_2040) + (int)(-105)) < (uint)2))));
    } else {
      _4744 = 1;
    }
    _4746 = float(max(0.010002136h, _4452));
    _4747 = float(_4451);
    _4748 = (_2040 == 107);
    if (!(((uint)((int)(_2040) + (int)(-11)) < (uint)9) || _2133)) {
      _4756 = (_4748 || (_4744 != 0));
    } else {
      _4756 = true;
    }
    if ((_2040 == 28) || ((_2040 == 105) || (_2176 == 26))) {
      _4771 = ((int)(uint)(_4748));
      _4772 = 1;
    } else {
      _4771 = select((_2040 == 19), 1, ((int)(uint)(_4748)));
      _4772 = ((int)(uint)((int)(_2040 == 106)));
    }
    _4773 = float(_4498);
    _4774 = float(_4497);
    _4775 = float(_4496);
    _4777 = __3__36__0__0__g_sceneDecalMask.Load(int3(_98, _103, 0));  // [sem: _3__36__0__0__g_sceneDecalMask_load]
    if (_2040 == 97) {
      _4791 = 0.0f;
      _4792 = 0.0f;
      _4793 = 0.0f;
      _4794 = 0.0f;
      _4795 = ((int)((uint)((uint)((int)(min16uint)((int)((int)(_4777.x) & 2)))) >> 1) + (int)(97));
      _4796 = (((float)((uint16_t)((int16_t)((uint16_t)((int16_t)(_4777.x)) >> 2)))) * 0.015873017f);
    } else {
      _4791 = _2036;
      _4792 = _2035;
      _4793 = _2034;
      _4794 = _2033;
      _4795 = _2040;
      _4796 = select(_4756, _4747, 0.0f);
    }
    _4798 = float(saturate(_203));
    _4799 = _4798 * _4798;
    _4800 = _4799 * _4799;
    _4801 = _4800 * _4800;
    _4816 = ((_4801 * _4801) * select((_2878 || (((int)(_4772) | (int)(_4771)) != 0)), 0.0f, 1.0f)) * (((float4)(__3__36__0__0__g_puddleMask.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((_bufferSizeAndInvSize.z * _106), (_bufferSizeAndInvSize.w * _107)), 0.0f))).y);
    _4818 = _4773 - (_4816 * _4773);
    _4821 = (_4816 * (1.0f - _4774)) + _4774;
    _4823 = _4775 - (_4816 * _4775);
    _4825 = rsqrt(dot(float3(_4818, _4821, _4823), float3(_4818, _4821, _4823)));  // [sem: invLength]
    _4826 = _4818 * _4825;
    _4827 = _4821 * _4825;
    _4828 = _4823 * _4825;
    _4829 = (_4795 == 37);
    _4830 = (_4795 == 55);
    _4831 = _4829 || _4830;
    _4833 = select((_4756 || _4831), 0.0f, _4747);
    _4834 = (_4795 == 52);
    if (_4834) {
      _4841 = saturate(((_4736 + _4737) + _4735) * 1.2f);  // [sem: expr_sat]
    } else {
      _4841 = 1.0f;  // [sem: expr_sat]
    }
    _4847 = (0.7f / min(max(max(max(_4735, _4736), _4737), 0.01f), 0.7f)) * _4841;
    _4851 = (((_4847 * _4735) + -0.04f) * _4833) + 0.04f;
    _4855 = (((_4847 * _4736) + -0.04f) * _4833) + 0.04f;
    _4859 = (((_4847 * _4737) + -0.04f) * _4833) + 0.04f;
    _4860 = float(_4452);
    _4861 = _4795 & -2;
    _4862 = (_4861 == 64);
    _4865 = ((((int)(uint)(_4862)) & _3888) == 0);
    if (_4865) {
      _4878 = saturate(exp2((_4860 * _4860) * (_123 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _4878 = select((_cavityParams.z > 0.0f), select(_185, 0.0f, _1019), 1.0f);  // [sem: expr_sat]
    }
    _4879 = select(_3908, 1.0f, _4878);
    if (_4862) {
      _4885 = (_4879 * _4859);
      _4886 = (_4879 * _4855);
      _4887 = (_4879 * _4851);
    } else {
      _4885 = _4859;
      _4886 = _4855;
      _4887 = _4851;
    }
    _4888 = _4746 * _4746;
    _4889 = _4888 * _4888;
    _4891 = ((uint)((int)((uint)((uint)(_4795)) + (uint)(-97))) < (uint)2);
    _4893 = select(_4891, 0.5f, (_4746 * 0.60009766f));
    _4894 = _4893 * _4893;
    _4895 = _4894 * _4894;
    _4896 = (_4795 == 98);
    if (!(_4896 || (_4861 == 96))) {
      if ((uint)((int)(_4795) + (int)(-105)) < (uint)2) {
        _4920 = 0;
        _4921 = ((int)(uint)(_184));
      } else {
        if ((uint)_4795 > (uint)11) {
          _4920 = ((int)(uint)((int)(((uint)_4795 < (uint)21) || (_4795 == 107))));
          _4921 = 0;
        } else {
          if (!(_4795 == 6)) {
            _4920 = ((int)(uint)((int)(_4795 == 7)));
            _4921 = 0;
          } else {
            _4920 = 1;
            _4921 = 0;
          }
        }
      }
    } else {
      _4920 = ((int)(uint)((int)(_4795 == 7)));
      _4921 = 1;
    }
    _4926 = exp2(log2(float(_4458.w)) * 2.2f) * 1000.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    if ((_4501) || ((!(_4501)) && (_sunDirection.y > _moonDirection.y))) {
      _4938 = _sunDirection.z;
      _4939 = _sunDirection.y;
      _4940 = _sunDirection.x;
    } else {
      _4938 = _moonDirection.z;
      _4939 = _moonDirection.y;
      _4940 = _moonDirection.x;
    }
    _4943 = _lightingParams.x * _4537;
    _4949 = _4943 * (((_4722 * 0.61312f) + (_4728 * 0.33951f)) + (_4734 * 0.04737f));
    _4955 = _4943 * (((_4722 * 0.0702f) + (_4728 * 0.91636f)) + (_4734 * 0.01345f));
    _4961 = _4943 * (((_4722 * 0.02062f) + (_4728 * 0.10958f)) + (_4734 * 0.8698f));
    _4962 = _4940 - _997;
    _4963 = _4939 - _998;
    _4964 = _4938 - _999;
    _4966 = rsqrt(dot(float3(_4962, _4963, _4964), float3(_4962, _4963, _4964)));  // [sem: invLength]
    _4967 = _4966 * _4962;
    _4968 = _4966 * _4963;
    _4969 = _4966 * _4964;
    _4970 = dot(float3(_4773, _4774, _4775), float3(_4940, _4939, _4938));
    _4971 = dot(float3(_4826, _4827, _4828), float3(_4940, _4939, _4938));
    _4973 = saturate(dot(float3(_4773, _4774, _4775), float3(_2180, _2181, _2182)));  // [sem: expr_sat]
    _4975 = saturate(dot(float3(_4826, _4827, _4828), float3(_4967, _4968, _4969)));  // [sem: expr_sat]
    _4976 = dot(float3(_2180, _2181, _2182), float3(_4967, _4968, _4969));
    _4978 = saturate(dot(float3(_4940, _4939, _4938), float3(_4967, _4968, _4969)));  // [sem: expr_sat]
    _4979 = (_4861 == 66);
    _4980 = (_4795 == 53);
    _4981 = _4980 || _4979;
    if (_4981) {
      if (_4980) {
        _4997 = (((asfloat(_globalLightParams.z) * _4746) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_180)));
      } else {
        _4997 = _bevelParams.y;
      }
      _4999 = (_3164 * 2.0f) + 1.0f;
      _5001 = (_2045 * 7.0f) + 1.0f;
      // [sem: _3__36__0__0__g_blueNoise_sampleLod]
      _5021 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2((((dot(float3(_976, _985, _994), float3(((_2041 * _232) - (_2042 * _233)), ((_2043 * _233) - (_2041 * _231)), ((_2042 * _231) - (_2043 * _232)))) * 2.0f) / _4999) * _5001), (((dot(float3(_976, _985, _994), float3(_2043, _2042, _2041)) * 0.5f) / _4999) * _5001)), 0.0f);
      _5025 = _2045 * 0.5f;
      _5026 = _5021.x * 2.0f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
      _5027 = _5021.y * 2.0f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
      _5028 = _5021.z * 2.0f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
      _5029 = dot(float3(_2043, _2042, _2041), float3(_4940, _4939, _4938));
      _5030 = dot(float3(_2043, _2042, _2041), float3(_2180, _2181, _2182));
      _5036 = cos(abs(asin(_5030) - asin(_5029)) * 0.5f);
      _5038 = _4940 - (_5029 * _2043);
      _5040 = _4939 - (_5029 * _2042);
      _5042 = _4938 - (_5029 * _2041);
      _5044 = _2180 - (_5030 * _2043);
      _5046 = _2181 - (_5030 * _2042);
      _5048 = _2182 - (_5030 * _2041);
      _5055 = dot(float3(_5038, _5040, _5042), float3(_5044, _5046, _5048)) * rsqrt((dot(float3(_5038, _5040, _5042), float3(_5038, _5040, _5042)) * dot(float3(_5044, _5046, _5048), float3(_5044, _5046, _5048))) + 0.0001f);
      _5059 = sqrt(saturate((_5055 * 0.5f) + 0.5f));
      _5062 = min(max(max(0.05f, _4746), 0.09803922f), 1.0f);
      _5063 = _5062 * _5062;
      _5064 = _5063 * 0.5f;
      _5065 = _5063 * 2.0f;
      _5066 = _5030 + _5029;
      _5068 = _5066 + (_4997 * 2.0f);
      _5070 = (_5059 * 1.4142135f) * _5063;
      _5076 = 1.0f - sqrt(saturate((dot(float3(_2180, _2181, _2182), float3(_4940, _4939, _4938)) * 0.5f) + 0.5f));
      _5077 = _5076 * _5076;
      _5078 = _5066 - _4997;
      _5082 = 1.0f / ((1.19f / _5036) + (_5036 * 0.36f));
      _5087 = ((_5082 * (0.6f - (_5055 * 0.8f))) + 1.0f) * _5059;
      _5093 = 1.0f - (sqrt(saturate(1.0f - (_5087 * _5087))) * _5036);
      _5094 = _5093 * _5093;
      _5098 = 0.9534794f - ((_5094 * _5094) * (_5093 * 0.9534794f));
      _5099 = _5087 * _5082;
      _5104 = (sqrt(1.0f - (_5099 * _5099)) * 0.5f) / _5036;
      _5105 = log2(_4735);
      _5106 = log2(_4736);
      _5107 = log2(_4737);
      _5121 = ((_5098 * _5098) * (exp2((((_5078 * _5078) * -0.5f) / (_5064 * _5064)) * 1.442695f) / (_5063 * 1.2533141f))) * exp2(-5.741926f - (_5055 * 5.265837f));
      _5123 = _5066 - (_4997 * 4.0f);
      _5125 = 1.0f - (_5036 * 0.5f);
      _5126 = _5125 * _5125;
      _5130 = (_5126 * _5126) * (0.9534794f - (_5036 * 0.4767397f));
      _5131 = 0.9534794f - _5130;
      _5132 = 0.8f / _5036;
      _5148 = (((_5131 * _5131) * (_5130 + 0.046520565f)) * (exp2((((_5123 * _5123) * -0.5f) / (_5065 * _5065)) * 1.442695f) / (_5063 * 5.0132565f))) * exp2((_5055 * 24.525816f) + -24.208424f);
      _5149 = saturate(_4971);  // [sem: _4971_sat]
      _5165 = (((_5059 * 0.25f) * (((_5077 * _5077) * (_5076 * 0.9534794f)) + 0.046520565f)) * _5149) * (exp2((((_5068 * _5068) * -0.5f) / (_5070 * _5070)) * 1.442695f) / (_5070 * 2.5066283f));
      _5166 = -0.0f - _5149;
      _5169 = saturate((_4971 + 1.0f) * 0.25f);  // [sem: expr_sat]
      _5171 = max(0.001f, dot(float3(_4735, _4736, _4737), float3(0.3f, 0.59f, 0.11f)));
      _5177 = ((((1.0f - _5169) - abs(_4971)) * 0.33f) + _5169) * 0.07957747f;
      _5184 = sqrt(_4735);
      _5185 = (_5177 * exp2(log2(_4735 / _5171) * (1.0f - _4463))) * _5184;
      _5192 = sqrt(_4736);
      _5193 = (exp2(log2(_4736 / _5171) * (1.0f - _4464)) * _5177) * _5192;
      _5200 = sqrt(_4737);
      _5201 = (exp2(log2(_4737 / _5171) * (1.0f - _4465)) * _5177) * _5200;
      _5213 = min(2048.0f, (-0.0f - min(0.0f, min(0.0f, (((exp2(_5105 * _5104) * _5121) + (exp2(_5132 * _5105) * _5148)) * _5166)))));
      _5225 = min(2048.0f, (-0.0f - min(0.0f, min(0.0f, (((exp2(_5106 * _5104) * _5121) + (exp2(_5132 * _5106) * _5148)) * _5166)))));
      _5237 = min(2048.0f, (-0.0f - min(0.0f, min(0.0f, (((exp2(_5107 * _5104) * _5121) + (exp2(_5132 * _5107) * _5148)) * _5166)))));
      _5246 = -0.0f - min(0.0f, (min(0.0f, (-0.0f - ((lerp(_5026, 1.0f, _5025)) * _5165))) * _4463));
      _5255 = -0.0f - min(0.0f, (min(0.0f, (-0.0f - ((lerp(_5027, 1.0f, _5025)) * _5165))) * _4464));
      _5264 = -0.0f - min(0.0f, (min(0.0f, (-0.0f - ((lerp(_5028, 1.0f, _5025)) * _5165))) * _4465));
      if (!_4979) {
        if (!_4980) {
          _5267 = (_4795 == 33);
          _5268 = (_4795 == 54);
          if (_5267 || _5268) {
            _5280 = (saturate(_4970) * 0.31830987f) * (((saturate(1.0f - _effectiveMetallicForVelvet) + -1.0f) * _4791) + 1.0f);
            _5282 = max(dot(float3(_4735, _4736, _4737), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
            _5293 = (saturate(1.0f - (pow(_4973, 4.0f))) * (_4791 - _4794)) + _4794;
            _5296 = ((_5293 * (_5192 - _5282)) + _5282) * _4793;
            _5299 = saturate(1.0f - saturate(_4976));  // [sem: expr_sat]
            _5300 = _5299 * _5299;
            _5302 = (_5300 * _5300) * _5299;
            _5305 = _5302 * saturate(_5296 * 50.0f);
            _5306 = 1.0f - _5302;
            _5307 = _5306 * _4793;
            _5311 = (_5307 * ((_5293 * (_5184 - _5282)) + _5282)) + _5305;
            _5313 = (_5306 * _5296) + _5305;
            _5317 = (_5307 * ((_5293 * (_5200 - _5282)) + _5282)) + _5305;
            _5318 = min(_4975, 0.9999f);
            _5319 = _5318 * _5318;
            _5320 = 1.0f - _5319;
            _5332 = (((exp2(((-0.0f - _5319) / (_5320 * _4889)) * 1.442695f) * 4.0f) / (_5320 * _5320)) + 1.0f) / ((_4889 * 12.566371f) + 3.1415927f);
            _5336 = ((_4973 + _4971) - (_4973 * _4971)) * 4.0f;
            _5338 = (_5311 * _5332) / _5336;
            _5340 = (_5313 * _5332) / _5336;
            _5342 = (_5317 * _5332) / _5336;
            _5343 = 1.0f - _4888;
            _5347 = (((_4975 * _4889) - _4975) * _4975) + 1.0f;
            _5359 = (0.5f / ((((_4973 * _5343) + _4888) * _4970) + (_4973 * ((_4970 * _5343) + _4888)))) * (_4889 / ((_5347 * _5347) * 3.1415927f));
            _5361 = (_4792 * 1.5f) + 2.5f;
            _5362 = _5361 * _5361;
            _5372 = (max(0.0f, (0.3f - _4970)) * 0.25f) * ((exp2(_5362 * -0.48089835f) * 3.0f) + exp2(_5362 * -1.442695f));
            _5388 = (((1.0f - _4791) * 0.4774648f) * saturate(_4792)) * saturate(exp2(log2(saturate(1.0f - abs(_4970))) * 3.0f) * (pow(_4975, 4.0f)));
            if (!_5267) {
              if (_5268) {
                if (_4831) {
                  _5420 = dot(float3(_2180, _2181, _2182), float3(_4826, _4827, _4828)) * 2.0f;
                  _5422 = _2180 - (_5420 * _4826);
                  _5424 = _2181 - (_5420 * _4827);
                  _5426 = _2182 - (_5420 * _4828);
                  _5427 = _4940 - _5422;
                  _5428 = _4939 - _5424;
                  _5429 = _4938 - _5426;
                  _5431 = rsqrt(dot(float3(_5427, _5428, _5429), float3(_5427, _5428, _5429)));  // [sem: invLength]
                  _5432 = _5427 * _5431;
                  _5433 = _5428 * _5431;
                  _5434 = _5429 * _5431;
                  _5496 = saturate(dot(float3(_4826, _4827, _4828), float3(_5432, _5433, _5434)));  // [sem: expr_sat]
                  _5497 = dot(float3((-0.0f - _5422), (-0.0f - _5424), (-0.0f - _5426)), float3(_5432, _5433, _5434));
                } else {
                  _5496 = _4975;  // [sem: expr_sat]
                  _5497 = _4976;
                }
              } else {
                _5442 = (_4795 == 65);
                if (_4862) {
                  if (!(_5442 || (!_4831))) {
                    _5448 = dot(float3(_2180, _2181, _2182), float3(_4826, _4827, _4828)) * 2.0f;
                    _5450 = _2180 - (_5448 * _4826);
                    _5452 = _2181 - (_5448 * _4827);
                    _5454 = _2182 - (_5448 * _4828);
                    _5455 = _4940 - _5450;
                    _5456 = _4939 - _5452;
                    _5457 = _4938 - _5454;
                    _5459 = rsqrt(dot(float3(_5455, _5456, _5457), float3(_5455, _5456, _5457)));  // [sem: invLength]
                    _5460 = _5455 * _5459;
                    _5461 = _5456 * _5459;
                    _5462 = _5457 * _5459;
                    _5496 = saturate(dot(float3(_4826, _4827, _4828), float3(_5460, _5461, _5462)));  // [sem: expr_sat]
                    _5497 = dot(float3((-0.0f - _5450), (-0.0f - _5452), (-0.0f - _5454)), float3(_5460, _5461, _5462));
                  } else {
                    _5496 = _4975;  // [sem: expr_sat]
                    _5497 = _4976;
                  }
                } else {
                  if (!(_5442 || (!_4831))) {
                    _5474 = dot(float3(_2180, _2181, _2182), float3(_4826, _4827, _4828)) * 2.0f;
                    _5476 = _2180 - (_5474 * _4826);
                    _5478 = _2181 - (_5474 * _4827);
                    _5480 = _2182 - (_5474 * _4828);
                    _5481 = _4940 - _5476;
                    _5482 = _4939 - _5478;
                    _5483 = _4938 - _5480;
                    _5485 = rsqrt(dot(float3(_5481, _5482, _5483), float3(_5481, _5482, _5483)));  // [sem: invLength]
                    _5486 = _5481 * _5485;
                    _5487 = _5482 * _5485;
                    _5488 = _5483 * _5485;
                    _5496 = saturate(dot(float3(_4826, _4827, _4828), float3(_5486, _5487, _5488)));  // [sem: expr_sat]
                    _5497 = dot(float3((-0.0f - _5476), (-0.0f - _5478), (-0.0f - _5480)), float3(_5486, _5487, _5488));
                  } else {
                    _5496 = _4975;  // [sem: expr_sat]
                    _5497 = _4976;
                  }
                }
              }
            } else {
              _5496 = _4975;  // [sem: expr_sat]
              _5497 = _4976;
            }
            _6437 = ((((_5200 * _4465) * _5372) + _5280) * _4465);
            _6438 = ((((_5192 * _4464) * _5372) + _5280) * _4464);
            _6439 = ((((_5184 * _4463) * _5372) + _5280) * _4463);
            _6440 = (((_5149 * _4465) * (((max((_5359 * _5317), 0.0f) - _5342) * _4794) + _5342)) + (_5388 * _5200));
            _6441 = (((_5149 * _4464) * (((max((_5359 * _5313), 0.0f) - _5340) * _4794) + _5340)) + (_5388 * _5192));
            _6442 = (((_5149 * _4463) * (((max((_5359 * _5311), 0.0f) - _5338) * _4794) + _5338)) + (_5388 * _5184));
            _6443 = 0.0f;
            _6444 = 0.0f;
            _6445 = 0.0f;
            _6446 = _5496;
            _6447 = _5497;
          } else {
            if ((_4970 > 0.0f) || (_4971 > 0.0f)) {
              _5515 = saturate(_4970);  // [sem: _4970_sat]
              _5516 = 1.0f - _4889;
              _5517 = 1.0f - _4978;
              _5518 = _5517 * _5517;
              _5521 = ((_5518 * _5518) * _5517) + _4978;
              _5522 = 1.0f - _5515;
              _5523 = _5522 * _5522;
              _5524 = 1.0f - _4973;
              _5525 = _5524 * _5524;
              _5556 = (_5515 * 0.31830987f) * ((((_4978 * ((((_5516 * 34.5f) + -59.0f) * _5516) + 24.5f)) * exp2(-0.0f - (max(((_5516 * 73.2f) + -21.2f), 8.9f) * sqrt(_4975)))) + _5521) + ((((1.0f - ((_5523 * _5523) * (_5522 * 0.75f))) * (1.0f - ((_5525 * _5525) * (_5524 * 0.75f)))) - _5521) * saturate((_5516 * 2.2f) + -0.5f)));
              _5559 = saturate(1.0f - saturate(_4976));  // [sem: expr_sat]
              _5560 = _5559 * _5559;
              _5562 = (_5560 * _5560) * _5559;
              _5565 = _5562 * saturate(_4886 * 50.0f);
              _5566 = 1.0f - _5562;
              _5568 = (_5566 * _4887) + _5565;
              _5570 = (_5566 * _4886) + _5565;
              _5572 = (_5566 * _4885) + _5565;
              if (!(_4795 == 29)) {
                _5575 = 1.0f - _4888;
                _5579 = (((_4975 * _4889) - _4975) * _4975) + 1.0f;
                _5591 = (0.5f / ((((_4973 * _5575) + _4888) * _4971) + (_4973 * ((_4971 * _5575) + _4888)))) * (_4889 / ((_5579 * _5579) * 3.1415927f));
                _5602 = (max((_5591 * _5572), 0.0f) * _5149);
                _5603 = (max((_5591 * _5570), 0.0f) * _5149);
                _5604 = (max((_5591 * _5568), 0.0f) * _5149);
              } else {
                _5602 = 0.0f;
                _5603 = 0.0f;
                _5604 = 0.0f;
              }
              _5605 = (_4795 == 65);
              if (_4862) {
                if (_5605) {
                  _5610 = max(1e-06f, _exposure2.x);
                  _5621 = ((_5515 * 50.265484f) * exp2(log2(saturate(dot(float3(_4826, _4827, _4828), float3(_2180, _2181, _2182)))) * 16.0f)) / (((_5610 * _5610) * 1e+06f) + 1.0f);
                  _5824 = _5602;
                  _5825 = _5603;
                  _5826 = _5604;
                  _5827 = _4975;
                  _5828 = _4976;
                  _5829 = ((((_5621 * _4737) - _5556) * _4796) + _5556);
                  _5830 = ((((_5621 * _4736) - _5556) * _4796) + _5556);
                  _5831 = ((((_5621 * _4735) - _5556) * _4796) + _5556);
                } else {
                  _5635 = 1.0f - _4894;
                  _5639 = (((_4975 * _4895) - _4975) * _4975) + 1.0f;
                  _5651 = (0.5f / ((((_4973 * _5635) + _4894) * _4971) + (_4973 * ((_4971 * _5635) + _4894)))) * (_4895 / ((_5639 * _5639) * 3.1415927f));
                  _5652 = _5149 * 0.39990234f;
                  _5657 = (max((_5651 * _5568), 0.0f) * _5652) + (_5604 * 0.60009766f);
                  _5662 = (max((_5651 * _5570), 0.0f) * _5652) + (_5603 * 0.60009766f);
                  _5667 = (max((_5651 * _5572), 0.0f) * _5652) + (_5602 * 0.60009766f);
                  if (_4831) {
                    _5670 = dot(float3(_2180, _2181, _2182), float3(_4826, _4827, _4828)) * 2.0f;
                    _5672 = _2180 - (_5670 * _4826);
                    _5674 = _2181 - (_5670 * _4827);
                    _5676 = _2182 - (_5670 * _4828);
                    _5677 = _4940 - _5672;
                    _5678 = _4939 - _5674;
                    _5679 = _4938 - _5676;
                    _5681 = rsqrt(dot(float3(_5677, _5678, _5679), float3(_5677, _5678, _5679)));  // [sem: invLength]
                    _5682 = _5677 * _5681;
                    _5683 = _5678 * _5681;
                    _5684 = _5679 * _5681;
                    _5685 = -0.0f - _5672;
                    _5686 = -0.0f - _5674;
                    _5687 = -0.0f - _5676;
                    _5689 = saturate(dot(float3(_4773, _4774, _4775), float3(_5685, _5686, _5687)));  // [sem: expr_sat]
                    _5691 = saturate(dot(float3(_4826, _4827, _4828), float3(_5682, _5683, _5684)));  // [sem: expr_sat]
                    _5694 = 1.0f - ((_5691 * _5691) * 0.9f);
                    _5705 = (0.5f / ((((_5689 * 0.9f) + 0.1f) * _4971) + (_5689 * ((_4971 * 0.9f) + 0.1f)))) * (0.03183099f / (_5694 * _5694));
                    _5824 = (((float(half(max((_5705 * _4737), 0.0f) * _5149)) - _5667) * 0.875f) + _5667);
                    _5825 = (((float(half(max((_5705 * _4736), 0.0f) * _5149)) - _5662) * 0.875f) + _5662);
                    _5826 = (((float(half(max((_5705 * _4735), 0.0f) * _5149)) - _5657) * 0.875f) + _5657);
                    _5827 = _5691;
                    _5828 = dot(float3(_5685, _5686, _5687), float3(_5682, _5683, _5684));
                    _5829 = _5556;
                    _5830 = _5556;
                    _5831 = _5556;
                  } else {
                    _5824 = _5667;
                    _5825 = _5662;
                    _5826 = _5657;
                    _5827 = _4975;
                    _5828 = _4976;
                    _5829 = _5556;
                    _5830 = _5556;
                    _5831 = _5556;
                  }
                }
              } else {
                if (_5605) {
                  _5735 = max(1e-06f, _exposure2.x);
                  _5746 = ((_5515 * 50.265484f) * exp2(log2(saturate(dot(float3(_4826, _4827, _4828), float3(_2180, _2181, _2182)))) * 16.0f)) / (((_5735 * _5735) * 1e+06f) + 1.0f);
                  _5824 = _5602;
                  _5825 = _5603;
                  _5826 = _5604;
                  _5827 = _4975;
                  _5828 = _4976;
                  _5829 = ((((_5746 * _4737) - _5556) * _4796) + _5556);
                  _5830 = ((((_5746 * _4736) - _5556) * _4796) + _5556);
                  _5831 = ((((_5746 * _4735) - _5556) * _4796) + _5556);
                } else {
                  if (_4831) {
                    _5762 = dot(float3(_2180, _2181, _2182), float3(_4826, _4827, _4828)) * 2.0f;
                    _5764 = _2180 - (_5762 * _4826);
                    _5766 = _2181 - (_5762 * _4827);
                    _5768 = _2182 - (_5762 * _4828);
                    _5769 = _4940 - _5764;
                    _5770 = _4939 - _5766;
                    _5771 = _4938 - _5768;
                    _5773 = rsqrt(dot(float3(_5769, _5770, _5771), float3(_5769, _5770, _5771)));  // [sem: invLength]
                    _5774 = _5769 * _5773;
                    _5775 = _5770 * _5773;
                    _5776 = _5771 * _5773;
                    _5777 = -0.0f - _5764;
                    _5778 = -0.0f - _5766;
                    _5779 = -0.0f - _5768;
                    _5781 = saturate(dot(float3(_4773, _4774, _4775), float3(_5777, _5778, _5779)));  // [sem: expr_sat]
                    _5783 = saturate(dot(float3(_4826, _4827, _4828), float3(_5774, _5775, _5776)));  // [sem: expr_sat]
                    _5786 = 1.0f - ((_5783 * _5783) * 0.9f);
                    _5797 = (0.5f / ((((_5781 * 0.9f) + 0.1f) * _4971) + (_5781 * ((_4971 * 0.9f) + 0.1f)))) * (0.03183099f / (_5786 * _5786));
                    _5824 = (((float(half(max((_5797 * _4737), 0.0f) * _5149)) - _5602) * 0.875f) + _5602);
                    _5825 = (((float(half(max((_5797 * _4736), 0.0f) * _5149)) - _5603) * 0.875f) + _5603);
                    _5826 = (((float(half(max((_5797 * _4735), 0.0f) * _5149)) - _5604) * 0.875f) + _5604);
                    _5827 = _5783;
                    _5828 = dot(float3(_5777, _5778, _5779), float3(_5774, _5775, _5776));
                    _5829 = _5556;
                    _5830 = _5556;
                    _5831 = _5556;
                  } else {
                    _5824 = _5602;
                    _5825 = _5603;
                    _5826 = _5604;
                    _5827 = _4975;
                    _5828 = _4976;
                    _5829 = _5556;
                    _5830 = _5556;
                    _5831 = _5556;
                  }
                }
              }
              _6437 = (-0.0f - (_4465 * min(-0.0f, (-0.0f - _5829))));
              _6438 = (-0.0f - (_4464 * min(-0.0f, (-0.0f - _5830))));
              _6439 = (-0.0f - (_4463 * min(-0.0f, (-0.0f - _5831))));
              _6440 = (_5824 * _4465);
              _6441 = (_5825 * _4464);
              _6442 = (_5826 * _4463);
              _6443 = _5237;
              _6444 = _5225;
              _6445 = _5213;
              _6446 = _5827;
              _6447 = _5828;
            } else {
              _6437 = _5201;
              _6438 = _5193;
              _6439 = _5185;
              _6440 = _5264;
              _6441 = _5255;
              _6442 = _5246;
              _6443 = _5237;
              _6444 = _5225;
              _6445 = _5213;
              _6446 = _4975;
              _6447 = _4976;
            }
          }
        } else {
          _6437 = _5201;
          _6438 = _5193;
          _6439 = _5185;
          _6440 = _5264;
          _6441 = _5255;
          _6442 = _5246;
          _6443 = _5237;
          _6444 = _5225;
          _6445 = _5213;
          _6446 = _4975;
          _6447 = _4976;
        }
      } else {
        _6437 = _5201;
        _6438 = _5193;
        _6439 = _5185;
        _6440 = _5264;
        _6441 = _5255;
        _6442 = _5246;
        _6443 = _5237;
        _6444 = _5225;
        _6445 = _5213;
        _6446 = _4975;
        _6447 = _4976;
      }
    } else {
      _5848 = (_4795 == 33);
      _5849 = (_4795 == 54);
      if (_5848 || _5849) {
        _5861 = (saturate(_4970) * 0.31830987f) * (((saturate(1.0f - _effectiveMetallicForVelvet) + -1.0f) * _4791) + 1.0f);
        _5863 = max(dot(float3(_4735, _4736, _4737), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
        _5864 = sqrt(_4735);
        _5865 = sqrt(_4736);
        _5866 = sqrt(_4737);
        _5877 = (saturate(1.0f - (pow(_4973, 4.0f))) * (_4791 - _4794)) + _4794;
        _5880 = ((_5877 * (_5865 - _5863)) + _5863) * _4793;
        _5883 = saturate(1.0f - saturate(_4976));  // [sem: expr_sat]
        _5884 = _5883 * _5883;
        _5886 = (_5884 * _5884) * _5883;
        _5889 = _5886 * saturate(_5880 * 50.0f);
        _5890 = 1.0f - _5886;
        _5891 = _5890 * _4793;
        _5895 = (_5891 * ((_5877 * (_5864 - _5863)) + _5863)) + _5889;
        _5897 = (_5890 * _5880) + _5889;
        _5901 = (_5891 * ((_5877 * (_5866 - _5863)) + _5863)) + _5889;
        _5902 = min(_4975, 0.9999f);
        _5903 = _5902 * _5902;
        _5904 = 1.0f - _5903;
        _5916 = (((exp2(((-0.0f - _5903) / (_5904 * _4889)) * 1.442695f) * 4.0f) / (_5904 * _5904)) + 1.0f) / ((_4889 * 12.566371f) + 3.1415927f);
        _5920 = ((_4973 + _4971) - (_4973 * _4971)) * 4.0f;
        _5922 = (_5895 * _5916) / _5920;
        _5924 = (_5897 * _5916) / _5920;
        _5926 = (_5901 * _5916) / _5920;
        _5927 = 1.0f - _4888;
        _5931 = (((_4975 * _4889) - _4975) * _4975) + 1.0f;
        _5943 = (0.5f / ((((_4973 * _5927) + _4888) * _4970) + (_4973 * ((_4970 * _5927) + _4888)))) * (_4889 / ((_5931 * _5931) * 3.1415927f));
        _5944 = saturate(_4971);  // [sem: _4971_sat]
        _5946 = (_4792 * 1.5f) + 2.5f;
        _5947 = _5946 * _5946;
        _5957 = (max(0.0f, (0.3f - _4970)) * 0.25f) * ((exp2(_5947 * -0.48089835f) * 3.0f) + exp2(_5947 * -1.442695f));
        _5973 = (((1.0f - _4791) * 0.4774648f) * saturate(_4792)) * saturate(exp2(log2(saturate(1.0f - abs(_4970))) * 3.0f) * (pow(_4975, 4.0f)));
        if (!_5848) {
          if (_5849) {
            if (_4831) {
              _6005 = dot(float3(_2180, _2181, _2182), float3(_4826, _4827, _4828)) * 2.0f;
              _6007 = _2180 - (_6005 * _4826);
              _6009 = _2181 - (_6005 * _4827);
              _6011 = _2182 - (_6005 * _4828);
              _6012 = _4940 - _6007;
              _6013 = _4939 - _6009;
              _6014 = _4938 - _6011;
              _6016 = rsqrt(dot(float3(_6012, _6013, _6014), float3(_6012, _6013, _6014)));  // [sem: invLength]
              _6017 = _6012 * _6016;
              _6018 = _6013 * _6016;
              _6019 = _6014 * _6016;
              _6082 = saturate(dot(float3(_4826, _4827, _4828), float3(_6017, _6018, _6019)));  // [sem: expr_sat]
              _6083 = dot(float3((-0.0f - _6007), (-0.0f - _6009), (-0.0f - _6011)), float3(_6017, _6018, _6019));
            } else {
              _6082 = _4975;  // [sem: expr_sat]
              _6083 = _4976;
            }
          } else {
            _6027 = (_4795 == 65);
            if (_4862) {
              if (!(_6027 || (!_4831))) {
                _6033 = dot(float3(_2180, _2181, _2182), float3(_4826, _4827, _4828)) * 2.0f;
                _6035 = _2180 - (_6033 * _4826);
                _6037 = _2181 - (_6033 * _4827);
                _6039 = _2182 - (_6033 * _4828);
                _6040 = _4940 - _6035;
                _6041 = _4939 - _6037;
                _6042 = _4938 - _6039;
                _6044 = rsqrt(dot(float3(_6040, _6041, _6042), float3(_6040, _6041, _6042)));  // [sem: invLength]
                _6045 = _6040 * _6044;
                _6046 = _6041 * _6044;
                _6047 = _6042 * _6044;
                _6082 = saturate(dot(float3(_4826, _4827, _4828), float3(_6045, _6046, _6047)));  // [sem: expr_sat]
                _6083 = dot(float3((-0.0f - _6035), (-0.0f - _6037), (-0.0f - _6039)), float3(_6045, _6046, _6047));
              } else {
                _6082 = _4975;  // [sem: expr_sat]
                _6083 = _4976;
              }
            } else {
              if (!(_6027 || (!(_4829 || _4830)))) {
                _6060 = dot(float3(_2180, _2181, _2182), float3(_4826, _4827, _4828)) * 2.0f;
                _6062 = _2180 - (_6060 * _4826);
                _6064 = _2181 - (_6060 * _4827);
                _6066 = _2182 - (_6060 * _4828);
                _6067 = _4940 - _6062;
                _6068 = _4939 - _6064;
                _6069 = _4938 - _6066;
                _6071 = rsqrt(dot(float3(_6067, _6068, _6069), float3(_6067, _6068, _6069)));  // [sem: invLength]
                _6072 = _6067 * _6071;
                _6073 = _6068 * _6071;
                _6074 = _6069 * _6071;
                _6082 = saturate(dot(float3(_4826, _4827, _4828), float3(_6072, _6073, _6074)));  // [sem: expr_sat]
                _6083 = dot(float3((-0.0f - _6062), (-0.0f - _6064), (-0.0f - _6066)), float3(_6072, _6073, _6074));
              } else {
                _6082 = _4975;  // [sem: expr_sat]
                _6083 = _4976;
              }
            }
          }
        } else {
          _6082 = _4975;  // [sem: expr_sat]
          _6083 = _4976;
        }
        _6437 = ((((_5866 * _4465) * _5957) + _5861) * _4465);
        _6438 = ((((_5865 * _4464) * _5957) + _5861) * _4464);
        _6439 = ((((_5864 * _4463) * _5957) + _5861) * _4463);
        _6440 = (((_5944 * _4465) * (((max((_5943 * _5901), 0.0f) - _5926) * _4794) + _5926)) + (_5973 * _5866));
        _6441 = (((_5944 * _4464) * (((max((_5943 * _5897), 0.0f) - _5924) * _4794) + _5924)) + (_5973 * _5865));
        _6442 = (((_5944 * _4463) * (((max((_5943 * _5895), 0.0f) - _5922) * _4794) + _5922)) + (_5973 * _5864));
        _6443 = 0.0f;
        _6444 = 0.0f;
        _6445 = 0.0f;
        _6446 = _6082;
        _6447 = _6083;
      } else {
        if ((_4970 > 0.0f) || (_4971 > 0.0f)) {
          _6101 = saturate(_4970);  // [sem: _4970_sat]
          _6102 = 1.0f - _4889;
          _6103 = 1.0f - _4978;
          _6104 = _6103 * _6103;
          _6107 = ((_6104 * _6104) * _6103) + _4978;
          _6108 = 1.0f - _6101;
          _6109 = _6108 * _6108;
          _6110 = 1.0f - _4973;
          _6111 = _6110 * _6110;
          _6142 = (_6101 * 0.31830987f) * ((((_4978 * ((((_6102 * 34.5f) + -59.0f) * _6102) + 24.5f)) * exp2(-0.0f - (max(((_6102 * 73.2f) + -21.2f), 8.9f) * sqrt(_4975)))) + _6107) + ((((1.0f - ((_6109 * _6109) * (_6108 * 0.75f))) * (1.0f - ((_6111 * _6111) * (_6110 * 0.75f)))) - _6107) * saturate((_6102 * 2.2f) + -0.5f)));
          _6145 = saturate(1.0f - saturate(_4976));  // [sem: expr_sat]
          _6146 = _6145 * _6145;
          _6148 = (_6146 * _6146) * _6145;
          _6151 = _6148 * saturate(_4886 * 50.0f);
          _6152 = 1.0f - _6148;
          _6154 = (_6152 * _4887) + _6151;
          _6156 = (_6152 * _4886) + _6151;
          _6158 = (_6152 * _4885) + _6151;
          if (!(_4795 == 29)) {
            _6161 = saturate(_4971);  // [sem: _4971_sat]
            _6162 = 1.0f - _4888;
            _6166 = (((_4975 * _4889) - _4975) * _4975) + 1.0f;
            _6178 = (0.5f / ((((_4973 * _6162) + _4888) * _4971) + (_4973 * ((_4971 * _6162) + _4888)))) * (_4889 / ((_6166 * _6166) * 3.1415927f));
            _6189 = (max((_6178 * _6158), 0.0f) * _6161);
            _6190 = (max((_6178 * _6156), 0.0f) * _6161);
            _6191 = (max((_6178 * _6154), 0.0f) * _6161);
          } else {
            _6189 = 0.0f;
            _6190 = 0.0f;
            _6191 = 0.0f;
          }
          _6192 = (_4795 == 65);
          if (_4862) {
            if (_6192) {
              _6197 = max(1e-06f, _exposure2.x);
              _6208 = ((_6101 * 50.265484f) * exp2(log2(saturate(dot(float3(_4826, _4827, _4828), float3(_2180, _2181, _2182)))) * 16.0f)) / (((_6197 * _6197) * 1e+06f) + 1.0f);
              _6413 = _6189;
              _6414 = _6190;
              _6415 = _6191;
              _6416 = _4975;
              _6417 = _4976;
              _6418 = ((((_6208 * _4737) - _6142) * _4796) + _6142);
              _6419 = ((((_6208 * _4736) - _6142) * _4796) + _6142);
              _6420 = ((((_6208 * _4735) - _6142) * _4796) + _6142);
            } else {
              _6222 = 1.0f - _4894;
              _6226 = (((_4975 * _4895) - _4975) * _4975) + 1.0f;
              _6238 = (0.5f / ((((_4973 * _6222) + _4894) * _4971) + (_4973 * ((_4971 * _6222) + _4894)))) * (_4895 / ((_6226 * _6226) * 3.1415927f));
              _6239 = saturate(_4971);  // [sem: _4971_sat]
              _6240 = _6239 * 0.39990234f;
              _6245 = (max((_6238 * _6154), 0.0f) * _6240) + (_6191 * 0.60009766f);
              _6250 = (max((_6238 * _6156), 0.0f) * _6240) + (_6190 * 0.60009766f);
              _6255 = (max((_6238 * _6158), 0.0f) * _6240) + (_6189 * 0.60009766f);
              if (_4831) {
                _6258 = dot(float3(_2180, _2181, _2182), float3(_4826, _4827, _4828)) * 2.0f;
                _6260 = _2180 - (_6258 * _4826);
                _6262 = _2181 - (_6258 * _4827);
                _6264 = _2182 - (_6258 * _4828);
                _6265 = _4940 - _6260;
                _6266 = _4939 - _6262;
                _6267 = _4938 - _6264;
                _6269 = rsqrt(dot(float3(_6265, _6266, _6267), float3(_6265, _6266, _6267)));  // [sem: invLength]
                _6270 = _6265 * _6269;
                _6271 = _6266 * _6269;
                _6272 = _6267 * _6269;
                _6273 = -0.0f - _6260;
                _6274 = -0.0f - _6262;
                _6275 = -0.0f - _6264;
                _6277 = saturate(dot(float3(_4773, _4774, _4775), float3(_6273, _6274, _6275)));  // [sem: expr_sat]
                _6279 = saturate(dot(float3(_4826, _4827, _4828), float3(_6270, _6271, _6272)));  // [sem: expr_sat]
                _6282 = 1.0f - ((_6279 * _6279) * 0.9f);
                _6293 = (0.5f / ((((_6277 * 0.9f) + 0.1f) * _4971) + (_6277 * ((_4971 * 0.9f) + 0.1f)))) * (0.03183099f / (_6282 * _6282));
                _6413 = (((float(half(max((_6293 * _4737), 0.0f) * _6239)) - _6255) * 0.875f) + _6255);
                _6414 = (((float(half(max((_6293 * _4736), 0.0f) * _6239)) - _6250) * 0.875f) + _6250);
                _6415 = (((float(half(max((_6293 * _4735), 0.0f) * _6239)) - _6245) * 0.875f) + _6245);
                _6416 = _6279;
                _6417 = dot(float3(_6273, _6274, _6275), float3(_6270, _6271, _6272));
                _6418 = _6142;
                _6419 = _6142;
                _6420 = _6142;
              } else {
                _6413 = _6255;
                _6414 = _6250;
                _6415 = _6245;
                _6416 = _4975;
                _6417 = _4976;
                _6418 = _6142;
                _6419 = _6142;
                _6420 = _6142;
              }
            }
          } else {
            if (_6192) {
              _6323 = max(1e-06f, _exposure2.x);
              _6334 = ((_6101 * 50.265484f) * exp2(log2(saturate(dot(float3(_4826, _4827, _4828), float3(_2180, _2181, _2182)))) * 16.0f)) / (((_6323 * _6323) * 1e+06f) + 1.0f);
              _6413 = _6189;
              _6414 = _6190;
              _6415 = _6191;
              _6416 = _4975;
              _6417 = _4976;
              _6418 = ((((_6334 * _4737) - _6142) * _4796) + _6142);
              _6419 = ((((_6334 * _4736) - _6142) * _4796) + _6142);
              _6420 = ((((_6334 * _4735) - _6142) * _4796) + _6142);
            } else {
              if (_4831) {
                _6350 = dot(float3(_2180, _2181, _2182), float3(_4826, _4827, _4828)) * 2.0f;
                _6352 = _2180 - (_6350 * _4826);
                _6354 = _2181 - (_6350 * _4827);
                _6356 = _2182 - (_6350 * _4828);
                _6357 = _4940 - _6352;
                _6358 = _4939 - _6354;
                _6359 = _4938 - _6356;
                _6361 = rsqrt(dot(float3(_6357, _6358, _6359), float3(_6357, _6358, _6359)));  // [sem: invLength]
                _6362 = _6357 * _6361;
                _6363 = _6358 * _6361;
                _6364 = _6359 * _6361;
                _6365 = -0.0f - _6352;
                _6366 = -0.0f - _6354;
                _6367 = -0.0f - _6356;
                _6369 = saturate(dot(float3(_4773, _4774, _4775), float3(_6365, _6366, _6367)));  // [sem: expr_sat]
                _6371 = saturate(dot(float3(_4826, _4827, _4828), float3(_6362, _6363, _6364)));  // [sem: expr_sat]
                _6372 = saturate(_4971);  // [sem: _4971_sat]
                _6375 = 1.0f - ((_6371 * _6371) * 0.9f);
                _6386 = (0.5f / ((((_6369 * 0.9f) + 0.1f) * _4971) + (_6369 * ((_4971 * 0.9f) + 0.1f)))) * (0.03183099f / (_6375 * _6375));
                _6413 = (((float(half(max((_6386 * _4737), 0.0f) * _6372)) - _6189) * 0.875f) + _6189);
                _6414 = (((float(half(max((_6386 * _4736), 0.0f) * _6372)) - _6190) * 0.875f) + _6190);
                _6415 = (((float(half(max((_6386 * _4735), 0.0f) * _6372)) - _6191) * 0.875f) + _6191);
                _6416 = _6371;
                _6417 = dot(float3(_6365, _6366, _6367), float3(_6362, _6363, _6364));
                _6418 = _6142;
                _6419 = _6142;
                _6420 = _6142;
              } else {
                _6413 = _6189;
                _6414 = _6190;
                _6415 = _6191;
                _6416 = _4975;
                _6417 = _4976;
                _6418 = _6142;
                _6419 = _6142;
                _6420 = _6142;
              }
            }
          }
          _6437 = (-0.0f - (_4465 * min(-0.0f, (-0.0f - _6418))));
          _6438 = (-0.0f - (_4464 * min(-0.0f, (-0.0f - _6419))));
          _6439 = (-0.0f - (_4463 * min(-0.0f, (-0.0f - _6420))));
          _6440 = (_6413 * _4465);
          _6441 = (_6414 * _4464);
          _6442 = (_6415 * _4463);
          _6443 = 0.0f;
          _6444 = 0.0f;
          _6445 = 0.0f;
          _6446 = _6416;
          _6447 = _6417;
        } else {
          _6437 = 0.0f;
          _6438 = 0.0f;
          _6439 = 0.0f;
          _6440 = 0.0f;
          _6441 = 0.0f;
          _6442 = 0.0f;
          _6443 = 0.0f;
          _6444 = 0.0f;
          _6445 = 0.0f;
          _6446 = _4975;
          _6447 = _4976;
        }
      }
    }
    if (!(_4920 == 0)) {
      _6452 = max(0.0f, (0.3f - _4970)) * 0.23190688f;
      _6460 = ((_6452 * _4465) + _6437);
      _6461 = ((_6452 * _4464) + _6438);
      _6462 = ((_6452 * _4463) + _6439);
    } else {
      _6460 = _6437;
      _6461 = _6438;
      _6462 = _6439;
    }
    _6464 = 1.0f - (_6447 * 0.85f);
    if (_4862) {
      _6466 = max(4.0f, _4926);
      _6467 = _6466 * _6466;
      _6469 = exp2(_6467 * -225.4211f);
      _6471 = exp2(_6467 * -29.807749f);
      _6473 = exp2(_6467 * -7.7149463f);
      _6475 = exp2(_6467 * -2.5444357f);
      _6476 = _6475 * 0.007f;
      _6478 = exp2(_6467 * -0.72497237f);
      _6480 = -0.0f - _233;
      _6484 = saturate(dot(float3(_4940, _4939, _4938), float3((-0.0f - _231), _242, _6480)) + 0.3f) * 0.31830987f;
      _6516 = ((((((((_6471 * 0.1f) + (_6469 * 0.233f)) + (_6473 * 0.118f)) + (_6475 * 0.113f)) + (_6478 * 0.358f)) + (exp2(_6467 * -0.19469568f) * 0.078f)) * _6484) + _6462) * _4949;
      _6517 = ((_6484 * (((((_6471 * 0.336f) + (_6469 * 0.455f)) + (_6473 * 0.198f)) + _6476) + (_6478 * 0.004f))) + _6461) * _4955;
      _6518 = ((_6484 * (((_6471 * 0.344f) + (_6469 * 0.649f)) + _6476)) + _6460) * _4961;
      _6519 = _4949 * _4463;
      _6521 = _4955 * _4464;
      _6523 = _4961 * _4465;
      if ((_4451 == 0.0h) && ((_123 < 1000.0f) && _4891)) {
        if (!(abs(_232) > 0.99f)) {
          _6534 = rsqrt(dot(float3(_6480, 0.0f, _231), float3(_6480, 0.0f, _231)));  // [sem: invLength]
          _6538 = (_6534 * _231);
          _6539 = (_6534 * _6480);
        } else {
          _6538 = 0.0f;
          _6539 = 1.0f;
        }
        _6541 = -0.0f - (_232 * _6538);
        _6544 = (_6538 * _231) - (_6539 * _233);
        _6545 = _6539 * _232;
        _6547 = rsqrt(dot(float3(_6541, _6544, _6545), float3(_6541, _6544, _6545)));  // [sem: invLength]
        // [sem: _3__36__0__0__g_blueNoise_sampleLod]
        _6555 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_6539, 0.0f, _6538), float3(_4540, _4542, _4547)), dot(float3((_6547 * _6541), (_6544 * _6547), (_6547 * _6545)), float3(_4540, _4542, _4547))), 0.0f);
        _6559 = _6555.x + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
        _6560 = _6555.y + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
        _6561 = _6555.z + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
        _6563 = rsqrt(dot(float3(_6559, _6560, _6561), float3(_6559, _6560, _6561)));  // [sem: invLength]
        _6565 = (_6559 * _6563) + _4826;
        _6567 = (_6560 * _6563) + _4827;
        _6569 = (_6561 * _6563) + _4828;
        _6571 = rsqrt(dot(float3(_6565, _6567, _6569), float3(_6565, _6567, _6569)));  // [sem: invLength]
        _6572 = _6565 * _6571;
        _6573 = _6567 * _6571;
        _6574 = _6569 * _6571;
        _6578 = abs(((_104 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
        _6582 = abs(1.0f - ((_105 * 2.0f) * _bufferSizeAndInvSize.w));
        _6584 = saturate(_6578 * _6578);  // [sem: expr_sat]
        _6586 = saturate(_6582 * _6582);  // [sem: expr_sat]
        _6590 = dot(float3((-0.0f - _6572), (-0.0f - _6573), (-0.0f - _6574)), float3(_4940, _4939, _4938));
        _6592 = saturate(dot(float3(_6572, _6573, _6574), float3(_2180, _2181, _2182)));  // [sem: expr_sat]
        _6594 = saturate(1.0f - _6447);  // [sem: expr_sat]
        _6595 = _6594 * _6594;
        _6597 = (_6595 * _6595) * _6594;
        _6600 = 1.0f - ((_6446 * _6446) * 0.9999f);
        _6641 = ((exp2(log2(saturate(dot(float3(_2180, _2181, _2182), float3(_6572, _6573, _6574)))) * 1024.0f) * 50.0f) + (saturate(_6590) * max((((0.5f / ((((_6592 * 0.9999f) + 0.0001f) * _6590) + (_6592 * ((_6590 * 0.9999f) + 0.0001f)))) * (3.1830987e-05f / (_6600 * _6600))) * (lerp(_6597, 1.0f, 0.08f))), 0.0f))) * (((1.0f - ((_6586 * _6586) * (3.0f - (_6586 * 2.0f)))) * (1.0f - ((_6584 * _6584) * (3.0f - (_6584 * 2.0f))))) * saturate(1.0f - (_123 * 0.001f)));
        _7445 = (_6523 * (_6641 + _6440));
        _7446 = (_6521 * (_6641 + _6441));
        _7447 = (_6519 * (_6641 + _6442));
        _7448 = _6443;
        _7449 = _6444;
        _7450 = _6445;
        _7451 = _6518;
        _7452 = _6517;
        _7453 = _6516;
      } else {
        _7445 = (_6440 * _6523);
        _7446 = (_6441 * _6521);
        _7447 = (_6442 * _6519);
        _7448 = _6443;
        _7449 = _6444;
        _7450 = _6445;
        _7451 = _6518;
        _7452 = _6517;
        _7453 = _6516;
      }
    } else {
      if (_4981) {
        _6653 = _renderParams2.w * dot(float3(_4735, _4736, _4737), float3(0.212671f, 0.71516f, 0.072169f));
        _6656 = (_2111 - (_6653 * _2111)) + _6653;
        _6659 = (pow(_4463, 1.2f));
        _6662 = (pow(_4464, 1.2f));
        _6665 = (pow(_4465, 1.2f));
        _6668 = saturate(abs(dot(float3(_4940, _4939, _4938), float3(_2043, _2042, _2041))));  // [sem: expr_sat]
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _6674 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_6668, _4746, saturate(sqrt(sqrt(_4735)))), 0.0f);
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _6680 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_6668, _4746, saturate(sqrt(sqrt(_4736)))), 0.0f);
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _6686 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_6668, _4746, saturate(sqrt(sqrt(_4737)))), 0.0f);
        _6689 = min(0.99f, _6674.x);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _6690 = min(0.99f, _6680.x);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _6691 = min(0.99f, _6686.x);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _6692 = min(0.99f, _6674.y);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _6693 = min(0.99f, _6680.y);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _6694 = min(0.99f, _6686.y);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _6695 = _6689 * _6689;
        _6696 = _6690 * _6690;
        _6697 = _6691 * _6691;
        _6698 = _6692 * _6692;
        _6699 = _6693 * _6693;
        _6700 = _6694 * _6694;
        _6701 = _6698 * _6692;
        _6702 = _6699 * _6693;
        _6703 = _6700 * _6694;
        _6704 = 1.0f - _6695;
        _6705 = 1.0f - _6696;
        _6706 = 1.0f - _6697;
        _6707 = _6704 * _6704;
        _6708 = _6705 * _6705;
        _6709 = _6706 * _6706;
        _6710 = _6707 * _6704;
        _6711 = _6708 * _6705;
        _6712 = _6709 * _6706;
        _6714 = min(max(_4746, 0.18f), 0.6f);
        _6715 = _6714 * _6714;
        _6716 = _6715 * 0.25f;
        _6717 = _6715 * 4.0f;
        _6719 = (_6690 + _6689) + _6691;
        _6720 = _6689 / _6719;
        _6721 = _6690 / _6719;
        _6722 = _6691 / _6719;
        _6723 = dot(float3(_6715, _6716, _6717), float3(_6720, _6721, _6722));
        _6724 = _6723 * _6723;
        _6734 = (asin(min(max(dot(float3(_2043, _2042, _2041), float3(_4940, _4939, _4938)), -1.0f), 1.0f)) + asin(min(max(dot(float3(_2043, _2042, _2041), float3(_2180, _2181, _2182)), -1.0f), 1.0f))) * 0.5f;
        _6735 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_6720, _6721, _6722));
        _6736 = _6735 * _6735;
        _6738 = (_6693 + _6692) + _6694;
        _6742 = dot(float3(_6715, _6716, _6717), float3((_6692 / _6738), (_6693 / _6738), (_6694 / _6738)));
        _6746 = sqrt((_6742 * _6742) + (_6724 * 2.0f));
        _6749 = (_6742 * 3.0f) + (_6723 * 2.0f);
        _6757 = (((_6701 + _6692) * ((_6695 * 0.7f) + 1.0f)) * _6746) / ((_6749 * _6701) + _6692);
        _6765 = (((_6702 + _6693) * ((_6696 * 0.7f) + 1.0f)) * _6746) / ((_6749 * _6702) + _6693);
        _6773 = (((_6703 + _6694) * ((_6697 * 0.7f) + 1.0f)) * _6746) / ((_6749 * _6703) + _6694);
        _6784 = _6734 - (((_6736 * (((_6695 * 4.0f) * _6698) + (_6707 * 2.0f))) * (1.0f - ((_6698 * 2.0f) / _6707))) / _6710);
        _6795 = _6734 - (((_6736 * (((_6696 * 4.0f) * _6699) + (_6708 * 2.0f))) * (1.0f - ((_6699 * 2.0f) / _6708))) / _6711);
        _6806 = _6734 - (((_6736 * (((_6697 * 4.0f) * _6700) + (_6709 * 2.0f))) * (1.0f - ((_6700 * 2.0f) / _6709))) / _6712);
        _6808 = (1.0f - _2045) * 2.1f;
        _6811 = (_2045 * 0.31830987f) * saturate(_4970);
        _6827 = _6659 * _4949;
        _6829 = (_6656 * _6827) * ((((((_6692 * _6695) / _6704) + ((_6701 * _6695) / _6710)) * _6808) * exp2((((_6784 * _6784) * -0.5f) / ((_6757 * _6757) + _6724)) * 1.442695f)) + _6445);
        _6845 = _6662 * _4955;
        _6847 = (_6845 * _6656) * ((((((_6693 * _6696) / _6705) + ((_6702 * _6696) / _6711)) * _6808) * exp2((((_6795 * _6795) * -0.5f) / ((_6765 * _6765) + _6724)) * 1.442695f)) + _6444);
        _6863 = _6665 * _4961;
        _6865 = (_6863 * _6656) * ((((((_6694 * _6697) / _6706) + ((_6703 * _6697) / _6712)) * _6808) * exp2((((_6806 * _6806) * -0.5f) / ((_6773 * _6773) + _6724)) * 1.442695f)) + _6443);
        _6867 = (_6442 * _4949) * _6659;
        _6869 = (_6441 * _4955) * _6662;
        _6871 = (_6440 * _4961) * _6665;
        _6872 = _6811 * _6827;
        _6873 = _6811 * _6845;
        _6874 = _6811 * _6863;
        if ((_4451 == 0.0h) && ((_123 < 1000.0f) && _4896)) {
          if (!(abs(_232) > 0.99f)) {
            _6883 = -0.0f - _233;
            _6885 = rsqrt(dot(float3(_6883, 0.0f, _231), float3(_6883, 0.0f, _231)));  // [sem: invLength]
            _6889 = (_6885 * _231);
            _6890 = (_6885 * _6883);
          } else {
            _6889 = 0.0f;
            _6890 = 1.0f;
          }
          _6892 = -0.0f - (_232 * _6889);
          _6895 = (_6889 * _231) - (_6890 * _233);
          _6896 = _6890 * _232;
          _6898 = rsqrt(dot(float3(_6892, _6895, _6896), float3(_6892, _6895, _6896)));  // [sem: invLength]
          // [sem: _3__36__0__0__g_blueNoise_sampleLod]
          _6906 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_6890, 0.0f, _6889), float3(_4540, _4542, _4547)), dot(float3((_6898 * _6892), (_6895 * _6898), (_6898 * _6896)), float3(_4540, _4542, _4547))), 0.0f);
          _6910 = _6906.x + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _6911 = _6906.y + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _6912 = _6906.z + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _6914 = rsqrt(dot(float3(_6910, _6911, _6912), float3(_6910, _6911, _6912)));  // [sem: invLength]
          _6916 = (_6910 * _6914) + _4826;
          _6918 = (_6911 * _6914) + _4827;
          _6920 = (_6912 * _6914) + _4828;
          _6922 = rsqrt(dot(float3(_6916, _6918, _6920), float3(_6916, _6918, _6920)));  // [sem: invLength]
          _6923 = _6916 * _6922;
          _6924 = _6918 * _6922;
          _6925 = _6920 * _6922;
          _6929 = abs(((_104 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
          _6933 = abs(1.0f - ((_105 * 2.0f) * _bufferSizeAndInvSize.w));
          _6935 = saturate(_6929 * _6929);  // [sem: expr_sat]
          _6937 = saturate(_6933 * _6933);  // [sem: expr_sat]
          _6941 = dot(float3((-0.0f - _6923), (-0.0f - _6924), (-0.0f - _6925)), float3(_4940, _4939, _4938));
          _6943 = saturate(dot(float3(_6923, _6924, _6925), float3(_2180, _2181, _2182)));  // [sem: expr_sat]
          _6945 = saturate(1.0f - _6447);  // [sem: expr_sat]
          _6946 = _6945 * _6945;
          _6948 = (_6946 * _6946) * _6945;
          _6951 = 1.0f - ((_6446 * _6446) * 0.9999f);
          _6992 = ((exp2(log2(saturate(dot(float3(_2180, _2181, _2182), float3(_6923, _6924, _6925)))) * 1024.0f) * 50.0f) + (saturate(_6941) * max((((0.5f / ((((_6943 * 0.9999f) + 0.0001f) * _6941) + (_6943 * ((_6941 * 0.9999f) + 0.0001f)))) * (3.1830987e-05f / (_6951 * _6951))) * (lerp(_6948, 1.0f, 0.08f))), 0.0f))) * (((1.0f - ((_6937 * _6937) * (3.0f - (_6937 * 2.0f)))) * (1.0f - ((_6935 * _6935) * (3.0f - (_6935 * 2.0f))))) * saturate(1.0f - (_123 * 0.001f)));
          _7445 = ((_6992 * _6863) + _6871);
          _7446 = ((_6992 * _6845) + _6869);
          _7447 = ((_6992 * _6827) + _6867);
          _7448 = _6865;
          _7449 = _6847;
          _7450 = _6829;
          _7451 = _6874;
          _7452 = _6873;
          _7453 = _6872;
        } else {
          _7445 = _6871;
          _7446 = _6869;
          _7447 = _6867;
          _7448 = _6865;
          _7449 = _6847;
          _7450 = _6829;
          _7451 = _6874;
          _7452 = _6873;
          _7453 = _6872;
        }
      } else {
        if (_4921 == 0) {
          _7311 = _6462 * _4949;
          _7312 = _6461 * _4955;
          _7313 = _6460 * _4961;
          _7314 = _4949 * _4463;
          _7316 = _4955 * _4464;
          _7318 = _4961 * _4465;
          if ((_4451 == 0.0h) && ((_123 < 1000.0f) && _4891)) {
            if (!(abs(_232) > 0.99f)) {
              _7328 = -0.0f - _233;
              _7330 = rsqrt(dot(float3(_7328, 0.0f, _231), float3(_7328, 0.0f, _231)));  // [sem: invLength]
              _7334 = (_7330 * _231);
              _7335 = (_7330 * _7328);
            } else {
              _7334 = 0.0f;
              _7335 = 1.0f;
            }
            _7337 = -0.0f - (_232 * _7334);
            _7340 = (_7334 * _231) - (_7335 * _233);
            _7341 = _7335 * _232;
            _7343 = rsqrt(dot(float3(_7337, _7340, _7341), float3(_7337, _7340, _7341)));  // [sem: invLength]
            // [sem: _3__36__0__0__g_blueNoise_sampleLod]
            _7351 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_7335, 0.0f, _7334), float3(_4540, _4542, _4547)), dot(float3((_7343 * _7337), (_7340 * _7343), (_7343 * _7341)), float3(_4540, _4542, _4547))), 0.0f);
            _7355 = _7351.x + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
            _7356 = _7351.y + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
            _7357 = _7351.z + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
            _7359 = rsqrt(dot(float3(_7355, _7356, _7357), float3(_7355, _7356, _7357)));  // [sem: invLength]
            _7361 = (_7355 * _7359) + _4826;
            _7363 = (_7356 * _7359) + _4827;
            _7365 = (_7357 * _7359) + _4828;
            _7367 = rsqrt(dot(float3(_7361, _7363, _7365), float3(_7361, _7363, _7365)));  // [sem: invLength]
            _7368 = _7361 * _7367;
            _7369 = _7363 * _7367;
            _7370 = _7365 * _7367;
            _7374 = abs(((_104 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
            _7378 = abs(1.0f - ((_105 * 2.0f) * _bufferSizeAndInvSize.w));
            _7380 = saturate(_7374 * _7374);  // [sem: expr_sat]
            _7382 = saturate(_7378 * _7378);  // [sem: expr_sat]
            _7386 = dot(float3((-0.0f - _7368), (-0.0f - _7369), (-0.0f - _7370)), float3(_4940, _4939, _4938));
            _7388 = saturate(dot(float3(_7368, _7369, _7370), float3(_2180, _2181, _2182)));  // [sem: expr_sat]
            _7390 = saturate(1.0f - _6447);  // [sem: expr_sat]
            _7391 = _7390 * _7390;
            _7393 = (_7391 * _7391) * _7390;
            _7396 = 1.0f - ((_6446 * _6446) * 0.9999f);
            _7437 = ((exp2(log2(saturate(dot(float3(_2180, _2181, _2182), float3(_7368, _7369, _7370)))) * 1024.0f) * 50.0f) + (saturate(_7386) * max((((0.5f / ((((_7388 * 0.9999f) + 0.0001f) * _7386) + (_7388 * ((_7386 * 0.9999f) + 0.0001f)))) * (3.1830987e-05f / (_7396 * _7396))) * (lerp(_7393, 1.0f, 0.08f))), 0.0f))) * (((1.0f - ((_7382 * _7382) * (3.0f - (_7382 * 2.0f)))) * (1.0f - ((_7380 * _7380) * (3.0f - (_7380 * 2.0f))))) * saturate(1.0f - (_123 * 0.001f)));
            _7445 = (_7318 * (_7437 + _6440));
            _7446 = (_7316 * (_7437 + _6441));
            _7447 = (_7314 * (_7437 + _6442));
            _7448 = _6443;
            _7449 = _6444;
            _7450 = _6445;
            _7451 = _7313;
            _7452 = _7312;
            _7453 = _7311;
          } else {
            _7445 = (_6440 * _7318);
            _7446 = (_6441 * _7316);
            _7447 = (_6442 * _7314);
            _7448 = _6443;
            _7449 = _6444;
            _7450 = _6445;
            _7451 = _7313;
            _7452 = _7312;
            _7453 = _7311;
          }
        } else {
          if (_4795 == 97) {
            _7004 = _4949 * _4463;
            _7006 = _4955 * _4464;
            _7008 = _4961 * _4465;
            _7010 = _6462 * _4949;
            _7011 = _6461 * _4955;
            _7012 = _6460 * _4961;
            if ((_123 < 1000.0f) && (_4451 == 0.0h)) {
              if (!(abs(_232) > 0.99f)) {
                _7020 = -0.0f - _233;
                _7022 = rsqrt(dot(float3(_7020, 0.0f, _231), float3(_7020, 0.0f, _231)));  // [sem: invLength]
                _7026 = (_7022 * _231);
                _7027 = (_7022 * _7020);
              } else {
                _7026 = 0.0f;
                _7027 = 1.0f;
              }
              _7029 = -0.0f - (_232 * _7026);
              _7032 = (_7026 * _231) - (_7027 * _233);
              _7033 = _7027 * _232;
              _7035 = rsqrt(dot(float3(_7029, _7032, _7033), float3(_7029, _7032, _7033)));  // [sem: invLength]
              // [sem: _3__36__0__0__g_blueNoise_sampleLod]
              _7043 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_7027, 0.0f, _7026), float3(_4540, _4542, _4547)), dot(float3((_7035 * _7029), (_7032 * _7035), (_7035 * _7033)), float3(_4540, _4542, _4547))), 0.0f);
              _7047 = _7043.x + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
              _7048 = _7043.y + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
              _7049 = _7043.z + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
              _7051 = rsqrt(dot(float3(_7047, _7048, _7049), float3(_7047, _7048, _7049)));  // [sem: invLength]
              _7053 = (_7047 * _7051) + _4826;
              _7055 = (_7048 * _7051) + _4827;
              _7057 = (_7049 * _7051) + _4828;
              _7059 = rsqrt(dot(float3(_7053, _7055, _7057), float3(_7053, _7055, _7057)));  // [sem: invLength]
              _7060 = _7053 * _7059;
              _7061 = _7055 * _7059;
              _7062 = _7057 * _7059;
              _7066 = abs(((_104 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
              _7070 = abs(1.0f - ((_105 * 2.0f) * _bufferSizeAndInvSize.w));
              _7072 = saturate(_7066 * _7066);  // [sem: expr_sat]
              _7074 = saturate(_7070 * _7070);  // [sem: expr_sat]
              _7078 = dot(float3((-0.0f - _7060), (-0.0f - _7061), (-0.0f - _7062)), float3(_4940, _4939, _4938));
              _7080 = saturate(dot(float3(_7060, _7061, _7062), float3(_2180, _2181, _2182)));  // [sem: expr_sat]
              _7082 = saturate(1.0f - _6447);  // [sem: expr_sat]
              _7083 = _7082 * _7082;
              _7085 = (_7083 * _7083) * _7082;
              _7088 = 1.0f - ((_6446 * _6446) * 0.9999f);
              _7129 = ((exp2(log2(saturate(dot(float3(_2180, _2181, _2182), float3(_7060, _7061, _7062)))) * 1024.0f) * 50.0f) + (saturate(_7078) * max((((0.5f / ((((_7080 * 0.9999f) + 0.0001f) * _7078) + (_7080 * ((_7078 * 0.9999f) + 0.0001f)))) * (3.1830987e-05f / (_7088 * _7088))) * (lerp(_7085, 1.0f, 0.08f))), 0.0f))) * (((1.0f - ((_7074 * _7074) * (3.0f - (_7074 * 2.0f)))) * (1.0f - ((_7072 * _7072) * (3.0f - (_7072 * 2.0f))))) * saturate(1.0f - (_123 * 0.001f)));
              _7445 = (_7008 * (_7129 + _6440));
              _7446 = (_7006 * (_7129 + _6441));
              _7447 = (_7004 * (_7129 + _6442));
              _7448 = _6443;
              _7449 = _6444;
              _7450 = _6445;
              _7451 = _7012;
              _7452 = _7011;
              _7453 = _7010;
            } else {
              _7445 = (_6440 * _7008);
              _7446 = (_6441 * _7006);
              _7447 = (_6442 * _7004);
              _7448 = _6443;
              _7449 = _6444;
              _7450 = _6445;
              _7451 = _7012;
              _7452 = _7011;
              _7453 = _7010;
            }
          } else {
            if ((uint)((int)(_4795) + (int)(-105)) < (uint)2) {
              _7445 = ((_4961 * _4465) * _6440);
              _7446 = ((_4955 * _4464) * _6441);
              _7447 = ((_4949 * _4463) * _6442);
              _7448 = _6443;
              _7449 = _6444;
              _7450 = _6445;
              _7451 = (_6460 * _4961);
              _7452 = (_6461 * _4955);
              _7453 = (_6462 * _4949);
            } else {
              if (!(_4926 >= 999.9f)) {
                _7158 = ((max(0.002f, _4926) * 0.4f) / ((_4796 * 100.0f) + 0.1f));
              } else {
                _7158 = 1000.0f;
              }
              _7159 = _7158 * _7158;
              _7173 = (((_4796 * 0.25f) * (0.022082746f / (_6464 * _6464))) * max(0.0f, (0.3f - _4970))) * ((exp2(_7159 * -0.48089835f) * 3.0f) + exp2(_7159 * -1.442695f));
              _7177 = (_7173 + _6462) * _4949;
              _7178 = (_7173 + _6461) * _4955;
              _7179 = (_7173 + _6460) * _4961;
              _7180 = _4949 * _4463;
              _7182 = _4955 * _4464;
              _7184 = _4961 * _4465;
              if ((_4451 == 0.0h) && ((_123 < 1000.0f) && _4891)) {
                if (!(abs(_232) > 0.99f)) {
                  _7194 = -0.0f - _233;
                  _7196 = rsqrt(dot(float3(_7194, 0.0f, _231), float3(_7194, 0.0f, _231)));  // [sem: invLength]
                  _7200 = (_7196 * _231);
                  _7201 = (_7196 * _7194);
                } else {
                  _7200 = 0.0f;
                  _7201 = 1.0f;
                }
                _7203 = -0.0f - (_232 * _7200);
                _7206 = (_7200 * _231) - (_7201 * _233);
                _7207 = _7201 * _232;
                _7209 = rsqrt(dot(float3(_7203, _7206, _7207), float3(_7203, _7206, _7207)));  // [sem: invLength]
                // [sem: _3__36__0__0__g_blueNoise_sampleLod]
                _7217 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_7201, 0.0f, _7200), float3(_4540, _4542, _4547)), dot(float3((_7209 * _7203), (_7206 * _7209), (_7209 * _7207)), float3(_4540, _4542, _4547))), 0.0f);
                _7221 = _7217.x + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
                _7222 = _7217.y + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
                _7223 = _7217.z + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
                _7225 = rsqrt(dot(float3(_7221, _7222, _7223), float3(_7221, _7222, _7223)));  // [sem: invLength]
                _7227 = (_7221 * _7225) + _4826;
                _7229 = (_7222 * _7225) + _4827;
                _7231 = (_7223 * _7225) + _4828;
                _7233 = rsqrt(dot(float3(_7227, _7229, _7231), float3(_7227, _7229, _7231)));  // [sem: invLength]
                _7234 = _7227 * _7233;
                _7235 = _7229 * _7233;
                _7236 = _7231 * _7233;
                _7240 = abs(((_104 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
                _7244 = abs(1.0f - ((_105 * 2.0f) * _bufferSizeAndInvSize.w));
                _7246 = saturate(_7240 * _7240);  // [sem: expr_sat]
                _7248 = saturate(_7244 * _7244);  // [sem: expr_sat]
                _7252 = dot(float3((-0.0f - _7234), (-0.0f - _7235), (-0.0f - _7236)), float3(_4940, _4939, _4938));
                _7254 = saturate(dot(float3(_7234, _7235, _7236), float3(_2180, _2181, _2182)));  // [sem: expr_sat]
                _7256 = saturate(1.0f - _6447);  // [sem: expr_sat]
                _7257 = _7256 * _7256;
                _7259 = (_7257 * _7257) * _7256;
                _7262 = 1.0f - ((_6446 * _6446) * 0.9999f);
                _7303 = ((exp2(log2(saturate(dot(float3(_2180, _2181, _2182), float3(_7234, _7235, _7236)))) * 1024.0f) * 50.0f) + (saturate(_7252) * max((((0.5f / ((((_7254 * 0.9999f) + 0.0001f) * _7252) + (_7254 * ((_7252 * 0.9999f) + 0.0001f)))) * (3.1830987e-05f / (_7262 * _7262))) * (lerp(_7259, 1.0f, 0.08f))), 0.0f))) * (((1.0f - ((_7248 * _7248) * (3.0f - (_7248 * 2.0f)))) * (1.0f - ((_7246 * _7246) * (3.0f - (_7246 * 2.0f))))) * saturate(1.0f - (_123 * 0.001f)));
                _7445 = (_7184 * (_7303 + _6440));
                _7446 = (_7182 * (_7303 + _6441));
                _7447 = (_7180 * (_7303 + _6442));
                _7448 = _6443;
                _7449 = _6444;
                _7450 = _6445;
                _7451 = _7179;
                _7452 = _7178;
                _7453 = _7177;
              } else {
                _7445 = (_6440 * _7184);
                _7446 = (_6441 * _7182);
                _7447 = (_6442 * _7180);
                _7448 = _6443;
                _7449 = _6444;
                _7450 = _6445;
                _7451 = _7179;
                _7452 = _7178;
                _7453 = _7177;
              }
            }
          }
        }
      }
    }
    _7454 = _7453 + _4450;
    _7455 = _7452 + _4449;
    _7456 = _7451 + _4448;
    _7459 = (uint)((uint)(_frameNumber.x)) * (uint)(13);
    [branch]
    if ((((int)((int)((uint)((uint)(_7459)) + (uint)((uint)(_98)))) | (int)((int)((uint)((uint)(_7459)) + (uint)((uint)(_103))))) & 31) == 0) {
      __3__38__0__1__g_sceneColorLightingOnlyForAwbUAV[int2(((int)(_98) >> 5), ((int)(_103) >> 5))] = float4((half)(half(_7454)), (half)(half(_7455)), (half)(half(_7456)), 1.0f);
    }
    _7474 = ((uint)(_4795 & 24) > (uint)23);
    if (_4865) {
      _7488 = saturate(exp2((_4860 * _4860) * (_123 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _7488 = select((_cavityParams.z > 0.0f), select(_185, 0.0f, _2173), 1.0f);  // [sem: expr_sat]
    }
    _7497 = select(_4862, 1.0f, (select((_cavityParams.x == 0.0f), 1.0f, _7488) * select((_184 && _7474), (1.0f - _2173), 1.0f)));
    _7504 = min(60000.0f, (_7497 * (((_4168 * _3838) * _4163) - min(0.0f, (-0.0f - _7447)))));
    _7511 = min(60000.0f, (_7497 * (((_4168 * _3853) * _4162) - min(0.0f, (-0.0f - _7446)))));
    _7518 = min(60000.0f, ((((_4168 * _3868) * _4161) - min(0.0f, (-0.0f - _7445))) * _7497));
    _7521 = 1.0f - _renderParams.x;
    _7524 = half((_renderParams.x * _4735) + _7521);
    _7527 = half((_renderParams.x * _4736) + _7521);
    _7530 = half((_renderParams.x * _4737) + _7521);
    if (_4862) {
      if (_renderParams2.x == 0.0f) {
        _7548 = (half)(exp2((half)((half)(log2(_7524)) * 0.5h)));
        _7549 = (half)(exp2((half)((half)(log2(_7527)) * 0.5h)));
        _7550 = (half)(exp2((half)((half)(log2(_7530)) * 0.5h)));
      } else {
        _7548 = _7524;
        _7549 = _7527;
        _7550 = _7530;
      }
      _7555 = _7548;
      _7556 = _7549;
      _7557 = _7550;
      _7558 = (half)(select(((_4795 & -5) == 33), 0.0f, _4451));
    } else {
      if (!(_4861 == 54)) {
        _7548 = _7524;
        _7549 = _7527;
        _7550 = _7530;
        _7555 = _7548;
        _7556 = _7549;
        _7557 = _7550;
        _7558 = (half)(select(((_4795 & -5) == 33), 0.0f, _4451));
      } else {
        _7555 = _7524;
        _7556 = _7527;
        _7557 = _7530;
        _7558 = 0.0h;
      }
    }
    _7559 = float(_7555);
    _7560 = float(_7556);
    _7561 = float(_7557);
    if (_4834) {
      _7568 = saturate(((_7560 + _7559) + _7561) * 1.2f);  // [sem: expr_sat]
    } else {
      _7568 = 1.0f;  // [sem: expr_sat]
    }
    _7569 = float(_7558);
    _7575 = (0.7f / min(max(max(max(_7559, _7560), _7561), 0.01f), 0.7f)) * _7568;
    _7578 = ((_7575 * _7559) + -0.04f) * _7569;
    _7581 = ((_7575 * _7560) + -0.04f) * _7569;
    _7584 = ((_7575 * _7561) + -0.04f) * _7569;
    _7585 = _7578 + 0.04f;
    _7586 = _7581 + 0.04f;
    _7587 = _7584 + 0.04f;
    if ((_4795 == 54) || ((_4795 == 33) || (_4979 || (_4980 || _4891)))) {
      // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
      _7601 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__3__40__0__0__g_samplerClamp, float2(min(0.99f, _2188), (1.0f - max(0.02f, float(_176)))), 0.0f);
      _7605 = _7601.y;
      _7606 = _7601.x;
    } else {
      _7605 = _4164;
      _7606 = _4165;
    }
    _7608 = (_7606 * _7585) + _7605;
    _7610 = (_7606 * _7586) + _7605;
    _7612 = (_7606 * _7587) + _7605;
    _7614 = (1.0f - _7606) - _7605;
    _7617 = ((0.96f - _7578) * 0.04761905f) + _7585;
    _7620 = ((0.96f - _7581) * 0.04761905f) + _7586;
    _7623 = ((0.96f - _7584) * 0.04761905f) + _7587;
    _7630 = _7614 * saturate(1.0f - _4456);
    _7631 = _7630 * ((_7608 * _7617) / (1.0f - (_7614 * _7617)));
    _7636 = _7630 * ((_7610 * _7620) / (1.0f - (_7614 * _7620)));
    _7641 = ((_7612 * _7623) / (1.0f - (_7614 * _7623))) * _7630;
    _7643 = float(1.0h - _7558);
    _7650 = half(((_7643 * _7559) * saturate((1.0f - _7608) - _7631)) + _7631);
    _7657 = half(((_7643 * _7560) * saturate((1.0f - _7610) - _7636)) + _7636);
    _7664 = half(((_7643 * _7561) * saturate((1.0f - _7612) - _7641)) + _7641);
    _7665 = float(_7650);
    _7666 = float(_7657);
    _7667 = float(_7664);
    if (_4795 == 65) {
      _7672 = max(1e-06f, _exposure2.x);
      _7680 = ((pow(_4973, 16.0f)) * 50.265484f) / (((_7672 * _7672) * 1e+06f) + 1.0f);
      _7697 = (((((_7667 * _7456) * _7680) - _7456) * _2136) + _7456);
      _7698 = (((((_7666 * _7455) * _7680) - _7455) * _2136) + _7455);
      _7699 = (((((_7665 * _7454) * _7680) - _7454) * _2136) + _7454);
    } else {
      _7697 = _7456;
      _7698 = _7455;
      _7699 = _7454;
    }
    _7703 = (min(65535.0f, _7450) + _4447) + (_7699 * _7665);
    _7707 = ((_7698 * _7666) + _4446) + min(65535.0f, _7449);
    _7711 = ((_7697 * _7667) + _4445) + min(65535.0f, _7448);
    _7716 = exp2((saturate(_1017) * 20.0f) + -8.0f) + -0.00390625f;
    _7725 = select((_1020 < 0.04045f), (_1020 * 0.07739938f), exp2(log2((_1020 + 0.055f) * 0.94786733f) * 2.4f)) * _7716;
    _7734 = select((_1019 < 0.04045f), (_1019 * 0.07739938f), exp2(log2((_1019 + 0.055f) * 0.94786733f) * 2.4f)) * _7716;
    _7743 = select((_1018 < 0.04045f), (_1018 * 0.07739938f), exp2(log2((_1018 + 0.055f) * 0.94786733f) * 2.4f)) * _7716;
    _7748 = ((_7734 * 0.33951f) + (_7725 * 0.61312f)) + (_7743 * 0.04737f);
    _7753 = ((_7734 * 0.91636f) + (_7725 * 0.0702f)) + (_7743 * 0.01345f);
    _7758 = ((_7734 * 0.10958f) + (_7725 * 0.02062f)) + (_7743 * 0.8698f);
    if (_951) {
      _7764 = (_7758 + _7711);
      _7765 = (_7753 + _7707);
      _7766 = (_7748 + _7703);
    } else {
      _7764 = _7711;
      _7765 = _7707;
      _7766 = _7703;
    }
    _7768 = _7766 + (_7569 * _7504);
    _7770 = _7765 + (_7569 * _7511);
    _7772 = _7764 + (_7569 * _7518);
    if (!(((_131 || _133) || _135) || _137)) {
      _7777 = QuadReadLaneAt(_7768, 0);
      _7778 = QuadReadLaneAt(_7770, 0);
      _7779 = QuadReadLaneAt(_7772, 0);
      _7780 = QuadReadLaneAt(_7768, 1);
      _7781 = QuadReadLaneAt(_7770, 1);
      _7782 = QuadReadLaneAt(_7772, 1);
      _7783 = QuadReadLaneAt(_7768, 2);
      _7784 = QuadReadLaneAt(_7770, 2);
      _7785 = QuadReadLaneAt(_7772, 2);
      _7786 = QuadReadLaneAt(_7768, 3);
      _7787 = QuadReadLaneAt(_7770, 3);
      _7788 = QuadReadLaneAt(_7772, 3);
      _7802 = ((((_7782 + _7779) + _7785) + _7788) * 0.25f);
      _7803 = ((((_7781 + _7778) + _7784) + _7787) * 0.25f);
      _7804 = ((((_7780 + _7777) + _7783) + _7786) * 0.25f);
    } else {
      _7802 = _7772;
      _7803 = _7770;
      _7804 = _7768;
    }
    [branch]
    if ((((int)(_103) | (int)(_98)) & 1) == 0) {
      _7809 = dot(float3(_7804, _7803, _7802), float3(0.212671f, 0.71516f, 0.072169f));
      __3__38__0__1__g_diffuseHalfPrevUAV[int2(((int)(_98) >> 1), ((int)(_103) >> 1))] = float4(min(60000.0f, _7804), min(60000.0f, _7803), min(60000.0f, _7802), min(60000.0f, select((_2812 != 0), (-0.0f - _7809), _7809)));
    }
    if (_7474) {
      if (_7558 == 0.0h) {
        _7830 = (((_7650 == 0.0h) || (_7657 == 0.0h)) || (_7664 == 0.0h));
      } else {
        _7830 = false;
      }
      _7842 = ((int)(uint)(_7830));
      __3__38__0__1__g_sceneSpecularUAV[int2(_98, _103)] = float4(((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _7504)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _7511)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _7518)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _3880)))))));
      _7865 = _7842;
      _7866 = _7764;
      _7867 = _7765;
      _7868 = _7766;
    } else {
      if ((((_4795 == 96) || _4980) || ((_4795 & -4) == 64)) || ((_123 <= 10.0f) && _4891)) {
        _7842 = 0;
        __3__38__0__1__g_sceneSpecularUAV[int2(_98, _103)] = float4(((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _7504)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _7511)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _7518)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _3880)))))));
        _7865 = _7842;
        _7866 = _7764;
        _7867 = _7765;
        _7868 = _7766;
      } else {
        _7865 = 0;
        _7866 = (_7764 + _7518);
        _7867 = (_7765 + _7511);
        _7868 = (_7766 + _7504);
      }
    }
    if (_951 && ((uint)((int)(_4795) + (int)(-52)) > (uint)15)) {
      _7873 = dot(float3(_7748, _7753, _7758), float3(0.212671f, 0.71516f, 0.072169f));
      _7877 = max((max(_7873, 1.0f) / max(_7873, 0.1f)), 0.0f);
      _7888 = ((_7866 - _7758) + (_7877 * _7758));
      _7889 = ((_7867 - _7753) + (_7877 * _7753));
      _7890 = ((_7868 - _7748) + (_7877 * _7748));
    } else {
      _7888 = _7866;
      _7889 = _7867;
      _7890 = _7868;
    }
    _7891 = min(60000.0f, _7890);
    _7892 = min(60000.0f, _7889);
    _7893 = min(60000.0f, _7888);
    if (!_128) {
      [branch]
      if (!(_7865 == 0)) {
        _7899 = __3__38__0__1__g_sceneColorUAV[int2(_98, _103)].x;
        _7900 = __3__38__0__1__g_sceneColorUAV[int2(_98, _103)].y;
        _7901 = __3__38__0__1__g_sceneColorUAV[int2(_98, _103)].z;
        _7906 = (_7901 + _7893);
        _7907 = (_7900 + _7892);
        _7908 = (_7899 + _7891);
      } else {
        _7906 = _7893;
        _7907 = _7892;
        _7908 = _7891;
      }
      if (!(_renderParams.y == 0.0f)) {
        _7913 = dot(float3(_7908, _7907, _7906), float3(0.212671f, 0.71516f, 0.072169f));
        _7918 = min((max(0.01f, _exposure3.w) * 4096.0f), _7913);
        _7919 = max(1e-09f, _7913);
        _7927 = ((_7918 * _7906) / _7919);
        _7928 = ((_7918 * _7907) / _7919);
        _7929 = ((_7918 * _7908) / _7919);
      } else {
        _7927 = _7906;
        _7928 = _7907;
        _7929 = _7908;
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
        half4 _rndx_shadow = __3__36__0__0__g_sceneShadowColor.Load(int3(_98, _103, 0));
        float _rndx_directRatio = saturate(dot(float3(_rndx_shadow.xyz), float3(0.333f, 0.333f, 0.333f)));
        float _rndx_ao = lerp(1.0f, saturate(_2111), _rndx_directRatio * FOLIAGE_AO_STRENGTH);
        _7929 *= _rndx_ao;
        _7928 *= _rndx_ao;
        _7927 *= _rndx_ao;
      }
      // RenoDX: <<< [Patch: FoliageFinalAO]
      __3__38__0__1__g_sceneColorUAV[int2(_98, _103)] = float4(_7929, _7928, _7927, 1.0f);
    }
  }
}
