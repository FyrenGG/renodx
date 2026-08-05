// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports the exact shared option and helper declarations consumed by this shader's annotated RenoDX patches. This dependency-only prefix replaces no native executable statement; removing the block restores successor A byte-for-byte.
#include "../shared.h"
#include "diffuse_brdf.hlsli"
#include "foliage_common.hlsli"
#include "purkinje_common.hlsli"
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

Texture2D<half4> __3__36__0__0__g_sceneDiffuse : register(t57, space36);

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

Texture2D<float> __3__36__0__0__g_depth : register(t48, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t63, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaquePrev : register(t64, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t52, space36);

Texture2D<float4> __3__36__0__0__g_manyLightsMoments : register(t65, space36);

Texture2D<float> __3__36__0__0__g_specularRayHitDistance : register(t66, space36);

Texture2D<float> __3__36__0__0__g_caustic : register(t67, space36);

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
  half _309;
  half _310;
  half _311;
  half _312;
  float _337;
  float _338;
  float _339;
  int _356;
  int _362;
  int _367;
  bool _368;
  float _441;
  float _442;
  float _443;
  float _444;
  float _467;
  float _468;
  float _469;
  float _470;
  float _501;
  float _502;
  float _503;
  float _504;
  half _544;
  int _911;
  half _912;
  float _913;
  float _914;
  float _915;
  float _916;
  float _973;
  float _974;
  half _1014;
  float _1380;
  float _1381;
  float _1382;
  float _1383;
  float _1384;
  float _1385;
  float _1386;
  int _1387;
  float _1388;
  float _1389;
  float _1390;
  half _1391;
  float _1392;
  int _1419;
  int _1420;
  bool _1427;
  bool _1428;
  float _1439;
  float _1450;
  float _1451;
  float _1463;
  float _1464;
  half _1465;
  half _1466;
  half _1467;
  half _1468;
  half _1469;
  float _1481;
  int _1507;
  float _1516;
  float _1559;
  float _1560;
  float _1669;
  float _1722;
  bool _1847;
  float _1852;
  float _1858;
  bool _1875;
  float _1880;
  float _1881;
  float _1887;
  float _1888;
  bool _1905;
  float _1910;
  float _1911;
  float _1912;
  float _1918;
  float _1919;
  float _1920;
  bool _1936;
  float _1939;
  float _1940;
  float _1941;
  bool _1942;
  float _1946;
  float _1947;
  float _1948;
  float _1949;
  int _2112;
  float _2113;
  float _2170;
  float _2209;
  float _2297;
  float _2298;
  float _2299;
  float _2300;
  float _2309;
  float _2310;
  float _2311;
  float _2312;
  float _2313;
  float _2338;
  half _2362;
  int _2375;
  bool _2435;
  float _2436;
  float _2437;
  float _2438;
  int _2439;
  half _2440;
  float _2577;
  bool _2589;
  float _2631;
  float _2653;
  half _2680;
  float _2786;
  float _2835;
  float _2844;
  float _2943;
  float _2944;
  float _2945;
  float _2946;
  int _2947;
  int _2948;
  float _2949;
  float _3097;
  float _3098;
  float _3099;
  float _3100;
  float _3171;
  float _3181;
  float _3182;
  float _3183;
  float _3237;
  float _3238;
  float _3372;
  float _3373;
  float _3374;
  float _3427;
  float _3428;
  float _3429;
  float _3430;
  float _3431;
  int _3487;
  int _3488;
  float _3529;
  float _3530;
  float _3531;
  float _3532;
  float _3604;
  float _3605;
  float _3606;
  float _3607;
  float _3637;
  float _3638;
  float _3639;
  float _3656;
  float _3657;
  float _3658;
  float _3659;
  float _3689;
  float _3690;
  float _3691;
  float _3692;
  float _3693;
  float _3700;
  half _3701;
  half _3702;
  half _3703;
  half _3704;
  half _3705;
  float _3711;
  float _3712;
  float _3713;
  float _3714;
  float _3715;
  float _3716;
  half _3717;
  half _3718;
  half _3719;
  half _3720;
  half _3721;
  float _3722;
  half _3759;
  half _3760;
  half _3761;
  float _3780;
  float _3781;
  float _3782;
  float _3797;
  float _3798;
  float _3799;
  float _3800;
  float _3858;
  float _3948;
  float _3949;
  float _3950;
  int _4029;
  bool _4041;
  int _4056;
  int _4057;
  float _4076;
  float _4077;
  float _4078;
  float _4079;
  int _4080;
  float _4081;
  float _4127;
  float _4164;
  float _4171;
  float _4172;
  float _4173;
  int _4206;
  int _4207;
  float _4224;
  float _4225;
  float _4226;
  float _4267;
  float _4766;
  float _4767;
  float _4872;
  float _4873;
  float _4874;
  float _5094;
  float _5095;
  float _5096;
  float _5097;
  float _5098;
  float _5099;
  float _5100;
  float _5101;
  float _5352;
  float _5353;
  float _5459;
  float _5460;
  float _5461;
  float _5683;
  float _5684;
  float _5685;
  float _5686;
  float _5687;
  float _5688;
  float _5689;
  float _5690;
  float _5707;
  float _5708;
  float _5709;
  float _5710;
  float _5711;
  float _5712;
  float _5713;
  float _5714;
  float _5715;
  float _5716;
  float _5717;
  float _5730;
  float _5731;
  float _5732;
  float _5808;
  float _5809;
  float _6159;
  float _6160;
  float _6296;
  float _6297;
  float _6428;
  float _6470;
  float _6471;
  float _6604;
  float _6605;
  float _6715;
  float _6716;
  float _6717;
  float _6718;
  float _6719;
  float _6720;
  float _6721;
  float _6722;
  float _6723;
  float _6758;
  half _6818;
  half _6819;
  half _6820;
  half _6825;
  half _6826;
  half _6827;
  half _6828;
  float _6838;
  float _6875;
  float _6876;
  float _6967;
  float _6968;
  float _6969;
  float _7045;
  float _7046;
  float _7047;
  float _7083;
  float _7084;
  float _7085;
  bool _7111;
  int _7123;
  int _7146;
  float _7147;
  float _7148;
  float _7149;
  float _7169;
  float _7170;
  float _7171;
  float _7187;
  float _7188;
  float _7189;
  float _7208;
  float _7209;
  float _7210;
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
  half _275;
  half _277;
  half _279;
  half _285;
  half _291;
  half _297;
  half4 _314;
  float _318;
  float _319;
  float _320;
  bool _323;
  half4 _326;
  float4 _341;
  float _369;
  float _370;
  float _371;
  float _373;
  float _375;
  float _387;
  float _396;
  float _405;
  float _414;
  float _416;
  float _417;
  float _418;
  float _419;
  int _420;
  bool _421;
  bool _423;
  bool _424;
  bool _425;
  bool _426;
  float4 _435;
  uint _449;
  int _454;
  float4 _458;
  uint _486;
  int _488;
  float4 _492;
  float _512;
  float _514;
  float _516;
  float _518;
  float4 _521;
  float _526;
  float _528;
  float _530;
  float _532;
  float _533;
  float _534;
  float _535;
  float _545;
  float _548;
  float _549;
  float _550;
  float _551;
  float _552;
  float _553;
  float _554;
  float _555;
  float _561;
  float _563;
  float _565;
  float _567;
  float _569;
  float _571;
  float _573;
  float _580;
  float _582;
  float _583;
  float _584;
  float _585;
  float _586;
  float _587;
  float _591;
  float _600;
  float _606;
  float _607;
  float _611;
  float _612;
  float _617;
  float _618;
  float _619;
  float _620;
  float _634;
  float _636;
  float _638;
  float _639;
  float _643;
  float _644;
  float _645;
  float _661;
  float _670;
  float _679;
  float _688;
  float _691;
  float2 _698;
  float2 _705;
  float2 _712;
  float _715;
  float _716;
  float _717;
  float _718;
  float _719;
  float _720;
  float _721;
  float _722;
  float _723;
  float _724;
  float _725;
  float _726;
  float _727;
  float _728;
  float _729;
  float _730;
  float _731;
  float _732;
  float _733;
  float _734;
  float _735;
  float _736;
  float _737;
  float _738;
  float _740;
  float _741;
  float _742;
  float _743;
  float _745;
  float _746;
  float _747;
  float _748;
  float _749;
  float _750;
  float _757;
  float _758;
  float _759;
  float _760;
  float _762;
  float _766;
  float _770;
  float _773;
  float _781;
  float _789;
  float _797;
  float _808;
  float _819;
  float _830;
  float _836;
  float _856;
  float _876;
  float _896;
  float _897;
  bool _917;
  float _925;
  float _956;
  float _958;
  float _960;
  float _961;
  float _962;
  float _976;
  float4 _991;
  float _996;
  float _998;
  float _1000;
  float _1002;
  float _1003;
  float _1004;
  float _1005;
  float _1015;
  float _1018;
  float _1019;
  float _1020;
  float _1021;
  float _1022;
  float _1023;
  float _1024;
  float _1025;
  float _1031;
  float _1033;
  float _1035;
  float _1037;
  float _1039;
  float _1041;
  float _1043;
  float _1050;
  float _1052;
  float _1053;
  float _1054;
  float _1055;
  float _1056;
  float _1057;
  float _1061;
  float _1070;
  float _1076;
  float _1077;
  float _1081;
  float _1082;
  float _1087;
  float _1088;
  float _1089;
  float _1090;
  float _1104;
  float _1106;
  float _1108;
  float _1109;
  float _1113;
  float _1114;
  float _1115;
  float _1131;
  float _1140;
  float _1149;
  float _1158;
  float _1161;
  float2 _1168;
  float2 _1175;
  float2 _1182;
  float _1185;
  float _1186;
  float _1187;
  float _1188;
  float _1189;
  float _1190;
  float _1191;
  float _1192;
  float _1193;
  float _1194;
  float _1195;
  float _1196;
  float _1197;
  float _1198;
  float _1199;
  float _1200;
  float _1201;
  float _1202;
  float _1203;
  float _1204;
  float _1205;
  float _1206;
  float _1207;
  float _1208;
  float _1210;
  float _1211;
  float _1212;
  float _1213;
  float _1215;
  float _1216;
  float _1217;
  float _1218;
  float _1219;
  float _1220;
  float _1227;
  float _1228;
  float _1229;
  float _1230;
  float _1232;
  float _1236;
  float _1240;
  float _1243;
  float _1251;
  float _1259;
  float _1267;
  float _1278;
  float _1289;
  float _1300;
  float _1306;
  float _1326;
  float _1346;
  float _1366;
  float _1395;
  float _1398;
  float _1401;
  half2 _1403;
  int _1410;
  float _1430;
  bool _1432;
  bool _1434;
  uint _1441;
  half _1452;
  bool _1453;
  int _1470;
  bool _1471;
  bool _1472;
  bool _1473;
  float _1474;
  float _1475;
  float _1476;
  float _1477;
  float _1482;
  int _1483;
  bool _1484;
  float _1528;
  float2 _1532;
  float _1564;
  float _1566;
  float _1568;
  float _1576;
  float _1580;
  float _1583;
  int _1585;
  int _1587;
  float _1588;
  float _1589;
  float _1592;
  float _1595;
  int4 _1598;
  int _1609;
  float _1672;
  float _1675;
  float _1677;
  float _1680;
  float _1684;
  float _1687;
  float _1690;
  float _1693;
  bool _1697;
  float _1698;
  float _1701;
  bool _1703;
  float _1729;
  float _1740;
  float _1751;
  float _1762;
  float _1773;
  float _1774;
  float _1775;
  float _1776;
  float _1777;
  float _1782;
  float _1786;
  float _1790;
  float _1794;
  float _1798;
  int _1800;
  int _1801;
  int _1802;
  int _1803;
  bool _1805;
  bool _1809;
  bool _1813;
  bool _1817;
  bool _1819;
  bool _1821;
  bool _1822;
  bool _1824;
  float _1850;
  float _1878;
  float _1908;
  int4 _1951;
  float _1960;
  float _1966;
  float _1972;
  float _1974;
  float _1979;
  float _1984;
  float _1990;
  float _1996;
  float _1998;
  float _2003;
  float _2008;
  float _2014;
  float _2020;
  float _2022;
  float _2027;
  float _2032;
  float _2038;
  float _2044;
  float _2046;
  float _2051;
  float _2054;
  float _2055;
  float _2056;
  float _2057;
  float _2058;
  float _2060;
  float _2062;
  float _2064;
  float _2066;
  float _2072;
  float _2078;
  float _2084;
  float _2090;
  int _2093;
  int _2094;
  int _2102;
  int _2103;
  float _2123;
  uint _2124;
  half4 _2126;
  uint _2131;
  half4 _2132;
  half4 _2137;
  half4 _2142;
  float _2147;
  float _2156;
  float _2161;
  float _2174;
  bool _2175;
  float _2176;
  float _2178;
  float4 _2181;
  float _2186;
  float _2188;
  float _2189;
  float _2190;
  float _2191;
  float _2192;
  float _2212;
  float _2227;
  float _2232;
  float _2250;
  float _2268;
  float _2276;
  float _2283;
  float _2316;
  float _2319;
  float _2322;
  float _2328;
  float _2329;
  float _2330;
  float _2339;
  float _2345;
  float _2349;
  float _2353;
  float _2357;
  bool _2376;
  half _2381;
  uint _2391;
  int _2396;
  float4 _2400;
  uint _2420;
  int _2422;
  float4 _2426;
  float _2442;
  float _2444;
  float _2446;
  float _2448;
  float _2453;
  float _2456;
  float _2459;
  float _2466;
  float _2467;
  float _2480;
  float _2481;
  float _2482;
  float _2483;
  float _2488;
  float _2491;
  float _2494;
  float _2497;
  float _2509;
  float _2517;
  float _2525;
  float _2533;
  float _2545;
  float _2557;
  float _2569;
  int _2578;
  bool _2579;
  float _2590;
  float _2591;
  float _2596;
  float _2622;
  float _2633;
  float _2639;
  float _2660;
  half _2662;
  float _2681;
  float _2682;
  float _2683;
  float _2687;
  float _2691;
  float _2695;
  float _2699;
  float _2719;
  float _2726;
  float _2733;
  float _2740;
  float _2747;
  float _2757;
  float _2760;
  float _2776;
  float _2798;
  float _2808;
  float _2818;
  float _2819;
  float _2820;
  float _2853;
  bool _2855;
  float _2862;
  float _2867;
  int _2869;
  int _2871;
  float _2872;
  float _2873;
  int4 _2883;
  int _2890;
  float _2895;
  float _2900;
  float _2905;
  float _2910;
  float _2926;
  float _2927;
  float _2928;
  float _2929;
  bool _2950;
  uint _2951;
  half4 _2953;
  float _2962;
  uint _2963;
  half4 _2964;
  float _2973;
  half4 _2974;
  float _2983;
  half4 _2984;
  float _2993;
  float _3000;
  float _3014;
  float _3015;
  float _3029;
  float _3043;
  float _3061;
  float _3069;
  float _3076;
  float _3103;
  float _3104;
  float _3105;
  float _3110;
  float _3118;
  float _3126;
  float _3134;
  float _3146;
  float _3151;
  bool _3152;
  int _3154;
  bool _3174;
  float _3175;
  float _3184;
  float _3185;
  float _3186;
  bool _3189;
  float _3190;
  float _3191;
  float _3192;
  float2 _3207;
  float2 _3213;
  float _3218;
  float _3221;
  float _3223;
  float _3231;
  float _3233;
  float _3240;
  float _3243;
  float _3244;
  float _3246;
  float _3249;
  float _3251;
  float _3253;
  float4 _3261;
  float _3265;
  float _3266;
  float _3267;
  float _3269;
  float _3271;
  float _3273;
  float _3275;
  float _3277;
  float2 _3282;
  float _3294;
  float _3304;
  float2 _3309;
  float2 _3322;
  float2 _3328;
  float _3332;
  float _3334;
  float _3347;
  float _3361;
  float2 _3379;
  float _3389;
  float2 _3396;
  float2 _3402;
  float _3406;
  float _3408;
  float2 _3417;
  float _3434;
  float _3435;
  float _3436;
  float _3437;
  float _3463;
  float4 _3466;
  bool _3496;
  float4 _3523;
  float _3542;
  float _3545;
  float _3550;
  float _3555;
  float _3560;
  float _3566;
  float _3572;
  float _3580;
  float _3600;
  float _3611;
  bool _3614;
  float _3616;
  float _3640;
  float _3641;
  float _3642;
  float _3660;
  float _3661;
  float _3662;
  float _3665;
  float _3668;
  float _3676;
  float _3677;
  half4 _3724;
  uint _3731;
  float _3737;
  float _3743;
  float _3749;
  float _3751;
  bool _3764;
  bool _3771;
  float _3776;
  float _3777;
  float _3778;
  float _3803;
  float _3805;
  float _3808;
  float _3810;
  float _3816;
  float _3820;
  float _3827;
  float _3828;
  float _3835;
  float2 _3870;
  float _3879;
  float _3893;
  float _3903;
  float _3912;
  float _3913;
  float _3921;
  float _3933;
  float _3936;
  float _3942;
  float _3953;
  float _3972;
  float _3979;
  float _3985;
  float _3991;
  float _3997;
  float _4003;
  float _4009;
  float _4015;
  float _4016;
  float _4017;
  float _4018;
  float _4019;
  float _4020;
  float _4021;
  float _4022;
  float _4031;
  float _4032;
  bool _4033;
  float _4058;
  float _4059;
  float _4060;
  uint16_t _4062;
  float _4083;
  float _4084;
  float _4085;
  float _4086;
  float _4102;
  float _4104;
  float _4107;
  float _4109;
  float _4111;
  float _4112;
  float _4113;
  float _4114;
  bool _4115;
  bool _4116;
  bool _4117;
  float _4119;
  bool _4120;
  float _4133;
  float _4137;
  float _4141;
  float _4145;
  float _4146;
  int _4147;
  bool _4148;
  bool _4151;
  float _4165;
  float _4174;
  float _4175;
  bool _4177;
  float _4179;
  float _4180;
  float _4181;
  bool _4182;
  float _4212;
  float _4229;
  float _4230;
  float _4231;
  float _4232;
  float _4233;
  float _4234;
  float _4236;
  float _4237;
  float _4238;
  float _4239;
  float _4240;
  float _4241;
  float _4243;
  float _4245;
  float _4246;
  float _4248;
  bool _4249;
  bool _4250;
  bool _4251;
  float _4269;
  float _4271;
  float4 _4291;
  float _4295;
  float _4296;
  float _4297;
  float _4298;
  float _4299;
  float _4300;
  float _4306;
  float _4308;
  float _4310;
  float _4312;
  float _4314;
  float _4316;
  float _4318;
  float _4325;
  float _4329;
  float _4332;
  float _4333;
  float _4334;
  float _4335;
  float _4336;
  float _4338;
  float _4340;
  float _4346;
  float _4347;
  float _4348;
  float _4352;
  float _4357;
  float _4363;
  float _4364;
  float _4368;
  float _4369;
  float _4374;
  float _4375;
  float _4376;
  float _4377;
  float _4391;
  float _4393;
  float _4395;
  float _4396;
  float _4400;
  float _4401;
  float _4402;
  float _4418;
  float _4419;
  float _4435;
  float _4436;
  float _4439;
  float _4441;
  float _4447;
  float _4454;
  float _4455;
  float _4462;
  float _4463;
  float _4470;
  float _4471;
  float _4483;
  float _4495;
  float _4507;
  float _4516;
  float _4525;
  float _4534;
  bool _4537;
  bool _4538;
  float _4550;
  float _4552;
  float _4563;
  float _4566;
  float _4569;
  float _4570;
  float _4572;
  float _4575;
  float _4576;
  float _4577;
  float _4581;
  float _4583;
  float _4587;
  float _4588;
  float _4589;
  float _4590;
  float _4602;
  float _4606;
  float _4608;
  float _4610;
  float _4612;
  float _4613;
  float _4617;
  float _4629;
  float _4631;
  float _4632;
  float _4642;
  float _4658;
  float _4690;
  float _4692;
  float _4694;
  float _4696;
  float _4697;
  float _4698;
  float _4699;
  float _4701;
  float _4702;
  float _4703;
  float _4704;
  bool _4712;
  float _4718;
  float _4720;
  float _4722;
  float _4724;
  float _4725;
  float _4726;
  float _4727;
  float _4729;
  float _4730;
  float _4731;
  float _4732;
  float _4744;
  float _4746;
  float _4748;
  float _4750;
  float _4751;
  float _4752;
  float _4753;
  float _4755;
  float _4756;
  float _4757;
  float _4758;
  float _4785;
  float _4786;
  float _4787;
  float _4788;
  float _4791;
  float _4792;
  float _4793;
  float _4794;
  float _4795;
  float _4826;
  float _4829;
  float _4830;
  float _4832;
  float _4835;
  float _4836;
  float _4838;
  float _4840;
  float _4842;
  float _4845;
  float _4849;
  float _4861;
  bool _4875;
  float _4880;
  float _4891;
  float _4905;
  float _4909;
  float _4921;
  float _4922;
  float _4927;
  float _4932;
  float _4937;
  float _4940;
  float _4942;
  float _4944;
  float _4946;
  float _4947;
  float _4948;
  float _4949;
  float _4951;
  float _4952;
  float _4953;
  float _4954;
  float _4955;
  float _4956;
  float _4957;
  float _4959;
  float _4961;
  float _4964;
  float _4975;
  float _5005;
  float _5016;
  float _5032;
  float _5034;
  float _5036;
  float _5038;
  float _5039;
  float _5040;
  float _5041;
  float _5043;
  float _5044;
  float _5045;
  float _5046;
  float _5047;
  float _5048;
  float _5049;
  float _5051;
  float _5053;
  float _5056;
  float _5067;
  bool _5118;
  bool _5119;
  float _5131;
  float _5133;
  float _5134;
  float _5135;
  float _5136;
  float _5147;
  float _5150;
  float _5153;
  float _5154;
  float _5156;
  float _5159;
  float _5160;
  float _5161;
  float _5165;
  float _5167;
  float _5171;
  float _5172;
  float _5173;
  float _5174;
  float _5186;
  float _5190;
  float _5192;
  float _5194;
  float _5196;
  float _5197;
  float _5201;
  float _5213;
  float _5214;
  float _5216;
  float _5217;
  float _5227;
  float _5243;
  float _5275;
  float _5277;
  float _5279;
  float _5281;
  float _5282;
  float _5283;
  float _5284;
  float _5286;
  float _5287;
  float _5288;
  float _5289;
  bool _5297;
  float _5303;
  float _5305;
  float _5307;
  float _5309;
  float _5310;
  float _5311;
  float _5312;
  float _5314;
  float _5315;
  float _5316;
  float _5317;
  float _5330;
  float _5332;
  float _5334;
  float _5336;
  float _5337;
  float _5338;
  float _5339;
  float _5341;
  float _5342;
  float _5343;
  float _5344;
  float _5371;
  float _5372;
  float _5373;
  float _5374;
  float _5377;
  float _5378;
  float _5379;
  float _5380;
  float _5381;
  float _5412;
  float _5415;
  float _5416;
  float _5418;
  float _5421;
  float _5422;
  float _5424;
  float _5426;
  float _5428;
  float _5431;
  float _5432;
  float _5436;
  float _5448;
  bool _5462;
  float _5467;
  float _5478;
  float _5492;
  float _5496;
  float _5508;
  float _5509;
  float _5510;
  float _5515;
  float _5520;
  float _5525;
  float _5528;
  float _5530;
  float _5532;
  float _5534;
  float _5535;
  float _5536;
  float _5537;
  float _5539;
  float _5540;
  float _5541;
  float _5542;
  float _5543;
  float _5544;
  float _5545;
  float _5547;
  float _5549;
  float _5552;
  float _5563;
  float _5593;
  float _5604;
  float _5620;
  float _5622;
  float _5624;
  float _5626;
  float _5627;
  float _5628;
  float _5629;
  float _5631;
  float _5632;
  float _5633;
  float _5634;
  float _5635;
  float _5636;
  float _5637;
  float _5639;
  float _5641;
  float _5642;
  float _5645;
  float _5656;
  float _5722;
  float _5734;
  float _5736;
  float _5737;
  float _5739;
  float _5741;
  float _5743;
  float _5745;
  float _5746;
  float _5748;
  float _5750;
  float _5754;
  float _5786;
  float _5787;
  float _5788;
  float _5789;
  float _5791;
  float _5793;
  float _5804;
  float _5811;
  float _5814;
  float _5815;
  float _5817;
  float4 _5825;
  float _5829;
  float _5830;
  float _5831;
  float _5833;
  float _5835;
  float _5837;
  float _5839;
  float _5841;
  float _5842;
  float _5843;
  float _5844;
  float _5848;
  float _5852;
  float _5854;
  float _5856;
  float _5860;
  float _5862;
  float _5864;
  float _5865;
  float _5867;
  float _5870;
  float _5911;
  float _5923;
  float _5926;
  float _5929;
  float _5932;
  float _5935;
  float _5938;
  float2 _5944;
  float2 _5950;
  float2 _5956;
  float _5959;
  float _5960;
  float _5961;
  float _5962;
  float _5963;
  float _5964;
  float _5965;
  float _5966;
  float _5967;
  float _5968;
  float _5969;
  float _5970;
  float _5971;
  float _5972;
  float _5973;
  float _5974;
  float _5975;
  float _5976;
  float _5977;
  float _5978;
  float _5979;
  float _5980;
  float _5981;
  float _5982;
  float _5984;
  float _5985;
  float _5986;
  float _5987;
  float _5989;
  float _5990;
  float _5991;
  float _5992;
  float _5993;
  float _5994;
  float _6004;
  float _6005;
  float _6006;
  float _6008;
  float _6012;
  float _6016;
  float _6019;
  float _6027;
  float _6035;
  float _6043;
  float _6054;
  float _6065;
  float _6076;
  float _6078;
  float _6081;
  float _6097;
  float _6099;
  float _6115;
  float _6117;
  float _6133;
  float _6135;
  float _6137;
  float _6139;
  float _6141;
  float _6142;
  float _6143;
  float _6144;
  float _6153;
  float _6155;
  float _6162;
  float _6165;
  float _6166;
  float _6168;
  float4 _6176;
  float _6180;
  float _6181;
  float _6182;
  float _6184;
  float _6186;
  float _6188;
  float _6190;
  float _6192;
  float _6193;
  float _6194;
  float _6195;
  float _6199;
  float _6203;
  float _6205;
  float _6207;
  float _6211;
  float _6213;
  float _6215;
  float _6216;
  float _6218;
  float _6221;
  float _6262;
  float _6274;
  float _6276;
  float _6278;
  float _6280;
  float _6281;
  float _6282;
  float _6290;
  float _6292;
  float _6299;
  float _6302;
  float _6303;
  float _6305;
  float4 _6313;
  float _6317;
  float _6318;
  float _6319;
  float _6321;
  float _6323;
  float _6325;
  float _6327;
  float _6329;
  float _6330;
  float _6331;
  float _6332;
  float _6336;
  float _6340;
  float _6342;
  float _6344;
  float _6348;
  float _6350;
  float _6352;
  float _6353;
  float _6355;
  float _6358;
  float _6399;
  float _6429;
  float _6443;
  float _6447;
  float _6448;
  float _6449;
  float _6450;
  float _6452;
  float _6454;
  float _6464;
  float _6466;
  float _6473;
  float _6476;
  float _6477;
  float _6479;
  float4 _6487;
  float _6491;
  float _6492;
  float _6493;
  float _6495;
  float _6497;
  float _6499;
  float _6501;
  float _6503;
  float _6504;
  float _6505;
  float _6506;
  float _6510;
  float _6514;
  float _6516;
  float _6518;
  float _6522;
  float _6524;
  float _6526;
  float _6527;
  float _6529;
  float _6532;
  float _6573;
  float _6581;
  float _6582;
  float _6583;
  float _6584;
  float _6586;
  float _6588;
  float _6598;
  float _6600;
  float _6607;
  float _6610;
  float _6611;
  float _6613;
  float4 _6621;
  float _6625;
  float _6626;
  float _6627;
  float _6629;
  float _6631;
  float _6633;
  float _6635;
  float _6637;
  float _6638;
  float _6639;
  float _6640;
  float _6644;
  float _6648;
  float _6650;
  float _6652;
  float _6656;
  float _6658;
  float _6660;
  float _6661;
  float _6663;
  float _6666;
  float _6707;
  float _6724;
  float _6725;
  float _6726;
  uint _6729;
  bool _6744;
  float _6767;
  float _6774;
  float _6781;
  float _6788;
  float _6791;
  half _6794;
  half _6797;
  half _6800;
  float _6829;
  float _6830;
  float _6831;
  float _6839;
  float _6845;
  float _6848;
  float _6851;
  float _6854;
  float _6855;
  float _6856;
  float _6857;
  float2 _6871;
  float _6878;
  float _6880;
  float _6882;
  float _6884;
  float _6887;
  float _6890;
  float _6893;
  float _6900;
  float _6901;
  float _6906;
  float _6911;
  float _6913;
  half _6920;
  half _6927;
  half _6934;
  float _6935;
  float _6936;
  float _6937;
  float _6942;
  float _6950;
  float _6974;
  float _6980;
  float _6986;
  float _6992;
  float _6997;
  float _7006;
  float _7015;
  float _7024;
  float _7029;
  float _7034;
  float _7039;
  float _7049;
  float _7051;
  float _7053;
  float _7058;
  float _7059;
  float _7060;
  float _7061;
  float _7062;
  float _7063;
  float _7064;
  float _7065;
  float _7066;
  float _7067;
  float _7068;
  float _7069;
  float _7090;
  float _7154;
  float _7158;
  float _7172;
  float _7173;
  float _7174;
  float _7180;
  float _7181;
  float _7182;
  float _7194;
  float _7199;
  float _7200;
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
    _275 = saturate((half)(_159 * _159));  // [sem: expr_sat]
    _277 = saturate((half)(_163 * _163));  // [sem: expr_sat]
    _279 = saturate((half)(_168 * _168));  // [sem: expr_sat]
    // [sem: expr_sat]
    _285 = saturate((half)(((half)(((half)(_277 * 0.3395996h)) + ((half)(_275 * 0.61328125h)))) + ((half)(_279 * 0.04736328h))));
    // [sem: expr_sat]
    _291 = saturate((half)(((half)(((half)(_277 * 0.9165039h)) + ((half)(_275 * 0.07019043h)))) + ((half)(_279 * 0.013450623h))));
    // [sem: expr_sat]
    _297 = saturate((half)(((half)(((half)(_277 * 0.109558105h)) + ((half)(_275 * 0.020614624h)))) + ((half)(_279 * 0.8696289h))));
    if (!((uint)((int)(_120) + (int)(-65)) < (uint)2)) {
      _309 = (half)(select(((_120 == 24) || (_120 == 29)), 0.0f, _172));
      _310 = ((half)(_273 * _271));
      _311 = ((half)(_273 * _266));
      _312 = ((half)(_273 * _259));
    } else {
      _309 = _172;
      _310 = _206;
      _311 = _204;
      _312 = _202;
    }
    half4 _314 = __3__36__0__0__g_diffuseResult.Load(int3(_99, _104, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    _318 = float(_314.x);  // [sem: _3__36__0__0__g_diffuseResult_load_derived]
    _319 = float(_314.y);  // [sem: _3__36__0__0__g_diffuseResult_load_derived]
    _320 = float(_314.z);  // [sem: _3__36__0__0__g_diffuseResult_load_derived]
    _323 = (_renderParams2.y > 0.0f);
    [branch]
    if (_323) {
      half4 _326 = __3__36__0__0__g_sceneDiffuse.Load(int3(_99, _104, 0));  // [sem: _3__36__0__0__g_sceneDiffuse_load]
      _337 = (float(_326.z) + _320);
      _338 = (float(_326.y) + _319);
      _339 = (float(_326.x) + _318);
    } else {
      _337 = _320;
      _338 = _319;
      _339 = _318;
    }
    _341 = __3__36__0__0__g_specularResult.Load(int3(_99, _104, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    if ((uint)_120 > (uint)11) {
      bool __branch_chain_346;
      if ((uint)_120 < (uint)21) {
        _356 = 1;
        __branch_chain_346 = true;
      } else {
        if (!(_120 == 107)) {
          _356 = 0;
          __branch_chain_346 = true;
        } else {
          __branch_chain_346 = false;
        }
      }
      if (__branch_chain_346) {
        if (!((_120 == 26) || ((uint)((int)(_120) + (int)(-27)) < (uint)2))) {
          _362 = _356;
          _367 = _362;
          _368 = (((uint)((int)(_120) + (int)(-105)) < (uint)2) || _186);
        } else {
          _367 = _356;
          _368 = true;
        }
      } else {
        _362 = 1;
        _367 = _362;
        _368 = (((uint)((int)(_120) + (int)(-105)) < (uint)2) || _186);
      }
    } else {
      if (_120 == 6) {
        _362 = 1;
        _367 = _362;
        _368 = (((uint)((int)(_120) + (int)(-105)) < (uint)2) || _186);
      } else {
        _356 = ((int)(uint)((int)(_120 == 7)));
        if (!((_120 == 26) || ((uint)((int)(_120) + (int)(-27)) < (uint)2))) {
          _362 = _356;
          _367 = _362;
          _368 = (((uint)((int)(_120) + (int)(-105)) < (uint)2) || _186);
        } else {
          _367 = _356;
          _368 = true;
        }
      }
    }
    _369 = float(_312);
    _370 = float(_311);
    _371 = float(_310);
    _373 = (_111 * 2.0f) + -1.0f;
    _375 = 1.0f - (_113 * 2.0f);
    _387 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _121, mad((_invViewProjRelative[3].y), _375, ((_invViewProjRelative[3].x) * _373)));
    _396 = (mad((_invViewProjRelative[0].z), _121, mad((_invViewProjRelative[0].y), _375, ((_invViewProjRelative[0].x) * _373))) + (_invViewProjRelative[0].w)) / _387;
    _405 = (mad((_invViewProjRelative[1].z), _121, mad((_invViewProjRelative[1].y), _375, ((_invViewProjRelative[1].x) * _373))) + (_invViewProjRelative[1].w)) / _387;
    _414 = (mad((_invViewProjRelative[2].z), _121, mad((_invViewProjRelative[2].y), _375, ((_invViewProjRelative[2].x) * _373))) + (_invViewProjRelative[2].w)) / _387;
    _416 = rsqrt(dot(float3(_396, _405, _414), float3(_396, _405, _414)));  // [sem: invLength]
    _417 = _416 * _396;
    _418 = _416 * _405;
    _419 = _416 * _414;
    _420 = _118.x & 126;  // [sem: _3__36__0__0__g_stencil_load_derived]
    _421 = (_420 == 66);
    _423 = _421 || (_120 == 53);
    _424 = (_120 == 33);
    _425 = (_120 == 54);
    _426 = (_120 == 55);
    if ((_426 || (_423 || (_424 || ((_420 == 64) || _425)))) || _368) {
      _435 = __3__36__0__0__g_character.Load(int3(_99, _104, 0));  // [sem: _3__36__0__0__g_character_load]
      _441 = _435.w;  // [sem: _3__36__0__0__g_character_load_derived]
      _442 = _435.z;  // [sem: _3__36__0__0__g_character_load_derived]
      _443 = _435.y;  // [sem: _3__36__0__0__g_character_load_derived]
      _444 = _435.x;  // [sem: _3__36__0__0__g_character_load_derived]
    } else {
      _441 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
      _442 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
      _443 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
      _444 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
    }
    if (!_424) {
      if (_425) {
        _449 = (uint)((_442 * 255.0f) + 0.5f);
        if (!((_449 & 112) == 0)) {
          _454 = ((uint)((uint)(_449)) >> 4) & 7;
          if (!(_454 == 0)) {
            _458 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_454) + (int)(1)))];
            _467 = _458.x;
            _468 = _458.y;
            _469 = (((float)((uint)((uint)(_449 & 15)))) * 0.06666667f);
            _470 = min((1.0f - _458.y), _458.x);
          } else {
            _467 = 0.0f;
            _468 = 0.0f;
            _469 = 0.0f;
            _470 = 0.0f;
          }
          _911 = 54;
          _912 = (half)(half(_effectiveMetallicForVelvet * _467));
          _913 = _470;
          _914 = _469;
          _915 = _468;
          _916 = _467;
        } else {
          _911 = 52;
          _912 = _309;
          _913 = 0.0f;
          _914 = 0.0f;
          _915 = 0.0f;
          _916 = 0.0f;
        }
        _917 = (_911 == 53);
        if ((_911 == 67) || _917) {
          _925 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 127)));
          if (!(float(_912) > (frac(frac(dot(float2(((_925 * 32.665f) + _105), ((_925 * 11.815f) + _106)), float2(0.06711056f, 0.00583715f))) * 52.982918f) * 0.2f))) {
            if ((_911 & 126) == 66) {
              _1380 = _913;
              _1381 = _914;
              _1382 = _915;
              _1383 = _916;
              _1384 = max(0.01f, float(_297));
              _1385 = max(0.01f, float(_291));
              _1386 = max(0.01f, float(_285));
              _1387 = _911;
              _1388 = ((_442 * 2.0f) + -1.0f);
              _1389 = ((_443 * 2.0f) + -1.0f);
              _1390 = ((_444 * 2.0f) + -1.0f);
              _1391 = 0.0h;
              _1392 = 1.0f;
            } else {
              if (_917) {
                _956 = (_444 * 2.0f) + -1.0f;
                _958 = (_443 * 2.0f) + -1.0f;
                _960 = 1.0f - abs(_956);
                _961 = abs(_958);
                _962 = _960 - _961;
                if (!(_962 >= 0.0f)) {
                  _973 = (_960 * select((_958 >= 0.0f), 1.0f, -1.0f));
                  _974 = ((1.0f - _961) * select((_956 >= 0.0f), 1.0f, -1.0f));
                } else {
                  _973 = _958;
                  _974 = _956;
                }
                _976 = rsqrt(dot(float3(_974, _973, _962), float3(_974, _973, _962)));  // [sem: invLength]
                _1380 = _913;
                _1381 = _914;
                _1382 = _915;
                _1383 = _916;
                _1384 = max(0.01f, float(_297));
                _1385 = max(0.01f, float(_291));
                _1386 = max(0.01f, float(_285));
                _1387 = 53;
                _1388 = (_976 * _962);
                _1389 = (_976 * _973);
                _1390 = (_976 * _974);
                _1391 = 0.0h;
                _1392 = 1.0f;
              } else {
                _1380 = _913;
                _1381 = _914;
                _1382 = _915;
                _1383 = _916;
                _1384 = 0.0f;
                _1385 = 0.0f;
                _1386 = 0.0f;
                _1387 = _911;
                _1388 = _371;
                _1389 = _370;
                _1390 = _369;
                _1391 = 0.0h;
                _1392 = 1.0f;
              }
            }
          } else {
            _1380 = _913;
            _1381 = _914;
            _1382 = _915;
            _1383 = _916;
            _1384 = 0.0f;
            _1385 = 0.0f;
            _1386 = 0.0f;
            _1387 = 52;
            _1388 = _371;
            _1389 = _370;
            _1390 = _369;
            _1391 = 0.0h;
            _1392 = 1.0f;
          }
        } else {
          if ((_911 & 126) == 66) {
            _991 = __3__36__0__0__g_bentCone.Load(int3(_99, _104, 0));  // [sem: _3__36__0__0__g_bentCone_load]
            _996 = (_991.x * 2.0f) + -1.0f;
            _998 = (_991.y * 2.0f) + -1.0f;
            _1000 = (_991.z * 2.0f) + -1.0f;
            _1002 = rsqrt(dot(float3(_996, _998, _1000), float3(_996, _998, _1000)));  // [sem: invLength]
            _1003 = _996 * _1002;
            _1004 = _998 * _1002;
            _1005 = _1000 * _1002;
            if (!(_323 || (_renderParams.z > 0.0f))) {
              _1014 = (half)(saturate((half)(_177 + 0.15002441h)));
            } else {
              _1014 = _177;
            }
            _1015 = float(_1014);
            _1018 = float(_285);
            _1019 = float(_291);
            _1020 = float(_297);
            _1021 = dot(float3(_369, _370, _371), float3(_1003, _1004, _1005));
            _1022 = -0.0f - _417;
            _1023 = -0.0f - _418;
            _1024 = -0.0f - _419;
            _1025 = dot(float3(_369, _370, _371), float3(_1022, _1023, _1024));
            _1031 = cos(abs(asin(_1025) - asin(_1021)) * 0.5f);
            _1033 = _1003 - (_1021 * _369);
            _1035 = _1004 - (_1021 * _370);
            _1037 = _1005 - (_1021 * _371);
            _1039 = _1022 - (_1025 * _369);
            _1041 = _1023 - (_1025 * _370);
            _1043 = _1024 - (_1025 * _371);
            _1050 = dot(float3(_1033, _1035, _1037), float3(_1039, _1041, _1043)) * rsqrt((dot(float3(_1033, _1035, _1037), float3(_1033, _1035, _1037)) * dot(float3(_1039, _1041, _1043), float3(_1039, _1041, _1043))) + 0.0001f);
            _1052 = min(max(_1015, 0.09803922f), 1.0f);
            _1053 = _1052 * _1052;
            _1054 = _1053 * 0.5f;
            _1055 = _1053 * 2.0f;
            _1056 = _1025 + _1021;
            _1057 = _1056 - _bevelParams.y;
            _1061 = 1.0f / ((1.19f / _1031) + (_1031 * 0.36f));
            _1070 = ((_1061 * (0.6f - (_1050 * 0.8f))) + 1.0f) * sqrt(saturate((_1050 * 0.5f) + 0.5f));
            _1076 = 1.0f - (sqrt(saturate(1.0f - (_1070 * _1070))) * _1031);
            _1077 = _1076 * _1076;
            _1081 = 0.9534794f - ((_1077 * _1077) * (_1076 * 0.9534794f));
            _1082 = _1070 * _1061;
            _1087 = (sqrt(1.0f - (_1082 * _1082)) * 0.5f) / _1031;
            _1088 = log2(_1018);
            _1089 = log2(_1019);
            _1090 = log2(_1020);
            _1104 = ((_1081 * _1081) * (exp2((((_1057 * _1057) * -0.5f) / (_1054 * _1054)) * 1.442695f) / (_1053 * 1.2533141f))) * exp2(-5.741926f - (_1050 * 5.265837f));
            _1106 = _1056 - (_bevelParams.y * 4.0f);
            _1108 = 1.0f - (_1031 * 0.5f);
            _1109 = _1108 * _1108;
            _1113 = (_1109 * _1109) * (0.9534794f - (_1031 * 0.4767397f));
            _1114 = 0.9534794f - _1113;
            _1115 = 0.8f / _1031;
            _1131 = (((_1114 * _1114) * (_1113 + 0.046520565f)) * (exp2((((_1106 * _1106) * -0.5f) / (_1055 * _1055)) * 1.442695f) / (_1053 * 5.0132565f))) * exp2((_1050 * 24.525816f) + -24.208424f);
            _1140 = min(0.0f, (-0.0f - ((exp2(_1088 * _1087) * _1104) + (exp2(_1115 * _1088) * _1131))));
            _1149 = min(0.0f, (-0.0f - ((exp2(_1089 * _1087) * _1104) + (exp2(_1115 * _1089) * _1131))));
            _1158 = min(0.0f, (-0.0f - ((exp2(_1090 * _1087) * _1104) + (exp2(_1115 * _1090) * _1131))));
            _1161 = saturate(abs(dot(float3(_1003, _1004, _1005), float3(_369, _370, _371))));  // [sem: expr_sat]
            // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
            _1168 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1161, _1015, saturate(sqrt(exp2(_1088 * 1.5f)))), 0.0f);
            // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
            _1175 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1161, _1015, saturate(sqrt(exp2(_1089 * 1.5f)))), 0.0f);
            // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
            _1182 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1161, _1015, saturate(sqrt(exp2(_1090 * 1.5f)))), 0.0f);
            _1185 = min(0.99f, _1168.x);
            _1186 = min(0.99f, _1175.x);
            _1187 = min(0.99f, _1182.x);
            _1188 = min(0.99f, _1168.y);
            _1189 = min(0.99f, _1175.y);
            _1190 = min(0.99f, _1182.y);
            _1191 = _1185 * _1185;
            _1192 = _1186 * _1186;
            _1193 = _1187 * _1187;
            _1194 = _1188 * _1188;
            _1195 = _1189 * _1189;
            _1196 = _1190 * _1190;
            _1197 = _1194 * _1188;
            _1198 = _1195 * _1189;
            _1199 = _1196 * _1190;
            _1200 = 1.0f - _1191;
            _1201 = 1.0f - _1192;
            _1202 = 1.0f - _1193;
            _1203 = _1200 * _1200;
            _1204 = _1201 * _1201;
            _1205 = _1202 * _1202;
            _1206 = _1203 * _1200;
            _1207 = _1204 * _1201;
            _1208 = _1205 * _1202;
            _1210 = min(max(_1015, 0.18f), 0.6f);
            _1211 = _1210 * _1210;
            _1212 = _1211 * 0.25f;
            _1213 = _1211 * 4.0f;
            _1215 = (_1186 + _1185) + _1187;
            _1216 = _1185 / _1215;
            _1217 = _1186 / _1215;
            _1218 = _1187 / _1215;
            _1219 = dot(float3(_1211, _1212, _1213), float3(_1216, _1217, _1218));
            _1220 = _1219 * _1219;
            _1227 = asin(min(max(_1021, -1.0f), 1.0f)) + asin(min(max(_1025, -1.0f), 1.0f));
            _1228 = _1227 * 0.5f;
            _1229 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1216, _1217, _1218));
            _1230 = _1229 * _1229;
            _1232 = (_1189 + _1188) + _1190;
            _1236 = dot(float3(_1211, _1212, _1213), float3((_1188 / _1232), (_1189 / _1232), (_1190 / _1232)));
            _1240 = sqrt((_1236 * _1236) + (_1220 * 2.0f));
            _1243 = (_1236 * 3.0f) + (_1219 * 2.0f);
            _1251 = (((_1197 + _1188) * ((_1191 * 0.7f) + 1.0f)) * _1240) / ((_1243 * _1197) + _1188);
            _1259 = (((_1198 + _1189) * ((_1192 * 0.7f) + 1.0f)) * _1240) / ((_1243 * _1198) + _1189);
            _1267 = (((_1199 + _1190) * ((_1193 * 0.7f) + 1.0f)) * _1240) / ((_1243 * _1199) + _1190);
            _1278 = _1228 - (((_1230 * (((_1191 * 4.0f) * _1194) + (_1203 * 2.0f))) * (1.0f - ((_1194 * 2.0f) / _1203))) / _1206);
            _1289 = _1228 - (((_1230 * (((_1192 * 4.0f) * _1195) + (_1204 * 2.0f))) * (1.0f - ((_1195 * 2.0f) / _1204))) / _1207);
            _1300 = _1228 - (((_1230 * (((_1193 * 4.0f) * _1196) + (_1205 * 2.0f))) * (1.0f - ((_1196 * 2.0f) / _1205))) / _1208);
            _1306 = exp2((((_1227 * -0.25f) * _1228) / _1220) * 1.442695f) * 1.4f;
            _1326 = ((((((_1188 * _1191) / _1200) + ((_1197 * _1191) / _1206)) * 4.3982296f) * exp2((((_1278 * _1278) * -0.5f) / ((_1251 * _1251) + _1220)) * 1.442695f)) + ((((_1168.x + _1140) * 0.25f) - _1140) * 6.2831855f)) * _1306;
            _1346 = ((((((_1189 * _1192) / _1201) + ((_1198 * _1192) / _1207)) * 4.3982296f) * exp2((((_1289 * _1289) * -0.5f) / ((_1259 * _1259) + _1220)) * 1.442695f)) + ((((_1175.x + _1149) * 0.25f) - _1149) * 6.2831855f)) * _1306;
            _1366 = ((((((_1190 * _1193) / _1202) + ((_1199 * _1193) / _1208)) * 4.3982296f) * exp2((((_1300 * _1300) * -0.5f) / ((_1267 * _1267) + _1220)) * 1.442695f)) + ((((_1182.x + _1158) * 0.25f) - _1158) * 6.2831855f)) * _1306;
            _1380 = _913;
            _1381 = _914;
            _1382 = _915;
            _1383 = _916;
            _1384 = max(0.01f, (lerp(_1366, _1020, 0.125f)));
            _1385 = max(0.01f, (lerp(_1346, _1019, 0.125f)));
            _1386 = max(0.01f, (lerp(_1326, _1018, 0.125f)));
            _1387 = _911;
            _1388 = _371;
            _1389 = _370;
            _1390 = _369;
            _1391 = _912;
            _1392 = 0.0f;
          } else {
            _1380 = _913;
            _1381 = _914;
            _1382 = _915;
            _1383 = _916;
            _1384 = 0.0f;
            _1385 = 0.0f;
            _1386 = 0.0f;
            _1387 = _911;
            _1388 = _371;
            _1389 = _370;
            _1390 = _369;
            _1391 = _912;
            _1392 = 0.0f;
          }
        }
      } else {
        if (_426) {
          _911 = select(((((int)((uint)((_442 * 255.0f) + 0.5f))) & 127) == 0), 52, 55);
          _912 = _309;
          _913 = 0.0f;
          _914 = 0.0f;
          _915 = 0.0f;
          _916 = 0.0f;
          _917 = (_911 == 53);
          if ((_911 == 67) || _917) {
            _925 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 127)));
            if (!(float(_912) > (frac(frac(dot(float2(((_925 * 32.665f) + _105), ((_925 * 11.815f) + _106)), float2(0.06711056f, 0.00583715f))) * 52.982918f) * 0.2f))) {
              if ((_911 & 126) == 66) {
                _1380 = _913;
                _1381 = _914;
                _1382 = _915;
                _1383 = _916;
                _1384 = max(0.01f, float(_297));
                _1385 = max(0.01f, float(_291));
                _1386 = max(0.01f, float(_285));
                _1387 = _911;
                _1388 = ((_442 * 2.0f) + -1.0f);
                _1389 = ((_443 * 2.0f) + -1.0f);
                _1390 = ((_444 * 2.0f) + -1.0f);
                _1391 = 0.0h;
                _1392 = 1.0f;
              } else {
                if (_917) {
                  _956 = (_444 * 2.0f) + -1.0f;
                  _958 = (_443 * 2.0f) + -1.0f;
                  _960 = 1.0f - abs(_956);
                  _961 = abs(_958);
                  _962 = _960 - _961;
                  if (!(_962 >= 0.0f)) {
                    _973 = (_960 * select((_958 >= 0.0f), 1.0f, -1.0f));
                    _974 = ((1.0f - _961) * select((_956 >= 0.0f), 1.0f, -1.0f));
                  } else {
                    _973 = _958;
                    _974 = _956;
                  }
                  _976 = rsqrt(dot(float3(_974, _973, _962), float3(_974, _973, _962)));  // [sem: invLength]
                  _1380 = _913;
                  _1381 = _914;
                  _1382 = _915;
                  _1383 = _916;
                  _1384 = max(0.01f, float(_297));
                  _1385 = max(0.01f, float(_291));
                  _1386 = max(0.01f, float(_285));
                  _1387 = 53;
                  _1388 = (_976 * _962);
                  _1389 = (_976 * _973);
                  _1390 = (_976 * _974);
                  _1391 = 0.0h;
                  _1392 = 1.0f;
                } else {
                  _1380 = _913;
                  _1381 = _914;
                  _1382 = _915;
                  _1383 = _916;
                  _1384 = 0.0f;
                  _1385 = 0.0f;
                  _1386 = 0.0f;
                  _1387 = _911;
                  _1388 = _371;
                  _1389 = _370;
                  _1390 = _369;
                  _1391 = 0.0h;
                  _1392 = 1.0f;
                }
              }
            } else {
              _1380 = _913;
              _1381 = _914;
              _1382 = _915;
              _1383 = _916;
              _1384 = 0.0f;
              _1385 = 0.0f;
              _1386 = 0.0f;
              _1387 = 52;
              _1388 = _371;
              _1389 = _370;
              _1390 = _369;
              _1391 = 0.0h;
              _1392 = 1.0f;
            }
          } else {
            if ((_911 & 126) == 66) {
              _991 = __3__36__0__0__g_bentCone.Load(int3(_99, _104, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _996 = (_991.x * 2.0f) + -1.0f;
              _998 = (_991.y * 2.0f) + -1.0f;
              _1000 = (_991.z * 2.0f) + -1.0f;
              _1002 = rsqrt(dot(float3(_996, _998, _1000), float3(_996, _998, _1000)));  // [sem: invLength]
              _1003 = _996 * _1002;
              _1004 = _998 * _1002;
              _1005 = _1000 * _1002;
              if (!(_323 || (_renderParams.z > 0.0f))) {
                _1014 = (half)(saturate((half)(_177 + 0.15002441h)));
              } else {
                _1014 = _177;
              }
              _1015 = float(_1014);
              _1018 = float(_285);
              _1019 = float(_291);
              _1020 = float(_297);
              _1021 = dot(float3(_369, _370, _371), float3(_1003, _1004, _1005));
              _1022 = -0.0f - _417;
              _1023 = -0.0f - _418;
              _1024 = -0.0f - _419;
              _1025 = dot(float3(_369, _370, _371), float3(_1022, _1023, _1024));
              _1031 = cos(abs(asin(_1025) - asin(_1021)) * 0.5f);
              _1033 = _1003 - (_1021 * _369);
              _1035 = _1004 - (_1021 * _370);
              _1037 = _1005 - (_1021 * _371);
              _1039 = _1022 - (_1025 * _369);
              _1041 = _1023 - (_1025 * _370);
              _1043 = _1024 - (_1025 * _371);
              _1050 = dot(float3(_1033, _1035, _1037), float3(_1039, _1041, _1043)) * rsqrt((dot(float3(_1033, _1035, _1037), float3(_1033, _1035, _1037)) * dot(float3(_1039, _1041, _1043), float3(_1039, _1041, _1043))) + 0.0001f);
              _1052 = min(max(_1015, 0.09803922f), 1.0f);
              _1053 = _1052 * _1052;
              _1054 = _1053 * 0.5f;
              _1055 = _1053 * 2.0f;
              _1056 = _1025 + _1021;
              _1057 = _1056 - _bevelParams.y;
              _1061 = 1.0f / ((1.19f / _1031) + (_1031 * 0.36f));
              _1070 = ((_1061 * (0.6f - (_1050 * 0.8f))) + 1.0f) * sqrt(saturate((_1050 * 0.5f) + 0.5f));
              _1076 = 1.0f - (sqrt(saturate(1.0f - (_1070 * _1070))) * _1031);
              _1077 = _1076 * _1076;
              _1081 = 0.9534794f - ((_1077 * _1077) * (_1076 * 0.9534794f));
              _1082 = _1070 * _1061;
              _1087 = (sqrt(1.0f - (_1082 * _1082)) * 0.5f) / _1031;
              _1088 = log2(_1018);
              _1089 = log2(_1019);
              _1090 = log2(_1020);
              _1104 = ((_1081 * _1081) * (exp2((((_1057 * _1057) * -0.5f) / (_1054 * _1054)) * 1.442695f) / (_1053 * 1.2533141f))) * exp2(-5.741926f - (_1050 * 5.265837f));
              _1106 = _1056 - (_bevelParams.y * 4.0f);
              _1108 = 1.0f - (_1031 * 0.5f);
              _1109 = _1108 * _1108;
              _1113 = (_1109 * _1109) * (0.9534794f - (_1031 * 0.4767397f));
              _1114 = 0.9534794f - _1113;
              _1115 = 0.8f / _1031;
              _1131 = (((_1114 * _1114) * (_1113 + 0.046520565f)) * (exp2((((_1106 * _1106) * -0.5f) / (_1055 * _1055)) * 1.442695f) / (_1053 * 5.0132565f))) * exp2((_1050 * 24.525816f) + -24.208424f);
              _1140 = min(0.0f, (-0.0f - ((exp2(_1088 * _1087) * _1104) + (exp2(_1115 * _1088) * _1131))));
              _1149 = min(0.0f, (-0.0f - ((exp2(_1089 * _1087) * _1104) + (exp2(_1115 * _1089) * _1131))));
              _1158 = min(0.0f, (-0.0f - ((exp2(_1090 * _1087) * _1104) + (exp2(_1115 * _1090) * _1131))));
              _1161 = saturate(abs(dot(float3(_1003, _1004, _1005), float3(_369, _370, _371))));  // [sem: expr_sat]
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1168 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1161, _1015, saturate(sqrt(exp2(_1088 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1175 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1161, _1015, saturate(sqrt(exp2(_1089 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1182 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1161, _1015, saturate(sqrt(exp2(_1090 * 1.5f)))), 0.0f);
              _1185 = min(0.99f, _1168.x);
              _1186 = min(0.99f, _1175.x);
              _1187 = min(0.99f, _1182.x);
              _1188 = min(0.99f, _1168.y);
              _1189 = min(0.99f, _1175.y);
              _1190 = min(0.99f, _1182.y);
              _1191 = _1185 * _1185;
              _1192 = _1186 * _1186;
              _1193 = _1187 * _1187;
              _1194 = _1188 * _1188;
              _1195 = _1189 * _1189;
              _1196 = _1190 * _1190;
              _1197 = _1194 * _1188;
              _1198 = _1195 * _1189;
              _1199 = _1196 * _1190;
              _1200 = 1.0f - _1191;
              _1201 = 1.0f - _1192;
              _1202 = 1.0f - _1193;
              _1203 = _1200 * _1200;
              _1204 = _1201 * _1201;
              _1205 = _1202 * _1202;
              _1206 = _1203 * _1200;
              _1207 = _1204 * _1201;
              _1208 = _1205 * _1202;
              _1210 = min(max(_1015, 0.18f), 0.6f);
              _1211 = _1210 * _1210;
              _1212 = _1211 * 0.25f;
              _1213 = _1211 * 4.0f;
              _1215 = (_1186 + _1185) + _1187;
              _1216 = _1185 / _1215;
              _1217 = _1186 / _1215;
              _1218 = _1187 / _1215;
              _1219 = dot(float3(_1211, _1212, _1213), float3(_1216, _1217, _1218));
              _1220 = _1219 * _1219;
              _1227 = asin(min(max(_1021, -1.0f), 1.0f)) + asin(min(max(_1025, -1.0f), 1.0f));
              _1228 = _1227 * 0.5f;
              _1229 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1216, _1217, _1218));
              _1230 = _1229 * _1229;
              _1232 = (_1189 + _1188) + _1190;
              _1236 = dot(float3(_1211, _1212, _1213), float3((_1188 / _1232), (_1189 / _1232), (_1190 / _1232)));
              _1240 = sqrt((_1236 * _1236) + (_1220 * 2.0f));
              _1243 = (_1236 * 3.0f) + (_1219 * 2.0f);
              _1251 = (((_1197 + _1188) * ((_1191 * 0.7f) + 1.0f)) * _1240) / ((_1243 * _1197) + _1188);
              _1259 = (((_1198 + _1189) * ((_1192 * 0.7f) + 1.0f)) * _1240) / ((_1243 * _1198) + _1189);
              _1267 = (((_1199 + _1190) * ((_1193 * 0.7f) + 1.0f)) * _1240) / ((_1243 * _1199) + _1190);
              _1278 = _1228 - (((_1230 * (((_1191 * 4.0f) * _1194) + (_1203 * 2.0f))) * (1.0f - ((_1194 * 2.0f) / _1203))) / _1206);
              _1289 = _1228 - (((_1230 * (((_1192 * 4.0f) * _1195) + (_1204 * 2.0f))) * (1.0f - ((_1195 * 2.0f) / _1204))) / _1207);
              _1300 = _1228 - (((_1230 * (((_1193 * 4.0f) * _1196) + (_1205 * 2.0f))) * (1.0f - ((_1196 * 2.0f) / _1205))) / _1208);
              _1306 = exp2((((_1227 * -0.25f) * _1228) / _1220) * 1.442695f) * 1.4f;
              _1326 = ((((((_1188 * _1191) / _1200) + ((_1197 * _1191) / _1206)) * 4.3982296f) * exp2((((_1278 * _1278) * -0.5f) / ((_1251 * _1251) + _1220)) * 1.442695f)) + ((((_1168.x + _1140) * 0.25f) - _1140) * 6.2831855f)) * _1306;
              _1346 = ((((((_1189 * _1192) / _1201) + ((_1198 * _1192) / _1207)) * 4.3982296f) * exp2((((_1289 * _1289) * -0.5f) / ((_1259 * _1259) + _1220)) * 1.442695f)) + ((((_1175.x + _1149) * 0.25f) - _1149) * 6.2831855f)) * _1306;
              _1366 = ((((((_1190 * _1193) / _1202) + ((_1199 * _1193) / _1208)) * 4.3982296f) * exp2((((_1300 * _1300) * -0.5f) / ((_1267 * _1267) + _1220)) * 1.442695f)) + ((((_1182.x + _1158) * 0.25f) - _1158) * 6.2831855f)) * _1306;
              _1380 = _913;
              _1381 = _914;
              _1382 = _915;
              _1383 = _916;
              _1384 = max(0.01f, (lerp(_1366, _1020, 0.125f)));
              _1385 = max(0.01f, (lerp(_1346, _1019, 0.125f)));
              _1386 = max(0.01f, (lerp(_1326, _1018, 0.125f)));
              _1387 = _911;
              _1388 = _371;
              _1389 = _370;
              _1390 = _369;
              _1391 = _912;
              _1392 = 0.0f;
            } else {
              _1380 = _913;
              _1381 = _914;
              _1382 = _915;
              _1383 = _916;
              _1384 = 0.0f;
              _1385 = 0.0f;
              _1386 = 0.0f;
              _1387 = _911;
              _1388 = _371;
              _1389 = _370;
              _1390 = _369;
              _1391 = _912;
              _1392 = 0.0f;
            }
          }
        } else {
          if (_120 == 66) {
            _512 = float(_309);
            _514 = (_444 * 2.0f) + -1.0f;
            _516 = (_443 * 2.0f) + -1.0f;
            _518 = (_442 * 2.0f) + -1.0f;
            if (_421) {
              _521 = __3__36__0__0__g_bentCone.Load(int3(_99, _104, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _526 = (_521.x * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_bentCone_load_derived]
              _528 = (_521.y * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_bentCone_load_derived]
              _530 = (_521.z * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_bentCone_load_derived]
              _532 = rsqrt(dot(float3(_526, _528, _530), float3(_526, _528, _530)));  // [sem: invLength]
              _533 = _526 * _532;
              _534 = _528 * _532;
              _535 = _530 * _532;
              if (!(_323 || (_renderParams.z > 0.0f))) {
                _544 = (half)(saturate((half)(_177 + 0.15002441h)));
              } else {
                _544 = _177;
              }
              _545 = float(_544);
              _548 = float(_285);
              _549 = float(_291);
              _550 = float(_297);
              _551 = dot(float3(_514, _516, _518), float3(_533, _534, _535));
              _552 = -0.0f - _417;
              _553 = -0.0f - _418;
              _554 = -0.0f - _419;
              _555 = dot(float3(_514, _516, _518), float3(_552, _553, _554));
              _561 = cos(abs(asin(_555) - asin(_551)) * 0.5f);
              _563 = _533 - (_551 * _514);
              _565 = _534 - (_551 * _516);
              _567 = _535 - (_551 * _518);
              _569 = _552 - (_555 * _514);
              _571 = _553 - (_555 * _516);
              _573 = _554 - (_555 * _518);
              _580 = dot(float3(_563, _565, _567), float3(_569, _571, _573)) * rsqrt((dot(float3(_563, _565, _567), float3(_563, _565, _567)) * dot(float3(_569, _571, _573), float3(_569, _571, _573))) + 0.0001f);
              _582 = min(max(_545, 0.09803922f), 1.0f);
              _583 = _582 * _582;
              _584 = _583 * 0.5f;
              _585 = _583 * 2.0f;
              _586 = _555 + _551;
              _587 = _586 - _bevelParams.y;
              _591 = 1.0f / ((1.19f / _561) + (_561 * 0.36f));
              _600 = ((_591 * (0.6f - (_580 * 0.8f))) + 1.0f) * sqrt(saturate((_580 * 0.5f) + 0.5f));
              _606 = 1.0f - (sqrt(saturate(1.0f - (_600 * _600))) * _561);
              _607 = _606 * _606;
              _611 = 0.9534794f - ((_607 * _607) * (_606 * 0.9534794f));
              _612 = _600 * _591;
              _617 = (sqrt(1.0f - (_612 * _612)) * 0.5f) / _561;
              _618 = log2(_548);
              _619 = log2(_549);
              _620 = log2(_550);
              _634 = ((_611 * _611) * (exp2((((_587 * _587) * -0.5f) / (_584 * _584)) * 1.442695f) / (_583 * 1.2533141f))) * exp2(-5.741926f - (_580 * 5.265837f));
              _636 = _586 - (_bevelParams.y * 4.0f);
              _638 = 1.0f - (_561 * 0.5f);
              _639 = _638 * _638;
              _643 = (_639 * _639) * (0.9534794f - (_561 * 0.4767397f));
              _644 = 0.9534794f - _643;
              _645 = 0.8f / _561;
              _661 = (((_644 * _644) * (_643 + 0.046520565f)) * (exp2((((_636 * _636) * -0.5f) / (_585 * _585)) * 1.442695f) / (_583 * 5.0132565f))) * exp2((_580 * 24.525816f) + -24.208424f);
              _670 = min(0.0f, (-0.0f - ((exp2(_618 * _617) * _634) + (exp2(_645 * _618) * _661))));
              _679 = min(0.0f, (-0.0f - ((exp2(_619 * _617) * _634) + (exp2(_645 * _619) * _661))));
              _688 = min(0.0f, (-0.0f - ((exp2(_620 * _617) * _634) + (exp2(_645 * _620) * _661))));
              _691 = saturate(abs(dot(float3(_533, _534, _535), float3(_514, _516, _518))));  // [sem: expr_sat]
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _698 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_691, _545, saturate(sqrt(exp2(_618 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _705 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_691, _545, saturate(sqrt(exp2(_619 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _712 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_691, _545, saturate(sqrt(exp2(_620 * 1.5f)))), 0.0f);
              _715 = min(0.99f, _698.x);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
              _716 = min(0.99f, _705.x);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
              _717 = min(0.99f, _712.x);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
              _718 = min(0.99f, _698.y);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
              _719 = min(0.99f, _705.y);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
              _720 = min(0.99f, _712.y);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
              _721 = _715 * _715;
              _722 = _716 * _716;
              _723 = _717 * _717;
              _724 = _718 * _718;
              _725 = _719 * _719;
              _726 = _720 * _720;
              _727 = _724 * _718;
              _728 = _725 * _719;
              _729 = _726 * _720;
              _730 = 1.0f - _721;
              _731 = 1.0f - _722;
              _732 = 1.0f - _723;
              _733 = _730 * _730;
              _734 = _731 * _731;
              _735 = _732 * _732;
              _736 = _733 * _730;
              _737 = _734 * _731;
              _738 = _735 * _732;
              _740 = min(max(_545, 0.18f), 0.6f);
              _741 = _740 * _740;
              _742 = _741 * 0.25f;
              _743 = _741 * 4.0f;
              _745 = (_716 + _715) + _717;
              _746 = _715 / _745;
              _747 = _716 / _745;
              _748 = _717 / _745;
              _749 = dot(float3(_741, _742, _743), float3(_746, _747, _748));
              _750 = _749 * _749;
              _757 = asin(min(max(_551, -1.0f), 1.0f)) + asin(min(max(_555, -1.0f), 1.0f));
              _758 = _757 * 0.5f;
              _759 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_746, _747, _748));
              _760 = _759 * _759;
              _762 = (_719 + _718) + _720;
              _766 = dot(float3(_741, _742, _743), float3((_718 / _762), (_719 / _762), (_720 / _762)));
              _770 = sqrt((_766 * _766) + (_750 * 2.0f));
              _773 = (_766 * 3.0f) + (_749 * 2.0f);
              _781 = (((_727 + _718) * ((_721 * 0.7f) + 1.0f)) * _770) / ((_773 * _727) + _718);
              _789 = (((_728 + _719) * ((_722 * 0.7f) + 1.0f)) * _770) / ((_773 * _728) + _719);
              _797 = (((_729 + _720) * ((_723 * 0.7f) + 1.0f)) * _770) / ((_773 * _729) + _720);
              _808 = _758 - (((_760 * (((_721 * 4.0f) * _724) + (_733 * 2.0f))) * (1.0f - ((_724 * 2.0f) / _733))) / _736);
              _819 = _758 - (((_760 * (((_722 * 4.0f) * _725) + (_734 * 2.0f))) * (1.0f - ((_725 * 2.0f) / _734))) / _737);
              _830 = _758 - (((_760 * (((_723 * 4.0f) * _726) + (_735 * 2.0f))) * (1.0f - ((_726 * 2.0f) / _735))) / _738);
              _836 = exp2((((_757 * -0.25f) * _758) / _750) * 1.442695f) * 1.4f;
              _856 = ((((((_718 * _721) / _730) + ((_727 * _721) / _736)) * 4.3982296f) * exp2((((_808 * _808) * -0.5f) / ((_781 * _781) + _750)) * 1.442695f)) + ((((_698.x + _670) * 0.25f) - _670) * 6.2831855f)) * _836;
              _876 = ((((((_719 * _722) / _731) + ((_728 * _722) / _737)) * 4.3982296f) * exp2((((_819 * _819) * -0.5f) / ((_789 * _789) + _750)) * 1.442695f)) + ((((_705.x + _679) * 0.25f) - _679) * 6.2831855f)) * _836;
              _896 = ((((((_720 * _723) / _732) + ((_729 * _723) / _738)) * 4.3982296f) * exp2((((_830 * _830) * -0.5f) / ((_797 * _797) + _750)) * 1.442695f)) + ((((_712.x + _688) * 0.25f) - _688) * 6.2831855f)) * _836;
              _897 = max(0.125f, _512);
              _1380 = 0.0f;
              _1381 = 0.0f;
              _1382 = 0.0f;
              _1383 = 0.0f;
              _1384 = max(0.01f, (lerp(_896, _550, _897)));
              _1385 = max(0.01f, ((_897 * (_549 - _876)) + _876));
              _1386 = max(0.01f, ((_897 * (_548 - _856)) + _856));
              _1387 = 66;
              _1388 = _518;
              _1389 = _516;
              _1390 = _514;
              _1391 = 0.0h;
              _1392 = _512;
            } else {
              _1380 = 0.0f;
              _1381 = 0.0f;
              _1382 = 0.0f;
              _1383 = 0.0f;
              _1384 = 0.0f;
              _1385 = 0.0f;
              _1386 = 0.0f;
              _1387 = 66;
              _1388 = _518;
              _1389 = _516;
              _1390 = _514;
              _1391 = 0.0h;
              _1392 = _512;
            }
          } else {
            _911 = _120;
            _912 = _309;
            _913 = 0.0f;
            _914 = 0.0f;
            _915 = 0.0f;
            _916 = 0.0f;
            _917 = (_911 == 53);
            if ((_911 == 67) || _917) {
              _925 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 127)));
              if (!(float(_912) > (frac(frac(dot(float2(((_925 * 32.665f) + _105), ((_925 * 11.815f) + _106)), float2(0.06711056f, 0.00583715f))) * 52.982918f) * 0.2f))) {
                if ((_911 & 126) == 66) {
                  _1380 = _913;
                  _1381 = _914;
                  _1382 = _915;
                  _1383 = _916;
                  _1384 = max(0.01f, float(_297));
                  _1385 = max(0.01f, float(_291));
                  _1386 = max(0.01f, float(_285));
                  _1387 = _911;
                  _1388 = ((_442 * 2.0f) + -1.0f);
                  _1389 = ((_443 * 2.0f) + -1.0f);
                  _1390 = ((_444 * 2.0f) + -1.0f);
                  _1391 = 0.0h;
                  _1392 = 1.0f;
                } else {
                  if (_917) {
                    _956 = (_444 * 2.0f) + -1.0f;
                    _958 = (_443 * 2.0f) + -1.0f;
                    _960 = 1.0f - abs(_956);
                    _961 = abs(_958);
                    _962 = _960 - _961;
                    if (!(_962 >= 0.0f)) {
                      _973 = (_960 * select((_958 >= 0.0f), 1.0f, -1.0f));
                      _974 = ((1.0f - _961) * select((_956 >= 0.0f), 1.0f, -1.0f));
                    } else {
                      _973 = _958;
                      _974 = _956;
                    }
                    _976 = rsqrt(dot(float3(_974, _973, _962), float3(_974, _973, _962)));  // [sem: invLength]
                    _1380 = _913;
                    _1381 = _914;
                    _1382 = _915;
                    _1383 = _916;
                    _1384 = max(0.01f, float(_297));
                    _1385 = max(0.01f, float(_291));
                    _1386 = max(0.01f, float(_285));
                    _1387 = 53;
                    _1388 = (_976 * _962);
                    _1389 = (_976 * _973);
                    _1390 = (_976 * _974);
                    _1391 = 0.0h;
                    _1392 = 1.0f;
                  } else {
                    _1380 = _913;
                    _1381 = _914;
                    _1382 = _915;
                    _1383 = _916;
                    _1384 = 0.0f;
                    _1385 = 0.0f;
                    _1386 = 0.0f;
                    _1387 = _911;
                    _1388 = _371;
                    _1389 = _370;
                    _1390 = _369;
                    _1391 = 0.0h;
                    _1392 = 1.0f;
                  }
                }
              } else {
                _1380 = _913;
                _1381 = _914;
                _1382 = _915;
                _1383 = _916;
                _1384 = 0.0f;
                _1385 = 0.0f;
                _1386 = 0.0f;
                _1387 = 52;
                _1388 = _371;
                _1389 = _370;
                _1390 = _369;
                _1391 = 0.0h;
                _1392 = 1.0f;
              }
            } else {
              if ((_911 & 126) == 66) {
                _991 = __3__36__0__0__g_bentCone.Load(int3(_99, _104, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _996 = (_991.x * 2.0f) + -1.0f;
                _998 = (_991.y * 2.0f) + -1.0f;
                _1000 = (_991.z * 2.0f) + -1.0f;
                _1002 = rsqrt(dot(float3(_996, _998, _1000), float3(_996, _998, _1000)));  // [sem: invLength]
                _1003 = _996 * _1002;
                _1004 = _998 * _1002;
                _1005 = _1000 * _1002;
                if (!(_323 || (_renderParams.z > 0.0f))) {
                  _1014 = (half)(saturate((half)(_177 + 0.15002441h)));
                } else {
                  _1014 = _177;
                }
                _1015 = float(_1014);
                _1018 = float(_285);
                _1019 = float(_291);
                _1020 = float(_297);
                _1021 = dot(float3(_369, _370, _371), float3(_1003, _1004, _1005));
                _1022 = -0.0f - _417;
                _1023 = -0.0f - _418;
                _1024 = -0.0f - _419;
                _1025 = dot(float3(_369, _370, _371), float3(_1022, _1023, _1024));
                _1031 = cos(abs(asin(_1025) - asin(_1021)) * 0.5f);
                _1033 = _1003 - (_1021 * _369);
                _1035 = _1004 - (_1021 * _370);
                _1037 = _1005 - (_1021 * _371);
                _1039 = _1022 - (_1025 * _369);
                _1041 = _1023 - (_1025 * _370);
                _1043 = _1024 - (_1025 * _371);
                _1050 = dot(float3(_1033, _1035, _1037), float3(_1039, _1041, _1043)) * rsqrt((dot(float3(_1033, _1035, _1037), float3(_1033, _1035, _1037)) * dot(float3(_1039, _1041, _1043), float3(_1039, _1041, _1043))) + 0.0001f);
                _1052 = min(max(_1015, 0.09803922f), 1.0f);
                _1053 = _1052 * _1052;
                _1054 = _1053 * 0.5f;
                _1055 = _1053 * 2.0f;
                _1056 = _1025 + _1021;
                _1057 = _1056 - _bevelParams.y;
                _1061 = 1.0f / ((1.19f / _1031) + (_1031 * 0.36f));
                _1070 = ((_1061 * (0.6f - (_1050 * 0.8f))) + 1.0f) * sqrt(saturate((_1050 * 0.5f) + 0.5f));
                _1076 = 1.0f - (sqrt(saturate(1.0f - (_1070 * _1070))) * _1031);
                _1077 = _1076 * _1076;
                _1081 = 0.9534794f - ((_1077 * _1077) * (_1076 * 0.9534794f));
                _1082 = _1070 * _1061;
                _1087 = (sqrt(1.0f - (_1082 * _1082)) * 0.5f) / _1031;
                _1088 = log2(_1018);
                _1089 = log2(_1019);
                _1090 = log2(_1020);
                _1104 = ((_1081 * _1081) * (exp2((((_1057 * _1057) * -0.5f) / (_1054 * _1054)) * 1.442695f) / (_1053 * 1.2533141f))) * exp2(-5.741926f - (_1050 * 5.265837f));
                _1106 = _1056 - (_bevelParams.y * 4.0f);
                _1108 = 1.0f - (_1031 * 0.5f);
                _1109 = _1108 * _1108;
                _1113 = (_1109 * _1109) * (0.9534794f - (_1031 * 0.4767397f));
                _1114 = 0.9534794f - _1113;
                _1115 = 0.8f / _1031;
                _1131 = (((_1114 * _1114) * (_1113 + 0.046520565f)) * (exp2((((_1106 * _1106) * -0.5f) / (_1055 * _1055)) * 1.442695f) / (_1053 * 5.0132565f))) * exp2((_1050 * 24.525816f) + -24.208424f);
                _1140 = min(0.0f, (-0.0f - ((exp2(_1088 * _1087) * _1104) + (exp2(_1115 * _1088) * _1131))));
                _1149 = min(0.0f, (-0.0f - ((exp2(_1089 * _1087) * _1104) + (exp2(_1115 * _1089) * _1131))));
                _1158 = min(0.0f, (-0.0f - ((exp2(_1090 * _1087) * _1104) + (exp2(_1115 * _1090) * _1131))));
                _1161 = saturate(abs(dot(float3(_1003, _1004, _1005), float3(_369, _370, _371))));  // [sem: expr_sat]
                // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
                _1168 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1161, _1015, saturate(sqrt(exp2(_1088 * 1.5f)))), 0.0f);
                // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
                _1175 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1161, _1015, saturate(sqrt(exp2(_1089 * 1.5f)))), 0.0f);
                // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
                _1182 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1161, _1015, saturate(sqrt(exp2(_1090 * 1.5f)))), 0.0f);
                _1185 = min(0.99f, _1168.x);
                _1186 = min(0.99f, _1175.x);
                _1187 = min(0.99f, _1182.x);
                _1188 = min(0.99f, _1168.y);
                _1189 = min(0.99f, _1175.y);
                _1190 = min(0.99f, _1182.y);
                _1191 = _1185 * _1185;
                _1192 = _1186 * _1186;
                _1193 = _1187 * _1187;
                _1194 = _1188 * _1188;
                _1195 = _1189 * _1189;
                _1196 = _1190 * _1190;
                _1197 = _1194 * _1188;
                _1198 = _1195 * _1189;
                _1199 = _1196 * _1190;
                _1200 = 1.0f - _1191;
                _1201 = 1.0f - _1192;
                _1202 = 1.0f - _1193;
                _1203 = _1200 * _1200;
                _1204 = _1201 * _1201;
                _1205 = _1202 * _1202;
                _1206 = _1203 * _1200;
                _1207 = _1204 * _1201;
                _1208 = _1205 * _1202;
                _1210 = min(max(_1015, 0.18f), 0.6f);
                _1211 = _1210 * _1210;
                _1212 = _1211 * 0.25f;
                _1213 = _1211 * 4.0f;
                _1215 = (_1186 + _1185) + _1187;
                _1216 = _1185 / _1215;
                _1217 = _1186 / _1215;
                _1218 = _1187 / _1215;
                _1219 = dot(float3(_1211, _1212, _1213), float3(_1216, _1217, _1218));
                _1220 = _1219 * _1219;
                _1227 = asin(min(max(_1021, -1.0f), 1.0f)) + asin(min(max(_1025, -1.0f), 1.0f));
                _1228 = _1227 * 0.5f;
                _1229 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1216, _1217, _1218));
                _1230 = _1229 * _1229;
                _1232 = (_1189 + _1188) + _1190;
                _1236 = dot(float3(_1211, _1212, _1213), float3((_1188 / _1232), (_1189 / _1232), (_1190 / _1232)));
                _1240 = sqrt((_1236 * _1236) + (_1220 * 2.0f));
                _1243 = (_1236 * 3.0f) + (_1219 * 2.0f);
                _1251 = (((_1197 + _1188) * ((_1191 * 0.7f) + 1.0f)) * _1240) / ((_1243 * _1197) + _1188);
                _1259 = (((_1198 + _1189) * ((_1192 * 0.7f) + 1.0f)) * _1240) / ((_1243 * _1198) + _1189);
                _1267 = (((_1199 + _1190) * ((_1193 * 0.7f) + 1.0f)) * _1240) / ((_1243 * _1199) + _1190);
                _1278 = _1228 - (((_1230 * (((_1191 * 4.0f) * _1194) + (_1203 * 2.0f))) * (1.0f - ((_1194 * 2.0f) / _1203))) / _1206);
                _1289 = _1228 - (((_1230 * (((_1192 * 4.0f) * _1195) + (_1204 * 2.0f))) * (1.0f - ((_1195 * 2.0f) / _1204))) / _1207);
                _1300 = _1228 - (((_1230 * (((_1193 * 4.0f) * _1196) + (_1205 * 2.0f))) * (1.0f - ((_1196 * 2.0f) / _1205))) / _1208);
                _1306 = exp2((((_1227 * -0.25f) * _1228) / _1220) * 1.442695f) * 1.4f;
                _1326 = ((((((_1188 * _1191) / _1200) + ((_1197 * _1191) / _1206)) * 4.3982296f) * exp2((((_1278 * _1278) * -0.5f) / ((_1251 * _1251) + _1220)) * 1.442695f)) + ((((_1168.x + _1140) * 0.25f) - _1140) * 6.2831855f)) * _1306;
                _1346 = ((((((_1189 * _1192) / _1201) + ((_1198 * _1192) / _1207)) * 4.3982296f) * exp2((((_1289 * _1289) * -0.5f) / ((_1259 * _1259) + _1220)) * 1.442695f)) + ((((_1175.x + _1149) * 0.25f) - _1149) * 6.2831855f)) * _1306;
                _1366 = ((((((_1190 * _1193) / _1202) + ((_1199 * _1193) / _1208)) * 4.3982296f) * exp2((((_1300 * _1300) * -0.5f) / ((_1267 * _1267) + _1220)) * 1.442695f)) + ((((_1182.x + _1158) * 0.25f) - _1158) * 6.2831855f)) * _1306;
                _1380 = _913;
                _1381 = _914;
                _1382 = _915;
                _1383 = _916;
                _1384 = max(0.01f, (lerp(_1366, _1020, 0.125f)));
                _1385 = max(0.01f, (lerp(_1346, _1019, 0.125f)));
                _1386 = max(0.01f, (lerp(_1326, _1018, 0.125f)));
                _1387 = _911;
                _1388 = _371;
                _1389 = _370;
                _1390 = _369;
                _1391 = _912;
                _1392 = 0.0f;
              } else {
                _1380 = _913;
                _1381 = _914;
                _1382 = _915;
                _1383 = _916;
                _1384 = 0.0f;
                _1385 = 0.0f;
                _1386 = 0.0f;
                _1387 = _911;
                _1388 = _371;
                _1389 = _370;
                _1390 = _369;
                _1391 = _912;
                _1392 = 0.0f;
              }
            }
          }
        }
      }
    } else {
      _486 = (uint)((_442 * 255.0f) + 0.5f);
      _488 = ((uint)((uint)(_486)) >> 4) & 7;
      if (!(_488 == 0)) {
        _492 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_488) + (int)(1)))];
        _501 = _492.x;
        _502 = _492.y;
        _503 = (((float)((uint)((uint)(_486 & 15)))) * 0.06666667f);
        _504 = min((1.0f - _492.y), _492.x);
      } else {
        _501 = 0.0f;
        _502 = 0.0f;
        _503 = 0.0f;
        _504 = 0.0f;
      }
      _911 = 33;
      _912 = (half)(half(_effectiveMetallicForVelvet * _501));
      _913 = _504;
      _914 = _503;
      _915 = _502;
      _916 = _501;
      _917 = (_911 == 53);
      if ((_911 == 67) || _917) {
        _925 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 127)));
        if (!(float(_912) > (frac(frac(dot(float2(((_925 * 32.665f) + _105), ((_925 * 11.815f) + _106)), float2(0.06711056f, 0.00583715f))) * 52.982918f) * 0.2f))) {
          if ((_911 & 126) == 66) {
            _1380 = _913;
            _1381 = _914;
            _1382 = _915;
            _1383 = _916;
            _1384 = max(0.01f, float(_297));
            _1385 = max(0.01f, float(_291));
            _1386 = max(0.01f, float(_285));
            _1387 = _911;
            _1388 = ((_442 * 2.0f) + -1.0f);
            _1389 = ((_443 * 2.0f) + -1.0f);
            _1390 = ((_444 * 2.0f) + -1.0f);
            _1391 = 0.0h;
            _1392 = 1.0f;
          } else {
            if (_917) {
              _956 = (_444 * 2.0f) + -1.0f;
              _958 = (_443 * 2.0f) + -1.0f;
              _960 = 1.0f - abs(_956);
              _961 = abs(_958);
              _962 = _960 - _961;
              if (!(_962 >= 0.0f)) {
                _973 = (_960 * select((_958 >= 0.0f), 1.0f, -1.0f));
                _974 = ((1.0f - _961) * select((_956 >= 0.0f), 1.0f, -1.0f));
              } else {
                _973 = _958;
                _974 = _956;
              }
              _976 = rsqrt(dot(float3(_974, _973, _962), float3(_974, _973, _962)));  // [sem: invLength]
              _1380 = _913;
              _1381 = _914;
              _1382 = _915;
              _1383 = _916;
              _1384 = max(0.01f, float(_297));
              _1385 = max(0.01f, float(_291));
              _1386 = max(0.01f, float(_285));
              _1387 = 53;
              _1388 = (_976 * _962);
              _1389 = (_976 * _973);
              _1390 = (_976 * _974);
              _1391 = 0.0h;
              _1392 = 1.0f;
            } else {
              _1380 = _913;
              _1381 = _914;
              _1382 = _915;
              _1383 = _916;
              _1384 = 0.0f;
              _1385 = 0.0f;
              _1386 = 0.0f;
              _1387 = _911;
              _1388 = _371;
              _1389 = _370;
              _1390 = _369;
              _1391 = 0.0h;
              _1392 = 1.0f;
            }
          }
        } else {
          _1380 = _913;
          _1381 = _914;
          _1382 = _915;
          _1383 = _916;
          _1384 = 0.0f;
          _1385 = 0.0f;
          _1386 = 0.0f;
          _1387 = 52;
          _1388 = _371;
          _1389 = _370;
          _1390 = _369;
          _1391 = 0.0h;
          _1392 = 1.0f;
        }
      } else {
        if ((_911 & 126) == 66) {
          _991 = __3__36__0__0__g_bentCone.Load(int3(_99, _104, 0));  // [sem: _3__36__0__0__g_bentCone_load]
          _996 = (_991.x * 2.0f) + -1.0f;
          _998 = (_991.y * 2.0f) + -1.0f;
          _1000 = (_991.z * 2.0f) + -1.0f;
          _1002 = rsqrt(dot(float3(_996, _998, _1000), float3(_996, _998, _1000)));  // [sem: invLength]
          _1003 = _996 * _1002;
          _1004 = _998 * _1002;
          _1005 = _1000 * _1002;
          if (!(_323 || (_renderParams.z > 0.0f))) {
            _1014 = (half)(saturate((half)(_177 + 0.15002441h)));
          } else {
            _1014 = _177;
          }
          _1015 = float(_1014);
          _1018 = float(_285);
          _1019 = float(_291);
          _1020 = float(_297);
          _1021 = dot(float3(_369, _370, _371), float3(_1003, _1004, _1005));
          _1022 = -0.0f - _417;
          _1023 = -0.0f - _418;
          _1024 = -0.0f - _419;
          _1025 = dot(float3(_369, _370, _371), float3(_1022, _1023, _1024));
          _1031 = cos(abs(asin(_1025) - asin(_1021)) * 0.5f);
          _1033 = _1003 - (_1021 * _369);
          _1035 = _1004 - (_1021 * _370);
          _1037 = _1005 - (_1021 * _371);
          _1039 = _1022 - (_1025 * _369);
          _1041 = _1023 - (_1025 * _370);
          _1043 = _1024 - (_1025 * _371);
          _1050 = dot(float3(_1033, _1035, _1037), float3(_1039, _1041, _1043)) * rsqrt((dot(float3(_1033, _1035, _1037), float3(_1033, _1035, _1037)) * dot(float3(_1039, _1041, _1043), float3(_1039, _1041, _1043))) + 0.0001f);
          _1052 = min(max(_1015, 0.09803922f), 1.0f);
          _1053 = _1052 * _1052;
          _1054 = _1053 * 0.5f;
          _1055 = _1053 * 2.0f;
          _1056 = _1025 + _1021;
          _1057 = _1056 - _bevelParams.y;
          _1061 = 1.0f / ((1.19f / _1031) + (_1031 * 0.36f));
          _1070 = ((_1061 * (0.6f - (_1050 * 0.8f))) + 1.0f) * sqrt(saturate((_1050 * 0.5f) + 0.5f));
          _1076 = 1.0f - (sqrt(saturate(1.0f - (_1070 * _1070))) * _1031);
          _1077 = _1076 * _1076;
          _1081 = 0.9534794f - ((_1077 * _1077) * (_1076 * 0.9534794f));
          _1082 = _1070 * _1061;
          _1087 = (sqrt(1.0f - (_1082 * _1082)) * 0.5f) / _1031;
          _1088 = log2(_1018);
          _1089 = log2(_1019);
          _1090 = log2(_1020);
          _1104 = ((_1081 * _1081) * (exp2((((_1057 * _1057) * -0.5f) / (_1054 * _1054)) * 1.442695f) / (_1053 * 1.2533141f))) * exp2(-5.741926f - (_1050 * 5.265837f));
          _1106 = _1056 - (_bevelParams.y * 4.0f);
          _1108 = 1.0f - (_1031 * 0.5f);
          _1109 = _1108 * _1108;
          _1113 = (_1109 * _1109) * (0.9534794f - (_1031 * 0.4767397f));
          _1114 = 0.9534794f - _1113;
          _1115 = 0.8f / _1031;
          _1131 = (((_1114 * _1114) * (_1113 + 0.046520565f)) * (exp2((((_1106 * _1106) * -0.5f) / (_1055 * _1055)) * 1.442695f) / (_1053 * 5.0132565f))) * exp2((_1050 * 24.525816f) + -24.208424f);
          _1140 = min(0.0f, (-0.0f - ((exp2(_1088 * _1087) * _1104) + (exp2(_1115 * _1088) * _1131))));
          _1149 = min(0.0f, (-0.0f - ((exp2(_1089 * _1087) * _1104) + (exp2(_1115 * _1089) * _1131))));
          _1158 = min(0.0f, (-0.0f - ((exp2(_1090 * _1087) * _1104) + (exp2(_1115 * _1090) * _1131))));
          _1161 = saturate(abs(dot(float3(_1003, _1004, _1005), float3(_369, _370, _371))));  // [sem: expr_sat]
          // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
          _1168 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1161, _1015, saturate(sqrt(exp2(_1088 * 1.5f)))), 0.0f);
          // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
          _1175 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1161, _1015, saturate(sqrt(exp2(_1089 * 1.5f)))), 0.0f);
          // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
          _1182 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1161, _1015, saturate(sqrt(exp2(_1090 * 1.5f)))), 0.0f);
          _1185 = min(0.99f, _1168.x);
          _1186 = min(0.99f, _1175.x);
          _1187 = min(0.99f, _1182.x);
          _1188 = min(0.99f, _1168.y);
          _1189 = min(0.99f, _1175.y);
          _1190 = min(0.99f, _1182.y);
          _1191 = _1185 * _1185;
          _1192 = _1186 * _1186;
          _1193 = _1187 * _1187;
          _1194 = _1188 * _1188;
          _1195 = _1189 * _1189;
          _1196 = _1190 * _1190;
          _1197 = _1194 * _1188;
          _1198 = _1195 * _1189;
          _1199 = _1196 * _1190;
          _1200 = 1.0f - _1191;
          _1201 = 1.0f - _1192;
          _1202 = 1.0f - _1193;
          _1203 = _1200 * _1200;
          _1204 = _1201 * _1201;
          _1205 = _1202 * _1202;
          _1206 = _1203 * _1200;
          _1207 = _1204 * _1201;
          _1208 = _1205 * _1202;
          _1210 = min(max(_1015, 0.18f), 0.6f);
          _1211 = _1210 * _1210;
          _1212 = _1211 * 0.25f;
          _1213 = _1211 * 4.0f;
          _1215 = (_1186 + _1185) + _1187;
          _1216 = _1185 / _1215;
          _1217 = _1186 / _1215;
          _1218 = _1187 / _1215;
          _1219 = dot(float3(_1211, _1212, _1213), float3(_1216, _1217, _1218));
          _1220 = _1219 * _1219;
          _1227 = asin(min(max(_1021, -1.0f), 1.0f)) + asin(min(max(_1025, -1.0f), 1.0f));
          _1228 = _1227 * 0.5f;
          _1229 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1216, _1217, _1218));
          _1230 = _1229 * _1229;
          _1232 = (_1189 + _1188) + _1190;
          _1236 = dot(float3(_1211, _1212, _1213), float3((_1188 / _1232), (_1189 / _1232), (_1190 / _1232)));
          _1240 = sqrt((_1236 * _1236) + (_1220 * 2.0f));
          _1243 = (_1236 * 3.0f) + (_1219 * 2.0f);
          _1251 = (((_1197 + _1188) * ((_1191 * 0.7f) + 1.0f)) * _1240) / ((_1243 * _1197) + _1188);
          _1259 = (((_1198 + _1189) * ((_1192 * 0.7f) + 1.0f)) * _1240) / ((_1243 * _1198) + _1189);
          _1267 = (((_1199 + _1190) * ((_1193 * 0.7f) + 1.0f)) * _1240) / ((_1243 * _1199) + _1190);
          _1278 = _1228 - (((_1230 * (((_1191 * 4.0f) * _1194) + (_1203 * 2.0f))) * (1.0f - ((_1194 * 2.0f) / _1203))) / _1206);
          _1289 = _1228 - (((_1230 * (((_1192 * 4.0f) * _1195) + (_1204 * 2.0f))) * (1.0f - ((_1195 * 2.0f) / _1204))) / _1207);
          _1300 = _1228 - (((_1230 * (((_1193 * 4.0f) * _1196) + (_1205 * 2.0f))) * (1.0f - ((_1196 * 2.0f) / _1205))) / _1208);
          _1306 = exp2((((_1227 * -0.25f) * _1228) / _1220) * 1.442695f) * 1.4f;
          _1326 = ((((((_1188 * _1191) / _1200) + ((_1197 * _1191) / _1206)) * 4.3982296f) * exp2((((_1278 * _1278) * -0.5f) / ((_1251 * _1251) + _1220)) * 1.442695f)) + ((((_1168.x + _1140) * 0.25f) - _1140) * 6.2831855f)) * _1306;
          _1346 = ((((((_1189 * _1192) / _1201) + ((_1198 * _1192) / _1207)) * 4.3982296f) * exp2((((_1289 * _1289) * -0.5f) / ((_1259 * _1259) + _1220)) * 1.442695f)) + ((((_1175.x + _1149) * 0.25f) - _1149) * 6.2831855f)) * _1306;
          _1366 = ((((((_1190 * _1193) / _1202) + ((_1199 * _1193) / _1208)) * 4.3982296f) * exp2((((_1300 * _1300) * -0.5f) / ((_1267 * _1267) + _1220)) * 1.442695f)) + ((((_1182.x + _1158) * 0.25f) - _1158) * 6.2831855f)) * _1306;
          _1380 = _913;
          _1381 = _914;
          _1382 = _915;
          _1383 = _916;
          _1384 = max(0.01f, (lerp(_1366, _1020, 0.125f)));
          _1385 = max(0.01f, (lerp(_1346, _1019, 0.125f)));
          _1386 = max(0.01f, (lerp(_1326, _1018, 0.125f)));
          _1387 = _911;
          _1388 = _371;
          _1389 = _370;
          _1390 = _369;
          _1391 = _912;
          _1392 = 0.0f;
        } else {
          _1380 = _913;
          _1381 = _914;
          _1382 = _915;
          _1383 = _916;
          _1384 = 0.0f;
          _1385 = 0.0f;
          _1386 = 0.0f;
          _1387 = _911;
          _1388 = _371;
          _1389 = _370;
          _1390 = _369;
          _1391 = _912;
          _1392 = 0.0f;
        }
      }
    }
    _1395 = -0.0f - min(0.0f, (-0.0f - _339));
    _1398 = -0.0f - min(0.0f, (-0.0f - _338));
    _1401 = -0.0f - min(0.0f, (-0.0f - _337));
    half2 _1403 = __3__36__0__0__g_sceneAO.Load(int3(_99, _104, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    if ((uint)_1387 > (uint)11) {
      _1410 = (int)(uint)((int)((uint)_1387 < (uint)19));
      bool __branch_chain_1407;
      if ((uint)_1387 < (uint)20) {
        _1419 = _1410;
        _1420 = 1;
        __branch_chain_1407 = true;
      } else {
        if (!(_1387 == 65)) {
          _1419 = _1410;
          _1420 = ((int)(uint)((int)(_1387 == 107)));
          __branch_chain_1407 = true;
        } else {
          _1427 = true;
          _1428 = true;
          __branch_chain_1407 = false;
        }
      }
      if (__branch_chain_1407) {
        if (_1419 == 0) {
          _1427 = false;
          _1428 = ((_1387 == 96) || (_1420 != 0));
        } else {
          _1427 = false;
          _1428 = true;
        }
      }
    } else {
      _1419 = 0;
      _1420 = ((int)(uint)((int)((uint)_1387 > (uint)10)));
      if (_1419 == 0) {
        _1427 = false;
        _1428 = ((_1387 == 96) || (_1420 != 0));
      } else {
        _1427 = false;
        _1428 = true;
      }
    }
    _1430 = select(_1428, float(_1391), 0.0f);
    _1432 = ((uint)(_1387 & 24) > (uint)23);
    if (_1432) {
      _1434 = (_1387 == 29);
      if (_1434) {
        _1439 = float(saturate(_177));
      } else {
        _1439 = 0.0f;
      }
      _1441 = (uint)((half)(_181 * 255.0h));
      if (_185) {
        _1450 = (((float)((uint)((uint)(_1441 & 127)))) * 0.007874016f);
        _1451 = select(((_1441 & 128) != 0), 1.0f, 0.0f);
      } else {
        _1450 = 0.0f;
        _1451 = 0.0f;
      }
      _1452 = half(_1450);
      _1453 = (_1452 > 0.99902344h);
      _1463 = _1439;
      _1464 = _1451;
      _1465 = (half)(select(_1453, 1.0f, _297));
      _1466 = (half)(select(_1453, 1.0f, _291));
      _1467 = (half)(select(_1453, 1.0f, _285));
      _1468 = (half)(select(((_1387 == 24) || _1434), 0.010002136f, _177));
      _1469 = _1452;
    } else {
      _1463 = 0.0f;
      _1464 = 0.0f;
      _1465 = _297;
      _1466 = _291;
      _1467 = _285;
      _1468 = _177;
      _1469 = (half)(select(_1428, 0.0f, _1391));
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
      float3 _rndx_fcBaseColor = float3(float(_1467), float(_1466), float(_1465));
      half4 _rndx_fcShadow = __3__36__0__0__g_sceneShadowColor.Load(int3(_99, _104, 0));
      float _rndx_fcShadowVis = saturate(dot(float3(_rndx_fcShadow.xyz), float3(0.2126f, 0.7152f, 0.0722f)));
      float3 _rndx_fcCorrected = FoliageColorCorrect(_rndx_fcBaseColor, _sunDirection.xyz, _rndx_fcShadowVis, float3(1.0f, 1.0f, 1.0f));
      float3 _rndx_fscColor = FoliageSelectiveColor(_rndx_fcCorrected);
      _1467 = half(_rndx_fscColor.x);
      _1466 = half(_rndx_fscColor.y);
      _1465 = half(_rndx_fscColor.z);
    }
    // RenoDX: <<< [Patch: FoliageColorCorrect]
    _1470 = _1387 & -2;
    _1471 = (_1470 == 66);
    _1472 = (_1387 == 53);
    _1473 = _1472 || _1471;
    _1474 = -0.0f - _417;
    _1475 = -0.0f - _418;
    _1476 = -0.0f - _419;
    _1477 = dot(float3(_1474, _1475, _1476), float3(_369, _370, _371));
    if (_1473) {
      _1481 = abs(_1477);
    } else {
      _1481 = _1477;
    }
    _1482 = saturate(_1481);  // [sem: _1481_sat]
    _1483 = _118.x & 128;  // [sem: _3__36__0__0__g_stencil_load_derived]
    _1484 = (_1483 == 0);
    if (_1484) {
      if ((uint)_120 > (uint)51) {
        if (!(((_118.x & 125) == 105) || ((uint)_120 < (uint)68))) {
          _1507 = ((int)(uint)((int)(_120 == 98)));
        } else {
          _1507 = 1;
        }
      } else {
        if ((uint)_120 > (uint)10) {
          if ((uint)_120 < (uint)20) {
            _1507 = ((int)(uint)((int)(_420 != 14)));
          } else {
            _1507 = ((int)(uint)((int)((_118.x & 125) == 105)));
          }
        } else {
          _1507 = 0;
        }
      }
    } else {
      _1507 = 1;
    }
    [branch]
    if (_1432) {
      _1516 = (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(_99, _104, 0)))).x) & 16777215)))) * 5.960465e-08f);
    } else {
      _1516 = _115.x;
    }
    _1528 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), _1516, mad((_projToPrevProj[3].y), _375, ((_projToPrevProj[3].x) * _373)));
    if (_1507 == 0) {
      _1559 = (((mad((_projToPrevProj[1].z), _1516, mad((_projToPrevProj[1].y), _375, ((_projToPrevProj[1].x) * _373))) + (_projToPrevProj[1].w)) / _1528) - _375);
      _1560 = (((mad((_projToPrevProj[0].z), _1516, mad((_projToPrevProj[0].y), _375, ((_projToPrevProj[0].x) * _373))) + (_projToPrevProj[0].w)) / _1528) - _373);
    } else {
      _1532 = __3__36__0__0__g_velocity.Load(int3(_99, _104, 0));  // [sem: _3__36__0__0__g_velocity_load]
      _1559 = (_1532.y * 2.0f);
      _1560 = (_1532.x * 2.0f);
    }
    _1564 = _nearFarProj.x / max(1e-07f, _1516);
    _1566 = (_1560 * 0.5f) + _111;
    _1568 = _113 - (_1559 * 0.5f);
    _1576 = select(((_1568 > 1.0f) || ((_1568 < 0.0f) || ((_1566 < 0.0f) || (_1566 > 1.0f)))), 1.0f, 0.0f);
    _1580 = (_bufferSizeAndInvSize.x * _1566) + -0.5f;
    _1583 = (_bufferSizeAndInvSize.y * _1568) + -0.5f;
    _1585 = (int)(floor(_1580));
    _1587 = (int)(floor(_1583));
    _1588 = (float)((int)(_1585));
    _1589 = (float)((int)(_1587));
    _1592 = (_1588 + 0.5f) * _bufferSizeAndInvSize.z;
    _1595 = (_1589 + 0.5f) * _bufferSizeAndInvSize.w;
    _1598 = __3__36__0__0__g_depthOpaquePrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(_1592, _1595));  // [sem: _3__36__0__0__g_depthOpaquePrev_gather]
    _1609 = mad(((uint)((uint)(_1598.w)) >> 24), 16777216, mad(((uint)((uint)(_1598.z)) >> 24), 65536, mad(((uint)((uint)(_1598.y)) >> 24), 256, ((uint)((uint)(_1598.x)) >> 24))));
    if (_1484) {
      if ((uint)_120 > (uint)51) {
        if (!(_120 == 98)) {
          if (!(((_118.x & 125) == 105) || ((uint)_120 < (uint)68))) {
            _1669 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
          } else {
            _1669 = 0.0f;
          }
        } else {
          _1669 = 0.0f;
        }
      } else {
        if ((uint)_120 > (uint)10) {
          if ((uint)_120 < (uint)20) {
            if (_420 == 14) {
              _1669 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
            } else {
              _1669 = 0.0f;
            }
          } else {
            if (!((_118.x & 125) == 105)) {
              _1669 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
            } else {
              _1669 = 0.0f;
            }
          }
        } else {
          _1669 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
        }
      }
    } else {
      _1669 = 0.0f;
    }
    _1672 = _screenPercentage.x * 2.0f;
    _1675 = _1672 * abs(_111 + -0.5f);
    _1677 = _screenPercentage.y * 2.0f;
    _1680 = _1677 * abs(_113 + -0.5f);
    _1684 = sqrt(dot(float2(_1675, _1680), float2(_1675, _1680)) + 1.0f) * _1564;
    _1687 = abs(_1566 + -0.5f) * _1672;
    _1690 = abs(_1568 + -0.5f) * _1677;
    _1693 = sqrt(dot(float2(_1687, _1690), float2(_1687, _1690)) + 1.0f);
    _1697 = (_367 != 0) || ((uint)((int)(_1387) + (int)(-97)) < (uint)2);
    _1698 = _1564 * _1564;
    _1701 = (_1698 * select(_1697, 0.5f, 0.2f)) + 1.0f;
    _1703 = ((uint)((int)(_1387) + (int)(-52)) < (uint)16);
    if (_1703) {
      _1722 = (1000.0f - (saturate((float)((bool)((sqrt(((_diffViewPosAccurate.y * _diffViewPosAccurate.y) + (_diffViewPosAccurate.x * _diffViewPosAccurate.x)) + (_diffViewPosAccurate.z * _diffViewPosAccurate.z)) * 50.0f) > 1.0f))) * 875.0f));
    } else {
      _1722 = 50.0f;
    }
    _1729 = select(_1703, 0.0f, ((max(0.0f, (_1564 + -1.0f)) * 0.1f) * _temporalReprojectionParams.y));
    _1740 = max(0.0f, (abs(_1684 - (((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1598.x & 16777215)))) * 5.960465e-08f))) - _1669) * _1693)) - _1729));
    _1751 = max(0.0f, (abs(_1684 - (((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1598.y & 16777215)))) * 5.960465e-08f))) - _1669) * _1693)) - _1729));
    _1762 = max(0.0f, (abs(_1684 - (((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1598.z & 16777215)))) * 5.960465e-08f))) - _1669) * _1693)) - _1729));
    _1773 = max(0.0f, (abs(_1684 - (((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1598.w & 16777215)))) * 5.960465e-08f))) - _1669) * _1693)) - _1729));
    _1774 = _1740 * _1740;
    _1775 = _1751 * _1751;
    _1776 = _1762 * _1762;
    _1777 = _1773 * _1773;
    _1782 = (-1.442695f / ((_1698 * 0.1f) + 1.0f)) * select(_1697, 0.2f, _1722);
    _1786 = select((_1774 > _1701), 0.0f, exp2(_1782 * _1774));
    _1790 = select((_1775 > _1701), 0.0f, exp2(_1782 * _1775));
    _1794 = select((_1776 > _1701), 0.0f, exp2(_1782 * _1776));
    _1798 = select((_1777 > _1701), 0.0f, exp2(_1782 * _1777));
    if (!_1432) {
      _1800 = _1609 & 127;
      _1801 = _1609 & 32512;
      _1802 = _1609 & 8323072;
      _1803 = _1609 & 2130706432;
      _1805 = ((uint)((int)(_1800) + (int)(-52)) < (uint)16);
      _1809 = ((uint)((int)(((uint)((uint)(_1609)) >> 8) & 127) + (int)(-52)) < (uint)16);
      _1813 = ((uint)((int)(((uint)((uint)(_1609)) >> 16) & 127) + (int)(-52)) < (uint)16);
      _1817 = ((uint)((int)(((uint)((uint)(_1609)) >> 24) & 127) + (int)(-52)) < (uint)16);
      _1819 = ((uint)((int)(_120) + (int)(-52)) < (uint)16);
      _1821 = (_1483 != 0) || _1819;
      _1822 = (_1387 == 6);
      _1824 = ((uint)((int)(_1387) + (int)(-105)) < (uint)3);
      if (_423) {
        if (!((_1819 ^ _1805) || ((_1822 ^ (_1800 == 6)) || (_1821 ^ (((_1609 & 128) != 0) || _1805))))) {
          _1847 = (_1824 ^ ((_1800 == 107) || ((uint)((int)(_1800) + (int)(-105)) < (uint)2)));
        } else {
          _1847 = true;
        }
        _1850 = ((float)((bool)(!_1847))) * _1786;
        _1858 = _1850;
        if (!((_1819 ^ _1809) || ((_1822 ^ (_1801 == 1536)) || (_1821 ^ (((_1609 & 32768) != 0) || _1809))))) {
          _1875 = (_1824 ^ (((_1609 & 32000) == 26880) || (_1801 == 27136)));
        } else {
          _1875 = true;
        }
        _1878 = ((float)((bool)(!_1875))) * _1790;
        _1887 = _1878;
        _1888 = _1858;
        if (!((_1819 ^ _1813) || ((_1822 ^ (_1802 == 393216)) || (_1821 ^ (((_1609 & 8388608) != 0) || _1813))))) {
          _1905 = (_1824 ^ (((_1609 & 8192000) == 6881280) || (_1802 == 6946816)));
        } else {
          _1905 = true;
        }
        _1908 = ((float)((bool)(!_1905))) * _1794;
        _1918 = _1908;
        _1919 = _1888;
        _1920 = _1887;
        if (!((_1819 ^ _1817) || ((_1822 ^ (_1803 == 100663296)) || (_1821 ^ (((int)_1609 < (int)0) || _1817))))) {
          _1936 = (_1824 ^ (((_1609 & 2097152000) == 1761607680) || (_1803 == 1778384896)));
        } else {
          _1936 = true;
        }
        _1939 = _1918;
        _1940 = _1919;
        _1941 = _1920;
        _1942 = (!_1936);
      } else {
        if ((_1800 != 53) && ((_1609 & 126) != 66)) {
          if (!((_1819 ^ _1805) || ((_1822 ^ (_1800 == 6)) || (_1821 ^ (((_1609 & 128) != 0) || _1805))))) {
            _1847 = (_1824 ^ ((_1800 == 107) || ((uint)((int)(_1800) + (int)(-105)) < (uint)2)));
          } else {
            _1847 = true;
          }
          _1850 = ((float)((bool)(!_1847))) * _1786;
          _1852 = _1850;
          if ((_1801 != 13568) && ((_1609 & 32256) != 16896)) {
            _1858 = _1852;
            if (!((_1819 ^ _1809) || ((_1822 ^ (_1801 == 1536)) || (_1821 ^ (((_1609 & 32768) != 0) || _1809))))) {
              _1875 = (_1824 ^ (((_1609 & 32000) == 26880) || (_1801 == 27136)));
            } else {
              _1875 = true;
            }
            _1878 = ((float)((bool)(!_1875))) * _1790;
            _1880 = _1878;
            _1881 = _1858;
            if ((_1802 != 3473408) && ((_1609 & 8257536) != 4325376)) {
              _1887 = _1880;
              _1888 = _1881;
              if (!((_1819 ^ _1813) || ((_1822 ^ (_1802 == 393216)) || (_1821 ^ (((_1609 & 8388608) != 0) || _1813))))) {
                _1905 = (_1824 ^ (((_1609 & 8192000) == 6881280) || (_1802 == 6946816)));
              } else {
                _1905 = true;
              }
              _1908 = ((float)((bool)(!_1905))) * _1794;
              _1910 = _1908;
              _1911 = _1888;
              _1912 = _1887;
              if ((_1803 != 889192448) && ((_1609 & 2113929216) != 1107296256)) {
                _1918 = _1910;
                _1919 = _1911;
                _1920 = _1912;
                if (!((_1819 ^ _1817) || ((_1822 ^ (_1803 == 100663296)) || (_1821 ^ (((int)_1609 < (int)0) || _1817))))) {
                  _1936 = (_1824 ^ (((_1609 & 2097152000) == 1761607680) || (_1803 == 1778384896)));
                } else {
                  _1936 = true;
                }
                _1939 = _1918;
                _1940 = _1919;
                _1941 = _1920;
                _1942 = (!_1936);
              } else {
                _1939 = _1910;
                _1940 = _1911;
                _1941 = _1912;
                _1942 = false;
              }
            } else {
              _1910 = 0.0f;
              _1911 = _1881;
              _1912 = _1880;
              if ((_1803 != 889192448) && ((_1609 & 2113929216) != 1107296256)) {
                _1918 = _1910;
                _1919 = _1911;
                _1920 = _1912;
                if (!((_1819 ^ _1817) || ((_1822 ^ (_1803 == 100663296)) || (_1821 ^ (((int)_1609 < (int)0) || _1817))))) {
                  _1936 = (_1824 ^ (((_1609 & 2097152000) == 1761607680) || (_1803 == 1778384896)));
                } else {
                  _1936 = true;
                }
                _1939 = _1918;
                _1940 = _1919;
                _1941 = _1920;
                _1942 = (!_1936);
              } else {
                _1939 = _1910;
                _1940 = _1911;
                _1941 = _1912;
                _1942 = false;
              }
            }
          } else {
            _1880 = 0.0f;
            _1881 = _1852;
            if ((_1802 != 3473408) && ((_1609 & 8257536) != 4325376)) {
              _1887 = _1880;
              _1888 = _1881;
              if (!((_1819 ^ _1813) || ((_1822 ^ (_1802 == 393216)) || (_1821 ^ (((_1609 & 8388608) != 0) || _1813))))) {
                _1905 = (_1824 ^ (((_1609 & 8192000) == 6881280) || (_1802 == 6946816)));
              } else {
                _1905 = true;
              }
              _1908 = ((float)((bool)(!_1905))) * _1794;
              _1910 = _1908;
              _1911 = _1888;
              _1912 = _1887;
              if ((_1803 != 889192448) && ((_1609 & 2113929216) != 1107296256)) {
                _1918 = _1910;
                _1919 = _1911;
                _1920 = _1912;
                if (!((_1819 ^ _1817) || ((_1822 ^ (_1803 == 100663296)) || (_1821 ^ (((int)_1609 < (int)0) || _1817))))) {
                  _1936 = (_1824 ^ (((_1609 & 2097152000) == 1761607680) || (_1803 == 1778384896)));
                } else {
                  _1936 = true;
                }
                _1939 = _1918;
                _1940 = _1919;
                _1941 = _1920;
                _1942 = (!_1936);
              } else {
                _1939 = _1910;
                _1940 = _1911;
                _1941 = _1912;
                _1942 = false;
              }
            } else {
              _1910 = 0.0f;
              _1911 = _1881;
              _1912 = _1880;
              if ((_1803 != 889192448) && ((_1609 & 2113929216) != 1107296256)) {
                _1918 = _1910;
                _1919 = _1911;
                _1920 = _1912;
                if (!((_1819 ^ _1817) || ((_1822 ^ (_1803 == 100663296)) || (_1821 ^ (((int)_1609 < (int)0) || _1817))))) {
                  _1936 = (_1824 ^ (((_1609 & 2097152000) == 1761607680) || (_1803 == 1778384896)));
                } else {
                  _1936 = true;
                }
                _1939 = _1918;
                _1940 = _1919;
                _1941 = _1920;
                _1942 = (!_1936);
              } else {
                _1939 = _1910;
                _1940 = _1911;
                _1941 = _1912;
                _1942 = false;
              }
            }
          }
        } else {
          _1852 = 0.0f;
          if ((_1801 != 13568) && ((_1609 & 32256) != 16896)) {
            _1858 = _1852;
            if (!((_1819 ^ _1809) || ((_1822 ^ (_1801 == 1536)) || (_1821 ^ (((_1609 & 32768) != 0) || _1809))))) {
              _1875 = (_1824 ^ (((_1609 & 32000) == 26880) || (_1801 == 27136)));
            } else {
              _1875 = true;
            }
            _1878 = ((float)((bool)(!_1875))) * _1790;
            _1880 = _1878;
            _1881 = _1858;
            if ((_1802 != 3473408) && ((_1609 & 8257536) != 4325376)) {
              _1887 = _1880;
              _1888 = _1881;
              if (!((_1819 ^ _1813) || ((_1822 ^ (_1802 == 393216)) || (_1821 ^ (((_1609 & 8388608) != 0) || _1813))))) {
                _1905 = (_1824 ^ (((_1609 & 8192000) == 6881280) || (_1802 == 6946816)));
              } else {
                _1905 = true;
              }
              _1908 = ((float)((bool)(!_1905))) * _1794;
              _1910 = _1908;
              _1911 = _1888;
              _1912 = _1887;
              if ((_1803 != 889192448) && ((_1609 & 2113929216) != 1107296256)) {
                _1918 = _1910;
                _1919 = _1911;
                _1920 = _1912;
                if (!((_1819 ^ _1817) || ((_1822 ^ (_1803 == 100663296)) || (_1821 ^ (((int)_1609 < (int)0) || _1817))))) {
                  _1936 = (_1824 ^ (((_1609 & 2097152000) == 1761607680) || (_1803 == 1778384896)));
                } else {
                  _1936 = true;
                }
                _1939 = _1918;
                _1940 = _1919;
                _1941 = _1920;
                _1942 = (!_1936);
              } else {
                _1939 = _1910;
                _1940 = _1911;
                _1941 = _1912;
                _1942 = false;
              }
            } else {
              _1910 = 0.0f;
              _1911 = _1881;
              _1912 = _1880;
              if ((_1803 != 889192448) && ((_1609 & 2113929216) != 1107296256)) {
                _1918 = _1910;
                _1919 = _1911;
                _1920 = _1912;
                if (!((_1819 ^ _1817) || ((_1822 ^ (_1803 == 100663296)) || (_1821 ^ (((int)_1609 < (int)0) || _1817))))) {
                  _1936 = (_1824 ^ (((_1609 & 2097152000) == 1761607680) || (_1803 == 1778384896)));
                } else {
                  _1936 = true;
                }
                _1939 = _1918;
                _1940 = _1919;
                _1941 = _1920;
                _1942 = (!_1936);
              } else {
                _1939 = _1910;
                _1940 = _1911;
                _1941 = _1912;
                _1942 = false;
              }
            }
          } else {
            _1880 = 0.0f;
            _1881 = _1852;
            if ((_1802 != 3473408) && ((_1609 & 8257536) != 4325376)) {
              _1887 = _1880;
              _1888 = _1881;
              if (!((_1819 ^ _1813) || ((_1822 ^ (_1802 == 393216)) || (_1821 ^ (((_1609 & 8388608) != 0) || _1813))))) {
                _1905 = (_1824 ^ (((_1609 & 8192000) == 6881280) || (_1802 == 6946816)));
              } else {
                _1905 = true;
              }
              _1908 = ((float)((bool)(!_1905))) * _1794;
              _1910 = _1908;
              _1911 = _1888;
              _1912 = _1887;
              if ((_1803 != 889192448) && ((_1609 & 2113929216) != 1107296256)) {
                _1918 = _1910;
                _1919 = _1911;
                _1920 = _1912;
                if (!((_1819 ^ _1817) || ((_1822 ^ (_1803 == 100663296)) || (_1821 ^ (((int)_1609 < (int)0) || _1817))))) {
                  _1936 = (_1824 ^ (((_1609 & 2097152000) == 1761607680) || (_1803 == 1778384896)));
                } else {
                  _1936 = true;
                }
                _1939 = _1918;
                _1940 = _1919;
                _1941 = _1920;
                _1942 = (!_1936);
              } else {
                _1939 = _1910;
                _1940 = _1911;
                _1941 = _1912;
                _1942 = false;
              }
            } else {
              _1910 = 0.0f;
              _1911 = _1881;
              _1912 = _1880;
              if ((_1803 != 889192448) && ((_1609 & 2113929216) != 1107296256)) {
                _1918 = _1910;
                _1919 = _1911;
                _1920 = _1912;
                if (!((_1819 ^ _1817) || ((_1822 ^ (_1803 == 100663296)) || (_1821 ^ (((int)_1609 < (int)0) || _1817))))) {
                  _1936 = (_1824 ^ (((_1609 & 2097152000) == 1761607680) || (_1803 == 1778384896)));
                } else {
                  _1936 = true;
                }
                _1939 = _1918;
                _1940 = _1919;
                _1941 = _1920;
                _1942 = (!_1936);
              } else {
                _1939 = _1910;
                _1940 = _1911;
                _1941 = _1912;
                _1942 = false;
              }
            }
          }
        }
      }
      _1946 = (((float)((bool)(_1942))) * _1798);
      _1947 = _1939;
      _1948 = _1941;
      _1949 = _1940;
    } else {
      _1946 = _1798;
      _1947 = _1794;
      _1948 = _1790;
      _1949 = _1786;
    }
    _1951 = __3__36__0__0__g_sceneNormalPrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(_1592, _1595));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather]
    _1960 = min(1.0f, ((((float)((uint)((uint)(_1951.w & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1966 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1951.w)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1972 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1951.w)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1974 = rsqrt(dot(float3(_1960, _1966, _1972), float3(_1960, _1966, _1972)));  // [sem: invLength]
    _1979 = saturate(dot(float3(_369, _370, _371), float3((_1974 * _1960), (_1974 * _1966), (_1974 * _1972))));  // [sem: expr_sat]
    _1984 = min(1.0f, ((((float)((uint)((uint)(_1951.z & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1990 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1951.z)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1996 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1951.z)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1998 = rsqrt(dot(float3(_1984, _1990, _1996), float3(_1984, _1990, _1996)));  // [sem: invLength]
    _2003 = saturate(dot(float3(_369, _370, _371), float3((_1998 * _1984), (_1998 * _1990), (_1998 * _1996))));  // [sem: expr_sat]
    _2008 = min(1.0f, ((((float)((uint)((uint)(_1951.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2014 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1951.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2020 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1951.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2022 = rsqrt(dot(float3(_2008, _2014, _2020), float3(_2008, _2014, _2020)));  // [sem: invLength]
    _2027 = saturate(dot(float3(_369, _370, _371), float3((_2022 * _2008), (_2022 * _2014), (_2022 * _2020))));  // [sem: expr_sat]
    _2032 = min(1.0f, ((((float)((uint)((uint)(_1951.y & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2038 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1951.y)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2044 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1951.y)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2046 = rsqrt(dot(float3(_2032, _2038, _2044), float3(_2032, _2038, _2044)));  // [sem: invLength]
    _2051 = saturate(dot(float3(_369, _370, _371), float3((_2046 * _2032), (_2046 * _2038), (_2046 * _2044))));  // [sem: expr_sat]
    _2054 = select((_1472 || (_1471 || _1697)), 0.01f, 1.0f);
    _2055 = _1580 - _1588;
    _2056 = _1583 - _1589;
    _2057 = 1.0f - _2055;
    _2058 = 1.0f - _2056;
    _2060 = (_2057 * _2056) * _1949;
    _2062 = (_2056 * _2055) * _1948;
    _2064 = (_2058 * _2055) * _1947;
    _2066 = (_2058 * _2057) * _1946;
    _2072 = saturate(select(_1432, 1.0f, (pow(_2027, _2054))) * _2060);  // [sem: expr_sat]
    _2078 = saturate(select(_1432, 1.0f, (pow(_2051, _2054))) * _2062);  // [sem: expr_sat]
    _2084 = saturate(select(_1432, 1.0f, (pow(_2003, _2054))) * _2064);  // [sem: expr_sat]
    _2090 = saturate(select(_1432, 1.0f, (pow(_1979, _2054))) * _2066);  // [sem: expr_sat]
    _2093 = asint(__3__37__0__0__g_structureCounterBuffer.Load(8));
    _2094 = WaveReadLaneFirst(_2093);
    [branch]
    if (!(_2094 == 0)) {
      _2102 = (((uint)(__3__36__0__0__g_tiledManyLightsMasks.Load(int3(((int)(_99) >> 5), ((int)(_104) >> 5), 0)))).x) & 4;
      _2103 = (uint)((uint)(_2102)) >> 2;
      if (!(_2102 == 0)) {
        _2112 = _2103;
        _2113 = max((saturate(dot(float3(_1395, _1398, _1401), float3(0.212671f, 0.71516f, 0.072169f)) * 0.01f) * 0.875f), _1576);
      } else {
        _2112 = _2103;
        _2113 = _1576;
      }
    } else {
      _2112 = 0;
      _2113 = _1576;
    }
    // [sem: expr_sat]
    _2123 = saturate(max(_2113, ((_temporalReprojectionParams.w + (_environmentLightingHistory[1].w)) + _renderParams.y)));
    _2124 = (uint)((uint)(_1587)) + (uint)(1);
    half4 _2126 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1585, _2124, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    _2131 = (uint)((uint)(_1585)) + (uint)(1);
    half4 _2132 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_2131, _2124, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    half4 _2137 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_2131, _1587, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    half4 _2142 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1585, _1587, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    _2147 = dot(float4(_2072, _2078, _2084, _2090), float4(1.0f, 1.0f, 1.0f, 1.0f));
    // [sem: expr_sat]
    _2156 = saturate((1.0f / max(1.0f, _2147)) * dot(float4(_2072, _2078, _2084, _2090), float4(float(_2126.w), float(_2132.w), float(_2137.w), float(_2142.w))));
    _2161 = sqrt((_1560 * _1560) + (_1559 * _1559)) * 50.0f;
    if (_1703) {
      _2170 = saturate(1.0f - _2161);  // [sem: expr_sat]
    } else {
      _2170 = (1.0f - (saturate(_2161) * 0.5f));  // [sem: expr_sat]
    }
    _2174 = max(1.0f, (_bufferSizeAndInvSize.w * 2160.0f));
    _2175 = (_1387 == 24);
    _2176 = select(_2175, 1.0f, _2156);
    _2178 = (_2176 * _2176) * 4.0f;
    _2181 = __3__36__0__0__g_manyLightsMoments.SampleLevel(__3__40__0__0__g_sampler, float2(_111, _113), 0.0f);  // [sem: _3__36__0__0__g_manyLightsMoments_sampleLod]
    _2186 = saturate(_2181.w);  // [sem: expr_sat]
    _2188 = 1.0f / max(1e-06f, _2147);
    _2189 = _2188 * _2072;
    _2190 = _2188 * _2078;
    _2191 = _2188 * _2084;
    _2192 = _2188 * _2090;
    if (!((_2188 * _2147) == 0.0f)) {
      // [sem: expr_sat]
      _2209 = saturate(saturate(max(_2123, (1.0f / ((saturate(_2178) * min(31.0f, ((_2170 * 15.0f) * _2174))) + 1.0f))) + _renderParams.z));
    } else {
      _2209 = 1.0f;  // [sem: expr_sat]
    }
    _2212 = 1.0f / _exposure4.x;
    _2227 = -0.0f - _exposure4.y;
    _2232 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (min(0.0f, (-0.0f - ((_2192 * float(_2142.x)) + ((_2191 * float(_2137.x)) + ((_2189 * float(_2126.x)) + (_2190 * float(_2132.x))))))) * _2227))));
    _2250 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (min(0.0f, (-0.0f - ((_2192 * float(_2142.y)) + ((_2191 * float(_2137.y)) + ((_2189 * float(_2126.y)) + (_2190 * float(_2132.y))))))) * _2227))));
    _2268 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (min(0.0f, (-0.0f - ((_2192 * float(_2142.z)) + ((_2191 * float(_2137.z)) + ((_2189 * float(_2126.z)) + (_2190 * float(_2132.z))))))) * _2227))));
    if (_renderParams.y == 0.0f) {
      if (_1471) {
        _2309 = saturate(_2156 + 0.0625f);  // [sem: expr_sat]
        _2310 = _2209;
        _2311 = _2268;
        _2312 = _2250;
        _2313 = _2232;
      } else {
        if (!_1472) {
          _2276 = dot(float3(_2232, _2250, _2268), float3(0.212671f, 0.71516f, 0.072169f));
          _2283 = ((min(_2276, _2181.y) / max(1e-06f, _2276)) * _2186) + saturate(1.0f - _2186);
          _2297 = (_2283 * _2268);
          _2298 = (_2283 * _2250);
          _2299 = (_2283 * _2232);
          _2300 = saturate(((_2186 * 0.5f) * saturate(((_2181.x - _2276) * 2.0f) / max(1e-06f, _2181.x))) + _2209);  // [sem: expr_sat]
        } else {
          _2297 = _2268;
          _2298 = _2250;
          _2299 = _2232;
          _2300 = _2209;  // [sem: expr_sat]
        }
        if (!_2175) {
          _2309 = saturate(_2156 + 0.0625f);  // [sem: expr_sat]
          _2310 = _2300;
          _2311 = _2297;
          _2312 = _2298;
          _2313 = _2299;
        } else {
          _2309 = 0.0f;  // [sem: expr_sat]
          _2310 = _2300;
          _2311 = _2297;
          _2312 = _2298;
          _2313 = _2299;
        }
      }
    } else {
      if (!_2175) {
        _2309 = saturate(_2156 + 0.0625f);  // [sem: expr_sat]
        _2310 = _2209;
        _2311 = _2268;
        _2312 = _2250;
        _2313 = _2232;
      } else {
        _2309 = 0.0f;  // [sem: expr_sat]
        _2310 = _2209;
        _2311 = _2268;
        _2312 = _2250;
        _2313 = _2232;
      }
    }
    _2316 = ((_1395 - _2313) * _2310) + _2313;
    _2319 = ((_1398 - _2312) * _2310) + _2312;
    _2322 = ((_1401 - _2311) * _2310) + _2311;
    __3__38__0__1__g_diffuseResultUAV[int2(_99, _104)] = float4((half)(half(_2316)), (half)(half(_2319)), (half)(half(_2322)), (half)(half(_2309)));
    _2328 = float(_1467);
    _2329 = float(_1466);
    _2330 = float(_1465);
    if (_1387 == 52) {
      _2338 = saturate(((_2329 + _2330) + _2328) * 1.2f);  // [sem: expr_sat]
    } else {
      _2338 = 1.0f;  // [sem: expr_sat]
    }
    _2339 = float(_1469);
    _2345 = (0.7f / min(max(max(max(_2328, _2329), _2330), 0.01f), 0.7f)) * _2338;
    _2349 = (((_2345 * _2328) + -0.04f) * _2339) + 0.04f;
    _2353 = (((_2345 * _2329) + -0.04f) * _2339) + 0.04f;
    _2357 = (((_2345 * _2330) + -0.04f) * _2339) + 0.04f;
    if (!_1432) {
      _2362 = (half)(saturate((half)(1.0h - (half)(_1403.x))));  // [sem: _3__36__0__0__g_sceneAO_load_derived]
    } else {
      _2362 = 1.0h;  // [sem: _3__36__0__0__g_sceneAO_load_derived]
    }
    if (!(_1387 == 98)) {
      if (!(_1470 == 96)) {
        if ((uint)((int)(_1387) + (int)(-105)) < (uint)2) {
          _2375 = ((int)(uint)(_185));
          _2376 = (_1387 == 107);
          _2381 = select((_2376 || (_2375 != 0)), 0.0f, _1469);
          if (!(_1427 && (((int)(_2375) | (int)((int)(uint)(_2376))) == 0))) {
            if (_1387 == 33) {
              _2420 = (uint)((_442 * 255.0f) + 0.5f);
              _2422 = ((uint)((uint)(_2420)) >> 4) & 7;
              if (!(_2422 == 0)) {
                _2426 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_2422) + (int)(1)))];
                _2435 = false;
                _2436 = _2426.x;
                _2437 = (((float)((uint)((uint)(_2420 & 15)))) * 0.06666667f);
                _2438 = min((1.0f - _2426.y), _2426.x);
                _2439 = 33;
                _2440 = _2381;
              } else {
                _2435 = false;
                _2436 = 0.0f;
                _2437 = 0.0f;
                _2438 = 0.0f;
                _2439 = 33;
                _2440 = _2381;
              }
            } else {
              if (_1387 == 54) {
                _2391 = (uint)((_442 * 255.0f) + 0.5f);
                if (!((_2391 & 112) == 0)) {
                  _2396 = ((uint)((uint)(_2391)) >> 4) & 7;
                  if (!(_2396 == 0)) {
                    _2400 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_2396) + (int)(1)))];
                    _2435 = false;
                    _2436 = _2400.x;
                    _2437 = (((float)((uint)((uint)(_2391 & 15)))) * 0.06666667f);
                    _2438 = min((1.0f - _2400.y), _2400.x);
                    _2439 = 54;
                    _2440 = _2381;
                  } else {
                    _2435 = false;
                    _2436 = 0.0f;
                    _2437 = 0.0f;
                    _2438 = 0.0f;
                    _2439 = 54;
                    _2440 = _2381;
                  }
                } else {
                  _2435 = false;
                  _2436 = 0.0f;
                  _2437 = 0.0f;
                  _2438 = 0.0f;
                  _2439 = 52;
                  _2440 = _2381;
                }
              } else {
                if (_1387 == 55) {
                  _2435 = false;
                  _2436 = 0.0f;
                  _2437 = 0.0f;
                  _2438 = 0.0f;
                  _2439 = select(((((int)((uint)((_442 * 255.0f) + 0.5f))) & 127) == 0), 52, 55);
                  _2440 = _2381;
                } else {
                  _2435 = false;
                  _2436 = 0.0f;
                  _2437 = 0.0f;
                  _2438 = 0.0f;
                  _2439 = _1387;
                  _2440 = _2381;
                }
              }
            }
          } else {
            _2435 = false;
            _2436 = 0.0f;
            _2437 = 0.0f;
            _2438 = 0.0f;
            _2439 = 65;
            _2440 = 0.0h;
          }
        } else {
          if (!((uint)((int)(_1387) + (int)(-11)) < (uint)9)) {
            _2375 = 0;
            _2376 = (_1387 == 107);
            _2381 = select((_2376 || (_2375 != 0)), 0.0f, _1469);
            if (!(_1427 && (((int)(_2375) | (int)((int)(uint)(_2376))) == 0))) {
              if (_1387 == 33) {
                _2420 = (uint)((_442 * 255.0f) + 0.5f);
                _2422 = ((uint)((uint)(_2420)) >> 4) & 7;
                if (!(_2422 == 0)) {
                  _2426 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_2422) + (int)(1)))];
                  _2435 = false;
                  _2436 = _2426.x;
                  _2437 = (((float)((uint)((uint)(_2420 & 15)))) * 0.06666667f);
                  _2438 = min((1.0f - _2426.y), _2426.x);
                  _2439 = 33;
                  _2440 = _2381;
                } else {
                  _2435 = false;
                  _2436 = 0.0f;
                  _2437 = 0.0f;
                  _2438 = 0.0f;
                  _2439 = 33;
                  _2440 = _2381;
                }
              } else {
                if (_1387 == 54) {
                  _2391 = (uint)((_442 * 255.0f) + 0.5f);
                  if (!((_2391 & 112) == 0)) {
                    _2396 = ((uint)((uint)(_2391)) >> 4) & 7;
                    if (!(_2396 == 0)) {
                      _2400 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_2396) + (int)(1)))];
                      _2435 = false;
                      _2436 = _2400.x;
                      _2437 = (((float)((uint)((uint)(_2391 & 15)))) * 0.06666667f);
                      _2438 = min((1.0f - _2400.y), _2400.x);
                      _2439 = 54;
                      _2440 = _2381;
                    } else {
                      _2435 = false;
                      _2436 = 0.0f;
                      _2437 = 0.0f;
                      _2438 = 0.0f;
                      _2439 = 54;
                      _2440 = _2381;
                    }
                  } else {
                    _2435 = false;
                    _2436 = 0.0f;
                    _2437 = 0.0f;
                    _2438 = 0.0f;
                    _2439 = 52;
                    _2440 = _2381;
                  }
                } else {
                  if (_1387 == 55) {
                    _2435 = false;
                    _2436 = 0.0f;
                    _2437 = 0.0f;
                    _2438 = 0.0f;
                    _2439 = select(((((int)((uint)((_442 * 255.0f) + 0.5f))) & 127) == 0), 52, 55);
                    _2440 = _2381;
                  } else {
                    _2435 = false;
                    _2436 = 0.0f;
                    _2437 = 0.0f;
                    _2438 = 0.0f;
                    _2439 = _1387;
                    _2440 = _2381;
                  }
                }
              }
            } else {
              _2435 = false;
              _2436 = 0.0f;
              _2437 = 0.0f;
              _2438 = 0.0f;
              _2439 = 65;
              _2440 = 0.0h;
            }
          } else {
            _2435 = false;
            _2436 = 0.0f;
            _2437 = 0.0f;
            _2438 = 0.0f;
            _2439 = _1387;
            _2440 = 0.0h;
          }
        }
      } else {
        _2435 = true;
        _2436 = 0.0f;
        _2437 = 0.0f;
        _2438 = 0.0f;
        _2439 = _1387;
        _2440 = 0.0h;
      }
    } else {
      _2435 = true;
      _2436 = 0.0f;
      _2437 = 0.0f;
      _2438 = 0.0f;
      _2439 = 98;
      _2440 = 0.0h;
    }
    _2442 = dot(float3(_417, _418, _419), float3(_369, _370, _371)) * 2.0f;
    _2444 = _417 - (_2442 * _369);
    _2446 = _418 - (_2442 * _370);
    _2448 = _419 - (_2442 * _371);
    _2453 = dot(float3(_417, _418, _419), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
    _2456 = (_414 * _414) + (_396 * _396);
    _2459 = sqrt(_2456 + (_405 * _405));
    _2466 = sqrt(max(0.0f, (dot(float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z)) - (_2453 * _2453)))) / (_2459 + 5.0f);
    _2467 = float(_1468);
    if ((_1468 < 0.099975586h) && (_2466 < 0.125f)) {
      _2480 = select((_2467 < 0.8f), ((__3__36__0__0__g_specularRayHitDistance.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_111, _113), 0.0f)).x), 0.0f) * rsqrt(dot(float3(_2444, _2446, _2448), float3(_2444, _2446, _2448)));
      _2481 = _2480 * _2444;
      _2482 = _2480 * _2446;
      _2483 = _2480 * _2448;
      _2488 = dot(float3(_2481, _2482, _2483), float3((-0.0f - _369), (-0.0f - _370), (-0.0f - _371))) * 2.0f;
      _2491 = (_2481 + _396) + (_2488 * _369);
      _2494 = (_2482 + _405) + (_2488 * _370);
      _2497 = (_2483 + _414) + (_2488 * _371);
      _2509 = (_viewProjRelative[0].w) + mad((_viewProjRelative[0].z), _2497, mad((_viewProjRelative[0].y), _2494, (_2491 * (_viewProjRelative[0].x))));
      _2517 = mad((_viewProjRelative[1].z), _2497, mad((_viewProjRelative[1].y), _2494, (_2491 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w);
      _2525 = mad((_viewProjRelative[2].z), _2497, mad((_viewProjRelative[2].y), _2494, (_2491 * (_viewProjRelative[2].x)))) + (_viewProjRelative[2].w);
      _2533 = mad((_viewProjRelative[3].z), _2497, mad((_viewProjRelative[3].y), _2494, (_2491 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
      _2545 = mad((_projToPrevProj[3].w), _2533, mad((_projToPrevProj[3].z), _2525, mad((_projToPrevProj[3].y), _2517, ((_projToPrevProj[3].x) * _2509))));
      _2557 = ((mad((_projToPrevProj[0].w), _2533, mad((_projToPrevProj[0].z), _2525, mad((_projToPrevProj[0].y), _2517, ((_projToPrevProj[0].x) * _2509)))) / _2545) - (_2509 / _2533)) - _1560;
      _2569 = ((mad((_projToPrevProj[1].w), _2533, mad((_projToPrevProj[1].z), _2525, mad((_projToPrevProj[1].y), _2517, ((_projToPrevProj[1].x) * _2509)))) / _2545) - (_2517 / _2533)) - _1559;
      _2577 = max(_2466, saturate(sqrt((_2569 * _2569) + (_2557 * _2557))));
    } else {
      _2577 = _2466;
    }
    _2578 = _2439 & -2;
    _2579 = (_2439 == 29);
    if (!((_1432 || _2579) || (_2578 == 24))) {
      _2589 = (_renderParams.y > 0.0f);
    } else {
      _2589 = true;
    }
    _2590 = select(_2589, 1.0f, float(_1403.y));
    _2591 = float(_2440);
    _2596 = min(max((_cavityParams.y + -1.0f), 0.0f), 2.0f);
    // [sem: expr_sat]
    _2622 = saturate(((((-0.05f - (_2596 * 0.075f)) + max(0.02f, _2467)) + (saturate(_124 * 0.025f) * 0.1f)) * min(max((_124 + 1.0f), 5.0f), 50.0f)) * (1.0f - (saturate(_2591) * 0.75f))) * saturate(saturate(1.0f - (((_2591 * _124) / max(0.001f, _1482)) * 0.001f)) * 1.25f);
    if (_2439 == 64) {
      _2631 = ((saturate(_124 * 0.25f) * (_2622 + -0.39990234f)) + 0.39990234f);
    } else {
      _2631 = _2622;
    }
    _2633 = (_2596 * 16.0f) + 16.0f;
    _2639 = select((_2596 > 1.0f), 0.0f, saturate((1.0f / _2633) * (_124 - _2633)));
    if (!(_2439 == 105)) {
      if (!((uint)(_2439 & 24) > (uint)23)) {
        _2653 = select((_2439 == 65), 0.0f, select((_2439 == 107), 1.0f, ((_2639 + _2631) - (_2639 * _2631))));
      } else {
        _2653 = 0.0f;
      }
    } else {
      _2653 = 1.0f;
    }
    _2660 = saturate(select((_lightingParams.y == 0.0f), 1.0f, (1.0f - _2653))) * _2577;
    _2662 = max(0.099975586h, _1468);
    if ((uint)_2439 > (uint)51) {
      if ((uint)_2439 < (uint)68) {
        if (_2439 == 66) {
          _2680 = (half)(max(0.89990234h, _1468));
        } else {
          if ((_2439 == 53) || (_2578 == 66)) {
            _2680 = (half)(max(0.89990234h, _1468));
          } else {
            _2680 = _2662;
          }
        }
      } else {
        _2680 = _2662;
      }
    } else {
      if (_2578 == 66) {
        _2680 = (half)(max(0.89990234h, _1468));
      } else {
        _2680 = _2662;
      }
    }
    _2681 = float(_2680);
    _2682 = _2681 * _2681;
    _2683 = _2682 * _2682;
    _2687 = (((_2683 * _2027) - _2027) * _2027) + 1.0f;
    _2691 = (((_2683 * _2051) - _2051) * _2051) + 1.0f;
    _2695 = (((_2683 * _2003) - _2003) * _2003) + 1.0f;
    _2699 = (((_2683 * _1979) - _1979) * _1979) + 1.0f;
    _2719 = (((((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1585, _2124, 0))).x) * saturate(_2060)) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_2131, _2124, 0))).x) * saturate(_2062))) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_2131, _1587, 0))).x) * saturate(_2064))) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1585, _1587, 0))).x) * saturate(_2066));
    _2726 = saturate(select(_2579, 1.0f, saturate((_2683 / (_2687 * _2687)) * _2027)) * _2060);  // [sem: expr_sat]
    _2733 = saturate(select(_2579, 1.0f, saturate((_2683 / (_2691 * _2691)) * _2051)) * _2062);  // [sem: expr_sat]
    _2740 = saturate(select(_2579, 1.0f, saturate((_2683 / (_2695 * _2695)) * _2003)) * _2064);  // [sem: expr_sat]
    _2747 = saturate(select(_2579, 1.0f, saturate((_2683 / (_2699 * _2699)) * _1979)) * _2066);  // [sem: expr_sat]
    _2757 = exp2(log2(saturate(max(float(((half)(((half)(1.0h - _1468)) * 0.75h)) * _2440), (1.0f - _1482)))) * 0.1f);
    _2760 = float(((half)(_1468 * _1468)) + 1.0009766h);
    _2776 = select(_2579, 1.0f, saturate(((_2174 * _2174) * _2178) * exp2((log2(float(_2662)) * 0.5f) * (((_2660 * 15.0f) * ((_2757 + _2760) / (_2760 - _2757))) + 1.0f))));
    if ((uint)((int)((uint)((uint)(_2439)) + (uint)(-12))) < (uint)9) {
      _2786 = ((saturate(_124 * 0.005f) * (_2776 + -1.0f)) + 1.0f);
    } else {
      _2786 = _2776;
    }
    _2798 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), _115.x, mad((_projToPrevProj[3].y), _375, ((_projToPrevProj[3].x) * _373)));
    _2808 = ((mad((_projToPrevProj[0].z), _115.x, mad((_projToPrevProj[0].y), _375, ((_projToPrevProj[0].x) * _373))) + (_projToPrevProj[0].w)) / _2798) - _373;
    _2818 = ((mad((_projToPrevProj[1].z), _115.x, mad((_projToPrevProj[1].y), _375, ((_projToPrevProj[1].x) * _373))) + (_projToPrevProj[1].w)) / _2798) - _375;
    _2819 = _1560 - _2808;
    _2820 = _1559 - _2818;
    if ((_1507 != 0) || ((uint)((int)((uint)((uint)(_2439)) + (uint)(-52))) < (uint)16)) {
      _2835 = (31.0f - (saturate(sqrt((_2820 * _2820) + (_2819 * _2819)) * 500.0f) * 24.0f));
    } else {
      _2835 = 63.0f;
    }
    if (_renderParams.z > 0.0f) {
      _2844 = saturate((_2660 * 200.0f) + 0.125f);  // [sem: expr_sat]
    } else {
      _2844 = 0.0f;  // [sem: expr_sat]
    }
    _2853 = max(max(saturate(_2123), saturate(max(0.0f, (1.0f / (((_2786 * _2719) * _2835) + 1.0f))))), _2844);
    _2855 = ((uint)(_2439 & 24) > (uint)23);
    [branch]
    if (_2855) {
      _2862 = (_bufferSizeAndInvSize.x * ((_2808 * 0.5f) + _111)) + -0.5f;
      _2867 = (_bufferSizeAndInvSize.y * (_113 - (_2818 * 0.5f))) + -0.5f;
      _2869 = (int)(floor(_2862));
      _2871 = (int)(floor(_2867));
      _2872 = (float)((int)(_2869));
      _2873 = (float)((int)(_2871));
      [branch]
      if (_2579) {
        // [sem: _3__36__0__0__g_stencilPrev_gather]
        _2883 = __3__36__0__0__g_stencilPrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(((_2872 + 0.5f) * _bufferSizeAndInvSize.z), ((_2873 + 0.5f) * _bufferSizeAndInvSize.w)));
        _2890 = mad(_2883.w, 16777216, mad(_2883.z, 65536, mad(_2883.y, 256, _2883.x)));
        _2895 = saturate(((float)((bool)((uint)(_2890 & 24) > (uint)23))) * _2726);  // [sem: expr_sat]
        _2900 = saturate(((float)((bool)((uint)(_2890 & 6144) > (uint)5888))) * _2733);  // [sem: expr_sat]
        _2905 = saturate(((float)((bool)((uint)(_2890 & 1572864) > (uint)1507328))) * _2740);  // [sem: expr_sat]
        _2910 = saturate(((float)((bool)((uint)(_2890 & 402653184) > (uint)385875968))) * _2747);  // [sem: expr_sat]
        _2943 = _2910;
        _2944 = _2905;
        _2945 = _2900;
        _2946 = _2895;
        _2947 = _2871;
        _2948 = _2869;
        _2949 = max(saturate(min(max(((_1463 / (((_124 * _124) * 0.005f) + 1.0f)) + (_2660 * 500.0f)), 0.03125f), 0.5f) + _2853), saturate(1.0f - dot(float4(_2895, _2900, _2905, _2910), float4(1.0f, 1.0f, 1.0f, 1.0f))));
      } else {
        _2926 = _2862 - _2872;
        _2927 = _2867 - _2873;
        _2928 = 1.0f - _2926;
        _2929 = 1.0f - _2927;
        _2943 = (_2929 * _2928);
        _2944 = (_2929 * _2926);
        _2945 = (_2927 * _2926);
        _2946 = (_2928 * _2927);
        _2947 = _2871;
        _2948 = _2869;
        _2949 = (saturate((sqrt((_2818 * _2818) + (_2808 * _2808)) * 50.0f) + 0.125f) * 0.875f);
      }
    } else {
      _2943 = _2747;
      _2944 = _2740;
      _2945 = _2733;
      _2946 = _2726;
      _2947 = _1587;
      _2948 = _1585;
      _2949 = _2853;
    }
    _2950 = (_2591 > 0.2f);
    _2951 = (uint)((uint)(_2947)) + (uint)(1);
    half4 _2953 = __3__36__0__0__g_specularResultPrev.Load(int3(_2948, _2951, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _2962 = ((float)((bool)(!(_2950 ^ ((half)(_2953.w) < 0.0h))))) * _2946;
    _2963 = (uint)((uint)(_2948)) + (uint)(1);
    half4 _2964 = __3__36__0__0__g_specularResultPrev.Load(int3(_2963, _2951, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _2973 = ((float)((bool)(!(_2950 ^ ((half)(_2964.w) < 0.0h))))) * _2945;
    half4 _2974 = __3__36__0__0__g_specularResultPrev.Load(int3(_2963, _2947, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _2983 = ((float)((bool)(!(_2950 ^ ((half)(_2974.w) < 0.0h))))) * _2944;
    half4 _2984 = __3__36__0__0__g_specularResultPrev.Load(int3(_2948, _2947, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _2993 = ((float)((bool)(!(_2950 ^ ((half)(_2984.w) < 0.0h))))) * _2943;
    _3000 = 1.0f / max(((saturate(_124 * 0.0625f) * 0.000999f) + 1e-06f), dot(float4(_2962, _2973, _2983, _2993), float4(1.0f, 1.0f, 1.0f, 1.0f)));
    _3014 = -0.0f - _3000;
    _3015 = min(0.0f, (-0.0f - ((((_2962 * float(_2953.x)) + (_2973 * float(_2964.x))) + (_2983 * float(_2974.x))) + (_2993 * float(_2984.x))))) * _3014;
    _3029 = min(0.0f, (-0.0f - ((((_2962 * float(_2953.y)) + (_2973 * float(_2964.y))) + (_2983 * float(_2974.y))) + (_2993 * float(_2984.y))))) * _3014;
    _3043 = min(0.0f, (-0.0f - ((((_2962 * float(_2953.z)) + (_2973 * float(_2964.z))) + (_2983 * float(_2974.z))) + (_2993 * float(_2984.z))))) * _3014;
    _3061 = min(0.0f, (-0.0f - ((((abs(float(_2953.w)) * _2962) + (abs(float(_2964.w)) * _2973)) + (abs(float(_2974.w)) * _2983)) + (abs(float(_2984.w)) * _2993)))) * _3000;
    if (((_2439 != 53) && (_2578 != 66)) && (_renderParams.y == 0.0f)) {
      _3069 = dot(float3(_3015, _3029, _3043), float3(0.212671f, 0.71516f, 0.072169f));
      _3076 = ((min(_3069, _2181.z) / max(1e-09f, _3069)) * _2186) + saturate(1.0f - _2186);
      _3097 = (_3076 * _3043);
      _3098 = (_3076 * _3029);
      _3099 = (_3076 * _3015);
      // [sem: expr_sat]
      _3100 = saturate(((_2186 * 0.5f) * saturate((((_2467 * 1000.0f) * _2660) * ((float(1.0h / ((half)(8.0h - ((half)(_1468 * 7.0h))))) * _2181.z) - _3069)) / max(1e-06f, _2181.z))) + _2949);
    } else {
      _3097 = _3043;
      _3098 = _3029;
      _3099 = _3015;
      _3100 = _2949;  // [sem: expr_sat]
    }
    _3103 = _exposure4.y * _3099;
    _3104 = _exposure4.y * _3098;
    _3105 = _exposure4.y * _3097;
    _3110 = ((max(0.001f, float(_2362)) + _3061) * _3100) - _3061;
    _3118 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_2590 * _341.x) - _3103) * _3100) + _3103))));
    _3126 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_2590 * _341.y) - _3104) * _3100) + _3104))));
    _3134 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_2590 * _341.z) - _3105) * _3100) + _3105))));
    __3__38__0__1__g_specularResultUAV[int2(_99, _104)] = float4((half)(half(_3118)), (half)(half(_3126)), (half)(half(_3134)), (half)(half(select(_2950, (-0.0f - _3110), _3110))));
    __3__38__0__1__g_specularSampleCountUAV[int2(_99, _104)] = saturate((_2719 * 0.984375f) + 0.015625f);
    _3146 = select(_2855, 0.0f, _3110);
    _3151 = float(half(lerp(_3146, 1.0f, _2467)));
    _3152 = (_2578 == 64);
    _3154 = ((int)(uint)(_186)) ^ 1;
    if ((((int)(uint)(_3152)) & _3154) == 0) {
      _3171 = saturate(exp2((_3151 * _3151) * (_124 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _3171 = select((_cavityParams.z > 0.0f), select(_186, 0.0f, _443), 1.0f);  // [sem: expr_sat]
    }
    _3174 = (_cavityParams.x == 0.0f);
    _3175 = select(_3174, 1.0f, _3171);
    if (_3152) {
      _3181 = (_3175 * _2357);
      _3182 = (_3175 * _2353);
      _3183 = (_3175 * _2349);
    } else {
      _3181 = _2357;
      _3182 = _2353;
      _3183 = _2349;
    }
    _3184 = _2328 * 0.875f;
    _3185 = _2329 * 0.875f;
    _3186 = _2330 * 0.875f;
    if (!(_2439 == 37)) {
      _3189 = (_2439 == 55);
      _3190 = select(_3189, _3184, _3183);
      _3191 = select(_3189, _3185, _3182);
      _3192 = select(_3189, _3186, _3181);
      if ((_2439 == 53) || (_2578 == 66)) {
        // [sem: _3__36__0__0__g_hairBrdfLookup_sampleLod]
        _3207 = __3__36__0__0__g_hairBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, (1.0f - saturate(abs(dot(float3(_1390, _1389, _1388), float3(_417, _418, _419)))))), (1.0f - max(0.75f, (_3151 * 2.0f)))), 0.0f);
        // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
        _3213 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1482), (1.0f - _3151)), 0.0f);
        _3218 = ((_3213.x - _3207.x) * _1392) + _3207.x;
        _3221 = ((_3213.y - _3207.y) * _1392) + _3207.y;
        _3223 = (_3218 * 0.01f) + _3221;
        _3427 = _3223;
        _3428 = _3223;
        _3429 = _3223;
        _3430 = _3221;
        _3431 = _3218;
      } else {
        if ((uint)((int)((uint)((uint)(_2439)) + (uint)(-97))) < (uint)2) {
          if (!(abs(_233) > 0.99f)) {
            _3231 = -0.0f - _234;
            _3233 = rsqrt(dot(float3(_3231, 0.0f, _232), float3(_3231, 0.0f, _232)));  // [sem: invLength]
            _3237 = (_3233 * _232);
            _3238 = (_3233 * _3231);
          } else {
            _3237 = 0.0f;
            _3238 = 1.0f;
          }
          _3240 = -0.0f - (_233 * _3237);
          _3243 = (_3237 * _232) - (_3238 * _234);
          _3244 = _3238 * _233;
          _3246 = rsqrt(dot(float3(_3240, _3243, _3244), float3(_3240, _3243, _3244)));  // [sem: invLength]
          _3249 = _viewPos.x + _396;
          _3251 = _viewPos.y + _405;
          _3253 = _viewPos.z + _414;
          // [sem: _3__36__0__0__g_blueNoise_sampleLod]
          _3261 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_3238, 0.0f, _3237), float3(_3249, _3251, _3253)), dot(float3((_3246 * _3240), (_3243 * _3246), (_3246 * _3244)), float3(_3249, _3251, _3253))), 0.0f);
          _3265 = _3261.x + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _3266 = _3261.y + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _3267 = _3261.z + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _3269 = rsqrt(dot(float3(_3265, _3266, _3267), float3(_3265, _3266, _3267)));  // [sem: invLength]
          _3271 = (_3265 * _3269) + _369;
          _3273 = (_3266 * _3269) + _370;
          _3275 = (_3267 * _3269) + _371;
          _3277 = rsqrt(dot(float3(_3271, _3273, _3275), float3(_3271, _3273, _3275)));  // [sem: invLength]
          // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
          _3282 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1482), (1.0f - _3151)), 0.0f);
          _3294 = (exp2(log2(saturate(dot(float3(_1474, _1475, _1476), float3((_3271 * _3277), (_3273 * _3277), (_3275 * _3277))))) * 512.0f) * 20.0f) + _3282.y;
          _3427 = (_3294 + (_3282.x * _3192));
          _3428 = (_3294 + (_3282.x * _3191));
          _3429 = (_3294 + (_3282.x * _3190));
          _3430 = _3282.y;
          _3431 = _3282.x;
        } else {
          if (_3152) {
            _3304 = min(0.99f, _1482);
            if (_2439 == 65) {
              // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
              _3309 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_3304, (1.0f - _3151)), 0.0f);
              _3427 = ((_3309.x * _3192) + _3309.y);
              _3428 = ((_3309.x * _3191) + _3309.y);
              _3429 = ((_3309.x * _3190) + _3309.y);
              _3430 = _3309.y;
              _3431 = _3309.x;
            } else {
              // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
              _3322 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_3304, saturate(1.0f - (_3151 * 1.33f))), 0.0f);
              // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
              _3328 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_3304, saturate(1.0f - (_3151 * 0.47998047f))), 0.0f);
              _3332 = (_3328.x + _3322.x) * 0.5f;
              _3334 = (_3328.y + _3322.y) * 0.5f;
              _3427 = ((_3332 * _3192) + _3334);
              _3428 = ((_3332 * _3191) + _3334);
              _3429 = ((_3332 * _3190) + _3334);
              _3430 = _3334;
              _3431 = _3332;
            }
          } else {
            if ((_2439 == 33) || (_2439 == 54)) {
              _3347 = max(dot(float3(_2328, _2329, _2330), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
              _3361 = (saturate(1.0f - (pow(_1482, 4.0f))) * (_2436 - _2438)) + _2438;
              _3372 = (((_3361 * (sqrt(_2330) - _3347)) + _3347) * _2437);
              _3373 = (((_3361 * (sqrt(_2329) - _3347)) + _3347) * _2437);
              _3374 = (((_3361 * (sqrt(_2328) - _3347)) + _3347) * _2437);
            } else {
              _3372 = _3192;
              _3373 = _3191;
              _3374 = _3190;
            }
            // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
            _3379 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1482), (1.0f - _3151)), 0.0f);
            _3427 = ((_3379.x * _3372) + _3379.y);
            _3428 = ((_3379.x * _3373) + _3379.y);
            _3429 = ((_3379.x * _3374) + _3379.y);
            _3430 = _3379.y;
            _3431 = _3379.x;
          }
        }
      }
    } else {
      _3389 = min(0.99f, _1482);
      if (_3152) {
        // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
        _3396 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_3389, saturate(1.0f - (_3151 * 1.33f))), 0.0f);
        // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
        _3402 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_3389, saturate(1.0f - (_3151 * 0.47998047f))), 0.0f);
        _3406 = (_3402.x + _3396.x) * 0.5f;
        _3408 = (_3402.y + _3396.y) * 0.5f;
        _3427 = ((_3406 * _3186) + _3408);
        _3428 = ((_3406 * _3185) + _3408);
        _3429 = ((_3406 * _3184) + _3408);
        _3430 = _3408;
        _3431 = _3406;
      } else {
        // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
        _3417 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_3389, (1.0f - _3151)), 0.0f);
        _3427 = ((_3417.x * _3186) + _3417.y);
        _3428 = ((_3417.x * _3185) + _3417.y);
        _3429 = ((_3417.x * _3184) + _3417.y);
        _3430 = _3417.y;
        _3431 = _3417.x;
      }
    }
    _3434 = select((_3152 || _2855), 1.0f, _3175) * _2212;
    _3435 = _2316 * _2212;
    _3436 = _2319 * _2212;
    _3437 = _2322 * _2212;
    if (_1703 || _1432) {
      if (_1473) {
        _3711 = (_3437 * _1384);
        _3712 = (_3436 * _1385);
        _3713 = (_3435 * _1386);
        _3714 = 0.0f;
        _3715 = 0.0f;
        _3716 = 0.0f;
        _3717 = _1469;
        _3718 = _1468;
        _3719 = _1465;
        _3720 = _1466;
        _3721 = _1467;
        _3722 = _3146;
      } else {
        _3711 = 0.0f;
        _3712 = 0.0f;
        _3713 = 0.0f;
        _3714 = _3437;
        _3715 = _3436;
        _3716 = _3435;
        _3717 = _1469;
        _3718 = _1468;
        _3719 = _1465;
        _3720 = _1466;
        _3721 = _1467;
        _3722 = _3146;
      }
    } else {
      if (!((_1387 == 26) || ((_1387 == 105) || (((uint)((int)(_1387) + (int)(-27)) < (uint)2) || ((_1387 == 6) || (_1470 == 106)))))) {
        if (!(_1387 == 7)) {
          _3463 = exp2((saturate(_124 * 0.03125f) + 1.0f) * log2(_3146));
          // [sem: _3__36__0__0__g_puddleMask_sampleLod]
          _3466 = __3__36__0__0__g_puddleMask.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_111, _113), 0.0f);
          if (((_1387 & -4) == 16) || ((_1387 == 15) || (_1470 == 12))) {
            _3487 = 1;
            _3488 = 0;
            if (_3466.w < 1.0f) {
              if ((_weatherCheckFlag & 5) == 5) {
                _3496 = (_1387 == 36);
                if (!_3496) {
                  // [sem: _3__36__0__0__g_climateSandTex_sampleLod]
                  _3523 = __3__36__0__0__g_climateSandTex.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + ((_viewPos.x + _396) / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + ((_viewPos.z + _414) / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                  _3529 = _3523.w;
                  _3530 = _3523.z;
                  _3531 = _3523.y;
                  _3532 = _3523.x;
                } else {
                  _3529 = 0.5f;
                  _3530 = 0.1f;
                  _3531 = 0.12f;
                  _3532 = 0.12f;
                }
                _3542 = 1.0f - saturate(((_viewPos.y + _405) - _paramGlobalSand.x) / _paramGlobalSand.y);
                if (!(_3542 <= 0.0f)) {
                  _3545 = saturate(_3463);  // [sem: _3463_sat]
                  _3550 = ((_3531 * 0.33951f) + (_3530 * 0.04737f)) + (_3532 * 0.61312f);
                  _3555 = ((_3531 * 0.91636f) + (_3530 * 0.01345f)) + (_3532 * 0.0702f);
                  _3560 = ((_3531 * 0.10958f) + (_3530 * 0.8698f)) + (_3532 * 0.02062f);
                  _3566 = select((_3487 != 0), 1.0f, ((float)((bool)(saturate(dot(float3(_369, _370, _371), float3(0.0f, 1.0f, 0.0f))) > 0.5f))));
                  if (_enableSandAO == 1) {
                    _3572 = (1.0f - _3466.x) * 10.0f;
                    if (_3496) {
                      _3604 = saturate(((_3542 * _3529) * _3572) * _3545);  // [sem: _3600_sat]
                      _3605 = _3560;
                      _3606 = _3555;
                      _3607 = _3550;
                    } else {
                      _3580 = saturate(_3529 + -0.5f);  // [sem: expr_sat]
                      // [sem: _3600_sat]
                      _3604 = ((((_3545 * _3572) * saturate((0.5f - _3529) * 2.0f)) + ((_3580 * 2.0f) * max((_3566 * _3466.x), min((_3545 * ((_3466.x * 7.0f) + 3.0f)), (_3580 * 40.0f))))) * _3542);
                      _3605 = _3560;
                      _3606 = _3555;
                      _3607 = _3550;
                    }
                  } else {
                    _3600 = ((_3542 * _3529) * _3466.x) * _3566;
                    if (_3496) {
                      _3604 = saturate(_3600);  // [sem: _3600_sat]
                      _3605 = _3560;
                      _3606 = _3555;
                      _3607 = _3550;
                    } else {
                      _3604 = _3600;  // [sem: _3600_sat]
                      _3605 = _3560;
                      _3606 = _3555;
                      _3607 = _3550;
                    }
                  }
                } else {
                  _3604 = 0.0f;  // [sem: _3600_sat]
                  _3605 = 0.0f;
                  _3606 = 0.0f;
                  _3607 = 0.0f;
                }
                _3611 = ((1.0f - _3466.w) * (1.0f - _3466.y)) * _3604;
                if (_3611 > 0.0001f) {
                  _3614 = (_3487 == 0);
                  if (_3614) {
                    _3637 = ((_3605 - _2330) * _3611);
                    _3638 = ((_3606 - _2329) * _3611);
                    _3639 = ((_3607 - _2328) * _3611);
                  } else {
                    _3616 = saturate(_3611);  // [sem: _3611_sat]
                    _3637 = ((sqrt(_3605 * _2330) - _2330) * _3616);
                    _3638 = ((sqrt(_3606 * _2329) - _2329) * _3616);
                    _3639 = ((sqrt(_3607 * _2328) - _2328) * _3616);
                  }
                  _3640 = _2328 + _3639;
                  _3641 = _2329 + _3638;
                  _3642 = _3637 + _2330;
                  if (_3496) {
                    if (_3614) {
                      _3656 = _3640;
                      _3657 = _3641;
                      _3658 = _3642;
                      _3659 = ((_3611 * (0.25f - _2467)) + _2467);
                    } else {
                      _3656 = _3640;
                      _3657 = _3641;
                      _3658 = _3642;
                      _3659 = (((sqrt(_2467 * 0.25f) - _2467) * saturate(_3611)) + _2467);
                    }
                  } else {
                    _3656 = _3640;
                    _3657 = _3641;
                    _3658 = _3642;
                    _3659 = _2467;
                  }
                } else {
                  _3656 = _2328;
                  _3657 = _2329;
                  _3658 = _2330;
                  _3659 = _2467;
                }
                _3660 = saturate(_3656);  // [sem: _3656_sat]
                _3661 = saturate(_3657);  // [sem: _3657_sat]
                _3662 = saturate(_3658);  // [sem: _3658_sat]
                _3665 = (_3659 * (1.0f - _3463)) + _3463;
                _3668 = ((_3659 - _3665) * _3466.y) + _3665;
                _3676 = (((_3463 * _3463) * _3466.z) * ((float)((bool)(_3488 != 0)))) * saturate(dot(float3(_369, _370, _371), float3(0.0f, 1.0f, 0.0f)));
                _3677 = _3676 * -0.5f;
                _3689 = ((_3677 * _3662) + _3662);
                _3690 = ((_3677 * _3661) + _3661);
                _3691 = ((_3677 * _3660) + _3660);
                _3692 = (_3668 - (_3676 * _3668));
                _3693 = (_2339 - (_3463 * _2339));
              } else {
                _3689 = _2330;
                _3690 = _2329;
                _3691 = _2328;
                _3692 = _2467;
                _3693 = _2339;
              }
            } else {
              _3689 = _2330;
              _3690 = _2329;
              _3691 = _2328;
              _3692 = _2467;
              _3693 = _2339;
            }
          } else {
            if ((uint)_1387 > (uint)10) {
              if ((uint)_1387 < (uint)20) {
                _3487 = 0;
                _3488 = 0;
                if (_3466.w < 1.0f) {
                  if ((_weatherCheckFlag & 5) == 5) {
                    _3496 = (_1387 == 36);
                    if (!_3496) {
                      // [sem: _3__36__0__0__g_climateSandTex_sampleLod]
                      _3523 = __3__36__0__0__g_climateSandTex.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + ((_viewPos.x + _396) / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + ((_viewPos.z + _414) / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                      _3529 = _3523.w;
                      _3530 = _3523.z;
                      _3531 = _3523.y;
                      _3532 = _3523.x;
                    } else {
                      _3529 = 0.5f;
                      _3530 = 0.1f;
                      _3531 = 0.12f;
                      _3532 = 0.12f;
                    }
                    _3542 = 1.0f - saturate(((_viewPos.y + _405) - _paramGlobalSand.x) / _paramGlobalSand.y);
                    if (!(_3542 <= 0.0f)) {
                      _3545 = saturate(_3463);  // [sem: _3463_sat]
                      _3550 = ((_3531 * 0.33951f) + (_3530 * 0.04737f)) + (_3532 * 0.61312f);
                      _3555 = ((_3531 * 0.91636f) + (_3530 * 0.01345f)) + (_3532 * 0.0702f);
                      _3560 = ((_3531 * 0.10958f) + (_3530 * 0.8698f)) + (_3532 * 0.02062f);
                      _3566 = select((_3487 != 0), 1.0f, ((float)((bool)(saturate(dot(float3(_369, _370, _371), float3(0.0f, 1.0f, 0.0f))) > 0.5f))));
                      if (_enableSandAO == 1) {
                        _3572 = (1.0f - _3466.x) * 10.0f;
                        if (_3496) {
                          _3604 = saturate(((_3542 * _3529) * _3572) * _3545);  // [sem: _3600_sat]
                          _3605 = _3560;
                          _3606 = _3555;
                          _3607 = _3550;
                        } else {
                          _3580 = saturate(_3529 + -0.5f);  // [sem: expr_sat]
                          // [sem: _3600_sat]
                          _3604 = ((((_3545 * _3572) * saturate((0.5f - _3529) * 2.0f)) + ((_3580 * 2.0f) * max((_3566 * _3466.x), min((_3545 * ((_3466.x * 7.0f) + 3.0f)), (_3580 * 40.0f))))) * _3542);
                          _3605 = _3560;
                          _3606 = _3555;
                          _3607 = _3550;
                        }
                      } else {
                        _3600 = ((_3542 * _3529) * _3466.x) * _3566;
                        if (_3496) {
                          _3604 = saturate(_3600);  // [sem: _3600_sat]
                          _3605 = _3560;
                          _3606 = _3555;
                          _3607 = _3550;
                        } else {
                          _3604 = _3600;  // [sem: _3600_sat]
                          _3605 = _3560;
                          _3606 = _3555;
                          _3607 = _3550;
                        }
                      }
                    } else {
                      _3604 = 0.0f;  // [sem: _3600_sat]
                      _3605 = 0.0f;
                      _3606 = 0.0f;
                      _3607 = 0.0f;
                    }
                    _3611 = ((1.0f - _3466.w) * (1.0f - _3466.y)) * _3604;
                    if (_3611 > 0.0001f) {
                      _3614 = (_3487 == 0);
                      if (_3614) {
                        _3637 = ((_3605 - _2330) * _3611);
                        _3638 = ((_3606 - _2329) * _3611);
                        _3639 = ((_3607 - _2328) * _3611);
                      } else {
                        _3616 = saturate(_3611);  // [sem: _3611_sat]
                        _3637 = ((sqrt(_3605 * _2330) - _2330) * _3616);
                        _3638 = ((sqrt(_3606 * _2329) - _2329) * _3616);
                        _3639 = ((sqrt(_3607 * _2328) - _2328) * _3616);
                      }
                      _3640 = _2328 + _3639;
                      _3641 = _2329 + _3638;
                      _3642 = _3637 + _2330;
                      if (_3496) {
                        if (_3614) {
                          _3656 = _3640;
                          _3657 = _3641;
                          _3658 = _3642;
                          _3659 = ((_3611 * (0.25f - _2467)) + _2467);
                        } else {
                          _3656 = _3640;
                          _3657 = _3641;
                          _3658 = _3642;
                          _3659 = (((sqrt(_2467 * 0.25f) - _2467) * saturate(_3611)) + _2467);
                        }
                      } else {
                        _3656 = _3640;
                        _3657 = _3641;
                        _3658 = _3642;
                        _3659 = _2467;
                      }
                    } else {
                      _3656 = _2328;
                      _3657 = _2329;
                      _3658 = _2330;
                      _3659 = _2467;
                    }
                    _3660 = saturate(_3656);  // [sem: _3656_sat]
                    _3661 = saturate(_3657);  // [sem: _3657_sat]
                    _3662 = saturate(_3658);  // [sem: _3658_sat]
                    _3665 = (_3659 * (1.0f - _3463)) + _3463;
                    _3668 = ((_3659 - _3665) * _3466.y) + _3665;
                    _3676 = (((_3463 * _3463) * _3466.z) * ((float)((bool)(_3488 != 0)))) * saturate(dot(float3(_369, _370, _371), float3(0.0f, 1.0f, 0.0f)));
                    _3677 = _3676 * -0.5f;
                    _3689 = ((_3677 * _3662) + _3662);
                    _3690 = ((_3677 * _3661) + _3661);
                    _3691 = ((_3677 * _3660) + _3660);
                    _3692 = (_3668 - (_3676 * _3668));
                    _3693 = (_2339 - (_3463 * _2339));
                  } else {
                    _3689 = _2330;
                    _3690 = _2329;
                    _3691 = _2328;
                    _3692 = _2467;
                    _3693 = _2339;
                  }
                } else {
                  _3689 = _2330;
                  _3690 = _2329;
                  _3691 = _2328;
                  _3692 = _2467;
                  _3693 = _2339;
                }
              } else {
                if (!(_1387 == 97)) {
                  _3487 = 0;
                  _3488 = ((int)(uint)((int)(_1387 != 107)));
                  if (_3466.w < 1.0f) {
                    if ((_weatherCheckFlag & 5) == 5) {
                      _3496 = (_1387 == 36);
                      if (!_3496) {
                        // [sem: _3__36__0__0__g_climateSandTex_sampleLod]
                        _3523 = __3__36__0__0__g_climateSandTex.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + ((_viewPos.x + _396) / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + ((_viewPos.z + _414) / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                        _3529 = _3523.w;
                        _3530 = _3523.z;
                        _3531 = _3523.y;
                        _3532 = _3523.x;
                      } else {
                        _3529 = 0.5f;
                        _3530 = 0.1f;
                        _3531 = 0.12f;
                        _3532 = 0.12f;
                      }
                      _3542 = 1.0f - saturate(((_viewPos.y + _405) - _paramGlobalSand.x) / _paramGlobalSand.y);
                      if (!(_3542 <= 0.0f)) {
                        _3545 = saturate(_3463);  // [sem: _3463_sat]
                        _3550 = ((_3531 * 0.33951f) + (_3530 * 0.04737f)) + (_3532 * 0.61312f);
                        _3555 = ((_3531 * 0.91636f) + (_3530 * 0.01345f)) + (_3532 * 0.0702f);
                        _3560 = ((_3531 * 0.10958f) + (_3530 * 0.8698f)) + (_3532 * 0.02062f);
                        _3566 = select((_3487 != 0), 1.0f, ((float)((bool)(saturate(dot(float3(_369, _370, _371), float3(0.0f, 1.0f, 0.0f))) > 0.5f))));
                        if (_enableSandAO == 1) {
                          _3572 = (1.0f - _3466.x) * 10.0f;
                          if (_3496) {
                            _3604 = saturate(((_3542 * _3529) * _3572) * _3545);  // [sem: _3600_sat]
                            _3605 = _3560;
                            _3606 = _3555;
                            _3607 = _3550;
                          } else {
                            _3580 = saturate(_3529 + -0.5f);  // [sem: expr_sat]
                            // [sem: _3600_sat]
                            _3604 = ((((_3545 * _3572) * saturate((0.5f - _3529) * 2.0f)) + ((_3580 * 2.0f) * max((_3566 * _3466.x), min((_3545 * ((_3466.x * 7.0f) + 3.0f)), (_3580 * 40.0f))))) * _3542);
                            _3605 = _3560;
                            _3606 = _3555;
                            _3607 = _3550;
                          }
                        } else {
                          _3600 = ((_3542 * _3529) * _3466.x) * _3566;
                          if (_3496) {
                            _3604 = saturate(_3600);  // [sem: _3600_sat]
                            _3605 = _3560;
                            _3606 = _3555;
                            _3607 = _3550;
                          } else {
                            _3604 = _3600;  // [sem: _3600_sat]
                            _3605 = _3560;
                            _3606 = _3555;
                            _3607 = _3550;
                          }
                        }
                      } else {
                        _3604 = 0.0f;  // [sem: _3600_sat]
                        _3605 = 0.0f;
                        _3606 = 0.0f;
                        _3607 = 0.0f;
                      }
                      _3611 = ((1.0f - _3466.w) * (1.0f - _3466.y)) * _3604;
                      if (_3611 > 0.0001f) {
                        _3614 = (_3487 == 0);
                        if (_3614) {
                          _3637 = ((_3605 - _2330) * _3611);
                          _3638 = ((_3606 - _2329) * _3611);
                          _3639 = ((_3607 - _2328) * _3611);
                        } else {
                          _3616 = saturate(_3611);  // [sem: _3611_sat]
                          _3637 = ((sqrt(_3605 * _2330) - _2330) * _3616);
                          _3638 = ((sqrt(_3606 * _2329) - _2329) * _3616);
                          _3639 = ((sqrt(_3607 * _2328) - _2328) * _3616);
                        }
                        _3640 = _2328 + _3639;
                        _3641 = _2329 + _3638;
                        _3642 = _3637 + _2330;
                        if (_3496) {
                          if (_3614) {
                            _3656 = _3640;
                            _3657 = _3641;
                            _3658 = _3642;
                            _3659 = ((_3611 * (0.25f - _2467)) + _2467);
                          } else {
                            _3656 = _3640;
                            _3657 = _3641;
                            _3658 = _3642;
                            _3659 = (((sqrt(_2467 * 0.25f) - _2467) * saturate(_3611)) + _2467);
                          }
                        } else {
                          _3656 = _3640;
                          _3657 = _3641;
                          _3658 = _3642;
                          _3659 = _2467;
                        }
                      } else {
                        _3656 = _2328;
                        _3657 = _2329;
                        _3658 = _2330;
                        _3659 = _2467;
                      }
                      _3660 = saturate(_3656);  // [sem: _3656_sat]
                      _3661 = saturate(_3657);  // [sem: _3657_sat]
                      _3662 = saturate(_3658);  // [sem: _3658_sat]
                      _3665 = (_3659 * (1.0f - _3463)) + _3463;
                      _3668 = ((_3659 - _3665) * _3466.y) + _3665;
                      _3676 = (((_3463 * _3463) * _3466.z) * ((float)((bool)(_3488 != 0)))) * saturate(dot(float3(_369, _370, _371), float3(0.0f, 1.0f, 0.0f)));
                      _3677 = _3676 * -0.5f;
                      _3689 = ((_3677 * _3662) + _3662);
                      _3690 = ((_3677 * _3661) + _3661);
                      _3691 = ((_3677 * _3660) + _3660);
                      _3692 = (_3668 - (_3676 * _3668));
                      _3693 = (_2339 - (_3463 * _2339));
                    } else {
                      _3689 = _2330;
                      _3690 = _2329;
                      _3691 = _2328;
                      _3692 = _2467;
                      _3693 = _2339;
                    }
                  } else {
                    _3689 = _2330;
                    _3690 = _2329;
                    _3691 = _2328;
                    _3692 = _2467;
                    _3693 = _2339;
                  }
                } else {
                  _3689 = _2330;
                  _3690 = _2329;
                  _3691 = _2328;
                  _3692 = _2467;
                  _3693 = _2339;
                }
              }
            } else {
              _3487 = 0;
              _3488 = 1;
              if (_3466.w < 1.0f) {
                if ((_weatherCheckFlag & 5) == 5) {
                  _3496 = (_1387 == 36);
                  if (!_3496) {
                    // [sem: _3__36__0__0__g_climateSandTex_sampleLod]
                    _3523 = __3__36__0__0__g_climateSandTex.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + ((_viewPos.x + _396) / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + ((_viewPos.z + _414) / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                    _3529 = _3523.w;
                    _3530 = _3523.z;
                    _3531 = _3523.y;
                    _3532 = _3523.x;
                  } else {
                    _3529 = 0.5f;
                    _3530 = 0.1f;
                    _3531 = 0.12f;
                    _3532 = 0.12f;
                  }
                  _3542 = 1.0f - saturate(((_viewPos.y + _405) - _paramGlobalSand.x) / _paramGlobalSand.y);
                  if (!(_3542 <= 0.0f)) {
                    _3545 = saturate(_3463);  // [sem: _3463_sat]
                    _3550 = ((_3531 * 0.33951f) + (_3530 * 0.04737f)) + (_3532 * 0.61312f);
                    _3555 = ((_3531 * 0.91636f) + (_3530 * 0.01345f)) + (_3532 * 0.0702f);
                    _3560 = ((_3531 * 0.10958f) + (_3530 * 0.8698f)) + (_3532 * 0.02062f);
                    _3566 = select((_3487 != 0), 1.0f, ((float)((bool)(saturate(dot(float3(_369, _370, _371), float3(0.0f, 1.0f, 0.0f))) > 0.5f))));
                    if (_enableSandAO == 1) {
                      _3572 = (1.0f - _3466.x) * 10.0f;
                      if (_3496) {
                        _3604 = saturate(((_3542 * _3529) * _3572) * _3545);  // [sem: _3600_sat]
                        _3605 = _3560;
                        _3606 = _3555;
                        _3607 = _3550;
                      } else {
                        _3580 = saturate(_3529 + -0.5f);  // [sem: expr_sat]
                        // [sem: _3600_sat]
                        _3604 = ((((_3545 * _3572) * saturate((0.5f - _3529) * 2.0f)) + ((_3580 * 2.0f) * max((_3566 * _3466.x), min((_3545 * ((_3466.x * 7.0f) + 3.0f)), (_3580 * 40.0f))))) * _3542);
                        _3605 = _3560;
                        _3606 = _3555;
                        _3607 = _3550;
                      }
                    } else {
                      _3600 = ((_3542 * _3529) * _3466.x) * _3566;
                      if (_3496) {
                        _3604 = saturate(_3600);  // [sem: _3600_sat]
                        _3605 = _3560;
                        _3606 = _3555;
                        _3607 = _3550;
                      } else {
                        _3604 = _3600;  // [sem: _3600_sat]
                        _3605 = _3560;
                        _3606 = _3555;
                        _3607 = _3550;
                      }
                    }
                  } else {
                    _3604 = 0.0f;  // [sem: _3600_sat]
                    _3605 = 0.0f;
                    _3606 = 0.0f;
                    _3607 = 0.0f;
                  }
                  _3611 = ((1.0f - _3466.w) * (1.0f - _3466.y)) * _3604;
                  if (_3611 > 0.0001f) {
                    _3614 = (_3487 == 0);
                    if (_3614) {
                      _3637 = ((_3605 - _2330) * _3611);
                      _3638 = ((_3606 - _2329) * _3611);
                      _3639 = ((_3607 - _2328) * _3611);
                    } else {
                      _3616 = saturate(_3611);  // [sem: _3611_sat]
                      _3637 = ((sqrt(_3605 * _2330) - _2330) * _3616);
                      _3638 = ((sqrt(_3606 * _2329) - _2329) * _3616);
                      _3639 = ((sqrt(_3607 * _2328) - _2328) * _3616);
                    }
                    _3640 = _2328 + _3639;
                    _3641 = _2329 + _3638;
                    _3642 = _3637 + _2330;
                    if (_3496) {
                      if (_3614) {
                        _3656 = _3640;
                        _3657 = _3641;
                        _3658 = _3642;
                        _3659 = ((_3611 * (0.25f - _2467)) + _2467);
                      } else {
                        _3656 = _3640;
                        _3657 = _3641;
                        _3658 = _3642;
                        _3659 = (((sqrt(_2467 * 0.25f) - _2467) * saturate(_3611)) + _2467);
                      }
                    } else {
                      _3656 = _3640;
                      _3657 = _3641;
                      _3658 = _3642;
                      _3659 = _2467;
                    }
                  } else {
                    _3656 = _2328;
                    _3657 = _2329;
                    _3658 = _2330;
                    _3659 = _2467;
                  }
                  _3660 = saturate(_3656);  // [sem: _3656_sat]
                  _3661 = saturate(_3657);  // [sem: _3657_sat]
                  _3662 = saturate(_3658);  // [sem: _3658_sat]
                  _3665 = (_3659 * (1.0f - _3463)) + _3463;
                  _3668 = ((_3659 - _3665) * _3466.y) + _3665;
                  _3676 = (((_3463 * _3463) * _3466.z) * ((float)((bool)(_3488 != 0)))) * saturate(dot(float3(_369, _370, _371), float3(0.0f, 1.0f, 0.0f)));
                  _3677 = _3676 * -0.5f;
                  _3689 = ((_3677 * _3662) + _3662);
                  _3690 = ((_3677 * _3661) + _3661);
                  _3691 = ((_3677 * _3660) + _3660);
                  _3692 = (_3668 - (_3676 * _3668));
                  _3693 = (_2339 - (_3463 * _2339));
                } else {
                  _3689 = _2330;
                  _3690 = _2329;
                  _3691 = _2328;
                  _3692 = _2467;
                  _3693 = _2339;
                }
              } else {
                _3689 = _2330;
                _3690 = _2329;
                _3691 = _2328;
                _3692 = _2467;
                _3693 = _2339;
              }
            }
          }
          _3700 = _3463;
          _3701 = (half)(half(_3689));
          _3702 = (half)(half(_3690));
          _3703 = (half)(half(_3691));
          _3704 = (half)(half(_3692));
          _3705 = (half)(half(_3693));
        } else {
          _3700 = _3146;
          _3701 = _1465;
          _3702 = _1466;
          _3703 = _1467;
          _3704 = _1468;
          _3705 = _1469;
        }
        if (_1473) {
          _3711 = (_3437 * _1384);
          _3712 = (_3436 * _1385);
          _3713 = (_3435 * _1386);
          _3714 = 0.0f;
          _3715 = 0.0f;
          _3716 = 0.0f;
          _3717 = _3705;
          _3718 = _3704;
          _3719 = _3701;
          _3720 = _3702;
          _3721 = _3703;
          _3722 = _3700;
        } else {
          _3711 = 0.0f;
          _3712 = 0.0f;
          _3713 = 0.0f;
          _3714 = _3437;
          _3715 = _3436;
          _3716 = _3435;
          _3717 = _3705;
          _3718 = _3704;
          _3719 = _3701;
          _3720 = _3702;
          _3721 = _3703;
          _3722 = _3700;
        }
      } else {
        _3711 = 0.0f;
        _3712 = 0.0f;
        _3713 = 0.0f;
        _3714 = _3437;
        _3715 = _3436;
        _3716 = _3435;
        _3717 = _1469;
        _3718 = _1468;
        _3719 = _1465;
        _3720 = _1466;
        _3721 = _1467;
        _3722 = _3146;
      }
    }
    half4 _3724 = __3__36__0__0__g_sceneShadowColor.Load(int3(_99, _104, 0));  // [sem: _3__36__0__0__g_sceneShadowColor_load]
    [branch]
    if (_1432) {
      _3731 = __3__36__0__0__g_sceneNormal.Load(int3(_99, _104, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
      _3737 = min(1.0f, ((((float)((uint)((uint)(_3731.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _3743 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_3731.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _3749 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_3731.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _3751 = rsqrt(dot(float3(_3737, _3743, _3749), float3(_3737, _3743, _3749)));  // [sem: invLength]
      _3759 = (half)(half(_3751 * _3749));
      _3760 = (half)(half(_3751 * _3743));
      _3761 = (half)(half(_3751 * _3737));
    } else {
      _3759 = _310;
      _3760 = _311;
      _3761 = _312;
    }
    _3764 = (_sunDirection.y > 0.0f);
    if (_3764) {
      _3780 = _sunDirection.x;
      _3781 = _sunDirection.y;
      _3782 = _sunDirection.z;
      _3797 = _3780;
      _3798 = _3781;
      _3799 = _3782;
      _3800 = _precomputedAmbient7.y;
    } else {
      _3771 = (_sunDirection.y > _moonDirection.y);
      _3776 = select(_3771, _sunDirection.z, _moonDirection.z);
      _3777 = select(_3771, _sunDirection.x, _moonDirection.x);
      _3778 = select(_3771, _sunDirection.y, _moonDirection.y);
      if (_3771) {
        _3780 = _3777;
        _3781 = _3778;
        _3782 = _3776;
        _3797 = _3780;
        _3798 = _3781;
        _3799 = _3782;
        _3800 = _precomputedAmbient7.y;
      } else {
        _3797 = _3777;
        _3798 = _3778;
        _3799 = _3776;
        _3800 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
      }
    }
    _3803 = _viewPos.x + _396;
    _3805 = _viewPos.y + _405;
    _3808 = _3805 + _earthRadius;
    _3810 = _viewPos.z + _414;
    _3816 = sqrt(((_3810 * _3810) + (_3803 * _3803)) + (_3808 * _3808));
    _3820 = dot(float3((_3803 / _3816), (_3808 / _3816), (_3810 / _3816)), float3(_3797, _3798, _3799));
    _3827 = min(max(((_3816 - _earthRadius) / _atmosphereThickness), 16.0f), (_atmosphereThickness + -16.0f));
    _3828 = max(_3827, 0.0f);
    _3835 = (-0.0f - sqrt((_3828 + (_earthRadius * 2.0f)) * _3828)) / (_3828 + _earthRadius);
    if (_3820 > _3835) {
      _3858 = ((exp2(log2(saturate((_3820 - _3835) / (1.0f - _3835))) * 0.2f) * 0.4921875f) + 0.50390625f);
    } else {
      _3858 = ((exp2(log2(saturate((_3835 - _3820) / (_3835 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
    }
    // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
    _3870 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_3827 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f), _3858), 0.0f);
    _3879 = ((_3870.y * 2e-05f) * _mieAerosolDensity) * (_mieAerosolAbsorption + 1.0f);  // [sem: _3__36__0__0__g_texNetDensity_sampleLod_derived]
    _3893 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.0556001e-06f)) * _3870.x) + _3879) * -1.442695f);
    _3903 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 4.9788005e-06f)) * _3870.x) + _3879) * -1.442695f);
    _3912 = exp2(((((((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.1360002e-07f)) * _3870.x) + _3879) * -1.442695f);
    _3913 = sqrt(_2456);
    _3921 = (_cloudAltitude - (max(((_3913 * _3913) + -400000.0f), 0.0f) * 1e-06f)) - _viewPos.y;
    _3933 = (_cloudThickness * (0.5f - (((float)((int)((int)((int)(uint)((int)(_3798 > 0.0f))) - (int)((int)(uint)((int)(_3798 < 0.0f)))))) * 0.5f))) + _3921;
    if (_405 < _3921) {
      _3936 = dot(float3(0.0f, 1.0f, 0.0f), float3(_3797, _3798, _3799));
      _3942 = select((abs(_3936) < 1e-08f), 1e+08f, ((_3933 - dot(float3(0.0f, 1.0f, 0.0f), float3(_396, _405, _414))) / _3936));
      _3948 = ((_3942 * _3799) + _414);
      _3949 = _3933;
      _3950 = ((_3942 * _3797) + _396);
    } else {
      _3948 = _414;
      _3949 = _405;
      _3950 = _396;
    }
    _3953 = saturate(abs(_3798) * 4.0f);  // [sem: expr_sat]
    _3972 = (_3953 * _3953) * exp2(((_distanceScale * -1.442695f) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_3950 * 5e-05f) + 0.5f), ((_3949 - _3921) / _cloudThickness), ((_3948 * 5e-05f) + 0.5f)), 0.0f)).x)) * (_cloudScatteringCoefficient / _distanceScale));
    _3979 = ((1.0f - _3972) * saturate(((_405 - _cloudThickness) - _3921) * 0.1f)) + _3972;
    _3985 = _3979 * (((_3903 * 0.33951f) + (_3893 * 0.61312f)) + (_3912 * 0.04737f));
    _3991 = _3979 * (((_3903 * 0.91636f) + (_3893 * 0.0702f)) + (_3912 * 0.01345f));
    _3997 = _3979 * (((_3903 * 0.10958f) + (_3893 * 0.02062f)) + (_3912 * 0.8698f));
    _4003 = (((_3985 * 0.61312f) + (_3991 * 0.33951f)) + (_3997 * 0.04737f)) * _3800;
    _4009 = (((_3985 * 0.0702f) + (_3991 * 0.91636f)) + (_3997 * 0.01345f)) * _3800;
    _4015 = (((_3985 * 0.02062f) + (_3991 * 0.10958f)) + (_3997 * 0.8698f)) * _3800;
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
          float3(_4003, _4009, _4015), DawnDuskFactor(_sunDirection.y));
      _4003 = _rndx_dd_direct.x;
      _4009 = _rndx_dd_direct.y;
      _4015 = _rndx_dd_direct.z;
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
      bool _rndx_purkinje_is_moon = !_3764 && (_sunDirection.y <= _moonDirection.y);
      float3 _rndx_purkinje_light = ApplyPurkinjeShift(
          float3(_4003, _4009, _4015), _sunDirection.y, _rndx_purkinje_is_moon);
      _4003 = _rndx_purkinje_light.x;
      _4009 = _rndx_purkinje_light.y;
      _4015 = _rndx_purkinje_light.z;
    }
    // RenoDX: <<< [Patch: PurkinjeDirectLight]
    _4016 = float(_1403.x);  // [sem: _3__36__0__0__g_sceneAO_load_derived]
    _4017 = float(_3724.x);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    _4018 = float(_3724.y);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    _4019 = float(_3724.z);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    _4020 = float(_3721);
    _4021 = float(_3720);
    _4022 = float(_3719);
    if (!_2435) {
      _4029 = ((int)(uint)((int)(_185 && ((uint)((int)(_1387) + (int)(-105)) < (uint)2))));
    } else {
      _4029 = 1;
    }
    _4031 = float(max(0.010002136h, _3718));
    _4032 = float(_3717);
    _4033 = (_1387 == 107);
    if (!(((uint)((int)(_1387) + (int)(-11)) < (uint)9) || _1427)) {
      _4041 = (_4033 || (_4029 != 0));
    } else {
      _4041 = true;
    }
    if ((_1387 == 28) || ((_1387 == 105) || (_1470 == 26))) {
      _4056 = ((int)(uint)(_4033));
      _4057 = 1;
    } else {
      _4056 = select((_1387 == 19), 1, ((int)(uint)(_4033)));
      _4057 = ((int)(uint)((int)(_1387 == 106)));
    }
    _4058 = float(_3761);
    _4059 = float(_3760);
    _4060 = float(_3759);
    _4062 = __3__36__0__0__g_sceneDecalMask.Load(int3(_99, _104, 0));  // [sem: _3__36__0__0__g_sceneDecalMask_load]
    if (_1387 == 97) {
      _4076 = 0.0f;
      _4077 = 0.0f;
      _4078 = 0.0f;
      _4079 = 0.0f;
      _4080 = ((int)((uint)((uint)((int)(min16uint)((int)((int)(_4062.x) & 2)))) >> 1) + (int)(97));
      _4081 = (((float)((uint16_t)((int16_t)((uint16_t)((int16_t)(_4062.x)) >> 2)))) * 0.015873017f);
    } else {
      _4076 = _1383;
      _4077 = _1382;
      _4078 = _1381;
      _4079 = _1380;
      _4080 = _1387;
      _4081 = select(_4041, _4032, 0.0f);
    }
    _4083 = float(saturate(_204));
    _4084 = _4083 * _4083;
    _4085 = _4084 * _4084;
    _4086 = _4085 * _4085;
    _4102 = ((_4086 * _4086) * select(((_1387 == 29) || (((int)(_4057) | (int)(_4056)) != 0)), 0.0f, 1.0f)) * (((float4)(__3__36__0__0__g_puddleMask.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((_bufferSizeAndInvSize.z * _107), (_bufferSizeAndInvSize.w * _108)), 0.0f))).y);
    _4104 = _4058 - (_4102 * _4058);
    _4107 = (_4102 * (1.0f - _4059)) + _4059;
    _4109 = _4060 - (_4102 * _4060);
    _4111 = rsqrt(dot(float3(_4104, _4107, _4109), float3(_4104, _4107, _4109)));  // [sem: invLength]
    _4112 = _4104 * _4111;
    _4113 = _4107 * _4111;
    _4114 = _4109 * _4111;
    _4115 = (_4080 == 37);
    _4116 = (_4080 == 55);
    _4117 = _4115 || _4116;
    _4119 = select((_4041 || _4117), 0.0f, _4032);
    _4120 = (_4080 == 52);
    if (_4120) {
      _4127 = saturate(((_4021 + _4022) + _4020) * 1.2f);  // [sem: expr_sat]
    } else {
      _4127 = 1.0f;  // [sem: expr_sat]
    }
    _4133 = (0.7f / min(max(max(max(_4020, _4021), _4022), 0.01f), 0.7f)) * _4127;
    _4137 = (((_4133 * _4020) + -0.04f) * _4119) + 0.04f;
    _4141 = (((_4133 * _4021) + -0.04f) * _4119) + 0.04f;
    _4145 = (((_4133 * _4022) + -0.04f) * _4119) + 0.04f;
    _4146 = float(_3718);
    _4147 = _4080 & -2;
    _4148 = (_4147 == 64);
    _4151 = ((((int)(uint)(_4148)) & _3154) == 0);
    if (_4151) {
      _4164 = saturate(exp2((_4146 * _4146) * (_124 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _4164 = select((_cavityParams.z > 0.0f), select(_186, 0.0f, _443), 1.0f);  // [sem: expr_sat]
    }
    _4165 = select(_3174, 1.0f, _4164);
    if (_4148) {
      _4171 = (_4165 * _4145);
      _4172 = (_4165 * _4141);
      _4173 = (_4165 * _4137);
    } else {
      _4171 = _4145;
      _4172 = _4141;
      _4173 = _4137;
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
    float _rndx_spec_rough = _4031;
    if (SPECULAR_AA > 0.0f) {
      _rndx_spec_rough = NDFFilterRoughnessCS(float3(_4112, _4113, _4114), _4031, SPECULAR_AA);
    }
    _4174 = _rndx_spec_rough * _rndx_spec_rough;
    // RenoDX: <<< [Patch: MaterialSpecularAA]
    _4175 = _4174 * _4174;
    _4177 = ((uint)((int)((uint)((uint)(_4080)) + (uint)(-97))) < (uint)2);
    _4179 = select(_4177, 0.5f, (_4031 * 0.60009766f));
    _4180 = _4179 * _4179;
    _4181 = _4180 * _4180;
    _4182 = (_4080 == 98);
    if (!(_4182 || (_4147 == 96))) {
      if ((uint)((int)(_4080) + (int)(-105)) < (uint)2) {
        _4206 = 0;
        _4207 = ((int)(uint)(_185));
      } else {
        if ((uint)_4080 > (uint)11) {
          _4206 = ((int)(uint)((int)(((uint)_4080 < (uint)21) || (_4080 == 107))));
          _4207 = 0;
        } else {
          if (!(_4080 == 6)) {
            _4206 = ((int)(uint)((int)(_4080 == 7)));
            _4207 = 0;
          } else {
            _4206 = 1;
            _4207 = 0;
          }
        }
      }
    } else {
      _4206 = ((int)(uint)((int)(_4080 == 7)));
      _4207 = 1;
    }
    _4212 = exp2(log2(float(_3724.w)) * 2.2f) * 1000.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    if ((_3764) || ((!(_3764)) && (_sunDirection.y > _moonDirection.y))) {
      _4224 = _sunDirection.z;
      _4225 = _sunDirection.y;
      _4226 = _sunDirection.x;
    } else {
      _4224 = _moonDirection.z;
      _4225 = _moonDirection.y;
      _4226 = _moonDirection.x;
    }
    _4229 = _lightingParams.x * _4003;
    _4230 = _lightingParams.x * _4009;
    _4231 = _lightingParams.x * _4015;
    _4232 = _4226 - _417;
    _4233 = _4225 - _418;
    _4234 = _4224 - _419;
    _4236 = rsqrt(dot(float3(_4232, _4233, _4234), float3(_4232, _4233, _4234)));  // [sem: invLength]
    _4237 = _4236 * _4232;
    _4238 = _4236 * _4233;
    _4239 = _4236 * _4234;
    _4240 = dot(float3(_4058, _4059, _4060), float3(_4226, _4225, _4224));
    _4241 = dot(float3(_4112, _4113, _4114), float3(_4226, _4225, _4224));
    _4243 = saturate(dot(float3(_4058, _4059, _4060), float3(_1474, _1475, _1476)));  // [sem: expr_sat]
    _4245 = saturate(dot(float3(_4112, _4113, _4114), float3(_4237, _4238, _4239)));  // [sem: expr_sat]
    _4246 = dot(float3(_1474, _1475, _1476), float3(_4237, _4238, _4239));
    _4248 = saturate(dot(float3(_4226, _4225, _4224), float3(_4237, _4238, _4239)));  // [sem: expr_sat]
    _4249 = (_4147 == 66);
    _4250 = (_4080 == 53);
    _4251 = _4250 || _4249;
    if (_4251) {
      if (_4250) {
        _4267 = (((asfloat(_globalLightParams.z) * _4031) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_181)));
      } else {
        _4267 = _bevelParams.y;
      }
      _4269 = (_2459 * 2.0f) + 1.0f;
      _4271 = (_1392 * 7.0f) + 1.0f;
      // [sem: _3__36__0__0__g_blueNoise_sampleLod]
      _4291 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2((((dot(float3(_396, _405, _414), float3(((_1388 * _233) - (_1389 * _234)), ((_1390 * _234) - (_1388 * _232)), ((_1389 * _232) - (_1390 * _233)))) * 2.0f) / _4269) * _4271), (((dot(float3(_396, _405, _414), float3(_1390, _1389, _1388)) * 0.5f) / _4269) * _4271)), 0.0f);
      _4295 = _1392 * 0.5f;
      _4296 = _4291.x * 2.0f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
      _4297 = _4291.y * 2.0f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
      _4298 = _4291.z * 2.0f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
      _4299 = dot(float3(_1390, _1389, _1388), float3(_4226, _4225, _4224));
      _4300 = dot(float3(_1390, _1389, _1388), float3(_1474, _1475, _1476));
      _4306 = cos(abs(asin(_4300) - asin(_4299)) * 0.5f);
      _4308 = _4226 - (_4299 * _1390);
      _4310 = _4225 - (_4299 * _1389);
      _4312 = _4224 - (_4299 * _1388);
      _4314 = _1474 - (_4300 * _1390);
      _4316 = _1475 - (_4300 * _1389);
      _4318 = _1476 - (_4300 * _1388);
      _4325 = dot(float3(_4308, _4310, _4312), float3(_4314, _4316, _4318)) * rsqrt((dot(float3(_4308, _4310, _4312), float3(_4308, _4310, _4312)) * dot(float3(_4314, _4316, _4318), float3(_4314, _4316, _4318))) + 0.0001f);
      _4329 = sqrt(saturate((_4325 * 0.5f) + 0.5f));
      _4332 = min(max(max(0.05f, _4031), 0.09803922f), 1.0f);
      _4333 = _4332 * _4332;
      _4334 = _4333 * 0.5f;
      _4335 = _4333 * 2.0f;
      _4336 = _4300 + _4299;
      _4338 = _4336 + (_4267 * 2.0f);
      _4340 = (_4329 * 1.4142135f) * _4333;
      _4346 = 1.0f - sqrt(saturate((dot(float3(_1474, _1475, _1476), float3(_4226, _4225, _4224)) * 0.5f) + 0.5f));
      _4347 = _4346 * _4346;
      _4348 = _4336 - _4267;
      _4352 = 1.0f / ((1.19f / _4306) + (_4306 * 0.36f));
      _4357 = ((_4352 * (0.6f - (_4325 * 0.8f))) + 1.0f) * _4329;
      _4363 = 1.0f - (sqrt(saturate(1.0f - (_4357 * _4357))) * _4306);
      _4364 = _4363 * _4363;
      _4368 = 0.9534794f - ((_4364 * _4364) * (_4363 * 0.9534794f));
      _4369 = _4357 * _4352;
      _4374 = (sqrt(1.0f - (_4369 * _4369)) * 0.5f) / _4306;
      _4375 = log2(_4020);
      _4376 = log2(_4021);
      _4377 = log2(_4022);
      _4391 = ((_4368 * _4368) * (exp2((((_4348 * _4348) * -0.5f) / (_4334 * _4334)) * 1.442695f) / (_4333 * 1.2533141f))) * exp2(-5.741926f - (_4325 * 5.265837f));
      _4393 = _4336 - (_4267 * 4.0f);
      _4395 = 1.0f - (_4306 * 0.5f);
      _4396 = _4395 * _4395;
      _4400 = (_4396 * _4396) * (0.9534794f - (_4306 * 0.4767397f));
      _4401 = 0.9534794f - _4400;
      _4402 = 0.8f / _4306;
      _4418 = (((_4401 * _4401) * (_4400 + 0.046520565f)) * (exp2((((_4393 * _4393) * -0.5f) / (_4335 * _4335)) * 1.442695f) / (_4333 * 5.0132565f))) * exp2((_4325 * 24.525816f) + -24.208424f);
      _4419 = saturate(_4241);  // [sem: _4241_sat]
      _4435 = (((_4329 * 0.25f) * (((_4347 * _4347) * (_4346 * 0.9534794f)) + 0.046520565f)) * _4419) * (exp2((((_4338 * _4338) * -0.5f) / (_4340 * _4340)) * 1.442695f) / (_4340 * 2.5066283f));
      _4436 = -0.0f - _4419;
      _4439 = saturate((_4241 + 1.0f) * 0.25f);  // [sem: expr_sat]
      _4441 = max(0.001f, dot(float3(_4020, _4021, _4022), float3(0.3f, 0.59f, 0.11f)));
      _4447 = ((((1.0f - _4439) - abs(_4241)) * 0.33f) + _4439) * 0.07957747f;
      _4454 = sqrt(_4020);
      _4455 = (_4447 * exp2(log2(_4020 / _4441) * (1.0f - _4017))) * _4454;
      _4462 = sqrt(_4021);
      _4463 = (exp2(log2(_4021 / _4441) * (1.0f - _4018)) * _4447) * _4462;
      _4470 = sqrt(_4022);
      _4471 = (exp2(log2(_4022 / _4441) * (1.0f - _4019)) * _4447) * _4470;
      _4483 = min(2048.0f, (-0.0f - min(0.0f, min(0.0f, (((exp2(_4375 * _4374) * _4391) + (exp2(_4402 * _4375) * _4418)) * _4436)))));
      _4495 = min(2048.0f, (-0.0f - min(0.0f, min(0.0f, (((exp2(_4376 * _4374) * _4391) + (exp2(_4402 * _4376) * _4418)) * _4436)))));
      _4507 = min(2048.0f, (-0.0f - min(0.0f, min(0.0f, (((exp2(_4377 * _4374) * _4391) + (exp2(_4402 * _4377) * _4418)) * _4436)))));
      _4516 = -0.0f - min(0.0f, (min(0.0f, (-0.0f - ((lerp(_4296, 1.0f, _4295)) * _4435))) * _4017));
      _4525 = -0.0f - min(0.0f, (min(0.0f, (-0.0f - ((lerp(_4297, 1.0f, _4295)) * _4435))) * _4018));
      _4534 = -0.0f - min(0.0f, (min(0.0f, (-0.0f - ((lerp(_4298, 1.0f, _4295)) * _4435))) * _4019));
      if (!_4249) {
        if (!_4250) {
          _4537 = (_4080 == 33);
          _4538 = (_4080 == 54);
          if (_4537 || _4538) {
            _4550 = (saturate(_4240) * 0.31830987f) * (((saturate(1.0f - _effectiveMetallicForVelvet) + -1.0f) * _4076) + 1.0f);
            _4552 = max(dot(float3(_4020, _4021, _4022), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
            _4563 = (saturate(1.0f - (pow(_4243, 4.0f))) * (_4076 - _4079)) + _4079;
            _4566 = ((_4563 * (_4462 - _4552)) + _4552) * _4078;
            _4569 = saturate(1.0f - saturate(_4246));  // [sem: expr_sat]
            _4570 = _4569 * _4569;
            _4572 = (_4570 * _4570) * _4569;
            _4575 = _4572 * saturate(_4566 * 50.0f);
            _4576 = 1.0f - _4572;
            _4577 = _4576 * _4078;
            _4581 = (_4577 * ((_4563 * (_4454 - _4552)) + _4552)) + _4575;
            _4583 = (_4576 * _4566) + _4575;
            _4587 = (_4577 * ((_4563 * (_4470 - _4552)) + _4552)) + _4575;
            _4588 = min(_4245, 0.9999f);
            _4589 = _4588 * _4588;
            _4590 = 1.0f - _4589;
            _4602 = (((exp2(((-0.0f - _4589) / (_4590 * _4175)) * 1.442695f) * 4.0f) / (_4590 * _4590)) + 1.0f) / ((_4175 * 12.566371f) + 3.1415927f);
            _4606 = ((_4243 + _4241) - (_4243 * _4241)) * 4.0f;
            _4608 = (_4581 * _4602) / _4606;
            _4610 = (_4583 * _4602) / _4606;
            _4612 = (_4587 * _4602) / _4606;
            _4613 = 1.0f - _4174;
            _4617 = (((_4245 * _4175) - _4245) * _4245) + 1.0f;
            _4629 = (0.5f / ((((_4243 * _4613) + _4174) * _4240) + (_4243 * ((_4240 * _4613) + _4174)))) * (_4175 / ((_4617 * _4617) * 3.1415927f));
            _4631 = (_4077 * 1.5f) + 2.5f;
            _4632 = _4631 * _4631;
            _4642 = (max(0.0f, (0.3f - _4240)) * 0.25f) * ((exp2(_4632 * -0.48089835f) * 3.0f) + exp2(_4632 * -1.442695f));
            _4658 = (((1.0f - _4076) * 0.4774648f) * saturate(_4077)) * saturate(exp2(log2(saturate(1.0f - abs(_4240))) * 3.0f) * (pow(_4245, 4.0f)));
            if (!_4537) {
              if (_4538) {
                if (_4117) {
                  _4690 = dot(float3(_1474, _1475, _1476), float3(_4112, _4113, _4114)) * 2.0f;
                  _4692 = _1474 - (_4690 * _4112);
                  _4694 = _1475 - (_4690 * _4113);
                  _4696 = _1476 - (_4690 * _4114);
                  _4697 = _4226 - _4692;
                  _4698 = _4225 - _4694;
                  _4699 = _4224 - _4696;
                  _4701 = rsqrt(dot(float3(_4697, _4698, _4699), float3(_4697, _4698, _4699)));  // [sem: invLength]
                  _4702 = _4697 * _4701;
                  _4703 = _4698 * _4701;
                  _4704 = _4699 * _4701;
                  _4766 = saturate(dot(float3(_4112, _4113, _4114), float3(_4702, _4703, _4704)));  // [sem: expr_sat]
                  _4767 = dot(float3((-0.0f - _4692), (-0.0f - _4694), (-0.0f - _4696)), float3(_4702, _4703, _4704));
                } else {
                  _4766 = _4245;  // [sem: expr_sat]
                  _4767 = _4246;
                }
              } else {
                _4712 = (_4080 == 65);
                if (_4148) {
                  if (!(_4712 || (!_4117))) {
                    _4718 = dot(float3(_1474, _1475, _1476), float3(_4112, _4113, _4114)) * 2.0f;
                    _4720 = _1474 - (_4718 * _4112);
                    _4722 = _1475 - (_4718 * _4113);
                    _4724 = _1476 - (_4718 * _4114);
                    _4725 = _4226 - _4720;
                    _4726 = _4225 - _4722;
                    _4727 = _4224 - _4724;
                    _4729 = rsqrt(dot(float3(_4725, _4726, _4727), float3(_4725, _4726, _4727)));  // [sem: invLength]
                    _4730 = _4725 * _4729;
                    _4731 = _4726 * _4729;
                    _4732 = _4727 * _4729;
                    _4766 = saturate(dot(float3(_4112, _4113, _4114), float3(_4730, _4731, _4732)));  // [sem: expr_sat]
                    _4767 = dot(float3((-0.0f - _4720), (-0.0f - _4722), (-0.0f - _4724)), float3(_4730, _4731, _4732));
                  } else {
                    _4766 = _4245;  // [sem: expr_sat]
                    _4767 = _4246;
                  }
                } else {
                  if (!(_4712 || (!_4117))) {
                    _4744 = dot(float3(_1474, _1475, _1476), float3(_4112, _4113, _4114)) * 2.0f;
                    _4746 = _1474 - (_4744 * _4112);
                    _4748 = _1475 - (_4744 * _4113);
                    _4750 = _1476 - (_4744 * _4114);
                    _4751 = _4226 - _4746;
                    _4752 = _4225 - _4748;
                    _4753 = _4224 - _4750;
                    _4755 = rsqrt(dot(float3(_4751, _4752, _4753), float3(_4751, _4752, _4753)));  // [sem: invLength]
                    _4756 = _4751 * _4755;
                    _4757 = _4752 * _4755;
                    _4758 = _4753 * _4755;
                    _4766 = saturate(dot(float3(_4112, _4113, _4114), float3(_4756, _4757, _4758)));  // [sem: expr_sat]
                    _4767 = dot(float3((-0.0f - _4746), (-0.0f - _4748), (-0.0f - _4750)), float3(_4756, _4757, _4758));
                  } else {
                    _4766 = _4245;  // [sem: expr_sat]
                    _4767 = _4246;
                  }
                }
              }
            } else {
              _4766 = _4245;  // [sem: expr_sat]
              _4767 = _4246;
            }
            _5707 = ((((_4470 * _4019) * _4642) + _4550) * _4019);
            _5708 = ((((_4462 * _4018) * _4642) + _4550) * _4018);
            _5709 = ((((_4454 * _4017) * _4642) + _4550) * _4017);
            _5710 = (((_4419 * _4019) * (((max((_4629 * _4587), 0.0f) - _4612) * _4079) + _4612)) + (_4658 * _4470));
            _5711 = (((_4419 * _4018) * (((max((_4629 * _4583), 0.0f) - _4610) * _4079) + _4610)) + (_4658 * _4462));
            _5712 = (((_4419 * _4017) * (((max((_4629 * _4581), 0.0f) - _4608) * _4079) + _4608)) + (_4658 * _4454));
            _5713 = 0.0f;
            _5714 = 0.0f;
            _5715 = 0.0f;
            _5716 = _4766;
            _5717 = _4767;
          } else {
            if ((_4240 > 0.0f) || (_4241 > 0.0f)) {
              _4785 = saturate(_4240);  // [sem: _4240_sat]
              _4786 = 1.0f - _4175;
              _4787 = 1.0f - _4248;
              _4788 = _4787 * _4787;
              _4791 = ((_4788 * _4788) * _4787) + _4248;
              _4792 = 1.0f - _4785;
              _4793 = _4792 * _4792;
              _4794 = 1.0f - _4243;
              _4795 = _4794 * _4794;
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
                float _eon_LdotV = dot(float3(_4226, _4225, _4224), float3(_1474, _1475, _1476));
                _4826 = _4785 * EON_DiffuseScalar(_4785, _4243, _eon_LdotV, _4031);
              } else {
                _4826 = (_4785 * 0.31830987f) * ((((_4248 * ((((_4786 * 34.5f) + -59.0f) * _4786) + 24.5f)) * exp2(-0.0f - (max(((_4786 * 73.2f) + -21.2f), 8.9f) * sqrt(_4245)))) + _4791) + ((((1.0f - ((_4793 * _4793) * (_4792 * 0.75f))) * (1.0f - ((_4795 * _4795) * (_4794 * 0.75f)))) - _4791) * saturate((_4786 * 2.2f) + -0.5f)));
              }
              // RenoDX: <<< [Patch: MaterialDiffuseBRDF]
              _4829 = saturate(1.0f - saturate(_4246));  // [sem: expr_sat]
              _4830 = _4829 * _4829;
              _4832 = (_4830 * _4830) * _4829;
              _4835 = _4832 * saturate(_4172 * 50.0f);
              _4836 = 1.0f - _4832;
              _4838 = (_4836 * _4173) + _4835;
              _4840 = (_4836 * _4172) + _4835;
              _4842 = (_4836 * _4171) + _4835;
              if (!(_4080 == 29)) {
                _4845 = 1.0f - _4174;
                _4849 = (((_4245 * _4175) - _4245) * _4245) + 1.0f;
                _4861 = (0.5f / ((((_4243 * _4845) + _4174) * _4241) + (_4243 * ((_4241 * _4845) + _4174)))) * (_4175 / ((_4849 * _4849) * 3.1415927f));
                _4872 = (max((_4861 * _4842), 0.0f) * _4419);
                _4873 = (max((_4861 * _4840), 0.0f) * _4419);
                _4874 = (max((_4861 * _4838), 0.0f) * _4419);
              } else {
                _4872 = 0.0f;
                _4873 = 0.0f;
                _4874 = 0.0f;
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
              if (DIFFRACTION > 0.0f && _4119 > 0.0f) {
                float3 _rndx_dShift = DiffractionShiftAndSpeckleCS(
                    _4245, _4243, _rndx_spec_rough,
                    float2(_99, _104), _124,
                    float3(_4237, _4238, _4239),
                    float3(_4112, _4113, _4114),
                    float3(_4020, _4021, _4022));
                float3 _rndx_dMod = lerp(1.0f, _rndx_dShift, DIFFRACTION * _4119);
                _4874 *= _rndx_dMod.x;
                _4873 *= _rndx_dMod.y;
                _4872 *= _rndx_dMod.z;
              }
              if (SMOOTH_TERMINATOR > 0.0f) {
                float _rndx_c2 = CallistoSmoothTerminator(_4785, _4248, _4245, SMOOTH_TERMINATOR, 0.5f);
                _4826 *= _rndx_c2;
                _4874 *= _rndx_c2;
                _4873 *= _rndx_c2;
                _4872 *= _rndx_c2;
              }
              if (FOLIAGE_TRANSMISSION > 0.0f && (((uint)(_120 - 12) < 7u))) {
                FoliageTransmissionResult _rndx_ftResult = FoliageTransmission(
                    float3(_1474, _1475, _1476),
                    float3(_4226, _4225, _4224),
                    float3(_4058, _4059, _4060),
                    _4240,
                    float3(_4020, _4021, _4022),
                    float3(_3985, _3991, _3997),
                    float3(_4229, _4230, _4231),
                    FOLIAGE_TRANSMISSION_THICKNESS);
                _rndx_foliageTransR = _rndx_ftResult.transmission.x;
                _rndx_foliageTransG = _rndx_ftResult.transmission.y;
                _rndx_foliageTransB = _rndx_ftResult.transmission.z;
                if (_rndx_ftResult.diffuseScale > 0.0f) {
                  _4826 *= _rndx_ftResult.diffuseScale;
                } else {
                  float _rndx_wrap = 0.25f * (1.0f - FOLIAGE_TRANSMISSION_THICKNESS);
                  _4826 = max(0.0f, (_4240 + _rndx_wrap) / (1.0f + _rndx_wrap)) * 0.31830987334251404f * 0.75f;
                }
              }
              // RenoDX: <<< [Patch: MaterialDiffraction]
              _4875 = (_4080 == 65);
              if (_4148) {
                if (_4875) {
                  _4880 = max(1e-06f, _exposure2.x);
                  _4891 = ((_4785 * 50.265484f) * exp2(log2(saturate(dot(float3(_4112, _4113, _4114), float3(_1474, _1475, _1476)))) * 16.0f)) / (((_4880 * _4880) * 1e+06f) + 1.0f);
                  _5094 = _4872;
                  _5095 = _4873;
                  _5096 = _4874;
                  _5097 = _4245;
                  _5098 = _4246;
                  _5099 = ((((_4891 * _4022) - _4826) * _4081) + _4826);
                  _5100 = ((((_4891 * _4021) - _4826) * _4081) + _4826);
                  _5101 = ((((_4891 * _4020) - _4826) * _4081) + _4826);
                } else {
                  _4905 = 1.0f - _4180;
                  _4909 = (((_4245 * _4181) - _4245) * _4245) + 1.0f;
                  _4921 = (0.5f / ((((_4243 * _4905) + _4180) * _4241) + (_4243 * ((_4241 * _4905) + _4180)))) * (_4181 / ((_4909 * _4909) * 3.1415927f));
                  _4922 = _4419 * 0.39990234f;
                  _4927 = (max((_4921 * _4838), 0.0f) * _4922) + (_4874 * 0.60009766f);
                  _4932 = (max((_4921 * _4840), 0.0f) * _4922) + (_4873 * 0.60009766f);
                  _4937 = (max((_4921 * _4842), 0.0f) * _4922) + (_4872 * 0.60009766f);
                  if (_4117) {
                    _4940 = dot(float3(_1474, _1475, _1476), float3(_4112, _4113, _4114)) * 2.0f;
                    _4942 = _1474 - (_4940 * _4112);
                    _4944 = _1475 - (_4940 * _4113);
                    _4946 = _1476 - (_4940 * _4114);
                    _4947 = _4226 - _4942;
                    _4948 = _4225 - _4944;
                    _4949 = _4224 - _4946;
                    _4951 = rsqrt(dot(float3(_4947, _4948, _4949), float3(_4947, _4948, _4949)));  // [sem: invLength]
                    _4952 = _4947 * _4951;
                    _4953 = _4948 * _4951;
                    _4954 = _4949 * _4951;
                    _4955 = -0.0f - _4942;
                    _4956 = -0.0f - _4944;
                    _4957 = -0.0f - _4946;
                    _4959 = saturate(dot(float3(_4058, _4059, _4060), float3(_4955, _4956, _4957)));  // [sem: expr_sat]
                    _4961 = saturate(dot(float3(_4112, _4113, _4114), float3(_4952, _4953, _4954)));  // [sem: expr_sat]
                    _4964 = 1.0f - ((_4961 * _4961) * 0.9f);
                    _4975 = (0.5f / ((((_4959 * 0.9f) + 0.1f) * _4241) + (_4959 * ((_4241 * 0.9f) + 0.1f)))) * (0.03183099f / (_4964 * _4964));
                    _5094 = (((float(half(max((_4975 * _4022), 0.0f) * _4419)) - _4937) * 0.875f) + _4937);
                    _5095 = (((float(half(max((_4975 * _4021), 0.0f) * _4419)) - _4932) * 0.875f) + _4932);
                    _5096 = (((float(half(max((_4975 * _4020), 0.0f) * _4419)) - _4927) * 0.875f) + _4927);
                    _5097 = _4961;
                    _5098 = dot(float3(_4955, _4956, _4957), float3(_4952, _4953, _4954));
                    _5099 = _4826;
                    _5100 = _4826;
                    _5101 = _4826;
                  } else {
                    _5094 = _4937;
                    _5095 = _4932;
                    _5096 = _4927;
                    _5097 = _4245;
                    _5098 = _4246;
                    _5099 = _4826;
                    _5100 = _4826;
                    _5101 = _4826;
                  }
                }
              } else {
                if (_4875) {
                  _5005 = max(1e-06f, _exposure2.x);
                  _5016 = ((_4785 * 50.265484f) * exp2(log2(saturate(dot(float3(_4112, _4113, _4114), float3(_1474, _1475, _1476)))) * 16.0f)) / (((_5005 * _5005) * 1e+06f) + 1.0f);
                  _5094 = _4872;
                  _5095 = _4873;
                  _5096 = _4874;
                  _5097 = _4245;
                  _5098 = _4246;
                  _5099 = ((((_5016 * _4022) - _4826) * _4081) + _4826);
                  _5100 = ((((_5016 * _4021) - _4826) * _4081) + _4826);
                  _5101 = ((((_5016 * _4020) - _4826) * _4081) + _4826);
                } else {
                  if (_4117) {
                    _5032 = dot(float3(_1474, _1475, _1476), float3(_4112, _4113, _4114)) * 2.0f;
                    _5034 = _1474 - (_5032 * _4112);
                    _5036 = _1475 - (_5032 * _4113);
                    _5038 = _1476 - (_5032 * _4114);
                    _5039 = _4226 - _5034;
                    _5040 = _4225 - _5036;
                    _5041 = _4224 - _5038;
                    _5043 = rsqrt(dot(float3(_5039, _5040, _5041), float3(_5039, _5040, _5041)));  // [sem: invLength]
                    _5044 = _5039 * _5043;
                    _5045 = _5040 * _5043;
                    _5046 = _5041 * _5043;
                    _5047 = -0.0f - _5034;
                    _5048 = -0.0f - _5036;
                    _5049 = -0.0f - _5038;
                    _5051 = saturate(dot(float3(_4058, _4059, _4060), float3(_5047, _5048, _5049)));  // [sem: expr_sat]
                    _5053 = saturate(dot(float3(_4112, _4113, _4114), float3(_5044, _5045, _5046)));  // [sem: expr_sat]
                    _5056 = 1.0f - ((_5053 * _5053) * 0.9f);
                    _5067 = (0.5f / ((((_5051 * 0.9f) + 0.1f) * _4241) + (_5051 * ((_4241 * 0.9f) + 0.1f)))) * (0.03183099f / (_5056 * _5056));
                    _5094 = (((float(half(max((_5067 * _4022), 0.0f) * _4419)) - _4872) * 0.875f) + _4872);
                    _5095 = (((float(half(max((_5067 * _4021), 0.0f) * _4419)) - _4873) * 0.875f) + _4873);
                    _5096 = (((float(half(max((_5067 * _4020), 0.0f) * _4419)) - _4874) * 0.875f) + _4874);
                    _5097 = _5053;
                    _5098 = dot(float3(_5047, _5048, _5049), float3(_5044, _5045, _5046));
                    _5099 = _4826;
                    _5100 = _4826;
                    _5101 = _4826;
                  } else {
                    _5094 = _4872;
                    _5095 = _4873;
                    _5096 = _4874;
                    _5097 = _4245;
                    _5098 = _4246;
                    _5099 = _4826;
                    _5100 = _4826;
                    _5101 = _4826;
                  }
                }
              }
              _5707 = (-0.0f - (_4019 * min(-0.0f, (-0.0f - _5099))));
              _5708 = (-0.0f - (_4018 * min(-0.0f, (-0.0f - _5100))));
              _5709 = (-0.0f - (_4017 * min(-0.0f, (-0.0f - _5101))));
              _5710 = (_5094 * _4019);
              _5711 = (_5095 * _4018);
              _5712 = (_5096 * _4017);
              _5713 = _4507;
              _5714 = _4495;
              _5715 = _4483;
              _5716 = _5097;
              _5717 = _5098;
            } else {
              _5707 = _4471;
              _5708 = _4463;
              _5709 = _4455;
              _5710 = _4534;
              _5711 = _4525;
              _5712 = _4516;
              _5713 = _4507;
              _5714 = _4495;
              _5715 = _4483;
              _5716 = _4245;
              _5717 = _4246;
            }
          }
        } else {
          _5707 = _4471;
          _5708 = _4463;
          _5709 = _4455;
          _5710 = _4534;
          _5711 = _4525;
          _5712 = _4516;
          _5713 = _4507;
          _5714 = _4495;
          _5715 = _4483;
          _5716 = _4245;
          _5717 = _4246;
        }
      } else {
        _5707 = _4471;
        _5708 = _4463;
        _5709 = _4455;
        _5710 = _4534;
        _5711 = _4525;
        _5712 = _4516;
        _5713 = _4507;
        _5714 = _4495;
        _5715 = _4483;
        _5716 = _4245;
        _5717 = _4246;
      }
    } else {
      _5118 = (_4080 == 33);
      _5119 = (_4080 == 54);
      if (_5118 || _5119) {
        _5131 = (saturate(_4240) * 0.31830987f) * (((saturate(1.0f - _effectiveMetallicForVelvet) + -1.0f) * _4076) + 1.0f);
        _5133 = max(dot(float3(_4020, _4021, _4022), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
        _5134 = sqrt(_4020);
        _5135 = sqrt(_4021);
        _5136 = sqrt(_4022);
        _5147 = (saturate(1.0f - (pow(_4243, 4.0f))) * (_4076 - _4079)) + _4079;
        _5150 = ((_5147 * (_5135 - _5133)) + _5133) * _4078;
        _5153 = saturate(1.0f - saturate(_4246));  // [sem: expr_sat]
        _5154 = _5153 * _5153;
        _5156 = (_5154 * _5154) * _5153;
        _5159 = _5156 * saturate(_5150 * 50.0f);
        _5160 = 1.0f - _5156;
        _5161 = _5160 * _4078;
        _5165 = (_5161 * ((_5147 * (_5134 - _5133)) + _5133)) + _5159;
        _5167 = (_5160 * _5150) + _5159;
        _5171 = (_5161 * ((_5147 * (_5136 - _5133)) + _5133)) + _5159;
        _5172 = min(_4245, 0.9999f);
        _5173 = _5172 * _5172;
        _5174 = 1.0f - _5173;
        _5186 = (((exp2(((-0.0f - _5173) / (_5174 * _4175)) * 1.442695f) * 4.0f) / (_5174 * _5174)) + 1.0f) / ((_4175 * 12.566371f) + 3.1415927f);
        _5190 = ((_4243 + _4241) - (_4243 * _4241)) * 4.0f;
        _5192 = (_5165 * _5186) / _5190;
        _5194 = (_5167 * _5186) / _5190;
        _5196 = (_5171 * _5186) / _5190;
        _5197 = 1.0f - _4174;
        _5201 = (((_4245 * _4175) - _4245) * _4245) + 1.0f;
        _5213 = (0.5f / ((((_4243 * _5197) + _4174) * _4240) + (_4243 * ((_4240 * _5197) + _4174)))) * (_4175 / ((_5201 * _5201) * 3.1415927f));
        _5214 = saturate(_4241);  // [sem: _4241_sat]
        _5216 = (_4077 * 1.5f) + 2.5f;
        _5217 = _5216 * _5216;
        _5227 = (max(0.0f, (0.3f - _4240)) * 0.25f) * ((exp2(_5217 * -0.48089835f) * 3.0f) + exp2(_5217 * -1.442695f));
        _5243 = (((1.0f - _4076) * 0.4774648f) * saturate(_4077)) * saturate(exp2(log2(saturate(1.0f - abs(_4240))) * 3.0f) * (pow(_4245, 4.0f)));
        if (!_5118) {
          if (_5119) {
            if (_4117) {
              _5275 = dot(float3(_1474, _1475, _1476), float3(_4112, _4113, _4114)) * 2.0f;
              _5277 = _1474 - (_5275 * _4112);
              _5279 = _1475 - (_5275 * _4113);
              _5281 = _1476 - (_5275 * _4114);
              _5282 = _4226 - _5277;
              _5283 = _4225 - _5279;
              _5284 = _4224 - _5281;
              _5286 = rsqrt(dot(float3(_5282, _5283, _5284), float3(_5282, _5283, _5284)));  // [sem: invLength]
              _5287 = _5282 * _5286;
              _5288 = _5283 * _5286;
              _5289 = _5284 * _5286;
              _5352 = saturate(dot(float3(_4112, _4113, _4114), float3(_5287, _5288, _5289)));  // [sem: expr_sat]
              _5353 = dot(float3((-0.0f - _5277), (-0.0f - _5279), (-0.0f - _5281)), float3(_5287, _5288, _5289));
            } else {
              _5352 = _4245;  // [sem: expr_sat]
              _5353 = _4246;
            }
          } else {
            _5297 = (_4080 == 65);
            if (_4148) {
              if (!(_5297 || (!_4117))) {
                _5303 = dot(float3(_1474, _1475, _1476), float3(_4112, _4113, _4114)) * 2.0f;
                _5305 = _1474 - (_5303 * _4112);
                _5307 = _1475 - (_5303 * _4113);
                _5309 = _1476 - (_5303 * _4114);
                _5310 = _4226 - _5305;
                _5311 = _4225 - _5307;
                _5312 = _4224 - _5309;
                _5314 = rsqrt(dot(float3(_5310, _5311, _5312), float3(_5310, _5311, _5312)));  // [sem: invLength]
                _5315 = _5310 * _5314;
                _5316 = _5311 * _5314;
                _5317 = _5312 * _5314;
                _5352 = saturate(dot(float3(_4112, _4113, _4114), float3(_5315, _5316, _5317)));  // [sem: expr_sat]
                _5353 = dot(float3((-0.0f - _5305), (-0.0f - _5307), (-0.0f - _5309)), float3(_5315, _5316, _5317));
              } else {
                _5352 = _4245;  // [sem: expr_sat]
                _5353 = _4246;
              }
            } else {
              if (!(_5297 || (!(_4115 || _4116)))) {
                _5330 = dot(float3(_1474, _1475, _1476), float3(_4112, _4113, _4114)) * 2.0f;
                _5332 = _1474 - (_5330 * _4112);
                _5334 = _1475 - (_5330 * _4113);
                _5336 = _1476 - (_5330 * _4114);
                _5337 = _4226 - _5332;
                _5338 = _4225 - _5334;
                _5339 = _4224 - _5336;
                _5341 = rsqrt(dot(float3(_5337, _5338, _5339), float3(_5337, _5338, _5339)));  // [sem: invLength]
                _5342 = _5337 * _5341;
                _5343 = _5338 * _5341;
                _5344 = _5339 * _5341;
                _5352 = saturate(dot(float3(_4112, _4113, _4114), float3(_5342, _5343, _5344)));  // [sem: expr_sat]
                _5353 = dot(float3((-0.0f - _5332), (-0.0f - _5334), (-0.0f - _5336)), float3(_5342, _5343, _5344));
              } else {
                _5352 = _4245;  // [sem: expr_sat]
                _5353 = _4246;
              }
            }
          }
        } else {
          _5352 = _4245;  // [sem: expr_sat]
          _5353 = _4246;
        }
        _5707 = ((((_5136 * _4019) * _5227) + _5131) * _4019);
        _5708 = ((((_5135 * _4018) * _5227) + _5131) * _4018);
        _5709 = ((((_5134 * _4017) * _5227) + _5131) * _4017);
        _5710 = (((_5214 * _4019) * (((max((_5213 * _5171), 0.0f) - _5196) * _4079) + _5196)) + (_5243 * _5136));
        _5711 = (((_5214 * _4018) * (((max((_5213 * _5167), 0.0f) - _5194) * _4079) + _5194)) + (_5243 * _5135));
        _5712 = (((_5214 * _4017) * (((max((_5213 * _5165), 0.0f) - _5192) * _4079) + _5192)) + (_5243 * _5134));
        _5713 = 0.0f;
        _5714 = 0.0f;
        _5715 = 0.0f;
        _5716 = _5352;
        _5717 = _5353;
      } else {
        if ((_4240 > 0.0f) || (_4241 > 0.0f)) {
          _5371 = saturate(_4240);  // [sem: _4240_sat]
          _5372 = 1.0f - _4175;
          _5373 = 1.0f - _4248;
          _5374 = _5373 * _5373;
          _5377 = ((_5374 * _5374) * _5373) + _4248;
          _5378 = 1.0f - _5371;
          _5379 = _5378 * _5378;
          _5380 = 1.0f - _4243;
          _5381 = _5380 * _5380;
          _5412 = (_5371 * 0.31830987f) * ((((_4248 * ((((_5372 * 34.5f) + -59.0f) * _5372) + 24.5f)) * exp2(-0.0f - (max(((_5372 * 73.2f) + -21.2f), 8.9f) * sqrt(_4245)))) + _5377) + ((((1.0f - ((_5379 * _5379) * (_5378 * 0.75f))) * (1.0f - ((_5381 * _5381) * (_5380 * 0.75f)))) - _5377) * saturate((_5372 * 2.2f) + -0.5f)));
          _5415 = saturate(1.0f - saturate(_4246));  // [sem: expr_sat]
          _5416 = _5415 * _5415;
          _5418 = (_5416 * _5416) * _5415;
          _5421 = _5418 * saturate(_4172 * 50.0f);
          _5422 = 1.0f - _5418;
          _5424 = (_5422 * _4173) + _5421;
          _5426 = (_5422 * _4172) + _5421;
          _5428 = (_5422 * _4171) + _5421;
          if (!(_4080 == 29)) {
            _5431 = saturate(_4241);  // [sem: _4241_sat]
            _5432 = 1.0f - _4174;
            _5436 = (((_4245 * _4175) - _4245) * _4245) + 1.0f;
            _5448 = (0.5f / ((((_4243 * _5432) + _4174) * _4241) + (_4243 * ((_4241 * _5432) + _4174)))) * (_4175 / ((_5436 * _5436) * 3.1415927f));
            _5459 = (max((_5448 * _5428), 0.0f) * _5431);
            _5460 = (max((_5448 * _5426), 0.0f) * _5431);
            _5461 = (max((_5448 * _5424), 0.0f) * _5431);
          } else {
            _5459 = 0.0f;
            _5460 = 0.0f;
            _5461 = 0.0f;
          }
          _5462 = (_4080 == 65);
          if (_4148) {
            if (_5462) {
              _5467 = max(1e-06f, _exposure2.x);
              _5478 = ((_5371 * 50.265484f) * exp2(log2(saturate(dot(float3(_4112, _4113, _4114), float3(_1474, _1475, _1476)))) * 16.0f)) / (((_5467 * _5467) * 1e+06f) + 1.0f);
              _5683 = _5459;
              _5684 = _5460;
              _5685 = _5461;
              _5686 = _4245;
              _5687 = _4246;
              _5688 = ((((_5478 * _4022) - _5412) * _4081) + _5412);
              _5689 = ((((_5478 * _4021) - _5412) * _4081) + _5412);
              _5690 = ((((_5478 * _4020) - _5412) * _4081) + _5412);
            } else {
              _5492 = 1.0f - _4180;
              _5496 = (((_4245 * _4181) - _4245) * _4245) + 1.0f;
              _5508 = (0.5f / ((((_4243 * _5492) + _4180) * _4241) + (_4243 * ((_4241 * _5492) + _4180)))) * (_4181 / ((_5496 * _5496) * 3.1415927f));
              _5509 = saturate(_4241);  // [sem: _4241_sat]
              _5510 = _5509 * 0.39990234f;
              _5515 = (max((_5508 * _5424), 0.0f) * _5510) + (_5461 * 0.60009766f);
              _5520 = (max((_5508 * _5426), 0.0f) * _5510) + (_5460 * 0.60009766f);
              _5525 = (max((_5508 * _5428), 0.0f) * _5510) + (_5459 * 0.60009766f);
              if (_4117) {
                _5528 = dot(float3(_1474, _1475, _1476), float3(_4112, _4113, _4114)) * 2.0f;
                _5530 = _1474 - (_5528 * _4112);
                _5532 = _1475 - (_5528 * _4113);
                _5534 = _1476 - (_5528 * _4114);
                _5535 = _4226 - _5530;
                _5536 = _4225 - _5532;
                _5537 = _4224 - _5534;
                _5539 = rsqrt(dot(float3(_5535, _5536, _5537), float3(_5535, _5536, _5537)));  // [sem: invLength]
                _5540 = _5535 * _5539;
                _5541 = _5536 * _5539;
                _5542 = _5537 * _5539;
                _5543 = -0.0f - _5530;
                _5544 = -0.0f - _5532;
                _5545 = -0.0f - _5534;
                _5547 = saturate(dot(float3(_4058, _4059, _4060), float3(_5543, _5544, _5545)));  // [sem: expr_sat]
                _5549 = saturate(dot(float3(_4112, _4113, _4114), float3(_5540, _5541, _5542)));  // [sem: expr_sat]
                _5552 = 1.0f - ((_5549 * _5549) * 0.9f);
                _5563 = (0.5f / ((((_5547 * 0.9f) + 0.1f) * _4241) + (_5547 * ((_4241 * 0.9f) + 0.1f)))) * (0.03183099f / (_5552 * _5552));
                _5683 = (((float(half(max((_5563 * _4022), 0.0f) * _5509)) - _5525) * 0.875f) + _5525);
                _5684 = (((float(half(max((_5563 * _4021), 0.0f) * _5509)) - _5520) * 0.875f) + _5520);
                _5685 = (((float(half(max((_5563 * _4020), 0.0f) * _5509)) - _5515) * 0.875f) + _5515);
                _5686 = _5549;
                _5687 = dot(float3(_5543, _5544, _5545), float3(_5540, _5541, _5542));
                _5688 = _5412;
                _5689 = _5412;
                _5690 = _5412;
              } else {
                _5683 = _5525;
                _5684 = _5520;
                _5685 = _5515;
                _5686 = _4245;
                _5687 = _4246;
                _5688 = _5412;
                _5689 = _5412;
                _5690 = _5412;
              }
            }
          } else {
            if (_5462) {
              _5593 = max(1e-06f, _exposure2.x);
              _5604 = ((_5371 * 50.265484f) * exp2(log2(saturate(dot(float3(_4112, _4113, _4114), float3(_1474, _1475, _1476)))) * 16.0f)) / (((_5593 * _5593) * 1e+06f) + 1.0f);
              _5683 = _5459;
              _5684 = _5460;
              _5685 = _5461;
              _5686 = _4245;
              _5687 = _4246;
              _5688 = ((((_5604 * _4022) - _5412) * _4081) + _5412);
              _5689 = ((((_5604 * _4021) - _5412) * _4081) + _5412);
              _5690 = ((((_5604 * _4020) - _5412) * _4081) + _5412);
            } else {
              if (_4117) {
                _5620 = dot(float3(_1474, _1475, _1476), float3(_4112, _4113, _4114)) * 2.0f;
                _5622 = _1474 - (_5620 * _4112);
                _5624 = _1475 - (_5620 * _4113);
                _5626 = _1476 - (_5620 * _4114);
                _5627 = _4226 - _5622;
                _5628 = _4225 - _5624;
                _5629 = _4224 - _5626;
                _5631 = rsqrt(dot(float3(_5627, _5628, _5629), float3(_5627, _5628, _5629)));  // [sem: invLength]
                _5632 = _5627 * _5631;
                _5633 = _5628 * _5631;
                _5634 = _5629 * _5631;
                _5635 = -0.0f - _5622;
                _5636 = -0.0f - _5624;
                _5637 = -0.0f - _5626;
                _5639 = saturate(dot(float3(_4058, _4059, _4060), float3(_5635, _5636, _5637)));  // [sem: expr_sat]
                _5641 = saturate(dot(float3(_4112, _4113, _4114), float3(_5632, _5633, _5634)));  // [sem: expr_sat]
                _5642 = saturate(_4241);  // [sem: _4241_sat]
                _5645 = 1.0f - ((_5641 * _5641) * 0.9f);
                _5656 = (0.5f / ((((_5639 * 0.9f) + 0.1f) * _4241) + (_5639 * ((_4241 * 0.9f) + 0.1f)))) * (0.03183099f / (_5645 * _5645));
                _5683 = (((float(half(max((_5656 * _4022), 0.0f) * _5642)) - _5459) * 0.875f) + _5459);
                _5684 = (((float(half(max((_5656 * _4021), 0.0f) * _5642)) - _5460) * 0.875f) + _5460);
                _5685 = (((float(half(max((_5656 * _4020), 0.0f) * _5642)) - _5461) * 0.875f) + _5461);
                _5686 = _5641;
                _5687 = dot(float3(_5635, _5636, _5637), float3(_5632, _5633, _5634));
                _5688 = _5412;
                _5689 = _5412;
                _5690 = _5412;
              } else {
                _5683 = _5459;
                _5684 = _5460;
                _5685 = _5461;
                _5686 = _4245;
                _5687 = _4246;
                _5688 = _5412;
                _5689 = _5412;
                _5690 = _5412;
              }
            }
          }
          _5707 = (-0.0f - (_4019 * min(-0.0f, (-0.0f - _5688))));
          _5708 = (-0.0f - (_4018 * min(-0.0f, (-0.0f - _5689))));
          _5709 = (-0.0f - (_4017 * min(-0.0f, (-0.0f - _5690))));
          _5710 = (_5683 * _4019);
          _5711 = (_5684 * _4018);
          _5712 = (_5685 * _4017);
          _5713 = 0.0f;
          _5714 = 0.0f;
          _5715 = 0.0f;
          _5716 = _5686;
          _5717 = _5687;
        } else {
          _5707 = 0.0f;
          _5708 = 0.0f;
          _5709 = 0.0f;
          _5710 = 0.0f;
          _5711 = 0.0f;
          _5712 = 0.0f;
          _5713 = 0.0f;
          _5714 = 0.0f;
          _5715 = 0.0f;
          _5716 = _4245;
          _5717 = _4246;
        }
      }
    }
    if (!(_4206 == 0)) {
      _5722 = max(0.0f, (0.3f - _4240)) * 0.23190688f;
      _5730 = ((_5722 * _4019) + _5707);
      _5731 = ((_5722 * _4018) + _5708);
      _5732 = ((_5722 * _4017) + _5709);
    } else {
      _5730 = _5707;
      _5731 = _5708;
      _5732 = _5709;
    }
    _5734 = 1.0f - (_5717 * 0.85f);
    if (_4148) {
      _5736 = max(4.0f, _4212);
      _5737 = _5736 * _5736;
      _5739 = exp2(_5737 * -225.4211f);
      _5741 = exp2(_5737 * -29.807749f);
      _5743 = exp2(_5737 * -7.7149463f);
      _5745 = exp2(_5737 * -2.5444357f);
      _5746 = _5745 * 0.007f;
      _5748 = exp2(_5737 * -0.72497237f);
      _5750 = -0.0f - _234;
      _5754 = saturate(dot(float3(_4226, _4225, _4224), float3((-0.0f - _232), _243, _5750)) + 0.3f) * 0.31830987f;
      _5786 = ((((((((_5741 * 0.1f) + (_5739 * 0.233f)) + (_5743 * 0.118f)) + (_5745 * 0.113f)) + (_5748 * 0.358f)) + (exp2(_5737 * -0.19469568f) * 0.078f)) * _5754) + _5732) * _4229;
      _5787 = ((_5754 * (((((_5741 * 0.336f) + (_5739 * 0.455f)) + (_5743 * 0.198f)) + _5746) + (_5748 * 0.004f))) + _5731) * _4230;
      _5788 = ((_5754 * (((_5741 * 0.344f) + (_5739 * 0.649f)) + _5746)) + _5730) * _4231;
      _5789 = _4229 * _4017;
      _5791 = _4230 * _4018;
      _5793 = _4231 * _4019;
      if ((_3717 == 0.0h) && ((_124 < 1000.0f) && _4177)) {
        if (!(abs(_233) > 0.99f)) {
          _5804 = rsqrt(dot(float3(_5750, 0.0f, _232), float3(_5750, 0.0f, _232)));  // [sem: invLength]
          _5808 = (_5804 * _232);
          _5809 = (_5804 * _5750);
        } else {
          _5808 = 0.0f;
          _5809 = 1.0f;
        }
        _5811 = -0.0f - (_233 * _5808);
        _5814 = (_5808 * _232) - (_5809 * _234);
        _5815 = _5809 * _233;
        _5817 = rsqrt(dot(float3(_5811, _5814, _5815), float3(_5811, _5814, _5815)));  // [sem: invLength]
        // [sem: _3__36__0__0__g_blueNoise_sampleLod]
        _5825 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_5809, 0.0f, _5808), float3(_3803, _3805, _3810)), dot(float3((_5817 * _5811), (_5814 * _5817), (_5817 * _5815)), float3(_3803, _3805, _3810))), 0.0f);
        _5829 = _5825.x + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
        _5830 = _5825.y + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
        _5831 = _5825.z + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
        _5833 = rsqrt(dot(float3(_5829, _5830, _5831), float3(_5829, _5830, _5831)));  // [sem: invLength]
        _5835 = (_5829 * _5833) + _4112;
        _5837 = (_5830 * _5833) + _4113;
        _5839 = (_5831 * _5833) + _4114;
        _5841 = rsqrt(dot(float3(_5835, _5837, _5839), float3(_5835, _5837, _5839)));  // [sem: invLength]
        _5842 = _5835 * _5841;
        _5843 = _5837 * _5841;
        _5844 = _5839 * _5841;
        _5848 = abs(((_105 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
        _5852 = abs(1.0f - ((_106 * 2.0f) * _bufferSizeAndInvSize.w));
        _5854 = saturate(_5848 * _5848);  // [sem: expr_sat]
        _5856 = saturate(_5852 * _5852);  // [sem: expr_sat]
        _5860 = dot(float3((-0.0f - _5842), (-0.0f - _5843), (-0.0f - _5844)), float3(_4226, _4225, _4224));
        _5862 = saturate(dot(float3(_5842, _5843, _5844), float3(_1474, _1475, _1476)));  // [sem: expr_sat]
        _5864 = saturate(1.0f - _5717);  // [sem: expr_sat]
        _5865 = _5864 * _5864;
        _5867 = (_5865 * _5865) * _5864;
        _5870 = 1.0f - ((_5716 * _5716) * 0.9999f);
        _5911 = ((exp2(log2(saturate(dot(float3(_1474, _1475, _1476), float3(_5842, _5843, _5844)))) * 1024.0f) * 50.0f) + (saturate(_5860) * max((((0.5f / ((((_5862 * 0.9999f) + 0.0001f) * _5860) + (_5862 * ((_5860 * 0.9999f) + 0.0001f)))) * (3.1830987e-05f / (_5870 * _5870))) * (lerp(_5867, 1.0f, 0.08f))), 0.0f))) * (((1.0f - ((_5856 * _5856) * (3.0f - (_5856 * 2.0f)))) * (1.0f - ((_5854 * _5854) * (3.0f - (_5854 * 2.0f))))) * saturate(1.0f - (_124 * 0.001f)));
        _6715 = (_5793 * (_5911 + _5710));
        _6716 = (_5791 * (_5911 + _5711));
        _6717 = (_5789 * (_5911 + _5712));
        _6718 = _5713;
        _6719 = _5714;
        _6720 = _5715;
        _6721 = _5788;
        _6722 = _5787;
        _6723 = _5786;
      } else {
        _6715 = (_5710 * _5793);
        _6716 = (_5711 * _5791);
        _6717 = (_5712 * _5789);
        _6718 = _5713;
        _6719 = _5714;
        _6720 = _5715;
        _6721 = _5788;
        _6722 = _5787;
        _6723 = _5786;
      }
    } else {
      if (_4251) {
        _5923 = _renderParams2.w * dot(float3(_4020, _4021, _4022), float3(0.212671f, 0.71516f, 0.072169f));
        _5926 = (_4016 - (_5923 * _4016)) + _5923;
        _5929 = (pow(_4017, 1.2f));
        _5932 = (pow(_4018, 1.2f));
        _5935 = (pow(_4019, 1.2f));
        _5938 = saturate(abs(dot(float3(_4226, _4225, _4224), float3(_1390, _1389, _1388))));  // [sem: expr_sat]
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _5944 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_5938, _4031, saturate(sqrt(sqrt(_4020)))), 0.0f);
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _5950 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_5938, _4031, saturate(sqrt(sqrt(_4021)))), 0.0f);
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _5956 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_5938, _4031, saturate(sqrt(sqrt(_4022)))), 0.0f);
        _5959 = min(0.99f, _5944.x);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _5960 = min(0.99f, _5950.x);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _5961 = min(0.99f, _5956.x);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _5962 = min(0.99f, _5944.y);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _5963 = min(0.99f, _5950.y);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _5964 = min(0.99f, _5956.y);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _5965 = _5959 * _5959;
        _5966 = _5960 * _5960;
        _5967 = _5961 * _5961;
        _5968 = _5962 * _5962;
        _5969 = _5963 * _5963;
        _5970 = _5964 * _5964;
        _5971 = _5968 * _5962;
        _5972 = _5969 * _5963;
        _5973 = _5970 * _5964;
        _5974 = 1.0f - _5965;
        _5975 = 1.0f - _5966;
        _5976 = 1.0f - _5967;
        _5977 = _5974 * _5974;
        _5978 = _5975 * _5975;
        _5979 = _5976 * _5976;
        _5980 = _5977 * _5974;
        _5981 = _5978 * _5975;
        _5982 = _5979 * _5976;
        _5984 = min(max(_4031, 0.18f), 0.6f);
        _5985 = _5984 * _5984;
        _5986 = _5985 * 0.25f;
        _5987 = _5985 * 4.0f;
        _5989 = (_5960 + _5959) + _5961;
        _5990 = _5959 / _5989;
        _5991 = _5960 / _5989;
        _5992 = _5961 / _5989;
        _5993 = dot(float3(_5985, _5986, _5987), float3(_5990, _5991, _5992));
        _5994 = _5993 * _5993;
        _6004 = (asin(min(max(dot(float3(_1390, _1389, _1388), float3(_4226, _4225, _4224)), -1.0f), 1.0f)) + asin(min(max(dot(float3(_1390, _1389, _1388), float3(_1474, _1475, _1476)), -1.0f), 1.0f))) * 0.5f;
        _6005 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_5990, _5991, _5992));
        _6006 = _6005 * _6005;
        _6008 = (_5963 + _5962) + _5964;
        _6012 = dot(float3(_5985, _5986, _5987), float3((_5962 / _6008), (_5963 / _6008), (_5964 / _6008)));
        _6016 = sqrt((_6012 * _6012) + (_5994 * 2.0f));
        _6019 = (_6012 * 3.0f) + (_5993 * 2.0f);
        _6027 = (((_5971 + _5962) * ((_5965 * 0.7f) + 1.0f)) * _6016) / ((_6019 * _5971) + _5962);
        _6035 = (((_5972 + _5963) * ((_5966 * 0.7f) + 1.0f)) * _6016) / ((_6019 * _5972) + _5963);
        _6043 = (((_5973 + _5964) * ((_5967 * 0.7f) + 1.0f)) * _6016) / ((_6019 * _5973) + _5964);
        _6054 = _6004 - (((_6006 * (((_5965 * 4.0f) * _5968) + (_5977 * 2.0f))) * (1.0f - ((_5968 * 2.0f) / _5977))) / _5980);
        _6065 = _6004 - (((_6006 * (((_5966 * 4.0f) * _5969) + (_5978 * 2.0f))) * (1.0f - ((_5969 * 2.0f) / _5978))) / _5981);
        _6076 = _6004 - (((_6006 * (((_5967 * 4.0f) * _5970) + (_5979 * 2.0f))) * (1.0f - ((_5970 * 2.0f) / _5979))) / _5982);
        _6078 = (1.0f - _1392) * 2.1f;
        _6081 = (_1392 * 0.31830987f) * saturate(_4240);
        _6097 = _5929 * _4229;
        _6099 = (_5926 * _6097) * ((((((_5962 * _5965) / _5974) + ((_5971 * _5965) / _5980)) * _6078) * exp2((((_6054 * _6054) * -0.5f) / ((_6027 * _6027) + _5994)) * 1.442695f)) + _5715);
        _6115 = _5932 * _4230;
        _6117 = (_6115 * _5926) * ((((((_5963 * _5966) / _5975) + ((_5972 * _5966) / _5981)) * _6078) * exp2((((_6065 * _6065) * -0.5f) / ((_6035 * _6035) + _5994)) * 1.442695f)) + _5714);
        _6133 = _5935 * _4231;
        _6135 = (_6133 * _5926) * ((((((_5964 * _5967) / _5976) + ((_5973 * _5967) / _5982)) * _6078) * exp2((((_6076 * _6076) * -0.5f) / ((_6043 * _6043) + _5994)) * 1.442695f)) + _5713);
        _6137 = (_5712 * _4229) * _5929;
        _6139 = (_5711 * _4230) * _5932;
        _6141 = (_5710 * _4231) * _5935;
        _6142 = _6081 * _6097;
        _6143 = _6081 * _6115;
        _6144 = _6081 * _6133;
        if ((_3717 == 0.0h) && ((_124 < 1000.0f) && _4182)) {
          if (!(abs(_233) > 0.99f)) {
            _6153 = -0.0f - _234;
            _6155 = rsqrt(dot(float3(_6153, 0.0f, _232), float3(_6153, 0.0f, _232)));  // [sem: invLength]
            _6159 = (_6155 * _232);
            _6160 = (_6155 * _6153);
          } else {
            _6159 = 0.0f;
            _6160 = 1.0f;
          }
          _6162 = -0.0f - (_233 * _6159);
          _6165 = (_6159 * _232) - (_6160 * _234);
          _6166 = _6160 * _233;
          _6168 = rsqrt(dot(float3(_6162, _6165, _6166), float3(_6162, _6165, _6166)));  // [sem: invLength]
          // [sem: _3__36__0__0__g_blueNoise_sampleLod]
          _6176 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_6160, 0.0f, _6159), float3(_3803, _3805, _3810)), dot(float3((_6168 * _6162), (_6165 * _6168), (_6168 * _6166)), float3(_3803, _3805, _3810))), 0.0f);
          _6180 = _6176.x + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _6181 = _6176.y + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _6182 = _6176.z + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _6184 = rsqrt(dot(float3(_6180, _6181, _6182), float3(_6180, _6181, _6182)));  // [sem: invLength]
          _6186 = (_6180 * _6184) + _4112;
          _6188 = (_6181 * _6184) + _4113;
          _6190 = (_6182 * _6184) + _4114;
          _6192 = rsqrt(dot(float3(_6186, _6188, _6190), float3(_6186, _6188, _6190)));  // [sem: invLength]
          _6193 = _6186 * _6192;
          _6194 = _6188 * _6192;
          _6195 = _6190 * _6192;
          _6199 = abs(((_105 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
          _6203 = abs(1.0f - ((_106 * 2.0f) * _bufferSizeAndInvSize.w));
          _6205 = saturate(_6199 * _6199);  // [sem: expr_sat]
          _6207 = saturate(_6203 * _6203);  // [sem: expr_sat]
          _6211 = dot(float3((-0.0f - _6193), (-0.0f - _6194), (-0.0f - _6195)), float3(_4226, _4225, _4224));
          _6213 = saturate(dot(float3(_6193, _6194, _6195), float3(_1474, _1475, _1476)));  // [sem: expr_sat]
          _6215 = saturate(1.0f - _5717);  // [sem: expr_sat]
          _6216 = _6215 * _6215;
          _6218 = (_6216 * _6216) * _6215;
          _6221 = 1.0f - ((_5716 * _5716) * 0.9999f);
          _6262 = ((exp2(log2(saturate(dot(float3(_1474, _1475, _1476), float3(_6193, _6194, _6195)))) * 1024.0f) * 50.0f) + (saturate(_6211) * max((((0.5f / ((((_6213 * 0.9999f) + 0.0001f) * _6211) + (_6213 * ((_6211 * 0.9999f) + 0.0001f)))) * (3.1830987e-05f / (_6221 * _6221))) * (lerp(_6218, 1.0f, 0.08f))), 0.0f))) * (((1.0f - ((_6207 * _6207) * (3.0f - (_6207 * 2.0f)))) * (1.0f - ((_6205 * _6205) * (3.0f - (_6205 * 2.0f))))) * saturate(1.0f - (_124 * 0.001f)));
          _6715 = ((_6262 * _6133) + _6141);
          _6716 = ((_6262 * _6115) + _6139);
          _6717 = ((_6262 * _6097) + _6137);
          _6718 = _6135;
          _6719 = _6117;
          _6720 = _6099;
          _6721 = _6144;
          _6722 = _6143;
          _6723 = _6142;
        } else {
          _6715 = _6141;
          _6716 = _6139;
          _6717 = _6137;
          _6718 = _6135;
          _6719 = _6117;
          _6720 = _6099;
          _6721 = _6144;
          _6722 = _6143;
          _6723 = _6142;
        }
      } else {
        if (_4207 == 0) {
          _6581 = _5732 * _4229;
          _6582 = _5731 * _4230;
          _6583 = _5730 * _4231;
          _6584 = _4229 * _4017;
          _6586 = _4230 * _4018;
          _6588 = _4231 * _4019;
          if ((_3717 == 0.0h) && ((_124 < 1000.0f) && _4177)) {
            if (!(abs(_233) > 0.99f)) {
              _6598 = -0.0f - _234;
              _6600 = rsqrt(dot(float3(_6598, 0.0f, _232), float3(_6598, 0.0f, _232)));  // [sem: invLength]
              _6604 = (_6600 * _232);
              _6605 = (_6600 * _6598);
            } else {
              _6604 = 0.0f;
              _6605 = 1.0f;
            }
            _6607 = -0.0f - (_233 * _6604);
            _6610 = (_6604 * _232) - (_6605 * _234);
            _6611 = _6605 * _233;
            _6613 = rsqrt(dot(float3(_6607, _6610, _6611), float3(_6607, _6610, _6611)));  // [sem: invLength]
            // [sem: _3__36__0__0__g_blueNoise_sampleLod]
            _6621 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_6605, 0.0f, _6604), float3(_3803, _3805, _3810)), dot(float3((_6613 * _6607), (_6610 * _6613), (_6613 * _6611)), float3(_3803, _3805, _3810))), 0.0f);
            _6625 = _6621.x + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
            _6626 = _6621.y + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
            _6627 = _6621.z + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
            _6629 = rsqrt(dot(float3(_6625, _6626, _6627), float3(_6625, _6626, _6627)));  // [sem: invLength]
            _6631 = (_6625 * _6629) + _4112;
            _6633 = (_6626 * _6629) + _4113;
            _6635 = (_6627 * _6629) + _4114;
            _6637 = rsqrt(dot(float3(_6631, _6633, _6635), float3(_6631, _6633, _6635)));  // [sem: invLength]
            _6638 = _6631 * _6637;
            _6639 = _6633 * _6637;
            _6640 = _6635 * _6637;
            _6644 = abs(((_105 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
            _6648 = abs(1.0f - ((_106 * 2.0f) * _bufferSizeAndInvSize.w));
            _6650 = saturate(_6644 * _6644);  // [sem: expr_sat]
            _6652 = saturate(_6648 * _6648);  // [sem: expr_sat]
            _6656 = dot(float3((-0.0f - _6638), (-0.0f - _6639), (-0.0f - _6640)), float3(_4226, _4225, _4224));
            _6658 = saturate(dot(float3(_6638, _6639, _6640), float3(_1474, _1475, _1476)));  // [sem: expr_sat]
            _6660 = saturate(1.0f - _5717);  // [sem: expr_sat]
            _6661 = _6660 * _6660;
            _6663 = (_6661 * _6661) * _6660;
            _6666 = 1.0f - ((_5716 * _5716) * 0.9999f);
            _6707 = ((exp2(log2(saturate(dot(float3(_1474, _1475, _1476), float3(_6638, _6639, _6640)))) * 1024.0f) * 50.0f) + (saturate(_6656) * max((((0.5f / ((((_6658 * 0.9999f) + 0.0001f) * _6656) + (_6658 * ((_6656 * 0.9999f) + 0.0001f)))) * (3.1830987e-05f / (_6666 * _6666))) * (lerp(_6663, 1.0f, 0.08f))), 0.0f))) * (((1.0f - ((_6652 * _6652) * (3.0f - (_6652 * 2.0f)))) * (1.0f - ((_6650 * _6650) * (3.0f - (_6650 * 2.0f))))) * saturate(1.0f - (_124 * 0.001f)));
            _6715 = (_6588 * (_6707 + _5710));
            _6716 = (_6586 * (_6707 + _5711));
            _6717 = (_6584 * (_6707 + _5712));
            _6718 = _5713;
            _6719 = _5714;
            _6720 = _5715;
            _6721 = _6583;
            _6722 = _6582;
            _6723 = _6581;
          } else {
            _6715 = (_5710 * _6588);
            _6716 = (_5711 * _6586);
            _6717 = (_5712 * _6584);
            _6718 = _5713;
            _6719 = _5714;
            _6720 = _5715;
            _6721 = _6583;
            _6722 = _6582;
            _6723 = _6581;
          }
        } else {
          if (_4080 == 97) {
            _6274 = _4229 * _4017;
            _6276 = _4230 * _4018;
            _6278 = _4231 * _4019;
            _6280 = _5732 * _4229;
            _6281 = _5731 * _4230;
            _6282 = _5730 * _4231;
            if ((_124 < 1000.0f) && (_3717 == 0.0h)) {
              if (!(abs(_233) > 0.99f)) {
                _6290 = -0.0f - _234;
                _6292 = rsqrt(dot(float3(_6290, 0.0f, _232), float3(_6290, 0.0f, _232)));  // [sem: invLength]
                _6296 = (_6292 * _232);
                _6297 = (_6292 * _6290);
              } else {
                _6296 = 0.0f;
                _6297 = 1.0f;
              }
              _6299 = -0.0f - (_233 * _6296);
              _6302 = (_6296 * _232) - (_6297 * _234);
              _6303 = _6297 * _233;
              _6305 = rsqrt(dot(float3(_6299, _6302, _6303), float3(_6299, _6302, _6303)));  // [sem: invLength]
              // [sem: _3__36__0__0__g_blueNoise_sampleLod]
              _6313 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_6297, 0.0f, _6296), float3(_3803, _3805, _3810)), dot(float3((_6305 * _6299), (_6302 * _6305), (_6305 * _6303)), float3(_3803, _3805, _3810))), 0.0f);
              _6317 = _6313.x + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
              _6318 = _6313.y + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
              _6319 = _6313.z + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
              _6321 = rsqrt(dot(float3(_6317, _6318, _6319), float3(_6317, _6318, _6319)));  // [sem: invLength]
              _6323 = (_6317 * _6321) + _4112;
              _6325 = (_6318 * _6321) + _4113;
              _6327 = (_6319 * _6321) + _4114;
              _6329 = rsqrt(dot(float3(_6323, _6325, _6327), float3(_6323, _6325, _6327)));  // [sem: invLength]
              _6330 = _6323 * _6329;
              _6331 = _6325 * _6329;
              _6332 = _6327 * _6329;
              _6336 = abs(((_105 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
              _6340 = abs(1.0f - ((_106 * 2.0f) * _bufferSizeAndInvSize.w));
              _6342 = saturate(_6336 * _6336);  // [sem: expr_sat]
              _6344 = saturate(_6340 * _6340);  // [sem: expr_sat]
              _6348 = dot(float3((-0.0f - _6330), (-0.0f - _6331), (-0.0f - _6332)), float3(_4226, _4225, _4224));
              _6350 = saturate(dot(float3(_6330, _6331, _6332), float3(_1474, _1475, _1476)));  // [sem: expr_sat]
              _6352 = saturate(1.0f - _5717);  // [sem: expr_sat]
              _6353 = _6352 * _6352;
              _6355 = (_6353 * _6353) * _6352;
              _6358 = 1.0f - ((_5716 * _5716) * 0.9999f);
              _6399 = ((exp2(log2(saturate(dot(float3(_1474, _1475, _1476), float3(_6330, _6331, _6332)))) * 1024.0f) * 50.0f) + (saturate(_6348) * max((((0.5f / ((((_6350 * 0.9999f) + 0.0001f) * _6348) + (_6350 * ((_6348 * 0.9999f) + 0.0001f)))) * (3.1830987e-05f / (_6358 * _6358))) * (lerp(_6355, 1.0f, 0.08f))), 0.0f))) * (((1.0f - ((_6344 * _6344) * (3.0f - (_6344 * 2.0f)))) * (1.0f - ((_6342 * _6342) * (3.0f - (_6342 * 2.0f))))) * saturate(1.0f - (_124 * 0.001f)));
              _6715 = (_6278 * (_6399 + _5710));
              _6716 = (_6276 * (_6399 + _5711));
              _6717 = (_6274 * (_6399 + _5712));
              _6718 = _5713;
              _6719 = _5714;
              _6720 = _5715;
              _6721 = _6282;
              _6722 = _6281;
              _6723 = _6280;
            } else {
              _6715 = (_5710 * _6278);
              _6716 = (_5711 * _6276);
              _6717 = (_5712 * _6274);
              _6718 = _5713;
              _6719 = _5714;
              _6720 = _5715;
              _6721 = _6282;
              _6722 = _6281;
              _6723 = _6280;
            }
          } else {
            if ((uint)((int)(_4080) + (int)(-105)) < (uint)2) {
              _6715 = ((_4231 * _4019) * _5710);
              _6716 = ((_4230 * _4018) * _5711);
              _6717 = ((_4229 * _4017) * _5712);
              _6718 = _5713;
              _6719 = _5714;
              _6720 = _5715;
              _6721 = (_5730 * _4231);
              _6722 = (_5731 * _4230);
              _6723 = (_5732 * _4229);
            } else {
              if (!(_4212 >= 999.9f)) {
                _6428 = ((max(0.002f, _4212) * 0.4f) / ((_4081 * 100.0f) + 0.1f));
              } else {
                _6428 = 1000.0f;
              }
              _6429 = _6428 * _6428;
              _6443 = (((_4081 * 0.25f) * (0.022082746f / (_5734 * _5734))) * max(0.0f, (0.3f - _4240))) * ((exp2(_6429 * -0.48089835f) * 3.0f) + exp2(_6429 * -1.442695f));
              _6447 = (_6443 + _5732) * _4229;
              _6448 = (_6443 + _5731) * _4230;
              _6449 = (_6443 + _5730) * _4231;
              _6450 = _4229 * _4017;
              _6452 = _4230 * _4018;
              _6454 = _4231 * _4019;
              if ((_3717 == 0.0h) && ((_124 < 1000.0f) && _4177)) {
                if (!(abs(_233) > 0.99f)) {
                  _6464 = -0.0f - _234;
                  _6466 = rsqrt(dot(float3(_6464, 0.0f, _232), float3(_6464, 0.0f, _232)));  // [sem: invLength]
                  _6470 = (_6466 * _232);
                  _6471 = (_6466 * _6464);
                } else {
                  _6470 = 0.0f;
                  _6471 = 1.0f;
                }
                _6473 = -0.0f - (_233 * _6470);
                _6476 = (_6470 * _232) - (_6471 * _234);
                _6477 = _6471 * _233;
                _6479 = rsqrt(dot(float3(_6473, _6476, _6477), float3(_6473, _6476, _6477)));  // [sem: invLength]
                // [sem: _3__36__0__0__g_blueNoise_sampleLod]
                _6487 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_6471, 0.0f, _6470), float3(_3803, _3805, _3810)), dot(float3((_6479 * _6473), (_6476 * _6479), (_6479 * _6477)), float3(_3803, _3805, _3810))), 0.0f);
                _6491 = _6487.x + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
                _6492 = _6487.y + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
                _6493 = _6487.z + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
                _6495 = rsqrt(dot(float3(_6491, _6492, _6493), float3(_6491, _6492, _6493)));  // [sem: invLength]
                _6497 = (_6491 * _6495) + _4112;
                _6499 = (_6492 * _6495) + _4113;
                _6501 = (_6493 * _6495) + _4114;
                _6503 = rsqrt(dot(float3(_6497, _6499, _6501), float3(_6497, _6499, _6501)));  // [sem: invLength]
                _6504 = _6497 * _6503;
                _6505 = _6499 * _6503;
                _6506 = _6501 * _6503;
                _6510 = abs(((_105 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
                _6514 = abs(1.0f - ((_106 * 2.0f) * _bufferSizeAndInvSize.w));
                _6516 = saturate(_6510 * _6510);  // [sem: expr_sat]
                _6518 = saturate(_6514 * _6514);  // [sem: expr_sat]
                _6522 = dot(float3((-0.0f - _6504), (-0.0f - _6505), (-0.0f - _6506)), float3(_4226, _4225, _4224));
                _6524 = saturate(dot(float3(_6504, _6505, _6506), float3(_1474, _1475, _1476)));  // [sem: expr_sat]
                _6526 = saturate(1.0f - _5717);  // [sem: expr_sat]
                _6527 = _6526 * _6526;
                _6529 = (_6527 * _6527) * _6526;
                _6532 = 1.0f - ((_5716 * _5716) * 0.9999f);
                _6573 = ((exp2(log2(saturate(dot(float3(_1474, _1475, _1476), float3(_6504, _6505, _6506)))) * 1024.0f) * 50.0f) + (saturate(_6522) * max((((0.5f / ((((_6524 * 0.9999f) + 0.0001f) * _6522) + (_6524 * ((_6522 * 0.9999f) + 0.0001f)))) * (3.1830987e-05f / (_6532 * _6532))) * (lerp(_6529, 1.0f, 0.08f))), 0.0f))) * (((1.0f - ((_6518 * _6518) * (3.0f - (_6518 * 2.0f)))) * (1.0f - ((_6516 * _6516) * (3.0f - (_6516 * 2.0f))))) * saturate(1.0f - (_124 * 0.001f)));
                _6715 = (_6454 * (_6573 + _5710));
                _6716 = (_6452 * (_6573 + _5711));
                _6717 = (_6450 * (_6573 + _5712));
                _6718 = _5713;
                _6719 = _5714;
                _6720 = _5715;
                _6721 = _6449;
                _6722 = _6448;
                _6723 = _6447;
              } else {
                _6715 = (_5710 * _6454);
                _6716 = (_5711 * _6452);
                _6717 = (_5712 * _6450);
                _6718 = _5713;
                _6719 = _5714;
                _6720 = _5715;
                _6721 = _6449;
                _6722 = _6448;
                _6723 = _6447;
              }
            }
          }
        }
      }
    }
    _6724 = _6723 + _3716;
    _6725 = _6722 + _3715;
    _6726 = _6721 + _3714;
    // RenoDX: >>> [Patch: FoliageTransmission] [Version: 1.16.00]
    // Description: Adds the gated foliage transmission accumulated above to the three clean-decompile direct-diffuse outputs after all native component equations have completed. With the feature disabled the accumulators are zero, so this insertion is exactly neutral.
    _6724 += _rndx_foliageTransR;
    _6725 += _rndx_foliageTransG;
    _6726 += _rndx_foliageTransB;
    // RenoDX: <<< [Patch: FoliageTransmission]
    _6729 = (uint)((uint)(_frameNumber.x)) * (uint)(13);
    [branch]
    if ((((int)((int)((uint)((uint)(_6729)) + (uint)((uint)(_99)))) | (int)((int)((uint)((uint)(_6729)) + (uint)((uint)(_104))))) & 31) == 0) {
      __3__38__0__1__g_sceneColorLightingOnlyForAwbUAV[int2(((int)(_99) >> 5), ((int)(_104) >> 5))] = float4((half)(half(_6724)), (half)(half(_6725)), (half)(half(_6726)), 1.0f);
    }
    _6744 = ((uint)(_4080 & 24) > (uint)23);
    if (_4151) {
      _6758 = saturate(exp2((_4146 * _4146) * (_124 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _6758 = select((_cavityParams.z > 0.0f), select(_186, 0.0f, _1464), 1.0f);  // [sem: expr_sat]
    }
    _6767 = select(_4148, 1.0f, (select((_cavityParams.x == 0.0f), 1.0f, _6758) * select((_185 && _6744), (1.0f - _1464), 1.0f)));
    _6774 = min(60000.0f, (_6767 * (((_3434 * _3118) * _3429) - min(0.0f, (-0.0f - _6717)))));
    _6781 = min(60000.0f, (_6767 * (((_3434 * _3126) * _3428) - min(0.0f, (-0.0f - _6716)))));
    _6788 = min(60000.0f, ((((_3434 * _3134) * _3427) - min(0.0f, (-0.0f - _6715))) * _6767));
    _6791 = 1.0f - _renderParams.x;
    _6794 = half((_renderParams.x * _4020) + _6791);
    _6797 = half((_renderParams.x * _4021) + _6791);
    _6800 = half((_renderParams.x * _4022) + _6791);
    if (_4148) {
      if (_renderParams2.x == 0.0f) {
        _6818 = (half)(exp2((half)((half)(log2(_6794)) * 0.5h)));
        _6819 = (half)(exp2((half)((half)(log2(_6797)) * 0.5h)));
        _6820 = (half)(exp2((half)((half)(log2(_6800)) * 0.5h)));
      } else {
        _6818 = _6794;
        _6819 = _6797;
        _6820 = _6800;
      }
      _6825 = _6818;
      _6826 = _6819;
      _6827 = _6820;
      _6828 = (half)(select(((_4080 & -5) == 33), 0.0f, _3717));
    } else {
      if (!(_4147 == 54)) {
        _6818 = _6794;
        _6819 = _6797;
        _6820 = _6800;
        _6825 = _6818;
        _6826 = _6819;
        _6827 = _6820;
        _6828 = (half)(select(((_4080 & -5) == 33), 0.0f, _3717));
      } else {
        _6825 = _6794;
        _6826 = _6797;
        _6827 = _6800;
        _6828 = 0.0h;
      }
    }
    _6829 = float(_6825);
    _6830 = float(_6826);
    _6831 = float(_6827);
    if (_4120) {
      _6838 = saturate(((_6830 + _6829) + _6831) * 1.2f);  // [sem: expr_sat]
    } else {
      _6838 = 1.0f;  // [sem: expr_sat]
    }
    _6839 = float(_6828);
    _6845 = (0.7f / min(max(max(max(_6829, _6830), _6831), 0.01f), 0.7f)) * _6838;
    _6848 = ((_6845 * _6829) + -0.04f) * _6839;
    _6851 = ((_6845 * _6830) + -0.04f) * _6839;
    _6854 = ((_6845 * _6831) + -0.04f) * _6839;
    _6855 = _6848 + 0.04f;
    _6856 = _6851 + 0.04f;
    _6857 = _6854 + 0.04f;
    if ((_4080 == 54) || ((_4080 == 33) || (_4249 || (_4250 || _4177)))) {
      // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
      _6871 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__3__40__0__0__g_samplerClamp, float2(min(0.99f, _1482), (1.0f - max(0.02f, float(_177)))), 0.0f);
      _6875 = _6871.y;
      _6876 = _6871.x;
    } else {
      _6875 = _3430;
      _6876 = _3431;
    }
    _6878 = (_6876 * _6855) + _6875;
    _6880 = (_6876 * _6856) + _6875;
    _6882 = (_6876 * _6857) + _6875;
    _6884 = (1.0f - _6876) - _6875;
    _6887 = ((0.96f - _6848) * 0.04761905f) + _6855;
    _6890 = ((0.96f - _6851) * 0.04761905f) + _6856;
    _6893 = ((0.96f - _6854) * 0.04761905f) + _6857;
    _6900 = _6884 * saturate(1.0f - _3722);
    _6901 = _6900 * ((_6878 * _6887) / (1.0f - (_6884 * _6887)));
    _6906 = _6900 * ((_6880 * _6890) / (1.0f - (_6884 * _6890)));
    _6911 = ((_6882 * _6893) / (1.0f - (_6884 * _6893))) * _6900;
    _6913 = float(1.0h - _6828);
    _6920 = half(((_6913 * _6829) * saturate((1.0f - _6878) - _6901)) + _6901);
    _6927 = half(((_6913 * _6830) * saturate((1.0f - _6880) - _6906)) + _6906);
    _6934 = half(((_6913 * _6831) * saturate((1.0f - _6882) - _6911)) + _6911);
    _6935 = float(_6920);
    _6936 = float(_6927);
    _6937 = float(_6934);
    if (_4080 == 65) {
      _6942 = max(1e-06f, _exposure2.x);
      _6950 = ((pow(_4243, 16.0f)) * 50.265484f) / (((_6942 * _6942) * 1e+06f) + 1.0f);
      _6967 = (((((_6937 * _6726) * _6950) - _6726) * _1430) + _6726);
      _6968 = (((((_6936 * _6725) * _6950) - _6725) * _1430) + _6725);
      _6969 = (((((_6935 * _6724) * _6950) - _6724) * _1430) + _6724);
    } else {
      _6967 = _6726;
      _6968 = _6725;
      _6969 = _6724;
    }
    _6974 = ((__3__36__0__0__g_caustic.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_111, _113), 0.0f)).x) * 0.31830987f;
    _6980 = (min(65535.0f, _6720) + _3713) + (((_6974 * _4003) + _6969) * _6935);
    _6986 = (min(65535.0f, _6719) + _3712) + (((_6974 * _4009) + _6968) * _6936);
    _6992 = (min(65535.0f, _6718) + _3711) + (((_6974 * _4015) + _6967) * _6937);
    _6997 = exp2((saturate(_441) * 20.0f) + -8.0f) + -0.00390625f;
    _7006 = select((_444 < 0.04045f), (_444 * 0.07739938f), exp2(log2((_444 + 0.055f) * 0.94786733f) * 2.4f)) * _6997;
    _7015 = select((_443 < 0.04045f), (_443 * 0.07739938f), exp2(log2((_443 + 0.055f) * 0.94786733f) * 2.4f)) * _6997;
    _7024 = select((_442 < 0.04045f), (_442 * 0.07739938f), exp2(log2((_442 + 0.055f) * 0.94786733f) * 2.4f)) * _6997;
    _7029 = ((_7015 * 0.33951f) + (_7006 * 0.61312f)) + (_7024 * 0.04737f);
    _7034 = ((_7015 * 0.91636f) + (_7006 * 0.0702f)) + (_7024 * 0.01345f);
    _7039 = ((_7015 * 0.10958f) + (_7006 * 0.02062f)) + (_7024 * 0.8698f);
    if (_368) {
      _7045 = (_7039 + _6992);
      _7046 = (_7034 + _6986);
      _7047 = (_7029 + _6980);
    } else {
      _7045 = _6992;
      _7046 = _6986;
      _7047 = _6980;
    }
    _7049 = _7047 + (_6839 * _6774);
    _7051 = _7046 + (_6839 * _6781);
    _7053 = _7045 + (_6839 * _6788);
    if (!(((_132 || _134) || _136) || _138)) {
      _7058 = QuadReadLaneAt(_7049, 0);
      _7059 = QuadReadLaneAt(_7051, 0);
      _7060 = QuadReadLaneAt(_7053, 0);
      _7061 = QuadReadLaneAt(_7049, 1);
      _7062 = QuadReadLaneAt(_7051, 1);
      _7063 = QuadReadLaneAt(_7053, 1);
      _7064 = QuadReadLaneAt(_7049, 2);
      _7065 = QuadReadLaneAt(_7051, 2);
      _7066 = QuadReadLaneAt(_7053, 2);
      _7067 = QuadReadLaneAt(_7049, 3);
      _7068 = QuadReadLaneAt(_7051, 3);
      _7069 = QuadReadLaneAt(_7053, 3);
      _7083 = ((((_7063 + _7060) + _7066) + _7069) * 0.25f);
      _7084 = ((((_7062 + _7059) + _7065) + _7068) * 0.25f);
      _7085 = ((((_7061 + _7058) + _7064) + _7067) * 0.25f);
    } else {
      _7083 = _7053;
      _7084 = _7051;
      _7085 = _7049;
    }
    [branch]
    if ((((int)(_104) | (int)(_99)) & 1) == 0) {
      _7090 = dot(float3(_7085, _7084, _7083), float3(0.212671f, 0.71516f, 0.072169f));
      __3__38__0__1__g_diffuseHalfPrevUAV[int2(((int)(_99) >> 1), ((int)(_104) >> 1))] = float4(min(60000.0f, _7085), min(60000.0f, _7084), min(60000.0f, _7083), min(60000.0f, select((_2112 != 0), (-0.0f - _7090), _7090)));
    }
    if (_6744) {
      if (_6828 == 0.0h) {
        _7111 = (((_6920 == 0.0h) || (_6927 == 0.0h)) || (_6934 == 0.0h));
      } else {
        _7111 = false;
      }
      _7123 = ((int)(uint)(_7111));
      __3__38__0__1__g_sceneSpecularUAV[int2(_99, _104)] = float4(((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _6774)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _6781)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _6788)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _3146)))))));
      _7146 = _7123;
      _7147 = _7045;
      _7148 = _7046;
      _7149 = _7047;
    } else {
      if ((((_4080 == 96) || _4250) || ((_4080 & -4) == 64)) || ((_124 <= 10.0f) && _4177)) {
        _7123 = 0;
        __3__38__0__1__g_sceneSpecularUAV[int2(_99, _104)] = float4(((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _6774)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _6781)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _6788)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _3146)))))));
        _7146 = _7123;
        _7147 = _7045;
        _7148 = _7046;
        _7149 = _7047;
      } else {
        _7146 = 0;
        _7147 = (_7045 + _6788);
        _7148 = (_7046 + _6781);
        _7149 = (_7047 + _6774);
      }
    }
    if (_368 && ((uint)((int)(_4080) + (int)(-52)) > (uint)15)) {
      _7154 = dot(float3(_7029, _7034, _7039), float3(0.212671f, 0.71516f, 0.072169f));
      _7158 = max((max(_7154, 1.0f) / max(_7154, 0.1f)), 0.0f);
      _7169 = ((_7147 - _7039) + (_7158 * _7039));
      _7170 = ((_7148 - _7034) + (_7158 * _7034));
      _7171 = ((_7149 - _7029) + (_7158 * _7029));
    } else {
      _7169 = _7147;
      _7170 = _7148;
      _7171 = _7149;
    }
    _7172 = min(60000.0f, _7171);
    _7173 = min(60000.0f, _7170);
    _7174 = min(60000.0f, _7169);
    if (!_129) {
      [branch]
      if (!(_7146 == 0)) {
        _7180 = __3__38__0__1__g_sceneColorUAV[int2(_99, _104)].x;
        _7181 = __3__38__0__1__g_sceneColorUAV[int2(_99, _104)].y;
        _7182 = __3__38__0__1__g_sceneColorUAV[int2(_99, _104)].z;
        _7187 = (_7182 + _7174);
        _7188 = (_7181 + _7173);
        _7189 = (_7180 + _7172);
      } else {
        _7187 = _7174;
        _7188 = _7173;
        _7189 = _7172;
      }
      if (!(_renderParams.y == 0.0f)) {
        _7194 = dot(float3(_7189, _7188, _7187), float3(0.212671f, 0.71516f, 0.072169f));
        _7199 = min((max(0.01f, _exposure3.w) * 4096.0f), _7194);
        _7200 = max(1e-09f, _7194);
        _7208 = ((_7199 * _7187) / _7200);
        _7209 = ((_7199 * _7188) / _7200);
        _7210 = ((_7199 * _7189) / _7200);
      } else {
        _7208 = _7187;
        _7209 = _7188;
        _7210 = _7189;
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
      if (FOLIAGE_AO_STRENGTH > 0.0f && ((uint)(_120 - 12) < 7u)) {
        half4 _rndx_shadow = __3__36__0__0__g_sceneShadowColor.Load(int3(_99, _104, 0));
        float _rndx_directRatio = saturate(dot(float3(_rndx_shadow.xyz), float3(0.333f, 0.333f, 0.333f)));
        float _rndx_ao = lerp(1.0f, float(_1403.x), _rndx_directRatio * FOLIAGE_AO_STRENGTH);
        _7210 *= _rndx_ao;
        _7209 *= _rndx_ao;
        _7208 *= _rndx_ao;
      }
      // RenoDX: <<< [Patch: FoliageFinalAO]
      __3__38__0__1__g_sceneColorUAV[int2(_99, _104)] = float4(_7210, _7209, _7208, 1.0f);
    }
  }
}
