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

Texture2D<uint2> __3__36__0__0__g_normalDepth : register(t70, space36);

Texture2D<uint2> __3__36__0__0__g_normalDepthPrev : register(t71, space36);

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
  int _478;
  int _479;
  int _480;
  int _481;
  int _488;
  int _551;
  int _552;
  int _553;
  int _554;
  int _559;
  int _560;
  int _561;
  int _562;
  int _563;
  int _566;
  int _567;
  int _568;
  int _569;
  int _572;
  int _573;
  int _574;
  int _575;
  int _576;
  bool _599;
  int _600;
  int _601;
  int _602;
  int _603;
  int _604;
  int _613;
  int _614;
  int _615;
  int _616;
  int _617;
  float _673;
  float _674;
  float _675;
  float _676;
  float _677;
  float _678;
  float _679;
  int _680;
  float _892;
  float _893;
  float _894;
  float _895;
  float _912;
  float _913;
  float _914;
  float _934;
  float _935;
  float _936;
  float _958;
  float _959;
  float _960;
  float _967;
  float _968;
  float _969;
  float _970;
  float _971;
  float _972;
  float _973;
  float _974;
  int _975;
  float _976;
  float _977;
  float _978;
  float _979;
  float _980;
  bool _995;
  float _1160;
  float _1161;
  float _1162;
  float _1163;
  float _1174;
  float _1175;
  float _1176;
  float _1177;
  float _1178;
  float _1179;
  float _1180;
  float _1181;
  float _1182;
  int _1183;
  int _1185;
  int _1246;
  int _1247;
  float _1254;
  float _1314;
  float _1315;
  float _1316;
  float _1317;
  int _1323;
  int _1381;
  int _1418;
  float _1419;
  float _1420;
  float _1421;
  float _1422;
  float _1423;
  int _1425;
  float _1642;
  float _1643;
  float _1662;
  float _1663;
  float _1664;
  float _1665;
  float _1666;
  float _1668;
  float _1669;
  float _1670;
  float _1671;
  float _1672;
  float _1673;
  int _1690;
  int _1753;
  int _1754;
  int _1755;
  int _1756;
  int _1772;
  int _1773;
  int _1774;
  int _1775;
  int _1781;
  int _1844;
  int _1845;
  int _1846;
  int _1847;
  int _1852;
  int _1853;
  int _1854;
  int _1855;
  int _1856;
  int _1859;
  int _1860;
  int _1861;
  int _1862;
  int _1865;
  int _1866;
  int _1867;
  int _1868;
  int _1869;
  bool _1892;
  int _1893;
  int _1894;
  int _1895;
  int _1896;
  int _1897;
  int _1906;
  int _1907;
  int _1908;
  int _1909;
  int _1910;
  float _1969;
  float _1970;
  float _1971;
  float _1972;
  int _1973;
  float _2174;
  float _2175;
  float _2176;
  float _2177;
  float _2194;
  float _2195;
  float _2196;
  float _2197;
  float _2225;
  float _2226;
  float _2227;
  float _2228;
  float _2229;
  bool _2243;
  float _2266;
  float _2267;
  float _2268;
  float _2269;
  float _2355;
  float _2356;
  float _2357;
  float _2500;
  float _2501;
  float _2502;
  float _2503;
  half _2504;
  half _2505;
  half _2506;
  half _2507;
  float _2645;
  float _2646;
  float _2647;
  float _2648;
  float _2649;
  float _2650;
  float _2651;
  float _2652;
  half _2653;
  half _2654;
  half _2655;
  half _2656;
  float _2707;
  float _2708;
  float _2709;
  float _2710;
  int _2711;
  int _2712;
  float _2759;
  float _2760;
  float _2761;
  float _2762;
  int _2763;
  int _2764;
  float _2794;
  float _2795;
  float _2796;
  float _2797;
  float _2916;
  float _2917;
  float _2918;
  float _2937;
  float _2938;
  float _2939;
  float _2940;
  float _3022;
  float _3057;
  float _3058;
  float _3059;
  float _3079;
  float _3137;
  float _3238;
  float _3239;
  float _3240;
  float _3308;
  float _3309;
  float _3310;
  float _3311;
  half _3312;
  half _3313;
  half _3314;
  float _3315;
  float _3316;
  float _3317;
  float _3318;
  float _3319;
  float _3451;
  float _3452;
  float _3453;
  float _3557;
  float _3558;
  float _3559;
  float _3560;
  float _3698;
  float _3699;
  float _3700;
  float _3701;
  float _3702;
  float _3733;
  float _3734;
  float _3735;
  float _3736;
  int _3737;
  int _3738;
  float _3769;
  float _3770;
  float _3771;
  float _3772;
  int _3773;
  int _3774;
  float _3804;
  float _3805;
  float _3806;
  float _3807;
  float _3819;
  float _3820;
  float _3821;
  float _3840;
  float _3899;
  float _3956;
  float _4010;
  float _4079;
  float _4080;
  float _4081;
  float _4134;
  float _4135;
  float _4136;
  float _4156;
  float _4157;
  float _4158;
  float _4159;
  int _4170;
  int _4228;
  float _4269;
  float _4295;
  float _4296;
  float _4297;
  float _4354;
  float _4355;
  float _4356;
  int _4459;
  int _4517;
  int _4530;
  float _4531;
  float _4532;
  float _4533;
  float _4534;
  float _4535;
  float _4536;
  float _4537;
  float _4538;
  int _4540;
  int _4590;
  int _4653;
  int _4654;
  int _4655;
  int _4656;
  int _4674;
  int _4675;
  int _4676;
  int _4677;
  int _4684;
  int _4747;
  int _4748;
  int _4749;
  int _4750;
  int _4755;
  int _4756;
  int _4757;
  int _4758;
  int _4759;
  int _4762;
  int _4763;
  int _4764;
  int _4765;
  int _4768;
  int _4769;
  int _4770;
  int _4771;
  int _4772;
  bool _4795;
  int _4796;
  int _4797;
  int _4798;
  int _4799;
  int _4800;
  int _4809;
  int _4810;
  int _4811;
  int _4812;
  int _4813;
  float _4872;
  float _4873;
  float _4874;
  float _4875;
  int _4876;
  float _5071;
  float _5072;
  float _5073;
  float _5074;
  float _5091;
  float _5092;
  float _5093;
  float _5119;
  float _5120;
  float _5121;
  float _5122;
  float _5124;
  float _5125;
  float _5126;
  float _5127;
  float _5156;
  float _5157;
  float _5158;
  float _5178;
  float _5243;
  float _5344;
  float _5345;
  float _5346;
  float _5527;
  float _5528;
  float _5529;
  float _5530;
  float _5668;
  float _5669;
  float _5670;
  float _5671;
  float _5672;
  int _5723;
  int _5724;
  float _5725;
  float _5726;
  float _5727;
  float _5728;
  int _5775;
  int _5776;
  float _5777;
  float _5778;
  float _5779;
  float _5780;
  float _5810;
  float _5811;
  float _5812;
  float _5813;
  float _5825;
  float _5826;
  float _5827;
  float _5846;
  float _5928;
  float _5946;
  float _5947;
  float _5948;
  float _5962;
  float _5963;
  float _5964;
  bool _5994;
  int _5995;
  int _5996;
  int _5997;
  int _5998;
  int _5999;
  bool _6008;
  int _6009;
  int _6010;
  int _6011;
  int _6012;
  int _6013;
  bool _6022;
  int _6023;
  int _6024;
  int _6025;
  int _6026;
  int _6027;
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
  bool _475;
  float _483;
  float4 _490;
  float4 _518;
  int _528;
  int _529;
  int _530;
  int _543;
  int _579;
  uint _580;
  int _582;
  int _587;
  int _596;
  int _606;
  int _607;
  int _618;
  uint _623;
  int _629;
  uint _633;
  float _635;
  float4 _637;
  int _682;
  int _685;
  int _687;
  int16_t _690;
  half _693;
  half _694;
  half _695;
  float _701;
  float _702;
  float _703;
  float _728;
  float _729;
  float _730;
  float _742;
  float _743;
  float _744;
  float _746;
  bool _751;
  float _755;
  float _756;
  float _757;
  float _761;
  float _777;
  float _778;
  float _779;
  bool _797;
  float _798;
  float _799;
  float _800;
  float _803;
  float _806;
  float _809;
  float _810;
  float _814;
  float _815;
  float _816;
  float _842;
  float _846;
  float _871;
  bool _875;
  float _885;
  float _886;
  float _887;
  float _888;
  int _889;
  float _898;
  float _918;
  float _919;
  float _920;
  float _921;
  float _924;
  float _925;
  float _929;
  float _950;
  bool _982;
  float _999;
  float _1000;
  float _1001;
  float _1037;
  float _1038;
  float _1039;
  float _1040;
  float _1043;
  float _1044;
  uint2 _1069;
  float _1076;
  float4 _1107;
  float _1132;
  float _1133;
  float _1134;
  float _1136;
  float _1137;
  float _1138;
  float _1139;
  float _1145;
  float _1147;
  float _1155;
  float _1164;
  float _1165;
  float4 _1187;
  float4 _1215;
  int _1225;
  int _1226;
  int _1227;
  int _1240;
  float _1260;
  float _1262;
  float _1263;
  float _1276;
  float _1277;
  float _1278;
  float _1282;
  float _1283;
  float _1284;
  float _1288;
  float _1289;
  float _1290;
  float _1300;
  float _1321;
  float4 _1325;
  float4 _1353;
  int _1363;
  int _1364;
  int _1365;
  int _1378;
  float _1391;
  float _1392;
  float _1393;
  bool _1397;
  bool _1398;
  bool _1399;
  float _1400;
  float _1401;
  float _1402;
  bool _1403;
  bool _1404;
  bool _1405;
  float4 _1427;
  float4 _1446;
  float _1450;
  float _1451;
  float _1452;
  int _1468;
  float _1475;
  float _1476;
  float _1477;
  float _1478;
  float _1487;
  float _1488;
  float _1489;
  float _1490;
  float _1491;
  float _1492;
  int _1496;
  int _1497;
  int _1498;
  uint4 _1505;
  float _1522;
  float _1545;
  float _1546;
  float _1547;
  float _1578;
  float _1580;
  float _1587;
  float _1599;
  float _1605;
  float _1606;
  float _1622;
  float _1628;
  float _1648;
  float _1649;
  float _1653;
  float _1654;
  float _1655;
  int _1656;
  int _1674;
  float _1677;
  float _1681;
  float _1682;
  float _1683;
  float4 _1692;
  float4 _1720;
  int _1730;
  int _1731;
  int _1732;
  int _1745;
  bool _1769;
  float _1776;
  float4 _1783;
  float4 _1811;
  int _1821;
  int _1822;
  int _1823;
  int _1836;
  int _1872;
  uint _1873;
  int _1875;
  int _1880;
  int _1889;
  int _1899;
  int _1900;
  int _1911;
  uint _1916;
  int _1922;
  uint _1926;
  float _1928;
  float4 _1930;
  float _1965;
  float _1966;
  float _1967;
  int _1975;
  int _1978;
  int _1980;
  int16_t _1983;
  half _1986;
  half _1987;
  half _1988;
  float _1994;
  float _1995;
  float _1996;
  float _2021;
  float _2022;
  float _2023;
  float _2035;
  float _2036;
  float _2037;
  float _2039;
  bool _2044;
  float _2048;
  float _2049;
  float _2050;
  float _2054;
  float _2070;
  float _2071;
  float _2072;
  float _2092;
  float _2095;
  float _2098;
  float _2099;
  float _2103;
  float _2104;
  float _2105;
  float _2131;
  float _2135;
  float _2160;
  float _2167;
  float _2168;
  float _2169;
  float _2170;
  int _2171;
  float _2180;
  float _2205;
  float _2215;
  float _2216;
  float _2217;
  float _2219;
  float _2220;
  float _2232;
  bool _2233;
  float _2247;
  float _2248;
  float _2251;
  float _2272;
  float _2276;
  float _2278;
  float _2282;
  float _2283;
  float _2284;
  float _2314;
  float _2319;
  float _2320;
  half4 _2347;
  float _2364;
  float _2365;
  float _2366;
  float _2371;
  float _2372;
  float _2373;
  float _2393;
  float _2397;
  float _2404;
  float _2405;
  bool _2412;
  float _2421;
  float _2422;
  float _2423;
  float _2443;
  float _2447;
  bool _2458;
  float _2459;
  float _2460;
  float _2461;
  int _2462;
  float _2468;
  float _2469;
  int _2472;
  int _2473;
  uint _2476;
  uint _2477;
  half4 _2494;
  int _2508;
  float4 _2510;
  float4 _2516;
  float4 _2522;
  float4 _2528;
  float _2533;
  float _2537;
  float _2541;
  float _2545;
  float _2548;
  float _2549;
  float _2550;
  float _2551;
  float _2554;
  float _2570;
  float _2576;
  float _2588;
  float _2592;
  float _2593;
  float _2594;
  float _2595;
  float _2596;
  float _2597;
  float _2600;
  float _2603;
  float _2606;
  float _2608;
  float _2609;
  float _2610;
  float _2611;
  float _2612;
  float _2617;
  float _2630;
  float _2632;
  float _2638;
  float _2676;
  float _2680;
  float _2684;
  float _2687;
  float _2688;
  bool _2699;
  float _2732;
  float _2736;
  float _2740;
  bool _2751;
  int _2774;
  int _2775;
  uint _2778;
  uint _2779;
  uint _2798;
  float4 _2800;
  float4 _2806;
  float4 _2812;
  float4 _2818;
  float _2823;
  float _2827;
  float _2831;
  float _2835;
  float _2838;
  float _2839;
  float _2840;
  float _2841;
  float _2844;
  float _2860;
  float _2866;
  float _2878;
  float _2882;
  float _2883;
  float _2884;
  float _2885;
  float _2886;
  float _2887;
  float _2890;
  float _2893;
  float _2896;
  float _2898;
  float _2924;
  float _2945;
  float _2946;
  float _2947;
  float _2948;
  float _2949;
  float _2950;
  float _2970;
  float _2974;
  float _2978;
  float _2993;
  float4 _2997;
  float _3002;
  float _3007;
  float _3009;
  float _3016;
  float _3023;
  half _3024;
  half _3025;
  half _3026;
  half _3040;
  half _3041;
  half _3042;
  bool _3045;
  float _3082;
  float _3088;
  float _3093;
  float _3097;
  float _3099;
  float _3101;
  float _3107;
  float _3108;
  float _3114;
  float2 _3142;
  float _3161;
  float _3162;
  float _3164;
  float _3170;
  float _3173;
  float _3176;
  float _3182;
  float _3183;
  float _3184;
  float _3203;
  float _3211;
  float _3223;
  float _3226;
  float _3232;
  float _3253;
  float _3254;
  float _3260;
  float _3262;
  float _3269;
  float _3270;
  float _3271;
  float _3272;
  float _3291;
  bool _3293;
  float _3294;
  float _3295;
  float _3296;
  float _3297;
  half _3300;
  half _3301;
  half _3302;
  float _3327;
  float _3335;
  float _3346;
  float _3348;
  float _3349;
  float _3350;
  float _3352;
  float _3353;
  float _3354;
  float _3355;
  float _3356;
  float _3357;
  float _3358;
  float _3363;
  float _3365;
  float _3368;
  float _3369;
  float _3371;
  float _3374;
  float _3375;
  float _3383;
  float _3384;
  float _3385;
  float _3386;
  float _3398;
  float _3402;
  float _3413;
  float _3415;
  float _3417;
  float _3422;
  float _3423;
  float _3427;
  float _3428;
  float _3429;
  float _3430;
  float _3458;
  float _3459;
  float _3460;
  float _3461;
  float _3465;
  float _3466;
  float _3467;
  float _3471;
  float _3472;
  float _3473;
  float _3477;
  float _3481;
  bool _3492;
  float _3500;
  float _3501;
  float _3502;
  float _3506;
  float _3510;
  bool _3521;
  float _3523;
  float _3524;
  float _3525;
  float _3526;
  int _3527;
  float _3533;
  float _3534;
  int _3537;
  int _3538;
  uint _3541;
  uint _3542;
  int _3561;
  float4 _3563;
  float4 _3569;
  float4 _3575;
  float4 _3581;
  float _3586;
  float _3590;
  float _3594;
  float _3598;
  float _3601;
  float _3602;
  float _3603;
  float _3604;
  float _3607;
  float _3623;
  float _3629;
  float _3641;
  float _3645;
  float _3646;
  float _3647;
  float _3648;
  float _3649;
  float _3650;
  float _3653;
  float _3656;
  float _3659;
  float _3661;
  float _3665;
  float _3670;
  float _3683;
  float _3685;
  float _3691;
  float _3706;
  float _3710;
  float _3714;
  bool _3725;
  float _3742;
  float _3746;
  float _3750;
  bool _3761;
  int _3784;
  int _3785;
  uint _3788;
  uint _3789;
  float _3827;
  float _3841;
  float _3842;
  float _3843;
  float _3847;
  float _3851;
  float _3855;
  float _3870;
  float4 _3874;
  float _3879;
  float _3884;
  float _3886;
  float _3893;
  uint4 _3905;
  float _3911;
  float _3914;
  float _3918;
  float _3919;
  float _3920;
  float _3921;
  float _3957;
  float _3959;
  float _3960;
  float _3966;
  float _3971;
  float _3974;
  float _3981;
  float _3987;
  float2 _4013;
  float _4017;
  float _4027;
  float _4028;
  float _4029;
  float _4048;
  float _4054;
  float _4064;
  float _4067;
  float _4073;
  float _4095;
  float _4097;
  float _4104;
  float _4105;
  float _4106;
  float _4107;
  float _4123;
  float _4137;
  float _4138;
  float _4139;
  float _4143;
  float _4144;
  float _4145;
  float4 _4172;
  float4 _4200;
  int _4210;
  int _4211;
  int _4212;
  int _4225;
  float _4248;
  float _4252;
  float _4272;
  bool _4273;
  float4 _4281;
  float _4304;
  float _4308;
  float4 _4312;
  float _4318;
  float _4319;
  float _4320;
  float _4321;
  float _4326;
  float _4327;
  float _4331;
  float _4341;
  float _4342;
  float _4343;
  float _4344;
  float _4349;
  float _4366;
  float _4377;
  float _4378;
  float _4383;
  float _4390;
  int _4401;
  float _4414;
  float _4415;
  float _4418;
  float _4421;
  float _4424;
  float _4425;
  float _4427;
  float _4430;
  float _4432;
  float _4433;
  float _4435;
  float _4436;
  float _4445;
  float _4449;
  float _4452;
  float _4457;
  float4 _4461;
  float4 _4489;
  int _4499;
  int _4500;
  int _4501;
  int _4514;
  float4 _4542;
  float4 _4561;
  float _4565;
  float _4566;
  float _4567;
  int _4583;
  float _4588;
  float4 _4592;
  float4 _4620;
  int _4630;
  int _4631;
  int _4632;
  int _4645;
  bool _4671;
  float _4679;
  float4 _4686;
  float4 _4714;
  int _4724;
  int _4725;
  int _4726;
  int _4739;
  int _4775;
  uint _4776;
  int _4778;
  int _4783;
  int _4792;
  int _4802;
  int _4803;
  int _4814;
  uint _4819;
  int _4825;
  uint _4829;
  float _4831;
  float4 _4833;
  float _4868;
  float _4869;
  float _4870;
  int _4878;
  int _4881;
  int _4883;
  int16_t _4886;
  half _4889;
  half _4890;
  half _4891;
  float _4897;
  float _4898;
  float _4899;
  float _4924;
  float _4925;
  float _4926;
  float _4938;
  float _4939;
  float _4940;
  float _4942;
  bool _4947;
  float _4951;
  float _4952;
  float _4953;
  float _4957;
  float _4973;
  float _4974;
  float _4975;
  float _4993;
  float _4994;
  float _4995;
  float _4996;
  float _5000;
  float _5001;
  float _5002;
  float _5028;
  float _5032;
  float _5057;
  float _5064;
  float _5065;
  float _5066;
  float _5067;
  int _5068;
  float _5077;
  float _5094;
  float _5098;
  float _5099;
  float _5100;
  float _5103;
  float _5106;
  float _5110;
  float _5111;
  float _5112;
  int _5113;
  float _5139;
  float _5140;
  float _5141;
  bool _5144;
  float _5185;
  float _5187;
  float _5188;
  float _5194;
  float _5199;
  float _5205;
  float _5213;
  float _5220;
  float2 _5248;
  float _5270;
  float _5288;
  float _5289;
  float _5290;
  float _5309;
  float _5317;
  float _5329;
  float _5332;
  float _5338;
  float _5366;
  float _5368;
  float _5375;
  float _5376;
  float _5377;
  float _5378;
  float _5401;
  float _5402;
  float _5403;
  float _5423;
  float _5427;
  float _5434;
  float _5435;
  bool _5442;
  float _5454;
  float _5455;
  float _5456;
  float _5476;
  float _5480;
  bool _5491;
  int _5492;
  float _5493;
  float _5494;
  float _5495;
  float _5497;
  float _5503;
  float _5504;
  int _5507;
  int _5508;
  uint _5511;
  uint _5512;
  int _5531;
  float4 _5533;
  float4 _5539;
  float4 _5545;
  float4 _5551;
  float _5556;
  float _5560;
  float _5564;
  float _5568;
  float _5571;
  float _5572;
  float _5573;
  float _5574;
  float _5577;
  float _5593;
  float _5599;
  float _5611;
  float _5615;
  float _5616;
  float _5617;
  float _5618;
  float _5619;
  float _5620;
  float _5623;
  float _5626;
  float _5629;
  float _5631;
  float _5635;
  float _5640;
  float _5653;
  float _5655;
  float _5661;
  float _5692;
  float _5696;
  float _5700;
  float _5703;
  float _5704;
  bool _5715;
  float _5748;
  float _5752;
  float _5756;
  bool _5767;
  int _5790;
  int _5791;
  uint _5794;
  uint _5795;
  float _5833;
  float _5854;
  float _5855;
  float _5856;
  float _5876;
  float _5880;
  float _5884;
  float _5899;
  float4 _5903;
  float _5908;
  float _5913;
  float _5915;
  float _5922;
  float _5931;
  float _5932;
  float _5941;
  float _5954;
  int _5991;
  int _6005;
  int _6019;
  int __loop_jump_target = -1;
  int _39[4];
  _55 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 3))]);
  _39[0] = _55.x;
  _39[1] = _55.y;
  _39[2] = _55.z;
  _39[3] = _55.w;
  _65 = _39[min((uint)((((uint)(SV_GroupID.x) >> 1) & 3)), 3u)];
  _69 = select((((int)(SV_GroupID.x) & 1) == 0), _65, ((uint)(_65) >> 16));
  _74 = ((uint)(((int)(_69 << 4)) & 4080)) + SV_GroupThreadID.x;
  _75 = ((uint)(((uint)(_69) >> 4) & 4080)) + SV_GroupThreadID.y;
  _76 = (float)((uint)_74);
  _77 = (float)((uint)_75);
  _90 = ((_bufferSizeAndInvSize.z * 4.0f) * (_76 + 0.5f)) + -1.0f;
  _93 = 1.0f - ((_bufferSizeAndInvSize.w * 4.0f) * (_77 + 0.5f));
  _99 = __3__36__0__0__g_normalDepth.Load(int3(_74, _75, 0));  // [sem: _3__36__0__0__g_normalDepth_load]
  _102 = (uint)((uint)(_99.y)) >> 24;  // [sem: _3__36__0__0__g_normalDepth_load_derived]
  _106 = _102 & 127;
  _121 = min(1.0f, ((((float)((uint)((uint)(_99.x & 1023)))) * 0.001956947147846222f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepth_load_derived]
  _122 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_99.x)) >> 10) & 1023)))) * 0.001956947147846222f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepth_load_derived]
  _123 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_99.x)) >> 20) & 1023)))) * 0.001956947147846222f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepth_load_derived]
  _125 = rsqrt(dot(float3(_121, _122, _123), float3(_121, _122, _123)));  // [sem: invLength]
  _126 = _125 * _121;
  _127 = _125 * _122;
  _128 = _125 * _123;
  _129 = max(1.0000000116860974e-07f, (((float)((uint)((uint)(_99.y & 16777215)))) * 5.960465188081798e-08f));  // [sem: _3__36__0__0__g_normalDepth_load_derived]
  _165 = mad((_invViewProjRelative[2].w), _129, mad((_invViewProjRelative[1].w), _93, ((_invViewProjRelative[0].w) * _90))) + (_invViewProjRelative[3].w);
  _166 = (mad((_invViewProjRelative[2].x), _129, mad((_invViewProjRelative[1].x), _93, ((_invViewProjRelative[0].x) * _90))) + (_invViewProjRelative[3].x)) / _165;
  _167 = (mad((_invViewProjRelative[2].y), _129, mad((_invViewProjRelative[1].y), _93, ((_invViewProjRelative[0].y) * _90))) + (_invViewProjRelative[3].y)) / _165;
  _168 = (mad((_invViewProjRelative[2].z), _129, mad((_invViewProjRelative[1].z), _93, ((_invViewProjRelative[0].z) * _90))) + (_invViewProjRelative[3].z)) / _165;
  _171 = _nearFarProj.x / _129;
  _181 = (float)((uint)((uint)(((int)(((uint)((uint)(_frameNumber.x)) >> 2) * 71)) & 31)));
  if (!((uint)_106 > (uint)11) | !(((uint)_106 < (uint)20) || (_106 == 107))) {
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
      _253 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_251 + 20))];
      _281 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_251 + 36))];
      // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
      // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
      float3 _rndx_surfel_jitter_291 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _247) * _253.w) + _281.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _248) * _253.w) + _281.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _249) * _253.w) + _281.z), float2(_76, _77), _181, _frameNumber.x);
      _291 = int(floor(_rndx_surfel_jitter_291.x));
      _292 = int(floor(_rndx_surfel_jitter_291.y));
      _293 = int(floor(_rndx_surfel_jitter_291.z));
      // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
      if (!(((((int)_291 >= (int)int(_253.x + -63.0f)) && ((int)_291 < (int)int(_253.x + 63.0f))) && (((int)_292 >= (int)int(_253.y + -31.0f)) && ((int)_292 < (int)int(_253.y + 31.0f)))) && (((int)_293 >= (int)int(_253.z + -63.0f)) && ((int)_293 < (int)int(_253.z + 63.0f))))) {
        _306 = _251 + 1;
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
      _322 = min(_211, (float((int)((int)(1 << (_309 & 31)))) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x));
      _326 = (_322 * select(_210, _316, _236)) + _247;
      _327 = (_322 * select(_210, _317, _237)) + _248;
      _328 = (_322 * select(_210, _318, _238)) + _249;
      _330 = 0;
      while(true) {
        _332 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_330 + 20))];
        _360 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_330 + 36))];
        // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
        // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
        float3 _rndx_surfel_jitter_370 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _326) * _332.w) + _360.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _327) * _332.w) + _360.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _328) * _332.w) + _360.z), float2(_76, _77), _181, _frameNumber.x);
        _370 = int(floor(_rndx_surfel_jitter_370.x));
        _371 = int(floor(_rndx_surfel_jitter_370.y));
        _372 = int(floor(_rndx_surfel_jitter_370.z));
        // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
        if (!(((((int)_370 >= (int)int(_332.x + -63.0f)) && ((int)_370 < (int)int(_332.x + 63.0f))) && (((int)_371 >= (int)int(_332.y + -31.0f)) && ((int)_371 < (int)int(_332.y + 31.0f)))) && (((int)_372 >= (int)int(_332.z + -63.0f)) && ((int)_372 < (int)int(_332.z + 63.0f))))) {
          _385 = _330 + 1;
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
              _398 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_396 + 20))];
              _426 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_396 + 36))];
              // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
              // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
              float3 _rndx_surfel_jitter_436 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _326) * _398.w) + _426.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _327) * _398.w) + _426.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _328) * _398.w) + _426.z), float2(_76, _77), _181, _frameNumber.x);
              _436 = int(floor(_rndx_surfel_jitter_436.x));
              _437 = int(floor(_rndx_surfel_jitter_436.y));
              _438 = int(floor(_rndx_surfel_jitter_436.z));
              // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
              if (((((int)_436 >= (int)int(_398.x + -63.0f)) && ((int)_436 < (int)int(_398.x + 63.0f))) && (((int)_437 >= (int)int(_398.y + -31.0f)) && ((int)_437 < (int)int(_398.y + 31.0f)))) && (((int)_438 >= (int)int(_398.z + -63.0f)) && ((int)_438 < (int)int(_398.z + 63.0f)))) {
                _459 = (_436 & 127);
                _460 = (_437 & 63);
                _461 = (_438 & 127);
                _462 = _396;
              } else {
                _451 = _396 + 1;
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
                _475 = (((((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_459, _460, ((int)(((uint)(((int)(_462 * 130)) | 1)) + _461)), 0)))).x) & 4194303) == 0);
                [branch]
                if (!_475) {
                  _478 = _459;
                  _479 = _460;
                  _480 = _461;
                  _481 = _462;
                } else {
                  _478 = -10000;
                  _479 = -10000;
                  _480 = -10000;
                  _481 = -10000;
                }
                _483 = (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 0.5f) * float((int)((int)(1 << (_462 & 31))));
                _488 = 0;
                while(true) {
                  _490 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_488 + 20))];
                  _518 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_488 + 36))];
                  // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
                  // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
                  float3 _rndx_surfel_jitter_528 = RenoDXSurfelVoxelJitter(float3((((_326 - _483) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x) * _490.w) + _518.x, (((_327 - _483) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y) * _490.w) + _518.y, (((_328 - _483) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z) * _490.w) + _518.z), float2(_76, _77), _181, _frameNumber.x);
                  _528 = int(floor(_rndx_surfel_jitter_528.x));
                  _529 = int(floor(_rndx_surfel_jitter_528.y));
                  _530 = int(floor(_rndx_surfel_jitter_528.z));
                  // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
                  if (((((int)_528 >= (int)int(_490.x + -63.0f)) && ((int)_528 < (int)int(_490.x + 63.0f))) && (((int)_529 >= (int)int(_490.y + -31.0f)) && ((int)_529 < (int)int(_490.y + 31.0f)))) && (((int)_530 >= (int)int(_490.z + -63.0f)) && ((int)_530 < (int)int(_490.z + 63.0f)))) {
                    _551 = (_528 & 127);
                    _552 = (_529 & 63);
                    _553 = (_530 & 127);
                    _554 = _488;
                  } else {
                    _543 = _488 + 1;
                    if ((uint)_543 < (uint)8) {
                      _488 = _543;
                      continue;
                    } else {
                      _551 = -10000;
                      _552 = -10000;
                      _553 = -10000;
                      _554 = -10000;
                    }
                  }
                  if (!((uint)_554 > (uint)5)) {
                    if (_475) {
                      _559 = 0;
                      _560 = _481;
                      _561 = _480;
                      _562 = _479;
                      _563 = _478;
                      while(true) {
                        _572 = 0;
                        _573 = _560;
                        _574 = _561;
                        _575 = _562;
                        _576 = _563;
                        while(true) {
                          _579 = _559 + _553;
                          _580 = _579 + ((uint)(((int)(_554 * 130)) | 1));
                          _587 = _572 + _552;
                          if (!(((uint)_587 > (uint)63) || ((uint)(_551 | _579) > (uint)127))) {
                            _596 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_551, _587, _580, 0)))).x) & 4194303;
                            _599 = (_596 != 0);
                            _600 = _596;
                            _601 = _554;
                            _602 = _579;
                            _603 = _587;
                            _604 = _551;
                          } else {
                            _599 = false;
                            _600 = 0;
                            _601 = 0;
                            _602 = 0;
                            _603 = 0;
                            _604 = 0;
                          }
                          if (!_599) {
                            _606 = _551 + 1;
                            _607 = _572 + _552;
                            if (!(((uint)_607 > (uint)63) || ((uint)(_606 | _579) > (uint)127))) {
                              _6019 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_606, _607, _580, 0)))).x) & 4194303;
                              _6022 = (_6019 != 0);
                              _6023 = _6019;
                              _6024 = _554;
                              _6025 = _579;
                              _6026 = _607;
                              _6027 = _606;
                            } else {
                              _6022 = false;
                              _6023 = 0;
                              _6024 = 0;
                              _6025 = 0;
                              _6026 = 0;
                              _6027 = 0;
                            }
                            if (!_6022) {
                              _613 = _576;
                              _614 = _575;
                              _615 = _574;
                              _616 = _573;
                              _617 = 0;
                            } else {
                              _613 = _6027;
                              _614 = _6026;
                              _615 = _6025;
                              _616 = _6024;
                              _617 = _6023;
                            }
                          } else {
                            _613 = _604;
                            _614 = _603;
                            _615 = _602;
                            _616 = _601;
                            _617 = _600;
                          }
                          while(true) {
                            _618 = _572 + 1;
                            if (((int)_618 < (int)2) && (_617 == 0)) {
                              _572 = _618;
                              _573 = _616;
                              _574 = _615;
                              _575 = _614;
                              _576 = _613;
                              __loop_jump_target = 571;
                              break;
                            }
                            while(true) {
                              _582 = _559 + 1;
                              if (((int)_582 < (int)2) && (_617 == 0)) {
                                _559 = _582;
                                _560 = _616;
                                _561 = _615;
                                _562 = _614;
                                _563 = _613;
                                __loop_jump_target = 558;
                                break;
                              }
                              while(true) {
                                _566 = _616;
                                _567 = _615;
                                _568 = _614;
                                _569 = _613;
                                break;
                              }
                              break;
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
                        if (__loop_jump_target == 558) {
                          __loop_jump_target = -1;
                          continue;
                        }
                        if (__loop_jump_target != -1) {
                          break;
                        }
                        break;
                      }
                    } else {
                      _566 = _481;
                      _567 = _480;
                      _568 = _479;
                      _569 = _478;
                    }
                    if ((uint)_566 < (uint)6) {
                      _623 = _566 * 130;
                      _629 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_569, _568, ((int)(((uint)(_623 | 1)) + _567)), 0)))).x) & 4194303;
                      [branch]
                      if (!(_629 == 0)) {
                        _633 = 1 << (_566 & 31);
                        _635 = float((int)(_633)) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                        _637 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((uint)(_566 + 20u))];
                        _673 = 0.0f;
                        _674 = 0.0f;
                        _675 = 0.0f;
                        _676 = _239;
                        _677 = _240;
                        _678 = _241;
                        _679 = 0.0f;
                        _680 = 0;
                        while(true) {
                          _682 = (_629 + -1) + _680;
                          _685 = __3__37__0__0__g_surfelDataBuffer[_682]._baseColor;
                          _687 = __3__37__0__0__g_surfelDataBuffer[_682]._normal;
                          _690 = __3__37__0__0__g_surfelDataBuffer[_682]._radius;
                          if (!(_685 == 0)) {
                            _693 = __3__37__0__0__g_surfelDataBuffer[_682]._radiance.z;
                            _694 = __3__37__0__0__g_surfelDataBuffer[_682]._radiance.y;
                            _695 = __3__37__0__0__g_surfelDataBuffer[_682]._radiance.x;
                            _701 = (float)((uint)((uint)(_685 & 255)));
                            _702 = (float)((uint)((uint)(((uint)(_685) >> 8) & 255)));
                            _703 = (float)((uint)((uint)(((uint)(_685) >> 16) & 255)));
                            _728 = select(((_701 * 0.003921568859368563f) < 0.040449999272823334f), (_701 * 0.0003035269910469651f), exp2(log2((_701 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
                            _729 = select(((_702 * 0.003921568859368563f) < 0.040449999272823334f), (_702 * 0.0003035269910469651f), exp2(log2((_702 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
                            _730 = select(((_703 * 0.003921568859368563f) < 0.040449999272823334f), (_703 * 0.0003035269910469651f), exp2(log2((_703 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
                            _742 = (((float)((uint)((uint)(_687 & 255)))) * 0.007874015718698502f) + -1.0f;
                            _743 = (((float)((uint)((uint)(((uint)(_687) >> 8) & 255)))) * 0.007874015718698502f) + -1.0f;
                            _744 = (((float)((uint)((uint)(((uint)(_687) >> 16) & 255)))) * 0.007874015718698502f) + -1.0f;
                            _746 = rsqrt(dot(float3(_742, _743, _744), float3(_742, _743, _744)));  // [sem: invLength]
                            _751 = ((_687 & 16777215) == 0);
                            _755 = float(_695);
                            _756 = float(_694);
                            _757 = float(_693);
                            _761 = (_635 * 0.0019607844296842813f) * ((float)((uint16_t)((uint)(_690 & 255))));
                            _777 = (((((float)((uint)((uint)((uint)(_685) >> 24)))) * 0.003937007859349251f) + -0.5f) * _635) + ((((_637.x + -63.5f) + float((int)(((int)((_569 + 64u) - (uint)(int(_637.x)))) & 127))) * _635) - _viewPos.x);
                            _778 = (((((float)((uint)((uint)((uint)(_687) >> 24)))) * 0.003937007859349251f) + -0.5f) * _635) + ((((_637.y + -31.5f) + float((int)(((int)((_568 + 32u) - (uint)(int(_637.y)))) & 63))) * _635) - _viewPos.y);
                            _779 = (((((float)((uint16_t)((uint)((uint16_t)(_690) >> 8)))) * 0.003937007859349251f) + -0.5f) * _635) + ((((_637.z + -63.5f) + float((int)(((int)((_567 + 64u) - (uint)(int(_637.z)))) & 127))) * _635) - _viewPos.z);
                            _797 = (_223.w == 0.0f);  // [sem: _3__36__0__0__g_raytracingNormal_load_derived]
                            _798 = select(_797, _316, _676);
                            _799 = select(_797, _317, _677);
                            _800 = select(_797, _318, _678);
                            _803 = ((-0.0f - _166) - _244) + _777;
                            _806 = ((-0.0f - _167) - _245) + _778;
                            _809 = ((-0.0f - _168) - _246) + _779;
                            _810 = dot(float3(_803, _806, _809), float3(_798, _799, _800));
                            _814 = _803 - (_810 * _798);
                            _815 = _806 - (_810 * _799);
                            _816 = _809 - (_810 * _800);
                            _842 = 1.0f / ((float)((uint)_633));
                            _846 = frac(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _779) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z) * _842);
                            _871 = select(((int)_566 > (int)5), 1.0f, ((saturate((saturate(dot(float3(_316, _317, _318), float3(select(_751, _316, (_746 * _742)), select(_751, _317, (_746 * _743)), select(_751, _318, (_746 * _744))))) + -0.03125f) * 1.0322580337524414f) * ((float)((bool)(uint)(dot(float3(_814, _815, _816), float3(_814, _815, _816)) < ((_761 * _761) * 16.0f))))) * ((float)((bool)(uint)(((__3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _777) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _842), (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _778) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y) * _842), (((((float)((uint)_623)) + 1.0f) + ((select((_846 < 0.0f), 1.0f, 0.0f) + _846) * 128.0f)) * 0.000961538462433964f)), 0.0f)).x) > ((_635 * 0.25f) * (saturate((dot(float3(_755, _756, _757), float3(0.21267099678516388f, 0.7151600122451782f, 0.0721689984202385f)) * 9.999999747378752e-05f) / _exposure3.w) + 1.0f)))))));
                            _875 = (!(_217.w > 0.0f)) || ((_685 & 16777215) == 16777215);
                            _885 = ((select(_875, (((_729 * 0.3395099937915802f) + (_728 * 0.6131200194358826f)) + (_730 * 0.047370001673698425f)), _217.x) * _755) * _871) + _673;
                            _886 = ((select(_875, (((_729 * 0.9163600206375122f) + (_728 * 0.07020000368356705f)) + (_730 * 0.013450000435113907f)), _217.y) * _756) * _871) + _674;
                            _887 = ((select(_875, (((_729 * 0.10958000272512436f) + (_728 * 0.02061999961733818f)) + (_730 * 0.8697999715805054f)), _217.z) * _757) * _871) + _675;
                            _888 = _871 + _679;
                            _889 = _680 + 1;
                            if ((uint)_889 < (uint)4) {
                              _673 = _885;
                              _674 = _886;
                              _675 = _887;
                              _676 = _798;
                              _677 = _799;
                              _678 = _800;
                              _679 = _888;
                              _680 = _889;
                              continue;
                            } else {
                              _892 = _885;
                              _893 = _886;
                              _894 = _887;
                              _895 = _888;
                            }
                          } else {
                            _892 = _673;
                            _893 = _674;
                            _894 = _675;
                            _895 = _679;
                          }
                          if (_895 > 0.0f) {
                            _898 = 1.0f / _895;
                            _912 = (-0.0f - min(0.0f, (-0.0f - (_892 * _898))));
                            _913 = (-0.0f - min(0.0f, (-0.0f - (_893 * _898))));
                            _914 = (-0.0f - min(0.0f, (-0.0f - (_894 * _898))));
                          } else {
                            _912 = _892;
                            _913 = _893;
                            _914 = _894;
                          }
                          break;
                        }
                      } else {
                        _912 = 0.0f;
                        _913 = 0.0f;
                        _914 = 0.0f;
                      }
                    } else {
                      _912 = 0.0f;
                      _913 = 0.0f;
                      _914 = 0.0f;
                    }
                  } else {
                    _912 = 0.0f;
                    _913 = 0.0f;
                    _914 = 0.0f;
                  }
                  break;
                }
              } else {
                _912 = 0.0f;
                _913 = 0.0f;
                _914 = 0.0f;
              }
              _918 = max(9.999999974752427e-07f, (_exposure3.w * 0.0010000000474974513f));
              _919 = max(_918, _912);
              _920 = max(_918, _913);
              _921 = max(_918, _914);
              _924 = dot(float3(_919, _920, _921), float3(0.21267099678516388f, 0.7151600122451782f, 0.0721689984202385f));
              _925 = min((max(0.0005000000237487257f, _exposure3.w) * 512.0f), _924);
              _929 = max(9.999999717180685e-10f, _924);
              _934 = ((_925 * _919) / _929);
              _935 = ((_925 * _920) / _929);
              _936 = ((_925 * _921) / _929);
              break;
            }
          } else {
            _934 = 0.0f;
            _935 = 0.0f;
            _936 = 0.0f;
          }
          if (saturate(_223.w) == 0.0f) {
            _950 = (exp2((saturate(saturate(_217.w)) * 20.0f) + -8.0f) + -0.00390625f) * (1.0f / (((_211 * _211) * 0.10000000149011612f) + 1.0f));
            _958 = ((_950 * _217.x) + _934);
            _959 = ((_950 * _217.y) + _935);
            _960 = ((_950 * _217.z) + _936);
          } else {
            _958 = _934;
            _959 = _935;
            _960 = _936;
          }
          _967 = _239;
          _968 = _240;
          _969 = _241;
          _970 = _223.w;
          _971 = _217.x;
          _972 = _217.y;
          _973 = _217.z;
          _974 = _217.w;
          _975 = _243;
          _976 = (_renderParams2.y * _958);
          _977 = (_renderParams2.y * _959);
          _978 = (_renderParams2.y * _960);
          _979 = 1.0f;
          _980 = _211;
        } else {
          _967 = _239;
          _968 = _240;
          _969 = _241;
          _970 = _223.w;
          _971 = _217.x;
          _972 = _217.y;
          _973 = _217.z;
          _974 = _217.w;
          _975 = _243;
          _976 = 0.0f;
          _977 = 0.0f;
          _978 = 0.0f;
          _979 = 1.0f;
          _980 = _211;
        }
        break;
      }
      break;
    }
  } else {
    _967 = 0.0f;
    _968 = 0.0f;
    _969 = 0.0f;
    _970 = 0.0f;
    _971 = 0.0f;
    _972 = 0.0f;
    _973 = 0.0f;
    _974 = 0.0f;
    _975 = 0;
    _976 = 0.0f;
    _977 = 0.0f;
    _978 = 0.0f;
    _979 = 0.0f;
    _980 = 0.0f;
  }
  _982 = (_980 > 0.0f);
  if ((_171 > (_lightingParams.z * 0.875f)) && (!_982)) {
    _995 = (_171 < (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 11585.1259765625f));
  } else {
    _995 = false;
  }
  _999 = (_980 * _207) + _166;
  _1000 = (_980 * _208) + _167;
  _1001 = (_980 * _209) + _168;
  _1037 = mad((_viewProjRelativePrev[2].w), _1001, mad((_viewProjRelativePrev[1].w), _1000, ((_viewProjRelativePrev[0].w) * _999))) + (_viewProjRelativePrev[3].w);
  _1038 = (mad((_viewProjRelativePrev[2].x), _1001, mad((_viewProjRelativePrev[1].x), _1000, ((_viewProjRelativePrev[0].x) * _999))) + (_viewProjRelativePrev[3].x)) / _1037;
  _1039 = (mad((_viewProjRelativePrev[2].y), _1001, mad((_viewProjRelativePrev[1].y), _1000, ((_viewProjRelativePrev[0].y) * _999))) + (_viewProjRelativePrev[3].y)) / _1037;
  _1040 = (mad((_viewProjRelativePrev[2].z), _1001, mad((_viewProjRelativePrev[1].z), _1000, ((_viewProjRelativePrev[0].z) * _999))) + (_viewProjRelativePrev[3].z)) / _1037;
  _1043 = (_1038 * 0.5f) + 0.5f;
  _1044 = 0.5f - (_1039 * 0.5f);
  if (_210) {
    if (_982) {
  // [sem: _3__36__0__0__g_normalDepthPrev_load]
      _1069 = __3__36__0__0__g_normalDepthPrev.Load(int3(int(((_1038 * 0.25f) + 0.25f) * _bufferSizeAndInvSize.x), int((0.25f - (_1039 * 0.25f)) * _bufferSizeAndInvSize.y), 0));
      _1076 = _nearFarProj.x / max(1.0000000116860974e-07f, (((float)((uint)((uint)(_1069.y & 16777215)))) * 5.960465188081798e-08f));
      if ((_1040 > 0.0f) && (((_1043 >= 0.0f) && (_1043 <= 1.0f)) && ((_1044 >= 0.0f) && (_1044 <= 1.0f)))) {
        if (((_1076 - dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z))) > 0.0f) && (abs(_1076 - _1037) < max(0.5f, (_1037 * 0.05000000074505806f)))) {
          _1107 = __3__36__0__0__g_sceneColor.SampleLevel(__3__40__0__0__g_samplerClamp, float2(_1043, _1044), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
          if (!(!(_1107.w >= 0.0f))) {
            _1132 = min(1.0f, ((((float)((uint)((uint)(_1069.x & 1023)))) * 0.001956947147846222f) + -1.0f));
            _1133 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1069.x)) >> 10) & 1023)))) * 0.001956947147846222f) + -1.0f));
            _1134 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1069.x)) >> 20) & 1023)))) * 0.001956947147846222f) + -1.0f));
            _1136 = rsqrt(dot(float3(_1132, _1133, _1134), float3(_1132, _1133, _1134)));  // [sem: invLength]
            _1137 = _1136 * _1132;
            _1138 = _1136 * _1133;
            _1139 = _1136 * _1134;
            _1145 = select((dot(float3((-0.0f - _207), (-0.0f - _208), (-0.0f - _209)), float3(_1137, _1138, _1139)) > 0.20000000298023224f), 1.0f, 0.0f);
            _1147 = saturate(_171 * 0.009999999776482582f);  // [sem: expr_sat]
            _1155 = (float)((bool)(uint)(abs(_nearFarProj.x - _1076) < (_1076 * 0.5f)));
            _1160 = _1137;
            _1161 = _1138;
            _1162 = _1139;
            _1163 = 0.800000011920929f;
            _1164 = _renderParams2.x * _renderParams2.x;
            _1165 = ((_1145 - (_1145 * _1147)) + _1147) * _1164;
            _1174 = ((_980 * 0.9998999834060669f) * _renderParams2.x);
            _1175 = _1160;
            _1176 = _1161;
            _1177 = _1162;
            _1178 = _1163;
            _1179 = ((_1165 * min(10000.0f, _1107.x)) * _1155);
            _1180 = ((_1165 * min(10000.0f, _1107.y)) * _1155);
            _1181 = ((_1165 * min(10000.0f, _1107.z)) * _1155);
            _1182 = _1164;
            _1183 = 1;
          } else {
            _1174 = _980;
            _1175 = _967;
            _1176 = _968;
            _1177 = _969;
            _1178 = _970;
            _1179 = 0.0f;
            _1180 = 0.0f;
            _1181 = 0.0f;
            _1182 = 0.0f;
            _1183 = 0;
          }
        } else {
          _1174 = _980;
          _1175 = _967;
          _1176 = _968;
          _1177 = _969;
          _1178 = _970;
          _1179 = 0.0f;
          _1180 = 0.0f;
          _1181 = 0.0f;
          _1182 = 0.0f;
          _1183 = 0;
        }
      } else {
        _1174 = _980;
        _1175 = _967;
        _1176 = _968;
        _1177 = _969;
        _1178 = _970;
        _1179 = 0.0f;
        _1180 = 0.0f;
        _1181 = 0.0f;
        _1182 = 0.0f;
        _1183 = 0;
      }
    } else {
      _1174 = _980;
      _1175 = _967;
      _1176 = _968;
      _1177 = _969;
      _1178 = _970;
      _1179 = 0.0f;
      _1180 = 0.0f;
      _1181 = 0.0f;
      _1182 = 0.0f;
      _1183 = 0;
    }
  } else {
    if (_982 && ((_1040 > 0.0f) && (((_1043 >= 0.0f) && (_1043 <= 1.0f)) && ((_1044 >= 0.0f) && (_1044 <= 1.0f))))) {
  // [sem: _3__36__0__0__g_normalDepthPrev_load]
      _1069 = __3__36__0__0__g_normalDepthPrev.Load(int3(int(((_1038 * 0.25f) + 0.25f) * _bufferSizeAndInvSize.x), int((0.25f - (_1039 * 0.25f)) * _bufferSizeAndInvSize.y), 0));
      _1076 = _nearFarProj.x / max(1.0000000116860974e-07f, (((float)((uint)((uint)(_1069.y & 16777215)))) * 5.960465188081798e-08f));
      if ((_1040 > 0.0f) && (((_1043 >= 0.0f) && (_1043 <= 1.0f)) && ((_1044 >= 0.0f) && (_1044 <= 1.0f)))) {
        if (((_1076 - dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z))) > 0.0f) && (abs(_1076 - _1037) < max(0.5f, (_1037 * 0.05000000074505806f)))) {
          _1107 = __3__36__0__0__g_sceneColor.SampleLevel(__3__40__0__0__g_samplerClamp, float2(_1043, _1044), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
          if (!(!(_1107.w >= 0.0f))) {
            _1132 = min(1.0f, ((((float)((uint)((uint)(_1069.x & 1023)))) * 0.001956947147846222f) + -1.0f));
            _1133 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1069.x)) >> 10) & 1023)))) * 0.001956947147846222f) + -1.0f));
            _1134 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1069.x)) >> 20) & 1023)))) * 0.001956947147846222f) + -1.0f));
            _1136 = rsqrt(dot(float3(_1132, _1133, _1134), float3(_1132, _1133, _1134)));  // [sem: invLength]
            _1137 = _1136 * _1132;
            _1138 = _1136 * _1133;
            _1139 = _1136 * _1134;
            _1145 = select((dot(float3((-0.0f - _207), (-0.0f - _208), (-0.0f - _209)), float3(_1137, _1138, _1139)) > 0.20000000298023224f), 1.0f, 0.0f);
            _1147 = saturate(_171 * 0.009999999776482582f);  // [sem: expr_sat]
            _1155 = (float)((bool)(uint)(abs(_nearFarProj.x - _1076) < (_1076 * 0.5f)));
            _1160 = _967;
            _1161 = _968;
            _1162 = _969;
            _1163 = _970;
            _1164 = _renderParams2.x * _renderParams2.x;
            _1165 = ((_1145 - (_1145 * _1147)) + _1147) * _1164;
            _1174 = ((_980 * 0.9998999834060669f) * _renderParams2.x);
            _1175 = _1160;
            _1176 = _1161;
            _1177 = _1162;
            _1178 = _1163;
            _1179 = ((_1165 * min(10000.0f, _1107.x)) * _1155);
            _1180 = ((_1165 * min(10000.0f, _1107.y)) * _1155);
            _1181 = ((_1165 * min(10000.0f, _1107.z)) * _1155);
            _1182 = _1164;
            _1183 = 1;
          } else {
            _1174 = _980;
            _1175 = _967;
            _1176 = _968;
            _1177 = _969;
            _1178 = _970;
            _1179 = 0.0f;
            _1180 = 0.0f;
            _1181 = 0.0f;
            _1182 = 0.0f;
            _1183 = 0;
          }
        } else {
          _1174 = _980;
          _1175 = _967;
          _1176 = _968;
          _1177 = _969;
          _1178 = _970;
          _1179 = 0.0f;
          _1180 = 0.0f;
          _1181 = 0.0f;
          _1182 = 0.0f;
          _1183 = 0;
        }
      } else {
        _1174 = _980;
        _1175 = _967;
        _1176 = _968;
        _1177 = _969;
        _1178 = _970;
        _1179 = 0.0f;
        _1180 = 0.0f;
        _1181 = 0.0f;
        _1182 = 0.0f;
        _1183 = 0;
      }
    } else {
      _1174 = _980;
      _1175 = _967;
      _1176 = _968;
      _1177 = _969;
      _1178 = _970;
      _1179 = 0.0f;
      _1180 = 0.0f;
      _1181 = 0.0f;
      _1182 = 0.0f;
      _1183 = 0;
    }
  }
  _1185 = 0;
  while(true) {
    _1187 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1185 + 20))];
    _1215 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1185 + 36))];
    // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
    // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
    float3 _rndx_surfel_jitter_1225 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _166) * _1187.w) + _1215.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _167) * _1187.w) + _1215.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _168) * _1187.w) + _1215.z), float2(_76, _77), _181, _frameNumber.x);
    _1225 = int(floor(_rndx_surfel_jitter_1225.x));
    _1226 = int(floor(_rndx_surfel_jitter_1225.y));
    _1227 = int(floor(_rndx_surfel_jitter_1225.z));
    // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
    if (((((int)_1225 >= (int)int(_1187.x + -63.0f)) && ((int)_1225 < (int)int(_1187.x + 63.0f))) && (((int)_1226 >= (int)int(_1187.y + -31.0f)) && ((int)_1226 < (int)int(_1187.y + 31.0f)))) && (((int)_1227 >= (int)int(_1187.z + -63.0f)) && ((int)_1227 < (int)int(_1187.z + 63.0f)))) {
      _1246 = (_1225 & 127);
      _1247 = _1185;
    } else {
      _1240 = _1185 + 1;
      if ((uint)_1240 < (uint)8) {
        _1185 = _1240;
        continue;
      } else {
        _1246 = -10000;
        _1247 = -10000;
      }
    }
    if (!(_1246 == -10000)) {
      _1254 = float((int)((int)(1 << (_1247 & 31))));
    } else {
      _1254 = 1.0f;
    }
    _1260 = select(_198, (((frac(frac(dot(float2(((_181 * 32.665000915527344f) + _76), ((_181 * 11.8149995803833f) + _77)), float2(0.0671105608344078f, 0.005837149918079376f))) * 52.98291778564453f) * 2.0f) * _1254) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x), 0.0f);
    if (_995) {
      _1262 = _lightingParams.z * 1.3434898853302002f;
      _1263 = -0.0f - _1262;
      if (((_168 > _1263) && (_168 < _1262)) && (((_166 > _1263) && (_166 < _1262)) && ((_167 > _1263) && (_167 < _1262)))) {
        _1276 = 1.0f / _207;
        _1277 = 1.0f / _208;
        _1278 = 1.0f / _209;
        _1282 = _1276 * (_1263 - _166);
        _1283 = _1277 * (_1263 - _167);
        _1284 = _1278 * (_1263 - _168);
        _1288 = _1276 * (_1262 - _166);
        _1289 = _1277 * (_1262 - _167);
        _1290 = _1278 * (_1262 - _168);
        _1300 = min(min(max(_1282, _1288), max(_1283, _1289)), max(_1284, _1290));
        if ((_1300 > 0.0f) && ((_1300 >= 0.0f) && (max(max(min(_1282, _1288), min(_1283, _1289)), min(_1284, _1290)) <= _1300))) {
          _1314 = _1300;
          _1315 = ((_1300 * _207) + _166);
          _1316 = ((_1300 * _208) + _167);
          _1317 = ((_1300 * _209) + _168);
        } else {
          _1314 = 0.0f;
          _1315 = _166;
          _1316 = _167;
          _1317 = _168;
        }
      } else {
        _1314 = 0.0f;
        _1315 = _166;
        _1316 = _167;
        _1317 = _168;
      }
      _1321 = select(((_1174 > 0.0f) && (_1182 >= 1.0f)), _1174, 256.0f);
      _1323 = 0;
      while(true) {
        _1325 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1323 + 20))];
        _1353 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1323 + 36))];
        // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
        // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
        float3 _rndx_surfel_jitter_1363 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _1315) * _1325.w) + _1353.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _1316) * _1325.w) + _1353.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _1317) * _1325.w) + _1353.z), float2(_76, _77), _181, _frameNumber.x);
        _1363 = int(floor(_rndx_surfel_jitter_1363.x));
        _1364 = int(floor(_rndx_surfel_jitter_1363.y));
        _1365 = int(floor(_rndx_surfel_jitter_1363.z));
        // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
        if (!(((((int)_1363 >= (int)int(_1325.x + -63.0f)) && ((int)_1363 < (int)int(_1325.x + 63.0f))) && (((int)_1364 >= (int)int(_1325.y + -31.0f)) && ((int)_1364 < (int)int(_1325.y + 31.0f)))) && (((int)_1365 >= (int)int(_1325.z + -63.0f)) && ((int)_1365 < (int)int(_1325.z + 63.0f))))) {
          _1378 = _1323 + 1;
          if ((uint)_1378 < (uint)8) {
            _1323 = _1378;
            continue;
          } else {
            _1381 = -10000;
          }
        } else {
          _1381 = _1323;
        }
        if (!((_1381 == -10000) || ((int)_1381 > (int)4))) {
          _1391 = _1315 + (_1260 * _207);
          _1392 = _1316 + (_1260 * _208);
          _1393 = _1317 + (_1260 * _209);
          _1397 = (_207 == 0.0f);
          _1398 = (_208 == 0.0f);
          _1399 = (_209 == 0.0f);
          _1400 = select(_1397, 0.0f, (1.0f / _207));
          _1401 = select(_1398, 0.0f, (1.0f / _208));
          _1402 = select(_1399, 0.0f, (1.0f / _209));
          _1403 = (_207 > 0.0f);
          _1404 = (_208 > 0.0f);
          _1405 = (_209 > 0.0f);
          if (_1321 > 0.0f) {
            _1418 = 0;
            _1419 = 0.0f;
            _1420 = 0.0f;
            _1421 = _1393;
            _1422 = _1392;
            _1423 = _1391;
            while(true) {
              _1425 = 0;
              while(true) {
                _1427 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1425 + 20))];
                _1446 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1425 + 36))];
                _1450 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _1423) * _1427.w) + _1446.x;
                _1451 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _1422) * _1427.w) + _1446.y;
                _1452 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _1421) * _1427.w) + _1446.z;
                if (!((_1452 >= (_1427.z + -63.0f)) && ((_1450 >= (_1427.x + -63.0f)) && (_1451 >= (_1427.y + -31.0f)))) || (((_1452 >= (_1427.z + -63.0f)) && ((_1450 >= (_1427.x + -63.0f)) && (_1451 >= (_1427.y + -31.0f)))) && (!((_1452 < (_1427.z + 63.0f)) && ((_1450 < (_1427.x + 63.0f)) && (_1451 < (_1427.y + 31.0f))))))) {
                  _1468 = _1425 + 1;
                  if ((int)_1468 < (int)8) {
                    _1425 = _1468;
                    continue;
                  } else {
                    _1668 = _1420;
                    _1669 = _1421;
                    _1670 = _1422;
                    _1671 = _1423;
                    _1672 = _1419;
                    _1673 = -10000.0f;
                  }
                } else {
                  if (_1425 == -10000) {
                    _1662 = _1420;
                    _1663 = _1421;
                    _1664 = _1422;
                    _1665 = _1423;
                    _1666 = _1419;
                    _1668 = _1662;
                    _1669 = _1663;
                    _1670 = _1664;
                    _1671 = _1665;
                    _1672 = _1666;
                    _1673 = -10000.0f;
                  } else {
                    _1475 = float((int)((int)(1 << (_1425 & 31))));
                    _1476 = _1475 * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                    _1477 = 1.0f / _1475;
                    _1478 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.y * 0.0078125f;
                    _1487 = _1477 * ((_1423 * _1478) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x);
                    _1488 = _1477 * (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.y * 0.015625f) * _1422) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y);
                    _1489 = _1477 * ((_1421 * _1478) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z);
                    _1490 = _1487 * 64.0f;
                    _1491 = _1488 * 32.0f;
                    _1492 = _1489 * 64.0f;
                    _1496 = int(floor(_1490));
                    _1497 = int(floor(_1491));
                    _1498 = int(floor(_1492));
  // [sem: _3__36__0__0__g_axisAlignedDistance_load]
                    _1505 = __3__36__0__0__g_axisAlignedDistanceTextures.Load(int4((_1496 & 63), (_1497 & 31), ((_1498 & 63) | (_1425 << 6)), 0));
                    _1522 = saturate(((float)((uint)((uint)((uint)((uint)(_1505.w)) >> 2)))) * 0.01587301678955555f);  // [sem: expr_sat]
                    _1545 = _1490 - float((int)(_1496));
                    _1546 = _1491 - float((int)(_1497));
                    _1547 = _1492 - float((int)(_1498));
                    _1578 = max(((_1476 * 0.5f) * min(min(select(_1397, 999999.0f, ((select(_1403, 1.0f, 0.0f) - frac(_1487 * 256.0f)) * _1400)), select(_1398, 999999.0f, ((select(_1404, 1.0f, 0.0f) - frac(_1488 * 128.0f)) * _1401))), select(_1399, 999999.0f, ((select(_1405, 1.0f, 0.0f) - frac(_1489 * 256.0f)) * _1402)))), ((_1476 * 2.0f) * min(min(select(_1397, 999999.0f, (select(_1403, ((0.009999999776482582f - _1545) + ((float)((uint)((uint)(((uint)((uint)(_1505.x)) >> 4) & 15))))), ((0.9900000095367432f - _1545) - ((float)((uint)((uint)(_1505.x & 15)))))) * _1400)), select(_1398, 999999.0f, (select(_1404, ((0.009999999776482582f - _1546) + ((float)((uint)((uint)(((uint)((uint)(_1505.y)) >> 4) & 15))))), ((0.9900000095367432f - _1546) - ((float)((uint)((uint)(_1505.y & 15)))))) * _1401))), select(_1399, 999999.0f, (select(_1405, ((0.009999999776482582f - _1547) + ((float)((uint)((uint)(((uint)((uint)(_1505.z)) >> 4) & 15))))), ((0.9900000095367432f - _1547) - ((float)((uint)((uint)(_1505.z & 15)))))) * _1402)))));
                    _1580 = (float)((bool)(uint)(_1522 > 0.0f));
                    if (((uint)_1418 < (uint)16) || (_1420 < min(32.0f, (_1476 * 32.0f)))) {
                      _1587 = frac(_1489);
  // [sem: _3__36__0__1__g_signedDistanceVoxels_sampleLod]
                      _1599 = __3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3(_1487, _1488, (((((float)((uint)(_1425 * 130))) + 1.0f) + ((select((_1587 < 0.0f), 1.0f, 0.0f) + _1587) * 128.0f)) * 0.000961538462433964f)), 0.0f);
                      _1605 = _1420 * 0.009999999776482582f;
                      _1606 = 1.0f / _1476;
                      _1622 = (_1599.x + ((_171 * _171) * 0.00019999999494757503f)) / (((max(((_1476 * 1.0606600046157837f) * saturate((_1420 * 0.5f) + 0.5f)), _1605) - _1605) * saturate(((max(1.0f, (_1606 * 0.5f)) * _1606) * min(_1420, max(0.0f, (_1321 - _1420)))) + -1.0f)) + _1605);
                      _1628 = saturate((saturate(1.0f - (_1622 * _1622)) * _1580) + _1419);  // [sem: expr_sat]
                      if (!(((int)_1425 > (int)2) || (_1599.x > _1476))) {
                        _1642 = _1628;  // [sem: expr_sat]
                        _1643 = min(_1578, _1599.x);
                      } else {
                        _1642 = _1628;  // [sem: expr_sat]
                        _1643 = _1578;
                      }
                    } else {
                      if (!((_1505.w & 1) == 0)) {
                        _1642 = saturate((_1580 * 0.5f) + _1419);  // [sem: expr_sat]
                        _1643 = _1578;
                      } else {
                        _1642 = _1419;  // [sem: expr_sat]
                        _1643 = _1578;
                      }
                    }
                    if (!(_1642 >= 0.5f)) {
                      _1648 = max(_1643, (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 0.05000000074505806f));
                      _1649 = _1648 + _1420;
                      _1653 = (_1648 * _207) + _1423;
                      _1654 = (_1648 * _208) + _1422;
                      _1655 = (_1648 * _209) + _1421;
                      _1656 = _1418 + 1;
                      if (((uint)_1656 < (uint)192) && (_1649 < _1321)) {
                        _1418 = _1656;
                        _1419 = _1642;
                        _1420 = _1649;
                        _1421 = _1655;
                        _1422 = _1654;
                        _1423 = _1653;
                        __loop_jump_target = 1417;
                        break;
                      } else {
                        _1662 = _1649;
                        _1663 = _1655;
                        _1664 = _1654;
                        _1665 = _1653;
                        _1666 = _1642;
                        _1668 = _1662;
                        _1669 = _1663;
                        _1670 = _1664;
                        _1671 = _1665;
                        _1672 = _1666;
                        _1673 = -10000.0f;
                      }
                    } else {
                      _1668 = _1420;
                      _1669 = _1421;
                      _1670 = _1422;
                      _1671 = _1423;
                      _1672 = _1522;
                      _1673 = float((int)(_1425));
                    }
                  }
                }
                break;
              }
              if (__loop_jump_target == 1417) {
                __loop_jump_target = -1;
                continue;
              }
              if (__loop_jump_target != -1) {
                break;
              }
              break;
            }
          } else {
            _1668 = 0.0f;
            _1669 = _1393;
            _1670 = _1392;
            _1671 = _1391;
            _1672 = 0.0f;
            _1673 = -10000.0f;
          }
          _1674 = int(_1673);
          if ((uint)_1674 < (uint)8) {
            _1677 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 0.5f;
            _1681 = _1671 - (_1677 * _207);
            _1682 = _1670 - (_1677 * _208);
            _1683 = _1669 - (_1677 * _209);
            if ((int)_1674 < (int)6) {
              _1690 = 0;
              while(true) {
                _1692 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1690 + 20))];
                _1720 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1690 + 36))];
                // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
                // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
                float3 _rndx_surfel_jitter_1730 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _1681) * _1692.w) + _1720.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _1682) * _1692.w) + _1720.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _1683) * _1692.w) + _1720.z), float2(_76, _77), _181, _frameNumber.x);
                _1730 = int(floor(_rndx_surfel_jitter_1730.x));
                _1731 = int(floor(_rndx_surfel_jitter_1730.y));
                _1732 = int(floor(_rndx_surfel_jitter_1730.z));
                // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
                if (((((int)_1730 >= (int)int(_1692.x + -63.0f)) && ((int)_1730 < (int)int(_1692.x + 63.0f))) && (((int)_1731 >= (int)int(_1692.y + -31.0f)) && ((int)_1731 < (int)int(_1692.y + 31.0f)))) && (((int)_1732 >= (int)int(_1692.z + -63.0f)) && ((int)_1732 < (int)int(_1692.z + 63.0f)))) {
                  _1753 = (_1730 & 127);
                  _1754 = (_1731 & 63);
                  _1755 = (_1732 & 127);
                  _1756 = _1690;
                } else {
                  _1745 = _1690 + 1;
                  if ((uint)_1745 < (uint)8) {
                    _1690 = _1745;
                    continue;
                  } else {
                    _1753 = -10000;
                    _1754 = -10000;
                    _1755 = -10000;
                    _1756 = -10000;
                  }
                }
                if (!((uint)_1756 > (uint)5)) {
                  _1769 = (((((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1753, _1754, ((int)(((uint)(((int)(_1756 * 130)) | 1)) + _1755)), 0)))).x) & 4194303) == 0);
                  [branch]
                  if (!_1769) {
                    _1772 = _1753;
                    _1773 = _1754;
                    _1774 = _1755;
                    _1775 = _1756;
                  } else {
                    _1772 = -10000;
                    _1773 = -10000;
                    _1774 = -10000;
                    _1775 = -10000;
                  }
                  _1776 = _1677 * float((int)((int)(1 << (_1756 & 31))));
                  _1781 = 0;
                  while(true) {
                    _1783 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1781 + 20))];
                    _1811 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1781 + 36))];
                    // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
                    // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
                    float3 _rndx_surfel_jitter_1821 = RenoDXSurfelVoxelJitter(float3((((_1681 - _1776) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x) * _1783.w) + _1811.x, (((_1682 - _1776) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y) * _1783.w) + _1811.y, (((_1683 - _1776) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z) * _1783.w) + _1811.z), float2(_76, _77), _181, _frameNumber.x);
                    _1821 = int(floor(_rndx_surfel_jitter_1821.x));
                    _1822 = int(floor(_rndx_surfel_jitter_1821.y));
                    _1823 = int(floor(_rndx_surfel_jitter_1821.z));
                    // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
                    if (((((int)_1821 >= (int)int(_1783.x + -63.0f)) && ((int)_1821 < (int)int(_1783.x + 63.0f))) && (((int)_1822 >= (int)int(_1783.y + -31.0f)) && ((int)_1822 < (int)int(_1783.y + 31.0f)))) && (((int)_1823 >= (int)int(_1783.z + -63.0f)) && ((int)_1823 < (int)int(_1783.z + 63.0f)))) {
                      _1844 = (_1821 & 127);
                      _1845 = (_1822 & 63);
                      _1846 = (_1823 & 127);
                      _1847 = _1781;
                    } else {
                      _1836 = _1781 + 1;
                      if ((uint)_1836 < (uint)8) {
                        _1781 = _1836;
                        continue;
                      } else {
                        _1844 = -10000;
                        _1845 = -10000;
                        _1846 = -10000;
                        _1847 = -10000;
                      }
                    }
                    if (!((uint)_1847 > (uint)5)) {
                      if (_1769) {
                        _1852 = 0;
                        _1853 = _1775;
                        _1854 = _1774;
                        _1855 = _1773;
                        _1856 = _1772;
                        while(true) {
                          _1865 = 0;
                          _1866 = _1853;
                          _1867 = _1854;
                          _1868 = _1855;
                          _1869 = _1856;
                          while(true) {
                            _1872 = _1852 + _1846;
                            _1873 = _1872 + ((uint)(((int)(_1847 * 130)) | 1));
                            _1880 = _1865 + _1845;
                            if (!(((uint)_1880 > (uint)63) || ((uint)(_1844 | _1872) > (uint)127))) {
                              _1889 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1844, _1880, _1873, 0)))).x) & 4194303;
                              _1892 = (_1889 != 0);
                              _1893 = _1889;
                              _1894 = _1847;
                              _1895 = _1872;
                              _1896 = _1880;
                              _1897 = _1844;
                            } else {
                              _1892 = false;
                              _1893 = 0;
                              _1894 = 0;
                              _1895 = 0;
                              _1896 = 0;
                              _1897 = 0;
                            }
                            if (!_1892) {
                              _1899 = _1844 + 1;
                              _1900 = _1865 + _1845;
                              if (!(((uint)_1900 > (uint)63) || ((uint)(_1899 | _1872) > (uint)127))) {
                                _6005 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1899, _1900, _1873, 0)))).x) & 4194303;
                                _6008 = (_6005 != 0);
                                _6009 = _6005;
                                _6010 = _1847;
                                _6011 = _1872;
                                _6012 = _1900;
                                _6013 = _1899;
                              } else {
                                _6008 = false;
                                _6009 = 0;
                                _6010 = 0;
                                _6011 = 0;
                                _6012 = 0;
                                _6013 = 0;
                              }
                              if (!_6008) {
                                _1906 = _1869;
                                _1907 = _1868;
                                _1908 = _1867;
                                _1909 = _1866;
                                _1910 = 0;
                              } else {
                                _1906 = _6013;
                                _1907 = _6012;
                                _1908 = _6011;
                                _1909 = _6010;
                                _1910 = _6009;
                              }
                            } else {
                              _1906 = _1897;
                              _1907 = _1896;
                              _1908 = _1895;
                              _1909 = _1894;
                              _1910 = _1893;
                            }
                            while(true) {
                              _1911 = _1865 + 1;
                              if (((int)_1911 < (int)2) && (_1910 == 0)) {
                                _1865 = _1911;
                                _1866 = _1909;
                                _1867 = _1908;
                                _1868 = _1907;
                                _1869 = _1906;
                                __loop_jump_target = 1864;
                                break;
                              }
                              while(true) {
                                _1875 = _1852 + 1;
                                if (((int)_1875 < (int)2) && (_1910 == 0)) {
                                  _1852 = _1875;
                                  _1853 = _1909;
                                  _1854 = _1908;
                                  _1855 = _1907;
                                  _1856 = _1906;
                                  __loop_jump_target = 1851;
                                  break;
                                }
                                while(true) {
                                  _1859 = _1909;
                                  _1860 = _1908;
                                  _1861 = _1907;
                                  _1862 = _1906;
                                  break;
                                }
                                break;
                              }
                              if (__loop_jump_target != -1) {
                                break;
                              }
                              break;
                            }
                            if (__loop_jump_target == 1864) {
                              __loop_jump_target = -1;
                              continue;
                            }
                            if (__loop_jump_target != -1) {
                              break;
                            }
                            break;
                          }
                          if (__loop_jump_target == 1851) {
                            __loop_jump_target = -1;
                            continue;
                          }
                          if (__loop_jump_target != -1) {
                            break;
                          }
                          break;
                        }
                      } else {
                        _1859 = _1775;
                        _1860 = _1774;
                        _1861 = _1773;
                        _1862 = _1772;
                      }
                      if ((uint)_1859 < (uint)6) {
                        _1916 = _1859 * 130;
                        _1922 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1862, _1861, ((int)(((uint)(_1916 | 1)) + _1860)), 0)))).x) & 4194303;
                        [branch]
                        if (!(_1922 == 0)) {
                          _1926 = 1 << (_1859 & 31);
                          _1928 = float((int)(_1926)) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                          _1930 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((uint)(_1859 + 20u))];
                          _1965 = -0.0f - _207;
                          _1966 = -0.0f - _208;
                          _1967 = -0.0f - _209;
                          _1969 = 0.0f;
                          _1970 = 0.0f;
                          _1971 = 0.0f;
                          _1972 = 0.0f;
                          _1973 = 0;
                          while(true) {
                            _1975 = (_1922 + -1) + _1973;
                            _1978 = __3__37__0__0__g_surfelDataBuffer[_1975]._baseColor;
                            _1980 = __3__37__0__0__g_surfelDataBuffer[_1975]._normal;
                            _1983 = __3__37__0__0__g_surfelDataBuffer[_1975]._radius;
                            if (!(_1978 == 0)) {
                              _1986 = __3__37__0__0__g_surfelDataBuffer[_1975]._radiance.z;
                              _1987 = __3__37__0__0__g_surfelDataBuffer[_1975]._radiance.y;
                              _1988 = __3__37__0__0__g_surfelDataBuffer[_1975]._radiance.x;
                              _1994 = (float)((uint)((uint)(_1978 & 255)));
                              _1995 = (float)((uint)((uint)(((uint)(_1978) >> 8) & 255)));
                              _1996 = (float)((uint)((uint)(((uint)(_1978) >> 16) & 255)));
                              _2021 = select(((_1994 * 0.003921568859368563f) < 0.040449999272823334f), (_1994 * 0.0003035269910469651f), exp2(log2((_1994 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
                              _2022 = select(((_1995 * 0.003921568859368563f) < 0.040449999272823334f), (_1995 * 0.0003035269910469651f), exp2(log2((_1995 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
                              _2023 = select(((_1996 * 0.003921568859368563f) < 0.040449999272823334f), (_1996 * 0.0003035269910469651f), exp2(log2((_1996 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
                              _2035 = (((float)((uint)((uint)(_1980 & 255)))) * 0.007874015718698502f) + -1.0f;
                              _2036 = (((float)((uint)((uint)(((uint)(_1980) >> 8) & 255)))) * 0.007874015718698502f) + -1.0f;
                              _2037 = (((float)((uint)((uint)(((uint)(_1980) >> 16) & 255)))) * 0.007874015718698502f) + -1.0f;
                              _2039 = rsqrt(dot(float3(_2035, _2036, _2037), float3(_2035, _2036, _2037)));  // [sem: invLength]
                              _2044 = ((_1980 & 16777215) == 0);
                              _2048 = float(_1988);
                              _2049 = float(_1987);
                              _2050 = float(_1986);
                              _2054 = (_1928 * 0.0019607844296842813f) * ((float)((uint16_t)((uint)(_1983 & 255))));
                              _2070 = (((((float)((uint)((uint)((uint)(_1978) >> 24)))) * 0.003937007859349251f) + -0.5f) * _1928) + ((((_1930.x + -63.5f) + float((int)(((int)((_1862 + 64u) - (uint)(int(_1930.x)))) & 127))) * _1928) - _viewPos.x);
                              _2071 = (((((float)((uint)((uint)((uint)(_1980) >> 24)))) * 0.003937007859349251f) + -0.5f) * _1928) + ((((_1930.y + -31.5f) + float((int)(((int)((_1861 + 32u) - (uint)(int(_1930.y)))) & 63))) * _1928) - _viewPos.y);
                              _2072 = (((((float)((uint16_t)((uint)((uint16_t)(_1983) >> 8)))) * 0.003937007859349251f) + -0.5f) * _1928) + ((((_1930.z + -63.5f) + float((int)(((int)((_1860 + 64u) - (uint)(int(_1930.z)))) & 127))) * _1928) - _viewPos.z);
                              _2092 = ((-0.0f - _1315) - (_1668 * _207)) + _2070;
                              _2095 = ((-0.0f - _1316) - (_1668 * _208)) + _2071;
                              _2098 = ((-0.0f - _1317) - (_1668 * _209)) + _2072;
                              _2099 = dot(float3(_2092, _2095, _2098), float3(_1965, _1966, _1967));
                              _2103 = _2092 - (_2099 * _1965);
                              _2104 = _2095 - (_2099 * _1966);
                              _2105 = _2098 - (_2099 * _1967);
                              _2131 = 1.0f / ((float)((uint)_1926));
                              _2135 = frac(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _2072) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z) * _2131);
                              _2160 = select(((int)_1859 > (int)5), 1.0f, ((saturate((saturate(dot(float3(_1965, _1966, _1967), float3(select(_2044, _1965, (_2039 * _2035)), select(_2044, _1966, (_2039 * _2036)), select(_2044, _1967, (_2039 * _2037))))) + -0.03125f) * 1.0322580337524414f) * ((float)((bool)(uint)(dot(float3(_2103, _2104, _2105), float3(_2103, _2104, _2105)) < ((_2054 * _2054) * 16.0f))))) * ((float)((bool)(uint)(((__3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _2070) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _2131), (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _2071) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y) * _2131), (((((float)((uint)_1916)) + 1.0f) + ((select((_2135 < 0.0f), 1.0f, 0.0f) + _2135) * 128.0f)) * 0.000961538462433964f)), 0.0f)).x) > ((_1928 * 0.25f) * (saturate((dot(float3(_2048, _2049, _2050), float3(0.21267099678516388f, 0.7151600122451782f, 0.0721689984202385f)) * 9.999999747378752e-05f) / _exposure3.w) + 1.0f)))))));
                              _2167 = (((((_2022 * 0.3395099937915802f) + (_2021 * 0.6131200194358826f)) + (_2023 * 0.047370001673698425f)) * _2048) * _2160) + _1969;
                              _2168 = (((((_2022 * 0.9163600206375122f) + (_2021 * 0.07020000368356705f)) + (_2023 * 0.013450000435113907f)) * _2049) * _2160) + _1970;
                              _2169 = (((((_2022 * 0.10958000272512436f) + (_2021 * 0.02061999961733818f)) + (_2023 * 0.8697999715805054f)) * _2050) * _2160) + _1971;
                              _2170 = _2160 + _1972;
                              _2171 = _1973 + 1;
                              if ((uint)_2171 < (uint)4) {
                                _1969 = _2167;
                                _1970 = _2168;
                                _1971 = _2169;
                                _1972 = _2170;
                                _1973 = _2171;
                                continue;
                              } else {
                                _2174 = _2167;
                                _2175 = _2168;
                                _2176 = _2169;
                                _2177 = _2170;
                              }
                            } else {
                              _2174 = _1969;
                              _2175 = _1970;
                              _2176 = _1971;
                              _2177 = _1972;
                            }
                            if (_2177 > 0.0f) {
                              _2180 = 1.0f / _2177;
                              _2194 = 1.0f;
                              _2195 = (-0.0f - min(0.0f, (-0.0f - (_2174 * _2180))));
                              _2196 = (-0.0f - min(0.0f, (-0.0f - (_2175 * _2180))));
                              _2197 = (-0.0f - min(0.0f, (-0.0f - (_2176 * _2180))));
                            } else {
                              _2194 = 0.0f;
                              _2195 = _2174;
                              _2196 = _2175;
                              _2197 = _2176;
                            }
                            break;
                          }
                        } else {
                          _2194 = 0.0f;
                          _2195 = 0.0f;
                          _2196 = 0.0f;
                          _2197 = 0.0f;
                        }
                      } else {
                        _2194 = 0.0f;
                        _2195 = 0.0f;
                        _2196 = 0.0f;
                        _2197 = 0.0f;
                      }
                    } else {
                      _2194 = 1.0f;
                      _2195 = 0.0f;
                      _2196 = 0.0f;
                      _2197 = 0.0f;
                    }
                    break;
                  }
                } else {
                  _2194 = 1.0f;
                  _2195 = 0.0f;
                  _2196 = 0.0f;
                  _2197 = 0.0f;
                }
                break;
              }
            } else {
              _2194 = 1.0f;
              _2195 = 0.0f;
              _2196 = 0.0f;
              _2197 = 0.0f;
            }
            _2205 = saturate((_1668 * 0.25f) / (float((int)((int)(1 << (_1381 & 31)))) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x)) * _2194;
            _2215 = -0.0f - min(0.0f, (-0.0f - (_2195 * _2205)));
            _2216 = -0.0f - min(0.0f, (-0.0f - (_2196 * _2205)));
            _2217 = -0.0f - min(0.0f, (-0.0f - (_2197 * _2205)));
            _2219 = select(((int)_1674 > (int)-1), 1.0f, 0.0f);
            _2220 = max(9.999999974752427e-07f, _1668);
            if (_2220 > 0.0f) {
              _2225 = (_2220 + _1314);
              _2226 = _2215;
              _2227 = _2216;
              _2228 = _2217;
              _2229 = _2219;
            } else {
              _2225 = _2220;
              _2226 = _2215;
              _2227 = _2216;
              _2228 = _2217;
              _2229 = _2219;
            }
          } else {
            _2225 = 0.0f;
            _2226 = 0.0f;
            _2227 = 0.0f;
            _2228 = 0.0f;
            _2229 = _1672;
          }
        } else {
          _2225 = 0.0f;
          _2226 = 0.0f;
          _2227 = 0.0f;
          _2228 = 0.0f;
          _2229 = 0.0f;
        }
        break;
      }
    } else {
      _2225 = _980;
      _2226 = _976;
      _2227 = _977;
      _2228 = _978;
      _2229 = _979;
    }
    _2232 = saturate(5.000000476837158f - (_171 * 0.01953125186264515f));  // [sem: expr_sat]
    _2233 = (_1183 != 0);
    if ((_1182 > 0.0f) && ((_1174 > 0.0f) && _2233)) {
      if (!(_1174 < _2225)) {
        _2243 = (_2225 <= 0.0f);
      } else {
        _2243 = true;
      }
    } else {
      _2243 = false;
    }
    _2247 = saturate(max(select(_2243, 1.0f, 0.0f), (1.0f - _2232)));  // [sem: expr_sat]
    _2248 = _2247 * _1182;
    _2251 = min(_2232, saturate(1.0f - _2248));
    if (!(_2229 == 0.0f)) {
      _2266 = ((_2251 * _2226) + (_2247 * _1179));
      _2267 = ((_2251 * _2227) + (_2247 * _1180));
      _2268 = ((_2251 * _2228) + (_2247 * _1181));
      _2269 = ((_2251 * _2229) + _2248);
    } else {
      _2266 = _1179;
      _2267 = _1180;
      _2268 = _1181;
      _2269 = _1182;
    }
    _2272 = 1.0f / max(9.999999974752427e-07f, (_2251 + _2247));
    _2276 = _2272 * ((_2251 * _2225) + (_2247 * _1174));
    _2278 = _2272 * _2247;
    _2282 = (_2276 * _207) + _166;
    _2283 = (_2276 * _208) + _167;
    _2284 = (_2276 * _209) + _168;
    [branch]
    if (!(_2276 <= 0.0f)) {
      _2314 = mad((_viewProjRelative[2].w), _2284, mad((_viewProjRelative[1].w), _2283, ((_viewProjRelative[0].w) * _2282))) + (_viewProjRelative[3].w);
      _2319 = (((mad((_viewProjRelative[2].x), _2284, mad((_viewProjRelative[1].x), _2283, ((_viewProjRelative[0].x) * _2282))) + (_viewProjRelative[3].x)) / _2314) * 0.5f) + 0.5f;
      _2320 = 0.5f - (((mad((_viewProjRelative[2].y), _2284, mad((_viewProjRelative[1].y), _2283, ((_viewProjRelative[0].y) * _2282))) + (_viewProjRelative[3].y)) / _2314) * 0.5f);
      if (((_2319 >= 0.0f) && (_2319 <= 1.0f)) && ((_2320 >= 0.0f) && (_2320 <= 1.0f))) {
        if (_2233 && (((mad((_viewProjRelative[2].z), _2284, mad((_viewProjRelative[1].z), _2283, ((_viewProjRelative[0].z) * _2282))) + (_viewProjRelative[3].z)) / _2314) > 0.0f)) {
          if (_renderParams.x == 0.0f) {
  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod]
            half4 _2347 = __3__36__0__0__g_sceneShadowColor.SampleLevel(__3__40__0__0__g_sampler, float2(_2319, _2320), 0.0f);
            _2355 = float(_2347.x);  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2356 = float(_2347.y);  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2357 = float(_2347.z);  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          } else {
            _2355 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2356 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2357 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          }
        } else {
          _2355 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          _2356 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          _2357 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
        }
      } else {
        _2355 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
        _2356 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
        _2357 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
      }
      _2364 = _viewPos.x + _2282;
      _2365 = _viewPos.y + _2283;
      _2366 = _viewPos.z + _2284;
      _2371 = _2364 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].x);
      _2372 = _2365 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].y);
      _2373 = _2366 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].z);
      _2393 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].x), _2373, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].x), _2372, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].x) * _2371))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][3].x);
      _2397 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].y), _2373, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].y), _2372, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].y) * _2371))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][3].y);
      _2404 = 2.0f / __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y;
      _2405 = 1.0f - _2404;
      _2412 = (((!(_2393 <= _2405)) || (!(_2393 >= _2404))) || (!(_2397 <= _2405))) || (!(_2397 >= _2404));
      _2421 = _2364 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].x);
      _2422 = _2365 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].y);
      _2423 = _2366 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].z);
      _2443 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].x), _2423, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].x), _2422, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].x) * _2421))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][3].x);
      _2447 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].y), _2423, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].y), _2422, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].y) * _2421))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][3].y);
      _2458 = (((!(_2443 <= _2405)) || (!(_2443 >= _2404))) || (!(_2447 <= _2405))) || (!(_2447 >= _2404));
      _2459 = select(_2458, select(_2412, 0.0f, _2393), _2443);
      _2460 = select(_2458, select(_2412, 0.0f, _2397), _2447);
      _2461 = select(_2458, select(_2412, 0.0f, (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].z), _2373, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].z), _2372, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].z) * _2371))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][3].z))), (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].z), _2423, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].z), _2422, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].z) * _2421))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][3].z)));
      _2462 = select(_2458, select(_2412, -1, 1), 0);
      [branch]
      if (!(_2462 == -1)) {
        _2468 = (_2459 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x) + -0.5f;
        _2469 = (_2460 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y) + -0.5f;
        _2472 = int(floor(_2468));
        _2473 = int(floor(_2469));
        _2476 = _2472 + 1u;
        _2477 = _2473 + 1u;
        if (!(((uint)_2472 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x))) || ((uint)_2473 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y))))) {
  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod]
          half4 _2494 = __3__36__0__0__g_shadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_2459, _2460, ((float)((uint)_2462))), 0.0f);
          _2500 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2472, _2473, _2462, 0)))).x);
          _2501 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2476, _2473, _2462, 0)))).x);
          _2502 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2472, _2477, _2462, 0)))).x);
          _2503 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2476, _2477, _2462, 0)))).x);
          _2504 = (half)(_2494.x);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2505 = (half)(_2494.y);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2506 = (half)(_2494.z);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2507 = (half)(_2494.w);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
        } else {
          _2500 = 0.0f;
          _2501 = 0.0f;
          _2502 = 0.0f;
          _2503 = 0.0f;
          _2504 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2505 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2506 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2507 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
        }
        _2508 = _2462 << 2;
        _2510 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_2508 + 103))];
        _2516 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_2508 + 104))];
        _2522 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_2508 + 105))];
        _2528 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_2508 + 106))];
        _2533 = _2510.x * _2459;
        _2537 = _2510.y * _2459;
        _2541 = _2510.z * _2459;
        _2545 = _2510.w * _2459;
        _2548 = mad(_2522.w, _2500, mad(_2516.w, _2460, _2545)) + _2528.w;
        _2549 = (mad(_2522.x, _2500, mad(_2516.x, _2460, _2533)) + _2528.x) / _2548;
        _2550 = (mad(_2522.y, _2500, mad(_2516.y, _2460, _2537)) + _2528.y) / _2548;
        _2551 = (mad(_2522.z, _2500, mad(_2516.z, _2460, _2541)) + _2528.z) / _2548;
        _2554 = _2459 + (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.z * 4.0f);
        _2570 = mad(_2522.w, _2501, mad(_2516.w, _2460, (_2510.w * _2554))) + _2528.w;
        _2576 = _2460 - (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.w * 2.0f);
        _2588 = mad(_2522.w, _2502, mad(_2516.w, _2576, _2545)) + _2528.w;
        _2592 = ((mad(_2522.x, _2502, mad(_2516.x, _2576, _2533)) + _2528.x) / _2588) - _2549;
        _2593 = ((mad(_2522.y, _2502, mad(_2516.y, _2576, _2537)) + _2528.y) / _2588) - _2550;
        _2594 = ((mad(_2522.z, _2502, mad(_2516.z, _2576, _2541)) + _2528.z) / _2588) - _2551;
        _2595 = ((mad(_2522.x, _2501, mad(_2516.x, _2460, (_2510.x * _2554))) + _2528.x) / _2570) - _2549;
        _2596 = ((mad(_2522.y, _2501, mad(_2516.y, _2460, (_2510.y * _2554))) + _2528.y) / _2570) - _2550;
        _2597 = ((mad(_2522.z, _2501, mad(_2516.z, _2460, (_2510.z * _2554))) + _2528.z) / _2570) - _2551;
        _2600 = (_2594 * _2596) - (_2593 * _2597);
        _2603 = (_2592 * _2597) - (_2594 * _2595);
        _2606 = (_2593 * _2595) - (_2592 * _2596);
        _2608 = rsqrt(dot(float3(_2600, _2603, _2606), float3(_2600, _2603, _2606)));  // [sem: invLength]
        _2609 = _2600 * _2608;
        _2610 = _2603 * _2608;
        _2611 = _2606 * _2608;
        _2612 = frac(_2468);
        _2617 = (saturate(dot(float3(_207, _208, _209), float3(_2609, _2610, _2611))) * 0.0020000000949949026f) + _2461;
        _2630 = saturate(exp2((_2500 - _2617) * 1442695.0f));  // [sem: expr_sat]
        _2632 = saturate(exp2((_2502 - _2617) * 1442695.0f));  // [sem: expr_sat]
        _2638 = ((saturate(exp2((_2501 - _2617) * 1442695.0f)) - _2630) * _2612) + _2630;
        _2645 = _2609;
        _2646 = _2610;
        _2647 = _2611;
  // [sem: expr_sat]
        _2648 = saturate((((_2632 - _2638) + ((saturate(exp2((_2503 - _2617) * 1442695.0f)) - _2632) * _2612)) * frac(_2469)) + _2638);
        _2649 = _2500;
        _2650 = _2501;
        _2651 = _2502;
        _2652 = _2503;
        _2653 = _2504;
        _2654 = _2505;
        _2655 = _2506;
        _2656 = _2507;
      } else {
        _2645 = 0.0f;
        _2646 = 0.0f;
        _2647 = 0.0f;
        _2648 = 0.0f;  // [sem: expr_sat]
        _2649 = 0.0f;
        _2650 = 0.0f;
        _2651 = 0.0f;
        _2652 = 0.0f;
        _2653 = 0.0h;
        _2654 = 0.0h;
        _2655 = 0.0h;
        _2656 = 0.0h;
      }
      _2676 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].x), _2284, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].x), _2283, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].x) * _2282))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][3].x);
      _2680 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].y), _2284, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].y), _2283, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].y) * _2282))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][3].y);
      _2684 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].z), _2284, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].z), _2283, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].z) * _2282))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][3].z);
      _2687 = 4.0f / __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y;
      _2688 = 1.0f - _2687;
      if (!(((!(_2676 <= _2688)) || (!(_2676 >= _2687))) || (!(_2680 <= _2688)))) {
        _2699 = (_2684 >= -1.0f) && ((_2684 <= 1.0f) && (_2680 >= _2687));
        _2707 = select(_2699, 9.999999747378752e-06f, -9.999999747378752e-05f);
        _2708 = select(_2699, _2676, _2459);
        _2709 = select(_2699, _2680, _2460);
        _2710 = select(_2699, _2684, _2461);
        _2711 = select(_2699, 1, _2462);
        _2712 = ((int)(uint)(_2699));
      } else {
        _2707 = -9.999999747378752e-05f;
        _2708 = _2459;
        _2709 = _2460;
        _2710 = _2461;
        _2711 = _2462;
        _2712 = 0;
      }
      _2732 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].x), _2284, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].x), _2283, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].x) * _2282))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][3].x);
      _2736 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].y), _2284, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].y), _2283, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].y) * _2282))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][3].y);
      _2740 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].z), _2284, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].z), _2283, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].z) * _2282))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][3].z);
      if (!(((!(_2732 <= _2688)) || (!(_2732 >= _2687))) || (!(_2736 <= _2688)))) {
        _2751 = (_2740 >= -1.0f) && ((_2736 >= _2687) && (_2740 <= 1.0f));
        _2759 = select(_2751, 9.999999747378752e-06f, _2707);
        _2760 = select(_2751, _2732, _2708);
        _2761 = select(_2751, _2736, _2709);
        _2762 = select(_2751, _2740, _2710);
        _2763 = select(_2751, 0, _2711);
        _2764 = select(_2751, 1, _2712);
      } else {
        _2759 = _2707;
        _2760 = _2708;
        _2761 = _2709;
        _2762 = _2710;
        _2763 = _2711;
        _2764 = _2712;
      }
      [branch]
      if (!(_2764 == 0)) {
        _2774 = int(floor((_2760 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f));
        _2775 = int(floor((_2761 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f));
        _2778 = _2774 + 1u;
        _2779 = _2775 + 1u;
        if (!(((uint)_2774 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x))) || ((uint)_2775 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y))))) {
          _2794 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2774, _2775, _2763, 0)))).x);
          _2795 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2778, _2775, _2763, 0)))).x);
          _2796 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2774, _2779, _2763, 0)))).x);
          _2797 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2778, _2779, _2763, 0)))).x);
        } else {
          _2794 = _2649;
          _2795 = _2650;
          _2796 = _2651;
          _2797 = _2652;
        }
        _2798 = _2763 << 2;
        _2800 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)(_2798 + 58u))];
        _2806 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)(_2798 + 59u))];
        _2812 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)(_2798 + 60u))];
        _2818 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)(_2798 + 61u))];
        _2823 = _2800.x * _2760;
        _2827 = _2800.y * _2760;
        _2831 = _2800.z * _2760;
        _2835 = _2800.w * _2760;
        _2838 = mad(_2812.w, _2794, mad(_2806.w, _2761, _2835)) + _2818.w;
        _2839 = (mad(_2812.x, _2794, mad(_2806.x, _2761, _2823)) + _2818.x) / _2838;
        _2840 = (mad(_2812.y, _2794, mad(_2806.y, _2761, _2827)) + _2818.y) / _2838;
        _2841 = (mad(_2812.z, _2794, mad(_2806.z, _2761, _2831)) + _2818.z) / _2838;
        _2844 = _2760 + (__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.z * 8.0f);
        _2860 = mad(_2812.w, _2795, mad(_2806.w, _2761, (_2800.w * _2844))) + _2818.w;
        _2866 = _2761 - (__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.w * 4.0f);
        _2878 = mad(_2812.w, _2796, mad(_2806.w, _2866, _2835)) + _2818.w;
        _2882 = ((mad(_2812.x, _2796, mad(_2806.x, _2866, _2823)) + _2818.x) / _2878) - _2839;
        _2883 = ((mad(_2812.y, _2796, mad(_2806.y, _2866, _2827)) + _2818.y) / _2878) - _2840;
        _2884 = ((mad(_2812.z, _2796, mad(_2806.z, _2866, _2831)) + _2818.z) / _2878) - _2841;
        _2885 = ((mad(_2812.x, _2795, mad(_2806.x, _2761, (_2800.x * _2844))) + _2818.x) / _2860) - _2839;
        _2886 = ((mad(_2812.y, _2795, mad(_2806.y, _2761, (_2800.y * _2844))) + _2818.y) / _2860) - _2840;
        _2887 = ((mad(_2812.z, _2795, mad(_2806.z, _2761, (_2800.z * _2844))) + _2818.z) / _2860) - _2841;
        _2890 = (_2884 * _2886) - (_2883 * _2887);
        _2893 = (_2882 * _2887) - (_2884 * _2885);
        _2896 = (_2883 * _2885) - (_2882 * _2886);
        _2898 = rsqrt(dot(float3(_2890, _2893, _2896), float3(_2890, _2893, _2896)));  // [sem: invLength]
        if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
          _2916 = _sunDirection.x;
          _2917 = _sunDirection.y;
          _2918 = _sunDirection.z;
        } else {
          _2916 = _moonDirection.x;
          _2917 = _moonDirection.y;
          _2918 = _moonDirection.z;
        }
        _2924 = (_2759 - (saturate(-0.0f - dot(float3(_2916, _2917, _2918), float3(_207, _208, _209))) * 9.999999747378752e-05f)) + _2762;
        _2937 = (_2890 * _2898);
        _2938 = (_2893 * _2898);
        _2939 = (_2896 * _2898);
        _2940 = min(((float)((bool)(uint)(_2794 > _2924))), min(min(((float)((bool)(uint)(_2795 > _2924))), ((float)((bool)(uint)(_2796 > _2924)))), ((float)((bool)(uint)(_2797 > _2924)))));
      } else {
        _2937 = _2645;
        _2938 = _2646;
        _2939 = _2647;
        _2940 = _2648;
      }
      _2945 = _viewPos.x - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.x;
      _2946 = _viewPos.y - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.y;
      _2947 = _viewPos.z - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.z;
      _2948 = _2945 + _2282;
      _2949 = _2946 + _2283;
      _2950 = _2947 + _2284;
      _2970 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].x), _2950, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].x), _2949, (_2948 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[3].x);
      _2974 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].y), _2950, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].y), _2949, (_2948 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].y)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[3].y);
      _2978 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].z), _2950, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].z), _2949, (_2948 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].z)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[3].z);
      if (saturate(_2970) == _2970) {
        if ((_2978 >= 9.999999747378752e-05f) && ((_2978 <= 1.0f) && (saturate(_2974) == _2974))) {
          _2993 = frac((_2970 * 1024.0f) + -0.5f);
          _2997 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_2970, _2974));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
          _3002 = _2978 + -0.004999999888241291f;
          _3007 = select((_2997.w > _3002), 1.0f, 0.0f);
          _3009 = select((_2997.x > _3002), 1.0f, 0.0f);
          _3016 = ((select((_2997.z > _3002), 1.0f, 0.0f) - _3007) * _2993) + _3007;
  // [sem: expr_sat]
          _3022 = saturate((((((select((_2997.y > _3002), 1.0f, 0.0f) - _3009) * _2993) + _3009) - _3016) * frac((_2974 * 1024.0f) + -0.5f)) + _3016);
        } else {
          _3022 = 1.0f;  // [sem: expr_sat]
        }
      } else {
        _3022 = 1.0f;  // [sem: expr_sat]
      }
      _3023 = min(_2940, _3022);
      _3024 = saturate(_2653);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived_derived_sat]
      _3025 = saturate(_2654);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived_derived_sat]
      _3026 = saturate(_2655);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived_derived_sat]
      _3040 = ((half)(((half)(_3025 * 0.3395996h)) + ((half)(_3024 * 0.61328125h)))) + ((half)(_3026 * 0.04736328h));
      _3041 = ((half)(((half)(_3025 * 0.9165039h)) + ((half)(_3024 * 0.07019043h)))) + ((half)(_3026 * 0.013450623h));
      _3042 = ((half)(((half)(_3025 * 0.109558105h)) + ((half)(_3024 * 0.020614624h)))) + ((half)(_3026 * 0.8696289h));
      _3045 = (_sunDirection.y > 0.0f);
      if ((_3045) || ((!(_3045)) && (_sunDirection.y > _moonDirection.y))) {
        _3057 = _sunDirection.x;
        _3058 = _sunDirection.y;
        _3059 = _sunDirection.z;
      } else {
        _3057 = _moonDirection.x;
        _3058 = _moonDirection.y;
        _3059 = _moonDirection.z;
      }
      if ((_3045) || ((!(_3045)) && (_sunDirection.y > _moonDirection.y))) {
        _3079 = _precomputedAmbient7.y;
      } else {
        _3079 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
      }
      _3082 = _2365 + _earthRadius;
      _3088 = sqrt(((_2366 * _2366) + (_2364 * _2364)) + (_3082 * _3082));
      _3093 = dot(float3((_2364 / _3088), (_3082 / _3088), (_2366 / _3088)), float3(_3057, _3058, _3059));
      _3097 = _atmosphereThickness + -16.0f;
      _3099 = min(max(((_3088 - _earthRadius) / _atmosphereThickness), 16.0f), _3097);
      _3101 = _atmosphereThickness + -32.0f;
      _3107 = max(_3099, 0.0f);
      _3108 = _earthRadius * 2.0f;
      _3114 = (-0.0f - sqrt((_3107 + _3108) * _3107)) / (_3107 + _earthRadius);
      if (_3093 > _3114) {
        _3137 = ((exp2(log2(saturate((_3093 - _3114) / (1.0f - _3114))) * 0.20000000298023224f) * 0.4921875f) + 0.50390625f);
      } else {
        _3137 = ((exp2(log2(saturate((_3114 - _3093) / (_3114 + 1.0f))) * 0.20000000298023224f) * 0.4921875f) + 0.00390625f);
      }
  // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
      _3142 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_3099 + -16.0f) / _3101)) * 0.5f) * 0.96875f) + 0.015625f), _3137), 0.0f);
      _3161 = _mieAerosolAbsorption + 1.0f;
      _3162 = _mieAerosolDensity * 1.9999999494757503e-05f;
      _3164 = (_3162 * _3142.y) * _3161;
      _3170 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.960784317134312e-07f) + (_ozoneRatio * 2.05560013455397e-06f);
      _3173 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.960784317134312e-07f) + (_ozoneRatio * 4.978800461685751e-06f);
      _3176 = (_ozoneRatio * 2.1360001767334325e-07f) + (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.960784317134312e-07f);
      _3182 = exp2(((_3170 * _3142.x) + _3164) * -1.4426950216293335f);
      _3183 = exp2(((_3173 * _3142.x) + _3164) * -1.4426950216293335f);
      _3184 = exp2(((_3176 * _3142.x) + _3164) * -1.4426950216293335f);
      _3203 = sqrt((_2282 * _2282) + (_2284 * _2284));
      _3211 = (_cloudAltitude - (max(((_3203 * _3203) + -4e+05f), 0.0f) * 9.999999974752427e-07f)) - _viewPos.y;
      _3223 = (_cloudThickness * (0.5f - (float((int)(((int)(uint)((int)(_3058 > 0.0f))) - ((int)(uint)((int)(_3058 < 0.0f))))) * 0.5f))) + _3211;
      if (_2283 < _3211) {
        _3226 = dot(float3(0.0f, 1.0f, 0.0f), float3(_3057, _3058, _3059));
        _3232 = select((abs(_3226) < 9.99999993922529e-09f), 1e+08f, ((_3223 - dot(float3(0.0f, 1.0f, 0.0f), float3(_2282, _2283, _2284))) / _3226));
        _3238 = ((_3232 * _3057) + _2282);
        _3239 = _3223;
        _3240 = ((_3232 * _3059) + _2284);
      } else {
        _3238 = _2282;
        _3239 = _2283;
        _3240 = _2284;
      }
      _3253 = _cloudScatteringCoefficient / _distanceScale;
      _3254 = _distanceScale * -1.4426950216293335f;
      _3260 = saturate(abs(_3058) * 4.0f);  // [sem: expr_sat]
      _3262 = (_3260 * _3260) * exp2((_3254 * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_3238 * 4.999999873689376e-05f) + 0.5f), ((_3239 - _3211) / _cloudThickness), ((_3240 * 4.999999873689376e-05f) + 0.5f)), 0.0f)).x)) * _3253);
      _3269 = ((1.0f - _3262) * saturate(((_2283 - _cloudThickness) - _3211) * 0.10000000149011612f)) + _3262;
      _3270 = _3269 * (((_3183 * 0.3395099937915802f) + (_3182 * 0.6131200194358826f)) + (_3184 * 0.047370001673698425f));
      _3271 = _3269 * (((_3183 * 0.9163600206375122f) + (_3182 * 0.07020000368356705f)) + (_3184 * 0.013450000435113907f));
      _3272 = _3269 * (((_3183 * 0.10958000272512436f) + (_3182 * 0.02061999961733818f)) + (_3184 * 0.8697999715805054f));
      _3291 = float(saturate(_2656));
      if ((_975 != 0) && (!_995)) {
        _3293 = (_1178 > 0.0f);
        _3294 = select(_3293, _1175, _2937);
        _3295 = select(_3293, _1176, _2938);
        _3296 = select(_3293, _1177, _2939);
        _3297 = select(_3293, _1178, 0.800000011920929f);
        if (_974 > 0.0f) {
          _3300 = half(_971);
          _3301 = half(_972);
          _3302 = half(_973);
          _3308 = _3297;
          _3309 = _3294;
          _3310 = _3295;
          _3311 = _3296;
          _3312 = _3300;
          _3313 = _3301;
          _3314 = _3302;
          _3315 = _974;
          _3316 = float(_3300);
          _3317 = float(_3301);
          _3318 = float(_3302);
          _3319 = dot(float3(_3294, _3295, _3296), float3(_3057, _3058, _3059));
        } else {
          _3308 = _3297;
          _3309 = _3294;
          _3310 = _3295;
          _3311 = _3296;
          _3312 = _3040;
          _3313 = _3041;
          _3314 = _3042;
          _3315 = 0.10000000149011612f;
          _3316 = 1.0f;
          _3317 = 1.0f;
          _3318 = 1.0f;
          _3319 = _3291;
        }
      } else {
        _3308 = 0.800000011920929f;
        _3309 = _2937;
        _3310 = _2938;
        _3311 = _2939;
        _3312 = _3040;
        _3313 = _3041;
        _3314 = _3042;
        _3315 = 0.10000000149011612f;
        _3316 = 1.0f;
        _3317 = 1.0f;
        _3318 = 1.0f;
        _3319 = _3291;
      }
      _3327 = float(half(saturate(_3319) * 0.31830987334251404f)) * _3023;
      _3335 = 0.699999988079071f / min(max(max(max(_3316, _3317), _3318), 0.009999999776482582f), 0.699999988079071f);
      _3346 = (((_3335 * _3317) + -0.03999999910593033f) * _3315) + 0.03999999910593033f;
      _3348 = _3057 - _207;
      _3349 = _3058 - _208;
      _3350 = _3059 - _209;
      _3352 = rsqrt(dot(float3(_3348, _3349, _3350), float3(_3348, _3349, _3350)));  // [sem: invLength]
      _3353 = _3352 * _3348;
      _3354 = _3352 * _3349;
      _3355 = _3352 * _3350;
      _3356 = -0.0f - _207;
      _3357 = -0.0f - _208;
      _3358 = -0.0f - _209;
      _3363 = saturate(max(9.999999747378752e-06f, dot(float3(_3356, _3357, _3358), float3(_3309, _3310, _3311))));  // [sem: expr_sat]
      _3365 = saturate(dot(float3(_3309, _3310, _3311), float3(_3353, _3354, _3355)));  // [sem: expr_sat]
      _3368 = saturate(1.0f - saturate(saturate(dot(float3(_3356, _3357, _3358), float3(_3353, _3354, _3355)))));  // [sem: expr_sat]
      _3369 = _3368 * _3368;
      _3371 = (_3369 * _3369) * _3368;
      _3374 = _3371 * saturate(_3346 * 50.0f);
      _3375 = 1.0f - _3371;
      _3383 = saturate(_3319 * _3023);  // [sem: expr_sat]
      _3384 = _3308 * _3308;
      _3385 = _3384 * _3384;
      _3386 = 1.0f - _3384;
      _3398 = (((_3365 * _3385) - _3365) * _3365) + 1.0f;
      _3402 = (_3385 / ((_3398 * _3398) * 3.1415927410125732f)) * (0.5f / ((((_3363 * _3386) + _3384) * _3319) + (_3363 * ((_3319 * _3386) + _3384))));
      _3413 = ((((_3270 * 0.6131200194358826f) + (_3271 * 0.3395099937915802f)) + (_3272 * 0.047370001673698425f)) * _3079) * ((max((((_3375 * ((((_3335 * _3316) + -0.03999999910593033f) * _3315) + 0.03999999910593033f)) + _3374) * _3402), 0.0f) * _3383) + (_3327 * float(_3312)));
      _3415 = ((((_3270 * 0.07020000368356705f) + (_3271 * 0.9163600206375122f)) + (_3272 * 0.013450000435113907f)) * _3079) * ((max((((_3375 * _3346) + _3374) * _3402), 0.0f) * _3383) + (_3327 * float(_3313)));
      _3417 = ((((_3270 * 0.02061999961733818f) + (_3271 * 0.10958000272512436f)) + (_3272 * 0.8697999715805054f)) * _3079) * ((max((((_3375 * ((((_3335 * _3318) + -0.03999999910593033f) * _3315) + 0.03999999910593033f)) + _3374) * _3402), 0.0f) * _3383) + (_3327 * float(_3314)));
      _3422 = dot(float3(_3413, _3415, _3417), float3(0.21267099678516388f, 0.7151600122451782f, 0.0721689984202385f));
      _3423 = min((max(0.0005000000237487257f, _exposure3.w) * 4096.0f), _3422);
      _3427 = max(9.999999717180685e-10f, _3422);
      _3428 = (_3423 * _3413) / _3427;
      _3429 = (_3423 * _3415) / _3427;
      _3430 = (_3423 * _3417) / _3427;
      if ((_106 == 33) || (_106 == 55)) {
        if ((_3045) || ((!(_3045)) && (_sunDirection.y > _moonDirection.y))) {
          _3451 = _sunDirection.x;
          _3452 = _sunDirection.y;
          _3453 = _sunDirection.z;
        } else {
          _3451 = _moonDirection.x;
          _3452 = _moonDirection.y;
          _3453 = _moonDirection.z;
        }
        _3458 = rsqrt(dot(float3(_166, _167, _168), float3(_166, _167, _168)));  // [sem: invLength]
        _3459 = _3458 * _166;
        _3460 = _3458 * _167;
        _3461 = _3458 * _168;
        _3465 = _166 - (_126 * 0.03999999910593033f);
        _3466 = _167 - (_127 * 0.03999999910593033f);
        _3467 = _168 - (_128 * 0.03999999910593033f);
        _3471 = (_viewPos.x - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].x)) + _3465;
        _3472 = (_viewPos.y - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].y)) + _3466;
        _3473 = (_viewPos.z - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].z)) + _3467;
        _3477 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].x), _3473, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].x), _3472, (_3471 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][3].x);
        _3481 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].y), _3473, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].y), _3472, (_3471 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].y)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][3].y);
        _3492 = (((!(_3477 <= _2405)) || (!(_3477 >= _2404))) || (!(_3481 <= _2405))) || (!(_3481 >= _2404));
        _3500 = (_viewPos.x - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].x)) + _3465;
        _3501 = (_viewPos.y - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].y)) + _3466;
        _3502 = (_viewPos.z - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].z)) + _3467;
        _3506 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].x), _3502, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].x), _3501, (_3500 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][3].x);
        _3510 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].y), _3502, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].y), _3501, (_3500 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].y)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][3].y);
        _3521 = (((!(_3506 <= _2405)) || (!(_3506 >= _2404))) || (!(_3510 <= _2405))) || (!(_3510 >= _2404));
        _3523 = select((_3521 && _3492), 0.0f, 0.0010000000474974513f);
        _3524 = select(_3521, select(_3492, 0.0f, _3477), _3506);
        _3525 = select(_3521, select(_3492, 0.0f, _3481), _3510);
        _3526 = select(_3521, select(_3492, 0.0f, (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].z), _3473, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].z), _3472, (_3471 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].z)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][3].z))), (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].z), _3502, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].z), _3501, (_3500 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].z)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][3].z)));
        _3527 = select(_3521, select(_3492, -1, 1), 0);
        [branch]
        if (!(_3527 == -1)) {
          _3533 = (_3524 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x) + -0.5f;
          _3534 = (_3525 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y) + -0.5f;
          _3537 = int(floor(_3533));
          _3538 = int(floor(_3534));
          _3541 = _3537 + 1u;
          _3542 = _3538 + 1u;
          if (!(((uint)_3537 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x))) || ((uint)_3538 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y))))) {
            _3557 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3537, _3538, _3527, 0)))).x);
            _3558 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3541, _3538, _3527, 0)))).x);
            _3559 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3537, _3542, _3527, 0)))).x);
            _3560 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3541, _3542, _3527, 0)))).x);
          } else {
            _3557 = 0.0f;
            _3558 = 0.0f;
            _3559 = 0.0f;
            _3560 = 0.0f;
          }
          _3561 = _3527 << 2;
          _3563 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_3561 + 103))];
          _3569 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_3561 + 104))];
          _3575 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_3561 + 105))];
          _3581 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_3561 + 106))];
          _3586 = _3563.x * _3524;
          _3590 = _3563.y * _3524;
          _3594 = _3563.z * _3524;
          _3598 = _3563.w * _3524;
          _3601 = mad(_3575.w, _3557, mad(_3569.w, _3525, _3598)) + _3581.w;
          _3602 = (mad(_3575.x, _3557, mad(_3569.x, _3525, _3586)) + _3581.x) / _3601;
          _3603 = (mad(_3575.y, _3557, mad(_3569.y, _3525, _3590)) + _3581.y) / _3601;
          _3604 = (mad(_3575.z, _3557, mad(_3569.z, _3525, _3594)) + _3581.z) / _3601;
          _3607 = _3524 + (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.z * 4.0f);
          _3623 = mad(_3575.w, _3558, mad(_3569.w, _3525, (_3563.w * _3607))) + _3581.w;
          _3629 = _3525 - (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.w * 2.0f);
          _3641 = mad(_3575.w, _3559, mad(_3569.w, _3629, _3598)) + _3581.w;
          _3645 = ((mad(_3575.x, _3559, mad(_3569.x, _3629, _3586)) + _3581.x) / _3641) - _3602;
          _3646 = ((mad(_3575.y, _3559, mad(_3569.y, _3629, _3590)) + _3581.y) / _3641) - _3603;
          _3647 = ((mad(_3575.z, _3559, mad(_3569.z, _3629, _3594)) + _3581.z) / _3641) - _3604;
          _3648 = ((mad(_3575.x, _3558, mad(_3569.x, _3525, (_3563.x * _3607))) + _3581.x) / _3623) - _3602;
          _3649 = ((mad(_3575.y, _3558, mad(_3569.y, _3525, (_3563.y * _3607))) + _3581.y) / _3623) - _3603;
          _3650 = ((mad(_3575.z, _3558, mad(_3569.z, _3525, (_3563.z * _3607))) + _3581.z) / _3623) - _3604;
          _3653 = (_3647 * _3649) - (_3646 * _3650);
          _3656 = (_3645 * _3650) - (_3647 * _3648);
          _3659 = (_3646 * _3648) - (_3645 * _3649);
          _3661 = rsqrt(dot(float3(_3653, _3656, _3659), float3(_3653, _3656, _3659)));  // [sem: invLength]
          _3665 = frac(_3533);
          _3670 = (saturate(dot(float3(_3459, _3460, _3461), float3((_3653 * _3661), (_3656 * _3661), (_3659 * _3661)))) * 0.0020000000949949026f) + _3526;
          _3683 = saturate(exp2((_3557 - _3670) * 1442695.0f));  // [sem: expr_sat]
          _3685 = saturate(exp2((_3559 - _3670) * 1442695.0f));  // [sem: expr_sat]
          _3691 = ((saturate(exp2((_3558 - _3670) * 1442695.0f)) - _3683) * _3665) + _3683;
  // [sem: expr_sat]
          _3698 = saturate((((_3685 - _3691) + ((saturate(exp2((_3560 - _3670) * 1442695.0f)) - _3685) * _3665)) * frac(_3534)) + _3691);
          _3699 = _3557;
          _3700 = _3558;
          _3701 = _3559;
          _3702 = _3560;
        } else {
          _3698 = 1.0f;  // [sem: expr_sat]
          _3699 = 0.0f;
          _3700 = 0.0f;
          _3701 = 0.0f;
          _3702 = 0.0f;
        }
        _3706 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].x), _3467, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].x), _3466, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].x) * _3465))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][3].x);
        _3710 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].y), _3467, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].y), _3466, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].y) * _3465))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][3].y);
        _3714 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].z), _3467, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].z), _3466, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].z) * _3465))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][3].z);
        if (!(((!(_3706 <= _2688)) || (!(_3706 >= _2687))) || (!(_3710 <= _2688)))) {
          _3725 = (_3714 >= -1.0f) && ((_3710 >= _2687) && (_3714 <= 1.0f));
          _3733 = select(_3725, 9.999999747378752e-06f, _3523);
          _3734 = select(_3725, _3706, _3524);
          _3735 = select(_3725, _3710, _3525);
          _3736 = select(_3725, _3714, _3526);
          _3737 = select(_3725, 1, _3527);
          _3738 = ((int)(uint)(_3725));
        } else {
          _3733 = _3523;
          _3734 = _3524;
          _3735 = _3525;
          _3736 = _3526;
          _3737 = _3527;
          _3738 = 0;
        }
        _3742 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].x), _3467, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].x), _3466, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].x) * _3465))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][3].x);
        _3746 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].y), _3467, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].y), _3466, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].y) * _3465))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][3].y);
        _3750 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].z), _3467, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].z), _3466, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].z) * _3465))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][3].z);
        if (!(((!(_3742 <= _2688)) || (!(_3742 >= _2687))) || (!(_3746 <= _2688)))) {
          _3761 = (_3750 >= -1.0f) && ((_3746 >= _2687) && (_3750 <= 1.0f));
          _3769 = select(_3761, 9.999999747378752e-06f, _3733);
          _3770 = select(_3761, _3742, _3734);
          _3771 = select(_3761, _3746, _3735);
          _3772 = select(_3761, _3750, _3736);
          _3773 = select(_3761, 0, _3737);
          _3774 = select(_3761, 1, _3738);
        } else {
          _3769 = _3733;
          _3770 = _3734;
          _3771 = _3735;
          _3772 = _3736;
          _3773 = _3737;
          _3774 = _3738;
        }
        [branch]
        if (!(_3774 == 0)) {
          _3784 = int(floor((_3770 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f));
          _3785 = int(floor((_3771 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f));
          _3788 = _3784 + 1u;
          _3789 = _3785 + 1u;
          if (!(((uint)_3784 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x))) || ((uint)_3785 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y))))) {
            _3804 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3784, _3785, _3773, 0)))).x);
            _3805 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3788, _3785, _3773, 0)))).x);
            _3806 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3784, _3789, _3773, 0)))).x);
            _3807 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3788, _3789, _3773, 0)))).x);
          } else {
            _3804 = _3699;
            _3805 = _3700;
            _3806 = _3701;
            _3807 = _3702;
          }
          if ((_3045) || ((!(_3045)) && (_sunDirection.y > _moonDirection.y))) {
            _3819 = _sunDirection.x;
            _3820 = _sunDirection.y;
            _3821 = _sunDirection.z;
          } else {
            _3819 = _moonDirection.x;
            _3820 = _moonDirection.y;
            _3821 = _moonDirection.z;
          }
          _3827 = (_3769 - (saturate(-0.0f - dot(float3(_3819, _3820, _3821), float3(_3459, _3460, _3461))) * 9.999999747378752e-05f)) + _3772;
          _3840 = min(((float)((bool)(uint)(_3804 > _3827))), min(min(((float)((bool)(uint)(_3805 > _3827))), ((float)((bool)(uint)(_3806 > _3827)))), ((float)((bool)(uint)(_3807 > _3827)))));
        } else {
          _3840 = _3698;
        }
        _3841 = _2945 + _3465;
        _3842 = _2946 + _3466;
        _3843 = _2947 + _3467;
        _3847 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].x), _3843, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].x), _3842, (_3841 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[3].x);
        _3851 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].y), _3843, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].y), _3842, (_3841 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].y)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[3].y);
        _3855 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].z), _3843, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].z), _3842, (_3841 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].z)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[3].z);
        if (saturate(_3847) == _3847) {
          if ((_3855 >= 9.999999747378752e-05f) && ((_3855 <= 1.0f) && (saturate(_3851) == _3851))) {
            _3870 = frac((_3847 * 1024.0f) + -0.5f);
  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
            _3874 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_3847, _3851));
            _3879 = _3855 + -0.004999999888241291f;
            _3884 = select((_3874.w > _3879), 1.0f, 0.0f);
            _3886 = select((_3874.x > _3879), 1.0f, 0.0f);
            _3893 = ((select((_3874.z > _3879), 1.0f, 0.0f) - _3884) * _3870) + _3884;
  // [sem: expr_sat]
            _3899 = saturate((((((select((_3874.y > _3879), 1.0f, 0.0f) - _3886) * _3870) + _3886) - _3893) * frac((_3851 * 1024.0f) + -0.5f)) + _3893);
          } else {
            _3899 = 1.0f;  // [sem: expr_sat]
          }
        } else {
          _3899 = 1.0f;  // [sem: expr_sat]
        }
  // [sem: _3__36__0__0__g_baseColor_load]
        _3905 = __3__36__0__0__g_baseColor.Load(int3((int)(uint(_76 * (1.0f / g_screenSpaceScale.x))), (int)(uint(_77 * (1.0f / g_screenSpaceScale.y))), 0));
        _3911 = ((float)((uint)((uint)(((uint)((uint)(_3905.x)) >> 8) & 255)))) * 0.003921568859368563f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _3914 = ((float)((uint)((uint)(_3905.x & 255)))) * 0.003921568859368563f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _3918 = ((float)((uint)((uint)(((uint)((uint)(_3905.y)) >> 8) & 255)))) * 0.003921568859368563f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _3919 = _3911 * _3911;
        _3920 = _3914 * _3914;
        _3921 = _3918 * _3918;
        if ((_3045) || ((!(_3045)) && (_sunDirection.y > _moonDirection.y))) {
          _3956 = _precomputedAmbient7.y;
        } else {
          _3956 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
        }
        _3957 = _viewPos.x + _166;
        _3959 = (_earthRadius + _viewPos.y) + _167;
        _3960 = _viewPos.z + _168;
        _3966 = sqrt(((_3960 * _3960) + (_3957 * _3957)) + (_3959 * _3959));
        _3971 = dot(float3((_3957 / _3966), (_3959 / _3966), (_3960 / _3966)), float3(_3451, _3452, _3453));
        _3974 = min(max(((_3966 - _earthRadius) / _atmosphereThickness), 16.0f), _3097);
        _3981 = max(_3974, 0.0f);
        _3987 = (-0.0f - sqrt((_3981 + _3108) * _3981)) / (_3981 + _earthRadius);
        if (_3971 > _3987) {
          _4010 = ((exp2(log2(saturate((_3971 - _3987) / (1.0f - _3987))) * 0.20000000298023224f) * 0.4921875f) + 0.50390625f);
        } else {
          _4010 = ((exp2(log2(saturate((_3987 - _3971) / (_3987 + 1.0f))) * 0.20000000298023224f) * 0.4921875f) + 0.00390625f);
        }
  // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
        _4013 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_3974 + -16.0f) / _3101)) * 0.5f) * 0.96875f) + 0.015625f), _4010), 0.0f);
        _4017 = (_3162 * _3161) * _4013.y;
        _4027 = exp2((_4017 + (_4013.x * _3170)) * -1.4426950216293335f);
        _4028 = exp2((_4017 + (_4013.x * _3173)) * -1.4426950216293335f);
        _4029 = exp2((_4017 + (_4013.x * _3176)) * -1.4426950216293335f);
        _4048 = sqrt((_168 * _168) + (_166 * _166));
        _4054 = (_cloudAltitude - (max(((_4048 * _4048) + -4e+05f), 0.0f) * 9.999999974752427e-07f)) - _viewPos.y;
        _4064 = _4054 + ((0.5f - (float((int)(((int)(uint)((int)(_3452 > 0.0f))) - ((int)(uint)((int)(_3452 < 0.0f))))) * 0.5f)) * _cloudThickness);
        if (_167 < _4054) {
          _4067 = dot(float3(0.0f, 1.0f, 0.0f), float3(_3451, _3452, _3453));
          _4073 = select((abs(_4067) < 9.99999993922529e-09f), 1e+08f, ((_4064 - dot(float3(0.0f, 1.0f, 0.0f), float3(_166, _167, _168))) / _4067));
          _4079 = ((_4073 * _3451) + _166);
          _4080 = _4064;
          _4081 = ((_4073 * _3453) + _168);
        } else {
          _4079 = _166;
          _4080 = _167;
          _4081 = _168;
        }
        _4095 = saturate(abs(_3452) * 4.0f);  // [sem: expr_sat]
        _4097 = (_4095 * _4095) * exp2((_3254 * _3253) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_4079 * 4.999999873689376e-05f) + 0.5f), ((_4080 - _4054) / _cloudThickness), ((_4081 * 4.999999873689376e-05f) + 0.5f)), 0.0f)).x));
        _4104 = ((1.0f - _4097) * saturate(((_167 - _cloudThickness) - _4054) * 0.10000000149011612f)) + _4097;
        _4105 = _4104 * (((_4028 * 0.3395099937915802f) + (_4027 * 0.6131200194358826f)) + (_4029 * 0.047370001673698425f));
        _4106 = _4104 * (((_4028 * 0.9163600206375122f) + (_4027 * 0.07020000368356705f)) + (_4029 * 0.013450000435113907f));
        _4107 = _4104 * (((_4028 * 0.10958000272512436f) + (_4027 * 0.02061999961733818f)) + (_4029 * 0.8697999715805054f));
        _4123 = ((max(0.0f, (0.30000001192092896f - dot(float3(_126, _127, _128), float3(_3451, _3452, _3453)))) * 0.1573420912027359f) * saturate(min(_3840, _3899))) * _3956;
        _4134 = (((_4123 * (((_3919 * 0.6131200194358826f) + (_3920 * 0.3395099937915802f)) + (_3921 * 0.047370001673698425f))) * (((_4105 * 0.6131200194358826f) + (_4106 * 0.3395099937915802f)) + (_4107 * 0.047370001673698425f))) + _3428);
        _4135 = (((_4123 * (((_3919 * 0.07020000368356705f) + (_3920 * 0.9163600206375122f)) + (_3921 * 0.013450000435113907f))) * (((_4105 * 0.07020000368356705f) + (_4106 * 0.9163600206375122f)) + (_4107 * 0.013450000435113907f))) + _3429);
        _4136 = (((_4123 * (((_3919 * 0.02061999961733818f) + (_3920 * 0.10958000272512436f)) + (_3921 * 0.8697999715805054f))) * (((_4105 * 0.02061999961733818f) + (_4106 * 0.10958000272512436f)) + (_4107 * 0.8697999715805054f))) + _3430);
      } else {
        _4134 = _3428;
        _4135 = _3429;
        _4136 = _3430;
      }
      _4137 = (_renderParams2.z * _2355) * _4134;
      _4138 = (_renderParams2.z * _2356) * _4135;
      _4139 = (_renderParams2.z * _2357) * _4136;
      _4143 = _4137 + _2266;
      _4144 = _4138 + _2267;
      _4145 = _4139 + _2268;
      _4156 = _2276;
      _4157 = (((max(_2266, _4137) - _4143) * _2278) + _4143);
      _4158 = (((max(_2267, _4138) - _4144) * _2278) + _4144);
      _4159 = (((max(_2268, _4139) - _4145) * _2278) + _4145);
    } else {
      _4156 = 1000.0f;
      _4157 = _2266;
      _4158 = _2267;
      _4159 = _2268;
    }
    if (!_982) {
      __3__38__0__1__g_raytracingHitResultUAV[int2(_74, _75)] = float4(_201, _202, _203, select((_4156 <= 0.0f), 1000.0f, _4156));
    }
    if ((_4156 > 128.0f) && (dot(float3(_4157, _4158, _4159), float3(0.21267099678516388f, 0.7151600122451782f, 0.0721689984202385f)) == 0.0f)) {
      _4170 = 1;
      while(true) {
        _4172 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_4170 + 20))];
        _4200 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_4170 + 36))];
        // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
        // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
        float3 _rndx_surfel_jitter_4210 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _2282) * _4172.w) + _4200.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _2283) * _4172.w) + _4200.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _2284) * _4172.w) + _4200.z), float2(_76, _77), _181, _frameNumber.x);
        _4210 = int(floor(_rndx_surfel_jitter_4210.x));
        _4211 = int(floor(_rndx_surfel_jitter_4210.y));
        _4212 = int(floor(_rndx_surfel_jitter_4210.z));
        // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
        if (!(((((int)_4210 >= (int)int(_4172.x + -63.0f)) && ((int)_4210 < (int)int(_4172.x + 63.0f))) && (((int)_4211 >= (int)int(_4172.y + -31.0f)) && ((int)_4211 < (int)int(_4172.y + 31.0f)))) && (((int)_4212 >= (int)int(_4172.z + -63.0f)) && ((int)_4212 < (int)int(_4172.z + 63.0f))))) {
          _4225 = _4170 + 1;
          if ((uint)_4225 < (uint)8) {
            _4170 = _4225;
            continue;
          } else {
            _4228 = -10000;
          }
        } else {
          _4228 = _4170;
        }
        if (!((uint)_4228 > (uint)3)) {
          _4248 = 1.0f / ((float)((uint)(1 << (_4228 & 31))));
          _4252 = frac(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _2284) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z) * _4248);
  // [sem: expr_sat]
          _4269 = saturate(1.0f - ((__3__36__0__1__g_skyVisibilityVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _2282) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _4248), (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _2283) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y) * _4248), (((((float)((uint)(_4228 * 66))) + 1.0f) + ((select((_4252 < 0.0f), 1.0f, 0.0f) + _4252) * 64.0f)) * 0.0037878789007663727f)), 0.0f)).x));
        } else {
          _4269 = 1.0f;  // [sem: expr_sat]
        }
        _4272 = _renderParams.w * _4269;
        _4273 = (_974 == 0.0f);
  // [sem: _3__36__0__0__g_environmentColor_sampleLod]
        _4281 = __3__36__0__0__g_environmentColor.SampleLevel(__3__40__0__0__g_samplerTrilinear, float3(select(_4273, (-0.0f - _207), _1175), select(_4273, _208, _1176), select(_4273, (-0.0f - _209), _1177)), 4.0f);
        _4295 = ((_4272 * select(_4273, 0.03125f, _971)) * _4281.x);
        _4296 = ((_4272 * select(_4273, 0.03125f, _972)) * _4281.y);
        _4297 = ((_4272 * select(_4273, 0.03125f, _973)) * _4281.z);
        break;
      }
    } else {
      _4295 = _4157;
      _4296 = _4158;
      _4297 = _4159;
    }
    _4304 = saturate(1.0f - saturate(_2269));  // [sem: expr_sat]
    _4308 = (_4304 - (_renderParams2.w * _4304)) + _renderParams2.w;
  // [sem: _3__36__0__0__g_environmentColor_sampleLod]
    _4312 = __3__36__0__0__g_environmentColor.SampleLevel(__3__40__0__0__g_samplerTrilinear, float3(_207, _208, _209), 4.0f);
    _4318 = _renderParams.w * _4308;
    _4319 = _4318 * _4312.x;
    _4320 = _4318 * _4312.y;
    _4321 = _4318 * _4312.z;
    _4326 = dot(float3(_4319, _4320, _4321), float3(0.21267099678516388f, 0.7151600122451782f, 0.0721689984202385f));
    _4327 = min((max(0.009999999776482582f, _exposure3.w) * 2048.0f), _4326);
    _4331 = max(9.999999717180685e-10f, _4326);
    _4341 = ((__3__36__0__0__g_raytracingDiffuseRayInversePDF.Load(int3(_74, _75, 0))).x) * 2.0f;
    _4342 = _4341 * (((_4327 * _4319) / _4331) + (_renderParams2.y * _4295));
    _4343 = _4341 * (((_4327 * _4320) / _4331) + (_renderParams2.y * _4296));
    _4344 = _4341 * (((_4327 * _4321) / _4331) + (_renderParams2.y * _4297));
    if (!(_renderParams.y == 0.0f)) {
      _4349 = saturate(dot(float3(_126, _127, _128), float3(_207, _208, _209)));  // [sem: expr_sat]
      _4354 = (_4349 * _4342);
      _4355 = (_4349 * _4343);
      _4356 = (_4349 * _4344);
    } else {
      _4354 = _4342;
      _4355 = _4343;
      _4356 = _4344;
    }
    if ((((_102 & 126) == 96) || (_106 == 98)) && (_171 < 1000.0f)) {
      _4366 = (float)((uint)(uint)(_frameNumber.x));
      _4377 = (frac(((_4366 * 92.0f) + _76) * 0.0078125f) * 128.0f) + -64.34062194824219f;
      _4378 = (frac(((_4366 * 71.0f) + _77) * 0.0078125f) * 128.0f) + -72.46562194824219f;
      _4383 = frac(dot(float3((_4377 * _4377), (_4378 * _4378), (_4378 * _4377)), float3(20.390625f, 60.703125f, 2.4281208515167236f)));
      _4390 = (float)((uint)((uint)(((int)(_frameNumber.x * 91)) & 15)));
      _4401 = (int)min((uint)(15), (uint)((int)(uint(frac(frac(dot(float2(((_4390 * 32.665000915527344f) + _76), ((_4390 * 11.8149995803833f) + _77)), float2(0.0671105608344078f, 0.005837149918079376f))) * 52.98291778564453f) * 16.0f))));
      _4414 = 0.2774999737739563f / ((((float)((uint)((uint)(reversebits(_4401) ^ (int)(uint(_4383 * 287478368.0f)))))) * 3.958121053138086e-10f) + 0.1499999761581421f);
      _4415 = frac((((float)((uint)_4401)) * 0.0625f) + (((float)((uint)((uint)((int)(uint(_4383 * 51540816.0f)) & 65535)))) * 1.52587890625e-05f)) * 6.2831854820251465f;
      _4418 = saturate((_4414 * _4414) * -0.5882352590560913f);  // [sem: expr_sat]
      _4421 = sqrt(1.0f - (_4418 * _4418));
      _4424 = cos(_4415) * _4421;
      _4425 = sin(_4415) * _4421;
      _4427 = -0.0f - _127;
      _4430 = select((_128 <= -0.0f), 1.0f, -1.0f);
      _4432 = 1.0f / (_4430 - _128);
      _4433 = -0.0f - _4432;
      _4435 = (_126 * _4433) * _127;
      _4436 = _4430 * _126;
      _4445 = mad(_4418, (-0.0f - _126), mad(_4425, _4435, ((((_4436 * _126) * _4433) + 1.0f) * _4424)));
      _4449 = mad(_4418, _4427, mad(_4425, (((_127 * _4427) * _4432) + _4430), ((_4424 * _4430) * _4435)));
      _4452 = mad(_4418, (-0.0f - _128), mad(_4425, _127, (_4436 * _4424)));
      _4457 = ((frac(frac(dot(float2(_76, _77), float2(0.0671105608344078f, 0.005837149918079376f))) * 52.98291778564453f) * 0.10000000149011612f) + 0.009999999776482582f) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
      _4459 = 0;
      while(true) {
        _4461 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_4459 + 20))];
        _4489 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_4459 + 36))];
        // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
        // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
        float3 _rndx_surfel_jitter_4499 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _166) * _4461.w) + _4489.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _167) * _4461.w) + _4489.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _168) * _4461.w) + _4489.z), float2(_76, _77), _181, _frameNumber.x);
        _4499 = int(floor(_rndx_surfel_jitter_4499.x));
        _4500 = int(floor(_rndx_surfel_jitter_4499.y));
        _4501 = int(floor(_rndx_surfel_jitter_4499.z));
        // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
        if (!(((((int)_4499 >= (int)int(_4461.x + -63.0f)) && ((int)_4499 < (int)int(_4461.x + 63.0f))) && (((int)_4500 >= (int)int(_4461.y + -31.0f)) && ((int)_4500 < (int)int(_4461.y + 31.0f)))) && (((int)_4501 >= (int)int(_4461.z + -63.0f)) && ((int)_4501 < (int)int(_4461.z + 63.0f))))) {
          _4514 = _4459 + 1;
          if ((uint)_4514 < (uint)8) {
            _4459 = _4514;
            continue;
          } else {
            _4517 = -10000;
          }
        } else {
          _4517 = _4459;
        }
        if (!((_4517 == -10000) || ((int)_4517 > (int)4))) {
          _4530 = 0;
          _4531 = 1.0f;
          _4532 = 0.0f;
          _4533 = 0.0f;
          _4534 = 0.0f;
          _4535 = 0.05000000074505806f;
          _4536 = ((_4457 * _4452) + _168);
          _4537 = ((_4457 * _4449) + _167);
          _4538 = ((_4457 * _4445) + _166);
          while(true) {
            _4540 = 0;
            while(true) {
              _4542 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_4540 + 20))];
              _4561 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_4540 + 36))];
              _4565 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _4538) * _4542.w) + _4561.x;
              _4566 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _4537) * _4542.w) + _4561.y;
              _4567 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _4536) * _4542.w) + _4561.z;
              if (!((_4567 >= (_4542.z + -63.0f)) && ((_4565 >= (_4542.x + -63.0f)) && (_4566 >= (_4542.y + -31.0f)))) || (((_4567 >= (_4542.z + -63.0f)) && ((_4565 >= (_4542.x + -63.0f)) && (_4566 >= (_4542.y + -31.0f)))) && (!((_4567 < (_4542.z + 63.0f)) && ((_4565 < (_4542.x + 63.0f)) && (_4566 < (_4542.y + 31.0f))))))) {
                _4583 = _4540 + 1;
                if ((int)_4583 < (int)8) {
                  _4540 = _4583;
                  continue;
                } else {
                  _5124 = _4534;
                  _5125 = _4533;
                  _5126 = _4532;
                  _5127 = 0.0f;
                }
              } else {
                if ((uint)_4540 > (uint)3) {
                  _5119 = _4534;
                  _5120 = _4533;
                  _5121 = _4532;
                  _5122 = 0.0f;
                  _5124 = _5119;
                  _5125 = _5120;
                  _5126 = _5121;
                  _5127 = _5122;
                } else {
                  _4588 = max(0.05000000074505806f, (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 0.05000000074505806f));
                  _4590 = 0;
                  while(true) {
                    _4592 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_4590 + 20))];
                    _4620 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_4590 + 36))];
                    // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
                    // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
                    float3 _rndx_surfel_jitter_4630 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _4538) * _4592.w) + _4620.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _4537) * _4592.w) + _4620.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _4536) * _4592.w) + _4620.z), float2(_76, _77), _181, _frameNumber.x);
                    _4630 = int(floor(_rndx_surfel_jitter_4630.x));
                    _4631 = int(floor(_rndx_surfel_jitter_4630.y));
                    _4632 = int(floor(_rndx_surfel_jitter_4630.z));
                    // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
                    if (((((int)_4630 >= (int)int(_4592.x + -63.0f)) && ((int)_4630 < (int)int(_4592.x + 63.0f))) && (((int)_4631 >= (int)int(_4592.y + -31.0f)) && ((int)_4631 < (int)int(_4592.y + 31.0f)))) && (((int)_4632 >= (int)int(_4592.z + -63.0f)) && ((int)_4632 < (int)int(_4592.z + 63.0f)))) {
                      _4653 = (_4630 & 127);
                      _4654 = (_4631 & 63);
                      _4655 = (_4632 & 127);
                      _4656 = _4590;
                    } else {
                      _4645 = _4590 + 1;
                      if ((uint)_4645 < (uint)8) {
                        _4590 = _4645;
                        continue;
                      } else {
                        _4653 = -10000;
                        _4654 = -10000;
                        _4655 = -10000;
                        _4656 = -10000;
                      }
                    }
                    if (!((uint)_4656 > (uint)5)) {
                      _4671 = (((((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_4653, _4654, ((int)(((uint)(((int)(_4656 * 130)) | 1)) + _4655)), 0)))).x) & 4194303) == 0);
                      [branch]
                      if (!_4671) {
                        _4674 = _4653;
                        _4675 = _4654;
                        _4676 = _4655;
                        _4677 = _4656;
                      } else {
                        _4674 = -10000;
                        _4675 = -10000;
                        _4676 = -10000;
                        _4677 = -10000;
                      }
                      _4679 = (float((int)((int)(1 << (_4656 & 31)))) * 0.5f) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                      _4684 = 0;
                      while(true) {
                        _4686 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_4684 + 20))];
                        _4714 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_4684 + 36))];
                        // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
                        // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
                        float3 _rndx_surfel_jitter_4724 = RenoDXSurfelVoxelJitter(float3((((_4538 - _4679) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x) * _4686.w) + _4714.x, (((_4537 - _4679) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y) * _4686.w) + _4714.y, (((_4536 - _4679) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z) * _4686.w) + _4714.z), float2(_76, _77), _181, _frameNumber.x);
                        _4724 = int(floor(_rndx_surfel_jitter_4724.x));
                        _4725 = int(floor(_rndx_surfel_jitter_4724.y));
                        _4726 = int(floor(_rndx_surfel_jitter_4724.z));
                        // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
                        if (((((int)_4724 >= (int)int(_4686.x + -63.0f)) && ((int)_4724 < (int)int(_4686.x + 63.0f))) && (((int)_4725 >= (int)int(_4686.y + -31.0f)) && ((int)_4725 < (int)int(_4686.y + 31.0f)))) && (((int)_4726 >= (int)int(_4686.z + -63.0f)) && ((int)_4726 < (int)int(_4686.z + 63.0f)))) {
                          _4747 = (_4724 & 127);
                          _4748 = (_4725 & 63);
                          _4749 = (_4726 & 127);
                          _4750 = _4684;
                        } else {
                          _4739 = _4684 + 1;
                          if ((uint)_4739 < (uint)8) {
                            _4684 = _4739;
                            continue;
                          } else {
                            _4747 = -10000;
                            _4748 = -10000;
                            _4749 = -10000;
                            _4750 = -10000;
                          }
                        }
                        if (!((uint)_4750 > (uint)5)) {
                          if (_4671) {
                            _4755 = 0;
                            _4756 = _4677;
                            _4757 = _4676;
                            _4758 = _4675;
                            _4759 = _4674;
                            while(true) {
                              _4768 = 0;
                              _4769 = _4756;
                              _4770 = _4757;
                              _4771 = _4758;
                              _4772 = _4759;
                              while(true) {
                                _4775 = _4755 + _4749;
                                _4776 = _4775 + ((uint)(((int)(_4750 * 130)) | 1));
                                _4783 = _4768 + _4748;
                                if (!(((uint)_4783 > (uint)63) || ((uint)(_4747 | _4775) > (uint)127))) {
                                  _4792 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_4747, _4783, _4776, 0)))).x) & 4194303;
                                  _4795 = (_4792 != 0);
                                  _4796 = _4792;
                                  _4797 = _4750;
                                  _4798 = _4775;
                                  _4799 = _4783;
                                  _4800 = _4747;
                                } else {
                                  _4795 = false;
                                  _4796 = 0;
                                  _4797 = 0;
                                  _4798 = 0;
                                  _4799 = 0;
                                  _4800 = 0;
                                }
                                if (!_4795) {
                                  _4802 = _4747 + 1;
                                  _4803 = _4768 + _4748;
                                  if (!(((uint)_4803 > (uint)63) || ((uint)(_4802 | _4775) > (uint)127))) {
                                    _5991 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_4802, _4803, _4776, 0)))).x) & 4194303;
                                    _5994 = (_5991 != 0);
                                    _5995 = _5991;
                                    _5996 = _4750;
                                    _5997 = _4775;
                                    _5998 = _4803;
                                    _5999 = _4802;
                                  } else {
                                    _5994 = false;
                                    _5995 = 0;
                                    _5996 = 0;
                                    _5997 = 0;
                                    _5998 = 0;
                                    _5999 = 0;
                                  }
                                  if (!_5994) {
                                    _4809 = _4772;
                                    _4810 = _4771;
                                    _4811 = _4770;
                                    _4812 = _4769;
                                    _4813 = 0;
                                  } else {
                                    _4809 = _5999;
                                    _4810 = _5998;
                                    _4811 = _5997;
                                    _4812 = _5996;
                                    _4813 = _5995;
                                  }
                                } else {
                                  _4809 = _4800;
                                  _4810 = _4799;
                                  _4811 = _4798;
                                  _4812 = _4797;
                                  _4813 = _4796;
                                }
                                while(true) {
                                  _4814 = _4768 + 1;
                                  if (((int)_4814 < (int)2) && (_4813 == 0)) {
                                    _4768 = _4814;
                                    _4769 = _4812;
                                    _4770 = _4811;
                                    _4771 = _4810;
                                    _4772 = _4809;
                                    __loop_jump_target = 4767;
                                    break;
                                  }
                                  while(true) {
                                    _4778 = _4755 + 1;
                                    if (((int)_4778 < (int)2) && (_4813 == 0)) {
                                      _4755 = _4778;
                                      _4756 = _4812;
                                      _4757 = _4811;
                                      _4758 = _4810;
                                      _4759 = _4809;
                                      __loop_jump_target = 4754;
                                      break;
                                    }
                                    while(true) {
                                      _4762 = _4812;
                                      _4763 = _4811;
                                      _4764 = _4810;
                                      _4765 = _4809;
                                      break;
                                    }
                                    break;
                                  }
                                  if (__loop_jump_target != -1) {
                                    break;
                                  }
                                  break;
                                }
                                if (__loop_jump_target == 4767) {
                                  __loop_jump_target = -1;
                                  continue;
                                }
                                if (__loop_jump_target != -1) {
                                  break;
                                }
                                break;
                              }
                              if (__loop_jump_target == 4754) {
                                __loop_jump_target = -1;
                                continue;
                              }
                              if (__loop_jump_target != -1) {
                                break;
                              }
                              break;
                            }
                          } else {
                            _4762 = _4677;
                            _4763 = _4676;
                            _4764 = _4675;
                            _4765 = _4674;
                          }
                          if ((uint)_4762 < (uint)6) {
                            _4819 = _4762 * 130;
                            _4825 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_4765, _4764, ((int)(((uint)(_4819 | 1)) + _4763)), 0)))).x) & 4194303;
                            [branch]
                            if (!(_4825 == 0)) {
                              _4829 = 1 << (_4762 & 31);
                              _4831 = float((int)(_4829)) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                              _4833 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((uint)(_4762 + 20u))];
                              _4868 = -0.0f - _4445;
                              _4869 = -0.0f - _4449;
                              _4870 = -0.0f - _4452;
                              _4872 = 0.0f;
                              _4873 = 0.0f;
                              _4874 = 0.0f;
                              _4875 = 0.0f;
                              _4876 = 0;
                              while(true) {
                                _4878 = (_4825 + -1) + _4876;
                                _4881 = __3__37__0__0__g_surfelDataBuffer[_4878]._baseColor;
                                _4883 = __3__37__0__0__g_surfelDataBuffer[_4878]._normal;
                                _4886 = __3__37__0__0__g_surfelDataBuffer[_4878]._radius;
                                if (!(_4881 == 0)) {
                                  _4889 = __3__37__0__0__g_surfelDataBuffer[_4878]._radiance.z;
                                  _4890 = __3__37__0__0__g_surfelDataBuffer[_4878]._radiance.y;
                                  _4891 = __3__37__0__0__g_surfelDataBuffer[_4878]._radiance.x;
                                  _4897 = (float)((uint)((uint)(_4881 & 255)));
                                  _4898 = (float)((uint)((uint)(((uint)(_4881) >> 8) & 255)));
                                  _4899 = (float)((uint)((uint)(((uint)(_4881) >> 16) & 255)));
                                  _4924 = select(((_4897 * 0.003921568859368563f) < 0.040449999272823334f), (_4897 * 0.0003035269910469651f), exp2(log2((_4897 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
                                  _4925 = select(((_4898 * 0.003921568859368563f) < 0.040449999272823334f), (_4898 * 0.0003035269910469651f), exp2(log2((_4898 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
                                  _4926 = select(((_4899 * 0.003921568859368563f) < 0.040449999272823334f), (_4899 * 0.0003035269910469651f), exp2(log2((_4899 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
                                  _4938 = (((float)((uint)((uint)(_4883 & 255)))) * 0.007874015718698502f) + -1.0f;
                                  _4939 = (((float)((uint)((uint)(((uint)(_4883) >> 8) & 255)))) * 0.007874015718698502f) + -1.0f;
                                  _4940 = (((float)((uint)((uint)(((uint)(_4883) >> 16) & 255)))) * 0.007874015718698502f) + -1.0f;
                                  _4942 = rsqrt(dot(float3(_4938, _4939, _4940), float3(_4938, _4939, _4940)));  // [sem: invLength]
                                  _4947 = ((_4883 & 16777215) == 0);
                                  _4951 = float(_4891);
                                  _4952 = float(_4890);
                                  _4953 = float(_4889);
                                  _4957 = (_4831 * 0.0019607844296842813f) * ((float)((uint16_t)((uint)(_4886 & 255))));
                                  _4973 = (((((float)((uint)((uint)((uint)(_4881) >> 24)))) * 0.003937007859349251f) + -0.5f) * _4831) + ((((_4833.x + -63.5f) + float((int)(((int)((_4765 + 64u) - (uint)(int(_4833.x)))) & 127))) * _4831) - _viewPos.x);
                                  _4974 = (((((float)((uint)((uint)((uint)(_4883) >> 24)))) * 0.003937007859349251f) + -0.5f) * _4831) + ((((_4833.y + -31.5f) + float((int)(((int)((_4764 + 32u) - (uint)(int(_4833.y)))) & 63))) * _4831) - _viewPos.y);
                                  _4975 = (((((float)((uint16_t)((uint)((uint16_t)(_4886) >> 8)))) * 0.003937007859349251f) + -0.5f) * _4831) + ((((_4833.z + -63.5f) + float((int)(((int)((_4763 + 64u) - (uint)(int(_4833.z)))) & 127))) * _4831) - _viewPos.z);
                                  _4993 = _4973 - _4538;
                                  _4994 = _4974 - _4537;
                                  _4995 = _4975 - _4536;
                                  _4996 = dot(float3(_4993, _4994, _4995), float3(_4868, _4869, _4870));
                                  _5000 = _4993 - (_4996 * _4868);
                                  _5001 = _4994 - (_4996 * _4869);
                                  _5002 = _4995 - (_4996 * _4870);
                                  _5028 = 1.0f / ((float)((uint)_4829));
                                  _5032 = frac(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _4975) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z) * _5028);
                                  _5057 = select(((int)_4762 > (int)5), 1.0f, ((saturate((saturate(dot(float3(_4868, _4869, _4870), float3(select(_4947, _4868, (_4942 * _4938)), select(_4947, _4869, (_4942 * _4939)), select(_4947, _4870, (_4942 * _4940))))) + -0.03125f) * 1.0322580337524414f) * ((float)((bool)(uint)(dot(float3(_5000, _5001, _5002), float3(_5000, _5001, _5002)) < ((_4957 * _4957) * 16.0f))))) * ((float)((bool)(uint)(((__3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _4973) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _5028), (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _4974) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y) * _5028), (((((float)((uint)_4819)) + 1.0f) + ((select((_5032 < 0.0f), 1.0f, 0.0f) + _5032) * 128.0f)) * 0.000961538462433964f)), 0.0f)).x) > ((_4831 * 0.25f) * (saturate((dot(float3(_4951, _4952, _4953), float3(0.21267099678516388f, 0.7151600122451782f, 0.0721689984202385f)) * 9.999999747378752e-05f) / _exposure3.w) + 1.0f)))))));
                                  _5064 = (((((_4925 * 0.3395099937915802f) + (_4924 * 0.6131200194358826f)) + (_4926 * 0.047370001673698425f)) * _4951) * _5057) + _4872;
                                  _5065 = (((((_4925 * 0.9163600206375122f) + (_4924 * 0.07020000368356705f)) + (_4926 * 0.013450000435113907f)) * _4952) * _5057) + _4873;
                                  _5066 = (((((_4925 * 0.10958000272512436f) + (_4924 * 0.02061999961733818f)) + (_4926 * 0.8697999715805054f)) * _4953) * _5057) + _4874;
                                  _5067 = _5057 + _4875;
                                  _5068 = _4876 + 1;
                                  if ((uint)_5068 < (uint)4) {
                                    _4872 = _5064;
                                    _4873 = _5065;
                                    _4874 = _5066;
                                    _4875 = _5067;
                                    _4876 = _5068;
                                    continue;
                                  } else {
                                    _5071 = _5064;
                                    _5072 = _5065;
                                    _5073 = _5066;
                                    _5074 = _5067;
                                  }
                                } else {
                                  _5071 = _4872;
                                  _5072 = _4873;
                                  _5073 = _4874;
                                  _5074 = _4875;
                                }
                                if (_5074 > 0.0f) {
                                  _5077 = 1.0f / _5074;
                                  _5091 = (-0.0f - min(0.0f, (-0.0f - (_5071 * _5077))));
                                  _5092 = (-0.0f - min(0.0f, (-0.0f - (_5072 * _5077))));
                                  _5093 = (-0.0f - min(0.0f, (-0.0f - (_5073 * _5077))));
                                } else {
                                  _5091 = _5071;
                                  _5092 = _5072;
                                  _5093 = _5073;
                                }
                                break;
                              }
                            } else {
                              _5091 = 0.0f;
                              _5092 = 0.0f;
                              _5093 = 0.0f;
                            }
                          } else {
                            _5091 = 0.0f;
                            _5092 = 0.0f;
                            _5093 = 0.0f;
                          }
                        } else {
                          _5091 = 0.0f;
                          _5092 = 0.0f;
                          _5093 = 0.0f;
                        }
                        break;
                      }
                    } else {
                      _5091 = 0.0f;
                      _5092 = 0.0f;
                      _5093 = 0.0f;
                    }
                    _5094 = _4531 * 0.31830987334251404f;
                    _5098 = (_5091 * _5094) + _4534;
                    _5099 = (_5092 * _5094) + _4533;
                    _5100 = (_5093 * _5094) + _4532;
                    _5103 = exp2(_4588 * -28.853900909423828f) * _4531;
                    if (_5103 < 0.050000011920928955f) {
                      _5119 = _5098;
                      _5120 = _5099;
                      _5121 = _5100;
                      _5122 = _4535;
                      _5124 = _5119;
                      _5125 = _5120;
                      _5126 = _5121;
                      _5127 = _5122;
                    } else {
                      _5106 = _4588 + _4535;
                      _5110 = (_4588 * _4445) + _4538;
                      _5111 = (_4588 * _4449) + _4537;
                      _5112 = (_4588 * _4452) + _4536;
                      _5113 = _4530 + 1;
                      if (((uint)_5113 < (uint)32) && (_5106 < 32.0f)) {
                        _4530 = _5113;
                        _4531 = _5103;
                        _4532 = _5100;
                        _4533 = _5099;
                        _4534 = _5098;
                        _4535 = _5106;
                        _4536 = _5112;
                        _4537 = _5111;
                        _4538 = _5110;
                        __loop_jump_target = 4529;
                        break;
                      } else {
                        _5119 = _5098;
                        _5120 = _5099;
                        _5121 = _5100;
                        _5122 = 0.0f;
                        _5124 = _5119;
                        _5125 = _5120;
                        _5126 = _5121;
                        _5127 = _5122;
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
            if (__loop_jump_target == 4529) {
              __loop_jump_target = -1;
              continue;
            }
            if (__loop_jump_target != -1) {
              break;
            }
            break;
          }
        } else {
          _5124 = 0.0f;
          _5125 = 0.0f;
          _5126 = 0.0f;
          _5127 = 0.0f;
        }
        if (_5127 > 0.0f) {
          _5139 = (_5127 * _4445) + _166;
          _5140 = (_5127 * _4449) + _167;
          _5141 = (_5127 * _4452) + _168;
          _5144 = (_sunDirection.y > 0.0f);
          if ((_5144) || ((!(_5144)) && (_sunDirection.y > _moonDirection.y))) {
            _5156 = _sunDirection.x;
            _5157 = _sunDirection.y;
            _5158 = _sunDirection.z;
          } else {
            _5156 = _moonDirection.x;
            _5157 = _moonDirection.y;
            _5158 = _moonDirection.z;
          }
          if ((_5144) || ((!(_5144)) && (_sunDirection.y > _moonDirection.y))) {
            _5178 = _precomputedAmbient7.y;
          } else {
            _5178 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
          }
          _5185 = _viewPos.x + _5139;
          _5187 = (_earthRadius + _5140) + _viewPos.y;
          _5188 = _viewPos.z + _5141;
          _5194 = sqrt(((_5185 * _5185) + (_5187 * _5187)) + (_5188 * _5188));
          _5199 = dot(float3((_5185 / _5194), (_5187 / _5194), (_5188 / _5194)), float3(_5156, _5157, _5158));
          _5205 = min(max(((_5194 - _earthRadius) / _atmosphereThickness), 16.0f), (_atmosphereThickness + -16.0f));
          _5213 = max(_5205, 0.0f);
          _5220 = (-0.0f - sqrt((_5213 + (_earthRadius * 2.0f)) * _5213)) / (_5213 + _earthRadius);
          if (_5199 > _5220) {
            _5243 = ((exp2(log2(saturate((_5199 - _5220) / (1.0f - _5220))) * 0.20000000298023224f) * 0.4921875f) + 0.50390625f);
          } else {
            _5243 = ((exp2(log2(saturate((_5220 - _5199) / (_5220 + 1.0f))) * 0.20000000298023224f) * 0.4921875f) + 0.00390625f);
          }
  // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
          _5248 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_5205 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f), _5243), 0.0f);
          _5270 = ((_5248.y * 1.9999999494757503e-05f) * _mieAerosolDensity) * (_mieAerosolAbsorption + 1.0f);  // [sem: _3__36__0__0__g_texNetDensity_sampleLod_derived]
          _5288 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.960784317134312e-07f) + (_ozoneRatio * 2.05560013455397e-06f)) * _5248.x) + _5270) * -1.4426950216293335f);
          _5289 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.960784317134312e-07f) + (_ozoneRatio * 4.978800461685751e-06f)) * _5248.x) + _5270) * -1.4426950216293335f);
          _5290 = exp2(((((_ozoneRatio * 2.1360001767334325e-07f) + (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.960784317134312e-07f)) * _5248.x) + _5270) * -1.4426950216293335f);
          _5309 = sqrt((_5139 * _5139) + (_5141 * _5141));
          _5317 = (_cloudAltitude - (max(((_5309 * _5309) + -4e+05f), 0.0f) * 9.999999974752427e-07f)) - _viewPos.y;
          _5329 = (_cloudThickness * (0.5f - (float((int)(((int)(uint)((int)(_5157 > 0.0f))) - ((int)(uint)((int)(_5157 < 0.0f))))) * 0.5f))) + _5317;
          if (_5140 < _5317) {
            _5332 = dot(float3(0.0f, 1.0f, 0.0f), float3(_5156, _5157, _5158));
            _5338 = select((abs(_5332) < 9.99999993922529e-09f), 1e+08f, ((_5329 - dot(float3(0.0f, 1.0f, 0.0f), float3(_5139, _5140, _5141))) / _5332));
            _5344 = ((_5338 * _5156) + _5139);
            _5345 = _5329;
            _5346 = ((_5338 * _5158) + _5141);
          } else {
            _5344 = _5139;
            _5345 = _5140;
            _5346 = _5141;
          }
          _5366 = saturate(abs(_5157) * 4.0f);  // [sem: expr_sat]
          _5368 = (_5366 * _5366) * exp2(((_distanceScale * -1.4426950216293335f) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_5344 * 4.999999873689376e-05f) + 0.5f), ((_5345 - _5317) / _cloudThickness), ((_5346 * 4.999999873689376e-05f) + 0.5f)), 0.0f)).x)) * (_cloudScatteringCoefficient / _distanceScale));
          _5375 = ((1.0f - _5368) * saturate(((_5140 - _cloudThickness) - _5317) * 0.10000000149011612f)) + _5368;
          _5376 = _5375 * (((_5289 * 0.3395099937915802f) + (_5288 * 0.6131200194358826f)) + (_5290 * 0.047370001673698425f));
          _5377 = _5375 * (((_5289 * 0.9163600206375122f) + (_5288 * 0.07020000368356705f)) + (_5290 * 0.013450000435113907f));
          _5378 = _5375 * (((_5289 * 0.10958000272512436f) + (_5288 * 0.02061999961733818f)) + (_5290 * 0.8697999715805054f));
          _5401 = (_viewPos.x - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].x)) + _5139;
          _5402 = (_viewPos.y - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].y)) + _5140;
          _5403 = (_viewPos.z - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].z)) + _5141;
          _5423 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].x), _5403, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].x), _5402, (_5401 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][3].x);
          _5427 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].y), _5403, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].y), _5402, (_5401 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].y)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][3].y);
          _5434 = 2.0f / __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y;
          _5435 = 1.0f - _5434;
          _5442 = (((!(_5423 <= _5435)) || (!(_5423 >= _5434))) || (!(_5427 <= _5435))) || (!(_5427 >= _5434));
          _5454 = (_viewPos.x - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].x)) + _5139;
          _5455 = (_viewPos.y - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].y)) + _5140;
          _5456 = (_viewPos.z - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].z)) + _5141;
          _5476 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].x), _5456, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].x), _5455, (_5454 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][3].x);
          _5480 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].y), _5456, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].y), _5455, (_5454 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].y)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][3].y);
          _5491 = (((!(_5476 <= _5435)) || (!(_5476 >= _5434))) || (!(_5480 <= _5435))) || (!(_5480 >= _5434));
          _5492 = select(_5491, select(_5442, -1, 1), 0);
          _5493 = select(_5491, select(_5442, 0.0f, _5423), _5476);
          _5494 = select(_5491, select(_5442, 0.0f, _5427), _5480);
          _5495 = select(_5491, select(_5442, 0.0f, (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].z), _5403, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].z), _5402, (_5401 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].z)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][3].z))), (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].z), _5456, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].z), _5455, (_5454 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].z)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][3].z)));
          _5497 = select((_5491 && _5442), 0.0f, 0.0010000000474974513f);
          [branch]
          if (!(_5492 == -1)) {
            _5503 = (_5493 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x) + -0.5f;
            _5504 = (_5494 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y) + -0.5f;
            _5507 = int(floor(_5503));
            _5508 = int(floor(_5504));
            _5511 = _5507 + 1u;
            _5512 = _5508 + 1u;
            if (!(((uint)_5507 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x))) || ((uint)_5508 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y))))) {
              _5527 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_5507, _5508, _5492, 0)))).x);
              _5528 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_5511, _5508, _5492, 0)))).x);
              _5529 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_5507, _5512, _5492, 0)))).x);
              _5530 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_5511, _5512, _5492, 0)))).x);
            } else {
              _5527 = 0.0f;
              _5528 = 0.0f;
              _5529 = 0.0f;
              _5530 = 0.0f;
            }
            _5531 = _5492 << 2;
            _5533 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_5531 + 103))];
            _5539 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_5531 + 104))];
            _5545 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_5531 + 105))];
            _5551 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_5531 + 106))];
            _5556 = _5533.x * _5493;
            _5560 = _5533.y * _5493;
            _5564 = _5533.z * _5493;
            _5568 = _5533.w * _5493;
            _5571 = mad(_5545.w, _5527, mad(_5539.w, _5494, _5568)) + _5551.w;
            _5572 = (mad(_5545.x, _5527, mad(_5539.x, _5494, _5556)) + _5551.x) / _5571;
            _5573 = (mad(_5545.y, _5527, mad(_5539.y, _5494, _5560)) + _5551.y) / _5571;
            _5574 = (mad(_5545.z, _5527, mad(_5539.z, _5494, _5564)) + _5551.z) / _5571;
            _5577 = _5493 + (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.z * 4.0f);
            _5593 = mad(_5545.w, _5528, mad(_5539.w, _5494, (_5533.w * _5577))) + _5551.w;
            _5599 = _5494 - (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.w * 2.0f);
            _5611 = mad(_5545.w, _5529, mad(_5539.w, _5599, _5568)) + _5551.w;
            _5615 = ((mad(_5545.x, _5529, mad(_5539.x, _5599, _5556)) + _5551.x) / _5611) - _5572;
            _5616 = ((mad(_5545.y, _5529, mad(_5539.y, _5599, _5560)) + _5551.y) / _5611) - _5573;
            _5617 = ((mad(_5545.z, _5529, mad(_5539.z, _5599, _5564)) + _5551.z) / _5611) - _5574;
            _5618 = ((mad(_5545.x, _5528, mad(_5539.x, _5494, (_5533.x * _5577))) + _5551.x) / _5593) - _5572;
            _5619 = ((mad(_5545.y, _5528, mad(_5539.y, _5494, (_5533.y * _5577))) + _5551.y) / _5593) - _5573;
            _5620 = ((mad(_5545.z, _5528, mad(_5539.z, _5494, (_5533.z * _5577))) + _5551.z) / _5593) - _5574;
            _5623 = (_5617 * _5619) - (_5616 * _5620);
            _5626 = (_5615 * _5620) - (_5617 * _5618);
            _5629 = (_5616 * _5618) - (_5615 * _5619);
            _5631 = rsqrt(dot(float3(_5623, _5626, _5629), float3(_5623, _5626, _5629)));  // [sem: invLength]
            _5635 = frac(_5503);
            _5640 = (saturate(dot(float3(_4445, _4449, _4452), float3((_5623 * _5631), (_5626 * _5631), (_5629 * _5631)))) * 0.0020000000949949026f) + _5495;
            _5653 = saturate(exp2((_5527 - _5640) * 1442695.0f));  // [sem: expr_sat]
            _5655 = saturate(exp2((_5529 - _5640) * 1442695.0f));  // [sem: expr_sat]
            _5661 = ((saturate(exp2((_5528 - _5640) * 1442695.0f)) - _5653) * _5635) + _5653;
            _5668 = _5527;
            _5669 = _5528;
            _5670 = _5529;
            _5671 = _5530;
  // [sem: expr_sat]
            _5672 = saturate((((_5655 - _5661) + ((saturate(exp2((_5530 - _5640) * 1442695.0f)) - _5655) * _5635)) * frac(_5504)) + _5661);
          } else {
            _5668 = 0.0f;
            _5669 = 0.0f;
            _5670 = 0.0f;
            _5671 = 0.0f;
            _5672 = 1.0f;  // [sem: expr_sat]
          }
          _5692 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].x), _5141, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].x), _5140, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].x) * _5139))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][3].x);
          _5696 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].y), _5141, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].y), _5140, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].y) * _5139))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][3].y);
          _5700 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].z), _5141, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].z), _5140, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].z) * _5139))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][3].z);
          _5703 = 4.0f / __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y;
          _5704 = 1.0f - _5703;
          if (!(((!(_5692 <= _5704)) || (!(_5692 >= _5703))) || (!(_5696 <= _5704)))) {
            _5715 = (_5700 >= -1.0f) && ((_5700 <= 1.0f) && (_5696 >= _5703));
            _5723 = ((int)(uint)(_5715));
            _5724 = select(_5715, 1, _5492);
            _5725 = select(_5715, _5692, _5493);
            _5726 = select(_5715, _5696, _5494);
            _5727 = select(_5715, _5700, _5495);
            _5728 = select(_5715, 9.999999747378752e-06f, _5497);
          } else {
            _5723 = 0;
            _5724 = _5492;
            _5725 = _5493;
            _5726 = _5494;
            _5727 = _5495;
            _5728 = _5497;
          }
          _5748 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].x), _5141, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].x), _5140, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].x) * _5139))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][3].x);
          _5752 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].y), _5141, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].y), _5140, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].y) * _5139))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][3].y);
          _5756 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].z), _5141, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].z), _5140, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].z) * _5139))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][3].z);
          if (!(((!(_5748 <= _5704)) || (!(_5748 >= _5703))) || (!(_5752 <= _5704)))) {
            _5767 = (_5756 >= -1.0f) && ((_5752 >= _5703) && (_5756 <= 1.0f));
            _5775 = select(_5767, 1, _5723);
            _5776 = select(_5767, 0, _5724);
            _5777 = select(_5767, _5748, _5725);
            _5778 = select(_5767, _5752, _5726);
            _5779 = select(_5767, _5756, _5727);
            _5780 = select(_5767, 9.999999747378752e-06f, _5728);
          } else {
            _5775 = _5723;
            _5776 = _5724;
            _5777 = _5725;
            _5778 = _5726;
            _5779 = _5727;
            _5780 = _5728;
          }
          [branch]
          if (!(_5775 == 0)) {
            _5790 = int(floor((_5777 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f));
            _5791 = int(floor((_5778 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f));
            _5794 = _5790 + 1u;
            _5795 = _5791 + 1u;
            if (!(((uint)_5790 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x))) || ((uint)_5791 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y))))) {
              _5810 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_5790, _5791, _5776, 0)))).x);
              _5811 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_5794, _5791, _5776, 0)))).x);
              _5812 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_5790, _5795, _5776, 0)))).x);
              _5813 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_5794, _5795, _5776, 0)))).x);
            } else {
              _5810 = _5668;
              _5811 = _5669;
              _5812 = _5670;
              _5813 = _5671;
            }
            if ((_5144) || ((!(_5144)) && (_sunDirection.y > _moonDirection.y))) {
              _5825 = _sunDirection.x;
              _5826 = _sunDirection.y;
              _5827 = _sunDirection.z;
            } else {
              _5825 = _moonDirection.x;
              _5826 = _moonDirection.y;
              _5827 = _moonDirection.z;
            }
            _5833 = (_5780 - (saturate(-0.0f - dot(float3(_5825, _5826, _5827), float3(_4445, _4449, _4452))) * 9.999999747378752e-05f)) + _5779;
            _5846 = min(((float)((bool)(uint)(_5810 > _5833))), min(min(((float)((bool)(uint)(_5811 > _5833))), ((float)((bool)(uint)(_5812 > _5833)))), ((float)((bool)(uint)(_5813 > _5833)))));
          } else {
            _5846 = _5672;
          }
          _5854 = (_viewPos.x - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.x) + _5139;
          _5855 = (_viewPos.y - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.y) + _5140;
          _5856 = (_viewPos.z - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.z) + _5141;
          _5876 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].x), _5856, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].x), _5855, (_5854 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[3].x);
          _5880 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].y), _5856, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].y), _5855, (_5854 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].y)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[3].y);
          _5884 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].z), _5856, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].z), _5855, (_5854 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].z)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[3].z);
          if (saturate(_5876) == _5876) {
            if ((_5884 >= 9.999999747378752e-05f) && ((_5884 <= 1.0f) && (saturate(_5880) == _5880))) {
              _5899 = frac((_5876 * 1024.0f) + -0.5f);
  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
              _5903 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_5876, _5880));
              _5908 = _5884 + -0.004999999888241291f;
              _5913 = select((_5903.w > _5908), 1.0f, 0.0f);
              _5915 = select((_5903.x > _5908), 1.0f, 0.0f);
              _5922 = ((select((_5903.z > _5908), 1.0f, 0.0f) - _5913) * _5899) + _5913;
  // [sem: expr_sat]
              _5928 = saturate((((((select((_5903.y > _5908), 1.0f, 0.0f) - _5915) * _5899) + _5915) - _5922) * frac((_5880 * 1024.0f) + -0.5f)) + _5922);
            } else {
              _5928 = 1.0f;  // [sem: expr_sat]
            }
          } else {
            _5928 = 1.0f;  // [sem: expr_sat]
          }
          _5931 = _5127 * 20.0f;
          _5932 = _5931 * _5931;
          _5941 = (((exp2(_5932 * -0.48089835047721863f) * 3.0f) + exp2(_5932 * -1.4426950216293335f)) * 0.25f) * (saturate(min(_5846, _5928)) * _5178);
          _5946 = (_5941 * (((_5376 * 0.6131200194358826f) + (_5377 * 0.3395099937915802f)) + (_5378 * 0.047370001673698425f)));
          _5947 = (_5941 * (((_5376 * 0.07020000368356705f) + (_5377 * 0.9163600206375122f)) + (_5378 * 0.013450000435113907f)));
          _5948 = (_5941 * (((_5376 * 0.02061999961733818f) + (_5377 * 0.10958000272512436f)) + (_5378 * 0.8697999715805054f)));
        } else {
          _5946 = -0.0f;
          _5947 = -0.0f;
          _5948 = -0.0f;
        }
        _5954 = saturate(1.0f - (_171 * 0.0010000000474974513f));  // [sem: expr_sat]
        _5962 = ((_5954 * (_5946 - min(0.0f, (-0.0f - _5124)))) + _4354);
        _5963 = ((_5954 * (_5947 - min(0.0f, (-0.0f - _5125)))) + _4355);
        _5964 = (((_5948 - min(0.0f, (-0.0f - _5126))) * _5954) + _4356);
        break;
      }
    } else {
      _5962 = _4354;
      _5963 = _4355;
      _5964 = _4356;
    }
    __3__38__0__1__g_diffuseResultUAV[int2(_74, _75)] = float4(((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - min(15000.0f, (_exposure4.x * _5962)))))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - min(15000.0f, (_exposure4.x * _5963)))))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - min(15000.0f, (_exposure4.x * _5964)))))))), (half)(half(1.0f - _4308)));
    break;
  }
}
