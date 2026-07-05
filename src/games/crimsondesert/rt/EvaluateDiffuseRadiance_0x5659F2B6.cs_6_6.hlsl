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
  float _177;
  bool _194;
  int _247;
  int _305;
  int _326;
  int _384;
  int _392;
  int _455;
  int _456;
  int _457;
  int _458;
  int _474;
  int _475;
  int _476;
  int _477;
  int _484;
  int _547;
  int _548;
  int _549;
  int _550;
  int _555;
  int _556;
  int _557;
  int _558;
  int _559;
  int _562;
  int _563;
  int _564;
  int _565;
  int _568;
  int _569;
  int _570;
  int _571;
  int _572;
  bool _595;
  int _596;
  int _597;
  int _598;
  int _599;
  int _600;
  int _609;
  int _610;
  int _611;
  int _612;
  int _613;
  float _669;
  float _670;
  float _671;
  float _672;
  float _673;
  float _674;
  float _675;
  int _676;
  float _888;
  float _889;
  float _890;
  float _891;
  float _908;
  float _909;
  float _910;
  float _930;
  float _931;
  float _932;
  float _954;
  float _955;
  float _956;
  float _963;
  float _964;
  float _965;
  float _966;
  float _967;
  float _968;
  float _969;
  float _970;
  int _971;
  float _972;
  float _973;
  float _974;
  float _975;
  float _976;
  bool _991;
  float _1156;
  float _1157;
  float _1158;
  float _1159;
  float _1170;
  float _1171;
  float _1172;
  float _1173;
  float _1174;
  float _1175;
  float _1176;
  float _1177;
  float _1178;
  int _1179;
  int _1181;
  int _1242;
  int _1243;
  float _1250;
  float _1310;
  float _1311;
  float _1312;
  float _1313;
  int _1319;
  int _1377;
  int _1414;
  float _1415;
  float _1416;
  float _1417;
  float _1418;
  float _1419;
  int _1421;
  float _1638;
  float _1639;
  float _1658;
  float _1659;
  float _1660;
  float _1661;
  float _1662;
  float _1664;
  float _1665;
  float _1666;
  float _1667;
  float _1668;
  float _1669;
  int _1686;
  int _1749;
  int _1750;
  int _1751;
  int _1752;
  int _1768;
  int _1769;
  int _1770;
  int _1771;
  int _1777;
  int _1840;
  int _1841;
  int _1842;
  int _1843;
  int _1848;
  int _1849;
  int _1850;
  int _1851;
  int _1852;
  int _1855;
  int _1856;
  int _1857;
  int _1858;
  int _1861;
  int _1862;
  int _1863;
  int _1864;
  int _1865;
  bool _1888;
  int _1889;
  int _1890;
  int _1891;
  int _1892;
  int _1893;
  int _1902;
  int _1903;
  int _1904;
  int _1905;
  int _1906;
  float _1965;
  float _1966;
  float _1967;
  float _1968;
  int _1969;
  float _2170;
  float _2171;
  float _2172;
  float _2173;
  float _2190;
  float _2191;
  float _2192;
  float _2193;
  float _2221;
  float _2222;
  float _2223;
  float _2224;
  float _2225;
  bool _2239;
  float _2262;
  float _2263;
  float _2264;
  float _2265;
  float _2351;
  float _2352;
  float _2353;
  float _2496;
  float _2497;
  float _2498;
  float _2499;
  half _2500;
  half _2501;
  half _2502;
  half _2503;
  float _2641;
  float _2642;
  float _2643;
  float _2644;
  float _2645;
  float _2646;
  float _2647;
  float _2648;
  half _2649;
  half _2650;
  half _2651;
  half _2652;
  float _2703;
  float _2704;
  float _2705;
  float _2706;
  int _2707;
  int _2708;
  float _2755;
  float _2756;
  float _2757;
  float _2758;
  int _2759;
  int _2760;
  float _2790;
  float _2791;
  float _2792;
  float _2793;
  float _2912;
  float _2913;
  float _2914;
  float _2933;
  float _2934;
  float _2935;
  float _2936;
  float _3018;
  float _3053;
  float _3054;
  float _3055;
  float _3075;
  float _3133;
  float _3234;
  float _3235;
  float _3236;
  float _3304;
  float _3305;
  float _3306;
  float _3307;
  half _3308;
  half _3309;
  half _3310;
  float _3311;
  float _3312;
  float _3313;
  float _3314;
  float _3315;
  float _3447;
  float _3448;
  float _3449;
  float _3553;
  float _3554;
  float _3555;
  float _3556;
  float _3694;
  float _3695;
  float _3696;
  float _3697;
  float _3698;
  float _3729;
  float _3730;
  float _3731;
  float _3732;
  int _3733;
  int _3734;
  float _3765;
  float _3766;
  float _3767;
  float _3768;
  int _3769;
  int _3770;
  float _3800;
  float _3801;
  float _3802;
  float _3803;
  float _3815;
  float _3816;
  float _3817;
  float _3836;
  float _3895;
  float _3952;
  float _4006;
  float _4075;
  float _4076;
  float _4077;
  float _4130;
  float _4131;
  float _4132;
  float _4152;
  float _4153;
  float _4154;
  float _4155;
  int _4166;
  int _4224;
  float _4265;
  float _4291;
  float _4292;
  float _4293;
  float _4350;
  float _4351;
  float _4352;
  bool _4382;
  int _4383;
  int _4384;
  int _4385;
  int _4386;
  int _4387;
  bool _4396;
  int _4397;
  int _4398;
  int _4399;
  int _4400;
  int _4401;
  float _197;
  float _198;
  float _199;
  float _200;
  float _202;
  float _203;
  float _204;
  float _205;
  bool _206;
  float _207;
  float4 _213;
  float4 _219;
  float _227;
  float _228;
  float _229;
  float _231;
  float _232;
  float _233;
  float _234;
  float _235;
  float _236;
  float _237;
  int _239;
  float _240;
  float _241;
  float _242;
  float _243;
  float _244;
  float _245;
  float4 _249;
  float4 _277;
  int _287;
  int _288;
  int _289;
  int _302;
  float _312;
  float _313;
  float _314;
  float _318;
  float _322;
  float _323;
  float _324;
  float4 _328;
  float4 _356;
  int _366;
  int _367;
  int _368;
  int _381;
  float4 _394;
  float4 _422;
  int _432;
  int _433;
  int _434;
  int _447;
  bool _471;
  float _479;
  float4 _486;
  float4 _514;
  int _524;
  int _525;
  int _526;
  int _539;
  int _575;
  uint _576;
  int _578;
  int _583;
  int _592;
  int _602;
  int _603;
  int _614;
  uint _619;
  int _625;
  uint _629;
  float _631;
  float4 _633;
  int _678;
  int _681;
  int _683;
  int16_t _686;
  half _689;
  half _690;
  half _691;
  float _697;
  float _698;
  float _699;
  float _724;
  float _725;
  float _726;
  float _738;
  float _739;
  float _740;
  float _742;
  bool _747;
  float _751;
  float _752;
  float _753;
  float _757;
  float _773;
  float _774;
  float _775;
  bool _793;
  float _794;
  float _795;
  float _796;
  float _799;
  float _802;
  float _805;
  float _806;
  float _810;
  float _811;
  float _812;
  float _838;
  float _842;
  float _867;
  bool _871;
  float _881;
  float _882;
  float _883;
  float _884;
  int _885;
  float _894;
  float _914;
  float _915;
  float _916;
  float _917;
  float _920;
  float _921;
  float _925;
  float _946;
  bool _978;
  float _995;
  float _996;
  float _997;
  float _1033;
  float _1034;
  float _1035;
  float _1036;
  float _1039;
  float _1040;
  uint2 _1065;
  float _1072;
  float4 _1103;
  float _1128;
  float _1129;
  float _1130;
  float _1132;
  float _1133;
  float _1134;
  float _1135;
  float _1141;
  float _1143;
  float _1151;
  float _1160;
  float _1161;
  float4 _1183;
  float4 _1211;
  int _1221;
  int _1222;
  int _1223;
  int _1236;
  float _1256;
  float _1258;
  float _1259;
  float _1272;
  float _1273;
  float _1274;
  float _1278;
  float _1279;
  float _1280;
  float _1284;
  float _1285;
  float _1286;
  float _1296;
  float _1317;
  float4 _1321;
  float4 _1349;
  int _1359;
  int _1360;
  int _1361;
  int _1374;
  float _1387;
  float _1388;
  float _1389;
  bool _1393;
  bool _1394;
  bool _1395;
  float _1396;
  float _1397;
  float _1398;
  bool _1399;
  bool _1400;
  bool _1401;
  float4 _1423;
  float4 _1442;
  float _1446;
  float _1447;
  float _1448;
  int _1464;
  float _1471;
  float _1472;
  float _1473;
  float _1474;
  float _1483;
  float _1484;
  float _1485;
  float _1486;
  float _1487;
  float _1488;
  int _1492;
  int _1493;
  int _1494;
  uint4 _1501;
  float _1518;
  float _1541;
  float _1542;
  float _1543;
  float _1574;
  float _1576;
  float _1583;
  float _1595;
  float _1601;
  float _1602;
  float _1618;
  float _1624;
  float _1644;
  float _1645;
  float _1649;
  float _1650;
  float _1651;
  int _1652;
  int _1670;
  float _1673;
  float _1677;
  float _1678;
  float _1679;
  float4 _1688;
  float4 _1716;
  int _1726;
  int _1727;
  int _1728;
  int _1741;
  bool _1765;
  float _1772;
  float4 _1779;
  float4 _1807;
  int _1817;
  int _1818;
  int _1819;
  int _1832;
  int _1868;
  uint _1869;
  int _1871;
  int _1876;
  int _1885;
  int _1895;
  int _1896;
  int _1907;
  uint _1912;
  int _1918;
  uint _1922;
  float _1924;
  float4 _1926;
  float _1961;
  float _1962;
  float _1963;
  int _1971;
  int _1974;
  int _1976;
  int16_t _1979;
  half _1982;
  half _1983;
  half _1984;
  float _1990;
  float _1991;
  float _1992;
  float _2017;
  float _2018;
  float _2019;
  float _2031;
  float _2032;
  float _2033;
  float _2035;
  bool _2040;
  float _2044;
  float _2045;
  float _2046;
  float _2050;
  float _2066;
  float _2067;
  float _2068;
  float _2088;
  float _2091;
  float _2094;
  float _2095;
  float _2099;
  float _2100;
  float _2101;
  float _2127;
  float _2131;
  float _2156;
  float _2163;
  float _2164;
  float _2165;
  float _2166;
  int _2167;
  float _2176;
  float _2201;
  float _2211;
  float _2212;
  float _2213;
  float _2215;
  float _2216;
  float _2228;
  bool _2229;
  float _2243;
  float _2244;
  float _2247;
  float _2268;
  float _2272;
  float _2274;
  float _2278;
  float _2279;
  float _2280;
  float _2310;
  float _2315;
  float _2316;
  half4 _2343;
  float _2360;
  float _2361;
  float _2362;
  float _2367;
  float _2368;
  float _2369;
  float _2389;
  float _2393;
  float _2400;
  float _2401;
  bool _2408;
  float _2417;
  float _2418;
  float _2419;
  float _2439;
  float _2443;
  bool _2454;
  float _2455;
  float _2456;
  float _2457;
  int _2458;
  float _2464;
  float _2465;
  int _2468;
  int _2469;
  uint _2472;
  uint _2473;
  half4 _2490;
  int _2504;
  float4 _2506;
  float4 _2512;
  float4 _2518;
  float4 _2524;
  float _2529;
  float _2533;
  float _2537;
  float _2541;
  float _2544;
  float _2545;
  float _2546;
  float _2547;
  float _2550;
  float _2566;
  float _2572;
  float _2584;
  float _2588;
  float _2589;
  float _2590;
  float _2591;
  float _2592;
  float _2593;
  float _2596;
  float _2599;
  float _2602;
  float _2604;
  float _2605;
  float _2606;
  float _2607;
  float _2608;
  float _2613;
  float _2626;
  float _2628;
  float _2634;
  float _2672;
  float _2676;
  float _2680;
  float _2683;
  float _2684;
  bool _2695;
  float _2728;
  float _2732;
  float _2736;
  bool _2747;
  int _2770;
  int _2771;
  uint _2774;
  uint _2775;
  uint _2794;
  float4 _2796;
  float4 _2802;
  float4 _2808;
  float4 _2814;
  float _2819;
  float _2823;
  float _2827;
  float _2831;
  float _2834;
  float _2835;
  float _2836;
  float _2837;
  float _2840;
  float _2856;
  float _2862;
  float _2874;
  float _2878;
  float _2879;
  float _2880;
  float _2881;
  float _2882;
  float _2883;
  float _2886;
  float _2889;
  float _2892;
  float _2894;
  float _2920;
  float _2941;
  float _2942;
  float _2943;
  float _2944;
  float _2945;
  float _2946;
  float _2966;
  float _2970;
  float _2974;
  float _2989;
  float4 _2993;
  float _2998;
  float _3003;
  float _3005;
  float _3012;
  float _3019;
  half _3020;
  half _3021;
  half _3022;
  half _3036;
  half _3037;
  half _3038;
  bool _3041;
  float _3078;
  float _3084;
  float _3089;
  float _3093;
  float _3095;
  float _3097;
  float _3103;
  float _3104;
  float _3110;
  float2 _3138;
  float _3157;
  float _3158;
  float _3160;
  float _3166;
  float _3169;
  float _3172;
  float _3178;
  float _3179;
  float _3180;
  float _3199;
  float _3207;
  float _3219;
  float _3222;
  float _3228;
  float _3249;
  float _3250;
  float _3256;
  float _3258;
  float _3265;
  float _3266;
  float _3267;
  float _3268;
  float _3287;
  bool _3289;
  float _3290;
  float _3291;
  float _3292;
  float _3293;
  half _3296;
  half _3297;
  half _3298;
  float _3323;
  float _3331;
  float _3342;
  float _3344;
  float _3345;
  float _3346;
  float _3348;
  float _3349;
  float _3350;
  float _3351;
  float _3352;
  float _3353;
  float _3354;
  float _3359;
  float _3361;
  float _3364;
  float _3365;
  float _3367;
  float _3370;
  float _3371;
  float _3379;
  float _3380;
  float _3381;
  float _3382;
  float _3394;
  float _3398;
  float _3409;
  float _3411;
  float _3413;
  float _3418;
  float _3419;
  float _3423;
  float _3424;
  float _3425;
  float _3426;
  float _3454;
  float _3455;
  float _3456;
  float _3457;
  float _3461;
  float _3462;
  float _3463;
  float _3467;
  float _3468;
  float _3469;
  float _3473;
  float _3477;
  bool _3488;
  float _3496;
  float _3497;
  float _3498;
  float _3502;
  float _3506;
  bool _3517;
  float _3519;
  float _3520;
  float _3521;
  float _3522;
  int _3523;
  float _3529;
  float _3530;
  int _3533;
  int _3534;
  uint _3537;
  uint _3538;
  int _3557;
  float4 _3559;
  float4 _3565;
  float4 _3571;
  float4 _3577;
  float _3582;
  float _3586;
  float _3590;
  float _3594;
  float _3597;
  float _3598;
  float _3599;
  float _3600;
  float _3603;
  float _3619;
  float _3625;
  float _3637;
  float _3641;
  float _3642;
  float _3643;
  float _3644;
  float _3645;
  float _3646;
  float _3649;
  float _3652;
  float _3655;
  float _3657;
  float _3661;
  float _3666;
  float _3679;
  float _3681;
  float _3687;
  float _3702;
  float _3706;
  float _3710;
  bool _3721;
  float _3738;
  float _3742;
  float _3746;
  bool _3757;
  int _3780;
  int _3781;
  uint _3784;
  uint _3785;
  float _3823;
  float _3837;
  float _3838;
  float _3839;
  float _3843;
  float _3847;
  float _3851;
  float _3866;
  float4 _3870;
  float _3875;
  float _3880;
  float _3882;
  float _3889;
  uint4 _3901;
  float _3907;
  float _3910;
  float _3914;
  float _3915;
  float _3916;
  float _3917;
  float _3953;
  float _3955;
  float _3956;
  float _3962;
  float _3967;
  float _3970;
  float _3977;
  float _3983;
  float2 _4009;
  float _4013;
  float _4023;
  float _4024;
  float _4025;
  float _4044;
  float _4050;
  float _4060;
  float _4063;
  float _4069;
  float _4091;
  float _4093;
  float _4100;
  float _4101;
  float _4102;
  float _4103;
  float _4119;
  float _4133;
  float _4134;
  float _4135;
  float _4139;
  float _4140;
  float _4141;
  float4 _4168;
  float4 _4196;
  int _4206;
  int _4207;
  int _4208;
  int _4221;
  float _4244;
  float _4248;
  float _4268;
  bool _4269;
  float4 _4277;
  float _4300;
  float _4304;
  float4 _4308;
  float _4314;
  float _4315;
  float _4316;
  float _4317;
  float _4322;
  float _4323;
  float _4327;
  float _4337;
  float _4338;
  float _4339;
  float _4340;
  float _4345;
  int _4379;
  int _4393;
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
  _106 = ((uint)((uint)(_99.y)) >> 24) & 127;  // [sem: _3__36__0__0__g_normalDepth_load_derived]
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
  _177 = (float)((uint)((uint)(((int)(((uint)((uint)(_frameNumber.x)) >> 2) * 71)) & 31)));
  if (!((uint)_106 > (uint)11) | !(((uint)_106 < (uint)20) || (_106 == 107))) {
    _194 = (_106 == 20);
  } else {
    _194 = true;
  }
  _197 = __3__38__0__1__g_raytracingHitResultUAV[int2(_74, _75)].x;
  _198 = __3__38__0__1__g_raytracingHitResultUAV[int2(_74, _75)].y;
  _199 = __3__38__0__1__g_raytracingHitResultUAV[int2(_74, _75)].z;
  _200 = __3__38__0__1__g_raytracingHitResultUAV[int2(_74, _75)].w;
  _202 = rsqrt(dot(float3(_197, _198, _199), float3(_197, _198, _199)));  // [sem: invLength]
  _203 = _202 * _197;
  _204 = _202 * _198;
  _205 = _202 * _199;
  _206 = (_200 < 0.0f);
  _207 = abs(_200);
  if ((_207 > 0.0f) && (_207 < 10000.0f)) {
    _213 = __3__36__0__0__g_raytracingBaseColor.Load(int3(_74, _75, 0));  // [sem: _3__36__0__0__g_raytracingBaseColor_load]
    _219 = __3__36__0__0__g_raytracingNormal.Load(int3(_74, _75, 0));  // [sem: _3__36__0__0__g_raytracingNormal_load]
    _227 = (_219.x * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_raytracingNormal_load_derived]
    _228 = (_219.y * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_raytracingNormal_load_derived]
    _229 = (_219.z * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_raytracingNormal_load_derived]
    _231 = rsqrt(dot(float3(_227, _228, _229), float3(_227, _228, _229)));  // [sem: invLength]
    _232 = _227 * _231;
    _233 = _228 * _231;
    _234 = _229 * _231;
    _235 = select(_206, 0.0f, _232);
    _236 = select(_206, 0.0f, _233);
    _237 = select(_206, 0.0f, _234);
    _239 = (int)(uint)((int)(_213.w > 0.0f));  // [sem: _3__36__0__0__g_raytracingBaseColor_load_derived]
    _240 = _203 * _207;
    _241 = _204 * _207;
    _242 = _205 * _207;
    _243 = _240 + _166;
    _244 = _241 + _167;
    _245 = _242 + _168;
    _247 = 0;
    while(true) {
      _249 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_247 + 20))];
      _277 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_247 + 36))];
      // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
      // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
      float3 _rndx_surfel_jitter_287 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _243) * _249.w) + _277.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _244) * _249.w) + _277.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _245) * _249.w) + _277.z), float2(_76, _77), _177, _frameNumber.x);
      _287 = int(floor(_rndx_surfel_jitter_287.x));
      _288 = int(floor(_rndx_surfel_jitter_287.y));
      _289 = int(floor(_rndx_surfel_jitter_287.z));
      // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
      if (!(((((int)_287 >= (int)int(_249.x + -63.0f)) && ((int)_287 < (int)int(_249.x + 63.0f))) && (((int)_288 >= (int)int(_249.y + -31.0f)) && ((int)_288 < (int)int(_249.y + 31.0f)))) && (((int)_289 >= (int)int(_249.z + -63.0f)) && ((int)_289 < (int)int(_249.z + 63.0f))))) {
        _302 = _247 + 1;
        if ((uint)_302 < (uint)8) {
          _247 = _302;
          continue;
        } else {
          _305 = -10000;
        }
      } else {
        _305 = _247;
      }
      _312 = -0.0f - _203;
      _313 = -0.0f - _204;
      _314 = -0.0f - _205;
      _318 = min(_207, (float((int)((int)(1 << (_305 & 31)))) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x));
      _322 = (_318 * select(_206, _312, _232)) + _243;
      _323 = (_318 * select(_206, _313, _233)) + _244;
      _324 = (_318 * select(_206, _314, _234)) + _245;
      _326 = 0;
      while(true) {
        _328 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_326 + 20))];
        _356 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_326 + 36))];
        // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
        // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
        float3 _rndx_surfel_jitter_366 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _322) * _328.w) + _356.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _323) * _328.w) + _356.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _324) * _328.w) + _356.z), float2(_76, _77), _177, _frameNumber.x);
        _366 = int(floor(_rndx_surfel_jitter_366.x));
        _367 = int(floor(_rndx_surfel_jitter_366.y));
        _368 = int(floor(_rndx_surfel_jitter_366.z));
        // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
        if (!(((((int)_366 >= (int)int(_328.x + -63.0f)) && ((int)_366 < (int)int(_328.x + 63.0f))) && (((int)_367 >= (int)int(_328.y + -31.0f)) && ((int)_367 < (int)int(_328.y + 31.0f)))) && (((int)_368 >= (int)int(_328.z + -63.0f)) && ((int)_368 < (int)int(_328.z + 63.0f))))) {
          _381 = _326 + 1;
          if ((uint)_381 < (uint)8) {
            _326 = _381;
            continue;
          } else {
            _384 = -10000;
          }
        } else {
          _384 = _326;
        }
        if ((_384 != -10000) && ((int)_384 < (int)4)) {
          if ((int)_384 < (int)6) {
            _392 = 0;
            while(true) {
              _394 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_392 + 20))];
              _422 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_392 + 36))];
              // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
              // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
              float3 _rndx_surfel_jitter_432 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _322) * _394.w) + _422.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _323) * _394.w) + _422.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _324) * _394.w) + _422.z), float2(_76, _77), _177, _frameNumber.x);
              _432 = int(floor(_rndx_surfel_jitter_432.x));
              _433 = int(floor(_rndx_surfel_jitter_432.y));
              _434 = int(floor(_rndx_surfel_jitter_432.z));
              // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
              if (((((int)_432 >= (int)int(_394.x + -63.0f)) && ((int)_432 < (int)int(_394.x + 63.0f))) && (((int)_433 >= (int)int(_394.y + -31.0f)) && ((int)_433 < (int)int(_394.y + 31.0f)))) && (((int)_434 >= (int)int(_394.z + -63.0f)) && ((int)_434 < (int)int(_394.z + 63.0f)))) {
                _455 = (_432 & 127);
                _456 = (_433 & 63);
                _457 = (_434 & 127);
                _458 = _392;
              } else {
                _447 = _392 + 1;
                if ((uint)_447 < (uint)8) {
                  _392 = _447;
                  continue;
                } else {
                  _455 = -10000;
                  _456 = -10000;
                  _457 = -10000;
                  _458 = -10000;
                }
              }
              if (!((uint)_458 > (uint)5)) {
                _471 = (((((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_455, _456, ((int)(((uint)(((int)(_458 * 130)) | 1)) + _457)), 0)))).x) & 4194303) == 0);
                [branch]
                if (!_471) {
                  _474 = _455;
                  _475 = _456;
                  _476 = _457;
                  _477 = _458;
                } else {
                  _474 = -10000;
                  _475 = -10000;
                  _476 = -10000;
                  _477 = -10000;
                }
                _479 = (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 0.5f) * float((int)((int)(1 << (_458 & 31))));
                _484 = 0;
                while(true) {
                  _486 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_484 + 20))];
                  _514 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_484 + 36))];
                  // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
                  // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
                  float3 _rndx_surfel_jitter_524 = RenoDXSurfelVoxelJitter(float3((((_322 - _479) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x) * _486.w) + _514.x, (((_323 - _479) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y) * _486.w) + _514.y, (((_324 - _479) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z) * _486.w) + _514.z), float2(_76, _77), _177, _frameNumber.x);
                  _524 = int(floor(_rndx_surfel_jitter_524.x));
                  _525 = int(floor(_rndx_surfel_jitter_524.y));
                  _526 = int(floor(_rndx_surfel_jitter_524.z));
                  // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
                  if (((((int)_524 >= (int)int(_486.x + -63.0f)) && ((int)_524 < (int)int(_486.x + 63.0f))) && (((int)_525 >= (int)int(_486.y + -31.0f)) && ((int)_525 < (int)int(_486.y + 31.0f)))) && (((int)_526 >= (int)int(_486.z + -63.0f)) && ((int)_526 < (int)int(_486.z + 63.0f)))) {
                    _547 = (_524 & 127);
                    _548 = (_525 & 63);
                    _549 = (_526 & 127);
                    _550 = _484;
                  } else {
                    _539 = _484 + 1;
                    if ((uint)_539 < (uint)8) {
                      _484 = _539;
                      continue;
                    } else {
                      _547 = -10000;
                      _548 = -10000;
                      _549 = -10000;
                      _550 = -10000;
                    }
                  }
                  if (!((uint)_550 > (uint)5)) {
                    if (_471) {
                      _555 = 0;
                      _556 = _477;
                      _557 = _476;
                      _558 = _475;
                      _559 = _474;
                      while(true) {
                        _568 = 0;
                        _569 = _556;
                        _570 = _557;
                        _571 = _558;
                        _572 = _559;
                        while(true) {
                          _575 = _555 + _549;
                          _576 = _575 + ((uint)(((int)(_550 * 130)) | 1));
                          _583 = _568 + _548;
                          if (!(((uint)_583 > (uint)63) || ((uint)(_547 | _575) > (uint)127))) {
                            _592 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_547, _583, _576, 0)))).x) & 4194303;
                            _595 = (_592 != 0);
                            _596 = _592;
                            _597 = _550;
                            _598 = _575;
                            _599 = _583;
                            _600 = _547;
                          } else {
                            _595 = false;
                            _596 = 0;
                            _597 = 0;
                            _598 = 0;
                            _599 = 0;
                            _600 = 0;
                          }
                          if (!_595) {
                            _602 = _547 + 1;
                            _603 = _568 + _548;
                            if (!(((uint)_603 > (uint)63) || ((uint)(_602 | _575) > (uint)127))) {
                              _4393 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_602, _603, _576, 0)))).x) & 4194303;
                              _4396 = (_4393 != 0);
                              _4397 = _4393;
                              _4398 = _550;
                              _4399 = _575;
                              _4400 = _603;
                              _4401 = _602;
                            } else {
                              _4396 = false;
                              _4397 = 0;
                              _4398 = 0;
                              _4399 = 0;
                              _4400 = 0;
                              _4401 = 0;
                            }
                            if (!_4396) {
                              _609 = _572;
                              _610 = _571;
                              _611 = _570;
                              _612 = _569;
                              _613 = 0;
                            } else {
                              _609 = _4401;
                              _610 = _4400;
                              _611 = _4399;
                              _612 = _4398;
                              _613 = _4397;
                            }
                          } else {
                            _609 = _600;
                            _610 = _599;
                            _611 = _598;
                            _612 = _597;
                            _613 = _596;
                          }
                          while(true) {
                            _614 = _568 + 1;
                            if (((int)_614 < (int)2) && (_613 == 0)) {
                              _568 = _614;
                              _569 = _612;
                              _570 = _611;
                              _571 = _610;
                              _572 = _609;
                              __loop_jump_target = 567;
                              break;
                            }
                            while(true) {
                              _578 = _555 + 1;
                              if (((int)_578 < (int)2) && (_613 == 0)) {
                                _555 = _578;
                                _556 = _612;
                                _557 = _611;
                                _558 = _610;
                                _559 = _609;
                                __loop_jump_target = 554;
                                break;
                              }
                              while(true) {
                                _562 = _612;
                                _563 = _611;
                                _564 = _610;
                                _565 = _609;
                                break;
                              }
                              break;
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
                        if (__loop_jump_target == 554) {
                          __loop_jump_target = -1;
                          continue;
                        }
                        if (__loop_jump_target != -1) {
                          break;
                        }
                        break;
                      }
                    } else {
                      _562 = _477;
                      _563 = _476;
                      _564 = _475;
                      _565 = _474;
                    }
                    if ((uint)_562 < (uint)6) {
                      _619 = _562 * 130;
                      _625 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_565, _564, ((int)(((uint)(_619 | 1)) + _563)), 0)))).x) & 4194303;
                      [branch]
                      if (!(_625 == 0)) {
                        _629 = 1 << (_562 & 31);
                        _631 = float((int)(_629)) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                        _633 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((uint)(_562 + 20u))];
                        _669 = 0.0f;
                        _670 = 0.0f;
                        _671 = 0.0f;
                        _672 = _235;
                        _673 = _236;
                        _674 = _237;
                        _675 = 0.0f;
                        _676 = 0;
                        while(true) {
                          _678 = (_625 + -1) + _676;
                          _681 = __3__37__0__0__g_surfelDataBuffer[_678]._baseColor;
                          _683 = __3__37__0__0__g_surfelDataBuffer[_678]._normal;
                          _686 = __3__37__0__0__g_surfelDataBuffer[_678]._radius;
                          if (!(_681 == 0)) {
                            _689 = __3__37__0__0__g_surfelDataBuffer[_678]._radiance.z;
                            _690 = __3__37__0__0__g_surfelDataBuffer[_678]._radiance.y;
                            _691 = __3__37__0__0__g_surfelDataBuffer[_678]._radiance.x;
                            _697 = (float)((uint)((uint)(_681 & 255)));
                            _698 = (float)((uint)((uint)(((uint)(_681) >> 8) & 255)));
                            _699 = (float)((uint)((uint)(((uint)(_681) >> 16) & 255)));
                            _724 = select(((_697 * 0.003921568859368563f) < 0.040449999272823334f), (_697 * 0.0003035269910469651f), exp2(log2((_697 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
                            _725 = select(((_698 * 0.003921568859368563f) < 0.040449999272823334f), (_698 * 0.0003035269910469651f), exp2(log2((_698 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
                            _726 = select(((_699 * 0.003921568859368563f) < 0.040449999272823334f), (_699 * 0.0003035269910469651f), exp2(log2((_699 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
                            _738 = (((float)((uint)((uint)(_683 & 255)))) * 0.007874015718698502f) + -1.0f;
                            _739 = (((float)((uint)((uint)(((uint)(_683) >> 8) & 255)))) * 0.007874015718698502f) + -1.0f;
                            _740 = (((float)((uint)((uint)(((uint)(_683) >> 16) & 255)))) * 0.007874015718698502f) + -1.0f;
                            _742 = rsqrt(dot(float3(_738, _739, _740), float3(_738, _739, _740)));  // [sem: invLength]
                            _747 = ((_683 & 16777215) == 0);
                            _751 = float(_691);
                            _752 = float(_690);
                            _753 = float(_689);
                            _757 = (_631 * 0.0019607844296842813f) * ((float)((uint16_t)((uint)(_686 & 255))));
                            _773 = (((((float)((uint)((uint)((uint)(_681) >> 24)))) * 0.003937007859349251f) + -0.5f) * _631) + ((((_633.x + -63.5f) + float((int)(((int)((_565 + 64u) - (uint)(int(_633.x)))) & 127))) * _631) - _viewPos.x);
                            _774 = (((((float)((uint)((uint)((uint)(_683) >> 24)))) * 0.003937007859349251f) + -0.5f) * _631) + ((((_633.y + -31.5f) + float((int)(((int)((_564 + 32u) - (uint)(int(_633.y)))) & 63))) * _631) - _viewPos.y);
                            _775 = (((((float)((uint16_t)((uint)((uint16_t)(_686) >> 8)))) * 0.003937007859349251f) + -0.5f) * _631) + ((((_633.z + -63.5f) + float((int)(((int)((_563 + 64u) - (uint)(int(_633.z)))) & 127))) * _631) - _viewPos.z);
                            _793 = (_219.w == 0.0f);  // [sem: _3__36__0__0__g_raytracingNormal_load_derived]
                            _794 = select(_793, _312, _672);
                            _795 = select(_793, _313, _673);
                            _796 = select(_793, _314, _674);
                            _799 = ((-0.0f - _166) - _240) + _773;
                            _802 = ((-0.0f - _167) - _241) + _774;
                            _805 = ((-0.0f - _168) - _242) + _775;
                            _806 = dot(float3(_799, _802, _805), float3(_794, _795, _796));
                            _810 = _799 - (_806 * _794);
                            _811 = _802 - (_806 * _795);
                            _812 = _805 - (_806 * _796);
                            _838 = 1.0f / ((float)((uint)_629));
                            _842 = frac(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _775) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z) * _838);
                            _867 = select(((int)_562 > (int)5), 1.0f, ((saturate((saturate(dot(float3(_312, _313, _314), float3(select(_747, _312, (_742 * _738)), select(_747, _313, (_742 * _739)), select(_747, _314, (_742 * _740))))) + -0.03125f) * 1.0322580337524414f) * ((float)((bool)(uint)(dot(float3(_810, _811, _812), float3(_810, _811, _812)) < ((_757 * _757) * 16.0f))))) * ((float)((bool)(uint)(((__3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _773) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _838), (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _774) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y) * _838), (((((float)((uint)_619)) + 1.0f) + ((select((_842 < 0.0f), 1.0f, 0.0f) + _842) * 128.0f)) * 0.000961538462433964f)), 0.0f)).x) > ((_631 * 0.25f) * (saturate((dot(float3(_751, _752, _753), float3(0.21267099678516388f, 0.7151600122451782f, 0.0721689984202385f)) * 9.999999747378752e-05f) / _exposure3.w) + 1.0f)))))));
                            _871 = (!(_213.w > 0.0f)) || ((_681 & 16777215) == 16777215);
                            _881 = ((select(_871, (((_725 * 0.3395099937915802f) + (_724 * 0.6131200194358826f)) + (_726 * 0.047370001673698425f)), _213.x) * _751) * _867) + _669;
                            _882 = ((select(_871, (((_725 * 0.9163600206375122f) + (_724 * 0.07020000368356705f)) + (_726 * 0.013450000435113907f)), _213.y) * _752) * _867) + _670;
                            _883 = ((select(_871, (((_725 * 0.10958000272512436f) + (_724 * 0.02061999961733818f)) + (_726 * 0.8697999715805054f)), _213.z) * _753) * _867) + _671;
                            _884 = _867 + _675;
                            _885 = _676 + 1;
                            if ((uint)_885 < (uint)4) {
                              _669 = _881;
                              _670 = _882;
                              _671 = _883;
                              _672 = _794;
                              _673 = _795;
                              _674 = _796;
                              _675 = _884;
                              _676 = _885;
                              continue;
                            } else {
                              _888 = _881;
                              _889 = _882;
                              _890 = _883;
                              _891 = _884;
                            }
                          } else {
                            _888 = _669;
                            _889 = _670;
                            _890 = _671;
                            _891 = _675;
                          }
                          if (_891 > 0.0f) {
                            _894 = 1.0f / _891;
                            _908 = (-0.0f - min(0.0f, (-0.0f - (_888 * _894))));
                            _909 = (-0.0f - min(0.0f, (-0.0f - (_889 * _894))));
                            _910 = (-0.0f - min(0.0f, (-0.0f - (_890 * _894))));
                          } else {
                            _908 = _888;
                            _909 = _889;
                            _910 = _890;
                          }
                          break;
                        }
                      } else {
                        _908 = 0.0f;
                        _909 = 0.0f;
                        _910 = 0.0f;
                      }
                    } else {
                      _908 = 0.0f;
                      _909 = 0.0f;
                      _910 = 0.0f;
                    }
                  } else {
                    _908 = 0.0f;
                    _909 = 0.0f;
                    _910 = 0.0f;
                  }
                  break;
                }
              } else {
                _908 = 0.0f;
                _909 = 0.0f;
                _910 = 0.0f;
              }
              _914 = max(9.999999974752427e-07f, (_exposure3.w * 0.0010000000474974513f));
              _915 = max(_914, _908);
              _916 = max(_914, _909);
              _917 = max(_914, _910);
              _920 = dot(float3(_915, _916, _917), float3(0.21267099678516388f, 0.7151600122451782f, 0.0721689984202385f));
              _921 = min((max(0.0005000000237487257f, _exposure3.w) * 512.0f), _920);
              _925 = max(9.999999717180685e-10f, _920);
              _930 = ((_921 * _915) / _925);
              _931 = ((_921 * _916) / _925);
              _932 = ((_921 * _917) / _925);
              break;
            }
          } else {
            _930 = 0.0f;
            _931 = 0.0f;
            _932 = 0.0f;
          }
          if (saturate(_219.w) == 0.0f) {
            _946 = (exp2((saturate(saturate(_213.w)) * 20.0f) + -8.0f) + -0.00390625f) * (1.0f / (((_207 * _207) * 0.10000000149011612f) + 1.0f));
            _954 = ((_946 * _213.x) + _930);
            _955 = ((_946 * _213.y) + _931);
            _956 = ((_946 * _213.z) + _932);
          } else {
            _954 = _930;
            _955 = _931;
            _956 = _932;
          }
          _963 = _235;
          _964 = _236;
          _965 = _237;
          _966 = _219.w;
          _967 = _213.x;
          _968 = _213.y;
          _969 = _213.z;
          _970 = _213.w;
          _971 = _239;
          _972 = (_renderParams2.y * _954);
          _973 = (_renderParams2.y * _955);
          _974 = (_renderParams2.y * _956);
          _975 = 1.0f;
          _976 = _207;
        } else {
          _963 = _235;
          _964 = _236;
          _965 = _237;
          _966 = _219.w;
          _967 = _213.x;
          _968 = _213.y;
          _969 = _213.z;
          _970 = _213.w;
          _971 = _239;
          _972 = 0.0f;
          _973 = 0.0f;
          _974 = 0.0f;
          _975 = 1.0f;
          _976 = _207;
        }
        break;
      }
      break;
    }
  } else {
    _963 = 0.0f;
    _964 = 0.0f;
    _965 = 0.0f;
    _966 = 0.0f;
    _967 = 0.0f;
    _968 = 0.0f;
    _969 = 0.0f;
    _970 = 0.0f;
    _971 = 0;
    _972 = 0.0f;
    _973 = 0.0f;
    _974 = 0.0f;
    _975 = 0.0f;
    _976 = 0.0f;
  }
  _978 = (_976 > 0.0f);
  if ((_171 > (_lightingParams.z * 0.875f)) && (!_978)) {
    _991 = (_171 < (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 11585.1259765625f));
  } else {
    _991 = false;
  }
  _995 = (_976 * _203) + _166;
  _996 = (_976 * _204) + _167;
  _997 = (_976 * _205) + _168;
  _1033 = mad((_viewProjRelativePrev[2].w), _997, mad((_viewProjRelativePrev[1].w), _996, ((_viewProjRelativePrev[0].w) * _995))) + (_viewProjRelativePrev[3].w);
  _1034 = (mad((_viewProjRelativePrev[2].x), _997, mad((_viewProjRelativePrev[1].x), _996, ((_viewProjRelativePrev[0].x) * _995))) + (_viewProjRelativePrev[3].x)) / _1033;
  _1035 = (mad((_viewProjRelativePrev[2].y), _997, mad((_viewProjRelativePrev[1].y), _996, ((_viewProjRelativePrev[0].y) * _995))) + (_viewProjRelativePrev[3].y)) / _1033;
  _1036 = (mad((_viewProjRelativePrev[2].z), _997, mad((_viewProjRelativePrev[1].z), _996, ((_viewProjRelativePrev[0].z) * _995))) + (_viewProjRelativePrev[3].z)) / _1033;
  _1039 = (_1034 * 0.5f) + 0.5f;
  _1040 = 0.5f - (_1035 * 0.5f);
  if (_206) {
    if (_978) {
  // [sem: _3__36__0__0__g_normalDepthPrev_load]
      _1065 = __3__36__0__0__g_normalDepthPrev.Load(int3(int(((_1034 * 0.25f) + 0.25f) * _bufferSizeAndInvSize.x), int((0.25f - (_1035 * 0.25f)) * _bufferSizeAndInvSize.y), 0));
      _1072 = _nearFarProj.x / max(1.0000000116860974e-07f, (((float)((uint)((uint)(_1065.y & 16777215)))) * 5.960465188081798e-08f));
      if ((_1036 > 0.0f) && (((_1039 >= 0.0f) && (_1039 <= 1.0f)) && ((_1040 >= 0.0f) && (_1040 <= 1.0f)))) {
        if (((_1072 - dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z))) > 0.0f) && (abs(_1072 - _1033) < max(0.5f, (_1033 * 0.05000000074505806f)))) {
          _1103 = __3__36__0__0__g_sceneColor.SampleLevel(__3__40__0__0__g_samplerClamp, float2(_1039, _1040), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
          if (!(!(_1103.w >= 0.0f))) {
            _1128 = min(1.0f, ((((float)((uint)((uint)(_1065.x & 1023)))) * 0.001956947147846222f) + -1.0f));
            _1129 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1065.x)) >> 10) & 1023)))) * 0.001956947147846222f) + -1.0f));
            _1130 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1065.x)) >> 20) & 1023)))) * 0.001956947147846222f) + -1.0f));
            _1132 = rsqrt(dot(float3(_1128, _1129, _1130), float3(_1128, _1129, _1130)));  // [sem: invLength]
            _1133 = _1132 * _1128;
            _1134 = _1132 * _1129;
            _1135 = _1132 * _1130;
            _1141 = select((dot(float3((-0.0f - _203), (-0.0f - _204), (-0.0f - _205)), float3(_1133, _1134, _1135)) > 0.20000000298023224f), 1.0f, 0.0f);
            _1143 = saturate(_171 * 0.009999999776482582f);  // [sem: expr_sat]
            _1151 = (float)((bool)(uint)(abs(_nearFarProj.x - _1072) < (_1072 * 0.5f)));
            _1156 = _1133;
            _1157 = _1134;
            _1158 = _1135;
            _1159 = 0.800000011920929f;
            _1160 = _renderParams2.x * _renderParams2.x;
            _1161 = ((_1141 - (_1141 * _1143)) + _1143) * _1160;
            _1170 = ((_976 * 0.9998999834060669f) * _renderParams2.x);
            _1171 = _1156;
            _1172 = _1157;
            _1173 = _1158;
            _1174 = _1159;
            _1175 = ((_1161 * min(10000.0f, _1103.x)) * _1151);
            _1176 = ((_1161 * min(10000.0f, _1103.y)) * _1151);
            _1177 = ((_1161 * min(10000.0f, _1103.z)) * _1151);
            _1178 = _1160;
            _1179 = 1;
          } else {
            _1170 = _976;
            _1171 = _963;
            _1172 = _964;
            _1173 = _965;
            _1174 = _966;
            _1175 = 0.0f;
            _1176 = 0.0f;
            _1177 = 0.0f;
            _1178 = 0.0f;
            _1179 = 0;
          }
        } else {
          _1170 = _976;
          _1171 = _963;
          _1172 = _964;
          _1173 = _965;
          _1174 = _966;
          _1175 = 0.0f;
          _1176 = 0.0f;
          _1177 = 0.0f;
          _1178 = 0.0f;
          _1179 = 0;
        }
      } else {
        _1170 = _976;
        _1171 = _963;
        _1172 = _964;
        _1173 = _965;
        _1174 = _966;
        _1175 = 0.0f;
        _1176 = 0.0f;
        _1177 = 0.0f;
        _1178 = 0.0f;
        _1179 = 0;
      }
    } else {
      _1170 = _976;
      _1171 = _963;
      _1172 = _964;
      _1173 = _965;
      _1174 = _966;
      _1175 = 0.0f;
      _1176 = 0.0f;
      _1177 = 0.0f;
      _1178 = 0.0f;
      _1179 = 0;
    }
  } else {
    if (_978 && ((_1036 > 0.0f) && (((_1039 >= 0.0f) && (_1039 <= 1.0f)) && ((_1040 >= 0.0f) && (_1040 <= 1.0f))))) {
  // [sem: _3__36__0__0__g_normalDepthPrev_load]
      _1065 = __3__36__0__0__g_normalDepthPrev.Load(int3(int(((_1034 * 0.25f) + 0.25f) * _bufferSizeAndInvSize.x), int((0.25f - (_1035 * 0.25f)) * _bufferSizeAndInvSize.y), 0));
      _1072 = _nearFarProj.x / max(1.0000000116860974e-07f, (((float)((uint)((uint)(_1065.y & 16777215)))) * 5.960465188081798e-08f));
      if ((_1036 > 0.0f) && (((_1039 >= 0.0f) && (_1039 <= 1.0f)) && ((_1040 >= 0.0f) && (_1040 <= 1.0f)))) {
        if (((_1072 - dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z))) > 0.0f) && (abs(_1072 - _1033) < max(0.5f, (_1033 * 0.05000000074505806f)))) {
          _1103 = __3__36__0__0__g_sceneColor.SampleLevel(__3__40__0__0__g_samplerClamp, float2(_1039, _1040), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
          if (!(!(_1103.w >= 0.0f))) {
            _1128 = min(1.0f, ((((float)((uint)((uint)(_1065.x & 1023)))) * 0.001956947147846222f) + -1.0f));
            _1129 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1065.x)) >> 10) & 1023)))) * 0.001956947147846222f) + -1.0f));
            _1130 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1065.x)) >> 20) & 1023)))) * 0.001956947147846222f) + -1.0f));
            _1132 = rsqrt(dot(float3(_1128, _1129, _1130), float3(_1128, _1129, _1130)));  // [sem: invLength]
            _1133 = _1132 * _1128;
            _1134 = _1132 * _1129;
            _1135 = _1132 * _1130;
            _1141 = select((dot(float3((-0.0f - _203), (-0.0f - _204), (-0.0f - _205)), float3(_1133, _1134, _1135)) > 0.20000000298023224f), 1.0f, 0.0f);
            _1143 = saturate(_171 * 0.009999999776482582f);  // [sem: expr_sat]
            _1151 = (float)((bool)(uint)(abs(_nearFarProj.x - _1072) < (_1072 * 0.5f)));
            _1156 = _963;
            _1157 = _964;
            _1158 = _965;
            _1159 = _966;
            _1160 = _renderParams2.x * _renderParams2.x;
            _1161 = ((_1141 - (_1141 * _1143)) + _1143) * _1160;
            _1170 = ((_976 * 0.9998999834060669f) * _renderParams2.x);
            _1171 = _1156;
            _1172 = _1157;
            _1173 = _1158;
            _1174 = _1159;
            _1175 = ((_1161 * min(10000.0f, _1103.x)) * _1151);
            _1176 = ((_1161 * min(10000.0f, _1103.y)) * _1151);
            _1177 = ((_1161 * min(10000.0f, _1103.z)) * _1151);
            _1178 = _1160;
            _1179 = 1;
          } else {
            _1170 = _976;
            _1171 = _963;
            _1172 = _964;
            _1173 = _965;
            _1174 = _966;
            _1175 = 0.0f;
            _1176 = 0.0f;
            _1177 = 0.0f;
            _1178 = 0.0f;
            _1179 = 0;
          }
        } else {
          _1170 = _976;
          _1171 = _963;
          _1172 = _964;
          _1173 = _965;
          _1174 = _966;
          _1175 = 0.0f;
          _1176 = 0.0f;
          _1177 = 0.0f;
          _1178 = 0.0f;
          _1179 = 0;
        }
      } else {
        _1170 = _976;
        _1171 = _963;
        _1172 = _964;
        _1173 = _965;
        _1174 = _966;
        _1175 = 0.0f;
        _1176 = 0.0f;
        _1177 = 0.0f;
        _1178 = 0.0f;
        _1179 = 0;
      }
    } else {
      _1170 = _976;
      _1171 = _963;
      _1172 = _964;
      _1173 = _965;
      _1174 = _966;
      _1175 = 0.0f;
      _1176 = 0.0f;
      _1177 = 0.0f;
      _1178 = 0.0f;
      _1179 = 0;
    }
  }
  _1181 = 0;
  while(true) {
    _1183 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1181 + 20))];
    _1211 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1181 + 36))];
    // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
    // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
    float3 _rndx_surfel_jitter_1221 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _166) * _1183.w) + _1211.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _167) * _1183.w) + _1211.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _168) * _1183.w) + _1211.z), float2(_76, _77), _177, _frameNumber.x);
    _1221 = int(floor(_rndx_surfel_jitter_1221.x));
    _1222 = int(floor(_rndx_surfel_jitter_1221.y));
    _1223 = int(floor(_rndx_surfel_jitter_1221.z));
    // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
    if (((((int)_1221 >= (int)int(_1183.x + -63.0f)) && ((int)_1221 < (int)int(_1183.x + 63.0f))) && (((int)_1222 >= (int)int(_1183.y + -31.0f)) && ((int)_1222 < (int)int(_1183.y + 31.0f)))) && (((int)_1223 >= (int)int(_1183.z + -63.0f)) && ((int)_1223 < (int)int(_1183.z + 63.0f)))) {
      _1242 = (_1221 & 127);
      _1243 = _1181;
    } else {
      _1236 = _1181 + 1;
      if ((uint)_1236 < (uint)8) {
        _1181 = _1236;
        continue;
      } else {
        _1242 = -10000;
        _1243 = -10000;
      }
    }
    if (!(_1242 == -10000)) {
      _1250 = float((int)((int)(1 << (_1243 & 31))));
    } else {
      _1250 = 1.0f;
    }
    _1256 = select(_194, (((frac(frac(dot(float2(((_177 * 32.665000915527344f) + _76), ((_177 * 11.8149995803833f) + _77)), float2(0.0671105608344078f, 0.005837149918079376f))) * 52.98291778564453f) * 2.0f) * _1250) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x), 0.0f);
    if (_991) {
      _1258 = _lightingParams.z * 1.3434898853302002f;
      _1259 = -0.0f - _1258;
      if (((_168 > _1259) && (_168 < _1258)) && (((_166 > _1259) && (_166 < _1258)) && ((_167 > _1259) && (_167 < _1258)))) {
        _1272 = 1.0f / _203;
        _1273 = 1.0f / _204;
        _1274 = 1.0f / _205;
        _1278 = _1272 * (_1259 - _166);
        _1279 = _1273 * (_1259 - _167);
        _1280 = _1274 * (_1259 - _168);
        _1284 = _1272 * (_1258 - _166);
        _1285 = _1273 * (_1258 - _167);
        _1286 = _1274 * (_1258 - _168);
        _1296 = min(min(max(_1278, _1284), max(_1279, _1285)), max(_1280, _1286));
        if ((_1296 > 0.0f) && ((_1296 >= 0.0f) && (max(max(min(_1278, _1284), min(_1279, _1285)), min(_1280, _1286)) <= _1296))) {
          _1310 = _1296;
          _1311 = ((_1296 * _203) + _166);
          _1312 = ((_1296 * _204) + _167);
          _1313 = ((_1296 * _205) + _168);
        } else {
          _1310 = 0.0f;
          _1311 = _166;
          _1312 = _167;
          _1313 = _168;
        }
      } else {
        _1310 = 0.0f;
        _1311 = _166;
        _1312 = _167;
        _1313 = _168;
      }
      _1317 = select(((_1170 > 0.0f) && (_1178 >= 1.0f)), _1170, 256.0f);
      _1319 = 0;
      while(true) {
        _1321 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1319 + 20))];
        _1349 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1319 + 36))];
        // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
        // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
        float3 _rndx_surfel_jitter_1359 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _1311) * _1321.w) + _1349.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _1312) * _1321.w) + _1349.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _1313) * _1321.w) + _1349.z), float2(_76, _77), _177, _frameNumber.x);
        _1359 = int(floor(_rndx_surfel_jitter_1359.x));
        _1360 = int(floor(_rndx_surfel_jitter_1359.y));
        _1361 = int(floor(_rndx_surfel_jitter_1359.z));
        // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
        if (!(((((int)_1359 >= (int)int(_1321.x + -63.0f)) && ((int)_1359 < (int)int(_1321.x + 63.0f))) && (((int)_1360 >= (int)int(_1321.y + -31.0f)) && ((int)_1360 < (int)int(_1321.y + 31.0f)))) && (((int)_1361 >= (int)int(_1321.z + -63.0f)) && ((int)_1361 < (int)int(_1321.z + 63.0f))))) {
          _1374 = _1319 + 1;
          if ((uint)_1374 < (uint)8) {
            _1319 = _1374;
            continue;
          } else {
            _1377 = -10000;
          }
        } else {
          _1377 = _1319;
        }
        if (!((_1377 == -10000) || ((int)_1377 > (int)4))) {
          _1387 = _1311 + (_1256 * _203);
          _1388 = _1312 + (_1256 * _204);
          _1389 = _1313 + (_1256 * _205);
          _1393 = (_203 == 0.0f);
          _1394 = (_204 == 0.0f);
          _1395 = (_205 == 0.0f);
          _1396 = select(_1393, 0.0f, (1.0f / _203));
          _1397 = select(_1394, 0.0f, (1.0f / _204));
          _1398 = select(_1395, 0.0f, (1.0f / _205));
          _1399 = (_203 > 0.0f);
          _1400 = (_204 > 0.0f);
          _1401 = (_205 > 0.0f);
          if (_1317 > 0.0f) {
            _1414 = 0;
            _1415 = 0.0f;
            _1416 = 0.0f;
            _1417 = _1389;
            _1418 = _1388;
            _1419 = _1387;
            while(true) {
              _1421 = 0;
              while(true) {
                _1423 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1421 + 20))];
                _1442 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1421 + 36))];
                _1446 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _1419) * _1423.w) + _1442.x;
                _1447 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _1418) * _1423.w) + _1442.y;
                _1448 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _1417) * _1423.w) + _1442.z;
                if (!((_1448 >= (_1423.z + -63.0f)) && ((_1446 >= (_1423.x + -63.0f)) && (_1447 >= (_1423.y + -31.0f)))) || (((_1448 >= (_1423.z + -63.0f)) && ((_1446 >= (_1423.x + -63.0f)) && (_1447 >= (_1423.y + -31.0f)))) && (!((_1448 < (_1423.z + 63.0f)) && ((_1446 < (_1423.x + 63.0f)) && (_1447 < (_1423.y + 31.0f))))))) {
                  _1464 = _1421 + 1;
                  if ((int)_1464 < (int)8) {
                    _1421 = _1464;
                    continue;
                  } else {
                    _1664 = _1416;
                    _1665 = _1417;
                    _1666 = _1418;
                    _1667 = _1419;
                    _1668 = _1415;
                    _1669 = -10000.0f;
                  }
                } else {
                  if (_1421 == -10000) {
                    _1658 = _1416;
                    _1659 = _1417;
                    _1660 = _1418;
                    _1661 = _1419;
                    _1662 = _1415;
                    _1664 = _1658;
                    _1665 = _1659;
                    _1666 = _1660;
                    _1667 = _1661;
                    _1668 = _1662;
                    _1669 = -10000.0f;
                  } else {
                    _1471 = float((int)((int)(1 << (_1421 & 31))));
                    _1472 = _1471 * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                    _1473 = 1.0f / _1471;
                    _1474 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.y * 0.0078125f;
                    _1483 = _1473 * ((_1419 * _1474) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x);
                    _1484 = _1473 * (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.y * 0.015625f) * _1418) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y);
                    _1485 = _1473 * ((_1417 * _1474) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z);
                    _1486 = _1483 * 64.0f;
                    _1487 = _1484 * 32.0f;
                    _1488 = _1485 * 64.0f;
                    _1492 = int(floor(_1486));
                    _1493 = int(floor(_1487));
                    _1494 = int(floor(_1488));
  // [sem: _3__36__0__0__g_axisAlignedDistance_load]
                    _1501 = __3__36__0__0__g_axisAlignedDistanceTextures.Load(int4((_1492 & 63), (_1493 & 31), ((_1494 & 63) | (_1421 << 6)), 0));
                    _1518 = saturate(((float)((uint)((uint)((uint)((uint)(_1501.w)) >> 2)))) * 0.01587301678955555f);  // [sem: expr_sat]
                    _1541 = _1486 - float((int)(_1492));
                    _1542 = _1487 - float((int)(_1493));
                    _1543 = _1488 - float((int)(_1494));
                    _1574 = max(((_1472 * 0.5f) * min(min(select(_1393, 999999.0f, ((select(_1399, 1.0f, 0.0f) - frac(_1483 * 256.0f)) * _1396)), select(_1394, 999999.0f, ((select(_1400, 1.0f, 0.0f) - frac(_1484 * 128.0f)) * _1397))), select(_1395, 999999.0f, ((select(_1401, 1.0f, 0.0f) - frac(_1485 * 256.0f)) * _1398)))), ((_1472 * 2.0f) * min(min(select(_1393, 999999.0f, (select(_1399, ((0.009999999776482582f - _1541) + ((float)((uint)((uint)(((uint)((uint)(_1501.x)) >> 4) & 15))))), ((0.9900000095367432f - _1541) - ((float)((uint)((uint)(_1501.x & 15)))))) * _1396)), select(_1394, 999999.0f, (select(_1400, ((0.009999999776482582f - _1542) + ((float)((uint)((uint)(((uint)((uint)(_1501.y)) >> 4) & 15))))), ((0.9900000095367432f - _1542) - ((float)((uint)((uint)(_1501.y & 15)))))) * _1397))), select(_1395, 999999.0f, (select(_1401, ((0.009999999776482582f - _1543) + ((float)((uint)((uint)(((uint)((uint)(_1501.z)) >> 4) & 15))))), ((0.9900000095367432f - _1543) - ((float)((uint)((uint)(_1501.z & 15)))))) * _1398)))));
                    _1576 = (float)((bool)(uint)(_1518 > 0.0f));
                    if (((uint)_1414 < (uint)16) || (_1416 < min(32.0f, (_1472 * 32.0f)))) {
                      _1583 = frac(_1485);
  // [sem: _3__36__0__1__g_signedDistanceVoxels_sampleLod]
                      _1595 = __3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3(_1483, _1484, (((((float)((uint)(_1421 * 130))) + 1.0f) + ((select((_1583 < 0.0f), 1.0f, 0.0f) + _1583) * 128.0f)) * 0.000961538462433964f)), 0.0f);
                      _1601 = _1416 * 0.009999999776482582f;
                      _1602 = 1.0f / _1472;
                      _1618 = (_1595.x + ((_171 * _171) * 0.00019999999494757503f)) / (((max(((_1472 * 1.0606600046157837f) * saturate((_1416 * 0.5f) + 0.5f)), _1601) - _1601) * saturate(((max(1.0f, (_1602 * 0.5f)) * _1602) * min(_1416, max(0.0f, (_1317 - _1416)))) + -1.0f)) + _1601);
                      _1624 = saturate((saturate(1.0f - (_1618 * _1618)) * _1576) + _1415);  // [sem: expr_sat]
                      if (!(((int)_1421 > (int)2) || (_1595.x > _1472))) {
                        _1638 = _1624;  // [sem: expr_sat]
                        _1639 = min(_1574, _1595.x);
                      } else {
                        _1638 = _1624;  // [sem: expr_sat]
                        _1639 = _1574;
                      }
                    } else {
                      if (!((_1501.w & 1) == 0)) {
                        _1638 = saturate((_1576 * 0.5f) + _1415);  // [sem: expr_sat]
                        _1639 = _1574;
                      } else {
                        _1638 = _1415;  // [sem: expr_sat]
                        _1639 = _1574;
                      }
                    }
                    if (!(_1638 >= 0.5f)) {
                      _1644 = max(_1639, (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 0.05000000074505806f));
                      _1645 = _1644 + _1416;
                      _1649 = (_1644 * _203) + _1419;
                      _1650 = (_1644 * _204) + _1418;
                      _1651 = (_1644 * _205) + _1417;
                      _1652 = _1414 + 1;
                      if (((uint)_1652 < (uint)192) && (_1645 < _1317)) {
                        _1414 = _1652;
                        _1415 = _1638;
                        _1416 = _1645;
                        _1417 = _1651;
                        _1418 = _1650;
                        _1419 = _1649;
                        __loop_jump_target = 1413;
                        break;
                      } else {
                        _1658 = _1645;
                        _1659 = _1651;
                        _1660 = _1650;
                        _1661 = _1649;
                        _1662 = _1638;
                        _1664 = _1658;
                        _1665 = _1659;
                        _1666 = _1660;
                        _1667 = _1661;
                        _1668 = _1662;
                        _1669 = -10000.0f;
                      }
                    } else {
                      _1664 = _1416;
                      _1665 = _1417;
                      _1666 = _1418;
                      _1667 = _1419;
                      _1668 = _1518;
                      _1669 = float((int)(_1421));
                    }
                  }
                }
                break;
              }
              if (__loop_jump_target == 1413) {
                __loop_jump_target = -1;
                continue;
              }
              if (__loop_jump_target != -1) {
                break;
              }
              break;
            }
          } else {
            _1664 = 0.0f;
            _1665 = _1389;
            _1666 = _1388;
            _1667 = _1387;
            _1668 = 0.0f;
            _1669 = -10000.0f;
          }
          _1670 = int(_1669);
          if ((uint)_1670 < (uint)8) {
            _1673 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 0.5f;
            _1677 = _1667 - (_1673 * _203);
            _1678 = _1666 - (_1673 * _204);
            _1679 = _1665 - (_1673 * _205);
            if ((int)_1670 < (int)6) {
              _1686 = 0;
              while(true) {
                _1688 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1686 + 20))];
                _1716 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1686 + 36))];
                // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
                // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
                float3 _rndx_surfel_jitter_1726 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _1677) * _1688.w) + _1716.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _1678) * _1688.w) + _1716.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _1679) * _1688.w) + _1716.z), float2(_76, _77), _177, _frameNumber.x);
                _1726 = int(floor(_rndx_surfel_jitter_1726.x));
                _1727 = int(floor(_rndx_surfel_jitter_1726.y));
                _1728 = int(floor(_rndx_surfel_jitter_1726.z));
                // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
                if (((((int)_1726 >= (int)int(_1688.x + -63.0f)) && ((int)_1726 < (int)int(_1688.x + 63.0f))) && (((int)_1727 >= (int)int(_1688.y + -31.0f)) && ((int)_1727 < (int)int(_1688.y + 31.0f)))) && (((int)_1728 >= (int)int(_1688.z + -63.0f)) && ((int)_1728 < (int)int(_1688.z + 63.0f)))) {
                  _1749 = (_1726 & 127);
                  _1750 = (_1727 & 63);
                  _1751 = (_1728 & 127);
                  _1752 = _1686;
                } else {
                  _1741 = _1686 + 1;
                  if ((uint)_1741 < (uint)8) {
                    _1686 = _1741;
                    continue;
                  } else {
                    _1749 = -10000;
                    _1750 = -10000;
                    _1751 = -10000;
                    _1752 = -10000;
                  }
                }
                if (!((uint)_1752 > (uint)5)) {
                  _1765 = (((((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1749, _1750, ((int)(((uint)(((int)(_1752 * 130)) | 1)) + _1751)), 0)))).x) & 4194303) == 0);
                  [branch]
                  if (!_1765) {
                    _1768 = _1749;
                    _1769 = _1750;
                    _1770 = _1751;
                    _1771 = _1752;
                  } else {
                    _1768 = -10000;
                    _1769 = -10000;
                    _1770 = -10000;
                    _1771 = -10000;
                  }
                  _1772 = _1673 * float((int)((int)(1 << (_1752 & 31))));
                  _1777 = 0;
                  while(true) {
                    _1779 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1777 + 20))];
                    _1807 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_1777 + 36))];
                    // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
                    // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
                    float3 _rndx_surfel_jitter_1817 = RenoDXSurfelVoxelJitter(float3((((_1677 - _1772) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x) * _1779.w) + _1807.x, (((_1678 - _1772) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y) * _1779.w) + _1807.y, (((_1679 - _1772) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z) * _1779.w) + _1807.z), float2(_76, _77), _177, _frameNumber.x);
                    _1817 = int(floor(_rndx_surfel_jitter_1817.x));
                    _1818 = int(floor(_rndx_surfel_jitter_1817.y));
                    _1819 = int(floor(_rndx_surfel_jitter_1817.z));
                    // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
                    if (((((int)_1817 >= (int)int(_1779.x + -63.0f)) && ((int)_1817 < (int)int(_1779.x + 63.0f))) && (((int)_1818 >= (int)int(_1779.y + -31.0f)) && ((int)_1818 < (int)int(_1779.y + 31.0f)))) && (((int)_1819 >= (int)int(_1779.z + -63.0f)) && ((int)_1819 < (int)int(_1779.z + 63.0f)))) {
                      _1840 = (_1817 & 127);
                      _1841 = (_1818 & 63);
                      _1842 = (_1819 & 127);
                      _1843 = _1777;
                    } else {
                      _1832 = _1777 + 1;
                      if ((uint)_1832 < (uint)8) {
                        _1777 = _1832;
                        continue;
                      } else {
                        _1840 = -10000;
                        _1841 = -10000;
                        _1842 = -10000;
                        _1843 = -10000;
                      }
                    }
                    if (!((uint)_1843 > (uint)5)) {
                      if (_1765) {
                        _1848 = 0;
                        _1849 = _1771;
                        _1850 = _1770;
                        _1851 = _1769;
                        _1852 = _1768;
                        while(true) {
                          _1861 = 0;
                          _1862 = _1849;
                          _1863 = _1850;
                          _1864 = _1851;
                          _1865 = _1852;
                          while(true) {
                            _1868 = _1848 + _1842;
                            _1869 = _1868 + ((uint)(((int)(_1843 * 130)) | 1));
                            _1876 = _1861 + _1841;
                            if (!(((uint)_1876 > (uint)63) || ((uint)(_1840 | _1868) > (uint)127))) {
                              _1885 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1840, _1876, _1869, 0)))).x) & 4194303;
                              _1888 = (_1885 != 0);
                              _1889 = _1885;
                              _1890 = _1843;
                              _1891 = _1868;
                              _1892 = _1876;
                              _1893 = _1840;
                            } else {
                              _1888 = false;
                              _1889 = 0;
                              _1890 = 0;
                              _1891 = 0;
                              _1892 = 0;
                              _1893 = 0;
                            }
                            if (!_1888) {
                              _1895 = _1840 + 1;
                              _1896 = _1861 + _1841;
                              if (!(((uint)_1896 > (uint)63) || ((uint)(_1895 | _1868) > (uint)127))) {
                                _4379 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1895, _1896, _1869, 0)))).x) & 4194303;
                                _4382 = (_4379 != 0);
                                _4383 = _4379;
                                _4384 = _1843;
                                _4385 = _1868;
                                _4386 = _1896;
                                _4387 = _1895;
                              } else {
                                _4382 = false;
                                _4383 = 0;
                                _4384 = 0;
                                _4385 = 0;
                                _4386 = 0;
                                _4387 = 0;
                              }
                              if (!_4382) {
                                _1902 = _1865;
                                _1903 = _1864;
                                _1904 = _1863;
                                _1905 = _1862;
                                _1906 = 0;
                              } else {
                                _1902 = _4387;
                                _1903 = _4386;
                                _1904 = _4385;
                                _1905 = _4384;
                                _1906 = _4383;
                              }
                            } else {
                              _1902 = _1893;
                              _1903 = _1892;
                              _1904 = _1891;
                              _1905 = _1890;
                              _1906 = _1889;
                            }
                            while(true) {
                              _1907 = _1861 + 1;
                              if (((int)_1907 < (int)2) && (_1906 == 0)) {
                                _1861 = _1907;
                                _1862 = _1905;
                                _1863 = _1904;
                                _1864 = _1903;
                                _1865 = _1902;
                                __loop_jump_target = 1860;
                                break;
                              }
                              while(true) {
                                _1871 = _1848 + 1;
                                if (((int)_1871 < (int)2) && (_1906 == 0)) {
                                  _1848 = _1871;
                                  _1849 = _1905;
                                  _1850 = _1904;
                                  _1851 = _1903;
                                  _1852 = _1902;
                                  __loop_jump_target = 1847;
                                  break;
                                }
                                while(true) {
                                  _1855 = _1905;
                                  _1856 = _1904;
                                  _1857 = _1903;
                                  _1858 = _1902;
                                  break;
                                }
                                break;
                              }
                              if (__loop_jump_target != -1) {
                                break;
                              }
                              break;
                            }
                            if (__loop_jump_target == 1860) {
                              __loop_jump_target = -1;
                              continue;
                            }
                            if (__loop_jump_target != -1) {
                              break;
                            }
                            break;
                          }
                          if (__loop_jump_target == 1847) {
                            __loop_jump_target = -1;
                            continue;
                          }
                          if (__loop_jump_target != -1) {
                            break;
                          }
                          break;
                        }
                      } else {
                        _1855 = _1771;
                        _1856 = _1770;
                        _1857 = _1769;
                        _1858 = _1768;
                      }
                      if ((uint)_1855 < (uint)6) {
                        _1912 = _1855 * 130;
                        _1918 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1858, _1857, ((int)(((uint)(_1912 | 1)) + _1856)), 0)))).x) & 4194303;
                        [branch]
                        if (!(_1918 == 0)) {
                          _1922 = 1 << (_1855 & 31);
                          _1924 = float((int)(_1922)) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                          _1926 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((uint)(_1855 + 20u))];
                          _1961 = -0.0f - _203;
                          _1962 = -0.0f - _204;
                          _1963 = -0.0f - _205;
                          _1965 = 0.0f;
                          _1966 = 0.0f;
                          _1967 = 0.0f;
                          _1968 = 0.0f;
                          _1969 = 0;
                          while(true) {
                            _1971 = (_1918 + -1) + _1969;
                            _1974 = __3__37__0__0__g_surfelDataBuffer[_1971]._baseColor;
                            _1976 = __3__37__0__0__g_surfelDataBuffer[_1971]._normal;
                            _1979 = __3__37__0__0__g_surfelDataBuffer[_1971]._radius;
                            if (!(_1974 == 0)) {
                              _1982 = __3__37__0__0__g_surfelDataBuffer[_1971]._radiance.z;
                              _1983 = __3__37__0__0__g_surfelDataBuffer[_1971]._radiance.y;
                              _1984 = __3__37__0__0__g_surfelDataBuffer[_1971]._radiance.x;
                              _1990 = (float)((uint)((uint)(_1974 & 255)));
                              _1991 = (float)((uint)((uint)(((uint)(_1974) >> 8) & 255)));
                              _1992 = (float)((uint)((uint)(((uint)(_1974) >> 16) & 255)));
                              _2017 = select(((_1990 * 0.003921568859368563f) < 0.040449999272823334f), (_1990 * 0.0003035269910469651f), exp2(log2((_1990 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
                              _2018 = select(((_1991 * 0.003921568859368563f) < 0.040449999272823334f), (_1991 * 0.0003035269910469651f), exp2(log2((_1991 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
                              _2019 = select(((_1992 * 0.003921568859368563f) < 0.040449999272823334f), (_1992 * 0.0003035269910469651f), exp2(log2((_1992 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
                              _2031 = (((float)((uint)((uint)(_1976 & 255)))) * 0.007874015718698502f) + -1.0f;
                              _2032 = (((float)((uint)((uint)(((uint)(_1976) >> 8) & 255)))) * 0.007874015718698502f) + -1.0f;
                              _2033 = (((float)((uint)((uint)(((uint)(_1976) >> 16) & 255)))) * 0.007874015718698502f) + -1.0f;
                              _2035 = rsqrt(dot(float3(_2031, _2032, _2033), float3(_2031, _2032, _2033)));  // [sem: invLength]
                              _2040 = ((_1976 & 16777215) == 0);
                              _2044 = float(_1984);
                              _2045 = float(_1983);
                              _2046 = float(_1982);
                              _2050 = (_1924 * 0.0019607844296842813f) * ((float)((uint16_t)((uint)(_1979 & 255))));
                              _2066 = (((((float)((uint)((uint)((uint)(_1974) >> 24)))) * 0.003937007859349251f) + -0.5f) * _1924) + ((((_1926.x + -63.5f) + float((int)(((int)((_1858 + 64u) - (uint)(int(_1926.x)))) & 127))) * _1924) - _viewPos.x);
                              _2067 = (((((float)((uint)((uint)((uint)(_1976) >> 24)))) * 0.003937007859349251f) + -0.5f) * _1924) + ((((_1926.y + -31.5f) + float((int)(((int)((_1857 + 32u) - (uint)(int(_1926.y)))) & 63))) * _1924) - _viewPos.y);
                              _2068 = (((((float)((uint16_t)((uint)((uint16_t)(_1979) >> 8)))) * 0.003937007859349251f) + -0.5f) * _1924) + ((((_1926.z + -63.5f) + float((int)(((int)((_1856 + 64u) - (uint)(int(_1926.z)))) & 127))) * _1924) - _viewPos.z);
                              _2088 = ((-0.0f - _1311) - (_1664 * _203)) + _2066;
                              _2091 = ((-0.0f - _1312) - (_1664 * _204)) + _2067;
                              _2094 = ((-0.0f - _1313) - (_1664 * _205)) + _2068;
                              _2095 = dot(float3(_2088, _2091, _2094), float3(_1961, _1962, _1963));
                              _2099 = _2088 - (_2095 * _1961);
                              _2100 = _2091 - (_2095 * _1962);
                              _2101 = _2094 - (_2095 * _1963);
                              _2127 = 1.0f / ((float)((uint)_1922));
                              _2131 = frac(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _2068) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z) * _2127);
                              _2156 = select(((int)_1855 > (int)5), 1.0f, ((saturate((saturate(dot(float3(_1961, _1962, _1963), float3(select(_2040, _1961, (_2035 * _2031)), select(_2040, _1962, (_2035 * _2032)), select(_2040, _1963, (_2035 * _2033))))) + -0.03125f) * 1.0322580337524414f) * ((float)((bool)(uint)(dot(float3(_2099, _2100, _2101), float3(_2099, _2100, _2101)) < ((_2050 * _2050) * 16.0f))))) * ((float)((bool)(uint)(((__3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _2066) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _2127), (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _2067) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y) * _2127), (((((float)((uint)_1912)) + 1.0f) + ((select((_2131 < 0.0f), 1.0f, 0.0f) + _2131) * 128.0f)) * 0.000961538462433964f)), 0.0f)).x) > ((_1924 * 0.25f) * (saturate((dot(float3(_2044, _2045, _2046), float3(0.21267099678516388f, 0.7151600122451782f, 0.0721689984202385f)) * 9.999999747378752e-05f) / _exposure3.w) + 1.0f)))))));
                              _2163 = (((((_2018 * 0.3395099937915802f) + (_2017 * 0.6131200194358826f)) + (_2019 * 0.047370001673698425f)) * _2044) * _2156) + _1965;
                              _2164 = (((((_2018 * 0.9163600206375122f) + (_2017 * 0.07020000368356705f)) + (_2019 * 0.013450000435113907f)) * _2045) * _2156) + _1966;
                              _2165 = (((((_2018 * 0.10958000272512436f) + (_2017 * 0.02061999961733818f)) + (_2019 * 0.8697999715805054f)) * _2046) * _2156) + _1967;
                              _2166 = _2156 + _1968;
                              _2167 = _1969 + 1;
                              if ((uint)_2167 < (uint)4) {
                                _1965 = _2163;
                                _1966 = _2164;
                                _1967 = _2165;
                                _1968 = _2166;
                                _1969 = _2167;
                                continue;
                              } else {
                                _2170 = _2163;
                                _2171 = _2164;
                                _2172 = _2165;
                                _2173 = _2166;
                              }
                            } else {
                              _2170 = _1965;
                              _2171 = _1966;
                              _2172 = _1967;
                              _2173 = _1968;
                            }
                            if (_2173 > 0.0f) {
                              _2176 = 1.0f / _2173;
                              _2190 = 1.0f;
                              _2191 = (-0.0f - min(0.0f, (-0.0f - (_2170 * _2176))));
                              _2192 = (-0.0f - min(0.0f, (-0.0f - (_2171 * _2176))));
                              _2193 = (-0.0f - min(0.0f, (-0.0f - (_2172 * _2176))));
                            } else {
                              _2190 = 0.0f;
                              _2191 = _2170;
                              _2192 = _2171;
                              _2193 = _2172;
                            }
                            break;
                          }
                        } else {
                          _2190 = 0.0f;
                          _2191 = 0.0f;
                          _2192 = 0.0f;
                          _2193 = 0.0f;
                        }
                      } else {
                        _2190 = 0.0f;
                        _2191 = 0.0f;
                        _2192 = 0.0f;
                        _2193 = 0.0f;
                      }
                    } else {
                      _2190 = 1.0f;
                      _2191 = 0.0f;
                      _2192 = 0.0f;
                      _2193 = 0.0f;
                    }
                    break;
                  }
                } else {
                  _2190 = 1.0f;
                  _2191 = 0.0f;
                  _2192 = 0.0f;
                  _2193 = 0.0f;
                }
                break;
              }
            } else {
              _2190 = 1.0f;
              _2191 = 0.0f;
              _2192 = 0.0f;
              _2193 = 0.0f;
            }
            _2201 = saturate((_1664 * 0.25f) / (float((int)((int)(1 << (_1377 & 31)))) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x)) * _2190;
            _2211 = -0.0f - min(0.0f, (-0.0f - (_2191 * _2201)));
            _2212 = -0.0f - min(0.0f, (-0.0f - (_2192 * _2201)));
            _2213 = -0.0f - min(0.0f, (-0.0f - (_2193 * _2201)));
            _2215 = select(((int)_1670 > (int)-1), 1.0f, 0.0f);
            _2216 = max(9.999999974752427e-07f, _1664);
            if (_2216 > 0.0f) {
              _2221 = (_2216 + _1310);
              _2222 = _2211;
              _2223 = _2212;
              _2224 = _2213;
              _2225 = _2215;
            } else {
              _2221 = _2216;
              _2222 = _2211;
              _2223 = _2212;
              _2224 = _2213;
              _2225 = _2215;
            }
          } else {
            _2221 = 0.0f;
            _2222 = 0.0f;
            _2223 = 0.0f;
            _2224 = 0.0f;
            _2225 = _1668;
          }
        } else {
          _2221 = 0.0f;
          _2222 = 0.0f;
          _2223 = 0.0f;
          _2224 = 0.0f;
          _2225 = 0.0f;
        }
        break;
      }
    } else {
      _2221 = _976;
      _2222 = _972;
      _2223 = _973;
      _2224 = _974;
      _2225 = _975;
    }
    _2228 = saturate(5.000000476837158f - (_171 * 0.01953125186264515f));  // [sem: expr_sat]
    _2229 = (_1179 != 0);
    if ((_1178 > 0.0f) && ((_1170 > 0.0f) && _2229)) {
      if (!(_1170 < _2221)) {
        _2239 = (_2221 <= 0.0f);
      } else {
        _2239 = true;
      }
    } else {
      _2239 = false;
    }
    _2243 = saturate(max(select(_2239, 1.0f, 0.0f), (1.0f - _2228)));  // [sem: expr_sat]
    _2244 = _2243 * _1178;
    _2247 = min(_2228, saturate(1.0f - _2244));
    if (!(_2225 == 0.0f)) {
      _2262 = ((_2247 * _2222) + (_2243 * _1175));
      _2263 = ((_2247 * _2223) + (_2243 * _1176));
      _2264 = ((_2247 * _2224) + (_2243 * _1177));
      _2265 = ((_2247 * _2225) + _2244);
    } else {
      _2262 = _1175;
      _2263 = _1176;
      _2264 = _1177;
      _2265 = _1178;
    }
    _2268 = 1.0f / max(9.999999974752427e-07f, (_2247 + _2243));
    _2272 = _2268 * ((_2247 * _2221) + (_2243 * _1170));
    _2274 = _2268 * _2243;
    _2278 = (_2272 * _203) + _166;
    _2279 = (_2272 * _204) + _167;
    _2280 = (_2272 * _205) + _168;
    [branch]
    if (!(_2272 <= 0.0f)) {
      _2310 = mad((_viewProjRelative[2].w), _2280, mad((_viewProjRelative[1].w), _2279, ((_viewProjRelative[0].w) * _2278))) + (_viewProjRelative[3].w);
      _2315 = (((mad((_viewProjRelative[2].x), _2280, mad((_viewProjRelative[1].x), _2279, ((_viewProjRelative[0].x) * _2278))) + (_viewProjRelative[3].x)) / _2310) * 0.5f) + 0.5f;
      _2316 = 0.5f - (((mad((_viewProjRelative[2].y), _2280, mad((_viewProjRelative[1].y), _2279, ((_viewProjRelative[0].y) * _2278))) + (_viewProjRelative[3].y)) / _2310) * 0.5f);
      if (((_2315 >= 0.0f) && (_2315 <= 1.0f)) && ((_2316 >= 0.0f) && (_2316 <= 1.0f))) {
        if (_2229 && (((mad((_viewProjRelative[2].z), _2280, mad((_viewProjRelative[1].z), _2279, ((_viewProjRelative[0].z) * _2278))) + (_viewProjRelative[3].z)) / _2310) > 0.0f)) {
          if (_renderParams.x == 0.0f) {
  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod]
            half4 _2343 = __3__36__0__0__g_sceneShadowColor.SampleLevel(__3__40__0__0__g_sampler, float2(_2315, _2316), 0.0f);
            _2351 = float(_2343.x);  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2352 = float(_2343.y);  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2353 = float(_2343.z);  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          } else {
            _2351 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2352 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2353 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          }
        } else {
          _2351 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          _2352 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          _2353 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
        }
      } else {
        _2351 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
        _2352 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
        _2353 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
      }
      _2360 = _viewPos.x + _2278;
      _2361 = _viewPos.y + _2279;
      _2362 = _viewPos.z + _2280;
      _2367 = _2360 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].x);
      _2368 = _2361 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].y);
      _2369 = _2362 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].z);
      _2389 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].x), _2369, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].x), _2368, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].x) * _2367))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][3].x);
      _2393 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].y), _2369, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].y), _2368, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].y) * _2367))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][3].y);
      _2400 = 2.0f / __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y;
      _2401 = 1.0f - _2400;
      _2408 = (((!(_2389 <= _2401)) || (!(_2389 >= _2400))) || (!(_2393 <= _2401))) || (!(_2393 >= _2400));
      _2417 = _2360 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].x);
      _2418 = _2361 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].y);
      _2419 = _2362 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].z);
      _2439 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].x), _2419, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].x), _2418, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].x) * _2417))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][3].x);
      _2443 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].y), _2419, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].y), _2418, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].y) * _2417))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][3].y);
      _2454 = (((!(_2439 <= _2401)) || (!(_2439 >= _2400))) || (!(_2443 <= _2401))) || (!(_2443 >= _2400));
      _2455 = select(_2454, select(_2408, 0.0f, _2389), _2439);
      _2456 = select(_2454, select(_2408, 0.0f, _2393), _2443);
      _2457 = select(_2454, select(_2408, 0.0f, (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].z), _2369, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].z), _2368, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].z) * _2367))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][3].z))), (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].z), _2419, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].z), _2418, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].z) * _2417))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][3].z)));
      _2458 = select(_2454, select(_2408, -1, 1), 0);
      [branch]
      if (!(_2458 == -1)) {
        _2464 = (_2455 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x) + -0.5f;
        _2465 = (_2456 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y) + -0.5f;
        _2468 = int(floor(_2464));
        _2469 = int(floor(_2465));
        _2472 = _2468 + 1u;
        _2473 = _2469 + 1u;
        if (!(((uint)_2468 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x))) || ((uint)_2469 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y))))) {
  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod]
          half4 _2490 = __3__36__0__0__g_shadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_2455, _2456, ((float)((uint)_2458))), 0.0f);
          _2496 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2468, _2469, _2458, 0)))).x);
          _2497 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2472, _2469, _2458, 0)))).x);
          _2498 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2468, _2473, _2458, 0)))).x);
          _2499 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2472, _2473, _2458, 0)))).x);
          _2500 = (half)(_2490.x);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2501 = (half)(_2490.y);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2502 = (half)(_2490.z);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2503 = (half)(_2490.w);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
        } else {
          _2496 = 0.0f;
          _2497 = 0.0f;
          _2498 = 0.0f;
          _2499 = 0.0f;
          _2500 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2501 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2502 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2503 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
        }
        _2504 = _2458 << 2;
        _2506 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_2504 + 103))];
        _2512 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_2504 + 104))];
        _2518 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_2504 + 105))];
        _2524 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_2504 + 106))];
        _2529 = _2506.x * _2455;
        _2533 = _2506.y * _2455;
        _2537 = _2506.z * _2455;
        _2541 = _2506.w * _2455;
        _2544 = mad(_2518.w, _2496, mad(_2512.w, _2456, _2541)) + _2524.w;
        _2545 = (mad(_2518.x, _2496, mad(_2512.x, _2456, _2529)) + _2524.x) / _2544;
        _2546 = (mad(_2518.y, _2496, mad(_2512.y, _2456, _2533)) + _2524.y) / _2544;
        _2547 = (mad(_2518.z, _2496, mad(_2512.z, _2456, _2537)) + _2524.z) / _2544;
        _2550 = _2455 + (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.z * 4.0f);
        _2566 = mad(_2518.w, _2497, mad(_2512.w, _2456, (_2506.w * _2550))) + _2524.w;
        _2572 = _2456 - (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.w * 2.0f);
        _2584 = mad(_2518.w, _2498, mad(_2512.w, _2572, _2541)) + _2524.w;
        _2588 = ((mad(_2518.x, _2498, mad(_2512.x, _2572, _2529)) + _2524.x) / _2584) - _2545;
        _2589 = ((mad(_2518.y, _2498, mad(_2512.y, _2572, _2533)) + _2524.y) / _2584) - _2546;
        _2590 = ((mad(_2518.z, _2498, mad(_2512.z, _2572, _2537)) + _2524.z) / _2584) - _2547;
        _2591 = ((mad(_2518.x, _2497, mad(_2512.x, _2456, (_2506.x * _2550))) + _2524.x) / _2566) - _2545;
        _2592 = ((mad(_2518.y, _2497, mad(_2512.y, _2456, (_2506.y * _2550))) + _2524.y) / _2566) - _2546;
        _2593 = ((mad(_2518.z, _2497, mad(_2512.z, _2456, (_2506.z * _2550))) + _2524.z) / _2566) - _2547;
        _2596 = (_2590 * _2592) - (_2589 * _2593);
        _2599 = (_2588 * _2593) - (_2590 * _2591);
        _2602 = (_2589 * _2591) - (_2588 * _2592);
        _2604 = rsqrt(dot(float3(_2596, _2599, _2602), float3(_2596, _2599, _2602)));  // [sem: invLength]
        _2605 = _2596 * _2604;
        _2606 = _2599 * _2604;
        _2607 = _2602 * _2604;
        _2608 = frac(_2464);
        _2613 = (saturate(dot(float3(_203, _204, _205), float3(_2605, _2606, _2607))) * 0.0020000000949949026f) + _2457;
        _2626 = saturate(exp2((_2496 - _2613) * 1442695.0f));  // [sem: expr_sat]
        _2628 = saturate(exp2((_2498 - _2613) * 1442695.0f));  // [sem: expr_sat]
        _2634 = ((saturate(exp2((_2497 - _2613) * 1442695.0f)) - _2626) * _2608) + _2626;
        _2641 = _2605;
        _2642 = _2606;
        _2643 = _2607;
  // [sem: expr_sat]
        _2644 = saturate((((_2628 - _2634) + ((saturate(exp2((_2499 - _2613) * 1442695.0f)) - _2628) * _2608)) * frac(_2465)) + _2634);
        _2645 = _2496;
        _2646 = _2497;
        _2647 = _2498;
        _2648 = _2499;
        _2649 = _2500;
        _2650 = _2501;
        _2651 = _2502;
        _2652 = _2503;
      } else {
        _2641 = 0.0f;
        _2642 = 0.0f;
        _2643 = 0.0f;
        _2644 = 0.0f;  // [sem: expr_sat]
        _2645 = 0.0f;
        _2646 = 0.0f;
        _2647 = 0.0f;
        _2648 = 0.0f;
        _2649 = 0.0h;
        _2650 = 0.0h;
        _2651 = 0.0h;
        _2652 = 0.0h;
      }
      _2672 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].x), _2280, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].x), _2279, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].x) * _2278))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][3].x);
      _2676 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].y), _2280, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].y), _2279, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].y) * _2278))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][3].y);
      _2680 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].z), _2280, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].z), _2279, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].z) * _2278))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][3].z);
      _2683 = 4.0f / __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y;
      _2684 = 1.0f - _2683;
      if (!(((!(_2672 <= _2684)) || (!(_2672 >= _2683))) || (!(_2676 <= _2684)))) {
        _2695 = (_2680 >= -1.0f) && ((_2680 <= 1.0f) && (_2676 >= _2683));
        _2703 = select(_2695, 9.999999747378752e-06f, -9.999999747378752e-05f);
        _2704 = select(_2695, _2672, _2455);
        _2705 = select(_2695, _2676, _2456);
        _2706 = select(_2695, _2680, _2457);
        _2707 = select(_2695, 1, _2458);
        _2708 = ((int)(uint)(_2695));
      } else {
        _2703 = -9.999999747378752e-05f;
        _2704 = _2455;
        _2705 = _2456;
        _2706 = _2457;
        _2707 = _2458;
        _2708 = 0;
      }
      _2728 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].x), _2280, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].x), _2279, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].x) * _2278))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][3].x);
      _2732 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].y), _2280, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].y), _2279, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].y) * _2278))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][3].y);
      _2736 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].z), _2280, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].z), _2279, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].z) * _2278))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][3].z);
      if (!(((!(_2728 <= _2684)) || (!(_2728 >= _2683))) || (!(_2732 <= _2684)))) {
        _2747 = (_2736 >= -1.0f) && ((_2732 >= _2683) && (_2736 <= 1.0f));
        _2755 = select(_2747, 9.999999747378752e-06f, _2703);
        _2756 = select(_2747, _2728, _2704);
        _2757 = select(_2747, _2732, _2705);
        _2758 = select(_2747, _2736, _2706);
        _2759 = select(_2747, 0, _2707);
        _2760 = select(_2747, 1, _2708);
      } else {
        _2755 = _2703;
        _2756 = _2704;
        _2757 = _2705;
        _2758 = _2706;
        _2759 = _2707;
        _2760 = _2708;
      }
      [branch]
      if (!(_2760 == 0)) {
        _2770 = int(floor((_2756 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f));
        _2771 = int(floor((_2757 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f));
        _2774 = _2770 + 1u;
        _2775 = _2771 + 1u;
        if (!(((uint)_2770 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x))) || ((uint)_2771 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y))))) {
          _2790 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2770, _2771, _2759, 0)))).x);
          _2791 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2774, _2771, _2759, 0)))).x);
          _2792 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2770, _2775, _2759, 0)))).x);
          _2793 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2774, _2775, _2759, 0)))).x);
        } else {
          _2790 = _2645;
          _2791 = _2646;
          _2792 = _2647;
          _2793 = _2648;
        }
        _2794 = _2759 << 2;
        _2796 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)(_2794 + 58u))];
        _2802 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)(_2794 + 59u))];
        _2808 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)(_2794 + 60u))];
        _2814 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)(_2794 + 61u))];
        _2819 = _2796.x * _2756;
        _2823 = _2796.y * _2756;
        _2827 = _2796.z * _2756;
        _2831 = _2796.w * _2756;
        _2834 = mad(_2808.w, _2790, mad(_2802.w, _2757, _2831)) + _2814.w;
        _2835 = (mad(_2808.x, _2790, mad(_2802.x, _2757, _2819)) + _2814.x) / _2834;
        _2836 = (mad(_2808.y, _2790, mad(_2802.y, _2757, _2823)) + _2814.y) / _2834;
        _2837 = (mad(_2808.z, _2790, mad(_2802.z, _2757, _2827)) + _2814.z) / _2834;
        _2840 = _2756 + (__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.z * 8.0f);
        _2856 = mad(_2808.w, _2791, mad(_2802.w, _2757, (_2796.w * _2840))) + _2814.w;
        _2862 = _2757 - (__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.w * 4.0f);
        _2874 = mad(_2808.w, _2792, mad(_2802.w, _2862, _2831)) + _2814.w;
        _2878 = ((mad(_2808.x, _2792, mad(_2802.x, _2862, _2819)) + _2814.x) / _2874) - _2835;
        _2879 = ((mad(_2808.y, _2792, mad(_2802.y, _2862, _2823)) + _2814.y) / _2874) - _2836;
        _2880 = ((mad(_2808.z, _2792, mad(_2802.z, _2862, _2827)) + _2814.z) / _2874) - _2837;
        _2881 = ((mad(_2808.x, _2791, mad(_2802.x, _2757, (_2796.x * _2840))) + _2814.x) / _2856) - _2835;
        _2882 = ((mad(_2808.y, _2791, mad(_2802.y, _2757, (_2796.y * _2840))) + _2814.y) / _2856) - _2836;
        _2883 = ((mad(_2808.z, _2791, mad(_2802.z, _2757, (_2796.z * _2840))) + _2814.z) / _2856) - _2837;
        _2886 = (_2880 * _2882) - (_2879 * _2883);
        _2889 = (_2878 * _2883) - (_2880 * _2881);
        _2892 = (_2879 * _2881) - (_2878 * _2882);
        _2894 = rsqrt(dot(float3(_2886, _2889, _2892), float3(_2886, _2889, _2892)));  // [sem: invLength]
        if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
          _2912 = _sunDirection.x;
          _2913 = _sunDirection.y;
          _2914 = _sunDirection.z;
        } else {
          _2912 = _moonDirection.x;
          _2913 = _moonDirection.y;
          _2914 = _moonDirection.z;
        }
        _2920 = (_2755 - (saturate(-0.0f - dot(float3(_2912, _2913, _2914), float3(_203, _204, _205))) * 9.999999747378752e-05f)) + _2758;
        _2933 = (_2886 * _2894);
        _2934 = (_2889 * _2894);
        _2935 = (_2892 * _2894);
        _2936 = min(((float)((bool)(uint)(_2790 > _2920))), min(min(((float)((bool)(uint)(_2791 > _2920))), ((float)((bool)(uint)(_2792 > _2920)))), ((float)((bool)(uint)(_2793 > _2920)))));
      } else {
        _2933 = _2641;
        _2934 = _2642;
        _2935 = _2643;
        _2936 = _2644;
      }
      _2941 = _viewPos.x - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.x;
      _2942 = _viewPos.y - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.y;
      _2943 = _viewPos.z - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.z;
      _2944 = _2941 + _2278;
      _2945 = _2942 + _2279;
      _2946 = _2943 + _2280;
      _2966 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].x), _2946, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].x), _2945, (_2944 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[3].x);
      _2970 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].y), _2946, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].y), _2945, (_2944 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].y)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[3].y);
      _2974 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].z), _2946, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].z), _2945, (_2944 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].z)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[3].z);
      if (saturate(_2966) == _2966) {
        if ((_2974 >= 9.999999747378752e-05f) && ((_2974 <= 1.0f) && (saturate(_2970) == _2970))) {
          _2989 = frac((_2966 * 1024.0f) + -0.5f);
          _2993 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_2966, _2970));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
          _2998 = _2974 + -0.004999999888241291f;
          _3003 = select((_2993.w > _2998), 1.0f, 0.0f);
          _3005 = select((_2993.x > _2998), 1.0f, 0.0f);
          _3012 = ((select((_2993.z > _2998), 1.0f, 0.0f) - _3003) * _2989) + _3003;
  // [sem: expr_sat]
          _3018 = saturate((((((select((_2993.y > _2998), 1.0f, 0.0f) - _3005) * _2989) + _3005) - _3012) * frac((_2970 * 1024.0f) + -0.5f)) + _3012);
        } else {
          _3018 = 1.0f;  // [sem: expr_sat]
        }
      } else {
        _3018 = 1.0f;  // [sem: expr_sat]
      }
      _3019 = min(_2936, _3018);
      _3020 = saturate(_2649);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived_derived_sat]
      _3021 = saturate(_2650);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived_derived_sat]
      _3022 = saturate(_2651);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived_derived_sat]
      _3036 = ((half)(((half)(_3021 * 0.3395996h)) + ((half)(_3020 * 0.61328125h)))) + ((half)(_3022 * 0.04736328h));
      _3037 = ((half)(((half)(_3021 * 0.9165039h)) + ((half)(_3020 * 0.07019043h)))) + ((half)(_3022 * 0.013450623h));
      _3038 = ((half)(((half)(_3021 * 0.109558105h)) + ((half)(_3020 * 0.020614624h)))) + ((half)(_3022 * 0.8696289h));
      _3041 = (_sunDirection.y > 0.0f);
      if ((_3041) || ((!(_3041)) && (_sunDirection.y > _moonDirection.y))) {
        _3053 = _sunDirection.x;
        _3054 = _sunDirection.y;
        _3055 = _sunDirection.z;
      } else {
        _3053 = _moonDirection.x;
        _3054 = _moonDirection.y;
        _3055 = _moonDirection.z;
      }
      if ((_3041) || ((!(_3041)) && (_sunDirection.y > _moonDirection.y))) {
        _3075 = _precomputedAmbient7.y;
      } else {
        _3075 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
      }
      _3078 = _2361 + _earthRadius;
      _3084 = sqrt(((_2362 * _2362) + (_2360 * _2360)) + (_3078 * _3078));
      _3089 = dot(float3((_2360 / _3084), (_3078 / _3084), (_2362 / _3084)), float3(_3053, _3054, _3055));
      _3093 = _atmosphereThickness + -16.0f;
      _3095 = min(max(((_3084 - _earthRadius) / _atmosphereThickness), 16.0f), _3093);
      _3097 = _atmosphereThickness + -32.0f;
      _3103 = max(_3095, 0.0f);
      _3104 = _earthRadius * 2.0f;
      _3110 = (-0.0f - sqrt((_3103 + _3104) * _3103)) / (_3103 + _earthRadius);
      if (_3089 > _3110) {
        _3133 = ((exp2(log2(saturate((_3089 - _3110) / (1.0f - _3110))) * 0.20000000298023224f) * 0.4921875f) + 0.50390625f);
      } else {
        _3133 = ((exp2(log2(saturate((_3110 - _3089) / (_3110 + 1.0f))) * 0.20000000298023224f) * 0.4921875f) + 0.00390625f);
      }
  // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
      _3138 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_3095 + -16.0f) / _3097)) * 0.5f) * 0.96875f) + 0.015625f), _3133), 0.0f);
      _3157 = _mieAerosolAbsorption + 1.0f;
      _3158 = _mieAerosolDensity * 1.9999999494757503e-05f;
      _3160 = (_3158 * _3138.y) * _3157;
      _3166 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.960784317134312e-07f) + (_ozoneRatio * 2.05560013455397e-06f);
      _3169 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.960784317134312e-07f) + (_ozoneRatio * 4.978800461685751e-06f);
      _3172 = (_ozoneRatio * 2.1360001767334325e-07f) + (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.960784317134312e-07f);
      _3178 = exp2(((_3166 * _3138.x) + _3160) * -1.4426950216293335f);
      _3179 = exp2(((_3169 * _3138.x) + _3160) * -1.4426950216293335f);
      _3180 = exp2(((_3172 * _3138.x) + _3160) * -1.4426950216293335f);
      _3199 = sqrt((_2278 * _2278) + (_2280 * _2280));
      _3207 = (_cloudAltitude - (max(((_3199 * _3199) + -4e+05f), 0.0f) * 9.999999974752427e-07f)) - _viewPos.y;
      _3219 = (_cloudThickness * (0.5f - (float((int)(((int)(uint)((int)(_3054 > 0.0f))) - ((int)(uint)((int)(_3054 < 0.0f))))) * 0.5f))) + _3207;
      if (_2279 < _3207) {
        _3222 = dot(float3(0.0f, 1.0f, 0.0f), float3(_3053, _3054, _3055));
        _3228 = select((abs(_3222) < 9.99999993922529e-09f), 1e+08f, ((_3219 - dot(float3(0.0f, 1.0f, 0.0f), float3(_2278, _2279, _2280))) / _3222));
        _3234 = ((_3228 * _3053) + _2278);
        _3235 = _3219;
        _3236 = ((_3228 * _3055) + _2280);
      } else {
        _3234 = _2278;
        _3235 = _2279;
        _3236 = _2280;
      }
      _3249 = _cloudScatteringCoefficient / _distanceScale;
      _3250 = _distanceScale * -1.4426950216293335f;
      _3256 = saturate(abs(_3054) * 4.0f);  // [sem: expr_sat]
      _3258 = (_3256 * _3256) * exp2((_3250 * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_3234 * 4.999999873689376e-05f) + 0.5f), ((_3235 - _3207) / _cloudThickness), ((_3236 * 4.999999873689376e-05f) + 0.5f)), 0.0f)).x)) * _3249);
      _3265 = ((1.0f - _3258) * saturate(((_2279 - _cloudThickness) - _3207) * 0.10000000149011612f)) + _3258;
      _3266 = _3265 * (((_3179 * 0.3395099937915802f) + (_3178 * 0.6131200194358826f)) + (_3180 * 0.047370001673698425f));
      _3267 = _3265 * (((_3179 * 0.9163600206375122f) + (_3178 * 0.07020000368356705f)) + (_3180 * 0.013450000435113907f));
      _3268 = _3265 * (((_3179 * 0.10958000272512436f) + (_3178 * 0.02061999961733818f)) + (_3180 * 0.8697999715805054f));
      _3287 = float(saturate(_2652));
      if ((_971 != 0) && (!_991)) {
        _3289 = (_1174 > 0.0f);
        _3290 = select(_3289, _1171, _2933);
        _3291 = select(_3289, _1172, _2934);
        _3292 = select(_3289, _1173, _2935);
        _3293 = select(_3289, _1174, 0.800000011920929f);
        if (_970 > 0.0f) {
          _3296 = half(_967);
          _3297 = half(_968);
          _3298 = half(_969);
          _3304 = _3293;
          _3305 = _3290;
          _3306 = _3291;
          _3307 = _3292;
          _3308 = _3296;
          _3309 = _3297;
          _3310 = _3298;
          _3311 = _970;
          _3312 = float(_3296);
          _3313 = float(_3297);
          _3314 = float(_3298);
          _3315 = dot(float3(_3290, _3291, _3292), float3(_3053, _3054, _3055));
        } else {
          _3304 = _3293;
          _3305 = _3290;
          _3306 = _3291;
          _3307 = _3292;
          _3308 = _3036;
          _3309 = _3037;
          _3310 = _3038;
          _3311 = 0.10000000149011612f;
          _3312 = 1.0f;
          _3313 = 1.0f;
          _3314 = 1.0f;
          _3315 = _3287;
        }
      } else {
        _3304 = 0.800000011920929f;
        _3305 = _2933;
        _3306 = _2934;
        _3307 = _2935;
        _3308 = _3036;
        _3309 = _3037;
        _3310 = _3038;
        _3311 = 0.10000000149011612f;
        _3312 = 1.0f;
        _3313 = 1.0f;
        _3314 = 1.0f;
        _3315 = _3287;
      }
      _3323 = float(half(saturate(_3315) * 0.31830987334251404f)) * _3019;
      _3331 = 0.699999988079071f / min(max(max(max(_3312, _3313), _3314), 0.009999999776482582f), 0.699999988079071f);
      _3342 = (((_3331 * _3313) + -0.03999999910593033f) * _3311) + 0.03999999910593033f;
      _3344 = _3053 - _203;
      _3345 = _3054 - _204;
      _3346 = _3055 - _205;
      _3348 = rsqrt(dot(float3(_3344, _3345, _3346), float3(_3344, _3345, _3346)));  // [sem: invLength]
      _3349 = _3348 * _3344;
      _3350 = _3348 * _3345;
      _3351 = _3348 * _3346;
      _3352 = -0.0f - _203;
      _3353 = -0.0f - _204;
      _3354 = -0.0f - _205;
      _3359 = saturate(max(9.999999747378752e-06f, dot(float3(_3352, _3353, _3354), float3(_3305, _3306, _3307))));  // [sem: expr_sat]
      _3361 = saturate(dot(float3(_3305, _3306, _3307), float3(_3349, _3350, _3351)));  // [sem: expr_sat]
      _3364 = saturate(1.0f - saturate(saturate(dot(float3(_3352, _3353, _3354), float3(_3349, _3350, _3351)))));  // [sem: expr_sat]
      _3365 = _3364 * _3364;
      _3367 = (_3365 * _3365) * _3364;
      _3370 = _3367 * saturate(_3342 * 50.0f);
      _3371 = 1.0f - _3367;
      _3379 = saturate(_3315 * _3019);  // [sem: expr_sat]
      _3380 = _3304 * _3304;
      _3381 = _3380 * _3380;
      _3382 = 1.0f - _3380;
      _3394 = (((_3361 * _3381) - _3361) * _3361) + 1.0f;
      _3398 = (_3381 / ((_3394 * _3394) * 3.1415927410125732f)) * (0.5f / ((((_3359 * _3382) + _3380) * _3315) + (_3359 * ((_3315 * _3382) + _3380))));
      _3409 = ((((_3266 * 0.6131200194358826f) + (_3267 * 0.3395099937915802f)) + (_3268 * 0.047370001673698425f)) * _3075) * ((max((((_3371 * ((((_3331 * _3312) + -0.03999999910593033f) * _3311) + 0.03999999910593033f)) + _3370) * _3398), 0.0f) * _3379) + (_3323 * float(_3308)));
      _3411 = ((((_3266 * 0.07020000368356705f) + (_3267 * 0.9163600206375122f)) + (_3268 * 0.013450000435113907f)) * _3075) * ((max((((_3371 * _3342) + _3370) * _3398), 0.0f) * _3379) + (_3323 * float(_3309)));
      _3413 = ((((_3266 * 0.02061999961733818f) + (_3267 * 0.10958000272512436f)) + (_3268 * 0.8697999715805054f)) * _3075) * ((max((((_3371 * ((((_3331 * _3314) + -0.03999999910593033f) * _3311) + 0.03999999910593033f)) + _3370) * _3398), 0.0f) * _3379) + (_3323 * float(_3310)));
      _3418 = dot(float3(_3409, _3411, _3413), float3(0.21267099678516388f, 0.7151600122451782f, 0.0721689984202385f));
      _3419 = min((max(0.0005000000237487257f, _exposure3.w) * 4096.0f), _3418);
      _3423 = max(9.999999717180685e-10f, _3418);
      _3424 = (_3419 * _3409) / _3423;
      _3425 = (_3419 * _3411) / _3423;
      _3426 = (_3419 * _3413) / _3423;
      if ((_106 == 33) || (_106 == 55)) {
        if ((_3041) || ((!(_3041)) && (_sunDirection.y > _moonDirection.y))) {
          _3447 = _sunDirection.x;
          _3448 = _sunDirection.y;
          _3449 = _sunDirection.z;
        } else {
          _3447 = _moonDirection.x;
          _3448 = _moonDirection.y;
          _3449 = _moonDirection.z;
        }
        _3454 = rsqrt(dot(float3(_166, _167, _168), float3(_166, _167, _168)));  // [sem: invLength]
        _3455 = _3454 * _166;
        _3456 = _3454 * _167;
        _3457 = _3454 * _168;
        _3461 = _166 - (_126 * 0.03999999910593033f);
        _3462 = _167 - (_127 * 0.03999999910593033f);
        _3463 = _168 - (_128 * 0.03999999910593033f);
        _3467 = (_viewPos.x - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].x)) + _3461;
        _3468 = (_viewPos.y - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].y)) + _3462;
        _3469 = (_viewPos.z - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].z)) + _3463;
        _3473 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].x), _3469, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].x), _3468, (_3467 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][3].x);
        _3477 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].y), _3469, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].y), _3468, (_3467 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].y)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][3].y);
        _3488 = (((!(_3473 <= _2401)) || (!(_3473 >= _2400))) || (!(_3477 <= _2401))) || (!(_3477 >= _2400));
        _3496 = (_viewPos.x - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].x)) + _3461;
        _3497 = (_viewPos.y - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].y)) + _3462;
        _3498 = (_viewPos.z - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].z)) + _3463;
        _3502 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].x), _3498, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].x), _3497, (_3496 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][3].x);
        _3506 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].y), _3498, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].y), _3497, (_3496 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].y)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][3].y);
        _3517 = (((!(_3502 <= _2401)) || (!(_3502 >= _2400))) || (!(_3506 <= _2401))) || (!(_3506 >= _2400));
        _3519 = select((_3517 && _3488), 0.0f, 0.0010000000474974513f);
        _3520 = select(_3517, select(_3488, 0.0f, _3473), _3502);
        _3521 = select(_3517, select(_3488, 0.0f, _3477), _3506);
        _3522 = select(_3517, select(_3488, 0.0f, (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].z), _3469, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].z), _3468, (_3467 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].z)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][3].z))), (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].z), _3498, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].z), _3497, (_3496 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].z)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][3].z)));
        _3523 = select(_3517, select(_3488, -1, 1), 0);
        [branch]
        if (!(_3523 == -1)) {
          _3529 = (_3520 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x) + -0.5f;
          _3530 = (_3521 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y) + -0.5f;
          _3533 = int(floor(_3529));
          _3534 = int(floor(_3530));
          _3537 = _3533 + 1u;
          _3538 = _3534 + 1u;
          if (!(((uint)_3533 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x))) || ((uint)_3534 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y))))) {
            _3553 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3533, _3534, _3523, 0)))).x);
            _3554 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3537, _3534, _3523, 0)))).x);
            _3555 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3533, _3538, _3523, 0)))).x);
            _3556 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3537, _3538, _3523, 0)))).x);
          } else {
            _3553 = 0.0f;
            _3554 = 0.0f;
            _3555 = 0.0f;
            _3556 = 0.0f;
          }
          _3557 = _3523 << 2;
          _3559 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_3557 + 103))];
          _3565 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_3557 + 104))];
          _3571 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_3557 + 105))];
          _3577 = __3__35__0__0__ShadowConstantBuffer_raw[((int)(_3557 + 106))];
          _3582 = _3559.x * _3520;
          _3586 = _3559.y * _3520;
          _3590 = _3559.z * _3520;
          _3594 = _3559.w * _3520;
          _3597 = mad(_3571.w, _3553, mad(_3565.w, _3521, _3594)) + _3577.w;
          _3598 = (mad(_3571.x, _3553, mad(_3565.x, _3521, _3582)) + _3577.x) / _3597;
          _3599 = (mad(_3571.y, _3553, mad(_3565.y, _3521, _3586)) + _3577.y) / _3597;
          _3600 = (mad(_3571.z, _3553, mad(_3565.z, _3521, _3590)) + _3577.z) / _3597;
          _3603 = _3520 + (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.z * 4.0f);
          _3619 = mad(_3571.w, _3554, mad(_3565.w, _3521, (_3559.w * _3603))) + _3577.w;
          _3625 = _3521 - (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.w * 2.0f);
          _3637 = mad(_3571.w, _3555, mad(_3565.w, _3625, _3594)) + _3577.w;
          _3641 = ((mad(_3571.x, _3555, mad(_3565.x, _3625, _3582)) + _3577.x) / _3637) - _3598;
          _3642 = ((mad(_3571.y, _3555, mad(_3565.y, _3625, _3586)) + _3577.y) / _3637) - _3599;
          _3643 = ((mad(_3571.z, _3555, mad(_3565.z, _3625, _3590)) + _3577.z) / _3637) - _3600;
          _3644 = ((mad(_3571.x, _3554, mad(_3565.x, _3521, (_3559.x * _3603))) + _3577.x) / _3619) - _3598;
          _3645 = ((mad(_3571.y, _3554, mad(_3565.y, _3521, (_3559.y * _3603))) + _3577.y) / _3619) - _3599;
          _3646 = ((mad(_3571.z, _3554, mad(_3565.z, _3521, (_3559.z * _3603))) + _3577.z) / _3619) - _3600;
          _3649 = (_3643 * _3645) - (_3642 * _3646);
          _3652 = (_3641 * _3646) - (_3643 * _3644);
          _3655 = (_3642 * _3644) - (_3641 * _3645);
          _3657 = rsqrt(dot(float3(_3649, _3652, _3655), float3(_3649, _3652, _3655)));  // [sem: invLength]
          _3661 = frac(_3529);
          _3666 = (saturate(dot(float3(_3455, _3456, _3457), float3((_3649 * _3657), (_3652 * _3657), (_3655 * _3657)))) * 0.0020000000949949026f) + _3522;
          _3679 = saturate(exp2((_3553 - _3666) * 1442695.0f));  // [sem: expr_sat]
          _3681 = saturate(exp2((_3555 - _3666) * 1442695.0f));  // [sem: expr_sat]
          _3687 = ((saturate(exp2((_3554 - _3666) * 1442695.0f)) - _3679) * _3661) + _3679;
  // [sem: expr_sat]
          _3694 = saturate((((_3681 - _3687) + ((saturate(exp2((_3556 - _3666) * 1442695.0f)) - _3681) * _3661)) * frac(_3530)) + _3687);
          _3695 = _3553;
          _3696 = _3554;
          _3697 = _3555;
          _3698 = _3556;
        } else {
          _3694 = 1.0f;  // [sem: expr_sat]
          _3695 = 0.0f;
          _3696 = 0.0f;
          _3697 = 0.0f;
          _3698 = 0.0f;
        }
        _3702 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].x), _3463, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].x), _3462, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].x) * _3461))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][3].x);
        _3706 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].y), _3463, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].y), _3462, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].y) * _3461))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][3].y);
        _3710 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].z), _3463, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].z), _3462, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].z) * _3461))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][3].z);
        if (!(((!(_3702 <= _2684)) || (!(_3702 >= _2683))) || (!(_3706 <= _2684)))) {
          _3721 = (_3710 >= -1.0f) && ((_3706 >= _2683) && (_3710 <= 1.0f));
          _3729 = select(_3721, 9.999999747378752e-06f, _3519);
          _3730 = select(_3721, _3702, _3520);
          _3731 = select(_3721, _3706, _3521);
          _3732 = select(_3721, _3710, _3522);
          _3733 = select(_3721, 1, _3523);
          _3734 = ((int)(uint)(_3721));
        } else {
          _3729 = _3519;
          _3730 = _3520;
          _3731 = _3521;
          _3732 = _3522;
          _3733 = _3523;
          _3734 = 0;
        }
        _3738 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].x), _3463, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].x), _3462, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].x) * _3461))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][3].x);
        _3742 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].y), _3463, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].y), _3462, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].y) * _3461))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][3].y);
        _3746 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].z), _3463, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].z), _3462, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].z) * _3461))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][3].z);
        if (!(((!(_3738 <= _2684)) || (!(_3738 >= _2683))) || (!(_3742 <= _2684)))) {
          _3757 = (_3746 >= -1.0f) && ((_3742 >= _2683) && (_3746 <= 1.0f));
          _3765 = select(_3757, 9.999999747378752e-06f, _3729);
          _3766 = select(_3757, _3738, _3730);
          _3767 = select(_3757, _3742, _3731);
          _3768 = select(_3757, _3746, _3732);
          _3769 = select(_3757, 0, _3733);
          _3770 = select(_3757, 1, _3734);
        } else {
          _3765 = _3729;
          _3766 = _3730;
          _3767 = _3731;
          _3768 = _3732;
          _3769 = _3733;
          _3770 = _3734;
        }
        [branch]
        if (!(_3770 == 0)) {
          _3780 = int(floor((_3766 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f));
          _3781 = int(floor((_3767 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f));
          _3784 = _3780 + 1u;
          _3785 = _3781 + 1u;
          if (!(((uint)_3780 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x))) || ((uint)_3781 > (uint)(int)(uint(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y))))) {
            _3800 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3780, _3781, _3769, 0)))).x);
            _3801 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3784, _3781, _3769, 0)))).x);
            _3802 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3780, _3785, _3769, 0)))).x);
            _3803 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3784, _3785, _3769, 0)))).x);
          } else {
            _3800 = _3695;
            _3801 = _3696;
            _3802 = _3697;
            _3803 = _3698;
          }
          if ((_3041) || ((!(_3041)) && (_sunDirection.y > _moonDirection.y))) {
            _3815 = _sunDirection.x;
            _3816 = _sunDirection.y;
            _3817 = _sunDirection.z;
          } else {
            _3815 = _moonDirection.x;
            _3816 = _moonDirection.y;
            _3817 = _moonDirection.z;
          }
          _3823 = (_3765 - (saturate(-0.0f - dot(float3(_3815, _3816, _3817), float3(_3455, _3456, _3457))) * 9.999999747378752e-05f)) + _3768;
          _3836 = min(((float)((bool)(uint)(_3800 > _3823))), min(min(((float)((bool)(uint)(_3801 > _3823))), ((float)((bool)(uint)(_3802 > _3823)))), ((float)((bool)(uint)(_3803 > _3823)))));
        } else {
          _3836 = _3694;
        }
        _3837 = _2941 + _3461;
        _3838 = _2942 + _3462;
        _3839 = _2943 + _3463;
        _3843 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].x), _3839, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].x), _3838, (_3837 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[3].x);
        _3847 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].y), _3839, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].y), _3838, (_3837 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].y)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[3].y);
        _3851 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].z), _3839, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].z), _3838, (_3837 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].z)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[3].z);
        if (saturate(_3843) == _3843) {
          if ((_3851 >= 9.999999747378752e-05f) && ((_3851 <= 1.0f) && (saturate(_3847) == _3847))) {
            _3866 = frac((_3843 * 1024.0f) + -0.5f);
  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
            _3870 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_3843, _3847));
            _3875 = _3851 + -0.004999999888241291f;
            _3880 = select((_3870.w > _3875), 1.0f, 0.0f);
            _3882 = select((_3870.x > _3875), 1.0f, 0.0f);
            _3889 = ((select((_3870.z > _3875), 1.0f, 0.0f) - _3880) * _3866) + _3880;
  // [sem: expr_sat]
            _3895 = saturate((((((select((_3870.y > _3875), 1.0f, 0.0f) - _3882) * _3866) + _3882) - _3889) * frac((_3847 * 1024.0f) + -0.5f)) + _3889);
          } else {
            _3895 = 1.0f;  // [sem: expr_sat]
          }
        } else {
          _3895 = 1.0f;  // [sem: expr_sat]
        }
  // [sem: _3__36__0__0__g_baseColor_load]
        _3901 = __3__36__0__0__g_baseColor.Load(int3((int)(uint(_76 * (1.0f / g_screenSpaceScale.x))), (int)(uint(_77 * (1.0f / g_screenSpaceScale.y))), 0));
        _3907 = ((float)((uint)((uint)(((uint)((uint)(_3901.x)) >> 8) & 255)))) * 0.003921568859368563f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _3910 = ((float)((uint)((uint)(_3901.x & 255)))) * 0.003921568859368563f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _3914 = ((float)((uint)((uint)(((uint)((uint)(_3901.y)) >> 8) & 255)))) * 0.003921568859368563f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _3915 = _3907 * _3907;
        _3916 = _3910 * _3910;
        _3917 = _3914 * _3914;
        if ((_3041) || ((!(_3041)) && (_sunDirection.y > _moonDirection.y))) {
          _3952 = _precomputedAmbient7.y;
        } else {
          _3952 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
        }
        _3953 = _viewPos.x + _166;
        _3955 = (_earthRadius + _viewPos.y) + _167;
        _3956 = _viewPos.z + _168;
        _3962 = sqrt(((_3956 * _3956) + (_3953 * _3953)) + (_3955 * _3955));
        _3967 = dot(float3((_3953 / _3962), (_3955 / _3962), (_3956 / _3962)), float3(_3447, _3448, _3449));
        _3970 = min(max(((_3962 - _earthRadius) / _atmosphereThickness), 16.0f), _3093);
        _3977 = max(_3970, 0.0f);
        _3983 = (-0.0f - sqrt((_3977 + _3104) * _3977)) / (_3977 + _earthRadius);
        if (_3967 > _3983) {
          _4006 = ((exp2(log2(saturate((_3967 - _3983) / (1.0f - _3983))) * 0.20000000298023224f) * 0.4921875f) + 0.50390625f);
        } else {
          _4006 = ((exp2(log2(saturate((_3983 - _3967) / (_3983 + 1.0f))) * 0.20000000298023224f) * 0.4921875f) + 0.00390625f);
        }
  // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
        _4009 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_3970 + -16.0f) / _3097)) * 0.5f) * 0.96875f) + 0.015625f), _4006), 0.0f);
        _4013 = (_3158 * _3157) * _4009.y;
        _4023 = exp2((_4013 + (_4009.x * _3166)) * -1.4426950216293335f);
        _4024 = exp2((_4013 + (_4009.x * _3169)) * -1.4426950216293335f);
        _4025 = exp2((_4013 + (_4009.x * _3172)) * -1.4426950216293335f);
        _4044 = sqrt((_168 * _168) + (_166 * _166));
        _4050 = (_cloudAltitude - (max(((_4044 * _4044) + -4e+05f), 0.0f) * 9.999999974752427e-07f)) - _viewPos.y;
        _4060 = _4050 + ((0.5f - (float((int)(((int)(uint)((int)(_3448 > 0.0f))) - ((int)(uint)((int)(_3448 < 0.0f))))) * 0.5f)) * _cloudThickness);
        if (_167 < _4050) {
          _4063 = dot(float3(0.0f, 1.0f, 0.0f), float3(_3447, _3448, _3449));
          _4069 = select((abs(_4063) < 9.99999993922529e-09f), 1e+08f, ((_4060 - dot(float3(0.0f, 1.0f, 0.0f), float3(_166, _167, _168))) / _4063));
          _4075 = ((_4069 * _3447) + _166);
          _4076 = _4060;
          _4077 = ((_4069 * _3449) + _168);
        } else {
          _4075 = _166;
          _4076 = _167;
          _4077 = _168;
        }
        _4091 = saturate(abs(_3448) * 4.0f);  // [sem: expr_sat]
        _4093 = (_4091 * _4091) * exp2((_3250 * _3249) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_4075 * 4.999999873689376e-05f) + 0.5f), ((_4076 - _4050) / _cloudThickness), ((_4077 * 4.999999873689376e-05f) + 0.5f)), 0.0f)).x));
        _4100 = ((1.0f - _4093) * saturate(((_167 - _cloudThickness) - _4050) * 0.10000000149011612f)) + _4093;
        _4101 = _4100 * (((_4024 * 0.3395099937915802f) + (_4023 * 0.6131200194358826f)) + (_4025 * 0.047370001673698425f));
        _4102 = _4100 * (((_4024 * 0.9163600206375122f) + (_4023 * 0.07020000368356705f)) + (_4025 * 0.013450000435113907f));
        _4103 = _4100 * (((_4024 * 0.10958000272512436f) + (_4023 * 0.02061999961733818f)) + (_4025 * 0.8697999715805054f));
        _4119 = ((max(0.0f, (0.30000001192092896f - dot(float3(_126, _127, _128), float3(_3447, _3448, _3449)))) * 0.1573420912027359f) * saturate(min(_3836, _3895))) * _3952;
        _4130 = (((_4119 * (((_3915 * 0.6131200194358826f) + (_3916 * 0.3395099937915802f)) + (_3917 * 0.047370001673698425f))) * (((_4101 * 0.6131200194358826f) + (_4102 * 0.3395099937915802f)) + (_4103 * 0.047370001673698425f))) + _3424);
        _4131 = (((_4119 * (((_3915 * 0.07020000368356705f) + (_3916 * 0.9163600206375122f)) + (_3917 * 0.013450000435113907f))) * (((_4101 * 0.07020000368356705f) + (_4102 * 0.9163600206375122f)) + (_4103 * 0.013450000435113907f))) + _3425);
        _4132 = (((_4119 * (((_3915 * 0.02061999961733818f) + (_3916 * 0.10958000272512436f)) + (_3917 * 0.8697999715805054f))) * (((_4101 * 0.02061999961733818f) + (_4102 * 0.10958000272512436f)) + (_4103 * 0.8697999715805054f))) + _3426);
      } else {
        _4130 = _3424;
        _4131 = _3425;
        _4132 = _3426;
      }
      _4133 = (_renderParams2.z * _2351) * _4130;
      _4134 = (_renderParams2.z * _2352) * _4131;
      _4135 = (_renderParams2.z * _2353) * _4132;
      _4139 = _4133 + _2262;
      _4140 = _4134 + _2263;
      _4141 = _4135 + _2264;
      _4152 = _2272;
      _4153 = (((max(_2262, _4133) - _4139) * _2274) + _4139);
      _4154 = (((max(_2263, _4134) - _4140) * _2274) + _4140);
      _4155 = (((max(_2264, _4135) - _4141) * _2274) + _4141);
    } else {
      _4152 = 1000.0f;
      _4153 = _2262;
      _4154 = _2263;
      _4155 = _2264;
    }
    if (!_978) {
      __3__38__0__1__g_raytracingHitResultUAV[int2(_74, _75)] = float4(_197, _198, _199, select((_4152 <= 0.0f), 1000.0f, _4152));
    }
    if ((_4152 > 128.0f) && (dot(float3(_4153, _4154, _4155), float3(0.21267099678516388f, 0.7151600122451782f, 0.0721689984202385f)) == 0.0f)) {
      _4166 = 1;
      while(true) {
        _4168 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_4166 + 20))];
        _4196 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)(_4166 + 36))];
        // RenoDX: >>> [Patch: SurfelVoxelClipmapJitter] [Version: 1.13.00]
        // Description: When Snow / Fog Lighting Fixes is enabled, jitters this clipmap lookup before integer quantization so vanilla cell boundaries do not become square diffuse-GI patches on snow.
        float3 _rndx_surfel_jitter_4206 = RenoDXSurfelVoxelJitter(float3(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _2278) * _4168.w) + _4196.x, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _2279) * _4168.w) + _4196.y, ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _2280) * _4168.w) + _4196.z), float2(_76, _77), _177, _frameNumber.x);
        _4206 = int(floor(_rndx_surfel_jitter_4206.x));
        _4207 = int(floor(_rndx_surfel_jitter_4206.y));
        _4208 = int(floor(_rndx_surfel_jitter_4206.z));
        // RenoDX: <<< [Patch: SurfelVoxelClipmapJitter]
        if (!(((((int)_4206 >= (int)int(_4168.x + -63.0f)) && ((int)_4206 < (int)int(_4168.x + 63.0f))) && (((int)_4207 >= (int)int(_4168.y + -31.0f)) && ((int)_4207 < (int)int(_4168.y + 31.0f)))) && (((int)_4208 >= (int)int(_4168.z + -63.0f)) && ((int)_4208 < (int)int(_4168.z + 63.0f))))) {
          _4221 = _4166 + 1;
          if ((uint)_4221 < (uint)8) {
            _4166 = _4221;
            continue;
          } else {
            _4224 = -10000;
          }
        } else {
          _4224 = _4166;
        }
        if (!((uint)_4224 > (uint)3)) {
          _4244 = 1.0f / ((float)((uint)(1 << (_4224 & 31))));
          _4248 = frac(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _2280) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z) * _4244);
  // [sem: expr_sat]
          _4265 = saturate(1.0f - ((__3__36__0__1__g_skyVisibilityVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _2278) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _4244), (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _2279) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y) * _4244), (((((float)((uint)(_4224 * 66))) + 1.0f) + ((select((_4248 < 0.0f), 1.0f, 0.0f) + _4248) * 64.0f)) * 0.0037878789007663727f)), 0.0f)).x));
        } else {
          _4265 = 1.0f;  // [sem: expr_sat]
        }
        _4268 = _renderParams.w * _4265;
        _4269 = (_970 == 0.0f);
  // [sem: _3__36__0__0__g_environmentColor_sampleLod]
        _4277 = __3__36__0__0__g_environmentColor.SampleLevel(__3__40__0__0__g_samplerTrilinear, float3(select(_4269, (-0.0f - _203), _1171), select(_4269, _204, _1172), select(_4269, (-0.0f - _205), _1173)), 4.0f);
        _4291 = ((_4268 * select(_4269, 0.03125f, _967)) * _4277.x);
        _4292 = ((_4268 * select(_4269, 0.03125f, _968)) * _4277.y);
        _4293 = ((_4268 * select(_4269, 0.03125f, _969)) * _4277.z);
        break;
      }
    } else {
      _4291 = _4153;
      _4292 = _4154;
      _4293 = _4155;
    }
    _4300 = saturate(1.0f - saturate(_2265));  // [sem: expr_sat]
    _4304 = (_4300 - (_renderParams2.w * _4300)) + _renderParams2.w;
  // [sem: _3__36__0__0__g_environmentColor_sampleLod]
    _4308 = __3__36__0__0__g_environmentColor.SampleLevel(__3__40__0__0__g_samplerTrilinear, float3(_203, _204, _205), 4.0f);
    _4314 = _renderParams.w * _4304;
    _4315 = _4314 * _4308.x;
    _4316 = _4314 * _4308.y;
    _4317 = _4314 * _4308.z;
    _4322 = dot(float3(_4315, _4316, _4317), float3(0.21267099678516388f, 0.7151600122451782f, 0.0721689984202385f));
    _4323 = min((max(0.009999999776482582f, _exposure3.w) * 2048.0f), _4322);
    _4327 = max(9.999999717180685e-10f, _4322);
    _4337 = ((__3__36__0__0__g_raytracingDiffuseRayInversePDF.Load(int3(_74, _75, 0))).x) * 2.0f;
    _4338 = _4337 * (((_4323 * _4315) / _4327) + (_renderParams2.y * _4291));
    _4339 = _4337 * (((_4323 * _4316) / _4327) + (_renderParams2.y * _4292));
    _4340 = _4337 * (((_4323 * _4317) / _4327) + (_renderParams2.y * _4293));
    if (!(_renderParams.y == 0.0f)) {
      _4345 = saturate(dot(float3(_126, _127, _128), float3(_203, _204, _205)));  // [sem: expr_sat]
      _4350 = (_4345 * _4338);
      _4351 = (_4345 * _4339);
      _4352 = (_4345 * _4340);
    } else {
      _4350 = _4338;
      _4351 = _4339;
      _4352 = _4340;
    }
    __3__38__0__1__g_diffuseResultUAV[int2(_74, _75)] = float4(((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - min(15000.0f, (_exposure4.x * _4350)))))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - min(15000.0f, (_exposure4.x * _4351)))))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - min(15000.0f, (_exposure4.x * _4352)))))))), (half)(half(1.0f - _4304)));
    break;
  }
}
