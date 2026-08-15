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

Texture2D<uint> __3__36__0__0__g_sceneNormal : register(t24, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t79, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaquePrev : register(t80, space36);

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
  int _496;
  int _559;
  int _560;
  int _561;
  int _562;
  int _568;
  int _569;
  int _570;
  int _571;
  int _572;
  int _575;
  int _576;
  int _577;
  int _578;
  int _581;
  int _582;
  int _583;
  int _584;
  int _585;
  int _592;
  int _613;
  int _619;
  int _620;
  int _621;
  int _622;
  int _623;
  float _682;
  float _683;
  float _684;
  float _685;
  float _686;
  float _687;
  float _688;
  int _689;
  float _928;
  float _929;
  float _930;
  float _931;
  float _948;
  float _949;
  float _950;
  float _970;
  float _971;
  float _972;
  float _994;
  float _995;
  float _996;
  float _1003;
  float _1004;
  float _1005;
  float _1006;
  float _1007;
  float _1008;
  float _1009;
  float _1010;
  int _1011;
  float _1012;
  float _1013;
  float _1014;
  float _1015;
  float _1016;
  bool _1031;
  float _1193;
  float _1194;
  float _1195;
  float _1196;
  float _1207;
  float _1208;
  float _1209;
  float _1210;
  float _1211;
  float _1212;
  float _1213;
  float _1214;
  float _1215;
  int _1216;
  int _1218;
  int _1279;
  int _1280;
  float _1287;
  float _1347;
  float _1348;
  float _1349;
  float _1350;
  int _1356;
  int _1414;
  int _1451;
  float _1452;
  float _1453;
  float _1454;
  float _1455;
  float _1456;
  int _1458;
  float _1675;
  float _1676;
  float _1695;
  float _1696;
  float _1697;
  float _1698;
  float _1699;
  float _1701;
  float _1702;
  float _1703;
  float _1704;
  float _1705;
  float _1706;
  int _1723;
  int _1786;
  int _1787;
  int _1788;
  int _1789;
  int _1815;
  int _1878;
  int _1879;
  int _1880;
  int _1881;
  int _1887;
  int _1888;
  int _1889;
  int _1890;
  int _1891;
  int _1894;
  int _1895;
  int _1896;
  int _1897;
  int _1900;
  int _1901;
  int _1902;
  int _1903;
  int _1904;
  int _1911;
  int _1932;
  int _1938;
  int _1939;
  int _1940;
  int _1941;
  int _1942;
  float _2001;
  float _2002;
  float _2003;
  float _2004;
  int _2005;
  float _2236;
  float _2237;
  float _2238;
  float _2239;
  float _2256;
  float _2257;
  float _2258;
  float _2259;
  float _2287;
  float _2288;
  float _2289;
  float _2290;
  float _2291;
  bool _2305;
  float _2328;
  float _2329;
  float _2330;
  float _2331;
  float _2417;
  float _2418;
  float _2419;
  float _2562;
  float _2563;
  float _2564;
  float _2565;
  half _2566;
  half _2567;
  half _2568;
  half _2569;
  float _2707;
  float _2708;
  float _2709;
  float _2710;
  float _2711;
  float _2712;
  float _2713;
  float _2714;
  half _2715;
  half _2716;
  half _2717;
  half _2718;
  float _2769;
  float _2770;
  float _2771;
  float _2772;
  int _2773;
  int _2774;
  float _2821;
  float _2822;
  float _2823;
  float _2824;
  int _2825;
  int _2826;
  float _2856;
  float _2857;
  float _2858;
  float _2859;
  float _2978;
  float _2979;
  float _2980;
  float _2999;
  float _3000;
  float _3001;
  float _3002;
  float _3084;
  float _3119;
  float _3120;
  float _3121;
  float _3141;
  float _3199;
  float _3300;
  float _3301;
  float _3302;
  float _3370;
  float _3371;
  float _3372;
  float _3373;
  half _3374;
  half _3375;
  half _3376;
  float _3377;
  float _3378;
  float _3379;
  float _3380;
  float _3381;
  float _3513;
  float _3514;
  float _3515;
  float _3619;
  float _3620;
  float _3621;
  float _3622;
  float _3760;
  float _3761;
  float _3762;
  float _3763;
  float _3764;
  float _3795;
  float _3796;
  float _3797;
  float _3798;
  int _3799;
  int _3800;
  float _3831;
  float _3832;
  float _3833;
  float _3834;
  int _3835;
  int _3836;
  float _3866;
  float _3867;
  float _3868;
  float _3869;
  float _3881;
  float _3882;
  float _3883;
  float _3902;
  float _3961;
  float _4018;
  float _4072;
  float _4141;
  float _4142;
  float _4143;
  float _4196;
  float _4197;
  float _4198;
  float _4218;
  float _4219;
  float _4220;
  float _4221;
  int _4232;
  int _4290;
  float _4331;
  float _4357;
  float _4358;
  float _4359;
  float _4416;
  float _4417;
  float _4418;
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
  int _481;
  bool _485;
  int _486;
  int _487;
  int _488;
  int _489;
  float _491;
  float4 _498;
  float4 _526;
  int _536;
  int _537;
  int _538;
  int _551;
  int _587;
  int _593;
  int _594;
  int _595;
  int _607;
  int _614;
  int _624;
  uint _629;
  int _635;
  uint _642;
  float _644;
  float4 _646;
  int _691;
  int _694;
  int _696;
  int16_t _699;
  half _702;
  half _703;
  half _704;
  float _710;
  float _711;
  float _712;
  float _737;
  float _738;
  float _739;
  float _751;
  float _752;
  float _753;
  float _755;
  bool _757;
  float _761;
  float _777;
  float _778;
  float _779;
  float _813;
  float _814;
  float _815;
  bool _833;
  float _834;
  float _835;
  float _836;
  float _839;
  float _842;
  float _845;
  float _846;
  float _850;
  float _851;
  float _852;
  float _878;
  float _882;
  float _907;
  bool _911;
  float _921;
  float _922;
  float _923;
  float _924;
  int _925;
  float _934;
  float _954;
  float _955;
  float _956;
  float _957;
  float _960;
  float _961;
  float _965;
  float _986;
  bool _1018;
  float _1035;
  float _1036;
  float _1037;
  float _1073;
  float _1076;
  float _1079;
  float _1080;
  int _1098;
  int _1099;
  float _1107;
  float4 _1138;
  uint _1149;
  float _1165;
  float _1166;
  float _1167;
  float _1169;
  float _1170;
  float _1171;
  float _1172;
  float _1178;
  float _1180;
  float _1188;
  float _1197;
  float _1198;
  float4 _1220;
  float4 _1248;
  int _1258;
  int _1259;
  int _1260;
  int _1273;
  float _1293;
  float _1295;
  float _1296;
  float _1309;
  float _1310;
  float _1311;
  float _1315;
  float _1316;
  float _1317;
  float _1321;
  float _1322;
  float _1323;
  float _1333;
  float _1354;
  float4 _1358;
  float4 _1386;
  int _1396;
  int _1397;
  int _1398;
  int _1411;
  float _1424;
  float _1425;
  float _1426;
  bool _1430;
  bool _1431;
  bool _1432;
  float _1433;
  float _1434;
  float _1435;
  bool _1436;
  bool _1437;
  bool _1438;
  float4 _1460;
  float4 _1479;
  float _1483;
  float _1484;
  float _1485;
  int _1501;
  float _1508;
  float _1509;
  float _1510;
  float _1511;
  float _1520;
  float _1521;
  float _1522;
  float _1523;
  float _1524;
  float _1525;
  int _1529;
  int _1530;
  int _1531;
  uint4 _1538;
  float _1555;
  float _1578;
  float _1579;
  float _1580;
  float _1611;
  float _1613;
  float _1620;
  float _1632;
  float _1638;
  float _1639;
  float _1655;
  float _1661;
  float _1681;
  float _1682;
  float _1686;
  float _1687;
  float _1688;
  int _1689;
  int _1707;
  float _1710;
  float _1714;
  float _1715;
  float _1716;
  float4 _1725;
  float4 _1753;
  int _1763;
  int _1764;
  int _1765;
  int _1778;
  int _1801;
  bool _1805;
  int _1806;
  int _1807;
  int _1808;
  int _1809;
  float _1810;
  float4 _1817;
  float4 _1845;
  int _1855;
  int _1856;
  int _1857;
  int _1870;
  int _1906;
  int _1912;
  int _1913;
  int _1914;
  int _1926;
  int _1933;
  int _1943;
  uint _1948;
  int _1954;
  uint _1961;
  float _1963;
  float4 _1965;
  int _2007;
  int _2010;
  int _2012;
  int16_t _2015;
  half _2018;
  half _2019;
  half _2020;
  float _2026;
  float _2027;
  float _2028;
  float _2053;
  float _2054;
  float _2055;
  float _2067;
  float _2068;
  float _2069;
  float _2071;
  bool _2073;
  float _2077;
  float _2093;
  float _2094;
  float _2095;
  float _2117;
  float _2120;
  float _2123;
  float _2132;
  float _2133;
  float _2134;
  float _2154;
  float _2157;
  float _2160;
  float _2161;
  float _2165;
  float _2166;
  float _2167;
  float _2193;
  float _2197;
  float _2222;
  float _2229;
  float _2230;
  float _2231;
  float _2232;
  int _2233;
  float _2242;
  float _2267;
  float _2277;
  float _2278;
  float _2279;
  float _2281;
  float _2282;
  float _2294;
  bool _2295;
  float _2309;
  float _2310;
  float _2313;
  float _2334;
  float _2338;
  float _2340;
  float _2344;
  float _2345;
  float _2346;
  float _2376;
  float _2381;
  float _2382;
  half4 _2409;
  float _2426;
  float _2427;
  float _2428;
  float _2433;
  float _2434;
  float _2435;
  float _2455;
  float _2459;
  float _2466;
  float _2467;
  bool _2474;
  float _2483;
  float _2484;
  float _2485;
  float _2505;
  float _2509;
  bool _2520;
  float _2521;
  float _2522;
  float _2523;
  int _2524;
  float _2530;
  float _2531;
  int _2534;
  int _2535;
  uint _2538;
  uint _2539;
  half4 _2556;
  int _2570;
  float4 _2572;
  float4 _2578;
  float4 _2584;
  float4 _2590;
  float _2595;
  float _2599;
  float _2603;
  float _2607;
  float _2610;
  float _2611;
  float _2612;
  float _2613;
  float _2616;
  float _2632;
  float _2638;
  float _2650;
  float _2654;
  float _2655;
  float _2656;
  float _2657;
  float _2658;
  float _2659;
  float _2662;
  float _2665;
  float _2668;
  float _2670;
  float _2671;
  float _2672;
  float _2673;
  float _2674;
  float _2679;
  float _2692;
  float _2694;
  float _2700;
  float _2738;
  float _2742;
  float _2746;
  float _2749;
  float _2750;
  bool _2761;
  float _2794;
  float _2798;
  float _2802;
  bool _2813;
  int _2836;
  int _2837;
  uint _2840;
  uint _2841;
  uint _2860;
  float4 _2862;
  float4 _2868;
  float4 _2874;
  float4 _2880;
  float _2885;
  float _2889;
  float _2893;
  float _2897;
  float _2900;
  float _2901;
  float _2902;
  float _2903;
  float _2906;
  float _2922;
  float _2928;
  float _2940;
  float _2944;
  float _2945;
  float _2946;
  float _2947;
  float _2948;
  float _2949;
  float _2952;
  float _2955;
  float _2958;
  float _2960;
  float _2986;
  float _3007;
  float _3008;
  float _3009;
  float _3010;
  float _3011;
  float _3012;
  float _3032;
  float _3036;
  float _3040;
  float _3055;
  float4 _3059;
  float _3064;
  float _3069;
  float _3071;
  float _3078;
  float _3085;
  half _3086;
  half _3087;
  half _3088;
  half _3102;
  half _3103;
  half _3104;
  bool _3107;
  float _3144;
  float _3150;
  float _3155;
  float _3159;
  float _3161;
  float _3163;
  float _3169;
  float _3170;
  float _3176;
  float2 _3204;
  float _3223;
  float _3224;
  float _3226;
  float _3232;
  float _3235;
  float _3238;
  float _3244;
  float _3245;
  float _3246;
  float _3265;
  float _3273;
  float _3285;
  float _3288;
  float _3294;
  float _3315;
  float _3316;
  float _3322;
  float _3324;
  float _3331;
  float _3332;
  float _3333;
  float _3334;
  float _3353;
  bool _3355;
  float _3356;
  float _3357;
  float _3358;
  float _3359;
  half _3362;
  half _3363;
  half _3364;
  float _3389;
  float _3397;
  float _3408;
  float _3410;
  float _3411;
  float _3412;
  float _3414;
  float _3415;
  float _3416;
  float _3417;
  float _3418;
  float _3419;
  float _3420;
  float _3425;
  float _3427;
  float _3430;
  float _3431;
  float _3433;
  float _3436;
  float _3437;
  float _3445;
  float _3446;
  float _3447;
  float _3448;
  float _3460;
  float _3464;
  float _3475;
  float _3477;
  float _3479;
  float _3484;
  float _3485;
  float _3489;
  float _3490;
  float _3491;
  float _3492;
  float _3520;
  float _3521;
  float _3522;
  float _3523;
  float _3527;
  float _3528;
  float _3529;
  float _3533;
  float _3534;
  float _3535;
  float _3539;
  float _3543;
  bool _3554;
  float _3562;
  float _3563;
  float _3564;
  float _3568;
  float _3572;
  bool _3583;
  float _3585;
  float _3586;
  float _3587;
  float _3588;
  int _3589;
  float _3595;
  float _3596;
  int _3599;
  int _3600;
  uint _3603;
  uint _3604;
  int _3623;
  float4 _3625;
  float4 _3631;
  float4 _3637;
  float4 _3643;
  float _3648;
  float _3652;
  float _3656;
  float _3660;
  float _3663;
  float _3664;
  float _3665;
  float _3666;
  float _3669;
  float _3685;
  float _3691;
  float _3703;
  float _3707;
  float _3708;
  float _3709;
  float _3710;
  float _3711;
  float _3712;
  float _3715;
  float _3718;
  float _3721;
  float _3723;
  float _3727;
  float _3732;
  float _3745;
  float _3747;
  float _3753;
  float _3768;
  float _3772;
  float _3776;
  bool _3787;
  float _3804;
  float _3808;
  float _3812;
  bool _3823;
  int _3846;
  int _3847;
  uint _3850;
  uint _3851;
  float _3889;
  float _3903;
  float _3904;
  float _3905;
  float _3909;
  float _3913;
  float _3917;
  float _3932;
  float4 _3936;
  float _3941;
  float _3946;
  float _3948;
  float _3955;
  uint4 _3967;
  float _3973;
  float _3976;
  float _3980;
  float _3981;
  float _3982;
  float _3983;
  float _4019;
  float _4021;
  float _4022;
  float _4028;
  float _4033;
  float _4036;
  float _4043;
  float _4049;
  float2 _4075;
  float _4079;
  float _4089;
  float _4090;
  float _4091;
  float _4110;
  float _4116;
  float _4126;
  float _4129;
  float _4135;
  float _4157;
  float _4159;
  float _4166;
  float _4167;
  float _4168;
  float _4169;
  float _4185;
  float _4199;
  float _4200;
  float _4201;
  float _4205;
  float _4206;
  float _4207;
  float4 _4234;
  float4 _4262;
  int _4272;
  int _4273;
  int _4274;
  int _4287;
  float _4310;
  float _4314;
  float _4334;
  bool _4335;
  float4 _4343;
  float _4366;
  float _4370;
  float4 _4374;
  float _4380;
  float _4381;
  float _4382;
  float _4383;
  float _4388;
  float _4389;
  float _4393;
  float _4403;
  float _4404;
  float _4405;
  float _4406;
  float _4411;
  int __loop_jump_target = -1;
  int _40[4];
  _53 = (int)(SV_GroupID.x) & 3;
  _54 = (uint)((uint)(_53)) >> 1;
  _62 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 5))]);
  _40[0] = _62.x;
  _40[1] = _62.y;
  _40[2] = _62.z;
  _40[3] = _62.w;
  _72 = _40[(((uint)(SV_GroupID.x) >> 3) & 3)];
  _76 = select((((int)(SV_GroupID.x) & 4) == 0), _72, ((uint)((uint)(_72)) >> 16));
  _82 = (uint)((uint)((uint)((int)((int)(_53) - (int)((int)(_54) << 1)) << 4)) + (uint)(SV_GroupThreadID.x)) + (uint)((uint)(((int)((uint)((uint)(_76)) << 5)) & 8160));
  _84 = (uint)((uint)((uint)((int)(_54) << 4)) + (uint)(SV_GroupThreadID.y)) + (uint)((uint)(((uint)((uint)(_76)) >> 3) & 8160));
  _85 = (float)((uint)((uint)(_82)));
  _86 = (float)((uint)((uint)(_84)));
  _99 = ((_bufferSizeAndInvSize.z * 2.0f) * (_85 + 0.5f)) + -1.0f;
  _102 = 1.0f - ((_bufferSizeAndInvSize.w * 2.0f) * (_86 + 0.5f));
  _108 = __3__36__0__0__g_depthOpaque.Load(int3(_82, _84, 0));  // [sem: _3__36__0__0__g_depthOpaque_load]
  _114 = ((uint)((uint)(_108.x)) >> 24) & 127;  // [sem: _3__36__0__0__g_depthOpaque_load_derived]
  _116 = __3__36__0__0__g_sceneNormal.Load(int3(_82, _84, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
  _132 = min(1.0f, ((((float)((uint)((uint)(_116.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _133 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_116.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _134 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_116.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _136 = rsqrt(dot(float3(_132, _133, _134), float3(_132, _133, _134)));  // [sem: invLength]
  _137 = _136 * _132;
  _138 = _136 * _133;
  _139 = _136 * _134;
  _140 = max(1e-07f, (((float)((uint)((uint)(_108.x & 16777215)))) * 5.960465e-08f));  // [sem: _3__36__0__0__g_depthOpaque_load_derived]
  _176 = mad((_invViewProjRelative[3].z), _140, mad((_invViewProjRelative[3].y), _102, ((_invViewProjRelative[3].x) * _99))) + (_invViewProjRelative[3].w);
  _177 = (mad((_invViewProjRelative[0].z), _140, mad((_invViewProjRelative[0].y), _102, ((_invViewProjRelative[0].x) * _99))) + (_invViewProjRelative[0].w)) / _176;
  _178 = (mad((_invViewProjRelative[1].z), _140, mad((_invViewProjRelative[1].y), _102, ((_invViewProjRelative[1].x) * _99))) + (_invViewProjRelative[1].w)) / _176;
  _179 = (mad((_invViewProjRelative[2].z), _140, mad((_invViewProjRelative[2].y), _102, ((_invViewProjRelative[2].x) * _99))) + (_invViewProjRelative[2].w)) / _176;
  _182 = _nearFarProj.x / _140;
  _188 = (float)((uint)((uint)(((int)((uint)((uint)((uint)((uint)(_frameNumber.x)) >> 2)) * (uint)(71))) & 31)));
  if (!((uint)_114 > (uint)11) || !(((uint)_114 < (uint)20) || (_114 == 107))) {
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
      _260 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_258) + (int)(20)))];
      _288 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_258) + (int)(36)))];
      // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.16.00]
      // Description: Jitters this native voxel coordinate before integer quantization when Snow / Fog Lighting Fixes is active; when disabled, the helper returns the coordinate unchanged.
      float3 _rndx_surfel_jitter_298 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _254) * _260.w) + _288.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _255) * _260.w) + _288.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _256) * _260.w) + _288.z), float2(_85, _86), _188, _frameNumber.x);
      _298 = (int)(floor(_rndx_surfel_jitter_298.x));
      _299 = (int)(floor(_rndx_surfel_jitter_298.y));
      _300 = (int)(floor(_rndx_surfel_jitter_298.z));
      // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
      if (!(((((int)_298 >= (int)((int)(_260.x + -63.0f))) && ((int)_298 < (int)((int)(_260.x + 63.0f)))) && (((int)_299 >= (int)((int)(_260.y + -31.0f))) && ((int)_299 < (int)((int)(_260.y + 31.0f))))) && (((int)_300 >= (int)((int)(_260.z + -63.0f))) && ((int)_300 < (int)((int)(_260.z + 63.0f)))))) {
        _313 = (int)(_258) + (int)(1);
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
      _329 = min(_218, (((float)((int)((int)((uint)(1) << (_316 & 31))))) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x));
      _333 = (_329 * select(_217, _323, _243)) + _254;
      _334 = (_329 * select(_217, _324, _244)) + _255;
      _335 = (_329 * select(_217, _325, _245)) + _256;
      _337 = 0;
      while(true) {
        _339 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_337) + (int)(20)))];
        _367 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_337) + (int)(36)))];
        // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.16.00]
        // Description: Jitters this native voxel coordinate before integer quantization when Snow / Fog Lighting Fixes is active; when disabled, the helper returns the coordinate unchanged.
        float3 _rndx_surfel_jitter_377 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _333) * _339.w) + _367.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _334) * _339.w) + _367.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _335) * _339.w) + _367.z), float2(_85, _86), _188, _frameNumber.x);
        _377 = (int)(floor(_rndx_surfel_jitter_377.x));
        _378 = (int)(floor(_rndx_surfel_jitter_377.y));
        _379 = (int)(floor(_rndx_surfel_jitter_377.z));
        // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
        if (!(((((int)_377 >= (int)((int)(_339.x + -63.0f))) && ((int)_377 < (int)((int)(_339.x + 63.0f)))) && (((int)_378 >= (int)((int)(_339.y + -31.0f))) && ((int)_378 < (int)((int)(_339.y + 31.0f))))) && (((int)_379 >= (int)((int)(_339.z + -63.0f))) && ((int)_379 < (int)((int)(_339.z + 63.0f)))))) {
          _392 = (int)(_337) + (int)(1);
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
              _405 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_403) + (int)(20)))];
              _433 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_403) + (int)(36)))];
              // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.16.00]
              // Description: Jitters this native voxel coordinate before integer quantization when Snow / Fog Lighting Fixes is active; when disabled, the helper returns the coordinate unchanged.
              float3 _rndx_surfel_jitter_443 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _333) * _405.w) + _433.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _334) * _405.w) + _433.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _335) * _405.w) + _433.z), float2(_85, _86), _188, _frameNumber.x);
              _443 = (int)(floor(_rndx_surfel_jitter_443.x));
              _444 = (int)(floor(_rndx_surfel_jitter_443.y));
              _445 = (int)(floor(_rndx_surfel_jitter_443.z));
              // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
              if (((((int)_443 >= (int)((int)(_405.x + -63.0f))) && ((int)_443 < (int)((int)(_405.x + 63.0f)))) && (((int)_444 >= (int)((int)(_405.y + -31.0f))) && ((int)_444 < (int)((int)(_405.y + 31.0f))))) && (((int)_445 >= (int)((int)(_405.z + -63.0f))) && ((int)_445 < (int)((int)(_405.z + 63.0f))))) {
                _466 = (_443 & 127);
                _467 = (_444 & 63);
                _468 = (_445 & 127);
                _469 = _403;
              } else {
                _458 = (int)(_403) + (int)(1);
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
                _481 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_466, _467, ((int)((uint)((uint)((int)((int)((uint)((uint)(_469)) * (uint)(130))) | (int)(1))) + (uint)((uint)(_468)))), 0)))).x) & 4194303;
                _485 = (_481 != 0) && ((uint)((int)(_481) + (int)(4)) < (uint)3145729);
                _486 = select(_485, _466, -10000);
                _487 = select(_485, _467, -10000);
                _488 = select(_485, _468, -10000);
                _489 = select(_485, _469, -10000);
                _491 = (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 0.5f) * ((float)((int)((int)((uint)(1) << (_469 & 31)))));
                _496 = 0;
                while(true) {
                  _498 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_496) + (int)(20)))];
                  _526 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_496) + (int)(36)))];
                  // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.16.00]
                  // Description: Jitters this native voxel coordinate before integer quantization when Snow / Fog Lighting Fixes is active; when disabled, the helper returns the coordinate unchanged.
                  float3 _rndx_surfel_jitter_536 = RenoDXSurfelVoxelJitter(float3((((_333 - _491) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x) * _498.w) + _526.x, (((_334 - _491) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y) * _498.w) + _526.y, (((_335 - _491) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z) * _498.w) + _526.z), float2(_85, _86), _188, _frameNumber.x);
                  _536 = (int)(floor(_rndx_surfel_jitter_536.x));
                  _537 = (int)(floor(_rndx_surfel_jitter_536.y));
                  _538 = (int)(floor(_rndx_surfel_jitter_536.z));
                  // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
                  if (((((int)_536 >= (int)((int)(_498.x + -63.0f))) && ((int)_536 < (int)((int)(_498.x + 63.0f)))) && (((int)_537 >= (int)((int)(_498.y + -31.0f))) && ((int)_537 < (int)((int)(_498.y + 31.0f))))) && (((int)_538 >= (int)((int)(_498.z + -63.0f))) && ((int)_538 < (int)((int)(_498.z + 63.0f))))) {
                    _559 = (_536 & 127);
                    _560 = (_537 & 63);
                    _561 = (_538 & 127);
                    _562 = _496;
                  } else {
                    _551 = (int)(_496) + (int)(1);
                    if ((uint)_551 < (uint)8) {
                      _496 = _551;
                      continue;
                    } else {
                      _559 = -10000;
                      _560 = -10000;
                      _561 = -10000;
                      _562 = -10000;
                    }
                  }
                  if (!((uint)_562 > (uint)5)) {
                    if (_481 == 0) {
                      _568 = 0;
                      _569 = _489;
                      _570 = _488;
                      _571 = _487;
                      _572 = _486;
                      while(true) {
                        _581 = 0;
                        _582 = _569;
                        _583 = _570;
                        _584 = _571;
                        _585 = _572;
                        while(true) {
                          _592 = 0;
                          while(true) {
                            _593 = (int)(_592) + (int)(_559);
                            _594 = (int)(_581) + (int)(_560);
                            _595 = (int)(_568) + (int)(_561);
                            bool __branch_chain_591;
                            if (((uint)_594 > (uint)63) || ((uint)((int)(_593) | (int)(_595)) > (uint)127)) {
                              _613 = 0;
                              __branch_chain_591 = true;
                            } else {
                              _607 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_593, _594, ((int)((uint)((uint)(_595)) + (uint)((uint)((int)((int)((uint)((uint)(_562)) * (uint)(130))) | (int)(1))))), 0)))).x) & 4194303;
                              if (!((_607 != 0) && ((uint)((int)(_607) + (int)(4)) < (uint)3145729))) {
                                _613 = _607;
                                __branch_chain_591 = true;
                              } else {
                                _619 = _593;
                                _620 = _594;
                                _621 = _595;
                                _622 = _562;
                                _623 = _607;
                                __branch_chain_591 = false;
                              }
                            }
                            if (__branch_chain_591) {
                              _614 = (int)(_592) + (int)(1);
                              if (((int)_614 < (int)2) && (_613 == 0)) {
                                _592 = _614;
                                continue;
                              } else {
                                _619 = _585;
                                _620 = _584;
                                _621 = _583;
                                _622 = _582;
                                _623 = _613;
                              }
                            }
                            _624 = (int)(_581) + (int)(1);
                            if (((int)_624 < (int)2) && (_623 == 0)) {
                              _581 = _624;
                              _582 = _622;
                              _583 = _621;
                              _584 = _620;
                              _585 = _619;
                              __loop_jump_target = 580;
                              break;
                            }
                            while(true) {
                              _587 = (int)(_568) + (int)(1);
                              if (((int)_587 < (int)2) && (_623 == 0)) {
                                _568 = _587;
                                _569 = _622;
                                _570 = _621;
                                _571 = _620;
                                _572 = _619;
                                __loop_jump_target = 567;
                                break;
                              }
                              while(true) {
                                _575 = _622;
                                _576 = _621;
                                _577 = _620;
                                _578 = _619;
                                break;
                              }
                              break;
                            }
                            if (__loop_jump_target != -1) {
                              break;
                            }
                            break;
                          }
                          if (__loop_jump_target == 580) {
                            __loop_jump_target = -1;
                            continue;
                          }
                          if (__loop_jump_target != -1) {
                            break;
                          }
                          break;
                        }
                        if (__loop_jump_target == 567) {
                          __loop_jump_target = -1;
                          continue;
                        }
                        if (__loop_jump_target != -1) {
                          break;
                        }
                        break;
                      }
                    } else {
                      _575 = _489;
                      _576 = _488;
                      _577 = _487;
                      _578 = _486;
                    }
                    if ((uint)_575 < (uint)6) {
                      _629 = (uint)((uint)(_575)) * (uint)(130);
                      _635 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_578, _577, ((int)((uint)((uint)((int)(_629) | (int)(1))) + (uint)((uint)(_576)))), 0)))).x) & 4194303;
                      if ((_635 != 0) && ((uint)((int)(_635) + (int)(4)) < (uint)3145729)) {
                        _642 = (uint)(1) << (_575 & 31);
                        _644 = ((float)((int)(_642))) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                        _646 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((uint)((uint)((uint)(_575)) + (uint)(20)))];
                        _682 = 0.0f;
                        _683 = 0.0f;
                        _684 = 0.0f;
                        _685 = _246;
                        _686 = _247;
                        _687 = _248;
                        _688 = 0.0f;
                        _689 = 0;
                        while(true) {
                          _691 = (int)((int)(_635) + (int)(-1)) + (int)(_689);
                          _694 = __3__37__0__0__g_surfelDataBuffer[_691]._baseColor;
                          _696 = __3__37__0__0__g_surfelDataBuffer[_691]._normal;
                          _699 = __3__37__0__0__g_surfelDataBuffer[_691]._radius;
                          if (!(_694 == 0)) {
                            _702 = __3__37__0__0__g_surfelDataBuffer[_691]._radiance.z;
                            _703 = __3__37__0__0__g_surfelDataBuffer[_691]._radiance.y;
                            _704 = __3__37__0__0__g_surfelDataBuffer[_691]._radiance.x;
                            _710 = (float)((uint)((uint)(_694 & 255)));
                            _711 = (float)((uint)((uint)(((uint)((uint)(_694)) >> 8) & 255)));
                            _712 = (float)((uint)((uint)(((uint)((uint)(_694)) >> 16) & 255)));
                            _737 = select(((_710 * 0.003921569f) < 0.04045f), (_710 * 0.000303527f), exp2(log2((_710 * 0.003717127f) + 0.052132703f) * 2.4f));
                            _738 = select(((_711 * 0.003921569f) < 0.04045f), (_711 * 0.000303527f), exp2(log2((_711 * 0.003717127f) + 0.052132703f) * 2.4f));
                            _739 = select(((_712 * 0.003921569f) < 0.04045f), (_712 * 0.000303527f), exp2(log2((_712 * 0.003717127f) + 0.052132703f) * 2.4f));
                            _751 = (((float)((uint)((uint)(_696 & 255)))) * 0.007874016f) + -1.0f;
                            _752 = (((float)((uint)((uint)(((uint)((uint)(_696)) >> 8) & 255)))) * 0.007874016f) + -1.0f;
                            _753 = (((float)((uint)((uint)(((uint)((uint)(_696)) >> 16) & 255)))) * 0.007874016f) + -1.0f;
                            _755 = rsqrt(dot(float3(_751, _752, _753), float3(_751, _752, _753)));  // [sem: invLength]
                            _757 = ((_696 & 16777215) == 0);
                            _761 = (_644 * 0.0019607844f) * ((float)((uint16_t)((int16_t)(_699 & 255))));
                            _777 = (((((float)((uint)((uint)((uint)((uint)(_694)) >> 24)))) * 0.003937008f) + -0.5f) * _644) + ((((_646.x + -63.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_578)) + (uint)(64)) - (uint)((uint)((int)(_646.x))))) & 127)))) * _644) - _viewPos.x);
                            _778 = (((((float)((uint)((uint)((uint)((uint)(_696)) >> 24)))) * 0.003937008f) + -0.5f) * _644) + ((((_646.y + -31.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_577)) + (uint)(32)) - (uint)((uint)((int)(_646.y))))) & 63)))) * _644) - _viewPos.y);
                            _779 = (((((float)((uint16_t)((int16_t)((uint16_t)(_699) >> 8)))) * 0.003937008f) + -0.5f) * _644) + ((((_646.z + -63.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_576)) + (uint)(64)) - (uint)((uint)((int)(_646.z))))) & 127)))) * _644) - _viewPos.z);
                            if (!((((_704 < 0.0h) || ((_737 > 1.1f) || (_737 < 0.0f))) || ((_703 < 0.0h) || ((_738 > 1.1f) || (_738 < 0.0f)))) || ((_702 < 0.0h) || ((_739 > 1.1f) || (_739 < 0.0f))))) {
                              _813 = -0.0f - min(0.0f, (-0.0f - float(_704)));
                              _814 = -0.0f - min(0.0f, (-0.0f - float(_703)));
                              _815 = -0.0f - min(0.0f, (-0.0f - float(_702)));
                              _833 = (_230.w == 0.0f);  // [sem: _3__36__0__0__g_raytracingNormal_load_derived]
                              _834 = select(_833, _323, _685);
                              _835 = select(_833, _324, _686);
                              _836 = select(_833, _325, _687);
                              _839 = ((-0.0f - _177) - _251) + _777;
                              _842 = ((-0.0f - _178) - _252) + _778;
                              _845 = ((-0.0f - _179) - _253) + _779;
                              _846 = dot(float3(_839, _842, _845), float3(_834, _835, _836));
                              _850 = _839 - (_846 * _834);
                              _851 = _842 - (_846 * _835);
                              _852 = _845 - (_846 * _836);
                              _878 = 1.0f / ((float)((uint)((uint)(_642))));
                              _882 = frac(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _779) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z) * _878);
                              _907 = select(((int)_575 > (int)5), 1.0f, ((saturate((saturate(dot(float3(_323, _324, _325), float3(select(_757, _323, (_755 * _751)), select(_757, _324, (_755 * _752)), select(_757, _325, (_755 * _753))))) + -0.03125f) * 1.032258f) * ((float)((bool)(dot(float3(_850, _851, _852), float3(_850, _851, _852)) < ((_761 * _761) * 64.0f))))) * ((float)((bool)(((__3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _777) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _878), (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _778) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y) * _878), (((((float)((uint)((uint)(_629)))) + 1.0f) + ((select((_882 < 0.0f), 1.0f, 0.0f) + _882) * 128.0f)) * 0.00096153846f)), 0.0f)).x) > ((_644 * 0.25f) * (saturate((dot(float3(_813, _814, _815), float3(0.212671f, 0.71516f, 0.072169f)) * 0.0001f) / _exposure3.w) + 1.0f)))))));
                              _911 = (!(_224.w > 0.0f)) || ((_694 & 16777215) == 16777215);
                              _921 = ((select(_911, (((_738 * 0.33951f) + (_737 * 0.61312f)) + (_739 * 0.04737f)), _224.x) * _813) * _907) + _682;
                              _922 = ((select(_911, (((_738 * 0.91636f) + (_737 * 0.0702f)) + (_739 * 0.01345f)), _224.y) * _814) * _907) + _683;
                              _923 = ((select(_911, (((_738 * 0.10958f) + (_737 * 0.02062f)) + (_739 * 0.8698f)), _224.z) * _815) * _907) + _684;
                              _924 = _907 + _688;
                              _925 = (int)(_689) + (int)(1);
                              if ((uint)_925 < (uint)4) {
                                _682 = _921;
                                _683 = _922;
                                _684 = _923;
                                _685 = _834;
                                _686 = _835;
                                _687 = _836;
                                _688 = _924;
                                _689 = _925;
                                continue;
                              } else {
                                _928 = _921;
                                _929 = _922;
                                _930 = _923;
                                _931 = _924;
                              }
                            } else {
                              _928 = _682;
                              _929 = _683;
                              _930 = _684;
                              _931 = _688;
                            }
                          } else {
                            _928 = _682;
                            _929 = _683;
                            _930 = _684;
                            _931 = _688;
                          }
                          if (_931 > 0.0f) {
                            _934 = 1.0f / _931;
                            _948 = (-0.0f - min(0.0f, (-0.0f - (_928 * _934))));
                            _949 = (-0.0f - min(0.0f, (-0.0f - (_929 * _934))));
                            _950 = (-0.0f - min(0.0f, (-0.0f - (_930 * _934))));
                          } else {
                            _948 = _928;
                            _949 = _929;
                            _950 = _930;
                          }
                          break;
                        }
                      } else {
                        _948 = 0.0f;
                        _949 = 0.0f;
                        _950 = 0.0f;
                      }
                    } else {
                      _948 = 0.0f;
                      _949 = 0.0f;
                      _950 = 0.0f;
                    }
                  } else {
                    _948 = 0.0f;
                    _949 = 0.0f;
                    _950 = 0.0f;
                  }
                  break;
                }
              } else {
                _948 = 0.0f;
                _949 = 0.0f;
                _950 = 0.0f;
              }
              _954 = max(1e-06f, (_exposure3.w * 0.001f));
              _955 = max(_954, _948);
              _956 = max(_954, _949);
              _957 = max(_954, _950);
              _960 = dot(float3(_955, _956, _957), float3(0.212671f, 0.71516f, 0.072169f));
              _961 = min((max(0.0005f, _exposure3.w) * 512.0f), _960);
              _965 = max(1e-09f, _960);
              _970 = ((_961 * _955) / _965);
              _971 = ((_961 * _956) / _965);
              _972 = ((_961 * _957) / _965);
              break;
            }
          } else {
            _970 = 0.0f;
            _971 = 0.0f;
            _972 = 0.0f;
          }
          if (saturate(_230.w) == 0.0f) {
            _986 = (exp2((saturate(saturate(_224.w)) * 20.0f) + -8.0f) + -0.00390625f) * (1.0f / (((_218 * _218) * 0.1f) + 1.0f));
            _994 = ((_986 * _224.x) + _970);
            _995 = ((_986 * _224.y) + _971);
            _996 = ((_986 * _224.z) + _972);
          } else {
            _994 = _970;
            _995 = _971;
            _996 = _972;
          }
          _1003 = _246;
          _1004 = _247;
          _1005 = _248;
          _1006 = _230.w;
          _1007 = _224.x;
          _1008 = _224.y;
          _1009 = _224.z;
          _1010 = _224.w;
          _1011 = _250;
          _1012 = (_renderParams2.y * _994);
          _1013 = (_renderParams2.y * _995);
          _1014 = (_renderParams2.y * _996);
          _1015 = 1.0f;
          _1016 = _218;
        } else {
          _1003 = _246;
          _1004 = _247;
          _1005 = _248;
          _1006 = _230.w;
          _1007 = _224.x;
          _1008 = _224.y;
          _1009 = _224.z;
          _1010 = _224.w;
          _1011 = _250;
          _1012 = 0.0f;
          _1013 = 0.0f;
          _1014 = 0.0f;
          _1015 = 1.0f;
          _1016 = _218;
        }
        break;
      }
      break;
    }
  } else {
    _1003 = 0.0f;
    _1004 = 0.0f;
    _1005 = 0.0f;
    _1006 = 0.0f;
    _1007 = 0.0f;
    _1008 = 0.0f;
    _1009 = 0.0f;
    _1010 = 0.0f;
    _1011 = 0;
    _1012 = 0.0f;
    _1013 = 0.0f;
    _1014 = 0.0f;
    _1015 = 0.0f;
    _1016 = 0.0f;
  }
  _1018 = (_1016 > 0.0f);
  if ((_182 > (_lightingParams.z * 0.875f)) && (!_1018)) {
    _1031 = (_182 < (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 11585.126f));
  } else {
    _1031 = false;
  }
  _1035 = (_1016 * _214) + _177;
  _1036 = (_1016 * _215) + _178;
  _1037 = (_1016 * _216) + _179;
  _1073 = mad((_viewProjRelativePrev[3].z), _1037, mad((_viewProjRelativePrev[3].y), _1036, ((_viewProjRelativePrev[3].x) * _1035))) + (_viewProjRelativePrev[3].w);
  _1076 = (mad((_viewProjRelativePrev[2].z), _1037, mad((_viewProjRelativePrev[2].y), _1036, ((_viewProjRelativePrev[2].x) * _1035))) + (_viewProjRelativePrev[2].w)) / _1073;
  _1079 = (((mad((_viewProjRelativePrev[0].z), _1037, mad((_viewProjRelativePrev[0].y), _1036, ((_viewProjRelativePrev[0].x) * _1035))) + (_viewProjRelativePrev[0].w)) / _1073) * 0.5f) + 0.5f;
  _1080 = 0.5f - (((mad((_viewProjRelativePrev[1].z), _1037, mad((_viewProjRelativePrev[1].y), _1036, ((_viewProjRelativePrev[1].x) * _1035))) + (_viewProjRelativePrev[1].w)) / _1073) * 0.5f);
  if (_217) {
    if (_1018) {
      _1098 = (int)(_1079 * _bufferSizeAndInvSize.x);
      _1099 = (int)(_1080 * _bufferSizeAndInvSize.y);
      _1107 = _nearFarProj.x / max(1e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaquePrev.Load(int3(_1098, _1099, 0)))).x) & 16777215)))) * 5.960465e-08f));
      if ((_1076 > 0.0f) && (((_1079 >= 0.0f) && (_1079 <= 1.0f)) && ((_1080 >= 0.0f) && (_1080 <= 1.0f)))) {
        if (((_1107 - dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z))) > 0.0f) && (abs(_1107 - _1073) < max(0.5f, (_1073 * 0.05f)))) {
          _1138 = __3__36__0__0__g_sceneColor.SampleLevel(__3__40__0__0__g_samplerClamp, float2(_1079, _1080), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
          if (!(!(_1138.w >= 0.0f))) {
            _1149 = __3__36__0__0__g_sceneNormal.Load(int3(_1098, _1099, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
            _1165 = min(1.0f, ((((float)((uint)((uint)(_1149.x & 1023)))) * 0.0019569471f) + -1.0f));
            _1166 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1149.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));
            _1167 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1149.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));
            _1169 = rsqrt(dot(float3(_1165, _1166, _1167), float3(_1165, _1166, _1167)));  // [sem: invLength]
            _1170 = _1169 * _1165;
            _1171 = _1169 * _1166;
            _1172 = _1169 * _1167;
            _1178 = select((dot(float3((-0.0f - _214), (-0.0f - _215), (-0.0f - _216)), float3(_1170, _1171, _1172)) > 0.2f), 1.0f, 0.0f);
            _1180 = saturate(_182 * 0.01f);  // [sem: expr_sat]
            _1188 = (float)((bool)(abs(_nearFarProj.x - _1107) < (_1107 * 0.5f)));
            _1193 = _1170;
            _1194 = _1171;
            _1195 = _1172;
            _1196 = 0.8f;
            _1197 = _renderParams2.x * _renderParams2.x;
            _1198 = ((_1178 - (_1178 * _1180)) + _1180) * _1197;
            _1207 = ((_1016 * 0.9999f) * _renderParams2.x);
            _1208 = _1193;
            _1209 = _1194;
            _1210 = _1195;
            _1211 = _1196;
            _1212 = ((_1198 * min(10000.0f, _1138.x)) * _1188);
            _1213 = ((_1198 * min(10000.0f, _1138.y)) * _1188);
            _1214 = ((_1198 * min(10000.0f, _1138.z)) * _1188);
            _1215 = _1197;
            _1216 = 1;
          } else {
            _1207 = _1016;
            _1208 = _1003;
            _1209 = _1004;
            _1210 = _1005;
            _1211 = _1006;
            _1212 = 0.0f;
            _1213 = 0.0f;
            _1214 = 0.0f;
            _1215 = 0.0f;
            _1216 = 0;
          }
        } else {
          _1207 = _1016;
          _1208 = _1003;
          _1209 = _1004;
          _1210 = _1005;
          _1211 = _1006;
          _1212 = 0.0f;
          _1213 = 0.0f;
          _1214 = 0.0f;
          _1215 = 0.0f;
          _1216 = 0;
        }
      } else {
        _1207 = _1016;
        _1208 = _1003;
        _1209 = _1004;
        _1210 = _1005;
        _1211 = _1006;
        _1212 = 0.0f;
        _1213 = 0.0f;
        _1214 = 0.0f;
        _1215 = 0.0f;
        _1216 = 0;
      }
    } else {
      _1207 = _1016;
      _1208 = _1003;
      _1209 = _1004;
      _1210 = _1005;
      _1211 = _1006;
      _1212 = 0.0f;
      _1213 = 0.0f;
      _1214 = 0.0f;
      _1215 = 0.0f;
      _1216 = 0;
    }
  } else {
    if (_1018 && ((_1076 > 0.0f) && (((_1079 >= 0.0f) && (_1079 <= 1.0f)) && ((_1080 >= 0.0f) && (_1080 <= 1.0f))))) {
      _1098 = (int)(_1079 * _bufferSizeAndInvSize.x);
      _1099 = (int)(_1080 * _bufferSizeAndInvSize.y);
      _1107 = _nearFarProj.x / max(1e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaquePrev.Load(int3(_1098, _1099, 0)))).x) & 16777215)))) * 5.960465e-08f));
      if ((_1076 > 0.0f) && (((_1079 >= 0.0f) && (_1079 <= 1.0f)) && ((_1080 >= 0.0f) && (_1080 <= 1.0f)))) {
        if (((_1107 - dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z))) > 0.0f) && (abs(_1107 - _1073) < max(0.5f, (_1073 * 0.05f)))) {
          _1138 = __3__36__0__0__g_sceneColor.SampleLevel(__3__40__0__0__g_samplerClamp, float2(_1079, _1080), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
          if (!(!(_1138.w >= 0.0f))) {
            _1149 = __3__36__0__0__g_sceneNormal.Load(int3(_1098, _1099, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
            _1165 = min(1.0f, ((((float)((uint)((uint)(_1149.x & 1023)))) * 0.0019569471f) + -1.0f));
            _1166 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1149.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));
            _1167 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1149.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));
            _1169 = rsqrt(dot(float3(_1165, _1166, _1167), float3(_1165, _1166, _1167)));  // [sem: invLength]
            _1170 = _1169 * _1165;
            _1171 = _1169 * _1166;
            _1172 = _1169 * _1167;
            _1178 = select((dot(float3((-0.0f - _214), (-0.0f - _215), (-0.0f - _216)), float3(_1170, _1171, _1172)) > 0.2f), 1.0f, 0.0f);
            _1180 = saturate(_182 * 0.01f);  // [sem: expr_sat]
            _1188 = (float)((bool)(abs(_nearFarProj.x - _1107) < (_1107 * 0.5f)));
            _1193 = _1003;
            _1194 = _1004;
            _1195 = _1005;
            _1196 = _1006;
            _1197 = _renderParams2.x * _renderParams2.x;
            _1198 = ((_1178 - (_1178 * _1180)) + _1180) * _1197;
            _1207 = ((_1016 * 0.9999f) * _renderParams2.x);
            _1208 = _1193;
            _1209 = _1194;
            _1210 = _1195;
            _1211 = _1196;
            _1212 = ((_1198 * min(10000.0f, _1138.x)) * _1188);
            _1213 = ((_1198 * min(10000.0f, _1138.y)) * _1188);
            _1214 = ((_1198 * min(10000.0f, _1138.z)) * _1188);
            _1215 = _1197;
            _1216 = 1;
          } else {
            _1207 = _1016;
            _1208 = _1003;
            _1209 = _1004;
            _1210 = _1005;
            _1211 = _1006;
            _1212 = 0.0f;
            _1213 = 0.0f;
            _1214 = 0.0f;
            _1215 = 0.0f;
            _1216 = 0;
          }
        } else {
          _1207 = _1016;
          _1208 = _1003;
          _1209 = _1004;
          _1210 = _1005;
          _1211 = _1006;
          _1212 = 0.0f;
          _1213 = 0.0f;
          _1214 = 0.0f;
          _1215 = 0.0f;
          _1216 = 0;
        }
      } else {
        _1207 = _1016;
        _1208 = _1003;
        _1209 = _1004;
        _1210 = _1005;
        _1211 = _1006;
        _1212 = 0.0f;
        _1213 = 0.0f;
        _1214 = 0.0f;
        _1215 = 0.0f;
        _1216 = 0;
      }
    } else {
      _1207 = _1016;
      _1208 = _1003;
      _1209 = _1004;
      _1210 = _1005;
      _1211 = _1006;
      _1212 = 0.0f;
      _1213 = 0.0f;
      _1214 = 0.0f;
      _1215 = 0.0f;
      _1216 = 0;
    }
  }
  _1218 = 0;
  while(true) {
    _1220 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1218) + (int)(20)))];
    _1248 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1218) + (int)(36)))];
    // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.16.00]
    // Description: Jitters this native voxel coordinate before integer quantization when Snow / Fog Lighting Fixes is active; when disabled, the helper returns the coordinate unchanged.
    float3 _rndx_surfel_jitter_1258 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _177) * _1220.w) + _1248.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _178) * _1220.w) + _1248.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _179) * _1220.w) + _1248.z), float2(_85, _86), _188, _frameNumber.x);
    _1258 = (int)(floor(_rndx_surfel_jitter_1258.x));
    _1259 = (int)(floor(_rndx_surfel_jitter_1258.y));
    _1260 = (int)(floor(_rndx_surfel_jitter_1258.z));
    // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
    if (((((int)_1258 >= (int)((int)(_1220.x + -63.0f))) && ((int)_1258 < (int)((int)(_1220.x + 63.0f)))) && (((int)_1259 >= (int)((int)(_1220.y + -31.0f))) && ((int)_1259 < (int)((int)(_1220.y + 31.0f))))) && (((int)_1260 >= (int)((int)(_1220.z + -63.0f))) && ((int)_1260 < (int)((int)(_1220.z + 63.0f))))) {
      _1279 = (_1258 & 127);
      _1280 = _1218;
    } else {
      _1273 = (int)(_1218) + (int)(1);
      if ((uint)_1273 < (uint)8) {
        _1218 = _1273;
        continue;
      } else {
        _1279 = -10000;
        _1280 = -10000;
      }
    }
    if (!(_1279 == -10000)) {
      _1287 = ((float)((int)((int)((uint)(1) << (_1280 & 31)))));
    } else {
      _1287 = 1.0f;
    }
    _1293 = select(_205, (((frac(frac(dot(float2(((_188 * 32.665f) + _85), ((_188 * 11.815f) + _86)), float2(0.06711056f, 0.00583715f))) * 52.982918f) * 2.0f) * _1287) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x), 0.0f);
    if (_1031) {
      _1295 = _lightingParams.z * 1.3434899f;
      _1296 = -0.0f - _1295;
      if (((_179 > _1296) && (_179 < _1295)) && (((_177 > _1296) && (_177 < _1295)) && ((_178 > _1296) && (_178 < _1295)))) {
        _1309 = 1.0f / _214;
        _1310 = 1.0f / _215;
        _1311 = 1.0f / _216;
        _1315 = _1309 * (_1296 - _177);
        _1316 = _1310 * (_1296 - _178);
        _1317 = _1311 * (_1296 - _179);
        _1321 = _1309 * (_1295 - _177);
        _1322 = _1310 * (_1295 - _178);
        _1323 = _1311 * (_1295 - _179);
        _1333 = min(min(max(_1315, _1321), max(_1316, _1322)), max(_1317, _1323));
        if ((_1333 > 0.0f) && ((_1333 >= 0.0f) && (max(max(min(_1315, _1321), min(_1316, _1322)), min(_1317, _1323)) <= _1333))) {
          _1347 = _1333;
          _1348 = ((_1333 * _214) + _177);
          _1349 = ((_1333 * _215) + _178);
          _1350 = ((_1333 * _216) + _179);
        } else {
          _1347 = 0.0f;
          _1348 = _177;
          _1349 = _178;
          _1350 = _179;
        }
      } else {
        _1347 = 0.0f;
        _1348 = _177;
        _1349 = _178;
        _1350 = _179;
      }
      _1354 = select(((_1207 > 0.0f) && (_1215 >= 1.0f)), _1207, 256.0f);
      _1356 = 0;
      while(true) {
        _1358 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1356) + (int)(20)))];
        _1386 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1356) + (int)(36)))];
        // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.16.00]
        // Description: Jitters this native voxel coordinate before integer quantization when Snow / Fog Lighting Fixes is active; when disabled, the helper returns the coordinate unchanged.
        float3 _rndx_surfel_jitter_1396 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _1348) * _1358.w) + _1386.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _1349) * _1358.w) + _1386.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _1350) * _1358.w) + _1386.z), float2(_85, _86), _188, _frameNumber.x);
        _1396 = (int)(floor(_rndx_surfel_jitter_1396.x));
        _1397 = (int)(floor(_rndx_surfel_jitter_1396.y));
        _1398 = (int)(floor(_rndx_surfel_jitter_1396.z));
        // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
        if (!(((((int)_1396 >= (int)((int)(_1358.x + -63.0f))) && ((int)_1396 < (int)((int)(_1358.x + 63.0f)))) && (((int)_1397 >= (int)((int)(_1358.y + -31.0f))) && ((int)_1397 < (int)((int)(_1358.y + 31.0f))))) && (((int)_1398 >= (int)((int)(_1358.z + -63.0f))) && ((int)_1398 < (int)((int)(_1358.z + 63.0f)))))) {
          _1411 = (int)(_1356) + (int)(1);
          if ((uint)_1411 < (uint)8) {
            _1356 = _1411;
            continue;
          } else {
            _1414 = -10000;
          }
        } else {
          _1414 = _1356;
        }
        if (!((_1414 == -10000) || ((int)_1414 > (int)4))) {
          _1424 = _1348 + (_1293 * _214);
          _1425 = _1349 + (_1293 * _215);
          _1426 = _1350 + (_1293 * _216);
          _1430 = (_214 == 0.0f);
          _1431 = (_215 == 0.0f);
          _1432 = (_216 == 0.0f);
          _1433 = select(_1430, 0.0f, (1.0f / _214));
          _1434 = select(_1431, 0.0f, (1.0f / _215));
          _1435 = select(_1432, 0.0f, (1.0f / _216));
          _1436 = (_214 > 0.0f);
          _1437 = (_215 > 0.0f);
          _1438 = (_216 > 0.0f);
          if (_1354 > 0.0f) {
            _1451 = 0;
            _1452 = 0.0f;
            _1453 = 0.0f;
            _1454 = _1426;
            _1455 = _1425;
            _1456 = _1424;
            while(true) {
              _1458 = 0;
              while(true) {
                _1460 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1458) + (int)(20)))];
                _1479 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1458) + (int)(36)))];
                _1483 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _1456) * _1460.w) + _1479.x;
                _1484 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _1455) * _1460.w) + _1479.y;
                _1485 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _1454) * _1460.w) + _1479.z;
                if (!((_1485 >= (_1460.z + -63.0f)) && ((_1483 >= (_1460.x + -63.0f)) && (_1484 >= (_1460.y + -31.0f)))) || (((_1485 >= (_1460.z + -63.0f)) && ((_1483 >= (_1460.x + -63.0f)) && (_1484 >= (_1460.y + -31.0f)))) && (!((_1485 < (_1460.z + 63.0f)) && ((_1483 < (_1460.x + 63.0f)) && (_1484 < (_1460.y + 31.0f))))))) {
                  _1501 = (int)(_1458) + (int)(1);
                  if ((int)_1501 < (int)8) {
                    _1458 = _1501;
                    continue;
                  } else {
                    _1701 = _1453;
                    _1702 = _1454;
                    _1703 = _1455;
                    _1704 = _1456;
                    _1705 = _1452;
                    _1706 = -10000.0f;
                  }
                } else {
                  if (_1458 == -10000) {
                    _1695 = _1453;
                    _1696 = _1454;
                    _1697 = _1455;
                    _1698 = _1456;
                    _1699 = _1452;
                    _1701 = _1695;
                    _1702 = _1696;
                    _1703 = _1697;
                    _1704 = _1698;
                    _1705 = _1699;
                    _1706 = -10000.0f;
                  } else {
                    _1508 = (float)((int)((int)((uint)(1) << (_1458 & 31))));
                    _1509 = _1508 * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                    _1510 = 1.0f / _1508;
                    _1511 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.y * 0.0078125f;
                    _1520 = _1510 * ((_1456 * _1511) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x);
                    _1521 = _1510 * (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.y * 0.015625f) * _1455) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y);
                    _1522 = _1510 * ((_1454 * _1511) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z);
                    _1523 = _1520 * 64.0f;
                    _1524 = _1521 * 32.0f;
                    _1525 = _1522 * 64.0f;
                    _1529 = (int)(floor(_1523));
                    _1530 = (int)(floor(_1524));
                    _1531 = (int)(floor(_1525));
                    // [sem: _3__36__0__0__g_axisAlignedDistance_load]
                    _1538 = __3__36__0__0__g_axisAlignedDistanceTextures.Load(int4((_1529 & 63), (_1530 & 31), ((int)(_1531 & 63) | (int)((int)(_1458) << 6)), 0));
                    _1555 = saturate(((float)((uint)((uint)((uint)((uint)(_1538.w)) >> 2)))) * 0.015873017f);  // [sem: expr_sat]
                    _1578 = _1523 - ((float)((int)(_1529)));
                    _1579 = _1524 - ((float)((int)(_1530)));
                    _1580 = _1525 - ((float)((int)(_1531)));
                    _1611 = max(((_1509 * 0.5f) * min(min(select(_1430, 999999.0f, ((select(_1436, 1.0f, 0.0f) - frac(_1520 * 256.0f)) * _1433)), select(_1431, 999999.0f, ((select(_1437, 1.0f, 0.0f) - frac(_1521 * 128.0f)) * _1434))), select(_1432, 999999.0f, ((select(_1438, 1.0f, 0.0f) - frac(_1522 * 256.0f)) * _1435)))), ((_1509 * 2.0f) * min(min(select(_1430, 999999.0f, (select(_1436, ((0.01f - _1578) + ((float)((uint)((uint)(((uint)((uint)(_1538.x)) >> 4) & 15))))), ((0.99f - _1578) - ((float)((uint)((uint)(_1538.x & 15)))))) * _1433)), select(_1431, 999999.0f, (select(_1437, ((0.01f - _1579) + ((float)((uint)((uint)(((uint)((uint)(_1538.y)) >> 4) & 15))))), ((0.99f - _1579) - ((float)((uint)((uint)(_1538.y & 15)))))) * _1434))), select(_1432, 999999.0f, (select(_1438, ((0.01f - _1580) + ((float)((uint)((uint)(((uint)((uint)(_1538.z)) >> 4) & 15))))), ((0.99f - _1580) - ((float)((uint)((uint)(_1538.z & 15)))))) * _1435)))));
                    _1613 = (float)((bool)(_1555 > 0.0f));
                    if (((uint)_1451 < (uint)16) || (_1453 < min(32.0f, (_1509 * 32.0f)))) {
                      _1620 = frac(_1522);
                      // [sem: _3__36__0__1__g_signedDistanceVoxels_sampleLod]
                      _1632 = __3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3(_1520, _1521, (((((float)((uint)((uint)((uint)(_1458)) * (uint)(130)))) + 1.0f) + ((select((_1620 < 0.0f), 1.0f, 0.0f) + _1620) * 128.0f)) * 0.00096153846f)), 0.0f);
                      _1638 = _1453 * 0.01f;
                      _1639 = 1.0f / _1509;
                      _1655 = (_1632.x + ((_182 * _182) * 0.0002f)) / (((max(((_1509 * 1.06066f) * saturate((_1453 * 0.5f) + 0.5f)), _1638) - _1638) * saturate(((max(1.0f, (_1639 * 0.5f)) * _1639) * min(_1453, max(0.0f, (_1354 - _1453)))) + -1.0f)) + _1638);
                      _1661 = saturate((saturate(1.0f - (_1655 * _1655)) * _1613) + _1452);  // [sem: expr_sat]
                      if (!(((int)_1458 > (int)2) || (_1632.x > _1509))) {
                        _1675 = _1661;  // [sem: expr_sat]
                        _1676 = min(_1611, _1632.x);
                      } else {
                        _1675 = _1661;  // [sem: expr_sat]
                        _1676 = _1611;
                      }
                    } else {
                      if (!((_1538.w & 1) == 0)) {
                        _1675 = saturate((_1613 * 0.5f) + _1452);  // [sem: expr_sat]
                        _1676 = _1611;
                      } else {
                        _1675 = _1452;  // [sem: expr_sat]
                        _1676 = _1611;
                      }
                    }
                    if (!(_1675 >= 0.5f)) {
                      _1681 = max(_1676, (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 0.05f));
                      _1682 = _1681 + _1453;
                      _1686 = (_1681 * _214) + _1456;
                      _1687 = (_1681 * _215) + _1455;
                      _1688 = (_1681 * _216) + _1454;
                      _1689 = (int)(_1451) + (int)(1);
                      if (((uint)_1689 < (uint)192) && (_1682 < _1354)) {
                        _1451 = _1689;
                        _1452 = _1675;
                        _1453 = _1682;
                        _1454 = _1688;
                        _1455 = _1687;
                        _1456 = _1686;
                        __loop_jump_target = 1450;
                        break;
                      } else {
                        _1695 = _1682;
                        _1696 = _1688;
                        _1697 = _1687;
                        _1698 = _1686;
                        _1699 = _1675;
                        _1701 = _1695;
                        _1702 = _1696;
                        _1703 = _1697;
                        _1704 = _1698;
                        _1705 = _1699;
                        _1706 = -10000.0f;
                      }
                    } else {
                      _1701 = _1453;
                      _1702 = _1454;
                      _1703 = _1455;
                      _1704 = _1456;
                      _1705 = _1555;
                      _1706 = ((float)((int)(_1458)));
                    }
                  }
                }
                break;
              }
              if (__loop_jump_target == 1450) {
                __loop_jump_target = -1;
                continue;
              }
              if (__loop_jump_target != -1) {
                break;
              }
              break;
            }
          } else {
            _1701 = 0.0f;
            _1702 = _1426;
            _1703 = _1425;
            _1704 = _1424;
            _1705 = 0.0f;
            _1706 = -10000.0f;
          }
          _1707 = (int)(_1706);
          if ((uint)_1707 < (uint)8) {
            _1710 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 0.5f;
            _1714 = _1704 - (_1710 * _214);
            _1715 = _1703 - (_1710 * _215);
            _1716 = _1702 - (_1710 * _216);
            if ((int)_1707 < (int)6) {
              _1723 = 0;
              while(true) {
                _1725 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1723) + (int)(20)))];
                _1753 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1723) + (int)(36)))];
                // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.16.00]
                // Description: Jitters this native voxel coordinate before integer quantization when Snow / Fog Lighting Fixes is active; when disabled, the helper returns the coordinate unchanged.
                float3 _rndx_surfel_jitter_1763 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _1714) * _1725.w) + _1753.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _1715) * _1725.w) + _1753.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _1716) * _1725.w) + _1753.z), float2(_85, _86), _188, _frameNumber.x);
                _1763 = (int)(floor(_rndx_surfel_jitter_1763.x));
                _1764 = (int)(floor(_rndx_surfel_jitter_1763.y));
                _1765 = (int)(floor(_rndx_surfel_jitter_1763.z));
                // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
                if (((((int)_1763 >= (int)((int)(_1725.x + -63.0f))) && ((int)_1763 < (int)((int)(_1725.x + 63.0f)))) && (((int)_1764 >= (int)((int)(_1725.y + -31.0f))) && ((int)_1764 < (int)((int)(_1725.y + 31.0f))))) && (((int)_1765 >= (int)((int)(_1725.z + -63.0f))) && ((int)_1765 < (int)((int)(_1725.z + 63.0f))))) {
                  _1786 = (_1763 & 127);
                  _1787 = (_1764 & 63);
                  _1788 = (_1765 & 127);
                  _1789 = _1723;
                } else {
                  _1778 = (int)(_1723) + (int)(1);
                  if ((uint)_1778 < (uint)8) {
                    _1723 = _1778;
                    continue;
                  } else {
                    _1786 = -10000;
                    _1787 = -10000;
                    _1788 = -10000;
                    _1789 = -10000;
                  }
                }
                if (!((uint)_1789 > (uint)5)) {
                  _1801 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1786, _1787, ((int)((uint)((uint)((int)((int)((uint)((uint)(_1789)) * (uint)(130))) | (int)(1))) + (uint)((uint)(_1788)))), 0)))).x) & 4194303;
                  _1805 = (_1801 != 0) && ((uint)((int)(_1801) + (int)(4)) < (uint)3145729);
                  _1806 = select(_1805, _1786, -10000);
                  _1807 = select(_1805, _1787, -10000);
                  _1808 = select(_1805, _1788, -10000);
                  _1809 = select(_1805, _1789, -10000);
                  _1810 = _1710 * ((float)((int)((int)((uint)(1) << (_1789 & 31)))));
                  _1815 = 0;
                  while(true) {
                    _1817 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1815) + (int)(20)))];
                    _1845 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1815) + (int)(36)))];
                    // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.16.00]
                    // Description: Jitters this native voxel coordinate before integer quantization when Snow / Fog Lighting Fixes is active; when disabled, the helper returns the coordinate unchanged.
                    float3 _rndx_surfel_jitter_1855 = RenoDXSurfelVoxelJitter(float3((((_1714 - _1810) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x) * _1817.w) + _1845.x, (((_1715 - _1810) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y) * _1817.w) + _1845.y, (((_1716 - _1810) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z) * _1817.w) + _1845.z), float2(_85, _86), _188, _frameNumber.x);
                    _1855 = (int)(floor(_rndx_surfel_jitter_1855.x));
                    _1856 = (int)(floor(_rndx_surfel_jitter_1855.y));
                    _1857 = (int)(floor(_rndx_surfel_jitter_1855.z));
                    // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
                    if (((((int)_1855 >= (int)((int)(_1817.x + -63.0f))) && ((int)_1855 < (int)((int)(_1817.x + 63.0f)))) && (((int)_1856 >= (int)((int)(_1817.y + -31.0f))) && ((int)_1856 < (int)((int)(_1817.y + 31.0f))))) && (((int)_1857 >= (int)((int)(_1817.z + -63.0f))) && ((int)_1857 < (int)((int)(_1817.z + 63.0f))))) {
                      _1878 = (_1855 & 127);
                      _1879 = (_1856 & 63);
                      _1880 = (_1857 & 127);
                      _1881 = _1815;
                    } else {
                      _1870 = (int)(_1815) + (int)(1);
                      if ((uint)_1870 < (uint)8) {
                        _1815 = _1870;
                        continue;
                      } else {
                        _1878 = -10000;
                        _1879 = -10000;
                        _1880 = -10000;
                        _1881 = -10000;
                      }
                    }
                    if (!((uint)_1881 > (uint)5)) {
                      if (_1801 == 0) {
                        _1887 = 0;
                        _1888 = _1809;
                        _1889 = _1808;
                        _1890 = _1807;
                        _1891 = _1806;
                        while(true) {
                          _1900 = 0;
                          _1901 = _1888;
                          _1902 = _1889;
                          _1903 = _1890;
                          _1904 = _1891;
                          while(true) {
                            _1911 = 0;
                            while(true) {
                              _1912 = (int)(_1911) + (int)(_1878);
                              _1913 = (int)(_1900) + (int)(_1879);
                              _1914 = (int)(_1887) + (int)(_1880);
                              bool __branch_chain_1910;
                              if (((uint)_1913 > (uint)63) || ((uint)((int)(_1912) | (int)(_1914)) > (uint)127)) {
                                _1932 = 0;
                                __branch_chain_1910 = true;
                              } else {
                                _1926 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1912, _1913, ((int)((uint)((uint)(_1914)) + (uint)((uint)((int)((int)((uint)((uint)(_1881)) * (uint)(130))) | (int)(1))))), 0)))).x) & 4194303;
                                if (!((_1926 != 0) && ((uint)((int)(_1926) + (int)(4)) < (uint)3145729))) {
                                  _1932 = _1926;
                                  __branch_chain_1910 = true;
                                } else {
                                  _1938 = _1912;
                                  _1939 = _1913;
                                  _1940 = _1914;
                                  _1941 = _1881;
                                  _1942 = _1926;
                                  __branch_chain_1910 = false;
                                }
                              }
                              if (__branch_chain_1910) {
                                _1933 = (int)(_1911) + (int)(1);
                                if (((int)_1933 < (int)2) && (_1932 == 0)) {
                                  _1911 = _1933;
                                  continue;
                                } else {
                                  _1938 = _1904;
                                  _1939 = _1903;
                                  _1940 = _1902;
                                  _1941 = _1901;
                                  _1942 = _1932;
                                }
                              }
                              _1943 = (int)(_1900) + (int)(1);
                              if (((int)_1943 < (int)2) && (_1942 == 0)) {
                                _1900 = _1943;
                                _1901 = _1941;
                                _1902 = _1940;
                                _1903 = _1939;
                                _1904 = _1938;
                                __loop_jump_target = 1899;
                                break;
                              }
                              while(true) {
                                _1906 = (int)(_1887) + (int)(1);
                                if (((int)_1906 < (int)2) && (_1942 == 0)) {
                                  _1887 = _1906;
                                  _1888 = _1941;
                                  _1889 = _1940;
                                  _1890 = _1939;
                                  _1891 = _1938;
                                  __loop_jump_target = 1886;
                                  break;
                                }
                                while(true) {
                                  _1894 = _1941;
                                  _1895 = _1940;
                                  _1896 = _1939;
                                  _1897 = _1938;
                                  break;
                                }
                                break;
                              }
                              if (__loop_jump_target != -1) {
                                break;
                              }
                              break;
                            }
                            if (__loop_jump_target == 1899) {
                              __loop_jump_target = -1;
                              continue;
                            }
                            if (__loop_jump_target != -1) {
                              break;
                            }
                            break;
                          }
                          if (__loop_jump_target == 1886) {
                            __loop_jump_target = -1;
                            continue;
                          }
                          if (__loop_jump_target != -1) {
                            break;
                          }
                          break;
                        }
                      } else {
                        _1894 = _1809;
                        _1895 = _1808;
                        _1896 = _1807;
                        _1897 = _1806;
                      }
                      if ((uint)_1894 < (uint)6) {
                        _1948 = (uint)((uint)(_1894)) * (uint)(130);
                        _1954 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1897, _1896, ((int)((uint)((uint)((int)(_1948) | (int)(1))) + (uint)((uint)(_1895)))), 0)))).x) & 4194303;
                        if ((_1954 != 0) && ((uint)((int)(_1954) + (int)(4)) < (uint)3145729)) {
                          _1961 = (uint)(1) << (_1894 & 31);
                          _1963 = ((float)((int)(_1961))) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                          _1965 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((uint)((uint)((uint)(_1894)) + (uint)(20)))];
                          _2001 = 0.0f;
                          _2002 = 0.0f;
                          _2003 = 0.0f;
                          _2004 = 0.0f;
                          _2005 = 0;
                          while(true) {
                            _2007 = (int)((int)(_1954) + (int)(-1)) + (int)(_2005);
                            _2010 = __3__37__0__0__g_surfelDataBuffer[_2007]._baseColor;
                            _2012 = __3__37__0__0__g_surfelDataBuffer[_2007]._normal;
                            _2015 = __3__37__0__0__g_surfelDataBuffer[_2007]._radius;
                            if (!(_2010 == 0)) {
                              _2018 = __3__37__0__0__g_surfelDataBuffer[_2007]._radiance.z;
                              _2019 = __3__37__0__0__g_surfelDataBuffer[_2007]._radiance.y;
                              _2020 = __3__37__0__0__g_surfelDataBuffer[_2007]._radiance.x;
                              _2026 = (float)((uint)((uint)(_2010 & 255)));
                              _2027 = (float)((uint)((uint)(((uint)((uint)(_2010)) >> 8) & 255)));
                              _2028 = (float)((uint)((uint)(((uint)((uint)(_2010)) >> 16) & 255)));
                              _2053 = select(((_2026 * 0.003921569f) < 0.04045f), (_2026 * 0.000303527f), exp2(log2((_2026 * 0.003717127f) + 0.052132703f) * 2.4f));
                              _2054 = select(((_2027 * 0.003921569f) < 0.04045f), (_2027 * 0.000303527f), exp2(log2((_2027 * 0.003717127f) + 0.052132703f) * 2.4f));
                              _2055 = select(((_2028 * 0.003921569f) < 0.04045f), (_2028 * 0.000303527f), exp2(log2((_2028 * 0.003717127f) + 0.052132703f) * 2.4f));
                              _2067 = (((float)((uint)((uint)(_2012 & 255)))) * 0.007874016f) + -1.0f;
                              _2068 = (((float)((uint)((uint)(((uint)((uint)(_2012)) >> 8) & 255)))) * 0.007874016f) + -1.0f;
                              _2069 = (((float)((uint)((uint)(((uint)((uint)(_2012)) >> 16) & 255)))) * 0.007874016f) + -1.0f;
                              _2071 = rsqrt(dot(float3(_2067, _2068, _2069), float3(_2067, _2068, _2069)));  // [sem: invLength]
                              _2073 = ((_2012 & 16777215) == 0);
                              _2077 = (_1963 * 0.0019607844f) * ((float)((uint16_t)((int16_t)(_2015 & 255))));
                              _2093 = (((((float)((uint)((uint)((uint)((uint)(_2010)) >> 24)))) * 0.003937008f) + -0.5f) * _1963) + ((((_1965.x + -63.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_1897)) + (uint)(64)) - (uint)((uint)((int)(_1965.x))))) & 127)))) * _1963) - _viewPos.x);
                              _2094 = (((((float)((uint)((uint)((uint)((uint)(_2012)) >> 24)))) * 0.003937008f) + -0.5f) * _1963) + ((((_1965.y + -31.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_1896)) + (uint)(32)) - (uint)((uint)((int)(_1965.y))))) & 63)))) * _1963) - _viewPos.y);
                              _2095 = (((((float)((uint16_t)((int16_t)((uint16_t)(_2015) >> 8)))) * 0.003937008f) + -0.5f) * _1963) + ((((_1965.z + -63.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_1895)) + (uint)(64)) - (uint)((uint)((int)(_1965.z))))) & 127)))) * _1963) - _viewPos.z);
                              if (!((((_2020 < 0.0h) || ((_2053 > 1.1f) || (_2053 < 0.0f))) || ((_2019 < 0.0h) || ((_2054 > 1.1f) || (_2054 < 0.0f)))) || ((_2018 < 0.0h) || ((_2055 > 1.1f) || (_2055 < 0.0f))))) {
                                _2117 = -0.0f - _216;
                                _2120 = -0.0f - _215;
                                _2123 = -0.0f - _214;
                                _2132 = -0.0f - min(0.0f, (-0.0f - float(_2020)));
                                _2133 = -0.0f - min(0.0f, (-0.0f - float(_2019)));
                                _2134 = -0.0f - min(0.0f, (-0.0f - float(_2018)));
                                _2154 = ((-0.0f - _1348) - (_1701 * _214)) + _2093;
                                _2157 = ((-0.0f - _1349) - (_1701 * _215)) + _2094;
                                _2160 = ((-0.0f - _1350) - (_1701 * _216)) + _2095;
                                _2161 = dot(float3(_2154, _2157, _2160), float3(_2123, _2120, _2117));
                                _2165 = _2154 - (_2161 * _2123);
                                _2166 = _2157 - (_2161 * _2120);
                                _2167 = _2160 - (_2161 * _2117);
                                _2193 = 1.0f / ((float)((uint)((uint)(_1961))));
                                _2197 = frac(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _2095) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z) * _2193);
                                _2222 = select(((int)_1894 > (int)5), 1.0f, ((saturate((saturate(dot(float3(_2123, _2120, _2117), float3(select(_2073, _2123, (_2071 * _2067)), select(_2073, _2120, (_2071 * _2068)), select(_2073, _2117, (_2071 * _2069))))) + -0.03125f) * 1.032258f) * ((float)((bool)(dot(float3(_2165, _2166, _2167), float3(_2165, _2166, _2167)) < ((_2077 * _2077) * 64.0f))))) * ((float)((bool)(((__3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _2093) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _2193), (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _2094) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y) * _2193), (((((float)((uint)((uint)(_1948)))) + 1.0f) + ((select((_2197 < 0.0f), 1.0f, 0.0f) + _2197) * 128.0f)) * 0.00096153846f)), 0.0f)).x) > ((_1963 * 0.25f) * (saturate((dot(float3(_2132, _2133, _2134), float3(0.212671f, 0.71516f, 0.072169f)) * 0.0001f) / _exposure3.w) + 1.0f)))))));
                                _2229 = (((((_2054 * 0.33951f) + (_2053 * 0.61312f)) + (_2055 * 0.04737f)) * _2132) * _2222) + _2001;
                                _2230 = (((((_2054 * 0.91636f) + (_2053 * 0.0702f)) + (_2055 * 0.01345f)) * _2133) * _2222) + _2002;
                                _2231 = (((((_2054 * 0.10958f) + (_2053 * 0.02062f)) + (_2055 * 0.8698f)) * _2134) * _2222) + _2003;
                                _2232 = _2222 + _2004;
                                _2233 = (int)(_2005) + (int)(1);
                                if ((uint)_2233 < (uint)4) {
                                  _2001 = _2229;
                                  _2002 = _2230;
                                  _2003 = _2231;
                                  _2004 = _2232;
                                  _2005 = _2233;
                                  continue;
                                } else {
                                  _2236 = _2229;
                                  _2237 = _2230;
                                  _2238 = _2231;
                                  _2239 = _2232;
                                }
                              } else {
                                _2236 = _2001;
                                _2237 = _2002;
                                _2238 = _2003;
                                _2239 = _2004;
                              }
                            } else {
                              _2236 = _2001;
                              _2237 = _2002;
                              _2238 = _2003;
                              _2239 = _2004;
                            }
                            if (_2239 > 0.0f) {
                              _2242 = 1.0f / _2239;
                              _2256 = 1.0f;
                              _2257 = (-0.0f - min(0.0f, (-0.0f - (_2236 * _2242))));
                              _2258 = (-0.0f - min(0.0f, (-0.0f - (_2237 * _2242))));
                              _2259 = (-0.0f - min(0.0f, (-0.0f - (_2238 * _2242))));
                            } else {
                              _2256 = 0.0f;
                              _2257 = _2236;
                              _2258 = _2237;
                              _2259 = _2238;
                            }
                            break;
                          }
                        } else {
                          _2256 = 0.0f;
                          _2257 = 0.0f;
                          _2258 = 0.0f;
                          _2259 = 0.0f;
                        }
                      } else {
                        _2256 = 0.0f;
                        _2257 = 0.0f;
                        _2258 = 0.0f;
                        _2259 = 0.0f;
                      }
                    } else {
                      _2256 = 1.0f;
                      _2257 = 0.0f;
                      _2258 = 0.0f;
                      _2259 = 0.0f;
                    }
                    break;
                  }
                } else {
                  _2256 = 1.0f;
                  _2257 = 0.0f;
                  _2258 = 0.0f;
                  _2259 = 0.0f;
                }
                break;
              }
            } else {
              _2256 = 1.0f;
              _2257 = 0.0f;
              _2258 = 0.0f;
              _2259 = 0.0f;
            }
            _2267 = saturate((_1701 * 0.25f) / (((float)((int)((int)((uint)(1) << (_1414 & 31))))) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x)) * _2256;
            _2277 = -0.0f - min(0.0f, (-0.0f - (_2257 * _2267)));
            _2278 = -0.0f - min(0.0f, (-0.0f - (_2258 * _2267)));
            _2279 = -0.0f - min(0.0f, (-0.0f - (_2259 * _2267)));
            _2281 = select(((int)_1707 > (int)-1), 1.0f, 0.0f);
            _2282 = max(1e-06f, _1701);
            if (_2282 > 0.0f) {
              _2287 = (_2282 + _1347);
              _2288 = _2277;
              _2289 = _2278;
              _2290 = _2279;
              _2291 = _2281;
            } else {
              _2287 = _2282;
              _2288 = _2277;
              _2289 = _2278;
              _2290 = _2279;
              _2291 = _2281;
            }
          } else {
            _2287 = 0.0f;
            _2288 = 0.0f;
            _2289 = 0.0f;
            _2290 = 0.0f;
            _2291 = _1705;
          }
        } else {
          _2287 = 0.0f;
          _2288 = 0.0f;
          _2289 = 0.0f;
          _2290 = 0.0f;
          _2291 = 0.0f;
        }
        break;
      }
    } else {
      _2287 = _1016;
      _2288 = _1012;
      _2289 = _1013;
      _2290 = _1014;
      _2291 = _1015;
    }
    _2294 = saturate(5.0000005f - (_182 * 0.019531252f));  // [sem: expr_sat]
    _2295 = (_1216 != 0);
    if ((_1215 > 0.0f) && ((_1207 > 0.0f) && _2295)) {
      if (!(_1207 < _2287)) {
        _2305 = (_2287 <= 0.0f);
      } else {
        _2305 = true;
      }
    } else {
      _2305 = false;
    }
    _2309 = saturate(max(select(_2305, 1.0f, 0.0f), (1.0f - _2294)));  // [sem: expr_sat]
    _2310 = _2309 * _1215;
    _2313 = min(_2294, saturate(1.0f - _2310));
    if (!(_2291 == 0.0f)) {
      _2328 = ((_2313 * _2288) + (_2309 * _1212));
      _2329 = ((_2313 * _2289) + (_2309 * _1213));
      _2330 = ((_2313 * _2290) + (_2309 * _1214));
      _2331 = ((_2313 * _2291) + _2310);
    } else {
      _2328 = _1212;
      _2329 = _1213;
      _2330 = _1214;
      _2331 = _1215;
    }
    _2334 = 1.0f / max(1e-06f, (_2313 + _2309));
    _2338 = _2334 * ((_2313 * _2287) + (_2309 * _1207));
    _2340 = _2334 * _2309;
    _2344 = (_2338 * _214) + _177;
    _2345 = (_2338 * _215) + _178;
    _2346 = (_2338 * _216) + _179;
    [branch]
    if (!(_2338 <= 0.0f)) {
      _2376 = mad((_viewProjRelative[3].z), _2346, mad((_viewProjRelative[3].y), _2345, ((_viewProjRelative[3].x) * _2344))) + (_viewProjRelative[3].w);
      _2381 = (((mad((_viewProjRelative[0].z), _2346, mad((_viewProjRelative[0].y), _2345, ((_viewProjRelative[0].x) * _2344))) + (_viewProjRelative[0].w)) / _2376) * 0.5f) + 0.5f;
      _2382 = 0.5f - (((mad((_viewProjRelative[1].z), _2346, mad((_viewProjRelative[1].y), _2345, ((_viewProjRelative[1].x) * _2344))) + (_viewProjRelative[1].w)) / _2376) * 0.5f);
      if (((_2381 >= 0.0f) && (_2381 <= 1.0f)) && ((_2382 >= 0.0f) && (_2382 <= 1.0f))) {
        if (_2295 && (((mad((_viewProjRelative[2].z), _2346, mad((_viewProjRelative[2].y), _2345, ((_viewProjRelative[2].x) * _2344))) + (_viewProjRelative[2].w)) / _2376) > 0.0f)) {
          if (_renderParams.x == 0.0f) {
            // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod]
            half4 _2409 = __3__36__0__0__g_sceneShadowColor.SampleLevel(__3__40__0__0__g_sampler, float2(_2381, _2382), 0.0f);
            _2417 = float(_2409.x);  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2418 = float(_2409.y);  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2419 = float(_2409.z);  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          } else {
            _2417 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2418 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2419 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          }
        } else {
          _2417 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          _2418 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          _2419 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
        }
      } else {
        _2417 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
        _2418 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
        _2419 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
      }
      _2426 = _viewPos.x + _2344;
      _2427 = _viewPos.y + _2345;
      _2428 = _viewPos.z + _2346;
      _2433 = _2426 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].x);
      _2434 = _2427 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].y);
      _2435 = _2428 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].z);
      _2455 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].z), _2435, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].y), _2434, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].x) * _2433))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].w);
      _2459 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].z), _2435, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].y), _2434, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].x) * _2433))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].w);
      _2466 = 2.0f / __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y;
      _2467 = 1.0f - _2466;
      _2474 = (((!(_2455 <= _2467)) || (!(_2455 >= _2466))) || (!(_2459 <= _2467))) || (!(_2459 >= _2466));
      _2483 = _2426 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].x);
      _2484 = _2427 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].y);
      _2485 = _2428 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].z);
      _2505 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].z), _2485, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].y), _2484, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].x) * _2483))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].w);
      _2509 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].z), _2485, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].y), _2484, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].x) * _2483))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].w);
      _2520 = (((!(_2505 <= _2467)) || (!(_2505 >= _2466))) || (!(_2509 <= _2467))) || (!(_2509 >= _2466));
      _2521 = select(_2520, select(_2474, 0.0f, _2455), _2505);
      _2522 = select(_2520, select(_2474, 0.0f, _2459), _2509);
      _2523 = select(_2520, select(_2474, 0.0f, (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].z), _2435, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].y), _2434, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].x) * _2433))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].w))), (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].z), _2485, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].y), _2484, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].x) * _2483))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].w)));
      _2524 = select(_2520, select(_2474, -1, 1), 0);
      [branch]
      if (!(_2524 == -1)) {
        _2530 = (_2521 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x) + -0.5f;
        _2531 = (_2522 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y) + -0.5f;
        _2534 = (int)(floor(_2530));
        _2535 = (int)(floor(_2531));
        _2538 = (uint)((uint)(_2534)) + (uint)(1);
        _2539 = (uint)((uint)(_2535)) + (uint)(1);
        if (!(((uint)_2534 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x)))) || ((uint)_2535 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y)))))) {
          // [sem: _3__36__0__0__g_shadowColorArray_sampleLod]
          half4 _2556 = __3__36__0__0__g_shadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_2521, _2522, ((float)((uint)((uint)(_2524))))), 0.0f);
          _2562 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2534, _2535, _2524, 0)))).x);
          _2563 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2538, _2535, _2524, 0)))).x);
          _2564 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2534, _2539, _2524, 0)))).x);
          _2565 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2538, _2539, _2524, 0)))).x);
          _2566 = (half)(_2556.x);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2567 = (half)(_2556.y);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2568 = (half)(_2556.z);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2569 = (half)(_2556.w);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
        } else {
          _2562 = 0.0f;
          _2563 = 0.0f;
          _2564 = 0.0f;
          _2565 = 0.0f;
          _2566 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2567 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2568 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2569 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
        }
        _2570 = (int)(_2524) << 2;
        _2572 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2570) + (int)(103)))];
        _2578 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2570) + (int)(104)))];
        _2584 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2570) + (int)(105)))];
        _2590 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2570) + (int)(106)))];
        _2595 = _2572.x * _2521;
        _2599 = _2572.y * _2521;
        _2603 = _2572.z * _2521;
        _2607 = _2572.w * _2521;
        _2610 = mad(_2584.w, _2562, mad(_2578.w, _2522, _2607)) + _2590.w;
        _2611 = (mad(_2584.x, _2562, mad(_2578.x, _2522, _2595)) + _2590.x) / _2610;
        _2612 = (mad(_2584.y, _2562, mad(_2578.y, _2522, _2599)) + _2590.y) / _2610;
        _2613 = (mad(_2584.z, _2562, mad(_2578.z, _2522, _2603)) + _2590.z) / _2610;
        _2616 = _2521 + (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.z * 4.0f);
        _2632 = mad(_2584.w, _2563, mad(_2578.w, _2522, (_2572.w * _2616))) + _2590.w;
        _2638 = _2522 - (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.w * 2.0f);
        _2650 = mad(_2584.w, _2564, mad(_2578.w, _2638, _2607)) + _2590.w;
        _2654 = ((mad(_2584.x, _2564, mad(_2578.x, _2638, _2595)) + _2590.x) / _2650) - _2611;
        _2655 = ((mad(_2584.y, _2564, mad(_2578.y, _2638, _2599)) + _2590.y) / _2650) - _2612;
        _2656 = ((mad(_2584.z, _2564, mad(_2578.z, _2638, _2603)) + _2590.z) / _2650) - _2613;
        _2657 = ((mad(_2584.x, _2563, mad(_2578.x, _2522, (_2572.x * _2616))) + _2590.x) / _2632) - _2611;
        _2658 = ((mad(_2584.y, _2563, mad(_2578.y, _2522, (_2572.y * _2616))) + _2590.y) / _2632) - _2612;
        _2659 = ((mad(_2584.z, _2563, mad(_2578.z, _2522, (_2572.z * _2616))) + _2590.z) / _2632) - _2613;
        _2662 = (_2656 * _2658) - (_2655 * _2659);
        _2665 = (_2654 * _2659) - (_2656 * _2657);
        _2668 = (_2655 * _2657) - (_2654 * _2658);
        _2670 = rsqrt(dot(float3(_2662, _2665, _2668), float3(_2662, _2665, _2668)));  // [sem: invLength]
        _2671 = _2662 * _2670;
        _2672 = _2665 * _2670;
        _2673 = _2668 * _2670;
        _2674 = frac(_2530);
        _2679 = (saturate(dot(float3(_214, _215, _216), float3(_2671, _2672, _2673))) * 0.002f) + _2523;
        _2692 = saturate(exp2((_2562 - _2679) * 1.442695e+06f));  // [sem: expr_sat]
        _2694 = saturate(exp2((_2564 - _2679) * 1.442695e+06f));  // [sem: expr_sat]
        _2700 = ((saturate(exp2((_2563 - _2679) * 1.442695e+06f)) - _2692) * _2674) + _2692;
        _2707 = _2671;
        _2708 = _2672;
        _2709 = _2673;
        // [sem: expr_sat]
        _2710 = saturate((((_2694 - _2700) + ((saturate(exp2((_2565 - _2679) * 1.442695e+06f)) - _2694) * _2674)) * frac(_2531)) + _2700);
        _2711 = _2562;
        _2712 = _2563;
        _2713 = _2564;
        _2714 = _2565;
        _2715 = _2566;
        _2716 = _2567;
        _2717 = _2568;
        _2718 = _2569;
      } else {
        _2707 = 0.0f;
        _2708 = 0.0f;
        _2709 = 0.0f;
        _2710 = 0.0f;  // [sem: expr_sat]
        _2711 = 0.0f;
        _2712 = 0.0f;
        _2713 = 0.0f;
        _2714 = 0.0f;
        _2715 = 0.0h;
        _2716 = 0.0h;
        _2717 = 0.0h;
        _2718 = 0.0h;
      }
      _2738 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].z), _2346, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].y), _2345, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].x) * _2344))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].w);
      _2742 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].z), _2346, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].y), _2345, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].x) * _2344))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].w);
      _2746 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].z), _2346, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].y), _2345, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].x) * _2344))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].w);
      _2749 = 4.0f / __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y;
      _2750 = 1.0f - _2749;
      if (!(((!(_2738 <= _2750)) || (!(_2738 >= _2749))) || (!(_2742 <= _2750)))) {
        _2761 = (_2746 >= -1.0f) && ((_2746 <= 1.0f) && (_2742 >= _2749));
        _2769 = select(_2761, 1e-05f, -0.0001f);
        _2770 = select(_2761, _2738, _2521);
        _2771 = select(_2761, _2742, _2522);
        _2772 = select(_2761, _2746, _2523);
        _2773 = select(_2761, 1, _2524);
        _2774 = ((int)(uint)(_2761));
      } else {
        _2769 = -0.0001f;
        _2770 = _2521;
        _2771 = _2522;
        _2772 = _2523;
        _2773 = _2524;
        _2774 = 0;
      }
      _2794 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].z), _2346, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].y), _2345, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].x) * _2344))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].w);
      _2798 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].z), _2346, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].y), _2345, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].x) * _2344))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].w);
      _2802 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].z), _2346, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].y), _2345, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].x) * _2344))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].w);
      if (!(((!(_2794 <= _2750)) || (!(_2794 >= _2749))) || (!(_2798 <= _2750)))) {
        _2813 = (_2802 >= -1.0f) && ((_2798 >= _2749) && (_2802 <= 1.0f));
        _2821 = select(_2813, 1e-05f, _2769);
        _2822 = select(_2813, _2794, _2770);
        _2823 = select(_2813, _2798, _2771);
        _2824 = select(_2813, _2802, _2772);
        _2825 = select(_2813, 0, _2773);
        _2826 = select(_2813, 1, _2774);
      } else {
        _2821 = _2769;
        _2822 = _2770;
        _2823 = _2771;
        _2824 = _2772;
        _2825 = _2773;
        _2826 = _2774;
      }
      [branch]
      if (!(_2826 == 0)) {
        _2836 = (int)(floor((_2822 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f));
        _2837 = (int)(floor((_2823 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f));
        _2840 = (uint)((uint)(_2836)) + (uint)(1);
        _2841 = (uint)((uint)(_2837)) + (uint)(1);
        if (!(((uint)_2836 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x)))) || ((uint)_2837 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y)))))) {
          _2856 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2836, _2837, _2825, 0)))).x);
          _2857 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2840, _2837, _2825, 0)))).x);
          _2858 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2836, _2841, _2825, 0)))).x);
          _2859 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2840, _2841, _2825, 0)))).x);
        } else {
          _2856 = _2711;
          _2857 = _2712;
          _2858 = _2713;
          _2859 = _2714;
        }
        _2860 = (uint)((uint)(_2825)) << 2;
        _2862 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)((uint)((uint)(_2860)) + (uint)(58)))];
        _2868 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)((uint)((uint)(_2860)) + (uint)(59)))];
        _2874 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)((uint)((uint)(_2860)) + (uint)(60)))];
        _2880 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)((uint)((uint)(_2860)) + (uint)(61)))];
        _2885 = _2862.x * _2822;
        _2889 = _2862.y * _2822;
        _2893 = _2862.z * _2822;
        _2897 = _2862.w * _2822;
        _2900 = mad(_2874.w, _2856, mad(_2868.w, _2823, _2897)) + _2880.w;
        _2901 = (mad(_2874.x, _2856, mad(_2868.x, _2823, _2885)) + _2880.x) / _2900;
        _2902 = (mad(_2874.y, _2856, mad(_2868.y, _2823, _2889)) + _2880.y) / _2900;
        _2903 = (mad(_2874.z, _2856, mad(_2868.z, _2823, _2893)) + _2880.z) / _2900;
        _2906 = _2822 + (__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.z * 8.0f);
        _2922 = mad(_2874.w, _2857, mad(_2868.w, _2823, (_2862.w * _2906))) + _2880.w;
        _2928 = _2823 - (__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.w * 4.0f);
        _2940 = mad(_2874.w, _2858, mad(_2868.w, _2928, _2897)) + _2880.w;
        _2944 = ((mad(_2874.x, _2858, mad(_2868.x, _2928, _2885)) + _2880.x) / _2940) - _2901;
        _2945 = ((mad(_2874.y, _2858, mad(_2868.y, _2928, _2889)) + _2880.y) / _2940) - _2902;
        _2946 = ((mad(_2874.z, _2858, mad(_2868.z, _2928, _2893)) + _2880.z) / _2940) - _2903;
        _2947 = ((mad(_2874.x, _2857, mad(_2868.x, _2823, (_2862.x * _2906))) + _2880.x) / _2922) - _2901;
        _2948 = ((mad(_2874.y, _2857, mad(_2868.y, _2823, (_2862.y * _2906))) + _2880.y) / _2922) - _2902;
        _2949 = ((mad(_2874.z, _2857, mad(_2868.z, _2823, (_2862.z * _2906))) + _2880.z) / _2922) - _2903;
        _2952 = (_2946 * _2948) - (_2945 * _2949);
        _2955 = (_2944 * _2949) - (_2946 * _2947);
        _2958 = (_2945 * _2947) - (_2944 * _2948);
        _2960 = rsqrt(dot(float3(_2952, _2955, _2958), float3(_2952, _2955, _2958)));  // [sem: invLength]
        if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
          _2978 = _sunDirection.x;
          _2979 = _sunDirection.y;
          _2980 = _sunDirection.z;
        } else {
          _2978 = _moonDirection.x;
          _2979 = _moonDirection.y;
          _2980 = _moonDirection.z;
        }
        _2986 = (_2821 - (saturate(-0.0f - dot(float3(_2978, _2979, _2980), float3(_214, _215, _216))) * 0.0001f)) + _2824;
        _2999 = (_2952 * _2960);
        _3000 = (_2955 * _2960);
        _3001 = (_2958 * _2960);
        _3002 = min(((float)((bool)(_2856 > _2986))), min(min(((float)((bool)(_2857 > _2986))), ((float)((bool)(_2858 > _2986)))), ((float)((bool)(_2859 > _2986)))));
      } else {
        _2999 = _2707;
        _3000 = _2708;
        _3001 = _2709;
        _3002 = _2710;
      }
      _3007 = _viewPos.x - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.x;
      _3008 = _viewPos.y - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.y;
      _3009 = _viewPos.z - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.z;
      _3010 = _3007 + _2344;
      _3011 = _3008 + _2345;
      _3012 = _3009 + _2346;
      _3032 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].z), _3012, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].y), _3011, (_3010 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].w);
      _3036 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].z), _3012, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].y), _3011, (_3010 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].w);
      _3040 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].z), _3012, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].y), _3011, (_3010 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].w);
      if (saturate(_3032) == _3032) {
        if ((_3040 >= 0.0001f) && ((_3040 <= 1.0f) && (saturate(_3036) == _3036))) {
          _3055 = frac((_3032 * 1024.0f) + -0.5f);
          _3059 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_3032, _3036));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
          _3064 = _3040 + -0.005f;
          _3069 = select((_3059.w > _3064), 1.0f, 0.0f);
          _3071 = select((_3059.x > _3064), 1.0f, 0.0f);
          _3078 = ((select((_3059.z > _3064), 1.0f, 0.0f) - _3069) * _3055) + _3069;
          // [sem: expr_sat]
          _3084 = saturate((((((select((_3059.y > _3064), 1.0f, 0.0f) - _3071) * _3055) + _3071) - _3078) * frac((_3036 * 1024.0f) + -0.5f)) + _3078);
        } else {
          _3084 = 1.0f;  // [sem: expr_sat]
        }
      } else {
        _3084 = 1.0f;  // [sem: expr_sat]
      }
      _3085 = min(_3002, _3084);
      _3086 = saturate(_2715);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived_derived_sat]
      _3087 = saturate(_2716);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived_derived_sat]
      _3088 = saturate(_2717);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived_derived_sat]
      _3102 = ((half)(((half)(_3087 * 0.3395996h)) + ((half)(_3086 * 0.61328125h)))) + ((half)(_3088 * 0.04736328h));
      _3103 = ((half)(((half)(_3087 * 0.9165039h)) + ((half)(_3086 * 0.07019043h)))) + ((half)(_3088 * 0.013450623h));
      _3104 = ((half)(((half)(_3087 * 0.109558105h)) + ((half)(_3086 * 0.020614624h)))) + ((half)(_3088 * 0.8696289h));
      _3107 = (_sunDirection.y > 0.0f);
      if ((_3107) || ((!(_3107)) && (_sunDirection.y > _moonDirection.y))) {
        _3119 = _sunDirection.x;
        _3120 = _sunDirection.y;
        _3121 = _sunDirection.z;
      } else {
        _3119 = _moonDirection.x;
        _3120 = _moonDirection.y;
        _3121 = _moonDirection.z;
      }
      if ((_3107) || ((!(_3107)) && (_sunDirection.y > _moonDirection.y))) {
        _3141 = _precomputedAmbient7.y;
      } else {
        _3141 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
      }
      _3144 = _2427 + _earthRadius;
      _3150 = sqrt(((_2428 * _2428) + (_2426 * _2426)) + (_3144 * _3144));
      _3155 = dot(float3((_2426 / _3150), (_3144 / _3150), (_2428 / _3150)), float3(_3119, _3120, _3121));
      _3159 = _atmosphereThickness + -16.0f;
      _3161 = min(max(((_3150 - _earthRadius) / _atmosphereThickness), 16.0f), _3159);
      _3163 = _atmosphereThickness + -32.0f;
      _3169 = max(_3161, 0.0f);
      _3170 = _earthRadius * 2.0f;
      _3176 = (-0.0f - sqrt((_3169 + _3170) * _3169)) / (_3169 + _earthRadius);
      if (_3155 > _3176) {
        _3199 = ((exp2(log2(saturate((_3155 - _3176) / (1.0f - _3176))) * 0.2f) * 0.4921875f) + 0.50390625f);
      } else {
        _3199 = ((exp2(log2(saturate((_3176 - _3155) / (_3176 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
      }
      // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
      _3204 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_3161 + -16.0f) / _3163)) * 0.5f) * 0.96875f) + 0.015625f), _3199), 0.0f);
      _3223 = _mieAerosolAbsorption + 1.0f;
      _3224 = _mieAerosolDensity * 2e-05f;
      _3226 = (_3224 * _3204.y) * _3223;
      _3232 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.0556001e-06f);
      _3235 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 4.9788005e-06f);
      _3238 = (_ozoneRatio * 2.1360002e-07f) + (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f);
      _3244 = exp2(((_3232 * _3204.x) + _3226) * -1.442695f);
      _3245 = exp2(((_3235 * _3204.x) + _3226) * -1.442695f);
      _3246 = exp2(((_3238 * _3204.x) + _3226) * -1.442695f);
      _3265 = sqrt((_2344 * _2344) + (_2346 * _2346));
      _3273 = (_cloudAltitude - (max(((_3265 * _3265) + -400000.0f), 0.0f) * 1e-06f)) - _viewPos.y;
      _3285 = (_cloudThickness * (0.5f - (((float)((int)((int)((int)(uint)((int)(_3120 > 0.0f))) - (int)((int)(uint)((int)(_3120 < 0.0f)))))) * 0.5f))) + _3273;
      if (_2345 < _3273) {
        _3288 = dot(float3(0.0f, 1.0f, 0.0f), float3(_3119, _3120, _3121));
        _3294 = select((abs(_3288) < 1e-08f), 1e+08f, ((_3285 - dot(float3(0.0f, 1.0f, 0.0f), float3(_2344, _2345, _2346))) / _3288));
        _3300 = ((_3294 * _3119) + _2344);
        _3301 = _3285;
        _3302 = ((_3294 * _3121) + _2346);
      } else {
        _3300 = _2344;
        _3301 = _2345;
        _3302 = _2346;
      }
      _3315 = _cloudScatteringCoefficient / _distanceScale;
      _3316 = _distanceScale * -1.442695f;
      _3322 = saturate(abs(_3120) * 4.0f);  // [sem: expr_sat]
      _3324 = (_3322 * _3322) * exp2((_3316 * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_3300 * 5e-05f) + 0.5f), ((_3301 - _3273) / _cloudThickness), ((_3302 * 5e-05f) + 0.5f)), 0.0f)).x)) * _3315);
      _3331 = ((1.0f - _3324) * saturate(((_2345 - _cloudThickness) - _3273) * 0.1f)) + _3324;
      _3332 = _3331 * (((_3245 * 0.33951f) + (_3244 * 0.61312f)) + (_3246 * 0.04737f));
      _3333 = _3331 * (((_3245 * 0.91636f) + (_3244 * 0.0702f)) + (_3246 * 0.01345f));
      _3334 = _3331 * (((_3245 * 0.10958f) + (_3244 * 0.02062f)) + (_3246 * 0.8698f));
      _3353 = float(saturate(_2718));
      if ((_1011 != 0) && (!_1031)) {
        _3355 = (_1211 > 0.0f);
        _3356 = select(_3355, _1208, _2999);
        _3357 = select(_3355, _1209, _3000);
        _3358 = select(_3355, _1210, _3001);
        _3359 = select(_3355, _1211, 0.8f);
        if (_1010 > 0.0f) {
          _3362 = half(_1007);
          _3363 = half(_1008);
          _3364 = half(_1009);
          _3370 = _3359;
          _3371 = _3356;
          _3372 = _3357;
          _3373 = _3358;
          _3374 = _3362;
          _3375 = _3363;
          _3376 = _3364;
          _3377 = _1010;
          _3378 = float(_3362);
          _3379 = float(_3363);
          _3380 = float(_3364);
          _3381 = dot(float3(_3356, _3357, _3358), float3(_3119, _3120, _3121));
        } else {
          _3370 = _3359;
          _3371 = _3356;
          _3372 = _3357;
          _3373 = _3358;
          _3374 = _3102;
          _3375 = _3103;
          _3376 = _3104;
          _3377 = 0.1f;
          _3378 = 1.0f;
          _3379 = 1.0f;
          _3380 = 1.0f;
          _3381 = _3353;
        }
      } else {
        _3370 = 0.8f;
        _3371 = _2999;
        _3372 = _3000;
        _3373 = _3001;
        _3374 = _3102;
        _3375 = _3103;
        _3376 = _3104;
        _3377 = 0.1f;
        _3378 = 1.0f;
        _3379 = 1.0f;
        _3380 = 1.0f;
        _3381 = _3353;
      }
      _3389 = float(half(saturate(_3381) * 0.31830987f)) * _3085;
      _3397 = 0.7f / min(max(max(max(_3378, _3379), _3380), 0.01f), 0.7f);
      _3408 = (((_3397 * _3379) + -0.04f) * _3377) + 0.04f;
      _3410 = _3119 - _214;
      _3411 = _3120 - _215;
      _3412 = _3121 - _216;
      _3414 = rsqrt(dot(float3(_3410, _3411, _3412), float3(_3410, _3411, _3412)));  // [sem: invLength]
      _3415 = _3414 * _3410;
      _3416 = _3414 * _3411;
      _3417 = _3414 * _3412;
      _3418 = -0.0f - _214;
      _3419 = -0.0f - _215;
      _3420 = -0.0f - _216;
      _3425 = saturate(max(1e-05f, dot(float3(_3418, _3419, _3420), float3(_3371, _3372, _3373))));  // [sem: expr_sat]
      _3427 = saturate(dot(float3(_3371, _3372, _3373), float3(_3415, _3416, _3417)));  // [sem: expr_sat]
      _3430 = saturate(1.0f - saturate(saturate(dot(float3(_3418, _3419, _3420), float3(_3415, _3416, _3417)))));  // [sem: expr_sat]
      _3431 = _3430 * _3430;
      _3433 = (_3431 * _3431) * _3430;
      _3436 = _3433 * saturate(_3408 * 50.0f);
      _3437 = 1.0f - _3433;
      _3445 = saturate(_3381 * _3085);  // [sem: expr_sat]
      _3446 = _3370 * _3370;
      _3447 = _3446 * _3446;
      _3448 = 1.0f - _3446;
      _3460 = (((_3427 * _3447) - _3427) * _3427) + 1.0f;
      _3464 = (_3447 / ((_3460 * _3460) * 3.1415927f)) * (0.5f / ((((_3425 * _3448) + _3446) * _3381) + (_3425 * ((_3381 * _3448) + _3446))));
      // RenoDX: >>> [Patch: DirectLightMatrixFix] [Version: 1.16.00]
      // Description: The game converts the direct beam's transmittance to working space a second time here, on a value the lines above already converted; because the matrix rows sum to one that second pass only desaturates. On uses the single conversion, so low-sun light keeps the colour of the sky it arrives through, while every other factor of the term is unchanged. Off is the exact vanilla double conversion.
      _3475 = ((DIRECT_LIGHT_MATRIX_FIX != 0.f) ? (_3332 * _3141) : ((((_3332 * 0.61312f) + (_3333 * 0.33951f)) + (_3334 * 0.04737f)) * _3141)) * ((max((((_3437 * ((((_3397 * _3378) + -0.04f) * _3377) + 0.04f)) + _3436) * _3464), 0.0f) * _3445) + (_3389 * float(_3374)));
      _3477 = ((DIRECT_LIGHT_MATRIX_FIX != 0.f) ? (_3333 * _3141) : ((((_3332 * 0.0702f) + (_3333 * 0.91636f)) + (_3334 * 0.01345f)) * _3141)) * ((max((((_3437 * _3408) + _3436) * _3464), 0.0f) * _3445) + (_3389 * float(_3375)));
      _3479 = ((DIRECT_LIGHT_MATRIX_FIX != 0.f) ? (_3334 * _3141) : ((((_3332 * 0.02062f) + (_3333 * 0.10958f)) + (_3334 * 0.8698f)) * _3141)) * ((max((((_3437 * ((((_3397 * _3380) + -0.04f) * _3377) + 0.04f)) + _3436) * _3464), 0.0f) * _3445) + (_3389 * float(_3376)));
      // RenoDX: <<< [Patch: DirectLightMatrixFix]
      _3484 = dot(float3(_3475, _3477, _3479), float3(0.212671f, 0.71516f, 0.072169f));
      _3485 = min((max(0.0005f, _exposure3.w) * 4096.0f), _3484);
      _3489 = max(1e-09f, _3484);
      _3490 = (_3485 * _3475) / _3489;
      _3491 = (_3485 * _3477) / _3489;
      _3492 = (_3485 * _3479) / _3489;
      if ((_114 == 33) || (_114 == 54)) {
        if ((_3107) || ((!(_3107)) && (_sunDirection.y > _moonDirection.y))) {
          _3513 = _sunDirection.x;
          _3514 = _sunDirection.y;
          _3515 = _sunDirection.z;
        } else {
          _3513 = _moonDirection.x;
          _3514 = _moonDirection.y;
          _3515 = _moonDirection.z;
        }
        _3520 = rsqrt(dot(float3(_177, _178, _179), float3(_177, _178, _179)));  // [sem: invLength]
        _3521 = _3520 * _177;
        _3522 = _3520 * _178;
        _3523 = _3520 * _179;
        _3527 = _177 - (_137 * 0.04f);
        _3528 = _178 - (_138 * 0.04f);
        _3529 = _179 - (_139 * 0.04f);
        _3533 = (_viewPos.x - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].x)) + _3527;
        _3534 = (_viewPos.y - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].y)) + _3528;
        _3535 = (_viewPos.z - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].z)) + _3529;
        _3539 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].z), _3535, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].y), _3534, (_3533 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].w);
        _3543 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].z), _3535, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].y), _3534, (_3533 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].w);
        _3554 = (((!(_3539 <= _2467)) || (!(_3539 >= _2466))) || (!(_3543 <= _2467))) || (!(_3543 >= _2466));
        _3562 = (_viewPos.x - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].x)) + _3527;
        _3563 = (_viewPos.y - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].y)) + _3528;
        _3564 = (_viewPos.z - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].z)) + _3529;
        _3568 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].z), _3564, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].y), _3563, (_3562 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].w);
        _3572 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].z), _3564, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].y), _3563, (_3562 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].w);
        _3583 = (((!(_3568 <= _2467)) || (!(_3568 >= _2466))) || (!(_3572 <= _2467))) || (!(_3572 >= _2466));
        _3585 = select((_3583 && _3554), 0.0f, 0.001f);
        _3586 = select(_3583, select(_3554, 0.0f, _3539), _3568);
        _3587 = select(_3583, select(_3554, 0.0f, _3543), _3572);
        _3588 = select(_3583, select(_3554, 0.0f, (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].z), _3535, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].y), _3534, (_3533 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].w))), (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].z), _3564, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].y), _3563, (_3562 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].w)));
        _3589 = select(_3583, select(_3554, -1, 1), 0);
        [branch]
        if (!(_3589 == -1)) {
          _3595 = (_3586 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x) + -0.5f;
          _3596 = (_3587 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y) + -0.5f;
          _3599 = (int)(floor(_3595));
          _3600 = (int)(floor(_3596));
          _3603 = (uint)((uint)(_3599)) + (uint)(1);
          _3604 = (uint)((uint)(_3600)) + (uint)(1);
          if (!(((uint)_3599 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x)))) || ((uint)_3600 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y)))))) {
            _3619 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3599, _3600, _3589, 0)))).x);
            _3620 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3603, _3600, _3589, 0)))).x);
            _3621 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3599, _3604, _3589, 0)))).x);
            _3622 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3603, _3604, _3589, 0)))).x);
          } else {
            _3619 = 0.0f;
            _3620 = 0.0f;
            _3621 = 0.0f;
            _3622 = 0.0f;
          }
          _3623 = (int)(_3589) << 2;
          _3625 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3623) + (int)(103)))];
          _3631 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3623) + (int)(104)))];
          _3637 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3623) + (int)(105)))];
          _3643 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3623) + (int)(106)))];
          _3648 = _3625.x * _3586;
          _3652 = _3625.y * _3586;
          _3656 = _3625.z * _3586;
          _3660 = _3625.w * _3586;
          _3663 = mad(_3637.w, _3619, mad(_3631.w, _3587, _3660)) + _3643.w;
          _3664 = (mad(_3637.x, _3619, mad(_3631.x, _3587, _3648)) + _3643.x) / _3663;
          _3665 = (mad(_3637.y, _3619, mad(_3631.y, _3587, _3652)) + _3643.y) / _3663;
          _3666 = (mad(_3637.z, _3619, mad(_3631.z, _3587, _3656)) + _3643.z) / _3663;
          _3669 = _3586 + (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.z * 4.0f);
          _3685 = mad(_3637.w, _3620, mad(_3631.w, _3587, (_3625.w * _3669))) + _3643.w;
          _3691 = _3587 - (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.w * 2.0f);
          _3703 = mad(_3637.w, _3621, mad(_3631.w, _3691, _3660)) + _3643.w;
          _3707 = ((mad(_3637.x, _3621, mad(_3631.x, _3691, _3648)) + _3643.x) / _3703) - _3664;
          _3708 = ((mad(_3637.y, _3621, mad(_3631.y, _3691, _3652)) + _3643.y) / _3703) - _3665;
          _3709 = ((mad(_3637.z, _3621, mad(_3631.z, _3691, _3656)) + _3643.z) / _3703) - _3666;
          _3710 = ((mad(_3637.x, _3620, mad(_3631.x, _3587, (_3625.x * _3669))) + _3643.x) / _3685) - _3664;
          _3711 = ((mad(_3637.y, _3620, mad(_3631.y, _3587, (_3625.y * _3669))) + _3643.y) / _3685) - _3665;
          _3712 = ((mad(_3637.z, _3620, mad(_3631.z, _3587, (_3625.z * _3669))) + _3643.z) / _3685) - _3666;
          _3715 = (_3709 * _3711) - (_3708 * _3712);
          _3718 = (_3707 * _3712) - (_3709 * _3710);
          _3721 = (_3708 * _3710) - (_3707 * _3711);
          _3723 = rsqrt(dot(float3(_3715, _3718, _3721), float3(_3715, _3718, _3721)));  // [sem: invLength]
          _3727 = frac(_3595);
          _3732 = (saturate(dot(float3(_3521, _3522, _3523), float3((_3715 * _3723), (_3718 * _3723), (_3721 * _3723)))) * 0.002f) + _3588;
          _3745 = saturate(exp2((_3619 - _3732) * 1.442695e+06f));  // [sem: expr_sat]
          _3747 = saturate(exp2((_3621 - _3732) * 1.442695e+06f));  // [sem: expr_sat]
          _3753 = ((saturate(exp2((_3620 - _3732) * 1.442695e+06f)) - _3745) * _3727) + _3745;
          // [sem: expr_sat]
          _3760 = saturate((((_3747 - _3753) + ((saturate(exp2((_3622 - _3732) * 1.442695e+06f)) - _3747) * _3727)) * frac(_3596)) + _3753);
          _3761 = _3619;
          _3762 = _3620;
          _3763 = _3621;
          _3764 = _3622;
        } else {
          _3760 = 1.0f;  // [sem: expr_sat]
          _3761 = 0.0f;
          _3762 = 0.0f;
          _3763 = 0.0f;
          _3764 = 0.0f;
        }
        _3768 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].z), _3529, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].y), _3528, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].x) * _3527))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].w);
        _3772 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].z), _3529, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].y), _3528, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].x) * _3527))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].w);
        _3776 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].z), _3529, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].y), _3528, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].x) * _3527))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].w);
        if (!(((!(_3768 <= _2750)) || (!(_3768 >= _2749))) || (!(_3772 <= _2750)))) {
          _3787 = (_3776 >= -1.0f) && ((_3772 >= _2749) && (_3776 <= 1.0f));
          _3795 = select(_3787, 1e-05f, _3585);
          _3796 = select(_3787, _3768, _3586);
          _3797 = select(_3787, _3772, _3587);
          _3798 = select(_3787, _3776, _3588);
          _3799 = select(_3787, 1, _3589);
          _3800 = ((int)(uint)(_3787));
        } else {
          _3795 = _3585;
          _3796 = _3586;
          _3797 = _3587;
          _3798 = _3588;
          _3799 = _3589;
          _3800 = 0;
        }
        _3804 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].z), _3529, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].y), _3528, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].x) * _3527))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].w);
        _3808 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].z), _3529, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].y), _3528, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].x) * _3527))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].w);
        _3812 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].z), _3529, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].y), _3528, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].x) * _3527))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].w);
        if (!(((!(_3804 <= _2750)) || (!(_3804 >= _2749))) || (!(_3808 <= _2750)))) {
          _3823 = (_3812 >= -1.0f) && ((_3808 >= _2749) && (_3812 <= 1.0f));
          _3831 = select(_3823, 1e-05f, _3795);
          _3832 = select(_3823, _3804, _3796);
          _3833 = select(_3823, _3808, _3797);
          _3834 = select(_3823, _3812, _3798);
          _3835 = select(_3823, 0, _3799);
          _3836 = select(_3823, 1, _3800);
        } else {
          _3831 = _3795;
          _3832 = _3796;
          _3833 = _3797;
          _3834 = _3798;
          _3835 = _3799;
          _3836 = _3800;
        }
        [branch]
        if (!(_3836 == 0)) {
          _3846 = (int)(floor((_3832 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f));
          _3847 = (int)(floor((_3833 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f));
          _3850 = (uint)((uint)(_3846)) + (uint)(1);
          _3851 = (uint)((uint)(_3847)) + (uint)(1);
          if (!(((uint)_3846 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x)))) || ((uint)_3847 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y)))))) {
            _3866 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3846, _3847, _3835, 0)))).x);
            _3867 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3850, _3847, _3835, 0)))).x);
            _3868 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3846, _3851, _3835, 0)))).x);
            _3869 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3850, _3851, _3835, 0)))).x);
          } else {
            _3866 = _3761;
            _3867 = _3762;
            _3868 = _3763;
            _3869 = _3764;
          }
          if ((_3107) || ((!(_3107)) && (_sunDirection.y > _moonDirection.y))) {
            _3881 = _sunDirection.x;
            _3882 = _sunDirection.y;
            _3883 = _sunDirection.z;
          } else {
            _3881 = _moonDirection.x;
            _3882 = _moonDirection.y;
            _3883 = _moonDirection.z;
          }
          _3889 = (_3831 - (saturate(-0.0f - dot(float3(_3881, _3882, _3883), float3(_3521, _3522, _3523))) * 0.0001f)) + _3834;
          _3902 = min(((float)((bool)(_3866 > _3889))), min(min(((float)((bool)(_3867 > _3889))), ((float)((bool)(_3868 > _3889)))), ((float)((bool)(_3869 > _3889)))));
        } else {
          _3902 = _3760;
        }
        _3903 = _3007 + _3527;
        _3904 = _3008 + _3528;
        _3905 = _3009 + _3529;
        _3909 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].z), _3905, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].y), _3904, (_3903 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].w);
        _3913 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].z), _3905, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].y), _3904, (_3903 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].w);
        _3917 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].z), _3905, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].y), _3904, (_3903 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].w);
        if (saturate(_3909) == _3909) {
          if ((_3917 >= 0.0001f) && ((_3917 <= 1.0f) && (saturate(_3913) == _3913))) {
            _3932 = frac((_3909 * 1024.0f) + -0.5f);
            // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
            _3936 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_3909, _3913));
            _3941 = _3917 + -0.005f;
            _3946 = select((_3936.w > _3941), 1.0f, 0.0f);
            _3948 = select((_3936.x > _3941), 1.0f, 0.0f);
            _3955 = ((select((_3936.z > _3941), 1.0f, 0.0f) - _3946) * _3932) + _3946;
            // [sem: expr_sat]
            _3961 = saturate((((((select((_3936.y > _3941), 1.0f, 0.0f) - _3948) * _3932) + _3948) - _3955) * frac((_3913 * 1024.0f) + -0.5f)) + _3955);
          } else {
            _3961 = 1.0f;  // [sem: expr_sat]
          }
        } else {
          _3961 = 1.0f;  // [sem: expr_sat]
        }
        // [sem: _3__36__0__0__g_baseColor_load]
        _3967 = __3__36__0__0__g_baseColor.Load(int3(((int)((uint)(_85 * (1.0f / g_screenSpaceScale.x)))), ((int)((uint)(_86 * (1.0f / g_screenSpaceScale.y)))), 0));
        _3973 = ((float)((uint)((uint)(((uint)((uint)(_3967.x)) >> 8) & 255)))) * 0.003921569f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _3976 = ((float)((uint)((uint)(_3967.x & 255)))) * 0.003921569f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _3980 = ((float)((uint)((uint)(((uint)((uint)(_3967.y)) >> 8) & 255)))) * 0.003921569f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _3981 = _3973 * _3973;
        _3982 = _3976 * _3976;
        _3983 = _3980 * _3980;
        if ((_3107) || ((!(_3107)) && (_sunDirection.y > _moonDirection.y))) {
          _4018 = _precomputedAmbient7.y;
        } else {
          _4018 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
        }
        _4019 = _viewPos.x + _177;
        _4021 = (_earthRadius + _viewPos.y) + _178;
        _4022 = _viewPos.z + _179;
        _4028 = sqrt(((_4022 * _4022) + (_4019 * _4019)) + (_4021 * _4021));
        _4033 = dot(float3((_4019 / _4028), (_4021 / _4028), (_4022 / _4028)), float3(_3513, _3514, _3515));
        _4036 = min(max(((_4028 - _earthRadius) / _atmosphereThickness), 16.0f), _3159);
        _4043 = max(_4036, 0.0f);
        _4049 = (-0.0f - sqrt((_4043 + _3170) * _4043)) / (_4043 + _earthRadius);
        if (_4033 > _4049) {
          _4072 = ((exp2(log2(saturate((_4033 - _4049) / (1.0f - _4049))) * 0.2f) * 0.4921875f) + 0.50390625f);
        } else {
          _4072 = ((exp2(log2(saturate((_4049 - _4033) / (_4049 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
        }
        // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
        _4075 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_4036 + -16.0f) / _3163)) * 0.5f) * 0.96875f) + 0.015625f), _4072), 0.0f);
        _4079 = (_3224 * _3223) * _4075.y;
        _4089 = exp2((_4079 + (_4075.x * _3232)) * -1.442695f);
        _4090 = exp2((_4079 + (_4075.x * _3235)) * -1.442695f);
        _4091 = exp2((_4079 + (_4075.x * _3238)) * -1.442695f);
        _4110 = sqrt((_179 * _179) + (_177 * _177));
        _4116 = (_cloudAltitude - (max(((_4110 * _4110) + -400000.0f), 0.0f) * 1e-06f)) - _viewPos.y;
        _4126 = _4116 + ((0.5f - (((float)((int)((int)((int)(uint)((int)(_3514 > 0.0f))) - (int)((int)(uint)((int)(_3514 < 0.0f)))))) * 0.5f)) * _cloudThickness);
        if (_178 < _4116) {
          _4129 = dot(float3(0.0f, 1.0f, 0.0f), float3(_3513, _3514, _3515));
          _4135 = select((abs(_4129) < 1e-08f), 1e+08f, ((_4126 - dot(float3(0.0f, 1.0f, 0.0f), float3(_177, _178, _179))) / _4129));
          _4141 = ((_4135 * _3513) + _177);
          _4142 = _4126;
          _4143 = ((_4135 * _3515) + _179);
        } else {
          _4141 = _177;
          _4142 = _178;
          _4143 = _179;
        }
        _4157 = saturate(abs(_3514) * 4.0f);  // [sem: expr_sat]
        _4159 = (_4157 * _4157) * exp2((_3316 * _3315) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_4141 * 5e-05f) + 0.5f), ((_4142 - _4116) / _cloudThickness), ((_4143 * 5e-05f) + 0.5f)), 0.0f)).x));
        _4166 = ((1.0f - _4159) * saturate(((_178 - _cloudThickness) - _4116) * 0.1f)) + _4159;
        _4167 = _4166 * (((_4090 * 0.33951f) + (_4089 * 0.61312f)) + (_4091 * 0.04737f));
        _4168 = _4166 * (((_4090 * 0.91636f) + (_4089 * 0.0702f)) + (_4091 * 0.01345f));
        _4169 = _4166 * (((_4090 * 0.10958f) + (_4089 * 0.02062f)) + (_4091 * 0.8698f));
        _4185 = ((max(0.0f, (0.3f - dot(float3(_137, _138, _139), float3(_3513, _3514, _3515)))) * 0.15734209f) * saturate(min(_3902, _3961))) * _4018;
        // RenoDX: >>> [Patch: DirectLightMatrixFix] [Version: 1.16.00]
        // Description: The game converts this direct beam's transmittance to working space a second time here, on a value the lines above already converted; because the matrix rows sum to one that second pass only desaturates. On uses the single conversion, so low-sun light keeps the colour of the sky it arrives through, while every other factor of the term is unchanged. Off is the exact vanilla double conversion. The neighbouring conversion in the same product is applied to a separately derived vector and stays vanilla in both states.
        _4196 = (((_4185 * (((_3981 * 0.61312f) + (_3982 * 0.33951f)) + (_3983 * 0.04737f))) * ((DIRECT_LIGHT_MATRIX_FIX != 0.f) ? _4167 : (((_4167 * 0.61312f) + (_4168 * 0.33951f)) + (_4169 * 0.04737f)))) + _3490);
        _4197 = (((_4185 * (((_3981 * 0.0702f) + (_3982 * 0.91636f)) + (_3983 * 0.01345f))) * ((DIRECT_LIGHT_MATRIX_FIX != 0.f) ? _4168 : (((_4167 * 0.0702f) + (_4168 * 0.91636f)) + (_4169 * 0.01345f)))) + _3491);
        _4198 = (((_4185 * (((_3981 * 0.02062f) + (_3982 * 0.10958f)) + (_3983 * 0.8698f))) * ((DIRECT_LIGHT_MATRIX_FIX != 0.f) ? _4169 : (((_4167 * 0.02062f) + (_4168 * 0.10958f)) + (_4169 * 0.8698f)))) + _3492);
        // RenoDX: <<< [Patch: DirectLightMatrixFix]
      } else {
        _4196 = _3490;
        _4197 = _3491;
        _4198 = _3492;
      }
      _4199 = (_renderParams2.z * _2417) * _4196;
      _4200 = (_renderParams2.z * _2418) * _4197;
      _4201 = (_renderParams2.z * _2419) * _4198;
      _4205 = _4199 + _2328;
      _4206 = _4200 + _2329;
      _4207 = _4201 + _2330;
      _4218 = _2338;
      _4219 = (((max(_2328, _4199) - _4205) * _2340) + _4205);
      _4220 = (((max(_2329, _4200) - _4206) * _2340) + _4206);
      _4221 = (((max(_2330, _4201) - _4207) * _2340) + _4207);
    } else {
      _4218 = 1000.0f;
      _4219 = _2328;
      _4220 = _2329;
      _4221 = _2330;
    }
    if (!_1018) {
      __3__38__0__1__g_raytracingHitResultUAV[int2(_82, _84)] = float4(_208, _209, _210, select((_4218 <= 0.0f), 1000.0f, _4218));
    }
    if ((_4218 > 128.0f) && (dot(float3(_4219, _4220, _4221), float3(0.212671f, 0.71516f, 0.072169f)) == 0.0f)) {
      _4232 = 1;
      while(true) {
        _4234 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_4232) + (int)(20)))];
        _4262 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_4232) + (int)(36)))];
        // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.16.00]
        // Description: Jitters this native voxel coordinate before integer quantization when Snow / Fog Lighting Fixes is active; when disabled, the helper returns the coordinate unchanged.
        float3 _rndx_surfel_jitter_4272 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _2344) * _4234.w) + _4262.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _2345) * _4234.w) + _4262.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _2346) * _4234.w) + _4262.z), float2(_85, _86), _188, _frameNumber.x);
        _4272 = (int)(floor(_rndx_surfel_jitter_4272.x));
        _4273 = (int)(floor(_rndx_surfel_jitter_4272.y));
        _4274 = (int)(floor(_rndx_surfel_jitter_4272.z));
        // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
        if (!(((((int)_4272 >= (int)((int)(_4234.x + -63.0f))) && ((int)_4272 < (int)((int)(_4234.x + 63.0f)))) && (((int)_4273 >= (int)((int)(_4234.y + -31.0f))) && ((int)_4273 < (int)((int)(_4234.y + 31.0f))))) && (((int)_4274 >= (int)((int)(_4234.z + -63.0f))) && ((int)_4274 < (int)((int)(_4234.z + 63.0f)))))) {
          _4287 = (int)(_4232) + (int)(1);
          if ((uint)_4287 < (uint)8) {
            _4232 = _4287;
            continue;
          } else {
            _4290 = -10000;
          }
        } else {
          _4290 = _4232;
        }
        if (!((uint)_4290 > (uint)3)) {
          _4310 = 1.0f / ((float)((uint)((uint)(1) << (_4290 & 31))));
          _4314 = frac(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _2346) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z) * _4310);
          // [sem: expr_sat]
          _4331 = saturate(1.0f - ((__3__36__0__1__g_skyVisibilityVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _2344) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _4310), (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _2345) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y) * _4310), (((((float)((uint)((uint)((uint)(_4290)) * (uint)(66)))) + 1.0f) + ((select((_4314 < 0.0f), 1.0f, 0.0f) + _4314) * 64.0f)) * 0.003787879f)), 0.0f)).x));
        } else {
          _4331 = 1.0f;  // [sem: expr_sat]
        }
        _4334 = _renderParams.w * _4331;
        _4335 = (_1010 == 0.0f);
        // [sem: _3__36__0__0__g_environmentColor_sampleLod]
        _4343 = __3__36__0__0__g_environmentColor.SampleLevel(__3__40__0__0__g_samplerTrilinear, float3(select(_4335, (-0.0f - _214), _1208), select(_4335, _215, _1209), select(_4335, (-0.0f - _216), _1210)), 4.0f);
        _4357 = ((_4334 * select(_4335, 0.03125f, _1007)) * _4343.x);
        _4358 = ((_4334 * select(_4335, 0.03125f, _1008)) * _4343.y);
        _4359 = ((_4334 * select(_4335, 0.03125f, _1009)) * _4343.z);
        break;
      }
    } else {
      _4357 = _4219;
      _4358 = _4220;
      _4359 = _4221;
    }
    _4366 = saturate(1.0f - saturate(_2331));  // [sem: expr_sat]
    _4370 = (_4366 - (_renderParams2.w * _4366)) + _renderParams2.w;
    // [sem: _3__36__0__0__g_environmentColor_sampleLod]
    _4374 = __3__36__0__0__g_environmentColor.SampleLevel(__3__40__0__0__g_samplerTrilinear, float3(_214, _215, _216), 4.0f);
    _4380 = _renderParams.w * _4370;
    _4381 = _4380 * _4374.x;
    _4382 = _4380 * _4374.y;
    _4383 = _4380 * _4374.z;
    _4388 = dot(float3(_4381, _4382, _4383), float3(0.212671f, 0.71516f, 0.072169f));
    _4389 = min((max(0.01f, _exposure3.w) * 2048.0f), _4388);
    _4393 = max(1e-09f, _4388);
    _4403 = ((__3__36__0__0__g_raytracingDiffuseRayInversePDF.Load(int3(_82, _84, 0))).x) * 2.0f;
    _4404 = _4403 * (((_4389 * _4381) / _4393) + (_renderParams2.y * _4357));
    _4405 = _4403 * (((_4389 * _4382) / _4393) + (_renderParams2.y * _4358));
    _4406 = _4403 * (((_4389 * _4383) / _4393) + (_renderParams2.y * _4359));
    if (!(_renderParams.y == 0.0f)) {
      _4411 = saturate(dot(float3(_137, _138, _139), float3(_214, _215, _216)));  // [sem: expr_sat]
      _4416 = (_4411 * _4404);
      _4417 = (_4411 * _4405);
      _4418 = (_4411 * _4406);
    } else {
      _4416 = _4404;
      _4417 = _4405;
      _4418 = _4406;
    }
    __3__38__0__1__g_diffuseResultUAV[int2(_82, _84)] = float4(((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - min(15000.0f, (_exposure4.x * _4416)))))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - min(15000.0f, (_exposure4.x * _4417)))))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - min(15000.0f, (_exposure4.x * _4418)))))))), (half)(half(1.0f - _4370)));
    break;
  }
}
