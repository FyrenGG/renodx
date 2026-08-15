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
  int _110;
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
  float _192;
  bool _209;
  int _262;
  int _320;
  int _341;
  int _399;
  int _407;
  int _470;
  int _471;
  int _472;
  int _473;
  int _500;
  int _563;
  int _564;
  int _565;
  int _566;
  int _572;
  int _573;
  int _574;
  int _575;
  int _576;
  int _579;
  int _580;
  int _581;
  int _582;
  int _585;
  int _586;
  int _587;
  int _588;
  int _589;
  int _596;
  int _617;
  int _623;
  int _624;
  int _625;
  int _626;
  int _627;
  float _686;
  float _687;
  float _688;
  float _689;
  float _690;
  float _691;
  float _692;
  int _693;
  float _932;
  float _933;
  float _934;
  float _935;
  float _952;
  float _953;
  float _954;
  float _974;
  float _975;
  float _976;
  float _998;
  float _999;
  float _1000;
  float _1007;
  float _1008;
  float _1009;
  float _1010;
  float _1011;
  float _1012;
  float _1013;
  float _1014;
  int _1015;
  float _1016;
  float _1017;
  float _1018;
  float _1019;
  float _1020;
  bool _1035;
  float _1197;
  float _1198;
  float _1199;
  float _1200;
  float _1211;
  float _1212;
  float _1213;
  float _1214;
  float _1215;
  float _1216;
  float _1217;
  float _1218;
  float _1219;
  int _1220;
  int _1222;
  int _1283;
  int _1284;
  float _1291;
  float _1351;
  float _1352;
  float _1353;
  float _1354;
  int _1360;
  int _1418;
  int _1455;
  float _1456;
  float _1457;
  float _1458;
  float _1459;
  float _1460;
  int _1462;
  float _1679;
  float _1680;
  float _1699;
  float _1700;
  float _1701;
  float _1702;
  float _1703;
  float _1705;
  float _1706;
  float _1707;
  float _1708;
  float _1709;
  float _1710;
  int _1727;
  int _1790;
  int _1791;
  int _1792;
  int _1793;
  int _1819;
  int _1882;
  int _1883;
  int _1884;
  int _1885;
  int _1891;
  int _1892;
  int _1893;
  int _1894;
  int _1895;
  int _1898;
  int _1899;
  int _1900;
  int _1901;
  int _1904;
  int _1905;
  int _1906;
  int _1907;
  int _1908;
  int _1915;
  int _1936;
  int _1942;
  int _1943;
  int _1944;
  int _1945;
  int _1946;
  float _2005;
  float _2006;
  float _2007;
  float _2008;
  int _2009;
  float _2240;
  float _2241;
  float _2242;
  float _2243;
  float _2260;
  float _2261;
  float _2262;
  float _2263;
  float _2291;
  float _2292;
  float _2293;
  float _2294;
  float _2295;
  bool _2309;
  float _2332;
  float _2333;
  float _2334;
  float _2335;
  float _2421;
  float _2422;
  float _2423;
  float _2566;
  float _2567;
  float _2568;
  float _2569;
  half _2570;
  half _2571;
  half _2572;
  half _2573;
  float _2711;
  float _2712;
  float _2713;
  float _2714;
  float _2715;
  float _2716;
  float _2717;
  float _2718;
  half _2719;
  half _2720;
  half _2721;
  half _2722;
  float _2773;
  float _2774;
  float _2775;
  float _2776;
  int _2777;
  int _2778;
  float _2825;
  float _2826;
  float _2827;
  float _2828;
  int _2829;
  int _2830;
  float _2860;
  float _2861;
  float _2862;
  float _2863;
  float _2982;
  float _2983;
  float _2984;
  float _3003;
  float _3004;
  float _3005;
  float _3006;
  float _3088;
  float _3123;
  float _3124;
  float _3125;
  float _3145;
  float _3203;
  float _3304;
  float _3305;
  float _3306;
  float _3374;
  float _3375;
  float _3376;
  float _3377;
  half _3378;
  half _3379;
  half _3380;
  float _3381;
  float _3382;
  float _3383;
  float _3384;
  float _3385;
  float _3517;
  float _3518;
  float _3519;
  float _3623;
  float _3624;
  float _3625;
  float _3626;
  float _3764;
  float _3765;
  float _3766;
  float _3767;
  float _3768;
  float _3799;
  float _3800;
  float _3801;
  float _3802;
  int _3803;
  int _3804;
  float _3835;
  float _3836;
  float _3837;
  float _3838;
  int _3839;
  int _3840;
  float _3870;
  float _3871;
  float _3872;
  float _3873;
  float _3885;
  float _3886;
  float _3887;
  float _3906;
  float _3965;
  float _4022;
  float _4076;
  float _4145;
  float _4146;
  float _4147;
  float _4200;
  float _4201;
  float _4202;
  float _4222;
  float _4223;
  float _4224;
  float _4225;
  int _4236;
  int _4294;
  float _4335;
  float _4361;
  float _4362;
  float _4363;
  float _4420;
  float _4421;
  float _4422;
  int _4525;
  int _4583;
  int _4596;
  float _4597;
  float _4598;
  float _4599;
  float _4600;
  float _4601;
  float _4602;
  float _4603;
  float _4604;
  int _4606;
  int _4656;
  int _4719;
  int _4720;
  int _4721;
  int _4722;
  int _4751;
  int _4814;
  int _4815;
  int _4816;
  int _4817;
  int _4823;
  int _4824;
  int _4825;
  int _4826;
  int _4827;
  int _4830;
  int _4831;
  int _4832;
  int _4833;
  int _4836;
  int _4837;
  int _4838;
  int _4839;
  int _4840;
  int _4847;
  int _4868;
  int _4874;
  int _4875;
  int _4876;
  int _4877;
  int _4878;
  float _4937;
  float _4938;
  float _4939;
  float _4940;
  int _4941;
  float _5166;
  float _5167;
  float _5168;
  float _5169;
  float _5186;
  float _5187;
  float _5188;
  float _5214;
  float _5215;
  float _5216;
  float _5217;
  float _5219;
  float _5220;
  float _5221;
  float _5222;
  float _5251;
  float _5252;
  float _5253;
  float _5273;
  float _5338;
  float _5439;
  float _5440;
  float _5441;
  float _5622;
  float _5623;
  float _5624;
  float _5625;
  float _5763;
  float _5764;
  float _5765;
  float _5766;
  float _5767;
  int _5818;
  int _5819;
  float _5820;
  float _5821;
  float _5822;
  float _5823;
  int _5870;
  int _5871;
  float _5872;
  float _5873;
  float _5874;
  float _5875;
  float _5905;
  float _5906;
  float _5907;
  float _5908;
  float _5920;
  float _5921;
  float _5922;
  float _5941;
  float _6023;
  float _6041;
  float _6042;
  float _6043;
  float _6057;
  float _6058;
  float _6059;
  float _212;
  float _213;
  float _214;
  float _215;
  float _217;
  float _218;
  float _219;
  float _220;
  bool _221;
  float _222;
  float4 _228;
  float4 _234;
  float _242;
  float _243;
  float _244;
  float _246;
  float _247;
  float _248;
  float _249;
  float _250;
  float _251;
  float _252;
  int _254;
  float _255;
  float _256;
  float _257;
  float _258;
  float _259;
  float _260;
  float4 _264;
  float4 _292;
  int _302;
  int _303;
  int _304;
  int _317;
  float _327;
  float _328;
  float _329;
  float _333;
  float _337;
  float _338;
  float _339;
  float4 _343;
  float4 _371;
  int _381;
  int _382;
  int _383;
  int _396;
  float4 _409;
  float4 _437;
  int _447;
  int _448;
  int _449;
  int _462;
  int _485;
  bool _489;
  int _490;
  int _491;
  int _492;
  int _493;
  float _495;
  float4 _502;
  float4 _530;
  int _540;
  int _541;
  int _542;
  int _555;
  int _591;
  int _597;
  int _598;
  int _599;
  int _611;
  int _618;
  int _628;
  uint _633;
  int _639;
  uint _646;
  float _648;
  float4 _650;
  int _695;
  int _698;
  int _700;
  int16_t _703;
  half _706;
  half _707;
  half _708;
  float _714;
  float _715;
  float _716;
  float _741;
  float _742;
  float _743;
  float _755;
  float _756;
  float _757;
  float _759;
  bool _761;
  float _765;
  float _781;
  float _782;
  float _783;
  float _817;
  float _818;
  float _819;
  bool _837;
  float _838;
  float _839;
  float _840;
  float _843;
  float _846;
  float _849;
  float _850;
  float _854;
  float _855;
  float _856;
  float _882;
  float _886;
  float _911;
  bool _915;
  float _925;
  float _926;
  float _927;
  float _928;
  int _929;
  float _938;
  float _958;
  float _959;
  float _960;
  float _961;
  float _964;
  float _965;
  float _969;
  float _990;
  bool _1022;
  float _1039;
  float _1040;
  float _1041;
  float _1077;
  float _1080;
  float _1083;
  float _1084;
  int _1102;
  int _1103;
  float _1111;
  float4 _1142;
  uint _1153;
  float _1169;
  float _1170;
  float _1171;
  float _1173;
  float _1174;
  float _1175;
  float _1176;
  float _1182;
  float _1184;
  float _1192;
  float _1201;
  float _1202;
  float4 _1224;
  float4 _1252;
  int _1262;
  int _1263;
  int _1264;
  int _1277;
  float _1297;
  float _1299;
  float _1300;
  float _1313;
  float _1314;
  float _1315;
  float _1319;
  float _1320;
  float _1321;
  float _1325;
  float _1326;
  float _1327;
  float _1337;
  float _1358;
  float4 _1362;
  float4 _1390;
  int _1400;
  int _1401;
  int _1402;
  int _1415;
  float _1428;
  float _1429;
  float _1430;
  bool _1434;
  bool _1435;
  bool _1436;
  float _1437;
  float _1438;
  float _1439;
  bool _1440;
  bool _1441;
  bool _1442;
  float4 _1464;
  float4 _1483;
  float _1487;
  float _1488;
  float _1489;
  int _1505;
  float _1512;
  float _1513;
  float _1514;
  float _1515;
  float _1524;
  float _1525;
  float _1526;
  float _1527;
  float _1528;
  float _1529;
  int _1533;
  int _1534;
  int _1535;
  uint4 _1542;
  float _1559;
  float _1582;
  float _1583;
  float _1584;
  float _1615;
  float _1617;
  float _1624;
  float _1636;
  float _1642;
  float _1643;
  float _1659;
  float _1665;
  float _1685;
  float _1686;
  float _1690;
  float _1691;
  float _1692;
  int _1693;
  int _1711;
  float _1714;
  float _1718;
  float _1719;
  float _1720;
  float4 _1729;
  float4 _1757;
  int _1767;
  int _1768;
  int _1769;
  int _1782;
  int _1805;
  bool _1809;
  int _1810;
  int _1811;
  int _1812;
  int _1813;
  float _1814;
  float4 _1821;
  float4 _1849;
  int _1859;
  int _1860;
  int _1861;
  int _1874;
  int _1910;
  int _1916;
  int _1917;
  int _1918;
  int _1930;
  int _1937;
  int _1947;
  uint _1952;
  int _1958;
  uint _1965;
  float _1967;
  float4 _1969;
  int _2011;
  int _2014;
  int _2016;
  int16_t _2019;
  half _2022;
  half _2023;
  half _2024;
  float _2030;
  float _2031;
  float _2032;
  float _2057;
  float _2058;
  float _2059;
  float _2071;
  float _2072;
  float _2073;
  float _2075;
  bool _2077;
  float _2081;
  float _2097;
  float _2098;
  float _2099;
  float _2121;
  float _2124;
  float _2127;
  float _2136;
  float _2137;
  float _2138;
  float _2158;
  float _2161;
  float _2164;
  float _2165;
  float _2169;
  float _2170;
  float _2171;
  float _2197;
  float _2201;
  float _2226;
  float _2233;
  float _2234;
  float _2235;
  float _2236;
  int _2237;
  float _2246;
  float _2271;
  float _2281;
  float _2282;
  float _2283;
  float _2285;
  float _2286;
  float _2298;
  bool _2299;
  float _2313;
  float _2314;
  float _2317;
  float _2338;
  float _2342;
  float _2344;
  float _2348;
  float _2349;
  float _2350;
  float _2380;
  float _2385;
  float _2386;
  half4 _2413;
  float _2430;
  float _2431;
  float _2432;
  float _2437;
  float _2438;
  float _2439;
  float _2459;
  float _2463;
  float _2470;
  float _2471;
  bool _2478;
  float _2487;
  float _2488;
  float _2489;
  float _2509;
  float _2513;
  bool _2524;
  float _2525;
  float _2526;
  float _2527;
  int _2528;
  float _2534;
  float _2535;
  int _2538;
  int _2539;
  uint _2542;
  uint _2543;
  half4 _2560;
  int _2574;
  float4 _2576;
  float4 _2582;
  float4 _2588;
  float4 _2594;
  float _2599;
  float _2603;
  float _2607;
  float _2611;
  float _2614;
  float _2615;
  float _2616;
  float _2617;
  float _2620;
  float _2636;
  float _2642;
  float _2654;
  float _2658;
  float _2659;
  float _2660;
  float _2661;
  float _2662;
  float _2663;
  float _2666;
  float _2669;
  float _2672;
  float _2674;
  float _2675;
  float _2676;
  float _2677;
  float _2678;
  float _2683;
  float _2696;
  float _2698;
  float _2704;
  float _2742;
  float _2746;
  float _2750;
  float _2753;
  float _2754;
  bool _2765;
  float _2798;
  float _2802;
  float _2806;
  bool _2817;
  int _2840;
  int _2841;
  uint _2844;
  uint _2845;
  uint _2864;
  float4 _2866;
  float4 _2872;
  float4 _2878;
  float4 _2884;
  float _2889;
  float _2893;
  float _2897;
  float _2901;
  float _2904;
  float _2905;
  float _2906;
  float _2907;
  float _2910;
  float _2926;
  float _2932;
  float _2944;
  float _2948;
  float _2949;
  float _2950;
  float _2951;
  float _2952;
  float _2953;
  float _2956;
  float _2959;
  float _2962;
  float _2964;
  float _2990;
  float _3011;
  float _3012;
  float _3013;
  float _3014;
  float _3015;
  float _3016;
  float _3036;
  float _3040;
  float _3044;
  float _3059;
  float4 _3063;
  float _3068;
  float _3073;
  float _3075;
  float _3082;
  float _3089;
  half _3090;
  half _3091;
  half _3092;
  half _3106;
  half _3107;
  half _3108;
  bool _3111;
  float _3148;
  float _3154;
  float _3159;
  float _3163;
  float _3165;
  float _3167;
  float _3173;
  float _3174;
  float _3180;
  float2 _3208;
  float _3227;
  float _3228;
  float _3230;
  float _3236;
  float _3239;
  float _3242;
  float _3248;
  float _3249;
  float _3250;
  float _3269;
  float _3277;
  float _3289;
  float _3292;
  float _3298;
  float _3319;
  float _3320;
  float _3326;
  float _3328;
  float _3335;
  float _3336;
  float _3337;
  float _3338;
  float _3357;
  bool _3359;
  float _3360;
  float _3361;
  float _3362;
  float _3363;
  half _3366;
  half _3367;
  half _3368;
  float _3393;
  float _3401;
  float _3412;
  float _3414;
  float _3415;
  float _3416;
  float _3418;
  float _3419;
  float _3420;
  float _3421;
  float _3422;
  float _3423;
  float _3424;
  float _3429;
  float _3431;
  float _3434;
  float _3435;
  float _3437;
  float _3440;
  float _3441;
  float _3449;
  float _3450;
  float _3451;
  float _3452;
  float _3464;
  float _3468;
  float _3479;
  float _3481;
  float _3483;
  float _3488;
  float _3489;
  float _3493;
  float _3494;
  float _3495;
  float _3496;
  float _3524;
  float _3525;
  float _3526;
  float _3527;
  float _3531;
  float _3532;
  float _3533;
  float _3537;
  float _3538;
  float _3539;
  float _3543;
  float _3547;
  bool _3558;
  float _3566;
  float _3567;
  float _3568;
  float _3572;
  float _3576;
  bool _3587;
  float _3589;
  float _3590;
  float _3591;
  float _3592;
  int _3593;
  float _3599;
  float _3600;
  int _3603;
  int _3604;
  uint _3607;
  uint _3608;
  int _3627;
  float4 _3629;
  float4 _3635;
  float4 _3641;
  float4 _3647;
  float _3652;
  float _3656;
  float _3660;
  float _3664;
  float _3667;
  float _3668;
  float _3669;
  float _3670;
  float _3673;
  float _3689;
  float _3695;
  float _3707;
  float _3711;
  float _3712;
  float _3713;
  float _3714;
  float _3715;
  float _3716;
  float _3719;
  float _3722;
  float _3725;
  float _3727;
  float _3731;
  float _3736;
  float _3749;
  float _3751;
  float _3757;
  float _3772;
  float _3776;
  float _3780;
  bool _3791;
  float _3808;
  float _3812;
  float _3816;
  bool _3827;
  int _3850;
  int _3851;
  uint _3854;
  uint _3855;
  float _3893;
  float _3907;
  float _3908;
  float _3909;
  float _3913;
  float _3917;
  float _3921;
  float _3936;
  float4 _3940;
  float _3945;
  float _3950;
  float _3952;
  float _3959;
  uint4 _3971;
  float _3977;
  float _3980;
  float _3984;
  float _3985;
  float _3986;
  float _3987;
  float _4023;
  float _4025;
  float _4026;
  float _4032;
  float _4037;
  float _4040;
  float _4047;
  float _4053;
  float2 _4079;
  float _4083;
  float _4093;
  float _4094;
  float _4095;
  float _4114;
  float _4120;
  float _4130;
  float _4133;
  float _4139;
  float _4161;
  float _4163;
  float _4170;
  float _4171;
  float _4172;
  float _4173;
  float _4189;
  float _4203;
  float _4204;
  float _4205;
  float _4209;
  float _4210;
  float _4211;
  float4 _4238;
  float4 _4266;
  int _4276;
  int _4277;
  int _4278;
  int _4291;
  float _4314;
  float _4318;
  float _4338;
  bool _4339;
  float4 _4347;
  float _4370;
  float _4374;
  float4 _4378;
  float _4384;
  float _4385;
  float _4386;
  float _4387;
  float _4392;
  float _4393;
  float _4397;
  float _4407;
  float _4408;
  float _4409;
  float _4410;
  float _4415;
  float _4432;
  float _4443;
  float _4444;
  float _4449;
  float _4456;
  int _4467;
  float _4480;
  float _4481;
  float _4484;
  float _4487;
  float _4490;
  float _4491;
  float _4493;
  float _4496;
  float _4498;
  float _4499;
  float _4501;
  float _4502;
  float _4511;
  float _4515;
  float _4518;
  float _4523;
  float4 _4527;
  float4 _4555;
  int _4565;
  int _4566;
  int _4567;
  int _4580;
  float4 _4608;
  float4 _4627;
  float _4631;
  float _4632;
  float _4633;
  int _4649;
  float _4654;
  float4 _4658;
  float4 _4686;
  int _4696;
  int _4697;
  int _4698;
  int _4711;
  int _4736;
  bool _4740;
  int _4741;
  int _4742;
  int _4743;
  int _4744;
  float _4746;
  float4 _4753;
  float4 _4781;
  int _4791;
  int _4792;
  int _4793;
  int _4806;
  int _4842;
  int _4848;
  int _4849;
  int _4850;
  int _4862;
  int _4869;
  int _4879;
  uint _4884;
  int _4890;
  uint _4897;
  float _4899;
  float4 _4901;
  int _4943;
  int _4946;
  int _4948;
  int16_t _4951;
  half _4954;
  half _4955;
  half _4956;
  float _4962;
  float _4963;
  float _4964;
  float _4989;
  float _4990;
  float _4991;
  float _5003;
  float _5004;
  float _5005;
  float _5007;
  bool _5009;
  float _5013;
  float _5029;
  float _5030;
  float _5031;
  float _5053;
  float _5056;
  float _5059;
  float _5068;
  float _5069;
  float _5070;
  float _5088;
  float _5089;
  float _5090;
  float _5091;
  float _5095;
  float _5096;
  float _5097;
  float _5123;
  float _5127;
  float _5152;
  float _5159;
  float _5160;
  float _5161;
  float _5162;
  int _5163;
  float _5172;
  float _5189;
  float _5193;
  float _5194;
  float _5195;
  float _5198;
  float _5201;
  float _5205;
  float _5206;
  float _5207;
  int _5208;
  float _5234;
  float _5235;
  float _5236;
  bool _5239;
  float _5280;
  float _5282;
  float _5283;
  float _5289;
  float _5294;
  float _5300;
  float _5308;
  float _5315;
  float2 _5343;
  float _5365;
  float _5383;
  float _5384;
  float _5385;
  float _5404;
  float _5412;
  float _5424;
  float _5427;
  float _5433;
  float _5461;
  float _5463;
  float _5470;
  float _5471;
  float _5472;
  float _5473;
  float _5496;
  float _5497;
  float _5498;
  float _5518;
  float _5522;
  float _5529;
  float _5530;
  bool _5537;
  float _5549;
  float _5550;
  float _5551;
  float _5571;
  float _5575;
  bool _5586;
  int _5587;
  float _5588;
  float _5589;
  float _5590;
  float _5592;
  float _5598;
  float _5599;
  int _5602;
  int _5603;
  uint _5606;
  uint _5607;
  int _5626;
  float4 _5628;
  float4 _5634;
  float4 _5640;
  float4 _5646;
  float _5651;
  float _5655;
  float _5659;
  float _5663;
  float _5666;
  float _5667;
  float _5668;
  float _5669;
  float _5672;
  float _5688;
  float _5694;
  float _5706;
  float _5710;
  float _5711;
  float _5712;
  float _5713;
  float _5714;
  float _5715;
  float _5718;
  float _5721;
  float _5724;
  float _5726;
  float _5730;
  float _5735;
  float _5748;
  float _5750;
  float _5756;
  float _5787;
  float _5791;
  float _5795;
  float _5798;
  float _5799;
  bool _5810;
  float _5843;
  float _5847;
  float _5851;
  bool _5862;
  int _5885;
  int _5886;
  uint _5889;
  uint _5890;
  float _5928;
  float _5949;
  float _5950;
  float _5951;
  float _5971;
  float _5975;
  float _5979;
  float _5994;
  float4 _5998;
  float _6003;
  float _6008;
  float _6010;
  float _6017;
  float _6026;
  float _6027;
  float _6036;
  float _6049;
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
  _110 = (uint)((uint)(_108.x)) >> 24;  // [sem: _3__36__0__0__g_depthOpaque_load_derived]
  _114 = _110 & 127;
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
  _192 = (float)((uint)((uint)(((int)((uint)((uint)((uint)((uint)(_frameNumber.x)) >> 2)) * (uint)(71))) & 31)));
  if (!((uint)_114 > (uint)11) || !(((uint)_114 < (uint)20) || (_114 == 107))) {
    _209 = (_114 == 20);
  } else {
    _209 = true;
  }
  _212 = __3__38__0__1__g_raytracingHitResultUAV[int2(_82, _84)].x;
  _213 = __3__38__0__1__g_raytracingHitResultUAV[int2(_82, _84)].y;
  _214 = __3__38__0__1__g_raytracingHitResultUAV[int2(_82, _84)].z;
  _215 = __3__38__0__1__g_raytracingHitResultUAV[int2(_82, _84)].w;
  _217 = rsqrt(dot(float3(_212, _213, _214), float3(_212, _213, _214)));  // [sem: invLength]
  _218 = _217 * _212;
  _219 = _217 * _213;
  _220 = _217 * _214;
  _221 = (_215 < 0.0f);
  _222 = abs(_215);
  if ((_222 > 0.0f) && (_222 < 10000.0f)) {
    _228 = __3__36__0__0__g_raytracingBaseColor.Load(int3(_82, _84, 0));  // [sem: _3__36__0__0__g_raytracingBaseColor_load]
    _234 = __3__36__0__0__g_raytracingNormal.Load(int3(_82, _84, 0));  // [sem: _3__36__0__0__g_raytracingNormal_load]
    _242 = (_234.x * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_raytracingNormal_load_derived]
    _243 = (_234.y * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_raytracingNormal_load_derived]
    _244 = (_234.z * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_raytracingNormal_load_derived]
    _246 = rsqrt(dot(float3(_242, _243, _244), float3(_242, _243, _244)));  // [sem: invLength]
    _247 = _242 * _246;
    _248 = _243 * _246;
    _249 = _244 * _246;
    _250 = select(_221, 0.0f, _247);
    _251 = select(_221, 0.0f, _248);
    _252 = select(_221, 0.0f, _249);
    _254 = (int)(uint)((int)(_228.w > 0.0f));  // [sem: _3__36__0__0__g_raytracingBaseColor_load_derived]
    _255 = _218 * _222;
    _256 = _219 * _222;
    _257 = _220 * _222;
    _258 = _255 + _177;
    _259 = _256 + _178;
    _260 = _257 + _179;
    _262 = 0;
    while(true) {
      _264 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_262) + (int)(20)))];
      _292 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_262) + (int)(36)))];
      // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.16.00]
      // Description: Jitters this native voxel coordinate before integer quantization when Snow / Fog Lighting Fixes is active; when disabled, the helper returns the coordinate unchanged.
      float3 _rndx_surfel_jitter_302 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _258) * _264.w) + _292.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _259) * _264.w) + _292.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _260) * _264.w) + _292.z), float2(_85, _86), _192, _frameNumber.x);
      _302 = (int)(floor(_rndx_surfel_jitter_302.x));
      _303 = (int)(floor(_rndx_surfel_jitter_302.y));
      _304 = (int)(floor(_rndx_surfel_jitter_302.z));
      // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
      if (!(((((int)_302 >= (int)((int)(_264.x + -63.0f))) && ((int)_302 < (int)((int)(_264.x + 63.0f)))) && (((int)_303 >= (int)((int)(_264.y + -31.0f))) && ((int)_303 < (int)((int)(_264.y + 31.0f))))) && (((int)_304 >= (int)((int)(_264.z + -63.0f))) && ((int)_304 < (int)((int)(_264.z + 63.0f)))))) {
        _317 = (int)(_262) + (int)(1);
        if ((uint)_317 < (uint)8) {
          _262 = _317;
          continue;
        } else {
          _320 = -10000;
        }
      } else {
        _320 = _262;
      }
      _327 = -0.0f - _218;
      _328 = -0.0f - _219;
      _329 = -0.0f - _220;
      _333 = min(_222, (((float)((int)((int)((uint)(1) << (_320 & 31))))) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x));
      _337 = (_333 * select(_221, _327, _247)) + _258;
      _338 = (_333 * select(_221, _328, _248)) + _259;
      _339 = (_333 * select(_221, _329, _249)) + _260;
      _341 = 0;
      while(true) {
        _343 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_341) + (int)(20)))];
        _371 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_341) + (int)(36)))];
        // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.16.00]
        // Description: Jitters this native voxel coordinate before integer quantization when Snow / Fog Lighting Fixes is active; when disabled, the helper returns the coordinate unchanged.
        float3 _rndx_surfel_jitter_381 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _337) * _343.w) + _371.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _338) * _343.w) + _371.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _339) * _343.w) + _371.z), float2(_85, _86), _192, _frameNumber.x);
        _381 = (int)(floor(_rndx_surfel_jitter_381.x));
        _382 = (int)(floor(_rndx_surfel_jitter_381.y));
        _383 = (int)(floor(_rndx_surfel_jitter_381.z));
        // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
        if (!(((((int)_381 >= (int)((int)(_343.x + -63.0f))) && ((int)_381 < (int)((int)(_343.x + 63.0f)))) && (((int)_382 >= (int)((int)(_343.y + -31.0f))) && ((int)_382 < (int)((int)(_343.y + 31.0f))))) && (((int)_383 >= (int)((int)(_343.z + -63.0f))) && ((int)_383 < (int)((int)(_343.z + 63.0f)))))) {
          _396 = (int)(_341) + (int)(1);
          if ((uint)_396 < (uint)8) {
            _341 = _396;
            continue;
          } else {
            _399 = -10000;
          }
        } else {
          _399 = _341;
        }
        if ((_399 != -10000) && ((int)_399 < (int)4)) {
          if ((int)_399 < (int)6) {
            _407 = 0;
            while(true) {
              _409 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_407) + (int)(20)))];
              _437 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_407) + (int)(36)))];
              // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.16.00]
              // Description: Jitters this native voxel coordinate before integer quantization when Snow / Fog Lighting Fixes is active; when disabled, the helper returns the coordinate unchanged.
              float3 _rndx_surfel_jitter_447 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _337) * _409.w) + _437.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _338) * _409.w) + _437.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _339) * _409.w) + _437.z), float2(_85, _86), _192, _frameNumber.x);
              _447 = (int)(floor(_rndx_surfel_jitter_447.x));
              _448 = (int)(floor(_rndx_surfel_jitter_447.y));
              _449 = (int)(floor(_rndx_surfel_jitter_447.z));
              // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
              if (((((int)_447 >= (int)((int)(_409.x + -63.0f))) && ((int)_447 < (int)((int)(_409.x + 63.0f)))) && (((int)_448 >= (int)((int)(_409.y + -31.0f))) && ((int)_448 < (int)((int)(_409.y + 31.0f))))) && (((int)_449 >= (int)((int)(_409.z + -63.0f))) && ((int)_449 < (int)((int)(_409.z + 63.0f))))) {
                _470 = (_447 & 127);
                _471 = (_448 & 63);
                _472 = (_449 & 127);
                _473 = _407;
              } else {
                _462 = (int)(_407) + (int)(1);
                if ((uint)_462 < (uint)8) {
                  _407 = _462;
                  continue;
                } else {
                  _470 = -10000;
                  _471 = -10000;
                  _472 = -10000;
                  _473 = -10000;
                }
              }
              if (!((uint)_473 > (uint)5)) {
                _485 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_470, _471, ((int)((uint)((uint)((int)((int)((uint)((uint)(_473)) * (uint)(130))) | (int)(1))) + (uint)((uint)(_472)))), 0)))).x) & 4194303;
                _489 = (_485 != 0) && ((uint)((int)(_485) + (int)(4)) < (uint)3145729);
                _490 = select(_489, _470, -10000);
                _491 = select(_489, _471, -10000);
                _492 = select(_489, _472, -10000);
                _493 = select(_489, _473, -10000);
                _495 = (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 0.5f) * ((float)((int)((int)((uint)(1) << (_473 & 31)))));
                _500 = 0;
                while(true) {
                  _502 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_500) + (int)(20)))];
                  _530 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_500) + (int)(36)))];
                  // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.16.00]
                  // Description: Jitters this native voxel coordinate before integer quantization when Snow / Fog Lighting Fixes is active; when disabled, the helper returns the coordinate unchanged.
                  float3 _rndx_surfel_jitter_540 = RenoDXSurfelVoxelJitter(float3((((_337 - _495) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x) * _502.w) + _530.x, (((_338 - _495) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y) * _502.w) + _530.y, (((_339 - _495) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z) * _502.w) + _530.z), float2(_85, _86), _192, _frameNumber.x);
                  _540 = (int)(floor(_rndx_surfel_jitter_540.x));
                  _541 = (int)(floor(_rndx_surfel_jitter_540.y));
                  _542 = (int)(floor(_rndx_surfel_jitter_540.z));
                  // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
                  if (((((int)_540 >= (int)((int)(_502.x + -63.0f))) && ((int)_540 < (int)((int)(_502.x + 63.0f)))) && (((int)_541 >= (int)((int)(_502.y + -31.0f))) && ((int)_541 < (int)((int)(_502.y + 31.0f))))) && (((int)_542 >= (int)((int)(_502.z + -63.0f))) && ((int)_542 < (int)((int)(_502.z + 63.0f))))) {
                    _563 = (_540 & 127);
                    _564 = (_541 & 63);
                    _565 = (_542 & 127);
                    _566 = _500;
                  } else {
                    _555 = (int)(_500) + (int)(1);
                    if ((uint)_555 < (uint)8) {
                      _500 = _555;
                      continue;
                    } else {
                      _563 = -10000;
                      _564 = -10000;
                      _565 = -10000;
                      _566 = -10000;
                    }
                  }
                  if (!((uint)_566 > (uint)5)) {
                    if (_485 == 0) {
                      _572 = 0;
                      _573 = _493;
                      _574 = _492;
                      _575 = _491;
                      _576 = _490;
                      while(true) {
                        _585 = 0;
                        _586 = _573;
                        _587 = _574;
                        _588 = _575;
                        _589 = _576;
                        while(true) {
                          _596 = 0;
                          while(true) {
                            _597 = (int)(_596) + (int)(_563);
                            _598 = (int)(_585) + (int)(_564);
                            _599 = (int)(_572) + (int)(_565);
                            bool __branch_chain_595;
                            if (((uint)_598 > (uint)63) || ((uint)((int)(_597) | (int)(_599)) > (uint)127)) {
                              _617 = 0;
                              __branch_chain_595 = true;
                            } else {
                              _611 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_597, _598, ((int)((uint)((uint)(_599)) + (uint)((uint)((int)((int)((uint)((uint)(_566)) * (uint)(130))) | (int)(1))))), 0)))).x) & 4194303;
                              if (!((_611 != 0) && ((uint)((int)(_611) + (int)(4)) < (uint)3145729))) {
                                _617 = _611;
                                __branch_chain_595 = true;
                              } else {
                                _623 = _597;
                                _624 = _598;
                                _625 = _599;
                                _626 = _566;
                                _627 = _611;
                                __branch_chain_595 = false;
                              }
                            }
                            if (__branch_chain_595) {
                              _618 = (int)(_596) + (int)(1);
                              if (((int)_618 < (int)2) && (_617 == 0)) {
                                _596 = _618;
                                continue;
                              } else {
                                _623 = _589;
                                _624 = _588;
                                _625 = _587;
                                _626 = _586;
                                _627 = _617;
                              }
                            }
                            _628 = (int)(_585) + (int)(1);
                            if (((int)_628 < (int)2) && (_627 == 0)) {
                              _585 = _628;
                              _586 = _626;
                              _587 = _625;
                              _588 = _624;
                              _589 = _623;
                              __loop_jump_target = 584;
                              break;
                            }
                            while(true) {
                              _591 = (int)(_572) + (int)(1);
                              if (((int)_591 < (int)2) && (_627 == 0)) {
                                _572 = _591;
                                _573 = _626;
                                _574 = _625;
                                _575 = _624;
                                _576 = _623;
                                __loop_jump_target = 571;
                                break;
                              }
                              while(true) {
                                _579 = _626;
                                _580 = _625;
                                _581 = _624;
                                _582 = _623;
                                break;
                              }
                              break;
                            }
                            if (__loop_jump_target != -1) {
                              break;
                            }
                            break;
                          }
                          if (__loop_jump_target == 584) {
                            __loop_jump_target = -1;
                            continue;
                          }
                          if (__loop_jump_target != -1) {
                            break;
                          }
                          break;
                        }
                        if (__loop_jump_target == 571) {
                          __loop_jump_target = -1;
                          continue;
                        }
                        if (__loop_jump_target != -1) {
                          break;
                        }
                        break;
                      }
                    } else {
                      _579 = _493;
                      _580 = _492;
                      _581 = _491;
                      _582 = _490;
                    }
                    if ((uint)_579 < (uint)6) {
                      _633 = (uint)((uint)(_579)) * (uint)(130);
                      _639 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_582, _581, ((int)((uint)((uint)((int)(_633) | (int)(1))) + (uint)((uint)(_580)))), 0)))).x) & 4194303;
                      if ((_639 != 0) && ((uint)((int)(_639) + (int)(4)) < (uint)3145729)) {
                        _646 = (uint)(1) << (_579 & 31);
                        _648 = ((float)((int)(_646))) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                        _650 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((uint)((uint)((uint)(_579)) + (uint)(20)))];
                        _686 = 0.0f;
                        _687 = 0.0f;
                        _688 = 0.0f;
                        _689 = _250;
                        _690 = _251;
                        _691 = _252;
                        _692 = 0.0f;
                        _693 = 0;
                        while(true) {
                          _695 = (int)((int)(_639) + (int)(-1)) + (int)(_693);
                          _698 = __3__37__0__0__g_surfelDataBuffer[_695]._baseColor;
                          _700 = __3__37__0__0__g_surfelDataBuffer[_695]._normal;
                          _703 = __3__37__0__0__g_surfelDataBuffer[_695]._radius;
                          if (!(_698 == 0)) {
                            _706 = __3__37__0__0__g_surfelDataBuffer[_695]._radiance.z;
                            _707 = __3__37__0__0__g_surfelDataBuffer[_695]._radiance.y;
                            _708 = __3__37__0__0__g_surfelDataBuffer[_695]._radiance.x;
                            _714 = (float)((uint)((uint)(_698 & 255)));
                            _715 = (float)((uint)((uint)(((uint)((uint)(_698)) >> 8) & 255)));
                            _716 = (float)((uint)((uint)(((uint)((uint)(_698)) >> 16) & 255)));
                            _741 = select(((_714 * 0.003921569f) < 0.04045f), (_714 * 0.000303527f), exp2(log2((_714 * 0.003717127f) + 0.052132703f) * 2.4f));
                            _742 = select(((_715 * 0.003921569f) < 0.04045f), (_715 * 0.000303527f), exp2(log2((_715 * 0.003717127f) + 0.052132703f) * 2.4f));
                            _743 = select(((_716 * 0.003921569f) < 0.04045f), (_716 * 0.000303527f), exp2(log2((_716 * 0.003717127f) + 0.052132703f) * 2.4f));
                            _755 = (((float)((uint)((uint)(_700 & 255)))) * 0.007874016f) + -1.0f;
                            _756 = (((float)((uint)((uint)(((uint)((uint)(_700)) >> 8) & 255)))) * 0.007874016f) + -1.0f;
                            _757 = (((float)((uint)((uint)(((uint)((uint)(_700)) >> 16) & 255)))) * 0.007874016f) + -1.0f;
                            _759 = rsqrt(dot(float3(_755, _756, _757), float3(_755, _756, _757)));  // [sem: invLength]
                            _761 = ((_700 & 16777215) == 0);
                            _765 = (_648 * 0.0019607844f) * ((float)((uint16_t)((int16_t)(_703 & 255))));
                            _781 = (((((float)((uint)((uint)((uint)((uint)(_698)) >> 24)))) * 0.003937008f) + -0.5f) * _648) + ((((_650.x + -63.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_582)) + (uint)(64)) - (uint)((uint)((int)(_650.x))))) & 127)))) * _648) - _viewPos.x);
                            _782 = (((((float)((uint)((uint)((uint)((uint)(_700)) >> 24)))) * 0.003937008f) + -0.5f) * _648) + ((((_650.y + -31.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_581)) + (uint)(32)) - (uint)((uint)((int)(_650.y))))) & 63)))) * _648) - _viewPos.y);
                            _783 = (((((float)((uint16_t)((int16_t)((uint16_t)(_703) >> 8)))) * 0.003937008f) + -0.5f) * _648) + ((((_650.z + -63.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_580)) + (uint)(64)) - (uint)((uint)((int)(_650.z))))) & 127)))) * _648) - _viewPos.z);
                            if (!((((_708 < 0.0h) || ((_741 > 1.1f) || (_741 < 0.0f))) || ((_707 < 0.0h) || ((_742 > 1.1f) || (_742 < 0.0f)))) || ((_706 < 0.0h) || ((_743 > 1.1f) || (_743 < 0.0f))))) {
                              _817 = -0.0f - min(0.0f, (-0.0f - float(_708)));
                              _818 = -0.0f - min(0.0f, (-0.0f - float(_707)));
                              _819 = -0.0f - min(0.0f, (-0.0f - float(_706)));
                              _837 = (_234.w == 0.0f);  // [sem: _3__36__0__0__g_raytracingNormal_load_derived]
                              _838 = select(_837, _327, _689);
                              _839 = select(_837, _328, _690);
                              _840 = select(_837, _329, _691);
                              _843 = ((-0.0f - _177) - _255) + _781;
                              _846 = ((-0.0f - _178) - _256) + _782;
                              _849 = ((-0.0f - _179) - _257) + _783;
                              _850 = dot(float3(_843, _846, _849), float3(_838, _839, _840));
                              _854 = _843 - (_850 * _838);
                              _855 = _846 - (_850 * _839);
                              _856 = _849 - (_850 * _840);
                              _882 = 1.0f / ((float)((uint)((uint)(_646))));
                              _886 = frac(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _783) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z) * _882);
                              _911 = select(((int)_579 > (int)5), 1.0f, ((saturate((saturate(dot(float3(_327, _328, _329), float3(select(_761, _327, (_759 * _755)), select(_761, _328, (_759 * _756)), select(_761, _329, (_759 * _757))))) + -0.03125f) * 1.032258f) * ((float)((bool)(dot(float3(_854, _855, _856), float3(_854, _855, _856)) < ((_765 * _765) * 64.0f))))) * ((float)((bool)(((__3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _781) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _882), (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _782) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y) * _882), (((((float)((uint)((uint)(_633)))) + 1.0f) + ((select((_886 < 0.0f), 1.0f, 0.0f) + _886) * 128.0f)) * 0.00096153846f)), 0.0f)).x) > ((_648 * 0.25f) * (saturate((dot(float3(_817, _818, _819), float3(0.212671f, 0.71516f, 0.072169f)) * 0.0001f) / _exposure3.w) + 1.0f)))))));
                              _915 = (!(_228.w > 0.0f)) || ((_698 & 16777215) == 16777215);
                              _925 = ((select(_915, (((_742 * 0.33951f) + (_741 * 0.61312f)) + (_743 * 0.04737f)), _228.x) * _817) * _911) + _686;
                              _926 = ((select(_915, (((_742 * 0.91636f) + (_741 * 0.0702f)) + (_743 * 0.01345f)), _228.y) * _818) * _911) + _687;
                              _927 = ((select(_915, (((_742 * 0.10958f) + (_741 * 0.02062f)) + (_743 * 0.8698f)), _228.z) * _819) * _911) + _688;
                              _928 = _911 + _692;
                              _929 = (int)(_693) + (int)(1);
                              if ((uint)_929 < (uint)4) {
                                _686 = _925;
                                _687 = _926;
                                _688 = _927;
                                _689 = _838;
                                _690 = _839;
                                _691 = _840;
                                _692 = _928;
                                _693 = _929;
                                continue;
                              } else {
                                _932 = _925;
                                _933 = _926;
                                _934 = _927;
                                _935 = _928;
                              }
                            } else {
                              _932 = _686;
                              _933 = _687;
                              _934 = _688;
                              _935 = _692;
                            }
                          } else {
                            _932 = _686;
                            _933 = _687;
                            _934 = _688;
                            _935 = _692;
                          }
                          if (_935 > 0.0f) {
                            _938 = 1.0f / _935;
                            _952 = (-0.0f - min(0.0f, (-0.0f - (_932 * _938))));
                            _953 = (-0.0f - min(0.0f, (-0.0f - (_933 * _938))));
                            _954 = (-0.0f - min(0.0f, (-0.0f - (_934 * _938))));
                          } else {
                            _952 = _932;
                            _953 = _933;
                            _954 = _934;
                          }
                          break;
                        }
                      } else {
                        _952 = 0.0f;
                        _953 = 0.0f;
                        _954 = 0.0f;
                      }
                    } else {
                      _952 = 0.0f;
                      _953 = 0.0f;
                      _954 = 0.0f;
                    }
                  } else {
                    _952 = 0.0f;
                    _953 = 0.0f;
                    _954 = 0.0f;
                  }
                  break;
                }
              } else {
                _952 = 0.0f;
                _953 = 0.0f;
                _954 = 0.0f;
              }
              _958 = max(1e-06f, (_exposure3.w * 0.001f));
              _959 = max(_958, _952);
              _960 = max(_958, _953);
              _961 = max(_958, _954);
              _964 = dot(float3(_959, _960, _961), float3(0.212671f, 0.71516f, 0.072169f));
              _965 = min((max(0.0005f, _exposure3.w) * 512.0f), _964);
              _969 = max(1e-09f, _964);
              _974 = ((_965 * _959) / _969);
              _975 = ((_965 * _960) / _969);
              _976 = ((_965 * _961) / _969);
              break;
            }
          } else {
            _974 = 0.0f;
            _975 = 0.0f;
            _976 = 0.0f;
          }
          if (saturate(_234.w) == 0.0f) {
            _990 = (exp2((saturate(saturate(_228.w)) * 20.0f) + -8.0f) + -0.00390625f) * (1.0f / (((_222 * _222) * 0.1f) + 1.0f));
            _998 = ((_990 * _228.x) + _974);
            _999 = ((_990 * _228.y) + _975);
            _1000 = ((_990 * _228.z) + _976);
          } else {
            _998 = _974;
            _999 = _975;
            _1000 = _976;
          }
          _1007 = _250;
          _1008 = _251;
          _1009 = _252;
          _1010 = _234.w;
          _1011 = _228.x;
          _1012 = _228.y;
          _1013 = _228.z;
          _1014 = _228.w;
          _1015 = _254;
          _1016 = (_renderParams2.y * _998);
          _1017 = (_renderParams2.y * _999);
          _1018 = (_renderParams2.y * _1000);
          _1019 = 1.0f;
          _1020 = _222;
        } else {
          _1007 = _250;
          _1008 = _251;
          _1009 = _252;
          _1010 = _234.w;
          _1011 = _228.x;
          _1012 = _228.y;
          _1013 = _228.z;
          _1014 = _228.w;
          _1015 = _254;
          _1016 = 0.0f;
          _1017 = 0.0f;
          _1018 = 0.0f;
          _1019 = 1.0f;
          _1020 = _222;
        }
        break;
      }
      break;
    }
  } else {
    _1007 = 0.0f;
    _1008 = 0.0f;
    _1009 = 0.0f;
    _1010 = 0.0f;
    _1011 = 0.0f;
    _1012 = 0.0f;
    _1013 = 0.0f;
    _1014 = 0.0f;
    _1015 = 0;
    _1016 = 0.0f;
    _1017 = 0.0f;
    _1018 = 0.0f;
    _1019 = 0.0f;
    _1020 = 0.0f;
  }
  _1022 = (_1020 > 0.0f);
  if ((_182 > (_lightingParams.z * 0.875f)) && (!_1022)) {
    _1035 = (_182 < (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 11585.126f));
  } else {
    _1035 = false;
  }
  _1039 = (_1020 * _218) + _177;
  _1040 = (_1020 * _219) + _178;
  _1041 = (_1020 * _220) + _179;
  _1077 = mad((_viewProjRelativePrev[3].z), _1041, mad((_viewProjRelativePrev[3].y), _1040, ((_viewProjRelativePrev[3].x) * _1039))) + (_viewProjRelativePrev[3].w);
  _1080 = (mad((_viewProjRelativePrev[2].z), _1041, mad((_viewProjRelativePrev[2].y), _1040, ((_viewProjRelativePrev[2].x) * _1039))) + (_viewProjRelativePrev[2].w)) / _1077;
  _1083 = (((mad((_viewProjRelativePrev[0].z), _1041, mad((_viewProjRelativePrev[0].y), _1040, ((_viewProjRelativePrev[0].x) * _1039))) + (_viewProjRelativePrev[0].w)) / _1077) * 0.5f) + 0.5f;
  _1084 = 0.5f - (((mad((_viewProjRelativePrev[1].z), _1041, mad((_viewProjRelativePrev[1].y), _1040, ((_viewProjRelativePrev[1].x) * _1039))) + (_viewProjRelativePrev[1].w)) / _1077) * 0.5f);
  if (_221) {
    if (_1022) {
      _1102 = (int)(_1083 * _bufferSizeAndInvSize.x);
      _1103 = (int)(_1084 * _bufferSizeAndInvSize.y);
      _1111 = _nearFarProj.x / max(1e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaquePrev.Load(int3(_1102, _1103, 0)))).x) & 16777215)))) * 5.960465e-08f));
      if ((_1080 > 0.0f) && (((_1083 >= 0.0f) && (_1083 <= 1.0f)) && ((_1084 >= 0.0f) && (_1084 <= 1.0f)))) {
        if (((_1111 - dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z))) > 0.0f) && (abs(_1111 - _1077) < max(0.5f, (_1077 * 0.05f)))) {
          _1142 = __3__36__0__0__g_sceneColor.SampleLevel(__3__40__0__0__g_samplerClamp, float2(_1083, _1084), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
          if (!(!(_1142.w >= 0.0f))) {
            _1153 = __3__36__0__0__g_sceneNormal.Load(int3(_1102, _1103, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
            _1169 = min(1.0f, ((((float)((uint)((uint)(_1153.x & 1023)))) * 0.0019569471f) + -1.0f));
            _1170 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1153.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));
            _1171 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1153.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));
            _1173 = rsqrt(dot(float3(_1169, _1170, _1171), float3(_1169, _1170, _1171)));  // [sem: invLength]
            _1174 = _1173 * _1169;
            _1175 = _1173 * _1170;
            _1176 = _1173 * _1171;
            _1182 = select((dot(float3((-0.0f - _218), (-0.0f - _219), (-0.0f - _220)), float3(_1174, _1175, _1176)) > 0.2f), 1.0f, 0.0f);
            _1184 = saturate(_182 * 0.01f);  // [sem: expr_sat]
            _1192 = (float)((bool)(abs(_nearFarProj.x - _1111) < (_1111 * 0.5f)));
            _1197 = _1174;
            _1198 = _1175;
            _1199 = _1176;
            _1200 = 0.8f;
            _1201 = _renderParams2.x * _renderParams2.x;
            _1202 = ((_1182 - (_1182 * _1184)) + _1184) * _1201;
            _1211 = ((_1020 * 0.9999f) * _renderParams2.x);
            _1212 = _1197;
            _1213 = _1198;
            _1214 = _1199;
            _1215 = _1200;
            _1216 = ((_1202 * min(10000.0f, _1142.x)) * _1192);
            _1217 = ((_1202 * min(10000.0f, _1142.y)) * _1192);
            _1218 = ((_1202 * min(10000.0f, _1142.z)) * _1192);
            _1219 = _1201;
            _1220 = 1;
          } else {
            _1211 = _1020;
            _1212 = _1007;
            _1213 = _1008;
            _1214 = _1009;
            _1215 = _1010;
            _1216 = 0.0f;
            _1217 = 0.0f;
            _1218 = 0.0f;
            _1219 = 0.0f;
            _1220 = 0;
          }
        } else {
          _1211 = _1020;
          _1212 = _1007;
          _1213 = _1008;
          _1214 = _1009;
          _1215 = _1010;
          _1216 = 0.0f;
          _1217 = 0.0f;
          _1218 = 0.0f;
          _1219 = 0.0f;
          _1220 = 0;
        }
      } else {
        _1211 = _1020;
        _1212 = _1007;
        _1213 = _1008;
        _1214 = _1009;
        _1215 = _1010;
        _1216 = 0.0f;
        _1217 = 0.0f;
        _1218 = 0.0f;
        _1219 = 0.0f;
        _1220 = 0;
      }
    } else {
      _1211 = _1020;
      _1212 = _1007;
      _1213 = _1008;
      _1214 = _1009;
      _1215 = _1010;
      _1216 = 0.0f;
      _1217 = 0.0f;
      _1218 = 0.0f;
      _1219 = 0.0f;
      _1220 = 0;
    }
  } else {
    if (_1022 && ((_1080 > 0.0f) && (((_1083 >= 0.0f) && (_1083 <= 1.0f)) && ((_1084 >= 0.0f) && (_1084 <= 1.0f))))) {
      _1102 = (int)(_1083 * _bufferSizeAndInvSize.x);
      _1103 = (int)(_1084 * _bufferSizeAndInvSize.y);
      _1111 = _nearFarProj.x / max(1e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaquePrev.Load(int3(_1102, _1103, 0)))).x) & 16777215)))) * 5.960465e-08f));
      if ((_1080 > 0.0f) && (((_1083 >= 0.0f) && (_1083 <= 1.0f)) && ((_1084 >= 0.0f) && (_1084 <= 1.0f)))) {
        if (((_1111 - dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z))) > 0.0f) && (abs(_1111 - _1077) < max(0.5f, (_1077 * 0.05f)))) {
          _1142 = __3__36__0__0__g_sceneColor.SampleLevel(__3__40__0__0__g_samplerClamp, float2(_1083, _1084), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
          if (!(!(_1142.w >= 0.0f))) {
            _1153 = __3__36__0__0__g_sceneNormal.Load(int3(_1102, _1103, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
            _1169 = min(1.0f, ((((float)((uint)((uint)(_1153.x & 1023)))) * 0.0019569471f) + -1.0f));
            _1170 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1153.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));
            _1171 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1153.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));
            _1173 = rsqrt(dot(float3(_1169, _1170, _1171), float3(_1169, _1170, _1171)));  // [sem: invLength]
            _1174 = _1173 * _1169;
            _1175 = _1173 * _1170;
            _1176 = _1173 * _1171;
            _1182 = select((dot(float3((-0.0f - _218), (-0.0f - _219), (-0.0f - _220)), float3(_1174, _1175, _1176)) > 0.2f), 1.0f, 0.0f);
            _1184 = saturate(_182 * 0.01f);  // [sem: expr_sat]
            _1192 = (float)((bool)(abs(_nearFarProj.x - _1111) < (_1111 * 0.5f)));
            _1197 = _1007;
            _1198 = _1008;
            _1199 = _1009;
            _1200 = _1010;
            _1201 = _renderParams2.x * _renderParams2.x;
            _1202 = ((_1182 - (_1182 * _1184)) + _1184) * _1201;
            _1211 = ((_1020 * 0.9999f) * _renderParams2.x);
            _1212 = _1197;
            _1213 = _1198;
            _1214 = _1199;
            _1215 = _1200;
            _1216 = ((_1202 * min(10000.0f, _1142.x)) * _1192);
            _1217 = ((_1202 * min(10000.0f, _1142.y)) * _1192);
            _1218 = ((_1202 * min(10000.0f, _1142.z)) * _1192);
            _1219 = _1201;
            _1220 = 1;
          } else {
            _1211 = _1020;
            _1212 = _1007;
            _1213 = _1008;
            _1214 = _1009;
            _1215 = _1010;
            _1216 = 0.0f;
            _1217 = 0.0f;
            _1218 = 0.0f;
            _1219 = 0.0f;
            _1220 = 0;
          }
        } else {
          _1211 = _1020;
          _1212 = _1007;
          _1213 = _1008;
          _1214 = _1009;
          _1215 = _1010;
          _1216 = 0.0f;
          _1217 = 0.0f;
          _1218 = 0.0f;
          _1219 = 0.0f;
          _1220 = 0;
        }
      } else {
        _1211 = _1020;
        _1212 = _1007;
        _1213 = _1008;
        _1214 = _1009;
        _1215 = _1010;
        _1216 = 0.0f;
        _1217 = 0.0f;
        _1218 = 0.0f;
        _1219 = 0.0f;
        _1220 = 0;
      }
    } else {
      _1211 = _1020;
      _1212 = _1007;
      _1213 = _1008;
      _1214 = _1009;
      _1215 = _1010;
      _1216 = 0.0f;
      _1217 = 0.0f;
      _1218 = 0.0f;
      _1219 = 0.0f;
      _1220 = 0;
    }
  }
  _1222 = 0;
  while(true) {
    _1224 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1222) + (int)(20)))];
    _1252 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1222) + (int)(36)))];
    // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.16.00]
    // Description: Jitters this native voxel coordinate before integer quantization when Snow / Fog Lighting Fixes is active; when disabled, the helper returns the coordinate unchanged.
    float3 _rndx_surfel_jitter_1262 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _177) * _1224.w) + _1252.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _178) * _1224.w) + _1252.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _179) * _1224.w) + _1252.z), float2(_85, _86), _192, _frameNumber.x);
    _1262 = (int)(floor(_rndx_surfel_jitter_1262.x));
    _1263 = (int)(floor(_rndx_surfel_jitter_1262.y));
    _1264 = (int)(floor(_rndx_surfel_jitter_1262.z));
    // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
    if (((((int)_1262 >= (int)((int)(_1224.x + -63.0f))) && ((int)_1262 < (int)((int)(_1224.x + 63.0f)))) && (((int)_1263 >= (int)((int)(_1224.y + -31.0f))) && ((int)_1263 < (int)((int)(_1224.y + 31.0f))))) && (((int)_1264 >= (int)((int)(_1224.z + -63.0f))) && ((int)_1264 < (int)((int)(_1224.z + 63.0f))))) {
      _1283 = (_1262 & 127);
      _1284 = _1222;
    } else {
      _1277 = (int)(_1222) + (int)(1);
      if ((uint)_1277 < (uint)8) {
        _1222 = _1277;
        continue;
      } else {
        _1283 = -10000;
        _1284 = -10000;
      }
    }
    if (!(_1283 == -10000)) {
      _1291 = ((float)((int)((int)((uint)(1) << (_1284 & 31)))));
    } else {
      _1291 = 1.0f;
    }
    _1297 = select(_209, (((frac(frac(dot(float2(((_192 * 32.665f) + _85), ((_192 * 11.815f) + _86)), float2(0.06711056f, 0.00583715f))) * 52.982918f) * 2.0f) * _1291) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x), 0.0f);
    if (_1035) {
      _1299 = _lightingParams.z * 1.3434899f;
      _1300 = -0.0f - _1299;
      if (((_179 > _1300) && (_179 < _1299)) && (((_177 > _1300) && (_177 < _1299)) && ((_178 > _1300) && (_178 < _1299)))) {
        _1313 = 1.0f / _218;
        _1314 = 1.0f / _219;
        _1315 = 1.0f / _220;
        _1319 = _1313 * (_1300 - _177);
        _1320 = _1314 * (_1300 - _178);
        _1321 = _1315 * (_1300 - _179);
        _1325 = _1313 * (_1299 - _177);
        _1326 = _1314 * (_1299 - _178);
        _1327 = _1315 * (_1299 - _179);
        _1337 = min(min(max(_1319, _1325), max(_1320, _1326)), max(_1321, _1327));
        if ((_1337 > 0.0f) && ((_1337 >= 0.0f) && (max(max(min(_1319, _1325), min(_1320, _1326)), min(_1321, _1327)) <= _1337))) {
          _1351 = _1337;
          _1352 = ((_1337 * _218) + _177);
          _1353 = ((_1337 * _219) + _178);
          _1354 = ((_1337 * _220) + _179);
        } else {
          _1351 = 0.0f;
          _1352 = _177;
          _1353 = _178;
          _1354 = _179;
        }
      } else {
        _1351 = 0.0f;
        _1352 = _177;
        _1353 = _178;
        _1354 = _179;
      }
      _1358 = select(((_1211 > 0.0f) && (_1219 >= 1.0f)), _1211, 256.0f);
      _1360 = 0;
      while(true) {
        _1362 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1360) + (int)(20)))];
        _1390 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1360) + (int)(36)))];
        // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.16.00]
        // Description: Jitters this native voxel coordinate before integer quantization when Snow / Fog Lighting Fixes is active; when disabled, the helper returns the coordinate unchanged.
        float3 _rndx_surfel_jitter_1400 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _1352) * _1362.w) + _1390.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _1353) * _1362.w) + _1390.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _1354) * _1362.w) + _1390.z), float2(_85, _86), _192, _frameNumber.x);
        _1400 = (int)(floor(_rndx_surfel_jitter_1400.x));
        _1401 = (int)(floor(_rndx_surfel_jitter_1400.y));
        _1402 = (int)(floor(_rndx_surfel_jitter_1400.z));
        // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
        if (!(((((int)_1400 >= (int)((int)(_1362.x + -63.0f))) && ((int)_1400 < (int)((int)(_1362.x + 63.0f)))) && (((int)_1401 >= (int)((int)(_1362.y + -31.0f))) && ((int)_1401 < (int)((int)(_1362.y + 31.0f))))) && (((int)_1402 >= (int)((int)(_1362.z + -63.0f))) && ((int)_1402 < (int)((int)(_1362.z + 63.0f)))))) {
          _1415 = (int)(_1360) + (int)(1);
          if ((uint)_1415 < (uint)8) {
            _1360 = _1415;
            continue;
          } else {
            _1418 = -10000;
          }
        } else {
          _1418 = _1360;
        }
        if (!((_1418 == -10000) || ((int)_1418 > (int)4))) {
          _1428 = _1352 + (_1297 * _218);
          _1429 = _1353 + (_1297 * _219);
          _1430 = _1354 + (_1297 * _220);
          _1434 = (_218 == 0.0f);
          _1435 = (_219 == 0.0f);
          _1436 = (_220 == 0.0f);
          _1437 = select(_1434, 0.0f, (1.0f / _218));
          _1438 = select(_1435, 0.0f, (1.0f / _219));
          _1439 = select(_1436, 0.0f, (1.0f / _220));
          _1440 = (_218 > 0.0f);
          _1441 = (_219 > 0.0f);
          _1442 = (_220 > 0.0f);
          if (_1358 > 0.0f) {
            _1455 = 0;
            _1456 = 0.0f;
            _1457 = 0.0f;
            _1458 = _1430;
            _1459 = _1429;
            _1460 = _1428;
            while(true) {
              _1462 = 0;
              while(true) {
                _1464 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1462) + (int)(20)))];
                _1483 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1462) + (int)(36)))];
                _1487 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _1460) * _1464.w) + _1483.x;
                _1488 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _1459) * _1464.w) + _1483.y;
                _1489 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _1458) * _1464.w) + _1483.z;
                if (!((_1489 >= (_1464.z + -63.0f)) && ((_1487 >= (_1464.x + -63.0f)) && (_1488 >= (_1464.y + -31.0f)))) || (((_1489 >= (_1464.z + -63.0f)) && ((_1487 >= (_1464.x + -63.0f)) && (_1488 >= (_1464.y + -31.0f)))) && (!((_1489 < (_1464.z + 63.0f)) && ((_1487 < (_1464.x + 63.0f)) && (_1488 < (_1464.y + 31.0f))))))) {
                  _1505 = (int)(_1462) + (int)(1);
                  if ((int)_1505 < (int)8) {
                    _1462 = _1505;
                    continue;
                  } else {
                    _1705 = _1457;
                    _1706 = _1458;
                    _1707 = _1459;
                    _1708 = _1460;
                    _1709 = _1456;
                    _1710 = -10000.0f;
                  }
                } else {
                  if (_1462 == -10000) {
                    _1699 = _1457;
                    _1700 = _1458;
                    _1701 = _1459;
                    _1702 = _1460;
                    _1703 = _1456;
                    _1705 = _1699;
                    _1706 = _1700;
                    _1707 = _1701;
                    _1708 = _1702;
                    _1709 = _1703;
                    _1710 = -10000.0f;
                  } else {
                    _1512 = (float)((int)((int)((uint)(1) << (_1462 & 31))));
                    _1513 = _1512 * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                    _1514 = 1.0f / _1512;
                    _1515 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.y * 0.0078125f;
                    _1524 = _1514 * ((_1460 * _1515) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x);
                    _1525 = _1514 * (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.y * 0.015625f) * _1459) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y);
                    _1526 = _1514 * ((_1458 * _1515) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z);
                    _1527 = _1524 * 64.0f;
                    _1528 = _1525 * 32.0f;
                    _1529 = _1526 * 64.0f;
                    _1533 = (int)(floor(_1527));
                    _1534 = (int)(floor(_1528));
                    _1535 = (int)(floor(_1529));
                    // [sem: _3__36__0__0__g_axisAlignedDistance_load]
                    _1542 = __3__36__0__0__g_axisAlignedDistanceTextures.Load(int4((_1533 & 63), (_1534 & 31), ((int)(_1535 & 63) | (int)((int)(_1462) << 6)), 0));
                    _1559 = saturate(((float)((uint)((uint)((uint)((uint)(_1542.w)) >> 2)))) * 0.015873017f);  // [sem: expr_sat]
                    _1582 = _1527 - ((float)((int)(_1533)));
                    _1583 = _1528 - ((float)((int)(_1534)));
                    _1584 = _1529 - ((float)((int)(_1535)));
                    _1615 = max(((_1513 * 0.5f) * min(min(select(_1434, 999999.0f, ((select(_1440, 1.0f, 0.0f) - frac(_1524 * 256.0f)) * _1437)), select(_1435, 999999.0f, ((select(_1441, 1.0f, 0.0f) - frac(_1525 * 128.0f)) * _1438))), select(_1436, 999999.0f, ((select(_1442, 1.0f, 0.0f) - frac(_1526 * 256.0f)) * _1439)))), ((_1513 * 2.0f) * min(min(select(_1434, 999999.0f, (select(_1440, ((0.01f - _1582) + ((float)((uint)((uint)(((uint)((uint)(_1542.x)) >> 4) & 15))))), ((0.99f - _1582) - ((float)((uint)((uint)(_1542.x & 15)))))) * _1437)), select(_1435, 999999.0f, (select(_1441, ((0.01f - _1583) + ((float)((uint)((uint)(((uint)((uint)(_1542.y)) >> 4) & 15))))), ((0.99f - _1583) - ((float)((uint)((uint)(_1542.y & 15)))))) * _1438))), select(_1436, 999999.0f, (select(_1442, ((0.01f - _1584) + ((float)((uint)((uint)(((uint)((uint)(_1542.z)) >> 4) & 15))))), ((0.99f - _1584) - ((float)((uint)((uint)(_1542.z & 15)))))) * _1439)))));
                    _1617 = (float)((bool)(_1559 > 0.0f));
                    if (((uint)_1455 < (uint)16) || (_1457 < min(32.0f, (_1513 * 32.0f)))) {
                      _1624 = frac(_1526);
                      // [sem: _3__36__0__1__g_signedDistanceVoxels_sampleLod]
                      _1636 = __3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3(_1524, _1525, (((((float)((uint)((uint)((uint)(_1462)) * (uint)(130)))) + 1.0f) + ((select((_1624 < 0.0f), 1.0f, 0.0f) + _1624) * 128.0f)) * 0.00096153846f)), 0.0f);
                      _1642 = _1457 * 0.01f;
                      _1643 = 1.0f / _1513;
                      _1659 = (_1636.x + ((_182 * _182) * 0.0002f)) / (((max(((_1513 * 1.06066f) * saturate((_1457 * 0.5f) + 0.5f)), _1642) - _1642) * saturate(((max(1.0f, (_1643 * 0.5f)) * _1643) * min(_1457, max(0.0f, (_1358 - _1457)))) + -1.0f)) + _1642);
                      _1665 = saturate((saturate(1.0f - (_1659 * _1659)) * _1617) + _1456);  // [sem: expr_sat]
                      if (!(((int)_1462 > (int)2) || (_1636.x > _1513))) {
                        _1679 = _1665;  // [sem: expr_sat]
                        _1680 = min(_1615, _1636.x);
                      } else {
                        _1679 = _1665;  // [sem: expr_sat]
                        _1680 = _1615;
                      }
                    } else {
                      if (!((_1542.w & 1) == 0)) {
                        _1679 = saturate((_1617 * 0.5f) + _1456);  // [sem: expr_sat]
                        _1680 = _1615;
                      } else {
                        _1679 = _1456;  // [sem: expr_sat]
                        _1680 = _1615;
                      }
                    }
                    if (!(_1679 >= 0.5f)) {
                      _1685 = max(_1680, (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 0.05f));
                      _1686 = _1685 + _1457;
                      _1690 = (_1685 * _218) + _1460;
                      _1691 = (_1685 * _219) + _1459;
                      _1692 = (_1685 * _220) + _1458;
                      _1693 = (int)(_1455) + (int)(1);
                      if (((uint)_1693 < (uint)192) && (_1686 < _1358)) {
                        _1455 = _1693;
                        _1456 = _1679;
                        _1457 = _1686;
                        _1458 = _1692;
                        _1459 = _1691;
                        _1460 = _1690;
                        __loop_jump_target = 1454;
                        break;
                      } else {
                        _1699 = _1686;
                        _1700 = _1692;
                        _1701 = _1691;
                        _1702 = _1690;
                        _1703 = _1679;
                        _1705 = _1699;
                        _1706 = _1700;
                        _1707 = _1701;
                        _1708 = _1702;
                        _1709 = _1703;
                        _1710 = -10000.0f;
                      }
                    } else {
                      _1705 = _1457;
                      _1706 = _1458;
                      _1707 = _1459;
                      _1708 = _1460;
                      _1709 = _1559;
                      _1710 = ((float)((int)(_1462)));
                    }
                  }
                }
                break;
              }
              if (__loop_jump_target == 1454) {
                __loop_jump_target = -1;
                continue;
              }
              if (__loop_jump_target != -1) {
                break;
              }
              break;
            }
          } else {
            _1705 = 0.0f;
            _1706 = _1430;
            _1707 = _1429;
            _1708 = _1428;
            _1709 = 0.0f;
            _1710 = -10000.0f;
          }
          _1711 = (int)(_1710);
          if ((uint)_1711 < (uint)8) {
            _1714 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 0.5f;
            _1718 = _1708 - (_1714 * _218);
            _1719 = _1707 - (_1714 * _219);
            _1720 = _1706 - (_1714 * _220);
            if ((int)_1711 < (int)6) {
              _1727 = 0;
              while(true) {
                _1729 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1727) + (int)(20)))];
                _1757 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1727) + (int)(36)))];
                // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.16.00]
                // Description: Jitters this native voxel coordinate before integer quantization when Snow / Fog Lighting Fixes is active; when disabled, the helper returns the coordinate unchanged.
                float3 _rndx_surfel_jitter_1767 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _1718) * _1729.w) + _1757.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _1719) * _1729.w) + _1757.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _1720) * _1729.w) + _1757.z), float2(_85, _86), _192, _frameNumber.x);
                _1767 = (int)(floor(_rndx_surfel_jitter_1767.x));
                _1768 = (int)(floor(_rndx_surfel_jitter_1767.y));
                _1769 = (int)(floor(_rndx_surfel_jitter_1767.z));
                // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
                if (((((int)_1767 >= (int)((int)(_1729.x + -63.0f))) && ((int)_1767 < (int)((int)(_1729.x + 63.0f)))) && (((int)_1768 >= (int)((int)(_1729.y + -31.0f))) && ((int)_1768 < (int)((int)(_1729.y + 31.0f))))) && (((int)_1769 >= (int)((int)(_1729.z + -63.0f))) && ((int)_1769 < (int)((int)(_1729.z + 63.0f))))) {
                  _1790 = (_1767 & 127);
                  _1791 = (_1768 & 63);
                  _1792 = (_1769 & 127);
                  _1793 = _1727;
                } else {
                  _1782 = (int)(_1727) + (int)(1);
                  if ((uint)_1782 < (uint)8) {
                    _1727 = _1782;
                    continue;
                  } else {
                    _1790 = -10000;
                    _1791 = -10000;
                    _1792 = -10000;
                    _1793 = -10000;
                  }
                }
                if (!((uint)_1793 > (uint)5)) {
                  _1805 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1790, _1791, ((int)((uint)((uint)((int)((int)((uint)((uint)(_1793)) * (uint)(130))) | (int)(1))) + (uint)((uint)(_1792)))), 0)))).x) & 4194303;
                  _1809 = (_1805 != 0) && ((uint)((int)(_1805) + (int)(4)) < (uint)3145729);
                  _1810 = select(_1809, _1790, -10000);
                  _1811 = select(_1809, _1791, -10000);
                  _1812 = select(_1809, _1792, -10000);
                  _1813 = select(_1809, _1793, -10000);
                  _1814 = _1714 * ((float)((int)((int)((uint)(1) << (_1793 & 31)))));
                  _1819 = 0;
                  while(true) {
                    _1821 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1819) + (int)(20)))];
                    _1849 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1819) + (int)(36)))];
                    // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.16.00]
                    // Description: Jitters this native voxel coordinate before integer quantization when Snow / Fog Lighting Fixes is active; when disabled, the helper returns the coordinate unchanged.
                    float3 _rndx_surfel_jitter_1859 = RenoDXSurfelVoxelJitter(float3((((_1718 - _1814) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x) * _1821.w) + _1849.x, (((_1719 - _1814) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y) * _1821.w) + _1849.y, (((_1720 - _1814) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z) * _1821.w) + _1849.z), float2(_85, _86), _192, _frameNumber.x);
                    _1859 = (int)(floor(_rndx_surfel_jitter_1859.x));
                    _1860 = (int)(floor(_rndx_surfel_jitter_1859.y));
                    _1861 = (int)(floor(_rndx_surfel_jitter_1859.z));
                    // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
                    if (((((int)_1859 >= (int)((int)(_1821.x + -63.0f))) && ((int)_1859 < (int)((int)(_1821.x + 63.0f)))) && (((int)_1860 >= (int)((int)(_1821.y + -31.0f))) && ((int)_1860 < (int)((int)(_1821.y + 31.0f))))) && (((int)_1861 >= (int)((int)(_1821.z + -63.0f))) && ((int)_1861 < (int)((int)(_1821.z + 63.0f))))) {
                      _1882 = (_1859 & 127);
                      _1883 = (_1860 & 63);
                      _1884 = (_1861 & 127);
                      _1885 = _1819;
                    } else {
                      _1874 = (int)(_1819) + (int)(1);
                      if ((uint)_1874 < (uint)8) {
                        _1819 = _1874;
                        continue;
                      } else {
                        _1882 = -10000;
                        _1883 = -10000;
                        _1884 = -10000;
                        _1885 = -10000;
                      }
                    }
                    if (!((uint)_1885 > (uint)5)) {
                      if (_1805 == 0) {
                        _1891 = 0;
                        _1892 = _1813;
                        _1893 = _1812;
                        _1894 = _1811;
                        _1895 = _1810;
                        while(true) {
                          _1904 = 0;
                          _1905 = _1892;
                          _1906 = _1893;
                          _1907 = _1894;
                          _1908 = _1895;
                          while(true) {
                            _1915 = 0;
                            while(true) {
                              _1916 = (int)(_1915) + (int)(_1882);
                              _1917 = (int)(_1904) + (int)(_1883);
                              _1918 = (int)(_1891) + (int)(_1884);
                              bool __branch_chain_1914;
                              if (((uint)_1917 > (uint)63) || ((uint)((int)(_1916) | (int)(_1918)) > (uint)127)) {
                                _1936 = 0;
                                __branch_chain_1914 = true;
                              } else {
                                _1930 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1916, _1917, ((int)((uint)((uint)(_1918)) + (uint)((uint)((int)((int)((uint)((uint)(_1885)) * (uint)(130))) | (int)(1))))), 0)))).x) & 4194303;
                                if (!((_1930 != 0) && ((uint)((int)(_1930) + (int)(4)) < (uint)3145729))) {
                                  _1936 = _1930;
                                  __branch_chain_1914 = true;
                                } else {
                                  _1942 = _1916;
                                  _1943 = _1917;
                                  _1944 = _1918;
                                  _1945 = _1885;
                                  _1946 = _1930;
                                  __branch_chain_1914 = false;
                                }
                              }
                              if (__branch_chain_1914) {
                                _1937 = (int)(_1915) + (int)(1);
                                if (((int)_1937 < (int)2) && (_1936 == 0)) {
                                  _1915 = _1937;
                                  continue;
                                } else {
                                  _1942 = _1908;
                                  _1943 = _1907;
                                  _1944 = _1906;
                                  _1945 = _1905;
                                  _1946 = _1936;
                                }
                              }
                              _1947 = (int)(_1904) + (int)(1);
                              if (((int)_1947 < (int)2) && (_1946 == 0)) {
                                _1904 = _1947;
                                _1905 = _1945;
                                _1906 = _1944;
                                _1907 = _1943;
                                _1908 = _1942;
                                __loop_jump_target = 1903;
                                break;
                              }
                              while(true) {
                                _1910 = (int)(_1891) + (int)(1);
                                if (((int)_1910 < (int)2) && (_1946 == 0)) {
                                  _1891 = _1910;
                                  _1892 = _1945;
                                  _1893 = _1944;
                                  _1894 = _1943;
                                  _1895 = _1942;
                                  __loop_jump_target = 1890;
                                  break;
                                }
                                while(true) {
                                  _1898 = _1945;
                                  _1899 = _1944;
                                  _1900 = _1943;
                                  _1901 = _1942;
                                  break;
                                }
                                break;
                              }
                              if (__loop_jump_target != -1) {
                                break;
                              }
                              break;
                            }
                            if (__loop_jump_target == 1903) {
                              __loop_jump_target = -1;
                              continue;
                            }
                            if (__loop_jump_target != -1) {
                              break;
                            }
                            break;
                          }
                          if (__loop_jump_target == 1890) {
                            __loop_jump_target = -1;
                            continue;
                          }
                          if (__loop_jump_target != -1) {
                            break;
                          }
                          break;
                        }
                      } else {
                        _1898 = _1813;
                        _1899 = _1812;
                        _1900 = _1811;
                        _1901 = _1810;
                      }
                      if ((uint)_1898 < (uint)6) {
                        _1952 = (uint)((uint)(_1898)) * (uint)(130);
                        _1958 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1901, _1900, ((int)((uint)((uint)((int)(_1952) | (int)(1))) + (uint)((uint)(_1899)))), 0)))).x) & 4194303;
                        if ((_1958 != 0) && ((uint)((int)(_1958) + (int)(4)) < (uint)3145729)) {
                          _1965 = (uint)(1) << (_1898 & 31);
                          _1967 = ((float)((int)(_1965))) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                          _1969 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((uint)((uint)((uint)(_1898)) + (uint)(20)))];
                          _2005 = 0.0f;
                          _2006 = 0.0f;
                          _2007 = 0.0f;
                          _2008 = 0.0f;
                          _2009 = 0;
                          while(true) {
                            _2011 = (int)((int)(_1958) + (int)(-1)) + (int)(_2009);
                            _2014 = __3__37__0__0__g_surfelDataBuffer[_2011]._baseColor;
                            _2016 = __3__37__0__0__g_surfelDataBuffer[_2011]._normal;
                            _2019 = __3__37__0__0__g_surfelDataBuffer[_2011]._radius;
                            if (!(_2014 == 0)) {
                              _2022 = __3__37__0__0__g_surfelDataBuffer[_2011]._radiance.z;
                              _2023 = __3__37__0__0__g_surfelDataBuffer[_2011]._radiance.y;
                              _2024 = __3__37__0__0__g_surfelDataBuffer[_2011]._radiance.x;
                              _2030 = (float)((uint)((uint)(_2014 & 255)));
                              _2031 = (float)((uint)((uint)(((uint)((uint)(_2014)) >> 8) & 255)));
                              _2032 = (float)((uint)((uint)(((uint)((uint)(_2014)) >> 16) & 255)));
                              _2057 = select(((_2030 * 0.003921569f) < 0.04045f), (_2030 * 0.000303527f), exp2(log2((_2030 * 0.003717127f) + 0.052132703f) * 2.4f));
                              _2058 = select(((_2031 * 0.003921569f) < 0.04045f), (_2031 * 0.000303527f), exp2(log2((_2031 * 0.003717127f) + 0.052132703f) * 2.4f));
                              _2059 = select(((_2032 * 0.003921569f) < 0.04045f), (_2032 * 0.000303527f), exp2(log2((_2032 * 0.003717127f) + 0.052132703f) * 2.4f));
                              _2071 = (((float)((uint)((uint)(_2016 & 255)))) * 0.007874016f) + -1.0f;
                              _2072 = (((float)((uint)((uint)(((uint)((uint)(_2016)) >> 8) & 255)))) * 0.007874016f) + -1.0f;
                              _2073 = (((float)((uint)((uint)(((uint)((uint)(_2016)) >> 16) & 255)))) * 0.007874016f) + -1.0f;
                              _2075 = rsqrt(dot(float3(_2071, _2072, _2073), float3(_2071, _2072, _2073)));  // [sem: invLength]
                              _2077 = ((_2016 & 16777215) == 0);
                              _2081 = (_1967 * 0.0019607844f) * ((float)((uint16_t)((int16_t)(_2019 & 255))));
                              _2097 = (((((float)((uint)((uint)((uint)((uint)(_2014)) >> 24)))) * 0.003937008f) + -0.5f) * _1967) + ((((_1969.x + -63.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_1901)) + (uint)(64)) - (uint)((uint)((int)(_1969.x))))) & 127)))) * _1967) - _viewPos.x);
                              _2098 = (((((float)((uint)((uint)((uint)((uint)(_2016)) >> 24)))) * 0.003937008f) + -0.5f) * _1967) + ((((_1969.y + -31.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_1900)) + (uint)(32)) - (uint)((uint)((int)(_1969.y))))) & 63)))) * _1967) - _viewPos.y);
                              _2099 = (((((float)((uint16_t)((int16_t)((uint16_t)(_2019) >> 8)))) * 0.003937008f) + -0.5f) * _1967) + ((((_1969.z + -63.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_1899)) + (uint)(64)) - (uint)((uint)((int)(_1969.z))))) & 127)))) * _1967) - _viewPos.z);
                              if (!((((_2024 < 0.0h) || ((_2057 > 1.1f) || (_2057 < 0.0f))) || ((_2023 < 0.0h) || ((_2058 > 1.1f) || (_2058 < 0.0f)))) || ((_2022 < 0.0h) || ((_2059 > 1.1f) || (_2059 < 0.0f))))) {
                                _2121 = -0.0f - _220;
                                _2124 = -0.0f - _219;
                                _2127 = -0.0f - _218;
                                _2136 = -0.0f - min(0.0f, (-0.0f - float(_2024)));
                                _2137 = -0.0f - min(0.0f, (-0.0f - float(_2023)));
                                _2138 = -0.0f - min(0.0f, (-0.0f - float(_2022)));
                                _2158 = ((-0.0f - _1352) - (_1705 * _218)) + _2097;
                                _2161 = ((-0.0f - _1353) - (_1705 * _219)) + _2098;
                                _2164 = ((-0.0f - _1354) - (_1705 * _220)) + _2099;
                                _2165 = dot(float3(_2158, _2161, _2164), float3(_2127, _2124, _2121));
                                _2169 = _2158 - (_2165 * _2127);
                                _2170 = _2161 - (_2165 * _2124);
                                _2171 = _2164 - (_2165 * _2121);
                                _2197 = 1.0f / ((float)((uint)((uint)(_1965))));
                                _2201 = frac(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _2099) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z) * _2197);
                                _2226 = select(((int)_1898 > (int)5), 1.0f, ((saturate((saturate(dot(float3(_2127, _2124, _2121), float3(select(_2077, _2127, (_2075 * _2071)), select(_2077, _2124, (_2075 * _2072)), select(_2077, _2121, (_2075 * _2073))))) + -0.03125f) * 1.032258f) * ((float)((bool)(dot(float3(_2169, _2170, _2171), float3(_2169, _2170, _2171)) < ((_2081 * _2081) * 64.0f))))) * ((float)((bool)(((__3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _2097) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _2197), (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _2098) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y) * _2197), (((((float)((uint)((uint)(_1952)))) + 1.0f) + ((select((_2201 < 0.0f), 1.0f, 0.0f) + _2201) * 128.0f)) * 0.00096153846f)), 0.0f)).x) > ((_1967 * 0.25f) * (saturate((dot(float3(_2136, _2137, _2138), float3(0.212671f, 0.71516f, 0.072169f)) * 0.0001f) / _exposure3.w) + 1.0f)))))));
                                _2233 = (((((_2058 * 0.33951f) + (_2057 * 0.61312f)) + (_2059 * 0.04737f)) * _2136) * _2226) + _2005;
                                _2234 = (((((_2058 * 0.91636f) + (_2057 * 0.0702f)) + (_2059 * 0.01345f)) * _2137) * _2226) + _2006;
                                _2235 = (((((_2058 * 0.10958f) + (_2057 * 0.02062f)) + (_2059 * 0.8698f)) * _2138) * _2226) + _2007;
                                _2236 = _2226 + _2008;
                                _2237 = (int)(_2009) + (int)(1);
                                if ((uint)_2237 < (uint)4) {
                                  _2005 = _2233;
                                  _2006 = _2234;
                                  _2007 = _2235;
                                  _2008 = _2236;
                                  _2009 = _2237;
                                  continue;
                                } else {
                                  _2240 = _2233;
                                  _2241 = _2234;
                                  _2242 = _2235;
                                  _2243 = _2236;
                                }
                              } else {
                                _2240 = _2005;
                                _2241 = _2006;
                                _2242 = _2007;
                                _2243 = _2008;
                              }
                            } else {
                              _2240 = _2005;
                              _2241 = _2006;
                              _2242 = _2007;
                              _2243 = _2008;
                            }
                            if (_2243 > 0.0f) {
                              _2246 = 1.0f / _2243;
                              _2260 = 1.0f;
                              _2261 = (-0.0f - min(0.0f, (-0.0f - (_2240 * _2246))));
                              _2262 = (-0.0f - min(0.0f, (-0.0f - (_2241 * _2246))));
                              _2263 = (-0.0f - min(0.0f, (-0.0f - (_2242 * _2246))));
                            } else {
                              _2260 = 0.0f;
                              _2261 = _2240;
                              _2262 = _2241;
                              _2263 = _2242;
                            }
                            break;
                          }
                        } else {
                          _2260 = 0.0f;
                          _2261 = 0.0f;
                          _2262 = 0.0f;
                          _2263 = 0.0f;
                        }
                      } else {
                        _2260 = 0.0f;
                        _2261 = 0.0f;
                        _2262 = 0.0f;
                        _2263 = 0.0f;
                      }
                    } else {
                      _2260 = 1.0f;
                      _2261 = 0.0f;
                      _2262 = 0.0f;
                      _2263 = 0.0f;
                    }
                    break;
                  }
                } else {
                  _2260 = 1.0f;
                  _2261 = 0.0f;
                  _2262 = 0.0f;
                  _2263 = 0.0f;
                }
                break;
              }
            } else {
              _2260 = 1.0f;
              _2261 = 0.0f;
              _2262 = 0.0f;
              _2263 = 0.0f;
            }
            _2271 = saturate((_1705 * 0.25f) / (((float)((int)((int)((uint)(1) << (_1418 & 31))))) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x)) * _2260;
            _2281 = -0.0f - min(0.0f, (-0.0f - (_2261 * _2271)));
            _2282 = -0.0f - min(0.0f, (-0.0f - (_2262 * _2271)));
            _2283 = -0.0f - min(0.0f, (-0.0f - (_2263 * _2271)));
            _2285 = select(((int)_1711 > (int)-1), 1.0f, 0.0f);
            _2286 = max(1e-06f, _1705);
            if (_2286 > 0.0f) {
              _2291 = (_2286 + _1351);
              _2292 = _2281;
              _2293 = _2282;
              _2294 = _2283;
              _2295 = _2285;
            } else {
              _2291 = _2286;
              _2292 = _2281;
              _2293 = _2282;
              _2294 = _2283;
              _2295 = _2285;
            }
          } else {
            _2291 = 0.0f;
            _2292 = 0.0f;
            _2293 = 0.0f;
            _2294 = 0.0f;
            _2295 = _1709;
          }
        } else {
          _2291 = 0.0f;
          _2292 = 0.0f;
          _2293 = 0.0f;
          _2294 = 0.0f;
          _2295 = 0.0f;
        }
        break;
      }
    } else {
      _2291 = _1020;
      _2292 = _1016;
      _2293 = _1017;
      _2294 = _1018;
      _2295 = _1019;
    }
    _2298 = saturate(5.0000005f - (_182 * 0.019531252f));  // [sem: expr_sat]
    _2299 = (_1220 != 0);
    if ((_1219 > 0.0f) && ((_1211 > 0.0f) && _2299)) {
      if (!(_1211 < _2291)) {
        _2309 = (_2291 <= 0.0f);
      } else {
        _2309 = true;
      }
    } else {
      _2309 = false;
    }
    _2313 = saturate(max(select(_2309, 1.0f, 0.0f), (1.0f - _2298)));  // [sem: expr_sat]
    _2314 = _2313 * _1219;
    _2317 = min(_2298, saturate(1.0f - _2314));
    if (!(_2295 == 0.0f)) {
      _2332 = ((_2317 * _2292) + (_2313 * _1216));
      _2333 = ((_2317 * _2293) + (_2313 * _1217));
      _2334 = ((_2317 * _2294) + (_2313 * _1218));
      _2335 = ((_2317 * _2295) + _2314);
    } else {
      _2332 = _1216;
      _2333 = _1217;
      _2334 = _1218;
      _2335 = _1219;
    }
    _2338 = 1.0f / max(1e-06f, (_2317 + _2313));
    _2342 = _2338 * ((_2317 * _2291) + (_2313 * _1211));
    _2344 = _2338 * _2313;
    _2348 = (_2342 * _218) + _177;
    _2349 = (_2342 * _219) + _178;
    _2350 = (_2342 * _220) + _179;
    [branch]
    if (!(_2342 <= 0.0f)) {
      _2380 = mad((_viewProjRelative[3].z), _2350, mad((_viewProjRelative[3].y), _2349, ((_viewProjRelative[3].x) * _2348))) + (_viewProjRelative[3].w);
      _2385 = (((mad((_viewProjRelative[0].z), _2350, mad((_viewProjRelative[0].y), _2349, ((_viewProjRelative[0].x) * _2348))) + (_viewProjRelative[0].w)) / _2380) * 0.5f) + 0.5f;
      _2386 = 0.5f - (((mad((_viewProjRelative[1].z), _2350, mad((_viewProjRelative[1].y), _2349, ((_viewProjRelative[1].x) * _2348))) + (_viewProjRelative[1].w)) / _2380) * 0.5f);
      if (((_2385 >= 0.0f) && (_2385 <= 1.0f)) && ((_2386 >= 0.0f) && (_2386 <= 1.0f))) {
        if (_2299 && (((mad((_viewProjRelative[2].z), _2350, mad((_viewProjRelative[2].y), _2349, ((_viewProjRelative[2].x) * _2348))) + (_viewProjRelative[2].w)) / _2380) > 0.0f)) {
          if (_renderParams.x == 0.0f) {
            // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod]
            half4 _2413 = __3__36__0__0__g_sceneShadowColor.SampleLevel(__3__40__0__0__g_sampler, float2(_2385, _2386), 0.0f);
            _2421 = float(_2413.x);  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2422 = float(_2413.y);  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2423 = float(_2413.z);  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          } else {
            _2421 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2422 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2423 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          }
        } else {
          _2421 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          _2422 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          _2423 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
        }
      } else {
        _2421 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
        _2422 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
        _2423 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
      }
      _2430 = _viewPos.x + _2348;
      _2431 = _viewPos.y + _2349;
      _2432 = _viewPos.z + _2350;
      _2437 = _2430 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].x);
      _2438 = _2431 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].y);
      _2439 = _2432 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].z);
      _2459 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].z), _2439, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].y), _2438, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].x) * _2437))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].w);
      _2463 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].z), _2439, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].y), _2438, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].x) * _2437))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].w);
      _2470 = 2.0f / __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y;
      _2471 = 1.0f - _2470;
      _2478 = (((!(_2459 <= _2471)) || (!(_2459 >= _2470))) || (!(_2463 <= _2471))) || (!(_2463 >= _2470));
      _2487 = _2430 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].x);
      _2488 = _2431 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].y);
      _2489 = _2432 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].z);
      _2509 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].z), _2489, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].y), _2488, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].x) * _2487))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].w);
      _2513 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].z), _2489, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].y), _2488, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].x) * _2487))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].w);
      _2524 = (((!(_2509 <= _2471)) || (!(_2509 >= _2470))) || (!(_2513 <= _2471))) || (!(_2513 >= _2470));
      _2525 = select(_2524, select(_2478, 0.0f, _2459), _2509);
      _2526 = select(_2524, select(_2478, 0.0f, _2463), _2513);
      _2527 = select(_2524, select(_2478, 0.0f, (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].z), _2439, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].y), _2438, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].x) * _2437))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].w))), (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].z), _2489, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].y), _2488, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].x) * _2487))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].w)));
      _2528 = select(_2524, select(_2478, -1, 1), 0);
      [branch]
      if (!(_2528 == -1)) {
        _2534 = (_2525 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x) + -0.5f;
        _2535 = (_2526 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y) + -0.5f;
        _2538 = (int)(floor(_2534));
        _2539 = (int)(floor(_2535));
        _2542 = (uint)((uint)(_2538)) + (uint)(1);
        _2543 = (uint)((uint)(_2539)) + (uint)(1);
        if (!(((uint)_2538 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x)))) || ((uint)_2539 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y)))))) {
          // [sem: _3__36__0__0__g_shadowColorArray_sampleLod]
          half4 _2560 = __3__36__0__0__g_shadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_2525, _2526, ((float)((uint)((uint)(_2528))))), 0.0f);
          _2566 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2538, _2539, _2528, 0)))).x);
          _2567 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2542, _2539, _2528, 0)))).x);
          _2568 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2538, _2543, _2528, 0)))).x);
          _2569 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2542, _2543, _2528, 0)))).x);
          _2570 = (half)(_2560.x);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2571 = (half)(_2560.y);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2572 = (half)(_2560.z);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2573 = (half)(_2560.w);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
        } else {
          _2566 = 0.0f;
          _2567 = 0.0f;
          _2568 = 0.0f;
          _2569 = 0.0f;
          _2570 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2571 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2572 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2573 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
        }
        _2574 = (int)(_2528) << 2;
        _2576 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2574) + (int)(103)))];
        _2582 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2574) + (int)(104)))];
        _2588 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2574) + (int)(105)))];
        _2594 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2574) + (int)(106)))];
        _2599 = _2576.x * _2525;
        _2603 = _2576.y * _2525;
        _2607 = _2576.z * _2525;
        _2611 = _2576.w * _2525;
        _2614 = mad(_2588.w, _2566, mad(_2582.w, _2526, _2611)) + _2594.w;
        _2615 = (mad(_2588.x, _2566, mad(_2582.x, _2526, _2599)) + _2594.x) / _2614;
        _2616 = (mad(_2588.y, _2566, mad(_2582.y, _2526, _2603)) + _2594.y) / _2614;
        _2617 = (mad(_2588.z, _2566, mad(_2582.z, _2526, _2607)) + _2594.z) / _2614;
        _2620 = _2525 + (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.z * 4.0f);
        _2636 = mad(_2588.w, _2567, mad(_2582.w, _2526, (_2576.w * _2620))) + _2594.w;
        _2642 = _2526 - (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.w * 2.0f);
        _2654 = mad(_2588.w, _2568, mad(_2582.w, _2642, _2611)) + _2594.w;
        _2658 = ((mad(_2588.x, _2568, mad(_2582.x, _2642, _2599)) + _2594.x) / _2654) - _2615;
        _2659 = ((mad(_2588.y, _2568, mad(_2582.y, _2642, _2603)) + _2594.y) / _2654) - _2616;
        _2660 = ((mad(_2588.z, _2568, mad(_2582.z, _2642, _2607)) + _2594.z) / _2654) - _2617;
        _2661 = ((mad(_2588.x, _2567, mad(_2582.x, _2526, (_2576.x * _2620))) + _2594.x) / _2636) - _2615;
        _2662 = ((mad(_2588.y, _2567, mad(_2582.y, _2526, (_2576.y * _2620))) + _2594.y) / _2636) - _2616;
        _2663 = ((mad(_2588.z, _2567, mad(_2582.z, _2526, (_2576.z * _2620))) + _2594.z) / _2636) - _2617;
        _2666 = (_2660 * _2662) - (_2659 * _2663);
        _2669 = (_2658 * _2663) - (_2660 * _2661);
        _2672 = (_2659 * _2661) - (_2658 * _2662);
        _2674 = rsqrt(dot(float3(_2666, _2669, _2672), float3(_2666, _2669, _2672)));  // [sem: invLength]
        _2675 = _2666 * _2674;
        _2676 = _2669 * _2674;
        _2677 = _2672 * _2674;
        _2678 = frac(_2534);
        _2683 = (saturate(dot(float3(_218, _219, _220), float3(_2675, _2676, _2677))) * 0.002f) + _2527;
        _2696 = saturate(exp2((_2566 - _2683) * 1.442695e+06f));  // [sem: expr_sat]
        _2698 = saturate(exp2((_2568 - _2683) * 1.442695e+06f));  // [sem: expr_sat]
        _2704 = ((saturate(exp2((_2567 - _2683) * 1.442695e+06f)) - _2696) * _2678) + _2696;
        _2711 = _2675;
        _2712 = _2676;
        _2713 = _2677;
        // [sem: expr_sat]
        _2714 = saturate((((_2698 - _2704) + ((saturate(exp2((_2569 - _2683) * 1.442695e+06f)) - _2698) * _2678)) * frac(_2535)) + _2704);
        _2715 = _2566;
        _2716 = _2567;
        _2717 = _2568;
        _2718 = _2569;
        _2719 = _2570;
        _2720 = _2571;
        _2721 = _2572;
        _2722 = _2573;
      } else {
        _2711 = 0.0f;
        _2712 = 0.0f;
        _2713 = 0.0f;
        _2714 = 0.0f;  // [sem: expr_sat]
        _2715 = 0.0f;
        _2716 = 0.0f;
        _2717 = 0.0f;
        _2718 = 0.0f;
        _2719 = 0.0h;
        _2720 = 0.0h;
        _2721 = 0.0h;
        _2722 = 0.0h;
      }
      _2742 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].z), _2350, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].y), _2349, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].x) * _2348))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].w);
      _2746 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].z), _2350, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].y), _2349, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].x) * _2348))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].w);
      _2750 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].z), _2350, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].y), _2349, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].x) * _2348))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].w);
      _2753 = 4.0f / __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y;
      _2754 = 1.0f - _2753;
      if (!(((!(_2742 <= _2754)) || (!(_2742 >= _2753))) || (!(_2746 <= _2754)))) {
        _2765 = (_2750 >= -1.0f) && ((_2750 <= 1.0f) && (_2746 >= _2753));
        _2773 = select(_2765, 1e-05f, -0.0001f);
        _2774 = select(_2765, _2742, _2525);
        _2775 = select(_2765, _2746, _2526);
        _2776 = select(_2765, _2750, _2527);
        _2777 = select(_2765, 1, _2528);
        _2778 = ((int)(uint)(_2765));
      } else {
        _2773 = -0.0001f;
        _2774 = _2525;
        _2775 = _2526;
        _2776 = _2527;
        _2777 = _2528;
        _2778 = 0;
      }
      _2798 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].z), _2350, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].y), _2349, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].x) * _2348))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].w);
      _2802 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].z), _2350, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].y), _2349, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].x) * _2348))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].w);
      _2806 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].z), _2350, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].y), _2349, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].x) * _2348))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].w);
      if (!(((!(_2798 <= _2754)) || (!(_2798 >= _2753))) || (!(_2802 <= _2754)))) {
        _2817 = (_2806 >= -1.0f) && ((_2802 >= _2753) && (_2806 <= 1.0f));
        _2825 = select(_2817, 1e-05f, _2773);
        _2826 = select(_2817, _2798, _2774);
        _2827 = select(_2817, _2802, _2775);
        _2828 = select(_2817, _2806, _2776);
        _2829 = select(_2817, 0, _2777);
        _2830 = select(_2817, 1, _2778);
      } else {
        _2825 = _2773;
        _2826 = _2774;
        _2827 = _2775;
        _2828 = _2776;
        _2829 = _2777;
        _2830 = _2778;
      }
      [branch]
      if (!(_2830 == 0)) {
        _2840 = (int)(floor((_2826 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f));
        _2841 = (int)(floor((_2827 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f));
        _2844 = (uint)((uint)(_2840)) + (uint)(1);
        _2845 = (uint)((uint)(_2841)) + (uint)(1);
        if (!(((uint)_2840 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x)))) || ((uint)_2841 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y)))))) {
          _2860 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2840, _2841, _2829, 0)))).x);
          _2861 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2844, _2841, _2829, 0)))).x);
          _2862 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2840, _2845, _2829, 0)))).x);
          _2863 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2844, _2845, _2829, 0)))).x);
        } else {
          _2860 = _2715;
          _2861 = _2716;
          _2862 = _2717;
          _2863 = _2718;
        }
        _2864 = (uint)((uint)(_2829)) << 2;
        _2866 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)((uint)((uint)(_2864)) + (uint)(58)))];
        _2872 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)((uint)((uint)(_2864)) + (uint)(59)))];
        _2878 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)((uint)((uint)(_2864)) + (uint)(60)))];
        _2884 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)((uint)((uint)(_2864)) + (uint)(61)))];
        _2889 = _2866.x * _2826;
        _2893 = _2866.y * _2826;
        _2897 = _2866.z * _2826;
        _2901 = _2866.w * _2826;
        _2904 = mad(_2878.w, _2860, mad(_2872.w, _2827, _2901)) + _2884.w;
        _2905 = (mad(_2878.x, _2860, mad(_2872.x, _2827, _2889)) + _2884.x) / _2904;
        _2906 = (mad(_2878.y, _2860, mad(_2872.y, _2827, _2893)) + _2884.y) / _2904;
        _2907 = (mad(_2878.z, _2860, mad(_2872.z, _2827, _2897)) + _2884.z) / _2904;
        _2910 = _2826 + (__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.z * 8.0f);
        _2926 = mad(_2878.w, _2861, mad(_2872.w, _2827, (_2866.w * _2910))) + _2884.w;
        _2932 = _2827 - (__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.w * 4.0f);
        _2944 = mad(_2878.w, _2862, mad(_2872.w, _2932, _2901)) + _2884.w;
        _2948 = ((mad(_2878.x, _2862, mad(_2872.x, _2932, _2889)) + _2884.x) / _2944) - _2905;
        _2949 = ((mad(_2878.y, _2862, mad(_2872.y, _2932, _2893)) + _2884.y) / _2944) - _2906;
        _2950 = ((mad(_2878.z, _2862, mad(_2872.z, _2932, _2897)) + _2884.z) / _2944) - _2907;
        _2951 = ((mad(_2878.x, _2861, mad(_2872.x, _2827, (_2866.x * _2910))) + _2884.x) / _2926) - _2905;
        _2952 = ((mad(_2878.y, _2861, mad(_2872.y, _2827, (_2866.y * _2910))) + _2884.y) / _2926) - _2906;
        _2953 = ((mad(_2878.z, _2861, mad(_2872.z, _2827, (_2866.z * _2910))) + _2884.z) / _2926) - _2907;
        _2956 = (_2950 * _2952) - (_2949 * _2953);
        _2959 = (_2948 * _2953) - (_2950 * _2951);
        _2962 = (_2949 * _2951) - (_2948 * _2952);
        _2964 = rsqrt(dot(float3(_2956, _2959, _2962), float3(_2956, _2959, _2962)));  // [sem: invLength]
        if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
          _2982 = _sunDirection.x;
          _2983 = _sunDirection.y;
          _2984 = _sunDirection.z;
        } else {
          _2982 = _moonDirection.x;
          _2983 = _moonDirection.y;
          _2984 = _moonDirection.z;
        }
        _2990 = (_2825 - (saturate(-0.0f - dot(float3(_2982, _2983, _2984), float3(_218, _219, _220))) * 0.0001f)) + _2828;
        _3003 = (_2956 * _2964);
        _3004 = (_2959 * _2964);
        _3005 = (_2962 * _2964);
        _3006 = min(((float)((bool)(_2860 > _2990))), min(min(((float)((bool)(_2861 > _2990))), ((float)((bool)(_2862 > _2990)))), ((float)((bool)(_2863 > _2990)))));
      } else {
        _3003 = _2711;
        _3004 = _2712;
        _3005 = _2713;
        _3006 = _2714;
      }
      _3011 = _viewPos.x - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.x;
      _3012 = _viewPos.y - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.y;
      _3013 = _viewPos.z - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.z;
      _3014 = _3011 + _2348;
      _3015 = _3012 + _2349;
      _3016 = _3013 + _2350;
      _3036 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].z), _3016, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].y), _3015, (_3014 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].w);
      _3040 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].z), _3016, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].y), _3015, (_3014 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].w);
      _3044 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].z), _3016, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].y), _3015, (_3014 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].w);
      if (saturate(_3036) == _3036) {
        if ((_3044 >= 0.0001f) && ((_3044 <= 1.0f) && (saturate(_3040) == _3040))) {
          _3059 = frac((_3036 * 1024.0f) + -0.5f);
          _3063 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_3036, _3040));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
          _3068 = _3044 + -0.005f;
          _3073 = select((_3063.w > _3068), 1.0f, 0.0f);
          _3075 = select((_3063.x > _3068), 1.0f, 0.0f);
          _3082 = ((select((_3063.z > _3068), 1.0f, 0.0f) - _3073) * _3059) + _3073;
          // [sem: expr_sat]
          _3088 = saturate((((((select((_3063.y > _3068), 1.0f, 0.0f) - _3075) * _3059) + _3075) - _3082) * frac((_3040 * 1024.0f) + -0.5f)) + _3082);
        } else {
          _3088 = 1.0f;  // [sem: expr_sat]
        }
      } else {
        _3088 = 1.0f;  // [sem: expr_sat]
      }
      _3089 = min(_3006, _3088);
      _3090 = saturate(_2719);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived_derived_sat]
      _3091 = saturate(_2720);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived_derived_sat]
      _3092 = saturate(_2721);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived_derived_sat]
      _3106 = ((half)(((half)(_3091 * 0.3395996h)) + ((half)(_3090 * 0.61328125h)))) + ((half)(_3092 * 0.04736328h));
      _3107 = ((half)(((half)(_3091 * 0.9165039h)) + ((half)(_3090 * 0.07019043h)))) + ((half)(_3092 * 0.013450623h));
      _3108 = ((half)(((half)(_3091 * 0.109558105h)) + ((half)(_3090 * 0.020614624h)))) + ((half)(_3092 * 0.8696289h));
      _3111 = (_sunDirection.y > 0.0f);
      if ((_3111) || ((!(_3111)) && (_sunDirection.y > _moonDirection.y))) {
        _3123 = _sunDirection.x;
        _3124 = _sunDirection.y;
        _3125 = _sunDirection.z;
      } else {
        _3123 = _moonDirection.x;
        _3124 = _moonDirection.y;
        _3125 = _moonDirection.z;
      }
      if ((_3111) || ((!(_3111)) && (_sunDirection.y > _moonDirection.y))) {
        _3145 = _precomputedAmbient7.y;
      } else {
        _3145 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
      }
      _3148 = _2431 + _earthRadius;
      _3154 = sqrt(((_2432 * _2432) + (_2430 * _2430)) + (_3148 * _3148));
      _3159 = dot(float3((_2430 / _3154), (_3148 / _3154), (_2432 / _3154)), float3(_3123, _3124, _3125));
      _3163 = _atmosphereThickness + -16.0f;
      _3165 = min(max(((_3154 - _earthRadius) / _atmosphereThickness), 16.0f), _3163);
      _3167 = _atmosphereThickness + -32.0f;
      _3173 = max(_3165, 0.0f);
      _3174 = _earthRadius * 2.0f;
      _3180 = (-0.0f - sqrt((_3173 + _3174) * _3173)) / (_3173 + _earthRadius);
      if (_3159 > _3180) {
        _3203 = ((exp2(log2(saturate((_3159 - _3180) / (1.0f - _3180))) * 0.2f) * 0.4921875f) + 0.50390625f);
      } else {
        _3203 = ((exp2(log2(saturate((_3180 - _3159) / (_3180 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
      }
      // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
      _3208 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_3165 + -16.0f) / _3167)) * 0.5f) * 0.96875f) + 0.015625f), _3203), 0.0f);
      _3227 = _mieAerosolAbsorption + 1.0f;
      _3228 = _mieAerosolDensity * 2e-05f;
      _3230 = (_3228 * _3208.y) * _3227;
      _3236 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.0556001e-06f);
      _3239 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 4.9788005e-06f);
      _3242 = (_ozoneRatio * 2.1360002e-07f) + (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f);
      _3248 = exp2(((_3236 * _3208.x) + _3230) * -1.442695f);
      _3249 = exp2(((_3239 * _3208.x) + _3230) * -1.442695f);
      _3250 = exp2(((_3242 * _3208.x) + _3230) * -1.442695f);
      _3269 = sqrt((_2348 * _2348) + (_2350 * _2350));
      _3277 = (_cloudAltitude - (max(((_3269 * _3269) + -400000.0f), 0.0f) * 1e-06f)) - _viewPos.y;
      _3289 = (_cloudThickness * (0.5f - (((float)((int)((int)((int)(uint)((int)(_3124 > 0.0f))) - (int)((int)(uint)((int)(_3124 < 0.0f)))))) * 0.5f))) + _3277;
      if (_2349 < _3277) {
        _3292 = dot(float3(0.0f, 1.0f, 0.0f), float3(_3123, _3124, _3125));
        _3298 = select((abs(_3292) < 1e-08f), 1e+08f, ((_3289 - dot(float3(0.0f, 1.0f, 0.0f), float3(_2348, _2349, _2350))) / _3292));
        _3304 = ((_3298 * _3123) + _2348);
        _3305 = _3289;
        _3306 = ((_3298 * _3125) + _2350);
      } else {
        _3304 = _2348;
        _3305 = _2349;
        _3306 = _2350;
      }
      _3319 = _cloudScatteringCoefficient / _distanceScale;
      _3320 = _distanceScale * -1.442695f;
      _3326 = saturate(abs(_3124) * 4.0f);  // [sem: expr_sat]
      _3328 = (_3326 * _3326) * exp2((_3320 * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_3304 * 5e-05f) + 0.5f), ((_3305 - _3277) / _cloudThickness), ((_3306 * 5e-05f) + 0.5f)), 0.0f)).x)) * _3319);
      _3335 = ((1.0f - _3328) * saturate(((_2349 - _cloudThickness) - _3277) * 0.1f)) + _3328;
      _3336 = _3335 * (((_3249 * 0.33951f) + (_3248 * 0.61312f)) + (_3250 * 0.04737f));
      _3337 = _3335 * (((_3249 * 0.91636f) + (_3248 * 0.0702f)) + (_3250 * 0.01345f));
      _3338 = _3335 * (((_3249 * 0.10958f) + (_3248 * 0.02062f)) + (_3250 * 0.8698f));
      _3357 = float(saturate(_2722));
      if ((_1015 != 0) && (!_1035)) {
        _3359 = (_1215 > 0.0f);
        _3360 = select(_3359, _1212, _3003);
        _3361 = select(_3359, _1213, _3004);
        _3362 = select(_3359, _1214, _3005);
        _3363 = select(_3359, _1215, 0.8f);
        if (_1014 > 0.0f) {
          _3366 = half(_1011);
          _3367 = half(_1012);
          _3368 = half(_1013);
          _3374 = _3363;
          _3375 = _3360;
          _3376 = _3361;
          _3377 = _3362;
          _3378 = _3366;
          _3379 = _3367;
          _3380 = _3368;
          _3381 = _1014;
          _3382 = float(_3366);
          _3383 = float(_3367);
          _3384 = float(_3368);
          _3385 = dot(float3(_3360, _3361, _3362), float3(_3123, _3124, _3125));
        } else {
          _3374 = _3363;
          _3375 = _3360;
          _3376 = _3361;
          _3377 = _3362;
          _3378 = _3106;
          _3379 = _3107;
          _3380 = _3108;
          _3381 = 0.1f;
          _3382 = 1.0f;
          _3383 = 1.0f;
          _3384 = 1.0f;
          _3385 = _3357;
        }
      } else {
        _3374 = 0.8f;
        _3375 = _3003;
        _3376 = _3004;
        _3377 = _3005;
        _3378 = _3106;
        _3379 = _3107;
        _3380 = _3108;
        _3381 = 0.1f;
        _3382 = 1.0f;
        _3383 = 1.0f;
        _3384 = 1.0f;
        _3385 = _3357;
      }
      _3393 = float(half(saturate(_3385) * 0.31830987f)) * _3089;
      _3401 = 0.7f / min(max(max(max(_3382, _3383), _3384), 0.01f), 0.7f);
      _3412 = (((_3401 * _3383) + -0.04f) * _3381) + 0.04f;
      _3414 = _3123 - _218;
      _3415 = _3124 - _219;
      _3416 = _3125 - _220;
      _3418 = rsqrt(dot(float3(_3414, _3415, _3416), float3(_3414, _3415, _3416)));  // [sem: invLength]
      _3419 = _3418 * _3414;
      _3420 = _3418 * _3415;
      _3421 = _3418 * _3416;
      _3422 = -0.0f - _218;
      _3423 = -0.0f - _219;
      _3424 = -0.0f - _220;
      _3429 = saturate(max(1e-05f, dot(float3(_3422, _3423, _3424), float3(_3375, _3376, _3377))));  // [sem: expr_sat]
      _3431 = saturate(dot(float3(_3375, _3376, _3377), float3(_3419, _3420, _3421)));  // [sem: expr_sat]
      _3434 = saturate(1.0f - saturate(saturate(dot(float3(_3422, _3423, _3424), float3(_3419, _3420, _3421)))));  // [sem: expr_sat]
      _3435 = _3434 * _3434;
      _3437 = (_3435 * _3435) * _3434;
      _3440 = _3437 * saturate(_3412 * 50.0f);
      _3441 = 1.0f - _3437;
      _3449 = saturate(_3385 * _3089);  // [sem: expr_sat]
      _3450 = _3374 * _3374;
      _3451 = _3450 * _3450;
      _3452 = 1.0f - _3450;
      _3464 = (((_3431 * _3451) - _3431) * _3431) + 1.0f;
      _3468 = (_3451 / ((_3464 * _3464) * 3.1415927f)) * (0.5f / ((((_3429 * _3452) + _3450) * _3385) + (_3429 * ((_3385 * _3452) + _3450))));
      // RenoDX: >>> [Patch: DirectLightMatrixFix] [Version: 1.16.00]
      // Description: The game converts the direct beam's transmittance to working space a second time here, on a value the lines above already converted; because the matrix rows sum to one that second pass only desaturates. On uses the single conversion, so low-sun light keeps the colour of the sky it arrives through, while every other factor of the term is unchanged. Off is the exact vanilla double conversion.
      _3479 = ((DIRECT_LIGHT_MATRIX_FIX != 0.f) ? (_3336 * _3145) : ((((_3336 * 0.61312f) + (_3337 * 0.33951f)) + (_3338 * 0.04737f)) * _3145)) * ((max((((_3441 * ((((_3401 * _3382) + -0.04f) * _3381) + 0.04f)) + _3440) * _3468), 0.0f) * _3449) + (_3393 * float(_3378)));
      _3481 = ((DIRECT_LIGHT_MATRIX_FIX != 0.f) ? (_3337 * _3145) : ((((_3336 * 0.0702f) + (_3337 * 0.91636f)) + (_3338 * 0.01345f)) * _3145)) * ((max((((_3441 * _3412) + _3440) * _3468), 0.0f) * _3449) + (_3393 * float(_3379)));
      _3483 = ((DIRECT_LIGHT_MATRIX_FIX != 0.f) ? (_3338 * _3145) : ((((_3336 * 0.02062f) + (_3337 * 0.10958f)) + (_3338 * 0.8698f)) * _3145)) * ((max((((_3441 * ((((_3401 * _3384) + -0.04f) * _3381) + 0.04f)) + _3440) * _3468), 0.0f) * _3449) + (_3393 * float(_3380)));
      // RenoDX: <<< [Patch: DirectLightMatrixFix]
      _3488 = dot(float3(_3479, _3481, _3483), float3(0.212671f, 0.71516f, 0.072169f));
      _3489 = min((max(0.0005f, _exposure3.w) * 4096.0f), _3488);
      _3493 = max(1e-09f, _3488);
      _3494 = (_3489 * _3479) / _3493;
      _3495 = (_3489 * _3481) / _3493;
      _3496 = (_3489 * _3483) / _3493;
      if ((_114 == 33) || (_114 == 54)) {
        if ((_3111) || ((!(_3111)) && (_sunDirection.y > _moonDirection.y))) {
          _3517 = _sunDirection.x;
          _3518 = _sunDirection.y;
          _3519 = _sunDirection.z;
        } else {
          _3517 = _moonDirection.x;
          _3518 = _moonDirection.y;
          _3519 = _moonDirection.z;
        }
        _3524 = rsqrt(dot(float3(_177, _178, _179), float3(_177, _178, _179)));  // [sem: invLength]
        _3525 = _3524 * _177;
        _3526 = _3524 * _178;
        _3527 = _3524 * _179;
        _3531 = _177 - (_137 * 0.04f);
        _3532 = _178 - (_138 * 0.04f);
        _3533 = _179 - (_139 * 0.04f);
        _3537 = (_viewPos.x - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].x)) + _3531;
        _3538 = (_viewPos.y - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].y)) + _3532;
        _3539 = (_viewPos.z - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].z)) + _3533;
        _3543 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].z), _3539, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].y), _3538, (_3537 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].w);
        _3547 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].z), _3539, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].y), _3538, (_3537 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].w);
        _3558 = (((!(_3543 <= _2471)) || (!(_3543 >= _2470))) || (!(_3547 <= _2471))) || (!(_3547 >= _2470));
        _3566 = (_viewPos.x - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].x)) + _3531;
        _3567 = (_viewPos.y - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].y)) + _3532;
        _3568 = (_viewPos.z - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].z)) + _3533;
        _3572 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].z), _3568, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].y), _3567, (_3566 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].w);
        _3576 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].z), _3568, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].y), _3567, (_3566 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].w);
        _3587 = (((!(_3572 <= _2471)) || (!(_3572 >= _2470))) || (!(_3576 <= _2471))) || (!(_3576 >= _2470));
        _3589 = select((_3587 && _3558), 0.0f, 0.001f);
        _3590 = select(_3587, select(_3558, 0.0f, _3543), _3572);
        _3591 = select(_3587, select(_3558, 0.0f, _3547), _3576);
        _3592 = select(_3587, select(_3558, 0.0f, (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].z), _3539, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].y), _3538, (_3537 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].w))), (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].z), _3568, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].y), _3567, (_3566 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].w)));
        _3593 = select(_3587, select(_3558, -1, 1), 0);
        [branch]
        if (!(_3593 == -1)) {
          _3599 = (_3590 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x) + -0.5f;
          _3600 = (_3591 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y) + -0.5f;
          _3603 = (int)(floor(_3599));
          _3604 = (int)(floor(_3600));
          _3607 = (uint)((uint)(_3603)) + (uint)(1);
          _3608 = (uint)((uint)(_3604)) + (uint)(1);
          if (!(((uint)_3603 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x)))) || ((uint)_3604 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y)))))) {
            _3623 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3603, _3604, _3593, 0)))).x);
            _3624 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3607, _3604, _3593, 0)))).x);
            _3625 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3603, _3608, _3593, 0)))).x);
            _3626 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3607, _3608, _3593, 0)))).x);
          } else {
            _3623 = 0.0f;
            _3624 = 0.0f;
            _3625 = 0.0f;
            _3626 = 0.0f;
          }
          _3627 = (int)(_3593) << 2;
          _3629 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3627) + (int)(103)))];
          _3635 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3627) + (int)(104)))];
          _3641 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3627) + (int)(105)))];
          _3647 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3627) + (int)(106)))];
          _3652 = _3629.x * _3590;
          _3656 = _3629.y * _3590;
          _3660 = _3629.z * _3590;
          _3664 = _3629.w * _3590;
          _3667 = mad(_3641.w, _3623, mad(_3635.w, _3591, _3664)) + _3647.w;
          _3668 = (mad(_3641.x, _3623, mad(_3635.x, _3591, _3652)) + _3647.x) / _3667;
          _3669 = (mad(_3641.y, _3623, mad(_3635.y, _3591, _3656)) + _3647.y) / _3667;
          _3670 = (mad(_3641.z, _3623, mad(_3635.z, _3591, _3660)) + _3647.z) / _3667;
          _3673 = _3590 + (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.z * 4.0f);
          _3689 = mad(_3641.w, _3624, mad(_3635.w, _3591, (_3629.w * _3673))) + _3647.w;
          _3695 = _3591 - (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.w * 2.0f);
          _3707 = mad(_3641.w, _3625, mad(_3635.w, _3695, _3664)) + _3647.w;
          _3711 = ((mad(_3641.x, _3625, mad(_3635.x, _3695, _3652)) + _3647.x) / _3707) - _3668;
          _3712 = ((mad(_3641.y, _3625, mad(_3635.y, _3695, _3656)) + _3647.y) / _3707) - _3669;
          _3713 = ((mad(_3641.z, _3625, mad(_3635.z, _3695, _3660)) + _3647.z) / _3707) - _3670;
          _3714 = ((mad(_3641.x, _3624, mad(_3635.x, _3591, (_3629.x * _3673))) + _3647.x) / _3689) - _3668;
          _3715 = ((mad(_3641.y, _3624, mad(_3635.y, _3591, (_3629.y * _3673))) + _3647.y) / _3689) - _3669;
          _3716 = ((mad(_3641.z, _3624, mad(_3635.z, _3591, (_3629.z * _3673))) + _3647.z) / _3689) - _3670;
          _3719 = (_3713 * _3715) - (_3712 * _3716);
          _3722 = (_3711 * _3716) - (_3713 * _3714);
          _3725 = (_3712 * _3714) - (_3711 * _3715);
          _3727 = rsqrt(dot(float3(_3719, _3722, _3725), float3(_3719, _3722, _3725)));  // [sem: invLength]
          _3731 = frac(_3599);
          _3736 = (saturate(dot(float3(_3525, _3526, _3527), float3((_3719 * _3727), (_3722 * _3727), (_3725 * _3727)))) * 0.002f) + _3592;
          _3749 = saturate(exp2((_3623 - _3736) * 1.442695e+06f));  // [sem: expr_sat]
          _3751 = saturate(exp2((_3625 - _3736) * 1.442695e+06f));  // [sem: expr_sat]
          _3757 = ((saturate(exp2((_3624 - _3736) * 1.442695e+06f)) - _3749) * _3731) + _3749;
          // [sem: expr_sat]
          _3764 = saturate((((_3751 - _3757) + ((saturate(exp2((_3626 - _3736) * 1.442695e+06f)) - _3751) * _3731)) * frac(_3600)) + _3757);
          _3765 = _3623;
          _3766 = _3624;
          _3767 = _3625;
          _3768 = _3626;
        } else {
          _3764 = 1.0f;  // [sem: expr_sat]
          _3765 = 0.0f;
          _3766 = 0.0f;
          _3767 = 0.0f;
          _3768 = 0.0f;
        }
        _3772 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].z), _3533, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].y), _3532, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].x) * _3531))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].w);
        _3776 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].z), _3533, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].y), _3532, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].x) * _3531))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].w);
        _3780 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].z), _3533, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].y), _3532, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].x) * _3531))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].w);
        if (!(((!(_3772 <= _2754)) || (!(_3772 >= _2753))) || (!(_3776 <= _2754)))) {
          _3791 = (_3780 >= -1.0f) && ((_3776 >= _2753) && (_3780 <= 1.0f));
          _3799 = select(_3791, 1e-05f, _3589);
          _3800 = select(_3791, _3772, _3590);
          _3801 = select(_3791, _3776, _3591);
          _3802 = select(_3791, _3780, _3592);
          _3803 = select(_3791, 1, _3593);
          _3804 = ((int)(uint)(_3791));
        } else {
          _3799 = _3589;
          _3800 = _3590;
          _3801 = _3591;
          _3802 = _3592;
          _3803 = _3593;
          _3804 = 0;
        }
        _3808 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].z), _3533, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].y), _3532, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].x) * _3531))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].w);
        _3812 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].z), _3533, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].y), _3532, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].x) * _3531))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].w);
        _3816 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].z), _3533, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].y), _3532, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].x) * _3531))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].w);
        if (!(((!(_3808 <= _2754)) || (!(_3808 >= _2753))) || (!(_3812 <= _2754)))) {
          _3827 = (_3816 >= -1.0f) && ((_3812 >= _2753) && (_3816 <= 1.0f));
          _3835 = select(_3827, 1e-05f, _3799);
          _3836 = select(_3827, _3808, _3800);
          _3837 = select(_3827, _3812, _3801);
          _3838 = select(_3827, _3816, _3802);
          _3839 = select(_3827, 0, _3803);
          _3840 = select(_3827, 1, _3804);
        } else {
          _3835 = _3799;
          _3836 = _3800;
          _3837 = _3801;
          _3838 = _3802;
          _3839 = _3803;
          _3840 = _3804;
        }
        [branch]
        if (!(_3840 == 0)) {
          _3850 = (int)(floor((_3836 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f));
          _3851 = (int)(floor((_3837 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f));
          _3854 = (uint)((uint)(_3850)) + (uint)(1);
          _3855 = (uint)((uint)(_3851)) + (uint)(1);
          if (!(((uint)_3850 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x)))) || ((uint)_3851 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y)))))) {
            _3870 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3850, _3851, _3839, 0)))).x);
            _3871 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3854, _3851, _3839, 0)))).x);
            _3872 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3850, _3855, _3839, 0)))).x);
            _3873 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3854, _3855, _3839, 0)))).x);
          } else {
            _3870 = _3765;
            _3871 = _3766;
            _3872 = _3767;
            _3873 = _3768;
          }
          if ((_3111) || ((!(_3111)) && (_sunDirection.y > _moonDirection.y))) {
            _3885 = _sunDirection.x;
            _3886 = _sunDirection.y;
            _3887 = _sunDirection.z;
          } else {
            _3885 = _moonDirection.x;
            _3886 = _moonDirection.y;
            _3887 = _moonDirection.z;
          }
          _3893 = (_3835 - (saturate(-0.0f - dot(float3(_3885, _3886, _3887), float3(_3525, _3526, _3527))) * 0.0001f)) + _3838;
          _3906 = min(((float)((bool)(_3870 > _3893))), min(min(((float)((bool)(_3871 > _3893))), ((float)((bool)(_3872 > _3893)))), ((float)((bool)(_3873 > _3893)))));
        } else {
          _3906 = _3764;
        }
        _3907 = _3011 + _3531;
        _3908 = _3012 + _3532;
        _3909 = _3013 + _3533;
        _3913 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].z), _3909, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].y), _3908, (_3907 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].w);
        _3917 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].z), _3909, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].y), _3908, (_3907 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].w);
        _3921 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].z), _3909, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].y), _3908, (_3907 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].w);
        if (saturate(_3913) == _3913) {
          if ((_3921 >= 0.0001f) && ((_3921 <= 1.0f) && (saturate(_3917) == _3917))) {
            _3936 = frac((_3913 * 1024.0f) + -0.5f);
            // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
            _3940 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_3913, _3917));
            _3945 = _3921 + -0.005f;
            _3950 = select((_3940.w > _3945), 1.0f, 0.0f);
            _3952 = select((_3940.x > _3945), 1.0f, 0.0f);
            _3959 = ((select((_3940.z > _3945), 1.0f, 0.0f) - _3950) * _3936) + _3950;
            // [sem: expr_sat]
            _3965 = saturate((((((select((_3940.y > _3945), 1.0f, 0.0f) - _3952) * _3936) + _3952) - _3959) * frac((_3917 * 1024.0f) + -0.5f)) + _3959);
          } else {
            _3965 = 1.0f;  // [sem: expr_sat]
          }
        } else {
          _3965 = 1.0f;  // [sem: expr_sat]
        }
        // [sem: _3__36__0__0__g_baseColor_load]
        _3971 = __3__36__0__0__g_baseColor.Load(int3(((int)((uint)(_85 * (1.0f / g_screenSpaceScale.x)))), ((int)((uint)(_86 * (1.0f / g_screenSpaceScale.y)))), 0));
        _3977 = ((float)((uint)((uint)(((uint)((uint)(_3971.x)) >> 8) & 255)))) * 0.003921569f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _3980 = ((float)((uint)((uint)(_3971.x & 255)))) * 0.003921569f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _3984 = ((float)((uint)((uint)(((uint)((uint)(_3971.y)) >> 8) & 255)))) * 0.003921569f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _3985 = _3977 * _3977;
        _3986 = _3980 * _3980;
        _3987 = _3984 * _3984;
        if ((_3111) || ((!(_3111)) && (_sunDirection.y > _moonDirection.y))) {
          _4022 = _precomputedAmbient7.y;
        } else {
          _4022 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
        }
        _4023 = _viewPos.x + _177;
        _4025 = (_earthRadius + _viewPos.y) + _178;
        _4026 = _viewPos.z + _179;
        _4032 = sqrt(((_4026 * _4026) + (_4023 * _4023)) + (_4025 * _4025));
        _4037 = dot(float3((_4023 / _4032), (_4025 / _4032), (_4026 / _4032)), float3(_3517, _3518, _3519));
        _4040 = min(max(((_4032 - _earthRadius) / _atmosphereThickness), 16.0f), _3163);
        _4047 = max(_4040, 0.0f);
        _4053 = (-0.0f - sqrt((_4047 + _3174) * _4047)) / (_4047 + _earthRadius);
        if (_4037 > _4053) {
          _4076 = ((exp2(log2(saturate((_4037 - _4053) / (1.0f - _4053))) * 0.2f) * 0.4921875f) + 0.50390625f);
        } else {
          _4076 = ((exp2(log2(saturate((_4053 - _4037) / (_4053 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
        }
        // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
        _4079 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_4040 + -16.0f) / _3167)) * 0.5f) * 0.96875f) + 0.015625f), _4076), 0.0f);
        _4083 = (_3228 * _3227) * _4079.y;
        _4093 = exp2((_4083 + (_4079.x * _3236)) * -1.442695f);
        _4094 = exp2((_4083 + (_4079.x * _3239)) * -1.442695f);
        _4095 = exp2((_4083 + (_4079.x * _3242)) * -1.442695f);
        _4114 = sqrt((_179 * _179) + (_177 * _177));
        _4120 = (_cloudAltitude - (max(((_4114 * _4114) + -400000.0f), 0.0f) * 1e-06f)) - _viewPos.y;
        _4130 = _4120 + ((0.5f - (((float)((int)((int)((int)(uint)((int)(_3518 > 0.0f))) - (int)((int)(uint)((int)(_3518 < 0.0f)))))) * 0.5f)) * _cloudThickness);
        if (_178 < _4120) {
          _4133 = dot(float3(0.0f, 1.0f, 0.0f), float3(_3517, _3518, _3519));
          _4139 = select((abs(_4133) < 1e-08f), 1e+08f, ((_4130 - dot(float3(0.0f, 1.0f, 0.0f), float3(_177, _178, _179))) / _4133));
          _4145 = ((_4139 * _3517) + _177);
          _4146 = _4130;
          _4147 = ((_4139 * _3519) + _179);
        } else {
          _4145 = _177;
          _4146 = _178;
          _4147 = _179;
        }
        _4161 = saturate(abs(_3518) * 4.0f);  // [sem: expr_sat]
        _4163 = (_4161 * _4161) * exp2((_3320 * _3319) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_4145 * 5e-05f) + 0.5f), ((_4146 - _4120) / _cloudThickness), ((_4147 * 5e-05f) + 0.5f)), 0.0f)).x));
        _4170 = ((1.0f - _4163) * saturate(((_178 - _cloudThickness) - _4120) * 0.1f)) + _4163;
        _4171 = _4170 * (((_4094 * 0.33951f) + (_4093 * 0.61312f)) + (_4095 * 0.04737f));
        _4172 = _4170 * (((_4094 * 0.91636f) + (_4093 * 0.0702f)) + (_4095 * 0.01345f));
        _4173 = _4170 * (((_4094 * 0.10958f) + (_4093 * 0.02062f)) + (_4095 * 0.8698f));
        _4189 = ((max(0.0f, (0.3f - dot(float3(_137, _138, _139), float3(_3517, _3518, _3519)))) * 0.15734209f) * saturate(min(_3906, _3965))) * _4022;
        // RenoDX: >>> [Patch: DirectLightMatrixFix] [Version: 1.16.00]
        // Description: The game converts this direct beam's transmittance to working space a second time here, on a value the lines above already converted; because the matrix rows sum to one that second pass only desaturates. On uses the single conversion, so low-sun light keeps the colour of the sky it arrives through, while every other factor of the term is unchanged. Off is the exact vanilla double conversion. The neighbouring conversion in the same product is applied to a separately derived vector and stays vanilla in both states.
        _4200 = (((_4189 * (((_3985 * 0.61312f) + (_3986 * 0.33951f)) + (_3987 * 0.04737f))) * ((DIRECT_LIGHT_MATRIX_FIX != 0.f) ? _4171 : (((_4171 * 0.61312f) + (_4172 * 0.33951f)) + (_4173 * 0.04737f)))) + _3494);
        _4201 = (((_4189 * (((_3985 * 0.0702f) + (_3986 * 0.91636f)) + (_3987 * 0.01345f))) * ((DIRECT_LIGHT_MATRIX_FIX != 0.f) ? _4172 : (((_4171 * 0.0702f) + (_4172 * 0.91636f)) + (_4173 * 0.01345f)))) + _3495);
        _4202 = (((_4189 * (((_3985 * 0.02062f) + (_3986 * 0.10958f)) + (_3987 * 0.8698f))) * ((DIRECT_LIGHT_MATRIX_FIX != 0.f) ? _4173 : (((_4171 * 0.02062f) + (_4172 * 0.10958f)) + (_4173 * 0.8698f)))) + _3496);
        // RenoDX: <<< [Patch: DirectLightMatrixFix]
      } else {
        _4200 = _3494;
        _4201 = _3495;
        _4202 = _3496;
      }
      _4203 = (_renderParams2.z * _2421) * _4200;
      _4204 = (_renderParams2.z * _2422) * _4201;
      _4205 = (_renderParams2.z * _2423) * _4202;
      _4209 = _4203 + _2332;
      _4210 = _4204 + _2333;
      _4211 = _4205 + _2334;
      _4222 = _2342;
      _4223 = (((max(_2332, _4203) - _4209) * _2344) + _4209);
      _4224 = (((max(_2333, _4204) - _4210) * _2344) + _4210);
      _4225 = (((max(_2334, _4205) - _4211) * _2344) + _4211);
    } else {
      _4222 = 1000.0f;
      _4223 = _2332;
      _4224 = _2333;
      _4225 = _2334;
    }
    if (!_1022) {
      __3__38__0__1__g_raytracingHitResultUAV[int2(_82, _84)] = float4(_212, _213, _214, select((_4222 <= 0.0f), 1000.0f, _4222));
    }
    if ((_4222 > 128.0f) && (dot(float3(_4223, _4224, _4225), float3(0.212671f, 0.71516f, 0.072169f)) == 0.0f)) {
      _4236 = 1;
      while(true) {
        _4238 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_4236) + (int)(20)))];
        _4266 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_4236) + (int)(36)))];
        // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.16.00]
        // Description: Jitters this native voxel coordinate before integer quantization when Snow / Fog Lighting Fixes is active; when disabled, the helper returns the coordinate unchanged.
        float3 _rndx_surfel_jitter_4276 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _2348) * _4238.w) + _4266.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _2349) * _4238.w) + _4266.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _2350) * _4238.w) + _4266.z), float2(_85, _86), _192, _frameNumber.x);
        _4276 = (int)(floor(_rndx_surfel_jitter_4276.x));
        _4277 = (int)(floor(_rndx_surfel_jitter_4276.y));
        _4278 = (int)(floor(_rndx_surfel_jitter_4276.z));
        // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
        if (!(((((int)_4276 >= (int)((int)(_4238.x + -63.0f))) && ((int)_4276 < (int)((int)(_4238.x + 63.0f)))) && (((int)_4277 >= (int)((int)(_4238.y + -31.0f))) && ((int)_4277 < (int)((int)(_4238.y + 31.0f))))) && (((int)_4278 >= (int)((int)(_4238.z + -63.0f))) && ((int)_4278 < (int)((int)(_4238.z + 63.0f)))))) {
          _4291 = (int)(_4236) + (int)(1);
          if ((uint)_4291 < (uint)8) {
            _4236 = _4291;
            continue;
          } else {
            _4294 = -10000;
          }
        } else {
          _4294 = _4236;
        }
        if (!((uint)_4294 > (uint)3)) {
          _4314 = 1.0f / ((float)((uint)((uint)(1) << (_4294 & 31))));
          _4318 = frac(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _2350) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z) * _4314);
          // [sem: expr_sat]
          _4335 = saturate(1.0f - ((__3__36__0__1__g_skyVisibilityVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _2348) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _4314), (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _2349) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y) * _4314), (((((float)((uint)((uint)((uint)(_4294)) * (uint)(66)))) + 1.0f) + ((select((_4318 < 0.0f), 1.0f, 0.0f) + _4318) * 64.0f)) * 0.003787879f)), 0.0f)).x));
        } else {
          _4335 = 1.0f;  // [sem: expr_sat]
        }
        _4338 = _renderParams.w * _4335;
        _4339 = (_1014 == 0.0f);
        // [sem: _3__36__0__0__g_environmentColor_sampleLod]
        _4347 = __3__36__0__0__g_environmentColor.SampleLevel(__3__40__0__0__g_samplerTrilinear, float3(select(_4339, (-0.0f - _218), _1212), select(_4339, _219, _1213), select(_4339, (-0.0f - _220), _1214)), 4.0f);
        _4361 = ((_4338 * select(_4339, 0.03125f, _1011)) * _4347.x);
        _4362 = ((_4338 * select(_4339, 0.03125f, _1012)) * _4347.y);
        _4363 = ((_4338 * select(_4339, 0.03125f, _1013)) * _4347.z);
        break;
      }
    } else {
      _4361 = _4223;
      _4362 = _4224;
      _4363 = _4225;
    }
    _4370 = saturate(1.0f - saturate(_2335));  // [sem: expr_sat]
    _4374 = (_4370 - (_renderParams2.w * _4370)) + _renderParams2.w;
    // [sem: _3__36__0__0__g_environmentColor_sampleLod]
    _4378 = __3__36__0__0__g_environmentColor.SampleLevel(__3__40__0__0__g_samplerTrilinear, float3(_218, _219, _220), 4.0f);
    _4384 = _renderParams.w * _4374;
    _4385 = _4384 * _4378.x;
    _4386 = _4384 * _4378.y;
    _4387 = _4384 * _4378.z;
    _4392 = dot(float3(_4385, _4386, _4387), float3(0.212671f, 0.71516f, 0.072169f));
    _4393 = min((max(0.01f, _exposure3.w) * 2048.0f), _4392);
    _4397 = max(1e-09f, _4392);
    _4407 = ((__3__36__0__0__g_raytracingDiffuseRayInversePDF.Load(int3(_82, _84, 0))).x) * 2.0f;
    _4408 = _4407 * (((_4393 * _4385) / _4397) + (_renderParams2.y * _4361));
    _4409 = _4407 * (((_4393 * _4386) / _4397) + (_renderParams2.y * _4362));
    _4410 = _4407 * (((_4393 * _4387) / _4397) + (_renderParams2.y * _4363));
    if (!(_renderParams.y == 0.0f)) {
      _4415 = saturate(dot(float3(_137, _138, _139), float3(_218, _219, _220)));  // [sem: expr_sat]
      _4420 = (_4415 * _4408);
      _4421 = (_4415 * _4409);
      _4422 = (_4415 * _4410);
    } else {
      _4420 = _4408;
      _4421 = _4409;
      _4422 = _4410;
    }
    if ((((_110 & 126) == 96) || (_114 == 98)) && (_182 < 1000.0f)) {
      _4432 = (float)((uint)((uint)(_frameNumber.x)));
      _4443 = (frac(((_4432 * 92.0f) + _85) * 0.0078125f) * 128.0f) + -64.34062f;
      _4444 = (frac(((_4432 * 71.0f) + _86) * 0.0078125f) * 128.0f) + -72.46562f;
      _4449 = frac(dot(float3((_4443 * _4443), (_4444 * _4444), (_4444 * _4443)), float3(20.390625f, 60.703125f, 2.4281209f)));
      _4456 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(91))) & 15)));
      _4467 = (int)min((uint)(15), (uint)(((int)((uint)(frac(frac(dot(float2(((_4456 * 32.665f) + _85), ((_4456 * 11.815f) + _86)), float2(0.06711056f, 0.00583715f))) * 52.982918f) * 16.0f)))));
      _4480 = 0.27749997f / ((((float)((uint)((uint)(reversebits(_4467) ^ ((int)((uint)(_4449 * 2.8747837e+08f))))))) * 3.958121e-10f) + 0.14999998f);
      _4481 = frac((((float)((uint)((uint)(_4467)))) * 0.0625f) + (((float)((uint)((uint)(((int)((uint)(_4449 * 5.1540816e+07f))) & 65535)))) * 1.5258789e-05f)) * 6.2831855f;
      _4484 = saturate((_4480 * _4480) * -0.58823526f);  // [sem: expr_sat]
      _4487 = sqrt(1.0f - (_4484 * _4484));
      _4490 = cos(_4481) * _4487;
      _4491 = sin(_4481) * _4487;
      _4493 = -0.0f - _138;
      _4496 = select((_139 <= -0.0f), 1.0f, -1.0f);
      _4498 = 1.0f / (_4496 - _139);
      _4499 = -0.0f - _4498;
      _4501 = (_137 * _4499) * _138;
      _4502 = _4496 * _137;
      _4511 = mad(_4484, (-0.0f - _137), mad(_4491, _4501, ((((_4502 * _137) * _4499) + 1.0f) * _4490)));
      _4515 = mad(_4484, _4493, mad(_4491, (((_138 * _4493) * _4498) + _4496), ((_4490 * _4496) * _4501)));
      _4518 = mad(_4484, (-0.0f - _139), mad(_4491, _138, (_4502 * _4490)));
      _4523 = ((frac(frac(dot(float2(_85, _86), float2(0.06711056f, 0.00583715f))) * 52.982918f) * 0.1f) + 0.01f) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
      _4525 = 0;
      while(true) {
        _4527 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_4525) + (int)(20)))];
        _4555 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_4525) + (int)(36)))];
        // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.16.00]
        // Description: Jitters this native voxel coordinate before integer quantization when Snow / Fog Lighting Fixes is active; when disabled, the helper returns the coordinate unchanged.
        float3 _rndx_surfel_jitter_4565 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _177) * _4527.w) + _4555.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _178) * _4527.w) + _4555.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _179) * _4527.w) + _4555.z), float2(_85, _86), _192, _frameNumber.x);
        _4565 = (int)(floor(_rndx_surfel_jitter_4565.x));
        _4566 = (int)(floor(_rndx_surfel_jitter_4565.y));
        _4567 = (int)(floor(_rndx_surfel_jitter_4565.z));
        // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
        if (!(((((int)_4565 >= (int)((int)(_4527.x + -63.0f))) && ((int)_4565 < (int)((int)(_4527.x + 63.0f)))) && (((int)_4566 >= (int)((int)(_4527.y + -31.0f))) && ((int)_4566 < (int)((int)(_4527.y + 31.0f))))) && (((int)_4567 >= (int)((int)(_4527.z + -63.0f))) && ((int)_4567 < (int)((int)(_4527.z + 63.0f)))))) {
          _4580 = (int)(_4525) + (int)(1);
          if ((uint)_4580 < (uint)8) {
            _4525 = _4580;
            continue;
          } else {
            _4583 = -10000;
          }
        } else {
          _4583 = _4525;
        }
        if (!((_4583 == -10000) || ((int)_4583 > (int)4))) {
          _4596 = 0;
          _4597 = 1.0f;
          _4598 = 0.0f;
          _4599 = 0.0f;
          _4600 = 0.0f;
          _4601 = 0.05f;
          _4602 = ((_4523 * _4518) + _179);
          _4603 = ((_4523 * _4515) + _178);
          _4604 = ((_4523 * _4511) + _177);
          while(true) {
            _4606 = 0;
            while(true) {
              _4608 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_4606) + (int)(20)))];
              _4627 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_4606) + (int)(36)))];
              _4631 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _4604) * _4608.w) + _4627.x;
              _4632 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _4603) * _4608.w) + _4627.y;
              _4633 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _4602) * _4608.w) + _4627.z;
              if (!((_4633 >= (_4608.z + -63.0f)) && ((_4631 >= (_4608.x + -63.0f)) && (_4632 >= (_4608.y + -31.0f)))) || (((_4633 >= (_4608.z + -63.0f)) && ((_4631 >= (_4608.x + -63.0f)) && (_4632 >= (_4608.y + -31.0f)))) && (!((_4633 < (_4608.z + 63.0f)) && ((_4631 < (_4608.x + 63.0f)) && (_4632 < (_4608.y + 31.0f))))))) {
                _4649 = (int)(_4606) + (int)(1);
                if ((int)_4649 < (int)8) {
                  _4606 = _4649;
                  continue;
                } else {
                  _5219 = _4600;
                  _5220 = _4599;
                  _5221 = _4598;
                  _5222 = 0.0f;
                }
              } else {
                if ((uint)_4606 > (uint)3) {
                  _5214 = _4600;
                  _5215 = _4599;
                  _5216 = _4598;
                  _5217 = 0.0f;
                  _5219 = _5214;
                  _5220 = _5215;
                  _5221 = _5216;
                  _5222 = _5217;
                } else {
                  _4654 = max(0.05f, (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 0.05f));
                  _4656 = 0;
                  while(true) {
                    _4658 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_4656) + (int)(20)))];
                    _4686 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_4656) + (int)(36)))];
                    // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.16.00]
                    // Description: Jitters this native voxel coordinate before integer quantization when Snow / Fog Lighting Fixes is active; when disabled, the helper returns the coordinate unchanged.
                    float3 _rndx_surfel_jitter_4696 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _4604) * _4658.w) + _4686.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _4603) * _4658.w) + _4686.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _4602) * _4658.w) + _4686.z), float2(_85, _86), _192, _frameNumber.x);
                    _4696 = (int)(floor(_rndx_surfel_jitter_4696.x));
                    _4697 = (int)(floor(_rndx_surfel_jitter_4696.y));
                    _4698 = (int)(floor(_rndx_surfel_jitter_4696.z));
                    // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
                    if (((((int)_4696 >= (int)((int)(_4658.x + -63.0f))) && ((int)_4696 < (int)((int)(_4658.x + 63.0f)))) && (((int)_4697 >= (int)((int)(_4658.y + -31.0f))) && ((int)_4697 < (int)((int)(_4658.y + 31.0f))))) && (((int)_4698 >= (int)((int)(_4658.z + -63.0f))) && ((int)_4698 < (int)((int)(_4658.z + 63.0f))))) {
                      _4719 = (_4696 & 127);
                      _4720 = (_4697 & 63);
                      _4721 = (_4698 & 127);
                      _4722 = _4656;
                    } else {
                      _4711 = (int)(_4656) + (int)(1);
                      if ((uint)_4711 < (uint)8) {
                        _4656 = _4711;
                        continue;
                      } else {
                        _4719 = -10000;
                        _4720 = -10000;
                        _4721 = -10000;
                        _4722 = -10000;
                      }
                    }
                    if (!((uint)_4722 > (uint)5)) {
                      _4736 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_4719, _4720, ((int)((uint)((uint)((int)((int)((uint)((uint)(_4722)) * (uint)(130))) | (int)(1))) + (uint)((uint)(_4721)))), 0)))).x) & 4194303;
                      _4740 = (_4736 != 0) && ((uint)((int)(_4736) + (int)(4)) < (uint)3145729);
                      _4741 = select(_4740, _4719, -10000);
                      _4742 = select(_4740, _4720, -10000);
                      _4743 = select(_4740, _4721, -10000);
                      _4744 = select(_4740, _4722, -10000);
                      _4746 = (((float)((int)((int)((uint)(1) << (_4722 & 31))))) * 0.5f) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                      _4751 = 0;
                      while(true) {
                        _4753 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_4751) + (int)(20)))];
                        _4781 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_4751) + (int)(36)))];
                        // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.16.00]
                        // Description: Jitters this native voxel coordinate before integer quantization when Snow / Fog Lighting Fixes is active; when disabled, the helper returns the coordinate unchanged.
                        float3 _rndx_surfel_jitter_4791 = RenoDXSurfelVoxelJitter(float3((((_4604 - _4746) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x) * _4753.w) + _4781.x, (((_4603 - _4746) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y) * _4753.w) + _4781.y, (((_4602 - _4746) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z) * _4753.w) + _4781.z), float2(_85, _86), _192, _frameNumber.x);
                        _4791 = (int)(floor(_rndx_surfel_jitter_4791.x));
                        _4792 = (int)(floor(_rndx_surfel_jitter_4791.y));
                        _4793 = (int)(floor(_rndx_surfel_jitter_4791.z));
                        // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
                        if (((((int)_4791 >= (int)((int)(_4753.x + -63.0f))) && ((int)_4791 < (int)((int)(_4753.x + 63.0f)))) && (((int)_4792 >= (int)((int)(_4753.y + -31.0f))) && ((int)_4792 < (int)((int)(_4753.y + 31.0f))))) && (((int)_4793 >= (int)((int)(_4753.z + -63.0f))) && ((int)_4793 < (int)((int)(_4753.z + 63.0f))))) {
                          _4814 = (_4791 & 127);
                          _4815 = (_4792 & 63);
                          _4816 = (_4793 & 127);
                          _4817 = _4751;
                        } else {
                          _4806 = (int)(_4751) + (int)(1);
                          if ((uint)_4806 < (uint)8) {
                            _4751 = _4806;
                            continue;
                          } else {
                            _4814 = -10000;
                            _4815 = -10000;
                            _4816 = -10000;
                            _4817 = -10000;
                          }
                        }
                        if (!((uint)_4817 > (uint)5)) {
                          if (_4736 == 0) {
                            _4823 = 0;
                            _4824 = _4744;
                            _4825 = _4743;
                            _4826 = _4742;
                            _4827 = _4741;
                            while(true) {
                              _4836 = 0;
                              _4837 = _4824;
                              _4838 = _4825;
                              _4839 = _4826;
                              _4840 = _4827;
                              while(true) {
                                _4847 = 0;
                                while(true) {
                                  _4848 = (int)(_4847) + (int)(_4814);
                                  _4849 = (int)(_4836) + (int)(_4815);
                                  _4850 = (int)(_4823) + (int)(_4816);
                                  bool __branch_chain_4846;
                                  if (((uint)_4849 > (uint)63) || ((uint)((int)(_4848) | (int)(_4850)) > (uint)127)) {
                                    _4868 = 0;
                                    __branch_chain_4846 = true;
                                  } else {
                                    _4862 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_4848, _4849, ((int)((uint)((uint)(_4850)) + (uint)((uint)((int)((int)((uint)((uint)(_4817)) * (uint)(130))) | (int)(1))))), 0)))).x) & 4194303;
                                    if (!((_4862 != 0) && ((uint)((int)(_4862) + (int)(4)) < (uint)3145729))) {
                                      _4868 = _4862;
                                      __branch_chain_4846 = true;
                                    } else {
                                      _4874 = _4848;
                                      _4875 = _4849;
                                      _4876 = _4850;
                                      _4877 = _4817;
                                      _4878 = _4862;
                                      __branch_chain_4846 = false;
                                    }
                                  }
                                  if (__branch_chain_4846) {
                                    _4869 = (int)(_4847) + (int)(1);
                                    if (((int)_4869 < (int)2) && (_4868 == 0)) {
                                      _4847 = _4869;
                                      continue;
                                    } else {
                                      _4874 = _4840;
                                      _4875 = _4839;
                                      _4876 = _4838;
                                      _4877 = _4837;
                                      _4878 = _4868;
                                    }
                                  }
                                  _4879 = (int)(_4836) + (int)(1);
                                  if (((int)_4879 < (int)2) && (_4878 == 0)) {
                                    _4836 = _4879;
                                    _4837 = _4877;
                                    _4838 = _4876;
                                    _4839 = _4875;
                                    _4840 = _4874;
                                    __loop_jump_target = 4835;
                                    break;
                                  }
                                  while(true) {
                                    _4842 = (int)(_4823) + (int)(1);
                                    if (((int)_4842 < (int)2) && (_4878 == 0)) {
                                      _4823 = _4842;
                                      _4824 = _4877;
                                      _4825 = _4876;
                                      _4826 = _4875;
                                      _4827 = _4874;
                                      __loop_jump_target = 4822;
                                      break;
                                    }
                                    while(true) {
                                      _4830 = _4877;
                                      _4831 = _4876;
                                      _4832 = _4875;
                                      _4833 = _4874;
                                      break;
                                    }
                                    break;
                                  }
                                  if (__loop_jump_target != -1) {
                                    break;
                                  }
                                  break;
                                }
                                if (__loop_jump_target == 4835) {
                                  __loop_jump_target = -1;
                                  continue;
                                }
                                if (__loop_jump_target != -1) {
                                  break;
                                }
                                break;
                              }
                              if (__loop_jump_target == 4822) {
                                __loop_jump_target = -1;
                                continue;
                              }
                              if (__loop_jump_target != -1) {
                                break;
                              }
                              break;
                            }
                          } else {
                            _4830 = _4744;
                            _4831 = _4743;
                            _4832 = _4742;
                            _4833 = _4741;
                          }
                          if ((uint)_4830 < (uint)6) {
                            _4884 = (uint)((uint)(_4830)) * (uint)(130);
                            _4890 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_4833, _4832, ((int)((uint)((uint)((int)(_4884) | (int)(1))) + (uint)((uint)(_4831)))), 0)))).x) & 4194303;
                            if ((_4890 != 0) && ((uint)((int)(_4890) + (int)(4)) < (uint)3145729)) {
                              _4897 = (uint)(1) << (_4830 & 31);
                              _4899 = ((float)((int)(_4897))) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                              _4901 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((uint)((uint)((uint)(_4830)) + (uint)(20)))];
                              _4937 = 0.0f;
                              _4938 = 0.0f;
                              _4939 = 0.0f;
                              _4940 = 0.0f;
                              _4941 = 0;
                              while(true) {
                                _4943 = (int)((int)(_4890) + (int)(-1)) + (int)(_4941);
                                _4946 = __3__37__0__0__g_surfelDataBuffer[_4943]._baseColor;
                                _4948 = __3__37__0__0__g_surfelDataBuffer[_4943]._normal;
                                _4951 = __3__37__0__0__g_surfelDataBuffer[_4943]._radius;
                                if (!(_4946 == 0)) {
                                  _4954 = __3__37__0__0__g_surfelDataBuffer[_4943]._radiance.z;
                                  _4955 = __3__37__0__0__g_surfelDataBuffer[_4943]._radiance.y;
                                  _4956 = __3__37__0__0__g_surfelDataBuffer[_4943]._radiance.x;
                                  _4962 = (float)((uint)((uint)(_4946 & 255)));
                                  _4963 = (float)((uint)((uint)(((uint)((uint)(_4946)) >> 8) & 255)));
                                  _4964 = (float)((uint)((uint)(((uint)((uint)(_4946)) >> 16) & 255)));
                                  _4989 = select(((_4962 * 0.003921569f) < 0.04045f), (_4962 * 0.000303527f), exp2(log2((_4962 * 0.003717127f) + 0.052132703f) * 2.4f));
                                  _4990 = select(((_4963 * 0.003921569f) < 0.04045f), (_4963 * 0.000303527f), exp2(log2((_4963 * 0.003717127f) + 0.052132703f) * 2.4f));
                                  _4991 = select(((_4964 * 0.003921569f) < 0.04045f), (_4964 * 0.000303527f), exp2(log2((_4964 * 0.003717127f) + 0.052132703f) * 2.4f));
                                  _5003 = (((float)((uint)((uint)(_4948 & 255)))) * 0.007874016f) + -1.0f;
                                  _5004 = (((float)((uint)((uint)(((uint)((uint)(_4948)) >> 8) & 255)))) * 0.007874016f) + -1.0f;
                                  _5005 = (((float)((uint)((uint)(((uint)((uint)(_4948)) >> 16) & 255)))) * 0.007874016f) + -1.0f;
                                  _5007 = rsqrt(dot(float3(_5003, _5004, _5005), float3(_5003, _5004, _5005)));  // [sem: invLength]
                                  _5009 = ((_4948 & 16777215) == 0);
                                  _5013 = (_4899 * 0.0019607844f) * ((float)((uint16_t)((int16_t)(_4951 & 255))));
                                  _5029 = (((((float)((uint)((uint)((uint)((uint)(_4946)) >> 24)))) * 0.003937008f) + -0.5f) * _4899) + ((((_4901.x + -63.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_4833)) + (uint)(64)) - (uint)((uint)((int)(_4901.x))))) & 127)))) * _4899) - _viewPos.x);
                                  _5030 = (((((float)((uint)((uint)((uint)((uint)(_4948)) >> 24)))) * 0.003937008f) + -0.5f) * _4899) + ((((_4901.y + -31.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_4832)) + (uint)(32)) - (uint)((uint)((int)(_4901.y))))) & 63)))) * _4899) - _viewPos.y);
                                  _5031 = (((((float)((uint16_t)((int16_t)((uint16_t)(_4951) >> 8)))) * 0.003937008f) + -0.5f) * _4899) + ((((_4901.z + -63.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_4831)) + (uint)(64)) - (uint)((uint)((int)(_4901.z))))) & 127)))) * _4899) - _viewPos.z);
                                  if (!((((_4956 < 0.0h) || ((_4989 > 1.1f) || (_4989 < 0.0f))) || ((_4955 < 0.0h) || ((_4990 > 1.1f) || (_4990 < 0.0f)))) || ((_4954 < 0.0h) || ((_4991 > 1.1f) || (_4991 < 0.0f))))) {
                                    _5053 = -0.0f - _4518;
                                    _5056 = -0.0f - _4515;
                                    _5059 = -0.0f - _4511;
                                    _5068 = -0.0f - min(0.0f, (-0.0f - float(_4956)));
                                    _5069 = -0.0f - min(0.0f, (-0.0f - float(_4955)));
                                    _5070 = -0.0f - min(0.0f, (-0.0f - float(_4954)));
                                    _5088 = _5029 - _4604;
                                    _5089 = _5030 - _4603;
                                    _5090 = _5031 - _4602;
                                    _5091 = dot(float3(_5088, _5089, _5090), float3(_5059, _5056, _5053));
                                    _5095 = _5088 - (_5091 * _5059);
                                    _5096 = _5089 - (_5091 * _5056);
                                    _5097 = _5090 - (_5091 * _5053);
                                    _5123 = 1.0f / ((float)((uint)((uint)(_4897))));
                                    _5127 = frac(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _5031) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z) * _5123);
                                    _5152 = select(((int)_4830 > (int)5), 1.0f, ((saturate((saturate(dot(float3(_5059, _5056, _5053), float3(select(_5009, _5059, (_5007 * _5003)), select(_5009, _5056, (_5007 * _5004)), select(_5009, _5053, (_5007 * _5005))))) + -0.03125f) * 1.032258f) * ((float)((bool)(dot(float3(_5095, _5096, _5097), float3(_5095, _5096, _5097)) < ((_5013 * _5013) * 64.0f))))) * ((float)((bool)(((__3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _5029) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _5123), (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _5030) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y) * _5123), (((((float)((uint)((uint)(_4884)))) + 1.0f) + ((select((_5127 < 0.0f), 1.0f, 0.0f) + _5127) * 128.0f)) * 0.00096153846f)), 0.0f)).x) > ((_4899 * 0.25f) * (saturate((dot(float3(_5068, _5069, _5070), float3(0.212671f, 0.71516f, 0.072169f)) * 0.0001f) / _exposure3.w) + 1.0f)))))));
                                    _5159 = (((((_4990 * 0.33951f) + (_4989 * 0.61312f)) + (_4991 * 0.04737f)) * _5068) * _5152) + _4937;
                                    _5160 = (((((_4990 * 0.91636f) + (_4989 * 0.0702f)) + (_4991 * 0.01345f)) * _5069) * _5152) + _4938;
                                    _5161 = (((((_4990 * 0.10958f) + (_4989 * 0.02062f)) + (_4991 * 0.8698f)) * _5070) * _5152) + _4939;
                                    _5162 = _5152 + _4940;
                                    _5163 = (int)(_4941) + (int)(1);
                                    if ((uint)_5163 < (uint)4) {
                                      _4937 = _5159;
                                      _4938 = _5160;
                                      _4939 = _5161;
                                      _4940 = _5162;
                                      _4941 = _5163;
                                      continue;
                                    } else {
                                      _5166 = _5159;
                                      _5167 = _5160;
                                      _5168 = _5161;
                                      _5169 = _5162;
                                    }
                                  } else {
                                    _5166 = _4937;
                                    _5167 = _4938;
                                    _5168 = _4939;
                                    _5169 = _4940;
                                  }
                                } else {
                                  _5166 = _4937;
                                  _5167 = _4938;
                                  _5168 = _4939;
                                  _5169 = _4940;
                                }
                                if (_5169 > 0.0f) {
                                  _5172 = 1.0f / _5169;
                                  _5186 = (-0.0f - min(0.0f, (-0.0f - (_5166 * _5172))));
                                  _5187 = (-0.0f - min(0.0f, (-0.0f - (_5167 * _5172))));
                                  _5188 = (-0.0f - min(0.0f, (-0.0f - (_5168 * _5172))));
                                } else {
                                  _5186 = _5166;
                                  _5187 = _5167;
                                  _5188 = _5168;
                                }
                                break;
                              }
                            } else {
                              _5186 = 0.0f;
                              _5187 = 0.0f;
                              _5188 = 0.0f;
                            }
                          } else {
                            _5186 = 0.0f;
                            _5187 = 0.0f;
                            _5188 = 0.0f;
                          }
                        } else {
                          _5186 = 0.0f;
                          _5187 = 0.0f;
                          _5188 = 0.0f;
                        }
                        break;
                      }
                    } else {
                      _5186 = 0.0f;
                      _5187 = 0.0f;
                      _5188 = 0.0f;
                    }
                    _5189 = _4597 * 0.31830987f;
                    _5193 = (_5186 * _5189) + _4600;
                    _5194 = (_5187 * _5189) + _4599;
                    _5195 = (_5188 * _5189) + _4598;
                    _5198 = exp2(_4654 * -28.8539f) * _4597;
                    if (_5198 < 0.050000012f) {
                      _5214 = _5193;
                      _5215 = _5194;
                      _5216 = _5195;
                      _5217 = _4601;
                      _5219 = _5214;
                      _5220 = _5215;
                      _5221 = _5216;
                      _5222 = _5217;
                    } else {
                      _5201 = _4654 + _4601;
                      _5205 = (_4654 * _4511) + _4604;
                      _5206 = (_4654 * _4515) + _4603;
                      _5207 = (_4654 * _4518) + _4602;
                      _5208 = (int)(_4596) + (int)(1);
                      if (((uint)_5208 < (uint)32) && (_5201 < 32.0f)) {
                        _4596 = _5208;
                        _4597 = _5198;
                        _4598 = _5195;
                        _4599 = _5194;
                        _4600 = _5193;
                        _4601 = _5201;
                        _4602 = _5207;
                        _4603 = _5206;
                        _4604 = _5205;
                        __loop_jump_target = 4595;
                        break;
                      } else {
                        _5214 = _5193;
                        _5215 = _5194;
                        _5216 = _5195;
                        _5217 = 0.0f;
                        _5219 = _5214;
                        _5220 = _5215;
                        _5221 = _5216;
                        _5222 = _5217;
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
            if (__loop_jump_target == 4595) {
              __loop_jump_target = -1;
              continue;
            }
            if (__loop_jump_target != -1) {
              break;
            }
            break;
          }
        } else {
          _5219 = 0.0f;
          _5220 = 0.0f;
          _5221 = 0.0f;
          _5222 = 0.0f;
        }
        if (_5222 > 0.0f) {
          _5234 = (_5222 * _4511) + _177;
          _5235 = (_5222 * _4515) + _178;
          _5236 = (_5222 * _4518) + _179;
          _5239 = (_sunDirection.y > 0.0f);
          if ((_5239) || ((!(_5239)) && (_sunDirection.y > _moonDirection.y))) {
            _5251 = _sunDirection.x;
            _5252 = _sunDirection.y;
            _5253 = _sunDirection.z;
          } else {
            _5251 = _moonDirection.x;
            _5252 = _moonDirection.y;
            _5253 = _moonDirection.z;
          }
          if ((_5239) || ((!(_5239)) && (_sunDirection.y > _moonDirection.y))) {
            _5273 = _precomputedAmbient7.y;
          } else {
            _5273 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
          }
          _5280 = _viewPos.x + _5234;
          _5282 = (_earthRadius + _5235) + _viewPos.y;
          _5283 = _viewPos.z + _5236;
          _5289 = sqrt(((_5280 * _5280) + (_5282 * _5282)) + (_5283 * _5283));
          _5294 = dot(float3((_5280 / _5289), (_5282 / _5289), (_5283 / _5289)), float3(_5251, _5252, _5253));
          _5300 = min(max(((_5289 - _earthRadius) / _atmosphereThickness), 16.0f), (_atmosphereThickness + -16.0f));
          _5308 = max(_5300, 0.0f);
          _5315 = (-0.0f - sqrt((_5308 + (_earthRadius * 2.0f)) * _5308)) / (_5308 + _earthRadius);
          if (_5294 > _5315) {
            _5338 = ((exp2(log2(saturate((_5294 - _5315) / (1.0f - _5315))) * 0.2f) * 0.4921875f) + 0.50390625f);
          } else {
            _5338 = ((exp2(log2(saturate((_5315 - _5294) / (_5315 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
          }
          // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
          _5343 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_5300 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f), _5338), 0.0f);
          _5365 = ((_5343.y * 2e-05f) * _mieAerosolDensity) * (_mieAerosolAbsorption + 1.0f);  // [sem: _3__36__0__0__g_texNetDensity_sampleLod_derived]
          _5383 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.0556001e-06f)) * _5343.x) + _5365) * -1.442695f);
          _5384 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 4.9788005e-06f)) * _5343.x) + _5365) * -1.442695f);
          _5385 = exp2(((((_ozoneRatio * 2.1360002e-07f) + (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f)) * _5343.x) + _5365) * -1.442695f);
          _5404 = sqrt((_5234 * _5234) + (_5236 * _5236));
          _5412 = (_cloudAltitude - (max(((_5404 * _5404) + -400000.0f), 0.0f) * 1e-06f)) - _viewPos.y;
          _5424 = (_cloudThickness * (0.5f - (((float)((int)((int)((int)(uint)((int)(_5252 > 0.0f))) - (int)((int)(uint)((int)(_5252 < 0.0f)))))) * 0.5f))) + _5412;
          if (_5235 < _5412) {
            _5427 = dot(float3(0.0f, 1.0f, 0.0f), float3(_5251, _5252, _5253));
            _5433 = select((abs(_5427) < 1e-08f), 1e+08f, ((_5424 - dot(float3(0.0f, 1.0f, 0.0f), float3(_5234, _5235, _5236))) / _5427));
            _5439 = ((_5433 * _5251) + _5234);
            _5440 = _5424;
            _5441 = ((_5433 * _5253) + _5236);
          } else {
            _5439 = _5234;
            _5440 = _5235;
            _5441 = _5236;
          }
          _5461 = saturate(abs(_5252) * 4.0f);  // [sem: expr_sat]
          _5463 = (_5461 * _5461) * exp2(((_distanceScale * -1.442695f) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_5439 * 5e-05f) + 0.5f), ((_5440 - _5412) / _cloudThickness), ((_5441 * 5e-05f) + 0.5f)), 0.0f)).x)) * (_cloudScatteringCoefficient / _distanceScale));
          _5470 = ((1.0f - _5463) * saturate(((_5235 - _cloudThickness) - _5412) * 0.1f)) + _5463;
          _5471 = _5470 * (((_5384 * 0.33951f) + (_5383 * 0.61312f)) + (_5385 * 0.04737f));
          _5472 = _5470 * (((_5384 * 0.91636f) + (_5383 * 0.0702f)) + (_5385 * 0.01345f));
          _5473 = _5470 * (((_5384 * 0.10958f) + (_5383 * 0.02062f)) + (_5385 * 0.8698f));
          _5496 = (_viewPos.x - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].x)) + _5234;
          _5497 = (_viewPos.y - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].y)) + _5235;
          _5498 = (_viewPos.z - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].z)) + _5236;
          _5518 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].z), _5498, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].y), _5497, (_5496 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].w);
          _5522 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].z), _5498, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].y), _5497, (_5496 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].w);
          _5529 = 2.0f / __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y;
          _5530 = 1.0f - _5529;
          _5537 = (((!(_5518 <= _5530)) || (!(_5518 >= _5529))) || (!(_5522 <= _5530))) || (!(_5522 >= _5529));
          _5549 = (_viewPos.x - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].x)) + _5234;
          _5550 = (_viewPos.y - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].y)) + _5235;
          _5551 = (_viewPos.z - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].z)) + _5236;
          _5571 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].z), _5551, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].y), _5550, (_5549 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].w);
          _5575 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].z), _5551, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].y), _5550, (_5549 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].w);
          _5586 = (((!(_5571 <= _5530)) || (!(_5571 >= _5529))) || (!(_5575 <= _5530))) || (!(_5575 >= _5529));
          _5587 = select(_5586, select(_5537, -1, 1), 0);
          _5588 = select(_5586, select(_5537, 0.0f, _5518), _5571);
          _5589 = select(_5586, select(_5537, 0.0f, _5522), _5575);
          _5590 = select(_5586, select(_5537, 0.0f, (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].z), _5498, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].y), _5497, (_5496 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].w))), (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].z), _5551, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].y), _5550, (_5549 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].w)));
          _5592 = select((_5586 && _5537), 0.0f, 0.001f);
          [branch]
          if (!(_5587 == -1)) {
            _5598 = (_5588 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x) + -0.5f;
            _5599 = (_5589 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y) + -0.5f;
            _5602 = (int)(floor(_5598));
            _5603 = (int)(floor(_5599));
            _5606 = (uint)((uint)(_5602)) + (uint)(1);
            _5607 = (uint)((uint)(_5603)) + (uint)(1);
            if (!(((uint)_5602 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x)))) || ((uint)_5603 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y)))))) {
              _5622 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_5602, _5603, _5587, 0)))).x);
              _5623 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_5606, _5603, _5587, 0)))).x);
              _5624 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_5602, _5607, _5587, 0)))).x);
              _5625 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_5606, _5607, _5587, 0)))).x);
            } else {
              _5622 = 0.0f;
              _5623 = 0.0f;
              _5624 = 0.0f;
              _5625 = 0.0f;
            }
            _5626 = (int)(_5587) << 2;
            _5628 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_5626) + (int)(103)))];
            _5634 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_5626) + (int)(104)))];
            _5640 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_5626) + (int)(105)))];
            _5646 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_5626) + (int)(106)))];
            _5651 = _5628.x * _5588;
            _5655 = _5628.y * _5588;
            _5659 = _5628.z * _5588;
            _5663 = _5628.w * _5588;
            _5666 = mad(_5640.w, _5622, mad(_5634.w, _5589, _5663)) + _5646.w;
            _5667 = (mad(_5640.x, _5622, mad(_5634.x, _5589, _5651)) + _5646.x) / _5666;
            _5668 = (mad(_5640.y, _5622, mad(_5634.y, _5589, _5655)) + _5646.y) / _5666;
            _5669 = (mad(_5640.z, _5622, mad(_5634.z, _5589, _5659)) + _5646.z) / _5666;
            _5672 = _5588 + (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.z * 4.0f);
            _5688 = mad(_5640.w, _5623, mad(_5634.w, _5589, (_5628.w * _5672))) + _5646.w;
            _5694 = _5589 - (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.w * 2.0f);
            _5706 = mad(_5640.w, _5624, mad(_5634.w, _5694, _5663)) + _5646.w;
            _5710 = ((mad(_5640.x, _5624, mad(_5634.x, _5694, _5651)) + _5646.x) / _5706) - _5667;
            _5711 = ((mad(_5640.y, _5624, mad(_5634.y, _5694, _5655)) + _5646.y) / _5706) - _5668;
            _5712 = ((mad(_5640.z, _5624, mad(_5634.z, _5694, _5659)) + _5646.z) / _5706) - _5669;
            _5713 = ((mad(_5640.x, _5623, mad(_5634.x, _5589, (_5628.x * _5672))) + _5646.x) / _5688) - _5667;
            _5714 = ((mad(_5640.y, _5623, mad(_5634.y, _5589, (_5628.y * _5672))) + _5646.y) / _5688) - _5668;
            _5715 = ((mad(_5640.z, _5623, mad(_5634.z, _5589, (_5628.z * _5672))) + _5646.z) / _5688) - _5669;
            _5718 = (_5712 * _5714) - (_5711 * _5715);
            _5721 = (_5710 * _5715) - (_5712 * _5713);
            _5724 = (_5711 * _5713) - (_5710 * _5714);
            _5726 = rsqrt(dot(float3(_5718, _5721, _5724), float3(_5718, _5721, _5724)));  // [sem: invLength]
            _5730 = frac(_5598);
            _5735 = (saturate(dot(float3(_4511, _4515, _4518), float3((_5718 * _5726), (_5721 * _5726), (_5724 * _5726)))) * 0.002f) + _5590;
            _5748 = saturate(exp2((_5622 - _5735) * 1.442695e+06f));  // [sem: expr_sat]
            _5750 = saturate(exp2((_5624 - _5735) * 1.442695e+06f));  // [sem: expr_sat]
            _5756 = ((saturate(exp2((_5623 - _5735) * 1.442695e+06f)) - _5748) * _5730) + _5748;
            _5763 = _5622;
            _5764 = _5623;
            _5765 = _5624;
            _5766 = _5625;
            // [sem: expr_sat]
            _5767 = saturate((((_5750 - _5756) + ((saturate(exp2((_5625 - _5735) * 1.442695e+06f)) - _5750) * _5730)) * frac(_5599)) + _5756);
          } else {
            _5763 = 0.0f;
            _5764 = 0.0f;
            _5765 = 0.0f;
            _5766 = 0.0f;
            _5767 = 1.0f;  // [sem: expr_sat]
          }
          _5787 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].z), _5236, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].y), _5235, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].x) * _5234))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].w);
          _5791 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].z), _5236, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].y), _5235, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].x) * _5234))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].w);
          _5795 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].z), _5236, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].y), _5235, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].x) * _5234))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].w);
          _5798 = 4.0f / __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y;
          _5799 = 1.0f - _5798;
          if (!(((!(_5787 <= _5799)) || (!(_5787 >= _5798))) || (!(_5791 <= _5799)))) {
            _5810 = (_5795 >= -1.0f) && ((_5795 <= 1.0f) && (_5791 >= _5798));
            _5818 = ((int)(uint)(_5810));
            _5819 = select(_5810, 1, _5587);
            _5820 = select(_5810, _5787, _5588);
            _5821 = select(_5810, _5791, _5589);
            _5822 = select(_5810, _5795, _5590);
            _5823 = select(_5810, 1e-05f, _5592);
          } else {
            _5818 = 0;
            _5819 = _5587;
            _5820 = _5588;
            _5821 = _5589;
            _5822 = _5590;
            _5823 = _5592;
          }
          _5843 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].z), _5236, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].y), _5235, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].x) * _5234))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].w);
          _5847 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].z), _5236, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].y), _5235, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].x) * _5234))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].w);
          _5851 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].z), _5236, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].y), _5235, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].x) * _5234))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].w);
          if (!(((!(_5843 <= _5799)) || (!(_5843 >= _5798))) || (!(_5847 <= _5799)))) {
            _5862 = (_5851 >= -1.0f) && ((_5847 >= _5798) && (_5851 <= 1.0f));
            _5870 = select(_5862, 1, _5818);
            _5871 = select(_5862, 0, _5819);
            _5872 = select(_5862, _5843, _5820);
            _5873 = select(_5862, _5847, _5821);
            _5874 = select(_5862, _5851, _5822);
            _5875 = select(_5862, 1e-05f, _5823);
          } else {
            _5870 = _5818;
            _5871 = _5819;
            _5872 = _5820;
            _5873 = _5821;
            _5874 = _5822;
            _5875 = _5823;
          }
          [branch]
          if (!(_5870 == 0)) {
            _5885 = (int)(floor((_5872 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f));
            _5886 = (int)(floor((_5873 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f));
            _5889 = (uint)((uint)(_5885)) + (uint)(1);
            _5890 = (uint)((uint)(_5886)) + (uint)(1);
            if (!(((uint)_5885 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x)))) || ((uint)_5886 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y)))))) {
              _5905 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_5885, _5886, _5871, 0)))).x);
              _5906 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_5889, _5886, _5871, 0)))).x);
              _5907 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_5885, _5890, _5871, 0)))).x);
              _5908 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_5889, _5890, _5871, 0)))).x);
            } else {
              _5905 = _5763;
              _5906 = _5764;
              _5907 = _5765;
              _5908 = _5766;
            }
            if ((_5239) || ((!(_5239)) && (_sunDirection.y > _moonDirection.y))) {
              _5920 = _sunDirection.x;
              _5921 = _sunDirection.y;
              _5922 = _sunDirection.z;
            } else {
              _5920 = _moonDirection.x;
              _5921 = _moonDirection.y;
              _5922 = _moonDirection.z;
            }
            _5928 = (_5875 - (saturate(-0.0f - dot(float3(_5920, _5921, _5922), float3(_4511, _4515, _4518))) * 0.0001f)) + _5874;
            _5941 = min(((float)((bool)(_5905 > _5928))), min(min(((float)((bool)(_5906 > _5928))), ((float)((bool)(_5907 > _5928)))), ((float)((bool)(_5908 > _5928)))));
          } else {
            _5941 = _5767;
          }
          _5949 = (_viewPos.x - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.x) + _5234;
          _5950 = (_viewPos.y - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.y) + _5235;
          _5951 = (_viewPos.z - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.z) + _5236;
          _5971 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].z), _5951, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].y), _5950, (_5949 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].w);
          _5975 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].z), _5951, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].y), _5950, (_5949 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].w);
          _5979 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].z), _5951, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].y), _5950, (_5949 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].w);
          if (saturate(_5971) == _5971) {
            if ((_5979 >= 0.0001f) && ((_5979 <= 1.0f) && (saturate(_5975) == _5975))) {
              _5994 = frac((_5971 * 1024.0f) + -0.5f);
              // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
              _5998 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_5971, _5975));
              _6003 = _5979 + -0.005f;
              _6008 = select((_5998.w > _6003), 1.0f, 0.0f);
              _6010 = select((_5998.x > _6003), 1.0f, 0.0f);
              _6017 = ((select((_5998.z > _6003), 1.0f, 0.0f) - _6008) * _5994) + _6008;
              // [sem: expr_sat]
              _6023 = saturate((((((select((_5998.y > _6003), 1.0f, 0.0f) - _6010) * _5994) + _6010) - _6017) * frac((_5975 * 1024.0f) + -0.5f)) + _6017);
            } else {
              _6023 = 1.0f;  // [sem: expr_sat]
            }
          } else {
            _6023 = 1.0f;  // [sem: expr_sat]
          }
          _6026 = _5222 * 20.0f;
          _6027 = _6026 * _6026;
          _6036 = (((exp2(_6027 * -0.48089835f) * 3.0f) + exp2(_6027 * -1.442695f)) * 0.25f) * (saturate(min(_5941, _6023)) * _5273);
          // RenoDX: >>> [Patch: DirectLightMatrixFix] [Version: 1.16.00]
          // Description: The game converts this direct beam's transmittance to working space a second time here, on a value the lines above already converted; because the matrix rows sum to one that second pass only desaturates. On uses the single conversion, so low-sun light keeps the colour of the sky it arrives through, while every other factor of the term is unchanged. Off is the exact vanilla double conversion.
          _6041 = ((DIRECT_LIGHT_MATRIX_FIX != 0.f) ? (_6036 * _5471) : (_6036 * (((_5471 * 0.61312f) + (_5472 * 0.33951f)) + (_5473 * 0.04737f))));
          _6042 = ((DIRECT_LIGHT_MATRIX_FIX != 0.f) ? (_6036 * _5472) : (_6036 * (((_5471 * 0.0702f) + (_5472 * 0.91636f)) + (_5473 * 0.01345f))));
          _6043 = ((DIRECT_LIGHT_MATRIX_FIX != 0.f) ? (_6036 * _5473) : (_6036 * (((_5471 * 0.02062f) + (_5472 * 0.10958f)) + (_5473 * 0.8698f))));
          // RenoDX: <<< [Patch: DirectLightMatrixFix]
        } else {
          _6041 = -0.0f;
          _6042 = -0.0f;
          _6043 = -0.0f;
        }
        _6049 = saturate(1.0f - (_182 * 0.001f));  // [sem: expr_sat]
        _6057 = ((_6049 * (_6041 - min(0.0f, (-0.0f - _5219)))) + _4420);
        _6058 = ((_6049 * (_6042 - min(0.0f, (-0.0f - _5220)))) + _4421);
        _6059 = (((_6043 - min(0.0f, (-0.0f - _5221))) * _6049) + _4422);
        break;
      }
    } else {
      _6057 = _4420;
      _6058 = _4421;
      _6059 = _4422;
    }
    __3__38__0__1__g_diffuseResultUAV[int2(_82, _84)] = float4(((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - min(15000.0f, (_exposure4.x * _6057)))))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - min(15000.0f, (_exposure4.x * _6058)))))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - min(15000.0f, (_exposure4.x * _6059)))))))), (half)(half(1.0f - _4374)));
    break;
  }
}
