// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports the exact shared option and helper declarations consumed by this shader's annotated RenoDX patches. This dependency-only prefix replaces no native executable statement; removing the block restores successor A byte-for-byte.
#include "../shared.h"
#include "foliage_common.hlsli"
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
struct anon {
  uint4 g_tileIndex[4096];
};


Texture2D<float4> __3__36__0__0__g_puddleMask : register(t139, space36);

Texture2D<float4> __3__36__0__0__g_climateSandTex : register(t140, space36);

Texture2D<uint16_t> __3__36__0__0__g_sceneDecalMask : register(t141, space36);

Texture2D<float2> __3__36__0__0__g_texNetDensity : register(t106, space36);

Texture3D<float> __3__36__0__0__g_texCloudVolumeShadow : register(t199, space36);

Texture2D<float4> __3__36__0__0__g_specularResult : register(t154, space36);

Texture2D<float2> __3__36__0__0__g_iblBrdfLookup : register(t156, space36);

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
  int4 _66;
  int _78;
  int _82;
  uint _89;
  uint _94;
  float _96;
  float _98;
  float _101;
  float _103;
  float _105;
  uint2 _108;
  int _110;
  float _111;
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
  int _436;
  float _485;
  float _486;
  int _487;
  int _488;
  int _564;
  float _787;
  float _788;
  bool _859;
  half _987;
  float _1040;
  float _1055;
  float _1056;
  half _1064;
  half _1065;
  half _1066;
  half _1067;
  half _1068;
  float _1069;
  float _1070;
  int _1103;
  float _1112;
  float _1155;
  float _1156;
  float _1262;
  float _1314;
  bool _1435;
  float _1440;
  float _1446;
  bool _1463;
  float _1468;
  float _1469;
  float _1475;
  float _1476;
  bool _1493;
  float _1498;
  float _1499;
  float _1500;
  float _1506;
  float _1507;
  float _1508;
  bool _1524;
  float _1527;
  float _1528;
  float _1529;
  bool _1530;
  float _1534;
  float _1535;
  float _1536;
  float _1537;
  int _1700;
  float _1701;
  float _1758;
  float _1769;
  float _1800;
  float _1883;
  float _1884;
  float _1885;
  float _1886;
  float _1891;
  float _1916;
  float _1951;
  half _1969;
  float _2106;
  bool _2126;
  float _2168;
  float _2189;
  half _2212;
  float _2318;
  float _2365;
  float _2374;
  float _2470;
  float _2471;
  float _2472;
  float _2473;
  int _2474;
  int _2475;
  float _2476;
  float _2620;
  float _2621;
  float _2622;
  float _2623;
  float _2713;
  float _2723;
  float _2724;
  float _2725;
  int _2776;
  int _2777;
  float _2818;
  float _2819;
  float _2820;
  float _2821;
  float _2893;
  float _2894;
  float _2895;
  float _2896;
  float _2926;
  float _2927;
  float _2928;
  float _2945;
  float _2946;
  float _2947;
  float _2948;
  float _2978;
  float _2979;
  float _2980;
  float _2981;
  float _2982;
  float _2989;
  half _2990;
  half _2991;
  half _2992;
  half _2993;
  half _2994;
  half _3033;
  half _3034;
  half _3035;
  float _3054;
  float _3055;
  float _3056;
  float _3071;
  float _3072;
  float _3073;
  float _3074;
  float _3132;
  float _3221;
  float _3222;
  float _3223;
  int _3285;
  float _3308;
  float _3309;
  float _3310;
  int _3311;
  int _3312;
  int _3313;
  int _3314;
  float _3358;
  float _3359;
  float _3360;
  int _3462;
  int _3465;
  float _3485;
  float _3486;
  float _3487;
  bool _3488;
  float _3489;
  float _3490;
  float _3525;
  float _3532;
  float _3533;
  float _3534;
  float _3584;
  float _3585;
  float _3586;
  float _3596;
  float _3640;
  half _3707;
  half _3708;
  half _3709;
  float _3719;
  float _3838;
  float _3839;
  float _3840;
  bool _3866;
  int _3881;
  int _3904;
  float _3905;
  float _3906;
  float _3907;
  float _3923;
  float _3924;
  float _3925;
  float _3944;
  float _3945;
  float _3946;
  uint4 _134;
  float4 _140;
  half _149;
  half _153;
  half _158;
  half _163;
  uint _166;
  bool _167;
  bool _168;
  float _172;
  float _176;
  float _180;
  float _182;
  half _184;
  half _186;
  half _193;
  half _199;
  float _202;
  float _205;
  float _209;
  float _211;
  float _214;
  float _215;
  float _216;
  float _218;
  float _221;
  float _222;
  float _223;
  float _224;
  float _227;
  float _230;
  float _233;
  half _240;
  half _247;
  half _253;
  half _255;
  half _256;
  half _257;
  half _258;
  half _260;
  half _262;
  half _264;
  half _270;
  half _276;
  half _282;
  bool _283;
  bool _284;
  bool _285;
  uint _303;
  uint _311;
  uint _319;
  uint _327;
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
  int _456;
  int _466;
  int4 _491;
  int _496;
  int _497;
  int _498;
  int _499;
  float _505;
  float _516;
  float _525;
  float _534;
  float _543;
  float _544;
  float _545;
  float _546;
  float _547;
  int _548;
  int _549;
  int _550;
  int _551;
  bool _552;
  float _565;
  float _567;
  bool _568;
  float _574;
  int _575;
  bool _576;
  bool _577;
  bool _578;
  int4 _579;
  float _588;
  float _594;
  float _600;
  float _602;
  float _603;
  float _604;
  float _605;
  float _610;
  float _616;
  float _622;
  float _624;
  float _629;
  float _635;
  float _641;
  float _643;
  float _648;
  float _654;
  float _660;
  float _662;
  float _663;
  float _671;
  float _679;
  float _687;
  float _695;
  float _700;
  float _714;
  float _728;
  float _742;
  float _756;
  float _789;
  float _790;
  float _791;
  float _792;
  float _793;
  float _794;
  float _795;
  float _796;
  bool _805;
  float _808;
  float _811;
  float _814;
  float _817;
  float _818;
  float _819;
  float _821;
  float _823;
  float _825;
  float _827;
  float _860;
  float _863;
  float _866;
  float _869;
  float _872;
  half4 _874;
  uint _878;
  half4 _879;
  uint _883;
  half4 _884;
  half4 _888;
  float4 _893;
  float4 _897;
  float4 _901;
  float4 _905;
  float _922;
  float _936;
  float _950;
  half2 _952;
  half2 _955;
  half2 _958;
  half2 _961;
  float _989;
  float _991;
  float _1003;
  float _1012;
  float _1021;
  float _1030;
  float _1032;
  bool _1034;
  uint _1046;
  half _1057;
  bool _1058;
  float _1071;
  float _1072;
  float _1073;
  float _1074;
  float _1075;
  float _1076;
  float _1078;
  int _1079;
  bool _1080;
  float _1124;
  float2 _1128;
  float _1158;
  float _1160;
  float _1162;
  float _1170;
  float _1174;
  float _1177;
  int _1179;
  int _1181;
  float _1182;
  float _1183;
  float _1186;
  float _1189;
  int4 _1191;
  int _1202;
  float _1265;
  float _1268;
  float _1270;
  float _1273;
  float _1277;
  float _1280;
  float _1283;
  float _1286;
  bool _1289;
  float _1290;
  float _1293;
  bool _1295;
  float _1319;
  float _1330;
  float _1341;
  float _1352;
  float _1363;
  float _1364;
  float _1365;
  float _1366;
  float _1367;
  float _1372;
  float _1376;
  float _1380;
  float _1384;
  float _1388;
  int _1390;
  int _1391;
  int _1392;
  int _1393;
  bool _1395;
  bool _1399;
  bool _1403;
  bool _1407;
  bool _1409;
  bool _1410;
  bool _1412;
  float _1438;
  float _1466;
  float _1496;
  int4 _1539;
  float _1548;
  float _1554;
  float _1560;
  float _1562;
  float _1567;
  float _1572;
  float _1578;
  float _1584;
  float _1586;
  float _1591;
  float _1596;
  float _1602;
  float _1608;
  float _1610;
  float _1615;
  float _1620;
  float _1626;
  float _1632;
  float _1634;
  float _1639;
  float _1642;
  float _1643;
  float _1644;
  float _1645;
  float _1646;
  float _1648;
  float _1650;
  float _1652;
  float _1654;
  float _1660;
  float _1666;
  float _1672;
  float _1678;
  int _1681;
  int _1682;
  int _1690;
  int _1691;
  float _1711;
  uint _1712;
  half4 _1714;
  uint _1719;
  half4 _1720;
  half4 _1725;
  half4 _1730;
  float _1735;
  float _1744;
  float _1749;
  float _1762;
  float _1765;
  float _1770;
  float _1772;
  float4 _1775;
  float _1780;
  float _1782;
  float _1783;
  float _1784;
  float _1785;
  float _1786;
  float _1803;
  float _1818;
  float _1823;
  float _1841;
  float _1859;
  float _1862;
  float _1869;
  float _1894;
  float _1897;
  float _1900;
  float _1906;
  float _1907;
  float _1908;
  float _1917;
  float _1923;
  float _1927;
  float _1931;
  float _1935;
  float _1971;
  float _1973;
  float _1975;
  float _1977;
  float _1982;
  float _1985;
  float _1995;
  float _1996;
  float _2009;
  float _2010;
  float _2011;
  float _2012;
  float _2017;
  float _2020;
  float _2023;
  float _2026;
  float _2038;
  float _2046;
  float _2054;
  float _2062;
  float _2074;
  float _2086;
  float _2098;
  float _2127;
  float _2128;
  float _2133;
  float _2159;
  float _2170;
  float _2176;
  bool _2177;
  float _2196;
  half _2198;
  float _2213;
  float _2214;
  float _2215;
  float _2219;
  float _2223;
  float _2227;
  float _2231;
  float _2251;
  float _2258;
  float _2265;
  float _2272;
  float _2279;
  float _2289;
  float _2292;
  float _2308;
  float _2330;
  float _2340;
  float _2350;
  float _2351;
  float _2352;
  float _2383;
  float _2390;
  float _2395;
  int _2397;
  int _2399;
  float _2400;
  float _2401;
  int4 _2411;
  int _2418;
  float _2423;
  float _2428;
  float _2433;
  float _2438;
  float _2453;
  float _2454;
  float _2455;
  float _2456;
  bool _2477;
  uint _2478;
  half4 _2480;
  float _2489;
  uint _2490;
  half4 _2491;
  float _2500;
  half4 _2501;
  float _2510;
  half4 _2511;
  float _2520;
  float _2527;
  float _2541;
  float _2542;
  float _2556;
  float _2570;
  float _2588;
  float _2592;
  float _2599;
  float _2626;
  float _2627;
  float _2628;
  float _2632;
  float _2647;
  float _2662;
  float _2677;
  float _2689;
  float _2694;
  bool _2695;
  int _2697;
  bool _2716;
  float _2717;
  float2 _2730;
  float _2735;
  float _2753;
  float4 _2755;
  bool _2785;
  float4 _2812;
  float _2831;
  float _2834;
  float _2839;
  float _2844;
  float _2849;
  float _2855;
  float _2861;
  float _2869;
  float _2889;
  float _2900;
  bool _2903;
  float _2905;
  float _2929;
  float _2930;
  float _2931;
  float _2949;
  float _2950;
  float _2951;
  float _2954;
  float _2957;
  float _2965;
  float _2966;
  half4 _2996;
  float _3000;
  float _3001;
  float _3002;
  uint _3005;
  float _3011;
  float _3017;
  float _3023;
  float _3025;
  bool _3038;
  bool _3045;
  float _3050;
  float _3051;
  float _3052;
  float _3077;
  float _3082;
  float _3084;
  float _3090;
  float _3094;
  float _3101;
  float _3102;
  float _3109;
  float2 _3143;
  float _3152;
  float _3166;
  float _3176;
  float _3185;
  float _3186;
  float _3194;
  float _3206;
  float _3209;
  float _3215;
  float _3226;
  float _3245;
  float _3252;
  float _3258;
  float _3264;
  float _3270;
  int _3293;
  int _3294;
  float _3295;
  float _3296;
  float _3297;
  float _3316;
  float _3317;
  float _3318;
  float _3319;
  float _3334;
  float _3336;
  float _3339;
  float _3341;
  float _3343;
  float _3344;
  float _3345;
  float _3346;
  float _3363;
  float _3369;
  float _3375;
  float _3381;
  float _3382;
  float _3383;
  float _3384;
  float _3386;
  float _3387;
  float _3388;
  float _3389;
  float _3390;
  float _3391;
  float _3393;
  float _3395;
  float _3397;
  float _3399;
  float _3400;
  float _3401;
  float _3402;
  float _3403;
  float _3404;
  float _3405;
  float _3408;
  float _3409;
  float _3410;
  float _3411;
  float _3412;
  float _3444;
  int _3445;
  float _3470;
  float _3472;
  float _3473;
  float _3474;
  float _3496;
  float _3500;
  float _3504;
  float _3508;
  float _3509;
  bool _3510;
  bool _3513;
  float _3526;
  float _3538;
  float _3539;
  float _3541;
  float _3544;
  float _3545;
  float _3547;
  float _3548;
  float _3552;
  float _3564;
  float _3600;
  float _3604;
  float _3608;
  uint _3611;
  bool _3626;
  float _3649;
  float _3659;
  float _3669;
  float _3679;
  float _3682;
  half _3685;
  half _3688;
  half _3691;
  float _3710;
  float _3711;
  float _3712;
  float _3720;
  float _3726;
  float _3729;
  float _3732;
  float _3735;
  float _3736;
  float _3737;
  float _3738;
  float _3740;
  float _3742;
  float _3744;
  float _3746;
  float _3749;
  float _3752;
  float _3755;
  float _3762;
  float _3763;
  float _3768;
  float _3773;
  float _3775;
  half _3782;
  half _3789;
  half _3796;
  float _3798;
  float _3800;
  float _3802;
  float _3804;
  float _3806;
  float _3808;
  float _3813;
  float _3814;
  float _3815;
  float _3816;
  float _3817;
  float _3818;
  float _3819;
  float _3820;
  float _3821;
  float _3822;
  float _3823;
  float _3824;
  float _3845;
  float _3908;
  float _3909;
  float _3910;
  float _3916;
  float _3917;
  float _3918;
  float _3930;
  float _3935;
  float _3936;
  int _61[4];
  _63 = (int)(SV_GroupID.x) & 15;
  _64 = (uint)((uint)(_63)) >> 2;
  _66 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 7))]);
  _61[0] = _66.x;
  _61[1] = _66.y;
  _61[2] = _66.z;
  _61[3] = _66.w;
  _78 = _61[(((uint)(SV_GroupID.x) >> 5) & 3)];
  _82 = select((((int)(SV_GroupID.x) & 16) == 0), _78, ((uint)((uint)(_78)) >> 16));
  _89 = (uint)((uint)((uint)((int)((int)(_63) - (int)((int)(_64) << 2)) << 3)) + (uint)(SV_GroupThreadID.x)) + (uint)((uint)(((int)((uint)((uint)(_82)) << 5)) & 8160));
  _94 = (uint)((uint)((uint)((int)(_64) << 3)) + (uint)(SV_GroupThreadID.y)) + (uint)((uint)(((uint)((uint)(_82)) >> 3) & 8160));
  _96 = ((float)((uint)((uint)(_89)))) + 0.5f;
  _98 = ((float)((uint)((uint)(_94)))) + 0.5f;
  _101 = _96 * _bufferSizeAndInvSize.z;
  _103 = _98 * _bufferSizeAndInvSize.w;
  _105 = __3__36__0__0__g_depth.Load(int3(_89, _94, 0));  // [sem: _3__36__0__0__g_depth_load]
  _108 = __3__36__0__0__g_stencil.Load(int3(_89, _94, 0));  // [sem: _3__36__0__0__g_stencil_load]
  _110 = _108.x & 127;  // [sem: _3__36__0__0__g_stencil_load_derived]
  _111 = max(1e-07f, _105.x);  // [sem: _3__36__0__0__g_depth_load_derived]
  _114 = _nearFarProj.x / _111;
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
    _134 = __3__36__0__0__g_baseColor.Load(int3(_89, _94, 0));  // [sem: _3__36__0__0__g_baseColor_load]
    _140 = __3__36__0__0__g_normal.Load(int3(_89, _94, 0));  // [sem: _3__36__0__0__g_normal_load]
    _149 = half(((float)((uint)((uint)(((uint)((uint)(_134.x)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _153 = half(((float)((uint)((uint)(_134.x & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _158 = half(((float)((uint)((uint)(((uint)((uint)(_134.y)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _163 = half(((float)((uint)((uint)(((uint)((uint)(_134.z)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _166 = (uint)((_140.w * 3.0f) + 0.5f);  // [sem: _3__36__0__0__g_normal_load_derived]
    _167 = (_166 == 1);
    _168 = (_166 == 3);
    _172 = (saturate(_140.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _176 = (saturate(_140.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _180 = (saturate(_140.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _182 = rsqrt(dot(float3(_172, _176, _180), float3(_172, _176, _180)));  // [sem: invLength]
    _184 = half(_182 * _176);
    _186 = half(_180 * _182);
    // [sem: _3__36__0__0__g_baseColor_load_derived]
    _193 = ((half)((half)(half(((float)((uint)((uint)(((uint)((uint)(_134.w)) >> 8) & 255)))) * 0.003921569f)) * 2.0h)) + -1.0h;
    _199 = ((half)((half)(half(((float)((uint)((uint)(_134.w & 255)))) * 0.003921569f)) * 2.0h)) + -1.0h;  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _202 = float(_193 + _199) * 0.5f;
    _205 = float(_193 - _199) * 0.5f;
    _209 = (1.0f - abs(_202)) - abs(_205);
    _211 = rsqrt(dot(float3(_202, _205, _209), float3(_202, _205, _209)));  // [sem: invLength]
    _214 = float(half(_182 * _172));
    _215 = float(_184);
    _216 = float(_186);
    _218 = select((_186 >= 0.0h), 1.0f, -1.0f);
    _221 = -0.0f - (1.0f / (_218 + _216));
    _222 = _215 * _221;
    _223 = _222 * _214;
    _224 = _218 * _214;
    _227 = float(half(_211 * _202));
    _230 = float(half(_211 * _205));
    _233 = float(half(_211 * _209));
    _240 = half(mad(_233, _214, mad(_230, _223, ((((_224 * _214) * _221) + 1.0f) * _227))));
    _247 = half(mad(_233, _215, mad(_230, ((_222 * _215) + _218), ((_227 * _218) * _223))));
    _253 = half(mad(_233, _216, mad(_230, (-0.0f - _215), (-0.0f - (_224 * _227)))));
    _255 = rsqrt((half)(dot(half3(_240, _247, _253), half3(_240, _247, _253))));  // [sem: invLength]
    _256 = _255 * _240;
    _257 = _255 * _247;
    _258 = _255 * _253;
    _260 = saturate((half)(_149 * _149));  // [sem: expr_sat]
    _262 = saturate((half)(_153 * _153));  // [sem: expr_sat]
    _264 = saturate((half)(_158 * _158));  // [sem: expr_sat]
    // [sem: expr_sat]
    _270 = saturate((half)(((half)(((half)(_262 * 0.3395996h)) + ((half)(_260 * 0.61328125h)))) + ((half)(_264 * 0.04736328h))));
    // [sem: expr_sat]
    _276 = saturate((half)(((half)(((half)(_262 * 0.9165039h)) + ((half)(_260 * 0.07019043h)))) + ((half)(_264 * 0.013450623h))));
    // [sem: expr_sat]
    _282 = saturate((half)(((half)(((half)(_262 * 0.109558105h)) + ((half)(_260 * 0.020614624h)))) + ((half)(_264 * 0.8696289h))));
    _283 = (_110 == 24);
    _284 = (_110 == 29);
    _285 = _283 || _284;
    if (_284) {
      _303 = (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524)))) + (uint)((uint)((_bufferSizeAndInvSize.x * ((float)((int)(_94)))) + ((float)((int)(_89)))));
      _311 = (uint)((uint)((((int)((uint)((uint)((uint)(_303)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_303)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_303)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
      _319 = (uint)((uint)((((int)((uint)((uint)((uint)(_311)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_311)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_311)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_303));
      _327 = (uint)((uint)((((int)((uint)((uint)((uint)(_319)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_319)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_319)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_311));
      _335 = (uint)((uint)((((int)((uint)((uint)((uint)(_327)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_327)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_327)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_319));
      _343 = (uint)((uint)((((int)((uint)((uint)((uint)(_335)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_335)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_335)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_327));
      _351 = (uint)((uint)((((int)((uint)((uint)((uint)(_343)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_343)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_343)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_335));
      _359 = (uint)((uint)((((int)((uint)((uint)((uint)(_351)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_351)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_351)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_343));
      _367 = (uint)((uint)((((int)((uint)((uint)((uint)(_359)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_359)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_359)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_351));
      _375 = (uint)((uint)((((int)((uint)((uint)((uint)(_367)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_367)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_367)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_359));
      _383 = (uint)((uint)((((int)((uint)((uint)((uint)(_375)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_375)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_375)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_367));
      _391 = (uint)((uint)((((int)((uint)((uint)((uint)(_383)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_383)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_383)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_375));
      _399 = (uint)((uint)((((int)((uint)((uint)((uint)(_391)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_391)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_391)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_383));
      _407 = (uint)((uint)((((int)((uint)((uint)((uint)(_399)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_399)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_399)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_391));
      _415 = (uint)((uint)((((int)((uint)((uint)((uint)(_407)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_407)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_407)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_399));
      _423 = (uint)((uint)((((int)((uint)((uint)((uint)(_415)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_415)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_415)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_407));
      if ((_415 & 16777215) == 0) {
        _436 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_423)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_423)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_423)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_415))));
      } else {
        _436 = _415;
      }
      _456 = (int)(min(max(((((saturate(1.0f - (_114 * 0.015625f)) * 4.0f) * ((((float)((uint)((uint)(((int)((uint)((uint)(_436)) * (uint)(48271))) & 16777215)))) * 1.1920929e-07f) + -1.0f)) + ((float)((int)((int)((uint)((uint)(max((int)(1), (int)(_89)))) + (uint)(-1)))))) * 0.5f), 0.0f), ((_bufferSizeAndInvSize.x * 0.5f) + -2.0f)));
      _466 = (int)(min(max((((float)((int)((int)((uint)((uint)(max((int)(1), (int)(_94)))) + (uint)(-1))))) * 0.5f), 0.0f), ((_bufferSizeAndInvSize.y * 0.5f) + -2.0f)));
      _485 = ((_bufferSizeAndInvSize.w * 2.0f) * (((float)((int)(_466))) + 0.5f));
      _486 = ((_bufferSizeAndInvSize.z * 2.0f) * (((float)((int)(_456))) + 0.5f));
      _487 = _466;
      _488 = _456;
    } else {
      _485 = _103;
      _486 = _101;
      _487 = ((int)((int)((uint)((uint)(max((int)(1), (int)(_94)))) + (uint)(-1))) >> 1);
      _488 = ((int)((int)((uint)((uint)(max((int)(1), (int)(_89)))) + (uint)(-1))) >> 1);
    }
    _491 = __3__36__0__0__g_normalDepthHalf.GatherGreen(__3__40__0__0__g_samplerPoint, float2(_486, _485));  // [sem: _3__36__0__0__g_normalDepthHalf_gather]
    _496 = (uint)((uint)(_491.w)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _497 = (uint)((uint)(_491.z)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _498 = (uint)((uint)(_491.x)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _499 = (uint)((uint)(_491.y)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _505 = (max(0.0f, (_114 + -1.0f)) * 0.05f) * _temporalReprojectionParams.y;
    _516 = max(0.0f, (abs(_114 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_491.w & 16777215)))) * 5.960465e-08f)))) - _505));
    _525 = max(0.0f, (abs(_114 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_491.z & 16777215)))) * 5.960465e-08f)))) - _505));
    _534 = max(0.0f, (abs(_114 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_491.x & 16777215)))) * 5.960465e-08f)))) - _505));
    _543 = max(0.0f, (abs(_114 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_491.y & 16777215)))) * 5.960465e-08f)))) - _505));
    _544 = _516 * _516;
    _545 = _525 * _525;
    _546 = _534 * _534;
    _547 = _543 * _543;
    _548 = _496 & 127;
    _549 = _497 & 127;
    _550 = _498 & 127;
    _551 = _499 & 127;
    _552 = ((uint)_110 > (uint)11);
    if (_552) {
      _564 = ((int)(uint)((int)(((uint)_110 < (uint)21) || (_110 == 107))));
    } else {
      if (!(_110 == 6)) {
        _564 = ((int)(uint)((int)(_110 == 7)));
      } else {
        _564 = 1;
      }
    }
    _565 = _114 * _114;
    _567 = (_565 * 0.2f) + 1.0f;
    _568 = (_564 != 0);
    _574 = select(_568, -7.213475f, -72.13475f) * (1.0f / ((select(_568, 0.05f, 0.01f) * _565) + 1.0f));
    _575 = _108.x & 126;  // [sem: _3__36__0__0__g_stencil_load_derived]
    _576 = (_575 == 66);
    _577 = (_110 == 53);
    _578 = _576 || _577;
    _579 = __3__36__0__0__g_normalDepthHalf.GatherRed(__3__40__0__0__g_samplerPoint, float2(_486, _485));  // [sem: _3__36__0__0__g_normalDepthHalf_gather]
    _588 = min(1.0f, ((((float)((uint)((uint)(_579.w & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _594 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_579.w)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _600 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_579.w)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _602 = rsqrt(dot(float3(_588, _594, _600), float3(_588, _594, _600)));  // [sem: invLength]
    _603 = float(_256);
    _604 = float(_257);
    _605 = float(_258);
    _610 = min(1.0f, ((((float)((uint)((uint)(_579.z & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _616 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_579.z)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _622 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_579.z)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _624 = rsqrt(dot(float3(_610, _616, _622), float3(_610, _616, _622)));  // [sem: invLength]
    _629 = min(1.0f, ((((float)((uint)((uint)(_579.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _635 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_579.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _641 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_579.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _643 = rsqrt(dot(float3(_629, _635, _641), float3(_629, _635, _641)));  // [sem: invLength]
    _648 = min(1.0f, ((((float)((uint)((uint)(_579.y & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _654 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_579.y)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _660 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_579.y)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _662 = rsqrt(dot(float3(_648, _654, _660), float3(_648, _654, _660)));  // [sem: invLength]
    _663 = select(_284, 8192.0f, 256.0f);
    _671 = exp2(log2(saturate(dot(float3(_603, _604, _605), float3((_602 * _588), (_602 * _594), (_602 * _600))))) * _663);
    _679 = exp2(log2(saturate(dot(float3(_603, _604, _605), float3((_624 * _610), (_624 * _616), (_624 * _622))))) * _663);
    _687 = exp2(log2(saturate(dot(float3(_603, _604, _605), float3((_643 * _629), (_643 * _635), (_643 * _641))))) * _663);
    _695 = exp2(log2(saturate(dot(float3(_603, _604, _605), float3((_662 * _648), (_662 * _654), (_662 * _660))))) * _663);
    _700 = 1.0f / max(1e-06f, (((_679 + _671) + _687) + _695));
    _714 = ((_671 * ((float)((bool)(!(_578 ^ (((_496 & 126) == 66) || (_548 == 53))))))) * _700) * select((_544 > _567), 0.0f, exp2(_574 * _544));
    _728 = ((_679 * ((float)((bool)(!(_578 ^ (((_497 & 126) == 66) || (_549 == 53))))))) * _700) * select((_545 > _567), 0.0f, exp2(_574 * _545));
    _742 = ((_687 * ((float)((bool)(!(_578 ^ (((_498 & 126) == 66) || (_550 == 53))))))) * _700) * select((_546 > _567), 0.0f, exp2(_574 * _546));
    _756 = ((_695 * ((float)((bool)(!(_578 ^ (((_499 & 126) == 66) || (_551 == 53))))))) * _700) * select((_547 > _567), 0.0f, exp2(_574 * _547));
    if (_284) {
      _787 = abs(((((float)((int)(_94))) * 0.5f) + -0.25f) - ((float)((int)(_487))));
      _788 = abs(((((float)((int)(_89))) * 0.5f) + -0.25f) - ((float)((int)(_488))));
    } else {
      _787 = (((float)((uint)((uint)((uint)((uint)(_94)) - (uint)((uint)((uint)(_487)) << 1)) - (uint)((uint)(((uint)((uint)(_frameNumber.x)) >> 1) & 1))))) * 0.5f);
      _788 = (((float)((uint)((uint)((uint)((uint)(_89)) - (uint)((uint)((uint)(_488)) << 1)) - (uint)((uint)(_frameNumber.x & 1))))) * 0.5f);
    }
    _789 = saturate(_788);  // [sem: _788_sat]
    _790 = saturate(_787);  // [sem: _787_sat]
    _791 = 1.0f - _789;
    _792 = 1.0f - _790;
    _793 = _792 * _791;
    _794 = _792 * _789;
    _795 = _791 * _790;
    _796 = _790 * _789;
    _805 = (_728 == 0.0f) && ((_714 == 0.0f) && ((_742 == 0.0f) && ((_110 != 29) && (_756 == 0.0f))));
    _808 = saturate(_793 * select(_805, 1.0f, _714));  // [sem: expr_sat]
    _811 = saturate(_794 * select(_805, 1.0f, _728));  // [sem: expr_sat]
    _814 = saturate(_795 * select(_805, 1.0f, _742));  // [sem: expr_sat]
    _817 = saturate(_796 * select(_805, 1.0f, _756));  // [sem: expr_sat]
    _818 = dot(float4(_808, _811, _814, _817), float4(1.0f, 1.0f, 1.0f, 1.0f));
    _819 = max(0.0f, _818);
    _821 = saturate(_808 / _819);  // [sem: expr_sat]
    _823 = saturate(_811 / _819);  // [sem: expr_sat]
    _825 = saturate(_814 / _819);  // [sem: expr_sat]
    _827 = saturate(_817 / _819);  // [sem: expr_sat]
    if (((_549 == 107) || ((_549 == 6) || (((uint)((int)(_548) + (int)(-12)) < (uint)9) || ((_548 == 107) || ((_548 == 6) || (((uint)((int)(_550) + (int)(-12)) < (uint)9) || ((_550 == 107) || ((_550 == 6) || (((_551 == 6) || (_551 == 107)) || ((uint)((int)(_551) + (int)(-12)) < (uint)9)))))))))) || (((uint)((int)(_549) + (int)(-12)) < (uint)9) || _568)) {
      _859 = (_818 < 0.0001f);
    } else {
      _859 = false;
    }
    _860 = (float)((bool)(_859));
    _863 = (_860 * (_793 - _821)) + _821;
    _866 = (_860 * (_794 - _823)) + _823;
    _869 = (_860 * (_795 - _825)) + _825;
    _872 = (_860 * (_796 - _827)) + _827;
    half4 _874 = __3__36__0__0__g_diffuseResult.Load(int3(_488, _487, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    _878 = (uint)((uint)(_488)) + (uint)(1);
    half4 _879 = __3__36__0__0__g_diffuseResult.Load(int3(_878, _487, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    _883 = (uint)((uint)(_487)) + (uint)(1);
    half4 _884 = __3__36__0__0__g_diffuseResult.Load(int3(_488, _883, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    half4 _888 = __3__36__0__0__g_diffuseResult.Load(int3(_878, _883, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    _893 = __3__36__0__0__g_specularResult.Load(int3(_488, _487, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _897 = __3__36__0__0__g_specularResult.Load(int3(_878, _487, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _901 = __3__36__0__0__g_specularResult.Load(int3(_488, _883, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _905 = __3__36__0__0__g_specularResult.Load(int3(_878, _883, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _922 = -0.0f - min(0.0f, (-0.0f - ((((float(_874.x) * _863) + (float(_879.x) * _866)) + (float(_884.x) * _869)) + (float(_888.x) * _872))));
    _936 = -0.0f - min(0.0f, (-0.0f - ((((float(_874.y) * _863) + (float(_879.y) * _866)) + (float(_884.y) * _869)) + (float(_888.y) * _872))));
    _950 = -0.0f - min(0.0f, (-0.0f - ((((float(_874.z) * _863) + (float(_879.z) * _866)) + (float(_884.z) * _869)) + (float(_888.z) * _872))));
    half2 _952 = __3__36__0__0__g_sceneAO.Load(int3(_488, _487, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    half2 _955 = __3__36__0__0__g_sceneAO.Load(int3(_878, _487, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    half2 _958 = __3__36__0__0__g_sceneAO.Load(int3(_488, _883, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    half2 _961 = __3__36__0__0__g_sceneAO.Load(int3(_878, _883, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    if (_552) {
      if (!((uint)_110 < (uint)20)) {
        if (!((_110 == 96) || ((_110 == 65) || (_110 == 107)))) {
          _987 = (half)(select(_285, 0.0f, (half)(half(((float)((uint)((uint)(_134.y & 255)))) * 0.003921569f))));
        } else {
          _987 = 0.0h;
        }
      } else {
        _987 = 0.0h;
      }
    } else {
      if (!((uint)_110 > (uint)10)) {
        _987 = (half)(select(_285, 0.0f, (half)(half(((float)((uint)((uint)(_134.y & 255)))) * 0.003921569f))));
      } else {
        _987 = 0.0h;
      }
    }
    _989 = (_101 * 2.0f) + -1.0f;
    _991 = 1.0f - (_103 * 2.0f);
    _1003 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _111, mad((_invViewProjRelative[3].y), _991, ((_invViewProjRelative[3].x) * _989)));
    _1012 = (mad((_invViewProjRelative[0].z), _111, mad((_invViewProjRelative[0].y), _991, ((_invViewProjRelative[0].x) * _989))) + (_invViewProjRelative[0].w)) / _1003;
    _1021 = (mad((_invViewProjRelative[1].z), _111, mad((_invViewProjRelative[1].y), _991, ((_invViewProjRelative[1].x) * _989))) + (_invViewProjRelative[1].w)) / _1003;
    _1030 = (mad((_invViewProjRelative[2].z), _111, mad((_invViewProjRelative[2].y), _991, ((_invViewProjRelative[2].x) * _989))) + (_invViewProjRelative[2].w)) / _1003;
    _1032 = rsqrt(dot(float3(_1012, _1021, _1030), float3(_1012, _1021, _1030)));  // [sem: invLength]
    _1034 = ((uint)(_108.x & 24) > (uint)23);  // [sem: _3__36__0__0__g_stencil_load_derived]
    if (_1034) {
      if (_284) {
        _1040 = float(saturate(_163));
      } else {
        _1040 = 0.0f;
      }
      _1046 = (uint)((half)((half)(half(((float)((uint)((uint)(_134.z & 255)))) * 0.003921569f)) * 255.0h));  // [sem: _3__36__0__0__g_baseColor_load_derived]
      if (_167) {
        _1055 = (((float)((uint)((uint)(_1046 & 127)))) * 0.007874016f);
        _1056 = select(((_1046 & 128) != 0), 1.0f, 0.0f);
      } else {
        _1055 = 0.0f;
        _1056 = 0.0f;
      }
      _1057 = half(_1055);
      _1058 = (_1057 > 0.99902344h);
      _1064 = (half)(select(_1058, 1.0f, _282));
      _1065 = (half)(select(_1058, 1.0f, _276));
      _1066 = (half)(select(_1058, 1.0f, _270));
      _1067 = (half)(select(_285, 0.010002136f, _163));
      _1068 = _1057;
      _1069 = _1040;
      _1070 = _1056;
    } else {
      _1064 = _282;
      _1065 = _276;
      _1066 = _270;
      _1067 = _163;
      _1068 = _987;
      _1069 = 0.0f;
      _1070 = 0.0f;
    }
    // RenoDX: >>> [Patch: FoliageColorCorrect] [Version: 1.16.00]
    // Description: Applies RenoDX foliage color shaping to foliage stencil materials (stencil ids
    //              12..18) at the material base-color stage, where the shader has just resolved the
    //              albedo it will light. Vanilla foliage albedo reads flat and yellow-green, so the
    //              helper re-balances hue and saturation; the shadow-map visibility term from
    //              g_sceneShadowColor keeps shadowed foliage off the fully sunlit shaping curve. This
    //              lower-lighting variant of the shader also rebuilds a temporally blended
    //              diffuse-cache color further down; that cache is deliberately left native, because
    //              correcting it as well makes the correction accumulate across frames and produces
    //              blocky patches. Gated by FOLIAGE_COLOR_CORRECT; at 0 the block does not execute.
    if (FOLIAGE_COLOR_CORRECT > 0.0f && ((uint)(_110 - 12) < 7u)) {
      float3 _rndx_fcBaseColor = float3(float(_1066), float(_1065), float(_1064));
      half4 _rndx_fcShadow = __3__36__0__0__g_sceneShadowColor.Load(int3(_89, _94, 0));
      float _rndx_fcShadowVis = saturate(dot(float3(_rndx_fcShadow.xyz), float3(0.2126f, 0.7152f, 0.0722f)));
      float3 _rndx_fcCorrected = FoliageColorCorrect(_rndx_fcBaseColor, _sunDirection.xyz, _rndx_fcShadowVis, float3(1.0f, 1.0f, 1.0f));
      float3 _rndx_fscColor = FoliageSelectiveColor(_rndx_fcCorrected);
      _1066 = half(_rndx_fscColor.x);
      _1065 = half(_rndx_fscColor.y);
      _1064 = half(_rndx_fscColor.z);
    }
    // RenoDX: <<< [Patch: FoliageColorCorrect]
    _1071 = _1032 * _1012;
    _1072 = -0.0f - _1071;
    _1073 = _1032 * _1021;
    _1074 = -0.0f - _1073;
    _1075 = _1032 * _1030;
    _1076 = -0.0f - _1075;
    _1078 = saturate(dot(float3(_1072, _1074, _1076), float3(_603, _604, _605)));  // [sem: expr_sat]
    _1079 = _108.x & 128;  // [sem: _3__36__0__0__g_stencil_load_derived]
    _1080 = (_1079 == 0);
    if (_1080) {
      if ((uint)_110 > (uint)51) {
        if (!(((_108.x & 125) == 105) || ((uint)_110 < (uint)68))) {
          _1103 = ((int)(uint)((int)(_110 == 98)));
        } else {
          _1103 = 1;
        }
      } else {
        if ((uint)_110 > (uint)10) {
          if ((uint)_110 < (uint)20) {
            _1103 = ((int)(uint)((int)(_575 != 14)));
          } else {
            _1103 = ((int)(uint)((int)((_108.x & 125) == 105)));
          }
        } else {
          _1103 = 0;
        }
      }
    } else {
      _1103 = 1;
    }
    [branch]
    if (_1034) {
      _1112 = (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(_89, _94, 0)))).x) & 16777215)))) * 5.960465e-08f);
    } else {
      _1112 = _105.x;
    }
    _1124 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), _1112, mad((_projToPrevProj[3].y), _991, ((_projToPrevProj[3].x) * _989)));
    if (_1103 == 0) {
      _1155 = (((mad((_projToPrevProj[1].z), _1112, mad((_projToPrevProj[1].y), _991, ((_projToPrevProj[1].x) * _989))) + (_projToPrevProj[1].w)) / _1124) - _991);
      _1156 = (((mad((_projToPrevProj[0].z), _1112, mad((_projToPrevProj[0].y), _991, ((_projToPrevProj[0].x) * _989))) + (_projToPrevProj[0].w)) / _1124) - _989);
    } else {
      _1128 = __3__36__0__0__g_velocity.Load(int3(_89, _94, 0));  // [sem: _3__36__0__0__g_velocity_load]
      _1155 = (_1128.y * 2.0f);
      _1156 = (_1128.x * 2.0f);
    }
    _1158 = _nearFarProj.x / max(1e-07f, _1112);
    _1160 = (_1156 * 0.5f) + _101;
    _1162 = _103 - (_1155 * 0.5f);
    _1170 = select(((_1162 > 1.0f) || ((_1162 < 0.0f) || ((_1160 < 0.0f) || (_1160 > 1.0f)))), 1.0f, 0.0f);
    _1174 = (_bufferSizeAndInvSize.x * _1160) + -0.5f;
    _1177 = (_bufferSizeAndInvSize.y * _1162) + -0.5f;
    _1179 = (int)(floor(_1174));
    _1181 = (int)(floor(_1177));
    _1182 = (float)((int)(_1179));
    _1183 = (float)((int)(_1181));
    _1186 = (_1182 + 0.5f) * _bufferSizeAndInvSize.z;
    _1189 = (_1183 + 0.5f) * _bufferSizeAndInvSize.w;
    _1191 = __3__36__0__0__g_depthOpaquePrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(_1186, _1189));  // [sem: _3__36__0__0__g_depthOpaquePrev_gather]
    _1202 = mad(((uint)((uint)(_1191.w)) >> 24), 16777216, mad(((uint)((uint)(_1191.z)) >> 24), 65536, mad(((uint)((uint)(_1191.y)) >> 24), 256, ((uint)((uint)(_1191.x)) >> 24))));
    if (_1080) {
      if ((uint)_110 > (uint)51) {
        if (!(_110 == 98)) {
          if (!(((_108.x & 125) == 105) || ((uint)_110 < (uint)68))) {
            _1262 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
          } else {
            _1262 = 0.0f;
          }
        } else {
          _1262 = 0.0f;
        }
      } else {
        if ((uint)_110 > (uint)10) {
          if ((uint)_110 < (uint)20) {
            if (_575 == 14) {
              _1262 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
            } else {
              _1262 = 0.0f;
            }
          } else {
            if (!((_108.x & 125) == 105)) {
              _1262 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
            } else {
              _1262 = 0.0f;
            }
          }
        } else {
          _1262 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
        }
      }
    } else {
      _1262 = 0.0f;
    }
    _1265 = _screenPercentage.x * 2.0f;
    _1268 = _1265 * abs(_101 + -0.5f);
    _1270 = _screenPercentage.y * 2.0f;
    _1273 = _1270 * abs(_103 + -0.5f);
    _1277 = sqrt(dot(float2(_1268, _1273), float2(_1268, _1273)) + 1.0f) * _1158;
    _1280 = abs(_1160 + -0.5f) * _1265;
    _1283 = abs(_1162 + -0.5f) * _1270;
    _1286 = sqrt(dot(float2(_1280, _1283), float2(_1280, _1283)) + 1.0f);
    _1289 = ((uint)((int)(_110) + (int)(-97)) < (uint)2) || _568;
    _1290 = _1158 * _1158;
    _1293 = (_1290 * select(_1289, 0.5f, 0.2f)) + 1.0f;
    _1295 = ((uint)((int)(_110) + (int)(-52)) < (uint)16);
    if (_1295) {
      _1314 = (1000.0f - (saturate((float)((bool)((sqrt(((_diffViewPosAccurate.y * _diffViewPosAccurate.y) + (_diffViewPosAccurate.x * _diffViewPosAccurate.x)) + (_diffViewPosAccurate.z * _diffViewPosAccurate.z)) * 50.0f) > 1.0f))) * 875.0f));
    } else {
      _1314 = 50.0f;
    }
    _1319 = select(_1295, 0.0f, ((_temporalReprojectionParams.y * 0.1f) * max(0.0f, (_1158 + -1.0f))));
    _1330 = max(0.0f, (abs(_1277 - (((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1191.x & 16777215)))) * 5.960465e-08f))) - _1262) * _1286)) - _1319));
    _1341 = max(0.0f, (abs(_1277 - (((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1191.y & 16777215)))) * 5.960465e-08f))) - _1262) * _1286)) - _1319));
    _1352 = max(0.0f, (abs(_1277 - (((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1191.z & 16777215)))) * 5.960465e-08f))) - _1262) * _1286)) - _1319));
    _1363 = max(0.0f, (abs(_1277 - (((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1191.w & 16777215)))) * 5.960465e-08f))) - _1262) * _1286)) - _1319));
    _1364 = _1330 * _1330;
    _1365 = _1341 * _1341;
    _1366 = _1352 * _1352;
    _1367 = _1363 * _1363;
    _1372 = (-1.442695f / ((_1290 * 0.1f) + 1.0f)) * select(_1289, 0.2f, _1314);
    _1376 = select((_1364 > _1293), 0.0f, exp2(_1372 * _1364));
    _1380 = select((_1365 > _1293), 0.0f, exp2(_1372 * _1365));
    _1384 = select((_1366 > _1293), 0.0f, exp2(_1372 * _1366));
    _1388 = select((_1367 > _1293), 0.0f, exp2(_1372 * _1367));
    if (!_1034) {
      _1390 = _1202 & 127;
      _1391 = _1202 & 32512;
      _1392 = _1202 & 8323072;
      _1393 = _1202 & 2130706432;
      _1395 = ((uint)((int)(_1390) + (int)(-52)) < (uint)16);
      _1399 = ((uint)((int)(((uint)((uint)(_1202)) >> 8) & 127) + (int)(-52)) < (uint)16);
      _1403 = ((uint)((int)(((uint)((uint)(_1202)) >> 16) & 127) + (int)(-52)) < (uint)16);
      _1407 = ((uint)((int)(((uint)((uint)(_1202)) >> 24) & 127) + (int)(-52)) < (uint)16);
      _1409 = (_1079 != 0) || _1295;
      _1410 = (_110 == 6);
      _1412 = ((uint)((int)(_110) + (int)(-105)) < (uint)3);
      if (_578) {
        if (!((_1295 ^ _1395) || ((_1410 ^ (_1390 == 6)) || (_1409 ^ (((_1202 & 128) != 0) || _1395))))) {
          _1435 = (_1412 ^ ((_1390 == 107) || ((uint)((int)(_1390) + (int)(-105)) < (uint)2)));
        } else {
          _1435 = true;
        }
        _1438 = ((float)((bool)(!_1435))) * _1376;
        _1446 = _1438;
        if (!((_1295 ^ _1399) || ((_1410 ^ (_1391 == 1536)) || (_1409 ^ (((_1202 & 32768) != 0) || _1399))))) {
          _1463 = (_1412 ^ (((_1202 & 32000) == 26880) || (_1391 == 27136)));
        } else {
          _1463 = true;
        }
        _1466 = ((float)((bool)(!_1463))) * _1380;
        _1475 = _1466;
        _1476 = _1446;
        if (!((_1295 ^ _1403) || ((_1410 ^ (_1392 == 393216)) || (_1409 ^ (((_1202 & 8388608) != 0) || _1403))))) {
          _1493 = (_1412 ^ (((_1202 & 8192000) == 6881280) || (_1392 == 6946816)));
        } else {
          _1493 = true;
        }
        _1496 = ((float)((bool)(!_1493))) * _1384;
        _1506 = _1496;
        _1507 = _1476;
        _1508 = _1475;
        if (!((_1295 ^ _1407) || ((_1410 ^ (_1393 == 100663296)) || (_1409 ^ (((int)_1202 < (int)0) || _1407))))) {
          _1524 = (_1412 ^ (((_1202 & 2097152000) == 1761607680) || (_1393 == 1778384896)));
        } else {
          _1524 = true;
        }
        _1527 = _1506;
        _1528 = _1507;
        _1529 = _1508;
        _1530 = (!_1524);
      } else {
        if ((_1390 != 53) && ((_1202 & 126) != 66)) {
          if (!((_1295 ^ _1395) || ((_1410 ^ (_1390 == 6)) || (_1409 ^ (((_1202 & 128) != 0) || _1395))))) {
            _1435 = (_1412 ^ ((_1390 == 107) || ((uint)((int)(_1390) + (int)(-105)) < (uint)2)));
          } else {
            _1435 = true;
          }
          _1438 = ((float)((bool)(!_1435))) * _1376;
          _1440 = _1438;
          if ((_1391 != 13568) && ((_1202 & 32256) != 16896)) {
            _1446 = _1440;
            if (!((_1295 ^ _1399) || ((_1410 ^ (_1391 == 1536)) || (_1409 ^ (((_1202 & 32768) != 0) || _1399))))) {
              _1463 = (_1412 ^ (((_1202 & 32000) == 26880) || (_1391 == 27136)));
            } else {
              _1463 = true;
            }
            _1466 = ((float)((bool)(!_1463))) * _1380;
            _1468 = _1466;
            _1469 = _1446;
            if ((_1392 != 3473408) && ((_1202 & 8257536) != 4325376)) {
              _1475 = _1468;
              _1476 = _1469;
              if (!((_1295 ^ _1403) || ((_1410 ^ (_1392 == 393216)) || (_1409 ^ (((_1202 & 8388608) != 0) || _1403))))) {
                _1493 = (_1412 ^ (((_1202 & 8192000) == 6881280) || (_1392 == 6946816)));
              } else {
                _1493 = true;
              }
              _1496 = ((float)((bool)(!_1493))) * _1384;
              _1498 = _1496;
              _1499 = _1476;
              _1500 = _1475;
              if ((_1393 != 889192448) && ((_1202 & 2113929216) != 1107296256)) {
                _1506 = _1498;
                _1507 = _1499;
                _1508 = _1500;
                if (!((_1295 ^ _1407) || ((_1410 ^ (_1393 == 100663296)) || (_1409 ^ (((int)_1202 < (int)0) || _1407))))) {
                  _1524 = (_1412 ^ (((_1202 & 2097152000) == 1761607680) || (_1393 == 1778384896)));
                } else {
                  _1524 = true;
                }
                _1527 = _1506;
                _1528 = _1507;
                _1529 = _1508;
                _1530 = (!_1524);
              } else {
                _1527 = _1498;
                _1528 = _1499;
                _1529 = _1500;
                _1530 = false;
              }
            } else {
              _1498 = 0.0f;
              _1499 = _1469;
              _1500 = _1468;
              if ((_1393 != 889192448) && ((_1202 & 2113929216) != 1107296256)) {
                _1506 = _1498;
                _1507 = _1499;
                _1508 = _1500;
                if (!((_1295 ^ _1407) || ((_1410 ^ (_1393 == 100663296)) || (_1409 ^ (((int)_1202 < (int)0) || _1407))))) {
                  _1524 = (_1412 ^ (((_1202 & 2097152000) == 1761607680) || (_1393 == 1778384896)));
                } else {
                  _1524 = true;
                }
                _1527 = _1506;
                _1528 = _1507;
                _1529 = _1508;
                _1530 = (!_1524);
              } else {
                _1527 = _1498;
                _1528 = _1499;
                _1529 = _1500;
                _1530 = false;
              }
            }
          } else {
            _1468 = 0.0f;
            _1469 = _1440;
            if ((_1392 != 3473408) && ((_1202 & 8257536) != 4325376)) {
              _1475 = _1468;
              _1476 = _1469;
              if (!((_1295 ^ _1403) || ((_1410 ^ (_1392 == 393216)) || (_1409 ^ (((_1202 & 8388608) != 0) || _1403))))) {
                _1493 = (_1412 ^ (((_1202 & 8192000) == 6881280) || (_1392 == 6946816)));
              } else {
                _1493 = true;
              }
              _1496 = ((float)((bool)(!_1493))) * _1384;
              _1498 = _1496;
              _1499 = _1476;
              _1500 = _1475;
              if ((_1393 != 889192448) && ((_1202 & 2113929216) != 1107296256)) {
                _1506 = _1498;
                _1507 = _1499;
                _1508 = _1500;
                if (!((_1295 ^ _1407) || ((_1410 ^ (_1393 == 100663296)) || (_1409 ^ (((int)_1202 < (int)0) || _1407))))) {
                  _1524 = (_1412 ^ (((_1202 & 2097152000) == 1761607680) || (_1393 == 1778384896)));
                } else {
                  _1524 = true;
                }
                _1527 = _1506;
                _1528 = _1507;
                _1529 = _1508;
                _1530 = (!_1524);
              } else {
                _1527 = _1498;
                _1528 = _1499;
                _1529 = _1500;
                _1530 = false;
              }
            } else {
              _1498 = 0.0f;
              _1499 = _1469;
              _1500 = _1468;
              if ((_1393 != 889192448) && ((_1202 & 2113929216) != 1107296256)) {
                _1506 = _1498;
                _1507 = _1499;
                _1508 = _1500;
                if (!((_1295 ^ _1407) || ((_1410 ^ (_1393 == 100663296)) || (_1409 ^ (((int)_1202 < (int)0) || _1407))))) {
                  _1524 = (_1412 ^ (((_1202 & 2097152000) == 1761607680) || (_1393 == 1778384896)));
                } else {
                  _1524 = true;
                }
                _1527 = _1506;
                _1528 = _1507;
                _1529 = _1508;
                _1530 = (!_1524);
              } else {
                _1527 = _1498;
                _1528 = _1499;
                _1529 = _1500;
                _1530 = false;
              }
            }
          }
        } else {
          _1440 = 0.0f;
          if ((_1391 != 13568) && ((_1202 & 32256) != 16896)) {
            _1446 = _1440;
            if (!((_1295 ^ _1399) || ((_1410 ^ (_1391 == 1536)) || (_1409 ^ (((_1202 & 32768) != 0) || _1399))))) {
              _1463 = (_1412 ^ (((_1202 & 32000) == 26880) || (_1391 == 27136)));
            } else {
              _1463 = true;
            }
            _1466 = ((float)((bool)(!_1463))) * _1380;
            _1468 = _1466;
            _1469 = _1446;
            if ((_1392 != 3473408) && ((_1202 & 8257536) != 4325376)) {
              _1475 = _1468;
              _1476 = _1469;
              if (!((_1295 ^ _1403) || ((_1410 ^ (_1392 == 393216)) || (_1409 ^ (((_1202 & 8388608) != 0) || _1403))))) {
                _1493 = (_1412 ^ (((_1202 & 8192000) == 6881280) || (_1392 == 6946816)));
              } else {
                _1493 = true;
              }
              _1496 = ((float)((bool)(!_1493))) * _1384;
              _1498 = _1496;
              _1499 = _1476;
              _1500 = _1475;
              if ((_1393 != 889192448) && ((_1202 & 2113929216) != 1107296256)) {
                _1506 = _1498;
                _1507 = _1499;
                _1508 = _1500;
                if (!((_1295 ^ _1407) || ((_1410 ^ (_1393 == 100663296)) || (_1409 ^ (((int)_1202 < (int)0) || _1407))))) {
                  _1524 = (_1412 ^ (((_1202 & 2097152000) == 1761607680) || (_1393 == 1778384896)));
                } else {
                  _1524 = true;
                }
                _1527 = _1506;
                _1528 = _1507;
                _1529 = _1508;
                _1530 = (!_1524);
              } else {
                _1527 = _1498;
                _1528 = _1499;
                _1529 = _1500;
                _1530 = false;
              }
            } else {
              _1498 = 0.0f;
              _1499 = _1469;
              _1500 = _1468;
              if ((_1393 != 889192448) && ((_1202 & 2113929216) != 1107296256)) {
                _1506 = _1498;
                _1507 = _1499;
                _1508 = _1500;
                if (!((_1295 ^ _1407) || ((_1410 ^ (_1393 == 100663296)) || (_1409 ^ (((int)_1202 < (int)0) || _1407))))) {
                  _1524 = (_1412 ^ (((_1202 & 2097152000) == 1761607680) || (_1393 == 1778384896)));
                } else {
                  _1524 = true;
                }
                _1527 = _1506;
                _1528 = _1507;
                _1529 = _1508;
                _1530 = (!_1524);
              } else {
                _1527 = _1498;
                _1528 = _1499;
                _1529 = _1500;
                _1530 = false;
              }
            }
          } else {
            _1468 = 0.0f;
            _1469 = _1440;
            if ((_1392 != 3473408) && ((_1202 & 8257536) != 4325376)) {
              _1475 = _1468;
              _1476 = _1469;
              if (!((_1295 ^ _1403) || ((_1410 ^ (_1392 == 393216)) || (_1409 ^ (((_1202 & 8388608) != 0) || _1403))))) {
                _1493 = (_1412 ^ (((_1202 & 8192000) == 6881280) || (_1392 == 6946816)));
              } else {
                _1493 = true;
              }
              _1496 = ((float)((bool)(!_1493))) * _1384;
              _1498 = _1496;
              _1499 = _1476;
              _1500 = _1475;
              if ((_1393 != 889192448) && ((_1202 & 2113929216) != 1107296256)) {
                _1506 = _1498;
                _1507 = _1499;
                _1508 = _1500;
                if (!((_1295 ^ _1407) || ((_1410 ^ (_1393 == 100663296)) || (_1409 ^ (((int)_1202 < (int)0) || _1407))))) {
                  _1524 = (_1412 ^ (((_1202 & 2097152000) == 1761607680) || (_1393 == 1778384896)));
                } else {
                  _1524 = true;
                }
                _1527 = _1506;
                _1528 = _1507;
                _1529 = _1508;
                _1530 = (!_1524);
              } else {
                _1527 = _1498;
                _1528 = _1499;
                _1529 = _1500;
                _1530 = false;
              }
            } else {
              _1498 = 0.0f;
              _1499 = _1469;
              _1500 = _1468;
              if ((_1393 != 889192448) && ((_1202 & 2113929216) != 1107296256)) {
                _1506 = _1498;
                _1507 = _1499;
                _1508 = _1500;
                if (!((_1295 ^ _1407) || ((_1410 ^ (_1393 == 100663296)) || (_1409 ^ (((int)_1202 < (int)0) || _1407))))) {
                  _1524 = (_1412 ^ (((_1202 & 2097152000) == 1761607680) || (_1393 == 1778384896)));
                } else {
                  _1524 = true;
                }
                _1527 = _1506;
                _1528 = _1507;
                _1529 = _1508;
                _1530 = (!_1524);
              } else {
                _1527 = _1498;
                _1528 = _1499;
                _1529 = _1500;
                _1530 = false;
              }
            }
          }
        }
      }
      _1534 = (((float)((bool)(_1530))) * _1388);
      _1535 = _1527;
      _1536 = _1529;
      _1537 = _1528;
    } else {
      _1534 = _1388;
      _1535 = _1384;
      _1536 = _1380;
      _1537 = _1376;
    }
    _1539 = __3__36__0__0__g_sceneNormalPrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(_1186, _1189));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather]
    _1548 = min(1.0f, ((((float)((uint)((uint)(_1539.w & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1554 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1539.w)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1560 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1539.w)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1562 = rsqrt(dot(float3(_1548, _1554, _1560), float3(_1548, _1554, _1560)));  // [sem: invLength]
    _1567 = saturate(dot(float3(_603, _604, _605), float3((_1562 * _1548), (_1562 * _1554), (_1562 * _1560))));  // [sem: expr_sat]
    _1572 = min(1.0f, ((((float)((uint)((uint)(_1539.z & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1578 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1539.z)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1584 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1539.z)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1586 = rsqrt(dot(float3(_1572, _1578, _1584), float3(_1572, _1578, _1584)));  // [sem: invLength]
    _1591 = saturate(dot(float3(_603, _604, _605), float3((_1586 * _1572), (_1586 * _1578), (_1586 * _1584))));  // [sem: expr_sat]
    _1596 = min(1.0f, ((((float)((uint)((uint)(_1539.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1602 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1539.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1608 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1539.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1610 = rsqrt(dot(float3(_1596, _1602, _1608), float3(_1596, _1602, _1608)));  // [sem: invLength]
    _1615 = saturate(dot(float3(_603, _604, _605), float3((_1610 * _1596), (_1610 * _1602), (_1610 * _1608))));  // [sem: expr_sat]
    _1620 = min(1.0f, ((((float)((uint)((uint)(_1539.y & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1626 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1539.y)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1632 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1539.y)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1634 = rsqrt(dot(float3(_1620, _1626, _1632), float3(_1620, _1626, _1632)));  // [sem: invLength]
    _1639 = saturate(dot(float3(_603, _604, _605), float3((_1634 * _1620), (_1634 * _1626), (_1634 * _1632))));  // [sem: expr_sat]
    _1642 = select((_577 || (_576 || _1289)), 0.01f, 1.0f);
    _1643 = _1174 - _1182;
    _1644 = _1177 - _1183;
    _1645 = 1.0f - _1643;
    _1646 = 1.0f - _1644;
    _1648 = (_1645 * _1644) * _1537;
    _1650 = (_1644 * _1643) * _1536;
    _1652 = (_1646 * _1643) * _1535;
    _1654 = (_1646 * _1645) * _1534;
    _1660 = saturate(select(_1034, 1.0f, (pow(_1615, _1642))) * _1648);  // [sem: expr_sat]
    _1666 = saturate(select(_1034, 1.0f, (pow(_1639, _1642))) * _1650);  // [sem: expr_sat]
    _1672 = saturate(select(_1034, 1.0f, (pow(_1591, _1642))) * _1652);  // [sem: expr_sat]
    _1678 = saturate(select(_1034, 1.0f, (pow(_1567, _1642))) * _1654);  // [sem: expr_sat]
    _1681 = asint(__3__37__0__0__g_structureCounterBuffer.Load(8));
    _1682 = WaveReadLaneFirst(_1681);
    [branch]
    if (!(_1682 == 0)) {
      _1690 = (((uint)(__3__36__0__0__g_tiledManyLightsMasks.Load(int3(((int)(_89) >> 5), ((int)(_94) >> 5), 0)))).x) & 4;
      _1691 = (uint)((uint)(_1690)) >> 2;
      if (!(_1690 == 0)) {
        _1700 = _1691;
        _1701 = max((saturate(dot(float3(_922, _936, _950), float3(0.212671f, 0.71516f, 0.072169f)) * 0.01f) * 0.875f), _1170);
      } else {
        _1700 = _1691;
        _1701 = _1170;
      }
    } else {
      _1700 = 0;
      _1701 = _1170;
    }
    // [sem: expr_sat]
    _1711 = saturate(max(_1701, ((_temporalReprojectionParams.w + (_environmentLightingHistory[1].w)) + _renderParams.y)));
    _1712 = (uint)((uint)(_1181)) + (uint)(1);
    half4 _1714 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1179, _1712, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    _1719 = (uint)((uint)(_1179)) + (uint)(1);
    half4 _1720 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1719, _1712, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    half4 _1725 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1719, _1181, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    half4 _1730 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1179, _1181, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    _1735 = dot(float4(_1660, _1666, _1672, _1678), float4(1.0f, 1.0f, 1.0f, 1.0f));
    // [sem: expr_sat]
    _1744 = saturate((1.0f / max(1.0f, _1735)) * dot(float4(_1660, _1666, _1672, _1678), float4(float(_1714.w), float(_1720.w), float(_1725.w), float(_1730.w))));
    _1749 = sqrt((_1156 * _1156) + (_1155 * _1155)) * 50.0f;
    if (_1295) {
      _1758 = saturate(1.0f - _1749);  // [sem: expr_sat]
    } else {
      _1758 = (1.0f - (saturate(_1749) * 0.5f));  // [sem: expr_sat]
    }
    _1762 = max(1.0f, (_bufferSizeAndInvSize.w * 2160.0f));
    _1765 = min(31.0f, ((_1758 * 15.0f) * _1762));
    if (_284) {
      _1769 = min(2.0f, _1765);
    } else {
      _1769 = _1765;
    }
    _1770 = select(_283, 1.0f, _1744);
    _1772 = (_1770 * _1770) * 4.0f;
    _1775 = __3__36__0__0__g_manyLightsMoments.SampleLevel(__3__40__0__0__g_sampler, float2(_101, _103), 0.0f);  // [sem: _3__36__0__0__g_manyLightsMoments_sampleLod]
    _1780 = saturate(_1775.w);  // [sem: expr_sat]
    _1782 = 1.0f / max(1e-06f, _1735);
    _1783 = _1782 * _1660;
    _1784 = _1782 * _1666;
    _1785 = _1782 * _1672;
    _1786 = _1782 * _1678;
    if (!((_1782 * _1735) == 0.0f)) {
      _1800 = saturate(saturate(max(_1711, (1.0f / ((saturate(_1772) * _1769) + 1.0f))) + _renderParams.z));  // [sem: expr_sat]
    } else {
      _1800 = 1.0f;  // [sem: expr_sat]
    }
    _1803 = 1.0f / _exposure4.x;
    _1818 = -0.0f - _exposure4.y;
    _1823 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (min(0.0f, (-0.0f - ((_1786 * float(_1730.x)) + ((_1785 * float(_1725.x)) + ((_1783 * float(_1714.x)) + (_1784 * float(_1720.x))))))) * _1818))));
    _1841 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (min(0.0f, (-0.0f - ((_1786 * float(_1730.y)) + ((_1785 * float(_1725.y)) + ((_1783 * float(_1714.y)) + (_1784 * float(_1720.y))))))) * _1818))));
    _1859 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (min(0.0f, (-0.0f - ((_1786 * float(_1730.z)) + ((_1785 * float(_1725.z)) + ((_1783 * float(_1714.z)) + (_1784 * float(_1720.z))))))) * _1818))));
    if (_renderParams.y == 0.0f) {
      _1862 = dot(float3(_1823, _1841, _1859), float3(0.212671f, 0.71516f, 0.072169f));
      _1869 = ((min(_1862, _1775.y) / max(1e-06f, _1862)) * _1780) + saturate(1.0f - _1780);
      _1883 = (_1869 * _1859);
      _1884 = (_1869 * _1841);
      _1885 = (_1869 * _1823);
      _1886 = saturate(((_1780 * 0.5f) * saturate(((_1775.x - _1862) * 2.0f) / max(1e-06f, _1775.x))) + _1800);  // [sem: expr_sat]
    } else {
      _1883 = _1859;
      _1884 = _1841;
      _1885 = _1823;
      _1886 = _1800;  // [sem: expr_sat]
    }
    if (!_283) {
      _1891 = saturate(_1744 + 0.0625f);  // [sem: expr_sat]
    } else {
      _1891 = 0.0f;  // [sem: expr_sat]
    }
    _1894 = ((_922 - _1885) * _1886) + _1885;
    _1897 = (_1886 * (_936 - _1884)) + _1884;
    _1900 = (_1886 * (_950 - _1883)) + _1883;
    __3__38__0__1__g_diffuseResultUAV[int2(_89, _94)] = float4((half)(half(_1894)), (half)(half(_1897)), (half)(half(_1900)), (half)(half(_1891)));
    _1906 = float(_1066);
    _1907 = float(_1065);
    _1908 = float(_1064);
    if (_110 == 52) {
      _1916 = saturate(((_1907 + _1908) + _1906) * 1.2f);  // [sem: expr_sat]
    } else {
      _1916 = 1.0f;  // [sem: expr_sat]
    }
    _1917 = float(_1068);
    _1923 = (0.7f / min(max(max(max(_1906, _1907), _1908), 0.01f), 0.7f)) * _1916;
    _1927 = (((_1923 * _1906) + -0.04f) * _1917) + 0.04f;
    _1931 = (((_1923 * _1907) + -0.04f) * _1917) + 0.04f;
    _1935 = (((_1923 * _1908) + -0.04f) * _1917) + 0.04f;
    if (!_1034) {
      // [sem: expr_sat]
      _1951 = saturate((((1.0f - (float(_952.x) * _863)) - (float(_955.x) * _866)) - (float(_958.x) * _869)) - (float(_961.x) * _872));
    } else {
      _1951 = 1.0f;  // [sem: expr_sat]
    }
    if (!((_575 == 96) || (_110 == 98))) {
      if ((uint)((int)(_110) + (int)(-105)) < (uint)2) {
        _1969 = (half)(select(_167, 0.0f, _1068));
      } else {
        if (!((uint)((int)(_110) + (int)(-11)) < (uint)9)) {
          _1969 = (half)(select(((_110 == 65) || (_110 == 107)), 0.0f, _1068));
        } else {
          _1969 = 0.0h;
        }
      }
    } else {
      _1969 = 0.0h;
    }
    _1971 = dot(float3(_1071, _1073, _1075), float3(_603, _604, _605)) * 2.0f;
    _1973 = _1071 - (_1971 * _603);
    _1975 = _1073 - (_1971 * _604);
    _1977 = _1075 - (_1971 * _605);
    _1982 = dot(float3(_1071, _1073, _1075), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
    _1985 = (_1030 * _1030) + (_1012 * _1012);
    _1995 = sqrt(max(0.0f, (dot(float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z)) - (_1982 * _1982)))) / (sqrt(_1985 + (_1021 * _1021)) + 5.0f);
    _1996 = float(_1067);
    if ((_1067 < 0.099975586h) && (_1995 < 0.125f)) {
      _2009 = select((_1996 < 0.8f), ((__3__36__0__0__g_specularRayHitDistance.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_101, _103), 0.0f)).x), 0.0f) * rsqrt(dot(float3(_1973, _1975, _1977), float3(_1973, _1975, _1977)));
      _2010 = _2009 * _1973;
      _2011 = _2009 * _1975;
      _2012 = _2009 * _1977;
      _2017 = dot(float3(_2010, _2011, _2012), float3((-0.0f - _603), (-0.0f - _604), (-0.0f - _605))) * 2.0f;
      _2020 = (_2010 + _1012) + (_2017 * _603);
      _2023 = (_2011 + _1021) + (_2017 * _604);
      _2026 = (_2012 + _1030) + (_2017 * _605);
      _2038 = (_viewProjRelative[0].w) + mad((_viewProjRelative[0].z), _2026, mad((_viewProjRelative[0].y), _2023, (_2020 * (_viewProjRelative[0].x))));
      _2046 = mad((_viewProjRelative[1].z), _2026, mad((_viewProjRelative[1].y), _2023, (_2020 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w);
      _2054 = mad((_viewProjRelative[2].z), _2026, mad((_viewProjRelative[2].y), _2023, (_2020 * (_viewProjRelative[2].x)))) + (_viewProjRelative[2].w);
      _2062 = mad((_viewProjRelative[3].z), _2026, mad((_viewProjRelative[3].y), _2023, (_2020 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
      _2074 = mad((_projToPrevProj[3].w), _2062, mad((_projToPrevProj[3].z), _2054, mad((_projToPrevProj[3].y), _2046, ((_projToPrevProj[3].x) * _2038))));
      _2086 = ((mad((_projToPrevProj[0].w), _2062, mad((_projToPrevProj[0].z), _2054, mad((_projToPrevProj[0].y), _2046, ((_projToPrevProj[0].x) * _2038)))) / _2074) - (_2038 / _2062)) - _1156;
      _2098 = ((mad((_projToPrevProj[1].w), _2062, mad((_projToPrevProj[1].z), _2054, mad((_projToPrevProj[1].y), _2046, ((_projToPrevProj[1].x) * _2038)))) / _2074) - (_2046 / _2062)) - _1155;
      _2106 = max(_1995, saturate(sqrt((_2098 * _2098) + (_2086 * _2086))));
    } else {
      _2106 = _1995;
    }
    if (!((_575 == 24) || (_284 || _1034))) {
      _2126 = (_renderParams.y > 0.0f);
    } else {
      _2126 = true;
    }
    _2127 = select(_2126, 1.0f, ((((float(_955.y) * _866) + (float(_952.y) * _863)) + (float(_958.y) * _869)) + (float(_961.y) * _872)));
    _2128 = float(_1969);
    _2133 = min(max((_cavityParams.y + -1.0f), 0.0f), 2.0f);
    // [sem: expr_sat]
    _2159 = saturate(((((-0.05f - (_2133 * 0.075f)) + max(0.02f, _1996)) + (saturate(_114 * 0.025f) * 0.1f)) * min(max((_114 + 1.0f), 5.0f), 50.0f)) * (1.0f - (saturate(_2128) * 0.75f))) * saturate(saturate(1.0f - (((_2128 * _114) / max(0.001f, _1078)) * 0.001f)) * 1.25f);
    if (_110 == 64) {
      _2168 = ((saturate(_114 * 0.25f) * (_2159 + -0.39990234f)) + 0.39990234f);
    } else {
      _2168 = _2159;
    }
    _2170 = (_2133 * 16.0f) + 16.0f;
    _2176 = select((_2133 > 1.0f), 0.0f, saturate((1.0f / _2170) * (_114 - _2170)));
    _2177 = (_110 == 105);
    if (!(_2177 || _1034)) {
      _2189 = select((_110 == 65), 0.0f, select((_110 == 107), 1.0f, ((_2176 + _2168) - (_2176 * _2168))));
    } else {
      _2189 = select(_2177, 1.0f, 0.0f);
    }
    _2196 = saturate(select((_lightingParams.y == 0.0f), 1.0f, (1.0f - _2189))) * _2106;
    _2198 = max(0.099975586h, _1067);
    if ((uint)_110 > (uint)51) {
      if ((uint)_110 < (uint)68) {
        if (_110 == 66) {
          _2212 = (half)(max(0.89990234h, _1067));
        } else {
          if (_578) {
            _2212 = (half)(max(0.89990234h, _1067));
          } else {
            _2212 = _2198;
          }
        }
      } else {
        _2212 = _2198;
      }
    } else {
      if (_578) {
        _2212 = (half)(max(0.89990234h, _1067));
      } else {
        _2212 = _2198;
      }
    }
    _2213 = float(_2212);
    _2214 = _2213 * _2213;
    _2215 = _2214 * _2214;
    _2219 = (((_2215 * _1615) - _1615) * _1615) + 1.0f;
    _2223 = (((_2215 * _1639) - _1639) * _1639) + 1.0f;
    _2227 = (((_2215 * _1591) - _1591) * _1591) + 1.0f;
    _2231 = (((_2215 * _1567) - _1567) * _1567) + 1.0f;
    _2251 = (((((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1179, _1712, 0))).x) * saturate(_1648)) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1719, _1712, 0))).x) * saturate(_1650))) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1719, _1181, 0))).x) * saturate(_1652))) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1179, _1181, 0))).x) * saturate(_1654));
    _2258 = saturate(select(_284, 1.0f, saturate((_2215 / (_2219 * _2219)) * _1615)) * _1648);  // [sem: expr_sat]
    _2265 = saturate(select(_284, 1.0f, saturate((_2215 / (_2223 * _2223)) * _1639)) * _1650);  // [sem: expr_sat]
    _2272 = saturate(select(_284, 1.0f, saturate((_2215 / (_2227 * _2227)) * _1591)) * _1652);  // [sem: expr_sat]
    _2279 = saturate(select(_284, 1.0f, saturate((_2215 / (_2231 * _2231)) * _1567)) * _1654);  // [sem: expr_sat]
    _2289 = exp2(log2(saturate(max(float(((half)(((half)(1.0h - _1067)) * 0.75h)) * _1969), (1.0f - _1078)))) * 0.1f);
    _2292 = float(((half)(_1067 * _1067)) + 1.0009766h);
    _2308 = select(_284, 1.0f, saturate(((_1762 * _1762) * _1772) * exp2((log2(float(_2198)) * 0.5f) * (((_2196 * 15.0f) * ((_2289 + _2292) / (_2292 - _2289))) + 1.0f))));
    if ((uint)((int)(_110) + (int)(-12)) < (uint)9) {
      _2318 = ((saturate(_114 * 0.005f) * (_2308 + -1.0f)) + 1.0f);
    } else {
      _2318 = _2308;
    }
    _2330 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), _105.x, mad((_projToPrevProj[3].y), _991, ((_projToPrevProj[3].x) * _989)));
    _2340 = ((mad((_projToPrevProj[0].z), _105.x, mad((_projToPrevProj[0].y), _991, ((_projToPrevProj[0].x) * _989))) + (_projToPrevProj[0].w)) / _2330) - _989;
    _2350 = ((mad((_projToPrevProj[1].z), _105.x, mad((_projToPrevProj[1].y), _991, ((_projToPrevProj[1].x) * _989))) + (_projToPrevProj[1].w)) / _2330) - _991;
    _2351 = _1156 - _2340;
    _2352 = _1155 - _2350;
    if (_1295 || (_1103 != 0)) {
      _2365 = (31.0f - (saturate(sqrt((_2352 * _2352) + (_2351 * _2351)) * 500.0f) * 24.0f));
    } else {
      _2365 = 63.0f;
    }
    if (_renderParams.z > 0.0f) {
      _2374 = saturate((_2196 * 200.0f) + 0.125f);  // [sem: expr_sat]
    } else {
      _2374 = 0.0f;  // [sem: expr_sat]
    }
    _2383 = max(max(saturate(_1711), saturate(max(0.0f, (1.0f / (((_2318 * _2251) * _2365) + 1.0f))))), _2374);
    [branch]
    if (_1034) {
      _2390 = (_bufferSizeAndInvSize.x * ((_2340 * 0.5f) + _101)) + -0.5f;
      _2395 = (_bufferSizeAndInvSize.y * (_103 - (_2350 * 0.5f))) + -0.5f;
      _2397 = (int)(floor(_2390));
      _2399 = (int)(floor(_2395));
      _2400 = (float)((int)(_2397));
      _2401 = (float)((int)(_2399));
      [branch]
      if (_284) {
        // [sem: _3__36__0__0__g_stencilPrev_gather]
        _2411 = __3__36__0__0__g_stencilPrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(((_2400 + 0.5f) * _bufferSizeAndInvSize.z), ((_2401 + 0.5f) * _bufferSizeAndInvSize.w)));
        _2418 = mad(_2411.w, 16777216, mad(_2411.z, 65536, mad(_2411.y, 256, _2411.x)));
        _2423 = saturate(((float)((bool)((uint)(_2418 & 24) > (uint)23))) * _2258);  // [sem: expr_sat]
        _2428 = saturate(((float)((bool)((uint)(_2418 & 6144) > (uint)5888))) * _2265);  // [sem: expr_sat]
        _2433 = saturate(((float)((bool)((uint)(_2418 & 1572864) > (uint)1507328))) * _2272);  // [sem: expr_sat]
        _2438 = saturate(((float)((bool)((uint)(_2418 & 402653184) > (uint)385875968))) * _2279);  // [sem: expr_sat]
        _2470 = _2438;
        _2471 = _2433;
        _2472 = _2428;
        _2473 = _2423;
        _2474 = _2399;
        _2475 = _2397;
        _2476 = max(saturate(min(max(((_1069 / ((_565 * 0.005f) + 1.0f)) + (_2196 * 500.0f)), 0.03125f), 0.5f) + _2383), saturate(1.0f - dot(float4(_2423, _2428, _2433, _2438), float4(1.0f, 1.0f, 1.0f, 1.0f))));
      } else {
        _2453 = _2390 - _2400;
        _2454 = _2395 - _2401;
        _2455 = 1.0f - _2453;
        _2456 = 1.0f - _2454;
        _2470 = (_2456 * _2455);
        _2471 = (_2456 * _2453);
        _2472 = (_2454 * _2453);
        _2473 = (_2455 * _2454);
        _2474 = _2399;
        _2475 = _2397;
        _2476 = (saturate((sqrt((_2350 * _2350) + (_2340 * _2340)) * 50.0f) + 0.125f) * 0.875f);
      }
    } else {
      _2470 = _2279;
      _2471 = _2272;
      _2472 = _2265;
      _2473 = _2258;
      _2474 = _1181;
      _2475 = _1179;
      _2476 = _2383;
    }
    _2477 = (_2128 > 0.2f);
    _2478 = (uint)((uint)(_2474)) + (uint)(1);
    half4 _2480 = __3__36__0__0__g_specularResultPrev.Load(int3(_2475, _2478, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _2489 = ((float)((bool)(!(_2477 ^ ((half)(_2480.w) < 0.0h))))) * _2473;
    _2490 = (uint)((uint)(_2475)) + (uint)(1);
    half4 _2491 = __3__36__0__0__g_specularResultPrev.Load(int3(_2490, _2478, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _2500 = ((float)((bool)(!(_2477 ^ ((half)(_2491.w) < 0.0h))))) * _2472;
    half4 _2501 = __3__36__0__0__g_specularResultPrev.Load(int3(_2490, _2474, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _2510 = ((float)((bool)(!(_2477 ^ ((half)(_2501.w) < 0.0h))))) * _2471;
    half4 _2511 = __3__36__0__0__g_specularResultPrev.Load(int3(_2475, _2474, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _2520 = ((float)((bool)(!(_2477 ^ ((half)(_2511.w) < 0.0h))))) * _2470;
    _2527 = 1.0f / max(((saturate(_114 * 0.0625f) * 0.000999f) + 1e-06f), dot(float4(_2489, _2500, _2510, _2520), float4(1.0f, 1.0f, 1.0f, 1.0f)));
    _2541 = -0.0f - _2527;
    _2542 = min(0.0f, (-0.0f - ((((_2489 * float(_2480.x)) + (_2500 * float(_2491.x))) + (_2510 * float(_2501.x))) + (_2520 * float(_2511.x))))) * _2541;
    _2556 = min(0.0f, (-0.0f - ((((_2489 * float(_2480.y)) + (_2500 * float(_2491.y))) + (_2510 * float(_2501.y))) + (_2520 * float(_2511.y))))) * _2541;
    _2570 = min(0.0f, (-0.0f - ((((_2489 * float(_2480.z)) + (_2500 * float(_2491.z))) + (_2510 * float(_2501.z))) + (_2520 * float(_2511.z))))) * _2541;
    _2588 = min(0.0f, (-0.0f - ((((abs(float(_2480.w)) * _2489) + (abs(float(_2491.w)) * _2500)) + (abs(float(_2501.w)) * _2510)) + (abs(float(_2511.w)) * _2520)))) * _2527;
    if (_renderParams.y == 0.0f) {
      _2592 = dot(float3(_2542, _2556, _2570), float3(0.212671f, 0.71516f, 0.072169f));
      _2599 = ((min(_2592, _1775.z) / max(1e-09f, _2592)) * _1780) + saturate(1.0f - _1780);
      _2620 = (_2599 * _2570);
      _2621 = (_2599 * _2556);
      _2622 = (_2599 * _2542);
      // [sem: expr_sat]
      _2623 = saturate(((_1780 * 0.5f) * saturate((((_1996 * 1000.0f) * _2196) * ((float(1.0h / ((half)(8.0h - ((half)(_1067 * 7.0h))))) * _1775.z) - _2592)) / max(1e-06f, _1775.z))) + _2476);
    } else {
      _2620 = _2570;
      _2621 = _2556;
      _2622 = _2542;
      _2623 = _2476;  // [sem: expr_sat]
    }
    _2626 = _exposure4.y * _2622;
    _2627 = _exposure4.y * _2621;
    _2628 = _exposure4.y * _2620;
    _2632 = ((max(0.001f, _1951) + _2588) * _2623) - _2588;
    _2647 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_2127 * ((((_897.x * _866) + (_893.x * _863)) + (_901.x * _869)) + (_905.x * _872))) - _2626) * _2623) + _2626))));
    _2662 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_2127 * ((((_897.y * _866) + (_893.y * _863)) + (_901.y * _869)) + (_905.y * _872))) - _2627) * _2623) + _2627))));
    _2677 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_2127 * ((((_897.z * _866) + (_893.z * _863)) + (_901.z * _869)) + (_905.z * _872))) - _2628) * _2623) + _2628))));
    __3__38__0__1__g_specularResultUAV[int2(_89, _94)] = float4((half)(half(_2647)), (half)(half(_2662)), (half)(half(_2677)), (half)(half(select(_2477, (-0.0f - _2632), _2632))));
    __3__38__0__1__g_specularSampleCountUAV[int2(_89, _94)] = saturate((_2251 * 0.984375f) + 0.015625f);
    _2689 = select(_1034, 0.0f, _2632);
    _2694 = float(half(lerp(_2689, 1.0f, _1996)));
    _2695 = (_575 == 64);
    _2697 = ((int)(uint)(_168)) ^ 1;
    if ((_2697 & ((int)(uint)(_2695))) == 0) {
      _2713 = saturate(exp2((_2694 * _2694) * (_114 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _2713 = select((_cavityParams.z > 0.0f), 0.0f, 1.0f);  // [sem: expr_sat]
    }
    _2716 = (_cavityParams.x == 0.0f);
    _2717 = select(_2716, 1.0f, _2713);
    if (_2695) {
      _2723 = (_2717 * _1935);
      _2724 = (_2717 * _1931);
      _2725 = (_2717 * _1927);
    } else {
      _2723 = _1935;
      _2724 = _1931;
      _2725 = _1927;
    }
    // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
    _2730 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1078), (1.0f - _2694)), 0.0f);
    _2735 = select((_2695 || _1034), 1.0f, _2717) * _1803;
    if (!(((uint)((int)(_110) + (int)(-27)) < (uint)2) || ((_575 == 106) || ((_575 == 6) || _1295)))) {
      if (!(_2177 || ((_110 == 26) || _1034))) {
        _2753 = exp2((saturate(_114 * 0.03125f) + 1.0f) * log2(_2689));
        _2755 = __3__36__0__0__g_puddleMask.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_101, _103), 0.0f);  // [sem: _3__36__0__0__g_puddleMask_sampleLod]
        if (((_108.x & 124) == 16) || ((_110 == 15) || (_575 == 12))) {
          _2776 = 1;
          _2777 = 0;
          if (_2755.w < 1.0f) {
            if ((_weatherCheckFlag & 5) == 5) {
              _2785 = (_110 == 36);
              if (!_2785) {
                // [sem: _3__36__0__0__g_climateSandTex_sampleLod]
                _2812 = __3__36__0__0__g_climateSandTex.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + ((_viewPos.x + _1012) / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + ((_viewPos.z + _1030) / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                _2818 = _2812.w;
                _2819 = _2812.z;
                _2820 = _2812.y;
                _2821 = _2812.x;
              } else {
                _2818 = 0.5f;
                _2819 = 0.1f;
                _2820 = 0.12f;
                _2821 = 0.12f;
              }
              _2831 = 1.0f - saturate(((_viewPos.y + _1021) - _paramGlobalSand.x) / _paramGlobalSand.y);
              if (!(_2831 <= 0.0f)) {
                _2834 = saturate(_2753);  // [sem: _2753_sat]
                _2839 = ((_2820 * 0.33951f) + (_2819 * 0.04737f)) + (_2821 * 0.61312f);
                _2844 = ((_2820 * 0.91636f) + (_2819 * 0.01345f)) + (_2821 * 0.0702f);
                _2849 = ((_2820 * 0.10958f) + (_2819 * 0.8698f)) + (_2821 * 0.02062f);
                _2855 = select((_2776 != 0), 1.0f, ((float)((bool)(saturate(dot(float3(_603, _604, _605), float3(0.0f, 1.0f, 0.0f))) > 0.5f))));
                if (_enableSandAO == 1) {
                  _2861 = (1.0f - _2755.x) * 10.0f;
                  if (_2785) {
                    _2893 = saturate(((_2831 * _2818) * _2861) * _2834);  // [sem: _2889_sat]
                    _2894 = _2849;
                    _2895 = _2844;
                    _2896 = _2839;
                  } else {
                    _2869 = saturate(_2818 + -0.5f);  // [sem: expr_sat]
                    // [sem: _2889_sat]
                    _2893 = ((((_2834 * _2861) * saturate((0.5f - _2818) * 2.0f)) + ((_2869 * 2.0f) * max((_2855 * _2755.x), min((_2834 * ((_2755.x * 7.0f) + 3.0f)), (_2869 * 40.0f))))) * _2831);
                    _2894 = _2849;
                    _2895 = _2844;
                    _2896 = _2839;
                  }
                } else {
                  _2889 = ((_2831 * _2818) * _2755.x) * _2855;
                  if (_2785) {
                    _2893 = saturate(_2889);  // [sem: _2889_sat]
                    _2894 = _2849;
                    _2895 = _2844;
                    _2896 = _2839;
                  } else {
                    _2893 = _2889;  // [sem: _2889_sat]
                    _2894 = _2849;
                    _2895 = _2844;
                    _2896 = _2839;
                  }
                }
              } else {
                _2893 = 0.0f;  // [sem: _2889_sat]
                _2894 = 0.0f;
                _2895 = 0.0f;
                _2896 = 0.0f;
              }
              _2900 = ((1.0f - _2755.w) * (1.0f - _2755.y)) * _2893;
              if (_2900 > 0.0001f) {
                _2903 = (_2776 == 0);
                if (_2903) {
                  _2926 = ((_2894 - _1908) * _2900);
                  _2927 = ((_2895 - _1907) * _2900);
                  _2928 = ((_2896 - _1906) * _2900);
                } else {
                  _2905 = saturate(_2900);  // [sem: _2900_sat]
                  _2926 = ((sqrt(_2894 * _1908) - _1908) * _2905);
                  _2927 = ((sqrt(_2895 * _1907) - _1907) * _2905);
                  _2928 = ((sqrt(_2896 * _1906) - _1906) * _2905);
                }
                _2929 = _1906 + _2928;
                _2930 = _1907 + _2927;
                _2931 = _2926 + _1908;
                if (_2785) {
                  if (_2903) {
                    _2945 = _2929;
                    _2946 = _2930;
                    _2947 = _2931;
                    _2948 = ((_2900 * (0.25f - _1996)) + _1996);
                  } else {
                    _2945 = _2929;
                    _2946 = _2930;
                    _2947 = _2931;
                    _2948 = (((sqrt(_1996 * 0.25f) - _1996) * saturate(_2900)) + _1996);
                  }
                } else {
                  _2945 = _2929;
                  _2946 = _2930;
                  _2947 = _2931;
                  _2948 = _1996;
                }
              } else {
                _2945 = _1906;
                _2946 = _1907;
                _2947 = _1908;
                _2948 = _1996;
              }
              _2949 = saturate(_2945);  // [sem: _2945_sat]
              _2950 = saturate(_2946);  // [sem: _2946_sat]
              _2951 = saturate(_2947);  // [sem: _2947_sat]
              _2954 = (_2948 * (1.0f - _2753)) + _2753;
              _2957 = ((_2948 - _2954) * _2755.y) + _2954;
              _2965 = (((_2753 * _2753) * _2755.z) * ((float)((bool)(_2777 != 0)))) * saturate(dot(float3(_603, _604, _605), float3(0.0f, 1.0f, 0.0f)));
              _2966 = _2965 * -0.5f;
              _2978 = ((_2966 * _2951) + _2951);
              _2979 = ((_2966 * _2950) + _2950);
              _2980 = ((_2966 * _2949) + _2949);
              _2981 = (_2957 - (_2965 * _2957));
              _2982 = (_1917 - (_2753 * _1917));
            } else {
              _2978 = _1908;
              _2979 = _1907;
              _2980 = _1906;
              _2981 = _1996;
              _2982 = _1917;
            }
          } else {
            _2978 = _1908;
            _2979 = _1907;
            _2980 = _1906;
            _2981 = _1996;
            _2982 = _1917;
          }
        } else {
          if ((uint)_110 > (uint)10) {
            if ((uint)_110 < (uint)20) {
              _2776 = 0;
              _2777 = 0;
              if (_2755.w < 1.0f) {
                if ((_weatherCheckFlag & 5) == 5) {
                  _2785 = (_110 == 36);
                  if (!_2785) {
                    // [sem: _3__36__0__0__g_climateSandTex_sampleLod]
                    _2812 = __3__36__0__0__g_climateSandTex.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + ((_viewPos.x + _1012) / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + ((_viewPos.z + _1030) / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                    _2818 = _2812.w;
                    _2819 = _2812.z;
                    _2820 = _2812.y;
                    _2821 = _2812.x;
                  } else {
                    _2818 = 0.5f;
                    _2819 = 0.1f;
                    _2820 = 0.12f;
                    _2821 = 0.12f;
                  }
                  _2831 = 1.0f - saturate(((_viewPos.y + _1021) - _paramGlobalSand.x) / _paramGlobalSand.y);
                  if (!(_2831 <= 0.0f)) {
                    _2834 = saturate(_2753);  // [sem: _2753_sat]
                    _2839 = ((_2820 * 0.33951f) + (_2819 * 0.04737f)) + (_2821 * 0.61312f);
                    _2844 = ((_2820 * 0.91636f) + (_2819 * 0.01345f)) + (_2821 * 0.0702f);
                    _2849 = ((_2820 * 0.10958f) + (_2819 * 0.8698f)) + (_2821 * 0.02062f);
                    _2855 = select((_2776 != 0), 1.0f, ((float)((bool)(saturate(dot(float3(_603, _604, _605), float3(0.0f, 1.0f, 0.0f))) > 0.5f))));
                    if (_enableSandAO == 1) {
                      _2861 = (1.0f - _2755.x) * 10.0f;
                      if (_2785) {
                        _2893 = saturate(((_2831 * _2818) * _2861) * _2834);  // [sem: _2889_sat]
                        _2894 = _2849;
                        _2895 = _2844;
                        _2896 = _2839;
                      } else {
                        _2869 = saturate(_2818 + -0.5f);  // [sem: expr_sat]
                        // [sem: _2889_sat]
                        _2893 = ((((_2834 * _2861) * saturate((0.5f - _2818) * 2.0f)) + ((_2869 * 2.0f) * max((_2855 * _2755.x), min((_2834 * ((_2755.x * 7.0f) + 3.0f)), (_2869 * 40.0f))))) * _2831);
                        _2894 = _2849;
                        _2895 = _2844;
                        _2896 = _2839;
                      }
                    } else {
                      _2889 = ((_2831 * _2818) * _2755.x) * _2855;
                      if (_2785) {
                        _2893 = saturate(_2889);  // [sem: _2889_sat]
                        _2894 = _2849;
                        _2895 = _2844;
                        _2896 = _2839;
                      } else {
                        _2893 = _2889;  // [sem: _2889_sat]
                        _2894 = _2849;
                        _2895 = _2844;
                        _2896 = _2839;
                      }
                    }
                  } else {
                    _2893 = 0.0f;  // [sem: _2889_sat]
                    _2894 = 0.0f;
                    _2895 = 0.0f;
                    _2896 = 0.0f;
                  }
                  _2900 = ((1.0f - _2755.w) * (1.0f - _2755.y)) * _2893;
                  if (_2900 > 0.0001f) {
                    _2903 = (_2776 == 0);
                    if (_2903) {
                      _2926 = ((_2894 - _1908) * _2900);
                      _2927 = ((_2895 - _1907) * _2900);
                      _2928 = ((_2896 - _1906) * _2900);
                    } else {
                      _2905 = saturate(_2900);  // [sem: _2900_sat]
                      _2926 = ((sqrt(_2894 * _1908) - _1908) * _2905);
                      _2927 = ((sqrt(_2895 * _1907) - _1907) * _2905);
                      _2928 = ((sqrt(_2896 * _1906) - _1906) * _2905);
                    }
                    _2929 = _1906 + _2928;
                    _2930 = _1907 + _2927;
                    _2931 = _2926 + _1908;
                    if (_2785) {
                      if (_2903) {
                        _2945 = _2929;
                        _2946 = _2930;
                        _2947 = _2931;
                        _2948 = ((_2900 * (0.25f - _1996)) + _1996);
                      } else {
                        _2945 = _2929;
                        _2946 = _2930;
                        _2947 = _2931;
                        _2948 = (((sqrt(_1996 * 0.25f) - _1996) * saturate(_2900)) + _1996);
                      }
                    } else {
                      _2945 = _2929;
                      _2946 = _2930;
                      _2947 = _2931;
                      _2948 = _1996;
                    }
                  } else {
                    _2945 = _1906;
                    _2946 = _1907;
                    _2947 = _1908;
                    _2948 = _1996;
                  }
                  _2949 = saturate(_2945);  // [sem: _2945_sat]
                  _2950 = saturate(_2946);  // [sem: _2946_sat]
                  _2951 = saturate(_2947);  // [sem: _2947_sat]
                  _2954 = (_2948 * (1.0f - _2753)) + _2753;
                  _2957 = ((_2948 - _2954) * _2755.y) + _2954;
                  _2965 = (((_2753 * _2753) * _2755.z) * ((float)((bool)(_2777 != 0)))) * saturate(dot(float3(_603, _604, _605), float3(0.0f, 1.0f, 0.0f)));
                  _2966 = _2965 * -0.5f;
                  _2978 = ((_2966 * _2951) + _2951);
                  _2979 = ((_2966 * _2950) + _2950);
                  _2980 = ((_2966 * _2949) + _2949);
                  _2981 = (_2957 - (_2965 * _2957));
                  _2982 = (_1917 - (_2753 * _1917));
                } else {
                  _2978 = _1908;
                  _2979 = _1907;
                  _2980 = _1906;
                  _2981 = _1996;
                  _2982 = _1917;
                }
              } else {
                _2978 = _1908;
                _2979 = _1907;
                _2980 = _1906;
                _2981 = _1996;
                _2982 = _1917;
              }
            } else {
              if (!(_110 == 97)) {
                _2776 = 0;
                _2777 = ((int)(uint)((int)(_110 != 107)));
                if (_2755.w < 1.0f) {
                  if ((_weatherCheckFlag & 5) == 5) {
                    _2785 = (_110 == 36);
                    if (!_2785) {
                      // [sem: _3__36__0__0__g_climateSandTex_sampleLod]
                      _2812 = __3__36__0__0__g_climateSandTex.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + ((_viewPos.x + _1012) / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + ((_viewPos.z + _1030) / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                      _2818 = _2812.w;
                      _2819 = _2812.z;
                      _2820 = _2812.y;
                      _2821 = _2812.x;
                    } else {
                      _2818 = 0.5f;
                      _2819 = 0.1f;
                      _2820 = 0.12f;
                      _2821 = 0.12f;
                    }
                    _2831 = 1.0f - saturate(((_viewPos.y + _1021) - _paramGlobalSand.x) / _paramGlobalSand.y);
                    if (!(_2831 <= 0.0f)) {
                      _2834 = saturate(_2753);  // [sem: _2753_sat]
                      _2839 = ((_2820 * 0.33951f) + (_2819 * 0.04737f)) + (_2821 * 0.61312f);
                      _2844 = ((_2820 * 0.91636f) + (_2819 * 0.01345f)) + (_2821 * 0.0702f);
                      _2849 = ((_2820 * 0.10958f) + (_2819 * 0.8698f)) + (_2821 * 0.02062f);
                      _2855 = select((_2776 != 0), 1.0f, ((float)((bool)(saturate(dot(float3(_603, _604, _605), float3(0.0f, 1.0f, 0.0f))) > 0.5f))));
                      if (_enableSandAO == 1) {
                        _2861 = (1.0f - _2755.x) * 10.0f;
                        if (_2785) {
                          _2893 = saturate(((_2831 * _2818) * _2861) * _2834);  // [sem: _2889_sat]
                          _2894 = _2849;
                          _2895 = _2844;
                          _2896 = _2839;
                        } else {
                          _2869 = saturate(_2818 + -0.5f);  // [sem: expr_sat]
                          // [sem: _2889_sat]
                          _2893 = ((((_2834 * _2861) * saturate((0.5f - _2818) * 2.0f)) + ((_2869 * 2.0f) * max((_2855 * _2755.x), min((_2834 * ((_2755.x * 7.0f) + 3.0f)), (_2869 * 40.0f))))) * _2831);
                          _2894 = _2849;
                          _2895 = _2844;
                          _2896 = _2839;
                        }
                      } else {
                        _2889 = ((_2831 * _2818) * _2755.x) * _2855;
                        if (_2785) {
                          _2893 = saturate(_2889);  // [sem: _2889_sat]
                          _2894 = _2849;
                          _2895 = _2844;
                          _2896 = _2839;
                        } else {
                          _2893 = _2889;  // [sem: _2889_sat]
                          _2894 = _2849;
                          _2895 = _2844;
                          _2896 = _2839;
                        }
                      }
                    } else {
                      _2893 = 0.0f;  // [sem: _2889_sat]
                      _2894 = 0.0f;
                      _2895 = 0.0f;
                      _2896 = 0.0f;
                    }
                    _2900 = ((1.0f - _2755.w) * (1.0f - _2755.y)) * _2893;
                    if (_2900 > 0.0001f) {
                      _2903 = (_2776 == 0);
                      if (_2903) {
                        _2926 = ((_2894 - _1908) * _2900);
                        _2927 = ((_2895 - _1907) * _2900);
                        _2928 = ((_2896 - _1906) * _2900);
                      } else {
                        _2905 = saturate(_2900);  // [sem: _2900_sat]
                        _2926 = ((sqrt(_2894 * _1908) - _1908) * _2905);
                        _2927 = ((sqrt(_2895 * _1907) - _1907) * _2905);
                        _2928 = ((sqrt(_2896 * _1906) - _1906) * _2905);
                      }
                      _2929 = _1906 + _2928;
                      _2930 = _1907 + _2927;
                      _2931 = _2926 + _1908;
                      if (_2785) {
                        if (_2903) {
                          _2945 = _2929;
                          _2946 = _2930;
                          _2947 = _2931;
                          _2948 = ((_2900 * (0.25f - _1996)) + _1996);
                        } else {
                          _2945 = _2929;
                          _2946 = _2930;
                          _2947 = _2931;
                          _2948 = (((sqrt(_1996 * 0.25f) - _1996) * saturate(_2900)) + _1996);
                        }
                      } else {
                        _2945 = _2929;
                        _2946 = _2930;
                        _2947 = _2931;
                        _2948 = _1996;
                      }
                    } else {
                      _2945 = _1906;
                      _2946 = _1907;
                      _2947 = _1908;
                      _2948 = _1996;
                    }
                    _2949 = saturate(_2945);  // [sem: _2945_sat]
                    _2950 = saturate(_2946);  // [sem: _2946_sat]
                    _2951 = saturate(_2947);  // [sem: _2947_sat]
                    _2954 = (_2948 * (1.0f - _2753)) + _2753;
                    _2957 = ((_2948 - _2954) * _2755.y) + _2954;
                    _2965 = (((_2753 * _2753) * _2755.z) * ((float)((bool)(_2777 != 0)))) * saturate(dot(float3(_603, _604, _605), float3(0.0f, 1.0f, 0.0f)));
                    _2966 = _2965 * -0.5f;
                    _2978 = ((_2966 * _2951) + _2951);
                    _2979 = ((_2966 * _2950) + _2950);
                    _2980 = ((_2966 * _2949) + _2949);
                    _2981 = (_2957 - (_2965 * _2957));
                    _2982 = (_1917 - (_2753 * _1917));
                  } else {
                    _2978 = _1908;
                    _2979 = _1907;
                    _2980 = _1906;
                    _2981 = _1996;
                    _2982 = _1917;
                  }
                } else {
                  _2978 = _1908;
                  _2979 = _1907;
                  _2980 = _1906;
                  _2981 = _1996;
                  _2982 = _1917;
                }
              } else {
                _2978 = _1908;
                _2979 = _1907;
                _2980 = _1906;
                _2981 = _1996;
                _2982 = _1917;
              }
            }
          } else {
            _2776 = 0;
            _2777 = 1;
            if (_2755.w < 1.0f) {
              if ((_weatherCheckFlag & 5) == 5) {
                _2785 = (_110 == 36);
                if (!_2785) {
                  // [sem: _3__36__0__0__g_climateSandTex_sampleLod]
                  _2812 = __3__36__0__0__g_climateSandTex.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + ((_viewPos.x + _1012) / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + ((_viewPos.z + _1030) / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                  _2818 = _2812.w;
                  _2819 = _2812.z;
                  _2820 = _2812.y;
                  _2821 = _2812.x;
                } else {
                  _2818 = 0.5f;
                  _2819 = 0.1f;
                  _2820 = 0.12f;
                  _2821 = 0.12f;
                }
                _2831 = 1.0f - saturate(((_viewPos.y + _1021) - _paramGlobalSand.x) / _paramGlobalSand.y);
                if (!(_2831 <= 0.0f)) {
                  _2834 = saturate(_2753);  // [sem: _2753_sat]
                  _2839 = ((_2820 * 0.33951f) + (_2819 * 0.04737f)) + (_2821 * 0.61312f);
                  _2844 = ((_2820 * 0.91636f) + (_2819 * 0.01345f)) + (_2821 * 0.0702f);
                  _2849 = ((_2820 * 0.10958f) + (_2819 * 0.8698f)) + (_2821 * 0.02062f);
                  _2855 = select((_2776 != 0), 1.0f, ((float)((bool)(saturate(dot(float3(_603, _604, _605), float3(0.0f, 1.0f, 0.0f))) > 0.5f))));
                  if (_enableSandAO == 1) {
                    _2861 = (1.0f - _2755.x) * 10.0f;
                    if (_2785) {
                      _2893 = saturate(((_2831 * _2818) * _2861) * _2834);  // [sem: _2889_sat]
                      _2894 = _2849;
                      _2895 = _2844;
                      _2896 = _2839;
                    } else {
                      _2869 = saturate(_2818 + -0.5f);  // [sem: expr_sat]
                      // [sem: _2889_sat]
                      _2893 = ((((_2834 * _2861) * saturate((0.5f - _2818) * 2.0f)) + ((_2869 * 2.0f) * max((_2855 * _2755.x), min((_2834 * ((_2755.x * 7.0f) + 3.0f)), (_2869 * 40.0f))))) * _2831);
                      _2894 = _2849;
                      _2895 = _2844;
                      _2896 = _2839;
                    }
                  } else {
                    _2889 = ((_2831 * _2818) * _2755.x) * _2855;
                    if (_2785) {
                      _2893 = saturate(_2889);  // [sem: _2889_sat]
                      _2894 = _2849;
                      _2895 = _2844;
                      _2896 = _2839;
                    } else {
                      _2893 = _2889;  // [sem: _2889_sat]
                      _2894 = _2849;
                      _2895 = _2844;
                      _2896 = _2839;
                    }
                  }
                } else {
                  _2893 = 0.0f;  // [sem: _2889_sat]
                  _2894 = 0.0f;
                  _2895 = 0.0f;
                  _2896 = 0.0f;
                }
                _2900 = ((1.0f - _2755.w) * (1.0f - _2755.y)) * _2893;
                if (_2900 > 0.0001f) {
                  _2903 = (_2776 == 0);
                  if (_2903) {
                    _2926 = ((_2894 - _1908) * _2900);
                    _2927 = ((_2895 - _1907) * _2900);
                    _2928 = ((_2896 - _1906) * _2900);
                  } else {
                    _2905 = saturate(_2900);  // [sem: _2900_sat]
                    _2926 = ((sqrt(_2894 * _1908) - _1908) * _2905);
                    _2927 = ((sqrt(_2895 * _1907) - _1907) * _2905);
                    _2928 = ((sqrt(_2896 * _1906) - _1906) * _2905);
                  }
                  _2929 = _1906 + _2928;
                  _2930 = _1907 + _2927;
                  _2931 = _2926 + _1908;
                  if (_2785) {
                    if (_2903) {
                      _2945 = _2929;
                      _2946 = _2930;
                      _2947 = _2931;
                      _2948 = ((_2900 * (0.25f - _1996)) + _1996);
                    } else {
                      _2945 = _2929;
                      _2946 = _2930;
                      _2947 = _2931;
                      _2948 = (((sqrt(_1996 * 0.25f) - _1996) * saturate(_2900)) + _1996);
                    }
                  } else {
                    _2945 = _2929;
                    _2946 = _2930;
                    _2947 = _2931;
                    _2948 = _1996;
                  }
                } else {
                  _2945 = _1906;
                  _2946 = _1907;
                  _2947 = _1908;
                  _2948 = _1996;
                }
                _2949 = saturate(_2945);  // [sem: _2945_sat]
                _2950 = saturate(_2946);  // [sem: _2946_sat]
                _2951 = saturate(_2947);  // [sem: _2947_sat]
                _2954 = (_2948 * (1.0f - _2753)) + _2753;
                _2957 = ((_2948 - _2954) * _2755.y) + _2954;
                _2965 = (((_2753 * _2753) * _2755.z) * ((float)((bool)(_2777 != 0)))) * saturate(dot(float3(_603, _604, _605), float3(0.0f, 1.0f, 0.0f)));
                _2966 = _2965 * -0.5f;
                _2978 = ((_2966 * _2951) + _2951);
                _2979 = ((_2966 * _2950) + _2950);
                _2980 = ((_2966 * _2949) + _2949);
                _2981 = (_2957 - (_2965 * _2957));
                _2982 = (_1917 - (_2753 * _1917));
              } else {
                _2978 = _1908;
                _2979 = _1907;
                _2980 = _1906;
                _2981 = _1996;
                _2982 = _1917;
              }
            } else {
              _2978 = _1908;
              _2979 = _1907;
              _2980 = _1906;
              _2981 = _1996;
              _2982 = _1917;
            }
          }
        }
        _2989 = _2753;
        _2990 = (half)(half(_2978));
        _2991 = (half)(half(_2979));
        _2992 = (half)(half(_2980));
        _2993 = (half)(half(_2981));
        _2994 = (half)(half(_2982));
      } else {
        _2989 = _2689;
        _2990 = _1064;
        _2991 = _1065;
        _2992 = _1066;
        _2993 = _1067;
        _2994 = _1068;
      }
    } else {
      _2989 = _2689;
      _2990 = _1064;
      _2991 = _1065;
      _2992 = _1066;
      _2993 = _1067;
      _2994 = _1068;
    }
    half4 _2996 = __3__36__0__0__g_sceneShadowColor.Load(int3(_89, _94, 0));  // [sem: _3__36__0__0__g_sceneShadowColor_load]
    _3000 = float(_2996.x);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    _3001 = float(_2996.y);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    _3002 = float(_2996.z);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    [branch]
    if (_1034) {
      _3005 = __3__36__0__0__g_sceneNormal.Load(int3(_89, _94, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
      _3011 = min(1.0f, ((((float)((uint)((uint)(_3005.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _3017 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_3005.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _3023 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_3005.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _3025 = rsqrt(dot(float3(_3011, _3017, _3023), float3(_3011, _3017, _3023)));  // [sem: invLength]
      _3033 = (half)(half(_3025 * _3023));
      _3034 = (half)(half(_3025 * _3017));
      _3035 = (half)(half(_3025 * _3011));
    } else {
      _3033 = _258;
      _3034 = _257;
      _3035 = _256;
    }
    _3038 = (_sunDirection.y > 0.0f);
    if (_3038) {
      _3054 = _sunDirection.x;
      _3055 = _sunDirection.y;
      _3056 = _sunDirection.z;
      _3071 = _3054;
      _3072 = _3055;
      _3073 = _3056;
      _3074 = _precomputedAmbient7.y;
    } else {
      _3045 = (_sunDirection.y > _moonDirection.y);
      _3050 = select(_3045, _sunDirection.z, _moonDirection.z);
      _3051 = select(_3045, _sunDirection.x, _moonDirection.x);
      _3052 = select(_3045, _sunDirection.y, _moonDirection.y);
      if (_3045) {
        _3054 = _3051;
        _3055 = _3052;
        _3056 = _3050;
        _3071 = _3054;
        _3072 = _3055;
        _3073 = _3056;
        _3074 = _precomputedAmbient7.y;
      } else {
        _3071 = _3051;
        _3072 = _3052;
        _3073 = _3050;
        _3074 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
      }
    }
    _3077 = _viewPos.x + _1012;
    _3082 = (_viewPos.y + _1021) + _earthRadius;
    _3084 = _viewPos.z + _1030;
    _3090 = sqrt(((_3084 * _3084) + (_3077 * _3077)) + (_3082 * _3082));
    _3094 = dot(float3((_3077 / _3090), (_3082 / _3090), (_3084 / _3090)), float3(_3071, _3072, _3073));
    _3101 = min(max(((_3090 - _earthRadius) / _atmosphereThickness), 16.0f), (_atmosphereThickness + -16.0f));
    _3102 = max(_3101, 0.0f);
    _3109 = (-0.0f - sqrt((_3102 + (_earthRadius * 2.0f)) * _3102)) / (_3102 + _earthRadius);
    if (_3094 > _3109) {
      _3132 = ((exp2(log2(saturate((_3094 - _3109) / (1.0f - _3109))) * 0.2f) * 0.4921875f) + 0.50390625f);
    } else {
      _3132 = ((exp2(log2(saturate((_3109 - _3094) / (_3109 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
    }
    // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
    _3143 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_3101 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f), _3132), 0.0f);
    _3152 = ((_3143.y * 2e-05f) * _mieAerosolDensity) * (_mieAerosolAbsorption + 1.0f);  // [sem: _3__36__0__0__g_texNetDensity_sampleLod_derived]
    _3166 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.0556001e-06f)) * _3143.x) + _3152) * -1.442695f);
    _3176 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 4.9788005e-06f)) * _3143.x) + _3152) * -1.442695f);
    _3185 = exp2(((((((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.1360002e-07f)) * _3143.x) + _3152) * -1.442695f);
    _3186 = sqrt(_1985);
    _3194 = (_cloudAltitude - (max(((_3186 * _3186) + -400000.0f), 0.0f) * 1e-06f)) - _viewPos.y;
    _3206 = (_cloudThickness * (0.5f - (((float)((int)((int)((int)(uint)((int)(_3072 > 0.0f))) - (int)((int)(uint)((int)(_3072 < 0.0f)))))) * 0.5f))) + _3194;
    if (_1021 < _3194) {
      _3209 = dot(float3(0.0f, 1.0f, 0.0f), float3(_3071, _3072, _3073));
      _3215 = select((abs(_3209) < 1e-08f), 1e+08f, ((_3206 - dot(float3(0.0f, 1.0f, 0.0f), float3(_1012, _1021, _1030))) / _3209));
      _3221 = ((_3215 * _3073) + _1030);
      _3222 = _3206;
      _3223 = ((_3215 * _3071) + _1012);
    } else {
      _3221 = _1030;
      _3222 = _1021;
      _3223 = _1012;
    }
    _3226 = saturate(abs(_3072) * 4.0f);  // [sem: expr_sat]
    _3245 = (_3226 * _3226) * exp2(((_distanceScale * -1.442695f) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_3223 * 5e-05f) + 0.5f), ((_3222 - _3194) / _cloudThickness), ((_3221 * 5e-05f) + 0.5f)), 0.0f)).x)) * (_cloudScatteringCoefficient / _distanceScale));
    _3252 = ((1.0f - _3245) * saturate(((_1021 - _cloudThickness) - _3194) * 0.1f)) + _3245;
    _3258 = _3252 * (((_3176 * 0.33951f) + (_3166 * 0.61312f)) + (_3185 * 0.04737f));
    _3264 = _3252 * (((_3176 * 0.91636f) + (_3166 * 0.0702f)) + (_3185 * 0.01345f));
    _3270 = _3252 * (((_3176 * 0.10958f) + (_3166 * 0.02062f)) + (_3185 * 0.8698f));
    if (_552) {
      if ((uint)_110 < (uint)20) {
        if (_110 == 19) {
          _3308 = float(_3033);
          _3309 = float(_3034);
          _3310 = float(_3035);
          _3311 = 1;
          _3312 = 0;
          _3313 = 1;
          _3314 = 19;
        } else {
          _3285 = 1;
          _3293 = select(((_110 == 28) || ((_575 == 26) || _2177)), 1, ((int)(uint)((int)(_110 == 106))));
          _3294 = (int)(uint)((int)(_110 == 107));
          _3295 = float(_3035);
          _3296 = float(_3034);
          _3297 = float(_3033);
          if (_110 == 97) {
            _3308 = _3297;
            _3309 = _3296;
            _3310 = _3295;
            _3311 = _3294;
            _3312 = _3293;
            _3313 = _3285;
            _3314 = ((int)((uint)((uint)((int)(min16uint)((int)(((int)(((uint16_t)(__3__36__0__0__g_sceneDecalMask.Load(int3(_89, _94, 0)))).x)) & 2)))) >> 1) + (int)(97));
          } else {
            _3308 = _3297;
            _3309 = _3296;
            _3310 = _3295;
            _3311 = _3294;
            _3312 = _3293;
            _3313 = _3285;
            _3314 = _110;
          }
        }
      } else {
        if (!(_110 == 107)) {
          _3285 = ((int)(uint)((int)(_110 == 20)));
        } else {
          _3285 = 1;
        }
        _3293 = select(((_110 == 28) || ((_575 == 26) || _2177)), 1, ((int)(uint)((int)(_110 == 106))));
        _3294 = (int)(uint)((int)(_110 == 107));
        _3295 = float(_3035);
        _3296 = float(_3034);
        _3297 = float(_3033);
        if (_110 == 97) {
          _3308 = _3297;
          _3309 = _3296;
          _3310 = _3295;
          _3311 = _3294;
          _3312 = _3293;
          _3313 = _3285;
          _3314 = ((int)((uint)((uint)((int)(min16uint)((int)(((int)(((uint16_t)(__3__36__0__0__g_sceneDecalMask.Load(int3(_89, _94, 0)))).x)) & 2)))) >> 1) + (int)(97));
        } else {
          _3308 = _3297;
          _3309 = _3296;
          _3310 = _3295;
          _3311 = _3294;
          _3312 = _3293;
          _3313 = _3285;
          _3314 = _110;
        }
      }
    } else {
      _3285 = ((int)(uint)((int)(_110 == 20)));
      _3293 = select(((_110 == 28) || ((_575 == 26) || _2177)), 1, ((int)(uint)((int)(_110 == 106))));
      _3294 = (int)(uint)((int)(_110 == 107));
      _3295 = float(_3035);
      _3296 = float(_3034);
      _3297 = float(_3033);
      if (_110 == 97) {
        _3308 = _3297;
        _3309 = _3296;
        _3310 = _3295;
        _3311 = _3294;
        _3312 = _3293;
        _3313 = _3285;
        _3314 = ((int)((uint)((uint)((int)(min16uint)((int)(((int)(((uint16_t)(__3__36__0__0__g_sceneDecalMask.Load(int3(_89, _94, 0)))).x)) & 2)))) >> 1) + (int)(97));
      } else {
        _3308 = _3297;
        _3309 = _3296;
        _3310 = _3295;
        _3311 = _3294;
        _3312 = _3293;
        _3313 = _3285;
        _3314 = _110;
      }
    }
    _3316 = float(saturate(_184));
    _3317 = _3316 * _3316;
    _3318 = _3317 * _3317;
    _3319 = _3318 * _3318;
    _3334 = ((_3319 * _3319) * select((_284 || (((int)(_3312) | (int)(_3311)) != 0)), 0.0f, 1.0f)) * (((float4)(__3__36__0__0__g_puddleMask.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((_bufferSizeAndInvSize.z * _96), (_bufferSizeAndInvSize.w * _98)), 0.0f))).y);
    _3336 = _3310 - (_3334 * _3310);
    _3339 = (_3334 * (1.0f - _3309)) + _3309;
    _3341 = _3308 - (_3334 * _3308);
    _3343 = rsqrt(dot(float3(_3336, _3339, _3341), float3(_3336, _3339, _3341)));  // [sem: invLength]
    _3344 = _3336 * _3343;
    _3345 = _3339 * _3343;
    _3346 = _3341 * _3343;
    if ((_3038) || ((!(_3038)) && (_sunDirection.y > _moonDirection.y))) {
      _3358 = _sunDirection.z;
      _3359 = _sunDirection.y;
      _3360 = _sunDirection.x;
    } else {
      _3358 = _moonDirection.z;
      _3359 = _moonDirection.y;
      _3360 = _moonDirection.x;
    }
    _3363 = _lightingParams.x * _3074;
    // RenoDX: >>> [Patch: DirectLightMatrixFix] [Version: 1.16.00]
    // Description: The game converts the direct beam's transmittance to working space a second time
    //              here: _3258/_3264/_3270 are already the working-space result of that same matrix
    //              applied to the exp2 transmittance triple, scaled by the cloud blend. The matrix
    //              has unit row sums, so applying it twice preserves luminance and only desaturates,
    //              most visibly at low sun where the beam is strongly tinted. On uses the single
    //              conversion so low-sun light keeps the colour of the sky it arrives through.
    _3369 = (DIRECT_LIGHT_MATRIX_FIX != 0.f) ? (_3363 * _3258) : (_3363 * (((_3258 * 0.61312f) + (_3264 * 0.33951f)) + (_3270 * 0.04737f)));
    _3375 = (DIRECT_LIGHT_MATRIX_FIX != 0.f) ? (_3363 * _3264) : (_3363 * (((_3258 * 0.0702f) + (_3264 * 0.91636f)) + (_3270 * 0.01345f)));
    _3381 = (DIRECT_LIGHT_MATRIX_FIX != 0.f) ? (_3363 * _3270) : (_3363 * (((_3258 * 0.02062f) + (_3264 * 0.10958f)) + (_3270 * 0.8698f)));
    // RenoDX: <<< [Patch: DirectLightMatrixFix]
    _3382 = _3360 - _1071;
    _3383 = _3359 - _1073;
    _3384 = _3358 - _1075;
    _3386 = rsqrt(dot(float3(_3382, _3383, _3384), float3(_3382, _3383, _3384)));  // [sem: invLength]
    _3387 = _3386 * _3382;
    _3388 = _3386 * _3383;
    _3389 = _3386 * _3384;
    _3390 = dot(float3(_3310, _3309, _3308), float3(_3360, _3359, _3358));
    _3391 = dot(float3(_3344, _3345, _3346), float3(_3360, _3359, _3358));
    _3393 = saturate(dot(float3(_3310, _3309, _3308), float3(_1072, _1074, _1076)));  // [sem: expr_sat]
    _3395 = saturate(dot(float3(_3344, _3345, _3346), float3(_3387, _3388, _3389)));  // [sem: expr_sat]
    _3397 = saturate(dot(float3(_3360, _3359, _3358), float3(_3387, _3388, _3389)));  // [sem: expr_sat]
    _3399 = float(max(0.010002136h, _2993));
    _3400 = saturate(_3390);  // [sem: _3390_sat]
    _3401 = _3399 * _3399;
    _3402 = _3401 * _3401;
    _3403 = 1.0f - _3402;
    _3404 = 1.0f - _3397;
    _3405 = _3404 * _3404;
    _3408 = ((_3405 * _3405) * _3404) + _3397;
    _3409 = 1.0f - _3400;
    _3410 = _3409 * _3409;
    _3411 = 1.0f - _3393;
    _3412 = _3411 * _3411;
    // [sem: expr_sat]
    _3444 = saturate((_3400 * 0.31830987f) * ((((((1.0f - ((_3410 * _3410) * (_3409 * 0.75f))) * (1.0f - ((_3412 * _3412) * (_3411 * 0.75f)))) - _3408) * saturate((_3403 * 2.2f) + -0.5f)) + _3408) + ((exp2(-0.0f - (max(((_3403 * 73.2f) + -21.2f), 8.9f) * sqrt(_3395))) * _3397) * ((((_3403 * 34.5f) + -59.0f) * _3403) + 24.5f))));
    _3445 = _3314 & 126;
    if (_3314 == 98) {
      _3485 = float(_2990);
      _3486 = float(_2991);
      _3487 = float(_2992);
      _3488 = false;
      _3489 = 0.0f;
      _3490 = 1.0f;  // [sem: expr_sat]
    } else {
      if (_3445 == 96) {
        _3462 = 1;
        if (_3314 == 65) {
          _3485 = float(_2990);
          _3486 = float(_2991);
          _3487 = float(_2992);
          _3488 = false;
          _3489 = 0.0f;
          _3490 = 1.0f;  // [sem: expr_sat]
        } else {
          _3465 = _3462;
          _3470 = select(((_3314 == 107) || (_3465 != 0)), 0.0f, float(_2994));
          _3472 = float(_2992);
          _3473 = float(_2991);
          _3474 = float(_2990);
          if (_3314 == 52) {
            _3485 = _3474;
            _3486 = _3473;
            _3487 = _3472;
            _3488 = true;
            _3489 = _3470;
            _3490 = saturate(((_3473 + _3474) + _3472) * 1.2f);  // [sem: expr_sat]
          } else {
            _3485 = _3474;
            _3486 = _3473;
            _3487 = _3472;
            _3488 = false;
            _3489 = _3470;
            _3490 = 1.0f;  // [sem: expr_sat]
          }
        }
      } else {
        if ((uint)((int)(_3314) + (int)(-105)) < (uint)2) {
          _3465 = ((int)(uint)(_167));
          _3470 = select(((_3314 == 107) || (_3465 != 0)), 0.0f, float(_2994));
          _3472 = float(_2992);
          _3473 = float(_2991);
          _3474 = float(_2990);
          if (_3314 == 52) {
            _3485 = _3474;
            _3486 = _3473;
            _3487 = _3472;
            _3488 = true;
            _3489 = _3470;
            _3490 = saturate(((_3473 + _3474) + _3472) * 1.2f);  // [sem: expr_sat]
          } else {
            _3485 = _3474;
            _3486 = _3473;
            _3487 = _3472;
            _3488 = false;
            _3489 = _3470;
            _3490 = 1.0f;  // [sem: expr_sat]
          }
        } else {
          if ((uint)((int)(_3314) + (int)(-11)) < (uint)9) {
            _3485 = float(_2990);
            _3486 = float(_2991);
            _3487 = float(_2992);
            _3488 = false;
            _3489 = 0.0f;
            _3490 = 1.0f;  // [sem: expr_sat]
          } else {
            _3462 = 0;
            if (_3314 == 65) {
              _3485 = float(_2990);
              _3486 = float(_2991);
              _3487 = float(_2992);
              _3488 = false;
              _3489 = 0.0f;
              _3490 = 1.0f;  // [sem: expr_sat]
            } else {
              _3465 = _3462;
              _3470 = select(((_3314 == 107) || (_3465 != 0)), 0.0f, float(_2994));
              _3472 = float(_2992);
              _3473 = float(_2991);
              _3474 = float(_2990);
              if (_3314 == 52) {
                _3485 = _3474;
                _3486 = _3473;
                _3487 = _3472;
                _3488 = true;
                _3489 = _3470;
                _3490 = saturate(((_3473 + _3474) + _3472) * 1.2f);  // [sem: expr_sat]
              } else {
                _3485 = _3474;
                _3486 = _3473;
                _3487 = _3472;
                _3488 = false;
                _3489 = _3470;
                _3490 = 1.0f;  // [sem: expr_sat]
              }
            }
          }
        }
      }
    }
    _3496 = (0.7f / min(max(max(max(_3487, _3486), _3485), 0.01f), 0.7f)) * _3490;
    _3500 = (((_3496 * _3487) + -0.04f) * _3489) + 0.04f;
    _3504 = (((_3496 * _3486) + -0.04f) * _3489) + 0.04f;
    _3508 = (((_3496 * _3485) + -0.04f) * _3489) + 0.04f;
    _3509 = float(_2993);
    _3510 = (_3445 == 64);
    _3513 = ((((int)(uint)(_3510)) & _2697) == 0);
    if (_3513) {
      _3525 = saturate(exp2((_3509 * _3509) * (_114 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _3525 = select((_cavityParams.z > 0.0f), 0.0f, 1.0f);  // [sem: expr_sat]
    }
    _3526 = select(_2716, 1.0f, _3525);
    if (_3510) {
      _3532 = (_3526 * _3500);
      _3533 = (_3526 * _3504);
      _3534 = (_3526 * _3508);
    } else {
      _3532 = _3500;
      _3533 = _3504;
      _3534 = _3508;
    }
    _3538 = saturate(1.0f - saturate(dot(float3(_1072, _1074, _1076), float3(_3387, _3388, _3389))));  // [sem: expr_sat]
    _3539 = _3538 * _3538;
    _3541 = (_3539 * _3539) * _3538;
    _3544 = _3541 * saturate(_3533 * 50.0f);
    _3545 = 1.0f - _3541;
    if (!_284) {
      _3547 = saturate(_3391);  // [sem: _3391_sat]
      _3548 = 1.0f - _3401;
      _3552 = (((_3402 * _3395) - _3395) * _3395) + 1.0f;
      _3564 = (0.5f / ((((_3548 * _3393) + _3401) * _3391) + (((_3548 * _3391) + _3401) * _3393))) * (_3402 / ((_3552 * _3552) * 3.1415927f));
      _3584 = ((_3547 * _3000) * max((_3564 * ((_3545 * _3532) + _3544)), 0.0f));
      _3585 = ((_3547 * _3001) * max((_3564 * ((_3545 * _3533) + _3544)), 0.0f));
      _3586 = ((_3547 * _3002) * max((_3564 * ((_3545 * _3534) + _3544)), 0.0f));
    } else {
      _3584 = 0.0f;
      _3585 = 0.0f;
      _3586 = 0.0f;
    }
    // RenoDX: >>> [Patch: FoliageTransmission] [Version: 1.16.00]
    // Description: Vanilla shades foliage stencil materials (stencil ids 12..18) with an opaque
    //              diffuse lobe, so leaves lit from behind go black instead of glowing. This block
    //              adds a back-lit transmission term for those materials on the direct-light path
    //              this shader takes when the material table is not consulted: the helper returns the
    //              light that passes through the leaf, which is accumulated into the resolved direct
    //              diffuse further down, plus a replacement scale for the front-facing diffuse lobe so
    //              total energy stays bounded. When the helper reports no scale, a wrapped-diffuse
    //              fallback derived from the raw N.L is used instead. Gated by FOLIAGE_TRANSMISSION;
    //              at 0 the transmission accumulators stay zero and the vanilla diffuse term is
    //              untouched.
    if (FOLIAGE_TRANSMISSION > 0.0f && ((uint)(_110 - 12) < 7u)) {
      FoliageTransmissionResult _rndx_ftResult = FoliageTransmission(
          float3(_1072, _1074, _1076),
          float3(_3360, _3359, _3358),
          float3(_3310, _3309, _3308),
          _3390,
          float3(_3487, _3486, _3485),
          float3(_3000, _3001, _3002),
          float3(_3369, _3375, _3381),
          FOLIAGE_TRANSMISSION_THICKNESS);
      _rndx_foliageTransR = _rndx_ftResult.transmission.x;
      _rndx_foliageTransG = _rndx_ftResult.transmission.y;
      _rndx_foliageTransB = _rndx_ftResult.transmission.z;
      if (_rndx_ftResult.diffuseScale > 0.0f) {
        _3444 *= _rndx_ftResult.diffuseScale;
      } else {
        float _rndx_wrap = 0.25f * (1.0f - FOLIAGE_TRANSMISSION_THICKNESS);
        _3444 = max(0.0f, (_3390 + _rndx_wrap) / (1.0f + _rndx_wrap)) * 0.31830987334251404f * 0.75f;
      }
    }
    // RenoDX: <<< [Patch: FoliageTransmission]
    if ((_3313 != 0) || (_3445 == 6)) {
      _3596 = ((max(0.0f, (0.3f - _3390)) * 0.23190688f) + _3444);
    } else {
      _3596 = _3444;
    }
    _3600 = ((_3369 * _3000) * _3596) + (_1894 * _1803);
    _3604 = ((_3375 * _3001) * _3596) + (_1897 * _1803);
    _3608 = ((_3381 * _3002) * _3596) + (_1900 * _1803);
    // RenoDX: >>> [Patch: FoliageTransmission] [Version: 1.16.00]
    // Description: Adds the gated foliage transmission accumulated above to the three clean-decompile direct-diffuse outputs after all native component equations have completed. With the feature disabled the accumulators are zero, so this insertion is exactly neutral.
    _3600 += _rndx_foliageTransR;
    _3604 += _rndx_foliageTransG;
    _3608 += _rndx_foliageTransB;
    // RenoDX: <<< [Patch: FoliageTransmission]
    _3611 = (uint)((uint)(_frameNumber.x)) * (uint)(13);
    [branch]
    if ((((int)((int)((uint)((uint)(_3611)) + (uint)((uint)(_89)))) | (int)((int)((uint)((uint)(_3611)) + (uint)((uint)(_94))))) & 31) == 0) {
      __3__38__0__1__g_sceneColorLightingOnlyForAwbUAV[int2(((int)(_89) >> 5), ((int)(_94) >> 5))] = float4((half)(half(_3600)), (half)(half(_3604)), (half)(half(_3608)), 1.0f);
    }
    _3626 = ((uint)(_3314 & 24) > (uint)23);
    if (_3513) {
      _3640 = saturate(exp2((_3509 * _3509) * (_114 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _3640 = select((_cavityParams.z > 0.0f), select(_168, 0.0f, _1070), 1.0f);  // [sem: expr_sat]
    }
    _3649 = select(_3510, 1.0f, (select((_cavityParams.x == 0.0f), 1.0f, _3640) * select((_167 && _3626), (1.0f - _1070), 1.0f)));
    _3659 = min(60000.0f, (_3649 * (((_2735 * _2647) * ((_2730.x * _2725) + _2730.y)) - min(0.0f, (-0.0f - (_3369 * _3584))))));
    _3669 = min(60000.0f, (_3649 * (((_2735 * _2662) * ((_2730.x * _2724) + _2730.y)) - min(0.0f, (-0.0f - (_3375 * _3585))))));
    _3679 = min(60000.0f, ((((_2735 * _2677) * ((_2730.x * _2723) + _2730.y)) - min(0.0f, (-0.0f - (_3381 * _3586)))) * _3649));
    _3682 = 1.0f - _renderParams.x;
    _3685 = half((_renderParams.x * _3487) + _3682);
    _3688 = half((_renderParams.x * _3486) + _3682);
    _3691 = half((_renderParams.x * _3485) + _3682);
    if (_3510) {
      if (_renderParams2.x == 0.0f) {
        _3707 = (half)(exp2((half)((half)(log2(_3685)) * 0.5h)));
        _3708 = (half)(exp2((half)((half)(log2(_3688)) * 0.5h)));
        _3709 = (half)(exp2((half)((half)(log2(_3691)) * 0.5h)));
      } else {
        _3707 = _3685;
        _3708 = _3688;
        _3709 = _3691;
      }
    } else {
      _3707 = _3685;
      _3708 = _3688;
      _3709 = _3691;
    }
    _3710 = float(_3707);
    _3711 = float(_3708);
    _3712 = float(_3709);
    if (_3488) {
      _3719 = saturate(((_3711 + _3710) + _3712) * 1.2f);  // [sem: expr_sat]
    } else {
      _3719 = 1.0f;  // [sem: expr_sat]
    }
    _3720 = float(_2994);
    _3726 = (0.7f / min(max(max(max(_3710, _3711), _3712), 0.01f), 0.7f)) * _3719;
    _3729 = ((_3726 * _3710) + -0.04f) * _3720;
    _3732 = ((_3726 * _3711) + -0.04f) * _3720;
    _3735 = ((_3726 * _3712) + -0.04f) * _3720;
    _3736 = _3729 + 0.04f;
    _3737 = _3732 + 0.04f;
    _3738 = _3735 + 0.04f;
    _3740 = (_3736 * _2730.x) + _2730.y;
    _3742 = (_3737 * _2730.x) + _2730.y;
    _3744 = (_3738 * _2730.x) + _2730.y;
    _3746 = (1.0f - _2730.y) - _2730.x;
    _3749 = ((0.96f - _3729) * 0.04761905f) + _3736;
    _3752 = ((0.96f - _3732) * 0.04761905f) + _3737;
    _3755 = ((0.96f - _3735) * 0.04761905f) + _3738;
    _3762 = saturate(1.0f - _2989) * _3746;
    _3763 = _3762 * ((_3740 * _3749) / (1.0f - (_3749 * _3746)));
    _3768 = ((_3742 * _3752) / (1.0f - (_3752 * _3746))) * _3762;
    _3773 = ((_3744 * _3755) / (1.0f - (_3755 * _3746))) * _3762;
    _3775 = float(1.0h - _2994);
    _3782 = half(((_3710 * _3775) * saturate((1.0f - _3763) - _3740)) + _3763);
    _3789 = half(((_3711 * _3775) * saturate((1.0f - _3768) - _3742)) + _3768);
    _3796 = half(((_3712 * _3775) * saturate((1.0f - _3773) - _3744)) + _3773);
    _3798 = float(_3782) * _3600;
    _3800 = float(_3789) * _3604;
    _3802 = float(_3796) * _3608;
    _3804 = _3798 + (_3659 * _3720);
    _3806 = _3800 + (_3669 * _3720);
    _3808 = _3802 + (_3679 * _3720);
    if (!(((_122 || _124) || _126) || _128)) {
      _3813 = QuadReadLaneAt(_3804, 0);
      _3814 = QuadReadLaneAt(_3806, 0);
      _3815 = QuadReadLaneAt(_3808, 0);
      _3816 = QuadReadLaneAt(_3804, 1);
      _3817 = QuadReadLaneAt(_3806, 1);
      _3818 = QuadReadLaneAt(_3808, 1);
      _3819 = QuadReadLaneAt(_3804, 2);
      _3820 = QuadReadLaneAt(_3806, 2);
      _3821 = QuadReadLaneAt(_3808, 2);
      _3822 = QuadReadLaneAt(_3804, 3);
      _3823 = QuadReadLaneAt(_3806, 3);
      _3824 = QuadReadLaneAt(_3808, 3);
      _3838 = ((((_3816 + _3813) + _3819) + _3822) * 0.25f);
      _3839 = ((((_3817 + _3814) + _3820) + _3823) * 0.25f);
      _3840 = ((((_3818 + _3815) + _3821) + _3824) * 0.25f);
    } else {
      _3838 = _3804;
      _3839 = _3806;
      _3840 = _3808;
    }
    [branch]
    if ((((int)(_94) | (int)(_89)) & 1) == 0) {
      _3845 = dot(float3(_3838, _3839, _3840), float3(0.212671f, 0.71516f, 0.072169f));
      __3__38__0__1__g_diffuseHalfPrevUAV[int2(((int)(_89) >> 1), ((int)(_94) >> 1))] = float4(min(60000.0f, _3838), min(60000.0f, _3839), min(60000.0f, _3840), min(60000.0f, select((_1700 != 0), (-0.0f - _3845), _3845)));
    }
    if (_3626) {
      if (_2994 == 0.0h) {
        _3866 = (((_3782 == 0.0h) || (_3789 == 0.0h)) || (_3796 == 0.0h));
      } else {
        _3866 = false;
      }
      _3881 = ((int)(uint)(_3866));
      __3__38__0__1__g_sceneSpecularUAV[int2(_89, _94)] = float4(((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _3659)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _3669)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _3679)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _2689)))))));
      _3904 = _3881;
      _3905 = _3798;
      _3906 = _3800;
      _3907 = _3802;
    } else {
      bool __branch_chain_3868;
      if (((_3314 == 96) || (_3314 == 53)) || ((_3314 & 124) == 64)) {
        _3881 = 0;
        __branch_chain_3868 = true;
      } else {
        if ((_114 <= 10.0f) && ((uint)((int)(_3314) + (int)(-97)) < (uint)2)) {
          _3881 = 0;
          __branch_chain_3868 = true;
        } else {
          __branch_chain_3868 = false;
        }
      }
      if (__branch_chain_3868) {
        __3__38__0__1__g_sceneSpecularUAV[int2(_89, _94)] = float4(((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _3659)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _3669)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _3679)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _2689)))))));
        _3904 = _3881;
        _3905 = _3798;
        _3906 = _3800;
        _3907 = _3802;
      } else {
        _3904 = 0;
        _3905 = (_3798 + _3659);
        _3906 = (_3800 + _3669);
        _3907 = (_3802 + _3679);
      }
    }
    _3908 = min(60000.0f, _3905);
    _3909 = min(60000.0f, _3906);
    _3910 = min(60000.0f, _3907);
    if (!_119) {
      [branch]
      if (!(_3904 == 0)) {
        _3916 = __3__38__0__1__g_sceneColorUAV[int2(_89, _94)].x;
        _3917 = __3__38__0__1__g_sceneColorUAV[int2(_89, _94)].y;
        _3918 = __3__38__0__1__g_sceneColorUAV[int2(_89, _94)].z;
        _3923 = (_3916 + _3908);
        _3924 = (_3917 + _3909);
        _3925 = (_3918 + _3910);
      } else {
        _3923 = _3908;
        _3924 = _3909;
        _3925 = _3910;
      }
      if (!(_renderParams.y == 0.0f)) {
        _3930 = dot(float3(_3923, _3924, _3925), float3(0.212671f, 0.71516f, 0.072169f));
        _3935 = min((max(0.01f, _exposure3.w) * 4096.0f), _3930);
        _3936 = max(1e-09f, _3930);
        _3944 = ((_3935 * _3923) / _3936);
        _3945 = ((_3935 * _3924) / _3936);
        _3946 = ((_3935 * _3925) / _3936);
      } else {
        _3944 = _3923;
        _3945 = _3924;
        _3946 = _3925;
      }
      // RenoDX: >>> [Patch: FoliageFinalAO] [Version: 1.16.00]
      // Description: Applies RenoDX foliage ambient-occlusion darkening to the final direct-lit scene
      //              color for foliage stencil materials (stencil ids 12..18). Vanilla leaves the
      //              direct sun contribution on foliage almost entirely unoccluded, so dense canopies
      //              read flat and over-bright. The occlusion factor is rebuilt from the shader's own
      //              blended multi-tap AO accumulator (which stores occlusion, hence the 1 - x), and
      //              is blended in proportionally to how directly lit the pixel is, taken from the
      //              shadow-map colour, so already shadowed foliage is not darkened twice. Gated by
      //              FOLIAGE_AO_STRENGTH; at 0 the block does not execute, and the lerp keeps the
      //              multiplier at exactly 1.0 for fully shadowed pixels.
      if (FOLIAGE_AO_STRENGTH > 0.0f && ((uint)(_110 - 12) < 7u)) {
        half4 _rndx_shadow = __3__36__0__0__g_sceneShadowColor.Load(int3(_89, _94, 0));
        float _rndx_directRatio = saturate(dot(float3(_rndx_shadow.xyz), float3(0.333f, 0.333f, 0.333f)));
        float _rndx_sceneAO = saturate(1.0f - _1951);
        float _rndx_ao = lerp(1.0f, _rndx_sceneAO, _rndx_directRatio * FOLIAGE_AO_STRENGTH);
        _3944 *= _rndx_ao;
        _3945 *= _rndx_ao;
        _3946 *= _rndx_ao;
      }
      // RenoDX: <<< [Patch: FoliageFinalAO]
      __3__38__0__1__g_sceneColorUAV[int2(_89, _94)] = float4(_3944, _3945, _3946, 1.0f);
    }
  }
}
