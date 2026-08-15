// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports "../shared.h" for the effective RenoDX option gates and injected constants used below.
#include "../shared.h"
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
struct SurfelData {
  uint _baseColor;
  uint _normal;
  half3 _radiance;
  uint16_t _radius;
};
// RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
// Description: Smooths large square diffuse-GI patches that appear on snowy terrain in RR-on EvaluateDiffuseRadianceCS variants. Vanilla quantizes surfel voxel clipmap lookups with floor(wrappedViewPos...), so adjacent pixels can snap to visible cell boundaries. When Snow / Fog Lighting Fixes is enabled, this adds small per-pixel, frame-varying jitter before quantization; Off returns the exact vanilla coordinate.
static const float RENODX_SURFEL_JITTER_AMOUNT = 1.0f;

float RenoDXSurfelHash(float2 p) {
  return frac(frac(dot(p, float2(0.0671105608344078f, 0.005837149918079376f))) * 52.98291778564453f);
}

float3 RenoDXSurfelVoxelJitter(float3 voxelCoord, float2 pixelCoord, float frameIndex, uint frameNumber) {
  if (SNOW_FOG_FIX <= 0.0f) {
    return voxelCoord;
  }

  float rand0 = RenoDXSurfelHash(pixelCoord);
  float rand1 = RenoDXSurfelHash(pixelCoord + float2(frameIndex * 32.665000915527344f, frameIndex * 11.8149995803833f));
  float framePhase = frac(float(frameNumber) * 0.6180339887f);
  float r0 = frac(rand0 + framePhase) * 2.0f - 1.0f;
  float r1 = frac(rand1 + framePhase * 1.3247179572f) * 2.0f - 1.0f;
  float r2 = frac(rand0 * 7.461f + rand1 * 3.517f + framePhase * 0.7548776662f) * 2.0f - 1.0f;
  return voxelCoord + float3(r0, r1, r2) * RENODX_SURFEL_JITTER_AMOUNT;
}
// RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]


Texture3D<float> __3__36__0__1__g_skyVisibilityVoxelsTexturesLikeUav : register(t231, space36);

Texture3D<float> __3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav : register(t232, space36);

Texture3D<uint> __3__36__0__0__g_surfelIndicesVoxelsTextures : register(t223, space36);

Texture3D<uint4> __3__36__0__0__g_axisAlignedDistanceTextures : register(t224, space36);

Texture2D<float2> __3__36__0__0__g_texNetDensity : register(t74, space36);

Texture3D<float> __3__36__0__0__g_texCloudVolumeShadow : register(t201, space36);

Texture2D<float4> __3__36__0__0__g_terrainShadowDepth : register(t41, space36);

Texture2DArray<float4> __3__36__0__0__g_dynamicShadowDepthArray : register(t237, space36);

Texture2DArray<float4> __3__36__0__0__g_shadowDepthArray : register(t240, space36);

Texture2DArray<half4> __3__36__0__0__g_shadowColorArray : register(t242, space36);

TextureCube<float4> __3__36__0__0__g_environmentColor : register(t233, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t150, space36);

Texture2D<float> __3__36__0__0__g_raytracingDiffuseRayInversePDF : register(t157, space36);

Texture2D<float4> __3__36__0__0__g_raytracingBaseColor : register(t158, space36);

Texture2D<float4> __3__36__0__0__g_raytracingNormal : register(t159, space36);

StructuredBuffer<SurfelData> __3__37__0__0__g_surfelDataBuffer : register(t0, space37);

Texture2D<uint4> __3__36__0__0__g_baseColor : register(t21, space36);

Texture2D<uint2> __3__36__0__0__g_normalDepth : register(t25, space36);

Texture2D<uint2> __3__36__0__0__g_normalDepthPrev : register(t77, space36);

Texture2D<half4> __3__36__0__0__g_sceneShadowColor : register(t56, space36);

RWTexture2D<float4> __3__38__0__1__g_raytracingHitResultUAV : register(u43, space38);

RWTexture2D<half4> __3__38__0__1__g_diffuseResultUAV : register(u12, space38);

cbuffer __1__3__0__0__PipelineProperty : register(b0, space3) {
  float2 g_screenSpaceScale : packoffset(c000.x);
  float2 __padding : packoffset(c000.z);
};

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

cbuffer __3__35__0__0__ShadowConstantBuffer : register(b20, space35) {
  struct {
    float4 _shadowDepthRanges;
    float4 _massiveShadowSizeAndInvSize;
    uint4 _shadowParam;
    int4 _updateIndex;
    float4 _jitterOffset[8];
    float4 _shadowRelativePosition;
    float4 _dynmaicShadowSizeAndInvSize;
    column_major float4x4 _dynamicShadowProjTexScale[2];
    column_major float4x4 _dynamicShadowProjRelativeTexScale[2];
    float4 _dynamicShadowFrustumPlanes0[6];
    float4 _dynamicShadowFrustumPlanes1[6];
    column_major float4x4 _dynamicShadowViewProj[2];
    column_major float4x4 _dynamicShadowViewProjPrev[2];
    column_major float4x4 _invDynamicShadowViewProj[2];
    float4 _dynamicShadowPosition[2];
    float4 _shadowSizeAndInvSize;
    column_major float4x4 _shadowProjTexScale[2];
    column_major float4x4 _shadowProjRelativeTexScale[2];
    float4 _staticShadowPosition[2];
    column_major float4x4 _shadowViewProj[2];
    column_major float4x4 _shadowViewProjRelative[2];
    column_major float4x4 _invShadowViewProj[2];
    float4 _currShadowFrustumPlanes[6];
    column_major float4x4 _currShadowViewProjRelative;
    column_major float4x4 _currInvShadowViewProjRelative;
    float4 _currStaticShadowPosition;
    float4 _currTerrainShadowFrustumPlanes[6];
    column_major float4x4 _terrainShadowProjTexScale;
    column_major float4x4 _terrainShadowProjRelativeTexScale;
    column_major float4x4 _terrainShadowViewProj;
    column_major float4x4 _nearFieldShadowViewProj;
    float4 _nearFieldShadowFlag;
    float4 _nearFieldShadowFrustumPlanes[6];
  } __3__35__0__0__ShadowConstantBuffer_view : packoffset(c000.x);

  // Raw views preserve dynamic cbufferLoadLegacy.f32/i32 access.
  float4 __3__35__0__0__ShadowConstantBuffer_raw[155] : packoffset(c0);
  uint4 __3__35__0__0__ShadowConstantBuffer_raw_uint[155] : packoffset(c0);
};

cbuffer __3__35__0__0__VoxelGlobalIlluminationConstantBuffer : register(b1, space35) {
  struct {
    float4 _voxelParams;
    float4 _invClipmapExtent;
    float4 _wrappedViewPosForInject;
    float4 _clipmapOffsetsForInject[8];
    float4 _clipmapRelativeIndexOffsetsForInject[8];
    float4 _wrappedViewPos;
    float4 _clipmapOffsets[8];
    float4 _clipmapOffsetsPrev[8];
    float4 _clipmapRelativeIndexOffsets[8];
    float4 _clipmapUVParams[2];
    float4 _clipmapUVRelativeOffset;
    uint4 _surfelTimestamps;
  } __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view : packoffset(c000.x);

  // Raw views preserve dynamic cbufferLoadLegacy.f32/i32 access.
  float4 __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[48] : packoffset(c0);
  uint4 __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw_uint[48] : packoffset(c0);
};

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b32, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
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

SamplerState __3__40__0__0__g_samplerTrilinear : register(s7, space40);

SamplerState __0__4__0__0__g_staticBilinearWrapUWClampV : register(s1, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

SamplerState __0__4__0__0__g_staticVoxelSampler : register(s12, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

[numthreads(16, 16, 1)]
void main(
  uint3 SV_DispatchThreadID : SV_DispatchThreadID,
  uint3 SV_GroupID : SV_GroupID,
  uint3 SV_GroupThreadID : SV_GroupThreadID,
  uint SV_GroupIndex : SV_GroupIndex
) {
  int4 _55;
  int _65;
  int _69;
  uint _74;
  uint _75;
  float _76;
  float _77;
  float _90;
  float _93;
  uint2 _99;
  int _102;
  int _106;
  float _121;
  float _122;
  float _123;
  float _125;
  float _126;
  float _127;
  float _128;
  float _129;
  float _165;
  float _166;
  float _167;
  float _168;
  float _171;
  float _181;
  bool _198;
  int _251;
  int _309;
  int _330;
  int _388;
  int _396;
  int _459;
  int _460;
  int _461;
  int _462;
  int _489;
  int _552;
  int _553;
  int _554;
  int _555;
  int _561;
  int _562;
  int _563;
  int _564;
  int _565;
  int _568;
  int _569;
  int _570;
  int _571;
  int _574;
  int _575;
  int _576;
  int _577;
  int _578;
  int _585;
  int _606;
  int _612;
  int _613;
  int _614;
  int _615;
  int _616;
  float _675;
  float _676;
  float _677;
  float _678;
  float _679;
  float _680;
  float _681;
  int _682;
  float _921;
  float _922;
  float _923;
  float _924;
  float _941;
  float _942;
  float _943;
  float _963;
  float _964;
  float _965;
  float _987;
  float _988;
  float _989;
  float _996;
  float _997;
  float _998;
  float _999;
  float _1000;
  float _1001;
  float _1002;
  float _1003;
  int _1004;
  float _1005;
  float _1006;
  float _1007;
  float _1008;
  float _1009;
  bool _1024;
  float _1189;
  float _1190;
  float _1191;
  float _1192;
  float _1203;
  float _1204;
  float _1205;
  float _1206;
  float _1207;
  float _1208;
  float _1209;
  float _1210;
  float _1211;
  int _1212;
  int _1214;
  int _1275;
  int _1276;
  float _1283;
  float _1343;
  float _1344;
  float _1345;
  float _1346;
  int _1352;
  int _1410;
  int _1447;
  float _1448;
  float _1449;
  float _1450;
  float _1451;
  float _1452;
  int _1454;
  float _1671;
  float _1672;
  float _1691;
  float _1692;
  float _1693;
  float _1694;
  float _1695;
  float _1697;
  float _1698;
  float _1699;
  float _1700;
  float _1701;
  float _1702;
  int _1719;
  int _1782;
  int _1783;
  int _1784;
  int _1785;
  int _1811;
  int _1874;
  int _1875;
  int _1876;
  int _1877;
  int _1883;
  int _1884;
  int _1885;
  int _1886;
  int _1887;
  int _1890;
  int _1891;
  int _1892;
  int _1893;
  int _1896;
  int _1897;
  int _1898;
  int _1899;
  int _1900;
  int _1907;
  int _1928;
  int _1934;
  int _1935;
  int _1936;
  int _1937;
  int _1938;
  float _1997;
  float _1998;
  float _1999;
  float _2000;
  int _2001;
  float _2232;
  float _2233;
  float _2234;
  float _2235;
  float _2252;
  float _2253;
  float _2254;
  float _2255;
  float _2283;
  float _2284;
  float _2285;
  float _2286;
  float _2287;
  bool _2301;
  float _2324;
  float _2325;
  float _2326;
  float _2327;
  float _2413;
  float _2414;
  float _2415;
  float _2558;
  float _2559;
  float _2560;
  float _2561;
  half _2562;
  half _2563;
  half _2564;
  half _2565;
  float _2703;
  float _2704;
  float _2705;
  float _2706;
  float _2707;
  float _2708;
  float _2709;
  float _2710;
  half _2711;
  half _2712;
  half _2713;
  half _2714;
  float _2765;
  float _2766;
  float _2767;
  float _2768;
  int _2769;
  int _2770;
  float _2817;
  float _2818;
  float _2819;
  float _2820;
  int _2821;
  int _2822;
  float _2852;
  float _2853;
  float _2854;
  float _2855;
  float _2974;
  float _2975;
  float _2976;
  float _2995;
  float _2996;
  float _2997;
  float _2998;
  float _3080;
  float _3115;
  float _3116;
  float _3117;
  float _3137;
  float _3195;
  float _3296;
  float _3297;
  float _3298;
  float _3366;
  float _3367;
  float _3368;
  float _3369;
  half _3370;
  half _3371;
  half _3372;
  float _3373;
  float _3374;
  float _3375;
  float _3376;
  float _3377;
  float _3509;
  float _3510;
  float _3511;
  float _3615;
  float _3616;
  float _3617;
  float _3618;
  float _3756;
  float _3757;
  float _3758;
  float _3759;
  float _3760;
  float _3791;
  float _3792;
  float _3793;
  float _3794;
  int _3795;
  int _3796;
  float _3827;
  float _3828;
  float _3829;
  float _3830;
  int _3831;
  int _3832;
  float _3862;
  float _3863;
  float _3864;
  float _3865;
  float _3877;
  float _3878;
  float _3879;
  float _3898;
  float _3957;
  float _4014;
  float _4068;
  float _4137;
  float _4138;
  float _4139;
  float _4192;
  float _4193;
  float _4194;
  float _4214;
  float _4215;
  float _4216;
  float _4217;
  int _4228;
  int _4286;
  float _4327;
  float _4353;
  float _4354;
  float _4355;
  float _4412;
  float _4413;
  float _4414;
  int _4517;
  int _4575;
  int _4588;
  float _4589;
  float _4590;
  float _4591;
  float _4592;
  float _4593;
  float _4594;
  float _4595;
  float _4596;
  int _4598;
  int _4648;
  int _4711;
  int _4712;
  int _4713;
  int _4714;
  int _4743;
  int _4806;
  int _4807;
  int _4808;
  int _4809;
  int _4815;
  int _4816;
  int _4817;
  int _4818;
  int _4819;
  int _4822;
  int _4823;
  int _4824;
  int _4825;
  int _4828;
  int _4829;
  int _4830;
  int _4831;
  int _4832;
  int _4839;
  int _4860;
  int _4866;
  int _4867;
  int _4868;
  int _4869;
  int _4870;
  float _4929;
  float _4930;
  float _4931;
  float _4932;
  int _4933;
  float _5158;
  float _5159;
  float _5160;
  float _5161;
  float _5178;
  float _5179;
  float _5180;
  float _5206;
  float _5207;
  float _5208;
  float _5209;
  float _5211;
  float _5212;
  float _5213;
  float _5214;
  float _5243;
  float _5244;
  float _5245;
  float _5265;
  float _5330;
  float _5431;
  float _5432;
  float _5433;
  float _5614;
  float _5615;
  float _5616;
  float _5617;
  float _5755;
  float _5756;
  float _5757;
  float _5758;
  float _5759;
  int _5810;
  int _5811;
  float _5812;
  float _5813;
  float _5814;
  float _5815;
  int _5862;
  int _5863;
  float _5864;
  float _5865;
  float _5866;
  float _5867;
  float _5897;
  float _5898;
  float _5899;
  float _5900;
  float _5912;
  float _5913;
  float _5914;
  float _5933;
  float _6015;
  float _6033;
  float _6034;
  float _6035;
  float _6049;
  float _6050;
  float _6051;
  float _201;
  float _202;
  float _203;
  float _204;
  float _206;
  float _207;
  float _208;
  float _209;
  bool _210;
  float _211;
  float4 _217;
  float4 _223;
  float _231;
  float _232;
  float _233;
  float _235;
  float _236;
  float _237;
  float _238;
  float _239;
  float _240;
  float _241;
  int _243;
  float _244;
  float _245;
  float _246;
  float _247;
  float _248;
  float _249;
  float4 _253;
  float4 _281;
  int _291;
  int _292;
  int _293;
  int _306;
  float _316;
  float _317;
  float _318;
  float _322;
  float _326;
  float _327;
  float _328;
  float4 _332;
  float4 _360;
  int _370;
  int _371;
  int _372;
  int _385;
  float4 _398;
  float4 _426;
  int _436;
  int _437;
  int _438;
  int _451;
  int _474;
  bool _478;
  int _479;
  int _480;
  int _481;
  int _482;
  float _484;
  float4 _491;
  float4 _519;
  int _529;
  int _530;
  int _531;
  int _544;
  int _580;
  int _586;
  int _587;
  int _588;
  int _600;
  int _607;
  int _617;
  uint _622;
  int _628;
  uint _635;
  float _637;
  float4 _639;
  int _684;
  int _687;
  int _689;
  int16_t _692;
  half _695;
  half _696;
  half _697;
  float _703;
  float _704;
  float _705;
  float _730;
  float _731;
  float _732;
  float _744;
  float _745;
  float _746;
  float _748;
  bool _750;
  float _754;
  float _770;
  float _771;
  float _772;
  float _806;
  float _807;
  float _808;
  bool _826;
  float _827;
  float _828;
  float _829;
  float _832;
  float _835;
  float _838;
  float _839;
  float _843;
  float _844;
  float _845;
  float _871;
  float _875;
  float _900;
  bool _904;
  float _914;
  float _915;
  float _916;
  float _917;
  int _918;
  float _927;
  float _947;
  float _948;
  float _949;
  float _950;
  float _953;
  float _954;
  float _958;
  float _979;
  bool _1011;
  float _1028;
  float _1029;
  float _1030;
  float _1066;
  float _1067;
  float _1068;
  float _1069;
  float _1072;
  float _1073;
  uint2 _1098;
  float _1105;
  float4 _1136;
  float _1161;
  float _1162;
  float _1163;
  float _1165;
  float _1166;
  float _1167;
  float _1168;
  float _1174;
  float _1176;
  float _1184;
  float _1193;
  float _1194;
  float4 _1216;
  float4 _1244;
  int _1254;
  int _1255;
  int _1256;
  int _1269;
  float _1289;
  float _1291;
  float _1292;
  float _1305;
  float _1306;
  float _1307;
  float _1311;
  float _1312;
  float _1313;
  float _1317;
  float _1318;
  float _1319;
  float _1329;
  float _1350;
  float4 _1354;
  float4 _1382;
  int _1392;
  int _1393;
  int _1394;
  int _1407;
  float _1420;
  float _1421;
  float _1422;
  bool _1426;
  bool _1427;
  bool _1428;
  float _1429;
  float _1430;
  float _1431;
  bool _1432;
  bool _1433;
  bool _1434;
  float4 _1456;
  float4 _1475;
  float _1479;
  float _1480;
  float _1481;
  int _1497;
  float _1504;
  float _1505;
  float _1506;
  float _1507;
  float _1516;
  float _1517;
  float _1518;
  float _1519;
  float _1520;
  float _1521;
  int _1525;
  int _1526;
  int _1527;
  uint4 _1534;
  float _1551;
  float _1574;
  float _1575;
  float _1576;
  float _1607;
  float _1609;
  float _1616;
  float _1628;
  float _1634;
  float _1635;
  float _1651;
  float _1657;
  float _1677;
  float _1678;
  float _1682;
  float _1683;
  float _1684;
  int _1685;
  int _1703;
  float _1706;
  float _1710;
  float _1711;
  float _1712;
  float4 _1721;
  float4 _1749;
  int _1759;
  int _1760;
  int _1761;
  int _1774;
  int _1797;
  bool _1801;
  int _1802;
  int _1803;
  int _1804;
  int _1805;
  float _1806;
  float4 _1813;
  float4 _1841;
  int _1851;
  int _1852;
  int _1853;
  int _1866;
  int _1902;
  int _1908;
  int _1909;
  int _1910;
  int _1922;
  int _1929;
  int _1939;
  uint _1944;
  int _1950;
  uint _1957;
  float _1959;
  float4 _1961;
  int _2003;
  int _2006;
  int _2008;
  int16_t _2011;
  half _2014;
  half _2015;
  half _2016;
  float _2022;
  float _2023;
  float _2024;
  float _2049;
  float _2050;
  float _2051;
  float _2063;
  float _2064;
  float _2065;
  float _2067;
  bool _2069;
  float _2073;
  float _2089;
  float _2090;
  float _2091;
  float _2113;
  float _2116;
  float _2119;
  float _2128;
  float _2129;
  float _2130;
  float _2150;
  float _2153;
  float _2156;
  float _2157;
  float _2161;
  float _2162;
  float _2163;
  float _2189;
  float _2193;
  float _2218;
  float _2225;
  float _2226;
  float _2227;
  float _2228;
  int _2229;
  float _2238;
  float _2263;
  float _2273;
  float _2274;
  float _2275;
  float _2277;
  float _2278;
  float _2290;
  bool _2291;
  float _2305;
  float _2306;
  float _2309;
  float _2330;
  float _2334;
  float _2336;
  float _2340;
  float _2341;
  float _2342;
  float _2372;
  float _2377;
  float _2378;
  half4 _2405;
  float _2422;
  float _2423;
  float _2424;
  float _2429;
  float _2430;
  float _2431;
  float _2451;
  float _2455;
  float _2462;
  float _2463;
  bool _2470;
  float _2479;
  float _2480;
  float _2481;
  float _2501;
  float _2505;
  bool _2516;
  float _2517;
  float _2518;
  float _2519;
  int _2520;
  float _2526;
  float _2527;
  int _2530;
  int _2531;
  uint _2534;
  uint _2535;
  half4 _2552;
  int _2566;
  float4 _2568;
  float4 _2574;
  float4 _2580;
  float4 _2586;
  float _2591;
  float _2595;
  float _2599;
  float _2603;
  float _2606;
  float _2607;
  float _2608;
  float _2609;
  float _2612;
  float _2628;
  float _2634;
  float _2646;
  float _2650;
  float _2651;
  float _2652;
  float _2653;
  float _2654;
  float _2655;
  float _2658;
  float _2661;
  float _2664;
  float _2666;
  float _2667;
  float _2668;
  float _2669;
  float _2670;
  float _2675;
  float _2688;
  float _2690;
  float _2696;
  float _2734;
  float _2738;
  float _2742;
  float _2745;
  float _2746;
  bool _2757;
  float _2790;
  float _2794;
  float _2798;
  bool _2809;
  int _2832;
  int _2833;
  uint _2836;
  uint _2837;
  uint _2856;
  float4 _2858;
  float4 _2864;
  float4 _2870;
  float4 _2876;
  float _2881;
  float _2885;
  float _2889;
  float _2893;
  float _2896;
  float _2897;
  float _2898;
  float _2899;
  float _2902;
  float _2918;
  float _2924;
  float _2936;
  float _2940;
  float _2941;
  float _2942;
  float _2943;
  float _2944;
  float _2945;
  float _2948;
  float _2951;
  float _2954;
  float _2956;
  float _2982;
  float _3003;
  float _3004;
  float _3005;
  float _3006;
  float _3007;
  float _3008;
  float _3028;
  float _3032;
  float _3036;
  float _3051;
  float4 _3055;
  float _3060;
  float _3065;
  float _3067;
  float _3074;
  float _3081;
  half _3082;
  half _3083;
  half _3084;
  half _3098;
  half _3099;
  half _3100;
  bool _3103;
  float _3140;
  float _3146;
  float _3151;
  float _3155;
  float _3157;
  float _3159;
  float _3165;
  float _3166;
  float _3172;
  float2 _3200;
  float _3219;
  float _3220;
  float _3222;
  float _3228;
  float _3231;
  float _3234;
  float _3240;
  float _3241;
  float _3242;
  float _3261;
  float _3269;
  float _3281;
  float _3284;
  float _3290;
  float _3311;
  float _3312;
  float _3318;
  float _3320;
  float _3327;
  float _3328;
  float _3329;
  float _3330;
  float _3349;
  bool _3351;
  float _3352;
  float _3353;
  float _3354;
  float _3355;
  half _3358;
  half _3359;
  half _3360;
  float _3385;
  float _3393;
  float _3404;
  float _3406;
  float _3407;
  float _3408;
  float _3410;
  float _3411;
  float _3412;
  float _3413;
  float _3414;
  float _3415;
  float _3416;
  float _3421;
  float _3423;
  float _3426;
  float _3427;
  float _3429;
  float _3432;
  float _3433;
  float _3441;
  float _3442;
  float _3443;
  float _3444;
  float _3456;
  float _3460;
  float _3471;
  float _3473;
  float _3475;
  float _3480;
  float _3481;
  float _3485;
  float _3486;
  float _3487;
  float _3488;
  float _3516;
  float _3517;
  float _3518;
  float _3519;
  float _3523;
  float _3524;
  float _3525;
  float _3529;
  float _3530;
  float _3531;
  float _3535;
  float _3539;
  bool _3550;
  float _3558;
  float _3559;
  float _3560;
  float _3564;
  float _3568;
  bool _3579;
  float _3581;
  float _3582;
  float _3583;
  float _3584;
  int _3585;
  float _3591;
  float _3592;
  int _3595;
  int _3596;
  uint _3599;
  uint _3600;
  int _3619;
  float4 _3621;
  float4 _3627;
  float4 _3633;
  float4 _3639;
  float _3644;
  float _3648;
  float _3652;
  float _3656;
  float _3659;
  float _3660;
  float _3661;
  float _3662;
  float _3665;
  float _3681;
  float _3687;
  float _3699;
  float _3703;
  float _3704;
  float _3705;
  float _3706;
  float _3707;
  float _3708;
  float _3711;
  float _3714;
  float _3717;
  float _3719;
  float _3723;
  float _3728;
  float _3741;
  float _3743;
  float _3749;
  float _3764;
  float _3768;
  float _3772;
  bool _3783;
  float _3800;
  float _3804;
  float _3808;
  bool _3819;
  int _3842;
  int _3843;
  uint _3846;
  uint _3847;
  float _3885;
  float _3899;
  float _3900;
  float _3901;
  float _3905;
  float _3909;
  float _3913;
  float _3928;
  float4 _3932;
  float _3937;
  float _3942;
  float _3944;
  float _3951;
  uint4 _3963;
  float _3969;
  float _3972;
  float _3976;
  float _3977;
  float _3978;
  float _3979;
  float _4015;
  float _4017;
  float _4018;
  float _4024;
  float _4029;
  float _4032;
  float _4039;
  float _4045;
  float2 _4071;
  float _4075;
  float _4085;
  float _4086;
  float _4087;
  float _4106;
  float _4112;
  float _4122;
  float _4125;
  float _4131;
  float _4153;
  float _4155;
  float _4162;
  float _4163;
  float _4164;
  float _4165;
  float _4181;
  float _4195;
  float _4196;
  float _4197;
  float _4201;
  float _4202;
  float _4203;
  float4 _4230;
  float4 _4258;
  int _4268;
  int _4269;
  int _4270;
  int _4283;
  float _4306;
  float _4310;
  float _4330;
  bool _4331;
  float4 _4339;
  float _4362;
  float _4366;
  float4 _4370;
  float _4376;
  float _4377;
  float _4378;
  float _4379;
  float _4384;
  float _4385;
  float _4389;
  float _4399;
  float _4400;
  float _4401;
  float _4402;
  float _4407;
  float _4424;
  float _4435;
  float _4436;
  float _4441;
  float _4448;
  int _4459;
  float _4472;
  float _4473;
  float _4476;
  float _4479;
  float _4482;
  float _4483;
  float _4485;
  float _4488;
  float _4490;
  float _4491;
  float _4493;
  float _4494;
  float _4503;
  float _4507;
  float _4510;
  float _4515;
  float4 _4519;
  float4 _4547;
  int _4557;
  int _4558;
  int _4559;
  int _4572;
  float4 _4600;
  float4 _4619;
  float _4623;
  float _4624;
  float _4625;
  int _4641;
  float _4646;
  float4 _4650;
  float4 _4678;
  int _4688;
  int _4689;
  int _4690;
  int _4703;
  int _4728;
  bool _4732;
  int _4733;
  int _4734;
  int _4735;
  int _4736;
  float _4738;
  float4 _4745;
  float4 _4773;
  int _4783;
  int _4784;
  int _4785;
  int _4798;
  int _4834;
  int _4840;
  int _4841;
  int _4842;
  int _4854;
  int _4861;
  int _4871;
  uint _4876;
  int _4882;
  uint _4889;
  float _4891;
  float4 _4893;
  int _4935;
  int _4938;
  int _4940;
  int16_t _4943;
  half _4946;
  half _4947;
  half _4948;
  float _4954;
  float _4955;
  float _4956;
  float _4981;
  float _4982;
  float _4983;
  float _4995;
  float _4996;
  float _4997;
  float _4999;
  bool _5001;
  float _5005;
  float _5021;
  float _5022;
  float _5023;
  float _5045;
  float _5048;
  float _5051;
  float _5060;
  float _5061;
  float _5062;
  float _5080;
  float _5081;
  float _5082;
  float _5083;
  float _5087;
  float _5088;
  float _5089;
  float _5115;
  float _5119;
  float _5144;
  float _5151;
  float _5152;
  float _5153;
  float _5154;
  int _5155;
  float _5164;
  float _5181;
  float _5185;
  float _5186;
  float _5187;
  float _5190;
  float _5193;
  float _5197;
  float _5198;
  float _5199;
  int _5200;
  float _5226;
  float _5227;
  float _5228;
  bool _5231;
  float _5272;
  float _5274;
  float _5275;
  float _5281;
  float _5286;
  float _5292;
  float _5300;
  float _5307;
  float2 _5335;
  float _5357;
  float _5375;
  float _5376;
  float _5377;
  float _5396;
  float _5404;
  float _5416;
  float _5419;
  float _5425;
  float _5453;
  float _5455;
  float _5462;
  float _5463;
  float _5464;
  float _5465;
  float _5488;
  float _5489;
  float _5490;
  float _5510;
  float _5514;
  float _5521;
  float _5522;
  bool _5529;
  float _5541;
  float _5542;
  float _5543;
  float _5563;
  float _5567;
  bool _5578;
  int _5579;
  float _5580;
  float _5581;
  float _5582;
  float _5584;
  float _5590;
  float _5591;
  int _5594;
  int _5595;
  uint _5598;
  uint _5599;
  int _5618;
  float4 _5620;
  float4 _5626;
  float4 _5632;
  float4 _5638;
  float _5643;
  float _5647;
  float _5651;
  float _5655;
  float _5658;
  float _5659;
  float _5660;
  float _5661;
  float _5664;
  float _5680;
  float _5686;
  float _5698;
  float _5702;
  float _5703;
  float _5704;
  float _5705;
  float _5706;
  float _5707;
  float _5710;
  float _5713;
  float _5716;
  float _5718;
  float _5722;
  float _5727;
  float _5740;
  float _5742;
  float _5748;
  float _5779;
  float _5783;
  float _5787;
  float _5790;
  float _5791;
  bool _5802;
  float _5835;
  float _5839;
  float _5843;
  bool _5854;
  int _5877;
  int _5878;
  uint _5881;
  uint _5882;
  float _5920;
  float _5941;
  float _5942;
  float _5943;
  float _5963;
  float _5967;
  float _5971;
  float _5986;
  float4 _5990;
  float _5995;
  float _6000;
  float _6002;
  float _6009;
  float _6018;
  float _6019;
  float _6028;
  float _6041;
  int __loop_jump_target = -1;
  int _39[4];
  _55 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 3))]);
  _39[0] = _55.x;
  _39[1] = _55.y;
  _39[2] = _55.z;
  _39[3] = _55.w;
  _65 = _39[(((uint)(SV_GroupID.x) >> 1) & 3)];
  _69 = select((((int)(SV_GroupID.x) & 1) == 0), _65, ((uint)((uint)(_65)) >> 16));
  _74 = (uint)((uint)(((int)((uint)((uint)(_69)) << 4)) & 4080)) + (uint)(SV_GroupThreadID.x);
  _75 = (uint)((uint)(((uint)((uint)(_69)) >> 4) & 4080)) + (uint)(SV_GroupThreadID.y);
  _76 = (float)((uint)((uint)(_74)));
  _77 = (float)((uint)((uint)(_75)));
  _90 = ((_bufferSizeAndInvSize.z * 4.0f) * (_76 + 0.5f)) + -1.0f;
  _93 = 1.0f - ((_bufferSizeAndInvSize.w * 4.0f) * (_77 + 0.5f));
  _99 = __3__36__0__0__g_normalDepth.Load(int3(_74, _75, 0));  // [sem: _3__36__0__0__g_normalDepth_load]
  _102 = (uint)((uint)(_99.y)) >> 24;  // [sem: _3__36__0__0__g_normalDepth_load_derived]
  _106 = _102 & 127;
  _121 = min(1.0f, ((((float)((uint)((uint)(_99.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepth_load_derived]
  _122 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_99.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepth_load_derived]
  _123 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_99.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepth_load_derived]
  _125 = rsqrt(dot(float3(_121, _122, _123), float3(_121, _122, _123)));  // [sem: invLength]
  _126 = _125 * _121;
  _127 = _125 * _122;
  _128 = _125 * _123;
  _129 = max(1e-07f, (((float)((uint)((uint)(_99.y & 16777215)))) * 5.960465e-08f));  // [sem: _3__36__0__0__g_normalDepth_load_derived]
  _165 = mad((_invViewProjRelative[3].z), _129, mad((_invViewProjRelative[3].y), _93, ((_invViewProjRelative[3].x) * _90))) + (_invViewProjRelative[3].w);
  _166 = (mad((_invViewProjRelative[0].z), _129, mad((_invViewProjRelative[0].y), _93, ((_invViewProjRelative[0].x) * _90))) + (_invViewProjRelative[0].w)) / _165;
  _167 = (mad((_invViewProjRelative[1].z), _129, mad((_invViewProjRelative[1].y), _93, ((_invViewProjRelative[1].x) * _90))) + (_invViewProjRelative[1].w)) / _165;
  _168 = (mad((_invViewProjRelative[2].z), _129, mad((_invViewProjRelative[2].y), _93, ((_invViewProjRelative[2].x) * _90))) + (_invViewProjRelative[2].w)) / _165;
  _171 = _nearFarProj.x / _129;
  _181 = (float)((uint)((uint)(((int)((uint)((uint)((uint)((uint)(_frameNumber.x)) >> 2)) * (uint)(71))) & 31)));
  if (!((uint)_106 > (uint)11) || !(((uint)_106 < (uint)20) || (_106 == 107))) {
    _198 = (_106 == 20);
  } else {
    _198 = true;
  }
  _201 = __3__38__0__1__g_raytracingHitResultUAV[int2(_74, _75)].x;
  _202 = __3__38__0__1__g_raytracingHitResultUAV[int2(_74, _75)].y;
  _203 = __3__38__0__1__g_raytracingHitResultUAV[int2(_74, _75)].z;
  _204 = __3__38__0__1__g_raytracingHitResultUAV[int2(_74, _75)].w;
  _206 = rsqrt(dot(float3(_201, _202, _203), float3(_201, _202, _203)));  // [sem: invLength]
  _207 = _206 * _201;
  _208 = _206 * _202;
  _209 = _206 * _203;
  _210 = (_204 < 0.0f);
  _211 = abs(_204);
  if ((_211 > 0.0f) && (_211 < 10000.0f)) {
    _217 = __3__36__0__0__g_raytracingBaseColor.Load(int3(_74, _75, 0));  // [sem: _3__36__0__0__g_raytracingBaseColor_load]
    _223 = __3__36__0__0__g_raytracingNormal.Load(int3(_74, _75, 0));  // [sem: _3__36__0__0__g_raytracingNormal_load]
    _231 = (_223.x * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_raytracingNormal_load_derived]
    _232 = (_223.y * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_raytracingNormal_load_derived]
    _233 = (_223.z * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_raytracingNormal_load_derived]
    _235 = rsqrt(dot(float3(_231, _232, _233), float3(_231, _232, _233)));  // [sem: invLength]
    _236 = _231 * _235;
    _237 = _232 * _235;
    _238 = _233 * _235;
    _239 = select(_210, 0.0f, _236);
    _240 = select(_210, 0.0f, _237);
    _241 = select(_210, 0.0f, _238);
    _243 = (int)(uint)((int)(_217.w > 0.0f));  // [sem: _3__36__0__0__g_raytracingBaseColor_load_derived]
    _244 = _207 * _211;
    _245 = _208 * _211;
    _246 = _209 * _211;
    _247 = _244 + _166;
    _248 = _245 + _167;
    _249 = _246 + _168;
    _251 = 0;
    while(true) {
      _253 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_251) + (int)(20)))];
      _281 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_251) + (int)(36)))];
      // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.16.00]
      // Description: Jitters this native voxel coordinate before integer quantization when Snow / Fog Lighting Fixes is active; when disabled, the helper returns the coordinate unchanged.
      float3 _rndx_surfel_jitter_291 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _247) * _253.w) + _281.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _248) * _253.w) + _281.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _249) * _253.w) + _281.z), float2(_76, _77), _181, _frameNumber.x);
      _291 = (int)(floor(_rndx_surfel_jitter_291.x));
      _292 = (int)(floor(_rndx_surfel_jitter_291.y));
      _293 = (int)(floor(_rndx_surfel_jitter_291.z));
      // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
      if (!(((((int)_291 >= (int)((int)(_253.x + -63.0f))) && ((int)_291 < (int)((int)(_253.x + 63.0f)))) && (((int)_292 >= (int)((int)(_253.y + -31.0f))) && ((int)_292 < (int)((int)(_253.y + 31.0f))))) && (((int)_293 >= (int)((int)(_253.z + -63.0f))) && ((int)_293 < (int)((int)(_253.z + 63.0f)))))) {
        _306 = (int)(_251) + (int)(1);
        if ((uint)_306 < (uint)8) {
          _251 = _306;
          continue;
        } else {
          _309 = -10000;
        }
      } else {
        _309 = _251;
      }
      _316 = -0.0f - _207;
      _317 = -0.0f - _208;
      _318 = -0.0f - _209;
      _322 = min(_211, (((float)((int)((int)((uint)(1) << (_309 & 31))))) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x));
      _326 = (_322 * select(_210, _316, _236)) + _247;
      _327 = (_322 * select(_210, _317, _237)) + _248;
      _328 = (_322 * select(_210, _318, _238)) + _249;
      _330 = 0;
      while(true) {
        _332 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_330) + (int)(20)))];
        _360 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_330) + (int)(36)))];
        // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.16.00]
        // Description: Jitters this native voxel coordinate before integer quantization when Snow / Fog Lighting Fixes is active; when disabled, the helper returns the coordinate unchanged.
        float3 _rndx_surfel_jitter_370 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _326) * _332.w) + _360.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _327) * _332.w) + _360.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _328) * _332.w) + _360.z), float2(_76, _77), _181, _frameNumber.x);
        _370 = (int)(floor(_rndx_surfel_jitter_370.x));
        _371 = (int)(floor(_rndx_surfel_jitter_370.y));
        _372 = (int)(floor(_rndx_surfel_jitter_370.z));
        // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
        if (!(((((int)_370 >= (int)((int)(_332.x + -63.0f))) && ((int)_370 < (int)((int)(_332.x + 63.0f)))) && (((int)_371 >= (int)((int)(_332.y + -31.0f))) && ((int)_371 < (int)((int)(_332.y + 31.0f))))) && (((int)_372 >= (int)((int)(_332.z + -63.0f))) && ((int)_372 < (int)((int)(_332.z + 63.0f)))))) {
          _385 = (int)(_330) + (int)(1);
          if ((uint)_385 < (uint)8) {
            _330 = _385;
            continue;
          } else {
            _388 = -10000;
          }
        } else {
          _388 = _330;
        }
        if ((_388 != -10000) && ((int)_388 < (int)4)) {
          if ((int)_388 < (int)6) {
            _396 = 0;
            while(true) {
              _398 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_396) + (int)(20)))];
              _426 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_396) + (int)(36)))];
              // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.16.00]
              // Description: Jitters this native voxel coordinate before integer quantization when Snow / Fog Lighting Fixes is active; when disabled, the helper returns the coordinate unchanged.
              float3 _rndx_surfel_jitter_436 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _326) * _398.w) + _426.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _327) * _398.w) + _426.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _328) * _398.w) + _426.z), float2(_76, _77), _181, _frameNumber.x);
              _436 = (int)(floor(_rndx_surfel_jitter_436.x));
              _437 = (int)(floor(_rndx_surfel_jitter_436.y));
              _438 = (int)(floor(_rndx_surfel_jitter_436.z));
              // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
              if (((((int)_436 >= (int)((int)(_398.x + -63.0f))) && ((int)_436 < (int)((int)(_398.x + 63.0f)))) && (((int)_437 >= (int)((int)(_398.y + -31.0f))) && ((int)_437 < (int)((int)(_398.y + 31.0f))))) && (((int)_438 >= (int)((int)(_398.z + -63.0f))) && ((int)_438 < (int)((int)(_398.z + 63.0f))))) {
                _459 = (_436 & 127);
                _460 = (_437 & 63);
                _461 = (_438 & 127);
                _462 = _396;
              } else {
                _451 = (int)(_396) + (int)(1);
                if ((uint)_451 < (uint)8) {
                  _396 = _451;
                  continue;
                } else {
                  _459 = -10000;
                  _460 = -10000;
                  _461 = -10000;
                  _462 = -10000;
                }
              }
              if (!((uint)_462 > (uint)5)) {
                _474 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_459, _460, ((int)((uint)((uint)((int)((int)((uint)((uint)(_462)) * (uint)(130))) | (int)(1))) + (uint)((uint)(_461)))), 0)))).x) & 4194303;
                _478 = (_474 != 0) && ((uint)((int)(_474) + (int)(4)) < (uint)3145729);
                _479 = select(_478, _459, -10000);
                _480 = select(_478, _460, -10000);
                _481 = select(_478, _461, -10000);
                _482 = select(_478, _462, -10000);
                _484 = (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 0.5f) * ((float)((int)((int)((uint)(1) << (_462 & 31)))));
                _489 = 0;
                while(true) {
                  _491 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_489) + (int)(20)))];
                  _519 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_489) + (int)(36)))];
                  // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.16.00]
                  // Description: Jitters this native voxel coordinate before integer quantization when Snow / Fog Lighting Fixes is active; when disabled, the helper returns the coordinate unchanged.
                  float3 _rndx_surfel_jitter_529 = RenoDXSurfelVoxelJitter(float3((((_326 - _484) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x) * _491.w) + _519.x, (((_327 - _484) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y) * _491.w) + _519.y, (((_328 - _484) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z) * _491.w) + _519.z), float2(_76, _77), _181, _frameNumber.x);
                  _529 = (int)(floor(_rndx_surfel_jitter_529.x));
                  _530 = (int)(floor(_rndx_surfel_jitter_529.y));
                  _531 = (int)(floor(_rndx_surfel_jitter_529.z));
                  // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
                  if (((((int)_529 >= (int)((int)(_491.x + -63.0f))) && ((int)_529 < (int)((int)(_491.x + 63.0f)))) && (((int)_530 >= (int)((int)(_491.y + -31.0f))) && ((int)_530 < (int)((int)(_491.y + 31.0f))))) && (((int)_531 >= (int)((int)(_491.z + -63.0f))) && ((int)_531 < (int)((int)(_491.z + 63.0f))))) {
                    _552 = (_529 & 127);
                    _553 = (_530 & 63);
                    _554 = (_531 & 127);
                    _555 = _489;
                  } else {
                    _544 = (int)(_489) + (int)(1);
                    if ((uint)_544 < (uint)8) {
                      _489 = _544;
                      continue;
                    } else {
                      _552 = -10000;
                      _553 = -10000;
                      _554 = -10000;
                      _555 = -10000;
                    }
                  }
                  if (!((uint)_555 > (uint)5)) {
                    if (_474 == 0) {
                      _561 = 0;
                      _562 = _482;
                      _563 = _481;
                      _564 = _480;
                      _565 = _479;
                      while(true) {
                        _574 = 0;
                        _575 = _562;
                        _576 = _563;
                        _577 = _564;
                        _578 = _565;
                        while(true) {
                          _585 = 0;
                          while(true) {
                            _586 = (int)(_585) + (int)(_552);
                            _587 = (int)(_574) + (int)(_553);
                            _588 = (int)(_561) + (int)(_554);
                            bool __branch_chain_584;
                            if (((uint)_587 > (uint)63) || ((uint)((int)(_586) | (int)(_588)) > (uint)127)) {
                              _606 = 0;
                              __branch_chain_584 = true;
                            } else {
                              _600 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_586, _587, ((int)((uint)((uint)(_588)) + (uint)((uint)((int)((int)((uint)((uint)(_555)) * (uint)(130))) | (int)(1))))), 0)))).x) & 4194303;
                              if (!((_600 != 0) && ((uint)((int)(_600) + (int)(4)) < (uint)3145729))) {
                                _606 = _600;
                                __branch_chain_584 = true;
                              } else {
                                _612 = _586;
                                _613 = _587;
                                _614 = _588;
                                _615 = _555;
                                _616 = _600;
                                __branch_chain_584 = false;
                              }
                            }
                            if (__branch_chain_584) {
                              _607 = (int)(_585) + (int)(1);
                              if (((int)_607 < (int)2) && (_606 == 0)) {
                                _585 = _607;
                                continue;
                              } else {
                                _612 = _578;
                                _613 = _577;
                                _614 = _576;
                                _615 = _575;
                                _616 = _606;
                              }
                            }
                            _617 = (int)(_574) + (int)(1);
                            if (((int)_617 < (int)2) && (_616 == 0)) {
                              _574 = _617;
                              _575 = _615;
                              _576 = _614;
                              _577 = _613;
                              _578 = _612;
                              __loop_jump_target = 573;
                              break;
                            }
                            while(true) {
                              _580 = (int)(_561) + (int)(1);
                              if (((int)_580 < (int)2) && (_616 == 0)) {
                                _561 = _580;
                                _562 = _615;
                                _563 = _614;
                                _564 = _613;
                                _565 = _612;
                                __loop_jump_target = 560;
                                break;
                              }
                              while(true) {
                                _568 = _615;
                                _569 = _614;
                                _570 = _613;
                                _571 = _612;
                                break;
                              }
                              break;
                            }
                            if (__loop_jump_target != -1) {
                              break;
                            }
                            break;
                          }
                          if (__loop_jump_target == 573) {
                            __loop_jump_target = -1;
                            continue;
                          }
                          if (__loop_jump_target != -1) {
                            break;
                          }
                          break;
                        }
                        if (__loop_jump_target == 560) {
                          __loop_jump_target = -1;
                          continue;
                        }
                        if (__loop_jump_target != -1) {
                          break;
                        }
                        break;
                      }
                    } else {
                      _568 = _482;
                      _569 = _481;
                      _570 = _480;
                      _571 = _479;
                    }
                    if ((uint)_568 < (uint)6) {
                      _622 = (uint)((uint)(_568)) * (uint)(130);
                      _628 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_571, _570, ((int)((uint)((uint)((int)(_622) | (int)(1))) + (uint)((uint)(_569)))), 0)))).x) & 4194303;
                      if ((_628 != 0) && ((uint)((int)(_628) + (int)(4)) < (uint)3145729)) {
                        _635 = (uint)(1) << (_568 & 31);
                        _637 = ((float)((int)(_635))) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                        _639 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((uint)((uint)((uint)(_568)) + (uint)(20)))];
                        _675 = 0.0f;
                        _676 = 0.0f;
                        _677 = 0.0f;
                        _678 = _239;
                        _679 = _240;
                        _680 = _241;
                        _681 = 0.0f;
                        _682 = 0;
                        while(true) {
                          _684 = (int)((int)(_628) + (int)(-1)) + (int)(_682);
                          _687 = __3__37__0__0__g_surfelDataBuffer[_684]._baseColor;
                          _689 = __3__37__0__0__g_surfelDataBuffer[_684]._normal;
                          _692 = __3__37__0__0__g_surfelDataBuffer[_684]._radius;
                          if (!(_687 == 0)) {
                            _695 = __3__37__0__0__g_surfelDataBuffer[_684]._radiance.z;
                            _696 = __3__37__0__0__g_surfelDataBuffer[_684]._radiance.y;
                            _697 = __3__37__0__0__g_surfelDataBuffer[_684]._radiance.x;
                            _703 = (float)((uint)((uint)(_687 & 255)));
                            _704 = (float)((uint)((uint)(((uint)((uint)(_687)) >> 8) & 255)));
                            _705 = (float)((uint)((uint)(((uint)((uint)(_687)) >> 16) & 255)));
                            _730 = select(((_703 * 0.003921569f) < 0.04045f), (_703 * 0.000303527f), exp2(log2((_703 * 0.003717127f) + 0.052132703f) * 2.4f));
                            _731 = select(((_704 * 0.003921569f) < 0.04045f), (_704 * 0.000303527f), exp2(log2((_704 * 0.003717127f) + 0.052132703f) * 2.4f));
                            _732 = select(((_705 * 0.003921569f) < 0.04045f), (_705 * 0.000303527f), exp2(log2((_705 * 0.003717127f) + 0.052132703f) * 2.4f));
                            _744 = (((float)((uint)((uint)(_689 & 255)))) * 0.007874016f) + -1.0f;
                            _745 = (((float)((uint)((uint)(((uint)((uint)(_689)) >> 8) & 255)))) * 0.007874016f) + -1.0f;
                            _746 = (((float)((uint)((uint)(((uint)((uint)(_689)) >> 16) & 255)))) * 0.007874016f) + -1.0f;
                            _748 = rsqrt(dot(float3(_744, _745, _746), float3(_744, _745, _746)));  // [sem: invLength]
                            _750 = ((_689 & 16777215) == 0);
                            _754 = (_637 * 0.0019607844f) * ((float)((uint16_t)((int16_t)(_692 & 255))));
                            _770 = (((((float)((uint)((uint)((uint)((uint)(_687)) >> 24)))) * 0.003937008f) + -0.5f) * _637) + ((((_639.x + -63.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_571)) + (uint)(64)) - (uint)((uint)((int)(_639.x))))) & 127)))) * _637) - _viewPos.x);
                            _771 = (((((float)((uint)((uint)((uint)((uint)(_689)) >> 24)))) * 0.003937008f) + -0.5f) * _637) + ((((_639.y + -31.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_570)) + (uint)(32)) - (uint)((uint)((int)(_639.y))))) & 63)))) * _637) - _viewPos.y);
                            _772 = (((((float)((uint16_t)((int16_t)((uint16_t)(_692) >> 8)))) * 0.003937008f) + -0.5f) * _637) + ((((_639.z + -63.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_569)) + (uint)(64)) - (uint)((uint)((int)(_639.z))))) & 127)))) * _637) - _viewPos.z);
                            if (!((((_697 < 0.0h) || ((_730 > 1.1f) || (_730 < 0.0f))) || ((_696 < 0.0h) || ((_731 > 1.1f) || (_731 < 0.0f)))) || ((_695 < 0.0h) || ((_732 > 1.1f) || (_732 < 0.0f))))) {
                              _806 = -0.0f - min(0.0f, (-0.0f - float(_697)));
                              _807 = -0.0f - min(0.0f, (-0.0f - float(_696)));
                              _808 = -0.0f - min(0.0f, (-0.0f - float(_695)));
                              _826 = (_223.w == 0.0f);  // [sem: _3__36__0__0__g_raytracingNormal_load_derived]
                              _827 = select(_826, _316, _678);
                              _828 = select(_826, _317, _679);
                              _829 = select(_826, _318, _680);
                              _832 = ((-0.0f - _166) - _244) + _770;
                              _835 = ((-0.0f - _167) - _245) + _771;
                              _838 = ((-0.0f - _168) - _246) + _772;
                              _839 = dot(float3(_832, _835, _838), float3(_827, _828, _829));
                              _843 = _832 - (_839 * _827);
                              _844 = _835 - (_839 * _828);
                              _845 = _838 - (_839 * _829);
                              _871 = 1.0f / ((float)((uint)((uint)(_635))));
                              _875 = frac(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _772) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z) * _871);
                              _900 = select(((int)_568 > (int)5), 1.0f, ((saturate((saturate(dot(float3(_316, _317, _318), float3(select(_750, _316, (_748 * _744)), select(_750, _317, (_748 * _745)), select(_750, _318, (_748 * _746))))) + -0.03125f) * 1.032258f) * ((float)((bool)(dot(float3(_843, _844, _845), float3(_843, _844, _845)) < ((_754 * _754) * 64.0f))))) * ((float)((bool)(((__3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _770) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _871), (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _771) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y) * _871), (((((float)((uint)((uint)(_622)))) + 1.0f) + ((select((_875 < 0.0f), 1.0f, 0.0f) + _875) * 128.0f)) * 0.00096153846f)), 0.0f)).x) > ((_637 * 0.25f) * (saturate((dot(float3(_806, _807, _808), float3(0.212671f, 0.71516f, 0.072169f)) * 0.0001f) / _exposure3.w) + 1.0f)))))));
                              _904 = (!(_217.w > 0.0f)) || ((_687 & 16777215) == 16777215);
                              _914 = ((select(_904, (((_731 * 0.33951f) + (_730 * 0.61312f)) + (_732 * 0.04737f)), _217.x) * _806) * _900) + _675;
                              _915 = ((select(_904, (((_731 * 0.91636f) + (_730 * 0.0702f)) + (_732 * 0.01345f)), _217.y) * _807) * _900) + _676;
                              _916 = ((select(_904, (((_731 * 0.10958f) + (_730 * 0.02062f)) + (_732 * 0.8698f)), _217.z) * _808) * _900) + _677;
                              _917 = _900 + _681;
                              _918 = (int)(_682) + (int)(1);
                              if ((uint)_918 < (uint)4) {
                                _675 = _914;
                                _676 = _915;
                                _677 = _916;
                                _678 = _827;
                                _679 = _828;
                                _680 = _829;
                                _681 = _917;
                                _682 = _918;
                                continue;
                              } else {
                                _921 = _914;
                                _922 = _915;
                                _923 = _916;
                                _924 = _917;
                              }
                            } else {
                              _921 = _675;
                              _922 = _676;
                              _923 = _677;
                              _924 = _681;
                            }
                          } else {
                            _921 = _675;
                            _922 = _676;
                            _923 = _677;
                            _924 = _681;
                          }
                          if (_924 > 0.0f) {
                            _927 = 1.0f / _924;
                            _941 = (-0.0f - min(0.0f, (-0.0f - (_921 * _927))));
                            _942 = (-0.0f - min(0.0f, (-0.0f - (_922 * _927))));
                            _943 = (-0.0f - min(0.0f, (-0.0f - (_923 * _927))));
                          } else {
                            _941 = _921;
                            _942 = _922;
                            _943 = _923;
                          }
                          break;
                        }
                      } else {
                        _941 = 0.0f;
                        _942 = 0.0f;
                        _943 = 0.0f;
                      }
                    } else {
                      _941 = 0.0f;
                      _942 = 0.0f;
                      _943 = 0.0f;
                    }
                  } else {
                    _941 = 0.0f;
                    _942 = 0.0f;
                    _943 = 0.0f;
                  }
                  break;
                }
              } else {
                _941 = 0.0f;
                _942 = 0.0f;
                _943 = 0.0f;
              }
              _947 = max(1e-06f, (_exposure3.w * 0.001f));
              _948 = max(_947, _941);
              _949 = max(_947, _942);
              _950 = max(_947, _943);
              _953 = dot(float3(_948, _949, _950), float3(0.212671f, 0.71516f, 0.072169f));
              _954 = min((max(0.0005f, _exposure3.w) * 512.0f), _953);
              _958 = max(1e-09f, _953);
              _963 = ((_954 * _948) / _958);
              _964 = ((_954 * _949) / _958);
              _965 = ((_954 * _950) / _958);
              break;
            }
          } else {
            _963 = 0.0f;
            _964 = 0.0f;
            _965 = 0.0f;
          }
          if (saturate(_223.w) == 0.0f) {
            _979 = (exp2((saturate(saturate(_217.w)) * 20.0f) + -8.0f) + -0.00390625f) * (1.0f / (((_211 * _211) * 0.1f) + 1.0f));
            _987 = ((_979 * _217.x) + _963);
            _988 = ((_979 * _217.y) + _964);
            _989 = ((_979 * _217.z) + _965);
          } else {
            _987 = _963;
            _988 = _964;
            _989 = _965;
          }
          _996 = _239;
          _997 = _240;
          _998 = _241;
          _999 = _223.w;
          _1000 = _217.x;
          _1001 = _217.y;
          _1002 = _217.z;
          _1003 = _217.w;
          _1004 = _243;
          _1005 = (_renderParams2.y * _987);
          _1006 = (_renderParams2.y * _988);
          _1007 = (_renderParams2.y * _989);
          _1008 = 1.0f;
          _1009 = _211;
        } else {
          _996 = _239;
          _997 = _240;
          _998 = _241;
          _999 = _223.w;
          _1000 = _217.x;
          _1001 = _217.y;
          _1002 = _217.z;
          _1003 = _217.w;
          _1004 = _243;
          _1005 = 0.0f;
          _1006 = 0.0f;
          _1007 = 0.0f;
          _1008 = 1.0f;
          _1009 = _211;
        }
        break;
      }
      break;
    }
  } else {
    _996 = 0.0f;
    _997 = 0.0f;
    _998 = 0.0f;
    _999 = 0.0f;
    _1000 = 0.0f;
    _1001 = 0.0f;
    _1002 = 0.0f;
    _1003 = 0.0f;
    _1004 = 0;
    _1005 = 0.0f;
    _1006 = 0.0f;
    _1007 = 0.0f;
    _1008 = 0.0f;
    _1009 = 0.0f;
  }
  _1011 = (_1009 > 0.0f);
  if ((_171 > (_lightingParams.z * 0.875f)) && (!_1011)) {
    _1024 = (_171 < (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 11585.126f));
  } else {
    _1024 = false;
  }
  _1028 = (_1009 * _207) + _166;
  _1029 = (_1009 * _208) + _167;
  _1030 = (_1009 * _209) + _168;
  _1066 = mad((_viewProjRelativePrev[3].z), _1030, mad((_viewProjRelativePrev[3].y), _1029, ((_viewProjRelativePrev[3].x) * _1028))) + (_viewProjRelativePrev[3].w);
  _1067 = (mad((_viewProjRelativePrev[0].z), _1030, mad((_viewProjRelativePrev[0].y), _1029, ((_viewProjRelativePrev[0].x) * _1028))) + (_viewProjRelativePrev[0].w)) / _1066;
  _1068 = (mad((_viewProjRelativePrev[1].z), _1030, mad((_viewProjRelativePrev[1].y), _1029, ((_viewProjRelativePrev[1].x) * _1028))) + (_viewProjRelativePrev[1].w)) / _1066;
  _1069 = (mad((_viewProjRelativePrev[2].z), _1030, mad((_viewProjRelativePrev[2].y), _1029, ((_viewProjRelativePrev[2].x) * _1028))) + (_viewProjRelativePrev[2].w)) / _1066;
  _1072 = (_1067 * 0.5f) + 0.5f;
  _1073 = 0.5f - (_1068 * 0.5f);
  if (_210) {
    if (_1011) {
      // [sem: _3__36__0__0__g_normalDepthPrev_load]
      _1098 = __3__36__0__0__g_normalDepthPrev.Load(int3(((int)(((_1067 * 0.25f) + 0.25f) * _bufferSizeAndInvSize.x)), ((int)((0.25f - (_1068 * 0.25f)) * _bufferSizeAndInvSize.y)), 0));
      _1105 = _nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1098.y & 16777215)))) * 5.960465e-08f));
      if ((_1069 > 0.0f) && (((_1072 >= 0.0f) && (_1072 <= 1.0f)) && ((_1073 >= 0.0f) && (_1073 <= 1.0f)))) {
        if (((_1105 - dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z))) > 0.0f) && (abs(_1105 - _1066) < max(0.5f, (_1066 * 0.05f)))) {
          _1136 = __3__36__0__0__g_sceneColor.SampleLevel(__3__40__0__0__g_samplerClamp, float2(_1072, _1073), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
          if (!(!(_1136.w >= 0.0f))) {
            _1161 = min(1.0f, ((((float)((uint)((uint)(_1098.x & 1023)))) * 0.0019569471f) + -1.0f));
            _1162 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1098.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));
            _1163 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1098.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));
            _1165 = rsqrt(dot(float3(_1161, _1162, _1163), float3(_1161, _1162, _1163)));  // [sem: invLength]
            _1166 = _1165 * _1161;
            _1167 = _1165 * _1162;
            _1168 = _1165 * _1163;
            _1174 = select((dot(float3((-0.0f - _207), (-0.0f - _208), (-0.0f - _209)), float3(_1166, _1167, _1168)) > 0.2f), 1.0f, 0.0f);
            _1176 = saturate(_171 * 0.01f);  // [sem: expr_sat]
            _1184 = (float)((bool)(abs(_nearFarProj.x - _1105) < (_1105 * 0.5f)));
            _1189 = _1166;
            _1190 = _1167;
            _1191 = _1168;
            _1192 = 0.8f;
            _1193 = _renderParams2.x * _renderParams2.x;
            _1194 = ((_1174 - (_1174 * _1176)) + _1176) * _1193;
            _1203 = ((_1009 * 0.9999f) * _renderParams2.x);
            _1204 = _1189;
            _1205 = _1190;
            _1206 = _1191;
            _1207 = _1192;
            _1208 = ((_1194 * min(10000.0f, _1136.x)) * _1184);
            _1209 = ((_1194 * min(10000.0f, _1136.y)) * _1184);
            _1210 = ((_1194 * min(10000.0f, _1136.z)) * _1184);
            _1211 = _1193;
            _1212 = 1;
          } else {
            _1203 = _1009;
            _1204 = _996;
            _1205 = _997;
            _1206 = _998;
            _1207 = _999;
            _1208 = 0.0f;
            _1209 = 0.0f;
            _1210 = 0.0f;
            _1211 = 0.0f;
            _1212 = 0;
          }
        } else {
          _1203 = _1009;
          _1204 = _996;
          _1205 = _997;
          _1206 = _998;
          _1207 = _999;
          _1208 = 0.0f;
          _1209 = 0.0f;
          _1210 = 0.0f;
          _1211 = 0.0f;
          _1212 = 0;
        }
      } else {
        _1203 = _1009;
        _1204 = _996;
        _1205 = _997;
        _1206 = _998;
        _1207 = _999;
        _1208 = 0.0f;
        _1209 = 0.0f;
        _1210 = 0.0f;
        _1211 = 0.0f;
        _1212 = 0;
      }
    } else {
      _1203 = _1009;
      _1204 = _996;
      _1205 = _997;
      _1206 = _998;
      _1207 = _999;
      _1208 = 0.0f;
      _1209 = 0.0f;
      _1210 = 0.0f;
      _1211 = 0.0f;
      _1212 = 0;
    }
  } else {
    if (_1011 && ((_1069 > 0.0f) && (((_1072 >= 0.0f) && (_1072 <= 1.0f)) && ((_1073 >= 0.0f) && (_1073 <= 1.0f))))) {
      // [sem: _3__36__0__0__g_normalDepthPrev_load]
      _1098 = __3__36__0__0__g_normalDepthPrev.Load(int3(((int)(((_1067 * 0.25f) + 0.25f) * _bufferSizeAndInvSize.x)), ((int)((0.25f - (_1068 * 0.25f)) * _bufferSizeAndInvSize.y)), 0));
      _1105 = _nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1098.y & 16777215)))) * 5.960465e-08f));
      if ((_1069 > 0.0f) && (((_1072 >= 0.0f) && (_1072 <= 1.0f)) && ((_1073 >= 0.0f) && (_1073 <= 1.0f)))) {
        if (((_1105 - dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z))) > 0.0f) && (abs(_1105 - _1066) < max(0.5f, (_1066 * 0.05f)))) {
          _1136 = __3__36__0__0__g_sceneColor.SampleLevel(__3__40__0__0__g_samplerClamp, float2(_1072, _1073), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
          if (!(!(_1136.w >= 0.0f))) {
            _1161 = min(1.0f, ((((float)((uint)((uint)(_1098.x & 1023)))) * 0.0019569471f) + -1.0f));
            _1162 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1098.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));
            _1163 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1098.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));
            _1165 = rsqrt(dot(float3(_1161, _1162, _1163), float3(_1161, _1162, _1163)));  // [sem: invLength]
            _1166 = _1165 * _1161;
            _1167 = _1165 * _1162;
            _1168 = _1165 * _1163;
            _1174 = select((dot(float3((-0.0f - _207), (-0.0f - _208), (-0.0f - _209)), float3(_1166, _1167, _1168)) > 0.2f), 1.0f, 0.0f);
            _1176 = saturate(_171 * 0.01f);  // [sem: expr_sat]
            _1184 = (float)((bool)(abs(_nearFarProj.x - _1105) < (_1105 * 0.5f)));
            _1189 = _996;
            _1190 = _997;
            _1191 = _998;
            _1192 = _999;
            _1193 = _renderParams2.x * _renderParams2.x;
            _1194 = ((_1174 - (_1174 * _1176)) + _1176) * _1193;
            _1203 = ((_1009 * 0.9999f) * _renderParams2.x);
            _1204 = _1189;
            _1205 = _1190;
            _1206 = _1191;
            _1207 = _1192;
            _1208 = ((_1194 * min(10000.0f, _1136.x)) * _1184);
            _1209 = ((_1194 * min(10000.0f, _1136.y)) * _1184);
            _1210 = ((_1194 * min(10000.0f, _1136.z)) * _1184);
            _1211 = _1193;
            _1212 = 1;
          } else {
            _1203 = _1009;
            _1204 = _996;
            _1205 = _997;
            _1206 = _998;
            _1207 = _999;
            _1208 = 0.0f;
            _1209 = 0.0f;
            _1210 = 0.0f;
            _1211 = 0.0f;
            _1212 = 0;
          }
        } else {
          _1203 = _1009;
          _1204 = _996;
          _1205 = _997;
          _1206 = _998;
          _1207 = _999;
          _1208 = 0.0f;
          _1209 = 0.0f;
          _1210 = 0.0f;
          _1211 = 0.0f;
          _1212 = 0;
        }
      } else {
        _1203 = _1009;
        _1204 = _996;
        _1205 = _997;
        _1206 = _998;
        _1207 = _999;
        _1208 = 0.0f;
        _1209 = 0.0f;
        _1210 = 0.0f;
        _1211 = 0.0f;
        _1212 = 0;
      }
    } else {
      _1203 = _1009;
      _1204 = _996;
      _1205 = _997;
      _1206 = _998;
      _1207 = _999;
      _1208 = 0.0f;
      _1209 = 0.0f;
      _1210 = 0.0f;
      _1211 = 0.0f;
      _1212 = 0;
    }
  }
  _1214 = 0;
  while(true) {
    _1216 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1214) + (int)(20)))];
    _1244 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1214) + (int)(36)))];
    // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.16.00]
    // Description: Jitters this native voxel coordinate before integer quantization when Snow / Fog Lighting Fixes is active; when disabled, the helper returns the coordinate unchanged.
    float3 _rndx_surfel_jitter_1254 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _166) * _1216.w) + _1244.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _167) * _1216.w) + _1244.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _168) * _1216.w) + _1244.z), float2(_76, _77), _181, _frameNumber.x);
    _1254 = (int)(floor(_rndx_surfel_jitter_1254.x));
    _1255 = (int)(floor(_rndx_surfel_jitter_1254.y));
    _1256 = (int)(floor(_rndx_surfel_jitter_1254.z));
    // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
    if (((((int)_1254 >= (int)((int)(_1216.x + -63.0f))) && ((int)_1254 < (int)((int)(_1216.x + 63.0f)))) && (((int)_1255 >= (int)((int)(_1216.y + -31.0f))) && ((int)_1255 < (int)((int)(_1216.y + 31.0f))))) && (((int)_1256 >= (int)((int)(_1216.z + -63.0f))) && ((int)_1256 < (int)((int)(_1216.z + 63.0f))))) {
      _1275 = (_1254 & 127);
      _1276 = _1214;
    } else {
      _1269 = (int)(_1214) + (int)(1);
      if ((uint)_1269 < (uint)8) {
        _1214 = _1269;
        continue;
      } else {
        _1275 = -10000;
        _1276 = -10000;
      }
    }
    if (!(_1275 == -10000)) {
      _1283 = ((float)((int)((int)((uint)(1) << (_1276 & 31)))));
    } else {
      _1283 = 1.0f;
    }
    _1289 = select(_198, (((frac(frac(dot(float2(((_181 * 32.665f) + _76), ((_181 * 11.815f) + _77)), float2(0.06711056f, 0.00583715f))) * 52.982918f) * 2.0f) * _1283) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x), 0.0f);
    if (_1024) {
      _1291 = _lightingParams.z * 1.3434899f;
      _1292 = -0.0f - _1291;
      if (((_168 > _1292) && (_168 < _1291)) && (((_166 > _1292) && (_166 < _1291)) && ((_167 > _1292) && (_167 < _1291)))) {
        _1305 = 1.0f / _207;
        _1306 = 1.0f / _208;
        _1307 = 1.0f / _209;
        _1311 = _1305 * (_1292 - _166);
        _1312 = _1306 * (_1292 - _167);
        _1313 = _1307 * (_1292 - _168);
        _1317 = _1305 * (_1291 - _166);
        _1318 = _1306 * (_1291 - _167);
        _1319 = _1307 * (_1291 - _168);
        _1329 = min(min(max(_1311, _1317), max(_1312, _1318)), max(_1313, _1319));
        if ((_1329 > 0.0f) && ((_1329 >= 0.0f) && (max(max(min(_1311, _1317), min(_1312, _1318)), min(_1313, _1319)) <= _1329))) {
          _1343 = _1329;
          _1344 = ((_1329 * _207) + _166);
          _1345 = ((_1329 * _208) + _167);
          _1346 = ((_1329 * _209) + _168);
        } else {
          _1343 = 0.0f;
          _1344 = _166;
          _1345 = _167;
          _1346 = _168;
        }
      } else {
        _1343 = 0.0f;
        _1344 = _166;
        _1345 = _167;
        _1346 = _168;
      }
      _1350 = select(((_1203 > 0.0f) && (_1211 >= 1.0f)), _1203, 256.0f);
      _1352 = 0;
      while(true) {
        _1354 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1352) + (int)(20)))];
        _1382 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1352) + (int)(36)))];
        // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.16.00]
        // Description: Jitters this native voxel coordinate before integer quantization when Snow / Fog Lighting Fixes is active; when disabled, the helper returns the coordinate unchanged.
        float3 _rndx_surfel_jitter_1392 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _1344) * _1354.w) + _1382.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _1345) * _1354.w) + _1382.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _1346) * _1354.w) + _1382.z), float2(_76, _77), _181, _frameNumber.x);
        _1392 = (int)(floor(_rndx_surfel_jitter_1392.x));
        _1393 = (int)(floor(_rndx_surfel_jitter_1392.y));
        _1394 = (int)(floor(_rndx_surfel_jitter_1392.z));
        // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
        if (!(((((int)_1392 >= (int)((int)(_1354.x + -63.0f))) && ((int)_1392 < (int)((int)(_1354.x + 63.0f)))) && (((int)_1393 >= (int)((int)(_1354.y + -31.0f))) && ((int)_1393 < (int)((int)(_1354.y + 31.0f))))) && (((int)_1394 >= (int)((int)(_1354.z + -63.0f))) && ((int)_1394 < (int)((int)(_1354.z + 63.0f)))))) {
          _1407 = (int)(_1352) + (int)(1);
          if ((uint)_1407 < (uint)8) {
            _1352 = _1407;
            continue;
          } else {
            _1410 = -10000;
          }
        } else {
          _1410 = _1352;
        }
        if (!((_1410 == -10000) || ((int)_1410 > (int)4))) {
          _1420 = _1344 + (_1289 * _207);
          _1421 = _1345 + (_1289 * _208);
          _1422 = _1346 + (_1289 * _209);
          _1426 = (_207 == 0.0f);
          _1427 = (_208 == 0.0f);
          _1428 = (_209 == 0.0f);
          _1429 = select(_1426, 0.0f, (1.0f / _207));
          _1430 = select(_1427, 0.0f, (1.0f / _208));
          _1431 = select(_1428, 0.0f, (1.0f / _209));
          _1432 = (_207 > 0.0f);
          _1433 = (_208 > 0.0f);
          _1434 = (_209 > 0.0f);
          if (_1350 > 0.0f) {
            _1447 = 0;
            _1448 = 0.0f;
            _1449 = 0.0f;
            _1450 = _1422;
            _1451 = _1421;
            _1452 = _1420;
            while(true) {
              _1454 = 0;
              while(true) {
                _1456 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1454) + (int)(20)))];
                _1475 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1454) + (int)(36)))];
                _1479 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _1452) * _1456.w) + _1475.x;
                _1480 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _1451) * _1456.w) + _1475.y;
                _1481 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _1450) * _1456.w) + _1475.z;
                if (!((_1481 >= (_1456.z + -63.0f)) && ((_1479 >= (_1456.x + -63.0f)) && (_1480 >= (_1456.y + -31.0f)))) || (((_1481 >= (_1456.z + -63.0f)) && ((_1479 >= (_1456.x + -63.0f)) && (_1480 >= (_1456.y + -31.0f)))) && (!((_1481 < (_1456.z + 63.0f)) && ((_1479 < (_1456.x + 63.0f)) && (_1480 < (_1456.y + 31.0f))))))) {
                  _1497 = (int)(_1454) + (int)(1);
                  if ((int)_1497 < (int)8) {
                    _1454 = _1497;
                    continue;
                  } else {
                    _1697 = _1449;
                    _1698 = _1450;
                    _1699 = _1451;
                    _1700 = _1452;
                    _1701 = _1448;
                    _1702 = -10000.0f;
                  }
                } else {
                  if (_1454 == -10000) {
                    _1691 = _1449;
                    _1692 = _1450;
                    _1693 = _1451;
                    _1694 = _1452;
                    _1695 = _1448;
                    _1697 = _1691;
                    _1698 = _1692;
                    _1699 = _1693;
                    _1700 = _1694;
                    _1701 = _1695;
                    _1702 = -10000.0f;
                  } else {
                    _1504 = (float)((int)((int)((uint)(1) << (_1454 & 31))));
                    _1505 = _1504 * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                    _1506 = 1.0f / _1504;
                    _1507 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.y * 0.0078125f;
                    _1516 = _1506 * ((_1452 * _1507) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x);
                    _1517 = _1506 * (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.y * 0.015625f) * _1451) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y);
                    _1518 = _1506 * ((_1450 * _1507) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z);
                    _1519 = _1516 * 64.0f;
                    _1520 = _1517 * 32.0f;
                    _1521 = _1518 * 64.0f;
                    _1525 = (int)(floor(_1519));
                    _1526 = (int)(floor(_1520));
                    _1527 = (int)(floor(_1521));
                    // [sem: _3__36__0__0__g_axisAlignedDistance_load]
                    _1534 = __3__36__0__0__g_axisAlignedDistanceTextures.Load(int4((_1525 & 63), (_1526 & 31), ((int)(_1527 & 63) | (int)((int)(_1454) << 6)), 0));
                    _1551 = saturate(((float)((uint)((uint)((uint)((uint)(_1534.w)) >> 2)))) * 0.015873017f);  // [sem: expr_sat]
                    _1574 = _1519 - ((float)((int)(_1525)));
                    _1575 = _1520 - ((float)((int)(_1526)));
                    _1576 = _1521 - ((float)((int)(_1527)));
                    _1607 = max(((_1505 * 0.5f) * min(min(select(_1426, 999999.0f, ((select(_1432, 1.0f, 0.0f) - frac(_1516 * 256.0f)) * _1429)), select(_1427, 999999.0f, ((select(_1433, 1.0f, 0.0f) - frac(_1517 * 128.0f)) * _1430))), select(_1428, 999999.0f, ((select(_1434, 1.0f, 0.0f) - frac(_1518 * 256.0f)) * _1431)))), ((_1505 * 2.0f) * min(min(select(_1426, 999999.0f, (select(_1432, ((0.01f - _1574) + ((float)((uint)((uint)(((uint)((uint)(_1534.x)) >> 4) & 15))))), ((0.99f - _1574) - ((float)((uint)((uint)(_1534.x & 15)))))) * _1429)), select(_1427, 999999.0f, (select(_1433, ((0.01f - _1575) + ((float)((uint)((uint)(((uint)((uint)(_1534.y)) >> 4) & 15))))), ((0.99f - _1575) - ((float)((uint)((uint)(_1534.y & 15)))))) * _1430))), select(_1428, 999999.0f, (select(_1434, ((0.01f - _1576) + ((float)((uint)((uint)(((uint)((uint)(_1534.z)) >> 4) & 15))))), ((0.99f - _1576) - ((float)((uint)((uint)(_1534.z & 15)))))) * _1431)))));
                    _1609 = (float)((bool)(_1551 > 0.0f));
                    if (((uint)_1447 < (uint)16) || (_1449 < min(32.0f, (_1505 * 32.0f)))) {
                      _1616 = frac(_1518);
                      // [sem: _3__36__0__1__g_signedDistanceVoxels_sampleLod]
                      _1628 = __3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3(_1516, _1517, (((((float)((uint)((uint)((uint)(_1454)) * (uint)(130)))) + 1.0f) + ((select((_1616 < 0.0f), 1.0f, 0.0f) + _1616) * 128.0f)) * 0.00096153846f)), 0.0f);
                      _1634 = _1449 * 0.01f;
                      _1635 = 1.0f / _1505;
                      _1651 = (_1628.x + ((_171 * _171) * 0.0002f)) / (((max(((_1505 * 1.06066f) * saturate((_1449 * 0.5f) + 0.5f)), _1634) - _1634) * saturate(((max(1.0f, (_1635 * 0.5f)) * _1635) * min(_1449, max(0.0f, (_1350 - _1449)))) + -1.0f)) + _1634);
                      _1657 = saturate((saturate(1.0f - (_1651 * _1651)) * _1609) + _1448);  // [sem: expr_sat]
                      if (!(((int)_1454 > (int)2) || (_1628.x > _1505))) {
                        _1671 = _1657;  // [sem: expr_sat]
                        _1672 = min(_1607, _1628.x);
                      } else {
                        _1671 = _1657;  // [sem: expr_sat]
                        _1672 = _1607;
                      }
                    } else {
                      if (!((_1534.w & 1) == 0)) {
                        _1671 = saturate((_1609 * 0.5f) + _1448);  // [sem: expr_sat]
                        _1672 = _1607;
                      } else {
                        _1671 = _1448;  // [sem: expr_sat]
                        _1672 = _1607;
                      }
                    }
                    if (!(_1671 >= 0.5f)) {
                      _1677 = max(_1672, (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 0.05f));
                      _1678 = _1677 + _1449;
                      _1682 = (_1677 * _207) + _1452;
                      _1683 = (_1677 * _208) + _1451;
                      _1684 = (_1677 * _209) + _1450;
                      _1685 = (int)(_1447) + (int)(1);
                      if (((uint)_1685 < (uint)192) && (_1678 < _1350)) {
                        _1447 = _1685;
                        _1448 = _1671;
                        _1449 = _1678;
                        _1450 = _1684;
                        _1451 = _1683;
                        _1452 = _1682;
                        __loop_jump_target = 1446;
                        break;
                      } else {
                        _1691 = _1678;
                        _1692 = _1684;
                        _1693 = _1683;
                        _1694 = _1682;
                        _1695 = _1671;
                        _1697 = _1691;
                        _1698 = _1692;
                        _1699 = _1693;
                        _1700 = _1694;
                        _1701 = _1695;
                        _1702 = -10000.0f;
                      }
                    } else {
                      _1697 = _1449;
                      _1698 = _1450;
                      _1699 = _1451;
                      _1700 = _1452;
                      _1701 = _1551;
                      _1702 = ((float)((int)(_1454)));
                    }
                  }
                }
                break;
              }
              if (__loop_jump_target == 1446) {
                __loop_jump_target = -1;
                continue;
              }
              if (__loop_jump_target != -1) {
                break;
              }
              break;
            }
          } else {
            _1697 = 0.0f;
            _1698 = _1422;
            _1699 = _1421;
            _1700 = _1420;
            _1701 = 0.0f;
            _1702 = -10000.0f;
          }
          _1703 = (int)(_1702);
          if ((uint)_1703 < (uint)8) {
            _1706 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 0.5f;
            _1710 = _1700 - (_1706 * _207);
            _1711 = _1699 - (_1706 * _208);
            _1712 = _1698 - (_1706 * _209);
            if ((int)_1703 < (int)6) {
              _1719 = 0;
              while(true) {
                _1721 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1719) + (int)(20)))];
                _1749 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1719) + (int)(36)))];
                // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.16.00]
                // Description: Jitters this native voxel coordinate before integer quantization when Snow / Fog Lighting Fixes is active; when disabled, the helper returns the coordinate unchanged.
                float3 _rndx_surfel_jitter_1759 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _1710) * _1721.w) + _1749.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _1711) * _1721.w) + _1749.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _1712) * _1721.w) + _1749.z), float2(_76, _77), _181, _frameNumber.x);
                _1759 = (int)(floor(_rndx_surfel_jitter_1759.x));
                _1760 = (int)(floor(_rndx_surfel_jitter_1759.y));
                _1761 = (int)(floor(_rndx_surfel_jitter_1759.z));
                // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
                if (((((int)_1759 >= (int)((int)(_1721.x + -63.0f))) && ((int)_1759 < (int)((int)(_1721.x + 63.0f)))) && (((int)_1760 >= (int)((int)(_1721.y + -31.0f))) && ((int)_1760 < (int)((int)(_1721.y + 31.0f))))) && (((int)_1761 >= (int)((int)(_1721.z + -63.0f))) && ((int)_1761 < (int)((int)(_1721.z + 63.0f))))) {
                  _1782 = (_1759 & 127);
                  _1783 = (_1760 & 63);
                  _1784 = (_1761 & 127);
                  _1785 = _1719;
                } else {
                  _1774 = (int)(_1719) + (int)(1);
                  if ((uint)_1774 < (uint)8) {
                    _1719 = _1774;
                    continue;
                  } else {
                    _1782 = -10000;
                    _1783 = -10000;
                    _1784 = -10000;
                    _1785 = -10000;
                  }
                }
                if (!((uint)_1785 > (uint)5)) {
                  _1797 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1782, _1783, ((int)((uint)((uint)((int)((int)((uint)((uint)(_1785)) * (uint)(130))) | (int)(1))) + (uint)((uint)(_1784)))), 0)))).x) & 4194303;
                  _1801 = (_1797 != 0) && ((uint)((int)(_1797) + (int)(4)) < (uint)3145729);
                  _1802 = select(_1801, _1782, -10000);
                  _1803 = select(_1801, _1783, -10000);
                  _1804 = select(_1801, _1784, -10000);
                  _1805 = select(_1801, _1785, -10000);
                  _1806 = _1706 * ((float)((int)((int)((uint)(1) << (_1785 & 31)))));
                  _1811 = 0;
                  while(true) {
                    _1813 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1811) + (int)(20)))];
                    _1841 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1811) + (int)(36)))];
                    // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.16.00]
                    // Description: Jitters this native voxel coordinate before integer quantization when Snow / Fog Lighting Fixes is active; when disabled, the helper returns the coordinate unchanged.
                    float3 _rndx_surfel_jitter_1851 = RenoDXSurfelVoxelJitter(float3((((_1710 - _1806) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x) * _1813.w) + _1841.x, (((_1711 - _1806) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y) * _1813.w) + _1841.y, (((_1712 - _1806) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z) * _1813.w) + _1841.z), float2(_76, _77), _181, _frameNumber.x);
                    _1851 = (int)(floor(_rndx_surfel_jitter_1851.x));
                    _1852 = (int)(floor(_rndx_surfel_jitter_1851.y));
                    _1853 = (int)(floor(_rndx_surfel_jitter_1851.z));
                    // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
                    if (((((int)_1851 >= (int)((int)(_1813.x + -63.0f))) && ((int)_1851 < (int)((int)(_1813.x + 63.0f)))) && (((int)_1852 >= (int)((int)(_1813.y + -31.0f))) && ((int)_1852 < (int)((int)(_1813.y + 31.0f))))) && (((int)_1853 >= (int)((int)(_1813.z + -63.0f))) && ((int)_1853 < (int)((int)(_1813.z + 63.0f))))) {
                      _1874 = (_1851 & 127);
                      _1875 = (_1852 & 63);
                      _1876 = (_1853 & 127);
                      _1877 = _1811;
                    } else {
                      _1866 = (int)(_1811) + (int)(1);
                      if ((uint)_1866 < (uint)8) {
                        _1811 = _1866;
                        continue;
                      } else {
                        _1874 = -10000;
                        _1875 = -10000;
                        _1876 = -10000;
                        _1877 = -10000;
                      }
                    }
                    if (!((uint)_1877 > (uint)5)) {
                      if (_1797 == 0) {
                        _1883 = 0;
                        _1884 = _1805;
                        _1885 = _1804;
                        _1886 = _1803;
                        _1887 = _1802;
                        while(true) {
                          _1896 = 0;
                          _1897 = _1884;
                          _1898 = _1885;
                          _1899 = _1886;
                          _1900 = _1887;
                          while(true) {
                            _1907 = 0;
                            while(true) {
                              _1908 = (int)(_1907) + (int)(_1874);
                              _1909 = (int)(_1896) + (int)(_1875);
                              _1910 = (int)(_1883) + (int)(_1876);
                              bool __branch_chain_1906;
                              if (((uint)_1909 > (uint)63) || ((uint)((int)(_1908) | (int)(_1910)) > (uint)127)) {
                                _1928 = 0;
                                __branch_chain_1906 = true;
                              } else {
                                _1922 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1908, _1909, ((int)((uint)((uint)(_1910)) + (uint)((uint)((int)((int)((uint)((uint)(_1877)) * (uint)(130))) | (int)(1))))), 0)))).x) & 4194303;
                                if (!((_1922 != 0) && ((uint)((int)(_1922) + (int)(4)) < (uint)3145729))) {
                                  _1928 = _1922;
                                  __branch_chain_1906 = true;
                                } else {
                                  _1934 = _1908;
                                  _1935 = _1909;
                                  _1936 = _1910;
                                  _1937 = _1877;
                                  _1938 = _1922;
                                  __branch_chain_1906 = false;
                                }
                              }
                              if (__branch_chain_1906) {
                                _1929 = (int)(_1907) + (int)(1);
                                if (((int)_1929 < (int)2) && (_1928 == 0)) {
                                  _1907 = _1929;
                                  continue;
                                } else {
                                  _1934 = _1900;
                                  _1935 = _1899;
                                  _1936 = _1898;
                                  _1937 = _1897;
                                  _1938 = _1928;
                                }
                              }
                              _1939 = (int)(_1896) + (int)(1);
                              if (((int)_1939 < (int)2) && (_1938 == 0)) {
                                _1896 = _1939;
                                _1897 = _1937;
                                _1898 = _1936;
                                _1899 = _1935;
                                _1900 = _1934;
                                __loop_jump_target = 1895;
                                break;
                              }
                              while(true) {
                                _1902 = (int)(_1883) + (int)(1);
                                if (((int)_1902 < (int)2) && (_1938 == 0)) {
                                  _1883 = _1902;
                                  _1884 = _1937;
                                  _1885 = _1936;
                                  _1886 = _1935;
                                  _1887 = _1934;
                                  __loop_jump_target = 1882;
                                  break;
                                }
                                while(true) {
                                  _1890 = _1937;
                                  _1891 = _1936;
                                  _1892 = _1935;
                                  _1893 = _1934;
                                  break;
                                }
                                break;
                              }
                              if (__loop_jump_target != -1) {
                                break;
                              }
                              break;
                            }
                            if (__loop_jump_target == 1895) {
                              __loop_jump_target = -1;
                              continue;
                            }
                            if (__loop_jump_target != -1) {
                              break;
                            }
                            break;
                          }
                          if (__loop_jump_target == 1882) {
                            __loop_jump_target = -1;
                            continue;
                          }
                          if (__loop_jump_target != -1) {
                            break;
                          }
                          break;
                        }
                      } else {
                        _1890 = _1805;
                        _1891 = _1804;
                        _1892 = _1803;
                        _1893 = _1802;
                      }
                      if ((uint)_1890 < (uint)6) {
                        _1944 = (uint)((uint)(_1890)) * (uint)(130);
                        _1950 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1893, _1892, ((int)((uint)((uint)((int)(_1944) | (int)(1))) + (uint)((uint)(_1891)))), 0)))).x) & 4194303;
                        if ((_1950 != 0) && ((uint)((int)(_1950) + (int)(4)) < (uint)3145729)) {
                          _1957 = (uint)(1) << (_1890 & 31);
                          _1959 = ((float)((int)(_1957))) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                          _1961 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((uint)((uint)((uint)(_1890)) + (uint)(20)))];
                          _1997 = 0.0f;
                          _1998 = 0.0f;
                          _1999 = 0.0f;
                          _2000 = 0.0f;
                          _2001 = 0;
                          while(true) {
                            _2003 = (int)((int)(_1950) + (int)(-1)) + (int)(_2001);
                            _2006 = __3__37__0__0__g_surfelDataBuffer[_2003]._baseColor;
                            _2008 = __3__37__0__0__g_surfelDataBuffer[_2003]._normal;
                            _2011 = __3__37__0__0__g_surfelDataBuffer[_2003]._radius;
                            if (!(_2006 == 0)) {
                              _2014 = __3__37__0__0__g_surfelDataBuffer[_2003]._radiance.z;
                              _2015 = __3__37__0__0__g_surfelDataBuffer[_2003]._radiance.y;
                              _2016 = __3__37__0__0__g_surfelDataBuffer[_2003]._radiance.x;
                              _2022 = (float)((uint)((uint)(_2006 & 255)));
                              _2023 = (float)((uint)((uint)(((uint)((uint)(_2006)) >> 8) & 255)));
                              _2024 = (float)((uint)((uint)(((uint)((uint)(_2006)) >> 16) & 255)));
                              _2049 = select(((_2022 * 0.003921569f) < 0.04045f), (_2022 * 0.000303527f), exp2(log2((_2022 * 0.003717127f) + 0.052132703f) * 2.4f));
                              _2050 = select(((_2023 * 0.003921569f) < 0.04045f), (_2023 * 0.000303527f), exp2(log2((_2023 * 0.003717127f) + 0.052132703f) * 2.4f));
                              _2051 = select(((_2024 * 0.003921569f) < 0.04045f), (_2024 * 0.000303527f), exp2(log2((_2024 * 0.003717127f) + 0.052132703f) * 2.4f));
                              _2063 = (((float)((uint)((uint)(_2008 & 255)))) * 0.007874016f) + -1.0f;
                              _2064 = (((float)((uint)((uint)(((uint)((uint)(_2008)) >> 8) & 255)))) * 0.007874016f) + -1.0f;
                              _2065 = (((float)((uint)((uint)(((uint)((uint)(_2008)) >> 16) & 255)))) * 0.007874016f) + -1.0f;
                              _2067 = rsqrt(dot(float3(_2063, _2064, _2065), float3(_2063, _2064, _2065)));  // [sem: invLength]
                              _2069 = ((_2008 & 16777215) == 0);
                              _2073 = (_1959 * 0.0019607844f) * ((float)((uint16_t)((int16_t)(_2011 & 255))));
                              _2089 = (((((float)((uint)((uint)((uint)((uint)(_2006)) >> 24)))) * 0.003937008f) + -0.5f) * _1959) + ((((_1961.x + -63.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_1893)) + (uint)(64)) - (uint)((uint)((int)(_1961.x))))) & 127)))) * _1959) - _viewPos.x);
                              _2090 = (((((float)((uint)((uint)((uint)((uint)(_2008)) >> 24)))) * 0.003937008f) + -0.5f) * _1959) + ((((_1961.y + -31.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_1892)) + (uint)(32)) - (uint)((uint)((int)(_1961.y))))) & 63)))) * _1959) - _viewPos.y);
                              _2091 = (((((float)((uint16_t)((int16_t)((uint16_t)(_2011) >> 8)))) * 0.003937008f) + -0.5f) * _1959) + ((((_1961.z + -63.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_1891)) + (uint)(64)) - (uint)((uint)((int)(_1961.z))))) & 127)))) * _1959) - _viewPos.z);
                              if (!((((_2016 < 0.0h) || ((_2049 > 1.1f) || (_2049 < 0.0f))) || ((_2015 < 0.0h) || ((_2050 > 1.1f) || (_2050 < 0.0f)))) || ((_2014 < 0.0h) || ((_2051 > 1.1f) || (_2051 < 0.0f))))) {
                                _2113 = -0.0f - _209;
                                _2116 = -0.0f - _208;
                                _2119 = -0.0f - _207;
                                _2128 = -0.0f - min(0.0f, (-0.0f - float(_2016)));
                                _2129 = -0.0f - min(0.0f, (-0.0f - float(_2015)));
                                _2130 = -0.0f - min(0.0f, (-0.0f - float(_2014)));
                                _2150 = ((-0.0f - _1344) - (_1697 * _207)) + _2089;
                                _2153 = ((-0.0f - _1345) - (_1697 * _208)) + _2090;
                                _2156 = ((-0.0f - _1346) - (_1697 * _209)) + _2091;
                                _2157 = dot(float3(_2150, _2153, _2156), float3(_2119, _2116, _2113));
                                _2161 = _2150 - (_2157 * _2119);
                                _2162 = _2153 - (_2157 * _2116);
                                _2163 = _2156 - (_2157 * _2113);
                                _2189 = 1.0f / ((float)((uint)((uint)(_1957))));
                                _2193 = frac(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _2091) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z) * _2189);
                                _2218 = select(((int)_1890 > (int)5), 1.0f, ((saturate((saturate(dot(float3(_2119, _2116, _2113), float3(select(_2069, _2119, (_2067 * _2063)), select(_2069, _2116, (_2067 * _2064)), select(_2069, _2113, (_2067 * _2065))))) + -0.03125f) * 1.032258f) * ((float)((bool)(dot(float3(_2161, _2162, _2163), float3(_2161, _2162, _2163)) < ((_2073 * _2073) * 64.0f))))) * ((float)((bool)(((__3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _2089) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _2189), (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _2090) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y) * _2189), (((((float)((uint)((uint)(_1944)))) + 1.0f) + ((select((_2193 < 0.0f), 1.0f, 0.0f) + _2193) * 128.0f)) * 0.00096153846f)), 0.0f)).x) > ((_1959 * 0.25f) * (saturate((dot(float3(_2128, _2129, _2130), float3(0.212671f, 0.71516f, 0.072169f)) * 0.0001f) / _exposure3.w) + 1.0f)))))));
                                _2225 = (((((_2050 * 0.33951f) + (_2049 * 0.61312f)) + (_2051 * 0.04737f)) * _2128) * _2218) + _1997;
                                _2226 = (((((_2050 * 0.91636f) + (_2049 * 0.0702f)) + (_2051 * 0.01345f)) * _2129) * _2218) + _1998;
                                _2227 = (((((_2050 * 0.10958f) + (_2049 * 0.02062f)) + (_2051 * 0.8698f)) * _2130) * _2218) + _1999;
                                _2228 = _2218 + _2000;
                                _2229 = (int)(_2001) + (int)(1);
                                if ((uint)_2229 < (uint)4) {
                                  _1997 = _2225;
                                  _1998 = _2226;
                                  _1999 = _2227;
                                  _2000 = _2228;
                                  _2001 = _2229;
                                  continue;
                                } else {
                                  _2232 = _2225;
                                  _2233 = _2226;
                                  _2234 = _2227;
                                  _2235 = _2228;
                                }
                              } else {
                                _2232 = _1997;
                                _2233 = _1998;
                                _2234 = _1999;
                                _2235 = _2000;
                              }
                            } else {
                              _2232 = _1997;
                              _2233 = _1998;
                              _2234 = _1999;
                              _2235 = _2000;
                            }
                            if (_2235 > 0.0f) {
                              _2238 = 1.0f / _2235;
                              _2252 = 1.0f;
                              _2253 = (-0.0f - min(0.0f, (-0.0f - (_2232 * _2238))));
                              _2254 = (-0.0f - min(0.0f, (-0.0f - (_2233 * _2238))));
                              _2255 = (-0.0f - min(0.0f, (-0.0f - (_2234 * _2238))));
                            } else {
                              _2252 = 0.0f;
                              _2253 = _2232;
                              _2254 = _2233;
                              _2255 = _2234;
                            }
                            break;
                          }
                        } else {
                          _2252 = 0.0f;
                          _2253 = 0.0f;
                          _2254 = 0.0f;
                          _2255 = 0.0f;
                        }
                      } else {
                        _2252 = 0.0f;
                        _2253 = 0.0f;
                        _2254 = 0.0f;
                        _2255 = 0.0f;
                      }
                    } else {
                      _2252 = 1.0f;
                      _2253 = 0.0f;
                      _2254 = 0.0f;
                      _2255 = 0.0f;
                    }
                    break;
                  }
                } else {
                  _2252 = 1.0f;
                  _2253 = 0.0f;
                  _2254 = 0.0f;
                  _2255 = 0.0f;
                }
                break;
              }
            } else {
              _2252 = 1.0f;
              _2253 = 0.0f;
              _2254 = 0.0f;
              _2255 = 0.0f;
            }
            _2263 = saturate((_1697 * 0.25f) / (((float)((int)((int)((uint)(1) << (_1410 & 31))))) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x)) * _2252;
            _2273 = -0.0f - min(0.0f, (-0.0f - (_2253 * _2263)));
            _2274 = -0.0f - min(0.0f, (-0.0f - (_2254 * _2263)));
            _2275 = -0.0f - min(0.0f, (-0.0f - (_2255 * _2263)));
            _2277 = select(((int)_1703 > (int)-1), 1.0f, 0.0f);
            _2278 = max(1e-06f, _1697);
            if (_2278 > 0.0f) {
              _2283 = (_2278 + _1343);
              _2284 = _2273;
              _2285 = _2274;
              _2286 = _2275;
              _2287 = _2277;
            } else {
              _2283 = _2278;
              _2284 = _2273;
              _2285 = _2274;
              _2286 = _2275;
              _2287 = _2277;
            }
          } else {
            _2283 = 0.0f;
            _2284 = 0.0f;
            _2285 = 0.0f;
            _2286 = 0.0f;
            _2287 = _1701;
          }
        } else {
          _2283 = 0.0f;
          _2284 = 0.0f;
          _2285 = 0.0f;
          _2286 = 0.0f;
          _2287 = 0.0f;
        }
        break;
      }
    } else {
      _2283 = _1009;
      _2284 = _1005;
      _2285 = _1006;
      _2286 = _1007;
      _2287 = _1008;
    }
    _2290 = saturate(5.0000005f - (_171 * 0.019531252f));  // [sem: expr_sat]
    _2291 = (_1212 != 0);
    if ((_1211 > 0.0f) && ((_1203 > 0.0f) && _2291)) {
      if (!(_1203 < _2283)) {
        _2301 = (_2283 <= 0.0f);
      } else {
        _2301 = true;
      }
    } else {
      _2301 = false;
    }
    _2305 = saturate(max(select(_2301, 1.0f, 0.0f), (1.0f - _2290)));  // [sem: expr_sat]
    _2306 = _2305 * _1211;
    _2309 = min(_2290, saturate(1.0f - _2306));
    if (!(_2287 == 0.0f)) {
      _2324 = ((_2309 * _2284) + (_2305 * _1208));
      _2325 = ((_2309 * _2285) + (_2305 * _1209));
      _2326 = ((_2309 * _2286) + (_2305 * _1210));
      _2327 = ((_2309 * _2287) + _2306);
    } else {
      _2324 = _1208;
      _2325 = _1209;
      _2326 = _1210;
      _2327 = _1211;
    }
    _2330 = 1.0f / max(1e-06f, (_2309 + _2305));
    _2334 = _2330 * ((_2309 * _2283) + (_2305 * _1203));
    _2336 = _2330 * _2305;
    _2340 = (_2334 * _207) + _166;
    _2341 = (_2334 * _208) + _167;
    _2342 = (_2334 * _209) + _168;
    [branch]
    if (!(_2334 <= 0.0f)) {
      _2372 = mad((_viewProjRelative[3].z), _2342, mad((_viewProjRelative[3].y), _2341, ((_viewProjRelative[3].x) * _2340))) + (_viewProjRelative[3].w);
      _2377 = (((mad((_viewProjRelative[0].z), _2342, mad((_viewProjRelative[0].y), _2341, ((_viewProjRelative[0].x) * _2340))) + (_viewProjRelative[0].w)) / _2372) * 0.5f) + 0.5f;
      _2378 = 0.5f - (((mad((_viewProjRelative[1].z), _2342, mad((_viewProjRelative[1].y), _2341, ((_viewProjRelative[1].x) * _2340))) + (_viewProjRelative[1].w)) / _2372) * 0.5f);
      if (((_2377 >= 0.0f) && (_2377 <= 1.0f)) && ((_2378 >= 0.0f) && (_2378 <= 1.0f))) {
        if (_2291 && (((mad((_viewProjRelative[2].z), _2342, mad((_viewProjRelative[2].y), _2341, ((_viewProjRelative[2].x) * _2340))) + (_viewProjRelative[2].w)) / _2372) > 0.0f)) {
          if (_renderParams.x == 0.0f) {
            // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod]
            half4 _2405 = __3__36__0__0__g_sceneShadowColor.SampleLevel(__3__40__0__0__g_sampler, float2(_2377, _2378), 0.0f);
            _2413 = float(_2405.x);  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2414 = float(_2405.y);  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2415 = float(_2405.z);  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          } else {
            _2413 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2414 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2415 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          }
        } else {
          _2413 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          _2414 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          _2415 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
        }
      } else {
        _2413 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
        _2414 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
        _2415 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
      }
      _2422 = _viewPos.x + _2340;
      _2423 = _viewPos.y + _2341;
      _2424 = _viewPos.z + _2342;
      _2429 = _2422 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].x);
      _2430 = _2423 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].y);
      _2431 = _2424 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].z);
      _2451 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].z), _2431, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].y), _2430, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].x) * _2429))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].w);
      _2455 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].z), _2431, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].y), _2430, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].x) * _2429))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].w);
      _2462 = 2.0f / __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y;
      _2463 = 1.0f - _2462;
      _2470 = (((!(_2451 <= _2463)) || (!(_2451 >= _2462))) || (!(_2455 <= _2463))) || (!(_2455 >= _2462));
      _2479 = _2422 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].x);
      _2480 = _2423 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].y);
      _2481 = _2424 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].z);
      _2501 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].z), _2481, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].y), _2480, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].x) * _2479))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].w);
      _2505 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].z), _2481, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].y), _2480, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].x) * _2479))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].w);
      _2516 = (((!(_2501 <= _2463)) || (!(_2501 >= _2462))) || (!(_2505 <= _2463))) || (!(_2505 >= _2462));
      _2517 = select(_2516, select(_2470, 0.0f, _2451), _2501);
      _2518 = select(_2516, select(_2470, 0.0f, _2455), _2505);
      _2519 = select(_2516, select(_2470, 0.0f, (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].z), _2431, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].y), _2430, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].x) * _2429))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].w))), (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].z), _2481, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].y), _2480, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].x) * _2479))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].w)));
      _2520 = select(_2516, select(_2470, -1, 1), 0);
      [branch]
      if (!(_2520 == -1)) {
        _2526 = (_2517 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x) + -0.5f;
        _2527 = (_2518 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y) + -0.5f;
        _2530 = (int)(floor(_2526));
        _2531 = (int)(floor(_2527));
        _2534 = (uint)((uint)(_2530)) + (uint)(1);
        _2535 = (uint)((uint)(_2531)) + (uint)(1);
        if (!(((uint)_2530 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x)))) || ((uint)_2531 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y)))))) {
          // [sem: _3__36__0__0__g_shadowColorArray_sampleLod]
          half4 _2552 = __3__36__0__0__g_shadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_2517, _2518, ((float)((uint)((uint)(_2520))))), 0.0f);
          _2558 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2530, _2531, _2520, 0)))).x);
          _2559 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2534, _2531, _2520, 0)))).x);
          _2560 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2530, _2535, _2520, 0)))).x);
          _2561 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2534, _2535, _2520, 0)))).x);
          _2562 = (half)(_2552.x);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2563 = (half)(_2552.y);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2564 = (half)(_2552.z);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2565 = (half)(_2552.w);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
        } else {
          _2558 = 0.0f;
          _2559 = 0.0f;
          _2560 = 0.0f;
          _2561 = 0.0f;
          _2562 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2563 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2564 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2565 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
        }
        _2566 = (int)(_2520) << 2;
        _2568 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2566) + (int)(103)))];
        _2574 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2566) + (int)(104)))];
        _2580 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2566) + (int)(105)))];
        _2586 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2566) + (int)(106)))];
        _2591 = _2568.x * _2517;
        _2595 = _2568.y * _2517;
        _2599 = _2568.z * _2517;
        _2603 = _2568.w * _2517;
        _2606 = mad(_2580.w, _2558, mad(_2574.w, _2518, _2603)) + _2586.w;
        _2607 = (mad(_2580.x, _2558, mad(_2574.x, _2518, _2591)) + _2586.x) / _2606;
        _2608 = (mad(_2580.y, _2558, mad(_2574.y, _2518, _2595)) + _2586.y) / _2606;
        _2609 = (mad(_2580.z, _2558, mad(_2574.z, _2518, _2599)) + _2586.z) / _2606;
        _2612 = _2517 + (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.z * 4.0f);
        _2628 = mad(_2580.w, _2559, mad(_2574.w, _2518, (_2568.w * _2612))) + _2586.w;
        _2634 = _2518 - (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.w * 2.0f);
        _2646 = mad(_2580.w, _2560, mad(_2574.w, _2634, _2603)) + _2586.w;
        _2650 = ((mad(_2580.x, _2560, mad(_2574.x, _2634, _2591)) + _2586.x) / _2646) - _2607;
        _2651 = ((mad(_2580.y, _2560, mad(_2574.y, _2634, _2595)) + _2586.y) / _2646) - _2608;
        _2652 = ((mad(_2580.z, _2560, mad(_2574.z, _2634, _2599)) + _2586.z) / _2646) - _2609;
        _2653 = ((mad(_2580.x, _2559, mad(_2574.x, _2518, (_2568.x * _2612))) + _2586.x) / _2628) - _2607;
        _2654 = ((mad(_2580.y, _2559, mad(_2574.y, _2518, (_2568.y * _2612))) + _2586.y) / _2628) - _2608;
        _2655 = ((mad(_2580.z, _2559, mad(_2574.z, _2518, (_2568.z * _2612))) + _2586.z) / _2628) - _2609;
        _2658 = (_2652 * _2654) - (_2651 * _2655);
        _2661 = (_2650 * _2655) - (_2652 * _2653);
        _2664 = (_2651 * _2653) - (_2650 * _2654);
        _2666 = rsqrt(dot(float3(_2658, _2661, _2664), float3(_2658, _2661, _2664)));  // [sem: invLength]
        _2667 = _2658 * _2666;
        _2668 = _2661 * _2666;
        _2669 = _2664 * _2666;
        _2670 = frac(_2526);
        _2675 = (saturate(dot(float3(_207, _208, _209), float3(_2667, _2668, _2669))) * 0.002f) + _2519;
        _2688 = saturate(exp2((_2558 - _2675) * 1.442695e+06f));  // [sem: expr_sat]
        _2690 = saturate(exp2((_2560 - _2675) * 1.442695e+06f));  // [sem: expr_sat]
        _2696 = ((saturate(exp2((_2559 - _2675) * 1.442695e+06f)) - _2688) * _2670) + _2688;
        _2703 = _2667;
        _2704 = _2668;
        _2705 = _2669;
        // [sem: expr_sat]
        _2706 = saturate((((_2690 - _2696) + ((saturate(exp2((_2561 - _2675) * 1.442695e+06f)) - _2690) * _2670)) * frac(_2527)) + _2696);
        _2707 = _2558;
        _2708 = _2559;
        _2709 = _2560;
        _2710 = _2561;
        _2711 = _2562;
        _2712 = _2563;
        _2713 = _2564;
        _2714 = _2565;
      } else {
        _2703 = 0.0f;
        _2704 = 0.0f;
        _2705 = 0.0f;
        _2706 = 0.0f;  // [sem: expr_sat]
        _2707 = 0.0f;
        _2708 = 0.0f;
        _2709 = 0.0f;
        _2710 = 0.0f;
        _2711 = 0.0h;
        _2712 = 0.0h;
        _2713 = 0.0h;
        _2714 = 0.0h;
      }
      _2734 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].z), _2342, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].y), _2341, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].x) * _2340))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].w);
      _2738 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].z), _2342, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].y), _2341, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].x) * _2340))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].w);
      _2742 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].z), _2342, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].y), _2341, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].x) * _2340))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].w);
      _2745 = 4.0f / __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y;
      _2746 = 1.0f - _2745;
      if (!(((!(_2734 <= _2746)) || (!(_2734 >= _2745))) || (!(_2738 <= _2746)))) {
        _2757 = (_2742 >= -1.0f) && ((_2742 <= 1.0f) && (_2738 >= _2745));
        _2765 = select(_2757, 1e-05f, -0.0001f);
        _2766 = select(_2757, _2734, _2517);
        _2767 = select(_2757, _2738, _2518);
        _2768 = select(_2757, _2742, _2519);
        _2769 = select(_2757, 1, _2520);
        _2770 = ((int)(uint)(_2757));
      } else {
        _2765 = -0.0001f;
        _2766 = _2517;
        _2767 = _2518;
        _2768 = _2519;
        _2769 = _2520;
        _2770 = 0;
      }
      _2790 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].z), _2342, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].y), _2341, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].x) * _2340))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].w);
      _2794 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].z), _2342, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].y), _2341, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].x) * _2340))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].w);
      _2798 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].z), _2342, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].y), _2341, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].x) * _2340))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].w);
      if (!(((!(_2790 <= _2746)) || (!(_2790 >= _2745))) || (!(_2794 <= _2746)))) {
        _2809 = (_2798 >= -1.0f) && ((_2794 >= _2745) && (_2798 <= 1.0f));
        _2817 = select(_2809, 1e-05f, _2765);
        _2818 = select(_2809, _2790, _2766);
        _2819 = select(_2809, _2794, _2767);
        _2820 = select(_2809, _2798, _2768);
        _2821 = select(_2809, 0, _2769);
        _2822 = select(_2809, 1, _2770);
      } else {
        _2817 = _2765;
        _2818 = _2766;
        _2819 = _2767;
        _2820 = _2768;
        _2821 = _2769;
        _2822 = _2770;
      }
      [branch]
      if (!(_2822 == 0)) {
        _2832 = (int)(floor((_2818 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f));
        _2833 = (int)(floor((_2819 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f));
        _2836 = (uint)((uint)(_2832)) + (uint)(1);
        _2837 = (uint)((uint)(_2833)) + (uint)(1);
        if (!(((uint)_2832 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x)))) || ((uint)_2833 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y)))))) {
          _2852 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2832, _2833, _2821, 0)))).x);
          _2853 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2836, _2833, _2821, 0)))).x);
          _2854 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2832, _2837, _2821, 0)))).x);
          _2855 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2836, _2837, _2821, 0)))).x);
        } else {
          _2852 = _2707;
          _2853 = _2708;
          _2854 = _2709;
          _2855 = _2710;
        }
        _2856 = (uint)((uint)(_2821)) << 2;
        _2858 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)((uint)((uint)(_2856)) + (uint)(58)))];
        _2864 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)((uint)((uint)(_2856)) + (uint)(59)))];
        _2870 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)((uint)((uint)(_2856)) + (uint)(60)))];
        _2876 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)((uint)((uint)(_2856)) + (uint)(61)))];
        _2881 = _2858.x * _2818;
        _2885 = _2858.y * _2818;
        _2889 = _2858.z * _2818;
        _2893 = _2858.w * _2818;
        _2896 = mad(_2870.w, _2852, mad(_2864.w, _2819, _2893)) + _2876.w;
        _2897 = (mad(_2870.x, _2852, mad(_2864.x, _2819, _2881)) + _2876.x) / _2896;
        _2898 = (mad(_2870.y, _2852, mad(_2864.y, _2819, _2885)) + _2876.y) / _2896;
        _2899 = (mad(_2870.z, _2852, mad(_2864.z, _2819, _2889)) + _2876.z) / _2896;
        _2902 = _2818 + (__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.z * 8.0f);
        _2918 = mad(_2870.w, _2853, mad(_2864.w, _2819, (_2858.w * _2902))) + _2876.w;
        _2924 = _2819 - (__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.w * 4.0f);
        _2936 = mad(_2870.w, _2854, mad(_2864.w, _2924, _2893)) + _2876.w;
        _2940 = ((mad(_2870.x, _2854, mad(_2864.x, _2924, _2881)) + _2876.x) / _2936) - _2897;
        _2941 = ((mad(_2870.y, _2854, mad(_2864.y, _2924, _2885)) + _2876.y) / _2936) - _2898;
        _2942 = ((mad(_2870.z, _2854, mad(_2864.z, _2924, _2889)) + _2876.z) / _2936) - _2899;
        _2943 = ((mad(_2870.x, _2853, mad(_2864.x, _2819, (_2858.x * _2902))) + _2876.x) / _2918) - _2897;
        _2944 = ((mad(_2870.y, _2853, mad(_2864.y, _2819, (_2858.y * _2902))) + _2876.y) / _2918) - _2898;
        _2945 = ((mad(_2870.z, _2853, mad(_2864.z, _2819, (_2858.z * _2902))) + _2876.z) / _2918) - _2899;
        _2948 = (_2942 * _2944) - (_2941 * _2945);
        _2951 = (_2940 * _2945) - (_2942 * _2943);
        _2954 = (_2941 * _2943) - (_2940 * _2944);
        _2956 = rsqrt(dot(float3(_2948, _2951, _2954), float3(_2948, _2951, _2954)));  // [sem: invLength]
        if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
          _2974 = _sunDirection.x;
          _2975 = _sunDirection.y;
          _2976 = _sunDirection.z;
        } else {
          _2974 = _moonDirection.x;
          _2975 = _moonDirection.y;
          _2976 = _moonDirection.z;
        }
        _2982 = (_2817 - (saturate(-0.0f - dot(float3(_2974, _2975, _2976), float3(_207, _208, _209))) * 0.0001f)) + _2820;
        _2995 = (_2948 * _2956);
        _2996 = (_2951 * _2956);
        _2997 = (_2954 * _2956);
        _2998 = min(((float)((bool)(_2852 > _2982))), min(min(((float)((bool)(_2853 > _2982))), ((float)((bool)(_2854 > _2982)))), ((float)((bool)(_2855 > _2982)))));
      } else {
        _2995 = _2703;
        _2996 = _2704;
        _2997 = _2705;
        _2998 = _2706;
      }
      _3003 = _viewPos.x - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.x;
      _3004 = _viewPos.y - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.y;
      _3005 = _viewPos.z - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.z;
      _3006 = _3003 + _2340;
      _3007 = _3004 + _2341;
      _3008 = _3005 + _2342;
      _3028 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].z), _3008, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].y), _3007, (_3006 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].w);
      _3032 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].z), _3008, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].y), _3007, (_3006 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].w);
      _3036 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].z), _3008, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].y), _3007, (_3006 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].w);
      if (saturate(_3028) == _3028) {
        if ((_3036 >= 0.0001f) && ((_3036 <= 1.0f) && (saturate(_3032) == _3032))) {
          _3051 = frac((_3028 * 1024.0f) + -0.5f);
          _3055 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_3028, _3032));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
          _3060 = _3036 + -0.005f;
          _3065 = select((_3055.w > _3060), 1.0f, 0.0f);
          _3067 = select((_3055.x > _3060), 1.0f, 0.0f);
          _3074 = ((select((_3055.z > _3060), 1.0f, 0.0f) - _3065) * _3051) + _3065;
          // [sem: expr_sat]
          _3080 = saturate((((((select((_3055.y > _3060), 1.0f, 0.0f) - _3067) * _3051) + _3067) - _3074) * frac((_3032 * 1024.0f) + -0.5f)) + _3074);
        } else {
          _3080 = 1.0f;  // [sem: expr_sat]
        }
      } else {
        _3080 = 1.0f;  // [sem: expr_sat]
      }
      _3081 = min(_2998, _3080);
      _3082 = saturate(_2711);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived_derived_sat]
      _3083 = saturate(_2712);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived_derived_sat]
      _3084 = saturate(_2713);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived_derived_sat]
      _3098 = ((half)(((half)(_3083 * 0.3395996h)) + ((half)(_3082 * 0.61328125h)))) + ((half)(_3084 * 0.04736328h));
      _3099 = ((half)(((half)(_3083 * 0.9165039h)) + ((half)(_3082 * 0.07019043h)))) + ((half)(_3084 * 0.013450623h));
      _3100 = ((half)(((half)(_3083 * 0.109558105h)) + ((half)(_3082 * 0.020614624h)))) + ((half)(_3084 * 0.8696289h));
      _3103 = (_sunDirection.y > 0.0f);
      if ((_3103) || ((!(_3103)) && (_sunDirection.y > _moonDirection.y))) {
        _3115 = _sunDirection.x;
        _3116 = _sunDirection.y;
        _3117 = _sunDirection.z;
      } else {
        _3115 = _moonDirection.x;
        _3116 = _moonDirection.y;
        _3117 = _moonDirection.z;
      }
      if ((_3103) || ((!(_3103)) && (_sunDirection.y > _moonDirection.y))) {
        _3137 = _precomputedAmbient7.y;
      } else {
        _3137 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
      }
      _3140 = _2423 + _earthRadius;
      _3146 = sqrt(((_2424 * _2424) + (_2422 * _2422)) + (_3140 * _3140));
      _3151 = dot(float3((_2422 / _3146), (_3140 / _3146), (_2424 / _3146)), float3(_3115, _3116, _3117));
      _3155 = _atmosphereThickness + -16.0f;
      _3157 = min(max(((_3146 - _earthRadius) / _atmosphereThickness), 16.0f), _3155);
      _3159 = _atmosphereThickness + -32.0f;
      _3165 = max(_3157, 0.0f);
      _3166 = _earthRadius * 2.0f;
      _3172 = (-0.0f - sqrt((_3165 + _3166) * _3165)) / (_3165 + _earthRadius);
      if (_3151 > _3172) {
        _3195 = ((exp2(log2(saturate((_3151 - _3172) / (1.0f - _3172))) * 0.2f) * 0.4921875f) + 0.50390625f);
      } else {
        _3195 = ((exp2(log2(saturate((_3172 - _3151) / (_3172 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
      }
      // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
      _3200 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_3157 + -16.0f) / _3159)) * 0.5f) * 0.96875f) + 0.015625f), _3195), 0.0f);
      _3219 = _mieAerosolAbsorption + 1.0f;
      _3220 = _mieAerosolDensity * 2e-05f;
      _3222 = (_3220 * _3200.y) * _3219;
      _3228 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.0556001e-06f);
      _3231 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 4.9788005e-06f);
      _3234 = (_ozoneRatio * 2.1360002e-07f) + (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f);
      _3240 = exp2(((_3228 * _3200.x) + _3222) * -1.442695f);
      _3241 = exp2(((_3231 * _3200.x) + _3222) * -1.442695f);
      _3242 = exp2(((_3234 * _3200.x) + _3222) * -1.442695f);
      _3261 = sqrt((_2340 * _2340) + (_2342 * _2342));
      _3269 = (_cloudAltitude - (max(((_3261 * _3261) + -400000.0f), 0.0f) * 1e-06f)) - _viewPos.y;
      _3281 = (_cloudThickness * (0.5f - (((float)((int)((int)((int)(uint)((int)(_3116 > 0.0f))) - (int)((int)(uint)((int)(_3116 < 0.0f)))))) * 0.5f))) + _3269;
      if (_2341 < _3269) {
        _3284 = dot(float3(0.0f, 1.0f, 0.0f), float3(_3115, _3116, _3117));
        _3290 = select((abs(_3284) < 1e-08f), 1e+08f, ((_3281 - dot(float3(0.0f, 1.0f, 0.0f), float3(_2340, _2341, _2342))) / _3284));
        _3296 = ((_3290 * _3115) + _2340);
        _3297 = _3281;
        _3298 = ((_3290 * _3117) + _2342);
      } else {
        _3296 = _2340;
        _3297 = _2341;
        _3298 = _2342;
      }
      _3311 = _cloudScatteringCoefficient / _distanceScale;
      _3312 = _distanceScale * -1.442695f;
      _3318 = saturate(abs(_3116) * 4.0f);  // [sem: expr_sat]
      _3320 = (_3318 * _3318) * exp2((_3312 * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_3296 * 5e-05f) + 0.5f), ((_3297 - _3269) / _cloudThickness), ((_3298 * 5e-05f) + 0.5f)), 0.0f)).x)) * _3311);
      _3327 = ((1.0f - _3320) * saturate(((_2341 - _cloudThickness) - _3269) * 0.1f)) + _3320;
      _3328 = _3327 * (((_3241 * 0.33951f) + (_3240 * 0.61312f)) + (_3242 * 0.04737f));
      _3329 = _3327 * (((_3241 * 0.91636f) + (_3240 * 0.0702f)) + (_3242 * 0.01345f));
      _3330 = _3327 * (((_3241 * 0.10958f) + (_3240 * 0.02062f)) + (_3242 * 0.8698f));
      _3349 = float(saturate(_2714));
      if ((_1004 != 0) && (!_1024)) {
        _3351 = (_1207 > 0.0f);
        _3352 = select(_3351, _1204, _2995);
        _3353 = select(_3351, _1205, _2996);
        _3354 = select(_3351, _1206, _2997);
        _3355 = select(_3351, _1207, 0.8f);
        if (_1003 > 0.0f) {
          _3358 = half(_1000);
          _3359 = half(_1001);
          _3360 = half(_1002);
          _3366 = _3355;
          _3367 = _3352;
          _3368 = _3353;
          _3369 = _3354;
          _3370 = _3358;
          _3371 = _3359;
          _3372 = _3360;
          _3373 = _1003;
          _3374 = float(_3358);
          _3375 = float(_3359);
          _3376 = float(_3360);
          _3377 = dot(float3(_3352, _3353, _3354), float3(_3115, _3116, _3117));
        } else {
          _3366 = _3355;
          _3367 = _3352;
          _3368 = _3353;
          _3369 = _3354;
          _3370 = _3098;
          _3371 = _3099;
          _3372 = _3100;
          _3373 = 0.1f;
          _3374 = 1.0f;
          _3375 = 1.0f;
          _3376 = 1.0f;
          _3377 = _3349;
        }
      } else {
        _3366 = 0.8f;
        _3367 = _2995;
        _3368 = _2996;
        _3369 = _2997;
        _3370 = _3098;
        _3371 = _3099;
        _3372 = _3100;
        _3373 = 0.1f;
        _3374 = 1.0f;
        _3375 = 1.0f;
        _3376 = 1.0f;
        _3377 = _3349;
      }
      _3385 = float(half(saturate(_3377) * 0.31830987f)) * _3081;
      _3393 = 0.7f / min(max(max(max(_3374, _3375), _3376), 0.01f), 0.7f);
      _3404 = (((_3393 * _3375) + -0.04f) * _3373) + 0.04f;
      _3406 = _3115 - _207;
      _3407 = _3116 - _208;
      _3408 = _3117 - _209;
      _3410 = rsqrt(dot(float3(_3406, _3407, _3408), float3(_3406, _3407, _3408)));  // [sem: invLength]
      _3411 = _3410 * _3406;
      _3412 = _3410 * _3407;
      _3413 = _3410 * _3408;
      _3414 = -0.0f - _207;
      _3415 = -0.0f - _208;
      _3416 = -0.0f - _209;
      _3421 = saturate(max(1e-05f, dot(float3(_3414, _3415, _3416), float3(_3367, _3368, _3369))));  // [sem: expr_sat]
      _3423 = saturate(dot(float3(_3367, _3368, _3369), float3(_3411, _3412, _3413)));  // [sem: expr_sat]
      _3426 = saturate(1.0f - saturate(saturate(dot(float3(_3414, _3415, _3416), float3(_3411, _3412, _3413)))));  // [sem: expr_sat]
      _3427 = _3426 * _3426;
      _3429 = (_3427 * _3427) * _3426;
      _3432 = _3429 * saturate(_3404 * 50.0f);
      _3433 = 1.0f - _3429;
      _3441 = saturate(_3377 * _3081);  // [sem: expr_sat]
      _3442 = _3366 * _3366;
      _3443 = _3442 * _3442;
      _3444 = 1.0f - _3442;
      _3456 = (((_3423 * _3443) - _3423) * _3423) + 1.0f;
      _3460 = (_3443 / ((_3456 * _3456) * 3.1415927f)) * (0.5f / ((((_3421 * _3444) + _3442) * _3377) + (_3421 * ((_3377 * _3444) + _3442))));
      // RenoDX: >>> [Patch: DirectLightMatrixFix] [Version: 1.16.00]
      // Description: The game converts the direct beam's transmittance to working space a second time here, on a value the lines above already converted; because the matrix rows sum to one that second pass only desaturates. On uses the single conversion, so low-sun light keeps the colour of the sky it arrives through, while every other factor of the term is unchanged. Off is the exact vanilla double conversion.
      _3471 = ((DIRECT_LIGHT_MATRIX_FIX != 0.f) ? (_3328 * _3137) : ((((_3328 * 0.61312f) + (_3329 * 0.33951f)) + (_3330 * 0.04737f)) * _3137)) * ((max((((_3433 * ((((_3393 * _3374) + -0.04f) * _3373) + 0.04f)) + _3432) * _3460), 0.0f) * _3441) + (_3385 * float(_3370)));
      _3473 = ((DIRECT_LIGHT_MATRIX_FIX != 0.f) ? (_3329 * _3137) : ((((_3328 * 0.0702f) + (_3329 * 0.91636f)) + (_3330 * 0.01345f)) * _3137)) * ((max((((_3433 * _3404) + _3432) * _3460), 0.0f) * _3441) + (_3385 * float(_3371)));
      _3475 = ((DIRECT_LIGHT_MATRIX_FIX != 0.f) ? (_3330 * _3137) : ((((_3328 * 0.02062f) + (_3329 * 0.10958f)) + (_3330 * 0.8698f)) * _3137)) * ((max((((_3433 * ((((_3393 * _3376) + -0.04f) * _3373) + 0.04f)) + _3432) * _3460), 0.0f) * _3441) + (_3385 * float(_3372)));
      // RenoDX: <<< [Patch: DirectLightMatrixFix]
      _3480 = dot(float3(_3471, _3473, _3475), float3(0.212671f, 0.71516f, 0.072169f));
      _3481 = min((max(0.0005f, _exposure3.w) * 4096.0f), _3480);
      _3485 = max(1e-09f, _3480);
      _3486 = (_3481 * _3471) / _3485;
      _3487 = (_3481 * _3473) / _3485;
      _3488 = (_3481 * _3475) / _3485;
      if ((_106 == 33) || (_106 == 54)) {
        if ((_3103) || ((!(_3103)) && (_sunDirection.y > _moonDirection.y))) {
          _3509 = _sunDirection.x;
          _3510 = _sunDirection.y;
          _3511 = _sunDirection.z;
        } else {
          _3509 = _moonDirection.x;
          _3510 = _moonDirection.y;
          _3511 = _moonDirection.z;
        }
        _3516 = rsqrt(dot(float3(_166, _167, _168), float3(_166, _167, _168)));  // [sem: invLength]
        _3517 = _3516 * _166;
        _3518 = _3516 * _167;
        _3519 = _3516 * _168;
        _3523 = _166 - (_126 * 0.04f);
        _3524 = _167 - (_127 * 0.04f);
        _3525 = _168 - (_128 * 0.04f);
        _3529 = (_viewPos.x - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].x)) + _3523;
        _3530 = (_viewPos.y - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].y)) + _3524;
        _3531 = (_viewPos.z - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].z)) + _3525;
        _3535 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].z), _3531, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].y), _3530, (_3529 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].w);
        _3539 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].z), _3531, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].y), _3530, (_3529 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].w);
        _3550 = (((!(_3535 <= _2463)) || (!(_3535 >= _2462))) || (!(_3539 <= _2463))) || (!(_3539 >= _2462));
        _3558 = (_viewPos.x - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].x)) + _3523;
        _3559 = (_viewPos.y - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].y)) + _3524;
        _3560 = (_viewPos.z - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].z)) + _3525;
        _3564 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].z), _3560, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].y), _3559, (_3558 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].w);
        _3568 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].z), _3560, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].y), _3559, (_3558 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].w);
        _3579 = (((!(_3564 <= _2463)) || (!(_3564 >= _2462))) || (!(_3568 <= _2463))) || (!(_3568 >= _2462));
        _3581 = select((_3579 && _3550), 0.0f, 0.001f);
        _3582 = select(_3579, select(_3550, 0.0f, _3535), _3564);
        _3583 = select(_3579, select(_3550, 0.0f, _3539), _3568);
        _3584 = select(_3579, select(_3550, 0.0f, (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].z), _3531, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].y), _3530, (_3529 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].w))), (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].z), _3560, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].y), _3559, (_3558 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].w)));
        _3585 = select(_3579, select(_3550, -1, 1), 0);
        [branch]
        if (!(_3585 == -1)) {
          _3591 = (_3582 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x) + -0.5f;
          _3592 = (_3583 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y) + -0.5f;
          _3595 = (int)(floor(_3591));
          _3596 = (int)(floor(_3592));
          _3599 = (uint)((uint)(_3595)) + (uint)(1);
          _3600 = (uint)((uint)(_3596)) + (uint)(1);
          if (!(((uint)_3595 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x)))) || ((uint)_3596 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y)))))) {
            _3615 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3595, _3596, _3585, 0)))).x);
            _3616 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3599, _3596, _3585, 0)))).x);
            _3617 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3595, _3600, _3585, 0)))).x);
            _3618 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3599, _3600, _3585, 0)))).x);
          } else {
            _3615 = 0.0f;
            _3616 = 0.0f;
            _3617 = 0.0f;
            _3618 = 0.0f;
          }
          _3619 = (int)(_3585) << 2;
          _3621 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3619) + (int)(103)))];
          _3627 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3619) + (int)(104)))];
          _3633 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3619) + (int)(105)))];
          _3639 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3619) + (int)(106)))];
          _3644 = _3621.x * _3582;
          _3648 = _3621.y * _3582;
          _3652 = _3621.z * _3582;
          _3656 = _3621.w * _3582;
          _3659 = mad(_3633.w, _3615, mad(_3627.w, _3583, _3656)) + _3639.w;
          _3660 = (mad(_3633.x, _3615, mad(_3627.x, _3583, _3644)) + _3639.x) / _3659;
          _3661 = (mad(_3633.y, _3615, mad(_3627.y, _3583, _3648)) + _3639.y) / _3659;
          _3662 = (mad(_3633.z, _3615, mad(_3627.z, _3583, _3652)) + _3639.z) / _3659;
          _3665 = _3582 + (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.z * 4.0f);
          _3681 = mad(_3633.w, _3616, mad(_3627.w, _3583, (_3621.w * _3665))) + _3639.w;
          _3687 = _3583 - (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.w * 2.0f);
          _3699 = mad(_3633.w, _3617, mad(_3627.w, _3687, _3656)) + _3639.w;
          _3703 = ((mad(_3633.x, _3617, mad(_3627.x, _3687, _3644)) + _3639.x) / _3699) - _3660;
          _3704 = ((mad(_3633.y, _3617, mad(_3627.y, _3687, _3648)) + _3639.y) / _3699) - _3661;
          _3705 = ((mad(_3633.z, _3617, mad(_3627.z, _3687, _3652)) + _3639.z) / _3699) - _3662;
          _3706 = ((mad(_3633.x, _3616, mad(_3627.x, _3583, (_3621.x * _3665))) + _3639.x) / _3681) - _3660;
          _3707 = ((mad(_3633.y, _3616, mad(_3627.y, _3583, (_3621.y * _3665))) + _3639.y) / _3681) - _3661;
          _3708 = ((mad(_3633.z, _3616, mad(_3627.z, _3583, (_3621.z * _3665))) + _3639.z) / _3681) - _3662;
          _3711 = (_3705 * _3707) - (_3704 * _3708);
          _3714 = (_3703 * _3708) - (_3705 * _3706);
          _3717 = (_3704 * _3706) - (_3703 * _3707);
          _3719 = rsqrt(dot(float3(_3711, _3714, _3717), float3(_3711, _3714, _3717)));  // [sem: invLength]
          _3723 = frac(_3591);
          _3728 = (saturate(dot(float3(_3517, _3518, _3519), float3((_3711 * _3719), (_3714 * _3719), (_3717 * _3719)))) * 0.002f) + _3584;
          _3741 = saturate(exp2((_3615 - _3728) * 1.442695e+06f));  // [sem: expr_sat]
          _3743 = saturate(exp2((_3617 - _3728) * 1.442695e+06f));  // [sem: expr_sat]
          _3749 = ((saturate(exp2((_3616 - _3728) * 1.442695e+06f)) - _3741) * _3723) + _3741;
          // [sem: expr_sat]
          _3756 = saturate((((_3743 - _3749) + ((saturate(exp2((_3618 - _3728) * 1.442695e+06f)) - _3743) * _3723)) * frac(_3592)) + _3749);
          _3757 = _3615;
          _3758 = _3616;
          _3759 = _3617;
          _3760 = _3618;
        } else {
          _3756 = 1.0f;  // [sem: expr_sat]
          _3757 = 0.0f;
          _3758 = 0.0f;
          _3759 = 0.0f;
          _3760 = 0.0f;
        }
        _3764 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].z), _3525, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].y), _3524, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].x) * _3523))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].w);
        _3768 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].z), _3525, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].y), _3524, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].x) * _3523))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].w);
        _3772 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].z), _3525, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].y), _3524, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].x) * _3523))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].w);
        if (!(((!(_3764 <= _2746)) || (!(_3764 >= _2745))) || (!(_3768 <= _2746)))) {
          _3783 = (_3772 >= -1.0f) && ((_3768 >= _2745) && (_3772 <= 1.0f));
          _3791 = select(_3783, 1e-05f, _3581);
          _3792 = select(_3783, _3764, _3582);
          _3793 = select(_3783, _3768, _3583);
          _3794 = select(_3783, _3772, _3584);
          _3795 = select(_3783, 1, _3585);
          _3796 = ((int)(uint)(_3783));
        } else {
          _3791 = _3581;
          _3792 = _3582;
          _3793 = _3583;
          _3794 = _3584;
          _3795 = _3585;
          _3796 = 0;
        }
        _3800 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].z), _3525, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].y), _3524, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].x) * _3523))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].w);
        _3804 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].z), _3525, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].y), _3524, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].x) * _3523))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].w);
        _3808 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].z), _3525, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].y), _3524, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].x) * _3523))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].w);
        if (!(((!(_3800 <= _2746)) || (!(_3800 >= _2745))) || (!(_3804 <= _2746)))) {
          _3819 = (_3808 >= -1.0f) && ((_3804 >= _2745) && (_3808 <= 1.0f));
          _3827 = select(_3819, 1e-05f, _3791);
          _3828 = select(_3819, _3800, _3792);
          _3829 = select(_3819, _3804, _3793);
          _3830 = select(_3819, _3808, _3794);
          _3831 = select(_3819, 0, _3795);
          _3832 = select(_3819, 1, _3796);
        } else {
          _3827 = _3791;
          _3828 = _3792;
          _3829 = _3793;
          _3830 = _3794;
          _3831 = _3795;
          _3832 = _3796;
        }
        [branch]
        if (!(_3832 == 0)) {
          _3842 = (int)(floor((_3828 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f));
          _3843 = (int)(floor((_3829 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f));
          _3846 = (uint)((uint)(_3842)) + (uint)(1);
          _3847 = (uint)((uint)(_3843)) + (uint)(1);
          if (!(((uint)_3842 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x)))) || ((uint)_3843 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y)))))) {
            _3862 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3842, _3843, _3831, 0)))).x);
            _3863 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3846, _3843, _3831, 0)))).x);
            _3864 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3842, _3847, _3831, 0)))).x);
            _3865 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3846, _3847, _3831, 0)))).x);
          } else {
            _3862 = _3757;
            _3863 = _3758;
            _3864 = _3759;
            _3865 = _3760;
          }
          if ((_3103) || ((!(_3103)) && (_sunDirection.y > _moonDirection.y))) {
            _3877 = _sunDirection.x;
            _3878 = _sunDirection.y;
            _3879 = _sunDirection.z;
          } else {
            _3877 = _moonDirection.x;
            _3878 = _moonDirection.y;
            _3879 = _moonDirection.z;
          }
          _3885 = (_3827 - (saturate(-0.0f - dot(float3(_3877, _3878, _3879), float3(_3517, _3518, _3519))) * 0.0001f)) + _3830;
          _3898 = min(((float)((bool)(_3862 > _3885))), min(min(((float)((bool)(_3863 > _3885))), ((float)((bool)(_3864 > _3885)))), ((float)((bool)(_3865 > _3885)))));
        } else {
          _3898 = _3756;
        }
        _3899 = _3003 + _3523;
        _3900 = _3004 + _3524;
        _3901 = _3005 + _3525;
        _3905 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].z), _3901, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].y), _3900, (_3899 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].w);
        _3909 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].z), _3901, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].y), _3900, (_3899 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].w);
        _3913 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].z), _3901, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].y), _3900, (_3899 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].w);
        if (saturate(_3905) == _3905) {
          if ((_3913 >= 0.0001f) && ((_3913 <= 1.0f) && (saturate(_3909) == _3909))) {
            _3928 = frac((_3905 * 1024.0f) + -0.5f);
            // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
            _3932 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_3905, _3909));
            _3937 = _3913 + -0.005f;
            _3942 = select((_3932.w > _3937), 1.0f, 0.0f);
            _3944 = select((_3932.x > _3937), 1.0f, 0.0f);
            _3951 = ((select((_3932.z > _3937), 1.0f, 0.0f) - _3942) * _3928) + _3942;
            // [sem: expr_sat]
            _3957 = saturate((((((select((_3932.y > _3937), 1.0f, 0.0f) - _3944) * _3928) + _3944) - _3951) * frac((_3909 * 1024.0f) + -0.5f)) + _3951);
          } else {
            _3957 = 1.0f;  // [sem: expr_sat]
          }
        } else {
          _3957 = 1.0f;  // [sem: expr_sat]
        }
        // [sem: _3__36__0__0__g_baseColor_load]
        _3963 = __3__36__0__0__g_baseColor.Load(int3(((int)((uint)(_76 * (1.0f / g_screenSpaceScale.x)))), ((int)((uint)(_77 * (1.0f / g_screenSpaceScale.y)))), 0));
        _3969 = ((float)((uint)((uint)(((uint)((uint)(_3963.x)) >> 8) & 255)))) * 0.003921569f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _3972 = ((float)((uint)((uint)(_3963.x & 255)))) * 0.003921569f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _3976 = ((float)((uint)((uint)(((uint)((uint)(_3963.y)) >> 8) & 255)))) * 0.003921569f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _3977 = _3969 * _3969;
        _3978 = _3972 * _3972;
        _3979 = _3976 * _3976;
        if ((_3103) || ((!(_3103)) && (_sunDirection.y > _moonDirection.y))) {
          _4014 = _precomputedAmbient7.y;
        } else {
          _4014 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
        }
        _4015 = _viewPos.x + _166;
        _4017 = (_earthRadius + _viewPos.y) + _167;
        _4018 = _viewPos.z + _168;
        _4024 = sqrt(((_4018 * _4018) + (_4015 * _4015)) + (_4017 * _4017));
        _4029 = dot(float3((_4015 / _4024), (_4017 / _4024), (_4018 / _4024)), float3(_3509, _3510, _3511));
        _4032 = min(max(((_4024 - _earthRadius) / _atmosphereThickness), 16.0f), _3155);
        _4039 = max(_4032, 0.0f);
        _4045 = (-0.0f - sqrt((_4039 + _3166) * _4039)) / (_4039 + _earthRadius);
        if (_4029 > _4045) {
          _4068 = ((exp2(log2(saturate((_4029 - _4045) / (1.0f - _4045))) * 0.2f) * 0.4921875f) + 0.50390625f);
        } else {
          _4068 = ((exp2(log2(saturate((_4045 - _4029) / (_4045 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
        }
        // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
        _4071 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_4032 + -16.0f) / _3159)) * 0.5f) * 0.96875f) + 0.015625f), _4068), 0.0f);
        _4075 = (_3220 * _3219) * _4071.y;
        _4085 = exp2((_4075 + (_4071.x * _3228)) * -1.442695f);
        _4086 = exp2((_4075 + (_4071.x * _3231)) * -1.442695f);
        _4087 = exp2((_4075 + (_4071.x * _3234)) * -1.442695f);
        _4106 = sqrt((_168 * _168) + (_166 * _166));
        _4112 = (_cloudAltitude - (max(((_4106 * _4106) + -400000.0f), 0.0f) * 1e-06f)) - _viewPos.y;
        _4122 = _4112 + ((0.5f - (((float)((int)((int)((int)(uint)((int)(_3510 > 0.0f))) - (int)((int)(uint)((int)(_3510 < 0.0f)))))) * 0.5f)) * _cloudThickness);
        if (_167 < _4112) {
          _4125 = dot(float3(0.0f, 1.0f, 0.0f), float3(_3509, _3510, _3511));
          _4131 = select((abs(_4125) < 1e-08f), 1e+08f, ((_4122 - dot(float3(0.0f, 1.0f, 0.0f), float3(_166, _167, _168))) / _4125));
          _4137 = ((_4131 * _3509) + _166);
          _4138 = _4122;
          _4139 = ((_4131 * _3511) + _168);
        } else {
          _4137 = _166;
          _4138 = _167;
          _4139 = _168;
        }
        _4153 = saturate(abs(_3510) * 4.0f);  // [sem: expr_sat]
        _4155 = (_4153 * _4153) * exp2((_3312 * _3311) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_4137 * 5e-05f) + 0.5f), ((_4138 - _4112) / _cloudThickness), ((_4139 * 5e-05f) + 0.5f)), 0.0f)).x));
        _4162 = ((1.0f - _4155) * saturate(((_167 - _cloudThickness) - _4112) * 0.1f)) + _4155;
        _4163 = _4162 * (((_4086 * 0.33951f) + (_4085 * 0.61312f)) + (_4087 * 0.04737f));
        _4164 = _4162 * (((_4086 * 0.91636f) + (_4085 * 0.0702f)) + (_4087 * 0.01345f));
        _4165 = _4162 * (((_4086 * 0.10958f) + (_4085 * 0.02062f)) + (_4087 * 0.8698f));
        _4181 = ((max(0.0f, (0.3f - dot(float3(_126, _127, _128), float3(_3509, _3510, _3511)))) * 0.15734209f) * saturate(min(_3898, _3957))) * _4014;
        // RenoDX: >>> [Patch: DirectLightMatrixFix] [Version: 1.16.00]
        // Description: The game converts this direct beam's transmittance to working space a second time here, on a value the lines above already converted; because the matrix rows sum to one that second pass only desaturates. On uses the single conversion, so low-sun light keeps the colour of the sky it arrives through, while every other factor of the term is unchanged. Off is the exact vanilla double conversion. The neighbouring conversion in the same product is applied to a separately derived vector and stays vanilla in both states.
        _4192 = (((_4181 * (((_3977 * 0.61312f) + (_3978 * 0.33951f)) + (_3979 * 0.04737f))) * ((DIRECT_LIGHT_MATRIX_FIX != 0.f) ? _4163 : (((_4163 * 0.61312f) + (_4164 * 0.33951f)) + (_4165 * 0.04737f)))) + _3486);
        _4193 = (((_4181 * (((_3977 * 0.0702f) + (_3978 * 0.91636f)) + (_3979 * 0.01345f))) * ((DIRECT_LIGHT_MATRIX_FIX != 0.f) ? _4164 : (((_4163 * 0.0702f) + (_4164 * 0.91636f)) + (_4165 * 0.01345f)))) + _3487);
        _4194 = (((_4181 * (((_3977 * 0.02062f) + (_3978 * 0.10958f)) + (_3979 * 0.8698f))) * ((DIRECT_LIGHT_MATRIX_FIX != 0.f) ? _4165 : (((_4163 * 0.02062f) + (_4164 * 0.10958f)) + (_4165 * 0.8698f)))) + _3488);
        // RenoDX: <<< [Patch: DirectLightMatrixFix]
      } else {
        _4192 = _3486;
        _4193 = _3487;
        _4194 = _3488;
      }
      _4195 = (_renderParams2.z * _2413) * _4192;
      _4196 = (_renderParams2.z * _2414) * _4193;
      _4197 = (_renderParams2.z * _2415) * _4194;
      _4201 = _4195 + _2324;
      _4202 = _4196 + _2325;
      _4203 = _4197 + _2326;
      _4214 = _2334;
      _4215 = (((max(_2324, _4195) - _4201) * _2336) + _4201);
      _4216 = (((max(_2325, _4196) - _4202) * _2336) + _4202);
      _4217 = (((max(_2326, _4197) - _4203) * _2336) + _4203);
    } else {
      _4214 = 1000.0f;
      _4215 = _2324;
      _4216 = _2325;
      _4217 = _2326;
    }
    if (!_1011) {
      __3__38__0__1__g_raytracingHitResultUAV[int2(_74, _75)] = float4(_201, _202, _203, select((_4214 <= 0.0f), 1000.0f, _4214));
    }
    if ((_4214 > 128.0f) && (dot(float3(_4215, _4216, _4217), float3(0.212671f, 0.71516f, 0.072169f)) == 0.0f)) {
      _4228 = 1;
      while(true) {
        _4230 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_4228) + (int)(20)))];
        _4258 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_4228) + (int)(36)))];
        // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.16.00]
        // Description: Jitters this native voxel coordinate before integer quantization when Snow / Fog Lighting Fixes is active; when disabled, the helper returns the coordinate unchanged.
        float3 _rndx_surfel_jitter_4268 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _2340) * _4230.w) + _4258.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _2341) * _4230.w) + _4258.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _2342) * _4230.w) + _4258.z), float2(_76, _77), _181, _frameNumber.x);
        _4268 = (int)(floor(_rndx_surfel_jitter_4268.x));
        _4269 = (int)(floor(_rndx_surfel_jitter_4268.y));
        _4270 = (int)(floor(_rndx_surfel_jitter_4268.z));
        // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
        if (!(((((int)_4268 >= (int)((int)(_4230.x + -63.0f))) && ((int)_4268 < (int)((int)(_4230.x + 63.0f)))) && (((int)_4269 >= (int)((int)(_4230.y + -31.0f))) && ((int)_4269 < (int)((int)(_4230.y + 31.0f))))) && (((int)_4270 >= (int)((int)(_4230.z + -63.0f))) && ((int)_4270 < (int)((int)(_4230.z + 63.0f)))))) {
          _4283 = (int)(_4228) + (int)(1);
          if ((uint)_4283 < (uint)8) {
            _4228 = _4283;
            continue;
          } else {
            _4286 = -10000;
          }
        } else {
          _4286 = _4228;
        }
        if (!((uint)_4286 > (uint)3)) {
          _4306 = 1.0f / ((float)((uint)((uint)(1) << (_4286 & 31))));
          _4310 = frac(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _2342) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z) * _4306);
          // [sem: expr_sat]
          _4327 = saturate(1.0f - ((__3__36__0__1__g_skyVisibilityVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _2340) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _4306), (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _2341) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y) * _4306), (((((float)((uint)((uint)((uint)(_4286)) * (uint)(66)))) + 1.0f) + ((select((_4310 < 0.0f), 1.0f, 0.0f) + _4310) * 64.0f)) * 0.003787879f)), 0.0f)).x));
        } else {
          _4327 = 1.0f;  // [sem: expr_sat]
        }
        _4330 = _renderParams.w * _4327;
        _4331 = (_1003 == 0.0f);
        // [sem: _3__36__0__0__g_environmentColor_sampleLod]
        _4339 = __3__36__0__0__g_environmentColor.SampleLevel(__3__40__0__0__g_samplerTrilinear, float3(select(_4331, (-0.0f - _207), _1204), select(_4331, _208, _1205), select(_4331, (-0.0f - _209), _1206)), 4.0f);
        _4353 = ((_4330 * select(_4331, 0.03125f, _1000)) * _4339.x);
        _4354 = ((_4330 * select(_4331, 0.03125f, _1001)) * _4339.y);
        _4355 = ((_4330 * select(_4331, 0.03125f, _1002)) * _4339.z);
        break;
      }
    } else {
      _4353 = _4215;
      _4354 = _4216;
      _4355 = _4217;
    }
    _4362 = saturate(1.0f - saturate(_2327));  // [sem: expr_sat]
    _4366 = (_4362 - (_renderParams2.w * _4362)) + _renderParams2.w;
    // [sem: _3__36__0__0__g_environmentColor_sampleLod]
    _4370 = __3__36__0__0__g_environmentColor.SampleLevel(__3__40__0__0__g_samplerTrilinear, float3(_207, _208, _209), 4.0f);
    _4376 = _renderParams.w * _4366;
    _4377 = _4376 * _4370.x;
    _4378 = _4376 * _4370.y;
    _4379 = _4376 * _4370.z;
    _4384 = dot(float3(_4377, _4378, _4379), float3(0.212671f, 0.71516f, 0.072169f));
    _4385 = min((max(0.01f, _exposure3.w) * 2048.0f), _4384);
    _4389 = max(1e-09f, _4384);
    _4399 = ((__3__36__0__0__g_raytracingDiffuseRayInversePDF.Load(int3(_74, _75, 0))).x) * 2.0f;
    _4400 = _4399 * (((_4385 * _4377) / _4389) + (_renderParams2.y * _4353));
    _4401 = _4399 * (((_4385 * _4378) / _4389) + (_renderParams2.y * _4354));
    _4402 = _4399 * (((_4385 * _4379) / _4389) + (_renderParams2.y * _4355));
    if (!(_renderParams.y == 0.0f)) {
      _4407 = saturate(dot(float3(_126, _127, _128), float3(_207, _208, _209)));  // [sem: expr_sat]
      _4412 = (_4407 * _4400);
      _4413 = (_4407 * _4401);
      _4414 = (_4407 * _4402);
    } else {
      _4412 = _4400;
      _4413 = _4401;
      _4414 = _4402;
    }
    if ((((_102 & 126) == 96) || (_106 == 98)) && (_171 < 1000.0f)) {
      _4424 = (float)((uint)((uint)(_frameNumber.x)));
      _4435 = (frac(((_4424 * 92.0f) + _76) * 0.0078125f) * 128.0f) + -64.34062f;
      _4436 = (frac(((_4424 * 71.0f) + _77) * 0.0078125f) * 128.0f) + -72.46562f;
      _4441 = frac(dot(float3((_4435 * _4435), (_4436 * _4436), (_4436 * _4435)), float3(20.390625f, 60.703125f, 2.4281209f)));
      _4448 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(91))) & 15)));
      _4459 = (int)min((uint)(15), (uint)(((int)((uint)(frac(frac(dot(float2(((_4448 * 32.665f) + _76), ((_4448 * 11.815f) + _77)), float2(0.06711056f, 0.00583715f))) * 52.982918f) * 16.0f)))));
      _4472 = 0.27749997f / ((((float)((uint)((uint)(reversebits(_4459) ^ ((int)((uint)(_4441 * 2.8747837e+08f))))))) * 3.958121e-10f) + 0.14999998f);
      _4473 = frac((((float)((uint)((uint)(_4459)))) * 0.0625f) + (((float)((uint)((uint)(((int)((uint)(_4441 * 5.1540816e+07f))) & 65535)))) * 1.5258789e-05f)) * 6.2831855f;
      _4476 = saturate((_4472 * _4472) * -0.58823526f);  // [sem: expr_sat]
      _4479 = sqrt(1.0f - (_4476 * _4476));
      _4482 = cos(_4473) * _4479;
      _4483 = sin(_4473) * _4479;
      _4485 = -0.0f - _127;
      _4488 = select((_128 <= -0.0f), 1.0f, -1.0f);
      _4490 = 1.0f / (_4488 - _128);
      _4491 = -0.0f - _4490;
      _4493 = (_126 * _4491) * _127;
      _4494 = _4488 * _126;
      _4503 = mad(_4476, (-0.0f - _126), mad(_4483, _4493, ((((_4494 * _126) * _4491) + 1.0f) * _4482)));
      _4507 = mad(_4476, _4485, mad(_4483, (((_127 * _4485) * _4490) + _4488), ((_4482 * _4488) * _4493)));
      _4510 = mad(_4476, (-0.0f - _128), mad(_4483, _127, (_4494 * _4482)));
      _4515 = ((frac(frac(dot(float2(_76, _77), float2(0.06711056f, 0.00583715f))) * 52.982918f) * 0.1f) + 0.01f) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
      _4517 = 0;
      while(true) {
        _4519 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_4517) + (int)(20)))];
        _4547 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_4517) + (int)(36)))];
        // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.16.00]
        // Description: Jitters this native voxel coordinate before integer quantization when Snow / Fog Lighting Fixes is active; when disabled, the helper returns the coordinate unchanged.
        float3 _rndx_surfel_jitter_4557 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _166) * _4519.w) + _4547.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _167) * _4519.w) + _4547.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _168) * _4519.w) + _4547.z), float2(_76, _77), _181, _frameNumber.x);
        _4557 = (int)(floor(_rndx_surfel_jitter_4557.x));
        _4558 = (int)(floor(_rndx_surfel_jitter_4557.y));
        _4559 = (int)(floor(_rndx_surfel_jitter_4557.z));
        // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
        if (!(((((int)_4557 >= (int)((int)(_4519.x + -63.0f))) && ((int)_4557 < (int)((int)(_4519.x + 63.0f)))) && (((int)_4558 >= (int)((int)(_4519.y + -31.0f))) && ((int)_4558 < (int)((int)(_4519.y + 31.0f))))) && (((int)_4559 >= (int)((int)(_4519.z + -63.0f))) && ((int)_4559 < (int)((int)(_4519.z + 63.0f)))))) {
          _4572 = (int)(_4517) + (int)(1);
          if ((uint)_4572 < (uint)8) {
            _4517 = _4572;
            continue;
          } else {
            _4575 = -10000;
          }
        } else {
          _4575 = _4517;
        }
        if (!((_4575 == -10000) || ((int)_4575 > (int)4))) {
          _4588 = 0;
          _4589 = 1.0f;
          _4590 = 0.0f;
          _4591 = 0.0f;
          _4592 = 0.0f;
          _4593 = 0.05f;
          _4594 = ((_4515 * _4510) + _168);
          _4595 = ((_4515 * _4507) + _167);
          _4596 = ((_4515 * _4503) + _166);
          while(true) {
            _4598 = 0;
            while(true) {
              _4600 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_4598) + (int)(20)))];
              _4619 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_4598) + (int)(36)))];
              _4623 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _4596) * _4600.w) + _4619.x;
              _4624 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _4595) * _4600.w) + _4619.y;
              _4625 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _4594) * _4600.w) + _4619.z;
              if (!((_4625 >= (_4600.z + -63.0f)) && ((_4623 >= (_4600.x + -63.0f)) && (_4624 >= (_4600.y + -31.0f)))) || (((_4625 >= (_4600.z + -63.0f)) && ((_4623 >= (_4600.x + -63.0f)) && (_4624 >= (_4600.y + -31.0f)))) && (!((_4625 < (_4600.z + 63.0f)) && ((_4623 < (_4600.x + 63.0f)) && (_4624 < (_4600.y + 31.0f))))))) {
                _4641 = (int)(_4598) + (int)(1);
                if ((int)_4641 < (int)8) {
                  _4598 = _4641;
                  continue;
                } else {
                  _5211 = _4592;
                  _5212 = _4591;
                  _5213 = _4590;
                  _5214 = 0.0f;
                }
              } else {
                if ((uint)_4598 > (uint)3) {
                  _5206 = _4592;
                  _5207 = _4591;
                  _5208 = _4590;
                  _5209 = 0.0f;
                  _5211 = _5206;
                  _5212 = _5207;
                  _5213 = _5208;
                  _5214 = _5209;
                } else {
                  _4646 = max(0.05f, (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 0.05f));
                  _4648 = 0;
                  while(true) {
                    _4650 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_4648) + (int)(20)))];
                    _4678 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_4648) + (int)(36)))];
                    // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.16.00]
                    // Description: Jitters this native voxel coordinate before integer quantization when Snow / Fog Lighting Fixes is active; when disabled, the helper returns the coordinate unchanged.
                    float3 _rndx_surfel_jitter_4688 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _4596) * _4650.w) + _4678.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _4595) * _4650.w) + _4678.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _4594) * _4650.w) + _4678.z), float2(_76, _77), _181, _frameNumber.x);
                    _4688 = (int)(floor(_rndx_surfel_jitter_4688.x));
                    _4689 = (int)(floor(_rndx_surfel_jitter_4688.y));
                    _4690 = (int)(floor(_rndx_surfel_jitter_4688.z));
                    // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
                    if (((((int)_4688 >= (int)((int)(_4650.x + -63.0f))) && ((int)_4688 < (int)((int)(_4650.x + 63.0f)))) && (((int)_4689 >= (int)((int)(_4650.y + -31.0f))) && ((int)_4689 < (int)((int)(_4650.y + 31.0f))))) && (((int)_4690 >= (int)((int)(_4650.z + -63.0f))) && ((int)_4690 < (int)((int)(_4650.z + 63.0f))))) {
                      _4711 = (_4688 & 127);
                      _4712 = (_4689 & 63);
                      _4713 = (_4690 & 127);
                      _4714 = _4648;
                    } else {
                      _4703 = (int)(_4648) + (int)(1);
                      if ((uint)_4703 < (uint)8) {
                        _4648 = _4703;
                        continue;
                      } else {
                        _4711 = -10000;
                        _4712 = -10000;
                        _4713 = -10000;
                        _4714 = -10000;
                      }
                    }
                    if (!((uint)_4714 > (uint)5)) {
                      _4728 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_4711, _4712, ((int)((uint)((uint)((int)((int)((uint)((uint)(_4714)) * (uint)(130))) | (int)(1))) + (uint)((uint)(_4713)))), 0)))).x) & 4194303;
                      _4732 = (_4728 != 0) && ((uint)((int)(_4728) + (int)(4)) < (uint)3145729);
                      _4733 = select(_4732, _4711, -10000);
                      _4734 = select(_4732, _4712, -10000);
                      _4735 = select(_4732, _4713, -10000);
                      _4736 = select(_4732, _4714, -10000);
                      _4738 = (((float)((int)((int)((uint)(1) << (_4714 & 31))))) * 0.5f) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                      _4743 = 0;
                      while(true) {
                        _4745 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_4743) + (int)(20)))];
                        _4773 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_4743) + (int)(36)))];
                        // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.16.00]
                        // Description: Jitters this native voxel coordinate before integer quantization when Snow / Fog Lighting Fixes is active; when disabled, the helper returns the coordinate unchanged.
                        float3 _rndx_surfel_jitter_4783 = RenoDXSurfelVoxelJitter(float3((((_4596 - _4738) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x) * _4745.w) + _4773.x, (((_4595 - _4738) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y) * _4745.w) + _4773.y, (((_4594 - _4738) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z) * _4745.w) + _4773.z), float2(_76, _77), _181, _frameNumber.x);
                        _4783 = (int)(floor(_rndx_surfel_jitter_4783.x));
                        _4784 = (int)(floor(_rndx_surfel_jitter_4783.y));
                        _4785 = (int)(floor(_rndx_surfel_jitter_4783.z));
                        // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
                        if (((((int)_4783 >= (int)((int)(_4745.x + -63.0f))) && ((int)_4783 < (int)((int)(_4745.x + 63.0f)))) && (((int)_4784 >= (int)((int)(_4745.y + -31.0f))) && ((int)_4784 < (int)((int)(_4745.y + 31.0f))))) && (((int)_4785 >= (int)((int)(_4745.z + -63.0f))) && ((int)_4785 < (int)((int)(_4745.z + 63.0f))))) {
                          _4806 = (_4783 & 127);
                          _4807 = (_4784 & 63);
                          _4808 = (_4785 & 127);
                          _4809 = _4743;
                        } else {
                          _4798 = (int)(_4743) + (int)(1);
                          if ((uint)_4798 < (uint)8) {
                            _4743 = _4798;
                            continue;
                          } else {
                            _4806 = -10000;
                            _4807 = -10000;
                            _4808 = -10000;
                            _4809 = -10000;
                          }
                        }
                        if (!((uint)_4809 > (uint)5)) {
                          if (_4728 == 0) {
                            _4815 = 0;
                            _4816 = _4736;
                            _4817 = _4735;
                            _4818 = _4734;
                            _4819 = _4733;
                            while(true) {
                              _4828 = 0;
                              _4829 = _4816;
                              _4830 = _4817;
                              _4831 = _4818;
                              _4832 = _4819;
                              while(true) {
                                _4839 = 0;
                                while(true) {
                                  _4840 = (int)(_4839) + (int)(_4806);
                                  _4841 = (int)(_4828) + (int)(_4807);
                                  _4842 = (int)(_4815) + (int)(_4808);
                                  bool __branch_chain_4838;
                                  if (((uint)_4841 > (uint)63) || ((uint)((int)(_4840) | (int)(_4842)) > (uint)127)) {
                                    _4860 = 0;
                                    __branch_chain_4838 = true;
                                  } else {
                                    _4854 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_4840, _4841, ((int)((uint)((uint)(_4842)) + (uint)((uint)((int)((int)((uint)((uint)(_4809)) * (uint)(130))) | (int)(1))))), 0)))).x) & 4194303;
                                    if (!((_4854 != 0) && ((uint)((int)(_4854) + (int)(4)) < (uint)3145729))) {
                                      _4860 = _4854;
                                      __branch_chain_4838 = true;
                                    } else {
                                      _4866 = _4840;
                                      _4867 = _4841;
                                      _4868 = _4842;
                                      _4869 = _4809;
                                      _4870 = _4854;
                                      __branch_chain_4838 = false;
                                    }
                                  }
                                  if (__branch_chain_4838) {
                                    _4861 = (int)(_4839) + (int)(1);
                                    if (((int)_4861 < (int)2) && (_4860 == 0)) {
                                      _4839 = _4861;
                                      continue;
                                    } else {
                                      _4866 = _4832;
                                      _4867 = _4831;
                                      _4868 = _4830;
                                      _4869 = _4829;
                                      _4870 = _4860;
                                    }
                                  }
                                  _4871 = (int)(_4828) + (int)(1);
                                  if (((int)_4871 < (int)2) && (_4870 == 0)) {
                                    _4828 = _4871;
                                    _4829 = _4869;
                                    _4830 = _4868;
                                    _4831 = _4867;
                                    _4832 = _4866;
                                    __loop_jump_target = 4827;
                                    break;
                                  }
                                  while(true) {
                                    _4834 = (int)(_4815) + (int)(1);
                                    if (((int)_4834 < (int)2) && (_4870 == 0)) {
                                      _4815 = _4834;
                                      _4816 = _4869;
                                      _4817 = _4868;
                                      _4818 = _4867;
                                      _4819 = _4866;
                                      __loop_jump_target = 4814;
                                      break;
                                    }
                                    while(true) {
                                      _4822 = _4869;
                                      _4823 = _4868;
                                      _4824 = _4867;
                                      _4825 = _4866;
                                      break;
                                    }
                                    break;
                                  }
                                  if (__loop_jump_target != -1) {
                                    break;
                                  }
                                  break;
                                }
                                if (__loop_jump_target == 4827) {
                                  __loop_jump_target = -1;
                                  continue;
                                }
                                if (__loop_jump_target != -1) {
                                  break;
                                }
                                break;
                              }
                              if (__loop_jump_target == 4814) {
                                __loop_jump_target = -1;
                                continue;
                              }
                              if (__loop_jump_target != -1) {
                                break;
                              }
                              break;
                            }
                          } else {
                            _4822 = _4736;
                            _4823 = _4735;
                            _4824 = _4734;
                            _4825 = _4733;
                          }
                          if ((uint)_4822 < (uint)6) {
                            _4876 = (uint)((uint)(_4822)) * (uint)(130);
                            _4882 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_4825, _4824, ((int)((uint)((uint)((int)(_4876) | (int)(1))) + (uint)((uint)(_4823)))), 0)))).x) & 4194303;
                            if ((_4882 != 0) && ((uint)((int)(_4882) + (int)(4)) < (uint)3145729)) {
                              _4889 = (uint)(1) << (_4822 & 31);
                              _4891 = ((float)((int)(_4889))) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                              _4893 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((uint)((uint)((uint)(_4822)) + (uint)(20)))];
                              _4929 = 0.0f;
                              _4930 = 0.0f;
                              _4931 = 0.0f;
                              _4932 = 0.0f;
                              _4933 = 0;
                              while(true) {
                                _4935 = (int)((int)(_4882) + (int)(-1)) + (int)(_4933);
                                _4938 = __3__37__0__0__g_surfelDataBuffer[_4935]._baseColor;
                                _4940 = __3__37__0__0__g_surfelDataBuffer[_4935]._normal;
                                _4943 = __3__37__0__0__g_surfelDataBuffer[_4935]._radius;
                                if (!(_4938 == 0)) {
                                  _4946 = __3__37__0__0__g_surfelDataBuffer[_4935]._radiance.z;
                                  _4947 = __3__37__0__0__g_surfelDataBuffer[_4935]._radiance.y;
                                  _4948 = __3__37__0__0__g_surfelDataBuffer[_4935]._radiance.x;
                                  _4954 = (float)((uint)((uint)(_4938 & 255)));
                                  _4955 = (float)((uint)((uint)(((uint)((uint)(_4938)) >> 8) & 255)));
                                  _4956 = (float)((uint)((uint)(((uint)((uint)(_4938)) >> 16) & 255)));
                                  _4981 = select(((_4954 * 0.003921569f) < 0.04045f), (_4954 * 0.000303527f), exp2(log2((_4954 * 0.003717127f) + 0.052132703f) * 2.4f));
                                  _4982 = select(((_4955 * 0.003921569f) < 0.04045f), (_4955 * 0.000303527f), exp2(log2((_4955 * 0.003717127f) + 0.052132703f) * 2.4f));
                                  _4983 = select(((_4956 * 0.003921569f) < 0.04045f), (_4956 * 0.000303527f), exp2(log2((_4956 * 0.003717127f) + 0.052132703f) * 2.4f));
                                  _4995 = (((float)((uint)((uint)(_4940 & 255)))) * 0.007874016f) + -1.0f;
                                  _4996 = (((float)((uint)((uint)(((uint)((uint)(_4940)) >> 8) & 255)))) * 0.007874016f) + -1.0f;
                                  _4997 = (((float)((uint)((uint)(((uint)((uint)(_4940)) >> 16) & 255)))) * 0.007874016f) + -1.0f;
                                  _4999 = rsqrt(dot(float3(_4995, _4996, _4997), float3(_4995, _4996, _4997)));  // [sem: invLength]
                                  _5001 = ((_4940 & 16777215) == 0);
                                  _5005 = (_4891 * 0.0019607844f) * ((float)((uint16_t)((int16_t)(_4943 & 255))));
                                  _5021 = (((((float)((uint)((uint)((uint)((uint)(_4938)) >> 24)))) * 0.003937008f) + -0.5f) * _4891) + ((((_4893.x + -63.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_4825)) + (uint)(64)) - (uint)((uint)((int)(_4893.x))))) & 127)))) * _4891) - _viewPos.x);
                                  _5022 = (((((float)((uint)((uint)((uint)((uint)(_4940)) >> 24)))) * 0.003937008f) + -0.5f) * _4891) + ((((_4893.y + -31.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_4824)) + (uint)(32)) - (uint)((uint)((int)(_4893.y))))) & 63)))) * _4891) - _viewPos.y);
                                  _5023 = (((((float)((uint16_t)((int16_t)((uint16_t)(_4943) >> 8)))) * 0.003937008f) + -0.5f) * _4891) + ((((_4893.z + -63.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_4823)) + (uint)(64)) - (uint)((uint)((int)(_4893.z))))) & 127)))) * _4891) - _viewPos.z);
                                  if (!((((_4948 < 0.0h) || ((_4981 > 1.1f) || (_4981 < 0.0f))) || ((_4947 < 0.0h) || ((_4982 > 1.1f) || (_4982 < 0.0f)))) || ((_4946 < 0.0h) || ((_4983 > 1.1f) || (_4983 < 0.0f))))) {
                                    _5045 = -0.0f - _4510;
                                    _5048 = -0.0f - _4507;
                                    _5051 = -0.0f - _4503;
                                    _5060 = -0.0f - min(0.0f, (-0.0f - float(_4948)));
                                    _5061 = -0.0f - min(0.0f, (-0.0f - float(_4947)));
                                    _5062 = -0.0f - min(0.0f, (-0.0f - float(_4946)));
                                    _5080 = _5021 - _4596;
                                    _5081 = _5022 - _4595;
                                    _5082 = _5023 - _4594;
                                    _5083 = dot(float3(_5080, _5081, _5082), float3(_5051, _5048, _5045));
                                    _5087 = _5080 - (_5083 * _5051);
                                    _5088 = _5081 - (_5083 * _5048);
                                    _5089 = _5082 - (_5083 * _5045);
                                    _5115 = 1.0f / ((float)((uint)((uint)(_4889))));
                                    _5119 = frac(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _5023) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z) * _5115);
                                    _5144 = select(((int)_4822 > (int)5), 1.0f, ((saturate((saturate(dot(float3(_5051, _5048, _5045), float3(select(_5001, _5051, (_4999 * _4995)), select(_5001, _5048, (_4999 * _4996)), select(_5001, _5045, (_4999 * _4997))))) + -0.03125f) * 1.032258f) * ((float)((bool)(dot(float3(_5087, _5088, _5089), float3(_5087, _5088, _5089)) < ((_5005 * _5005) * 64.0f))))) * ((float)((bool)(((__3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _5021) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _5115), (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _5022) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y) * _5115), (((((float)((uint)((uint)(_4876)))) + 1.0f) + ((select((_5119 < 0.0f), 1.0f, 0.0f) + _5119) * 128.0f)) * 0.00096153846f)), 0.0f)).x) > ((_4891 * 0.25f) * (saturate((dot(float3(_5060, _5061, _5062), float3(0.212671f, 0.71516f, 0.072169f)) * 0.0001f) / _exposure3.w) + 1.0f)))))));
                                    _5151 = (((((_4982 * 0.33951f) + (_4981 * 0.61312f)) + (_4983 * 0.04737f)) * _5060) * _5144) + _4929;
                                    _5152 = (((((_4982 * 0.91636f) + (_4981 * 0.0702f)) + (_4983 * 0.01345f)) * _5061) * _5144) + _4930;
                                    _5153 = (((((_4982 * 0.10958f) + (_4981 * 0.02062f)) + (_4983 * 0.8698f)) * _5062) * _5144) + _4931;
                                    _5154 = _5144 + _4932;
                                    _5155 = (int)(_4933) + (int)(1);
                                    if ((uint)_5155 < (uint)4) {
                                      _4929 = _5151;
                                      _4930 = _5152;
                                      _4931 = _5153;
                                      _4932 = _5154;
                                      _4933 = _5155;
                                      continue;
                                    } else {
                                      _5158 = _5151;
                                      _5159 = _5152;
                                      _5160 = _5153;
                                      _5161 = _5154;
                                    }
                                  } else {
                                    _5158 = _4929;
                                    _5159 = _4930;
                                    _5160 = _4931;
                                    _5161 = _4932;
                                  }
                                } else {
                                  _5158 = _4929;
                                  _5159 = _4930;
                                  _5160 = _4931;
                                  _5161 = _4932;
                                }
                                if (_5161 > 0.0f) {
                                  _5164 = 1.0f / _5161;
                                  _5178 = (-0.0f - min(0.0f, (-0.0f - (_5158 * _5164))));
                                  _5179 = (-0.0f - min(0.0f, (-0.0f - (_5159 * _5164))));
                                  _5180 = (-0.0f - min(0.0f, (-0.0f - (_5160 * _5164))));
                                } else {
                                  _5178 = _5158;
                                  _5179 = _5159;
                                  _5180 = _5160;
                                }
                                break;
                              }
                            } else {
                              _5178 = 0.0f;
                              _5179 = 0.0f;
                              _5180 = 0.0f;
                            }
                          } else {
                            _5178 = 0.0f;
                            _5179 = 0.0f;
                            _5180 = 0.0f;
                          }
                        } else {
                          _5178 = 0.0f;
                          _5179 = 0.0f;
                          _5180 = 0.0f;
                        }
                        break;
                      }
                    } else {
                      _5178 = 0.0f;
                      _5179 = 0.0f;
                      _5180 = 0.0f;
                    }
                    _5181 = _4589 * 0.31830987f;
                    _5185 = (_5178 * _5181) + _4592;
                    _5186 = (_5179 * _5181) + _4591;
                    _5187 = (_5180 * _5181) + _4590;
                    _5190 = exp2(_4646 * -28.8539f) * _4589;
                    if (_5190 < 0.050000012f) {
                      _5206 = _5185;
                      _5207 = _5186;
                      _5208 = _5187;
                      _5209 = _4593;
                      _5211 = _5206;
                      _5212 = _5207;
                      _5213 = _5208;
                      _5214 = _5209;
                    } else {
                      _5193 = _4646 + _4593;
                      _5197 = (_4646 * _4503) + _4596;
                      _5198 = (_4646 * _4507) + _4595;
                      _5199 = (_4646 * _4510) + _4594;
                      _5200 = (int)(_4588) + (int)(1);
                      if (((uint)_5200 < (uint)32) && (_5193 < 32.0f)) {
                        _4588 = _5200;
                        _4589 = _5190;
                        _4590 = _5187;
                        _4591 = _5186;
                        _4592 = _5185;
                        _4593 = _5193;
                        _4594 = _5199;
                        _4595 = _5198;
                        _4596 = _5197;
                        __loop_jump_target = 4587;
                        break;
                      } else {
                        _5206 = _5185;
                        _5207 = _5186;
                        _5208 = _5187;
                        _5209 = 0.0f;
                        _5211 = _5206;
                        _5212 = _5207;
                        _5213 = _5208;
                        _5214 = _5209;
                      }
                    }
                    break;
                  }
                  if (__loop_jump_target != -1) {
                    break;
                  }
                }
              }
              break;
            }
            if (__loop_jump_target == 4587) {
              __loop_jump_target = -1;
              continue;
            }
            if (__loop_jump_target != -1) {
              break;
            }
            break;
          }
        } else {
          _5211 = 0.0f;
          _5212 = 0.0f;
          _5213 = 0.0f;
          _5214 = 0.0f;
        }
        if (_5214 > 0.0f) {
          _5226 = (_5214 * _4503) + _166;
          _5227 = (_5214 * _4507) + _167;
          _5228 = (_5214 * _4510) + _168;
          _5231 = (_sunDirection.y > 0.0f);
          if ((_5231) || ((!(_5231)) && (_sunDirection.y > _moonDirection.y))) {
            _5243 = _sunDirection.x;
            _5244 = _sunDirection.y;
            _5245 = _sunDirection.z;
          } else {
            _5243 = _moonDirection.x;
            _5244 = _moonDirection.y;
            _5245 = _moonDirection.z;
          }
          if ((_5231) || ((!(_5231)) && (_sunDirection.y > _moonDirection.y))) {
            _5265 = _precomputedAmbient7.y;
          } else {
            _5265 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
          }
          _5272 = _viewPos.x + _5226;
          _5274 = (_earthRadius + _5227) + _viewPos.y;
          _5275 = _viewPos.z + _5228;
          _5281 = sqrt(((_5272 * _5272) + (_5274 * _5274)) + (_5275 * _5275));
          _5286 = dot(float3((_5272 / _5281), (_5274 / _5281), (_5275 / _5281)), float3(_5243, _5244, _5245));
          _5292 = min(max(((_5281 - _earthRadius) / _atmosphereThickness), 16.0f), (_atmosphereThickness + -16.0f));
          _5300 = max(_5292, 0.0f);
          _5307 = (-0.0f - sqrt((_5300 + (_earthRadius * 2.0f)) * _5300)) / (_5300 + _earthRadius);
          if (_5286 > _5307) {
            _5330 = ((exp2(log2(saturate((_5286 - _5307) / (1.0f - _5307))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _5330 = ((exp2(log2(saturate((_5307 - _5286) / (_5307 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
          _5335 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_5292 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f), _5330), 0.0f);
          _5357 = ((_5335.y * 2e-05f) * _mieAerosolDensity) * (_mieAerosolAbsorption + 1.0f);  // [sem: _3__36__0__0__g_texNetDensity_sampleLod_derived]
          _5375 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.0556001e-06f)) * _5335.x) + _5357) * -1.442695f);
          _5376 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 4.9788005e-06f)) * _5335.x) + _5357) * -1.442695f);
          _5377 = exp2(((((_ozoneRatio * 2.1360002e-07f) + (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f)) * _5335.x) + _5357) * -1.442695f);
          _5396 = sqrt((_5226 * _5226) + (_5228 * _5228));
          _5404 = (_cloudAltitude - (max(((_5396 * _5396) + -400000.0f), 0.0f) * 1e-06f)) - _viewPos.y;
          _5416 = (_cloudThickness * (0.5f - (((float)((int)((int)((int)(uint)((int)(_5244 > 0.0f))) - (int)((int)(uint)((int)(_5244 < 0.0f)))))) * 0.5f))) + _5404;
          if (_5227 < _5404) {
            _5419 = dot(float3(0.0f, 1.0f, 0.0f), float3(_5243, _5244, _5245));
            _5425 = select((abs(_5419) < 1e-08f), 1e+08f, ((_5416 - dot(float3(0.0f, 1.0f, 0.0f), float3(_5226, _5227, _5228))) / _5419));
            _5431 = ((_5425 * _5243) + _5226);
            _5432 = _5416;
            _5433 = ((_5425 * _5245) + _5228);
          } else {
            _5431 = _5226;
            _5432 = _5227;
            _5433 = _5228;
          }
          _5453 = saturate(abs(_5244) * 4.0f);  // [sem: expr_sat]
          _5455 = (_5453 * _5453) * exp2(((_distanceScale * -1.442695f) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_5431 * 5e-05f) + 0.5f), ((_5432 - _5404) / _cloudThickness), ((_5433 * 5e-05f) + 0.5f)), 0.0f)).x)) * (_cloudScatteringCoefficient / _distanceScale));
          _5462 = ((1.0f - _5455) * saturate(((_5227 - _cloudThickness) - _5404) * 0.1f)) + _5455;
          _5463 = _5462 * (((_5376 * 0.33951f) + (_5375 * 0.61312f)) + (_5377 * 0.04737f));
          _5464 = _5462 * (((_5376 * 0.91636f) + (_5375 * 0.0702f)) + (_5377 * 0.01345f));
          _5465 = _5462 * (((_5376 * 0.10958f) + (_5375 * 0.02062f)) + (_5377 * 0.8698f));
          _5488 = (_viewPos.x - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].x)) + _5226;
          _5489 = (_viewPos.y - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].y)) + _5227;
          _5490 = (_viewPos.z - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].z)) + _5228;
          _5510 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].z), _5490, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].y), _5489, (_5488 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].w);
          _5514 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].z), _5490, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].y), _5489, (_5488 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].w);
          _5521 = 2.0f / __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y;
          _5522 = 1.0f - _5521;
          _5529 = (((!(_5510 <= _5522)) || (!(_5510 >= _5521))) || (!(_5514 <= _5522))) || (!(_5514 >= _5521));
          _5541 = (_viewPos.x - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].x)) + _5226;
          _5542 = (_viewPos.y - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].y)) + _5227;
          _5543 = (_viewPos.z - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].z)) + _5228;
          _5563 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].z), _5543, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].y), _5542, (_5541 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].w);
          _5567 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].z), _5543, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].y), _5542, (_5541 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].w);
          _5578 = (((!(_5563 <= _5522)) || (!(_5563 >= _5521))) || (!(_5567 <= _5522))) || (!(_5567 >= _5521));
          _5579 = select(_5578, select(_5529, -1, 1), 0);
          _5580 = select(_5578, select(_5529, 0.0f, _5510), _5563);
          _5581 = select(_5578, select(_5529, 0.0f, _5514), _5567);
          _5582 = select(_5578, select(_5529, 0.0f, (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].z), _5490, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].y), _5489, (_5488 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].w))), (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].z), _5543, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].y), _5542, (_5541 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].w)));
          _5584 = select((_5578 && _5529), 0.0f, 0.001f);
          [branch]
          if (!(_5579 == -1)) {
            _5590 = (_5580 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x) + -0.5f;
            _5591 = (_5581 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y) + -0.5f;
            _5594 = (int)(floor(_5590));
            _5595 = (int)(floor(_5591));
            _5598 = (uint)((uint)(_5594)) + (uint)(1);
            _5599 = (uint)((uint)(_5595)) + (uint)(1);
            if (!(((uint)_5594 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x)))) || ((uint)_5595 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y)))))) {
              _5614 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_5594, _5595, _5579, 0)))).x);
              _5615 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_5598, _5595, _5579, 0)))).x);
              _5616 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_5594, _5599, _5579, 0)))).x);
              _5617 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_5598, _5599, _5579, 0)))).x);
            } else {
              _5614 = 0.0f;
              _5615 = 0.0f;
              _5616 = 0.0f;
              _5617 = 0.0f;
            }
            _5618 = (int)(_5579) << 2;
            _5620 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_5618) + (int)(103)))];
            _5626 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_5618) + (int)(104)))];
            _5632 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_5618) + (int)(105)))];
            _5638 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_5618) + (int)(106)))];
            _5643 = _5620.x * _5580;
            _5647 = _5620.y * _5580;
            _5651 = _5620.z * _5580;
            _5655 = _5620.w * _5580;
            _5658 = mad(_5632.w, _5614, mad(_5626.w, _5581, _5655)) + _5638.w;
            _5659 = (mad(_5632.x, _5614, mad(_5626.x, _5581, _5643)) + _5638.x) / _5658;
            _5660 = (mad(_5632.y, _5614, mad(_5626.y, _5581, _5647)) + _5638.y) / _5658;
            _5661 = (mad(_5632.z, _5614, mad(_5626.z, _5581, _5651)) + _5638.z) / _5658;
            _5664 = _5580 + (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.z * 4.0f);
            _5680 = mad(_5632.w, _5615, mad(_5626.w, _5581, (_5620.w * _5664))) + _5638.w;
            _5686 = _5581 - (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.w * 2.0f);
            _5698 = mad(_5632.w, _5616, mad(_5626.w, _5686, _5655)) + _5638.w;
            _5702 = ((mad(_5632.x, _5616, mad(_5626.x, _5686, _5643)) + _5638.x) / _5698) - _5659;
            _5703 = ((mad(_5632.y, _5616, mad(_5626.y, _5686, _5647)) + _5638.y) / _5698) - _5660;
            _5704 = ((mad(_5632.z, _5616, mad(_5626.z, _5686, _5651)) + _5638.z) / _5698) - _5661;
            _5705 = ((mad(_5632.x, _5615, mad(_5626.x, _5581, (_5620.x * _5664))) + _5638.x) / _5680) - _5659;
            _5706 = ((mad(_5632.y, _5615, mad(_5626.y, _5581, (_5620.y * _5664))) + _5638.y) / _5680) - _5660;
            _5707 = ((mad(_5632.z, _5615, mad(_5626.z, _5581, (_5620.z * _5664))) + _5638.z) / _5680) - _5661;
            _5710 = (_5704 * _5706) - (_5703 * _5707);
            _5713 = (_5702 * _5707) - (_5704 * _5705);
            _5716 = (_5703 * _5705) - (_5702 * _5706);
            _5718 = rsqrt(dot(float3(_5710, _5713, _5716), float3(_5710, _5713, _5716)));  // [sem: invLength]
            _5722 = frac(_5590);
            _5727 = (saturate(dot(float3(_4503, _4507, _4510), float3((_5710 * _5718), (_5713 * _5718), (_5716 * _5718)))) * 0.002f) + _5582;
            _5740 = saturate(exp2((_5614 - _5727) * 1.442695e+06f));  // [sem: expr_sat]
            _5742 = saturate(exp2((_5616 - _5727) * 1.442695e+06f));  // [sem: expr_sat]
            _5748 = ((saturate(exp2((_5615 - _5727) * 1.442695e+06f)) - _5740) * _5722) + _5740;
            _5755 = _5614;
            _5756 = _5615;
            _5757 = _5616;
            _5758 = _5617;
            // [sem: expr_sat]
            _5759 = saturate((((_5742 - _5748) + ((saturate(exp2((_5617 - _5727) * 1.442695e+06f)) - _5742) * _5722)) * frac(_5591)) + _5748);
          } else {
            _5755 = 0.0f;
            _5756 = 0.0f;
            _5757 = 0.0f;
            _5758 = 0.0f;
            _5759 = 1.0f;  // [sem: expr_sat]
          }
          _5779 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].z), _5228, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].y), _5227, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].x) * _5226))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].w);
          _5783 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].z), _5228, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].y), _5227, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].x) * _5226))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].w);
          _5787 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].z), _5228, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].y), _5227, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].x) * _5226))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].w);
          _5790 = 4.0f / __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y;
          _5791 = 1.0f - _5790;
          if (!(((!(_5779 <= _5791)) || (!(_5779 >= _5790))) || (!(_5783 <= _5791)))) {
            _5802 = (_5787 >= -1.0f) && ((_5787 <= 1.0f) && (_5783 >= _5790));
            _5810 = ((int)(uint)(_5802));
            _5811 = select(_5802, 1, _5579);
            _5812 = select(_5802, _5779, _5580);
            _5813 = select(_5802, _5783, _5581);
            _5814 = select(_5802, _5787, _5582);
            _5815 = select(_5802, 1e-05f, _5584);
          } else {
            _5810 = 0;
            _5811 = _5579;
            _5812 = _5580;
            _5813 = _5581;
            _5814 = _5582;
            _5815 = _5584;
          }
          _5835 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].z), _5228, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].y), _5227, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].x) * _5226))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].w);
          _5839 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].z), _5228, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].y), _5227, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].x) * _5226))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].w);
          _5843 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].z), _5228, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].y), _5227, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].x) * _5226))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].w);
          if (!(((!(_5835 <= _5791)) || (!(_5835 >= _5790))) || (!(_5839 <= _5791)))) {
            _5854 = (_5843 >= -1.0f) && ((_5839 >= _5790) && (_5843 <= 1.0f));
            _5862 = select(_5854, 1, _5810);
            _5863 = select(_5854, 0, _5811);
            _5864 = select(_5854, _5835, _5812);
            _5865 = select(_5854, _5839, _5813);
            _5866 = select(_5854, _5843, _5814);
            _5867 = select(_5854, 1e-05f, _5815);
          } else {
            _5862 = _5810;
            _5863 = _5811;
            _5864 = _5812;
            _5865 = _5813;
            _5866 = _5814;
            _5867 = _5815;
          }
          [branch]
          if (!(_5862 == 0)) {
            _5877 = (int)(floor((_5864 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f));
            _5878 = (int)(floor((_5865 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f));
            _5881 = (uint)((uint)(_5877)) + (uint)(1);
            _5882 = (uint)((uint)(_5878)) + (uint)(1);
            if (!(((uint)_5877 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x)))) || ((uint)_5878 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y)))))) {
              _5897 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_5877, _5878, _5863, 0)))).x);
              _5898 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_5881, _5878, _5863, 0)))).x);
              _5899 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_5877, _5882, _5863, 0)))).x);
              _5900 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_5881, _5882, _5863, 0)))).x);
            } else {
              _5897 = _5755;
              _5898 = _5756;
              _5899 = _5757;
              _5900 = _5758;
            }
            if ((_5231) || ((!(_5231)) && (_sunDirection.y > _moonDirection.y))) {
              _5912 = _sunDirection.x;
              _5913 = _sunDirection.y;
              _5914 = _sunDirection.z;
            } else {
              _5912 = _moonDirection.x;
              _5913 = _moonDirection.y;
              _5914 = _moonDirection.z;
            }
            _5920 = (_5867 - (saturate(-0.0f - dot(float3(_5912, _5913, _5914), float3(_4503, _4507, _4510))) * 0.0001f)) + _5866;
            _5933 = min(((float)((bool)(_5897 > _5920))), min(min(((float)((bool)(_5898 > _5920))), ((float)((bool)(_5899 > _5920)))), ((float)((bool)(_5900 > _5920)))));
          } else {
            _5933 = _5759;
          }
          _5941 = (_viewPos.x - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.x) + _5226;
          _5942 = (_viewPos.y - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.y) + _5227;
          _5943 = (_viewPos.z - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.z) + _5228;
          _5963 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].z), _5943, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].y), _5942, (_5941 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].w);
          _5967 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].z), _5943, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].y), _5942, (_5941 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].w);
          _5971 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].z), _5943, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].y), _5942, (_5941 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].w);
          if (saturate(_5963) == _5963) {
            if ((_5971 >= 0.0001f) && ((_5971 <= 1.0f) && (saturate(_5967) == _5967))) {
              _5986 = frac((_5963 * 1024.0f) + -0.5f);
              // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
              _5990 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_5963, _5967));
              _5995 = _5971 + -0.005f;
              _6000 = select((_5990.w > _5995), 1.0f, 0.0f);
              _6002 = select((_5990.x > _5995), 1.0f, 0.0f);
              _6009 = ((select((_5990.z > _5995), 1.0f, 0.0f) - _6000) * _5986) + _6000;
              // [sem: expr_sat]
              _6015 = saturate((((((select((_5990.y > _5995), 1.0f, 0.0f) - _6002) * _5986) + _6002) - _6009) * frac((_5967 * 1024.0f) + -0.5f)) + _6009);
            } else {
              _6015 = 1.0f;  // [sem: expr_sat]
            }
          } else {
            _6015 = 1.0f;  // [sem: expr_sat]
          }
          _6018 = _5214 * 20.0f;
          _6019 = _6018 * _6018;
          _6028 = (((exp2(_6019 * -0.48089835f) * 3.0f) + exp2(_6019 * -1.442695f)) * 0.25f) * (saturate(min(_5933, _6015)) * _5265);
          // RenoDX: >>> [Patch: DirectLightMatrixFix] [Version: 1.16.00]
          // Description: The game converts this direct beam's transmittance to working space a second time here, on a value the lines above already converted; because the matrix rows sum to one that second pass only desaturates. On uses the single conversion, so low-sun light keeps the colour of the sky it arrives through, while every other factor of the term is unchanged. Off is the exact vanilla double conversion.
          _6033 = ((DIRECT_LIGHT_MATRIX_FIX != 0.f) ? (_6028 * _5463) : (_6028 * (((_5463 * 0.61312f) + (_5464 * 0.33951f)) + (_5465 * 0.04737f))));
          _6034 = ((DIRECT_LIGHT_MATRIX_FIX != 0.f) ? (_6028 * _5464) : (_6028 * (((_5463 * 0.0702f) + (_5464 * 0.91636f)) + (_5465 * 0.01345f))));
          _6035 = ((DIRECT_LIGHT_MATRIX_FIX != 0.f) ? (_6028 * _5465) : (_6028 * (((_5463 * 0.02062f) + (_5464 * 0.10958f)) + (_5465 * 0.8698f))));
          // RenoDX: <<< [Patch: DirectLightMatrixFix]
        } else {
          _6033 = -0.0f;
          _6034 = -0.0f;
          _6035 = -0.0f;
        }
        _6041 = saturate(1.0f - (_171 * 0.001f));  // [sem: expr_sat]
        _6049 = ((_6041 * (_6033 - min(0.0f, (-0.0f - _5211)))) + _4412);
        _6050 = ((_6041 * (_6034 - min(0.0f, (-0.0f - _5212)))) + _4413);
        _6051 = (((_6035 - min(0.0f, (-0.0f - _5213))) * _6041) + _4414);
        break;
      }
    } else {
      _6049 = _4412;
      _6050 = _4413;
      _6051 = _4414;
    }
    __3__38__0__1__g_diffuseResultUAV[int2(_74, _75)] = float4(((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - min(15000.0f, (_exposure4.x * _6049)))))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - min(15000.0f, (_exposure4.x * _6050)))))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - min(15000.0f, (_exposure4.x * _6051)))))))), (half)(half(1.0f - _4366)));
    break;
  }
}
