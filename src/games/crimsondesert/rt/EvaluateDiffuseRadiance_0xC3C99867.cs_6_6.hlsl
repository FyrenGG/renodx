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
  int _489;
  int _490;
  int _491;
  int _492;
  int _499;
  int _562;
  int _563;
  int _564;
  int _565;
  int _570;
  int _571;
  int _572;
  int _573;
  int _574;
  int _577;
  int _578;
  int _579;
  int _580;
  int _583;
  int _584;
  int _585;
  int _586;
  int _587;
  bool _610;
  int _611;
  int _612;
  int _613;
  int _614;
  int _615;
  int _624;
  int _625;
  int _626;
  int _627;
  int _628;
  float _684;
  float _685;
  float _686;
  float _687;
  float _688;
  float _689;
  float _690;
  int _691;
  float _903;
  float _904;
  float _905;
  float _906;
  float _923;
  float _924;
  float _925;
  float _945;
  float _946;
  float _947;
  float _969;
  float _970;
  float _971;
  float _978;
  float _979;
  float _980;
  float _981;
  float _982;
  float _983;
  float _984;
  float _985;
  int _986;
  float _987;
  float _988;
  float _989;
  float _990;
  float _991;
  bool _1006;
  float _1168;
  float _1169;
  float _1170;
  float _1171;
  float _1182;
  float _1183;
  float _1184;
  float _1185;
  float _1186;
  float _1187;
  float _1188;
  float _1189;
  float _1190;
  int _1191;
  int _1193;
  int _1254;
  int _1255;
  float _1262;
  float _1322;
  float _1323;
  float _1324;
  float _1325;
  int _1331;
  int _1389;
  int _1426;
  float _1427;
  float _1428;
  float _1429;
  float _1430;
  float _1431;
  int _1433;
  float _1650;
  float _1651;
  float _1670;
  float _1671;
  float _1672;
  float _1673;
  float _1674;
  float _1676;
  float _1677;
  float _1678;
  float _1679;
  float _1680;
  float _1681;
  int _1698;
  int _1761;
  int _1762;
  int _1763;
  int _1764;
  int _1780;
  int _1781;
  int _1782;
  int _1783;
  int _1789;
  int _1852;
  int _1853;
  int _1854;
  int _1855;
  int _1860;
  int _1861;
  int _1862;
  int _1863;
  int _1864;
  int _1867;
  int _1868;
  int _1869;
  int _1870;
  int _1873;
  int _1874;
  int _1875;
  int _1876;
  int _1877;
  bool _1900;
  int _1901;
  int _1902;
  int _1903;
  int _1904;
  int _1905;
  int _1914;
  int _1915;
  int _1916;
  int _1917;
  int _1918;
  float _1977;
  float _1978;
  float _1979;
  float _1980;
  int _1981;
  float _2182;
  float _2183;
  float _2184;
  float _2185;
  float _2202;
  float _2203;
  float _2204;
  float _2205;
  float _2233;
  float _2234;
  float _2235;
  float _2236;
  float _2237;
  bool _2251;
  float _2274;
  float _2275;
  float _2276;
  float _2277;
  float _2363;
  float _2364;
  float _2365;
  float _2508;
  float _2509;
  float _2510;
  float _2511;
  half _2512;
  half _2513;
  half _2514;
  half _2515;
  float _2653;
  float _2654;
  float _2655;
  float _2656;
  float _2657;
  float _2658;
  float _2659;
  float _2660;
  half _2661;
  half _2662;
  half _2663;
  half _2664;
  float _2715;
  float _2716;
  float _2717;
  float _2718;
  int _2719;
  int _2720;
  float _2767;
  float _2768;
  float _2769;
  float _2770;
  int _2771;
  int _2772;
  float _2802;
  float _2803;
  float _2804;
  float _2805;
  float _2924;
  float _2925;
  float _2926;
  float _2945;
  float _2946;
  float _2947;
  float _2948;
  float _3030;
  float _3065;
  float _3066;
  float _3067;
  float _3087;
  float _3145;
  float _3246;
  float _3247;
  float _3248;
  float _3316;
  float _3317;
  float _3318;
  float _3319;
  half _3320;
  half _3321;
  half _3322;
  float _3323;
  float _3324;
  float _3325;
  float _3326;
  float _3327;
  float _3459;
  float _3460;
  float _3461;
  float _3565;
  float _3566;
  float _3567;
  float _3568;
  float _3706;
  float _3707;
  float _3708;
  float _3709;
  float _3710;
  float _3741;
  float _3742;
  float _3743;
  float _3744;
  int _3745;
  int _3746;
  float _3777;
  float _3778;
  float _3779;
  float _3780;
  int _3781;
  int _3782;
  float _3812;
  float _3813;
  float _3814;
  float _3815;
  float _3827;
  float _3828;
  float _3829;
  float _3848;
  float _3907;
  float _3964;
  float _4018;
  float _4087;
  float _4088;
  float _4089;
  float _4142;
  float _4143;
  float _4144;
  float _4164;
  float _4165;
  float _4166;
  float _4167;
  int _4178;
  int _4236;
  float _4277;
  float _4303;
  float _4304;
  float _4305;
  float _4362;
  float _4363;
  float _4364;
  int _4467;
  int _4525;
  int _4538;
  float _4539;
  float _4540;
  float _4541;
  float _4542;
  float _4543;
  float _4544;
  float _4545;
  float _4546;
  int _4548;
  int _4598;
  int _4661;
  int _4662;
  int _4663;
  int _4664;
  int _4682;
  int _4683;
  int _4684;
  int _4685;
  int _4692;
  int _4755;
  int _4756;
  int _4757;
  int _4758;
  int _4763;
  int _4764;
  int _4765;
  int _4766;
  int _4767;
  int _4770;
  int _4771;
  int _4772;
  int _4773;
  int _4776;
  int _4777;
  int _4778;
  int _4779;
  int _4780;
  bool _4803;
  int _4804;
  int _4805;
  int _4806;
  int _4807;
  int _4808;
  int _4817;
  int _4818;
  int _4819;
  int _4820;
  int _4821;
  float _4880;
  float _4881;
  float _4882;
  float _4883;
  int _4884;
  float _5079;
  float _5080;
  float _5081;
  float _5082;
  float _5099;
  float _5100;
  float _5101;
  float _5127;
  float _5128;
  float _5129;
  float _5130;
  float _5132;
  float _5133;
  float _5134;
  float _5135;
  float _5164;
  float _5165;
  float _5166;
  float _5186;
  float _5251;
  float _5352;
  float _5353;
  float _5354;
  float _5535;
  float _5536;
  float _5537;
  float _5538;
  float _5676;
  float _5677;
  float _5678;
  float _5679;
  float _5680;
  int _5731;
  int _5732;
  float _5733;
  float _5734;
  float _5735;
  float _5736;
  int _5783;
  int _5784;
  float _5785;
  float _5786;
  float _5787;
  float _5788;
  float _5818;
  float _5819;
  float _5820;
  float _5821;
  float _5833;
  float _5834;
  float _5835;
  float _5854;
  float _5936;
  float _5954;
  float _5955;
  float _5956;
  float _5970;
  float _5971;
  float _5972;
  bool _6002;
  int _6003;
  int _6004;
  int _6005;
  int _6006;
  int _6007;
  bool _6016;
  int _6017;
  int _6018;
  int _6019;
  int _6020;
  int _6021;
  bool _6030;
  int _6031;
  int _6032;
  int _6033;
  int _6034;
  int _6035;
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
  bool _486;
  float _494;
  float4 _501;
  float4 _529;
  int _539;
  int _540;
  int _541;
  int _554;
  int _590;
  uint _591;
  int _593;
  int _598;
  int _607;
  int _617;
  int _618;
  int _629;
  uint _634;
  int _640;
  uint _644;
  float _646;
  float4 _648;
  int _693;
  int _696;
  int _698;
  int16_t _701;
  half _704;
  half _705;
  half _706;
  float _712;
  float _713;
  float _714;
  float _739;
  float _740;
  float _741;
  float _753;
  float _754;
  float _755;
  float _757;
  bool _762;
  float _766;
  float _767;
  float _768;
  float _772;
  float _788;
  float _789;
  float _790;
  bool _808;
  float _809;
  float _810;
  float _811;
  float _814;
  float _817;
  float _820;
  float _821;
  float _825;
  float _826;
  float _827;
  float _853;
  float _857;
  float _882;
  bool _886;
  float _896;
  float _897;
  float _898;
  float _899;
  int _900;
  float _909;
  float _929;
  float _930;
  float _931;
  float _932;
  float _935;
  float _936;
  float _940;
  float _961;
  bool _993;
  float _1010;
  float _1011;
  float _1012;
  float _1048;
  float _1051;
  float _1054;
  float _1055;
  int _1073;
  int _1074;
  float _1082;
  float4 _1113;
  uint _1124;
  float _1140;
  float _1141;
  float _1142;
  float _1144;
  float _1145;
  float _1146;
  float _1147;
  float _1153;
  float _1155;
  float _1163;
  float _1172;
  float _1173;
  float4 _1195;
  float4 _1223;
  int _1233;
  int _1234;
  int _1235;
  int _1248;
  float _1268;
  float _1270;
  float _1271;
  float _1284;
  float _1285;
  float _1286;
  float _1290;
  float _1291;
  float _1292;
  float _1296;
  float _1297;
  float _1298;
  float _1308;
  float _1329;
  float4 _1333;
  float4 _1361;
  int _1371;
  int _1372;
  int _1373;
  int _1386;
  float _1399;
  float _1400;
  float _1401;
  bool _1405;
  bool _1406;
  bool _1407;
  float _1408;
  float _1409;
  float _1410;
  bool _1411;
  bool _1412;
  bool _1413;
  float4 _1435;
  float4 _1454;
  float _1458;
  float _1459;
  float _1460;
  int _1476;
  float _1483;
  float _1484;
  float _1485;
  float _1486;
  float _1495;
  float _1496;
  float _1497;
  float _1498;
  float _1499;
  float _1500;
  int _1504;
  int _1505;
  int _1506;
  uint4 _1513;
  float _1530;
  float _1553;
  float _1554;
  float _1555;
  float _1586;
  float _1588;
  float _1595;
  float _1607;
  float _1613;
  float _1614;
  float _1630;
  float _1636;
  float _1656;
  float _1657;
  float _1661;
  float _1662;
  float _1663;
  int _1664;
  int _1682;
  float _1685;
  float _1689;
  float _1690;
  float _1691;
  float4 _1700;
  float4 _1728;
  int _1738;
  int _1739;
  int _1740;
  int _1753;
  bool _1777;
  float _1784;
  float4 _1791;
  float4 _1819;
  int _1829;
  int _1830;
  int _1831;
  int _1844;
  int _1880;
  uint _1881;
  int _1883;
  int _1888;
  int _1897;
  int _1907;
  int _1908;
  int _1919;
  uint _1924;
  int _1930;
  uint _1934;
  float _1936;
  float4 _1938;
  float _1973;
  float _1974;
  float _1975;
  int _1983;
  int _1986;
  int _1988;
  int16_t _1991;
  half _1994;
  half _1995;
  half _1996;
  float _2002;
  float _2003;
  float _2004;
  float _2029;
  float _2030;
  float _2031;
  float _2043;
  float _2044;
  float _2045;
  float _2047;
  bool _2052;
  float _2056;
  float _2057;
  float _2058;
  float _2062;
  float _2078;
  float _2079;
  float _2080;
  float _2100;
  float _2103;
  float _2106;
  float _2107;
  float _2111;
  float _2112;
  float _2113;
  float _2139;
  float _2143;
  float _2168;
  float _2175;
  float _2176;
  float _2177;
  float _2178;
  int _2179;
  float _2188;
  float _2213;
  float _2223;
  float _2224;
  float _2225;
  float _2227;
  float _2228;
  float _2240;
  bool _2241;
  float _2255;
  float _2256;
  float _2259;
  float _2280;
  float _2284;
  float _2286;
  float _2290;
  float _2291;
  float _2292;
  float _2322;
  float _2327;
  float _2328;
  half4 _2355;
  float _2372;
  float _2373;
  float _2374;
  float _2379;
  float _2380;
  float _2381;
  float _2401;
  float _2405;
  float _2412;
  float _2413;
  bool _2420;
  float _2429;
  float _2430;
  float _2431;
  float _2451;
  float _2455;
  bool _2466;
  float _2467;
  float _2468;
  float _2469;
  int _2470;
  float _2476;
  float _2477;
  int _2480;
  int _2481;
  uint _2484;
  uint _2485;
  half4 _2502;
  int _2516;
  float4 _2518;
  float4 _2524;
  float4 _2530;
  float4 _2536;
  float _2541;
  float _2545;
  float _2549;
  float _2553;
  float _2556;
  float _2557;
  float _2558;
  float _2559;
  float _2562;
  float _2578;
  float _2584;
  float _2596;
  float _2600;
  float _2601;
  float _2602;
  float _2603;
  float _2604;
  float _2605;
  float _2608;
  float _2611;
  float _2614;
  float _2616;
  float _2617;
  float _2618;
  float _2619;
  float _2620;
  float _2625;
  float _2638;
  float _2640;
  float _2646;
  float _2684;
  float _2688;
  float _2692;
  float _2695;
  float _2696;
  bool _2707;
  float _2740;
  float _2744;
  float _2748;
  bool _2759;
  int _2782;
  int _2783;
  uint _2786;
  uint _2787;
  uint _2806;
  float4 _2808;
  float4 _2814;
  float4 _2820;
  float4 _2826;
  float _2831;
  float _2835;
  float _2839;
  float _2843;
  float _2846;
  float _2847;
  float _2848;
  float _2849;
  float _2852;
  float _2868;
  float _2874;
  float _2886;
  float _2890;
  float _2891;
  float _2892;
  float _2893;
  float _2894;
  float _2895;
  float _2898;
  float _2901;
  float _2904;
  float _2906;
  float _2932;
  float _2953;
  float _2954;
  float _2955;
  float _2956;
  float _2957;
  float _2958;
  float _2978;
  float _2982;
  float _2986;
  float _3001;
  float4 _3005;
  float _3010;
  float _3015;
  float _3017;
  float _3024;
  float _3031;
  half _3032;
  half _3033;
  half _3034;
  half _3048;
  half _3049;
  half _3050;
  bool _3053;
  float _3090;
  float _3096;
  float _3101;
  float _3105;
  float _3107;
  float _3109;
  float _3115;
  float _3116;
  float _3122;
  float2 _3150;
  float _3169;
  float _3170;
  float _3172;
  float _3178;
  float _3181;
  float _3184;
  float _3190;
  float _3191;
  float _3192;
  float _3211;
  float _3219;
  float _3231;
  float _3234;
  float _3240;
  float _3261;
  float _3262;
  float _3268;
  float _3270;
  float _3277;
  float _3278;
  float _3279;
  float _3280;
  float _3299;
  bool _3301;
  float _3302;
  float _3303;
  float _3304;
  float _3305;
  half _3308;
  half _3309;
  half _3310;
  float _3335;
  float _3343;
  float _3354;
  float _3356;
  float _3357;
  float _3358;
  float _3360;
  float _3361;
  float _3362;
  float _3363;
  float _3364;
  float _3365;
  float _3366;
  float _3371;
  float _3373;
  float _3376;
  float _3377;
  float _3379;
  float _3382;
  float _3383;
  float _3391;
  float _3392;
  float _3393;
  float _3394;
  float _3406;
  float _3410;
  float _3421;
  float _3423;
  float _3425;
  float _3430;
  float _3431;
  float _3435;
  float _3436;
  float _3437;
  float _3438;
  float _3466;
  float _3467;
  float _3468;
  float _3469;
  float _3473;
  float _3474;
  float _3475;
  float _3479;
  float _3480;
  float _3481;
  float _3485;
  float _3489;
  bool _3500;
  float _3508;
  float _3509;
  float _3510;
  float _3514;
  float _3518;
  bool _3529;
  float _3531;
  float _3532;
  float _3533;
  float _3534;
  int _3535;
  float _3541;
  float _3542;
  int _3545;
  int _3546;
  uint _3549;
  uint _3550;
  int _3569;
  float4 _3571;
  float4 _3577;
  float4 _3583;
  float4 _3589;
  float _3594;
  float _3598;
  float _3602;
  float _3606;
  float _3609;
  float _3610;
  float _3611;
  float _3612;
  float _3615;
  float _3631;
  float _3637;
  float _3649;
  float _3653;
  float _3654;
  float _3655;
  float _3656;
  float _3657;
  float _3658;
  float _3661;
  float _3664;
  float _3667;
  float _3669;
  float _3673;
  float _3678;
  float _3691;
  float _3693;
  float _3699;
  float _3714;
  float _3718;
  float _3722;
  bool _3733;
  float _3750;
  float _3754;
  float _3758;
  bool _3769;
  int _3792;
  int _3793;
  uint _3796;
  uint _3797;
  float _3835;
  float _3849;
  float _3850;
  float _3851;
  float _3855;
  float _3859;
  float _3863;
  float _3878;
  float4 _3882;
  float _3887;
  float _3892;
  float _3894;
  float _3901;
  uint4 _3913;
  float _3919;
  float _3922;
  float _3926;
  float _3927;
  float _3928;
  float _3929;
  float _3965;
  float _3967;
  float _3968;
  float _3974;
  float _3979;
  float _3982;
  float _3989;
  float _3995;
  float2 _4021;
  float _4025;
  float _4035;
  float _4036;
  float _4037;
  float _4056;
  float _4062;
  float _4072;
  float _4075;
  float _4081;
  float _4103;
  float _4105;
  float _4112;
  float _4113;
  float _4114;
  float _4115;
  float _4131;
  float _4145;
  float _4146;
  float _4147;
  float _4151;
  float _4152;
  float _4153;
  float4 _4180;
  float4 _4208;
  int _4218;
  int _4219;
  int _4220;
  int _4233;
  float _4256;
  float _4260;
  float _4280;
  bool _4281;
  float4 _4289;
  float _4312;
  float _4316;
  float4 _4320;
  float _4326;
  float _4327;
  float _4328;
  float _4329;
  float _4334;
  float _4335;
  float _4339;
  float _4349;
  float _4350;
  float _4351;
  float _4352;
  float _4357;
  float _4374;
  float _4385;
  float _4386;
  float _4391;
  float _4398;
  int _4409;
  float _4422;
  float _4423;
  float _4426;
  float _4429;
  float _4432;
  float _4433;
  float _4435;
  float _4438;
  float _4440;
  float _4441;
  float _4443;
  float _4444;
  float _4453;
  float _4457;
  float _4460;
  float _4465;
  float4 _4469;
  float4 _4497;
  int _4507;
  int _4508;
  int _4509;
  int _4522;
  float4 _4550;
  float4 _4569;
  float _4573;
  float _4574;
  float _4575;
  int _4591;
  float _4596;
  float4 _4600;
  float4 _4628;
  int _4638;
  int _4639;
  int _4640;
  int _4653;
  bool _4679;
  float _4687;
  float4 _4694;
  float4 _4722;
  int _4732;
  int _4733;
  int _4734;
  int _4747;
  int _4783;
  uint _4784;
  int _4786;
  int _4791;
  int _4800;
  int _4810;
  int _4811;
  int _4822;
  uint _4827;
  int _4833;
  uint _4837;
  float _4839;
  float4 _4841;
  float _4876;
  float _4877;
  float _4878;
  int _4886;
  int _4889;
  int _4891;
  int16_t _4894;
  half _4897;
  half _4898;
  half _4899;
  float _4905;
  float _4906;
  float _4907;
  float _4932;
  float _4933;
  float _4934;
  float _4946;
  float _4947;
  float _4948;
  float _4950;
  bool _4955;
  float _4959;
  float _4960;
  float _4961;
  float _4965;
  float _4981;
  float _4982;
  float _4983;
  float _5001;
  float _5002;
  float _5003;
  float _5004;
  float _5008;
  float _5009;
  float _5010;
  float _5036;
  float _5040;
  float _5065;
  float _5072;
  float _5073;
  float _5074;
  float _5075;
  int _5076;
  float _5085;
  float _5102;
  float _5106;
  float _5107;
  float _5108;
  float _5111;
  float _5114;
  float _5118;
  float _5119;
  float _5120;
  int _5121;
  float _5147;
  float _5148;
  float _5149;
  bool _5152;
  float _5193;
  float _5195;
  float _5196;
  float _5202;
  float _5207;
  float _5213;
  float _5221;
  float _5228;
  float2 _5256;
  float _5278;
  float _5296;
  float _5297;
  float _5298;
  float _5317;
  float _5325;
  float _5337;
  float _5340;
  float _5346;
  float _5374;
  float _5376;
  float _5383;
  float _5384;
  float _5385;
  float _5386;
  float _5409;
  float _5410;
  float _5411;
  float _5431;
  float _5435;
  float _5442;
  float _5443;
  bool _5450;
  float _5462;
  float _5463;
  float _5464;
  float _5484;
  float _5488;
  bool _5499;
  int _5500;
  float _5501;
  float _5502;
  float _5503;
  float _5505;
  float _5511;
  float _5512;
  int _5515;
  int _5516;
  uint _5519;
  uint _5520;
  int _5539;
  float4 _5541;
  float4 _5547;
  float4 _5553;
  float4 _5559;
  float _5564;
  float _5568;
  float _5572;
  float _5576;
  float _5579;
  float _5580;
  float _5581;
  float _5582;
  float _5585;
  float _5601;
  float _5607;
  float _5619;
  float _5623;
  float _5624;
  float _5625;
  float _5626;
  float _5627;
  float _5628;
  float _5631;
  float _5634;
  float _5637;
  float _5639;
  float _5643;
  float _5648;
  float _5661;
  float _5663;
  float _5669;
  float _5700;
  float _5704;
  float _5708;
  float _5711;
  float _5712;
  bool _5723;
  float _5756;
  float _5760;
  float _5764;
  bool _5775;
  int _5798;
  int _5799;
  uint _5802;
  uint _5803;
  float _5841;
  float _5862;
  float _5863;
  float _5864;
  float _5884;
  float _5888;
  float _5892;
  float _5907;
  float4 _5911;
  float _5916;
  float _5921;
  float _5923;
  float _5930;
  float _5939;
  float _5940;
  float _5949;
  float _5962;
  int _5999;
  int _6013;
  int _6027;
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
  _110 = (uint)((uint)(_108.x)) >> 24;  // [sem: _3__36__0__0__g_depthOpaque_load_derived]
  _114 = _110 & 127;
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
  _192 = (float)((uint)((uint)(((int)(((uint)((uint)(_frameNumber.x)) >> 2) * 71)) & 31)));
  if (!((uint)_114 > (uint)11) | !(((uint)_114 < (uint)20) || (_114 == 107))) {
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
      _264 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_262 + 20))];
      _292 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_262 + 36))];
      // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
      // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
      float3 _rndx_surfel_jitter_302 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _258) * _264.w) + _292.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _259) * _264.w) + _292.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _260) * _264.w) + _292.z), float2(_85, _86), _192, _frameNumber.x);
      _302 = int(floor(_rndx_surfel_jitter_302.x));
      _303 = int(floor(_rndx_surfel_jitter_302.y));
      _304 = int(floor(_rndx_surfel_jitter_302.z));
      // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
      if (!(((((int)_302 >= (int)int(_264.x + -63.0f)) && ((int)_302 < (int)int(_264.x + 63.0f))) && (((int)_303 >= (int)int(_264.y + -31.0f)) && ((int)_303 < (int)int(_264.y + 31.0f)))) && (((int)_304 >= (int)int(_264.z + -63.0f)) && ((int)_304 < (int)int(_264.z + 63.0f))))) {
        _317 = _262 + 1;
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
      _333 = min(_222, (float((int)((int)(1 << (_320 & 31)))) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x));
      _337 = (_333 * select(_221, _327, _247)) + _258;
      _338 = (_333 * select(_221, _328, _248)) + _259;
      _339 = (_333 * select(_221, _329, _249)) + _260;
      _341 = 0;
      while(true) {
        _343 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_341 + 20))];
        _371 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_341 + 36))];
        // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
        // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
        float3 _rndx_surfel_jitter_381 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _337) * _343.w) + _371.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _338) * _343.w) + _371.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _339) * _343.w) + _371.z), float2(_85, _86), _192, _frameNumber.x);
        _381 = int(floor(_rndx_surfel_jitter_381.x));
        _382 = int(floor(_rndx_surfel_jitter_381.y));
        _383 = int(floor(_rndx_surfel_jitter_381.z));
        // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
        if (!(((((int)_381 >= (int)int(_343.x + -63.0f)) && ((int)_381 < (int)int(_343.x + 63.0f))) && (((int)_382 >= (int)int(_343.y + -31.0f)) && ((int)_382 < (int)int(_343.y + 31.0f)))) && (((int)_383 >= (int)int(_343.z + -63.0f)) && ((int)_383 < (int)int(_343.z + 63.0f))))) {
          _396 = _341 + 1;
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
              _409 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_407 + 20))];
              _437 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_407 + 36))];
              // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
              // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
              float3 _rndx_surfel_jitter_447 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _337) * _409.w) + _437.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _338) * _409.w) + _437.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _339) * _409.w) + _437.z), float2(_85, _86), _192, _frameNumber.x);
              _447 = int(floor(_rndx_surfel_jitter_447.x));
              _448 = int(floor(_rndx_surfel_jitter_447.y));
              _449 = int(floor(_rndx_surfel_jitter_447.z));
              // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
              if (((((int)_447 >= (int)int(_409.x + -63.0f)) && ((int)_447 < (int)int(_409.x + 63.0f))) && (((int)_448 >= (int)int(_409.y + -31.0f)) && ((int)_448 < (int)int(_409.y + 31.0f)))) && (((int)_449 >= (int)int(_409.z + -63.0f)) && ((int)_449 < (int)int(_409.z + 63.0f)))) {
                _470 = (_447 & 127);
                _471 = (_448 & 63);
                _472 = (_449 & 127);
                _473 = _407;
              } else {
                _462 = _407 + 1;
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
                _486 = (((((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_470, _471, ((int)(((uint)(((int)(_473 * 130)) | 1)) + _472)), 0)))).x) & 4194303) == 0);
                [branch]
                if (!_486) {
                  _489 = _470;
                  _490 = _471;
                  _491 = _472;
                  _492 = _473;
                } else {
                  _489 = -10000;
                  _490 = -10000;
                  _491 = -10000;
                  _492 = -10000;
                }
                _494 = (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 0.5f) * float((int)((int)(1 << (_473 & 31))));
                _499 = 0;
                while(true) {
                  _501 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_499 + 20))];
                  _529 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_499 + 36))];
                  // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
                  // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
                  float3 _rndx_surfel_jitter_539 = RenoDXSurfelVoxelJitter(float3((((_337 - _494) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x) * _501.w) + _529.x, (((_338 - _494) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y) * _501.w) + _529.y, (((_339 - _494) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z) * _501.w) + _529.z), float2(_85, _86), _192, _frameNumber.x);
                  _539 = int(floor(_rndx_surfel_jitter_539.x));
                  _540 = int(floor(_rndx_surfel_jitter_539.y));
                  _541 = int(floor(_rndx_surfel_jitter_539.z));
                  // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
                  if (((((int)_539 >= (int)int(_501.x + -63.0f)) && ((int)_539 < (int)int(_501.x + 63.0f))) && (((int)_540 >= (int)int(_501.y + -31.0f)) && ((int)_540 < (int)int(_501.y + 31.0f)))) && (((int)_541 >= (int)int(_501.z + -63.0f)) && ((int)_541 < (int)int(_501.z + 63.0f)))) {
                    _562 = (_539 & 127);
                    _563 = (_540 & 63);
                    _564 = (_541 & 127);
                    _565 = _499;
                  } else {
                    _554 = _499 + 1;
                    if ((uint)_554 < (uint)8) {
                      _499 = _554;
                      continue;
                    } else {
                      _562 = -10000;
                      _563 = -10000;
                      _564 = -10000;
                      _565 = -10000;
                    }
                  }
                  if (!((uint)_565 > (uint)5)) {
                    if (_486) {
                      _570 = 0;
                      _571 = _492;
                      _572 = _491;
                      _573 = _490;
                      _574 = _489;
                      while(true) {
                        _583 = 0;
                        _584 = _571;
                        _585 = _572;
                        _586 = _573;
                        _587 = _574;
                        while(true) {
                          _590 = _570 + _564;
                          _591 = _590 + ((uint)(((int)(_565 * 130)) | 1));
                          _598 = _583 + _563;
                          if (!(((uint)_598 > (uint)63) || ((uint)(_562 | _590) > (uint)127))) {
                            _607 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_562, _598, _591, 0)))).x) & 4194303;
                            _610 = (_607 != 0);
                            _611 = _607;
                            _612 = _565;
                            _613 = _590;
                            _614 = _598;
                            _615 = _562;
                          } else {
                            _610 = false;
                            _611 = 0;
                            _612 = 0;
                            _613 = 0;
                            _614 = 0;
                            _615 = 0;
                          }
                          if (!_610) {
                            _617 = _562 + 1;
                            _618 = _583 + _563;
                            if (!(((uint)_618 > (uint)63) || ((uint)(_617 | _590) > (uint)127))) {
                              _6027 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_617, _618, _591, 0)))).x) & 4194303;
                              _6030 = (_6027 != 0);
                              _6031 = _6027;
                              _6032 = _565;
                              _6033 = _590;
                              _6034 = _618;
                              _6035 = _617;
                            } else {
                              _6030 = false;
                              _6031 = 0;
                              _6032 = 0;
                              _6033 = 0;
                              _6034 = 0;
                              _6035 = 0;
                            }
                            if (!_6030) {
                              _624 = _587;
                              _625 = _586;
                              _626 = _585;
                              _627 = _584;
                              _628 = 0;
                            } else {
                              _624 = _6035;
                              _625 = _6034;
                              _626 = _6033;
                              _627 = _6032;
                              _628 = _6031;
                            }
                          } else {
                            _624 = _615;
                            _625 = _614;
                            _626 = _613;
                            _627 = _612;
                            _628 = _611;
                          }
                          while(true) {
                            _629 = _583 + 1;
                            if (((int)_629 < (int)2) && (_628 == 0)) {
                              _583 = _629;
                              _584 = _627;
                              _585 = _626;
                              _586 = _625;
                              _587 = _624;
                              __loop_jump_target = 582;
                              break;
                            }
                            while(true) {
                              _593 = _570 + 1;
                              if (((int)_593 < (int)2) && (_628 == 0)) {
                                _570 = _593;
                                _571 = _627;
                                _572 = _626;
                                _573 = _625;
                                _574 = _624;
                                __loop_jump_target = 569;
                                break;
                              }
                              while(true) {
                                _577 = _627;
                                _578 = _626;
                                _579 = _625;
                                _580 = _624;
                                break;
                              }
                              break;
                            }
                            if (__loop_jump_target != -1) {
                              break;
                            }
                            break;
                          }
                          if (__loop_jump_target == 582) {
                            __loop_jump_target = -1;
                            continue;
                          }
                          if (__loop_jump_target != -1) {
                            break;
                          }
                          break;
                        }
                        if (__loop_jump_target == 569) {
                          __loop_jump_target = -1;
                          continue;
                        }
                        if (__loop_jump_target != -1) {
                          break;
                        }
                        break;
                      }
                    } else {
                      _577 = _492;
                      _578 = _491;
                      _579 = _490;
                      _580 = _489;
                    }
                    if ((uint)_577 < (uint)6) {
                      _634 = _577 * 130;
                      _640 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_580, _579, ((int)(((uint)(_634 | 1)) + _578)), 0)))).x) & 4194303;
                      [branch]
                      if (!(_640 == 0)) {
                        _644 = 1 << (_577 & 31);
                        _646 = float((int)(_644)) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                        _648 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((uint)(_577 + 20u))];
                        _684 = 0.0f;
                        _685 = 0.0f;
                        _686 = 0.0f;
                        _687 = _250;
                        _688 = _251;
                        _689 = _252;
                        _690 = 0.0f;
                        _691 = 0;
                        while(true) {
                          _693 = (_640 + -1) + _691;
                          _696 = __3__37__0__0__g_surfelDataBuffer[_693]._baseColor;
                          _698 = __3__37__0__0__g_surfelDataBuffer[_693]._normal;
                          _701 = __3__37__0__0__g_surfelDataBuffer[_693]._radius;
                          if (!(_696 == 0)) {
                            _704 = __3__37__0__0__g_surfelDataBuffer[_693]._radiance.z;
                            _705 = __3__37__0__0__g_surfelDataBuffer[_693]._radiance.y;
                            _706 = __3__37__0__0__g_surfelDataBuffer[_693]._radiance.x;
                            _712 = (float)((uint)((uint)(_696 & 255)));
                            _713 = (float)((uint)((uint)(((uint)(_696) >> 8) & 255)));
                            _714 = (float)((uint)((uint)(((uint)(_696) >> 16) & 255)));
                            _739 = select(((_712 * 0.003921568859368563f) < 0.040449999272823334f), (_712 * 0.0003035269910469651f), exp2(log2((_712 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
                            _740 = select(((_713 * 0.003921568859368563f) < 0.040449999272823334f), (_713 * 0.0003035269910469651f), exp2(log2((_713 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
                            _741 = select(((_714 * 0.003921568859368563f) < 0.040449999272823334f), (_714 * 0.0003035269910469651f), exp2(log2((_714 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
                            _753 = (((float)((uint)((uint)(_698 & 255)))) * 0.007874015718698502f) + -1.0f;
                            _754 = (((float)((uint)((uint)(((uint)(_698) >> 8) & 255)))) * 0.007874015718698502f) + -1.0f;
                            _755 = (((float)((uint)((uint)(((uint)(_698) >> 16) & 255)))) * 0.007874015718698502f) + -1.0f;
                            _757 = rsqrt(dot(float3(_753, _754, _755), float3(_753, _754, _755)));  // [sem: invLength]
                            _762 = ((_698 & 16777215) == 0);
                            _766 = float(_706);
                            _767 = float(_705);
                            _768 = float(_704);
                            _772 = (_646 * 0.0019607844296842813f) * ((float)((uint16_t)((uint)(_701 & 255))));
                            _788 = (((((float)((uint)((uint)((uint)(_696) >> 24)))) * 0.003937007859349251f) + -0.5f) * _646) + ((((_648.x + -63.5f) + float((int)(((int)((_580 + 64u) - (uint)(int(_648.x)))) & 127))) * _646) - _viewPos.x);
                            _789 = (((((float)((uint)((uint)((uint)(_698) >> 24)))) * 0.003937007859349251f) + -0.5f) * _646) + ((((_648.y + -31.5f) + float((int)(((int)((_579 + 32u) - (uint)(int(_648.y)))) & 63))) * _646) - _viewPos.y);
                            _790 = (((((float)((uint16_t)((uint)((uint16_t)(_701) >> 8)))) * 0.003937007859349251f) + -0.5f) * _646) + ((((_648.z + -63.5f) + float((int)(((int)((_578 + 64u) - (uint)(int(_648.z)))) & 127))) * _646) - _viewPos.z);
                            _808 = (_234.w == 0.0f);  // [sem: _3__36__0__0__g_raytracingNormal_load_derived]
                            _809 = select(_808, _327, _687);
                            _810 = select(_808, _328, _688);
                            _811 = select(_808, _329, _689);
                            _814 = ((-0.0f - _177) - _255) + _788;
                            _817 = ((-0.0f - _178) - _256) + _789;
                            _820 = ((-0.0f - _179) - _257) + _790;
                            _821 = dot(float3(_814, _817, _820), float3(_809, _810, _811));
                            _825 = _814 - (_821 * _809);
                            _826 = _817 - (_821 * _810);
                            _827 = _820 - (_821 * _811);
                            _853 = 1.0f / ((float)((uint)_644));
                            _857 = frac(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _790) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z) * _853);
                            _882 = select(((int)_577 > (int)5), 1.0f, ((saturate((saturate(dot(float3(_327, _328, _329), float3(select(_762, _327, (_757 * _753)), select(_762, _328, (_757 * _754)), select(_762, _329, (_757 * _755))))) + -0.03125f) * 1.0322580337524414f) * ((float)((bool)(uint)(dot(float3(_825, _826, _827), float3(_825, _826, _827)) < ((_772 * _772) * 16.0f))))) * ((float)((bool)(uint)(((__3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _788) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _853), (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _789) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y) * _853), (((((float)((uint)_634)) + 1.0f) + ((select((_857 < 0.0f), 1.0f, 0.0f) + _857) * 128.0f)) * 0.000961538462433964f)), 0.0f)).x) > ((_646 * 0.25f) * (saturate((dot(float3(_766, _767, _768), float3(0.21267099678516388f, 0.7151600122451782f, 0.0721689984202385f)) * 9.999999747378752e-05f) / _exposure3.w) + 1.0f)))))));
                            _886 = (!(_228.w > 0.0f)) || ((_696 & 16777215) == 16777215);
                            _896 = ((select(_886, (((_740 * 0.3395099937915802f) + (_739 * 0.6131200194358826f)) + (_741 * 0.047370001673698425f)), _228.x) * _766) * _882) + _684;
                            _897 = ((select(_886, (((_740 * 0.9163600206375122f) + (_739 * 0.07020000368356705f)) + (_741 * 0.013450000435113907f)), _228.y) * _767) * _882) + _685;
                            _898 = ((select(_886, (((_740 * 0.10958000272512436f) + (_739 * 0.02061999961733818f)) + (_741 * 0.8697999715805054f)), _228.z) * _768) * _882) + _686;
                            _899 = _882 + _690;
                            _900 = _691 + 1;
                            if ((uint)_900 < (uint)4) {
                              _684 = _896;
                              _685 = _897;
                              _686 = _898;
                              _687 = _809;
                              _688 = _810;
                              _689 = _811;
                              _690 = _899;
                              _691 = _900;
                              continue;
                            } else {
                              _903 = _896;
                              _904 = _897;
                              _905 = _898;
                              _906 = _899;
                            }
                          } else {
                            _903 = _684;
                            _904 = _685;
                            _905 = _686;
                            _906 = _690;
                          }
                          if (_906 > 0.0f) {
                            _909 = 1.0f / _906;
                            _923 = (-0.0f - min(0.0f, (-0.0f - (_903 * _909))));
                            _924 = (-0.0f - min(0.0f, (-0.0f - (_904 * _909))));
                            _925 = (-0.0f - min(0.0f, (-0.0f - (_905 * _909))));
                          } else {
                            _923 = _903;
                            _924 = _904;
                            _925 = _905;
                          }
                          break;
                        }
                      } else {
                        _923 = 0.0f;
                        _924 = 0.0f;
                        _925 = 0.0f;
                      }
                    } else {
                      _923 = 0.0f;
                      _924 = 0.0f;
                      _925 = 0.0f;
                    }
                  } else {
                    _923 = 0.0f;
                    _924 = 0.0f;
                    _925 = 0.0f;
                  }
                  break;
                }
              } else {
                _923 = 0.0f;
                _924 = 0.0f;
                _925 = 0.0f;
              }
              _929 = max(9.999999974752427e-07f, (_exposure3.w * 0.0010000000474974513f));
              _930 = max(_929, _923);
              _931 = max(_929, _924);
              _932 = max(_929, _925);
              _935 = dot(float3(_930, _931, _932), float3(0.21267099678516388f, 0.7151600122451782f, 0.0721689984202385f));
              _936 = min((max(0.0005000000237487257f, _exposure3.w) * 512.0f), _935);
              _940 = max(9.999999717180685e-10f, _935);
              _945 = ((_936 * _930) / _940);
              _946 = ((_936 * _931) / _940);
              _947 = ((_936 * _932) / _940);
              break;
            }
          } else {
            _945 = 0.0f;
            _946 = 0.0f;
            _947 = 0.0f;
          }
          if (saturate(_234.w) == 0.0f) {
            _961 = (exp2((saturate(saturate(_228.w)) * 20.0f) + -8.0f) + -0.00390625f) * (1.0f / (((_222 * _222) * 0.10000000149011612f) + 1.0f));
            _969 = ((_961 * _228.x) + _945);
            _970 = ((_961 * _228.y) + _946);
            _971 = ((_961 * _228.z) + _947);
          } else {
            _969 = _945;
            _970 = _946;
            _971 = _947;
          }
          _978 = _250;
          _979 = _251;
          _980 = _252;
          _981 = _234.w;
          _982 = _228.x;
          _983 = _228.y;
          _984 = _228.z;
          _985 = _228.w;
          _986 = _254;
          _987 = (_renderParams2.y * _969);
          _988 = (_renderParams2.y * _970);
          _989 = (_renderParams2.y * _971);
          _990 = 1.0f;
          _991 = _222;
        } else {
          _978 = _250;
          _979 = _251;
          _980 = _252;
          _981 = _234.w;
          _982 = _228.x;
          _983 = _228.y;
          _984 = _228.z;
          _985 = _228.w;
          _986 = _254;
          _987 = 0.0f;
          _988 = 0.0f;
          _989 = 0.0f;
          _990 = 1.0f;
          _991 = _222;
        }
        break;
      }
      break;
    }
  } else {
    _978 = 0.0f;
    _979 = 0.0f;
    _980 = 0.0f;
    _981 = 0.0f;
    _982 = 0.0f;
    _983 = 0.0f;
    _984 = 0.0f;
    _985 = 0.0f;
    _986 = 0;
    _987 = 0.0f;
    _988 = 0.0f;
    _989 = 0.0f;
    _990 = 0.0f;
    _991 = 0.0f;
  }
  _993 = (_991 > 0.0f);
  if ((_182 > (_lightingParams.z * 0.875f)) && (!_993)) {
    _1006 = (_182 < (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 11585.1259765625f));
  } else {
    _1006 = false;
  }
  _1010 = (_991 * _218) + _177;
  _1011 = (_991 * _219) + _178;
  _1012 = (_991 * _220) + _179;
  _1048 = mad((_viewProjRelativePrev[2].w), _1012, mad((_viewProjRelativePrev[1].w), _1011, ((_viewProjRelativePrev[0].w) * _1010))) + (_viewProjRelativePrev[3].w);
  _1051 = (mad((_viewProjRelativePrev[2].z), _1012, mad((_viewProjRelativePrev[1].z), _1011, ((_viewProjRelativePrev[0].z) * _1010))) + (_viewProjRelativePrev[3].z)) / _1048;
  _1054 = (((mad((_viewProjRelativePrev[2].x), _1012, mad((_viewProjRelativePrev[1].x), _1011, ((_viewProjRelativePrev[0].x) * _1010))) + (_viewProjRelativePrev[3].x)) / _1048) * 0.5f) + 0.5f;
  _1055 = 0.5f - (((mad((_viewProjRelativePrev[2].y), _1012, mad((_viewProjRelativePrev[1].y), _1011, ((_viewProjRelativePrev[0].y) * _1010))) + (_viewProjRelativePrev[3].y)) / _1048) * 0.5f);
  if (_221) {
    if (_993) {
      _1073 = int(_1054 * _bufferSizeAndInvSize.x);
      _1074 = int(_1055 * _bufferSizeAndInvSize.y);
      _1082 = _nearFarProj.x / max(1.0000000116860974e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaquePrev.Load(int3(_1073, _1074, 0)))).x) & 16777215)))) * 5.960465188081798e-08f));
      if ((_1051 > 0.0f) && (((_1054 >= 0.0f) && (_1054 <= 1.0f)) && ((_1055 >= 0.0f) && (_1055 <= 1.0f)))) {
        if (((_1082 - dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z))) > 0.0f) && (abs(_1082 - _1048) < max(0.5f, (_1048 * 0.05000000074505806f)))) {
          _1113 = __3__36__0__0__g_sceneColor.SampleLevel(__3__40__0__0__g_samplerClamp, float2(_1054, _1055), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
          if (!(!(_1113.w >= 0.0f))) {
            _1124 = __3__36__0__0__g_sceneNormal.Load(int3(_1073, _1074, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
            _1140 = min(1.0f, ((((float)((uint)((uint)(_1124.x & 1023)))) * 0.001956947147846222f) + -1.0f));
            _1141 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1124.x)) >> 10) & 1023)))) * 0.001956947147846222f) + -1.0f));
            _1142 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1124.x)) >> 20) & 1023)))) * 0.001956947147846222f) + -1.0f));
            _1144 = rsqrt(dot(float3(_1140, _1141, _1142), float3(_1140, _1141, _1142)));  // [sem: invLength]
            _1145 = _1144 * _1140;
            _1146 = _1144 * _1141;
            _1147 = _1144 * _1142;
            _1153 = select((dot(float3((-0.0f - _218), (-0.0f - _219), (-0.0f - _220)), float3(_1145, _1146, _1147)) > 0.20000000298023224f), 1.0f, 0.0f);
            _1155 = saturate(_182 * 0.009999999776482582f);  // [sem: expr_sat]
            _1163 = (float)((bool)(uint)(abs(_nearFarProj.x - _1082) < (_1082 * 0.5f)));
            _1168 = _1145;
            _1169 = _1146;
            _1170 = _1147;
            _1171 = 0.800000011920929f;
            _1172 = _renderParams2.x * _renderParams2.x;
            _1173 = ((_1153 - (_1153 * _1155)) + _1155) * _1172;
            _1182 = ((_991 * 0.9998999834060669f) * _renderParams2.x);
            _1183 = _1168;
            _1184 = _1169;
            _1185 = _1170;
            _1186 = _1171;
            _1187 = ((_1173 * min(10000.0f, _1113.x)) * _1163);
            _1188 = ((_1173 * min(10000.0f, _1113.y)) * _1163);
            _1189 = ((_1173 * min(10000.0f, _1113.z)) * _1163);
            _1190 = _1172;
            _1191 = 1;
          } else {
            _1182 = _991;
            _1183 = _978;
            _1184 = _979;
            _1185 = _980;
            _1186 = _981;
            _1187 = 0.0f;
            _1188 = 0.0f;
            _1189 = 0.0f;
            _1190 = 0.0f;
            _1191 = 0;
          }
        } else {
          _1182 = _991;
          _1183 = _978;
          _1184 = _979;
          _1185 = _980;
          _1186 = _981;
          _1187 = 0.0f;
          _1188 = 0.0f;
          _1189 = 0.0f;
          _1190 = 0.0f;
          _1191 = 0;
        }
      } else {
        _1182 = _991;
        _1183 = _978;
        _1184 = _979;
        _1185 = _980;
        _1186 = _981;
        _1187 = 0.0f;
        _1188 = 0.0f;
        _1189 = 0.0f;
        _1190 = 0.0f;
        _1191 = 0;
      }
    } else {
      _1182 = _991;
      _1183 = _978;
      _1184 = _979;
      _1185 = _980;
      _1186 = _981;
      _1187 = 0.0f;
      _1188 = 0.0f;
      _1189 = 0.0f;
      _1190 = 0.0f;
      _1191 = 0;
    }
  } else {
    if (_993 && ((_1051 > 0.0f) && (((_1054 >= 0.0f) && (_1054 <= 1.0f)) && ((_1055 >= 0.0f) && (_1055 <= 1.0f))))) {
      _1073 = int(_1054 * _bufferSizeAndInvSize.x);
      _1074 = int(_1055 * _bufferSizeAndInvSize.y);
      _1082 = _nearFarProj.x / max(1.0000000116860974e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaquePrev.Load(int3(_1073, _1074, 0)))).x) & 16777215)))) * 5.960465188081798e-08f));
      if ((_1051 > 0.0f) && (((_1054 >= 0.0f) && (_1054 <= 1.0f)) && ((_1055 >= 0.0f) && (_1055 <= 1.0f)))) {
        if (((_1082 - dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z))) > 0.0f) && (abs(_1082 - _1048) < max(0.5f, (_1048 * 0.05000000074505806f)))) {
          _1113 = __3__36__0__0__g_sceneColor.SampleLevel(__3__40__0__0__g_samplerClamp, float2(_1054, _1055), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
          if (!(!(_1113.w >= 0.0f))) {
            _1124 = __3__36__0__0__g_sceneNormal.Load(int3(_1073, _1074, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
            _1140 = min(1.0f, ((((float)((uint)((uint)(_1124.x & 1023)))) * 0.001956947147846222f) + -1.0f));
            _1141 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1124.x)) >> 10) & 1023)))) * 0.001956947147846222f) + -1.0f));
            _1142 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1124.x)) >> 20) & 1023)))) * 0.001956947147846222f) + -1.0f));
            _1144 = rsqrt(dot(float3(_1140, _1141, _1142), float3(_1140, _1141, _1142)));  // [sem: invLength]
            _1145 = _1144 * _1140;
            _1146 = _1144 * _1141;
            _1147 = _1144 * _1142;
            _1153 = select((dot(float3((-0.0f - _218), (-0.0f - _219), (-0.0f - _220)), float3(_1145, _1146, _1147)) > 0.20000000298023224f), 1.0f, 0.0f);
            _1155 = saturate(_182 * 0.009999999776482582f);  // [sem: expr_sat]
            _1163 = (float)((bool)(uint)(abs(_nearFarProj.x - _1082) < (_1082 * 0.5f)));
            _1168 = _978;
            _1169 = _979;
            _1170 = _980;
            _1171 = _981;
            _1172 = _renderParams2.x * _renderParams2.x;
            _1173 = ((_1153 - (_1153 * _1155)) + _1155) * _1172;
            _1182 = ((_991 * 0.9998999834060669f) * _renderParams2.x);
            _1183 = _1168;
            _1184 = _1169;
            _1185 = _1170;
            _1186 = _1171;
            _1187 = ((_1173 * min(10000.0f, _1113.x)) * _1163);
            _1188 = ((_1173 * min(10000.0f, _1113.y)) * _1163);
            _1189 = ((_1173 * min(10000.0f, _1113.z)) * _1163);
            _1190 = _1172;
            _1191 = 1;
          } else {
            _1182 = _991;
            _1183 = _978;
            _1184 = _979;
            _1185 = _980;
            _1186 = _981;
            _1187 = 0.0f;
            _1188 = 0.0f;
            _1189 = 0.0f;
            _1190 = 0.0f;
            _1191 = 0;
          }
        } else {
          _1182 = _991;
          _1183 = _978;
          _1184 = _979;
          _1185 = _980;
          _1186 = _981;
          _1187 = 0.0f;
          _1188 = 0.0f;
          _1189 = 0.0f;
          _1190 = 0.0f;
          _1191 = 0;
        }
      } else {
        _1182 = _991;
        _1183 = _978;
        _1184 = _979;
        _1185 = _980;
        _1186 = _981;
        _1187 = 0.0f;
        _1188 = 0.0f;
        _1189 = 0.0f;
        _1190 = 0.0f;
        _1191 = 0;
      }
    } else {
      _1182 = _991;
      _1183 = _978;
      _1184 = _979;
      _1185 = _980;
      _1186 = _981;
      _1187 = 0.0f;
      _1188 = 0.0f;
      _1189 = 0.0f;
      _1190 = 0.0f;
      _1191 = 0;
    }
  }
  _1193 = 0;
  while(true) {
    _1195 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1193 + 20))];
    _1223 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1193 + 36))];
    // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
    // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
    float3 _rndx_surfel_jitter_1233 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _177) * _1195.w) + _1223.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _178) * _1195.w) + _1223.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _179) * _1195.w) + _1223.z), float2(_85, _86), _192, _frameNumber.x);
    _1233 = int(floor(_rndx_surfel_jitter_1233.x));
    _1234 = int(floor(_rndx_surfel_jitter_1233.y));
    _1235 = int(floor(_rndx_surfel_jitter_1233.z));
    // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
    if (((((int)_1233 >= (int)int(_1195.x + -63.0f)) && ((int)_1233 < (int)int(_1195.x + 63.0f))) && (((int)_1234 >= (int)int(_1195.y + -31.0f)) && ((int)_1234 < (int)int(_1195.y + 31.0f)))) && (((int)_1235 >= (int)int(_1195.z + -63.0f)) && ((int)_1235 < (int)int(_1195.z + 63.0f)))) {
      _1254 = (_1233 & 127);
      _1255 = _1193;
    } else {
      _1248 = _1193 + 1;
      if ((uint)_1248 < (uint)8) {
        _1193 = _1248;
        continue;
      } else {
        _1254 = -10000;
        _1255 = -10000;
      }
    }
    if (!(_1254 == -10000)) {
      _1262 = float((int)((int)(1 << (_1255 & 31))));
    } else {
      _1262 = 1.0f;
    }
    _1268 = select(_209, (((frac(frac(dot(float2(((_192 * 32.665000915527344f) + _85), ((_192 * 11.8149995803833f) + _86)), float2(0.0671105608344078f, 0.005837149918079376f))) * 52.98291778564453f) * 2.0f) * _1262) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x), 0.0f);
    if (_1006) {
      _1270 = _lightingParams.z * 1.3434898853302002f;
      _1271 = -0.0f - _1270;
      if (((_179 > _1271) && (_179 < _1270)) && (((_177 > _1271) && (_177 < _1270)) && ((_178 > _1271) && (_178 < _1270)))) {
        _1284 = 1.0f / _218;
        _1285 = 1.0f / _219;
        _1286 = 1.0f / _220;
        _1290 = _1284 * (_1271 - _177);
        _1291 = _1285 * (_1271 - _178);
        _1292 = _1286 * (_1271 - _179);
        _1296 = _1284 * (_1270 - _177);
        _1297 = _1285 * (_1270 - _178);
        _1298 = _1286 * (_1270 - _179);
        _1308 = min(min(max(_1290, _1296), max(_1291, _1297)), max(_1292, _1298));
        if ((_1308 > 0.0f) && ((_1308 >= 0.0f) && (max(max(min(_1290, _1296), min(_1291, _1297)), min(_1292, _1298)) <= _1308))) {
          _1322 = _1308;
          _1323 = ((_1308 * _218) + _177);
          _1324 = ((_1308 * _219) + _178);
          _1325 = ((_1308 * _220) + _179);
        } else {
          _1322 = 0.0f;
          _1323 = _177;
          _1324 = _178;
          _1325 = _179;
        }
      } else {
        _1322 = 0.0f;
        _1323 = _177;
        _1324 = _178;
        _1325 = _179;
      }
      _1329 = select(((_1182 > 0.0f) && (_1190 >= 1.0f)), _1182, 256.0f);
      _1331 = 0;
      while(true) {
        _1333 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1331 + 20))];
        _1361 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1331 + 36))];
        // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
        // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
        float3 _rndx_surfel_jitter_1371 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _1323) * _1333.w) + _1361.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _1324) * _1333.w) + _1361.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _1325) * _1333.w) + _1361.z), float2(_85, _86), _192, _frameNumber.x);
        _1371 = int(floor(_rndx_surfel_jitter_1371.x));
        _1372 = int(floor(_rndx_surfel_jitter_1371.y));
        _1373 = int(floor(_rndx_surfel_jitter_1371.z));
        // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
        if (!(((((int)_1371 >= (int)int(_1333.x + -63.0f)) && ((int)_1371 < (int)int(_1333.x + 63.0f))) && (((int)_1372 >= (int)int(_1333.y + -31.0f)) && ((int)_1372 < (int)int(_1333.y + 31.0f)))) && (((int)_1373 >= (int)int(_1333.z + -63.0f)) && ((int)_1373 < (int)int(_1333.z + 63.0f))))) {
          _1386 = _1331 + 1;
          if ((uint)_1386 < (uint)8) {
            _1331 = _1386;
            continue;
          } else {
            _1389 = -10000;
          }
        } else {
          _1389 = _1331;
        }
        if (!((_1389 == -10000) || ((int)_1389 > (int)4))) {
          _1399 = _1323 + (_1268 * _218);
          _1400 = _1324 + (_1268 * _219);
          _1401 = _1325 + (_1268 * _220);
          _1405 = (_218 == 0.0f);
          _1406 = (_219 == 0.0f);
          _1407 = (_220 == 0.0f);
          _1408 = select(_1405, 0.0f, (1.0f / _218));
          _1409 = select(_1406, 0.0f, (1.0f / _219));
          _1410 = select(_1407, 0.0f, (1.0f / _220));
          _1411 = (_218 > 0.0f);
          _1412 = (_219 > 0.0f);
          _1413 = (_220 > 0.0f);
          if (_1329 > 0.0f) {
            _1426 = 0;
            _1427 = 0.0f;
            _1428 = 0.0f;
            _1429 = _1401;
            _1430 = _1400;
            _1431 = _1399;
            while(true) {
              _1433 = 0;
              while(true) {
                _1435 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1433 + 20))];
                _1454 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1433 + 36))];
                _1458 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _1431) * _1435.w) + _1454.x;
                _1459 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _1430) * _1435.w) + _1454.y;
                _1460 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _1429) * _1435.w) + _1454.z;
                if (!((_1460 >= (_1435.z + -63.0f)) && ((_1458 >= (_1435.x + -63.0f)) && (_1459 >= (_1435.y + -31.0f)))) || (((_1460 >= (_1435.z + -63.0f)) && ((_1458 >= (_1435.x + -63.0f)) && (_1459 >= (_1435.y + -31.0f)))) && (!((_1460 < (_1435.z + 63.0f)) && ((_1458 < (_1435.x + 63.0f)) && (_1459 < (_1435.y + 31.0f))))))) {
                  _1476 = _1433 + 1;
                  if ((int)_1476 < (int)8) {
                    _1433 = _1476;
                    continue;
                  } else {
                    _1676 = _1428;
                    _1677 = _1429;
                    _1678 = _1430;
                    _1679 = _1431;
                    _1680 = _1427;
                    _1681 = -10000.0f;
                  }
                } else {
                  if (_1433 == -10000) {
                    _1670 = _1428;
                    _1671 = _1429;
                    _1672 = _1430;
                    _1673 = _1431;
                    _1674 = _1427;
                    _1676 = _1670;
                    _1677 = _1671;
                    _1678 = _1672;
                    _1679 = _1673;
                    _1680 = _1674;
                    _1681 = -10000.0f;
                  } else {
                    _1483 = float((int)((int)(1 << (_1433 & 31))));
                    _1484 = _1483 * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                    _1485 = 1.0f / _1483;
                    _1486 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.y * 0.0078125f;
                    _1495 = _1485 * ((_1431 * _1486) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x);
                    _1496 = _1485 * (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.y * 0.015625f) * _1430) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y);
                    _1497 = _1485 * ((_1429 * _1486) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z);
                    _1498 = _1495 * 64.0f;
                    _1499 = _1496 * 32.0f;
                    _1500 = _1497 * 64.0f;
                    _1504 = int(floor(_1498));
                    _1505 = int(floor(_1499));
                    _1506 = int(floor(_1500));
  // [sem: _3__36__0__0__g_axisAlignedDistance_load]
                    _1513 = __3__36__0__0__g_axisAlignedDistanceTextures.Load(int4((_1504 & 63), (_1505 & 31), ((_1506 & 63) | (_1433 << 6)), 0));
                    _1530 = saturate(((float)((uint)((uint)((uint)((uint)(_1513.w)) >> 2)))) * 0.01587301678955555f);  // [sem: expr_sat]
                    _1553 = _1498 - float((int)(_1504));
                    _1554 = _1499 - float((int)(_1505));
                    _1555 = _1500 - float((int)(_1506));
                    _1586 = max(((_1484 * 0.5f) * min(min(select(_1405, 999999.0f, ((select(_1411, 1.0f, 0.0f) - frac(_1495 * 256.0f)) * _1408)), select(_1406, 999999.0f, ((select(_1412, 1.0f, 0.0f) - frac(_1496 * 128.0f)) * _1409))), select(_1407, 999999.0f, ((select(_1413, 1.0f, 0.0f) - frac(_1497 * 256.0f)) * _1410)))), ((_1484 * 2.0f) * min(min(select(_1405, 999999.0f, (select(_1411, ((0.009999999776482582f - _1553) + ((float)((uint)((uint)(((uint)((uint)(_1513.x)) >> 4) & 15))))), ((0.9900000095367432f - _1553) - ((float)((uint)((uint)(_1513.x & 15)))))) * _1408)), select(_1406, 999999.0f, (select(_1412, ((0.009999999776482582f - _1554) + ((float)((uint)((uint)(((uint)((uint)(_1513.y)) >> 4) & 15))))), ((0.9900000095367432f - _1554) - ((float)((uint)((uint)(_1513.y & 15)))))) * _1409))), select(_1407, 999999.0f, (select(_1413, ((0.009999999776482582f - _1555) + ((float)((uint)((uint)(((uint)((uint)(_1513.z)) >> 4) & 15))))), ((0.9900000095367432f - _1555) - ((float)((uint)((uint)(_1513.z & 15)))))) * _1410)))));
                    _1588 = (float)((bool)(uint)(_1530 > 0.0f));
                    if (((uint)_1426 < (uint)16) || (_1428 < min(32.0f, (_1484 * 32.0f)))) {
                      _1595 = frac(_1497);
  // [sem: _3__36__0__1__g_signedDistanceVoxels_sampleLod]
                      _1607 = __3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3(_1495, _1496, (((((float)((uint)(_1433 * 130))) + 1.0f) + ((select((_1595 < 0.0f), 1.0f, 0.0f) + _1595) * 128.0f)) * 0.000961538462433964f)), 0.0f);
                      _1613 = _1428 * 0.009999999776482582f;
                      _1614 = 1.0f / _1484;
                      _1630 = (_1607.x + ((_182 * _182) * 0.00019999999494757503f)) / (((max(((_1484 * 1.0606600046157837f) * saturate((_1428 * 0.5f) + 0.5f)), _1613) - _1613) * saturate(((max(1.0f, (_1614 * 0.5f)) * _1614) * min(_1428, max(0.0f, (_1329 - _1428)))) + -1.0f)) + _1613);
                      _1636 = saturate((saturate(1.0f - (_1630 * _1630)) * _1588) + _1427);  // [sem: expr_sat]
                      if (!(((int)_1433 > (int)2) || (_1607.x > _1484))) {
                        _1650 = _1636;  // [sem: expr_sat]
                        _1651 = min(_1586, _1607.x);
                      } else {
                        _1650 = _1636;  // [sem: expr_sat]
                        _1651 = _1586;
                      }
                    } else {
                      if (!((_1513.w & 1) == 0)) {
                        _1650 = saturate((_1588 * 0.5f) + _1427);  // [sem: expr_sat]
                        _1651 = _1586;
                      } else {
                        _1650 = _1427;  // [sem: expr_sat]
                        _1651 = _1586;
                      }
                    }
                    if (!(_1650 >= 0.5f)) {
                      _1656 = max(_1651, (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 0.05000000074505806f));
                      _1657 = _1656 + _1428;
                      _1661 = (_1656 * _218) + _1431;
                      _1662 = (_1656 * _219) + _1430;
                      _1663 = (_1656 * _220) + _1429;
                      _1664 = _1426 + 1;
                      if (((uint)_1664 < (uint)192) && (_1657 < _1329)) {
                        _1426 = _1664;
                        _1427 = _1650;
                        _1428 = _1657;
                        _1429 = _1663;
                        _1430 = _1662;
                        _1431 = _1661;
                        __loop_jump_target = 1425;
                        break;
                      } else {
                        _1670 = _1657;
                        _1671 = _1663;
                        _1672 = _1662;
                        _1673 = _1661;
                        _1674 = _1650;
                        _1676 = _1670;
                        _1677 = _1671;
                        _1678 = _1672;
                        _1679 = _1673;
                        _1680 = _1674;
                        _1681 = -10000.0f;
                      }
                    } else {
                      _1676 = _1428;
                      _1677 = _1429;
                      _1678 = _1430;
                      _1679 = _1431;
                      _1680 = _1530;
                      _1681 = float((int)(_1433));
                    }
                  }
                }
                break;
              }
              if (__loop_jump_target == 1425) {
                __loop_jump_target = -1;
                continue;
              }
              if (__loop_jump_target != -1) {
                break;
              }
              break;
            }
          } else {
            _1676 = 0.0f;
            _1677 = _1401;
            _1678 = _1400;
            _1679 = _1399;
            _1680 = 0.0f;
            _1681 = -10000.0f;
          }
          _1682 = int(_1681);
          if ((uint)_1682 < (uint)8) {
            _1685 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 0.5f;
            _1689 = _1679 - (_1685 * _218);
            _1690 = _1678 - (_1685 * _219);
            _1691 = _1677 - (_1685 * _220);
            if ((int)_1682 < (int)6) {
              _1698 = 0;
              while(true) {
                _1700 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1698 + 20))];
                _1728 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1698 + 36))];
                // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
                // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
                float3 _rndx_surfel_jitter_1738 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _1689) * _1700.w) + _1728.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _1690) * _1700.w) + _1728.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _1691) * _1700.w) + _1728.z), float2(_85, _86), _192, _frameNumber.x);
                _1738 = int(floor(_rndx_surfel_jitter_1738.x));
                _1739 = int(floor(_rndx_surfel_jitter_1738.y));
                _1740 = int(floor(_rndx_surfel_jitter_1738.z));
                // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
                if (((((int)_1738 >= (int)int(_1700.x + -63.0f)) && ((int)_1738 < (int)int(_1700.x + 63.0f))) && (((int)_1739 >= (int)int(_1700.y + -31.0f)) && ((int)_1739 < (int)int(_1700.y + 31.0f)))) && (((int)_1740 >= (int)int(_1700.z + -63.0f)) && ((int)_1740 < (int)int(_1700.z + 63.0f)))) {
                  _1761 = (_1738 & 127);
                  _1762 = (_1739 & 63);
                  _1763 = (_1740 & 127);
                  _1764 = _1698;
                } else {
                  _1753 = _1698 + 1;
                  if ((uint)_1753 < (uint)8) {
                    _1698 = _1753;
                    continue;
                  } else {
                    _1761 = -10000;
                    _1762 = -10000;
                    _1763 = -10000;
                    _1764 = -10000;
                  }
                }
                if (!((uint)_1764 > (uint)5)) {
                  _1777 = (((((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1761, _1762, ((int)(((uint)(((int)(_1764 * 130)) | 1)) + _1763)), 0)))).x) & 4194303) == 0);
                  [branch]
                  if (!_1777) {
                    _1780 = _1761;
                    _1781 = _1762;
                    _1782 = _1763;
                    _1783 = _1764;
                  } else {
                    _1780 = -10000;
                    _1781 = -10000;
                    _1782 = -10000;
                    _1783 = -10000;
                  }
                  _1784 = _1685 * float((int)((int)(1 << (_1764 & 31))));
                  _1789 = 0;
                  while(true) {
                    _1791 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1789 + 20))];
                    _1819 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1789 + 36))];
                    // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
                    // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
                    float3 _rndx_surfel_jitter_1829 = RenoDXSurfelVoxelJitter(float3((((_1689 - _1784) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x) * _1791.w) + _1819.x, (((_1690 - _1784) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y) * _1791.w) + _1819.y, (((_1691 - _1784) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z) * _1791.w) + _1819.z), float2(_85, _86), _192, _frameNumber.x);
                    _1829 = int(floor(_rndx_surfel_jitter_1829.x));
                    _1830 = int(floor(_rndx_surfel_jitter_1829.y));
                    _1831 = int(floor(_rndx_surfel_jitter_1829.z));
                    // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
                    if (((((int)_1829 >= (int)int(_1791.x + -63.0f)) && ((int)_1829 < (int)int(_1791.x + 63.0f))) && (((int)_1830 >= (int)int(_1791.y + -31.0f)) && ((int)_1830 < (int)int(_1791.y + 31.0f)))) && (((int)_1831 >= (int)int(_1791.z + -63.0f)) && ((int)_1831 < (int)int(_1791.z + 63.0f)))) {
                      _1852 = (_1829 & 127);
                      _1853 = (_1830 & 63);
                      _1854 = (_1831 & 127);
                      _1855 = _1789;
                    } else {
                      _1844 = _1789 + 1;
                      if ((uint)_1844 < (uint)8) {
                        _1789 = _1844;
                        continue;
                      } else {
                        _1852 = -10000;
                        _1853 = -10000;
                        _1854 = -10000;
                        _1855 = -10000;
                      }
                    }
                    if (!((uint)_1855 > (uint)5)) {
                      if (_1777) {
                        _1860 = 0;
                        _1861 = _1783;
                        _1862 = _1782;
                        _1863 = _1781;
                        _1864 = _1780;
                        while(true) {
                          _1873 = 0;
                          _1874 = _1861;
                          _1875 = _1862;
                          _1876 = _1863;
                          _1877 = _1864;
                          while(true) {
                            _1880 = _1860 + _1854;
                            _1881 = _1880 + ((uint)(((int)(_1855 * 130)) | 1));
                            _1888 = _1873 + _1853;
                            if (!(((uint)_1888 > (uint)63) || ((uint)(_1852 | _1880) > (uint)127))) {
                              _1897 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1852, _1888, _1881, 0)))).x) & 4194303;
                              _1900 = (_1897 != 0);
                              _1901 = _1897;
                              _1902 = _1855;
                              _1903 = _1880;
                              _1904 = _1888;
                              _1905 = _1852;
                            } else {
                              _1900 = false;
                              _1901 = 0;
                              _1902 = 0;
                              _1903 = 0;
                              _1904 = 0;
                              _1905 = 0;
                            }
                            if (!_1900) {
                              _1907 = _1852 + 1;
                              _1908 = _1873 + _1853;
                              if (!(((uint)_1908 > (uint)63) || ((uint)(_1907 | _1880) > (uint)127))) {
                                _6013 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1907, _1908, _1881, 0)))).x) & 4194303;
                                _6016 = (_6013 != 0);
                                _6017 = _6013;
                                _6018 = _1855;
                                _6019 = _1880;
                                _6020 = _1908;
                                _6021 = _1907;
                              } else {
                                _6016 = false;
                                _6017 = 0;
                                _6018 = 0;
                                _6019 = 0;
                                _6020 = 0;
                                _6021 = 0;
                              }
                              if (!_6016) {
                                _1914 = _1877;
                                _1915 = _1876;
                                _1916 = _1875;
                                _1917 = _1874;
                                _1918 = 0;
                              } else {
                                _1914 = _6021;
                                _1915 = _6020;
                                _1916 = _6019;
                                _1917 = _6018;
                                _1918 = _6017;
                              }
                            } else {
                              _1914 = _1905;
                              _1915 = _1904;
                              _1916 = _1903;
                              _1917 = _1902;
                              _1918 = _1901;
                            }
                            while(true) {
                              _1919 = _1873 + 1;
                              if (((int)_1919 < (int)2) && (_1918 == 0)) {
                                _1873 = _1919;
                                _1874 = _1917;
                                _1875 = _1916;
                                _1876 = _1915;
                                _1877 = _1914;
                                __loop_jump_target = 1872;
                                break;
                              }
                              while(true) {
                                _1883 = _1860 + 1;
                                if (((int)_1883 < (int)2) && (_1918 == 0)) {
                                  _1860 = _1883;
                                  _1861 = _1917;
                                  _1862 = _1916;
                                  _1863 = _1915;
                                  _1864 = _1914;
                                  __loop_jump_target = 1859;
                                  break;
                                }
                                while(true) {
                                  _1867 = _1917;
                                  _1868 = _1916;
                                  _1869 = _1915;
                                  _1870 = _1914;
                                  break;
                                }
                                break;
                              }
                              if (__loop_jump_target != -1) {
                                break;
                              }
                              break;
                            }
                            if (__loop_jump_target == 1872) {
                              __loop_jump_target = -1;
                              continue;
                            }
                            if (__loop_jump_target != -1) {
                              break;
                            }
                            break;
                          }
                          if (__loop_jump_target == 1859) {
                            __loop_jump_target = -1;
                            continue;
                          }
                          if (__loop_jump_target != -1) {
                            break;
                          }
                          break;
                        }
                      } else {
                        _1867 = _1783;
                        _1868 = _1782;
                        _1869 = _1781;
                        _1870 = _1780;
                      }
                      if ((uint)_1867 < (uint)6) {
                        _1924 = _1867 * 130;
                        _1930 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1870, _1869, ((int)(((uint)(_1924 | 1)) + _1868)), 0)))).x) & 4194303;
                        [branch]
                        if (!(_1930 == 0)) {
                          _1934 = 1 << (_1867 & 31);
                          _1936 = float((int)(_1934)) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                          _1938 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((uint)(_1867 + 20u))];
                          _1973 = -0.0f - _218;
                          _1974 = -0.0f - _219;
                          _1975 = -0.0f - _220;
                          _1977 = 0.0f;
                          _1978 = 0.0f;
                          _1979 = 0.0f;
                          _1980 = 0.0f;
                          _1981 = 0;
                          while(true) {
                            _1983 = (_1930 + -1) + _1981;
                            _1986 = __3__37__0__0__g_surfelDataBuffer[_1983]._baseColor;
                            _1988 = __3__37__0__0__g_surfelDataBuffer[_1983]._normal;
                            _1991 = __3__37__0__0__g_surfelDataBuffer[_1983]._radius;
                            if (!(_1986 == 0)) {
                              _1994 = __3__37__0__0__g_surfelDataBuffer[_1983]._radiance.z;
                              _1995 = __3__37__0__0__g_surfelDataBuffer[_1983]._radiance.y;
                              _1996 = __3__37__0__0__g_surfelDataBuffer[_1983]._radiance.x;
                              _2002 = (float)((uint)((uint)(_1986 & 255)));
                              _2003 = (float)((uint)((uint)(((uint)(_1986) >> 8) & 255)));
                              _2004 = (float)((uint)((uint)(((uint)(_1986) >> 16) & 255)));
                              _2029 = select(((_2002 * 0.003921568859368563f) < 0.040449999272823334f), (_2002 * 0.0003035269910469651f), exp2(log2((_2002 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
                              _2030 = select(((_2003 * 0.003921568859368563f) < 0.040449999272823334f), (_2003 * 0.0003035269910469651f), exp2(log2((_2003 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
                              _2031 = select(((_2004 * 0.003921568859368563f) < 0.040449999272823334f), (_2004 * 0.0003035269910469651f), exp2(log2((_2004 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
                              _2043 = (((float)((uint)((uint)(_1988 & 255)))) * 0.007874015718698502f) + -1.0f;
                              _2044 = (((float)((uint)((uint)(((uint)(_1988) >> 8) & 255)))) * 0.007874015718698502f) + -1.0f;
                              _2045 = (((float)((uint)((uint)(((uint)(_1988) >> 16) & 255)))) * 0.007874015718698502f) + -1.0f;
                              _2047 = rsqrt(dot(float3(_2043, _2044, _2045), float3(_2043, _2044, _2045)));  // [sem: invLength]
                              _2052 = ((_1988 & 16777215) == 0);
                              _2056 = float(_1996);
                              _2057 = float(_1995);
                              _2058 = float(_1994);
                              _2062 = (_1936 * 0.0019607844296842813f) * ((float)((uint16_t)((uint)(_1991 & 255))));
                              _2078 = (((((float)((uint)((uint)((uint)(_1986) >> 24)))) * 0.003937007859349251f) + -0.5f) * _1936) + ((((_1938.x + -63.5f) + float((int)(((int)((_1870 + 64u) - (uint)(int(_1938.x)))) & 127))) * _1936) - _viewPos.x);
                              _2079 = (((((float)((uint)((uint)((uint)(_1988) >> 24)))) * 0.003937007859349251f) + -0.5f) * _1936) + ((((_1938.y + -31.5f) + float((int)(((int)((_1869 + 32u) - (uint)(int(_1938.y)))) & 63))) * _1936) - _viewPos.y);
                              _2080 = (((((float)((uint16_t)((uint)((uint16_t)(_1991) >> 8)))) * 0.003937007859349251f) + -0.5f) * _1936) + ((((_1938.z + -63.5f) + float((int)(((int)((_1868 + 64u) - (uint)(int(_1938.z)))) & 127))) * _1936) - _viewPos.z);
                              _2100 = ((-0.0f - _1323) - (_1676 * _218)) + _2078;
                              _2103 = ((-0.0f - _1324) - (_1676 * _219)) + _2079;
                              _2106 = ((-0.0f - _1325) - (_1676 * _220)) + _2080;
                              _2107 = dot(float3(_2100, _2103, _2106), float3(_1973, _1974, _1975));
                              _2111 = _2100 - (_2107 * _1973);
                              _2112 = _2103 - (_2107 * _1974);
                              _2113 = _2106 - (_2107 * _1975);
                              _2139 = 1.0f / ((float)((uint)_1934));
                              _2143 = frac(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _2080) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z) * _2139);
                              _2168 = select(((int)_1867 > (int)5), 1.0f, ((saturate((saturate(dot(float3(_1973, _1974, _1975), float3(select(_2052, _1973, (_2047 * _2043)), select(_2052, _1974, (_2047 * _2044)), select(_2052, _1975, (_2047 * _2045))))) + -0.03125f) * 1.0322580337524414f) * ((float)((bool)(uint)(dot(float3(_2111, _2112, _2113), float3(_2111, _2112, _2113)) < ((_2062 * _2062) * 16.0f))))) * ((float)((bool)(uint)(((__3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _2078) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _2139), (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _2079) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y) * _2139), (((((float)((uint)_1924)) + 1.0f) + ((select((_2143 < 0.0f), 1.0f, 0.0f) + _2143) * 128.0f)) * 0.000961538462433964f)), 0.0f)).x) > ((_1936 * 0.25f) * (saturate((dot(float3(_2056, _2057, _2058), float3(0.21267099678516388f, 0.7151600122451782f, 0.0721689984202385f)) * 9.999999747378752e-05f) / _exposure3.w) + 1.0f)))))));
                              _2175 = (((((_2030 * 0.3395099937915802f) + (_2029 * 0.6131200194358826f)) + (_2031 * 0.047370001673698425f)) * _2056) * _2168) + _1977;
                              _2176 = (((((_2030 * 0.9163600206375122f) + (_2029 * 0.07020000368356705f)) + (_2031 * 0.013450000435113907f)) * _2057) * _2168) + _1978;
                              _2177 = (((((_2030 * 0.10958000272512436f) + (_2029 * 0.02061999961733818f)) + (_2031 * 0.8697999715805054f)) * _2058) * _2168) + _1979;
                              _2178 = _2168 + _1980;
                              _2179 = _1981 + 1;
                              if ((uint)_2179 < (uint)4) {
                                _1977 = _2175;
                                _1978 = _2176;
                                _1979 = _2177;
                                _1980 = _2178;
                                _1981 = _2179;
                                continue;
                              } else {
                                _2182 = _2175;
                                _2183 = _2176;
                                _2184 = _2177;
                                _2185 = _2178;
                              }
                            } else {
                              _2182 = _1977;
                              _2183 = _1978;
                              _2184 = _1979;
                              _2185 = _1980;
                            }
                            if (_2185 > 0.0f) {
                              _2188 = 1.0f / _2185;
                              _2202 = 1.0f;
                              _2203 = (-0.0f - min(0.0f, (-0.0f - (_2182 * _2188))));
                              _2204 = (-0.0f - min(0.0f, (-0.0f - (_2183 * _2188))));
                              _2205 = (-0.0f - min(0.0f, (-0.0f - (_2184 * _2188))));
                            } else {
                              _2202 = 0.0f;
                              _2203 = _2182;
                              _2204 = _2183;
                              _2205 = _2184;
                            }
                            break;
                          }
                        } else {
                          _2202 = 0.0f;
                          _2203 = 0.0f;
                          _2204 = 0.0f;
                          _2205 = 0.0f;
                        }
                      } else {
                        _2202 = 0.0f;
                        _2203 = 0.0f;
                        _2204 = 0.0f;
                        _2205 = 0.0f;
                      }
                    } else {
                      _2202 = 1.0f;
                      _2203 = 0.0f;
                      _2204 = 0.0f;
                      _2205 = 0.0f;
                    }
                    break;
                  }
                } else {
                  _2202 = 1.0f;
                  _2203 = 0.0f;
                  _2204 = 0.0f;
                  _2205 = 0.0f;
                }
                break;
              }
            } else {
              _2202 = 1.0f;
              _2203 = 0.0f;
              _2204 = 0.0f;
              _2205 = 0.0f;
            }
            _2213 = saturate((_1676 * 0.25f) / (float((int)((int)(1 << (_1389 & 31)))) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x)) * _2202;
            _2223 = -0.0f - min(0.0f, (-0.0f - (_2203 * _2213)));
            _2224 = -0.0f - min(0.0f, (-0.0f - (_2204 * _2213)));
            _2225 = -0.0f - min(0.0f, (-0.0f - (_2205 * _2213)));
            _2227 = select(((int)_1682 > (int)-1), 1.0f, 0.0f);
            _2228 = max(9.999999974752427e-07f, _1676);
            if (_2228 > 0.0f) {
              _2233 = (_2228 + _1322);
              _2234 = _2223;
              _2235 = _2224;
              _2236 = _2225;
              _2237 = _2227;
            } else {
              _2233 = _2228;
              _2234 = _2223;
              _2235 = _2224;
              _2236 = _2225;
              _2237 = _2227;
            }
          } else {
            _2233 = 0.0f;
            _2234 = 0.0f;
            _2235 = 0.0f;
            _2236 = 0.0f;
            _2237 = _1680;
          }
        } else {
          _2233 = 0.0f;
          _2234 = 0.0f;
          _2235 = 0.0f;
          _2236 = 0.0f;
          _2237 = 0.0f;
        }
        break;
      }
    } else {
      _2233 = _991;
      _2234 = _987;
      _2235 = _988;
      _2236 = _989;
      _2237 = _990;
    }
    _2240 = saturate(5.000000476837158f - (_182 * 0.01953125186264515f));  // [sem: expr_sat]
    _2241 = (_1191 != 0);
    if ((_1190 > 0.0f) && ((_1182 > 0.0f) && _2241)) {
      if (!(_1182 < _2233)) {
        _2251 = (_2233 <= 0.0f);
      } else {
        _2251 = true;
      }
    } else {
      _2251 = false;
    }
    _2255 = saturate(max(select(_2251, 1.0f, 0.0f), (1.0f - _2240)));  // [sem: expr_sat]
    _2256 = _2255 * _1190;
    _2259 = min(_2240, saturate(1.0f - _2256));
    if (!(_2237 == 0.0f)) {
      _2274 = ((_2259 * _2234) + (_2255 * _1187));
      _2275 = ((_2259 * _2235) + (_2255 * _1188));
      _2276 = ((_2259 * _2236) + (_2255 * _1189));
      _2277 = ((_2259 * _2237) + _2256);
    } else {
      _2274 = _1187;
      _2275 = _1188;
      _2276 = _1189;
      _2277 = _1190;
    }
    _2280 = 1.0f / max(9.999999974752427e-07f, (_2259 + _2255));
    _2284 = _2280 * ((_2259 * _2233) + (_2255 * _1182));
    _2286 = _2280 * _2255;
    _2290 = (_2284 * _218) + _177;
    _2291 = (_2284 * _219) + _178;
    _2292 = (_2284 * _220) + _179;
    [branch]
    if (!(_2284 <= 0.0f)) {
      _2322 = mad((_viewProjRelative[2].w), _2292, mad((_viewProjRelative[1].w), _2291, ((_viewProjRelative[0].w) * _2290))) + (_viewProjRelative[3].w);
      _2327 = (((mad((_viewProjRelative[2].x), _2292, mad((_viewProjRelative[1].x), _2291, ((_viewProjRelative[0].x) * _2290))) + (_viewProjRelative[3].x)) / _2322) * 0.5f) + 0.5f;
      _2328 = 0.5f - (((mad((_viewProjRelative[2].y), _2292, mad((_viewProjRelative[1].y), _2291, ((_viewProjRelative[0].y) * _2290))) + (_viewProjRelative[3].y)) / _2322) * 0.5f);
      if (((_2327 >= 0.0f) && (_2327 <= 1.0f)) && ((_2328 >= 0.0f) && (_2328 <= 1.0f))) {
        if (_2241 && (((mad((_viewProjRelative[2].z), _2292, mad((_viewProjRelative[1].z), _2291, ((_viewProjRelative[0].z) * _2290))) + (_viewProjRelative[3].z)) / _2322) > 0.0f)) {
          if (_renderParams.x == 0.0f) {
  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod]
            half4 _2355 = __3__36__0__0__g_sceneShadowColor.SampleLevel(__3__40__0__0__g_sampler, float2(_2327, _2328), 0.0f);
            _2363 = float(_2355.x);  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2364 = float(_2355.y);  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2365 = float(_2355.z);  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          } else {
            _2363 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2364 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2365 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          }
        } else {
          _2363 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          _2364 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          _2365 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
        }
      } else {
        _2363 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
        _2364 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
        _2365 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
      }
      _2372 = _viewPos.x + _2290;
      _2373 = _viewPos.y + _2291;
      _2374 = _viewPos.z + _2292;
      _2379 = _2372 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].x);
      _2380 = _2373 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].y);
      _2381 = _2374 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].z);
      _2401 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].x), _2381, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].x), _2380, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].x) * _2379))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][3].x);
      _2405 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].y), _2381, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].y), _2380, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].y) * _2379))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][3].y);
      _2412 = 2.0f / __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y;
      _2413 = 1.0f - _2412;
      _2420 = (((!(_2401 <= _2413)) || (!(_2401 >= _2412))) || (!(_2405 <= _2413))) || (!(_2405 >= _2412));
      _2429 = _2372 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].x);
      _2430 = _2373 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].y);
      _2431 = _2374 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].z);
      _2451 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].x), _2431, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].x), _2430, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].x) * _2429))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][3].x);
      _2455 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].y), _2431, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].y), _2430, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].y) * _2429))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][3].y);
      _2466 = (((!(_2451 <= _2413)) || (!(_2451 >= _2412))) || (!(_2455 <= _2413))) || (!(_2455 >= _2412));
      _2467 = select(_2466, select(_2420, 0.0f, _2401), _2451);
      _2468 = select(_2466, select(_2420, 0.0f, _2405), _2455);
      _2469 = select(_2466, select(_2420, 0.0f, (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].z), _2381, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].z), _2380, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].z) * _2379))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][3].z))), (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].z), _2431, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].z), _2430, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].z) * _2429))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][3].z)));
      _2470 = select(_2466, select(_2420, -1, 1), 0);
      [branch]
      if (!(_2470 == -1)) {
        _2476 = (_2467 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x) + -0.5f;
        _2477 = (_2468 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y) + -0.5f;
        _2480 = int(floor(_2476));
        _2481 = int(floor(_2477));
        _2484 = _2480 + 1u;
        _2485 = _2481 + 1u;
        if (!(((uint)_2480 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x))) || ((uint)_2481 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y))))) {
  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod]
          half4 _2502 = __3__36__0__0__g_shadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_2467, _2468, ((float)((uint)_2470))), 0.0f);
          _2508 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2480, _2481, _2470, 0)))).x);
          _2509 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2484, _2481, _2470, 0)))).x);
          _2510 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2480, _2485, _2470, 0)))).x);
          _2511 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2484, _2485, _2470, 0)))).x);
          _2512 = (half)(_2502.x);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2513 = (half)(_2502.y);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2514 = (half)(_2502.z);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2515 = (half)(_2502.w);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
        } else {
          _2508 = 0.0f;
          _2509 = 0.0f;
          _2510 = 0.0f;
          _2511 = 0.0f;
          _2512 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2513 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2514 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2515 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
        }
        _2516 = _2470 << 2;
        _2518 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_2516 + 103))];
        _2524 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_2516 + 104))];
        _2530 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_2516 + 105))];
        _2536 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_2516 + 106))];
        _2541 = _2518.x * _2467;
        _2545 = _2518.y * _2467;
        _2549 = _2518.z * _2467;
        _2553 = _2518.w * _2467;
        _2556 = mad(_2530.w, _2508, mad(_2524.w, _2468, _2553)) + _2536.w;
        _2557 = (mad(_2530.x, _2508, mad(_2524.x, _2468, _2541)) + _2536.x) / _2556;
        _2558 = (mad(_2530.y, _2508, mad(_2524.y, _2468, _2545)) + _2536.y) / _2556;
        _2559 = (mad(_2530.z, _2508, mad(_2524.z, _2468, _2549)) + _2536.z) / _2556;
        _2562 = _2467 + (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.z * 4.0f);
        _2578 = mad(_2530.w, _2509, mad(_2524.w, _2468, (_2518.w * _2562))) + _2536.w;
        _2584 = _2468 - (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.w * 2.0f);
        _2596 = mad(_2530.w, _2510, mad(_2524.w, _2584, _2553)) + _2536.w;
        _2600 = ((mad(_2530.x, _2510, mad(_2524.x, _2584, _2541)) + _2536.x) / _2596) - _2557;
        _2601 = ((mad(_2530.y, _2510, mad(_2524.y, _2584, _2545)) + _2536.y) / _2596) - _2558;
        _2602 = ((mad(_2530.z, _2510, mad(_2524.z, _2584, _2549)) + _2536.z) / _2596) - _2559;
        _2603 = ((mad(_2530.x, _2509, mad(_2524.x, _2468, (_2518.x * _2562))) + _2536.x) / _2578) - _2557;
        _2604 = ((mad(_2530.y, _2509, mad(_2524.y, _2468, (_2518.y * _2562))) + _2536.y) / _2578) - _2558;
        _2605 = ((mad(_2530.z, _2509, mad(_2524.z, _2468, (_2518.z * _2562))) + _2536.z) / _2578) - _2559;
        _2608 = (_2602 * _2604) - (_2601 * _2605);
        _2611 = (_2600 * _2605) - (_2602 * _2603);
        _2614 = (_2601 * _2603) - (_2600 * _2604);
        _2616 = rsqrt(dot(float3(_2608, _2611, _2614), float3(_2608, _2611, _2614)));  // [sem: invLength]
        _2617 = _2608 * _2616;
        _2618 = _2611 * _2616;
        _2619 = _2614 * _2616;
        _2620 = frac(_2476);
        _2625 = (saturate(dot(float3(_218, _219, _220), float3(_2617, _2618, _2619))) * 0.0020000000949949026f) + _2469;
        _2638 = saturate(exp2((_2508 - _2625) * 1442695.0f));  // [sem: expr_sat]
        _2640 = saturate(exp2((_2510 - _2625) * 1442695.0f));  // [sem: expr_sat]
        _2646 = ((saturate(exp2((_2509 - _2625) * 1442695.0f)) - _2638) * _2620) + _2638;
        _2653 = _2617;
        _2654 = _2618;
        _2655 = _2619;
  // [sem: expr_sat]
        _2656 = saturate((((_2640 - _2646) + ((saturate(exp2((_2511 - _2625) * 1442695.0f)) - _2640) * _2620)) * frac(_2477)) + _2646);
        _2657 = _2508;
        _2658 = _2509;
        _2659 = _2510;
        _2660 = _2511;
        _2661 = _2512;
        _2662 = _2513;
        _2663 = _2514;
        _2664 = _2515;
      } else {
        _2653 = 0.0f;
        _2654 = 0.0f;
        _2655 = 0.0f;
        _2656 = 0.0f;  // [sem: expr_sat]
        _2657 = 0.0f;
        _2658 = 0.0f;
        _2659 = 0.0f;
        _2660 = 0.0f;
        _2661 = 0.0h;
        _2662 = 0.0h;
        _2663 = 0.0h;
        _2664 = 0.0h;
      }
      _2684 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].x), _2292, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].x), _2291, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].x) * _2290))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][3].x);
      _2688 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].y), _2292, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].y), _2291, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].y) * _2290))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][3].y);
      _2692 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].z), _2292, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].z), _2291, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].z) * _2290))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][3].z);
      _2695 = 4.0f / __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y;
      _2696 = 1.0f - _2695;
      if (!(((!(_2684 <= _2696)) || (!(_2684 >= _2695))) || (!(_2688 <= _2696)))) {
        _2707 = (_2692 >= -1.0f) && ((_2692 <= 1.0f) && (_2688 >= _2695));
        _2715 = select(_2707, 9.999999747378752e-06f, -9.999999747378752e-05f);
        _2716 = select(_2707, _2684, _2467);
        _2717 = select(_2707, _2688, _2468);
        _2718 = select(_2707, _2692, _2469);
        _2719 = select(_2707, 1, _2470);
        _2720 = ((int)(uint)(_2707));
      } else {
        _2715 = -9.999999747378752e-05f;
        _2716 = _2467;
        _2717 = _2468;
        _2718 = _2469;
        _2719 = _2470;
        _2720 = 0;
      }
      _2740 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].x), _2292, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].x), _2291, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].x) * _2290))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][3].x);
      _2744 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].y), _2292, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].y), _2291, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].y) * _2290))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][3].y);
      _2748 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].z), _2292, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].z), _2291, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].z) * _2290))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][3].z);
      if (!(((!(_2740 <= _2696)) || (!(_2740 >= _2695))) || (!(_2744 <= _2696)))) {
        _2759 = (_2748 >= -1.0f) && ((_2744 >= _2695) && (_2748 <= 1.0f));
        _2767 = select(_2759, 9.999999747378752e-06f, _2715);
        _2768 = select(_2759, _2740, _2716);
        _2769 = select(_2759, _2744, _2717);
        _2770 = select(_2759, _2748, _2718);
        _2771 = select(_2759, 0, _2719);
        _2772 = select(_2759, 1, _2720);
      } else {
        _2767 = _2715;
        _2768 = _2716;
        _2769 = _2717;
        _2770 = _2718;
        _2771 = _2719;
        _2772 = _2720;
      }
      [branch]
      if (!(_2772 == 0)) {
        _2782 = int(floor((_2768 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f));
        _2783 = int(floor((_2769 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f));
        _2786 = _2782 + 1u;
        _2787 = _2783 + 1u;
        if (!(((uint)_2782 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x))) || ((uint)_2783 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y))))) {
          _2802 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2782, _2783, _2771, 0)))).x);
          _2803 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2786, _2783, _2771, 0)))).x);
          _2804 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2782, _2787, _2771, 0)))).x);
          _2805 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2786, _2787, _2771, 0)))).x);
        } else {
          _2802 = _2657;
          _2803 = _2658;
          _2804 = _2659;
          _2805 = _2660;
        }
        _2806 = _2771 << 2;
        _2808 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)(_2806 + 58u))];
        _2814 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)(_2806 + 59u))];
        _2820 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)(_2806 + 60u))];
        _2826 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)(_2806 + 61u))];
        _2831 = _2808.x * _2768;
        _2835 = _2808.y * _2768;
        _2839 = _2808.z * _2768;
        _2843 = _2808.w * _2768;
        _2846 = mad(_2820.w, _2802, mad(_2814.w, _2769, _2843)) + _2826.w;
        _2847 = (mad(_2820.x, _2802, mad(_2814.x, _2769, _2831)) + _2826.x) / _2846;
        _2848 = (mad(_2820.y, _2802, mad(_2814.y, _2769, _2835)) + _2826.y) / _2846;
        _2849 = (mad(_2820.z, _2802, mad(_2814.z, _2769, _2839)) + _2826.z) / _2846;
        _2852 = _2768 + (__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.z * 8.0f);
        _2868 = mad(_2820.w, _2803, mad(_2814.w, _2769, (_2808.w * _2852))) + _2826.w;
        _2874 = _2769 - (__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.w * 4.0f);
        _2886 = mad(_2820.w, _2804, mad(_2814.w, _2874, _2843)) + _2826.w;
        _2890 = ((mad(_2820.x, _2804, mad(_2814.x, _2874, _2831)) + _2826.x) / _2886) - _2847;
        _2891 = ((mad(_2820.y, _2804, mad(_2814.y, _2874, _2835)) + _2826.y) / _2886) - _2848;
        _2892 = ((mad(_2820.z, _2804, mad(_2814.z, _2874, _2839)) + _2826.z) / _2886) - _2849;
        _2893 = ((mad(_2820.x, _2803, mad(_2814.x, _2769, (_2808.x * _2852))) + _2826.x) / _2868) - _2847;
        _2894 = ((mad(_2820.y, _2803, mad(_2814.y, _2769, (_2808.y * _2852))) + _2826.y) / _2868) - _2848;
        _2895 = ((mad(_2820.z, _2803, mad(_2814.z, _2769, (_2808.z * _2852))) + _2826.z) / _2868) - _2849;
        _2898 = (_2892 * _2894) - (_2891 * _2895);
        _2901 = (_2890 * _2895) - (_2892 * _2893);
        _2904 = (_2891 * _2893) - (_2890 * _2894);
        _2906 = rsqrt(dot(float3(_2898, _2901, _2904), float3(_2898, _2901, _2904)));  // [sem: invLength]
        if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
          _2924 = _sunDirection.x;
          _2925 = _sunDirection.y;
          _2926 = _sunDirection.z;
        } else {
          _2924 = _moonDirection.x;
          _2925 = _moonDirection.y;
          _2926 = _moonDirection.z;
        }
        _2932 = (_2767 - (saturate(-0.0f - dot(float3(_2924, _2925, _2926), float3(_218, _219, _220))) * 9.999999747378752e-05f)) + _2770;
        _2945 = (_2898 * _2906);
        _2946 = (_2901 * _2906);
        _2947 = (_2904 * _2906);
        _2948 = min(((float)((bool)(uint)(_2802 > _2932))), min(min(((float)((bool)(uint)(_2803 > _2932))), ((float)((bool)(uint)(_2804 > _2932)))), ((float)((bool)(uint)(_2805 > _2932)))));
      } else {
        _2945 = _2653;
        _2946 = _2654;
        _2947 = _2655;
        _2948 = _2656;
      }
      _2953 = _viewPos.x - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.x;
      _2954 = _viewPos.y - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.y;
      _2955 = _viewPos.z - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.z;
      _2956 = _2953 + _2290;
      _2957 = _2954 + _2291;
      _2958 = _2955 + _2292;
      _2978 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].x), _2958, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].x), _2957, (_2956 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[3].x);
      _2982 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].y), _2958, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].y), _2957, (_2956 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].y)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[3].y);
      _2986 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].z), _2958, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].z), _2957, (_2956 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].z)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[3].z);
      if (saturate(_2978) == _2978) {
        if ((_2986 >= 9.999999747378752e-05f) && ((_2986 <= 1.0f) && (saturate(_2982) == _2982))) {
          _3001 = frac((_2978 * 1024.0f) + -0.5f);
          _3005 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_2978, _2982));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
          _3010 = _2986 + -0.004999999888241291f;
          _3015 = select((_3005.w > _3010), 1.0f, 0.0f);
          _3017 = select((_3005.x > _3010), 1.0f, 0.0f);
          _3024 = ((select((_3005.z > _3010), 1.0f, 0.0f) - _3015) * _3001) + _3015;
  // [sem: expr_sat]
          _3030 = saturate((((((select((_3005.y > _3010), 1.0f, 0.0f) - _3017) * _3001) + _3017) - _3024) * frac((_2982 * 1024.0f) + -0.5f)) + _3024);
        } else {
          _3030 = 1.0f;  // [sem: expr_sat]
        }
      } else {
        _3030 = 1.0f;  // [sem: expr_sat]
      }
      _3031 = min(_2948, _3030);
      _3032 = saturate(_2661);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived_derived_sat]
      _3033 = saturate(_2662);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived_derived_sat]
      _3034 = saturate(_2663);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived_derived_sat]
      _3048 = ((half)(((half)(_3033 * 0.3395996h)) + ((half)(_3032 * 0.61328125h)))) + ((half)(_3034 * 0.04736328h));
      _3049 = ((half)(((half)(_3033 * 0.9165039h)) + ((half)(_3032 * 0.07019043h)))) + ((half)(_3034 * 0.013450623h));
      _3050 = ((half)(((half)(_3033 * 0.109558105h)) + ((half)(_3032 * 0.020614624h)))) + ((half)(_3034 * 0.8696289h));
      _3053 = (_sunDirection.y > 0.0f);
      if ((_3053) || ((!(_3053)) && (_sunDirection.y > _moonDirection.y))) {
        _3065 = _sunDirection.x;
        _3066 = _sunDirection.y;
        _3067 = _sunDirection.z;
      } else {
        _3065 = _moonDirection.x;
        _3066 = _moonDirection.y;
        _3067 = _moonDirection.z;
      }
      if ((_3053) || ((!(_3053)) && (_sunDirection.y > _moonDirection.y))) {
        _3087 = _precomputedAmbient7.y;
      } else {
        _3087 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
      }
      _3090 = _2373 + _earthRadius;
      _3096 = sqrt(((_2374 * _2374) + (_2372 * _2372)) + (_3090 * _3090));
      _3101 = dot(float3((_2372 / _3096), (_3090 / _3096), (_2374 / _3096)), float3(_3065, _3066, _3067));
      _3105 = _atmosphereThickness + -16.0f;
      _3107 = min(max(((_3096 - _earthRadius) / _atmosphereThickness), 16.0f), _3105);
      _3109 = _atmosphereThickness + -32.0f;
      _3115 = max(_3107, 0.0f);
      _3116 = _earthRadius * 2.0f;
      _3122 = (-0.0f - sqrt((_3115 + _3116) * _3115)) / (_3115 + _earthRadius);
      if (_3101 > _3122) {
        _3145 = ((exp2(log2(saturate((_3101 - _3122) / (1.0f - _3122))) * 0.20000000298023224f) * 0.4921875f) + 0.50390625f);
      } else {
        _3145 = ((exp2(log2(saturate((_3122 - _3101) / (_3122 + 1.0f))) * 0.20000000298023224f) * 0.4921875f) + 0.00390625f);
      }
  // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
      _3150 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_3107 + -16.0f) / _3109)) * 0.5f) * 0.96875f) + 0.015625f), _3145), 0.0f);
      _3169 = _mieAerosolAbsorption + 1.0f;
      _3170 = _mieAerosolDensity * 1.9999999494757503e-05f;
      _3172 = (_3170 * _3150.y) * _3169;
      _3178 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.960784317134312e-07f) + (_ozoneRatio * 2.05560013455397e-06f);
      _3181 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.960784317134312e-07f) + (_ozoneRatio * 4.978800461685751e-06f);
      _3184 = (_ozoneRatio * 2.1360001767334325e-07f) + (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.960784317134312e-07f);
      _3190 = exp2(((_3178 * _3150.x) + _3172) * -1.4426950216293335f);
      _3191 = exp2(((_3181 * _3150.x) + _3172) * -1.4426950216293335f);
      _3192 = exp2(((_3184 * _3150.x) + _3172) * -1.4426950216293335f);
      _3211 = sqrt((_2290 * _2290) + (_2292 * _2292));
      _3219 = (_cloudAltitude - (max(((_3211 * _3211) + -4e+05f), 0.0f) * 9.999999974752427e-07f)) - _viewPos.y;
      _3231 = (_cloudThickness * (0.5f - (float((int)(((int)(uint)((int)(_3066 > 0.0f))) - ((int)(uint)((int)(_3066 < 0.0f))))) * 0.5f))) + _3219;
      if (_2291 < _3219) {
        _3234 = dot(float3(0.0f, 1.0f, 0.0f), float3(_3065, _3066, _3067));
        _3240 = select((abs(_3234) < 9.99999993922529e-09f), 1e+08f, ((_3231 - dot(float3(0.0f, 1.0f, 0.0f), float3(_2290, _2291, _2292))) / _3234));
        _3246 = ((_3240 * _3065) + _2290);
        _3247 = _3231;
        _3248 = ((_3240 * _3067) + _2292);
      } else {
        _3246 = _2290;
        _3247 = _2291;
        _3248 = _2292;
      }
      _3261 = _cloudScatteringCoefficient / _distanceScale;
      _3262 = _distanceScale * -1.4426950216293335f;
      _3268 = saturate(abs(_3066) * 4.0f);  // [sem: expr_sat]
      _3270 = (_3268 * _3268) * exp2((_3262 * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_3246 * 4.999999873689376e-05f) + 0.5f), ((_3247 - _3219) / _cloudThickness), ((_3248 * 4.999999873689376e-05f) + 0.5f)), 0.0f)).x)) * _3261);
      _3277 = ((1.0f - _3270) * saturate(((_2291 - _cloudThickness) - _3219) * 0.10000000149011612f)) + _3270;
      _3278 = _3277 * (((_3191 * 0.3395099937915802f) + (_3190 * 0.6131200194358826f)) + (_3192 * 0.047370001673698425f));
      _3279 = _3277 * (((_3191 * 0.9163600206375122f) + (_3190 * 0.07020000368356705f)) + (_3192 * 0.013450000435113907f));
      _3280 = _3277 * (((_3191 * 0.10958000272512436f) + (_3190 * 0.02061999961733818f)) + (_3192 * 0.8697999715805054f));
      _3299 = float(saturate(_2664));
      if ((_986 != 0) && (!_1006)) {
        _3301 = (_1186 > 0.0f);
        _3302 = select(_3301, _1183, _2945);
        _3303 = select(_3301, _1184, _2946);
        _3304 = select(_3301, _1185, _2947);
        _3305 = select(_3301, _1186, 0.800000011920929f);
        if (_985 > 0.0f) {
          _3308 = half(_982);
          _3309 = half(_983);
          _3310 = half(_984);
          _3316 = _3305;
          _3317 = _3302;
          _3318 = _3303;
          _3319 = _3304;
          _3320 = _3308;
          _3321 = _3309;
          _3322 = _3310;
          _3323 = _985;
          _3324 = float(_3308);
          _3325 = float(_3309);
          _3326 = float(_3310);
          _3327 = dot(float3(_3302, _3303, _3304), float3(_3065, _3066, _3067));
        } else {
          _3316 = _3305;
          _3317 = _3302;
          _3318 = _3303;
          _3319 = _3304;
          _3320 = _3048;
          _3321 = _3049;
          _3322 = _3050;
          _3323 = 0.10000000149011612f;
          _3324 = 1.0f;
          _3325 = 1.0f;
          _3326 = 1.0f;
          _3327 = _3299;
        }
      } else {
        _3316 = 0.800000011920929f;
        _3317 = _2945;
        _3318 = _2946;
        _3319 = _2947;
        _3320 = _3048;
        _3321 = _3049;
        _3322 = _3050;
        _3323 = 0.10000000149011612f;
        _3324 = 1.0f;
        _3325 = 1.0f;
        _3326 = 1.0f;
        _3327 = _3299;
      }
      _3335 = float(half(saturate(_3327) * 0.31830987334251404f)) * _3031;
      _3343 = 0.699999988079071f / min(max(max(max(_3324, _3325), _3326), 0.009999999776482582f), 0.699999988079071f);
      _3354 = (((_3343 * _3325) + -0.03999999910593033f) * _3323) + 0.03999999910593033f;
      _3356 = _3065 - _218;
      _3357 = _3066 - _219;
      _3358 = _3067 - _220;
      _3360 = rsqrt(dot(float3(_3356, _3357, _3358), float3(_3356, _3357, _3358)));  // [sem: invLength]
      _3361 = _3360 * _3356;
      _3362 = _3360 * _3357;
      _3363 = _3360 * _3358;
      _3364 = -0.0f - _218;
      _3365 = -0.0f - _219;
      _3366 = -0.0f - _220;
      _3371 = saturate(max(9.999999747378752e-06f, dot(float3(_3364, _3365, _3366), float3(_3317, _3318, _3319))));  // [sem: expr_sat]
      _3373 = saturate(dot(float3(_3317, _3318, _3319), float3(_3361, _3362, _3363)));  // [sem: expr_sat]
      _3376 = saturate(1.0f - saturate(saturate(dot(float3(_3364, _3365, _3366), float3(_3361, _3362, _3363)))));  // [sem: expr_sat]
      _3377 = _3376 * _3376;
      _3379 = (_3377 * _3377) * _3376;
      _3382 = _3379 * saturate(_3354 * 50.0f);
      _3383 = 1.0f - _3379;
      _3391 = saturate(_3327 * _3031);  // [sem: expr_sat]
      _3392 = _3316 * _3316;
      _3393 = _3392 * _3392;
      _3394 = 1.0f - _3392;
      _3406 = (((_3373 * _3393) - _3373) * _3373) + 1.0f;
      _3410 = (_3393 / ((_3406 * _3406) * 3.1415927410125732f)) * (0.5f / ((((_3371 * _3394) + _3392) * _3327) + (_3371 * ((_3327 * _3394) + _3392))));
      _3421 = ((((_3278 * 0.6131200194358826f) + (_3279 * 0.3395099937915802f)) + (_3280 * 0.047370001673698425f)) * _3087) * ((max((((_3383 * ((((_3343 * _3324) + -0.03999999910593033f) * _3323) + 0.03999999910593033f)) + _3382) * _3410), 0.0f) * _3391) + (_3335 * float(_3320)));
      _3423 = ((((_3278 * 0.07020000368356705f) + (_3279 * 0.9163600206375122f)) + (_3280 * 0.013450000435113907f)) * _3087) * ((max((((_3383 * _3354) + _3382) * _3410), 0.0f) * _3391) + (_3335 * float(_3321)));
      _3425 = ((((_3278 * 0.02061999961733818f) + (_3279 * 0.10958000272512436f)) + (_3280 * 0.8697999715805054f)) * _3087) * ((max((((_3383 * ((((_3343 * _3326) + -0.03999999910593033f) * _3323) + 0.03999999910593033f)) + _3382) * _3410), 0.0f) * _3391) + (_3335 * float(_3322)));
      _3430 = dot(float3(_3421, _3423, _3425), float3(0.21267099678516388f, 0.7151600122451782f, 0.0721689984202385f));
      _3431 = min((max(0.0005000000237487257f, _exposure3.w) * 4096.0f), _3430);
      _3435 = max(9.999999717180685e-10f, _3430);
      _3436 = (_3431 * _3421) / _3435;
      _3437 = (_3431 * _3423) / _3435;
      _3438 = (_3431 * _3425) / _3435;
      if ((_114 == 33) || (_114 == 55)) {
        if ((_3053) || ((!(_3053)) && (_sunDirection.y > _moonDirection.y))) {
          _3459 = _sunDirection.x;
          _3460 = _sunDirection.y;
          _3461 = _sunDirection.z;
        } else {
          _3459 = _moonDirection.x;
          _3460 = _moonDirection.y;
          _3461 = _moonDirection.z;
        }
        _3466 = rsqrt(dot(float3(_177, _178, _179), float3(_177, _178, _179)));  // [sem: invLength]
        _3467 = _3466 * _177;
        _3468 = _3466 * _178;
        _3469 = _3466 * _179;
        _3473 = _177 - (_137 * 0.03999999910593033f);
        _3474 = _178 - (_138 * 0.03999999910593033f);
        _3475 = _179 - (_139 * 0.03999999910593033f);
        _3479 = (_viewPos.x - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].x)) + _3473;
        _3480 = (_viewPos.y - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].y)) + _3474;
        _3481 = (_viewPos.z - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].z)) + _3475;
        _3485 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].x), _3481, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].x), _3480, (_3479 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][3].x);
        _3489 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].y), _3481, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].y), _3480, (_3479 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].y)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][3].y);
        _3500 = (((!(_3485 <= _2413)) || (!(_3485 >= _2412))) || (!(_3489 <= _2413))) || (!(_3489 >= _2412));
        _3508 = (_viewPos.x - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].x)) + _3473;
        _3509 = (_viewPos.y - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].y)) + _3474;
        _3510 = (_viewPos.z - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].z)) + _3475;
        _3514 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].x), _3510, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].x), _3509, (_3508 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][3].x);
        _3518 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].y), _3510, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].y), _3509, (_3508 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].y)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][3].y);
        _3529 = (((!(_3514 <= _2413)) || (!(_3514 >= _2412))) || (!(_3518 <= _2413))) || (!(_3518 >= _2412));
        _3531 = select((_3529 && _3500), 0.0f, 0.0010000000474974513f);
        _3532 = select(_3529, select(_3500, 0.0f, _3485), _3514);
        _3533 = select(_3529, select(_3500, 0.0f, _3489), _3518);
        _3534 = select(_3529, select(_3500, 0.0f, (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].z), _3481, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].z), _3480, (_3479 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].z)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][3].z))), (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].z), _3510, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].z), _3509, (_3508 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].z)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][3].z)));
        _3535 = select(_3529, select(_3500, -1, 1), 0);
        [branch]
        if (!(_3535 == -1)) {
          _3541 = (_3532 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x) + -0.5f;
          _3542 = (_3533 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y) + -0.5f;
          _3545 = int(floor(_3541));
          _3546 = int(floor(_3542));
          _3549 = _3545 + 1u;
          _3550 = _3546 + 1u;
          if (!(((uint)_3545 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x))) || ((uint)_3546 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y))))) {
            _3565 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3545, _3546, _3535, 0)))).x);
            _3566 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3549, _3546, _3535, 0)))).x);
            _3567 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3545, _3550, _3535, 0)))).x);
            _3568 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3549, _3550, _3535, 0)))).x);
          } else {
            _3565 = 0.0f;
            _3566 = 0.0f;
            _3567 = 0.0f;
            _3568 = 0.0f;
          }
          _3569 = _3535 << 2;
          _3571 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_3569 + 103))];
          _3577 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_3569 + 104))];
          _3583 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_3569 + 105))];
          _3589 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_3569 + 106))];
          _3594 = _3571.x * _3532;
          _3598 = _3571.y * _3532;
          _3602 = _3571.z * _3532;
          _3606 = _3571.w * _3532;
          _3609 = mad(_3583.w, _3565, mad(_3577.w, _3533, _3606)) + _3589.w;
          _3610 = (mad(_3583.x, _3565, mad(_3577.x, _3533, _3594)) + _3589.x) / _3609;
          _3611 = (mad(_3583.y, _3565, mad(_3577.y, _3533, _3598)) + _3589.y) / _3609;
          _3612 = (mad(_3583.z, _3565, mad(_3577.z, _3533, _3602)) + _3589.z) / _3609;
          _3615 = _3532 + (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.z * 4.0f);
          _3631 = mad(_3583.w, _3566, mad(_3577.w, _3533, (_3571.w * _3615))) + _3589.w;
          _3637 = _3533 - (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.w * 2.0f);
          _3649 = mad(_3583.w, _3567, mad(_3577.w, _3637, _3606)) + _3589.w;
          _3653 = ((mad(_3583.x, _3567, mad(_3577.x, _3637, _3594)) + _3589.x) / _3649) - _3610;
          _3654 = ((mad(_3583.y, _3567, mad(_3577.y, _3637, _3598)) + _3589.y) / _3649) - _3611;
          _3655 = ((mad(_3583.z, _3567, mad(_3577.z, _3637, _3602)) + _3589.z) / _3649) - _3612;
          _3656 = ((mad(_3583.x, _3566, mad(_3577.x, _3533, (_3571.x * _3615))) + _3589.x) / _3631) - _3610;
          _3657 = ((mad(_3583.y, _3566, mad(_3577.y, _3533, (_3571.y * _3615))) + _3589.y) / _3631) - _3611;
          _3658 = ((mad(_3583.z, _3566, mad(_3577.z, _3533, (_3571.z * _3615))) + _3589.z) / _3631) - _3612;
          _3661 = (_3655 * _3657) - (_3654 * _3658);
          _3664 = (_3653 * _3658) - (_3655 * _3656);
          _3667 = (_3654 * _3656) - (_3653 * _3657);
          _3669 = rsqrt(dot(float3(_3661, _3664, _3667), float3(_3661, _3664, _3667)));  // [sem: invLength]
          _3673 = frac(_3541);
          _3678 = (saturate(dot(float3(_3467, _3468, _3469), float3((_3661 * _3669), (_3664 * _3669), (_3667 * _3669)))) * 0.0020000000949949026f) + _3534;
          _3691 = saturate(exp2((_3565 - _3678) * 1442695.0f));  // [sem: expr_sat]
          _3693 = saturate(exp2((_3567 - _3678) * 1442695.0f));  // [sem: expr_sat]
          _3699 = ((saturate(exp2((_3566 - _3678) * 1442695.0f)) - _3691) * _3673) + _3691;
  // [sem: expr_sat]
          _3706 = saturate((((_3693 - _3699) + ((saturate(exp2((_3568 - _3678) * 1442695.0f)) - _3693) * _3673)) * frac(_3542)) + _3699);
          _3707 = _3565;
          _3708 = _3566;
          _3709 = _3567;
          _3710 = _3568;
        } else {
          _3706 = 1.0f;  // [sem: expr_sat]
          _3707 = 0.0f;
          _3708 = 0.0f;
          _3709 = 0.0f;
          _3710 = 0.0f;
        }
        _3714 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].x), _3475, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].x), _3474, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].x) * _3473))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][3].x);
        _3718 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].y), _3475, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].y), _3474, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].y) * _3473))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][3].y);
        _3722 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].z), _3475, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].z), _3474, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].z) * _3473))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][3].z);
        if (!(((!(_3714 <= _2696)) || (!(_3714 >= _2695))) || (!(_3718 <= _2696)))) {
          _3733 = (_3722 >= -1.0f) && ((_3718 >= _2695) && (_3722 <= 1.0f));
          _3741 = select(_3733, 9.999999747378752e-06f, _3531);
          _3742 = select(_3733, _3714, _3532);
          _3743 = select(_3733, _3718, _3533);
          _3744 = select(_3733, _3722, _3534);
          _3745 = select(_3733, 1, _3535);
          _3746 = ((int)(uint)(_3733));
        } else {
          _3741 = _3531;
          _3742 = _3532;
          _3743 = _3533;
          _3744 = _3534;
          _3745 = _3535;
          _3746 = 0;
        }
        _3750 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].x), _3475, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].x), _3474, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].x) * _3473))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][3].x);
        _3754 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].y), _3475, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].y), _3474, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].y) * _3473))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][3].y);
        _3758 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].z), _3475, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].z), _3474, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].z) * _3473))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][3].z);
        if (!(((!(_3750 <= _2696)) || (!(_3750 >= _2695))) || (!(_3754 <= _2696)))) {
          _3769 = (_3758 >= -1.0f) && ((_3754 >= _2695) && (_3758 <= 1.0f));
          _3777 = select(_3769, 9.999999747378752e-06f, _3741);
          _3778 = select(_3769, _3750, _3742);
          _3779 = select(_3769, _3754, _3743);
          _3780 = select(_3769, _3758, _3744);
          _3781 = select(_3769, 0, _3745);
          _3782 = select(_3769, 1, _3746);
        } else {
          _3777 = _3741;
          _3778 = _3742;
          _3779 = _3743;
          _3780 = _3744;
          _3781 = _3745;
          _3782 = _3746;
        }
        [branch]
        if (!(_3782 == 0)) {
          _3792 = int(floor((_3778 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f));
          _3793 = int(floor((_3779 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f));
          _3796 = _3792 + 1u;
          _3797 = _3793 + 1u;
          if (!(((uint)_3792 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x))) || ((uint)_3793 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y))))) {
            _3812 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3792, _3793, _3781, 0)))).x);
            _3813 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3796, _3793, _3781, 0)))).x);
            _3814 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3792, _3797, _3781, 0)))).x);
            _3815 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3796, _3797, _3781, 0)))).x);
          } else {
            _3812 = _3707;
            _3813 = _3708;
            _3814 = _3709;
            _3815 = _3710;
          }
          if ((_3053) || ((!(_3053)) && (_sunDirection.y > _moonDirection.y))) {
            _3827 = _sunDirection.x;
            _3828 = _sunDirection.y;
            _3829 = _sunDirection.z;
          } else {
            _3827 = _moonDirection.x;
            _3828 = _moonDirection.y;
            _3829 = _moonDirection.z;
          }
          _3835 = (_3777 - (saturate(-0.0f - dot(float3(_3827, _3828, _3829), float3(_3467, _3468, _3469))) * 9.999999747378752e-05f)) + _3780;
          _3848 = min(((float)((bool)(uint)(_3812 > _3835))), min(min(((float)((bool)(uint)(_3813 > _3835))), ((float)((bool)(uint)(_3814 > _3835)))), ((float)((bool)(uint)(_3815 > _3835)))));
        } else {
          _3848 = _3706;
        }
        _3849 = _2953 + _3473;
        _3850 = _2954 + _3474;
        _3851 = _2955 + _3475;
        _3855 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].x), _3851, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].x), _3850, (_3849 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[3].x);
        _3859 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].y), _3851, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].y), _3850, (_3849 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].y)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[3].y);
        _3863 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].z), _3851, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].z), _3850, (_3849 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].z)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[3].z);
        if (saturate(_3855) == _3855) {
          if ((_3863 >= 9.999999747378752e-05f) && ((_3863 <= 1.0f) && (saturate(_3859) == _3859))) {
            _3878 = frac((_3855 * 1024.0f) + -0.5f);
  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
            _3882 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_3855, _3859));
            _3887 = _3863 + -0.004999999888241291f;
            _3892 = select((_3882.w > _3887), 1.0f, 0.0f);
            _3894 = select((_3882.x > _3887), 1.0f, 0.0f);
            _3901 = ((select((_3882.z > _3887), 1.0f, 0.0f) - _3892) * _3878) + _3892;
  // [sem: expr_sat]
            _3907 = saturate((((((select((_3882.y > _3887), 1.0f, 0.0f) - _3894) * _3878) + _3894) - _3901) * frac((_3859 * 1024.0f) + -0.5f)) + _3901);
          } else {
            _3907 = 1.0f;  // [sem: expr_sat]
          }
        } else {
          _3907 = 1.0f;  // [sem: expr_sat]
        }
  // [sem: _3__36__0__0__g_baseColor_load]
        _3913 = __3__36__0__0__g_baseColor.Load(int3((int)(uint(_85 * (1.0f / g_screenSpaceScale.x))), (int)(uint(_86 * (1.0f / g_screenSpaceScale.y))), 0));
        _3919 = ((float)((uint)((uint)(((uint)((uint)(_3913.x)) >> 8) & 255)))) * 0.003921568859368563f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _3922 = ((float)((uint)((uint)(_3913.x & 255)))) * 0.003921568859368563f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _3926 = ((float)((uint)((uint)(((uint)((uint)(_3913.y)) >> 8) & 255)))) * 0.003921568859368563f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _3927 = _3919 * _3919;
        _3928 = _3922 * _3922;
        _3929 = _3926 * _3926;
        if ((_3053) || ((!(_3053)) && (_sunDirection.y > _moonDirection.y))) {
          _3964 = _precomputedAmbient7.y;
        } else {
          _3964 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
        }
        _3965 = _viewPos.x + _177;
        _3967 = (_earthRadius + _viewPos.y) + _178;
        _3968 = _viewPos.z + _179;
        _3974 = sqrt(((_3968 * _3968) + (_3965 * _3965)) + (_3967 * _3967));
        _3979 = dot(float3((_3965 / _3974), (_3967 / _3974), (_3968 / _3974)), float3(_3459, _3460, _3461));
        _3982 = min(max(((_3974 - _earthRadius) / _atmosphereThickness), 16.0f), _3105);
        _3989 = max(_3982, 0.0f);
        _3995 = (-0.0f - sqrt((_3989 + _3116) * _3989)) / (_3989 + _earthRadius);
        if (_3979 > _3995) {
          _4018 = ((exp2(log2(saturate((_3979 - _3995) / (1.0f - _3995))) * 0.20000000298023224f) * 0.4921875f) + 0.50390625f);
        } else {
          _4018 = ((exp2(log2(saturate((_3995 - _3979) / (_3995 + 1.0f))) * 0.20000000298023224f) * 0.4921875f) + 0.00390625f);
        }
  // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
        _4021 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_3982 + -16.0f) / _3109)) * 0.5f) * 0.96875f) + 0.015625f), _4018), 0.0f);
        _4025 = (_3170 * _3169) * _4021.y;
        _4035 = exp2((_4025 + (_4021.x * _3178)) * -1.4426950216293335f);
        _4036 = exp2((_4025 + (_4021.x * _3181)) * -1.4426950216293335f);
        _4037 = exp2((_4025 + (_4021.x * _3184)) * -1.4426950216293335f);
        _4056 = sqrt((_179 * _179) + (_177 * _177));
        _4062 = (_cloudAltitude - (max(((_4056 * _4056) + -4e+05f), 0.0f) * 9.999999974752427e-07f)) - _viewPos.y;
        _4072 = _4062 + ((0.5f - (float((int)(((int)(uint)((int)(_3460 > 0.0f))) - ((int)(uint)((int)(_3460 < 0.0f))))) * 0.5f)) * _cloudThickness);
        if (_178 < _4062) {
          _4075 = dot(float3(0.0f, 1.0f, 0.0f), float3(_3459, _3460, _3461));
          _4081 = select((abs(_4075) < 9.99999993922529e-09f), 1e+08f, ((_4072 - dot(float3(0.0f, 1.0f, 0.0f), float3(_177, _178, _179))) / _4075));
          _4087 = ((_4081 * _3459) + _177);
          _4088 = _4072;
          _4089 = ((_4081 * _3461) + _179);
        } else {
          _4087 = _177;
          _4088 = _178;
          _4089 = _179;
        }
        _4103 = saturate(abs(_3460) * 4.0f);  // [sem: expr_sat]
        _4105 = (_4103 * _4103) * exp2((_3262 * _3261) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_4087 * 4.999999873689376e-05f) + 0.5f), ((_4088 - _4062) / _cloudThickness), ((_4089 * 4.999999873689376e-05f) + 0.5f)), 0.0f)).x));
        _4112 = ((1.0f - _4105) * saturate(((_178 - _cloudThickness) - _4062) * 0.10000000149011612f)) + _4105;
        _4113 = _4112 * (((_4036 * 0.3395099937915802f) + (_4035 * 0.6131200194358826f)) + (_4037 * 0.047370001673698425f));
        _4114 = _4112 * (((_4036 * 0.9163600206375122f) + (_4035 * 0.07020000368356705f)) + (_4037 * 0.013450000435113907f));
        _4115 = _4112 * (((_4036 * 0.10958000272512436f) + (_4035 * 0.02061999961733818f)) + (_4037 * 0.8697999715805054f));
        _4131 = ((max(0.0f, (0.30000001192092896f - dot(float3(_137, _138, _139), float3(_3459, _3460, _3461)))) * 0.1573420912027359f) * saturate(min(_3848, _3907))) * _3964;
        _4142 = (((_4131 * (((_3927 * 0.6131200194358826f) + (_3928 * 0.3395099937915802f)) + (_3929 * 0.047370001673698425f))) * (((_4113 * 0.6131200194358826f) + (_4114 * 0.3395099937915802f)) + (_4115 * 0.047370001673698425f))) + _3436);
        _4143 = (((_4131 * (((_3927 * 0.07020000368356705f) + (_3928 * 0.9163600206375122f)) + (_3929 * 0.013450000435113907f))) * (((_4113 * 0.07020000368356705f) + (_4114 * 0.9163600206375122f)) + (_4115 * 0.013450000435113907f))) + _3437);
        _4144 = (((_4131 * (((_3927 * 0.02061999961733818f) + (_3928 * 0.10958000272512436f)) + (_3929 * 0.8697999715805054f))) * (((_4113 * 0.02061999961733818f) + (_4114 * 0.10958000272512436f)) + (_4115 * 0.8697999715805054f))) + _3438);
      } else {
        _4142 = _3436;
        _4143 = _3437;
        _4144 = _3438;
      }
      _4145 = (_renderParams2.z * _2363) * _4142;
      _4146 = (_renderParams2.z * _2364) * _4143;
      _4147 = (_renderParams2.z * _2365) * _4144;
      _4151 = _4145 + _2274;
      _4152 = _4146 + _2275;
      _4153 = _4147 + _2276;
      _4164 = _2284;
      _4165 = (((max(_2274, _4145) - _4151) * _2286) + _4151);
      _4166 = (((max(_2275, _4146) - _4152) * _2286) + _4152);
      _4167 = (((max(_2276, _4147) - _4153) * _2286) + _4153);
    } else {
      _4164 = 1000.0f;
      _4165 = _2274;
      _4166 = _2275;
      _4167 = _2276;
    }
    if (!_993) {
      __3__38__0__1__g_raytracingHitResultUAV[int2(_82, _84)] = float4(_212, _213, _214, select((_4164 <= 0.0f), 1000.0f, _4164));
    }
    if ((_4164 > 128.0f) && (dot(float3(_4165, _4166, _4167), float3(0.21267099678516388f, 0.7151600122451782f, 0.0721689984202385f)) == 0.0f)) {
      _4178 = 1;
      while(true) {
        _4180 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_4178 + 20))];
        _4208 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_4178 + 36))];
        // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
        // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
        float3 _rndx_surfel_jitter_4218 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _2290) * _4180.w) + _4208.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _2291) * _4180.w) + _4208.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _2292) * _4180.w) + _4208.z), float2(_85, _86), _192, _frameNumber.x);
        _4218 = int(floor(_rndx_surfel_jitter_4218.x));
        _4219 = int(floor(_rndx_surfel_jitter_4218.y));
        _4220 = int(floor(_rndx_surfel_jitter_4218.z));
        // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
        if (!(((((int)_4218 >= (int)int(_4180.x + -63.0f)) && ((int)_4218 < (int)int(_4180.x + 63.0f))) && (((int)_4219 >= (int)int(_4180.y + -31.0f)) && ((int)_4219 < (int)int(_4180.y + 31.0f)))) && (((int)_4220 >= (int)int(_4180.z + -63.0f)) && ((int)_4220 < (int)int(_4180.z + 63.0f))))) {
          _4233 = _4178 + 1;
          if ((uint)_4233 < (uint)8) {
            _4178 = _4233;
            continue;
          } else {
            _4236 = -10000;
          }
        } else {
          _4236 = _4178;
        }
        if (!((uint)_4236 > (uint)3)) {
          _4256 = 1.0f / ((float)((uint)(1 << (_4236 & 31))));
          _4260 = frac(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _2292) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z) * _4256);
  // [sem: expr_sat]
          _4277 = saturate(1.0f - ((__3__36__0__1__g_skyVisibilityVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _2290) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _4256), (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _2291) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y) * _4256), (((((float)((uint)(_4236 * 66))) + 1.0f) + ((select((_4260 < 0.0f), 1.0f, 0.0f) + _4260) * 64.0f)) * 0.0037878789007663727f)), 0.0f)).x));
        } else {
          _4277 = 1.0f;  // [sem: expr_sat]
        }
        _4280 = _renderParams.w * _4277;
        _4281 = (_985 == 0.0f);
  // [sem: _3__36__0__0__g_environmentColor_sampleLod]
        _4289 = __3__36__0__0__g_environmentColor.SampleLevel(__3__40__0__0__g_samplerTrilinear, float3(select(_4281, (-0.0f - _218), _1183), select(_4281, _219, _1184), select(_4281, (-0.0f - _220), _1185)), 4.0f);
        _4303 = ((_4280 * select(_4281, 0.03125f, _982)) * _4289.x);
        _4304 = ((_4280 * select(_4281, 0.03125f, _983)) * _4289.y);
        _4305 = ((_4280 * select(_4281, 0.03125f, _984)) * _4289.z);
        break;
      }
    } else {
      _4303 = _4165;
      _4304 = _4166;
      _4305 = _4167;
    }
    _4312 = saturate(1.0f - saturate(_2277));  // [sem: expr_sat]
    _4316 = (_4312 - (_renderParams2.w * _4312)) + _renderParams2.w;
  // [sem: _3__36__0__0__g_environmentColor_sampleLod]
    _4320 = __3__36__0__0__g_environmentColor.SampleLevel(__3__40__0__0__g_samplerTrilinear, float3(_218, _219, _220), 4.0f);
    _4326 = _renderParams.w * _4316;
    _4327 = _4326 * _4320.x;
    _4328 = _4326 * _4320.y;
    _4329 = _4326 * _4320.z;
    _4334 = dot(float3(_4327, _4328, _4329), float3(0.21267099678516388f, 0.7151600122451782f, 0.0721689984202385f));
    _4335 = min((max(0.009999999776482582f, _exposure3.w) * 2048.0f), _4334);
    _4339 = max(9.999999717180685e-10f, _4334);
    _4349 = ((__3__36__0__0__g_raytracingDiffuseRayInversePDF.Load(int3(_82, _84, 0))).x) * 2.0f;
    _4350 = _4349 * (((_4335 * _4327) / _4339) + (_renderParams2.y * _4303));
    _4351 = _4349 * (((_4335 * _4328) / _4339) + (_renderParams2.y * _4304));
    _4352 = _4349 * (((_4335 * _4329) / _4339) + (_renderParams2.y * _4305));
    if (!(_renderParams.y == 0.0f)) {
      _4357 = saturate(dot(float3(_137, _138, _139), float3(_218, _219, _220)));  // [sem: expr_sat]
      _4362 = (_4357 * _4350);
      _4363 = (_4357 * _4351);
      _4364 = (_4357 * _4352);
    } else {
      _4362 = _4350;
      _4363 = _4351;
      _4364 = _4352;
    }
    if ((((_110 & 126) == 96) || (_114 == 98)) && (_182 < 1000.0f)) {
      _4374 = (float)((uint)(uint)(_frameNumber.x));
      _4385 = (frac(((_4374 * 92.0f) + _85) * 0.0078125f) * 128.0f) + -64.34062194824219f;
      _4386 = (frac(((_4374 * 71.0f) + _86) * 0.0078125f) * 128.0f) + -72.46562194824219f;
      _4391 = frac(dot(float3((_4385 * _4385), (_4386 * _4386), (_4386 * _4385)), float3(20.390625f, 60.703125f, 2.4281208515167236f)));
      _4398 = (float)((uint)((uint)(((int)(_frameNumber.x * 91)) & 15)));
      _4409 = (int)min((uint)(15), (uint)((int)(uint(frac(frac(dot(float2(((_4398 * 32.665000915527344f) + _85), ((_4398 * 11.8149995803833f) + _86)), float2(0.0671105608344078f, 0.005837149918079376f))) * 52.98291778564453f) * 16.0f))));
      _4422 = 0.2774999737739563f / ((((float)((uint)((uint)(reversebits(_4409) ^ (int)(uint(_4391 * 287478368.0f)))))) * 3.958121053138086e-10f) + 0.1499999761581421f);
      _4423 = frac((((float)((uint)_4409)) * 0.0625f) + (((float)((uint)((uint)((int)(uint(_4391 * 51540816.0f)) & 65535)))) * 1.52587890625e-05f)) * 6.2831854820251465f;
      _4426 = saturate((_4422 * _4422) * -0.5882352590560913f);  // [sem: expr_sat]
      _4429 = sqrt(1.0f - (_4426 * _4426));
      _4432 = cos(_4423) * _4429;
      _4433 = sin(_4423) * _4429;
      _4435 = -0.0f - _138;
      _4438 = select((_139 <= -0.0f), 1.0f, -1.0f);
      _4440 = 1.0f / (_4438 - _139);
      _4441 = -0.0f - _4440;
      _4443 = (_137 * _4441) * _138;
      _4444 = _4438 * _137;
      _4453 = mad(_4426, (-0.0f - _137), mad(_4433, _4443, ((((_4444 * _137) * _4441) + 1.0f) * _4432)));
      _4457 = mad(_4426, _4435, mad(_4433, (((_138 * _4435) * _4440) + _4438), ((_4432 * _4438) * _4443)));
      _4460 = mad(_4426, (-0.0f - _139), mad(_4433, _138, (_4444 * _4432)));
      _4465 = ((frac(frac(dot(float2(_85, _86), float2(0.0671105608344078f, 0.005837149918079376f))) * 52.98291778564453f) * 0.10000000149011612f) + 0.009999999776482582f) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
      _4467 = 0;
      while(true) {
        _4469 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_4467 + 20))];
        _4497 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_4467 + 36))];
        // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
        // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
        float3 _rndx_surfel_jitter_4507 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _177) * _4469.w) + _4497.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _178) * _4469.w) + _4497.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _179) * _4469.w) + _4497.z), float2(_85, _86), _192, _frameNumber.x);
        _4507 = int(floor(_rndx_surfel_jitter_4507.x));
        _4508 = int(floor(_rndx_surfel_jitter_4507.y));
        _4509 = int(floor(_rndx_surfel_jitter_4507.z));
        // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
        if (!(((((int)_4507 >= (int)int(_4469.x + -63.0f)) && ((int)_4507 < (int)int(_4469.x + 63.0f))) && (((int)_4508 >= (int)int(_4469.y + -31.0f)) && ((int)_4508 < (int)int(_4469.y + 31.0f)))) && (((int)_4509 >= (int)int(_4469.z + -63.0f)) && ((int)_4509 < (int)int(_4469.z + 63.0f))))) {
          _4522 = _4467 + 1;
          if ((uint)_4522 < (uint)8) {
            _4467 = _4522;
            continue;
          } else {
            _4525 = -10000;
          }
        } else {
          _4525 = _4467;
        }
        if (!((_4525 == -10000) || ((int)_4525 > (int)4))) {
          _4538 = 0;
          _4539 = 1.0f;
          _4540 = 0.0f;
          _4541 = 0.0f;
          _4542 = 0.0f;
          _4543 = 0.05000000074505806f;
          _4544 = ((_4465 * _4460) + _179);
          _4545 = ((_4465 * _4457) + _178);
          _4546 = ((_4465 * _4453) + _177);
          while(true) {
            _4548 = 0;
            while(true) {
              _4550 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_4548 + 20))];
              _4569 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_4548 + 36))];
              _4573 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _4546) * _4550.w) + _4569.x;
              _4574 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _4545) * _4550.w) + _4569.y;
              _4575 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _4544) * _4550.w) + _4569.z;
              if (!((_4575 >= (_4550.z + -63.0f)) && ((_4573 >= (_4550.x + -63.0f)) && (_4574 >= (_4550.y + -31.0f)))) || (((_4575 >= (_4550.z + -63.0f)) && ((_4573 >= (_4550.x + -63.0f)) && (_4574 >= (_4550.y + -31.0f)))) && (!((_4575 < (_4550.z + 63.0f)) && ((_4573 < (_4550.x + 63.0f)) && (_4574 < (_4550.y + 31.0f))))))) {
                _4591 = _4548 + 1;
                if ((int)_4591 < (int)8) {
                  _4548 = _4591;
                  continue;
                } else {
                  _5132 = _4542;
                  _5133 = _4541;
                  _5134 = _4540;
                  _5135 = 0.0f;
                }
              } else {
                if ((uint)_4548 > (uint)3) {
                  _5127 = _4542;
                  _5128 = _4541;
                  _5129 = _4540;
                  _5130 = 0.0f;
                  _5132 = _5127;
                  _5133 = _5128;
                  _5134 = _5129;
                  _5135 = _5130;
                } else {
                  _4596 = max(0.05000000074505806f, (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 0.05000000074505806f));
                  _4598 = 0;
                  while(true) {
                    _4600 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_4598 + 20))];
                    _4628 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_4598 + 36))];
                    // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
                    // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
                    float3 _rndx_surfel_jitter_4638 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _4546) * _4600.w) + _4628.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _4545) * _4600.w) + _4628.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _4544) * _4600.w) + _4628.z), float2(_85, _86), _192, _frameNumber.x);
                    _4638 = int(floor(_rndx_surfel_jitter_4638.x));
                    _4639 = int(floor(_rndx_surfel_jitter_4638.y));
                    _4640 = int(floor(_rndx_surfel_jitter_4638.z));
                    // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
                    if (((((int)_4638 >= (int)int(_4600.x + -63.0f)) && ((int)_4638 < (int)int(_4600.x + 63.0f))) && (((int)_4639 >= (int)int(_4600.y + -31.0f)) && ((int)_4639 < (int)int(_4600.y + 31.0f)))) && (((int)_4640 >= (int)int(_4600.z + -63.0f)) && ((int)_4640 < (int)int(_4600.z + 63.0f)))) {
                      _4661 = (_4638 & 127);
                      _4662 = (_4639 & 63);
                      _4663 = (_4640 & 127);
                      _4664 = _4598;
                    } else {
                      _4653 = _4598 + 1;
                      if ((uint)_4653 < (uint)8) {
                        _4598 = _4653;
                        continue;
                      } else {
                        _4661 = -10000;
                        _4662 = -10000;
                        _4663 = -10000;
                        _4664 = -10000;
                      }
                    }
                    if (!((uint)_4664 > (uint)5)) {
                      _4679 = (((((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_4661, _4662, ((int)(((uint)(((int)(_4664 * 130)) | 1)) + _4663)), 0)))).x) & 4194303) == 0);
                      [branch]
                      if (!_4679) {
                        _4682 = _4661;
                        _4683 = _4662;
                        _4684 = _4663;
                        _4685 = _4664;
                      } else {
                        _4682 = -10000;
                        _4683 = -10000;
                        _4684 = -10000;
                        _4685 = -10000;
                      }
                      _4687 = (float((int)((int)(1 << (_4664 & 31)))) * 0.5f) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                      _4692 = 0;
                      while(true) {
                        _4694 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_4692 + 20))];
                        _4722 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_4692 + 36))];
                        // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
                        // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
                        float3 _rndx_surfel_jitter_4732 = RenoDXSurfelVoxelJitter(float3((((_4546 - _4687) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x) * _4694.w) + _4722.x, (((_4545 - _4687) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y) * _4694.w) + _4722.y, (((_4544 - _4687) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z) * _4694.w) + _4722.z), float2(_85, _86), _192, _frameNumber.x);
                        _4732 = int(floor(_rndx_surfel_jitter_4732.x));
                        _4733 = int(floor(_rndx_surfel_jitter_4732.y));
                        _4734 = int(floor(_rndx_surfel_jitter_4732.z));
                        // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
                        if (((((int)_4732 >= (int)int(_4694.x + -63.0f)) && ((int)_4732 < (int)int(_4694.x + 63.0f))) && (((int)_4733 >= (int)int(_4694.y + -31.0f)) && ((int)_4733 < (int)int(_4694.y + 31.0f)))) && (((int)_4734 >= (int)int(_4694.z + -63.0f)) && ((int)_4734 < (int)int(_4694.z + 63.0f)))) {
                          _4755 = (_4732 & 127);
                          _4756 = (_4733 & 63);
                          _4757 = (_4734 & 127);
                          _4758 = _4692;
                        } else {
                          _4747 = _4692 + 1;
                          if ((uint)_4747 < (uint)8) {
                            _4692 = _4747;
                            continue;
                          } else {
                            _4755 = -10000;
                            _4756 = -10000;
                            _4757 = -10000;
                            _4758 = -10000;
                          }
                        }
                        if (!((uint)_4758 > (uint)5)) {
                          if (_4679) {
                            _4763 = 0;
                            _4764 = _4685;
                            _4765 = _4684;
                            _4766 = _4683;
                            _4767 = _4682;
                            while(true) {
                              _4776 = 0;
                              _4777 = _4764;
                              _4778 = _4765;
                              _4779 = _4766;
                              _4780 = _4767;
                              while(true) {
                                _4783 = _4763 + _4757;
                                _4784 = _4783 + ((uint)(((int)(_4758 * 130)) | 1));
                                _4791 = _4776 + _4756;
                                if (!(((uint)_4791 > (uint)63) || ((uint)(_4755 | _4783) > (uint)127))) {
                                  _4800 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_4755, _4791, _4784, 0)))).x) & 4194303;
                                  _4803 = (_4800 != 0);
                                  _4804 = _4800;
                                  _4805 = _4758;
                                  _4806 = _4783;
                                  _4807 = _4791;
                                  _4808 = _4755;
                                } else {
                                  _4803 = false;
                                  _4804 = 0;
                                  _4805 = 0;
                                  _4806 = 0;
                                  _4807 = 0;
                                  _4808 = 0;
                                }
                                if (!_4803) {
                                  _4810 = _4755 + 1;
                                  _4811 = _4776 + _4756;
                                  if (!(((uint)_4811 > (uint)63) || ((uint)(_4810 | _4783) > (uint)127))) {
                                    _5999 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_4810, _4811, _4784, 0)))).x) & 4194303;
                                    _6002 = (_5999 != 0);
                                    _6003 = _5999;
                                    _6004 = _4758;
                                    _6005 = _4783;
                                    _6006 = _4811;
                                    _6007 = _4810;
                                  } else {
                                    _6002 = false;
                                    _6003 = 0;
                                    _6004 = 0;
                                    _6005 = 0;
                                    _6006 = 0;
                                    _6007 = 0;
                                  }
                                  if (!_6002) {
                                    _4817 = _4780;
                                    _4818 = _4779;
                                    _4819 = _4778;
                                    _4820 = _4777;
                                    _4821 = 0;
                                  } else {
                                    _4817 = _6007;
                                    _4818 = _6006;
                                    _4819 = _6005;
                                    _4820 = _6004;
                                    _4821 = _6003;
                                  }
                                } else {
                                  _4817 = _4808;
                                  _4818 = _4807;
                                  _4819 = _4806;
                                  _4820 = _4805;
                                  _4821 = _4804;
                                }
                                while(true) {
                                  _4822 = _4776 + 1;
                                  if (((int)_4822 < (int)2) && (_4821 == 0)) {
                                    _4776 = _4822;
                                    _4777 = _4820;
                                    _4778 = _4819;
                                    _4779 = _4818;
                                    _4780 = _4817;
                                    __loop_jump_target = 4775;
                                    break;
                                  }
                                  while(true) {
                                    _4786 = _4763 + 1;
                                    if (((int)_4786 < (int)2) && (_4821 == 0)) {
                                      _4763 = _4786;
                                      _4764 = _4820;
                                      _4765 = _4819;
                                      _4766 = _4818;
                                      _4767 = _4817;
                                      __loop_jump_target = 4762;
                                      break;
                                    }
                                    while(true) {
                                      _4770 = _4820;
                                      _4771 = _4819;
                                      _4772 = _4818;
                                      _4773 = _4817;
                                      break;
                                    }
                                    break;
                                  }
                                  if (__loop_jump_target != -1) {
                                    break;
                                  }
                                  break;
                                }
                                if (__loop_jump_target == 4775) {
                                  __loop_jump_target = -1;
                                  continue;
                                }
                                if (__loop_jump_target != -1) {
                                  break;
                                }
                                break;
                              }
                              if (__loop_jump_target == 4762) {
                                __loop_jump_target = -1;
                                continue;
                              }
                              if (__loop_jump_target != -1) {
                                break;
                              }
                              break;
                            }
                          } else {
                            _4770 = _4685;
                            _4771 = _4684;
                            _4772 = _4683;
                            _4773 = _4682;
                          }
                          if ((uint)_4770 < (uint)6) {
                            _4827 = _4770 * 130;
                            _4833 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_4773, _4772, ((int)(((uint)(_4827 | 1)) + _4771)), 0)))).x) & 4194303;
                            [branch]
                            if (!(_4833 == 0)) {
                              _4837 = 1 << (_4770 & 31);
                              _4839 = float((int)(_4837)) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                              _4841 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((uint)(_4770 + 20u))];
                              _4876 = -0.0f - _4453;
                              _4877 = -0.0f - _4457;
                              _4878 = -0.0f - _4460;
                              _4880 = 0.0f;
                              _4881 = 0.0f;
                              _4882 = 0.0f;
                              _4883 = 0.0f;
                              _4884 = 0;
                              while(true) {
                                _4886 = (_4833 + -1) + _4884;
                                _4889 = __3__37__0__0__g_surfelDataBuffer[_4886]._baseColor;
                                _4891 = __3__37__0__0__g_surfelDataBuffer[_4886]._normal;
                                _4894 = __3__37__0__0__g_surfelDataBuffer[_4886]._radius;
                                if (!(_4889 == 0)) {
                                  _4897 = __3__37__0__0__g_surfelDataBuffer[_4886]._radiance.z;
                                  _4898 = __3__37__0__0__g_surfelDataBuffer[_4886]._radiance.y;
                                  _4899 = __3__37__0__0__g_surfelDataBuffer[_4886]._radiance.x;
                                  _4905 = (float)((uint)((uint)(_4889 & 255)));
                                  _4906 = (float)((uint)((uint)(((uint)(_4889) >> 8) & 255)));
                                  _4907 = (float)((uint)((uint)(((uint)(_4889) >> 16) & 255)));
                                  _4932 = select(((_4905 * 0.003921568859368563f) < 0.040449999272823334f), (_4905 * 0.0003035269910469651f), exp2(log2((_4905 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
                                  _4933 = select(((_4906 * 0.003921568859368563f) < 0.040449999272823334f), (_4906 * 0.0003035269910469651f), exp2(log2((_4906 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
                                  _4934 = select(((_4907 * 0.003921568859368563f) < 0.040449999272823334f), (_4907 * 0.0003035269910469651f), exp2(log2((_4907 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
                                  _4946 = (((float)((uint)((uint)(_4891 & 255)))) * 0.007874015718698502f) + -1.0f;
                                  _4947 = (((float)((uint)((uint)(((uint)(_4891) >> 8) & 255)))) * 0.007874015718698502f) + -1.0f;
                                  _4948 = (((float)((uint)((uint)(((uint)(_4891) >> 16) & 255)))) * 0.007874015718698502f) + -1.0f;
                                  _4950 = rsqrt(dot(float3(_4946, _4947, _4948), float3(_4946, _4947, _4948)));  // [sem: invLength]
                                  _4955 = ((_4891 & 16777215) == 0);
                                  _4959 = float(_4899);
                                  _4960 = float(_4898);
                                  _4961 = float(_4897);
                                  _4965 = (_4839 * 0.0019607844296842813f) * ((float)((uint16_t)((uint)(_4894 & 255))));
                                  _4981 = (((((float)((uint)((uint)((uint)(_4889) >> 24)))) * 0.003937007859349251f) + -0.5f) * _4839) + ((((_4841.x + -63.5f) + float((int)(((int)((_4773 + 64u) - (uint)(int(_4841.x)))) & 127))) * _4839) - _viewPos.x);
                                  _4982 = (((((float)((uint)((uint)((uint)(_4891) >> 24)))) * 0.003937007859349251f) + -0.5f) * _4839) + ((((_4841.y + -31.5f) + float((int)(((int)((_4772 + 32u) - (uint)(int(_4841.y)))) & 63))) * _4839) - _viewPos.y);
                                  _4983 = (((((float)((uint16_t)((uint)((uint16_t)(_4894) >> 8)))) * 0.003937007859349251f) + -0.5f) * _4839) + ((((_4841.z + -63.5f) + float((int)(((int)((_4771 + 64u) - (uint)(int(_4841.z)))) & 127))) * _4839) - _viewPos.z);
                                  _5001 = _4981 - _4546;
                                  _5002 = _4982 - _4545;
                                  _5003 = _4983 - _4544;
                                  _5004 = dot(float3(_5001, _5002, _5003), float3(_4876, _4877, _4878));
                                  _5008 = _5001 - (_5004 * _4876);
                                  _5009 = _5002 - (_5004 * _4877);
                                  _5010 = _5003 - (_5004 * _4878);
                                  _5036 = 1.0f / ((float)((uint)_4837));
                                  _5040 = frac(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _4983) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z) * _5036);
                                  _5065 = select(((int)_4770 > (int)5), 1.0f, ((saturate((saturate(dot(float3(_4876, _4877, _4878), float3(select(_4955, _4876, (_4950 * _4946)), select(_4955, _4877, (_4950 * _4947)), select(_4955, _4878, (_4950 * _4948))))) + -0.03125f) * 1.0322580337524414f) * ((float)((bool)(uint)(dot(float3(_5008, _5009, _5010), float3(_5008, _5009, _5010)) < ((_4965 * _4965) * 16.0f))))) * ((float)((bool)(uint)(((__3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _4981) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _5036), (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _4982) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y) * _5036), (((((float)((uint)_4827)) + 1.0f) + ((select((_5040 < 0.0f), 1.0f, 0.0f) + _5040) * 128.0f)) * 0.000961538462433964f)), 0.0f)).x) > ((_4839 * 0.25f) * (saturate((dot(float3(_4959, _4960, _4961), float3(0.21267099678516388f, 0.7151600122451782f, 0.0721689984202385f)) * 9.999999747378752e-05f) / _exposure3.w) + 1.0f)))))));
                                  _5072 = (((((_4933 * 0.3395099937915802f) + (_4932 * 0.6131200194358826f)) + (_4934 * 0.047370001673698425f)) * _4959) * _5065) + _4880;
                                  _5073 = (((((_4933 * 0.9163600206375122f) + (_4932 * 0.07020000368356705f)) + (_4934 * 0.013450000435113907f)) * _4960) * _5065) + _4881;
                                  _5074 = (((((_4933 * 0.10958000272512436f) + (_4932 * 0.02061999961733818f)) + (_4934 * 0.8697999715805054f)) * _4961) * _5065) + _4882;
                                  _5075 = _5065 + _4883;
                                  _5076 = _4884 + 1;
                                  if ((uint)_5076 < (uint)4) {
                                    _4880 = _5072;
                                    _4881 = _5073;
                                    _4882 = _5074;
                                    _4883 = _5075;
                                    _4884 = _5076;
                                    continue;
                                  } else {
                                    _5079 = _5072;
                                    _5080 = _5073;
                                    _5081 = _5074;
                                    _5082 = _5075;
                                  }
                                } else {
                                  _5079 = _4880;
                                  _5080 = _4881;
                                  _5081 = _4882;
                                  _5082 = _4883;
                                }
                                if (_5082 > 0.0f) {
                                  _5085 = 1.0f / _5082;
                                  _5099 = (-0.0f - min(0.0f, (-0.0f - (_5079 * _5085))));
                                  _5100 = (-0.0f - min(0.0f, (-0.0f - (_5080 * _5085))));
                                  _5101 = (-0.0f - min(0.0f, (-0.0f - (_5081 * _5085))));
                                } else {
                                  _5099 = _5079;
                                  _5100 = _5080;
                                  _5101 = _5081;
                                }
                                break;
                              }
                            } else {
                              _5099 = 0.0f;
                              _5100 = 0.0f;
                              _5101 = 0.0f;
                            }
                          } else {
                            _5099 = 0.0f;
                            _5100 = 0.0f;
                            _5101 = 0.0f;
                          }
                        } else {
                          _5099 = 0.0f;
                          _5100 = 0.0f;
                          _5101 = 0.0f;
                        }
                        break;
                      }
                    } else {
                      _5099 = 0.0f;
                      _5100 = 0.0f;
                      _5101 = 0.0f;
                    }
                    _5102 = _4539 * 0.31830987334251404f;
                    _5106 = (_5099 * _5102) + _4542;
                    _5107 = (_5100 * _5102) + _4541;
                    _5108 = (_5101 * _5102) + _4540;
                    _5111 = exp2(_4596 * -28.853900909423828f) * _4539;
                    if (_5111 < 0.050000011920928955f) {
                      _5127 = _5106;
                      _5128 = _5107;
                      _5129 = _5108;
                      _5130 = _4543;
                      _5132 = _5127;
                      _5133 = _5128;
                      _5134 = _5129;
                      _5135 = _5130;
                    } else {
                      _5114 = _4596 + _4543;
                      _5118 = (_4596 * _4453) + _4546;
                      _5119 = (_4596 * _4457) + _4545;
                      _5120 = (_4596 * _4460) + _4544;
                      _5121 = _4538 + 1;
                      if (((uint)_5121 < (uint)32) && (_5114 < 32.0f)) {
                        _4538 = _5121;
                        _4539 = _5111;
                        _4540 = _5108;
                        _4541 = _5107;
                        _4542 = _5106;
                        _4543 = _5114;
                        _4544 = _5120;
                        _4545 = _5119;
                        _4546 = _5118;
                        __loop_jump_target = 4537;
                        break;
                      } else {
                        _5127 = _5106;
                        _5128 = _5107;
                        _5129 = _5108;
                        _5130 = 0.0f;
                        _5132 = _5127;
                        _5133 = _5128;
                        _5134 = _5129;
                        _5135 = _5130;
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
            if (__loop_jump_target == 4537) {
              __loop_jump_target = -1;
              continue;
            }
            if (__loop_jump_target != -1) {
              break;
            }
            break;
          }
        } else {
          _5132 = 0.0f;
          _5133 = 0.0f;
          _5134 = 0.0f;
          _5135 = 0.0f;
        }
        if (_5135 > 0.0f) {
          _5147 = (_5135 * _4453) + _177;
          _5148 = (_5135 * _4457) + _178;
          _5149 = (_5135 * _4460) + _179;
          _5152 = (_sunDirection.y > 0.0f);
          if ((_5152) || ((!(_5152)) && (_sunDirection.y > _moonDirection.y))) {
            _5164 = _sunDirection.x;
            _5165 = _sunDirection.y;
            _5166 = _sunDirection.z;
          } else {
            _5164 = _moonDirection.x;
            _5165 = _moonDirection.y;
            _5166 = _moonDirection.z;
          }
          if ((_5152) || ((!(_5152)) && (_sunDirection.y > _moonDirection.y))) {
            _5186 = _precomputedAmbient7.y;
          } else {
            _5186 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
          }
          _5193 = _viewPos.x + _5147;
          _5195 = (_earthRadius + _5148) + _viewPos.y;
          _5196 = _viewPos.z + _5149;
          _5202 = sqrt(((_5193 * _5193) + (_5195 * _5195)) + (_5196 * _5196));
          _5207 = dot(float3((_5193 / _5202), (_5195 / _5202), (_5196 / _5202)), float3(_5164, _5165, _5166));
          _5213 = min(max(((_5202 - _earthRadius) / _atmosphereThickness), 16.0f), (_atmosphereThickness + -16.0f));
          _5221 = max(_5213, 0.0f);
          _5228 = (-0.0f - sqrt((_5221 + (_earthRadius * 2.0f)) * _5221)) / (_5221 + _earthRadius);
          if (_5207 > _5228) {
            _5251 = ((exp2(log2(saturate((_5207 - _5228) / (1.0f - _5228))) * 0.20000000298023224f) * 0.4921875f) + 0.50390625f);
          } else {
            _5251 = ((exp2(log2(saturate((_5228 - _5207) / (_5228 + 1.0f))) * 0.20000000298023224f) * 0.4921875f) + 0.00390625f);
          }
  // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
          _5256 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_5213 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f), _5251), 0.0f);
          _5278 = ((_5256.y * 1.9999999494757503e-05f) * _mieAerosolDensity) * (_mieAerosolAbsorption + 1.0f);  // [sem: _3__36__0__0__g_texNetDensity_sampleLod_derived]
          _5296 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.960784317134312e-07f) + (_ozoneRatio * 2.05560013455397e-06f)) * _5256.x) + _5278) * -1.4426950216293335f);
          _5297 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.960784317134312e-07f) + (_ozoneRatio * 4.978800461685751e-06f)) * _5256.x) + _5278) * -1.4426950216293335f);
          _5298 = exp2(((((_ozoneRatio * 2.1360001767334325e-07f) + (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.960784317134312e-07f)) * _5256.x) + _5278) * -1.4426950216293335f);
          _5317 = sqrt((_5147 * _5147) + (_5149 * _5149));
          _5325 = (_cloudAltitude - (max(((_5317 * _5317) + -4e+05f), 0.0f) * 9.999999974752427e-07f)) - _viewPos.y;
          _5337 = (_cloudThickness * (0.5f - (float((int)(((int)(uint)((int)(_5165 > 0.0f))) - ((int)(uint)((int)(_5165 < 0.0f))))) * 0.5f))) + _5325;
          if (_5148 < _5325) {
            _5340 = dot(float3(0.0f, 1.0f, 0.0f), float3(_5164, _5165, _5166));
            _5346 = select((abs(_5340) < 9.99999993922529e-09f), 1e+08f, ((_5337 - dot(float3(0.0f, 1.0f, 0.0f), float3(_5147, _5148, _5149))) / _5340));
            _5352 = ((_5346 * _5164) + _5147);
            _5353 = _5337;
            _5354 = ((_5346 * _5166) + _5149);
          } else {
            _5352 = _5147;
            _5353 = _5148;
            _5354 = _5149;
          }
          _5374 = saturate(abs(_5165) * 4.0f);  // [sem: expr_sat]
          _5376 = (_5374 * _5374) * exp2(((_distanceScale * -1.4426950216293335f) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_5352 * 4.999999873689376e-05f) + 0.5f), ((_5353 - _5325) / _cloudThickness), ((_5354 * 4.999999873689376e-05f) + 0.5f)), 0.0f)).x)) * (_cloudScatteringCoefficient / _distanceScale));
          _5383 = ((1.0f - _5376) * saturate(((_5148 - _cloudThickness) - _5325) * 0.10000000149011612f)) + _5376;
          _5384 = _5383 * (((_5297 * 0.3395099937915802f) + (_5296 * 0.6131200194358826f)) + (_5298 * 0.047370001673698425f));
          _5385 = _5383 * (((_5297 * 0.9163600206375122f) + (_5296 * 0.07020000368356705f)) + (_5298 * 0.013450000435113907f));
          _5386 = _5383 * (((_5297 * 0.10958000272512436f) + (_5296 * 0.02061999961733818f)) + (_5298 * 0.8697999715805054f));
          _5409 = (_viewPos.x - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].x)) + _5147;
          _5410 = (_viewPos.y - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].y)) + _5148;
          _5411 = (_viewPos.z - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].z)) + _5149;
          _5431 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].x), _5411, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].x), _5410, (_5409 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][3].x);
          _5435 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].y), _5411, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].y), _5410, (_5409 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].y)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][3].y);
          _5442 = 2.0f / __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y;
          _5443 = 1.0f - _5442;
          _5450 = (((!(_5431 <= _5443)) || (!(_5431 >= _5442))) || (!(_5435 <= _5443))) || (!(_5435 >= _5442));
          _5462 = (_viewPos.x - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].x)) + _5147;
          _5463 = (_viewPos.y - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].y)) + _5148;
          _5464 = (_viewPos.z - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].z)) + _5149;
          _5484 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].x), _5464, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].x), _5463, (_5462 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][3].x);
          _5488 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].y), _5464, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].y), _5463, (_5462 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].y)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][3].y);
          _5499 = (((!(_5484 <= _5443)) || (!(_5484 >= _5442))) || (!(_5488 <= _5443))) || (!(_5488 >= _5442));
          _5500 = select(_5499, select(_5450, -1, 1), 0);
          _5501 = select(_5499, select(_5450, 0.0f, _5431), _5484);
          _5502 = select(_5499, select(_5450, 0.0f, _5435), _5488);
          _5503 = select(_5499, select(_5450, 0.0f, (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].z), _5411, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].z), _5410, (_5409 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].z)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][3].z))), (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].z), _5464, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].z), _5463, (_5462 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].z)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][3].z)));
          _5505 = select((_5499 && _5450), 0.0f, 0.0010000000474974513f);
          [branch]
          if (!(_5500 == -1)) {
            _5511 = (_5501 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x) + -0.5f;
            _5512 = (_5502 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y) + -0.5f;
            _5515 = int(floor(_5511));
            _5516 = int(floor(_5512));
            _5519 = _5515 + 1u;
            _5520 = _5516 + 1u;
            if (!(((uint)_5515 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x))) || ((uint)_5516 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y))))) {
              _5535 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_5515, _5516, _5500, 0)))).x);
              _5536 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_5519, _5516, _5500, 0)))).x);
              _5537 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_5515, _5520, _5500, 0)))).x);
              _5538 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_5519, _5520, _5500, 0)))).x);
            } else {
              _5535 = 0.0f;
              _5536 = 0.0f;
              _5537 = 0.0f;
              _5538 = 0.0f;
            }
            _5539 = _5500 << 2;
            _5541 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_5539 + 103))];
            _5547 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_5539 + 104))];
            _5553 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_5539 + 105))];
            _5559 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_5539 + 106))];
            _5564 = _5541.x * _5501;
            _5568 = _5541.y * _5501;
            _5572 = _5541.z * _5501;
            _5576 = _5541.w * _5501;
            _5579 = mad(_5553.w, _5535, mad(_5547.w, _5502, _5576)) + _5559.w;
            _5580 = (mad(_5553.x, _5535, mad(_5547.x, _5502, _5564)) + _5559.x) / _5579;
            _5581 = (mad(_5553.y, _5535, mad(_5547.y, _5502, _5568)) + _5559.y) / _5579;
            _5582 = (mad(_5553.z, _5535, mad(_5547.z, _5502, _5572)) + _5559.z) / _5579;
            _5585 = _5501 + (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.z * 4.0f);
            _5601 = mad(_5553.w, _5536, mad(_5547.w, _5502, (_5541.w * _5585))) + _5559.w;
            _5607 = _5502 - (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.w * 2.0f);
            _5619 = mad(_5553.w, _5537, mad(_5547.w, _5607, _5576)) + _5559.w;
            _5623 = ((mad(_5553.x, _5537, mad(_5547.x, _5607, _5564)) + _5559.x) / _5619) - _5580;
            _5624 = ((mad(_5553.y, _5537, mad(_5547.y, _5607, _5568)) + _5559.y) / _5619) - _5581;
            _5625 = ((mad(_5553.z, _5537, mad(_5547.z, _5607, _5572)) + _5559.z) / _5619) - _5582;
            _5626 = ((mad(_5553.x, _5536, mad(_5547.x, _5502, (_5541.x * _5585))) + _5559.x) / _5601) - _5580;
            _5627 = ((mad(_5553.y, _5536, mad(_5547.y, _5502, (_5541.y * _5585))) + _5559.y) / _5601) - _5581;
            _5628 = ((mad(_5553.z, _5536, mad(_5547.z, _5502, (_5541.z * _5585))) + _5559.z) / _5601) - _5582;
            _5631 = (_5625 * _5627) - (_5624 * _5628);
            _5634 = (_5623 * _5628) - (_5625 * _5626);
            _5637 = (_5624 * _5626) - (_5623 * _5627);
            _5639 = rsqrt(dot(float3(_5631, _5634, _5637), float3(_5631, _5634, _5637)));  // [sem: invLength]
            _5643 = frac(_5511);
            _5648 = (saturate(dot(float3(_4453, _4457, _4460), float3((_5631 * _5639), (_5634 * _5639), (_5637 * _5639)))) * 0.0020000000949949026f) + _5503;
            _5661 = saturate(exp2((_5535 - _5648) * 1442695.0f));  // [sem: expr_sat]
            _5663 = saturate(exp2((_5537 - _5648) * 1442695.0f));  // [sem: expr_sat]
            _5669 = ((saturate(exp2((_5536 - _5648) * 1442695.0f)) - _5661) * _5643) + _5661;
            _5676 = _5535;
            _5677 = _5536;
            _5678 = _5537;
            _5679 = _5538;
  // [sem: expr_sat]
            _5680 = saturate((((_5663 - _5669) + ((saturate(exp2((_5538 - _5648) * 1442695.0f)) - _5663) * _5643)) * frac(_5512)) + _5669);
          } else {
            _5676 = 0.0f;
            _5677 = 0.0f;
            _5678 = 0.0f;
            _5679 = 0.0f;
            _5680 = 1.0f;  // [sem: expr_sat]
          }
          _5700 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].x), _5149, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].x), _5148, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].x) * _5147))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][3].x);
          _5704 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].y), _5149, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].y), _5148, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].y) * _5147))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][3].y);
          _5708 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].z), _5149, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].z), _5148, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].z) * _5147))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][3].z);
          _5711 = 4.0f / __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y;
          _5712 = 1.0f - _5711;
          if (!(((!(_5700 <= _5712)) || (!(_5700 >= _5711))) || (!(_5704 <= _5712)))) {
            _5723 = (_5708 >= -1.0f) && ((_5708 <= 1.0f) && (_5704 >= _5711));
            _5731 = ((int)(uint)(_5723));
            _5732 = select(_5723, 1, _5500);
            _5733 = select(_5723, _5700, _5501);
            _5734 = select(_5723, _5704, _5502);
            _5735 = select(_5723, _5708, _5503);
            _5736 = select(_5723, 9.999999747378752e-06f, _5505);
          } else {
            _5731 = 0;
            _5732 = _5500;
            _5733 = _5501;
            _5734 = _5502;
            _5735 = _5503;
            _5736 = _5505;
          }
          _5756 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].x), _5149, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].x), _5148, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].x) * _5147))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][3].x);
          _5760 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].y), _5149, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].y), _5148, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].y) * _5147))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][3].y);
          _5764 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].z), _5149, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].z), _5148, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].z) * _5147))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][3].z);
          if (!(((!(_5756 <= _5712)) || (!(_5756 >= _5711))) || (!(_5760 <= _5712)))) {
            _5775 = (_5764 >= -1.0f) && ((_5760 >= _5711) && (_5764 <= 1.0f));
            _5783 = select(_5775, 1, _5731);
            _5784 = select(_5775, 0, _5732);
            _5785 = select(_5775, _5756, _5733);
            _5786 = select(_5775, _5760, _5734);
            _5787 = select(_5775, _5764, _5735);
            _5788 = select(_5775, 9.999999747378752e-06f, _5736);
          } else {
            _5783 = _5731;
            _5784 = _5732;
            _5785 = _5733;
            _5786 = _5734;
            _5787 = _5735;
            _5788 = _5736;
          }
          [branch]
          if (!(_5783 == 0)) {
            _5798 = int(floor((_5785 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f));
            _5799 = int(floor((_5786 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f));
            _5802 = _5798 + 1u;
            _5803 = _5799 + 1u;
            if (!(((uint)_5798 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x))) || ((uint)_5799 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y))))) {
              _5818 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_5798, _5799, _5784, 0)))).x);
              _5819 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_5802, _5799, _5784, 0)))).x);
              _5820 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_5798, _5803, _5784, 0)))).x);
              _5821 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_5802, _5803, _5784, 0)))).x);
            } else {
              _5818 = _5676;
              _5819 = _5677;
              _5820 = _5678;
              _5821 = _5679;
            }
            if ((_5152) || ((!(_5152)) && (_sunDirection.y > _moonDirection.y))) {
              _5833 = _sunDirection.x;
              _5834 = _sunDirection.y;
              _5835 = _sunDirection.z;
            } else {
              _5833 = _moonDirection.x;
              _5834 = _moonDirection.y;
              _5835 = _moonDirection.z;
            }
            _5841 = (_5788 - (saturate(-0.0f - dot(float3(_5833, _5834, _5835), float3(_4453, _4457, _4460))) * 9.999999747378752e-05f)) + _5787;
            _5854 = min(((float)((bool)(uint)(_5818 > _5841))), min(min(((float)((bool)(uint)(_5819 > _5841))), ((float)((bool)(uint)(_5820 > _5841)))), ((float)((bool)(uint)(_5821 > _5841)))));
          } else {
            _5854 = _5680;
          }
          _5862 = (_viewPos.x - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.x) + _5147;
          _5863 = (_viewPos.y - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.y) + _5148;
          _5864 = (_viewPos.z - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.z) + _5149;
          _5884 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].x), _5864, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].x), _5863, (_5862 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[3].x);
          _5888 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].y), _5864, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].y), _5863, (_5862 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].y)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[3].y);
          _5892 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].z), _5864, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].z), _5863, (_5862 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].z)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[3].z);
          if (saturate(_5884) == _5884) {
            if ((_5892 >= 9.999999747378752e-05f) && ((_5892 <= 1.0f) && (saturate(_5888) == _5888))) {
              _5907 = frac((_5884 * 1024.0f) + -0.5f);
  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
              _5911 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_5884, _5888));
              _5916 = _5892 + -0.004999999888241291f;
              _5921 = select((_5911.w > _5916), 1.0f, 0.0f);
              _5923 = select((_5911.x > _5916), 1.0f, 0.0f);
              _5930 = ((select((_5911.z > _5916), 1.0f, 0.0f) - _5921) * _5907) + _5921;
  // [sem: expr_sat]
              _5936 = saturate((((((select((_5911.y > _5916), 1.0f, 0.0f) - _5923) * _5907) + _5923) - _5930) * frac((_5888 * 1024.0f) + -0.5f)) + _5930);
            } else {
              _5936 = 1.0f;  // [sem: expr_sat]
            }
          } else {
            _5936 = 1.0f;  // [sem: expr_sat]
          }
          _5939 = _5135 * 20.0f;
          _5940 = _5939 * _5939;
          _5949 = (((exp2(_5940 * -0.48089835047721863f) * 3.0f) + exp2(_5940 * -1.4426950216293335f)) * 0.25f) * (saturate(min(_5854, _5936)) * _5186);
          _5954 = (_5949 * (((_5384 * 0.6131200194358826f) + (_5385 * 0.3395099937915802f)) + (_5386 * 0.047370001673698425f)));
          _5955 = (_5949 * (((_5384 * 0.07020000368356705f) + (_5385 * 0.9163600206375122f)) + (_5386 * 0.013450000435113907f)));
          _5956 = (_5949 * (((_5384 * 0.02061999961733818f) + (_5385 * 0.10958000272512436f)) + (_5386 * 0.8697999715805054f)));
        } else {
          _5954 = -0.0f;
          _5955 = -0.0f;
          _5956 = -0.0f;
        }
        _5962 = saturate(1.0f - (_182 * 0.0010000000474974513f));  // [sem: expr_sat]
        _5970 = ((_5962 * (_5954 - min(0.0f, (-0.0f - _5132)))) + _4362);
        _5971 = ((_5962 * (_5955 - min(0.0f, (-0.0f - _5133)))) + _4363);
        _5972 = (((_5956 - min(0.0f, (-0.0f - _5134))) * _5962) + _4364);
        break;
      }
    } else {
      _5970 = _4362;
      _5971 = _4363;
      _5972 = _4364;
    }
    __3__38__0__1__g_diffuseResultUAV[int2(_82, _84)] = float4(((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - min(15000.0f, (_exposure4.x * _5970)))))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - min(15000.0f, (_exposure4.x * _5971)))))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - min(15000.0f, (_exposure4.x * _5972)))))))), (half)(half(1.0f - _4316)));
    break;
  }
}
