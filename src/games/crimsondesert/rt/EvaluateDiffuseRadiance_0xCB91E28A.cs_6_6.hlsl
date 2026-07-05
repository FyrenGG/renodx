#include "../shared.h"

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


Texture3D<float> __3__36__0__1__g_skyVisibilityVoxelsTexturesLikeUav : register(t228, space36);

Texture3D<float> __3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav : register(t229, space36);

Texture3D<uint> __3__36__0__0__g_surfelIndicesVoxelsTextures : register(t220, space36);

Texture3D<uint4> __3__36__0__0__g_axisAlignedDistanceTextures : register(t221, space36);

Texture2D<float2> __3__36__0__0__g_texNetDensity : register(t44, space36);

Texture3D<float> __3__36__0__0__g_texCloudVolumeShadow : register(t198, space36);

Texture2D<float4> __3__36__0__0__g_terrainShadowDepth : register(t49, space36);

Texture2DArray<float4> __3__36__0__0__g_dynamicShadowDepthArray : register(t234, space36);

Texture2DArray<float4> __3__36__0__0__g_shadowDepthArray : register(t237, space36);

Texture2DArray<half4> __3__36__0__0__g_shadowColorArray : register(t239, space36);

TextureCube<float4> __3__36__0__0__g_environmentColor : register(t230, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t105, space36);

Texture2D<float> __3__36__0__0__g_raytracingDiffuseRayInversePDF : register(t152, space36);

Texture2D<float4> __3__36__0__0__g_raytracingBaseColor : register(t153, space36);

Texture2D<float4> __3__36__0__0__g_raytracingNormal : register(t154, space36);

StructuredBuffer<SurfelData> __3__37__0__0__g_surfelDataBuffer : register(t19, space37);

Texture2D<uint4> __3__36__0__0__g_baseColor : register(t36, space36);

Texture2D<uint> __3__36__0__0__g_sceneNormal : register(t61, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t73, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaquePrev : register(t74, space36);

Texture2D<half4> __3__36__0__0__g_sceneShadowColor : register(t63, space36);

RWTexture2D<float4> __3__38__0__1__g_raytracingHitResultUAV : register(u44, space38);

RWTexture2D<half4> __3__38__0__1__g_diffuseResultUAV : register(u11, space38);

cbuffer __1__3__0__0__PipelineProperty : register(b0, space3) {
  float2 g_screenSpaceScale : packoffset(c000.x);
  float2 __padding : packoffset(c000.z);
};

cbuffer __3__35__0__0__SceneConstantBuffer : register(b18, space35) {
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
  row_major float4x4 _viewProj;
  row_major float4x4 _viewProjNoJitter;
  row_major float4x4 _viewProjRelative;
  row_major float4x4 _viewProjRelativeNoJitter;
  row_major float4x4 _invViewProj;
  row_major float4x4 _invViewProjRelative;
  row_major float4x4 _invViewProjRelativeNoJitter;
  row_major float4x4 _viewProjRelativeOrtho;
  float4 _sunDirection;
  float4 _moonDirection;
  float4 _moonRight;
  float4 _moonUp;
  float4 _ssaoRandomDirection[16];
  row_major float4x4 _view;
  row_major float4x4 _viewRelative;
  row_major float4x4 _viewRelativePrev;
  row_major float4x4 _proj;
  row_major float4x4 _projNoJitter;
  float4 _viewPosPrev;
  row_major float4x4 _viewProjNoJitterPrev;
  row_major float4x4 _viewProjRelativePrev;
  row_major float4x4 _viewProjRelativeNoJitterPrev;
  row_major float4x4 _invViewProjPrev;
  row_major float4x4 _invViewProjRelativePrev;
  row_major float4x4 _projToPrevProj;
  row_major float4x4 _projToPrevProjNoTranslation;
  row_major float4x4 _viewProjectionTexScale;
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
  min16float4 _debugBaseColor16;
  min16float4 _debugNormal16;
  min16float4 _debugMaterial16;
  min16float4 _debugMultiplier16;
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

cbuffer __3__35__0__0__ShadowConstantBuffer : register(b19, space35) {
  struct {
    float4 _shadowDepthRanges;
    float4 _massiveShadowSizeAndInvSize;
    uint4 _shadowParam;
    int4 _updateIndex;
    float4 _jitterOffset[8];
    float4 _shadowRelativePosition;
    float4 _dynmaicShadowSizeAndInvSize;
    row_major float4x4 _dynamicShadowProjTexScale[2];
    row_major float4x4 _dynamicShadowProjRelativeTexScale[2];
    float4 _dynamicShadowFrustumPlanes0[6];
    float4 _dynamicShadowFrustumPlanes1[6];
    row_major float4x4 _dynamicShadowViewProj[2];
    row_major float4x4 _dynamicShadowViewProjPrev[2];
    row_major float4x4 _invDynamicShadowViewProj[2];
    float4 _dynamicShadowPosition[2];
    float4 _shadowSizeAndInvSize;
    row_major float4x4 _shadowProjTexScale[2];
    row_major float4x4 _shadowProjRelativeTexScale[2];
    float4 _staticShadowPosition[2];
    row_major float4x4 _shadowViewProj[2];
    row_major float4x4 _shadowViewProjRelative[2];
    row_major float4x4 _invShadowViewProj[2];
    float4 _currShadowFrustumPlanes[6];
    row_major float4x4 _currShadowViewProjRelative;
    row_major float4x4 _currInvShadowViewProjRelative;
    float4 _currStaticShadowPosition;
    float4 _currTerrainShadowFrustumPlanes[6];
    row_major float4x4 _terrainShadowProjTexScale;
    row_major float4x4 _terrainShadowProjRelativeTexScale;
    row_major float4x4 _terrainShadowViewProj;
    row_major float4x4 _nearFieldShadowViewProj;
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

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};

cbuffer __3__35__0__0__AtmosphereConstantBuffer : register(b28, space35) {
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
  float _dummy : packoffset(c003.x);
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

cbuffer __3__35__0__0__PrecomputedAmbientConstantBuffer : register(b44, space35) {
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

cbuffer __3__35__0__0__TileConstantBuffer : register(b30, space35) {
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
  int _53;
  int _54;
  int4 _62;
  int _72;
  int _76;
  uint _82;
  uint _84;
  float _85;
  float _86;
  float _99;
  float _102;
  uint _108;
  int _114;
  uint _116;
  float _132;
  float _133;
  float _134;
  float _136;
  float _137;
  float _138;
  float _139;
  float _140;
  float _176;
  float _177;
  float _178;
  float _179;
  float _182;
  float _188;
  bool _205;
  int _258;
  int _316;
  int _337;
  int _395;
  int _403;
  int _466;
  int _467;
  int _468;
  int _469;
  int _485;
  int _486;
  int _487;
  int _488;
  int _495;
  int _558;
  int _559;
  int _560;
  int _561;
  int _566;
  int _567;
  int _568;
  int _569;
  int _570;
  int _573;
  int _574;
  int _575;
  int _576;
  int _579;
  int _580;
  int _581;
  int _582;
  int _583;
  bool _606;
  int _607;
  int _608;
  int _609;
  int _610;
  int _611;
  int _620;
  int _621;
  int _622;
  int _623;
  int _624;
  float _680;
  float _681;
  float _682;
  float _683;
  float _684;
  float _685;
  float _686;
  int _687;
  float _899;
  float _900;
  float _901;
  float _902;
  float _919;
  float _920;
  float _921;
  float _941;
  float _942;
  float _943;
  float _965;
  float _966;
  float _967;
  float _974;
  float _975;
  float _976;
  float _977;
  float _978;
  float _979;
  float _980;
  float _981;
  int _982;
  float _983;
  float _984;
  float _985;
  float _986;
  float _987;
  bool _1002;
  float _1164;
  float _1165;
  float _1166;
  float _1167;
  float _1178;
  float _1179;
  float _1180;
  float _1181;
  float _1182;
  float _1183;
  float _1184;
  float _1185;
  float _1186;
  int _1187;
  int _1189;
  int _1250;
  int _1251;
  float _1258;
  float _1318;
  float _1319;
  float _1320;
  float _1321;
  int _1327;
  int _1385;
  int _1422;
  float _1423;
  float _1424;
  float _1425;
  float _1426;
  float _1427;
  int _1429;
  float _1646;
  float _1647;
  float _1666;
  float _1667;
  float _1668;
  float _1669;
  float _1670;
  float _1672;
  float _1673;
  float _1674;
  float _1675;
  float _1676;
  float _1677;
  int _1694;
  int _1757;
  int _1758;
  int _1759;
  int _1760;
  int _1776;
  int _1777;
  int _1778;
  int _1779;
  int _1785;
  int _1848;
  int _1849;
  int _1850;
  int _1851;
  int _1856;
  int _1857;
  int _1858;
  int _1859;
  int _1860;
  int _1863;
  int _1864;
  int _1865;
  int _1866;
  int _1869;
  int _1870;
  int _1871;
  int _1872;
  int _1873;
  bool _1896;
  int _1897;
  int _1898;
  int _1899;
  int _1900;
  int _1901;
  int _1910;
  int _1911;
  int _1912;
  int _1913;
  int _1914;
  float _1973;
  float _1974;
  float _1975;
  float _1976;
  int _1977;
  float _2178;
  float _2179;
  float _2180;
  float _2181;
  float _2198;
  float _2199;
  float _2200;
  float _2201;
  float _2229;
  float _2230;
  float _2231;
  float _2232;
  float _2233;
  bool _2247;
  float _2270;
  float _2271;
  float _2272;
  float _2273;
  float _2359;
  float _2360;
  float _2361;
  float _2504;
  float _2505;
  float _2506;
  float _2507;
  half _2508;
  half _2509;
  half _2510;
  half _2511;
  float _2649;
  float _2650;
  float _2651;
  float _2652;
  float _2653;
  float _2654;
  float _2655;
  float _2656;
  half _2657;
  half _2658;
  half _2659;
  half _2660;
  float _2711;
  float _2712;
  float _2713;
  float _2714;
  int _2715;
  int _2716;
  float _2763;
  float _2764;
  float _2765;
  float _2766;
  int _2767;
  int _2768;
  float _2798;
  float _2799;
  float _2800;
  float _2801;
  float _2920;
  float _2921;
  float _2922;
  float _2941;
  float _2942;
  float _2943;
  float _2944;
  float _3026;
  float _3061;
  float _3062;
  float _3063;
  float _3083;
  float _3141;
  float _3242;
  float _3243;
  float _3244;
  float _3312;
  float _3313;
  float _3314;
  float _3315;
  half _3316;
  half _3317;
  half _3318;
  float _3319;
  float _3320;
  float _3321;
  float _3322;
  float _3323;
  float _3455;
  float _3456;
  float _3457;
  float _3561;
  float _3562;
  float _3563;
  float _3564;
  float _3702;
  float _3703;
  float _3704;
  float _3705;
  float _3706;
  float _3737;
  float _3738;
  float _3739;
  float _3740;
  int _3741;
  int _3742;
  float _3773;
  float _3774;
  float _3775;
  float _3776;
  int _3777;
  int _3778;
  float _3808;
  float _3809;
  float _3810;
  float _3811;
  float _3823;
  float _3824;
  float _3825;
  float _3844;
  float _3903;
  float _3960;
  float _4014;
  float _4083;
  float _4084;
  float _4085;
  float _4138;
  float _4139;
  float _4140;
  float _4160;
  float _4161;
  float _4162;
  float _4163;
  int _4174;
  int _4232;
  float _4273;
  float _4299;
  float _4300;
  float _4301;
  float _4358;
  float _4359;
  float _4360;
  bool _4390;
  int _4391;
  int _4392;
  int _4393;
  int _4394;
  int _4395;
  bool _4404;
  int _4405;
  int _4406;
  int _4407;
  int _4408;
  int _4409;
  float _208;
  float _209;
  float _210;
  float _211;
  float _213;
  float _214;
  float _215;
  float _216;
  bool _217;
  float _218;
  float4 _224;
  float4 _230;
  float _238;
  float _239;
  float _240;
  float _242;
  float _243;
  float _244;
  float _245;
  float _246;
  float _247;
  float _248;
  int _250;
  float _251;
  float _252;
  float _253;
  float _254;
  float _255;
  float _256;
  float4 _260;
  float4 _288;
  int _298;
  int _299;
  int _300;
  int _313;
  float _323;
  float _324;
  float _325;
  float _329;
  float _333;
  float _334;
  float _335;
  float4 _339;
  float4 _367;
  int _377;
  int _378;
  int _379;
  int _392;
  float4 _405;
  float4 _433;
  int _443;
  int _444;
  int _445;
  int _458;
  bool _482;
  float _490;
  float4 _497;
  float4 _525;
  int _535;
  int _536;
  int _537;
  int _550;
  int _586;
  uint _587;
  int _589;
  int _594;
  int _603;
  int _613;
  int _614;
  int _625;
  uint _630;
  int _636;
  uint _640;
  float _642;
  float4 _644;
  int _689;
  int _692;
  int _694;
  int16_t _697;
  half _700;
  half _701;
  half _702;
  float _708;
  float _709;
  float _710;
  float _735;
  float _736;
  float _737;
  float _749;
  float _750;
  float _751;
  float _753;
  bool _758;
  float _762;
  float _763;
  float _764;
  float _768;
  float _784;
  float _785;
  float _786;
  bool _804;
  float _805;
  float _806;
  float _807;
  float _810;
  float _813;
  float _816;
  float _817;
  float _821;
  float _822;
  float _823;
  float _849;
  float _853;
  float _878;
  bool _882;
  float _892;
  float _893;
  float _894;
  float _895;
  int _896;
  float _905;
  float _925;
  float _926;
  float _927;
  float _928;
  float _931;
  float _932;
  float _936;
  float _957;
  bool _989;
  float _1006;
  float _1007;
  float _1008;
  float _1044;
  float _1047;
  float _1050;
  float _1051;
  int _1069;
  int _1070;
  float _1078;
  float4 _1109;
  uint _1120;
  float _1136;
  float _1137;
  float _1138;
  float _1140;
  float _1141;
  float _1142;
  float _1143;
  float _1149;
  float _1151;
  float _1159;
  float _1168;
  float _1169;
  float4 _1191;
  float4 _1219;
  int _1229;
  int _1230;
  int _1231;
  int _1244;
  float _1264;
  float _1266;
  float _1267;
  float _1280;
  float _1281;
  float _1282;
  float _1286;
  float _1287;
  float _1288;
  float _1292;
  float _1293;
  float _1294;
  float _1304;
  float _1325;
  float4 _1329;
  float4 _1357;
  int _1367;
  int _1368;
  int _1369;
  int _1382;
  float _1395;
  float _1396;
  float _1397;
  bool _1401;
  bool _1402;
  bool _1403;
  float _1404;
  float _1405;
  float _1406;
  bool _1407;
  bool _1408;
  bool _1409;
  float4 _1431;
  float4 _1450;
  float _1454;
  float _1455;
  float _1456;
  int _1472;
  float _1479;
  float _1480;
  float _1481;
  float _1482;
  float _1491;
  float _1492;
  float _1493;
  float _1494;
  float _1495;
  float _1496;
  int _1500;
  int _1501;
  int _1502;
  uint4 _1509;
  float _1526;
  float _1549;
  float _1550;
  float _1551;
  float _1582;
  float _1584;
  float _1591;
  float _1603;
  float _1609;
  float _1610;
  float _1626;
  float _1632;
  float _1652;
  float _1653;
  float _1657;
  float _1658;
  float _1659;
  int _1660;
  int _1678;
  float _1681;
  float _1685;
  float _1686;
  float _1687;
  float4 _1696;
  float4 _1724;
  int _1734;
  int _1735;
  int _1736;
  int _1749;
  bool _1773;
  float _1780;
  float4 _1787;
  float4 _1815;
  int _1825;
  int _1826;
  int _1827;
  int _1840;
  int _1876;
  uint _1877;
  int _1879;
  int _1884;
  int _1893;
  int _1903;
  int _1904;
  int _1915;
  uint _1920;
  int _1926;
  uint _1930;
  float _1932;
  float4 _1934;
  float _1969;
  float _1970;
  float _1971;
  int _1979;
  int _1982;
  int _1984;
  int16_t _1987;
  half _1990;
  half _1991;
  half _1992;
  float _1998;
  float _1999;
  float _2000;
  float _2025;
  float _2026;
  float _2027;
  float _2039;
  float _2040;
  float _2041;
  float _2043;
  bool _2048;
  float _2052;
  float _2053;
  float _2054;
  float _2058;
  float _2074;
  float _2075;
  float _2076;
  float _2096;
  float _2099;
  float _2102;
  float _2103;
  float _2107;
  float _2108;
  float _2109;
  float _2135;
  float _2139;
  float _2164;
  float _2171;
  float _2172;
  float _2173;
  float _2174;
  int _2175;
  float _2184;
  float _2209;
  float _2219;
  float _2220;
  float _2221;
  float _2223;
  float _2224;
  float _2236;
  bool _2237;
  float _2251;
  float _2252;
  float _2255;
  float _2276;
  float _2280;
  float _2282;
  float _2286;
  float _2287;
  float _2288;
  float _2318;
  float _2323;
  float _2324;
  half4 _2351;
  float _2368;
  float _2369;
  float _2370;
  float _2375;
  float _2376;
  float _2377;
  float _2397;
  float _2401;
  float _2408;
  float _2409;
  bool _2416;
  float _2425;
  float _2426;
  float _2427;
  float _2447;
  float _2451;
  bool _2462;
  float _2463;
  float _2464;
  float _2465;
  int _2466;
  float _2472;
  float _2473;
  int _2476;
  int _2477;
  uint _2480;
  uint _2481;
  half4 _2498;
  int _2512;
  float4 _2514;
  float4 _2520;
  float4 _2526;
  float4 _2532;
  float _2537;
  float _2541;
  float _2545;
  float _2549;
  float _2552;
  float _2553;
  float _2554;
  float _2555;
  float _2558;
  float _2574;
  float _2580;
  float _2592;
  float _2596;
  float _2597;
  float _2598;
  float _2599;
  float _2600;
  float _2601;
  float _2604;
  float _2607;
  float _2610;
  float _2612;
  float _2613;
  float _2614;
  float _2615;
  float _2616;
  float _2621;
  float _2634;
  float _2636;
  float _2642;
  float _2680;
  float _2684;
  float _2688;
  float _2691;
  float _2692;
  bool _2703;
  float _2736;
  float _2740;
  float _2744;
  bool _2755;
  int _2778;
  int _2779;
  uint _2782;
  uint _2783;
  uint _2802;
  float4 _2804;
  float4 _2810;
  float4 _2816;
  float4 _2822;
  float _2827;
  float _2831;
  float _2835;
  float _2839;
  float _2842;
  float _2843;
  float _2844;
  float _2845;
  float _2848;
  float _2864;
  float _2870;
  float _2882;
  float _2886;
  float _2887;
  float _2888;
  float _2889;
  float _2890;
  float _2891;
  float _2894;
  float _2897;
  float _2900;
  float _2902;
  float _2928;
  float _2949;
  float _2950;
  float _2951;
  float _2952;
  float _2953;
  float _2954;
  float _2974;
  float _2978;
  float _2982;
  float _2997;
  float4 _3001;
  float _3006;
  float _3011;
  float _3013;
  float _3020;
  float _3027;
  half _3028;
  half _3029;
  half _3030;
  half _3044;
  half _3045;
  half _3046;
  bool _3049;
  float _3086;
  float _3092;
  float _3097;
  float _3101;
  float _3103;
  float _3105;
  float _3111;
  float _3112;
  float _3118;
  float2 _3146;
  float _3165;
  float _3166;
  float _3168;
  float _3174;
  float _3177;
  float _3180;
  float _3186;
  float _3187;
  float _3188;
  float _3207;
  float _3215;
  float _3227;
  float _3230;
  float _3236;
  float _3257;
  float _3258;
  float _3264;
  float _3266;
  float _3273;
  float _3274;
  float _3275;
  float _3276;
  float _3295;
  bool _3297;
  float _3298;
  float _3299;
  float _3300;
  float _3301;
  half _3304;
  half _3305;
  half _3306;
  float _3331;
  float _3339;
  float _3350;
  float _3352;
  float _3353;
  float _3354;
  float _3356;
  float _3357;
  float _3358;
  float _3359;
  float _3360;
  float _3361;
  float _3362;
  float _3367;
  float _3369;
  float _3372;
  float _3373;
  float _3375;
  float _3378;
  float _3379;
  float _3387;
  float _3388;
  float _3389;
  float _3390;
  float _3402;
  float _3406;
  float _3417;
  float _3419;
  float _3421;
  float _3426;
  float _3427;
  float _3431;
  float _3432;
  float _3433;
  float _3434;
  float _3462;
  float _3463;
  float _3464;
  float _3465;
  float _3469;
  float _3470;
  float _3471;
  float _3475;
  float _3476;
  float _3477;
  float _3481;
  float _3485;
  bool _3496;
  float _3504;
  float _3505;
  float _3506;
  float _3510;
  float _3514;
  bool _3525;
  float _3527;
  float _3528;
  float _3529;
  float _3530;
  int _3531;
  float _3537;
  float _3538;
  int _3541;
  int _3542;
  uint _3545;
  uint _3546;
  int _3565;
  float4 _3567;
  float4 _3573;
  float4 _3579;
  float4 _3585;
  float _3590;
  float _3594;
  float _3598;
  float _3602;
  float _3605;
  float _3606;
  float _3607;
  float _3608;
  float _3611;
  float _3627;
  float _3633;
  float _3645;
  float _3649;
  float _3650;
  float _3651;
  float _3652;
  float _3653;
  float _3654;
  float _3657;
  float _3660;
  float _3663;
  float _3665;
  float _3669;
  float _3674;
  float _3687;
  float _3689;
  float _3695;
  float _3710;
  float _3714;
  float _3718;
  bool _3729;
  float _3746;
  float _3750;
  float _3754;
  bool _3765;
  int _3788;
  int _3789;
  uint _3792;
  uint _3793;
  float _3831;
  float _3845;
  float _3846;
  float _3847;
  float _3851;
  float _3855;
  float _3859;
  float _3874;
  float4 _3878;
  float _3883;
  float _3888;
  float _3890;
  float _3897;
  uint4 _3909;
  float _3915;
  float _3918;
  float _3922;
  float _3923;
  float _3924;
  float _3925;
  float _3961;
  float _3963;
  float _3964;
  float _3970;
  float _3975;
  float _3978;
  float _3985;
  float _3991;
  float2 _4017;
  float _4021;
  float _4031;
  float _4032;
  float _4033;
  float _4052;
  float _4058;
  float _4068;
  float _4071;
  float _4077;
  float _4099;
  float _4101;
  float _4108;
  float _4109;
  float _4110;
  float _4111;
  float _4127;
  float _4141;
  float _4142;
  float _4143;
  float _4147;
  float _4148;
  float _4149;
  float4 _4176;
  float4 _4204;
  int _4214;
  int _4215;
  int _4216;
  int _4229;
  float _4252;
  float _4256;
  float _4276;
  bool _4277;
  float4 _4285;
  float _4308;
  float _4312;
  float4 _4316;
  float _4322;
  float _4323;
  float _4324;
  float _4325;
  float _4330;
  float _4331;
  float _4335;
  float _4345;
  float _4346;
  float _4347;
  float _4348;
  float _4353;
  int _4387;
  int _4401;
  int __loop_jump_target = -1;
  int _40[4];
  _53 = (int)(SV_GroupID.x) & 3;
  _54 = (uint)(_53) >> 1;
  _62 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 5))]);
  _40[0] = _62.x;
  _40[1] = _62.y;
  _40[2] = _62.z;
  _40[3] = _62.w;
  _72 = _40[min((uint)((((uint)(SV_GroupID.x) >> 3) & 3)), 3u)];
  _76 = select((((int)(SV_GroupID.x) & 4) == 0), _72, ((uint)(_72) >> 16));
  _82 = (((uint)((_53 - (_54 << 1)) << 4)) + SV_GroupThreadID.x) + ((uint)(((int)(_76 << 5)) & 8160));
  _84 = (((uint)(_54 << 4)) + SV_GroupThreadID.y) + ((uint)(((uint)(_76) >> 3) & 8160));
  _85 = (float)((uint)_82);
  _86 = (float)((uint)_84);
  _99 = ((_bufferSizeAndInvSize.z * 2.0f) * (_85 + 0.5f)) + -1.0f;
  _102 = 1.0f - ((_bufferSizeAndInvSize.w * 2.0f) * (_86 + 0.5f));
  _108 = __3__36__0__0__g_depthOpaque.Load(int3(_82, _84, 0));  // [sem: _3__36__0__0__g_depthOpaque_load]
  _114 = ((uint)((uint)(_108.x)) >> 24) & 127;  // [sem: _3__36__0__0__g_depthOpaque_load_derived]
  _116 = __3__36__0__0__g_sceneNormal.Load(int3(_82, _84, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
  _132 = min(1.0f, ((((float)((uint)((uint)(_116.x & 1023)))) * 0.001956947147846222f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _133 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_116.x)) >> 10) & 1023)))) * 0.001956947147846222f) + -1.0f));
  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _134 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_116.x)) >> 20) & 1023)))) * 0.001956947147846222f) + -1.0f));
  _136 = rsqrt(dot(float3(_132, _133, _134), float3(_132, _133, _134)));  // [sem: invLength]
  _137 = _136 * _132;
  _138 = _136 * _133;
  _139 = _136 * _134;
  _140 = max(1.0000000116860974e-07f, (((float)((uint)((uint)(_108.x & 16777215)))) * 5.960465188081798e-08f));  // [sem: _3__36__0__0__g_depthOpaque_load_derived]
  _176 = mad((_invViewProjRelative[2].w), _140, mad((_invViewProjRelative[1].w), _102, ((_invViewProjRelative[0].w) * _99))) + (_invViewProjRelative[3].w);
  _177 = (mad((_invViewProjRelative[2].x), _140, mad((_invViewProjRelative[1].x), _102, ((_invViewProjRelative[0].x) * _99))) + (_invViewProjRelative[3].x)) / _176;
  _178 = (mad((_invViewProjRelative[2].y), _140, mad((_invViewProjRelative[1].y), _102, ((_invViewProjRelative[0].y) * _99))) + (_invViewProjRelative[3].y)) / _176;
  _179 = (mad((_invViewProjRelative[2].z), _140, mad((_invViewProjRelative[1].z), _102, ((_invViewProjRelative[0].z) * _99))) + (_invViewProjRelative[3].z)) / _176;
  _182 = _nearFarProj.x / _140;
  _188 = (float)((uint)((uint)(((int)(((uint)((uint)(_frameNumber.x)) >> 2) * 71)) & 31)));
  if (!((uint)_114 > (uint)11) | !(((uint)_114 < (uint)20) || (_114 == 107))) {
    _205 = (_114 == 20);
  } else {
    _205 = true;
  }
  _208 = __3__38__0__1__g_raytracingHitResultUAV[int2(_82, _84)].x;
  _209 = __3__38__0__1__g_raytracingHitResultUAV[int2(_82, _84)].y;
  _210 = __3__38__0__1__g_raytracingHitResultUAV[int2(_82, _84)].z;
  _211 = __3__38__0__1__g_raytracingHitResultUAV[int2(_82, _84)].w;
  _213 = rsqrt(dot(float3(_208, _209, _210), float3(_208, _209, _210)));  // [sem: invLength]
  _214 = _213 * _208;
  _215 = _213 * _209;
  _216 = _213 * _210;
  _217 = (_211 < 0.0f);
  _218 = abs(_211);
  if ((_218 > 0.0f) && (_218 < 10000.0f)) {
    _224 = __3__36__0__0__g_raytracingBaseColor.Load(int3(_82, _84, 0));  // [sem: _3__36__0__0__g_raytracingBaseColor_load]
    _230 = __3__36__0__0__g_raytracingNormal.Load(int3(_82, _84, 0));  // [sem: _3__36__0__0__g_raytracingNormal_load]
    _238 = (_230.x * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_raytracingNormal_load_derived]
    _239 = (_230.y * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_raytracingNormal_load_derived]
    _240 = (_230.z * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_raytracingNormal_load_derived]
    _242 = rsqrt(dot(float3(_238, _239, _240), float3(_238, _239, _240)));  // [sem: invLength]
    _243 = _238 * _242;
    _244 = _239 * _242;
    _245 = _240 * _242;
    _246 = select(_217, 0.0f, _243);
    _247 = select(_217, 0.0f, _244);
    _248 = select(_217, 0.0f, _245);
    _250 = (int)(uint)((int)(_224.w > 0.0f));  // [sem: _3__36__0__0__g_raytracingBaseColor_load_derived]
    _251 = _214 * _218;
    _252 = _215 * _218;
    _253 = _216 * _218;
    _254 = _251 + _177;
    _255 = _252 + _178;
    _256 = _253 + _179;
    _258 = 0;
    while(true) {
      _260 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_258 + 20))];
      _288 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_258 + 36))];
      // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
      // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
      float3 _rndx_surfel_jitter_298 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _254) * _260.w) + _288.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _255) * _260.w) + _288.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _256) * _260.w) + _288.z), float2(_85, _86), _188, _frameNumber.x);
      _298 = int(floor(_rndx_surfel_jitter_298.x));
      _299 = int(floor(_rndx_surfel_jitter_298.y));
      _300 = int(floor(_rndx_surfel_jitter_298.z));
      // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
      if (!(((((int)_298 >= (int)int(_260.x + -63.0f)) && ((int)_298 < (int)int(_260.x + 63.0f))) && (((int)_299 >= (int)int(_260.y + -31.0f)) && ((int)_299 < (int)int(_260.y + 31.0f)))) && (((int)_300 >= (int)int(_260.z + -63.0f)) && ((int)_300 < (int)int(_260.z + 63.0f))))) {
        _313 = _258 + 1;
        if ((uint)_313 < (uint)8) {
          _258 = _313;
          continue;
        } else {
          _316 = -10000;
        }
      } else {
        _316 = _258;
      }
      _323 = -0.0f - _214;
      _324 = -0.0f - _215;
      _325 = -0.0f - _216;
      _329 = min(_218, (float((int)((int)(1 << (_316 & 31)))) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x));
      _333 = (_329 * select(_217, _323, _243)) + _254;
      _334 = (_329 * select(_217, _324, _244)) + _255;
      _335 = (_329 * select(_217, _325, _245)) + _256;
      _337 = 0;
      while(true) {
        _339 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_337 + 20))];
        _367 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_337 + 36))];
        // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
        // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
        float3 _rndx_surfel_jitter_377 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _333) * _339.w) + _367.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _334) * _339.w) + _367.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _335) * _339.w) + _367.z), float2(_85, _86), _188, _frameNumber.x);
        _377 = int(floor(_rndx_surfel_jitter_377.x));
        _378 = int(floor(_rndx_surfel_jitter_377.y));
        _379 = int(floor(_rndx_surfel_jitter_377.z));
        // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
        if (!(((((int)_377 >= (int)int(_339.x + -63.0f)) && ((int)_377 < (int)int(_339.x + 63.0f))) && (((int)_378 >= (int)int(_339.y + -31.0f)) && ((int)_378 < (int)int(_339.y + 31.0f)))) && (((int)_379 >= (int)int(_339.z + -63.0f)) && ((int)_379 < (int)int(_339.z + 63.0f))))) {
          _392 = _337 + 1;
          if ((uint)_392 < (uint)8) {
            _337 = _392;
            continue;
          } else {
            _395 = -10000;
          }
        } else {
          _395 = _337;
        }
        if ((_395 != -10000) && ((int)_395 < (int)4)) {
          if ((int)_395 < (int)6) {
            _403 = 0;
            while(true) {
              _405 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_403 + 20))];
              _433 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_403 + 36))];
              // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
              // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
              float3 _rndx_surfel_jitter_443 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _333) * _405.w) + _433.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _334) * _405.w) + _433.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _335) * _405.w) + _433.z), float2(_85, _86), _188, _frameNumber.x);
              _443 = int(floor(_rndx_surfel_jitter_443.x));
              _444 = int(floor(_rndx_surfel_jitter_443.y));
              _445 = int(floor(_rndx_surfel_jitter_443.z));
              // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
              if (((((int)_443 >= (int)int(_405.x + -63.0f)) && ((int)_443 < (int)int(_405.x + 63.0f))) && (((int)_444 >= (int)int(_405.y + -31.0f)) && ((int)_444 < (int)int(_405.y + 31.0f)))) && (((int)_445 >= (int)int(_405.z + -63.0f)) && ((int)_445 < (int)int(_405.z + 63.0f)))) {
                _466 = (_443 & 127);
                _467 = (_444 & 63);
                _468 = (_445 & 127);
                _469 = _403;
              } else {
                _458 = _403 + 1;
                if ((uint)_458 < (uint)8) {
                  _403 = _458;
                  continue;
                } else {
                  _466 = -10000;
                  _467 = -10000;
                  _468 = -10000;
                  _469 = -10000;
                }
              }
              if (!((uint)_469 > (uint)5)) {
                _482 = (((((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_466, _467, ((int)(((uint)(((int)(_469 * 130)) | 1)) + _468)), 0)))).x) & 4194303) == 0);
                [branch]
                if (!_482) {
                  _485 = _466;
                  _486 = _467;
                  _487 = _468;
                  _488 = _469;
                } else {
                  _485 = -10000;
                  _486 = -10000;
                  _487 = -10000;
                  _488 = -10000;
                }
                _490 = (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 0.5f) * float((int)((int)(1 << (_469 & 31))));
                _495 = 0;
                while(true) {
                  _497 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_495 + 20))];
                  _525 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_495 + 36))];
                  // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
                  // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
                  float3 _rndx_surfel_jitter_535 = RenoDXSurfelVoxelJitter(float3((((_333 - _490) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x) * _497.w) + _525.x, (((_334 - _490) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y) * _497.w) + _525.y, (((_335 - _490) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z) * _497.w) + _525.z), float2(_85, _86), _188, _frameNumber.x);
                  _535 = int(floor(_rndx_surfel_jitter_535.x));
                  _536 = int(floor(_rndx_surfel_jitter_535.y));
                  _537 = int(floor(_rndx_surfel_jitter_535.z));
                  // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
                  if (((((int)_535 >= (int)int(_497.x + -63.0f)) && ((int)_535 < (int)int(_497.x + 63.0f))) && (((int)_536 >= (int)int(_497.y + -31.0f)) && ((int)_536 < (int)int(_497.y + 31.0f)))) && (((int)_537 >= (int)int(_497.z + -63.0f)) && ((int)_537 < (int)int(_497.z + 63.0f)))) {
                    _558 = (_535 & 127);
                    _559 = (_536 & 63);
                    _560 = (_537 & 127);
                    _561 = _495;
                  } else {
                    _550 = _495 + 1;
                    if ((uint)_550 < (uint)8) {
                      _495 = _550;
                      continue;
                    } else {
                      _558 = -10000;
                      _559 = -10000;
                      _560 = -10000;
                      _561 = -10000;
                    }
                  }
                  if (!((uint)_561 > (uint)5)) {
                    if (_482) {
                      _566 = 0;
                      _567 = _488;
                      _568 = _487;
                      _569 = _486;
                      _570 = _485;
                      while(true) {
                        _579 = 0;
                        _580 = _567;
                        _581 = _568;
                        _582 = _569;
                        _583 = _570;
                        while(true) {
                          _586 = _566 + _560;
                          _587 = _586 + ((uint)(((int)(_561 * 130)) | 1));
                          _594 = _579 + _559;
                          if (!(((uint)_594 > (uint)63) || ((uint)(_558 | _586) > (uint)127))) {
                            _603 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_558, _594, _587, 0)))).x) & 4194303;
                            _606 = (_603 != 0);
                            _607 = _603;
                            _608 = _561;
                            _609 = _586;
                            _610 = _594;
                            _611 = _558;
                          } else {
                            _606 = false;
                            _607 = 0;
                            _608 = 0;
                            _609 = 0;
                            _610 = 0;
                            _611 = 0;
                          }
                          if (!_606) {
                            _613 = _558 + 1;
                            _614 = _579 + _559;
                            if (!(((uint)_614 > (uint)63) || ((uint)(_613 | _586) > (uint)127))) {
                              _4401 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_613, _614, _587, 0)))).x) & 4194303;
                              _4404 = (_4401 != 0);
                              _4405 = _4401;
                              _4406 = _561;
                              _4407 = _586;
                              _4408 = _614;
                              _4409 = _613;
                            } else {
                              _4404 = false;
                              _4405 = 0;
                              _4406 = 0;
                              _4407 = 0;
                              _4408 = 0;
                              _4409 = 0;
                            }
                            if (!_4404) {
                              _620 = _583;
                              _621 = _582;
                              _622 = _581;
                              _623 = _580;
                              _624 = 0;
                            } else {
                              _620 = _4409;
                              _621 = _4408;
                              _622 = _4407;
                              _623 = _4406;
                              _624 = _4405;
                            }
                          } else {
                            _620 = _611;
                            _621 = _610;
                            _622 = _609;
                            _623 = _608;
                            _624 = _607;
                          }
                          while(true) {
                            _625 = _579 + 1;
                            if (((int)_625 < (int)2) && (_624 == 0)) {
                              _579 = _625;
                              _580 = _623;
                              _581 = _622;
                              _582 = _621;
                              _583 = _620;
                              __loop_jump_target = 578;
                              break;
                            }
                            while(true) {
                              _589 = _566 + 1;
                              if (((int)_589 < (int)2) && (_624 == 0)) {
                                _566 = _589;
                                _567 = _623;
                                _568 = _622;
                                _569 = _621;
                                _570 = _620;
                                __loop_jump_target = 565;
                                break;
                              }
                              while(true) {
                                _573 = _623;
                                _574 = _622;
                                _575 = _621;
                                _576 = _620;
                                break;
                              }
                              break;
                            }
                            if (__loop_jump_target != -1) {
                              break;
                            }
                            break;
                          }
                          if (__loop_jump_target == 578) {
                            __loop_jump_target = -1;
                            continue;
                          }
                          if (__loop_jump_target != -1) {
                            break;
                          }
                          break;
                        }
                        if (__loop_jump_target == 565) {
                          __loop_jump_target = -1;
                          continue;
                        }
                        if (__loop_jump_target != -1) {
                          break;
                        }
                        break;
                      }
                    } else {
                      _573 = _488;
                      _574 = _487;
                      _575 = _486;
                      _576 = _485;
                    }
                    if ((uint)_573 < (uint)6) {
                      _630 = _573 * 130;
                      _636 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_576, _575, ((int)(((uint)(_630 | 1)) + _574)), 0)))).x) & 4194303;
                      [branch]
                      if (!(_636 == 0)) {
                        _640 = 1 << (_573 & 31);
                        _642 = float((int)(_640)) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                        _644 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((uint)(_573 + 20u))];
                        _680 = 0.0f;
                        _681 = 0.0f;
                        _682 = 0.0f;
                        _683 = _246;
                        _684 = _247;
                        _685 = _248;
                        _686 = 0.0f;
                        _687 = 0;
                        while(true) {
                          _689 = (_636 + -1) + _687;
                          _692 = __3__37__0__0__g_surfelDataBuffer[_689]._baseColor;
                          _694 = __3__37__0__0__g_surfelDataBuffer[_689]._normal;
                          _697 = __3__37__0__0__g_surfelDataBuffer[_689]._radius;
                          if (!(_692 == 0)) {
                            _700 = __3__37__0__0__g_surfelDataBuffer[_689]._radiance.z;
                            _701 = __3__37__0__0__g_surfelDataBuffer[_689]._radiance.y;
                            _702 = __3__37__0__0__g_surfelDataBuffer[_689]._radiance.x;
                            _708 = (float)((uint)((uint)(_692 & 255)));
                            _709 = (float)((uint)((uint)(((uint)(_692) >> 8) & 255)));
                            _710 = (float)((uint)((uint)(((uint)(_692) >> 16) & 255)));
                            _735 = select(((_708 * 0.003921568859368563f) < 0.040449999272823334f), (_708 * 0.0003035269910469651f), exp2(log2((_708 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
                            _736 = select(((_709 * 0.003921568859368563f) < 0.040449999272823334f), (_709 * 0.0003035269910469651f), exp2(log2((_709 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
                            _737 = select(((_710 * 0.003921568859368563f) < 0.040449999272823334f), (_710 * 0.0003035269910469651f), exp2(log2((_710 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
                            _749 = (((float)((uint)((uint)(_694 & 255)))) * 0.007874015718698502f) + -1.0f;
                            _750 = (((float)((uint)((uint)(((uint)(_694) >> 8) & 255)))) * 0.007874015718698502f) + -1.0f;
                            _751 = (((float)((uint)((uint)(((uint)(_694) >> 16) & 255)))) * 0.007874015718698502f) + -1.0f;
                            _753 = rsqrt(dot(float3(_749, _750, _751), float3(_749, _750, _751)));  // [sem: invLength]
                            _758 = ((_694 & 16777215) == 0);
                            _762 = float(_702);
                            _763 = float(_701);
                            _764 = float(_700);
                            _768 = (_642 * 0.0019607844296842813f) * ((float)((uint16_t)((uint)(_697 & 255))));
                            _784 = (((((float)((uint)((uint)((uint)(_692) >> 24)))) * 0.003937007859349251f) + -0.5f) * _642) + ((((_644.x + -63.5f) + float((int)(((int)((_576 + 64u) - (uint)(int(_644.x)))) & 127))) * _642) - _viewPos.x);
                            _785 = (((((float)((uint)((uint)((uint)(_694) >> 24)))) * 0.003937007859349251f) + -0.5f) * _642) + ((((_644.y + -31.5f) + float((int)(((int)((_575 + 32u) - (uint)(int(_644.y)))) & 63))) * _642) - _viewPos.y);
                            _786 = (((((float)((uint16_t)((uint)((uint16_t)(_697) >> 8)))) * 0.003937007859349251f) + -0.5f) * _642) + ((((_644.z + -63.5f) + float((int)(((int)((_574 + 64u) - (uint)(int(_644.z)))) & 127))) * _642) - _viewPos.z);
                            _804 = (_230.w == 0.0f);  // [sem: _3__36__0__0__g_raytracingNormal_load_derived]
                            _805 = select(_804, _323, _683);
                            _806 = select(_804, _324, _684);
                            _807 = select(_804, _325, _685);
                            _810 = ((-0.0f - _177) - _251) + _784;
                            _813 = ((-0.0f - _178) - _252) + _785;
                            _816 = ((-0.0f - _179) - _253) + _786;
                            _817 = dot(float3(_810, _813, _816), float3(_805, _806, _807));
                            _821 = _810 - (_817 * _805);
                            _822 = _813 - (_817 * _806);
                            _823 = _816 - (_817 * _807);
                            _849 = 1.0f / ((float)((uint)_640));
                            _853 = frac(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _786) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z) * _849);
                            _878 = select(((int)_573 > (int)5), 1.0f, ((saturate((saturate(dot(float3(_323, _324, _325), float3(select(_758, _323, (_753 * _749)), select(_758, _324, (_753 * _750)), select(_758, _325, (_753 * _751))))) + -0.03125f) * 1.0322580337524414f) * ((float)((bool)(uint)(dot(float3(_821, _822, _823), float3(_821, _822, _823)) < ((_768 * _768) * 16.0f))))) * ((float)((bool)(uint)(((__3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _784) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _849), (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _785) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y) * _849), (((((float)((uint)_630)) + 1.0f) + ((select((_853 < 0.0f), 1.0f, 0.0f) + _853) * 128.0f)) * 0.000961538462433964f)), 0.0f)).x) > ((_642 * 0.25f) * (saturate((dot(float3(_762, _763, _764), float3(0.21267099678516388f, 0.7151600122451782f, 0.0721689984202385f)) * 9.999999747378752e-05f) / _exposure3.w) + 1.0f)))))));
                            _882 = (!(_224.w > 0.0f)) || ((_692 & 16777215) == 16777215);
                            _892 = ((select(_882, (((_736 * 0.3395099937915802f) + (_735 * 0.6131200194358826f)) + (_737 * 0.047370001673698425f)), _224.x) * _762) * _878) + _680;
                            _893 = ((select(_882, (((_736 * 0.9163600206375122f) + (_735 * 0.07020000368356705f)) + (_737 * 0.013450000435113907f)), _224.y) * _763) * _878) + _681;
                            _894 = ((select(_882, (((_736 * 0.10958000272512436f) + (_735 * 0.02061999961733818f)) + (_737 * 0.8697999715805054f)), _224.z) * _764) * _878) + _682;
                            _895 = _878 + _686;
                            _896 = _687 + 1;
                            if ((uint)_896 < (uint)4) {
                              _680 = _892;
                              _681 = _893;
                              _682 = _894;
                              _683 = _805;
                              _684 = _806;
                              _685 = _807;
                              _686 = _895;
                              _687 = _896;
                              continue;
                            } else {
                              _899 = _892;
                              _900 = _893;
                              _901 = _894;
                              _902 = _895;
                            }
                          } else {
                            _899 = _680;
                            _900 = _681;
                            _901 = _682;
                            _902 = _686;
                          }
                          if (_902 > 0.0f) {
                            _905 = 1.0f / _902;
                            _919 = (-0.0f - min(0.0f, (-0.0f - (_899 * _905))));
                            _920 = (-0.0f - min(0.0f, (-0.0f - (_900 * _905))));
                            _921 = (-0.0f - min(0.0f, (-0.0f - (_901 * _905))));
                          } else {
                            _919 = _899;
                            _920 = _900;
                            _921 = _901;
                          }
                          break;
                        }
                      } else {
                        _919 = 0.0f;
                        _920 = 0.0f;
                        _921 = 0.0f;
                      }
                    } else {
                      _919 = 0.0f;
                      _920 = 0.0f;
                      _921 = 0.0f;
                    }
                  } else {
                    _919 = 0.0f;
                    _920 = 0.0f;
                    _921 = 0.0f;
                  }
                  break;
                }
              } else {
                _919 = 0.0f;
                _920 = 0.0f;
                _921 = 0.0f;
              }
              _925 = max(9.999999974752427e-07f, (_exposure3.w * 0.0010000000474974513f));
              _926 = max(_925, _919);
              _927 = max(_925, _920);
              _928 = max(_925, _921);
              _931 = dot(float3(_926, _927, _928), float3(0.21267099678516388f, 0.7151600122451782f, 0.0721689984202385f));
              _932 = min((max(0.0005000000237487257f, _exposure3.w) * 512.0f), _931);
              _936 = max(9.999999717180685e-10f, _931);
              _941 = ((_932 * _926) / _936);
              _942 = ((_932 * _927) / _936);
              _943 = ((_932 * _928) / _936);
              break;
            }
          } else {
            _941 = 0.0f;
            _942 = 0.0f;
            _943 = 0.0f;
          }
          if (saturate(_230.w) == 0.0f) {
            _957 = (exp2((saturate(saturate(_224.w)) * 20.0f) + -8.0f) + -0.00390625f) * (1.0f / (((_218 * _218) * 0.10000000149011612f) + 1.0f));
            _965 = ((_957 * _224.x) + _941);
            _966 = ((_957 * _224.y) + _942);
            _967 = ((_957 * _224.z) + _943);
          } else {
            _965 = _941;
            _966 = _942;
            _967 = _943;
          }
          _974 = _246;
          _975 = _247;
          _976 = _248;
          _977 = _230.w;
          _978 = _224.x;
          _979 = _224.y;
          _980 = _224.z;
          _981 = _224.w;
          _982 = _250;
          _983 = (_renderParams2.y * _965);
          _984 = (_renderParams2.y * _966);
          _985 = (_renderParams2.y * _967);
          _986 = 1.0f;
          _987 = _218;
        } else {
          _974 = _246;
          _975 = _247;
          _976 = _248;
          _977 = _230.w;
          _978 = _224.x;
          _979 = _224.y;
          _980 = _224.z;
          _981 = _224.w;
          _982 = _250;
          _983 = 0.0f;
          _984 = 0.0f;
          _985 = 0.0f;
          _986 = 1.0f;
          _987 = _218;
        }
        break;
      }
      break;
    }
  } else {
    _974 = 0.0f;
    _975 = 0.0f;
    _976 = 0.0f;
    _977 = 0.0f;
    _978 = 0.0f;
    _979 = 0.0f;
    _980 = 0.0f;
    _981 = 0.0f;
    _982 = 0;
    _983 = 0.0f;
    _984 = 0.0f;
    _985 = 0.0f;
    _986 = 0.0f;
    _987 = 0.0f;
  }
  _989 = (_987 > 0.0f);
  if ((_182 > (_lightingParams.z * 0.875f)) && (!_989)) {
    _1002 = (_182 < (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 11585.1259765625f));
  } else {
    _1002 = false;
  }
  _1006 = (_987 * _214) + _177;
  _1007 = (_987 * _215) + _178;
  _1008 = (_987 * _216) + _179;
  _1044 = mad((_viewProjRelativePrev[2].w), _1008, mad((_viewProjRelativePrev[1].w), _1007, ((_viewProjRelativePrev[0].w) * _1006))) + (_viewProjRelativePrev[3].w);
  _1047 = (mad((_viewProjRelativePrev[2].z), _1008, mad((_viewProjRelativePrev[1].z), _1007, ((_viewProjRelativePrev[0].z) * _1006))) + (_viewProjRelativePrev[3].z)) / _1044;
  _1050 = (((mad((_viewProjRelativePrev[2].x), _1008, mad((_viewProjRelativePrev[1].x), _1007, ((_viewProjRelativePrev[0].x) * _1006))) + (_viewProjRelativePrev[3].x)) / _1044) * 0.5f) + 0.5f;
  _1051 = 0.5f - (((mad((_viewProjRelativePrev[2].y), _1008, mad((_viewProjRelativePrev[1].y), _1007, ((_viewProjRelativePrev[0].y) * _1006))) + (_viewProjRelativePrev[3].y)) / _1044) * 0.5f);
  if (_217) {
    if (_989) {
      _1069 = int(_1050 * _bufferSizeAndInvSize.x);
      _1070 = int(_1051 * _bufferSizeAndInvSize.y);
      _1078 = _nearFarProj.x / max(1.0000000116860974e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaquePrev.Load(int3(_1069, _1070, 0)))).x) & 16777215)))) * 5.960465188081798e-08f));
      if ((_1047 > 0.0f) && (((_1050 >= 0.0f) && (_1050 <= 1.0f)) && ((_1051 >= 0.0f) && (_1051 <= 1.0f)))) {
        if (((_1078 - dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z))) > 0.0f) && (abs(_1078 - _1044) < max(0.5f, (_1044 * 0.05000000074505806f)))) {
          _1109 = __3__36__0__0__g_sceneColor.SampleLevel(__3__40__0__0__g_samplerClamp, float2(_1050, _1051), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
          if (!(!(_1109.w >= 0.0f))) {
            _1120 = __3__36__0__0__g_sceneNormal.Load(int3(_1069, _1070, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
            _1136 = min(1.0f, ((((float)((uint)((uint)(_1120.x & 1023)))) * 0.001956947147846222f) + -1.0f));
            _1137 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1120.x)) >> 10) & 1023)))) * 0.001956947147846222f) + -1.0f));
            _1138 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1120.x)) >> 20) & 1023)))) * 0.001956947147846222f) + -1.0f));
            _1140 = rsqrt(dot(float3(_1136, _1137, _1138), float3(_1136, _1137, _1138)));  // [sem: invLength]
            _1141 = _1140 * _1136;
            _1142 = _1140 * _1137;
            _1143 = _1140 * _1138;
            _1149 = select((dot(float3((-0.0f - _214), (-0.0f - _215), (-0.0f - _216)), float3(_1141, _1142, _1143)) > 0.20000000298023224f), 1.0f, 0.0f);
            _1151 = saturate(_182 * 0.009999999776482582f);  // [sem: expr_sat]
            _1159 = (float)((bool)(uint)(abs(_nearFarProj.x - _1078) < (_1078 * 0.5f)));
            _1164 = _1141;
            _1165 = _1142;
            _1166 = _1143;
            _1167 = 0.800000011920929f;
            _1168 = _renderParams2.x * _renderParams2.x;
            _1169 = ((_1149 - (_1149 * _1151)) + _1151) * _1168;
            _1178 = ((_987 * 0.9998999834060669f) * _renderParams2.x);
            _1179 = _1164;
            _1180 = _1165;
            _1181 = _1166;
            _1182 = _1167;
            _1183 = ((_1169 * min(10000.0f, _1109.x)) * _1159);
            _1184 = ((_1169 * min(10000.0f, _1109.y)) * _1159);
            _1185 = ((_1169 * min(10000.0f, _1109.z)) * _1159);
            _1186 = _1168;
            _1187 = 1;
          } else {
            _1178 = _987;
            _1179 = _974;
            _1180 = _975;
            _1181 = _976;
            _1182 = _977;
            _1183 = 0.0f;
            _1184 = 0.0f;
            _1185 = 0.0f;
            _1186 = 0.0f;
            _1187 = 0;
          }
        } else {
          _1178 = _987;
          _1179 = _974;
          _1180 = _975;
          _1181 = _976;
          _1182 = _977;
          _1183 = 0.0f;
          _1184 = 0.0f;
          _1185 = 0.0f;
          _1186 = 0.0f;
          _1187 = 0;
        }
      } else {
        _1178 = _987;
        _1179 = _974;
        _1180 = _975;
        _1181 = _976;
        _1182 = _977;
        _1183 = 0.0f;
        _1184 = 0.0f;
        _1185 = 0.0f;
        _1186 = 0.0f;
        _1187 = 0;
      }
    } else {
      _1178 = _987;
      _1179 = _974;
      _1180 = _975;
      _1181 = _976;
      _1182 = _977;
      _1183 = 0.0f;
      _1184 = 0.0f;
      _1185 = 0.0f;
      _1186 = 0.0f;
      _1187 = 0;
    }
  } else {
    if (_989 && ((_1047 > 0.0f) && (((_1050 >= 0.0f) && (_1050 <= 1.0f)) && ((_1051 >= 0.0f) && (_1051 <= 1.0f))))) {
      _1069 = int(_1050 * _bufferSizeAndInvSize.x);
      _1070 = int(_1051 * _bufferSizeAndInvSize.y);
      _1078 = _nearFarProj.x / max(1.0000000116860974e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaquePrev.Load(int3(_1069, _1070, 0)))).x) & 16777215)))) * 5.960465188081798e-08f));
      if ((_1047 > 0.0f) && (((_1050 >= 0.0f) && (_1050 <= 1.0f)) && ((_1051 >= 0.0f) && (_1051 <= 1.0f)))) {
        if (((_1078 - dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z))) > 0.0f) && (abs(_1078 - _1044) < max(0.5f, (_1044 * 0.05000000074505806f)))) {
          _1109 = __3__36__0__0__g_sceneColor.SampleLevel(__3__40__0__0__g_samplerClamp, float2(_1050, _1051), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
          if (!(!(_1109.w >= 0.0f))) {
            _1120 = __3__36__0__0__g_sceneNormal.Load(int3(_1069, _1070, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
            _1136 = min(1.0f, ((((float)((uint)((uint)(_1120.x & 1023)))) * 0.001956947147846222f) + -1.0f));
            _1137 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1120.x)) >> 10) & 1023)))) * 0.001956947147846222f) + -1.0f));
            _1138 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1120.x)) >> 20) & 1023)))) * 0.001956947147846222f) + -1.0f));
            _1140 = rsqrt(dot(float3(_1136, _1137, _1138), float3(_1136, _1137, _1138)));  // [sem: invLength]
            _1141 = _1140 * _1136;
            _1142 = _1140 * _1137;
            _1143 = _1140 * _1138;
            _1149 = select((dot(float3((-0.0f - _214), (-0.0f - _215), (-0.0f - _216)), float3(_1141, _1142, _1143)) > 0.20000000298023224f), 1.0f, 0.0f);
            _1151 = saturate(_182 * 0.009999999776482582f);  // [sem: expr_sat]
            _1159 = (float)((bool)(uint)(abs(_nearFarProj.x - _1078) < (_1078 * 0.5f)));
            _1164 = _974;
            _1165 = _975;
            _1166 = _976;
            _1167 = _977;
            _1168 = _renderParams2.x * _renderParams2.x;
            _1169 = ((_1149 - (_1149 * _1151)) + _1151) * _1168;
            _1178 = ((_987 * 0.9998999834060669f) * _renderParams2.x);
            _1179 = _1164;
            _1180 = _1165;
            _1181 = _1166;
            _1182 = _1167;
            _1183 = ((_1169 * min(10000.0f, _1109.x)) * _1159);
            _1184 = ((_1169 * min(10000.0f, _1109.y)) * _1159);
            _1185 = ((_1169 * min(10000.0f, _1109.z)) * _1159);
            _1186 = _1168;
            _1187 = 1;
          } else {
            _1178 = _987;
            _1179 = _974;
            _1180 = _975;
            _1181 = _976;
            _1182 = _977;
            _1183 = 0.0f;
            _1184 = 0.0f;
            _1185 = 0.0f;
            _1186 = 0.0f;
            _1187 = 0;
          }
        } else {
          _1178 = _987;
          _1179 = _974;
          _1180 = _975;
          _1181 = _976;
          _1182 = _977;
          _1183 = 0.0f;
          _1184 = 0.0f;
          _1185 = 0.0f;
          _1186 = 0.0f;
          _1187 = 0;
        }
      } else {
        _1178 = _987;
        _1179 = _974;
        _1180 = _975;
        _1181 = _976;
        _1182 = _977;
        _1183 = 0.0f;
        _1184 = 0.0f;
        _1185 = 0.0f;
        _1186 = 0.0f;
        _1187 = 0;
      }
    } else {
      _1178 = _987;
      _1179 = _974;
      _1180 = _975;
      _1181 = _976;
      _1182 = _977;
      _1183 = 0.0f;
      _1184 = 0.0f;
      _1185 = 0.0f;
      _1186 = 0.0f;
      _1187 = 0;
    }
  }
  _1189 = 0;
  while(true) {
    _1191 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1189 + 20))];
    _1219 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1189 + 36))];
    // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
    // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
    float3 _rndx_surfel_jitter_1229 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _177) * _1191.w) + _1219.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _178) * _1191.w) + _1219.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _179) * _1191.w) + _1219.z), float2(_85, _86), _188, _frameNumber.x);
    _1229 = int(floor(_rndx_surfel_jitter_1229.x));
    _1230 = int(floor(_rndx_surfel_jitter_1229.y));
    _1231 = int(floor(_rndx_surfel_jitter_1229.z));
    // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
    if (((((int)_1229 >= (int)int(_1191.x + -63.0f)) && ((int)_1229 < (int)int(_1191.x + 63.0f))) && (((int)_1230 >= (int)int(_1191.y + -31.0f)) && ((int)_1230 < (int)int(_1191.y + 31.0f)))) && (((int)_1231 >= (int)int(_1191.z + -63.0f)) && ((int)_1231 < (int)int(_1191.z + 63.0f)))) {
      _1250 = (_1229 & 127);
      _1251 = _1189;
    } else {
      _1244 = _1189 + 1;
      if ((uint)_1244 < (uint)8) {
        _1189 = _1244;
        continue;
      } else {
        _1250 = -10000;
        _1251 = -10000;
      }
    }
    if (!(_1250 == -10000)) {
      _1258 = float((int)((int)(1 << (_1251 & 31))));
    } else {
      _1258 = 1.0f;
    }
    _1264 = select(_205, (((frac(frac(dot(float2(((_188 * 32.665000915527344f) + _85), ((_188 * 11.8149995803833f) + _86)), float2(0.0671105608344078f, 0.005837149918079376f))) * 52.98291778564453f) * 2.0f) * _1258) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x), 0.0f);
    if (_1002) {
      _1266 = _lightingParams.z * 1.3434898853302002f;
      _1267 = -0.0f - _1266;
      if (((_179 > _1267) && (_179 < _1266)) && (((_177 > _1267) && (_177 < _1266)) && ((_178 > _1267) && (_178 < _1266)))) {
        _1280 = 1.0f / _214;
        _1281 = 1.0f / _215;
        _1282 = 1.0f / _216;
        _1286 = _1280 * (_1267 - _177);
        _1287 = _1281 * (_1267 - _178);
        _1288 = _1282 * (_1267 - _179);
        _1292 = _1280 * (_1266 - _177);
        _1293 = _1281 * (_1266 - _178);
        _1294 = _1282 * (_1266 - _179);
        _1304 = min(min(max(_1286, _1292), max(_1287, _1293)), max(_1288, _1294));
        if ((_1304 > 0.0f) && ((_1304 >= 0.0f) && (max(max(min(_1286, _1292), min(_1287, _1293)), min(_1288, _1294)) <= _1304))) {
          _1318 = _1304;
          _1319 = ((_1304 * _214) + _177);
          _1320 = ((_1304 * _215) + _178);
          _1321 = ((_1304 * _216) + _179);
        } else {
          _1318 = 0.0f;
          _1319 = _177;
          _1320 = _178;
          _1321 = _179;
        }
      } else {
        _1318 = 0.0f;
        _1319 = _177;
        _1320 = _178;
        _1321 = _179;
      }
      _1325 = select(((_1178 > 0.0f) && (_1186 >= 1.0f)), _1178, 256.0f);
      _1327 = 0;
      while(true) {
        _1329 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1327 + 20))];
        _1357 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1327 + 36))];
        // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
        // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
        float3 _rndx_surfel_jitter_1367 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _1319) * _1329.w) + _1357.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _1320) * _1329.w) + _1357.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _1321) * _1329.w) + _1357.z), float2(_85, _86), _188, _frameNumber.x);
        _1367 = int(floor(_rndx_surfel_jitter_1367.x));
        _1368 = int(floor(_rndx_surfel_jitter_1367.y));
        _1369 = int(floor(_rndx_surfel_jitter_1367.z));
        // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
        if (!(((((int)_1367 >= (int)int(_1329.x + -63.0f)) && ((int)_1367 < (int)int(_1329.x + 63.0f))) && (((int)_1368 >= (int)int(_1329.y + -31.0f)) && ((int)_1368 < (int)int(_1329.y + 31.0f)))) && (((int)_1369 >= (int)int(_1329.z + -63.0f)) && ((int)_1369 < (int)int(_1329.z + 63.0f))))) {
          _1382 = _1327 + 1;
          if ((uint)_1382 < (uint)8) {
            _1327 = _1382;
            continue;
          } else {
            _1385 = -10000;
          }
        } else {
          _1385 = _1327;
        }
        if (!((_1385 == -10000) || ((int)_1385 > (int)4))) {
          _1395 = _1319 + (_1264 * _214);
          _1396 = _1320 + (_1264 * _215);
          _1397 = _1321 + (_1264 * _216);
          _1401 = (_214 == 0.0f);
          _1402 = (_215 == 0.0f);
          _1403 = (_216 == 0.0f);
          _1404 = select(_1401, 0.0f, (1.0f / _214));
          _1405 = select(_1402, 0.0f, (1.0f / _215));
          _1406 = select(_1403, 0.0f, (1.0f / _216));
          _1407 = (_214 > 0.0f);
          _1408 = (_215 > 0.0f);
          _1409 = (_216 > 0.0f);
          if (_1325 > 0.0f) {
            _1422 = 0;
            _1423 = 0.0f;
            _1424 = 0.0f;
            _1425 = _1397;
            _1426 = _1396;
            _1427 = _1395;
            while(true) {
              _1429 = 0;
              while(true) {
                _1431 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1429 + 20))];
                _1450 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1429 + 36))];
                _1454 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _1427) * _1431.w) + _1450.x;
                _1455 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _1426) * _1431.w) + _1450.y;
                _1456 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _1425) * _1431.w) + _1450.z;
                if (!((_1456 >= (_1431.z + -63.0f)) && ((_1454 >= (_1431.x + -63.0f)) && (_1455 >= (_1431.y + -31.0f)))) || (((_1456 >= (_1431.z + -63.0f)) && ((_1454 >= (_1431.x + -63.0f)) && (_1455 >= (_1431.y + -31.0f)))) && (!((_1456 < (_1431.z + 63.0f)) && ((_1454 < (_1431.x + 63.0f)) && (_1455 < (_1431.y + 31.0f))))))) {
                  _1472 = _1429 + 1;
                  if ((int)_1472 < (int)8) {
                    _1429 = _1472;
                    continue;
                  } else {
                    _1672 = _1424;
                    _1673 = _1425;
                    _1674 = _1426;
                    _1675 = _1427;
                    _1676 = _1423;
                    _1677 = -10000.0f;
                  }
                } else {
                  if (_1429 == -10000) {
                    _1666 = _1424;
                    _1667 = _1425;
                    _1668 = _1426;
                    _1669 = _1427;
                    _1670 = _1423;
                    _1672 = _1666;
                    _1673 = _1667;
                    _1674 = _1668;
                    _1675 = _1669;
                    _1676 = _1670;
                    _1677 = -10000.0f;
                  } else {
                    _1479 = float((int)((int)(1 << (_1429 & 31))));
                    _1480 = _1479 * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                    _1481 = 1.0f / _1479;
                    _1482 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.y * 0.0078125f;
                    _1491 = _1481 * ((_1427 * _1482) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x);
                    _1492 = _1481 * (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.y * 0.015625f) * _1426) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y);
                    _1493 = _1481 * ((_1425 * _1482) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z);
                    _1494 = _1491 * 64.0f;
                    _1495 = _1492 * 32.0f;
                    _1496 = _1493 * 64.0f;
                    _1500 = int(floor(_1494));
                    _1501 = int(floor(_1495));
                    _1502 = int(floor(_1496));
  // [sem: _3__36__0__0__g_axisAlignedDistance_load]
                    _1509 = __3__36__0__0__g_axisAlignedDistanceTextures.Load(int4((_1500 & 63), (_1501 & 31), ((_1502 & 63) | (_1429 << 6)), 0));
                    _1526 = saturate(((float)((uint)((uint)((uint)((uint)(_1509.w)) >> 2)))) * 0.01587301678955555f);  // [sem: expr_sat]
                    _1549 = _1494 - float((int)(_1500));
                    _1550 = _1495 - float((int)(_1501));
                    _1551 = _1496 - float((int)(_1502));
                    _1582 = max(((_1480 * 0.5f) * min(min(select(_1401, 999999.0f, ((select(_1407, 1.0f, 0.0f) - frac(_1491 * 256.0f)) * _1404)), select(_1402, 999999.0f, ((select(_1408, 1.0f, 0.0f) - frac(_1492 * 128.0f)) * _1405))), select(_1403, 999999.0f, ((select(_1409, 1.0f, 0.0f) - frac(_1493 * 256.0f)) * _1406)))), ((_1480 * 2.0f) * min(min(select(_1401, 999999.0f, (select(_1407, ((0.009999999776482582f - _1549) + ((float)((uint)((uint)(((uint)((uint)(_1509.x)) >> 4) & 15))))), ((0.9900000095367432f - _1549) - ((float)((uint)((uint)(_1509.x & 15)))))) * _1404)), select(_1402, 999999.0f, (select(_1408, ((0.009999999776482582f - _1550) + ((float)((uint)((uint)(((uint)((uint)(_1509.y)) >> 4) & 15))))), ((0.9900000095367432f - _1550) - ((float)((uint)((uint)(_1509.y & 15)))))) * _1405))), select(_1403, 999999.0f, (select(_1409, ((0.009999999776482582f - _1551) + ((float)((uint)((uint)(((uint)((uint)(_1509.z)) >> 4) & 15))))), ((0.9900000095367432f - _1551) - ((float)((uint)((uint)(_1509.z & 15)))))) * _1406)))));
                    _1584 = (float)((bool)(uint)(_1526 > 0.0f));
                    if (((uint)_1422 < (uint)16) || (_1424 < min(32.0f, (_1480 * 32.0f)))) {
                      _1591 = frac(_1493);
  // [sem: _3__36__0__1__g_signedDistanceVoxels_sampleLod]
                      _1603 = __3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3(_1491, _1492, (((((float)((uint)(_1429 * 130))) + 1.0f) + ((select((_1591 < 0.0f), 1.0f, 0.0f) + _1591) * 128.0f)) * 0.000961538462433964f)), 0.0f);
                      _1609 = _1424 * 0.009999999776482582f;
                      _1610 = 1.0f / _1480;
                      _1626 = (_1603.x + ((_182 * _182) * 0.00019999999494757503f)) / (((max(((_1480 * 1.0606600046157837f) * saturate((_1424 * 0.5f) + 0.5f)), _1609) - _1609) * saturate(((max(1.0f, (_1610 * 0.5f)) * _1610) * min(_1424, max(0.0f, (_1325 - _1424)))) + -1.0f)) + _1609);
                      _1632 = saturate((saturate(1.0f - (_1626 * _1626)) * _1584) + _1423);  // [sem: expr_sat]
                      if (!(((int)_1429 > (int)2) || (_1603.x > _1480))) {
                        _1646 = _1632;  // [sem: expr_sat]
                        _1647 = min(_1582, _1603.x);
                      } else {
                        _1646 = _1632;  // [sem: expr_sat]
                        _1647 = _1582;
                      }
                    } else {
                      if (!((_1509.w & 1) == 0)) {
                        _1646 = saturate((_1584 * 0.5f) + _1423);  // [sem: expr_sat]
                        _1647 = _1582;
                      } else {
                        _1646 = _1423;  // [sem: expr_sat]
                        _1647 = _1582;
                      }
                    }
                    if (!(_1646 >= 0.5f)) {
                      _1652 = max(_1647, (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 0.05000000074505806f));
                      _1653 = _1652 + _1424;
                      _1657 = (_1652 * _214) + _1427;
                      _1658 = (_1652 * _215) + _1426;
                      _1659 = (_1652 * _216) + _1425;
                      _1660 = _1422 + 1;
                      if (((uint)_1660 < (uint)192) && (_1653 < _1325)) {
                        _1422 = _1660;
                        _1423 = _1646;
                        _1424 = _1653;
                        _1425 = _1659;
                        _1426 = _1658;
                        _1427 = _1657;
                        __loop_jump_target = 1421;
                        break;
                      } else {
                        _1666 = _1653;
                        _1667 = _1659;
                        _1668 = _1658;
                        _1669 = _1657;
                        _1670 = _1646;
                        _1672 = _1666;
                        _1673 = _1667;
                        _1674 = _1668;
                        _1675 = _1669;
                        _1676 = _1670;
                        _1677 = -10000.0f;
                      }
                    } else {
                      _1672 = _1424;
                      _1673 = _1425;
                      _1674 = _1426;
                      _1675 = _1427;
                      _1676 = _1526;
                      _1677 = float((int)(_1429));
                    }
                  }
                }
                break;
              }
              if (__loop_jump_target == 1421) {
                __loop_jump_target = -1;
                continue;
              }
              if (__loop_jump_target != -1) {
                break;
              }
              break;
            }
          } else {
            _1672 = 0.0f;
            _1673 = _1397;
            _1674 = _1396;
            _1675 = _1395;
            _1676 = 0.0f;
            _1677 = -10000.0f;
          }
          _1678 = int(_1677);
          if ((uint)_1678 < (uint)8) {
            _1681 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 0.5f;
            _1685 = _1675 - (_1681 * _214);
            _1686 = _1674 - (_1681 * _215);
            _1687 = _1673 - (_1681 * _216);
            if ((int)_1678 < (int)6) {
              _1694 = 0;
              while(true) {
                _1696 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1694 + 20))];
                _1724 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1694 + 36))];
                // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
                // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
                float3 _rndx_surfel_jitter_1734 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _1685) * _1696.w) + _1724.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _1686) * _1696.w) + _1724.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _1687) * _1696.w) + _1724.z), float2(_85, _86), _188, _frameNumber.x);
                _1734 = int(floor(_rndx_surfel_jitter_1734.x));
                _1735 = int(floor(_rndx_surfel_jitter_1734.y));
                _1736 = int(floor(_rndx_surfel_jitter_1734.z));
                // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
                if (((((int)_1734 >= (int)int(_1696.x + -63.0f)) && ((int)_1734 < (int)int(_1696.x + 63.0f))) && (((int)_1735 >= (int)int(_1696.y + -31.0f)) && ((int)_1735 < (int)int(_1696.y + 31.0f)))) && (((int)_1736 >= (int)int(_1696.z + -63.0f)) && ((int)_1736 < (int)int(_1696.z + 63.0f)))) {
                  _1757 = (_1734 & 127);
                  _1758 = (_1735 & 63);
                  _1759 = (_1736 & 127);
                  _1760 = _1694;
                } else {
                  _1749 = _1694 + 1;
                  if ((uint)_1749 < (uint)8) {
                    _1694 = _1749;
                    continue;
                  } else {
                    _1757 = -10000;
                    _1758 = -10000;
                    _1759 = -10000;
                    _1760 = -10000;
                  }
                }
                if (!((uint)_1760 > (uint)5)) {
                  _1773 = (((((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1757, _1758, ((int)(((uint)(((int)(_1760 * 130)) | 1)) + _1759)), 0)))).x) & 4194303) == 0);
                  [branch]
                  if (!_1773) {
                    _1776 = _1757;
                    _1777 = _1758;
                    _1778 = _1759;
                    _1779 = _1760;
                  } else {
                    _1776 = -10000;
                    _1777 = -10000;
                    _1778 = -10000;
                    _1779 = -10000;
                  }
                  _1780 = _1681 * float((int)((int)(1 << (_1760 & 31))));
                  _1785 = 0;
                  while(true) {
                    _1787 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1785 + 20))];
                    _1815 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1785 + 36))];
                    // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
                    // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
                    float3 _rndx_surfel_jitter_1825 = RenoDXSurfelVoxelJitter(float3((((_1685 - _1780) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x) * _1787.w) + _1815.x, (((_1686 - _1780) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y) * _1787.w) + _1815.y, (((_1687 - _1780) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z) * _1787.w) + _1815.z), float2(_85, _86), _188, _frameNumber.x);
                    _1825 = int(floor(_rndx_surfel_jitter_1825.x));
                    _1826 = int(floor(_rndx_surfel_jitter_1825.y));
                    _1827 = int(floor(_rndx_surfel_jitter_1825.z));
                    // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
                    if (((((int)_1825 >= (int)int(_1787.x + -63.0f)) && ((int)_1825 < (int)int(_1787.x + 63.0f))) && (((int)_1826 >= (int)int(_1787.y + -31.0f)) && ((int)_1826 < (int)int(_1787.y + 31.0f)))) && (((int)_1827 >= (int)int(_1787.z + -63.0f)) && ((int)_1827 < (int)int(_1787.z + 63.0f)))) {
                      _1848 = (_1825 & 127);
                      _1849 = (_1826 & 63);
                      _1850 = (_1827 & 127);
                      _1851 = _1785;
                    } else {
                      _1840 = _1785 + 1;
                      if ((uint)_1840 < (uint)8) {
                        _1785 = _1840;
                        continue;
                      } else {
                        _1848 = -10000;
                        _1849 = -10000;
                        _1850 = -10000;
                        _1851 = -10000;
                      }
                    }
                    if (!((uint)_1851 > (uint)5)) {
                      if (_1773) {
                        _1856 = 0;
                        _1857 = _1779;
                        _1858 = _1778;
                        _1859 = _1777;
                        _1860 = _1776;
                        while(true) {
                          _1869 = 0;
                          _1870 = _1857;
                          _1871 = _1858;
                          _1872 = _1859;
                          _1873 = _1860;
                          while(true) {
                            _1876 = _1856 + _1850;
                            _1877 = _1876 + ((uint)(((int)(_1851 * 130)) | 1));
                            _1884 = _1869 + _1849;
                            if (!(((uint)_1884 > (uint)63) || ((uint)(_1848 | _1876) > (uint)127))) {
                              _1893 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1848, _1884, _1877, 0)))).x) & 4194303;
                              _1896 = (_1893 != 0);
                              _1897 = _1893;
                              _1898 = _1851;
                              _1899 = _1876;
                              _1900 = _1884;
                              _1901 = _1848;
                            } else {
                              _1896 = false;
                              _1897 = 0;
                              _1898 = 0;
                              _1899 = 0;
                              _1900 = 0;
                              _1901 = 0;
                            }
                            if (!_1896) {
                              _1903 = _1848 + 1;
                              _1904 = _1869 + _1849;
                              if (!(((uint)_1904 > (uint)63) || ((uint)(_1903 | _1876) > (uint)127))) {
                                _4387 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1903, _1904, _1877, 0)))).x) & 4194303;
                                _4390 = (_4387 != 0);
                                _4391 = _4387;
                                _4392 = _1851;
                                _4393 = _1876;
                                _4394 = _1904;
                                _4395 = _1903;
                              } else {
                                _4390 = false;
                                _4391 = 0;
                                _4392 = 0;
                                _4393 = 0;
                                _4394 = 0;
                                _4395 = 0;
                              }
                              if (!_4390) {
                                _1910 = _1873;
                                _1911 = _1872;
                                _1912 = _1871;
                                _1913 = _1870;
                                _1914 = 0;
                              } else {
                                _1910 = _4395;
                                _1911 = _4394;
                                _1912 = _4393;
                                _1913 = _4392;
                                _1914 = _4391;
                              }
                            } else {
                              _1910 = _1901;
                              _1911 = _1900;
                              _1912 = _1899;
                              _1913 = _1898;
                              _1914 = _1897;
                            }
                            while(true) {
                              _1915 = _1869 + 1;
                              if (((int)_1915 < (int)2) && (_1914 == 0)) {
                                _1869 = _1915;
                                _1870 = _1913;
                                _1871 = _1912;
                                _1872 = _1911;
                                _1873 = _1910;
                                __loop_jump_target = 1868;
                                break;
                              }
                              while(true) {
                                _1879 = _1856 + 1;
                                if (((int)_1879 < (int)2) && (_1914 == 0)) {
                                  _1856 = _1879;
                                  _1857 = _1913;
                                  _1858 = _1912;
                                  _1859 = _1911;
                                  _1860 = _1910;
                                  __loop_jump_target = 1855;
                                  break;
                                }
                                while(true) {
                                  _1863 = _1913;
                                  _1864 = _1912;
                                  _1865 = _1911;
                                  _1866 = _1910;
                                  break;
                                }
                                break;
                              }
                              if (__loop_jump_target != -1) {
                                break;
                              }
                              break;
                            }
                            if (__loop_jump_target == 1868) {
                              __loop_jump_target = -1;
                              continue;
                            }
                            if (__loop_jump_target != -1) {
                              break;
                            }
                            break;
                          }
                          if (__loop_jump_target == 1855) {
                            __loop_jump_target = -1;
                            continue;
                          }
                          if (__loop_jump_target != -1) {
                            break;
                          }
                          break;
                        }
                      } else {
                        _1863 = _1779;
                        _1864 = _1778;
                        _1865 = _1777;
                        _1866 = _1776;
                      }
                      if ((uint)_1863 < (uint)6) {
                        _1920 = _1863 * 130;
                        _1926 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1866, _1865, ((int)(((uint)(_1920 | 1)) + _1864)), 0)))).x) & 4194303;
                        [branch]
                        if (!(_1926 == 0)) {
                          _1930 = 1 << (_1863 & 31);
                          _1932 = float((int)(_1930)) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                          _1934 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((uint)(_1863 + 20u))];
                          _1969 = -0.0f - _214;
                          _1970 = -0.0f - _215;
                          _1971 = -0.0f - _216;
                          _1973 = 0.0f;
                          _1974 = 0.0f;
                          _1975 = 0.0f;
                          _1976 = 0.0f;
                          _1977 = 0;
                          while(true) {
                            _1979 = (_1926 + -1) + _1977;
                            _1982 = __3__37__0__0__g_surfelDataBuffer[_1979]._baseColor;
                            _1984 = __3__37__0__0__g_surfelDataBuffer[_1979]._normal;
                            _1987 = __3__37__0__0__g_surfelDataBuffer[_1979]._radius;
                            if (!(_1982 == 0)) {
                              _1990 = __3__37__0__0__g_surfelDataBuffer[_1979]._radiance.z;
                              _1991 = __3__37__0__0__g_surfelDataBuffer[_1979]._radiance.y;
                              _1992 = __3__37__0__0__g_surfelDataBuffer[_1979]._radiance.x;
                              _1998 = (float)((uint)((uint)(_1982 & 255)));
                              _1999 = (float)((uint)((uint)(((uint)(_1982) >> 8) & 255)));
                              _2000 = (float)((uint)((uint)(((uint)(_1982) >> 16) & 255)));
                              _2025 = select(((_1998 * 0.003921568859368563f) < 0.040449999272823334f), (_1998 * 0.0003035269910469651f), exp2(log2((_1998 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
                              _2026 = select(((_1999 * 0.003921568859368563f) < 0.040449999272823334f), (_1999 * 0.0003035269910469651f), exp2(log2((_1999 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
                              _2027 = select(((_2000 * 0.003921568859368563f) < 0.040449999272823334f), (_2000 * 0.0003035269910469651f), exp2(log2((_2000 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
                              _2039 = (((float)((uint)((uint)(_1984 & 255)))) * 0.007874015718698502f) + -1.0f;
                              _2040 = (((float)((uint)((uint)(((uint)(_1984) >> 8) & 255)))) * 0.007874015718698502f) + -1.0f;
                              _2041 = (((float)((uint)((uint)(((uint)(_1984) >> 16) & 255)))) * 0.007874015718698502f) + -1.0f;
                              _2043 = rsqrt(dot(float3(_2039, _2040, _2041), float3(_2039, _2040, _2041)));  // [sem: invLength]
                              _2048 = ((_1984 & 16777215) == 0);
                              _2052 = float(_1992);
                              _2053 = float(_1991);
                              _2054 = float(_1990);
                              _2058 = (_1932 * 0.0019607844296842813f) * ((float)((uint16_t)((uint)(_1987 & 255))));
                              _2074 = (((((float)((uint)((uint)((uint)(_1982) >> 24)))) * 0.003937007859349251f) + -0.5f) * _1932) + ((((_1934.x + -63.5f) + float((int)(((int)((_1866 + 64u) - (uint)(int(_1934.x)))) & 127))) * _1932) - _viewPos.x);
                              _2075 = (((((float)((uint)((uint)((uint)(_1984) >> 24)))) * 0.003937007859349251f) + -0.5f) * _1932) + ((((_1934.y + -31.5f) + float((int)(((int)((_1865 + 32u) - (uint)(int(_1934.y)))) & 63))) * _1932) - _viewPos.y);
                              _2076 = (((((float)((uint16_t)((uint)((uint16_t)(_1987) >> 8)))) * 0.003937007859349251f) + -0.5f) * _1932) + ((((_1934.z + -63.5f) + float((int)(((int)((_1864 + 64u) - (uint)(int(_1934.z)))) & 127))) * _1932) - _viewPos.z);
                              _2096 = ((-0.0f - _1319) - (_1672 * _214)) + _2074;
                              _2099 = ((-0.0f - _1320) - (_1672 * _215)) + _2075;
                              _2102 = ((-0.0f - _1321) - (_1672 * _216)) + _2076;
                              _2103 = dot(float3(_2096, _2099, _2102), float3(_1969, _1970, _1971));
                              _2107 = _2096 - (_2103 * _1969);
                              _2108 = _2099 - (_2103 * _1970);
                              _2109 = _2102 - (_2103 * _1971);
                              _2135 = 1.0f / ((float)((uint)_1930));
                              _2139 = frac(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _2076) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z) * _2135);
                              _2164 = select(((int)_1863 > (int)5), 1.0f, ((saturate((saturate(dot(float3(_1969, _1970, _1971), float3(select(_2048, _1969, (_2043 * _2039)), select(_2048, _1970, (_2043 * _2040)), select(_2048, _1971, (_2043 * _2041))))) + -0.03125f) * 1.0322580337524414f) * ((float)((bool)(uint)(dot(float3(_2107, _2108, _2109), float3(_2107, _2108, _2109)) < ((_2058 * _2058) * 16.0f))))) * ((float)((bool)(uint)(((__3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _2074) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _2135), (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _2075) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y) * _2135), (((((float)((uint)_1920)) + 1.0f) + ((select((_2139 < 0.0f), 1.0f, 0.0f) + _2139) * 128.0f)) * 0.000961538462433964f)), 0.0f)).x) > ((_1932 * 0.25f) * (saturate((dot(float3(_2052, _2053, _2054), float3(0.21267099678516388f, 0.7151600122451782f, 0.0721689984202385f)) * 9.999999747378752e-05f) / _exposure3.w) + 1.0f)))))));
                              _2171 = (((((_2026 * 0.3395099937915802f) + (_2025 * 0.6131200194358826f)) + (_2027 * 0.047370001673698425f)) * _2052) * _2164) + _1973;
                              _2172 = (((((_2026 * 0.9163600206375122f) + (_2025 * 0.07020000368356705f)) + (_2027 * 0.013450000435113907f)) * _2053) * _2164) + _1974;
                              _2173 = (((((_2026 * 0.10958000272512436f) + (_2025 * 0.02061999961733818f)) + (_2027 * 0.8697999715805054f)) * _2054) * _2164) + _1975;
                              _2174 = _2164 + _1976;
                              _2175 = _1977 + 1;
                              if ((uint)_2175 < (uint)4) {
                                _1973 = _2171;
                                _1974 = _2172;
                                _1975 = _2173;
                                _1976 = _2174;
                                _1977 = _2175;
                                continue;
                              } else {
                                _2178 = _2171;
                                _2179 = _2172;
                                _2180 = _2173;
                                _2181 = _2174;
                              }
                            } else {
                              _2178 = _1973;
                              _2179 = _1974;
                              _2180 = _1975;
                              _2181 = _1976;
                            }
                            if (_2181 > 0.0f) {
                              _2184 = 1.0f / _2181;
                              _2198 = 1.0f;
                              _2199 = (-0.0f - min(0.0f, (-0.0f - (_2178 * _2184))));
                              _2200 = (-0.0f - min(0.0f, (-0.0f - (_2179 * _2184))));
                              _2201 = (-0.0f - min(0.0f, (-0.0f - (_2180 * _2184))));
                            } else {
                              _2198 = 0.0f;
                              _2199 = _2178;
                              _2200 = _2179;
                              _2201 = _2180;
                            }
                            break;
                          }
                        } else {
                          _2198 = 0.0f;
                          _2199 = 0.0f;
                          _2200 = 0.0f;
                          _2201 = 0.0f;
                        }
                      } else {
                        _2198 = 0.0f;
                        _2199 = 0.0f;
                        _2200 = 0.0f;
                        _2201 = 0.0f;
                      }
                    } else {
                      _2198 = 1.0f;
                      _2199 = 0.0f;
                      _2200 = 0.0f;
                      _2201 = 0.0f;
                    }
                    break;
                  }
                } else {
                  _2198 = 1.0f;
                  _2199 = 0.0f;
                  _2200 = 0.0f;
                  _2201 = 0.0f;
                }
                break;
              }
            } else {
              _2198 = 1.0f;
              _2199 = 0.0f;
              _2200 = 0.0f;
              _2201 = 0.0f;
            }
            _2209 = saturate((_1672 * 0.25f) / (float((int)((int)(1 << (_1385 & 31)))) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x)) * _2198;
            _2219 = -0.0f - min(0.0f, (-0.0f - (_2199 * _2209)));
            _2220 = -0.0f - min(0.0f, (-0.0f - (_2200 * _2209)));
            _2221 = -0.0f - min(0.0f, (-0.0f - (_2201 * _2209)));
            _2223 = select(((int)_1678 > (int)-1), 1.0f, 0.0f);
            _2224 = max(9.999999974752427e-07f, _1672);
            if (_2224 > 0.0f) {
              _2229 = (_2224 + _1318);
              _2230 = _2219;
              _2231 = _2220;
              _2232 = _2221;
              _2233 = _2223;
            } else {
              _2229 = _2224;
              _2230 = _2219;
              _2231 = _2220;
              _2232 = _2221;
              _2233 = _2223;
            }
          } else {
            _2229 = 0.0f;
            _2230 = 0.0f;
            _2231 = 0.0f;
            _2232 = 0.0f;
            _2233 = _1676;
          }
        } else {
          _2229 = 0.0f;
          _2230 = 0.0f;
          _2231 = 0.0f;
          _2232 = 0.0f;
          _2233 = 0.0f;
        }
        break;
      }
    } else {
      _2229 = _987;
      _2230 = _983;
      _2231 = _984;
      _2232 = _985;
      _2233 = _986;
    }
    _2236 = saturate(5.000000476837158f - (_182 * 0.01953125186264515f));  // [sem: expr_sat]
    _2237 = (_1187 != 0);
    if ((_1186 > 0.0f) && ((_1178 > 0.0f) && _2237)) {
      if (!(_1178 < _2229)) {
        _2247 = (_2229 <= 0.0f);
      } else {
        _2247 = true;
      }
    } else {
      _2247 = false;
    }
    _2251 = saturate(max(select(_2247, 1.0f, 0.0f), (1.0f - _2236)));  // [sem: expr_sat]
    _2252 = _2251 * _1186;
    _2255 = min(_2236, saturate(1.0f - _2252));
    if (!(_2233 == 0.0f)) {
      _2270 = ((_2255 * _2230) + (_2251 * _1183));
      _2271 = ((_2255 * _2231) + (_2251 * _1184));
      _2272 = ((_2255 * _2232) + (_2251 * _1185));
      _2273 = ((_2255 * _2233) + _2252);
    } else {
      _2270 = _1183;
      _2271 = _1184;
      _2272 = _1185;
      _2273 = _1186;
    }
    _2276 = 1.0f / max(9.999999974752427e-07f, (_2255 + _2251));
    _2280 = _2276 * ((_2255 * _2229) + (_2251 * _1178));
    _2282 = _2276 * _2251;
    _2286 = (_2280 * _214) + _177;
    _2287 = (_2280 * _215) + _178;
    _2288 = (_2280 * _216) + _179;
    [branch]
    if (!(_2280 <= 0.0f)) {
      _2318 = mad((_viewProjRelative[2].w), _2288, mad((_viewProjRelative[1].w), _2287, ((_viewProjRelative[0].w) * _2286))) + (_viewProjRelative[3].w);
      _2323 = (((mad((_viewProjRelative[2].x), _2288, mad((_viewProjRelative[1].x), _2287, ((_viewProjRelative[0].x) * _2286))) + (_viewProjRelative[3].x)) / _2318) * 0.5f) + 0.5f;
      _2324 = 0.5f - (((mad((_viewProjRelative[2].y), _2288, mad((_viewProjRelative[1].y), _2287, ((_viewProjRelative[0].y) * _2286))) + (_viewProjRelative[3].y)) / _2318) * 0.5f);
      if (((_2323 >= 0.0f) && (_2323 <= 1.0f)) && ((_2324 >= 0.0f) && (_2324 <= 1.0f))) {
        if (_2237 && (((mad((_viewProjRelative[2].z), _2288, mad((_viewProjRelative[1].z), _2287, ((_viewProjRelative[0].z) * _2286))) + (_viewProjRelative[3].z)) / _2318) > 0.0f)) {
          if (_renderParams.x == 0.0f) {
  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod]
            half4 _2351 = __3__36__0__0__g_sceneShadowColor.SampleLevel(__3__40__0__0__g_sampler, float2(_2323, _2324), 0.0f);
            _2359 = float(_2351.x);  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2360 = float(_2351.y);  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2361 = float(_2351.z);  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          } else {
            _2359 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2360 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2361 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          }
        } else {
          _2359 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          _2360 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          _2361 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
        }
      } else {
        _2359 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
        _2360 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
        _2361 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
      }
      _2368 = _viewPos.x + _2286;
      _2369 = _viewPos.y + _2287;
      _2370 = _viewPos.z + _2288;
      _2375 = _2368 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].x);
      _2376 = _2369 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].y);
      _2377 = _2370 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].z);
      _2397 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].x), _2377, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].x), _2376, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].x) * _2375))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][3].x);
      _2401 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].y), _2377, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].y), _2376, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].y) * _2375))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][3].y);
      _2408 = 2.0f / __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y;
      _2409 = 1.0f - _2408;
      _2416 = (((!(_2397 <= _2409)) || (!(_2397 >= _2408))) || (!(_2401 <= _2409))) || (!(_2401 >= _2408));
      _2425 = _2368 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].x);
      _2426 = _2369 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].y);
      _2427 = _2370 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].z);
      _2447 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].x), _2427, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].x), _2426, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].x) * _2425))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][3].x);
      _2451 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].y), _2427, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].y), _2426, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].y) * _2425))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][3].y);
      _2462 = (((!(_2447 <= _2409)) || (!(_2447 >= _2408))) || (!(_2451 <= _2409))) || (!(_2451 >= _2408));
      _2463 = select(_2462, select(_2416, 0.0f, _2397), _2447);
      _2464 = select(_2462, select(_2416, 0.0f, _2401), _2451);
      _2465 = select(_2462, select(_2416, 0.0f, (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].z), _2377, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].z), _2376, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].z) * _2375))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][3].z))), (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].z), _2427, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].z), _2426, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].z) * _2425))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][3].z)));
      _2466 = select(_2462, select(_2416, -1, 1), 0);
      [branch]
      if (!(_2466 == -1)) {
        _2472 = (_2463 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x) + -0.5f;
        _2473 = (_2464 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y) + -0.5f;
        _2476 = int(floor(_2472));
        _2477 = int(floor(_2473));
        _2480 = _2476 + 1u;
        _2481 = _2477 + 1u;
        if (!(((uint)_2476 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x))) || ((uint)_2477 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y))))) {
  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod]
          half4 _2498 = __3__36__0__0__g_shadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_2463, _2464, ((float)((uint)_2466))), 0.0f);
          _2504 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2476, _2477, _2466, 0)))).x);
          _2505 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2480, _2477, _2466, 0)))).x);
          _2506 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2476, _2481, _2466, 0)))).x);
          _2507 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2480, _2481, _2466, 0)))).x);
          _2508 = (half)(_2498.x);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2509 = (half)(_2498.y);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2510 = (half)(_2498.z);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2511 = (half)(_2498.w);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
        } else {
          _2504 = 0.0f;
          _2505 = 0.0f;
          _2506 = 0.0f;
          _2507 = 0.0f;
          _2508 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2509 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2510 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2511 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
        }
        _2512 = _2466 << 2;
        _2514 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_2512 + 103))];
        _2520 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_2512 + 104))];
        _2526 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_2512 + 105))];
        _2532 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_2512 + 106))];
        _2537 = _2514.x * _2463;
        _2541 = _2514.y * _2463;
        _2545 = _2514.z * _2463;
        _2549 = _2514.w * _2463;
        _2552 = mad(_2526.w, _2504, mad(_2520.w, _2464, _2549)) + _2532.w;
        _2553 = (mad(_2526.x, _2504, mad(_2520.x, _2464, _2537)) + _2532.x) / _2552;
        _2554 = (mad(_2526.y, _2504, mad(_2520.y, _2464, _2541)) + _2532.y) / _2552;
        _2555 = (mad(_2526.z, _2504, mad(_2520.z, _2464, _2545)) + _2532.z) / _2552;
        _2558 = _2463 + (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.z * 4.0f);
        _2574 = mad(_2526.w, _2505, mad(_2520.w, _2464, (_2514.w * _2558))) + _2532.w;
        _2580 = _2464 - (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.w * 2.0f);
        _2592 = mad(_2526.w, _2506, mad(_2520.w, _2580, _2549)) + _2532.w;
        _2596 = ((mad(_2526.x, _2506, mad(_2520.x, _2580, _2537)) + _2532.x) / _2592) - _2553;
        _2597 = ((mad(_2526.y, _2506, mad(_2520.y, _2580, _2541)) + _2532.y) / _2592) - _2554;
        _2598 = ((mad(_2526.z, _2506, mad(_2520.z, _2580, _2545)) + _2532.z) / _2592) - _2555;
        _2599 = ((mad(_2526.x, _2505, mad(_2520.x, _2464, (_2514.x * _2558))) + _2532.x) / _2574) - _2553;
        _2600 = ((mad(_2526.y, _2505, mad(_2520.y, _2464, (_2514.y * _2558))) + _2532.y) / _2574) - _2554;
        _2601 = ((mad(_2526.z, _2505, mad(_2520.z, _2464, (_2514.z * _2558))) + _2532.z) / _2574) - _2555;
        _2604 = (_2598 * _2600) - (_2597 * _2601);
        _2607 = (_2596 * _2601) - (_2598 * _2599);
        _2610 = (_2597 * _2599) - (_2596 * _2600);
        _2612 = rsqrt(dot(float3(_2604, _2607, _2610), float3(_2604, _2607, _2610)));  // [sem: invLength]
        _2613 = _2604 * _2612;
        _2614 = _2607 * _2612;
        _2615 = _2610 * _2612;
        _2616 = frac(_2472);
        _2621 = (saturate(dot(float3(_214, _215, _216), float3(_2613, _2614, _2615))) * 0.0020000000949949026f) + _2465;
        _2634 = saturate(exp2((_2504 - _2621) * 1442695.0f));  // [sem: expr_sat]
        _2636 = saturate(exp2((_2506 - _2621) * 1442695.0f));  // [sem: expr_sat]
        _2642 = ((saturate(exp2((_2505 - _2621) * 1442695.0f)) - _2634) * _2616) + _2634;
        _2649 = _2613;
        _2650 = _2614;
        _2651 = _2615;
  // [sem: expr_sat]
        _2652 = saturate((((_2636 - _2642) + ((saturate(exp2((_2507 - _2621) * 1442695.0f)) - _2636) * _2616)) * frac(_2473)) + _2642);
        _2653 = _2504;
        _2654 = _2505;
        _2655 = _2506;
        _2656 = _2507;
        _2657 = _2508;
        _2658 = _2509;
        _2659 = _2510;
        _2660 = _2511;
      } else {
        _2649 = 0.0f;
        _2650 = 0.0f;
        _2651 = 0.0f;
        _2652 = 0.0f;  // [sem: expr_sat]
        _2653 = 0.0f;
        _2654 = 0.0f;
        _2655 = 0.0f;
        _2656 = 0.0f;
        _2657 = 0.0h;
        _2658 = 0.0h;
        _2659 = 0.0h;
        _2660 = 0.0h;
      }
      _2680 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].x), _2288, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].x), _2287, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].x) * _2286))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][3].x);
      _2684 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].y), _2288, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].y), _2287, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].y) * _2286))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][3].y);
      _2688 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].z), _2288, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].z), _2287, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].z) * _2286))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][3].z);
      _2691 = 4.0f / __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y;
      _2692 = 1.0f - _2691;
      if (!(((!(_2680 <= _2692)) || (!(_2680 >= _2691))) || (!(_2684 <= _2692)))) {
        _2703 = (_2688 >= -1.0f) && ((_2688 <= 1.0f) && (_2684 >= _2691));
        _2711 = select(_2703, 9.999999747378752e-06f, -9.999999747378752e-05f);
        _2712 = select(_2703, _2680, _2463);
        _2713 = select(_2703, _2684, _2464);
        _2714 = select(_2703, _2688, _2465);
        _2715 = select(_2703, 1, _2466);
        _2716 = ((int)(uint)(_2703));
      } else {
        _2711 = -9.999999747378752e-05f;
        _2712 = _2463;
        _2713 = _2464;
        _2714 = _2465;
        _2715 = _2466;
        _2716 = 0;
      }
      _2736 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].x), _2288, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].x), _2287, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].x) * _2286))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][3].x);
      _2740 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].y), _2288, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].y), _2287, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].y) * _2286))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][3].y);
      _2744 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].z), _2288, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].z), _2287, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].z) * _2286))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][3].z);
      if (!(((!(_2736 <= _2692)) || (!(_2736 >= _2691))) || (!(_2740 <= _2692)))) {
        _2755 = (_2744 >= -1.0f) && ((_2740 >= _2691) && (_2744 <= 1.0f));
        _2763 = select(_2755, 9.999999747378752e-06f, _2711);
        _2764 = select(_2755, _2736, _2712);
        _2765 = select(_2755, _2740, _2713);
        _2766 = select(_2755, _2744, _2714);
        _2767 = select(_2755, 0, _2715);
        _2768 = select(_2755, 1, _2716);
      } else {
        _2763 = _2711;
        _2764 = _2712;
        _2765 = _2713;
        _2766 = _2714;
        _2767 = _2715;
        _2768 = _2716;
      }
      [branch]
      if (!(_2768 == 0)) {
        _2778 = int(floor((_2764 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f));
        _2779 = int(floor((_2765 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f));
        _2782 = _2778 + 1u;
        _2783 = _2779 + 1u;
        if (!(((uint)_2778 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x))) || ((uint)_2779 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y))))) {
          _2798 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2778, _2779, _2767, 0)))).x);
          _2799 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2782, _2779, _2767, 0)))).x);
          _2800 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2778, _2783, _2767, 0)))).x);
          _2801 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2782, _2783, _2767, 0)))).x);
        } else {
          _2798 = _2653;
          _2799 = _2654;
          _2800 = _2655;
          _2801 = _2656;
        }
        _2802 = _2767 << 2;
        _2804 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)(_2802 + 58u))];
        _2810 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)(_2802 + 59u))];
        _2816 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)(_2802 + 60u))];
        _2822 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)(_2802 + 61u))];
        _2827 = _2804.x * _2764;
        _2831 = _2804.y * _2764;
        _2835 = _2804.z * _2764;
        _2839 = _2804.w * _2764;
        _2842 = mad(_2816.w, _2798, mad(_2810.w, _2765, _2839)) + _2822.w;
        _2843 = (mad(_2816.x, _2798, mad(_2810.x, _2765, _2827)) + _2822.x) / _2842;
        _2844 = (mad(_2816.y, _2798, mad(_2810.y, _2765, _2831)) + _2822.y) / _2842;
        _2845 = (mad(_2816.z, _2798, mad(_2810.z, _2765, _2835)) + _2822.z) / _2842;
        _2848 = _2764 + (__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.z * 8.0f);
        _2864 = mad(_2816.w, _2799, mad(_2810.w, _2765, (_2804.w * _2848))) + _2822.w;
        _2870 = _2765 - (__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.w * 4.0f);
        _2882 = mad(_2816.w, _2800, mad(_2810.w, _2870, _2839)) + _2822.w;
        _2886 = ((mad(_2816.x, _2800, mad(_2810.x, _2870, _2827)) + _2822.x) / _2882) - _2843;
        _2887 = ((mad(_2816.y, _2800, mad(_2810.y, _2870, _2831)) + _2822.y) / _2882) - _2844;
        _2888 = ((mad(_2816.z, _2800, mad(_2810.z, _2870, _2835)) + _2822.z) / _2882) - _2845;
        _2889 = ((mad(_2816.x, _2799, mad(_2810.x, _2765, (_2804.x * _2848))) + _2822.x) / _2864) - _2843;
        _2890 = ((mad(_2816.y, _2799, mad(_2810.y, _2765, (_2804.y * _2848))) + _2822.y) / _2864) - _2844;
        _2891 = ((mad(_2816.z, _2799, mad(_2810.z, _2765, (_2804.z * _2848))) + _2822.z) / _2864) - _2845;
        _2894 = (_2888 * _2890) - (_2887 * _2891);
        _2897 = (_2886 * _2891) - (_2888 * _2889);
        _2900 = (_2887 * _2889) - (_2886 * _2890);
        _2902 = rsqrt(dot(float3(_2894, _2897, _2900), float3(_2894, _2897, _2900)));  // [sem: invLength]
        if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
          _2920 = _sunDirection.x;
          _2921 = _sunDirection.y;
          _2922 = _sunDirection.z;
        } else {
          _2920 = _moonDirection.x;
          _2921 = _moonDirection.y;
          _2922 = _moonDirection.z;
        }
        _2928 = (_2763 - (saturate(-0.0f - dot(float3(_2920, _2921, _2922), float3(_214, _215, _216))) * 9.999999747378752e-05f)) + _2766;
        _2941 = (_2894 * _2902);
        _2942 = (_2897 * _2902);
        _2943 = (_2900 * _2902);
        _2944 = min(((float)((bool)(uint)(_2798 > _2928))), min(min(((float)((bool)(uint)(_2799 > _2928))), ((float)((bool)(uint)(_2800 > _2928)))), ((float)((bool)(uint)(_2801 > _2928)))));
      } else {
        _2941 = _2649;
        _2942 = _2650;
        _2943 = _2651;
        _2944 = _2652;
      }
      _2949 = _viewPos.x - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.x;
      _2950 = _viewPos.y - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.y;
      _2951 = _viewPos.z - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.z;
      _2952 = _2949 + _2286;
      _2953 = _2950 + _2287;
      _2954 = _2951 + _2288;
      _2974 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].x), _2954, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].x), _2953, (_2952 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[3].x);
      _2978 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].y), _2954, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].y), _2953, (_2952 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].y)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[3].y);
      _2982 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].z), _2954, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].z), _2953, (_2952 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].z)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[3].z);
      if (saturate(_2974) == _2974) {
        if ((_2982 >= 9.999999747378752e-05f) && ((_2982 <= 1.0f) && (saturate(_2978) == _2978))) {
          _2997 = frac((_2974 * 1024.0f) + -0.5f);
          _3001 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_2974, _2978));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
          _3006 = _2982 + -0.004999999888241291f;
          _3011 = select((_3001.w > _3006), 1.0f, 0.0f);
          _3013 = select((_3001.x > _3006), 1.0f, 0.0f);
          _3020 = ((select((_3001.z > _3006), 1.0f, 0.0f) - _3011) * _2997) + _3011;
  // [sem: expr_sat]
          _3026 = saturate((((((select((_3001.y > _3006), 1.0f, 0.0f) - _3013) * _2997) + _3013) - _3020) * frac((_2978 * 1024.0f) + -0.5f)) + _3020);
        } else {
          _3026 = 1.0f;  // [sem: expr_sat]
        }
      } else {
        _3026 = 1.0f;  // [sem: expr_sat]
      }
      _3027 = min(_2944, _3026);
      _3028 = saturate(_2657);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived_derived_sat]
      _3029 = saturate(_2658);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived_derived_sat]
      _3030 = saturate(_2659);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived_derived_sat]
      _3044 = ((half)(((half)(_3029 * 0.3395996h)) + ((half)(_3028 * 0.61328125h)))) + ((half)(_3030 * 0.04736328h));
      _3045 = ((half)(((half)(_3029 * 0.9165039h)) + ((half)(_3028 * 0.07019043h)))) + ((half)(_3030 * 0.013450623h));
      _3046 = ((half)(((half)(_3029 * 0.109558105h)) + ((half)(_3028 * 0.020614624h)))) + ((half)(_3030 * 0.8696289h));
      _3049 = (_sunDirection.y > 0.0f);
      if ((_3049) || ((!(_3049)) && (_sunDirection.y > _moonDirection.y))) {
        _3061 = _sunDirection.x;
        _3062 = _sunDirection.y;
        _3063 = _sunDirection.z;
      } else {
        _3061 = _moonDirection.x;
        _3062 = _moonDirection.y;
        _3063 = _moonDirection.z;
      }
      if ((_3049) || ((!(_3049)) && (_sunDirection.y > _moonDirection.y))) {
        _3083 = _precomputedAmbient7.y;
      } else {
        _3083 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
      }
      _3086 = _2369 + _earthRadius;
      _3092 = sqrt(((_2370 * _2370) + (_2368 * _2368)) + (_3086 * _3086));
      _3097 = dot(float3((_2368 / _3092), (_3086 / _3092), (_2370 / _3092)), float3(_3061, _3062, _3063));
      _3101 = _atmosphereThickness + -16.0f;
      _3103 = min(max(((_3092 - _earthRadius) / _atmosphereThickness), 16.0f), _3101);
      _3105 = _atmosphereThickness + -32.0f;
      _3111 = max(_3103, 0.0f);
      _3112 = _earthRadius * 2.0f;
      _3118 = (-0.0f - sqrt((_3111 + _3112) * _3111)) / (_3111 + _earthRadius);
      if (_3097 > _3118) {
        _3141 = ((exp2(log2(saturate((_3097 - _3118) / (1.0f - _3118))) * 0.20000000298023224f) * 0.4921875f) + 0.50390625f);
      } else {
        _3141 = ((exp2(log2(saturate((_3118 - _3097) / (_3118 + 1.0f))) * 0.20000000298023224f) * 0.4921875f) + 0.00390625f);
      }
  // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
      _3146 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_3103 + -16.0f) / _3105)) * 0.5f) * 0.96875f) + 0.015625f), _3141), 0.0f);
      _3165 = _mieAerosolAbsorption + 1.0f;
      _3166 = _mieAerosolDensity * 1.9999999494757503e-05f;
      _3168 = (_3166 * _3146.y) * _3165;
      _3174 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.960784317134312e-07f) + (_ozoneRatio * 2.05560013455397e-06f);
      _3177 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.960784317134312e-07f) + (_ozoneRatio * 4.978800461685751e-06f);
      _3180 = (_ozoneRatio * 2.1360001767334325e-07f) + (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.960784317134312e-07f);
      _3186 = exp2(((_3174 * _3146.x) + _3168) * -1.4426950216293335f);
      _3187 = exp2(((_3177 * _3146.x) + _3168) * -1.4426950216293335f);
      _3188 = exp2(((_3180 * _3146.x) + _3168) * -1.4426950216293335f);
      _3207 = sqrt((_2286 * _2286) + (_2288 * _2288));
      _3215 = (_cloudAltitude - (max(((_3207 * _3207) + -4e+05f), 0.0f) * 9.999999974752427e-07f)) - _viewPos.y;
      _3227 = (_cloudThickness * (0.5f - (float((int)(((int)(uint)((int)(_3062 > 0.0f))) - ((int)(uint)((int)(_3062 < 0.0f))))) * 0.5f))) + _3215;
      if (_2287 < _3215) {
        _3230 = dot(float3(0.0f, 1.0f, 0.0f), float3(_3061, _3062, _3063));
        _3236 = select((abs(_3230) < 9.99999993922529e-09f), 1e+08f, ((_3227 - dot(float3(0.0f, 1.0f, 0.0f), float3(_2286, _2287, _2288))) / _3230));
        _3242 = ((_3236 * _3061) + _2286);
        _3243 = _3227;
        _3244 = ((_3236 * _3063) + _2288);
      } else {
        _3242 = _2286;
        _3243 = _2287;
        _3244 = _2288;
      }
      _3257 = _cloudScatteringCoefficient / _distanceScale;
      _3258 = _distanceScale * -1.4426950216293335f;
      _3264 = saturate(abs(_3062) * 4.0f);  // [sem: expr_sat]
      _3266 = (_3264 * _3264) * exp2((_3258 * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_3242 * 4.999999873689376e-05f) + 0.5f), ((_3243 - _3215) / _cloudThickness), ((_3244 * 4.999999873689376e-05f) + 0.5f)), 0.0f)).x)) * _3257);
      _3273 = ((1.0f - _3266) * saturate(((_2287 - _cloudThickness) - _3215) * 0.10000000149011612f)) + _3266;
      _3274 = _3273 * (((_3187 * 0.3395099937915802f) + (_3186 * 0.6131200194358826f)) + (_3188 * 0.047370001673698425f));
      _3275 = _3273 * (((_3187 * 0.9163600206375122f) + (_3186 * 0.07020000368356705f)) + (_3188 * 0.013450000435113907f));
      _3276 = _3273 * (((_3187 * 0.10958000272512436f) + (_3186 * 0.02061999961733818f)) + (_3188 * 0.8697999715805054f));
      _3295 = float(saturate(_2660));
      if ((_982 != 0) && (!_1002)) {
        _3297 = (_1182 > 0.0f);
        _3298 = select(_3297, _1179, _2941);
        _3299 = select(_3297, _1180, _2942);
        _3300 = select(_3297, _1181, _2943);
        _3301 = select(_3297, _1182, 0.800000011920929f);
        if (_981 > 0.0f) {
          _3304 = half(_978);
          _3305 = half(_979);
          _3306 = half(_980);
          _3312 = _3301;
          _3313 = _3298;
          _3314 = _3299;
          _3315 = _3300;
          _3316 = _3304;
          _3317 = _3305;
          _3318 = _3306;
          _3319 = _981;
          _3320 = float(_3304);
          _3321 = float(_3305);
          _3322 = float(_3306);
          _3323 = dot(float3(_3298, _3299, _3300), float3(_3061, _3062, _3063));
        } else {
          _3312 = _3301;
          _3313 = _3298;
          _3314 = _3299;
          _3315 = _3300;
          _3316 = _3044;
          _3317 = _3045;
          _3318 = _3046;
          _3319 = 0.10000000149011612f;
          _3320 = 1.0f;
          _3321 = 1.0f;
          _3322 = 1.0f;
          _3323 = _3295;
        }
      } else {
        _3312 = 0.800000011920929f;
        _3313 = _2941;
        _3314 = _2942;
        _3315 = _2943;
        _3316 = _3044;
        _3317 = _3045;
        _3318 = _3046;
        _3319 = 0.10000000149011612f;
        _3320 = 1.0f;
        _3321 = 1.0f;
        _3322 = 1.0f;
        _3323 = _3295;
      }
      _3331 = float(half(saturate(_3323) * 0.31830987334251404f)) * _3027;
      _3339 = 0.699999988079071f / min(max(max(max(_3320, _3321), _3322), 0.009999999776482582f), 0.699999988079071f);
      _3350 = (((_3339 * _3321) + -0.03999999910593033f) * _3319) + 0.03999999910593033f;
      _3352 = _3061 - _214;
      _3353 = _3062 - _215;
      _3354 = _3063 - _216;
      _3356 = rsqrt(dot(float3(_3352, _3353, _3354), float3(_3352, _3353, _3354)));  // [sem: invLength]
      _3357 = _3356 * _3352;
      _3358 = _3356 * _3353;
      _3359 = _3356 * _3354;
      _3360 = -0.0f - _214;
      _3361 = -0.0f - _215;
      _3362 = -0.0f - _216;
      _3367 = saturate(max(9.999999747378752e-06f, dot(float3(_3360, _3361, _3362), float3(_3313, _3314, _3315))));  // [sem: expr_sat]
      _3369 = saturate(dot(float3(_3313, _3314, _3315), float3(_3357, _3358, _3359)));  // [sem: expr_sat]
      _3372 = saturate(1.0f - saturate(saturate(dot(float3(_3360, _3361, _3362), float3(_3357, _3358, _3359)))));  // [sem: expr_sat]
      _3373 = _3372 * _3372;
      _3375 = (_3373 * _3373) * _3372;
      _3378 = _3375 * saturate(_3350 * 50.0f);
      _3379 = 1.0f - _3375;
      _3387 = saturate(_3323 * _3027);  // [sem: expr_sat]
      _3388 = _3312 * _3312;
      _3389 = _3388 * _3388;
      _3390 = 1.0f - _3388;
      _3402 = (((_3369 * _3389) - _3369) * _3369) + 1.0f;
      _3406 = (_3389 / ((_3402 * _3402) * 3.1415927410125732f)) * (0.5f / ((((_3367 * _3390) + _3388) * _3323) + (_3367 * ((_3323 * _3390) + _3388))));
      _3417 = ((((_3274 * 0.6131200194358826f) + (_3275 * 0.3395099937915802f)) + (_3276 * 0.047370001673698425f)) * _3083) * ((max((((_3379 * ((((_3339 * _3320) + -0.03999999910593033f) * _3319) + 0.03999999910593033f)) + _3378) * _3406), 0.0f) * _3387) + (_3331 * float(_3316)));
      _3419 = ((((_3274 * 0.07020000368356705f) + (_3275 * 0.9163600206375122f)) + (_3276 * 0.013450000435113907f)) * _3083) * ((max((((_3379 * _3350) + _3378) * _3406), 0.0f) * _3387) + (_3331 * float(_3317)));
      _3421 = ((((_3274 * 0.02061999961733818f) + (_3275 * 0.10958000272512436f)) + (_3276 * 0.8697999715805054f)) * _3083) * ((max((((_3379 * ((((_3339 * _3322) + -0.03999999910593033f) * _3319) + 0.03999999910593033f)) + _3378) * _3406), 0.0f) * _3387) + (_3331 * float(_3318)));
      _3426 = dot(float3(_3417, _3419, _3421), float3(0.21267099678516388f, 0.7151600122451782f, 0.0721689984202385f));
      _3427 = min((max(0.0005000000237487257f, _exposure3.w) * 4096.0f), _3426);
      _3431 = max(9.999999717180685e-10f, _3426);
      _3432 = (_3427 * _3417) / _3431;
      _3433 = (_3427 * _3419) / _3431;
      _3434 = (_3427 * _3421) / _3431;
      if ((_114 == 33) || (_114 == 55)) {
        if ((_3049) || ((!(_3049)) && (_sunDirection.y > _moonDirection.y))) {
          _3455 = _sunDirection.x;
          _3456 = _sunDirection.y;
          _3457 = _sunDirection.z;
        } else {
          _3455 = _moonDirection.x;
          _3456 = _moonDirection.y;
          _3457 = _moonDirection.z;
        }
        _3462 = rsqrt(dot(float3(_177, _178, _179), float3(_177, _178, _179)));  // [sem: invLength]
        _3463 = _3462 * _177;
        _3464 = _3462 * _178;
        _3465 = _3462 * _179;
        _3469 = _177 - (_137 * 0.03999999910593033f);
        _3470 = _178 - (_138 * 0.03999999910593033f);
        _3471 = _179 - (_139 * 0.03999999910593033f);
        _3475 = (_viewPos.x - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].x)) + _3469;
        _3476 = (_viewPos.y - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].y)) + _3470;
        _3477 = (_viewPos.z - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].z)) + _3471;
        _3481 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].x), _3477, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].x), _3476, (_3475 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][3].x);
        _3485 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].y), _3477, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].y), _3476, (_3475 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].y)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][3].y);
        _3496 = (((!(_3481 <= _2409)) || (!(_3481 >= _2408))) || (!(_3485 <= _2409))) || (!(_3485 >= _2408));
        _3504 = (_viewPos.x - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].x)) + _3469;
        _3505 = (_viewPos.y - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].y)) + _3470;
        _3506 = (_viewPos.z - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].z)) + _3471;
        _3510 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].x), _3506, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].x), _3505, (_3504 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][3].x);
        _3514 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].y), _3506, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].y), _3505, (_3504 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].y)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][3].y);
        _3525 = (((!(_3510 <= _2409)) || (!(_3510 >= _2408))) || (!(_3514 <= _2409))) || (!(_3514 >= _2408));
        _3527 = select((_3525 && _3496), 0.0f, 0.0010000000474974513f);
        _3528 = select(_3525, select(_3496, 0.0f, _3481), _3510);
        _3529 = select(_3525, select(_3496, 0.0f, _3485), _3514);
        _3530 = select(_3525, select(_3496, 0.0f, (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].z), _3477, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].z), _3476, (_3475 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].z)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][3].z))), (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].z), _3506, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].z), _3505, (_3504 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].z)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][3].z)));
        _3531 = select(_3525, select(_3496, -1, 1), 0);
        [branch]
        if (!(_3531 == -1)) {
          _3537 = (_3528 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x) + -0.5f;
          _3538 = (_3529 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y) + -0.5f;
          _3541 = int(floor(_3537));
          _3542 = int(floor(_3538));
          _3545 = _3541 + 1u;
          _3546 = _3542 + 1u;
          if (!(((uint)_3541 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x))) || ((uint)_3542 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y))))) {
            _3561 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3541, _3542, _3531, 0)))).x);
            _3562 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3545, _3542, _3531, 0)))).x);
            _3563 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3541, _3546, _3531, 0)))).x);
            _3564 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3545, _3546, _3531, 0)))).x);
          } else {
            _3561 = 0.0f;
            _3562 = 0.0f;
            _3563 = 0.0f;
            _3564 = 0.0f;
          }
          _3565 = _3531 << 2;
          _3567 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_3565 + 103))];
          _3573 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_3565 + 104))];
          _3579 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_3565 + 105))];
          _3585 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_3565 + 106))];
          _3590 = _3567.x * _3528;
          _3594 = _3567.y * _3528;
          _3598 = _3567.z * _3528;
          _3602 = _3567.w * _3528;
          _3605 = mad(_3579.w, _3561, mad(_3573.w, _3529, _3602)) + _3585.w;
          _3606 = (mad(_3579.x, _3561, mad(_3573.x, _3529, _3590)) + _3585.x) / _3605;
          _3607 = (mad(_3579.y, _3561, mad(_3573.y, _3529, _3594)) + _3585.y) / _3605;
          _3608 = (mad(_3579.z, _3561, mad(_3573.z, _3529, _3598)) + _3585.z) / _3605;
          _3611 = _3528 + (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.z * 4.0f);
          _3627 = mad(_3579.w, _3562, mad(_3573.w, _3529, (_3567.w * _3611))) + _3585.w;
          _3633 = _3529 - (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.w * 2.0f);
          _3645 = mad(_3579.w, _3563, mad(_3573.w, _3633, _3602)) + _3585.w;
          _3649 = ((mad(_3579.x, _3563, mad(_3573.x, _3633, _3590)) + _3585.x) / _3645) - _3606;
          _3650 = ((mad(_3579.y, _3563, mad(_3573.y, _3633, _3594)) + _3585.y) / _3645) - _3607;
          _3651 = ((mad(_3579.z, _3563, mad(_3573.z, _3633, _3598)) + _3585.z) / _3645) - _3608;
          _3652 = ((mad(_3579.x, _3562, mad(_3573.x, _3529, (_3567.x * _3611))) + _3585.x) / _3627) - _3606;
          _3653 = ((mad(_3579.y, _3562, mad(_3573.y, _3529, (_3567.y * _3611))) + _3585.y) / _3627) - _3607;
          _3654 = ((mad(_3579.z, _3562, mad(_3573.z, _3529, (_3567.z * _3611))) + _3585.z) / _3627) - _3608;
          _3657 = (_3651 * _3653) - (_3650 * _3654);
          _3660 = (_3649 * _3654) - (_3651 * _3652);
          _3663 = (_3650 * _3652) - (_3649 * _3653);
          _3665 = rsqrt(dot(float3(_3657, _3660, _3663), float3(_3657, _3660, _3663)));  // [sem: invLength]
          _3669 = frac(_3537);
          _3674 = (saturate(dot(float3(_3463, _3464, _3465), float3((_3657 * _3665), (_3660 * _3665), (_3663 * _3665)))) * 0.0020000000949949026f) + _3530;
          _3687 = saturate(exp2((_3561 - _3674) * 1442695.0f));  // [sem: expr_sat]
          _3689 = saturate(exp2((_3563 - _3674) * 1442695.0f));  // [sem: expr_sat]
          _3695 = ((saturate(exp2((_3562 - _3674) * 1442695.0f)) - _3687) * _3669) + _3687;
  // [sem: expr_sat]
          _3702 = saturate((((_3689 - _3695) + ((saturate(exp2((_3564 - _3674) * 1442695.0f)) - _3689) * _3669)) * frac(_3538)) + _3695);
          _3703 = _3561;
          _3704 = _3562;
          _3705 = _3563;
          _3706 = _3564;
        } else {
          _3702 = 1.0f;  // [sem: expr_sat]
          _3703 = 0.0f;
          _3704 = 0.0f;
          _3705 = 0.0f;
          _3706 = 0.0f;
        }
        _3710 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].x), _3471, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].x), _3470, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].x) * _3469))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][3].x);
        _3714 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].y), _3471, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].y), _3470, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].y) * _3469))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][3].y);
        _3718 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].z), _3471, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].z), _3470, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].z) * _3469))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][3].z);
        if (!(((!(_3710 <= _2692)) || (!(_3710 >= _2691))) || (!(_3714 <= _2692)))) {
          _3729 = (_3718 >= -1.0f) && ((_3714 >= _2691) && (_3718 <= 1.0f));
          _3737 = select(_3729, 9.999999747378752e-06f, _3527);
          _3738 = select(_3729, _3710, _3528);
          _3739 = select(_3729, _3714, _3529);
          _3740 = select(_3729, _3718, _3530);
          _3741 = select(_3729, 1, _3531);
          _3742 = ((int)(uint)(_3729));
        } else {
          _3737 = _3527;
          _3738 = _3528;
          _3739 = _3529;
          _3740 = _3530;
          _3741 = _3531;
          _3742 = 0;
        }
        _3746 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].x), _3471, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].x), _3470, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].x) * _3469))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][3].x);
        _3750 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].y), _3471, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].y), _3470, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].y) * _3469))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][3].y);
        _3754 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].z), _3471, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].z), _3470, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].z) * _3469))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][3].z);
        if (!(((!(_3746 <= _2692)) || (!(_3746 >= _2691))) || (!(_3750 <= _2692)))) {
          _3765 = (_3754 >= -1.0f) && ((_3750 >= _2691) && (_3754 <= 1.0f));
          _3773 = select(_3765, 9.999999747378752e-06f, _3737);
          _3774 = select(_3765, _3746, _3738);
          _3775 = select(_3765, _3750, _3739);
          _3776 = select(_3765, _3754, _3740);
          _3777 = select(_3765, 0, _3741);
          _3778 = select(_3765, 1, _3742);
        } else {
          _3773 = _3737;
          _3774 = _3738;
          _3775 = _3739;
          _3776 = _3740;
          _3777 = _3741;
          _3778 = _3742;
        }
        [branch]
        if (!(_3778 == 0)) {
          _3788 = int(floor((_3774 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f));
          _3789 = int(floor((_3775 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f));
          _3792 = _3788 + 1u;
          _3793 = _3789 + 1u;
          if (!(((uint)_3788 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x))) || ((uint)_3789 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y))))) {
            _3808 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3788, _3789, _3777, 0)))).x);
            _3809 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3792, _3789, _3777, 0)))).x);
            _3810 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3788, _3793, _3777, 0)))).x);
            _3811 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3792, _3793, _3777, 0)))).x);
          } else {
            _3808 = _3703;
            _3809 = _3704;
            _3810 = _3705;
            _3811 = _3706;
          }
          if ((_3049) || ((!(_3049)) && (_sunDirection.y > _moonDirection.y))) {
            _3823 = _sunDirection.x;
            _3824 = _sunDirection.y;
            _3825 = _sunDirection.z;
          } else {
            _3823 = _moonDirection.x;
            _3824 = _moonDirection.y;
            _3825 = _moonDirection.z;
          }
          _3831 = (_3773 - (saturate(-0.0f - dot(float3(_3823, _3824, _3825), float3(_3463, _3464, _3465))) * 9.999999747378752e-05f)) + _3776;
          _3844 = min(((float)((bool)(uint)(_3808 > _3831))), min(min(((float)((bool)(uint)(_3809 > _3831))), ((float)((bool)(uint)(_3810 > _3831)))), ((float)((bool)(uint)(_3811 > _3831)))));
        } else {
          _3844 = _3702;
        }
        _3845 = _2949 + _3469;
        _3846 = _2950 + _3470;
        _3847 = _2951 + _3471;
        _3851 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].x), _3847, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].x), _3846, (_3845 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[3].x);
        _3855 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].y), _3847, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].y), _3846, (_3845 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].y)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[3].y);
        _3859 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].z), _3847, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].z), _3846, (_3845 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].z)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[3].z);
        if (saturate(_3851) == _3851) {
          if ((_3859 >= 9.999999747378752e-05f) && ((_3859 <= 1.0f) && (saturate(_3855) == _3855))) {
            _3874 = frac((_3851 * 1024.0f) + -0.5f);
  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
            _3878 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_3851, _3855));
            _3883 = _3859 + -0.004999999888241291f;
            _3888 = select((_3878.w > _3883), 1.0f, 0.0f);
            _3890 = select((_3878.x > _3883), 1.0f, 0.0f);
            _3897 = ((select((_3878.z > _3883), 1.0f, 0.0f) - _3888) * _3874) + _3888;
  // [sem: expr_sat]
            _3903 = saturate((((((select((_3878.y > _3883), 1.0f, 0.0f) - _3890) * _3874) + _3890) - _3897) * frac((_3855 * 1024.0f) + -0.5f)) + _3897);
          } else {
            _3903 = 1.0f;  // [sem: expr_sat]
          }
        } else {
          _3903 = 1.0f;  // [sem: expr_sat]
        }
  // [sem: _3__36__0__0__g_baseColor_load]
        _3909 = __3__36__0__0__g_baseColor.Load(int3((int)(uint(_85 * (1.0f / g_screenSpaceScale.x))), (int)(uint(_86 * (1.0f / g_screenSpaceScale.y))), 0));
        _3915 = ((float)((uint)((uint)(((uint)((uint)(_3909.x)) >> 8) & 255)))) * 0.003921568859368563f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _3918 = ((float)((uint)((uint)(_3909.x & 255)))) * 0.003921568859368563f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _3922 = ((float)((uint)((uint)(((uint)((uint)(_3909.y)) >> 8) & 255)))) * 0.003921568859368563f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _3923 = _3915 * _3915;
        _3924 = _3918 * _3918;
        _3925 = _3922 * _3922;
        if ((_3049) || ((!(_3049)) && (_sunDirection.y > _moonDirection.y))) {
          _3960 = _precomputedAmbient7.y;
        } else {
          _3960 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
        }
        _3961 = _viewPos.x + _177;
        _3963 = (_earthRadius + _viewPos.y) + _178;
        _3964 = _viewPos.z + _179;
        _3970 = sqrt(((_3964 * _3964) + (_3961 * _3961)) + (_3963 * _3963));
        _3975 = dot(float3((_3961 / _3970), (_3963 / _3970), (_3964 / _3970)), float3(_3455, _3456, _3457));
        _3978 = min(max(((_3970 - _earthRadius) / _atmosphereThickness), 16.0f), _3101);
        _3985 = max(_3978, 0.0f);
        _3991 = (-0.0f - sqrt((_3985 + _3112) * _3985)) / (_3985 + _earthRadius);
        if (_3975 > _3991) {
          _4014 = ((exp2(log2(saturate((_3975 - _3991) / (1.0f - _3991))) * 0.20000000298023224f) * 0.4921875f) + 0.50390625f);
        } else {
          _4014 = ((exp2(log2(saturate((_3991 - _3975) / (_3991 + 1.0f))) * 0.20000000298023224f) * 0.4921875f) + 0.00390625f);
        }
  // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
        _4017 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_3978 + -16.0f) / _3105)) * 0.5f) * 0.96875f) + 0.015625f), _4014), 0.0f);
        _4021 = (_3166 * _3165) * _4017.y;
        _4031 = exp2((_4021 + (_4017.x * _3174)) * -1.4426950216293335f);
        _4032 = exp2((_4021 + (_4017.x * _3177)) * -1.4426950216293335f);
        _4033 = exp2((_4021 + (_4017.x * _3180)) * -1.4426950216293335f);
        _4052 = sqrt((_179 * _179) + (_177 * _177));
        _4058 = (_cloudAltitude - (max(((_4052 * _4052) + -4e+05f), 0.0f) * 9.999999974752427e-07f)) - _viewPos.y;
        _4068 = _4058 + ((0.5f - (float((int)(((int)(uint)((int)(_3456 > 0.0f))) - ((int)(uint)((int)(_3456 < 0.0f))))) * 0.5f)) * _cloudThickness);
        if (_178 < _4058) {
          _4071 = dot(float3(0.0f, 1.0f, 0.0f), float3(_3455, _3456, _3457));
          _4077 = select((abs(_4071) < 9.99999993922529e-09f), 1e+08f, ((_4068 - dot(float3(0.0f, 1.0f, 0.0f), float3(_177, _178, _179))) / _4071));
          _4083 = ((_4077 * _3455) + _177);
          _4084 = _4068;
          _4085 = ((_4077 * _3457) + _179);
        } else {
          _4083 = _177;
          _4084 = _178;
          _4085 = _179;
        }
        _4099 = saturate(abs(_3456) * 4.0f);  // [sem: expr_sat]
        _4101 = (_4099 * _4099) * exp2((_3258 * _3257) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_4083 * 4.999999873689376e-05f) + 0.5f), ((_4084 - _4058) / _cloudThickness), ((_4085 * 4.999999873689376e-05f) + 0.5f)), 0.0f)).x));
        _4108 = ((1.0f - _4101) * saturate(((_178 - _cloudThickness) - _4058) * 0.10000000149011612f)) + _4101;
        _4109 = _4108 * (((_4032 * 0.3395099937915802f) + (_4031 * 0.6131200194358826f)) + (_4033 * 0.047370001673698425f));
        _4110 = _4108 * (((_4032 * 0.9163600206375122f) + (_4031 * 0.07020000368356705f)) + (_4033 * 0.013450000435113907f));
        _4111 = _4108 * (((_4032 * 0.10958000272512436f) + (_4031 * 0.02061999961733818f)) + (_4033 * 0.8697999715805054f));
        _4127 = ((max(0.0f, (0.30000001192092896f - dot(float3(_137, _138, _139), float3(_3455, _3456, _3457)))) * 0.1573420912027359f) * saturate(min(_3844, _3903))) * _3960;
        _4138 = (((_4127 * (((_3923 * 0.6131200194358826f) + (_3924 * 0.3395099937915802f)) + (_3925 * 0.047370001673698425f))) * (((_4109 * 0.6131200194358826f) + (_4110 * 0.3395099937915802f)) + (_4111 * 0.047370001673698425f))) + _3432);
        _4139 = (((_4127 * (((_3923 * 0.07020000368356705f) + (_3924 * 0.9163600206375122f)) + (_3925 * 0.013450000435113907f))) * (((_4109 * 0.07020000368356705f) + (_4110 * 0.9163600206375122f)) + (_4111 * 0.013450000435113907f))) + _3433);
        _4140 = (((_4127 * (((_3923 * 0.02061999961733818f) + (_3924 * 0.10958000272512436f)) + (_3925 * 0.8697999715805054f))) * (((_4109 * 0.02061999961733818f) + (_4110 * 0.10958000272512436f)) + (_4111 * 0.8697999715805054f))) + _3434);
      } else {
        _4138 = _3432;
        _4139 = _3433;
        _4140 = _3434;
      }
      _4141 = (_renderParams2.z * _2359) * _4138;
      _4142 = (_renderParams2.z * _2360) * _4139;
      _4143 = (_renderParams2.z * _2361) * _4140;
      _4147 = _4141 + _2270;
      _4148 = _4142 + _2271;
      _4149 = _4143 + _2272;
      _4160 = _2280;
      _4161 = (((max(_2270, _4141) - _4147) * _2282) + _4147);
      _4162 = (((max(_2271, _4142) - _4148) * _2282) + _4148);
      _4163 = (((max(_2272, _4143) - _4149) * _2282) + _4149);
    } else {
      _4160 = 1000.0f;
      _4161 = _2270;
      _4162 = _2271;
      _4163 = _2272;
    }
    if (!_989) {
      __3__38__0__1__g_raytracingHitResultUAV[int2(_82, _84)] = float4(_208, _209, _210, select((_4160 <= 0.0f), 1000.0f, _4160));
    }
    if ((_4160 > 128.0f) && (dot(float3(_4161, _4162, _4163), float3(0.21267099678516388f, 0.7151600122451782f, 0.0721689984202385f)) == 0.0f)) {
      _4174 = 1;
      while(true) {
        _4176 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_4174 + 20))];
        _4204 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_4174 + 36))];
        // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
        // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
        float3 _rndx_surfel_jitter_4214 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _2286) * _4176.w) + _4204.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _2287) * _4176.w) + _4204.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _2288) * _4176.w) + _4204.z), float2(_85, _86), _188, _frameNumber.x);
        _4214 = int(floor(_rndx_surfel_jitter_4214.x));
        _4215 = int(floor(_rndx_surfel_jitter_4214.y));
        _4216 = int(floor(_rndx_surfel_jitter_4214.z));
        // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
        if (!(((((int)_4214 >= (int)int(_4176.x + -63.0f)) && ((int)_4214 < (int)int(_4176.x + 63.0f))) && (((int)_4215 >= (int)int(_4176.y + -31.0f)) && ((int)_4215 < (int)int(_4176.y + 31.0f)))) && (((int)_4216 >= (int)int(_4176.z + -63.0f)) && ((int)_4216 < (int)int(_4176.z + 63.0f))))) {
          _4229 = _4174 + 1;
          if ((uint)_4229 < (uint)8) {
            _4174 = _4229;
            continue;
          } else {
            _4232 = -10000;
          }
        } else {
          _4232 = _4174;
        }
        if (!((uint)_4232 > (uint)3)) {
          _4252 = 1.0f / ((float)((uint)(1 << (_4232 & 31))));
          _4256 = frac(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _2288) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z) * _4252);
  // [sem: expr_sat]
          _4273 = saturate(1.0f - ((__3__36__0__1__g_skyVisibilityVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _2286) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _4252), (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _2287) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y) * _4252), (((((float)((uint)(_4232 * 66))) + 1.0f) + ((select((_4256 < 0.0f), 1.0f, 0.0f) + _4256) * 64.0f)) * 0.0037878789007663727f)), 0.0f)).x));
        } else {
          _4273 = 1.0f;  // [sem: expr_sat]
        }
        _4276 = _renderParams.w * _4273;
        _4277 = (_981 == 0.0f);
  // [sem: _3__36__0__0__g_environmentColor_sampleLod]
        _4285 = __3__36__0__0__g_environmentColor.SampleLevel(__3__40__0__0__g_samplerTrilinear, float3(select(_4277, (-0.0f - _214), _1179), select(_4277, _215, _1180), select(_4277, (-0.0f - _216), _1181)), 4.0f);
        _4299 = ((_4276 * select(_4277, 0.03125f, _978)) * _4285.x);
        _4300 = ((_4276 * select(_4277, 0.03125f, _979)) * _4285.y);
        _4301 = ((_4276 * select(_4277, 0.03125f, _980)) * _4285.z);
        break;
      }
    } else {
      _4299 = _4161;
      _4300 = _4162;
      _4301 = _4163;
    }
    _4308 = saturate(1.0f - saturate(_2273));  // [sem: expr_sat]
    _4312 = (_4308 - (_renderParams2.w * _4308)) + _renderParams2.w;
  // [sem: _3__36__0__0__g_environmentColor_sampleLod]
    _4316 = __3__36__0__0__g_environmentColor.SampleLevel(__3__40__0__0__g_samplerTrilinear, float3(_214, _215, _216), 4.0f);
    _4322 = _renderParams.w * _4312;
    _4323 = _4322 * _4316.x;
    _4324 = _4322 * _4316.y;
    _4325 = _4322 * _4316.z;
    _4330 = dot(float3(_4323, _4324, _4325), float3(0.21267099678516388f, 0.7151600122451782f, 0.0721689984202385f));
    _4331 = min((max(0.009999999776482582f, _exposure3.w) * 2048.0f), _4330);
    _4335 = max(9.999999717180685e-10f, _4330);
    _4345 = ((__3__36__0__0__g_raytracingDiffuseRayInversePDF.Load(int3(_82, _84, 0))).x) * 2.0f;
    _4346 = _4345 * (((_4331 * _4323) / _4335) + (_renderParams2.y * _4299));
    _4347 = _4345 * (((_4331 * _4324) / _4335) + (_renderParams2.y * _4300));
    _4348 = _4345 * (((_4331 * _4325) / _4335) + (_renderParams2.y * _4301));
    if (!(_renderParams.y == 0.0f)) {
      _4353 = saturate(dot(float3(_137, _138, _139), float3(_214, _215, _216)));  // [sem: expr_sat]
      _4358 = (_4353 * _4346);
      _4359 = (_4353 * _4347);
      _4360 = (_4353 * _4348);
    } else {
      _4358 = _4346;
      _4359 = _4347;
      _4360 = _4348;
    }
    __3__38__0__1__g_diffuseResultUAV[int2(_82, _84)] = float4(((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - min(15000.0f, (_exposure4.x * _4358)))))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - min(15000.0f, (_exposure4.x * _4359)))))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - min(15000.0f, (_exposure4.x * _4360)))))))), (half)(half(1.0f - _4312)));
    break;
  }
}
