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

Texture2D<float4> __3__36__0__0__g_specularResult : register(t152, space36);

Texture2D<float2> __3__36__0__0__g_iblBrdfLookup : register(t154, space36);

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
  int _62;
  int _63;
  int4 _71;
  int _81;
  int _85;
  uint _91;
  uint _93;
  float _96;
  float _97;
  float _101;
  float _102;
  float _104;
  uint2 _107;
  int _109;
  float _112;
  float _113;
  bool _118;
  float _119;
  float _120;
  bool _121;
  float _122;
  bool _123;
  float _124;
  bool _125;
  float _126;
  bool _127;
  half _268;
  half _269;
  half _270;
  half _271;
  half _272;
  int _456;
  int _505;
  int _506;
  float _507;
  float _508;
  bool _609;
  float _830;
  float _831;
  bool _1025;
  half _1033;
  float _1086;
  float _1097;
  float _1098;
  float _1106;
  float _1107;
  half _1108;
  half _1109;
  half _1110;
  half _1111;
  half _1112;
  bool _1142;
  float _1151;
  float _1192;
  float _1193;
  float _1281;
  float _1359;
  float _1516;
  float _1517;
  float _1518;
  float _1519;
  float _1682;
  int _1683;
  float _1740;
  float _1751;
  float _1782;
  float _1867;
  float _1868;
  float _1869;
  float _1870;
  float _1875;
  float _1900;
  float _1928;
  bool _1939;
  half _1946;
  float _2083;
  float _2133;
  float _2150;
  float _2154;
  half _2175;
  half _2178;
  half _2179;
  float _2285;
  float _2331;
  float _2346;
  float _2446;
  int _2447;
  int _2448;
  float _2449;
  float _2450;
  float _2451;
  float _2452;
  float _2606;
  float _2607;
  float _2608;
  float _2609;
  float _2673;
  float _2683;
  float _2684;
  float _2685;
  bool _2760;
  bool _2761;
  float _2797;
  float _2798;
  float _2799;
  float _2800;
  float _2866;
  float _2869;
  float _2870;
  float _2871;
  float _2872;
  float _2907;
  float _2908;
  float _2909;
  float _2924;
  float _2953;
  float _2954;
  float _2955;
  float _2956;
  float _2957;
  half _2964;
  half _2965;
  half _2966;
  half _2967;
  half _2968;
  float _2969;
  half _3008;
  half _3009;
  half _3010;
  float _3025;
  float _3026;
  float _3027;
  float _3047;
  float _3112;
  float _3209;
  float _3210;
  float _3211;
  bool _3268;
  bool _3277;
  bool _3280;
  bool _3281;
  int _3295;
  float _3338;
  float _3339;
  float _3340;
  bool _3420;
  float _3428;
  float _3439;
  float _3474;
  float _3481;
  float _3482;
  float _3483;
  float _3532;
  float _3533;
  float _3534;
  float _3543;
  float _3587;
  half _3639;
  half _3640;
  half _3641;
  float _3651;
  float _3769;
  float _3770;
  float _3771;
  bool _3797;
  float _3833;
  float _3834;
  float _3835;
  float _3850;
  float _3851;
  float _3852;
  float _3871;
  float _3872;
  float _3873;
  uint4 _136;
  float4 _142;
  half _151;
  half _155;
  half _160;
  half _169;
  half _173;
  uint _176;
  bool _177;
  bool _178;
  float _188;
  float _189;
  float _190;
  float _192;
  half _196;
  half _197;
  half _198;
  int _199;
  bool _200;
  half _213;
  half _214;
  float _219;
  float _220;
  float _224;
  float _226;
  float _233;
  float _234;
  float _235;
  float _237;
  float _240;
  float _241;
  float _242;
  float _243;
  float _250;
  float _251;
  float _252;
  half _274;
  half _275;
  half _276;
  half _277;
  half _281;
  half _282;
  half _283;
  half _299;
  half _300;
  half _301;
  bool _302;
  bool _303;
  bool _304;
  uint _323;
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
  int _485;
  int _486;
  int4 _511;
  int _516;
  int _520;
  int _524;
  int _528;
  float _555;
  float _560;
  float _561;
  float _562;
  float _563;
  float _564;
  float _565;
  float _566;
  float _567;
  int _568;
  int _569;
  int _570;
  int _571;
  bool _599;
  float _611;
  float _616;
  float _618;
  bool _635;
  bool _636;
  bool _637;
  int4 _666;
  float _685;
  float _686;
  float _687;
  float _689;
  float _693;
  float _694;
  float _695;
  float _711;
  float _712;
  float _713;
  float _715;
  float _734;
  float _735;
  float _736;
  float _738;
  float _757;
  float _758;
  float _759;
  float _761;
  float _766;
  float _779;
  float _780;
  float _781;
  float _782;
  float _787;
  float _790;
  float _793;
  float _796;
  float _799;
  float _832;
  float _833;
  float _834;
  float _835;
  float _836;
  float _837;
  float _838;
  float _839;
  bool _848;
  float _857;
  float _858;
  float _859;
  float _860;
  float _861;
  float _862;
  float _867;
  float _868;
  float _869;
  float _870;
  float _874;
  float _883;
  float _884;
  float _885;
  float _886;
  half4 _888;
  uint _898;
  half4 _899;
  uint _912;
  half4 _913;
  half4 _926;
  float4 _940;
  float4 _947;
  float4 _957;
  float4 _967;
  float _983;
  float _984;
  float _985;
  half2 _987;
  half2 _994;
  half2 _1002;
  half2 _1010;
  float _1035;
  float _1037;
  float _1073;
  float _1074;
  float _1075;
  float _1076;
  float _1078;
  bool _1080;
  uint _1088;
  half _1099;
  bool _1101;
  float _1113;
  float _1114;
  float _1115;
  float _1116;
  float _1117;
  float _1118;
  float _1120;
  int _1121;
  bool _1122;
  float _1179;
  float2 _1186;
  float _1195;
  float _1198;
  float _1199;
  float _1207;
  float _1213;
  float _1214;
  int _1217;
  int _1218;
  float _1219;
  float _1220;
  float _1225;
  float _1226;
  int4 _1228;
  int _1251;
  float _1289;
  float _1290;
  float _1291;
  float _1292;
  float _1296;
  float _1313;
  float _1314;
  float _1317;
  bool _1332;
  float _1334;
  float _1336;
  int _1339;
  bool _1340;
  float _1365;
  float _1370;
  float _1371;
  float _1372;
  float _1373;
  float _1374;
  float _1375;
  float _1376;
  float _1377;
  float _1379;
  float _1392;
  float _1393;
  float _1394;
  float _1395;
  int _1397;
  int _1398;
  int _1399;
  int _1400;
  bool _1422;
  bool _1426;
  bool _1430;
  bool _1434;
  bool _1447;
  bool _1456;
  bool _1478;
  int4 _1521;
  float _1540;
  float _1541;
  float _1542;
  float _1544;
  float _1549;
  float _1564;
  float _1565;
  float _1566;
  float _1568;
  float _1573;
  float _1588;
  float _1589;
  float _1590;
  float _1592;
  float _1597;
  float _1612;
  float _1613;
  float _1614;
  float _1616;
  float _1621;
  float _1624;
  float _1641;
  float _1642;
  float _1643;
  float _1644;
  float _1649;
  float _1651;
  float _1653;
  float _1655;
  float _1657;
  float _1658;
  float _1659;
  float _1660;
  int _1663;
  int _1664;
  int _1672;
  int _1674;
  float _1693;
  uint _1694;
  half4 _1696;
  uint _1701;
  half4 _1702;
  half4 _1707;
  half4 _1712;
  float _1717;
  float _1726;
  float _1731;
  float _1744;
  float _1747;
  float _1752;
  float _1754;
  float4 _1757;
  float _1762;
  float _1764;
  float _1766;
  float _1767;
  float _1768;
  float _1769;
  float _1824;
  float _1841;
  float _1842;
  float _1843;
  float _1846;
  float _1862;
  float _1882;
  float _1883;
  float _1884;
  float _1891;
  float _1892;
  float _1893;
  float _1901;
  float _1907;
  float _1917;
  float _1918;
  float _1919;
  float _1920;
  float _1948;
  float _1952;
  float _1953;
  float _1954;
  float _1960;
  float _1968;
  float _1972;
  float _1976;
  float _1986;
  float _1987;
  float _1988;
  float _1989;
  float _1994;
  float _1999;
  float _2001;
  float _2003;
  float _2027;
  float _2031;
  float _2035;
  float _2039;
  float _2069;
  float _2074;
  float _2075;
  float _2089;
  float _2093;
  float _2098;
  float _2124;
  float _2135;
  float _2141;
  bool _2142;
  float _2161;
  half _2167;
  half _2173;
  float _2180;
  float _2181;
  float _2182;
  float _2195;
  float _2196;
  float _2197;
  float _2198;
  float _2238;
  float _2243;
  float _2244;
  float _2245;
  float _2246;
  float _2256;
  float _2259;
  float _2275;
  float _2313;
  float _2316;
  float _2317;
  float _2318;
  float _2319;
  float _2347;
  float _2358;
  float _2359;
  int _2362;
  int _2363;
  float _2364;
  float _2365;
  int4 _2375;
  int _2382;
  float _2411;
  float _2412;
  float _2413;
  float _2414;
  float _2429;
  float _2430;
  float _2431;
  float _2432;
  bool _2453;
  uint _2454;
  half4 _2456;
  float _2469;
  uint _2475;
  half4 _2476;
  float _2489;
  half4 _2499;
  float _2512;
  half4 _2522;
  float _2535;
  float _2559;
  float _2561;
  float _2563;
  float _2565;
  float _2566;
  float _2575;
  float _2578;
  float _2585;
  float _2610;
  float _2611;
  float _2612;
  float _2625;
  float _2635;
  float _2636;
  float _2637;
  float _2649;
  float _2654;
  bool _2655;
  int _2657;
  bool _2676;
  float _2677;
  float2 _2690;
  float _2701;
  float _2732;
  float4 _2741;
  bool _2771;
  float4 _2791;
  float _2807;
  float _2810;
  float _2823;
  float _2824;
  float _2825;
  float _2830;
  float _2835;
  float _2846;
  float _2864;
  float _2876;
  bool _2877;
  float _2880;
  float _2925;
  float _2926;
  float _2927;
  float _2932;
  float _2935;
  float _2942;
  float _2943;
  half4 _2971;
  float _2975;
  float _2976;
  float _2977;
  uint _2980;
  float _2996;
  float _2997;
  float _2998;
  float _3000;
  bool _3013;
  float _3054;
  float _3056;
  float _3057;
  float _3063;
  float _3068;
  float _3074;
  float _3082;
  float _3089;
  float2 _3116;
  float _3138;
  float _3156;
  float _3157;
  float _3158;
  float _3174;
  float _3182;
  float _3194;
  float _3197;
  float _3203;
  float _3231;
  float _3233;
  float _3240;
  float _3241;
  float _3242;
  float _3243;
  bool _3271;
  float _3282;
  float _3283;
  float _3284;
  float _3300;
  float _3301;
  float _3302;
  float _3303;
  float _3314;
  float _3319;
  float _3320;
  float _3321;
  float _3323;
  float _3324;
  float _3325;
  float _3326;
  float _3341;
  float _3342;
  float _3343;
  float _3344;
  float _3345;
  float _3346;
  float _3347;
  float _3349;
  float _3350;
  float _3351;
  float _3352;
  float _3353;
  float _3354;
  float _3356;
  float _3358;
  float _3361;
  float _3363;
  float _3364;
  float _3365;
  float _3366;
  float _3367;
  float _3368;
  float _3369;
  float _3372;
  float _3373;
  float _3374;
  float _3379;
  float _3380;
  float _3408;
  int _3409;
  bool _3429;
  float _3430;
  float _3431;
  float _3432;
  float _3445;
  float _3455;
  float _3456;
  float _3457;
  float _3458;
  bool _3459;
  bool _3462;
  float _3475;
  float _3486;
  float _3487;
  float _3489;
  float _3492;
  float _3493;
  float _3501;
  float _3502;
  float _3514;
  float _3518;
  float _3550;
  float _3551;
  float _3552;
  uint _3555;
  bool _3570;
  float _3605;
  float _3609;
  float _3610;
  float _3611;
  float _3614;
  half _3621;
  half _3622;
  half _3623;
  float _3642;
  float _3643;
  float _3644;
  float _3652;
  float _3658;
  float _3665;
  float _3666;
  float _3667;
  float _3668;
  float _3669;
  float _3670;
  float _3674;
  float _3675;
  float _3676;
  float _3678;
  float _3685;
  float _3686;
  float _3687;
  float _3704;
  float _3705;
  float _3706;
  float _3707;
  float _3718;
  half _3728;
  half _3729;
  half _3730;
  float _3734;
  float _3735;
  float _3736;
  float _3740;
  float _3741;
  float _3742;
  float _3744;
  float _3745;
  float _3746;
  float _3747;
  float _3748;
  float _3749;
  float _3753;
  float _3754;
  float _3755;
  float _3759;
  float _3760;
  float _3761;
  float _3776;
  float _3836;
  float _3837;
  float _3838;
  float _3843;
  float _3844;
  float _3845;
  float _3861;
  float _3862;
  float _3866;
  int _49[4];
  _62 = (int)(SV_GroupID.x) & 15;
  _63 = (uint)((uint)(_62)) >> 2;
  _71 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 7))]);
  _49[0] = _71.x;
  _49[1] = _71.y;
  _49[2] = _71.z;
  _49[3] = _71.w;
  _81 = _49[(((uint)(SV_GroupID.x) >> 5) & 3)];
  _85 = select((((int)(SV_GroupID.x) & 16) == 0), _81, ((uint)((uint)(_81)) >> 16));
  _91 = (uint)((uint)((uint)((int)((int)(_62) - (int)((int)(_63) << 2)) << 3)) + (uint)(SV_GroupThreadID.x)) + (uint)((uint)(((int)((uint)((uint)(_85)) << 5)) & 8160));
  _93 = (uint)((uint)((uint)((int)(_63) << 3)) + (uint)(SV_GroupThreadID.y)) + (uint)((uint)(((uint)((uint)(_85)) >> 3) & 8160));
  _96 = ((float)((uint)((uint)(_91)))) + 0.5f;
  _97 = ((float)((uint)((uint)(_93)))) + 0.5f;
  _101 = _bufferSizeAndInvSize.z * _96;
  _102 = _97 * _bufferSizeAndInvSize.w;
  _104 = __3__36__0__0__g_depth.Load(int3(_91, _93, 0));  // [sem: _3__36__0__0__g_depth_load]
  _107 = __3__36__0__0__g_stencil.Load(int3(_91, _93, 0));  // [sem: _3__36__0__0__g_stencil_load]
  _109 = _107.x & 127;  // [sem: _3__36__0__0__g_stencil_load_derived]
  _112 = max(1e-07f, _104.x);  // [sem: _3__36__0__0__g_depth_load_derived]
  _113 = _nearFarProj.x / _112;
  _118 = ((_104.x < 1e-07f) || (_104.x == 1.0f)) || (_109 == 10);
  _119 = (float)((bool)(_118));
  _120 = QuadReadLaneAt(_119, 0);
  _121 = !(_120 == 0.0f);
  _122 = QuadReadLaneAt(_119, 1);
  _123 = !(_122 == 0.0f);
  _124 = QuadReadLaneAt(_119, 2);
  _125 = !(_124 == 0.0f);
  _126 = QuadReadLaneAt(_119, 3);
  _127 = !(_126 == 0.0f);
  if (!(((_121 && _123) && _125) && _127)) {
    _136 = __3__36__0__0__g_baseColor.Load(int3(_91, _93, 0));  // [sem: _3__36__0__0__g_baseColor_load]
    _142 = __3__36__0__0__g_normal.Load(int3(_91, _93, 0));  // [sem: _3__36__0__0__g_normal_load]
    _151 = half(((float)((uint)((uint)(((uint)((uint)(_136.x)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _155 = half(((float)((uint)((uint)(_136.x & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _160 = half(((float)((uint)((uint)(((uint)((uint)(_136.y)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _169 = half(((float)((uint)((uint)(((uint)((uint)(_136.w)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _173 = half(((float)((uint)((uint)(_136.w & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _176 = (uint)((_142.w * 3.0f) + 0.5f);  // [sem: _3__36__0__0__g_normal_load_derived]
    _177 = (_176 == 1);
    _178 = (_176 == 3);
    _188 = (saturate(_142.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _189 = (saturate(_142.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _190 = (saturate(_142.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _192 = rsqrt(dot(float3(_188, _189, _190), float3(_188, _189, _190)));  // [sem: invLength]
    _196 = half(_192 * _188);
    _197 = half(_192 * _189);
    _198 = half(_190 * _192);
    _199 = _107.x & 126;  // [sem: _3__36__0__0__g_stencil_load_derived]
    _200 = (_199 == 24);
    if (!_200) {
      _213 = ((half)(_169 * 2.0h)) + -1.0h;
      _214 = ((half)(_173 * 2.0h)) + -1.0h;
      _219 = float(_213 + _214) * 0.5f;
      _220 = float(_213 - _214) * 0.5f;
      _224 = (1.0f - abs(_219)) - abs(_220);
      _226 = rsqrt(dot(float3(_219, _220, _224), float3(_219, _220, _224)));  // [sem: invLength]
      _233 = float(_196);
      _234 = float(_197);
      _235 = float(_198);
      _237 = select((_198 >= 0.0h), 1.0f, -1.0f);
      _240 = -0.0f - (1.0f / (_237 + _235));
      _241 = _234 * _240;
      _242 = _241 * _233;
      _243 = _237 * _233;
      _250 = float(half(_226 * _219));
      _251 = float(half(_226 * _220));
      _252 = float(half(_226 * _224));
      _268 = (half)(half(((float)((uint)((uint)(_136.z & 255)))) * 0.003921569f));
      _269 = (half)(half(((float)((uint)((uint)(((uint)((uint)(_136.z)) >> 8) & 255)))) * 0.003921569f));
      _270 = (half)(half(mad(_252, _233, mad(_251, _242, (_250 * (((_243 * _233) * _240) + 1.0f))))));
      _271 = (half)(half(mad(_252, _234, mad(_251, ((_241 * _234) + _237), ((_250 * _237) * _242)))));
      _272 = (half)(half(mad(_252, _235, mad(_251, (-0.0f - _234), (-0.0f - (_243 * _250))))));
    } else {
      _268 = _173;
      _269 = _169;
      _270 = _196;
      _271 = _197;
      _272 = _198;
    }
    _274 = rsqrt((half)(dot(half3(_270, _271, _272), half3(_270, _271, _272))));  // [sem: invLength]
    _275 = _274 * _270;
    _276 = _274 * _271;
    _277 = _274 * _272;
    _281 = saturate((half)(_151 * _151));  // [sem: expr_sat]
    _282 = saturate((half)(_155 * _155));  // [sem: expr_sat]
    _283 = saturate((half)(_160 * _160));  // [sem: expr_sat]
    // [sem: expr_sat]
    _299 = saturate((half)(((half)(((half)(_282 * 0.3395996h)) + ((half)(_281 * 0.61328125h)))) + ((half)(_283 * 0.04736328h))));
    // [sem: expr_sat]
    _300 = saturate((half)(((half)(((half)(_282 * 0.9165039h)) + ((half)(_281 * 0.07019043h)))) + ((half)(_283 * 0.013450623h))));
    // [sem: expr_sat]
    _301 = saturate((half)(((half)(((half)(_282 * 0.109558105h)) + ((half)(_281 * 0.020614624h)))) + ((half)(_283 * 0.8696289h))));
    _302 = (_109 == 24);
    _303 = (_109 == 29);
    _304 = _302 || _303;
    if (_303) {
      _323 = (uint)((uint)((_bufferSizeAndInvSize.x * ((float)((int)(_93)))) + ((float)((int)(_91))))) + (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524))));
      _331 = (uint)((uint)((((int)((uint)((uint)((uint)(_323)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_323)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_323)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
      _339 = (uint)((uint)((((int)((uint)((uint)((uint)(_331)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_331)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_331)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_323));
      _347 = (uint)((uint)((((int)((uint)((uint)((uint)(_339)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_339)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_339)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_331));
      _355 = (uint)((uint)((((int)((uint)((uint)((uint)(_347)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_347)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_347)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_339));
      _363 = (uint)((uint)((((int)((uint)((uint)((uint)(_355)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_355)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_355)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_347));
      _371 = (uint)((uint)((((int)((uint)((uint)((uint)(_363)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_363)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_363)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_355));
      _379 = (uint)((uint)((((int)((uint)((uint)((uint)(_371)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_371)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_371)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_363));
      _387 = (uint)((uint)((((int)((uint)((uint)((uint)(_379)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_379)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_379)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_371));
      _395 = (uint)((uint)((((int)((uint)((uint)((uint)(_387)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_387)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_387)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_379));
      _403 = (uint)((uint)((((int)((uint)((uint)((uint)(_395)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_395)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_395)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_387));
      _411 = (uint)((uint)((((int)((uint)((uint)((uint)(_403)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_403)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_403)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_395));
      _419 = (uint)((uint)((((int)((uint)((uint)((uint)(_411)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_411)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_411)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_403));
      _427 = (uint)((uint)((((int)((uint)((uint)((uint)(_419)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_419)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_419)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_411));
      _435 = (uint)((uint)((((int)((uint)((uint)((uint)(_427)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_427)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_427)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_419));
      _443 = (uint)((uint)((((int)((uint)((uint)((uint)(_435)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_435)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_435)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_427));
      if ((_435 & 16777215) == 0) {
        _456 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_443)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_443)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_443)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_435))));
      } else {
        _456 = _435;
      }
      _485 = (int)(min(max(((((saturate(1.0f - (_113 * 0.015625f)) * 4.0f) * ((((float)((uint)((uint)(((int)((uint)((uint)(_456)) * (uint)(48271))) & 16777215)))) * 1.1920929e-07f) + -1.0f)) + ((float)((int)((int)((uint)((uint)(max((int)(1), (int)(_91)))) + (uint)(-1)))))) * 0.5f), 0.0f), ((_bufferSizeAndInvSize.x * 0.5f) + -2.0f)));
      _486 = (int)(min(max((((float)((int)((int)((uint)((uint)(max((int)(1), (int)(_93)))) + (uint)(-1))))) * 0.5f), 0.0f), ((_bufferSizeAndInvSize.y * 0.5f) + -2.0f)));
      _505 = _485;
      _506 = _486;
      _507 = ((_bufferSizeAndInvSize.z * 2.0f) * (((float)((int)(_485))) + 0.5f));
      _508 = ((_bufferSizeAndInvSize.w * 2.0f) * (((float)((int)(_486))) + 0.5f));
    } else {
      _505 = ((int)((int)((uint)((uint)(max((int)(1), (int)(_91)))) + (uint)(-1))) >> 1);
      _506 = ((int)((int)((uint)((uint)(max((int)(1), (int)(_93)))) + (uint)(-1))) >> 1);
      _507 = _101;
      _508 = _102;
    }
    _511 = __3__36__0__0__g_normalDepthHalf.GatherGreen(__3__40__0__0__g_samplerPoint, float2(_507, _508));  // [sem: _3__36__0__0__g_normalDepthHalf_gather]
    _516 = (uint)((uint)(_511.w)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _520 = (uint)((uint)(_511.z)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _524 = (uint)((uint)(_511.x)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _528 = (uint)((uint)(_511.y)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _555 = (max(0.0f, (_113 + -1.0f)) * 0.05f) * _temporalReprojectionParams.y;
    _560 = max(0.0f, (abs(_113 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_511.w & 16777215)))) * 5.960465e-08f)))) - _555));
    _561 = max(0.0f, (abs(_113 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_511.z & 16777215)))) * 5.960465e-08f)))) - _555));
    _562 = max(0.0f, (abs(_113 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_511.x & 16777215)))) * 5.960465e-08f)))) - _555));
    _563 = max(0.0f, (abs(_113 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_511.y & 16777215)))) * 5.960465e-08f)))) - _555));
    _564 = _560 * _560;
    _565 = _561 * _561;
    _566 = _562 * _562;
    _567 = _563 * _563;
    _568 = _516 & 127;
    _569 = _520 & 127;
    _570 = _524 & 127;
    _571 = _528 & 127;
    _599 = ((uint)_109 > (uint)11);
    if (_599) {
      if (!(((uint)_109 < (uint)21) || (_109 == 107))) {
        _609 = (_109 == 7);
      } else {
        _609 = true;
      }
    } else {
      if (!(_109 == 6)) {
        _609 = (_109 == 7);
      } else {
        _609 = true;
      }
    }
    _611 = _113 * _113;
    _616 = (_611 * 0.2f) + 1.0f;
    _618 = select(_609, -7.213475f, -72.13475f) * (1.0f / ((select(_609, 0.05f, 0.01f) * _611) + 1.0f));
    _635 = (_199 == 66);
    _636 = (_109 == 53);
    _637 = _635 || _636;
    _666 = __3__36__0__0__g_normalDepthHalf.GatherRed(__3__40__0__0__g_samplerPoint, float2(_507, _508));  // [sem: _3__36__0__0__g_normalDepthHalf_gather]
    _685 = min(1.0f, ((((float)((uint)((uint)(_666.w & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _686 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_666.w)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _687 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_666.w)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _689 = rsqrt(dot(float3(_685, _686, _687), float3(_685, _686, _687)));  // [sem: invLength]
    _693 = float(_275);
    _694 = float(_276);
    _695 = float(_277);
    _711 = min(1.0f, ((((float)((uint)((uint)(_666.z & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _712 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_666.z)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _713 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_666.z)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _715 = rsqrt(dot(float3(_711, _712, _713), float3(_711, _712, _713)));  // [sem: invLength]
    _734 = min(1.0f, ((((float)((uint)((uint)(_666.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _735 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_666.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _736 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_666.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _738 = rsqrt(dot(float3(_734, _735, _736), float3(_734, _735, _736)));  // [sem: invLength]
    _757 = min(1.0f, ((((float)((uint)((uint)(_666.y & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _758 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_666.y)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _759 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_666.y)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _761 = rsqrt(dot(float3(_757, _758, _759), float3(_757, _758, _759)));  // [sem: invLength]
    _766 = select(_303, 8192.0f, 256.0f);
    _779 = exp2(log2(saturate(dot(float3(_693, _694, _695), float3((_689 * _685), (_689 * _686), (_689 * _687))))) * _766);
    _780 = exp2(log2(saturate(dot(float3(_693, _694, _695), float3((_715 * _711), (_715 * _712), (_715 * _713))))) * _766);
    _781 = exp2(log2(saturate(dot(float3(_693, _694, _695), float3((_738 * _734), (_738 * _735), (_738 * _736))))) * _766);
    _782 = exp2(log2(saturate(dot(float3(_693, _694, _695), float3((_761 * _757), (_761 * _758), (_761 * _759))))) * _766);
    _787 = 1.0f / max(1e-06f, (((_780 + _779) + _781) + _782));
    _790 = ((select((_564 > _616), 0.0f, exp2(_618 * _564)) * ((float)((bool)(!(_637 ^ (((_516 & 126) == 66) || (_568 == 53))))))) * _779) * _787;
    _793 = ((select((_565 > _616), 0.0f, exp2(_618 * _565)) * ((float)((bool)(!(_637 ^ (((_520 & 126) == 66) || (_569 == 53))))))) * _780) * _787;
    _796 = ((select((_566 > _616), 0.0f, exp2(_618 * _566)) * ((float)((bool)(!(_637 ^ (((_524 & 126) == 66) || (_570 == 53))))))) * _781) * _787;
    _799 = ((select((_567 > _616), 0.0f, exp2(_618 * _567)) * ((float)((bool)(!(_637 ^ (((_528 & 126) == 66) || (_571 == 53))))))) * _782) * _787;
    if (_303) {
      _830 = abs(((((float)((int)(_91))) * 0.5f) + -0.25f) - ((float)((int)(_505))));
      _831 = abs(((((float)((int)(_93))) * 0.5f) + -0.25f) - ((float)((int)(_506))));
    } else {
      _830 = (((float)((uint)((uint)((uint)((uint)(_91)) - (uint)((uint)((uint)(_505)) << 1)) - (uint)((uint)(_frameNumber.x & 1))))) * 0.5f);
      _831 = (((float)((uint)((uint)((uint)((uint)(_93)) - (uint)((uint)((uint)(_506)) << 1)) - (uint)((uint)(((uint)((uint)(_frameNumber.x)) >> 1) & 1))))) * 0.5f);
    }
    _832 = saturate(_830);  // [sem: _830_sat]
    _833 = saturate(_831);  // [sem: _831_sat]
    _834 = 1.0f - _832;
    _835 = 1.0f - _833;
    _836 = _835 * _834;
    _837 = _835 * _832;
    _838 = _834 * _833;
    _839 = _833 * _832;
    _848 = (_109 != 29) && ((_799 == 0.0f) && ((_796 == 0.0f) && ((_790 == 0.0f) && (_793 == 0.0f))));
    _857 = saturate(_836 * select(_848, 1.0f, _790));  // [sem: expr_sat]
    _858 = saturate(_837 * select(_848, 1.0f, _793));  // [sem: expr_sat]
    _859 = saturate(_838 * select(_848, 1.0f, _796));  // [sem: expr_sat]
    _860 = saturate(_839 * select(_848, 1.0f, _799));  // [sem: expr_sat]
    _861 = dot(float4(_857, _858, _859, _860), float4(1.0f, 1.0f, 1.0f, 1.0f));
    _862 = max(0.0f, _861);
    _867 = saturate(_857 / _862);  // [sem: expr_sat]
    _868 = saturate(_858 / _862);  // [sem: expr_sat]
    _869 = saturate(_859 / _862);  // [sem: expr_sat]
    _870 = saturate(_860 / _862);  // [sem: expr_sat]
    _874 = (float)((bool)(((((_571 == 6) || ((_571 == 107) || ((uint)((int)(_571) + (int)(-12)) < (uint)9))) || (((_570 == 6) || ((_570 == 107) || ((uint)((int)(_570) + (int)(-12)) < (uint)9))) || (((_568 == 6) || ((_568 == 107) || ((uint)((int)(_568) + (int)(-12)) < (uint)9))) || ((_569 == 6) || ((_569 == 107) || ((uint)((int)(_569) + (int)(-12)) < (uint)9)))))) || _609) && (_861 < 0.0001f)));
    _883 = ((_836 - _867) * _874) + _867;
    _884 = ((_837 - _868) * _874) + _868;
    _885 = ((_838 - _869) * _874) + _869;
    _886 = ((_839 - _870) * _874) + _870;
    half4 _888 = __3__36__0__0__g_diffuseResult.Load(int3(_505, _506, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    _898 = (uint)((uint)(_505)) + (uint)(1);
    half4 _899 = __3__36__0__0__g_diffuseResult.Load(int3(_898, _506, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    _912 = (uint)((uint)(_506)) + (uint)(1);
    half4 _913 = __3__36__0__0__g_diffuseResult.Load(int3(_505, _912, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    half4 _926 = __3__36__0__0__g_diffuseResult.Load(int3(_898, _912, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    _940 = __3__36__0__0__g_specularResult.Load(int3(_505, _506, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _947 = __3__36__0__0__g_specularResult.Load(int3(_898, _506, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _957 = __3__36__0__0__g_specularResult.Load(int3(_505, _912, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _967 = __3__36__0__0__g_specularResult.Load(int3(_898, _912, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _983 = -0.0f - min(0.0f, (-0.0f - ((((float(_888.x) * _883) + (float(_899.x) * _884)) + (float(_913.x) * _885)) + (float(_926.x) * _886))));
    _984 = -0.0f - min(0.0f, (-0.0f - ((((float(_888.y) * _883) + (float(_899.y) * _884)) + (float(_913.y) * _885)) + (float(_926.y) * _886))));
    _985 = -0.0f - min(0.0f, (-0.0f - ((((float(_888.z) * _883) + (float(_899.z) * _884)) + (float(_913.z) * _885)) + (float(_926.z) * _886))));
    half2 _987 = __3__36__0__0__g_sceneAO.Load(int3(_505, _506, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    half2 _994 = __3__36__0__0__g_sceneAO.Load(int3(_898, _506, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    half2 _1002 = __3__36__0__0__g_sceneAO.Load(int3(_505, _912, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    half2 _1010 = __3__36__0__0__g_sceneAO.Load(int3(_898, _912, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    if (_599) {
      if ((uint)_109 < (uint)20) {
        _1033 = 0.0h;
      } else {
        _1025 = ((uint)_109 < (uint)19);
        if ((_109 == 65) || (((_109 == 107) || (_109 == 96)) || _1025)) {
          _1033 = 0.0h;
        } else {
          _1033 = (half)(select(_304, 0.0f, (half)(half(((float)((uint)((uint)(_136.y & 255)))) * 0.003921569f))));
        }
      }
    } else {
      if ((uint)_109 > (uint)10) {
        _1033 = 0.0h;
      } else {
        _1025 = false;
        if ((_109 == 65) || (((_109 == 107) || (_109 == 96)) || _1025)) {
          _1033 = 0.0h;
        } else {
          _1033 = (half)(select(_304, 0.0f, (half)(half(((float)((uint)((uint)(_136.y & 255)))) * 0.003921569f))));
        }
      }
    }
    _1035 = (_101 * 2.0f) + -1.0f;
    _1037 = 1.0f - (_102 * 2.0f);
    _1073 = mad((_invViewProjRelative[3].z), _112, mad((_invViewProjRelative[3].y), _1037, ((_invViewProjRelative[3].x) * _1035))) + (_invViewProjRelative[3].w);
    _1074 = (mad((_invViewProjRelative[0].z), _112, mad((_invViewProjRelative[0].y), _1037, ((_invViewProjRelative[0].x) * _1035))) + (_invViewProjRelative[0].w)) / _1073;
    _1075 = (mad((_invViewProjRelative[1].z), _112, mad((_invViewProjRelative[1].y), _1037, ((_invViewProjRelative[1].x) * _1035))) + (_invViewProjRelative[1].w)) / _1073;
    _1076 = (mad((_invViewProjRelative[2].z), _112, mad((_invViewProjRelative[2].y), _1037, ((_invViewProjRelative[2].x) * _1035))) + (_invViewProjRelative[2].w)) / _1073;
    _1078 = rsqrt(dot(float3(_1074, _1075, _1076), float3(_1074, _1075, _1076)));  // [sem: invLength]
    _1080 = ((uint)(_107.x & 24) > (uint)23);  // [sem: _3__36__0__0__g_stencil_load_derived]
    if (_1080) {
      if (_303) {
        _1086 = float(saturate(_269));
      } else {
        _1086 = 0.0f;
      }
      _1088 = (uint)((half)(_268 * 255.0h));
      if (_177) {
        _1097 = select(((_1088 & 128) != 0), 1.0f, 0.0f);
        _1098 = (((float)((uint)((uint)(_1088 & 127)))) * 0.007874016f);
      } else {
        _1097 = 0.0f;
        _1098 = 0.0f;
      }
      _1099 = half(_1098);
      _1101 = (_1099 > 0.99902344h);
      _1106 = _1097;
      _1107 = _1086;
      _1108 = _1099;
      _1109 = (half)(select(_304, 0.010002136f, _269));
      _1110 = (half)(select(_1101, 1.0f, _299));
      _1111 = (half)(select(_1101, 1.0f, _300));
      _1112 = (half)(select(_1101, 1.0f, _301));
    } else {
      _1106 = 0.0f;
      _1107 = 0.0f;
      _1108 = _1033;
      _1109 = _269;
      _1110 = _299;
      _1111 = _300;
      _1112 = _301;
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
    if (FOLIAGE_COLOR_CORRECT > 0.0f && ((uint)(_109 - 12) < 7u)) {
      float3 _rndx_fcBaseColor = float3(float(_1110), float(_1111), float(_1112));
      half4 _rndx_fcShadow = __3__36__0__0__g_sceneShadowColor.Load(int3(_91, _93, 0));
      float _rndx_fcShadowVis = saturate(dot(float3(_rndx_fcShadow.xyz), float3(0.2126f, 0.7152f, 0.0722f)));
      float3 _rndx_fcCorrected = FoliageColorCorrect(_rndx_fcBaseColor, _sunDirection.xyz, _rndx_fcShadowVis, float3(1.0f, 1.0f, 1.0f));
      float3 _rndx_fscColor = FoliageSelectiveColor(_rndx_fcCorrected);
      _1110 = half(_rndx_fscColor.x);
      _1111 = half(_rndx_fscColor.y);
      _1112 = half(_rndx_fscColor.z);
    }
    // RenoDX: <<< [Patch: FoliageColorCorrect]
    _1113 = _1078 * _1074;
    _1114 = -0.0f - _1113;
    _1115 = _1078 * _1075;
    _1116 = -0.0f - _1115;
    _1117 = _1078 * _1076;
    _1118 = -0.0f - _1117;
    _1120 = saturate(dot(float3(_1114, _1116, _1118), float3(_693, _694, _695)));  // [sem: expr_sat]
    _1121 = _107.x & 128;  // [sem: _3__36__0__0__g_stencil_load_derived]
    _1122 = (_1121 == 0);
    if (_1122) {
      if ((uint)_109 > (uint)51) {
        if (!(((_107.x & 125) == 105) || ((uint)_109 < (uint)68))) {
          _1142 = (_109 == 98);
        } else {
          _1142 = true;
        }
      } else {
        if ((uint)_109 > (uint)10) {
          if ((uint)_109 < (uint)20) {
            if (_199 == 14) {
              _1142 = (_109 == 98);
            } else {
              _1142 = true;
            }
          } else {
            if (!((_107.x & 125) == 105)) {
              _1142 = (_109 == 98);
            } else {
              _1142 = true;
            }
          }
        } else {
          _1142 = (_109 == 98);
        }
      }
    } else {
      _1142 = true;
    }
    [branch]
    if (_1080) {
      _1151 = (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(_91, _93, 0)))).x) & 16777215)))) * 5.960465e-08f);
    } else {
      _1151 = _104.x;
    }
    _1179 = mad((_projToPrevProj[3].z), _1151, mad((_projToPrevProj[3].y), _1037, ((_projToPrevProj[3].x) * _1035))) + (_projToPrevProj[3].w);
    if (_1142) {
      _1186 = __3__36__0__0__g_velocity.Load(int3(_91, _93, 0));  // [sem: _3__36__0__0__g_velocity_load]
      _1192 = (_1186.x * 2.0f);
      _1193 = (_1186.y * 2.0f);
    } else {
      _1192 = (((mad((_projToPrevProj[0].z), _1151, mad((_projToPrevProj[0].y), _1037, ((_projToPrevProj[0].x) * _1035))) + (_projToPrevProj[0].w)) / _1179) - _1035);
      _1193 = (((mad((_projToPrevProj[1].z), _1151, mad((_projToPrevProj[1].y), _1037, ((_projToPrevProj[1].x) * _1035))) + (_projToPrevProj[1].w)) / _1179) - _1037);
    }
    _1195 = _nearFarProj.x / max(1e-07f, _1151);
    _1198 = (_1192 * 0.5f) + _101;
    _1199 = _102 - (_1193 * 0.5f);
    _1207 = select((((_1198 < 0.0f) || (_1198 > 1.0f)) || ((_1199 < 0.0f) || (_1199 > 1.0f))), 1.0f, 0.0f);
    _1213 = (_bufferSizeAndInvSize.x * _1198) + -0.5f;
    _1214 = (_bufferSizeAndInvSize.y * _1199) + -0.5f;
    _1217 = (int)(floor(_1213));
    _1218 = (int)(floor(_1214));
    _1219 = (float)((int)(_1217));
    _1220 = (float)((int)(_1218));
    _1225 = (_1219 + 0.5f) * _bufferSizeAndInvSize.z;
    _1226 = (_1220 + 0.5f) * _bufferSizeAndInvSize.w;
    _1228 = __3__36__0__0__g_depthOpaquePrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(_1225, _1226));  // [sem: _3__36__0__0__g_depthOpaquePrev_gather]
    _1251 = mad(((uint)((uint)(_1228.w)) >> 24), 16777216, mad(((uint)((uint)(_1228.z)) >> 24), 65536, mad(((uint)((uint)(_1228.y)) >> 24), 256, ((uint)((uint)(_1228.x)) >> 24))));
    if (_1122) {
      if ((uint)_109 > (uint)51) {
        if (!((_109 == 98) || (((_107.x & 125) == 105) || ((uint)_109 < (uint)68)))) {
          _1281 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
        } else {
          _1281 = 0.0f;
        }
      } else {
        if ((uint)_109 > (uint)10) {
          if ((uint)_109 < (uint)20) {
            if (_199 == 14) {
              _1281 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
            } else {
              _1281 = 0.0f;
            }
          } else {
            if (!((_107.x & 125) == 105)) {
              _1281 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
            } else {
              _1281 = 0.0f;
            }
          }
        } else {
          _1281 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
        }
      }
    } else {
      _1281 = 0.0f;
    }
    _1289 = _screenPercentage.x * 2.0f;
    _1290 = _1289 * abs(_101 + -0.5f);
    _1291 = _screenPercentage.y * 2.0f;
    _1292 = _1291 * abs(_102 + -0.5f);
    _1296 = sqrt(dot(float2(_1290, _1292), float2(_1290, _1292)) + 1.0f) * _1195;
    _1313 = _1289 * abs(_1198 + -0.5f);
    _1314 = _1291 * abs(_1199 + -0.5f);
    _1317 = sqrt(dot(float2(_1313, _1314), float2(_1313, _1314)) + 1.0f);
    _1332 = ((uint)((int)(_109) + (int)(-97)) < (uint)2) || _609;
    _1334 = _1195 * _1195;
    _1336 = (_1334 * select(_1332, 0.5f, 0.2f)) + 1.0f;
    _1339 = (int)(_109) + (int)(-52);
    _1340 = ((uint)_1339 < (uint)16);
    if (_1340) {
      _1359 = (1000.0f - (saturate((float)((bool)((sqrt(((_diffViewPosAccurate.x * _diffViewPosAccurate.x) + (_diffViewPosAccurate.y * _diffViewPosAccurate.y)) + (_diffViewPosAccurate.z * _diffViewPosAccurate.z)) * 50.0f) > 1.0f))) * 875.0f));
    } else {
      _1359 = 50.0f;
    }
    _1365 = select(_1340, 0.0f, ((_temporalReprojectionParams.y * 0.1f) * max(0.0f, (_1195 + -1.0f))));
    _1370 = max(0.0f, (abs(_1296 - (_1317 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1228.x & 16777215)))) * 5.960465e-08f))) - _1281))) - _1365));
    _1371 = max(0.0f, (abs(_1296 - (_1317 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1228.y & 16777215)))) * 5.960465e-08f))) - _1281))) - _1365));
    _1372 = max(0.0f, (abs(_1296 - (_1317 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1228.z & 16777215)))) * 5.960465e-08f))) - _1281))) - _1365));
    _1373 = max(0.0f, (abs(_1296 - (_1317 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1228.w & 16777215)))) * 5.960465e-08f))) - _1281))) - _1365));
    _1374 = _1370 * _1370;
    _1375 = _1371 * _1371;
    _1376 = _1372 * _1372;
    _1377 = _1373 * _1373;
    _1379 = (-1.442695f / ((_1334 * 0.1f) + 1.0f)) * select(_1332, 0.2f, _1359);
    _1392 = select((_1374 > _1336), 0.0f, exp2(_1379 * _1374));
    _1393 = select((_1375 > _1336), 0.0f, exp2(_1375 * _1379));
    _1394 = select((_1376 > _1336), 0.0f, exp2(_1376 * _1379));
    _1395 = select((_1377 > _1336), 0.0f, exp2(_1377 * _1379));
    if (!_1080) {
      _1397 = _1251 & 127;
      _1398 = _1251 & 32512;
      _1399 = _1251 & 8323072;
      _1400 = _1251 & 2130706432;
      _1422 = ((uint)((int)(_1397) + (int)(-52)) < (uint)16);
      _1426 = ((uint)((int)(((uint)((uint)(_1251)) >> 8) & 127) + (int)(-52)) < (uint)16);
      _1430 = ((uint)((int)(((uint)((uint)(_1251)) >> 16) & 127) + (int)(-52)) < (uint)16);
      _1434 = ((uint)((int)(((uint)((uint)(_1251)) >> 24) & 127) + (int)(-52)) < (uint)16);
      _1447 = (_1121 != 0) || _1340;
      _1456 = (_109 == 6);
      _1478 = ((uint)((int)(_109) + (int)(-105)) < (uint)3);
      _1516 = (_1392 * ((float)((bool)((_637 || ((_1397 != 53) && ((_1251 & 126) != 66))) && (!((_1447 ^ (((_1251 & 128) != 0) || _1422)) || ((_1456 ^ (_1397 == 6)) || ((_1340 ^ _1422) || (_1478 ^ ((_1397 == 107) || ((uint)((int)(_1397) + (int)(-105)) < (uint)2)))))))))));
      _1517 = (_1393 * ((float)((bool)((_637 || ((_1398 != 13568) && ((_1251 & 32256) != 16896))) && (!((_1447 ^ (((_1251 & 32768) != 0) || _1426)) || ((_1456 ^ (_1398 == 1536)) || ((_1340 ^ _1426) || (_1478 ^ (((_1251 & 32000) == 26880) || (_1398 == 27136)))))))))));
      _1518 = (_1394 * ((float)((bool)((_637 || ((_1399 != 3473408) && ((_1251 & 8257536) != 4325376))) && (!((_1447 ^ (((_1251 & 8388608) != 0) || _1430)) || ((_1456 ^ (_1399 == 393216)) || ((_1340 ^ _1430) || (_1478 ^ (((_1251 & 8192000) == 6881280) || (_1399 == 6946816)))))))))));
      _1519 = (_1395 * ((float)((bool)((_637 || ((_1400 != 889192448) && ((_1251 & 2113929216) != 1107296256))) && (!((_1447 ^ (((int)_1251 < (int)0) || _1434)) || ((_1456 ^ (_1400 == 100663296)) || ((_1340 ^ _1434) || (_1478 ^ (((_1251 & 2097152000) == 1761607680) || (_1400 == 1778384896)))))))))));
    } else {
      _1516 = _1392;
      _1517 = _1393;
      _1518 = _1394;
      _1519 = _1395;
    }
    _1521 = __3__36__0__0__g_sceneNormalPrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(_1225, _1226));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather]
    _1540 = min(1.0f, ((((float)((uint)((uint)(_1521.w & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1541 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1521.w)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1542 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1521.w)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1544 = rsqrt(dot(float3(_1540, _1541, _1542), float3(_1540, _1541, _1542)));  // [sem: invLength]
    _1549 = saturate(dot(float3(_693, _694, _695), float3((_1544 * _1540), (_1544 * _1541), (_1544 * _1542))));  // [sem: expr_sat]
    _1564 = min(1.0f, ((((float)((uint)((uint)(_1521.z & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1565 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1521.z)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1566 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1521.z)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1568 = rsqrt(dot(float3(_1564, _1565, _1566), float3(_1564, _1565, _1566)));  // [sem: invLength]
    _1573 = saturate(dot(float3(_693, _694, _695), float3((_1568 * _1564), (_1568 * _1565), (_1568 * _1566))));  // [sem: expr_sat]
    _1588 = min(1.0f, ((((float)((uint)((uint)(_1521.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1589 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1521.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1590 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1521.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1592 = rsqrt(dot(float3(_1588, _1589, _1590), float3(_1588, _1589, _1590)));  // [sem: invLength]
    _1597 = saturate(dot(float3(_693, _694, _695), float3((_1592 * _1588), (_1592 * _1589), (_1592 * _1590))));  // [sem: expr_sat]
    _1612 = min(1.0f, ((((float)((uint)((uint)(_1521.y & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1613 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1521.y)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1614 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1521.y)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1616 = rsqrt(dot(float3(_1612, _1613, _1614), float3(_1612, _1613, _1614)));  // [sem: invLength]
    _1621 = saturate(dot(float3(_693, _694, _695), float3((_1616 * _1612), (_1616 * _1613), (_1616 * _1614))));  // [sem: expr_sat]
    _1624 = select((_636 || (_635 || _1332)), 0.01f, 1.0f);
    _1641 = _1213 - _1219;
    _1642 = _1214 - _1220;
    _1643 = 1.0f - _1641;
    _1644 = 1.0f - _1642;
    _1649 = (_1643 * _1642) * _1516;
    _1651 = (_1642 * _1641) * _1517;
    _1653 = (_1644 * _1641) * _1518;
    _1655 = (_1644 * _1643) * _1519;
    _1657 = saturate(select(_1080, 1.0f, (pow(_1597, _1624))) * _1649);  // [sem: expr_sat]
    _1658 = saturate(select(_1080, 1.0f, (pow(_1621, _1624))) * _1651);  // [sem: expr_sat]
    _1659 = saturate(select(_1080, 1.0f, (pow(_1573, _1624))) * _1653);  // [sem: expr_sat]
    _1660 = saturate(select(_1080, 1.0f, (pow(_1549, _1624))) * _1655);  // [sem: expr_sat]
    _1663 = asint(__3__37__0__0__g_structureCounterBuffer.Load(8));
    _1664 = WaveReadLaneFirst(_1663);
    [branch]
    if (!(_1664 == 0)) {
      _1672 = (((uint)(__3__36__0__0__g_tiledManyLightsMasks.Load(int3(((int)(_91) >> 5), ((int)(_93) >> 5), 0)))).x) & 4;
      _1674 = (uint)((uint)(_1672)) >> 2;
      if (!(_1672 == 0)) {
        _1682 = max((saturate(dot(float3(_983, _984, _985), float3(0.212671f, 0.71516f, 0.072169f)) * 0.01f) * 0.875f), _1207);
        _1683 = _1674;
      } else {
        _1682 = _1207;
        _1683 = _1674;
      }
    } else {
      _1682 = _1207;
      _1683 = 0;
    }
    // [sem: expr_sat]
    _1693 = saturate(max(_1682, (((_environmentLightingHistory[1].w) + _temporalReprojectionParams.w) + _renderParams.y)));
    _1694 = (uint)((uint)(_1218)) + (uint)(1);
    half4 _1696 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1217, _1694, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    _1701 = (uint)((uint)(_1217)) + (uint)(1);
    half4 _1702 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1701, _1694, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    half4 _1707 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1701, _1218, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    half4 _1712 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1217, _1218, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    _1717 = dot(float4(_1657, _1658, _1659, _1660), float4(1.0f, 1.0f, 1.0f, 1.0f));
    // [sem: expr_sat]
    _1726 = saturate(dot(float4(_1657, _1658, _1659, _1660), float4(float(_1696.w), float(_1702.w), float(_1707.w), float(_1712.w))) * (1.0f / max(1.0f, _1717)));
    _1731 = sqrt((_1193 * _1193) + (_1192 * _1192)) * 50.0f;
    if (_1340) {
      _1740 = saturate(1.0f - _1731);  // [sem: expr_sat]
    } else {
      _1740 = (1.0f - (saturate(_1731) * 0.5f));  // [sem: expr_sat]
    }
    _1744 = max(1.0f, (_bufferSizeAndInvSize.w * 2160.0f));
    _1747 = min(31.0f, ((_1740 * 15.0f) * _1744));
    if (_303) {
      _1751 = min(2.0f, _1747);
    } else {
      _1751 = _1747;
    }
    _1752 = select(_302, 1.0f, _1726);
    _1754 = (_1752 * _1752) * 4.0f;
    _1757 = __3__36__0__0__g_manyLightsMoments.SampleLevel(__3__40__0__0__g_sampler, float2(_101, _102), 0.0f);  // [sem: _3__36__0__0__g_manyLightsMoments_sampleLod]
    _1762 = saturate(_1757.w);  // [sem: expr_sat]
    _1764 = 1.0f / max(1e-06f, _1717);
    _1766 = _1764 * _1657;
    _1767 = _1764 * _1658;
    _1768 = _1764 * _1659;
    _1769 = _1764 * _1660;
    if (!((_1764 * _1717) == 0.0f)) {
      _1782 = saturate(saturate(max(_1693, (1.0f / ((saturate(_1754) * _1751) + 1.0f))) + _renderParams.z));  // [sem: expr_sat]
    } else {
      _1782 = 1.0f;  // [sem: expr_sat]
    }
    _1824 = 1.0f / _exposure4.x;
    _1841 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (-0.0f - (min(0.0f, (-0.0f - ((_1769 * float(_1712.x)) + ((_1768 * float(_1707.x)) + ((_1766 * float(_1696.x)) + (_1767 * float(_1702.x))))))) * _exposure4.y)))));
    _1842 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (-0.0f - (min(0.0f, (-0.0f - ((_1769 * float(_1712.y)) + ((_1768 * float(_1707.y)) + ((_1766 * float(_1696.y)) + (_1767 * float(_1702.y))))))) * _exposure4.y)))));
    _1843 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (-0.0f - (min(0.0f, (-0.0f - ((_1769 * float(_1712.z)) + ((_1768 * float(_1707.z)) + ((_1766 * float(_1696.z)) + (_1767 * float(_1702.z))))))) * _exposure4.y)))));
    if (_renderParams.y == 0.0f) {
      _1846 = dot(float3(_1841, _1842, _1843), float3(0.212671f, 0.71516f, 0.072169f));
      _1862 = ((min(_1846, _1757.y) / max(1e-06f, _1846)) * _1762) + saturate(1.0f - _1762);
      _1867 = saturate(((_1762 * 0.5f) * saturate(((_1757.x - _1846) * 2.0f) / max(1e-06f, _1757.x))) + _1782);  // [sem: expr_sat]
      _1868 = (_1862 * _1841);
      _1869 = (_1862 * _1842);
      _1870 = (_1862 * _1843);
    } else {
      _1867 = _1782;  // [sem: expr_sat]
      _1868 = _1841;
      _1869 = _1842;
      _1870 = _1843;
    }
    if (!_302) {
      _1875 = saturate(_1726 + 0.0625f);  // [sem: expr_sat]
    } else {
      _1875 = 0.0f;  // [sem: expr_sat]
    }
    _1882 = ((_983 - _1868) * _1867) + _1868;
    _1883 = ((_984 - _1869) * _1867) + _1869;
    _1884 = ((_985 - _1870) * _1867) + _1870;
    __3__38__0__1__g_diffuseResultUAV[int2(_91, _93)] = float4((half)(half(_1882)), (half)(half(_1883)), (half)(half(_1884)), (half)(half(_1875)));
    _1891 = float(_1110);
    _1892 = float(_1111);
    _1893 = float(_1112);
    if (_109 == 52) {
      _1900 = saturate(((_1892 + _1891) + _1893) * 1.2f);  // [sem: expr_sat]
    } else {
      _1900 = 1.0f;  // [sem: expr_sat]
    }
    _1901 = float(_1108);
    _1907 = (0.7f / min(max(max(max(_1891, _1892), _1893), 0.01f), 0.7f)) * _1900;
    _1917 = (((_1907 * _1891) + -0.04f) * _1901) + 0.04f;
    _1918 = (((_1907 * _1892) + -0.04f) * _1901) + 0.04f;
    _1919 = (((_1907 * _1893) + -0.04f) * _1901) + 0.04f;
    _1920 = select(_1080, 1.0f, ((((float(_994.y) * _884) + (float(_987.y) * _883)) + (float(_1002.y) * _885)) + (float(_1010.y) * _886)));
    if (!_1080) {
      // [sem: expr_sat]
      _1928 = saturate((((1.0f - (float(_987.x) * _883)) - (float(_994.x) * _884)) - (float(_1002.x) * _885)) - (float(_1010.x) * _886));
    } else {
      _1928 = 1.0f;  // [sem: expr_sat]
    }
    if (!((_199 == 96) || (_109 == 98))) {
      if ((uint)((int)(_109) + (int)(-105)) < (uint)2) {
        _1939 = _177;
        _1946 = (half)(select(((_109 == 65) || ((_109 == 107) || _1939)), 0.0f, _1108));
      } else {
        if (!((uint)((int)(_109) + (int)(-11)) < (uint)9)) {
          _1939 = false;
          _1946 = (half)(select(((_109 == 65) || ((_109 == 107) || _1939)), 0.0f, _1108));
        } else {
          _1946 = 0.0h;
        }
      }
    } else {
      _1946 = 0.0h;
    }
    _1948 = dot(float3(_1113, _1115, _1117), float3(_693, _694, _695)) * 2.0f;
    _1952 = _1113 - (_1948 * _693);
    _1953 = _1115 - (_1948 * _694);
    _1954 = _1117 - (_1948 * _695);
    _1960 = dot(float3(_1113, _1115, _1117), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
    _1968 = (_1076 * _1076) + (_1074 * _1074);
    _1972 = sqrt(max(0.0f, (dot(float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z)) - (_1960 * _1960)))) / (sqrt(_1968 + (_1075 * _1075)) + 5.0f);
    _1976 = float(_1109);
    if ((_1109 < 0.099975586h) && (_1972 < 0.125f)) {
      _1986 = select((_1976 < 0.8f), ((__3__36__0__0__g_specularRayHitDistance.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_101, _102), 0.0f)).x), 0.0f) * rsqrt(dot(float3(_1952, _1953, _1954), float3(_1952, _1953, _1954)));
      _1987 = _1986 * _1952;
      _1988 = _1986 * _1953;
      _1989 = _1986 * _1954;
      _1994 = dot(float3(_1987, _1988, _1989), float3((-0.0f - _693), (-0.0f - _694), (-0.0f - _695))) * 2.0f;
      _1999 = ((_1994 * _693) + _1074) + _1987;
      _2001 = ((_1994 * _694) + _1075) + _1988;
      _2003 = ((_1994 * _695) + _1076) + _1989;
      _2027 = mad((_viewProjRelative[0].z), _2003, mad((_viewProjRelative[0].y), _2001, (_1999 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w);
      _2031 = mad((_viewProjRelative[1].z), _2003, mad((_viewProjRelative[1].y), _2001, (_1999 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w);
      _2035 = mad((_viewProjRelative[2].z), _2003, mad((_viewProjRelative[2].y), _2001, (_1999 * (_viewProjRelative[2].x)))) + (_viewProjRelative[2].w);
      _2039 = mad((_viewProjRelative[3].z), _2003, mad((_viewProjRelative[3].y), _2001, (_1999 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
      _2069 = mad((_projToPrevProj[3].w), _2039, mad((_projToPrevProj[3].z), _2035, mad((_projToPrevProj[3].y), _2031, ((_projToPrevProj[3].x) * _2027))));
      _2074 = ((mad((_projToPrevProj[0].w), _2039, mad((_projToPrevProj[0].z), _2035, mad((_projToPrevProj[0].y), _2031, ((_projToPrevProj[0].x) * _2027)))) / _2069) - (_2027 / _2039)) - _1192;
      _2075 = ((mad((_projToPrevProj[1].w), _2039, mad((_projToPrevProj[1].z), _2035, mad((_projToPrevProj[1].y), _2031, ((_projToPrevProj[1].x) * _2027)))) / _2069) - (_2031 / _2039)) - _1193;
      _2083 = max(_1972, saturate(sqrt((_2075 * _2075) + (_2074 * _2074))));
    } else {
      _2083 = _1972;
    }
    _2089 = select((_303 || (_200 || (_renderParams.y > 0.0f))), 1.0f, _1920);
    _2093 = float(_1946);
    _2098 = min(max((_cavityParams.y + -1.0f), 0.0f), 2.0f);
    // [sem: expr_sat]
    _2124 = saturate(saturate(1.0f - (((_2093 * _113) / max(0.001f, _1120)) * 0.001f)) * 1.25f) * saturate(((((-0.05f - (_2098 * 0.075f)) + max(0.02f, _1976)) + (saturate(_113 * 0.025f) * 0.1f)) * min(max((_113 + 1.0f), 5.0f), 50.0f)) * (1.0f - (saturate(_2093) * 0.75f)));
    if (_109 == 64) {
      _2133 = ((saturate(_113 * 0.25f) * (_2124 + -0.39990234f)) + 0.39990234f);
    } else {
      _2133 = _2124;
    }
    _2135 = (_2098 * 16.0f) + 16.0f;
    _2141 = select((_2098 > 1.0f), 0.0f, saturate((1.0f / _2135) * (_113 - _2135)));
    _2142 = (_109 == 105);
    if (_2142) {
      _2150 = 1.0f;
      _2154 = select((_109 == 65), 0.0f, _2150);
    } else {
      if (!_1080) {
        _2150 = select((_109 == 107), 1.0f, ((_2141 + _2133) - (_2141 * _2133)));
        _2154 = select((_109 == 65), 0.0f, _2150);
      } else {
        _2154 = 0.0f;
      }
    }
    _2161 = saturate(select((_lightingParams.y == 0.0f), 1.0f, (1.0f - _2154))) * _2083;
    if ((uint)_109 > (uint)51) {
      if ((uint)_109 < (uint)68) {
        if (_109 == 66) {
          _2175 = (half)(max(0.099975586h, _1109));
          _2178 = _2175;
          _2179 = (half)(max(0.89990234h, _1109));
        } else {
          _2173 = max(0.099975586h, _1109);
          if (_637) {
            _2175 = _2173;
            _2178 = _2175;
            _2179 = (half)(max(0.89990234h, _1109));
          } else {
            _2178 = _2173;
            _2179 = _2173;
          }
        }
      } else {
        _2167 = max(0.099975586h, _1109);
        _2178 = _2167;
        _2179 = _2167;
      }
    } else {
      _2173 = max(0.099975586h, _1109);
      if (_637) {
        _2175 = _2173;
        _2178 = _2175;
        _2179 = (half)(max(0.89990234h, _1109));
      } else {
        _2178 = _2173;
        _2179 = _2173;
      }
    }
    _2180 = float(_2179);
    _2181 = _2180 * _2180;
    _2182 = _2181 * _2181;
    _2195 = (((_2182 * _1597) - _1597) * _1597) + 1.0f;
    _2196 = (((_2182 * _1621) - _1621) * _1621) + 1.0f;
    _2197 = (((_2182 * _1573) - _1573) * _1573) + 1.0f;
    _2198 = (((_2182 * _1549) - _1549) * _1549) + 1.0f;
    _2238 = (((((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1701, _1694, 0))).x) * saturate(_1651)) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1217, _1694, 0))).x) * saturate(_1649))) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1701, _1218, 0))).x) * saturate(_1653))) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1217, _1218, 0))).x) * saturate(_1655));
    _2243 = saturate(select(_303, 1.0f, saturate((_2182 / (_2195 * _2195)) * _1597)) * _1649);  // [sem: expr_sat]
    _2244 = saturate(select(_303, 1.0f, saturate((_2182 / (_2196 * _2196)) * _1621)) * _1651);  // [sem: expr_sat]
    _2245 = saturate(select(_303, 1.0f, saturate((_2182 / (_2197 * _2197)) * _1573)) * _1653);  // [sem: expr_sat]
    _2246 = saturate(select(_303, 1.0f, saturate((_2182 / (_2198 * _2198)) * _1549)) * _1655);  // [sem: expr_sat]
    _2256 = exp2(log2(saturate(max(float(((half)(((half)(1.0h - _1109)) * 0.75h)) * _1946), (1.0f - _1120)))) * 0.1f);
    _2259 = float(((half)(_1109 * _1109)) + 1.0009766h);
    _2275 = select(_303, 1.0f, saturate(((_1744 * _1744) * _1754) * exp2((log2(float(_2178)) * 0.5f) * (((_2161 * 15.0f) * ((_2256 + _2259) / (_2259 - _2256))) + 1.0f))));
    if ((uint)((int)(_109) + (int)(-12)) < (uint)9) {
      _2285 = ((saturate(_113 * 0.005f) * (_2275 + -1.0f)) + 1.0f);
    } else {
      _2285 = _2275;
    }
    _2313 = mad((_projToPrevProj[3].z), _104.x, mad((_projToPrevProj[3].y), _1037, ((_projToPrevProj[3].x) * _1035))) + (_projToPrevProj[3].w);
    _2316 = ((mad((_projToPrevProj[0].z), _104.x, mad((_projToPrevProj[0].y), _1037, ((_projToPrevProj[0].x) * _1035))) + (_projToPrevProj[0].w)) / _2313) - _1035;
    _2317 = ((mad((_projToPrevProj[1].z), _104.x, mad((_projToPrevProj[1].y), _1037, ((_projToPrevProj[1].x) * _1035))) + (_projToPrevProj[1].w)) / _2313) - _1037;
    _2318 = _1192 - _2316;
    _2319 = _1193 - _2317;
    if (_1340 || _1142) {
      _2331 = (31.0f - (saturate(sqrt((_2319 * _2319) + (_2318 * _2318)) * 500.0f) * 24.0f));
    } else {
      _2331 = 63.0f;
    }
    if (_renderParams.z > 0.0f) {
      _2346 = saturate((_2161 * 200.0f) + 0.125f);  // [sem: expr_sat]
    } else {
      _2346 = 0.0f;  // [sem: expr_sat]
    }
    _2347 = max(max(saturate(_1693), saturate(max(0.0f, (1.0f / (((_2285 * _2238) * _2331) + 1.0f))))), _2346);
    [branch]
    if (_1080) {
      _2358 = (_bufferSizeAndInvSize.x * ((_2316 * 0.5f) + _101)) + -0.5f;
      _2359 = (_bufferSizeAndInvSize.y * (_102 - (_2317 * 0.5f))) + -0.5f;
      _2362 = (int)(floor(_2358));
      _2363 = (int)(floor(_2359));
      _2364 = (float)((int)(_2362));
      _2365 = (float)((int)(_2363));
      [branch]
      if (_303) {
        // [sem: _3__36__0__0__g_stencilPrev_gather]
        _2375 = __3__36__0__0__g_stencilPrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(((_2364 + 0.5f) * _bufferSizeAndInvSize.z), ((_2365 + 0.5f) * _bufferSizeAndInvSize.w)));
        _2382 = mad(_2375.w, 16777216, mad(_2375.z, 65536, mad(_2375.y, 256, _2375.x)));
        _2411 = saturate(((float)((bool)(((uint)(_2382 & 24) > (uint)23) && ((_2382 & 127) != 24)))) * _2243);  // [sem: expr_sat]
        _2412 = saturate(((float)((bool)(((uint)(_2382 & 6144) > (uint)5888) && ((_2382 & 32512) != 6144)))) * _2244);  // [sem: expr_sat]
        // [sem: expr_sat]
        _2413 = saturate(((float)((bool)(((uint)(_2382 & 1572864) > (uint)1507328) && ((_2382 & 8323072) != 1572864)))) * _2245);
        // [sem: expr_sat]
        _2414 = saturate(((float)((bool)(((uint)(_2382 & 402653184) > (uint)385875968) && ((_2382 & 2130706432) != 402653184)))) * _2246);
        _2446 = max(saturate(min(max(((_1107 / ((_611 * 0.005f) + 1.0f)) + (_2161 * 500.0f)), 0.03125f), 0.5f) + _2347), saturate(1.0f - dot(float4(_2411, _2412, _2413, _2414), float4(1.0f, 1.0f, 1.0f, 1.0f))));
        _2447 = _2362;
        _2448 = _2363;
        _2449 = _2411;
        _2450 = _2412;
        _2451 = _2413;
        _2452 = _2414;
      } else {
        _2429 = _2358 - _2364;
        _2430 = _2359 - _2365;
        _2431 = 1.0f - _2429;
        _2432 = 1.0f - _2430;
        _2446 = (saturate((sqrt((_2317 * _2317) + (_2316 * _2316)) * 50.0f) + 0.125f) * 0.875f);
        _2447 = _2362;
        _2448 = _2363;
        _2449 = (_2431 * _2430);
        _2450 = (_2430 * _2429);
        _2451 = (_2432 * _2429);
        _2452 = (_2432 * _2431);
      }
    } else {
      _2446 = _2347;
      _2447 = _1217;
      _2448 = _1218;
      _2449 = _2243;
      _2450 = _2244;
      _2451 = _2245;
      _2452 = _2246;
    }
    _2453 = (_2093 > 0.2f);
    _2454 = (uint)((uint)(_2448)) + (uint)(1);
    half4 _2456 = __3__36__0__0__g_specularResultPrev.Load(int3(_2447, _2454, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _2469 = ((float)((bool)(!(_2453 ^ ((half)(_2456.w) < 0.0h))))) * _2449;
    _2475 = (uint)((uint)(_2447)) + (uint)(1);
    half4 _2476 = __3__36__0__0__g_specularResultPrev.Load(int3(_2475, _2454, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _2489 = ((float)((bool)(!(_2453 ^ ((half)(_2476.w) < 0.0h))))) * _2450;
    half4 _2499 = __3__36__0__0__g_specularResultPrev.Load(int3(_2475, _2448, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _2512 = ((float)((bool)(!(_2453 ^ ((half)(_2499.w) < 0.0h))))) * _2451;
    half4 _2522 = __3__36__0__0__g_specularResultPrev.Load(int3(_2447, _2448, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _2535 = ((float)((bool)(!(_2453 ^ ((half)(_2522.w) < 0.0h))))) * _2452;
    _2559 = 1.0f / max(((saturate(_113 * 0.0625f) * 0.000999f) + 1e-06f), dot(float4(_2469, _2489, _2512, _2535), float4(1.0f, 1.0f, 1.0f, 1.0f)));
    _2561 = -0.0f - (min(0.0f, (-0.0f - ((((_2469 * float(_2456.x)) + (_2489 * float(_2476.x))) + (_2512 * float(_2499.x))) + (_2535 * float(_2522.x))))) * _2559);
    _2563 = -0.0f - (min(0.0f, (-0.0f - ((((_2469 * float(_2456.y)) + (_2489 * float(_2476.y))) + (_2512 * float(_2499.y))) + (_2535 * float(_2522.y))))) * _2559);
    _2565 = -0.0f - (min(0.0f, (-0.0f - ((((_2469 * float(_2456.z)) + (_2489 * float(_2476.z))) + (_2512 * float(_2499.z))) + (_2535 * float(_2522.z))))) * _2559);
    _2566 = _2559 * min(0.0f, (-0.0f - ((((_2469 * abs(float(_2456.w))) + (_2489 * abs(float(_2476.w)))) + (_2512 * abs(float(_2499.w)))) + (_2535 * abs(float(_2522.w))))));
    _2575 = max(_2446, saturate((_1976 * _1976) * max(0.0f, saturate(((1.0f - _1920) - _1928) * 2.0f))));
    if (_renderParams.y == 0.0f) {
      _2578 = dot(float3(_2561, _2563, _2565), float3(0.212671f, 0.71516f, 0.072169f));
      _2585 = ((min(_2578, _1757.z) / max(1e-09f, _2578)) * _1762) + saturate(1.0f - _1762);
      // [sem: expr_sat]
      _2606 = saturate(((_1762 * 0.5f) * saturate((((_1976 * 1000.0f) * _2161) * ((float(1.0h / ((half)(8.0h - ((half)(_1109 * 7.0h))))) * _1757.z) - _2578)) / max(1e-06f, _1757.z))) + _2575);
      _2607 = (_2585 * _2561);
      _2608 = (_2585 * _2563);
      _2609 = (_2585 * _2565);
    } else {
      _2606 = _2575;  // [sem: expr_sat]
      _2607 = _2561;
      _2608 = _2563;
      _2609 = _2565;
    }
    _2610 = _2607 * _exposure4.y;
    _2611 = _2608 * _exposure4.y;
    _2612 = _2609 * _exposure4.y;
    _2625 = ((max(0.001f, _1928) + _2566) * _2606) - _2566;
    _2635 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_2089 * ((((_947.x * _884) + (_940.x * _883)) + (_957.x * _885)) + (_967.x * _886))) - _2610) * _2606) + _2610))));
    _2636 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_2089 * ((((_947.y * _884) + (_940.y * _883)) + (_957.y * _885)) + (_967.y * _886))) - _2611) * _2606) + _2611))));
    _2637 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_2089 * ((((_947.z * _884) + (_940.z * _883)) + (_957.z * _885)) + (_967.z * _886))) - _2612) * _2606) + _2612))));
    __3__38__0__1__g_specularResultUAV[int2(_91, _93)] = float4((half)(half(_2635)), (half)(half(_2636)), (half)(half(_2637)), (half)(half(select(_2453, (-0.0f - _2625), _2625))));
    __3__38__0__1__g_specularSampleCountUAV[int2(_91, _93)] = saturate((_2238 * 0.984375f) + 0.015625f);
    _2649 = select(_1080, 0.0f, _2625);
    _2654 = float(half(lerp(_2649, 1.0f, _1976)));
    _2655 = (_199 == 64);
    _2657 = ((int)(uint)(_178)) ^ 1;
    if ((_2657 & ((int)(uint)(_2655))) == 0) {
      _2673 = saturate(exp2((_2654 * _2654) * (_113 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _2673 = select((_cavityParams.z > 0.0f), 0.0f, 1.0f);  // [sem: expr_sat]
    }
    _2676 = (_cavityParams.x == 0.0f);
    _2677 = select(_2676, 1.0f, _2673);
    if (_2655) {
      _2683 = (_2677 * _1917);
      _2684 = (_2677 * _1918);
      _2685 = (_2677 * _1919);
    } else {
      _2683 = _1917;
      _2684 = _1918;
      _2685 = _1919;
    }
    // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
    _2690 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1120), (1.0f - _2654)), 0.0f);
    _2701 = select((_2655 || _1080), 1.0f, _2677) * _1824;
    if ((uint)_1339 > (uint)15) {
      if ((_109 != 7) && (!((_109 == 6) || ((_199 == 106) || (((uint)((int)(_109) + (int)(-27)) < (uint)2) || ((_109 == 26) || (_1080 || _2142))))))) {
        _2732 = exp2(log2(_2649) * (saturate(_113 * 0.03125f) + 1.0f));
        _2741 = __3__36__0__0__g_puddleMask.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_101, _102), 0.0f);  // [sem: _3__36__0__0__g_puddleMask_sampleLod]
        bool __branch_chain_2726;
        if ((_109 == 15) || ((_199 == 12) || ((_107.x & 124) == 16))) {
          _2760 = false;
          _2761 = true;
          __branch_chain_2726 = true;
        } else {
          if (!((uint)_109 > (uint)10)) {
            _2760 = true;
            _2761 = _2142;
            __branch_chain_2726 = true;
          } else {
            if ((uint)_109 < (uint)20) {
              _2760 = false;
              _2761 = _2142;
              __branch_chain_2726 = true;
            } else {
              if (!(_109 == 97)) {
                _2760 = (_109 != 107);
                _2761 = _2142;
                __branch_chain_2726 = true;
              } else {
                _2953 = _1901;
                _2954 = _1976;
                _2955 = _1891;
                _2956 = _1892;
                _2957 = _1893;
                __branch_chain_2726 = false;
              }
            }
          }
        }
        if (__branch_chain_2726) {
          if (_2741.w < 1.0f) {
            if ((_weatherCheckFlag & 5) == 5) {
              _2771 = (_109 == 36);
              if (!_2771) {
                // [sem: _3__36__0__0__g_climateSandTex_sampleLod]
                _2791 = __3__36__0__0__g_climateSandTex.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((_viewPos.x + _1074) / _climateTextureOnePixelMeter.x) + ((float)((int)((int)(_climateTextureSize.x) >> 1)))) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((_viewPos.z + _1076) / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                _2797 = _2791.x;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                _2798 = _2791.y;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                _2799 = _2791.z;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                _2800 = _2791.w;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
              } else {
                _2797 = 0.12f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                _2798 = 0.12f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                _2799 = 0.1f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                _2800 = 0.5f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
              }
              _2807 = 1.0f - saturate(((_viewPos.y + _1075) - _paramGlobalSand.x) / _paramGlobalSand.y);
              if (!(_2807 <= 0.0f)) {
                _2810 = saturate(_2732);  // [sem: _2732_sat]
                _2823 = ((_2798 * 0.33951f) + (_2797 * 0.61312f)) + (_2799 * 0.04737f);
                _2824 = ((_2798 * 0.91636f) + (_2797 * 0.0702f)) + (_2799 * 0.01345f);
                _2825 = ((_2798 * 0.10958f) + (_2797 * 0.02062f)) + (_2799 * 0.8698f);
                _2830 = select(_2761, 1.0f, ((float)((bool)(saturate(dot(float3(_693, _694, _695), float3(0.0f, 1.0f, 0.0f))) > 0.5f))));
                if (_enableSandAO == 1) {
                  _2835 = 1.0f - _2741.x;  // [sem: _3__36__0__0__g_puddleMask_sampleLod_derived]
                  if (_2771) {
                    _2866 = ((((_2835 * 10.0f) * _2800) * _2807) * _2810);
                    _2869 = _2823;
                    _2870 = _2824;
                    _2871 = _2825;
                    _2872 = saturate(_2866);  // [sem: _2866_sat]
                  } else {
                    _2846 = saturate(_2800 + -0.5f);  // [sem: expr_sat]
                    _2869 = _2823;
                    _2870 = _2824;
                    _2871 = _2825;
                    // [sem: _2866_sat]
                    _2872 = ((((_2846 * 2.0f) * max((_2830 * _2741.x), min((_2810 * ((_2741.x * 7.0f) + 3.0f)), (_2846 * 40.0f)))) + (((_2835 * 10.0f) * _2810) * saturate((0.5f - _2800) * 2.0f))) * _2807);
                  }
                } else {
                  _2864 = ((_2807 * _2800) * _2741.x) * _2830;
                  if (_2771) {
                    _2866 = _2864;
                    _2869 = _2823;
                    _2870 = _2824;
                    _2871 = _2825;
                    _2872 = saturate(_2866);  // [sem: _2866_sat]
                  } else {
                    _2869 = _2823;
                    _2870 = _2824;
                    _2871 = _2825;
                    _2872 = _2864;  // [sem: _2866_sat]
                  }
                }
              } else {
                _2869 = 0.0f;
                _2870 = 0.0f;
                _2871 = 0.0f;
                _2872 = 0.0f;  // [sem: _2866_sat]
              }
              _2876 = ((1.0f - _2741.w) * (1.0f - _2741.y)) * _2872;
              _2877 = (_2876 > 0.0001f);
              if (_2877) {
                if (_2761) {
                  _2880 = saturate(_2876);  // [sem: _2876_sat]
                  _2907 = (((sqrt(_2869 * _1891) - _1891) * _2880) + _1891);
                  _2908 = (((sqrt(_2870 * _1892) - _1892) * _2880) + _1892);
                  _2909 = (((sqrt(_2871 * _1893) - _1893) * _2880) + _1893);
                } else {
                  _2907 = ((_2876 * (_2869 - _1891)) + _1891);
                  _2908 = ((_2876 * (_2870 - _1892)) + _1892);
                  _2909 = ((_2876 * (_2871 - _1893)) + _1893);
                }
              } else {
                _2907 = _1891;
                _2908 = _1892;
                _2909 = _1893;
              }
              if (_2771 && _2877) {
                if (_2761) {
                  _2924 = (((sqrt(_1976 * 0.25f) - _1976) * saturate(_2876)) + _1976);
                } else {
                  _2924 = ((_2876 * (0.25f - _1976)) + _1976);
                }
              } else {
                _2924 = _1976;
              }
              _2925 = saturate(_2907);  // [sem: _2907_sat]
              _2926 = saturate(_2908);  // [sem: _2908_sat]
              _2927 = saturate(_2909);  // [sem: _2909_sat]
              _2932 = (_2924 * (1.0f - _2732)) + _2732;
              _2935 = ((_2924 - _2932) * _2741.y) + _2932;
              _2942 = (((_2732 * _2732) * _2741.z) * ((float)((bool)(_2760)))) * saturate(dot(float3(_693, _694, _695), float3(0.0f, 1.0f, 0.0f)));
              _2943 = _2942 * -0.5f;
              _2953 = (_1901 - (_2732 * _1901));
              _2954 = (_2935 - (_2942 * _2935));
              _2955 = ((_2943 * _2925) + _2925);
              _2956 = ((_2943 * _2926) + _2926);
              _2957 = ((_2943 * _2927) + _2927);
            } else {
              _2953 = _1901;
              _2954 = _1976;
              _2955 = _1891;
              _2956 = _1892;
              _2957 = _1893;
            }
          } else {
            _2953 = _1901;
            _2954 = _1976;
            _2955 = _1891;
            _2956 = _1892;
            _2957 = _1893;
          }
        }
        _2964 = (half)(half(_2953));
        _2965 = (half)(half(_2954));
        _2966 = (half)(half(_2955));
        _2967 = (half)(half(_2956));
        _2968 = (half)(half(_2957));
        _2969 = _2732;
      } else {
        _2964 = _1108;
        _2965 = _1109;
        _2966 = _1110;
        _2967 = _1111;
        _2968 = _1112;
        _2969 = _2649;
      }
    } else {
      _2964 = _1108;
      _2965 = _1109;
      _2966 = _1110;
      _2967 = _1111;
      _2968 = _1112;
      _2969 = _2649;
    }
    half4 _2971 = __3__36__0__0__g_sceneShadowColor.Load(int3(_91, _93, 0));  // [sem: _3__36__0__0__g_sceneShadowColor_load]
    _2975 = float(_2971.x);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    _2976 = float(_2971.y);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    _2977 = float(_2971.z);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    [branch]
    if (_1080) {
      _2980 = __3__36__0__0__g_sceneNormal.Load(int3(_91, _93, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
      _2996 = min(1.0f, ((((float)((uint)((uint)(_2980.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _2997 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2980.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _2998 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2980.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _3000 = rsqrt(dot(float3(_2996, _2997, _2998), float3(_2996, _2997, _2998)));  // [sem: invLength]
      _3008 = (half)(half(_3000 * _2996));
      _3009 = (half)(half(_3000 * _2997));
      _3010 = (half)(half(_3000 * _2998));
    } else {
      _3008 = _275;
      _3009 = _276;
      _3010 = _277;
    }
    _3013 = (_sunDirection.y > 0.0f);
    if ((_3013) || ((!(_3013)) && (_sunDirection.y > _moonDirection.y))) {
      _3025 = _sunDirection.x;
      _3026 = _sunDirection.y;
      _3027 = _sunDirection.z;
    } else {
      _3025 = _moonDirection.x;
      _3026 = _moonDirection.y;
      _3027 = _moonDirection.z;
    }
    if ((_3013) || ((!(_3013)) && (_sunDirection.y > _moonDirection.y))) {
      _3047 = _precomputedAmbient7.y;
    } else {
      _3047 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
    }
    _3054 = _viewPos.x + _1074;
    _3056 = (_earthRadius + _1075) + _viewPos.y;
    _3057 = _viewPos.z + _1076;
    _3063 = sqrt(((_3054 * _3054) + (_3056 * _3056)) + (_3057 * _3057));
    _3068 = dot(float3((_3054 / _3063), (_3056 / _3063), (_3057 / _3063)), float3(_3025, _3026, _3027));
    _3074 = min(max(((_3063 - _earthRadius) / _atmosphereThickness), 16.0f), (_atmosphereThickness + -16.0f));
    _3082 = max(_3074, 0.0f);
    _3089 = (-0.0f - sqrt((_3082 + (_earthRadius * 2.0f)) * _3082)) / (_3082 + _earthRadius);
    if (_3068 > _3089) {
      _3112 = ((exp2(log2(saturate((_3068 - _3089) / (1.0f - _3089))) * 0.2f) * 0.4921875f) + 0.50390625f);
    } else {
      _3112 = ((exp2(log2(saturate((_3089 - _3068) / (_3089 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
    }
    // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
    _3116 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_3074 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f), _3112), 0.0f);
    _3138 = ((_3116.y * 2e-05f) * _mieAerosolDensity) * (_mieAerosolAbsorption + 1.0f);  // [sem: _3__36__0__0__g_texNetDensity_sampleLod_derived]
    _3156 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.0556001e-06f)) * _3116.x) + _3138) * -1.442695f);
    _3157 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 4.9788005e-06f)) * _3116.x) + _3138) * -1.442695f);
    _3158 = exp2(((((_ozoneRatio * 2.1360002e-07f) + (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f)) * _3116.x) + _3138) * -1.442695f);
    _3174 = sqrt(_1968);
    _3182 = (_cloudAltitude - (max(((_3174 * _3174) + -400000.0f), 0.0f) * 1e-06f)) - _viewPos.y;
    _3194 = (_cloudThickness * (0.5f - (((float)((int)((int)((int)(uint)((int)(_3026 > 0.0f))) - (int)((int)(uint)((int)(_3026 < 0.0f)))))) * 0.5f))) + _3182;
    if (_1075 < _3182) {
      _3197 = dot(float3(0.0f, 1.0f, 0.0f), float3(_3025, _3026, _3027));
      _3203 = select((abs(_3197) < 1e-08f), 1e+08f, ((_3194 - dot(float3(0.0f, 1.0f, 0.0f), float3(_1074, _1075, _1076))) / _3197));
      _3209 = ((_3203 * _3025) + _1074);
      _3210 = _3194;
      _3211 = ((_3203 * _3027) + _1076);
    } else {
      _3209 = _1074;
      _3210 = _1075;
      _3211 = _1076;
    }
    _3231 = saturate(abs(_3026) * 4.0f);  // [sem: expr_sat]
    _3233 = (_3231 * _3231) * exp2(((_distanceScale * -1.442695f) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_3209 * 5e-05f) + 0.5f), ((_3210 - _3182) / _cloudThickness), ((_3211 * 5e-05f) + 0.5f)), 0.0f)).x)) * (_cloudScatteringCoefficient / _distanceScale));
    _3240 = ((1.0f - _3233) * saturate(((_1075 - _cloudThickness) - _3182) * 0.1f)) + _3233;
    _3241 = _3240 * (((_3157 * 0.33951f) + (_3156 * 0.61312f)) + (_3158 * 0.04737f));
    _3242 = _3240 * (((_3157 * 0.91636f) + (_3156 * 0.0702f)) + (_3158 * 0.01345f));
    _3243 = _3240 * (((_3157 * 0.10958f) + (_3156 * 0.02062f)) + (_3158 * 0.8698f));
    if (!(_599) || !(((uint)_109 < (uint)20) || (_109 == 107))) {
      _3268 = (_109 == 20);
    } else {
      _3268 = true;
    }
    if (_109 == 19) {
      _3277 = true;
      _3280 = _3277;
      _3281 = (_109 == 106);
    } else {
      _3271 = (_109 == 107);
      if (!((_199 == 26) || (_2142 || (_109 == 28)))) {
        _3277 = _3271;
        _3280 = _3277;
        _3281 = (_109 == 106);
      } else {
        _3280 = _3271;
        _3281 = true;
      }
    }
    _3282 = float(_3008);
    _3283 = float(_3009);
    _3284 = float(_3010);
    if (_109 == 97) {
      _3295 = ((int)((uint)((uint)((int)(min16uint)((int)(((int)(((uint16_t)(__3__36__0__0__g_sceneDecalMask.Load(int3(_91, _93, 0)))).x)) & 2)))) >> 1) + (int)(97));
    } else {
      _3295 = _109;
    }
    _3300 = float(saturate(_197));
    _3301 = _3300 * _3300;
    _3302 = _3301 * _3301;
    _3303 = _3302 * _3302;
    _3314 = ((_3303 * _3303) * select((_303 || (_3280 || _3281)), 0.0f, 1.0f)) * (((float4)(__3__36__0__0__g_puddleMask.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((_bufferSizeAndInvSize.z * _96), (_bufferSizeAndInvSize.w * _97)), 0.0f))).y);
    _3319 = _3282 - (_3314 * _3282);
    _3320 = (_3314 * (1.0f - _3283)) + _3283;
    _3321 = _3284 - (_3314 * _3284);
    _3323 = rsqrt(dot(float3(_3319, _3320, _3321), float3(_3319, _3320, _3321)));  // [sem: invLength]
    _3324 = _3319 * _3323;
    _3325 = _3320 * _3323;
    _3326 = _3321 * _3323;
    if ((_3013) || ((!(_3013)) && (_sunDirection.y > _moonDirection.y))) {
      _3338 = _sunDirection.x;
      _3339 = _sunDirection.y;
      _3340 = _sunDirection.z;
    } else {
      _3338 = _moonDirection.x;
      _3339 = _moonDirection.y;
      _3340 = _moonDirection.z;
    }
    _3341 = _lightingParams.x * _3047;
    // RenoDX: >>> [Patch: DirectLightMatrixFix] [Version: 1.16.00]
    // Description: The game converts the direct beam's transmittance to working space a second time
    //              here: _3241/_3242/_3243 are already the working-space result of that same matrix
    //              applied to the exp2 transmittance triple, scaled by the cloud blend. The matrix
    //              has unit row sums, so applying it twice preserves luminance and only desaturates,
    //              most visibly at low sun where the beam is strongly tinted. On uses the single
    //              conversion so low-sun light keeps the colour of the sky it arrives through.
    _3342 = (DIRECT_LIGHT_MATRIX_FIX != 0.f) ? (_3241 * _3341) : ((((_3241 * 0.61312f) + (_3242 * 0.33951f)) + (_3243 * 0.04737f)) * _3341);
    _3343 = (DIRECT_LIGHT_MATRIX_FIX != 0.f) ? (_3242 * _3341) : ((((_3241 * 0.0702f) + (_3242 * 0.91636f)) + (_3243 * 0.01345f)) * _3341);
    _3344 = (DIRECT_LIGHT_MATRIX_FIX != 0.f) ? (_3243 * _3341) : ((((_3241 * 0.02062f) + (_3242 * 0.10958f)) + (_3243 * 0.8698f)) * _3341);
    // RenoDX: <<< [Patch: DirectLightMatrixFix]
    _3345 = _3338 - _1113;
    _3346 = _3339 - _1115;
    _3347 = _3340 - _1117;
    _3349 = rsqrt(dot(float3(_3345, _3346, _3347), float3(_3345, _3346, _3347)));  // [sem: invLength]
    _3350 = _3349 * _3345;
    _3351 = _3349 * _3346;
    _3352 = _3349 * _3347;
    _3353 = dot(float3(_3282, _3283, _3284), float3(_3338, _3339, _3340));
    _3354 = dot(float3(_3324, _3325, _3326), float3(_3338, _3339, _3340));
    _3356 = saturate(dot(float3(_3282, _3283, _3284), float3(_1114, _1116, _1118)));  // [sem: expr_sat]
    _3358 = saturate(dot(float3(_3324, _3325, _3326), float3(_3350, _3351, _3352)));  // [sem: expr_sat]
    _3361 = saturate(dot(float3(_3338, _3339, _3340), float3(_3350, _3351, _3352)));  // [sem: expr_sat]
    _3363 = float(max(0.010002136h, _2965));
    _3364 = saturate(_3353);  // [sem: _3353_sat]
    _3365 = _3363 * _3363;
    _3366 = _3365 * _3365;
    _3367 = 1.0f - _3366;
    _3368 = 1.0f - _3361;
    _3369 = _3368 * _3368;
    _3372 = ((_3369 * _3369) * _3368) + _3361;
    _3373 = 1.0f - _3364;
    _3374 = _3373 * _3373;
    _3379 = 1.0f - _3356;
    _3380 = _3379 * _3379;
    // [sem: expr_sat]
    _3408 = saturate((_3364 * 0.31830987f) * ((((((1.0f - ((_3374 * _3374) * (_3373 * 0.75f))) * (1.0f - ((_3380 * _3380) * (_3379 * 0.75f)))) - _3372) * saturate((_3367 * 2.2f) + -0.5f)) + _3372) + ((exp2(-0.0f - (max(((_3367 * 73.2f) + -21.2f), 8.9f) * sqrt(_3358))) * _3361) * ((((_3367 * 34.5f) + -59.0f) * _3367) + 24.5f))));
    _3409 = _3295 & 126;
    bool __branch_chain_3337;
    if ((_3295 == 98) || (_3409 == 96)) {
      _3420 = true;
      __branch_chain_3337 = true;
    } else {
      if ((uint)((int)(_3295) + (int)(-105)) < (uint)2) {
        _3420 = _177;
        __branch_chain_3337 = true;
      } else {
        if (!((uint)((int)(_3295) + (int)(-11)) < (uint)9)) {
          _3420 = false;
          __branch_chain_3337 = true;
        } else {
          __branch_chain_3337 = false;
        }
      }
    }
    if (__branch_chain_3337) {
      if ((_3295 == 65) || ((_3295 == 107) || _3420)) {
        _3428 = 0.0f;
      } else {
        _3428 = float(_2964);
      }
    } else {
      _3428 = 0.0f;
    }
    _3429 = (_3295 == 52);
    _3430 = float(_2966);
    _3431 = float(_2967);
    _3432 = float(_2968);
    if (_3429) {
      _3439 = saturate(((_3431 + _3430) + _3432) * 1.2f);  // [sem: expr_sat]
    } else {
      _3439 = 1.0f;  // [sem: expr_sat]
    }
    _3445 = (0.7f / min(max(max(max(_3430, _3431), _3432), 0.01f), 0.7f)) * _3439;
    _3455 = (((_3445 * _3430) + -0.04f) * _3428) + 0.04f;
    _3456 = (((_3445 * _3431) + -0.04f) * _3428) + 0.04f;
    _3457 = (((_3445 * _3432) + -0.04f) * _3428) + 0.04f;
    _3458 = float(_2965);
    _3459 = (_3409 == 64);
    _3462 = ((((int)(uint)(_3459)) & _2657) == 0);
    if (_3462) {
      _3474 = saturate(exp2((_3458 * _3458) * (_113 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _3474 = select((_cavityParams.z > 0.0f), 0.0f, 1.0f);  // [sem: expr_sat]
    }
    _3475 = select(_2676, 1.0f, _3474);
    if (_3459) {
      _3481 = (_3475 * _3455);
      _3482 = (_3475 * _3456);
      _3483 = (_3475 * _3457);
    } else {
      _3481 = _3455;
      _3482 = _3456;
      _3483 = _3457;
    }
    _3486 = saturate(1.0f - saturate(dot(float3(_1114, _1116, _1118), float3(_3350, _3351, _3352))));  // [sem: expr_sat]
    _3487 = _3486 * _3486;
    _3489 = (_3487 * _3487) * _3486;
    _3492 = _3489 * saturate(_3482 * 50.0f);
    _3493 = 1.0f - _3489;
    if (!_303) {
      _3501 = saturate(_3354);  // [sem: _3354_sat]
      _3502 = 1.0f - _3365;
      _3514 = (((_3366 * _3358) - _3358) * _3358) + 1.0f;
      _3518 = (_3366 / ((_3514 * _3514) * 3.1415927f)) * (0.5f / ((((_3502 * _3356) + _3365) * _3354) + (((_3502 * _3354) + _3365) * _3356)));
      _3532 = ((_3501 * _2975) * max((_3518 * ((_3493 * _3481) + _3492)), 0.0f));
      _3533 = ((_3501 * _2976) * max((_3518 * ((_3493 * _3482) + _3492)), 0.0f));
      _3534 = ((_3501 * _2977) * max((_3518 * ((_3493 * _3483) + _3492)), 0.0f));
    } else {
      _3532 = 0.0f;
      _3533 = 0.0f;
      _3534 = 0.0f;
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
    if (FOLIAGE_TRANSMISSION > 0.0f && ((uint)(_109 - 12) < 7u)) {
      FoliageTransmissionResult _rndx_ftResult = FoliageTransmission(
          float3(_1114, _1116, _1118),
          float3(_3338, _3339, _3340),
          float3(_3282, _3283, _3284),
          _3353,
          float3(_3430, _3431, _3432),
          float3(_2975, _2976, _2977),
          float3(_3342, _3343, _3344),
          FOLIAGE_TRANSMISSION_THICKNESS);
      _rndx_foliageTransR = _rndx_ftResult.transmission.x;
      _rndx_foliageTransG = _rndx_ftResult.transmission.y;
      _rndx_foliageTransB = _rndx_ftResult.transmission.z;
      if (_rndx_ftResult.diffuseScale > 0.0f) {
        _3408 *= _rndx_ftResult.diffuseScale;
      } else {
        float _rndx_wrap = 0.25f * (1.0f - FOLIAGE_TRANSMISSION_THICKNESS);
        _3408 = max(0.0f, (_3353 + _rndx_wrap) / (1.0f + _rndx_wrap)) * 0.31830987334251404f * 0.75f;
      }
    }
    // RenoDX: <<< [Patch: FoliageTransmission]
    if (_3268 || (_3409 == 6)) {
      _3543 = ((max(0.0f, (0.3f - _3353)) * 0.23190688f) + _3408);
    } else {
      _3543 = _3408;
    }
    _3550 = ((_2975 * _3543) * _3342) + (_1882 * _1824);
    _3551 = ((_2976 * _3543) * _3343) + (_1883 * _1824);
    _3552 = ((_2977 * _3543) * _3344) + (_1884 * _1824);
    // RenoDX: >>> [Patch: FoliageTransmission] [Version: 1.16.00]
    // Description: Adds the gated foliage transmission accumulated above to the three clean-decompile direct-diffuse outputs after all native component equations have completed. With the feature disabled the accumulators are zero, so this insertion is exactly neutral.
    _3550 += _rndx_foliageTransR;
    _3551 += _rndx_foliageTransG;
    _3552 += _rndx_foliageTransB;
    // RenoDX: <<< [Patch: FoliageTransmission]
    _3555 = (uint)((uint)(_frameNumber.x)) * (uint)(13);
    [branch]
    if ((((int)((int)((uint)((uint)(_3555)) + (uint)((uint)(_91)))) | (int)((int)((uint)((uint)(_3555)) + (uint)((uint)(_93))))) & 31) == 0) {
      __3__38__0__1__g_sceneColorLightingOnlyForAwbUAV[int2(((int)(_91) >> 5), ((int)(_93) >> 5))] = float4((half)(half(_3550)), (half)(half(_3551)), (half)(half(_3552)), 1.0f);
    }
    _3570 = ((uint)(_3295 & 24) > (uint)23);
    if (_3462) {
      _3587 = saturate(exp2((_3458 * _3458) * (_113 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _3587 = select((_cavityParams.z > 0.0f), select(_178, 0.0f, _1106), 1.0f);  // [sem: expr_sat]
    }
    _3605 = select(_3459, 1.0f, (select((_cavityParams.x == 0.0f), 1.0f, _3587) * select((_177 && _3570), (1.0f - _1106), 1.0f)));
    _3609 = min(60000.0f, (_3605 * (((((_2690.x * _2683) + _2690.y) * _2635) * _2701) - min(0.0f, (-0.0f - (_3342 * _3532))))));
    _3610 = min(60000.0f, (_3605 * (((((_2690.x * _2684) + _2690.y) * _2636) * _2701) - min(0.0f, (-0.0f - (_3343 * _3533))))));
    _3611 = min(60000.0f, (_3605 * (((((_2690.x * _2685) + _2690.y) * _2637) * _2701) - min(0.0f, (-0.0f - (_3344 * _3534))))));
    _3614 = 1.0f - _renderParams.x;
    _3621 = half((_renderParams.x * _3430) + _3614);
    _3622 = half((_renderParams.x * _3431) + _3614);
    _3623 = half((_renderParams.x * _3432) + _3614);
    if (_3459 && (_renderParams2.x == 0.0f)) {
      _3639 = (half)(exp2((half)((half)(log2(_3621)) * 0.5h)));
      _3640 = (half)(exp2((half)((half)(log2(_3622)) * 0.5h)));
      _3641 = (half)(exp2((half)((half)(log2(_3623)) * 0.5h)));
    } else {
      _3639 = _3621;
      _3640 = _3622;
      _3641 = _3623;
    }
    _3642 = float(_3639);
    _3643 = float(_3640);
    _3644 = float(_3641);
    if (_3429) {
      _3651 = saturate(((_3643 + _3642) + _3644) * 1.2f);  // [sem: expr_sat]
    } else {
      _3651 = 1.0f;  // [sem: expr_sat]
    }
    _3652 = float(_2964);
    _3658 = (0.7f / min(max(max(max(_3642, _3643), _3644), 0.01f), 0.7f)) * _3651;
    _3665 = ((_3658 * _3642) + -0.04f) * _3652;
    _3666 = ((_3658 * _3643) + -0.04f) * _3652;
    _3667 = ((_3658 * _3644) + -0.04f) * _3652;
    _3668 = _3665 + 0.04f;
    _3669 = _3666 + 0.04f;
    _3670 = _3667 + 0.04f;
    _3674 = (_3668 * _2690.x) + _2690.y;
    _3675 = (_3669 * _2690.x) + _2690.y;
    _3676 = (_3670 * _2690.x) + _2690.y;
    _3678 = (1.0f - _2690.y) - _2690.x;
    _3685 = ((0.96f - _3665) * 0.04761905f) + _3668;
    _3686 = ((0.96f - _3666) * 0.04761905f) + _3669;
    _3687 = ((0.96f - _3667) * 0.04761905f) + _3670;
    _3704 = saturate(1.0f - _2969);  // [sem: expr_sat]
    _3705 = (((_3674 * _3685) / (1.0f - (_3685 * _3678))) * _3678) * _3704;
    _3706 = (((_3675 * _3686) / (1.0f - (_3686 * _3678))) * _3678) * _3704;
    _3707 = (((_3676 * _3687) / (1.0f - (_3687 * _3678))) * _3678) * _3704;
    _3718 = float(1.0h - _2964);
    _3728 = half(((_3642 * _3718) * saturate((1.0f - _3705) - _3674)) + _3705);
    _3729 = half(((_3643 * _3718) * saturate((1.0f - _3706) - _3675)) + _3706);
    _3730 = half(((_3644 * _3718) * saturate((1.0f - _3707) - _3676)) + _3707);
    _3734 = float(_3728) * _3550;
    _3735 = float(_3729) * _3551;
    _3736 = float(_3730) * _3552;
    _3740 = _3734 + (_3609 * _3652);
    _3741 = _3735 + (_3610 * _3652);
    _3742 = _3736 + (_3611 * _3652);
    if (!(((_121 || _123) || _125) || _127)) {
      _3744 = QuadReadLaneAt(_3740, 0);
      _3745 = QuadReadLaneAt(_3741, 0);
      _3746 = QuadReadLaneAt(_3742, 0);
      _3747 = QuadReadLaneAt(_3740, 1);
      _3748 = QuadReadLaneAt(_3741, 1);
      _3749 = QuadReadLaneAt(_3742, 1);
      _3753 = QuadReadLaneAt(_3740, 2);
      _3754 = QuadReadLaneAt(_3741, 2);
      _3755 = QuadReadLaneAt(_3742, 2);
      _3759 = QuadReadLaneAt(_3740, 3);
      _3760 = QuadReadLaneAt(_3741, 3);
      _3761 = QuadReadLaneAt(_3742, 3);
      _3769 = ((((_3747 + _3744) + _3753) + _3759) * 0.25f);
      _3770 = ((((_3748 + _3745) + _3754) + _3760) * 0.25f);
      _3771 = ((((_3749 + _3746) + _3755) + _3761) * 0.25f);
    } else {
      _3769 = _3740;
      _3770 = _3741;
      _3771 = _3742;
    }
    [branch]
    if ((((int)(_93) | (int)(_91)) & 1) == 0) {
      _3776 = dot(float3(_3769, _3770, _3771), float3(0.212671f, 0.71516f, 0.072169f));
      __3__38__0__1__g_diffuseHalfPrevUAV[int2(((int)(_91) >> 1), ((int)(_93) >> 1))] = float4(min(60000.0f, _3769), min(60000.0f, _3770), min(60000.0f, _3771), min(60000.0f, select((_1683 != 0), (-0.0f - _3776), _3776)));
    }
    if (_3570) {
      _3797 = ((_2964 == 0.0h) && (((_3728 < 0.010002136h) && (_3729 < 0.010002136h)) && (_3730 < 0.010002136h)));
    } else {
      _3797 = false;
    }
    if ((_3570 || ((_3295 == 96) || ((_3295 == 53) || ((_3295 & 124) == 64)))) || ((!(_3570 || ((_3295 == 96) || ((_3295 == 53) || ((_3295 & 124) == 64))))) && ((_113 <= 10.0f) && ((uint)((int)(_3295) + (int)(-97)) < (uint)2)))) {
      __3__38__0__1__g_sceneSpecularUAV[int2(_91, _93)] = float4(((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _3609)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _3610)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _3611)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _2649)))))));
      _3833 = _3734;
      _3834 = _3735;
      _3835 = _3736;
    } else {
      _3833 = (_3734 + _3609);
      _3834 = (_3735 + _3610);
      _3835 = (_3736 + _3611);
    }
    _3836 = min(60000.0f, _3833);
    _3837 = min(60000.0f, _3834);
    _3838 = min(60000.0f, _3835);
    if (!_118) {
      [branch]
      if (_3797) {
        _3843 = __3__38__0__1__g_sceneColorUAV[int2(_91, _93)].x;
        _3844 = __3__38__0__1__g_sceneColorUAV[int2(_91, _93)].y;
        _3845 = __3__38__0__1__g_sceneColorUAV[int2(_91, _93)].z;
        _3850 = (_3843 + _3836);
        _3851 = (_3844 + _3837);
        _3852 = (_3845 + _3838);
      } else {
        _3850 = _3836;
        _3851 = _3837;
        _3852 = _3838;
      }
      if (!(_renderParams.y == 0.0f)) {
        _3861 = dot(float3(_3850, _3851, _3852), float3(0.212671f, 0.71516f, 0.072169f));
        _3862 = min((max(0.01f, _exposure3.w) * 4096.0f), _3861);
        _3866 = max(1e-09f, _3861);
        _3871 = ((_3862 * _3850) / _3866);
        _3872 = ((_3862 * _3851) / _3866);
        _3873 = ((_3862 * _3852) / _3866);
      } else {
        _3871 = _3850;
        _3872 = _3851;
        _3873 = _3852;
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
      if (FOLIAGE_AO_STRENGTH > 0.0f && ((uint)(_109 - 12) < 7u)) {
        half4 _rndx_shadow = __3__36__0__0__g_sceneShadowColor.Load(int3(_91, _93, 0));
        float _rndx_directRatio = saturate(dot(float3(_rndx_shadow.xyz), float3(0.333f, 0.333f, 0.333f)));
        float _rndx_sceneAO = saturate(1.0f - _1928);
        float _rndx_ao = lerp(1.0f, _rndx_sceneAO, _rndx_directRatio * FOLIAGE_AO_STRENGTH);
        _3871 *= _rndx_ao;
        _3872 *= _rndx_ao;
        _3873 *= _rndx_ao;
      }
      // RenoDX: <<< [Patch: FoliageFinalAO]
      __3__38__0__1__g_sceneColorUAV[int2(_91, _93)] = float4(_3871, _3872, _3873, 1.0f);
    }
  }
}
