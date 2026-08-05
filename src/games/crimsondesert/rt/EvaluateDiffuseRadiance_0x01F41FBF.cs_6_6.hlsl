struct SurfelData {
  uint _baseColor;
  uint _normal;
  half3 _radiance;
  uint16_t _radius;
};

struct anon {
  float4 _shadowDepthRanges;
  float4 _massiveShadowSizeAndInvSize;
  uint4 _shadowParam;
  int4 _updateIndex;
  float4 _jitterOffset[8];
  float4 _shadowRelativePosition;
  float4 _dynmaicShadowSizeAndInvSize;
  column_major float4x4 _dynamicShadowProjTexScale[2][2];
  column_major float4x4 _dynamicShadowProjRelativeTexScale[2][2];
  float4 _dynamicShadowFrustumPlanes0[6];
  float4 _dynamicShadowFrustumPlanes1[6];
  column_major float4x4 _dynamicShadowViewProj[2][2];
  column_major float4x4 _dynamicShadowViewProjPrev[2][2];
  column_major float4x4 _invDynamicShadowViewProj[2][2];
  float4 _dynamicShadowPosition[2];
  float4 _shadowSizeAndInvSize;
  column_major float4x4 _shadowProjTexScale[2][2];
  column_major float4x4 _shadowProjRelativeTexScale[2][2];
  float4 _staticShadowPosition[2];
  column_major float4x4 _shadowViewProj[2][2];
  column_major float4x4 _shadowViewProjRelative[2][2];
  column_major float4x4 _invShadowViewProj[2][2];
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
};

struct anon_0 {
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
};

struct anon_1 {
  uint4 g_tileIndex[4096];
};


Texture3D<float> __3__36__0__1__g_skyVisibilityVoxelsTexturesLikeUav : register(t230, space36);

Texture3D<float> __3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav : register(t231, space36);

Texture3D<uint> __3__36__0__0__g_surfelIndicesVoxelsTextures : register(t223, space36);

Texture3D<uint4> __3__36__0__0__g_axisAlignedDistanceTextures : register(t212, space36);

Texture2D<float2> __3__36__0__0__g_texNetDensity : register(t106, space36);

Texture3D<float> __3__36__0__0__g_texCloudVolumeShadow : register(t199, space36);

Texture2D<float4> __3__36__0__0__g_terrainShadowDepth : register(t37, space36);

Texture2DArray<float4> __3__36__0__0__g_dynamicShadowDepthArray : register(t236, space36);

Texture2DArray<float4> __3__36__0__0__g_shadowDepthArray : register(t239, space36);

Texture2DArray<half4> __3__36__0__0__g_shadowColorArray : register(t241, space36);

TextureCube<float4> __3__36__0__0__g_environmentColor : register(t232, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t153, space36);

Texture2D<float> __3__36__0__0__g_raytracingDiffuseRayInversePDF : register(t169, space36);

Texture2D<float4> __3__36__0__0__g_raytracingBaseColor : register(t159, space36);

Texture2D<float4> __3__36__0__0__g_raytracingNormal : register(t160, space36);

StructuredBuffer<SurfelData> __3__37__0__0__g_surfelDataBuffer : register(t19, space37);

Texture2D<uint4> __3__36__0__0__g_baseColor : register(t18, space36);

Texture2D<uint> __3__36__0__0__g_sceneNormal : register(t50, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t63, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaquePrev : register(t64, space36);

Texture2D<half4> __3__36__0__0__g_sceneShadowColor : register(t54, space36);

RWTexture2D<float4> __3__38__0__1__g_raytracingHitResultUAV : register(u39, space38);

RWTexture2D<half4> __3__38__0__1__g_diffuseResultUAV : register(u11, space38);

cbuffer __1__3__0__0__PipelineProperty : register(b0, space3) {
  float2 g_screenSpaceScale : packoffset(c000.x);
  float2 __padding : packoffset(c000.z);
};

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

cbuffer __3__35__0__0__ShadowConstantBuffer : register(b35, space35) {
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

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b27, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
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
  int _54;
  int _55;
  int4 _57;
  int _69;
  int _73;
  uint _80;
  uint _85;
  float _86;
  float _87;
  float _93;
  float _98;
  uint _100;
  int _103;
  uint _105;
  float _111;
  float _117;
  float _123;
  float _125;
  float _126;
  float _127;
  float _128;
  float _132;
  float _144;
  float _153;
  float _162;
  float _171;
  float _174;
  float _180;
  int _190;
  int _243;
  int _301;
  int _322;
  int _383;
  int _456;
  int _457;
  int _458;
  int _459;
  int _466;
  int _534;
  int _535;
  int _536;
  int _537;
  int _538;
  int _539;
  int _570;
  int _571;
  int _572;
  int _573;
  int _574;
  int _580;
  int _581;
  int _588;
  int _589;
  int _590;
  int _591;
  int _613;
  float _614;
  float _615;
  float _616;
  float _617;
  float _618;
  float _619;
  float _620;
  float _863;
  float _864;
  float _865;
  float _866;
  float _885;
  float _886;
  float _887;
  float _927;
  float _928;
  float _929;
  float _937;
  float _938;
  float _939;
  float _940;
  float _941;
  int _942;
  float _943;
  float _944;
  float _945;
  float _946;
  float _947;
  float _948;
  float _949;
  float _950;
  int _964;
  int _1227;
  float _1228;
  float _1229;
  float _1230;
  float _1231;
  float _1232;
  float _1233;
  float _1234;
  float _1235;
  float _1236;
  int _1238;
  float _1301;
  float _1371;
  float _1372;
  float _1373;
  float _1374;
  int _1380;
  float _1461;
  float _1462;
  float _1463;
  float _1464;
  float _1465;
  int _1466;
  int _1468;
  float _1697;
  float _1698;
  float _1718;
  float _1719;
  float _1720;
  float _1721;
  float _1722;
  float _1724;
  float _1725;
  float _1726;
  float _1727;
  float _1728;
  float _1729;
  int _1745;
  int _1818;
  int _1819;
  int _1820;
  int _1821;
  int _1827;
  int _1895;
  int _1896;
  int _1897;
  int _1898;
  int _1899;
  int _1900;
  int _1931;
  int _1932;
  int _1933;
  int _1934;
  int _1935;
  int _1941;
  int _1942;
  int _1949;
  int _1950;
  int _1951;
  int _1952;
  int _1977;
  float _1978;
  float _1979;
  float _1980;
  float _1981;
  float _2216;
  float _2217;
  float _2218;
  float _2219;
  float _2238;
  float _2239;
  float _2240;
  float _2241;
  float _2270;
  float _2271;
  float _2272;
  float _2273;
  float _2274;
  int _2289;
  float _2313;
  float _2314;
  float _2315;
  float _2316;
  float _2401;
  float _2402;
  float _2403;
  half _2546;
  half _2547;
  half _2548;
  half _2549;
  float _2550;
  float _2551;
  float _2552;
  float _2553;
  half _2691;
  half _2692;
  half _2693;
  half _2694;
  float _2695;
  float _2696;
  float _2697;
  float _2698;
  float _2699;
  float _2700;
  float _2701;
  float _2702;
  int _2753;
  int _2754;
  float _2755;
  float _2756;
  float _2757;
  float _2758;
  int _2805;
  int _2806;
  float _2807;
  float _2808;
  float _2809;
  float _2810;
  float _2840;
  float _2841;
  float _2842;
  float _2843;
  float _2961;
  float _2962;
  float _2963;
  float _2985;
  float _2986;
  float _2987;
  float _2988;
  float _3070;
  float _3108;
  float _3109;
  float _3110;
  float _3125;
  float _3126;
  float _3127;
  float _3128;
  float _3180;
  float _3272;
  float _3273;
  float _3274;
  float _3343;
  float _3344;
  float _3345;
  float _3346;
  float _3347;
  half _3348;
  half _3349;
  half _3350;
  float _3351;
  float _3352;
  float _3353;
  float _3354;
  float _3499;
  float _3500;
  float _3501;
  float _3604;
  float _3605;
  float _3606;
  float _3607;
  float _3745;
  float _3746;
  float _3747;
  float _3748;
  float _3749;
  int _3780;
  int _3781;
  float _3782;
  float _3783;
  float _3784;
  float _3785;
  int _3816;
  int _3817;
  float _3818;
  float _3819;
  float _3820;
  float _3821;
  float _3851;
  float _3852;
  float _3853;
  float _3854;
  float _3866;
  float _3867;
  float _3868;
  float _3887;
  float _3946;
  float _3993;
  float _4041;
  float _4100;
  float _4101;
  float _4102;
  float _4191;
  float _4192;
  float _4193;
  float _4218;
  float _4219;
  float _4220;
  float _4221;
  int _4232;
  float _4331;
  float _4357;
  float _4358;
  float _4359;
  float _4416;
  float _4417;
  float _4418;
  float _193;
  float _194;
  float _195;
  float _196;
  float _198;
  float _199;
  float _200;
  float _201;
  bool _202;
  float _203;
  float4 _209;
  float4 _215;
  float _221;
  float _223;
  float _225;
  float _227;
  float _228;
  float _229;
  float _230;
  float _231;
  float _232;
  float _233;
  int _235;
  float _236;
  float _237;
  float _238;
  float _239;
  float _240;
  float _241;
  float4 _245;
  float4 _251;
  int _261;
  int _267;
  int _273;
  int _298;
  float _302;
  float _303;
  float _304;
  float _311;
  float _314;
  float _317;
  float _320;
  float4 _324;
  float4 _330;
  int _340;
  int _346;
  int _352;
  int _377;
  float4 _385;
  float4 _391;
  int _401;
  int _407;
  int _413;
  int _438;
  int _441;
  int _442;
  int _443;
  bool _453;
  float _464;
  float4 _468;
  float4 _474;
  int _485;
  int _492;
  int _499;
  int _524;
  int _527;
  int _540;
  uint _543;
  int _544;
  bool _545;
  int _552;
  int _555;
  int _563;
  bool _564;
  int _575;
  bool _577;
  int _583;
  uint _594;
  int _600;
  uint _604;
  float _606;
  float4 _608;
  int _622;
  int _625;
  int _627;
  int16_t _629;
  half _633;
  half _634;
  half _635;
  float _637;
  float _640;
  float _643;
  float _652;
  float _661;
  float _670;
  float _674;
  float _679;
  float _684;
  float _686;
  bool _688;
  float _689;
  float _690;
  float _691;
  float _695;
  float _712;
  float _728;
  float _744;
  bool _745;
  float _746;
  float _747;
  float _748;
  float _751;
  float _754;
  float _757;
  float _758;
  float _760;
  float _762;
  float _764;
  float _766;
  float _774;
  float _827;
  bool _831;
  float _840;
  float _849;
  float _858;
  float _859;
  int _860;
  float _869;
  float _891;
  float _892;
  float _893;
  float _894;
  float _895;
  float _898;
  float _899;
  float _901;
  float _903;
  float _905;
  float _919;
  bool _951;
  float _966;
  float _968;
  float _970;
  float _982;
  float _991;
  float _1002;
  float _1013;
  int _1018;
  int _1021;
  float _1029;
  float4 _1060;
  uint _1067;
  float _1073;
  float _1079;
  float _1085;
  float _1087;
  float _1088;
  float _1089;
  float _1090;
  float _1096;
  float _1098;
  float _1106;
  float _1114;
  int _1134;
  int _1137;
  float _1145;
  float4 _1166;
  uint _1173;
  float _1179;
  float _1185;
  float _1191;
  float _1193;
  float _1202;
  float _1204;
  float _1212;
  float _1220;
  float4 _1240;
  float4 _1246;
  int _1256;
  int _1262;
  int _1268;
  int _1293;
  float _1316;
  float _1319;
  float _1320;
  float _1333;
  float _1334;
  float _1335;
  float _1337;
  float _1339;
  float _1341;
  float _1343;
  float _1345;
  float _1347;
  float _1352;
  float _1378;
  float4 _1382;
  float4 _1388;
  int _1398;
  int _1404;
  int _1410;
  int _1435;
  float _1441;
  float _1443;
  float _1445;
  bool _1446;
  bool _1447;
  bool _1448;
  float _1450;
  float _1452;
  float _1454;
  bool _1455;
  bool _1456;
  bool _1457;
  float4 _1470;
  float4 _1476;
  float _1484;
  float _1488;
  float _1492;
  int _1511;
  float _1518;
  float _1521;
  float _1522;
  float _1524;
  float _1529;
  float _1534;
  float _1538;
  float _1539;
  float _1540;
  float _1541;
  int _1543;
  int _1545;
  int _1547;
  uint4 _1554;
  float _1562;
  float _1564;
  float _1566;
  float _1568;
  float _1631;
  float _1633;
  float _1640;
  float _1652;
  float _1654;
  float _1655;
  float _1677;
  float _1683;
  float _1702;
  float _1703;
  float _1705;
  float _1707;
  float _1709;
  int _1710;
  int _1730;
  float _1735;
  float _1737;
  float _1739;
  float _1741;
  float4 _1747;
  float4 _1753;
  int _1763;
  int _1769;
  int _1775;
  int _1800;
  int _1803;
  int _1804;
  int _1805;
  bool _1815;
  float _1825;
  float4 _1829;
  float4 _1835;
  int _1846;
  int _1853;
  int _1860;
  int _1885;
  int _1888;
  int _1901;
  uint _1904;
  int _1905;
  bool _1906;
  int _1913;
  int _1916;
  int _1924;
  bool _1925;
  int _1936;
  bool _1938;
  int _1944;
  uint _1955;
  int _1961;
  uint _1965;
  float _1967;
  float4 _1969;
  float _1973;
  float _1974;
  float _1975;
  int _1983;
  int _1986;
  int _1988;
  int16_t _1990;
  half _1994;
  half _1995;
  half _1996;
  float _1998;
  float _2001;
  float _2004;
  float _2013;
  float _2022;
  float _2031;
  float _2035;
  float _2040;
  float _2045;
  float _2047;
  bool _2049;
  float _2050;
  float _2051;
  float _2052;
  float _2056;
  float _2073;
  float _2089;
  float _2105;
  float _2109;
  float _2113;
  float _2117;
  float _2118;
  float _2120;
  float _2122;
  float _2124;
  float _2126;
  float _2134;
  float _2187;
  float _2195;
  float _2203;
  float _2211;
  float _2212;
  int _2213;
  float _2222;
  float _2249;
  float _2253;
  float _2257;
  float _2261;
  float _2263;
  float _2264;
  float _2277;
  bool _2278;
  float _2294;
  float _2295;
  float _2298;
  float _2319;
  float _2323;
  float _2324;
  float _2326;
  float _2328;
  float _2330;
  float _2344;
  float _2355;
  float _2366;
  half4 _2393;
  float _2406;
  float _2408;
  float _2410;
  float _2413;
  float _2415;
  float _2417;
  float _2429;
  float _2437;
  float _2440;
  float _2441;
  bool _2449;
  float _2452;
  float _2454;
  float _2456;
  float _2468;
  float _2476;
  bool _2484;
  float _2486;
  float _2488;
  float _2506;
  int _2508;
  float _2513;
  float _2515;
  int _2517;
  int _2519;
  uint _2520;
  uint _2521;
  half4 _2531;
  int _2554;
  float4 _2556;
  float4 _2562;
  float4 _2568;
  float4 _2574;
  float _2579;
  float _2580;
  float _2581;
  float _2582;
  float _2585;
  float _2589;
  float _2593;
  float _2597;
  float _2600;
  float _2604;
  float _2607;
  float _2610;
  float _2615;
  float _2620;
  float _2625;
  float _2631;
  float _2637;
  float _2643;
  float _2646;
  float _2649;
  float _2652;
  float _2654;
  float _2655;
  float _2656;
  float _2657;
  float _2658;
  float _2662;
  float _2666;
  float _2670;
  float _2677;
  float _2714;
  float _2722;
  float _2730;
  float _2733;
  float _2734;
  bool _2745;
  float _2770;
  float _2778;
  float _2786;
  bool _2797;
  int _2817;
  int _2821;
  uint _2822;
  uint _2823;
  uint _2844;
  float4 _2846;
  float4 _2852;
  float4 _2858;
  float4 _2864;
  float _2869;
  float _2870;
  float _2871;
  float _2872;
  float _2875;
  float _2879;
  float _2883;
  float _2887;
  float _2890;
  float _2894;
  float _2897;
  float _2900;
  float _2905;
  float _2910;
  float _2915;
  float _2921;
  float _2927;
  float _2933;
  float _2936;
  float _2939;
  float _2942;
  float _2944;
  float _2969;
  float _2991;
  float _2993;
  float _2995;
  float _2996;
  float _2997;
  float _2998;
  float _3010;
  float _3018;
  float _3026;
  float _3039;
  float4 _3042;
  float _3047;
  float _3049;
  float _3051;
  float _3056;
  float _3071;
  half _3072;
  half _3073;
  half _3074;
  half _3079;
  half _3084;
  half _3089;
  bool _3092;
  bool _3099;
  float _3104;
  float _3105;
  float _3106;
  float _3131;
  float _3137;
  float _3141;
  float _3144;
  float _3148;
  float _3149;
  float _3150;
  float _3151;
  float _3157;
  float2 _3191;
  float _3199;
  float _3200;
  float _3210;
  float _3216;
  float _3221;
  float _3225;
  float _3229;
  float _3233;
  float _3237;
  float _3245;
  float _3257;
  float _3260;
  float _3266;
  float _3281;
  float _3293;
  float _3296;
  float _3303;
  float _3309;
  float _3315;
  float _3321;
  float _3323;
  bool _3328;
  float _3329;
  float _3330;
  float _3331;
  float _3332;
  half _3335;
  half _3336;
  half _3337;
  float _3359;
  float _3364;
  float _3368;
  float _3369;
  float _3370;
  float _3371;
  float _3373;
  float _3374;
  float _3375;
  float _3376;
  float _3377;
  float _3378;
  float _3379;
  float _3382;
  float _3384;
  float _3389;
  float _3390;
  float _3392;
  float _3395;
  float _3396;
  float _3398;
  float _3399;
  float _3400;
  float _3401;
  float _3405;
  float _3417;
  float _3436;
  float _3451;
  float _3470;
  float _3471;
  float _3476;
  float _3477;
  float _3479;
  float _3481;
  float _3483;
  float _3503;
  float _3504;
  float _3505;
  float _3506;
  float _3508;
  float _3510;
  float _3512;
  float _3514;
  float _3516;
  float _3518;
  float _3522;
  float _3526;
  bool _3534;
  float _3536;
  float _3538;
  float _3540;
  float _3544;
  float _3548;
  bool _3556;
  float _3558;
  float _3560;
  float _3562;
  float _3572;
  int _3574;
  float _3579;
  float _3581;
  int _3583;
  int _3585;
  uint _3586;
  uint _3587;
  int _3608;
  float4 _3610;
  float4 _3616;
  float4 _3622;
  float4 _3628;
  float _3633;
  float _3634;
  float _3635;
  float _3636;
  float _3639;
  float _3643;
  float _3647;
  float _3651;
  float _3654;
  float _3658;
  float _3661;
  float _3664;
  float _3669;
  float _3674;
  float _3679;
  float _3685;
  float _3691;
  float _3697;
  float _3700;
  float _3703;
  float _3706;
  float _3708;
  float _3709;
  float _3716;
  float _3720;
  float _3724;
  float _3731;
  float _3753;
  float _3757;
  float _3761;
  bool _3772;
  float _3789;
  float _3793;
  float _3797;
  bool _3808;
  int _3828;
  int _3832;
  uint _3833;
  uint _3834;
  float _3874;
  float _3888;
  float _3889;
  float _3890;
  float _3894;
  float _3898;
  float _3902;
  float _3915;
  float4 _3918;
  float _3923;
  float _3925;
  float _3927;
  float _3932;
  uint4 _3957;
  float _3963;
  float _3966;
  float _3970;
  float _3971;
  float _3972;
  float _3973;
  float _3994;
  float _3996;
  float _3997;
  float _4003;
  float _4007;
  float _4011;
  float _4012;
  float _4018;
  float2 _4050;
  float _4053;
  float _4057;
  float _4061;
  float _4065;
  float _4069;
  float _4075;
  float _4085;
  float _4088;
  float _4094;
  float _4105;
  float _4117;
  float _4124;
  float _4130;
  float _4136;
  float _4142;
  float _4150;
  float _4197;
  float _4199;
  float _4201;
  float _4202;
  float _4203;
  float _4204;
  float4 _4234;
  float4 _4240;
  int _4250;
  int _4256;
  int _4262;
  int _4287;
  float _4295;
  float _4303;
  float _4334;
  bool _4335;
  float4 _4343;
  float _4362;
  float _4367;
  float4 _4370;
  float _4376;
  float _4377;
  float _4378;
  float _4379;
  float _4380;
  float _4385;
  float _4386;
  float _4390;
  float _4396;
  float _4401;
  float _4406;
  float _4411;
  int __loop_jump_target = -1;
  int _52[4];
  _54 = (int)(SV_GroupID.x) & 3;
  _55 = (uint)((uint)(_54)) >> 1;
  _57 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 5))]);
  _52[0] = _57.x;
  _52[1] = _57.y;
  _52[2] = _57.z;
  _52[3] = _57.w;
  _69 = _52[(((uint)(SV_GroupID.x) >> 3) & 3)];
  _73 = select((((int)(SV_GroupID.x) & 4) == 0), _69, ((uint)((uint)(_69)) >> 16));
  _80 = (uint)((uint)((uint)((int)((int)(_54) - (int)((int)(_55) << 1)) << 4)) + (uint)(SV_GroupThreadID.x)) + (uint)((uint)(((int)((uint)((uint)(_73)) << 5)) & 8160));
  _85 = (uint)((uint)((uint)((int)(_55) << 4)) + (uint)(SV_GroupThreadID.y)) + (uint)((uint)(((uint)((uint)(_73)) >> 3) & 8160));
  _86 = (float)((uint)((uint)(_80)));
  _87 = (float)((uint)((uint)(_85)));
  _93 = ((_bufferSizeAndInvSize.z * 2.0f) * (_86 + 0.5f)) + -1.0f;
  _98 = 1.0f - ((_bufferSizeAndInvSize.w * 2.0f) * (_87 + 0.5f));
  _100 = __3__36__0__0__g_depthOpaque.Load(int3(_80, _85, 0));  // [sem: _3__36__0__0__g_depthOpaque_load]
  _103 = ((uint)((uint)(_100.x)) >> 24) & 127;  // [sem: _3__36__0__0__g_depthOpaque_load_derived]
  _105 = __3__36__0__0__g_sceneNormal.Load(int3(_80, _85, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
  _111 = min(1.0f, ((((float)((uint)((uint)(_105.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _117 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_105.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _123 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_105.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _125 = rsqrt(dot(float3(_111, _117, _123), float3(_111, _117, _123)));  // [sem: invLength]
  _126 = _125 * _111;
  _127 = _125 * _117;
  _128 = _125 * _123;
  _132 = max(1e-07f, (((float)((uint)((uint)(_100.x & 16777215)))) * 5.960465e-08f));  // [sem: _3__36__0__0__g_depthOpaque_load_derived]
  _144 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _132, mad((_invViewProjRelative[3].y), _98, ((_invViewProjRelative[3].x) * _93)));
  _153 = (mad((_invViewProjRelative[0].z), _132, mad((_invViewProjRelative[0].y), _98, ((_invViewProjRelative[0].x) * _93))) + (_invViewProjRelative[0].w)) / _144;
  _162 = (mad((_invViewProjRelative[1].z), _132, mad((_invViewProjRelative[1].y), _98, ((_invViewProjRelative[1].x) * _93))) + (_invViewProjRelative[1].w)) / _144;
  _171 = (mad((_invViewProjRelative[2].z), _132, mad((_invViewProjRelative[2].y), _98, ((_invViewProjRelative[2].x) * _93))) + (_invViewProjRelative[2].w)) / _144;
  _174 = _nearFarProj.x / _132;
  _180 = (float)((uint)((uint)(((int)((uint)((uint)((uint)((uint)(_frameNumber.x)) >> 2)) * (uint)(71))) & 31)));
  if (!((uint)_103 > (uint)11) || !(((uint)_103 < (uint)20) || (_103 == 107))) {
    _190 = ((int)(uint)((int)(_103 == 20)));
  } else {
    _190 = 1;
  }
  _193 = __3__38__0__1__g_raytracingHitResultUAV[int2(_80, _85)].x;
  _194 = __3__38__0__1__g_raytracingHitResultUAV[int2(_80, _85)].y;
  _195 = __3__38__0__1__g_raytracingHitResultUAV[int2(_80, _85)].z;
  _196 = __3__38__0__1__g_raytracingHitResultUAV[int2(_80, _85)].w;
  _198 = rsqrt(dot(float3(_193, _194, _195), float3(_193, _194, _195)));  // [sem: invLength]
  _199 = _198 * _193;
  _200 = _198 * _194;
  _201 = _198 * _195;
  _202 = (_196 < 0.0f);
  _203 = abs(_196);
  if ((_203 > 0.0f) && (_203 < 10000.0f)) {
    _209 = __3__36__0__0__g_raytracingBaseColor.Load(int3(_80, _85, 0));  // [sem: _3__36__0__0__g_raytracingBaseColor_load]
    _215 = __3__36__0__0__g_raytracingNormal.Load(int3(_80, _85, 0));  // [sem: _3__36__0__0__g_raytracingNormal_load]
    _221 = (_215.x * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_raytracingNormal_load_derived]
    _223 = (_215.y * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_raytracingNormal_load_derived]
    _225 = (_215.z * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_raytracingNormal_load_derived]
    _227 = rsqrt(dot(float3(_221, _223, _225), float3(_221, _223, _225)));  // [sem: invLength]
    _228 = _221 * _227;
    _229 = _223 * _227;
    _230 = _225 * _227;
    _231 = select(_202, 0.0f, _228);
    _232 = select(_202, 0.0f, _229);
    _233 = select(_202, 0.0f, _230);
    _235 = (int)(uint)((int)(_209.w > 0.0f));  // [sem: _3__36__0__0__g_raytracingBaseColor_load_derived]
    _236 = _199 * _203;
    _237 = _200 * _203;
    _238 = _201 * _203;
    _239 = _236 + _153;
    _240 = _237 + _162;
    _241 = _238 + _171;
    _243 = 0;
    while(true) {
      _245 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_243) + (int)(20)))];
      _251 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_243) + (int)(36)))];
      _261 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _239) * _245.w) + _251.x));
      _267 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _240) * _245.w) + _251.y));
      _273 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _241) * _245.w) + _251.z));
      if (((int)_261 < (int)((int)(_245.x + -63.0f))) || !((int)_261 < (int)((int)(_245.x + 63.0f))) || ((int)_267 < (int)((int)(_245.y + -31.0f))) || !((int)_267 < (int)((int)(_245.y + 31.0f))) || ((int)_273 < (int)((int)(_245.z + -63.0f))) || !((int)_273 < (int)((int)(_245.z + 63.0f)))) {
        _298 = (int)(_243) + (int)(1);
        if ((uint)_298 < (uint)8) {
          _243 = _298;
          continue;
        } else {
          _301 = -10000;
        }
      } else {
        _301 = _243;
      }
      _302 = -0.0f - _199;
      _303 = -0.0f - _200;
      _304 = -0.0f - _201;
      _311 = min(_203, (((float)((int)((int)((uint)(1) << (_301 & 31))))) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x));
      _314 = (_311 * select(_202, _302, _228)) + _239;
      _317 = (_311 * select(_202, _303, _229)) + _240;
      _320 = (_311 * select(_202, _304, _230)) + _241;
      _322 = 0;
      while(true) {
        _324 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_322) + (int)(20)))];
        _330 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_322) + (int)(36)))];
        _340 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _314) * _324.w) + _330.x));
        _346 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _317) * _324.w) + _330.y));
        _352 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _320) * _324.w) + _330.z));
        if (((int)_340 < (int)((int)(_324.x + -63.0f))) || ((!((int)_340 < (int)((int)(_324.x + -63.0f)))) && (!((int)_340 < (int)((int)(_324.x + 63.0f))))) || (((!((int)_340 < (int)((int)(_324.x + -63.0f)))) && ((int)_340 < (int)((int)(_324.x + 63.0f)))) && ((int)_346 < (int)((int)(_324.y + -31.0f)))) || ((((!((int)_340 < (int)((int)(_324.x + -63.0f)))) && ((int)_340 < (int)((int)(_324.x + 63.0f)))) && (!((int)_346 < (int)((int)(_324.y + -31.0f))))) && (!((int)_346 < (int)((int)(_324.y + 31.0f))))) || (((((!((int)_340 < (int)((int)(_324.x + -63.0f)))) && ((int)_340 < (int)((int)(_324.x + 63.0f)))) && (!((int)_346 < (int)((int)(_324.y + -31.0f))))) && ((int)_346 < (int)((int)(_324.y + 31.0f)))) && ((int)_352 < (int)((int)(_324.z + -63.0f)))) || ((((((!((int)_340 < (int)((int)(_324.x + -63.0f)))) && ((int)_340 < (int)((int)(_324.x + 63.0f)))) && (!((int)_346 < (int)((int)(_324.y + -31.0f))))) && ((int)_346 < (int)((int)(_324.y + 31.0f)))) && (!((int)_352 < (int)((int)(_324.z + -63.0f))))) && (!((int)_352 < (int)((int)(_324.z + 63.0f)))))) {
          _377 = (int)(_322) + (int)(1);
          if ((uint)_377 < (uint)8) {
            _322 = _377;
            continue;
          } else {
            _937 = _203;
            _938 = 1.0f;
            _939 = 0.0f;
            _940 = 0.0f;
            _941 = 0.0f;
            _942 = _235;
            _943 = _209.w;
            _944 = _209.z;
            _945 = _209.y;
            _946 = _209.x;
            _947 = _215.w;
            _948 = _233;
            _949 = _232;
            _950 = _231;
          }
        } else {
          if ((int)_322 < (int)4) {
            _383 = 0;
            while(true) {
              _385 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_383) + (int)(20)))];
              _391 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_383) + (int)(36)))];
              _401 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _314) * _385.w) + _391.x));
              _407 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _317) * _385.w) + _391.y));
              _413 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _320) * _385.w) + _391.z));
              if (((int)_401 < (int)((int)(_385.x + -63.0f))) || ((!((int)_401 < (int)((int)(_385.x + -63.0f)))) && (!((int)_401 < (int)((int)(_385.x + 63.0f))))) || (((!((int)_401 < (int)((int)(_385.x + -63.0f)))) && ((int)_401 < (int)((int)(_385.x + 63.0f)))) && ((int)_407 < (int)((int)(_385.y + -31.0f)))) || ((((!((int)_401 < (int)((int)(_385.x + -63.0f)))) && ((int)_401 < (int)((int)(_385.x + 63.0f)))) && (!((int)_407 < (int)((int)(_385.y + -31.0f))))) && (!((int)_407 < (int)((int)(_385.y + 31.0f))))) || (((((!((int)_401 < (int)((int)(_385.x + -63.0f)))) && ((int)_401 < (int)((int)(_385.x + 63.0f)))) && (!((int)_407 < (int)((int)(_385.y + -31.0f))))) && ((int)_407 < (int)((int)(_385.y + 31.0f)))) && ((int)_413 < (int)((int)(_385.z + -63.0f)))) || ((((((!((int)_401 < (int)((int)(_385.x + -63.0f)))) && ((int)_401 < (int)((int)(_385.x + 63.0f)))) && (!((int)_407 < (int)((int)(_385.y + -31.0f))))) && ((int)_407 < (int)((int)(_385.y + 31.0f)))) && (!((int)_413 < (int)((int)(_385.z + -63.0f))))) && (!((int)_413 < (int)((int)(_385.z + 63.0f)))))) {
                _438 = (int)(_383) + (int)(1);
                if ((uint)_438 < (uint)8) {
                  _383 = _438;
                  continue;
                } else {
                  _885 = 0.0f;
                  _886 = 0.0f;
                  _887 = 0.0f;
                }
              } else {
                _441 = _401 & 127;
                _442 = _407 & 63;
                _443 = _413 & 127;
                if (!((uint)_383 > (uint)5)) {
                  _453 = (((((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_441, _442, ((int)((uint)((uint)(_443)) + (uint)((uint)((int)((int)((uint)((uint)(_383)) * (uint)(130))) | (int)(1))))), 0)))).x) & 4194303) == 0);
                  [branch]
                  if (_453) {
                    _456 = -10000;
                    _457 = -10000;
                    _458 = -10000;
                    _459 = -10000;
                  } else {
                    _456 = _383;
                    _457 = _443;
                    _458 = _442;
                    _459 = _441;
                  }
                  _464 = (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 0.5f) * ((float)((int)((int)((uint)(1) << (_383 & 31)))));
                  _466 = 0;
                  while(true) {
                    _468 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_466) + (int)(20)))];
                    _474 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_466) + (int)(36)))];
                    _485 = (int)(floor((((_314 - _464) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x) * _468.w) + _474.x));
                    _492 = (int)(floor((((_317 - _464) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y) * _468.w) + _474.y));
                    _499 = (int)(floor((((_320 - _464) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z) * _468.w) + _474.z));
                    if (((int)_485 < (int)((int)(_468.x + -63.0f))) || ((!((int)_485 < (int)((int)(_468.x + -63.0f)))) && (!((int)_485 < (int)((int)(_468.x + 63.0f))))) || (((!((int)_485 < (int)((int)(_468.x + -63.0f)))) && ((int)_485 < (int)((int)(_468.x + 63.0f)))) && ((int)_492 < (int)((int)(_468.y + -31.0f)))) || ((((!((int)_485 < (int)((int)(_468.x + -63.0f)))) && ((int)_485 < (int)((int)(_468.x + 63.0f)))) && (!((int)_492 < (int)((int)(_468.y + -31.0f))))) && (!((int)_492 < (int)((int)(_468.y + 31.0f))))) || (((((!((int)_485 < (int)((int)(_468.x + -63.0f)))) && ((int)_485 < (int)((int)(_468.x + 63.0f)))) && (!((int)_492 < (int)((int)(_468.y + -31.0f))))) && ((int)_492 < (int)((int)(_468.y + 31.0f)))) && ((int)_499 < (int)((int)(_468.z + -63.0f)))) || ((((((!((int)_485 < (int)((int)(_468.x + -63.0f)))) && ((int)_485 < (int)((int)(_468.x + 63.0f)))) && (!((int)_492 < (int)((int)(_468.y + -31.0f))))) && ((int)_492 < (int)((int)(_468.y + 31.0f)))) && (!((int)_499 < (int)((int)(_468.z + -63.0f))))) && (!((int)_499 < (int)((int)(_468.z + 63.0f)))))) {
                      _524 = (int)(_466) + (int)(1);
                      if ((uint)_524 < (uint)8) {
                        _466 = _524;
                        continue;
                      } else {
                        _885 = 0.0f;
                        _886 = 0.0f;
                        _887 = 0.0f;
                      }
                    } else {
                      _527 = _485 & 127;
                      if (!((uint)_466 > (uint)5)) {
                        if (_453) {
                          _534 = _459;
                          _535 = _458;
                          _536 = _457;
                          _537 = _456;
                          _538 = 0;
                          _539 = 0;
                          while(true) {
                            _540 = (int)(_539) + (int)(_499 & 127);
                            _543 = (uint)((uint)(_540)) + (uint)((uint)((int)((int)((uint)((uint)(_466)) * (uint)(130))) | (int)(1)));
                            _544 = (int)(_538) + (int)(_492 & 63);
                            _545 = ((uint)_544 > (uint)63);
                            if ((_545 || ((uint)_540 > (uint)127)) || (((((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_527, _544, _543, 0)))).x) & 4194303) == 0)) {
                              _555 = (int)(_527) + (int)(1);
                              if (!(_545 || ((uint)((int)(_540) | (int)(_555)) > (uint)127))) {
                                _563 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_555, _544, _543, 0)))).x) & 4194303;
                                _564 = (_563 != 0);
                                _570 = _563;
                                _571 = select(_564, _466, _537);
                                _572 = select(_564, _540, _536);
                                _573 = select(_564, _544, _535);
                                _574 = select(_564, _555, _534);
                              } else {
                                _570 = 0;
                                _571 = _537;
                                _572 = _536;
                                _573 = _535;
                                _574 = _534;
                              }
                            } else {
                              _570 = _552;
                              _571 = _466;
                              _572 = _540;
                              _573 = _544;
                              _574 = _527;
                            }
                            _575 = (int)(_538) + (int)(1);
                            _577 = (_570 == 0);
                            if (((int)_575 < (int)2) && _577) {
                              _580 = _575;
                              _581 = _539;
                              while(true) {
                                _534 = _574;
                                _535 = _573;
                                _536 = _572;
                                _537 = _571;
                                _538 = _580;
                                _539 = _581;
                                __loop_jump_target = 533;
                                break;
                                break;
                              }
                              if (__loop_jump_target == 533) {
                                __loop_jump_target = -1;
                                continue;
                              }
                              if (__loop_jump_target != -1) {
                                break;
                              }
                            }
                            _583 = (int)(_539) + (int)(1);
                            if (((int)_583 < (int)2) && _577) {
                              _580 = 0;
                              _581 = _583;
                              while(true) {
                                _534 = _574;
                                _535 = _573;
                                _536 = _572;
                                _537 = _571;
                                _538 = _580;
                                _539 = _581;
                                __loop_jump_target = 533;
                                break;
                                break;
                              }
                              if (__loop_jump_target == 533) {
                                __loop_jump_target = -1;
                                continue;
                              }
                              if (__loop_jump_target != -1) {
                                break;
                              }
                            }
                            _588 = _574;
                            _589 = _573;
                            _590 = _572;
                            _591 = _571;
                            break;
                          }
                        } else {
                          _588 = _459;
                          _589 = _458;
                          _590 = _457;
                          _591 = _456;
                        }
                        if ((uint)_591 < (uint)6) {
                          _594 = (uint)((uint)(_591)) * (uint)(130);
                          _600 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_588, _589, ((int)((uint)((uint)((int)(_594) | (int)(1))) + (uint)((uint)(_590)))), 0)))).x) & 4194303;
                          [branch]
                          if (!(_600 == 0)) {
                            _604 = (uint)(1) << (_591 & 31);
                            _606 = ((float)((int)(_604))) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                            _608 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((uint)((uint)((uint)(_591)) + (uint)(20)))];
                            _613 = 0;
                            _614 = 0.0f;
                            _615 = _233;
                            _616 = _232;
                            _617 = _231;
                            _618 = 0.0f;
                            _619 = 0.0f;
                            _620 = 0.0f;
                            while(true) {
                              _622 = (int)((int)(_600) + (int)(-1)) + (int)(_613);
                              _625 = __3__37__0__0__g_surfelDataBuffer[_622]._baseColor;
                              _627 = __3__37__0__0__g_surfelDataBuffer[_622]._normal;
                              _629 = __3__37__0__0__g_surfelDataBuffer[_622]._radius;
                              if (!(_625 == 0)) {
                                _633 = __3__37__0__0__g_surfelDataBuffer[_622]._radiance.z;
                                _634 = __3__37__0__0__g_surfelDataBuffer[_622]._radiance.y;
                                _635 = __3__37__0__0__g_surfelDataBuffer[_622]._radiance.x;
                                _637 = (float)((uint)((uint)(_625 & 255)));
                                _640 = (float)((uint)((uint)(((uint)((uint)(_625)) >> 8) & 255)));
                                _643 = (float)((uint)((uint)(((uint)((uint)(_625)) >> 16) & 255)));
                                _652 = select(((_637 * 0.003921569f) < 0.04045f), (_637 * 0.000303527f), exp2(log2((_637 * 0.003717127f) + 0.052132703f) * 2.4f));
                                _661 = select(((_640 * 0.003921569f) < 0.04045f), (_640 * 0.000303527f), exp2(log2((_640 * 0.003717127f) + 0.052132703f) * 2.4f));
                                _670 = select(((_643 * 0.003921569f) < 0.04045f), (_643 * 0.000303527f), exp2(log2((_643 * 0.003717127f) + 0.052132703f) * 2.4f));
                                _674 = (((float)((uint)((uint)(_627 & 255)))) * 0.007874016f) + -1.0f;
                                _679 = (((float)((uint)((uint)(((uint)((uint)(_627)) >> 8) & 255)))) * 0.007874016f) + -1.0f;
                                _684 = (((float)((uint)((uint)(((uint)((uint)(_627)) >> 16) & 255)))) * 0.007874016f) + -1.0f;
                                _686 = rsqrt(dot(float3(_674, _679, _684), float3(_674, _679, _684)));  // [sem: invLength]
                                _688 = ((_627 & 16777215) == 0);
                                _689 = float(_635);
                                _690 = float(_634);
                                _691 = float(_633);
                                _695 = (_606 * 0.0019607844f) * ((float)((uint16_t)((int16_t)(_629 & 255))));
                                _712 = ((((_608.x + -63.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_588)) + (uint)(64)) - (uint)((uint)((int)(_608.x))))) & 127)))) * _606) - _viewPos.x) + (((((float)((uint)((uint)((uint)((uint)(_625)) >> 24)))) * 0.003937008f) + -0.5f) * _606);
                                _728 = ((((_608.y + -31.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_589)) + (uint)(32)) - (uint)((uint)((int)(_608.y))))) & 63)))) * _606) - _viewPos.y) + (((((float)((uint)((uint)((uint)((uint)(_627)) >> 24)))) * 0.003937008f) + -0.5f) * _606);
                                _744 = ((((_608.z + -63.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_590)) + (uint)(64)) - (uint)((uint)((int)(_608.z))))) & 127)))) * _606) - _viewPos.z) + (((((float)((uint16_t)((int16_t)((uint16_t)(_629) >> 8)))) * 0.003937008f) + -0.5f) * _606);
                                _745 = (_215.w == 0.0f);  // [sem: _3__36__0__0__g_raytracingNormal_load_derived]
                                _746 = select(_745, _302, _617);
                                _747 = select(_745, _303, _616);
                                _748 = select(_745, _304, _615);
                                _751 = ((-0.0f - _153) - _236) + _712;
                                _754 = ((-0.0f - _162) - _237) + _728;
                                _757 = ((-0.0f - _171) - _238) + _744;
                                _758 = dot(float3(_751, _754, _757), float3(_746, _747, _748));
                                _760 = _751 - (_758 * _746);
                                _762 = _754 - (_758 * _747);
                                _764 = _757 - (_758 * _748);
                                _766 = 1.0f / ((float)((uint)((uint)(_604))));
                                _774 = frac(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _744) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z) * _766);
                                _827 = select(((int)_591 > (int)5), 1.0f, ((((float)((bool)(dot(float3(_760, _762, _764), float3(_760, _762, _764)) < ((_695 * _695) * 64.0f)))) * saturate((saturate(dot(float3(_302, _303, _304), float3(select(_688, _302, (_686 * _674)), select(_688, _303, (_686 * _679)), select(_688, _304, (_686 * _684))))) + -0.03125f) * 1.032258f)) * ((float)((bool)(((__3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _712) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _766), (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _728) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y) * _766), (((((float)((uint)((uint)(_594)))) + 1.0f) + ((select((_774 < 0.0f), 1.0f, 0.0f) + _774) * 128.0f)) * 0.00096153846f)), 0.0f)).x) > ((_606 * 0.25f) * (saturate((dot(float3(_689, _690, _691), float3(0.212671f, 0.71516f, 0.072169f)) * 0.0001f) / _exposure3.w) + 1.0f)))))));
                                _831 = (!(_209.w > 0.0f)) || ((_625 & 16777215) == 16777215);
                                _840 = ((select(_831, (((_661 * 0.33951f) + (_652 * 0.61312f)) + (_670 * 0.04737f)), _209.x) * _689) * _827) + _620;
                                _849 = ((select(_831, (((_661 * 0.91636f) + (_652 * 0.0702f)) + (_670 * 0.01345f)), _209.y) * _690) * _827) + _619;
                                _858 = ((select(_831, (((_661 * 0.10958f) + (_652 * 0.02062f)) + (_670 * 0.8698f)), _209.z) * _691) * _827) + _618;
                                _859 = _827 + _614;
                                _860 = (int)(_613) + (int)(1);
                                if ((uint)_860 < (uint)4) {
                                  _613 = _860;
                                  _614 = _859;
                                  _615 = _748;
                                  _616 = _747;
                                  _617 = _746;
                                  _618 = _858;
                                  _619 = _849;
                                  _620 = _840;
                                  continue;
                                } else {
                                  _863 = _859;
                                  _864 = _858;
                                  _865 = _849;
                                  _866 = _840;
                                }
                              } else {
                                _863 = _614;
                                _864 = _618;
                                _865 = _619;
                                _866 = _620;
                              }
                              if (_863 > 0.0f) {
                                _869 = 1.0f / _863;
                                _885 = (-0.0f - min(0.0f, (-0.0f - (_864 * _869))));
                                _886 = (-0.0f - min(0.0f, (-0.0f - (_865 * _869))));
                                _887 = (-0.0f - min(0.0f, (-0.0f - (_866 * _869))));
                              } else {
                                _885 = _864;
                                _886 = _865;
                                _887 = _866;
                              }
                              break;
                            }
                          } else {
                            _885 = 0.0f;
                            _886 = 0.0f;
                            _887 = 0.0f;
                          }
                        } else {
                          _885 = 0.0f;
                          _886 = 0.0f;
                          _887 = 0.0f;
                        }
                      } else {
                        _885 = 0.0f;
                        _886 = 0.0f;
                        _887 = 0.0f;
                      }
                    }
                    break;
                  }
                } else {
                  _885 = 0.0f;
                  _886 = 0.0f;
                  _887 = 0.0f;
                }
              }
              _891 = max(1e-06f, (_exposure3.w * 0.001f));
              _892 = max(_891, _887);
              _893 = max(_891, _886);
              _894 = max(_891, _885);
              _895 = dot(float3(_892, _893, _894), float3(0.212671f, 0.71516f, 0.072169f));
              _898 = min((max(0.0005f, _exposure3.w) * 512.0f), _895);
              _899 = max(1e-09f, _895);
              _901 = (_898 * _892) / _899;
              _903 = (_898 * _893) / _899;
              _905 = (_898 * _894) / _899;
              if (saturate(_215.w) == 0.0f) {
                _919 = (exp2((saturate(saturate(_209.w)) * 20.0f) + -8.0f) + -0.00390625f) * (1.0f / (((_203 * _203) * 0.1f) + 1.0f));
                _927 = ((_919 * _209.z) + _905);
                _928 = ((_919 * _209.y) + _903);
                _929 = ((_919 * _209.x) + _901);
              } else {
                _927 = _905;
                _928 = _903;
                _929 = _901;
              }
              _937 = _203;
              _938 = 1.0f;
              _939 = (_renderParams2.y * _927);
              _940 = (_renderParams2.y * _928);
              _941 = (_renderParams2.y * _929);
              _942 = _235;
              _943 = _209.w;
              _944 = _209.z;
              _945 = _209.y;
              _946 = _209.x;
              _947 = _215.w;
              _948 = _233;
              _949 = _232;
              _950 = _231;
              break;
            }
          } else {
            _937 = _203;
            _938 = 1.0f;
            _939 = 0.0f;
            _940 = 0.0f;
            _941 = 0.0f;
            _942 = _235;
            _943 = _209.w;
            _944 = _209.z;
            _945 = _209.y;
            _946 = _209.x;
            _947 = _215.w;
            _948 = _233;
            _949 = _232;
            _950 = _231;
          }
        }
        break;
      }
      break;
    }
  } else {
    _937 = 0.0f;
    _938 = 0.0f;
    _939 = 0.0f;
    _940 = 0.0f;
    _941 = 0.0f;
    _942 = 0;
    _943 = 0.0f;
    _944 = 0.0f;
    _945 = 0.0f;
    _946 = 0.0f;
    _947 = 0.0f;
    _948 = 0.0f;
    _949 = 0.0f;
    _950 = 0.0f;
  }
  _951 = (_937 > 0.0f);
  if (!(_951 || (!(_174 > (_lightingParams.z * 0.875f))))) {
    _964 = ((int)(uint)((int)(_174 < (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 11585.126f))));
  } else {
    _964 = 0;
  }
  _966 = (_937 * _199) + _153;
  _968 = (_937 * _200) + _162;
  _970 = (_937 * _201) + _171;
  _982 = (_viewProjRelativePrev[3].w) + mad((_viewProjRelativePrev[3].z), _970, mad((_viewProjRelativePrev[3].y), _968, ((_viewProjRelativePrev[3].x) * _966)));
  _991 = (mad((_viewProjRelativePrev[2].z), _970, mad((_viewProjRelativePrev[2].y), _968, ((_viewProjRelativePrev[2].x) * _966))) + (_viewProjRelativePrev[2].w)) / _982;
  _1002 = (((mad((_viewProjRelativePrev[0].z), _970, mad((_viewProjRelativePrev[0].y), _968, ((_viewProjRelativePrev[0].x) * _966))) + (_viewProjRelativePrev[0].w)) / _982) * 0.5f) + 0.5f;
  _1013 = 0.5f - (((mad((_viewProjRelativePrev[1].z), _970, mad((_viewProjRelativePrev[1].y), _968, ((_viewProjRelativePrev[1].x) * _966))) + (_viewProjRelativePrev[1].w)) / _982) * 0.5f);
  if (_202) {
    if (_951) {
      _1018 = (int)(_1002 * _bufferSizeAndInvSize.x);
      _1021 = (int)(_1013 * _bufferSizeAndInvSize.y);
      _1029 = _nearFarProj.x / max(1e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaquePrev.Load(int3(_1018, _1021, 0)))).x) & 16777215)))) * 5.960465e-08f));
      if ((_1013 <= 1.0f) && (((_1002 <= 1.0f) && ((_991 > 0.0f) && (_1002 >= 0.0f))) && (_1013 >= 0.0f))) {
        if ((_1029 - dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z))) > 0.0f) {
          if (abs(_1029 - _982) < max(0.5f, (_982 * 0.05f))) {
            _1060 = __3__36__0__0__g_sceneColor.SampleLevel(__3__40__0__0__g_samplerClamp, float2(_1002, _1013), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
            if (!(!(_1060.w >= 0.0f))) {
              _1067 = __3__36__0__0__g_sceneNormal.Load(int3(_1018, _1021, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
              _1073 = min(1.0f, ((((float)((uint)((uint)(_1067.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
              // [sem: _3__36__0__0__g_sceneNormal_load_derived]
              _1079 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1067.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));
              // [sem: _3__36__0__0__g_sceneNormal_load_derived]
              _1085 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1067.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));
              _1087 = rsqrt(dot(float3(_1073, _1079, _1085), float3(_1073, _1079, _1085)));  // [sem: invLength]
              _1088 = _1087 * _1073;
              _1089 = _1087 * _1079;
              _1090 = _1087 * _1085;
              _1096 = select((dot(float3((-0.0f - _199), (-0.0f - _200), (-0.0f - _201)), float3(_1088, _1089, _1090)) > 0.2f), 1.0f, 0.0f);
              _1098 = saturate(_174 * 0.01f);  // [sem: expr_sat]
              _1106 = _renderParams2.x * _renderParams2.x;
              _1114 = (((float)((bool)(abs(_nearFarProj.x - _1029) < (_1029 * 0.5f)))) * ((_1096 + _1098) - (_1096 * _1098))) * _1106;
              _1227 = 1;
              _1228 = _1106;
              _1229 = (_1114 * min(10000.0f, _1060.z));
              _1230 = (_1114 * min(10000.0f, _1060.y));
              _1231 = (_1114 * min(10000.0f, _1060.x));
              _1232 = 0.8f;
              _1233 = _1090;
              _1234 = _1089;
              _1235 = _1088;
              _1236 = ((_937 * 0.9999f) * _renderParams2.x);
            } else {
              _1227 = 0;
              _1228 = 0.0f;
              _1229 = 0.0f;
              _1230 = 0.0f;
              _1231 = 0.0f;
              _1232 = _947;
              _1233 = _948;
              _1234 = _949;
              _1235 = _950;
              _1236 = _937;
            }
          } else {
            _1227 = 0;
            _1228 = 0.0f;
            _1229 = 0.0f;
            _1230 = 0.0f;
            _1231 = 0.0f;
            _1232 = _947;
            _1233 = _948;
            _1234 = _949;
            _1235 = _950;
            _1236 = _937;
          }
        } else {
          _1227 = 0;
          _1228 = 0.0f;
          _1229 = 0.0f;
          _1230 = 0.0f;
          _1231 = 0.0f;
          _1232 = _947;
          _1233 = _948;
          _1234 = _949;
          _1235 = _950;
          _1236 = _937;
        }
      } else {
        _1227 = 0;
        _1228 = 0.0f;
        _1229 = 0.0f;
        _1230 = 0.0f;
        _1231 = 0.0f;
        _1232 = _947;
        _1233 = _948;
        _1234 = _949;
        _1235 = _950;
        _1236 = _937;
      }
    } else {
      _1227 = 0;
      _1228 = 0.0f;
      _1229 = 0.0f;
      _1230 = 0.0f;
      _1231 = 0.0f;
      _1232 = _947;
      _1233 = _948;
      _1234 = _949;
      _1235 = _950;
      _1236 = _937;
    }
  } else {
    if ((_1013 <= 1.0f) && (((_1002 <= 1.0f) && ((_951 && (_991 > 0.0f)) && (_1002 >= 0.0f))) && (_1013 >= 0.0f))) {
      _1134 = (int)(_1002 * _bufferSizeAndInvSize.x);
      _1137 = (int)(_1013 * _bufferSizeAndInvSize.y);
      _1145 = _nearFarProj.x / max(1e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaquePrev.Load(int3(_1134, _1137, 0)))).x) & 16777215)))) * 5.960465e-08f));
      if ((_1145 - dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z))) > 0.0f) {
        if (abs(_1145 - _982) < max(0.5f, (_982 * 0.05f))) {
          _1166 = __3__36__0__0__g_sceneColor.SampleLevel(__3__40__0__0__g_samplerClamp, float2(_1002, _1013), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
          if (!(!(_1166.w >= 0.0f))) {
            _1173 = __3__36__0__0__g_sceneNormal.Load(int3(_1134, _1137, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
            _1179 = min(1.0f, ((((float)((uint)((uint)(_1173.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
            // [sem: _3__36__0__0__g_sceneNormal_load_derived]
            _1185 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1173.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));
            // [sem: _3__36__0__0__g_sceneNormal_load_derived]
            _1191 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1173.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));
            _1193 = rsqrt(dot(float3(_1179, _1185, _1191), float3(_1179, _1185, _1191)));  // [sem: invLength]
            _1202 = select((dot(float3((-0.0f - _199), (-0.0f - _200), (-0.0f - _201)), float3((_1193 * _1179), (_1193 * _1185), (_1193 * _1191))) > 0.2f), 1.0f, 0.0f);
            _1204 = saturate(_174 * 0.01f);  // [sem: expr_sat]
            _1212 = _renderParams2.x * _renderParams2.x;
            _1220 = (((float)((bool)(abs(_nearFarProj.x - _1145) < (_1145 * 0.5f)))) * ((_1202 + _1204) - (_1202 * _1204))) * _1212;
            _1227 = 1;
            _1228 = _1212;
            _1229 = (_1220 * min(10000.0f, _1166.z));
            _1230 = (_1220 * min(10000.0f, _1166.y));
            _1231 = (_1220 * min(10000.0f, _1166.x));
            _1232 = _947;
            _1233 = _948;
            _1234 = _949;
            _1235 = _950;
            _1236 = ((_937 * 0.9999f) * _renderParams2.x);
          } else {
            _1227 = 0;
            _1228 = 0.0f;
            _1229 = 0.0f;
            _1230 = 0.0f;
            _1231 = 0.0f;
            _1232 = _947;
            _1233 = _948;
            _1234 = _949;
            _1235 = _950;
            _1236 = _937;
          }
        } else {
          _1227 = 0;
          _1228 = 0.0f;
          _1229 = 0.0f;
          _1230 = 0.0f;
          _1231 = 0.0f;
          _1232 = _947;
          _1233 = _948;
          _1234 = _949;
          _1235 = _950;
          _1236 = _937;
        }
      } else {
        _1227 = 0;
        _1228 = 0.0f;
        _1229 = 0.0f;
        _1230 = 0.0f;
        _1231 = 0.0f;
        _1232 = _947;
        _1233 = _948;
        _1234 = _949;
        _1235 = _950;
        _1236 = _937;
      }
    } else {
      _1227 = 0;
      _1228 = 0.0f;
      _1229 = 0.0f;
      _1230 = 0.0f;
      _1231 = 0.0f;
      _1232 = _947;
      _1233 = _948;
      _1234 = _949;
      _1235 = _950;
      _1236 = _937;
    }
  }
  _1238 = 0;
  while(true) {
    _1240 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1238) + (int)(20)))];
    _1246 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1238) + (int)(36)))];
    _1256 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _153) * _1240.w) + _1246.x));
    _1262 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _162) * _1240.w) + _1246.y));
    _1268 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _171) * _1240.w) + _1246.z));
    if (((int)_1256 < (int)((int)(_1240.x + -63.0f))) || ((!((int)_1256 < (int)((int)(_1240.x + -63.0f)))) && (!((int)_1256 < (int)((int)(_1240.x + 63.0f))))) || (((!((int)_1256 < (int)((int)(_1240.x + -63.0f)))) && ((int)_1256 < (int)((int)(_1240.x + 63.0f)))) && ((int)_1262 < (int)((int)(_1240.y + -31.0f)))) || ((((!((int)_1256 < (int)((int)(_1240.x + -63.0f)))) && ((int)_1256 < (int)((int)(_1240.x + 63.0f)))) && (!((int)_1262 < (int)((int)(_1240.y + -31.0f))))) && (!((int)_1262 < (int)((int)(_1240.y + 31.0f))))) || (((((!((int)_1256 < (int)((int)(_1240.x + -63.0f)))) && ((int)_1256 < (int)((int)(_1240.x + 63.0f)))) && (!((int)_1262 < (int)((int)(_1240.y + -31.0f))))) && ((int)_1262 < (int)((int)(_1240.y + 31.0f)))) && ((int)_1268 < (int)((int)(_1240.z + -63.0f)))) || ((((((!((int)_1256 < (int)((int)(_1240.x + -63.0f)))) && ((int)_1256 < (int)((int)(_1240.x + 63.0f)))) && (!((int)_1262 < (int)((int)(_1240.y + -31.0f))))) && ((int)_1262 < (int)((int)(_1240.y + 31.0f)))) && (!((int)_1268 < (int)((int)(_1240.z + -63.0f))))) && (!((int)_1268 < (int)((int)(_1240.z + 63.0f)))))) {
      _1293 = (int)(_1238) + (int)(1);
      if ((uint)_1293 < (uint)8) {
        _1238 = _1293;
        continue;
      } else {
        _1301 = 1.0f;
      }
    } else {
      _1301 = ((float)((int)((int)((uint)(1) << (_1238 & 31)))));
    }
    _1316 = select((_190 != 0), (((_1301 * 2.0f) * frac(frac(dot(float2(((_180 * 32.665f) + _86), ((_180 * 11.815f) + _87)), float2(0.06711056f, 0.00583715f))) * 52.982918f)) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x), 0.0f);
    if (!(_964 == 0)) {
      _1319 = _lightingParams.z * 1.3434899f;
      _1320 = -0.0f - _1319;
      if ((_162 < _1319) && ((_162 > _1320) && ((_153 < _1319) && ((_153 > _1320) && ((_171 > _1320) && (_171 < _1319)))))) {
        _1333 = 1.0f / _199;
        _1334 = 1.0f / _200;
        _1335 = 1.0f / _201;
        _1337 = _1333 * (_1320 - _153);
        _1339 = _1334 * (_1320 - _162);
        _1341 = _1335 * (_1320 - _171);
        _1343 = _1333 * (_1319 - _153);
        _1345 = _1334 * (_1319 - _162);
        _1347 = _1335 * (_1319 - _171);
        _1352 = min(min(max(_1337, _1343), max(_1339, _1345)), max(_1341, _1347));
        if ((_1352 > 0.0f) && (_1352 >= 0.0f)) {
          if (!(!(max(max(min(_1337, _1343), min(_1339, _1345)), min(_1341, _1347)) <= _1352))) {
            _1371 = ((_1352 * _201) + _171);
            _1372 = ((_1352 * _200) + _162);
            _1373 = ((_1352 * _199) + _153);
            _1374 = _1352;
          } else {
            _1371 = _171;
            _1372 = _162;
            _1373 = _153;
            _1374 = 0.0f;
          }
        } else {
          _1371 = _171;
          _1372 = _162;
          _1373 = _153;
          _1374 = 0.0f;
        }
      } else {
        _1371 = _171;
        _1372 = _162;
        _1373 = _153;
        _1374 = 0.0f;
      }
      _1378 = select(((_1228 >= 1.0f) && (_1236 > 0.0f)), _1236, 256.0f);
      _1380 = 0;
      while(true) {
        _1382 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1380) + (int)(20)))];
        _1388 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1380) + (int)(36)))];
        _1398 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _1373) * _1382.w) + _1388.x));
        _1404 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _1372) * _1382.w) + _1388.y));
        _1410 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _1371) * _1382.w) + _1388.z));
        if (((int)_1398 < (int)((int)(_1382.x + -63.0f))) || ((!((int)_1398 < (int)((int)(_1382.x + -63.0f)))) && (!((int)_1398 < (int)((int)(_1382.x + 63.0f))))) || (((!((int)_1398 < (int)((int)(_1382.x + -63.0f)))) && ((int)_1398 < (int)((int)(_1382.x + 63.0f)))) && ((int)_1404 < (int)((int)(_1382.y + -31.0f)))) || ((((!((int)_1398 < (int)((int)(_1382.x + -63.0f)))) && ((int)_1398 < (int)((int)(_1382.x + 63.0f)))) && (!((int)_1404 < (int)((int)(_1382.y + -31.0f))))) && (!((int)_1404 < (int)((int)(_1382.y + 31.0f))))) || (((((!((int)_1398 < (int)((int)(_1382.x + -63.0f)))) && ((int)_1398 < (int)((int)(_1382.x + 63.0f)))) && (!((int)_1404 < (int)((int)(_1382.y + -31.0f))))) && ((int)_1404 < (int)((int)(_1382.y + 31.0f)))) && ((int)_1410 < (int)((int)(_1382.z + -63.0f)))) || ((((((!((int)_1398 < (int)((int)(_1382.x + -63.0f)))) && ((int)_1398 < (int)((int)(_1382.x + 63.0f)))) && (!((int)_1404 < (int)((int)(_1382.y + -31.0f))))) && ((int)_1404 < (int)((int)(_1382.y + 31.0f)))) && (!((int)_1410 < (int)((int)(_1382.z + -63.0f))))) && (!((int)_1410 < (int)((int)(_1382.z + 63.0f)))))) {
          _1435 = (int)(_1380) + (int)(1);
          if ((uint)_1435 < (uint)8) {
            _1380 = _1435;
            continue;
          } else {
            _2270 = 0.0f;
            _2271 = 0.0f;
            _2272 = 0.0f;
            _2273 = 0.0f;
            _2274 = 0.0f;
          }
        } else {
          if (!((int)_1380 > (int)4)) {
            _1441 = _1373 + (_1316 * _199);
            _1443 = _1372 + (_1316 * _200);
            _1445 = _1371 + (_1316 * _201);
            _1446 = (_199 == 0.0f);
            _1447 = (_200 == 0.0f);
            _1448 = (_201 == 0.0f);
            _1450 = select(_1446, 0.0f, (1.0f / _199));
            _1452 = select(_1447, 0.0f, (1.0f / _200));
            _1454 = select(_1448, 0.0f, (1.0f / _201));
            _1455 = (_199 > 0.0f);
            _1456 = (_200 > 0.0f);
            _1457 = (_201 > 0.0f);
            if (_1378 > 0.0f) {
              _1461 = _1441;
              _1462 = _1443;
              _1463 = _1445;
              _1464 = 0.0f;
              _1465 = 0.0f;
              _1466 = 0;
              while(true) {
                _1468 = 0;
                while(true) {
                  _1470 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1468) + (int)(20)))];
                  _1476 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1468) + (int)(36)))];
                  _1484 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _1461) * _1470.w) + _1476.x;
                  _1488 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _1462) * _1470.w) + _1476.y;
                  _1492 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _1463) * _1470.w) + _1476.z;
                  if (!((_1488 >= (_1470.y + -31.0f)) && ((_1484 >= (_1470.x + -63.0f)) && (_1492 >= (_1470.z + -63.0f)))) || (((_1488 >= (_1470.y + -31.0f)) && ((_1484 >= (_1470.x + -63.0f)) && (_1492 >= (_1470.z + -63.0f)))) && (!((_1488 < (_1470.y + 31.0f)) && ((_1484 < (_1470.x + 63.0f)) && (_1492 < (_1470.z + 63.0f))))))) {
                    _1511 = (int)(_1468) + (int)(1);
                    if ((int)_1511 < (int)8) {
                      _1468 = _1511;
                      continue;
                    } else {
                      _1724 = -10000.0f;
                      _1725 = _1465;
                      _1726 = _1461;
                      _1727 = _1462;
                      _1728 = _1463;
                      _1729 = _1464;
                    }
                  } else {
                    if (_1468 == -10000) {
                      _1718 = _1465;
                      _1719 = _1461;
                      _1720 = _1462;
                      _1721 = _1463;
                      _1722 = _1464;
                      _1724 = -10000.0f;
                      _1725 = _1718;
                      _1726 = _1719;
                      _1727 = _1720;
                      _1728 = _1721;
                      _1729 = _1722;
                    } else {
                      _1518 = (float)((int)((int)((uint)(1) << (_1468 & 31))));
                      _1521 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * _1518;
                      _1522 = 1.0f / _1518;
                      _1524 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.y * 0.0078125f;
                      _1529 = ((_1524 * _1461) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _1522;
                      _1534 = (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y + ((_1462 * 0.015625f) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.y)) * _1522;
                      _1538 = (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z + (_1524 * _1463)) * _1522;
                      _1539 = _1529 * 64.0f;
                      _1540 = _1534 * 32.0f;
                      _1541 = _1538 * 64.0f;
                      _1543 = (int)(floor(_1539));
                      _1545 = (int)(floor(_1540));
                      _1547 = (int)(floor(_1541));
                      // [sem: _3__36__0__0__g_axisAlignedDistance_load]
                      _1554 = __3__36__0__0__g_axisAlignedDistanceTextures.Load(int4((_1543 & 63), (_1545 & 31), ((int)(_1547 & 63) | (int)((int)((uint)((uint)(_1468)) << 6))), 0));
                      _1562 = saturate(((float)((uint)((uint)((uint)((uint)(_1554.w)) >> 2)))) * 0.015873017f);  // [sem: expr_sat]
                      _1564 = _1539 - ((float)((int)(_1543)));
                      _1566 = _1540 - ((float)((int)(_1545)));
                      _1568 = _1541 - ((float)((int)(_1547)));
                      _1631 = max(((_1521 * 0.5f) * min(min(select(_1446, 999999.0f, ((select(_1455, 1.0f, 0.0f) - frac(_1529 * 256.0f)) * _1450)), select(_1447, 999999.0f, ((select(_1456, 1.0f, 0.0f) - frac(_1534 * 128.0f)) * _1452))), select(_1448, 999999.0f, ((select(_1457, 1.0f, 0.0f) - frac(_1538 * 256.0f)) * _1454)))), ((_1521 * 2.0f) * min(min(select(_1446, 999999.0f, (select(_1455, ((0.01f - _1564) + ((float)((uint)((uint)(((uint)((uint)(_1554.x)) >> 4) & 15))))), ((0.99f - _1564) - ((float)((uint)((uint)(_1554.x & 15)))))) * _1450)), select(_1447, 999999.0f, (select(_1456, ((0.01f - _1566) + ((float)((uint)((uint)(((uint)((uint)(_1554.y)) >> 4) & 15))))), ((0.99f - _1566) - ((float)((uint)((uint)(_1554.y & 15)))))) * _1452))), select(_1448, 999999.0f, (select(_1457, ((0.01f - _1568) + ((float)((uint)((uint)(((uint)((uint)(_1554.z)) >> 4) & 15))))), ((0.99f - _1568) - ((float)((uint)((uint)(_1554.z & 15)))))) * _1454)))));
                      _1633 = (float)((bool)(_1562 > 0.0f));
                      if (((uint)_1466 < (uint)16) || ((!((uint)_1466 < (uint)16)) && (_1464 < min(32.0f, (_1521 * 32.0f))))) {
                        _1640 = frac(_1538);
                        // [sem: _3__36__0__1__g_signedDistanceVoxels_sampleLod]
                        _1652 = __3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3(_1529, _1534, (((((float)((uint)((uint)((uint)(_1468)) * (uint)(130)))) + 1.0f) + ((select((_1640 < 0.0f), 1.0f, 0.0f) + _1640) * 128.0f)) * 0.00096153846f)), 0.0f);
                        _1654 = _1464 * 0.01f;
                        _1655 = 1.0f / _1521;
                        _1677 = (_1652.x + ((_174 * _174) * 0.0002f)) / ((saturate(((max(1.0f, (_1655 * 0.5f)) * _1655) * min(_1464, max(0.0f, (_1378 - _1464)))) + -1.0f) * (max(((_1521 * 1.06066f) * saturate((_1464 * 0.5f) + 0.5f)), _1654) - _1654)) + _1654);
                        _1683 = saturate((saturate(1.0f - (_1677 * _1677)) * _1633) + _1465);  // [sem: expr_sat]
                        if (!(((int)_1468 > (int)2) || (_1652.x > _1521))) {
                          _1697 = min(_1631, _1652.x);
                          _1698 = _1683;  // [sem: expr_sat]
                        } else {
                          _1697 = _1631;
                          _1698 = _1683;  // [sem: expr_sat]
                        }
                      } else {
                        if (!((_1554.w & 1) == 0)) {
                          _1697 = _1631;
                          _1698 = saturate((_1633 * 0.5f) + _1465);  // [sem: expr_sat]
                        } else {
                          _1697 = _1631;
                          _1698 = _1465;  // [sem: expr_sat]
                        }
                      }
                      if (!(_1698 >= 0.5f)) {
                        _1702 = max(_1697, (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 0.05f));
                        _1703 = _1702 + _1464;
                        _1705 = (_1702 * _199) + _1461;
                        _1707 = (_1702 * _200) + _1462;
                        _1709 = (_1702 * _201) + _1463;
                        _1710 = (int)(_1466) + (int)(1);
                        if (((uint)_1710 < (uint)192) && (_1703 < _1378)) {
                          _1461 = _1705;
                          _1462 = _1707;
                          _1463 = _1709;
                          _1464 = _1703;
                          _1465 = _1698;
                          _1466 = _1710;
                          __loop_jump_target = 1460;
                          break;
                        } else {
                          _1718 = _1698;
                          _1719 = _1705;
                          _1720 = _1707;
                          _1721 = _1709;
                          _1722 = _1703;
                          _1724 = -10000.0f;
                          _1725 = _1718;
                          _1726 = _1719;
                          _1727 = _1720;
                          _1728 = _1721;
                          _1729 = _1722;
                        }
                      } else {
                        _1724 = ((float)((int)(_1468)));
                        _1725 = _1562;
                        _1726 = _1461;
                        _1727 = _1462;
                        _1728 = _1463;
                        _1729 = _1464;
                      }
                    }
                  }
                  break;
                }
                if (__loop_jump_target == 1460) {
                  __loop_jump_target = -1;
                  continue;
                }
                if (__loop_jump_target != -1) {
                  break;
                }
                break;
              }
            } else {
              _1724 = -10000.0f;
              _1725 = 0.0f;
              _1726 = _1441;
              _1727 = _1443;
              _1728 = _1445;
              _1729 = 0.0f;
            }
            _1730 = (int)(_1724);
            if ((uint)_1730 < (uint)8) {
              _1735 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 0.5f;
              _1737 = _1726 - (_1735 * _199);
              _1739 = _1727 - (_1735 * _200);
              _1741 = _1728 - (_1735 * _201);
              if ((int)_1730 < (int)6) {
                _1745 = 0;
                while(true) {
                  _1747 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1745) + (int)(20)))];
                  _1753 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1745) + (int)(36)))];
                  _1763 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _1737) * _1747.w) + _1753.x));
                  _1769 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _1739) * _1747.w) + _1753.y));
                  _1775 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _1741) * _1747.w) + _1753.z));
                  if (((int)_1763 < (int)((int)(_1747.x + -63.0f))) || ((!((int)_1763 < (int)((int)(_1747.x + -63.0f)))) && (!((int)_1763 < (int)((int)(_1747.x + 63.0f))))) || (((!((int)_1763 < (int)((int)(_1747.x + -63.0f)))) && ((int)_1763 < (int)((int)(_1747.x + 63.0f)))) && ((int)_1769 < (int)((int)(_1747.y + -31.0f)))) || ((((!((int)_1763 < (int)((int)(_1747.x + -63.0f)))) && ((int)_1763 < (int)((int)(_1747.x + 63.0f)))) && (!((int)_1769 < (int)((int)(_1747.y + -31.0f))))) && (!((int)_1769 < (int)((int)(_1747.y + 31.0f))))) || (((((!((int)_1763 < (int)((int)(_1747.x + -63.0f)))) && ((int)_1763 < (int)((int)(_1747.x + 63.0f)))) && (!((int)_1769 < (int)((int)(_1747.y + -31.0f))))) && ((int)_1769 < (int)((int)(_1747.y + 31.0f)))) && ((int)_1775 < (int)((int)(_1747.z + -63.0f)))) || ((((((!((int)_1763 < (int)((int)(_1747.x + -63.0f)))) && ((int)_1763 < (int)((int)(_1747.x + 63.0f)))) && (!((int)_1769 < (int)((int)(_1747.y + -31.0f))))) && ((int)_1769 < (int)((int)(_1747.y + 31.0f)))) && (!((int)_1775 < (int)((int)(_1747.z + -63.0f))))) && (!((int)_1775 < (int)((int)(_1747.z + 63.0f)))))) {
                    _1800 = (int)(_1745) + (int)(1);
                    if ((uint)_1800 < (uint)8) {
                      _1745 = _1800;
                      continue;
                    } else {
                      _2238 = 0.0f;
                      _2239 = 0.0f;
                      _2240 = 0.0f;
                      _2241 = 1.0f;
                    }
                  } else {
                    _1803 = _1763 & 127;
                    _1804 = _1769 & 63;
                    _1805 = _1775 & 127;
                    if (!((uint)_1745 > (uint)5)) {
                      _1815 = (((((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1803, _1804, ((int)((uint)((uint)(_1805)) + (uint)((uint)((int)((int)((uint)((uint)(_1745)) * (uint)(130))) | (int)(1))))), 0)))).x) & 4194303) == 0);
                      [branch]
                      if (_1815) {
                        _1818 = -10000;
                        _1819 = -10000;
                        _1820 = -10000;
                        _1821 = -10000;
                      } else {
                        _1818 = _1745;
                        _1819 = _1805;
                        _1820 = _1804;
                        _1821 = _1803;
                      }
                      _1825 = ((float)((int)((int)((uint)(1) << (_1745 & 31))))) * _1735;
                      _1827 = 0;
                      while(true) {
                        _1829 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1827) + (int)(20)))];
                        _1835 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1827) + (int)(36)))];
                        _1846 = (int)(floor((((_1737 - _1825) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x) * _1829.w) + _1835.x));
                        _1853 = (int)(floor((((_1739 - _1825) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y) * _1829.w) + _1835.y));
                        _1860 = (int)(floor((((_1741 - _1825) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z) * _1829.w) + _1835.z));
                        if (((int)_1846 < (int)((int)(_1829.x + -63.0f))) || ((!((int)_1846 < (int)((int)(_1829.x + -63.0f)))) && (!((int)_1846 < (int)((int)(_1829.x + 63.0f))))) || (((!((int)_1846 < (int)((int)(_1829.x + -63.0f)))) && ((int)_1846 < (int)((int)(_1829.x + 63.0f)))) && ((int)_1853 < (int)((int)(_1829.y + -31.0f)))) || ((((!((int)_1846 < (int)((int)(_1829.x + -63.0f)))) && ((int)_1846 < (int)((int)(_1829.x + 63.0f)))) && (!((int)_1853 < (int)((int)(_1829.y + -31.0f))))) && (!((int)_1853 < (int)((int)(_1829.y + 31.0f))))) || (((((!((int)_1846 < (int)((int)(_1829.x + -63.0f)))) && ((int)_1846 < (int)((int)(_1829.x + 63.0f)))) && (!((int)_1853 < (int)((int)(_1829.y + -31.0f))))) && ((int)_1853 < (int)((int)(_1829.y + 31.0f)))) && ((int)_1860 < (int)((int)(_1829.z + -63.0f)))) || ((((((!((int)_1846 < (int)((int)(_1829.x + -63.0f)))) && ((int)_1846 < (int)((int)(_1829.x + 63.0f)))) && (!((int)_1853 < (int)((int)(_1829.y + -31.0f))))) && ((int)_1853 < (int)((int)(_1829.y + 31.0f)))) && (!((int)_1860 < (int)((int)(_1829.z + -63.0f))))) && (!((int)_1860 < (int)((int)(_1829.z + 63.0f)))))) {
                          _1885 = (int)(_1827) + (int)(1);
                          if ((uint)_1885 < (uint)8) {
                            _1827 = _1885;
                            continue;
                          } else {
                            _2238 = 0.0f;
                            _2239 = 0.0f;
                            _2240 = 0.0f;
                            _2241 = 1.0f;
                          }
                        } else {
                          _1888 = _1846 & 127;
                          if (!((uint)_1827 > (uint)5)) {
                            if (_1815) {
                              _1895 = _1821;
                              _1896 = _1820;
                              _1897 = _1819;
                              _1898 = _1818;
                              _1899 = 0;
                              _1900 = 0;
                              while(true) {
                                _1901 = (int)(_1900) + (int)(_1860 & 127);
                                _1904 = (uint)((uint)(_1901)) + (uint)((uint)((int)((int)((uint)((uint)(_1827)) * (uint)(130))) | (int)(1)));
                                _1905 = (int)(_1899) + (int)(_1853 & 63);
                                _1906 = ((uint)_1905 > (uint)63);
                                if ((_1906 || ((uint)_1901 > (uint)127)) || (((((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1888, _1905, _1904, 0)))).x) & 4194303) == 0)) {
                                  _1916 = (int)(_1888) + (int)(1);
                                  if (!(_1906 || ((uint)((int)(_1901) | (int)(_1916)) > (uint)127))) {
                                    _1924 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1916, _1905, _1904, 0)))).x) & 4194303;
                                    _1925 = (_1924 != 0);
                                    _1931 = _1924;
                                    _1932 = select(_1925, _1827, _1898);
                                    _1933 = select(_1925, _1901, _1897);
                                    _1934 = select(_1925, _1905, _1896);
                                    _1935 = select(_1925, _1916, _1895);
                                  } else {
                                    _1931 = 0;
                                    _1932 = _1898;
                                    _1933 = _1897;
                                    _1934 = _1896;
                                    _1935 = _1895;
                                  }
                                } else {
                                  _1931 = _1913;
                                  _1932 = _1827;
                                  _1933 = _1901;
                                  _1934 = _1905;
                                  _1935 = _1888;
                                }
                                _1936 = (int)(_1899) + (int)(1);
                                _1938 = (_1931 == 0);
                                if (((int)_1936 < (int)2) && _1938) {
                                  _1941 = _1936;
                                  _1942 = _1900;
                                  while(true) {
                                    _1895 = _1935;
                                    _1896 = _1934;
                                    _1897 = _1933;
                                    _1898 = _1932;
                                    _1899 = _1941;
                                    _1900 = _1942;
                                    __loop_jump_target = 1894;
                                    break;
                                    break;
                                  }
                                  if (__loop_jump_target == 1894) {
                                    __loop_jump_target = -1;
                                    continue;
                                  }
                                  if (__loop_jump_target != -1) {
                                    break;
                                  }
                                }
                                _1944 = (int)(_1900) + (int)(1);
                                if (((int)_1944 < (int)2) && _1938) {
                                  _1941 = 0;
                                  _1942 = _1944;
                                  while(true) {
                                    _1895 = _1935;
                                    _1896 = _1934;
                                    _1897 = _1933;
                                    _1898 = _1932;
                                    _1899 = _1941;
                                    _1900 = _1942;
                                    __loop_jump_target = 1894;
                                    break;
                                    break;
                                  }
                                  if (__loop_jump_target == 1894) {
                                    __loop_jump_target = -1;
                                    continue;
                                  }
                                  if (__loop_jump_target != -1) {
                                    break;
                                  }
                                }
                                _1949 = _1935;
                                _1950 = _1934;
                                _1951 = _1933;
                                _1952 = _1932;
                                break;
                              }
                            } else {
                              _1949 = _1821;
                              _1950 = _1820;
                              _1951 = _1819;
                              _1952 = _1818;
                            }
                            if ((uint)_1952 < (uint)6) {
                              _1955 = (uint)((uint)(_1952)) * (uint)(130);
                              _1961 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1949, _1950, ((int)((uint)((uint)((int)(_1955) | (int)(1))) + (uint)((uint)(_1951)))), 0)))).x) & 4194303;
                              [branch]
                              if (!(_1961 == 0)) {
                                _1965 = (uint)(1) << (_1952 & 31);
                                _1967 = ((float)((int)(_1965))) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                                _1969 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((uint)((uint)((uint)(_1952)) + (uint)(20)))];
                                _1973 = -0.0f - _199;
                                _1974 = -0.0f - _200;
                                _1975 = -0.0f - _201;
                                _1977 = 0;
                                _1978 = 0.0f;
                                _1979 = 0.0f;
                                _1980 = 0.0f;
                                _1981 = 0.0f;
                                while(true) {
                                  _1983 = (int)((int)(_1961) + (int)(-1)) + (int)(_1977);
                                  _1986 = __3__37__0__0__g_surfelDataBuffer[_1983]._baseColor;
                                  _1988 = __3__37__0__0__g_surfelDataBuffer[_1983]._normal;
                                  _1990 = __3__37__0__0__g_surfelDataBuffer[_1983]._radius;
                                  if (!(_1986 == 0)) {
                                    _1994 = __3__37__0__0__g_surfelDataBuffer[_1983]._radiance.z;
                                    _1995 = __3__37__0__0__g_surfelDataBuffer[_1983]._radiance.y;
                                    _1996 = __3__37__0__0__g_surfelDataBuffer[_1983]._radiance.x;
                                    _1998 = (float)((uint)((uint)(_1986 & 255)));
                                    _2001 = (float)((uint)((uint)(((uint)((uint)(_1986)) >> 8) & 255)));
                                    _2004 = (float)((uint)((uint)(((uint)((uint)(_1986)) >> 16) & 255)));
                                    _2013 = select(((_1998 * 0.003921569f) < 0.04045f), (_1998 * 0.000303527f), exp2(log2((_1998 * 0.003717127f) + 0.052132703f) * 2.4f));
                                    _2022 = select(((_2001 * 0.003921569f) < 0.04045f), (_2001 * 0.000303527f), exp2(log2((_2001 * 0.003717127f) + 0.052132703f) * 2.4f));
                                    _2031 = select(((_2004 * 0.003921569f) < 0.04045f), (_2004 * 0.000303527f), exp2(log2((_2004 * 0.003717127f) + 0.052132703f) * 2.4f));
                                    _2035 = (((float)((uint)((uint)(_1988 & 255)))) * 0.007874016f) + -1.0f;
                                    _2040 = (((float)((uint)((uint)(((uint)((uint)(_1988)) >> 8) & 255)))) * 0.007874016f) + -1.0f;
                                    _2045 = (((float)((uint)((uint)(((uint)((uint)(_1988)) >> 16) & 255)))) * 0.007874016f) + -1.0f;
                                    _2047 = rsqrt(dot(float3(_2035, _2040, _2045), float3(_2035, _2040, _2045)));  // [sem: invLength]
                                    _2049 = ((_1988 & 16777215) == 0);
                                    _2050 = float(_1996);
                                    _2051 = float(_1995);
                                    _2052 = float(_1994);
                                    _2056 = (_1967 * 0.0019607844f) * ((float)((uint16_t)((int16_t)(_1990 & 255))));
                                    _2073 = ((((_1969.x + -63.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_1949)) + (uint)(64)) - (uint)((uint)((int)(_1969.x))))) & 127)))) * _1967) - _viewPos.x) + (((((float)((uint)((uint)((uint)((uint)(_1986)) >> 24)))) * 0.003937008f) + -0.5f) * _1967);
                                    _2089 = ((((_1969.y + -31.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_1950)) + (uint)(32)) - (uint)((uint)((int)(_1969.y))))) & 63)))) * _1967) - _viewPos.y) + (((((float)((uint)((uint)((uint)((uint)(_1988)) >> 24)))) * 0.003937008f) + -0.5f) * _1967);
                                    _2105 = ((((_1969.z + -63.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_1951)) + (uint)(64)) - (uint)((uint)((int)(_1969.z))))) & 127)))) * _1967) - _viewPos.z) + (((((float)((uint16_t)((int16_t)((uint16_t)(_1990) >> 8)))) * 0.003937008f) + -0.5f) * _1967);
                                    _2109 = ((-0.0f - _1373) - (_1729 * _199)) + _2073;
                                    _2113 = ((-0.0f - _1372) - (_1729 * _200)) + _2089;
                                    _2117 = ((-0.0f - _1371) - (_1729 * _201)) + _2105;
                                    _2118 = dot(float3(_2109, _2113, _2117), float3(_1973, _1974, _1975));
                                    _2120 = _2109 - (_2118 * _1973);
                                    _2122 = _2113 - (_2118 * _1974);
                                    _2124 = _2117 - (_2118 * _1975);
                                    _2126 = 1.0f / ((float)((uint)((uint)(_1965))));
                                    _2134 = frac(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _2105) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z) * _2126);
                                    _2187 = select(((int)_1952 > (int)5), 1.0f, ((((float)((bool)(dot(float3(_2120, _2122, _2124), float3(_2120, _2122, _2124)) < ((_2056 * _2056) * 64.0f)))) * saturate((saturate(dot(float3(_1973, _1974, _1975), float3(select(_2049, _1973, (_2047 * _2035)), select(_2049, _1974, (_2047 * _2040)), select(_2049, _1975, (_2047 * _2045))))) + -0.03125f) * 1.032258f)) * ((float)((bool)(((__3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _2073) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _2126), (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _2089) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y) * _2126), (((((float)((uint)((uint)(_1955)))) + 1.0f) + ((select((_2134 < 0.0f), 1.0f, 0.0f) + _2134) * 128.0f)) * 0.00096153846f)), 0.0f)).x) > ((_1967 * 0.25f) * (saturate((dot(float3(_2050, _2051, _2052), float3(0.212671f, 0.71516f, 0.072169f)) * 0.0001f) / _exposure3.w) + 1.0f)))))));
                                    _2195 = (((((_2022 * 0.33951f) + (_2013 * 0.61312f)) + (_2031 * 0.04737f)) * _2050) * _2187) + _1981;
                                    _2203 = (((((_2022 * 0.91636f) + (_2013 * 0.0702f)) + (_2031 * 0.01345f)) * _2051) * _2187) + _1980;
                                    _2211 = (((((_2022 * 0.10958f) + (_2013 * 0.02062f)) + (_2031 * 0.8698f)) * _2052) * _2187) + _1979;
                                    _2212 = _2187 + _1978;
                                    _2213 = (int)(_1977) + (int)(1);
                                    if ((uint)_2213 < (uint)4) {
                                      _1977 = _2213;
                                      _1978 = _2212;
                                      _1979 = _2211;
                                      _1980 = _2203;
                                      _1981 = _2195;
                                      continue;
                                    } else {
                                      _2216 = _2212;
                                      _2217 = _2211;
                                      _2218 = _2203;
                                      _2219 = _2195;
                                    }
                                  } else {
                                    _2216 = _1978;
                                    _2217 = _1979;
                                    _2218 = _1980;
                                    _2219 = _1981;
                                  }
                                  if (_2216 > 0.0f) {
                                    _2222 = 1.0f / _2216;
                                    _2238 = (-0.0f - min(0.0f, (-0.0f - (_2217 * _2222))));
                                    _2239 = (-0.0f - min(0.0f, (-0.0f - (_2218 * _2222))));
                                    _2240 = (-0.0f - min(0.0f, (-0.0f - (_2219 * _2222))));
                                    _2241 = 1.0f;
                                  } else {
                                    _2238 = _2217;
                                    _2239 = _2218;
                                    _2240 = _2219;
                                    _2241 = 0.0f;
                                  }
                                  break;
                                }
                              } else {
                                _2238 = 0.0f;
                                _2239 = 0.0f;
                                _2240 = 0.0f;
                                _2241 = 0.0f;
                              }
                            } else {
                              _2238 = 0.0f;
                              _2239 = 0.0f;
                              _2240 = 0.0f;
                              _2241 = 0.0f;
                            }
                          } else {
                            _2238 = 0.0f;
                            _2239 = 0.0f;
                            _2240 = 0.0f;
                            _2241 = 1.0f;
                          }
                        }
                        break;
                      }
                    } else {
                      _2238 = 0.0f;
                      _2239 = 0.0f;
                      _2240 = 0.0f;
                      _2241 = 1.0f;
                    }
                  }
                  break;
                }
              } else {
                _2238 = 0.0f;
                _2239 = 0.0f;
                _2240 = 0.0f;
                _2241 = 1.0f;
              }
              _2249 = saturate((_1729 * 0.25f) / (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * ((float)((int)((int)((uint)(1) << (_1380 & 31))))))) * _2241;
              _2253 = -0.0f - min(0.0f, (-0.0f - (_2240 * _2249)));
              _2257 = -0.0f - min(0.0f, (-0.0f - (_2239 * _2249)));
              _2261 = -0.0f - min(0.0f, (-0.0f - (_2238 * _2249)));
              _2263 = select(((int)_1730 > (int)-1), 1.0f, 0.0f);
              _2264 = max(1e-06f, _1729);
              if (_2264 > 0.0f) {
                _2270 = _2263;
                _2271 = _2261;
                _2272 = _2257;
                _2273 = _2253;
                _2274 = (_2264 + _1374);
              } else {
                _2270 = _2263;
                _2271 = _2261;
                _2272 = _2257;
                _2273 = _2253;
                _2274 = _2264;
              }
            } else {
              _2270 = _1725;
              _2271 = 0.0f;
              _2272 = 0.0f;
              _2273 = 0.0f;
              _2274 = 0.0f;
            }
          } else {
            _2270 = 0.0f;
            _2271 = 0.0f;
            _2272 = 0.0f;
            _2273 = 0.0f;
            _2274 = 0.0f;
          }
        }
        break;
      }
    } else {
      _2270 = _938;
      _2271 = _939;
      _2272 = _940;
      _2273 = _941;
      _2274 = _937;
    }
    _2277 = saturate(5.0000005f - (_174 * 0.019531252f));  // [sem: expr_sat]
    _2278 = (_1227 != 0);
    if ((_1228 > 0.0f) && (_2278 && (_1236 > 0.0f))) {
      if (!(_1236 < _2274)) {
        _2289 = ((int)(uint)((int)(_2274 <= 0.0f)));
      } else {
        _2289 = 1;
      }
    } else {
      _2289 = 0;
    }
    _2294 = saturate(max(select((_2289 != 0), 1.0f, 0.0f), (1.0f - _2277)));  // [sem: expr_sat]
    _2295 = _2294 * _1228;
    _2298 = min(_2277, saturate(1.0f - _2295));
    if (!(_2270 == 0.0f)) {
      _2313 = ((_2298 * _2270) + _2295);
      _2314 = ((_2298 * _2271) + (_2294 * _1229));
      _2315 = ((_2298 * _2272) + (_2294 * _1230));
      _2316 = ((_2298 * _2273) + (_2294 * _1231));
    } else {
      _2313 = _1228;
      _2314 = _1229;
      _2315 = _1230;
      _2316 = _1231;
    }
    _2319 = 1.0f / max(1e-06f, (_2298 + _2294));
    _2323 = _2319 * ((_2298 * _2274) + (_2294 * _1236));
    _2324 = _2319 * _2294;
    _2326 = (_2323 * _199) + _153;
    _2328 = (_2323 * _200) + _162;
    _2330 = (_2323 * _201) + _171;
    [branch]
    if (!(_2323 <= 0.0f)) {
      _2344 = (_viewProjRelative[3].w) + mad((_viewProjRelative[3].z), _2330, mad((_viewProjRelative[3].y), _2328, ((_viewProjRelative[3].x) * _2326)));
      _2355 = (((mad((_viewProjRelative[0].z), _2330, mad((_viewProjRelative[0].y), _2328, ((_viewProjRelative[0].x) * _2326))) + (_viewProjRelative[0].w)) / _2344) * 0.5f) + 0.5f;
      _2366 = 0.5f - (((mad((_viewProjRelative[1].z), _2330, mad((_viewProjRelative[1].y), _2328, ((_viewProjRelative[1].x) * _2326))) + (_viewProjRelative[1].w)) / _2344) * 0.5f);
      if (_2278 && ((_2366 <= 1.0f) && (((_2355 >= 0.0f) && (_2355 <= 1.0f)) && (_2366 >= 0.0f)))) {
        if (((mad((_viewProjRelative[2].z), _2330, mad((_viewProjRelative[2].y), _2328, ((_viewProjRelative[2].x) * _2326))) + (_viewProjRelative[2].w)) / _2344) > 0.0f) {
          if (_renderParams.x == 0.0f) {
            // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod]
            half4 _2393 = __3__36__0__0__g_sceneShadowColor.SampleLevel(__3__40__0__0__g_sampler, float2(_2355, _2366), 0.0f);
            _2401 = float(_2393.z);  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2402 = float(_2393.y);  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2403 = float(_2393.x);  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          } else {
            _2401 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2402 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2403 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          }
        } else {
          _2401 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          _2402 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          _2403 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
        }
      } else {
        _2401 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
        _2402 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
        _2403 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
      }
      _2406 = _viewPos.x + _2326;
      _2408 = _viewPos.y + _2328;
      _2410 = _viewPos.z + _2330;
      _2413 = _2406 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].x);
      _2415 = _2408 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].y);
      _2417 = _2410 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].z);
      _2429 = (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].w) + mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].z), _2417, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].y), _2415, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].x) * _2413)));
      _2437 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].z), _2417, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].y), _2415, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].x) * _2413))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].w);
      _2440 = 2.0f / __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y;
      _2441 = 1.0f - _2440;
      _2449 = (!(_2437 >= _2440)) || (!((_2437 <= _2441) && ((_2429 >= _2440) && (_2429 <= _2441))));
      _2452 = _2406 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].x);
      _2454 = _2408 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].y);
      _2456 = _2410 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].z);
      _2468 = (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].w) + mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].z), _2456, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].y), _2454, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].x) * _2452)));
      _2476 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].z), _2456, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].y), _2454, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].x) * _2452))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].w);
      _2484 = (!(_2476 >= _2440)) || (!(((_2468 <= _2441) && (_2468 >= _2440)) && (_2476 <= _2441)));
      _2486 = select(_2484, select(_2449, 0.0f, _2429), _2468);
      _2488 = select(_2484, select(_2449, 0.0f, _2437), _2476);
      _2506 = select(_2484, select(_2449, 0.0f, (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].z), _2417, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].y), _2415, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].x) * _2413))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].w))), (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].z), _2456, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].y), _2454, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].x) * _2452))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].w)));
      _2508 = select(_2484, select(_2449, -1, 1), 0);
      [branch]
      if (!(_2508 == -1)) {
        _2513 = (_2486 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x) + -0.5f;
        _2515 = (_2488 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y) + -0.5f;
        _2517 = (int)(floor(_2513));
        _2519 = (int)(floor(_2515));
        _2520 = (uint)((uint)(_2517)) + (uint)(1);
        _2521 = (uint)((uint)(_2519)) + (uint)(1);
        if (!(((uint)_2517 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x)))) || ((uint)_2519 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y)))))) {
          // [sem: _3__36__0__0__g_shadowColorArray_sampleLod]
          half4 _2531 = __3__36__0__0__g_shadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_2486, _2488, ((float)((uint)((uint)(_2508))))), 0.0f);
          _2546 = (half)(_2531.w);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2547 = (half)(_2531.z);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2548 = (half)(_2531.y);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2549 = (half)(_2531.x);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2550 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2520, _2521, _2508, 0)))).x);
          _2551 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2517, _2521, _2508, 0)))).x);
          _2552 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2520, _2519, _2508, 0)))).x);
          _2553 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2517, _2519, _2508, 0)))).x);
        } else {
          _2546 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2547 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2548 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2549 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2550 = 0.0f;
          _2551 = 0.0f;
          _2552 = 0.0f;
          _2553 = 0.0f;
        }
        _2554 = (int)(_2508) << 2;
        _2556 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2554) + (int)(103)))];
        _2562 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2554) + (int)(104)))];
        _2568 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2554) + (int)(105)))];
        _2574 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2554) + (int)(106)))];
        _2579 = _2556.x * _2486;
        _2580 = _2556.y * _2486;
        _2581 = _2556.z * _2486;
        _2582 = _2556.w * _2486;
        _2585 = mad(_2568.w, _2553, mad(_2562.w, _2488, _2582)) + _2574.w;
        _2589 = (mad(_2568.x, _2553, mad(_2562.x, _2488, _2579)) + _2574.x) / _2585;
        _2593 = (mad(_2568.y, _2553, mad(_2562.y, _2488, _2580)) + _2574.y) / _2585;
        _2597 = (mad(_2568.z, _2553, mad(_2562.z, _2488, _2581)) + _2574.z) / _2585;
        _2600 = _2486 + (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.z * 4.0f);
        _2604 = mad(_2568.w, _2552, mad(_2562.w, _2488, (_2556.w * _2600))) + _2574.w;
        _2607 = _2488 - (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.w * 2.0f);
        _2610 = mad(_2568.w, _2551, mad(_2562.w, _2607, _2582)) + _2574.w;
        _2615 = ((mad(_2568.x, _2551, mad(_2562.x, _2607, _2579)) + _2574.x) / _2610) - _2589;
        _2620 = ((mad(_2568.y, _2551, mad(_2562.y, _2607, _2580)) + _2574.y) / _2610) - _2593;
        _2625 = ((mad(_2568.z, _2551, mad(_2562.z, _2607, _2581)) + _2574.z) / _2610) - _2597;
        _2631 = ((mad(_2568.x, _2552, mad(_2562.x, _2488, (_2556.x * _2600))) + _2574.x) / _2604) - _2589;
        _2637 = ((mad(_2568.y, _2552, mad(_2562.y, _2488, (_2556.y * _2600))) + _2574.y) / _2604) - _2593;
        _2643 = ((mad(_2568.z, _2552, mad(_2562.z, _2488, (_2556.z * _2600))) + _2574.z) / _2604) - _2597;
        _2646 = (_2637 * _2625) - (_2643 * _2620);
        _2649 = (_2643 * _2615) - (_2631 * _2625);
        _2652 = (_2631 * _2620) - (_2637 * _2615);
        _2654 = rsqrt(dot(float3(_2646, _2649, _2652), float3(_2646, _2649, _2652)));  // [sem: invLength]
        _2655 = _2646 * _2654;
        _2656 = _2649 * _2654;
        _2657 = _2654 * _2652;
        _2658 = frac(_2513);
        _2662 = (saturate(dot(float3(_199, _200, _201), float3(_2655, _2656, _2657))) * 0.002f) + _2506;
        _2666 = saturate(exp2((_2553 - _2662) * 1.442695e+06f));  // [sem: expr_sat]
        _2670 = saturate(exp2((_2551 - _2662) * 1.442695e+06f));  // [sem: expr_sat]
        _2677 = ((saturate(exp2((_2552 - _2662) * 1.442695e+06f)) - _2666) * _2658) + _2666;
        _2691 = _2546;
        _2692 = _2547;
        _2693 = _2548;
        _2694 = _2549;
        _2695 = _2550;
        _2696 = _2551;
        _2697 = _2552;
        _2698 = _2553;
        // [sem: expr_sat]
        _2699 = saturate((((_2670 - _2677) + ((saturate(exp2((_2550 - _2662) * 1.442695e+06f)) - _2670) * _2658)) * frac(_2515)) + _2677);
        _2700 = _2657;
        _2701 = _2656;
        _2702 = _2655;
      } else {
        _2691 = 0.0h;
        _2692 = 0.0h;
        _2693 = 0.0h;
        _2694 = 0.0h;
        _2695 = 0.0f;
        _2696 = 0.0f;
        _2697 = 0.0f;
        _2698 = 0.0f;
        _2699 = 0.0f;  // [sem: expr_sat]
        _2700 = 0.0f;
        _2701 = 0.0f;
        _2702 = 0.0f;
      }
      _2714 = (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].w) + mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].z), _2330, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].y), _2328, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].x) * _2326)));
      _2722 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].z), _2330, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].y), _2328, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].x) * _2326))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].w);
      _2730 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].z), _2330, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].y), _2328, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].x) * _2326))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].w);
      _2733 = 4.0f / __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y;
      _2734 = 1.0f - _2733;
      if ((_2722 <= _2734) && ((_2714 >= _2733) && (_2714 <= _2734))) {
        _2745 = (_2722 >= _2733) && ((_2730 >= -1.0f) && (_2730 <= 1.0f));
        _2753 = ((int)(uint)(_2745));
        _2754 = select(_2745, 1, _2508);
        _2755 = select(_2745, _2730, _2506);
        _2756 = select(_2745, _2722, _2488);
        _2757 = select(_2745, _2714, _2486);
        _2758 = select(_2745, 1e-05f, -0.0001f);
      } else {
        _2753 = 0;
        _2754 = _2508;
        _2755 = _2506;
        _2756 = _2488;
        _2757 = _2486;
        _2758 = -0.0001f;
      }
      _2770 = (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].w) + mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].z), _2330, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].y), _2328, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].x) * _2326)));
      _2778 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].z), _2330, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].y), _2328, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].x) * _2326))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].w);
      _2786 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].z), _2330, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].y), _2328, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].x) * _2326))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].w);
      if (((_2770 <= _2734) && (_2770 >= _2733)) && (_2778 <= _2734)) {
        _2797 = (_2786 <= 1.0f) && ((_2778 >= _2733) && (_2786 >= -1.0f));
        _2805 = select(_2797, 1, _2753);
        _2806 = select(_2797, 0, _2754);
        _2807 = select(_2797, _2786, _2755);
        _2808 = select(_2797, _2778, _2756);
        _2809 = select(_2797, _2770, _2757);
        _2810 = select(_2797, 1e-05f, _2758);
      } else {
        _2805 = _2753;
        _2806 = _2754;
        _2807 = _2755;
        _2808 = _2756;
        _2809 = _2757;
        _2810 = _2758;
      }
      [branch]
      if (!(_2805 == 0)) {
        _2817 = (int)(floor((_2809 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f));
        _2821 = (int)(floor((_2808 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f));
        _2822 = (uint)((uint)(_2817)) + (uint)(1);
        _2823 = (uint)((uint)(_2821)) + (uint)(1);
        if (!(((uint)_2817 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x)))) || ((uint)_2821 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y)))))) {
          _2840 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2822, _2823, _2806, 0)))).x);
          _2841 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2817, _2823, _2806, 0)))).x);
          _2842 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2822, _2821, _2806, 0)))).x);
          _2843 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2817, _2821, _2806, 0)))).x);
        } else {
          _2840 = _2695;
          _2841 = _2696;
          _2842 = _2697;
          _2843 = _2698;
        }
        _2844 = (uint)((uint)(_2806)) << 2;
        _2846 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)((uint)((uint)(_2844)) + (uint)(58)))];
        _2852 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)((uint)((uint)(_2844)) + (uint)(59)))];
        _2858 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)((uint)((uint)(_2844)) + (uint)(60)))];
        _2864 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)((uint)((uint)(_2844)) + (uint)(61)))];
        _2869 = _2846.x * _2809;
        _2870 = _2846.y * _2809;
        _2871 = _2846.z * _2809;
        _2872 = _2846.w * _2809;
        _2875 = mad(_2858.w, _2843, mad(_2852.w, _2808, _2872)) + _2864.w;
        _2879 = (mad(_2858.x, _2843, mad(_2852.x, _2808, _2869)) + _2864.x) / _2875;
        _2883 = (mad(_2858.y, _2843, mad(_2852.y, _2808, _2870)) + _2864.y) / _2875;
        _2887 = (mad(_2858.z, _2843, mad(_2852.z, _2808, _2871)) + _2864.z) / _2875;
        _2890 = _2809 + (__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.z * 8.0f);
        _2894 = mad(_2858.w, _2842, mad(_2852.w, _2808, (_2846.w * _2890))) + _2864.w;
        _2897 = _2808 - (__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.w * 4.0f);
        _2900 = mad(_2858.w, _2841, mad(_2852.w, _2897, _2872)) + _2864.w;
        _2905 = ((mad(_2858.x, _2841, mad(_2852.x, _2897, _2869)) + _2864.x) / _2900) - _2879;
        _2910 = ((mad(_2858.y, _2841, mad(_2852.y, _2897, _2870)) + _2864.y) / _2900) - _2883;
        _2915 = ((mad(_2858.z, _2841, mad(_2852.z, _2897, _2871)) + _2864.z) / _2900) - _2887;
        _2921 = ((mad(_2858.x, _2842, mad(_2852.x, _2808, (_2846.x * _2890))) + _2864.x) / _2894) - _2879;
        _2927 = ((mad(_2858.y, _2842, mad(_2852.y, _2808, (_2846.y * _2890))) + _2864.y) / _2894) - _2883;
        _2933 = ((mad(_2858.z, _2842, mad(_2852.z, _2808, (_2846.z * _2890))) + _2864.z) / _2894) - _2887;
        _2936 = (_2927 * _2915) - (_2933 * _2910);
        _2939 = (_2933 * _2905) - (_2921 * _2915);
        _2942 = (_2921 * _2910) - (_2927 * _2905);
        _2944 = rsqrt(dot(float3(_2936, _2939, _2942), float3(_2936, _2939, _2942)));  // [sem: invLength]
        if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
          _2961 = _sunDirection.z;
          _2962 = _sunDirection.y;
          _2963 = _sunDirection.x;
        } else {
          _2961 = _moonDirection.z;
          _2962 = _moonDirection.y;
          _2963 = _moonDirection.x;
        }
        _2969 = (_2810 - (saturate(-0.0f - dot(float3(_2963, _2962, _2961), float3(_199, _200, _201))) * 0.0001f)) + _2807;
        _2985 = min(((float)((bool)(_2843 > _2969))), min(min(((float)((bool)(_2842 > _2969))), ((float)((bool)(_2841 > _2969)))), ((float)((bool)(_2840 > _2969)))));
        _2986 = (_2944 * _2942);
        _2987 = (_2939 * _2944);
        _2988 = (_2936 * _2944);
      } else {
        _2985 = _2699;
        _2986 = _2700;
        _2987 = _2701;
        _2988 = _2702;
      }
      _2991 = _viewPos.x - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.x;
      _2993 = _viewPos.y - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.y;
      _2995 = _viewPos.z - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.z;
      _2996 = _2991 + _2326;
      _2997 = _2993 + _2328;
      _2998 = _2995 + _2330;
      _3010 = (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].w) + mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].z), _2998, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].y), _2997, (_2996 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].x))));
      _3018 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].z), _2998, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].y), _2997, (_2996 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].w);
      _3026 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].z), _2998, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].y), _2997, (_2996 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].w);
      if ((_3026 <= 1.0f) && ((saturate(_3010) == _3010) && (_3026 >= 0.0001f))) {
        if (saturate(_3018) == _3018) {
          _3039 = frac((_3010 * 1024.0f) + -0.5f);
          _3042 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_3010, _3018));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
          _3047 = _3026 + -0.005f;
          _3049 = select((_3042.w > _3047), 1.0f, 0.0f);
          _3051 = select((_3042.x > _3047), 1.0f, 0.0f);
          _3056 = ((select((_3042.z > _3047), 1.0f, 0.0f) - _3049) * _3039) + _3049;
          // [sem: expr_sat]
          _3070 = saturate((((((select((_3042.y > _3047), 1.0f, 0.0f) - _3051) * _3039) + _3051) - _3056) * frac((_3018 * 1024.0f) + -0.5f)) + _3056);
        } else {
          _3070 = 1.0f;  // [sem: expr_sat]
        }
      } else {
        _3070 = 1.0f;  // [sem: expr_sat]
      }
      _3071 = min(_2985, _3070);
      _3072 = saturate(_2694);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived_derived_sat]
      _3073 = saturate(_2693);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived_derived_sat]
      _3074 = saturate(_2692);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived_derived_sat]
      _3079 = ((half)(((half)(_3073 * 0.3395996h)) + ((half)(_3072 * 0.61328125h)))) + ((half)(_3074 * 0.04736328h));
      _3084 = ((half)(((half)(_3073 * 0.9165039h)) + ((half)(_3072 * 0.07019043h)))) + ((half)(_3074 * 0.013450623h));
      _3089 = ((half)(((half)(_3073 * 0.109558105h)) + ((half)(_3072 * 0.020614624h)))) + ((half)(_3074 * 0.8696289h));
      _3092 = (_sunDirection.y > 0.0f);
      if (_3092) {
        _3108 = _sunDirection.x;
        _3109 = _sunDirection.y;
        _3110 = _sunDirection.z;
        _3125 = _3108;
        _3126 = _3109;
        _3127 = _3110;
        _3128 = _precomputedAmbient7.y;
      } else {
        _3099 = (_sunDirection.y > _moonDirection.y);
        _3104 = select(_3099, _sunDirection.z, _moonDirection.z);
        _3105 = select(_3099, _sunDirection.x, _moonDirection.x);
        _3106 = select(_3099, _sunDirection.y, _moonDirection.y);
        if (_3099) {
          _3108 = _3105;
          _3109 = _3106;
          _3110 = _3104;
          _3125 = _3108;
          _3126 = _3109;
          _3127 = _3110;
          _3128 = _precomputedAmbient7.y;
        } else {
          _3125 = _3105;
          _3126 = _3106;
          _3127 = _3104;
          _3128 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
        }
      }
      _3131 = _earthRadius + _2408;
      _3137 = sqrt(((_2410 * _2410) + (_2406 * _2406)) + (_3131 * _3131));
      _3141 = dot(float3((_2406 / _3137), (_3131 / _3137), (_2410 / _3137)), float3(_3125, _3126, _3127));
      _3144 = _atmosphereThickness + -16.0f;
      _3148 = min(max(((_3137 - _earthRadius) / _atmosphereThickness), 16.0f), _3144);
      _3149 = _atmosphereThickness + -32.0f;
      _3150 = max(_3148, 0.0f);
      _3151 = _earthRadius * 2.0f;
      _3157 = (-0.0f - sqrt((_3150 + _3151) * _3150)) / (_3150 + _earthRadius);
      if (_3141 > _3157) {
        _3180 = ((exp2(log2(saturate((_3141 - _3157) / (1.0f - _3157))) * 0.2f) * 0.4921875f) + 0.50390625f);
      } else {
        _3180 = ((exp2(log2(saturate((_3157 - _3141) / (_3157 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
      }
      // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
      _3191 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_3148 + -16.0f) / _3149)) * 0.5f) * 0.96875f) + 0.015625f), _3180), 0.0f);
      _3199 = (_mieAerosolDensity * 2e-05f) * (_mieAerosolAbsorption + 1.0f);
      _3200 = _3199 * _3191.y;
      _3210 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.0556001e-06f);
      _3216 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 4.9788005e-06f);
      _3221 = (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.1360002e-07f);
      _3225 = exp2(((_3210 * _3191.x) + _3200) * -1.442695f);
      _3229 = exp2(((_3216 * _3191.x) + _3200) * -1.442695f);
      _3233 = exp2(((_3221 * _3191.x) + _3200) * -1.442695f);
      _3237 = sqrt((_2326 * _2326) + (_2330 * _2330));
      _3245 = (_cloudAltitude - (max(((_3237 * _3237) + -400000.0f), 0.0f) * 1e-06f)) - _viewPos.y;
      _3257 = (_cloudThickness * (0.5f - (((float)((int)((int)((int)(uint)((int)(_3126 > 0.0f))) - (int)((int)(uint)((int)(_3126 < 0.0f)))))) * 0.5f))) + _3245;
      if (_2328 < _3245) {
        _3260 = dot(float3(0.0f, 1.0f, 0.0f), float3(_3125, _3126, _3127));
        _3266 = select((abs(_3260) < 1e-08f), 1e+08f, ((_3257 - dot(float3(0.0f, 1.0f, 0.0f), float3(_2326, _2328, _2330))) / _3260));
        _3272 = ((_3266 * _3127) + _2330);
        _3273 = _3257;
        _3274 = ((_3266 * _3125) + _2326);
      } else {
        _3272 = _2330;
        _3273 = _2328;
        _3274 = _2326;
      }
      _3281 = saturate(abs(_3126) * 4.0f);  // [sem: expr_sat]
      _3293 = (_distanceScale * -1.442695f) * (_cloudScatteringCoefficient / _distanceScale);
      _3296 = (_3281 * _3281) * exp2(((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_3274 * 5e-05f) + 0.5f), ((_3273 - _3245) / _cloudThickness), ((_3272 * 5e-05f) + 0.5f)), 0.0f)).x) * _3293);
      _3303 = ((1.0f - _3296) * saturate(((_2328 - _cloudThickness) - _3245) * 0.1f)) + _3296;
      _3309 = _3303 * (((_3229 * 0.33951f) + (_3225 * 0.61312f)) + (_3233 * 0.04737f));
      _3315 = _3303 * (((_3229 * 0.91636f) + (_3225 * 0.0702f)) + (_3233 * 0.01345f));
      _3321 = _3303 * (((_3229 * 0.10958f) + (_3225 * 0.02062f)) + (_3233 * 0.8698f));
      _3323 = float(saturate(_2691));
      if (!((_942 == 0) || (_964 != 0))) {
        _3328 = (_1232 > 0.0f);
        _3329 = select(_3328, _1235, _2988);
        _3330 = select(_3328, _1234, _2987);
        _3331 = select(_3328, _1233, _2986);
        _3332 = select(_3328, _1232, 0.8f);
        if (_943 > 0.0f) {
          _3335 = half(_946);
          _3336 = half(_945);
          _3337 = half(_944);
          _3343 = dot(float3(_3329, _3330, _3331), float3(_3125, _3126, _3127));
          _3344 = float(_3337);
          _3345 = float(_3336);
          _3346 = float(_3335);
          _3347 = _943;
          _3348 = _3337;
          _3349 = _3336;
          _3350 = _3335;
          _3351 = _3331;
          _3352 = _3330;
          _3353 = _3329;
          _3354 = _3332;
        } else {
          _3343 = _3323;
          _3344 = 1.0f;
          _3345 = 1.0f;
          _3346 = 1.0f;
          _3347 = 0.1f;
          _3348 = _3089;
          _3349 = _3084;
          _3350 = _3079;
          _3351 = _3331;
          _3352 = _3330;
          _3353 = _3329;
          _3354 = _3332;
        }
      } else {
        _3343 = _3323;
        _3344 = 1.0f;
        _3345 = 1.0f;
        _3346 = 1.0f;
        _3347 = 0.1f;
        _3348 = _3089;
        _3349 = _3084;
        _3350 = _3079;
        _3351 = _2986;
        _3352 = _2987;
        _3353 = _2988;
        _3354 = 0.8f;
      }
      _3359 = float(half(saturate(_3343) * 0.31830987f)) * _3071;
      _3364 = 0.7f / min(max(max(max(_3346, _3345), _3344), 0.01f), 0.7f);
      _3368 = (((_3364 * _3345) + -0.04f) * _3347) + 0.04f;
      _3369 = _3125 - _199;
      _3370 = _3126 - _200;
      _3371 = _3127 - _201;
      _3373 = rsqrt(dot(float3(_3369, _3370, _3371), float3(_3369, _3370, _3371)));  // [sem: invLength]
      _3374 = _3373 * _3369;
      _3375 = _3373 * _3370;
      _3376 = _3373 * _3371;
      _3377 = -0.0f - _199;
      _3378 = -0.0f - _200;
      _3379 = -0.0f - _201;
      _3382 = saturate(max(1e-05f, dot(float3(_3377, _3378, _3379), float3(_3353, _3352, _3351))));  // [sem: expr_sat]
      _3384 = saturate(dot(float3(_3353, _3352, _3351), float3(_3374, _3375, _3376)));  // [sem: expr_sat]
      _3389 = saturate(1.0f - saturate(saturate(dot(float3(_3377, _3378, _3379), float3(_3374, _3375, _3376)))));  // [sem: expr_sat]
      _3390 = _3389 * _3389;
      _3392 = (_3390 * _3390) * _3389;
      _3395 = _3392 * saturate(_3368 * 50.0f);
      _3396 = 1.0f - _3392;
      _3398 = saturate(_3343 * _3071);  // [sem: expr_sat]
      _3399 = _3354 * _3354;
      _3400 = _3399 * _3399;
      _3401 = 1.0f - _3399;
      _3405 = (((_3384 * _3400) - _3384) * _3384) + 1.0f;
      _3417 = (0.5f / ((((_3382 * _3401) + _3399) * _3343) + (_3382 * ((_3401 * _3343) + _3399)))) * (_3400 / ((_3405 * _3405) * 3.1415927f));
      _3436 = ((((_3309 * 0.61312f) + (_3315 * 0.33951f)) + (_3321 * 0.04737f)) * _3128) * ((max((((_3396 * ((((_3364 * _3346) + -0.04f) * _3347) + 0.04f)) + _3395) * _3417), 0.0f) * _3398) + (_3359 * float(_3350)));
      _3451 = ((((_3309 * 0.0702f) + (_3315 * 0.91636f)) + (_3321 * 0.01345f)) * _3128) * ((max((((_3396 * _3368) + _3395) * _3417), 0.0f) * _3398) + (_3359 * float(_3349)));
      _3470 = ((((_3309 * 0.02062f) + (_3315 * 0.10958f)) + (_3321 * 0.8698f)) * _3128) * ((max((((_3396 * ((((_3364 * _3344) + -0.04f) * _3347) + 0.04f)) + _3395) * _3417), 0.0f) * _3398) + (_3359 * float(_3348)));
      _3471 = dot(float3(_3436, _3451, _3470), float3(0.212671f, 0.71516f, 0.072169f));
      _3476 = min((max(0.0005f, _exposure3.w) * 4096.0f), _3471);
      _3477 = max(1e-09f, _3471);
      _3479 = (_3476 * _3436) / _3477;
      _3481 = (_3476 * _3451) / _3477;
      _3483 = (_3476 * _3470) / _3477;
      if ((_103 == 33) || (_103 == 54)) {
        if ((_3092) || ((!(_3092)) && (_sunDirection.y > _moonDirection.y))) {
          _3499 = _sunDirection.z;
          _3500 = _sunDirection.y;
          _3501 = _sunDirection.x;
        } else {
          _3499 = _moonDirection.z;
          _3500 = _moonDirection.y;
          _3501 = _moonDirection.x;
        }
        _3503 = rsqrt(dot(float3(_153, _162, _171), float3(_153, _162, _171)));  // [sem: invLength]
        _3504 = _3503 * _153;
        _3505 = _3503 * _162;
        _3506 = _3503 * _171;
        _3508 = _153 - (_126 * 0.04f);
        _3510 = _162 - (_127 * 0.04f);
        _3512 = _171 - (_128 * 0.04f);
        _3514 = (_viewPos.x - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].x)) + _3508;
        _3516 = (_viewPos.y - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].y)) + _3510;
        _3518 = (_viewPos.z - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].z)) + _3512;
        _3522 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].z), _3518, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].y), _3516, (_3514 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].w);
        _3526 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].z), _3518, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].y), _3516, (_3514 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].w);
        _3534 = (!(_3526 >= _2440)) || (!(((_3522 <= _2441) && (_3522 >= _2440)) && (_3526 <= _2441)));
        _3536 = (_viewPos.x - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].x)) + _3508;
        _3538 = (_viewPos.y - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].y)) + _3510;
        _3540 = (_viewPos.z - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].z)) + _3512;
        _3544 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].z), _3540, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].y), _3538, (_3536 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].w);
        _3548 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].z), _3540, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].y), _3538, (_3536 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].w);
        _3556 = (!(_3548 >= _2440)) || (!(((_3544 <= _2441) && (_3544 >= _2440)) && (_3548 <= _2441)));
        _3558 = select((_3534 && _3556), 0.0f, 0.001f);
        _3560 = select(_3556, select(_3534, 0.0f, _3522), _3544);
        _3562 = select(_3556, select(_3534, 0.0f, _3526), _3548);
        _3572 = select(_3556, select(_3534, 0.0f, (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].z), _3518, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].y), _3516, (_3514 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].w))), (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].z), _3540, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].y), _3538, (_3536 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].w)));
        _3574 = select(_3556, select(_3534, -1, 1), 0);
        [branch]
        if (!(_3574 == -1)) {
          _3579 = (_3560 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x) + -0.5f;
          _3581 = (_3562 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y) + -0.5f;
          _3583 = (int)(floor(_3579));
          _3585 = (int)(floor(_3581));
          _3586 = (uint)((uint)(_3583)) + (uint)(1);
          _3587 = (uint)((uint)(_3585)) + (uint)(1);
          if (!(((uint)_3583 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x)))) || ((uint)_3585 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y)))))) {
            _3604 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3586, _3587, _3574, 0)))).x);
            _3605 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3583, _3587, _3574, 0)))).x);
            _3606 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3586, _3585, _3574, 0)))).x);
            _3607 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3583, _3585, _3574, 0)))).x);
          } else {
            _3604 = 0.0f;
            _3605 = 0.0f;
            _3606 = 0.0f;
            _3607 = 0.0f;
          }
          _3608 = (int)(_3574) << 2;
          _3610 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3608) + (int)(103)))];
          _3616 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3608) + (int)(104)))];
          _3622 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3608) + (int)(105)))];
          _3628 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3608) + (int)(106)))];
          _3633 = _3610.x * _3560;
          _3634 = _3610.y * _3560;
          _3635 = _3610.z * _3560;
          _3636 = _3610.w * _3560;
          _3639 = mad(_3622.w, _3607, mad(_3616.w, _3562, _3636)) + _3628.w;
          _3643 = (mad(_3622.x, _3607, mad(_3616.x, _3562, _3633)) + _3628.x) / _3639;
          _3647 = (mad(_3622.y, _3607, mad(_3616.y, _3562, _3634)) + _3628.y) / _3639;
          _3651 = (mad(_3622.z, _3607, mad(_3616.z, _3562, _3635)) + _3628.z) / _3639;
          _3654 = _3560 + (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.z * 4.0f);
          _3658 = mad(_3622.w, _3606, mad(_3616.w, _3562, (_3610.w * _3654))) + _3628.w;
          _3661 = _3562 - (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.w * 2.0f);
          _3664 = mad(_3622.w, _3605, mad(_3616.w, _3661, _3636)) + _3628.w;
          _3669 = ((mad(_3622.x, _3605, mad(_3616.x, _3661, _3633)) + _3628.x) / _3664) - _3643;
          _3674 = ((mad(_3622.y, _3605, mad(_3616.y, _3661, _3634)) + _3628.y) / _3664) - _3647;
          _3679 = ((mad(_3622.z, _3605, mad(_3616.z, _3661, _3635)) + _3628.z) / _3664) - _3651;
          _3685 = ((mad(_3622.x, _3606, mad(_3616.x, _3562, (_3610.x * _3654))) + _3628.x) / _3658) - _3643;
          _3691 = ((mad(_3622.y, _3606, mad(_3616.y, _3562, (_3610.y * _3654))) + _3628.y) / _3658) - _3647;
          _3697 = ((mad(_3622.z, _3606, mad(_3616.z, _3562, (_3610.z * _3654))) + _3628.z) / _3658) - _3651;
          _3700 = (_3691 * _3679) - (_3697 * _3674);
          _3703 = (_3697 * _3669) - (_3685 * _3679);
          _3706 = (_3685 * _3674) - (_3691 * _3669);
          _3708 = rsqrt(dot(float3(_3700, _3703, _3706), float3(_3700, _3703, _3706)));  // [sem: invLength]
          _3709 = frac(_3579);
          _3716 = (saturate(dot(float3(_3504, _3505, _3506), float3((_3700 * _3708), (_3703 * _3708), (_3708 * _3706)))) * 0.002f) + _3572;
          _3720 = saturate(exp2((_3607 - _3716) * 1.442695e+06f));  // [sem: expr_sat]
          _3724 = saturate(exp2((_3605 - _3716) * 1.442695e+06f));  // [sem: expr_sat]
          _3731 = ((saturate(exp2((_3606 - _3716) * 1.442695e+06f)) - _3720) * _3709) + _3720;
          _3745 = _3604;
          _3746 = _3605;
          _3747 = _3606;
          _3748 = _3607;
          // [sem: expr_sat]
          _3749 = saturate((((_3724 - _3731) + ((saturate(exp2((_3604 - _3716) * 1.442695e+06f)) - _3724) * _3709)) * frac(_3581)) + _3731);
        } else {
          _3745 = 0.0f;
          _3746 = 0.0f;
          _3747 = 0.0f;
          _3748 = 0.0f;
          _3749 = 1.0f;  // [sem: expr_sat]
        }
        _3753 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].z), _3512, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].y), _3510, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].x) * _3508))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].w);
        _3757 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].z), _3512, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].y), _3510, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].x) * _3508))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].w);
        _3761 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].z), _3512, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].y), _3510, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].x) * _3508))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].w);
        if (((_3753 <= _2734) && (_3753 >= _2733)) && (_3757 <= _2734)) {
          _3772 = (_3761 <= 1.0f) && ((_3757 >= _2733) && (_3761 >= -1.0f));
          _3780 = ((int)(uint)(_3772));
          _3781 = select(_3772, 1, _3574);
          _3782 = select(_3772, _3761, _3572);
          _3783 = select(_3772, _3757, _3562);
          _3784 = select(_3772, _3753, _3560);
          _3785 = select(_3772, 1e-05f, _3558);
        } else {
          _3780 = 0;
          _3781 = _3574;
          _3782 = _3572;
          _3783 = _3562;
          _3784 = _3560;
          _3785 = _3558;
        }
        _3789 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].z), _3512, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].y), _3510, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].x) * _3508))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].w);
        _3793 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].z), _3512, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].y), _3510, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].x) * _3508))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].w);
        _3797 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].z), _3512, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].y), _3510, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].x) * _3508))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].w);
        if (((_3789 <= _2734) && (_3789 >= _2733)) && (_3793 <= _2734)) {
          _3808 = (_3797 <= 1.0f) && ((_3793 >= _2733) && (_3797 >= -1.0f));
          _3816 = select(_3808, 1, _3780);
          _3817 = select(_3808, 0, _3781);
          _3818 = select(_3808, _3797, _3782);
          _3819 = select(_3808, _3793, _3783);
          _3820 = select(_3808, _3789, _3784);
          _3821 = select(_3808, 1e-05f, _3785);
        } else {
          _3816 = _3780;
          _3817 = _3781;
          _3818 = _3782;
          _3819 = _3783;
          _3820 = _3784;
          _3821 = _3785;
        }
        [branch]
        if (!(_3816 == 0)) {
          _3828 = (int)(floor((_3820 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f));
          _3832 = (int)(floor((_3819 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f));
          _3833 = (uint)((uint)(_3828)) + (uint)(1);
          _3834 = (uint)((uint)(_3832)) + (uint)(1);
          if (!(((uint)_3828 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x)))) || ((uint)_3832 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y)))))) {
            _3851 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3833, _3834, _3817, 0)))).x);
            _3852 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3828, _3834, _3817, 0)))).x);
            _3853 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3833, _3832, _3817, 0)))).x);
            _3854 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3828, _3832, _3817, 0)))).x);
          } else {
            _3851 = _3745;
            _3852 = _3746;
            _3853 = _3747;
            _3854 = _3748;
          }
          if ((_3092) || ((!(_3092)) && (_sunDirection.y > _moonDirection.y))) {
            _3866 = _sunDirection.z;
            _3867 = _sunDirection.y;
            _3868 = _sunDirection.x;
          } else {
            _3866 = _moonDirection.z;
            _3867 = _moonDirection.y;
            _3868 = _moonDirection.x;
          }
          _3874 = (_3821 - (saturate(-0.0f - dot(float3(_3868, _3867, _3866), float3(_3504, _3505, _3506))) * 0.0001f)) + _3818;
          _3887 = min(((float)((bool)(_3854 > _3874))), min(min(((float)((bool)(_3853 > _3874))), ((float)((bool)(_3852 > _3874)))), ((float)((bool)(_3851 > _3874)))));
        } else {
          _3887 = _3749;
        }
        _3888 = _2991 + _3508;
        _3889 = _2993 + _3510;
        _3890 = _2995 + _3512;
        _3894 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].z), _3890, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].y), _3889, (_3888 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].w);
        _3898 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].z), _3890, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].y), _3889, (_3888 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].w);
        _3902 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].z), _3890, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].y), _3889, (_3888 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].w);
        if ((_3902 <= 1.0f) && ((saturate(_3894) == _3894) && (_3902 >= 0.0001f))) {
          if (saturate(_3898) == _3898) {
            _3915 = frac((_3894 * 1024.0f) + -0.5f);
            // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
            _3918 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_3894, _3898));
            _3923 = _3902 + -0.005f;
            _3925 = select((_3918.w > _3923), 1.0f, 0.0f);
            _3927 = select((_3918.x > _3923), 1.0f, 0.0f);
            _3932 = ((select((_3918.z > _3923), 1.0f, 0.0f) - _3925) * _3915) + _3925;
            // [sem: expr_sat]
            _3946 = saturate((((((select((_3918.y > _3923), 1.0f, 0.0f) - _3927) * _3915) + _3927) - _3932) * frac((_3898 * 1024.0f) + -0.5f)) + _3932);
          } else {
            _3946 = 1.0f;  // [sem: expr_sat]
          }
        } else {
          _3946 = 1.0f;  // [sem: expr_sat]
        }
        // [sem: _3__36__0__0__g_baseColor_load]
        _3957 = __3__36__0__0__g_baseColor.Load(int3(((int)((uint)((1.0f / g_screenSpaceScale.x) * _86))), ((int)((uint)((1.0f / g_screenSpaceScale.y) * _87))), 0));
        _3963 = ((float)((uint)((uint)(((uint)((uint)(_3957.x)) >> 8) & 255)))) * 0.003921569f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _3966 = ((float)((uint)((uint)(_3957.x & 255)))) * 0.003921569f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _3970 = ((float)((uint)((uint)(((uint)((uint)(_3957.y)) >> 8) & 255)))) * 0.003921569f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _3971 = _3963 * _3963;
        _3972 = _3966 * _3966;
        _3973 = _3970 * _3970;
        if ((_3092) || ((!(_3092)) && (_sunDirection.y > _moonDirection.y))) {
          _3993 = _precomputedAmbient7.y;
        } else {
          _3993 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
        }
        _3994 = _viewPos.x + _153;
        _3996 = (_viewPos.y + _162) + _earthRadius;
        _3997 = _viewPos.z + _171;
        _4003 = sqrt(((_3997 * _3997) + (_3994 * _3994)) + (_3996 * _3996));
        _4007 = dot(float3((_3994 / _4003), (_3996 / _4003), (_3997 / _4003)), float3(_3501, _3500, _3499));
        _4011 = min(max(((_4003 - _earthRadius) / _atmosphereThickness), 16.0f), _3144);
        _4012 = max(_4011, 0.0f);
        _4018 = (-0.0f - sqrt((_4012 + _3151) * _4012)) / (_4012 + _earthRadius);
        if (_4007 > _4018) {
          _4041 = ((exp2(log2(saturate((_4007 - _4018) / (1.0f - _4018))) * 0.2f) * 0.4921875f) + 0.50390625f);
        } else {
          _4041 = ((exp2(log2(saturate((_4018 - _4007) / (_4018 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
        }
        // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
        _4050 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_4011 + -16.0f) / _3149)) * 0.5f) * 0.96875f) + 0.015625f), _4041), 0.0f);
        _4053 = _4050.y * _3199;
        _4057 = exp2((_4053 + (_4050.x * _3210)) * -1.442695f);
        _4061 = exp2((_4053 + (_4050.x * _3216)) * -1.442695f);
        _4065 = exp2((_4053 + (_4050.x * _3221)) * -1.442695f);
        _4069 = sqrt((_171 * _171) + (_153 * _153));
        _4075 = (_cloudAltitude - (max(((_4069 * _4069) + -400000.0f), 0.0f) * 1e-06f)) - _viewPos.y;
        _4085 = _4075 + ((0.5f - (((float)((int)((int)((int)(uint)((int)(_3500 > 0.0f))) - (int)((int)(uint)((int)(_3500 < 0.0f)))))) * 0.5f)) * _cloudThickness);
        if (_162 < _4075) {
          _4088 = dot(float3(0.0f, 1.0f, 0.0f), float3(_3501, _3500, _3499));
          _4094 = select((abs(_4088) < 1e-08f), 1e+08f, ((_4085 - dot(float3(0.0f, 1.0f, 0.0f), float3(_153, _162, _171))) / _4088));
          _4100 = ((_4094 * _3499) + _171);
          _4101 = _4085;
          _4102 = ((_4094 * _3501) + _153);
        } else {
          _4100 = _171;
          _4101 = _162;
          _4102 = _153;
        }
        _4105 = saturate(abs(_3500) * 4.0f);  // [sem: expr_sat]
        _4117 = (_4105 * _4105) * exp2(((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_4102 * 5e-05f) + 0.5f), ((_4101 - _4075) / _cloudThickness), ((_4100 * 5e-05f) + 0.5f)), 0.0f)).x) * _3293);
        _4124 = ((1.0f - _4117) * saturate(((_162 - _cloudThickness) - _4075) * 0.1f)) + _4117;
        _4130 = _4124 * (((_4061 * 0.33951f) + (_4057 * 0.61312f)) + (_4065 * 0.04737f));
        _4136 = _4124 * (((_4061 * 0.91636f) + (_4057 * 0.0702f)) + (_4065 * 0.01345f));
        _4142 = _4124 * (((_4061 * 0.10958f) + (_4057 * 0.02062f)) + (_4065 * 0.8698f));
        _4150 = ((_3993 * 0.15734209f) * max(0.0f, (0.3f - dot(float3(_126, _127, _128), float3(_3501, _3500, _3499))))) * saturate(min(_3887, _3946));
        _4191 = (((_4150 * (((_3971 * 0.02062f) + (_3972 * 0.10958f)) + (_3973 * 0.8698f))) * (((_4130 * 0.02062f) + (_4136 * 0.10958f)) + (_4142 * 0.8698f))) + _3483);
        _4192 = (((_4150 * (((_3971 * 0.0702f) + (_3972 * 0.91636f)) + (_3973 * 0.01345f))) * (((_4130 * 0.0702f) + (_4136 * 0.91636f)) + (_4142 * 0.01345f))) + _3481);
        _4193 = (((_4150 * (((_3971 * 0.61312f) + (_3972 * 0.33951f)) + (_3973 * 0.04737f))) * (((_4130 * 0.61312f) + (_4136 * 0.33951f)) + (_4142 * 0.04737f))) + _3479);
      } else {
        _4191 = _3483;
        _4192 = _3481;
        _4193 = _3479;
      }
      _4197 = (_4193 * _2403) * _renderParams2.z;
      _4199 = (_4192 * _2402) * _renderParams2.z;
      _4201 = (_4191 * _2401) * _renderParams2.z;
      _4202 = _4197 + _2316;
      _4203 = _4199 + _2315;
      _4204 = _4201 + _2314;
      _4218 = (((max(_2314, _4201) - _4204) * _2324) + _4204);
      _4219 = (((max(_2315, _4199) - _4203) * _2324) + _4203);
      _4220 = (((max(_2316, _4197) - _4202) * _2324) + _4202);
      _4221 = _2323;
    } else {
      _4218 = _2314;
      _4219 = _2315;
      _4220 = _2316;
      _4221 = 1000.0f;
    }
    if (!_951) {
      __3__38__0__1__g_raytracingHitResultUAV[int2(_80, _85)] = float4(_193, _194, _195, select((_4221 <= 0.0f), 1000.0f, _4221));
    }
    if (_4221 > 128.0f) {
      if (dot(float3(_4220, _4219, _4218), float3(0.212671f, 0.71516f, 0.072169f)) == 0.0f) {
        _4232 = 1;
        while(true) {
          _4234 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_4232) + (int)(20)))];
          _4240 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_4232) + (int)(36)))];
          _4250 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _2326) * _4234.w) + _4240.x));
          _4256 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _2328) * _4234.w) + _4240.y));
          _4262 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _2330) * _4234.w) + _4240.z));
          if (((int)_4250 < (int)((int)(_4234.x + -63.0f))) || ((!((int)_4250 < (int)((int)(_4234.x + -63.0f)))) && (!((int)_4250 < (int)((int)(_4234.x + 63.0f))))) || (((!((int)_4250 < (int)((int)(_4234.x + -63.0f)))) && ((int)_4250 < (int)((int)(_4234.x + 63.0f)))) && ((int)_4256 < (int)((int)(_4234.y + -31.0f)))) || ((((!((int)_4250 < (int)((int)(_4234.x + -63.0f)))) && ((int)_4250 < (int)((int)(_4234.x + 63.0f)))) && (!((int)_4256 < (int)((int)(_4234.y + -31.0f))))) && (!((int)_4256 < (int)((int)(_4234.y + 31.0f))))) || (((((!((int)_4250 < (int)((int)(_4234.x + -63.0f)))) && ((int)_4250 < (int)((int)(_4234.x + 63.0f)))) && (!((int)_4256 < (int)((int)(_4234.y + -31.0f))))) && ((int)_4256 < (int)((int)(_4234.y + 31.0f)))) && ((int)_4262 < (int)((int)(_4234.z + -63.0f)))) || ((((((!((int)_4250 < (int)((int)(_4234.x + -63.0f)))) && ((int)_4250 < (int)((int)(_4234.x + 63.0f)))) && (!((int)_4256 < (int)((int)(_4234.y + -31.0f))))) && ((int)_4256 < (int)((int)(_4234.y + 31.0f)))) && (!((int)_4262 < (int)((int)(_4234.z + -63.0f))))) && (!((int)_4262 < (int)((int)(_4234.z + 63.0f)))))) {
            _4287 = (int)(_4232) + (int)(1);
            if ((uint)_4287 < (uint)8) {
              _4232 = _4287;
              continue;
            } else {
              _4331 = 1.0f;  // [sem: expr_sat]
            }
          } else {
            if (!((uint)_4232 > (uint)3)) {
              _4295 = 1.0f / ((float)((uint)((uint)(1) << (_4232 & 31))));
              _4303 = frac(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _2330) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z) * _4295);
              // [sem: expr_sat]
              _4331 = saturate(1.0f - ((__3__36__0__1__g_skyVisibilityVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _2326) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _4295), (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _2328) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y) * _4295), (((((float)((uint)((uint)((uint)(_4232)) * (uint)(66)))) + 1.0f) + ((select((_4303 < 0.0f), 1.0f, 0.0f) + _4303) * 64.0f)) * 0.003787879f)), 0.0f)).x));
            } else {
              _4331 = 1.0f;  // [sem: expr_sat]
            }
          }
          _4334 = _renderParams.w * _4331;
          _4335 = (_943 == 0.0f);
          // [sem: _3__36__0__0__g_environmentColor_sampleLod]
          _4343 = __3__36__0__0__g_environmentColor.SampleLevel(__3__40__0__0__g_samplerTrilinear, float3(select(_4335, (-0.0f - _199), _1235), select(_4335, _200, _1234), select(_4335, (-0.0f - _201), _1233)), 4.0f);
          _4357 = ((_4334 * select(_4335, 0.03125f, _944)) * _4343.z);
          _4358 = ((_4334 * select(_4335, 0.03125f, _945)) * _4343.y);
          _4359 = ((_4334 * select(_4335, 0.03125f, _946)) * _4343.x);
          break;
        }
      } else {
        _4357 = _4218;
        _4358 = _4219;
        _4359 = _4220;
      }
    } else {
      _4357 = _4218;
      _4358 = _4219;
      _4359 = _4220;
    }
    _4362 = saturate(1.0f - saturate(_2313));  // [sem: expr_sat]
    _4367 = (_4362 - (_renderParams2.w * _4362)) + _renderParams2.w;
    // [sem: _3__36__0__0__g_environmentColor_sampleLod]
    _4370 = __3__36__0__0__g_environmentColor.SampleLevel(__3__40__0__0__g_samplerTrilinear, float3(_199, _200, _201), 4.0f);
    _4376 = _renderParams.w * _4367;
    _4377 = _4376 * _4370.x;
    _4378 = _4376 * _4370.y;
    _4379 = _4376 * _4370.z;
    _4380 = dot(float3(_4377, _4378, _4379), float3(0.212671f, 0.71516f, 0.072169f));
    _4385 = min((max(0.01f, _exposure3.w) * 2048.0f), _4380);
    _4386 = max(1e-09f, _4380);
    _4390 = ((__3__36__0__0__g_raytracingDiffuseRayInversePDF.Load(int3(_80, _85, 0))).x) * 2.0f;
    _4396 = (((_4385 * _4377) / _4386) + (_renderParams2.y * _4359)) * _4390;
    _4401 = (((_4385 * _4378) / _4386) + (_renderParams2.y * _4358)) * _4390;
    _4406 = (((_4385 * _4379) / _4386) + (_renderParams2.y * _4357)) * _4390;
    if (!(_renderParams.y == 0.0f)) {
      _4411 = saturate(dot(float3(_126, _127, _128), float3(_199, _200, _201)));  // [sem: expr_sat]
      _4416 = (_4411 * _4406);
      _4417 = (_4411 * _4401);
      _4418 = (_4411 * _4396);
    } else {
      _4416 = _4406;
      _4417 = _4401;
      _4418 = _4396;
    }
    __3__38__0__1__g_diffuseResultUAV[int2(_80, _85)] = float4(((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - min(15000.0f, (_exposure4.x * _4418)))))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - min(15000.0f, (_exposure4.x * _4417)))))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - min(15000.0f, (_exposure4.x * _4416)))))))), (half)(half(1.0f - _4367)));
    break;
  }
}
