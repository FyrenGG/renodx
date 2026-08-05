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

Texture2D<uint2> __3__36__0__0__g_normalDepth : register(t60, space36);

Texture2D<uint2> __3__36__0__0__g_normalDepthPrev : register(t61, space36);

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
  int4 _54;
  int _66;
  int _70;
  uint _73;
  uint _76;
  float _77;
  float _78;
  float _84;
  float _89;
  uint2 _91;
  int _95;
  float _100;
  float _106;
  float _112;
  float _114;
  float _115;
  float _116;
  float _117;
  float _121;
  float _133;
  float _142;
  float _151;
  float _160;
  float _163;
  float _169;
  int _179;
  int _232;
  int _290;
  int _311;
  int _372;
  int _445;
  int _446;
  int _447;
  int _448;
  int _455;
  int _523;
  int _524;
  int _525;
  int _526;
  int _527;
  int _528;
  int _559;
  int _560;
  int _561;
  int _562;
  int _563;
  int _569;
  int _570;
  int _577;
  int _578;
  int _579;
  int _580;
  int _602;
  float _603;
  float _604;
  float _605;
  float _606;
  float _607;
  float _608;
  float _609;
  float _852;
  float _853;
  float _854;
  float _855;
  float _874;
  float _875;
  float _876;
  float _916;
  float _917;
  float _918;
  float _926;
  float _927;
  float _928;
  float _929;
  float _930;
  int _931;
  float _932;
  float _933;
  float _934;
  float _935;
  float _936;
  float _937;
  float _938;
  float _939;
  int _953;
  int _1222;
  float _1223;
  float _1224;
  float _1225;
  float _1226;
  float _1227;
  float _1228;
  float _1229;
  float _1230;
  float _1231;
  int _1233;
  float _1296;
  float _1366;
  float _1367;
  float _1368;
  float _1369;
  int _1375;
  float _1456;
  float _1457;
  float _1458;
  float _1459;
  float _1460;
  int _1461;
  int _1463;
  float _1692;
  float _1693;
  float _1713;
  float _1714;
  float _1715;
  float _1716;
  float _1717;
  float _1719;
  float _1720;
  float _1721;
  float _1722;
  float _1723;
  float _1724;
  int _1740;
  int _1813;
  int _1814;
  int _1815;
  int _1816;
  int _1822;
  int _1890;
  int _1891;
  int _1892;
  int _1893;
  int _1894;
  int _1895;
  int _1926;
  int _1927;
  int _1928;
  int _1929;
  int _1930;
  int _1936;
  int _1937;
  int _1944;
  int _1945;
  int _1946;
  int _1947;
  int _1972;
  float _1973;
  float _1974;
  float _1975;
  float _1976;
  float _2211;
  float _2212;
  float _2213;
  float _2214;
  float _2233;
  float _2234;
  float _2235;
  float _2236;
  float _2265;
  float _2266;
  float _2267;
  float _2268;
  float _2269;
  int _2284;
  float _2308;
  float _2309;
  float _2310;
  float _2311;
  float _2396;
  float _2397;
  float _2398;
  half _2541;
  half _2542;
  half _2543;
  half _2544;
  float _2545;
  float _2546;
  float _2547;
  float _2548;
  half _2686;
  half _2687;
  half _2688;
  half _2689;
  float _2690;
  float _2691;
  float _2692;
  float _2693;
  float _2694;
  float _2695;
  float _2696;
  float _2697;
  int _2748;
  int _2749;
  float _2750;
  float _2751;
  float _2752;
  float _2753;
  int _2800;
  int _2801;
  float _2802;
  float _2803;
  float _2804;
  float _2805;
  float _2835;
  float _2836;
  float _2837;
  float _2838;
  float _2956;
  float _2957;
  float _2958;
  float _2980;
  float _2981;
  float _2982;
  float _2983;
  float _3065;
  float _3103;
  float _3104;
  float _3105;
  float _3120;
  float _3121;
  float _3122;
  float _3123;
  float _3175;
  float _3267;
  float _3268;
  float _3269;
  float _3338;
  float _3339;
  float _3340;
  float _3341;
  float _3342;
  half _3343;
  half _3344;
  half _3345;
  float _3346;
  float _3347;
  float _3348;
  float _3349;
  float _3494;
  float _3495;
  float _3496;
  float _3599;
  float _3600;
  float _3601;
  float _3602;
  float _3740;
  float _3741;
  float _3742;
  float _3743;
  float _3744;
  int _3775;
  int _3776;
  float _3777;
  float _3778;
  float _3779;
  float _3780;
  int _3811;
  int _3812;
  float _3813;
  float _3814;
  float _3815;
  float _3816;
  float _3846;
  float _3847;
  float _3848;
  float _3849;
  float _3861;
  float _3862;
  float _3863;
  float _3882;
  float _3941;
  float _3988;
  float _4036;
  float _4095;
  float _4096;
  float _4097;
  float _4186;
  float _4187;
  float _4188;
  float _4213;
  float _4214;
  float _4215;
  float _4216;
  int _4227;
  float _4326;
  float _4352;
  float _4353;
  float _4354;
  float _4411;
  float _4412;
  float _4413;
  float _182;
  float _183;
  float _184;
  float _185;
  float _187;
  float _188;
  float _189;
  float _190;
  bool _191;
  float _192;
  float4 _198;
  float4 _204;
  float _210;
  float _212;
  float _214;
  float _216;
  float _217;
  float _218;
  float _219;
  float _220;
  float _221;
  float _222;
  int _224;
  float _225;
  float _226;
  float _227;
  float _228;
  float _229;
  float _230;
  float4 _234;
  float4 _240;
  int _250;
  int _256;
  int _262;
  int _287;
  float _291;
  float _292;
  float _293;
  float _300;
  float _303;
  float _306;
  float _309;
  float4 _313;
  float4 _319;
  int _329;
  int _335;
  int _341;
  int _366;
  float4 _374;
  float4 _380;
  int _390;
  int _396;
  int _402;
  int _427;
  int _430;
  int _431;
  int _432;
  bool _442;
  float _453;
  float4 _457;
  float4 _463;
  int _474;
  int _481;
  int _488;
  int _513;
  int _516;
  int _529;
  uint _532;
  int _533;
  bool _534;
  int _541;
  int _544;
  int _552;
  bool _553;
  int _564;
  bool _566;
  int _572;
  uint _583;
  int _589;
  uint _593;
  float _595;
  float4 _597;
  int _611;
  int _614;
  int _616;
  int16_t _618;
  half _622;
  half _623;
  half _624;
  float _626;
  float _629;
  float _632;
  float _641;
  float _650;
  float _659;
  float _663;
  float _668;
  float _673;
  float _675;
  bool _677;
  float _678;
  float _679;
  float _680;
  float _684;
  float _701;
  float _717;
  float _733;
  bool _734;
  float _735;
  float _736;
  float _737;
  float _740;
  float _743;
  float _746;
  float _747;
  float _749;
  float _751;
  float _753;
  float _755;
  float _763;
  float _816;
  bool _820;
  float _829;
  float _838;
  float _847;
  float _848;
  int _849;
  float _858;
  float _880;
  float _881;
  float _882;
  float _883;
  float _884;
  float _887;
  float _888;
  float _890;
  float _892;
  float _894;
  float _908;
  bool _940;
  float _955;
  float _957;
  float _959;
  float _971;
  float _980;
  float _989;
  float _998;
  float _1000;
  float _1002;
  uint2 _1016;
  float _1023;
  float4 _1054;
  float _1065;
  float _1071;
  float _1077;
  float _1079;
  float _1080;
  float _1081;
  float _1082;
  float _1088;
  float _1090;
  float _1098;
  float _1106;
  uint2 _1135;
  float _1142;
  float4 _1163;
  float _1174;
  float _1180;
  float _1186;
  float _1188;
  float _1197;
  float _1199;
  float _1207;
  float _1215;
  float4 _1235;
  float4 _1241;
  int _1251;
  int _1257;
  int _1263;
  int _1288;
  float _1311;
  float _1314;
  float _1315;
  float _1328;
  float _1329;
  float _1330;
  float _1332;
  float _1334;
  float _1336;
  float _1338;
  float _1340;
  float _1342;
  float _1347;
  float _1373;
  float4 _1377;
  float4 _1383;
  int _1393;
  int _1399;
  int _1405;
  int _1430;
  float _1436;
  float _1438;
  float _1440;
  bool _1441;
  bool _1442;
  bool _1443;
  float _1445;
  float _1447;
  float _1449;
  bool _1450;
  bool _1451;
  bool _1452;
  float4 _1465;
  float4 _1471;
  float _1479;
  float _1483;
  float _1487;
  int _1506;
  float _1513;
  float _1516;
  float _1517;
  float _1519;
  float _1524;
  float _1529;
  float _1533;
  float _1534;
  float _1535;
  float _1536;
  int _1538;
  int _1540;
  int _1542;
  uint4 _1549;
  float _1557;
  float _1559;
  float _1561;
  float _1563;
  float _1626;
  float _1628;
  float _1635;
  float _1647;
  float _1649;
  float _1650;
  float _1672;
  float _1678;
  float _1697;
  float _1698;
  float _1700;
  float _1702;
  float _1704;
  int _1705;
  int _1725;
  float _1730;
  float _1732;
  float _1734;
  float _1736;
  float4 _1742;
  float4 _1748;
  int _1758;
  int _1764;
  int _1770;
  int _1795;
  int _1798;
  int _1799;
  int _1800;
  bool _1810;
  float _1820;
  float4 _1824;
  float4 _1830;
  int _1841;
  int _1848;
  int _1855;
  int _1880;
  int _1883;
  int _1896;
  uint _1899;
  int _1900;
  bool _1901;
  int _1908;
  int _1911;
  int _1919;
  bool _1920;
  int _1931;
  bool _1933;
  int _1939;
  uint _1950;
  int _1956;
  uint _1960;
  float _1962;
  float4 _1964;
  float _1968;
  float _1969;
  float _1970;
  int _1978;
  int _1981;
  int _1983;
  int16_t _1985;
  half _1989;
  half _1990;
  half _1991;
  float _1993;
  float _1996;
  float _1999;
  float _2008;
  float _2017;
  float _2026;
  float _2030;
  float _2035;
  float _2040;
  float _2042;
  bool _2044;
  float _2045;
  float _2046;
  float _2047;
  float _2051;
  float _2068;
  float _2084;
  float _2100;
  float _2104;
  float _2108;
  float _2112;
  float _2113;
  float _2115;
  float _2117;
  float _2119;
  float _2121;
  float _2129;
  float _2182;
  float _2190;
  float _2198;
  float _2206;
  float _2207;
  int _2208;
  float _2217;
  float _2244;
  float _2248;
  float _2252;
  float _2256;
  float _2258;
  float _2259;
  float _2272;
  bool _2273;
  float _2289;
  float _2290;
  float _2293;
  float _2314;
  float _2318;
  float _2319;
  float _2321;
  float _2323;
  float _2325;
  float _2339;
  float _2350;
  float _2361;
  half4 _2388;
  float _2401;
  float _2403;
  float _2405;
  float _2408;
  float _2410;
  float _2412;
  float _2424;
  float _2432;
  float _2435;
  float _2436;
  bool _2444;
  float _2447;
  float _2449;
  float _2451;
  float _2463;
  float _2471;
  bool _2479;
  float _2481;
  float _2483;
  float _2501;
  int _2503;
  float _2508;
  float _2510;
  int _2512;
  int _2514;
  uint _2515;
  uint _2516;
  half4 _2526;
  int _2549;
  float4 _2551;
  float4 _2557;
  float4 _2563;
  float4 _2569;
  float _2574;
  float _2575;
  float _2576;
  float _2577;
  float _2580;
  float _2584;
  float _2588;
  float _2592;
  float _2595;
  float _2599;
  float _2602;
  float _2605;
  float _2610;
  float _2615;
  float _2620;
  float _2626;
  float _2632;
  float _2638;
  float _2641;
  float _2644;
  float _2647;
  float _2649;
  float _2650;
  float _2651;
  float _2652;
  float _2653;
  float _2657;
  float _2661;
  float _2665;
  float _2672;
  float _2709;
  float _2717;
  float _2725;
  float _2728;
  float _2729;
  bool _2740;
  float _2765;
  float _2773;
  float _2781;
  bool _2792;
  int _2812;
  int _2816;
  uint _2817;
  uint _2818;
  uint _2839;
  float4 _2841;
  float4 _2847;
  float4 _2853;
  float4 _2859;
  float _2864;
  float _2865;
  float _2866;
  float _2867;
  float _2870;
  float _2874;
  float _2878;
  float _2882;
  float _2885;
  float _2889;
  float _2892;
  float _2895;
  float _2900;
  float _2905;
  float _2910;
  float _2916;
  float _2922;
  float _2928;
  float _2931;
  float _2934;
  float _2937;
  float _2939;
  float _2964;
  float _2986;
  float _2988;
  float _2990;
  float _2991;
  float _2992;
  float _2993;
  float _3005;
  float _3013;
  float _3021;
  float _3034;
  float4 _3037;
  float _3042;
  float _3044;
  float _3046;
  float _3051;
  float _3066;
  half _3067;
  half _3068;
  half _3069;
  half _3074;
  half _3079;
  half _3084;
  bool _3087;
  bool _3094;
  float _3099;
  float _3100;
  float _3101;
  float _3126;
  float _3132;
  float _3136;
  float _3139;
  float _3143;
  float _3144;
  float _3145;
  float _3146;
  float _3152;
  float2 _3186;
  float _3194;
  float _3195;
  float _3205;
  float _3211;
  float _3216;
  float _3220;
  float _3224;
  float _3228;
  float _3232;
  float _3240;
  float _3252;
  float _3255;
  float _3261;
  float _3276;
  float _3288;
  float _3291;
  float _3298;
  float _3304;
  float _3310;
  float _3316;
  float _3318;
  bool _3323;
  float _3324;
  float _3325;
  float _3326;
  float _3327;
  half _3330;
  half _3331;
  half _3332;
  float _3354;
  float _3359;
  float _3363;
  float _3364;
  float _3365;
  float _3366;
  float _3368;
  float _3369;
  float _3370;
  float _3371;
  float _3372;
  float _3373;
  float _3374;
  float _3377;
  float _3379;
  float _3384;
  float _3385;
  float _3387;
  float _3390;
  float _3391;
  float _3393;
  float _3394;
  float _3395;
  float _3396;
  float _3400;
  float _3412;
  float _3431;
  float _3446;
  float _3465;
  float _3466;
  float _3471;
  float _3472;
  float _3474;
  float _3476;
  float _3478;
  float _3498;
  float _3499;
  float _3500;
  float _3501;
  float _3503;
  float _3505;
  float _3507;
  float _3509;
  float _3511;
  float _3513;
  float _3517;
  float _3521;
  bool _3529;
  float _3531;
  float _3533;
  float _3535;
  float _3539;
  float _3543;
  bool _3551;
  float _3553;
  float _3555;
  float _3557;
  float _3567;
  int _3569;
  float _3574;
  float _3576;
  int _3578;
  int _3580;
  uint _3581;
  uint _3582;
  int _3603;
  float4 _3605;
  float4 _3611;
  float4 _3617;
  float4 _3623;
  float _3628;
  float _3629;
  float _3630;
  float _3631;
  float _3634;
  float _3638;
  float _3642;
  float _3646;
  float _3649;
  float _3653;
  float _3656;
  float _3659;
  float _3664;
  float _3669;
  float _3674;
  float _3680;
  float _3686;
  float _3692;
  float _3695;
  float _3698;
  float _3701;
  float _3703;
  float _3704;
  float _3711;
  float _3715;
  float _3719;
  float _3726;
  float _3748;
  float _3752;
  float _3756;
  bool _3767;
  float _3784;
  float _3788;
  float _3792;
  bool _3803;
  int _3823;
  int _3827;
  uint _3828;
  uint _3829;
  float _3869;
  float _3883;
  float _3884;
  float _3885;
  float _3889;
  float _3893;
  float _3897;
  float _3910;
  float4 _3913;
  float _3918;
  float _3920;
  float _3922;
  float _3927;
  uint4 _3952;
  float _3958;
  float _3961;
  float _3965;
  float _3966;
  float _3967;
  float _3968;
  float _3989;
  float _3991;
  float _3992;
  float _3998;
  float _4002;
  float _4006;
  float _4007;
  float _4013;
  float2 _4045;
  float _4048;
  float _4052;
  float _4056;
  float _4060;
  float _4064;
  float _4070;
  float _4080;
  float _4083;
  float _4089;
  float _4100;
  float _4112;
  float _4119;
  float _4125;
  float _4131;
  float _4137;
  float _4145;
  float _4192;
  float _4194;
  float _4196;
  float _4197;
  float _4198;
  float _4199;
  float4 _4229;
  float4 _4235;
  int _4245;
  int _4251;
  int _4257;
  int _4282;
  float _4290;
  float _4298;
  float _4329;
  bool _4330;
  float4 _4338;
  float _4357;
  float _4362;
  float4 _4365;
  float _4371;
  float _4372;
  float _4373;
  float _4374;
  float _4375;
  float _4380;
  float _4381;
  float _4385;
  float _4391;
  float _4396;
  float _4401;
  float _4406;
  int __loop_jump_target = -1;
  int _51[4];
  _54 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 3))]);
  _51[0] = _54.x;
  _51[1] = _54.y;
  _51[2] = _54.z;
  _51[3] = _54.w;
  _66 = _51[(((uint)(SV_GroupID.x) >> 1) & 3)];
  _70 = select((((int)(SV_GroupID.x) & 1) == 0), _66, ((uint)((uint)(_66)) >> 16));
  _73 = (uint)((uint)(((int)((uint)((uint)(_70)) << 4)) & 4080)) + (uint)(SV_GroupThreadID.x);
  _76 = (uint)((uint)(((uint)((uint)(_70)) >> 4) & 4080)) + (uint)(SV_GroupThreadID.y);
  _77 = (float)((uint)((uint)(_73)));
  _78 = (float)((uint)((uint)(_76)));
  _84 = ((_bufferSizeAndInvSize.z * 4.0f) * (_77 + 0.5f)) + -1.0f;
  _89 = 1.0f - ((_bufferSizeAndInvSize.w * 4.0f) * (_78 + 0.5f));
  _91 = __3__36__0__0__g_normalDepth.Load(int3(_73, _76, 0));  // [sem: _3__36__0__0__g_normalDepth_load]
  _95 = ((uint)((uint)(_91.y)) >> 24) & 127;  // [sem: _3__36__0__0__g_normalDepth_load_derived]
  _100 = min(1.0f, ((((float)((uint)((uint)(_91.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepth_load_derived]
  _106 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_91.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepth_load_derived]
  _112 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_91.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepth_load_derived]
  _114 = rsqrt(dot(float3(_100, _106, _112), float3(_100, _106, _112)));  // [sem: invLength]
  _115 = _114 * _100;
  _116 = _114 * _106;
  _117 = _114 * _112;
  _121 = max(1e-07f, (((float)((uint)((uint)(_91.y & 16777215)))) * 5.960465e-08f));  // [sem: _3__36__0__0__g_normalDepth_load_derived]
  _133 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _121, mad((_invViewProjRelative[3].y), _89, ((_invViewProjRelative[3].x) * _84)));
  _142 = (mad((_invViewProjRelative[0].z), _121, mad((_invViewProjRelative[0].y), _89, ((_invViewProjRelative[0].x) * _84))) + (_invViewProjRelative[0].w)) / _133;
  _151 = (mad((_invViewProjRelative[1].z), _121, mad((_invViewProjRelative[1].y), _89, ((_invViewProjRelative[1].x) * _84))) + (_invViewProjRelative[1].w)) / _133;
  _160 = (mad((_invViewProjRelative[2].z), _121, mad((_invViewProjRelative[2].y), _89, ((_invViewProjRelative[2].x) * _84))) + (_invViewProjRelative[2].w)) / _133;
  _163 = _nearFarProj.x / _121;
  _169 = (float)((uint)((uint)(((int)((uint)((uint)((uint)((uint)(_frameNumber.x)) >> 2)) * (uint)(71))) & 31)));
  if (!((uint)_95 > (uint)11) || !(((uint)_95 < (uint)20) || (_95 == 107))) {
    _179 = ((int)(uint)((int)(_95 == 20)));
  } else {
    _179 = 1;
  }
  _182 = __3__38__0__1__g_raytracingHitResultUAV[int2(_73, _76)].x;
  _183 = __3__38__0__1__g_raytracingHitResultUAV[int2(_73, _76)].y;
  _184 = __3__38__0__1__g_raytracingHitResultUAV[int2(_73, _76)].z;
  _185 = __3__38__0__1__g_raytracingHitResultUAV[int2(_73, _76)].w;
  _187 = rsqrt(dot(float3(_182, _183, _184), float3(_182, _183, _184)));  // [sem: invLength]
  _188 = _187 * _182;
  _189 = _187 * _183;
  _190 = _187 * _184;
  _191 = (_185 < 0.0f);
  _192 = abs(_185);
  if ((_192 > 0.0f) && (_192 < 10000.0f)) {
    _198 = __3__36__0__0__g_raytracingBaseColor.Load(int3(_73, _76, 0));  // [sem: _3__36__0__0__g_raytracingBaseColor_load]
    _204 = __3__36__0__0__g_raytracingNormal.Load(int3(_73, _76, 0));  // [sem: _3__36__0__0__g_raytracingNormal_load]
    _210 = (_204.x * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_raytracingNormal_load_derived]
    _212 = (_204.y * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_raytracingNormal_load_derived]
    _214 = (_204.z * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_raytracingNormal_load_derived]
    _216 = rsqrt(dot(float3(_210, _212, _214), float3(_210, _212, _214)));  // [sem: invLength]
    _217 = _210 * _216;
    _218 = _212 * _216;
    _219 = _214 * _216;
    _220 = select(_191, 0.0f, _217);
    _221 = select(_191, 0.0f, _218);
    _222 = select(_191, 0.0f, _219);
    _224 = (int)(uint)((int)(_198.w > 0.0f));  // [sem: _3__36__0__0__g_raytracingBaseColor_load_derived]
    _225 = _188 * _192;
    _226 = _189 * _192;
    _227 = _190 * _192;
    _228 = _225 + _142;
    _229 = _226 + _151;
    _230 = _227 + _160;
    _232 = 0;
    while(true) {
      _234 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_232) + (int)(20)))];
      _240 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_232) + (int)(36)))];
      _250 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _228) * _234.w) + _240.x));
      _256 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _229) * _234.w) + _240.y));
      _262 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _230) * _234.w) + _240.z));
      if (((int)_250 < (int)((int)(_234.x + -63.0f))) || !((int)_250 < (int)((int)(_234.x + 63.0f))) || ((int)_256 < (int)((int)(_234.y + -31.0f))) || !((int)_256 < (int)((int)(_234.y + 31.0f))) || ((int)_262 < (int)((int)(_234.z + -63.0f))) || !((int)_262 < (int)((int)(_234.z + 63.0f)))) {
        _287 = (int)(_232) + (int)(1);
        if ((uint)_287 < (uint)8) {
          _232 = _287;
          continue;
        } else {
          _290 = -10000;
        }
      } else {
        _290 = _232;
      }
      _291 = -0.0f - _188;
      _292 = -0.0f - _189;
      _293 = -0.0f - _190;
      _300 = min(_192, (((float)((int)((int)((uint)(1) << (_290 & 31))))) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x));
      _303 = (_300 * select(_191, _291, _217)) + _228;
      _306 = (_300 * select(_191, _292, _218)) + _229;
      _309 = (_300 * select(_191, _293, _219)) + _230;
      _311 = 0;
      while(true) {
        _313 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_311) + (int)(20)))];
        _319 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_311) + (int)(36)))];
        _329 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _303) * _313.w) + _319.x));
        _335 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _306) * _313.w) + _319.y));
        _341 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _309) * _313.w) + _319.z));
        if (((int)_329 < (int)((int)(_313.x + -63.0f))) || ((!((int)_329 < (int)((int)(_313.x + -63.0f)))) && (!((int)_329 < (int)((int)(_313.x + 63.0f))))) || (((!((int)_329 < (int)((int)(_313.x + -63.0f)))) && ((int)_329 < (int)((int)(_313.x + 63.0f)))) && ((int)_335 < (int)((int)(_313.y + -31.0f)))) || ((((!((int)_329 < (int)((int)(_313.x + -63.0f)))) && ((int)_329 < (int)((int)(_313.x + 63.0f)))) && (!((int)_335 < (int)((int)(_313.y + -31.0f))))) && (!((int)_335 < (int)((int)(_313.y + 31.0f))))) || (((((!((int)_329 < (int)((int)(_313.x + -63.0f)))) && ((int)_329 < (int)((int)(_313.x + 63.0f)))) && (!((int)_335 < (int)((int)(_313.y + -31.0f))))) && ((int)_335 < (int)((int)(_313.y + 31.0f)))) && ((int)_341 < (int)((int)(_313.z + -63.0f)))) || ((((((!((int)_329 < (int)((int)(_313.x + -63.0f)))) && ((int)_329 < (int)((int)(_313.x + 63.0f)))) && (!((int)_335 < (int)((int)(_313.y + -31.0f))))) && ((int)_335 < (int)((int)(_313.y + 31.0f)))) && (!((int)_341 < (int)((int)(_313.z + -63.0f))))) && (!((int)_341 < (int)((int)(_313.z + 63.0f)))))) {
          _366 = (int)(_311) + (int)(1);
          if ((uint)_366 < (uint)8) {
            _311 = _366;
            continue;
          } else {
            _926 = _192;
            _927 = 1.0f;
            _928 = 0.0f;
            _929 = 0.0f;
            _930 = 0.0f;
            _931 = _224;
            _932 = _198.w;
            _933 = _198.z;
            _934 = _198.y;
            _935 = _198.x;
            _936 = _204.w;
            _937 = _222;
            _938 = _221;
            _939 = _220;
          }
        } else {
          if ((int)_311 < (int)4) {
            _372 = 0;
            while(true) {
              _374 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_372) + (int)(20)))];
              _380 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_372) + (int)(36)))];
              _390 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _303) * _374.w) + _380.x));
              _396 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _306) * _374.w) + _380.y));
              _402 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _309) * _374.w) + _380.z));
              if (((int)_390 < (int)((int)(_374.x + -63.0f))) || ((!((int)_390 < (int)((int)(_374.x + -63.0f)))) && (!((int)_390 < (int)((int)(_374.x + 63.0f))))) || (((!((int)_390 < (int)((int)(_374.x + -63.0f)))) && ((int)_390 < (int)((int)(_374.x + 63.0f)))) && ((int)_396 < (int)((int)(_374.y + -31.0f)))) || ((((!((int)_390 < (int)((int)(_374.x + -63.0f)))) && ((int)_390 < (int)((int)(_374.x + 63.0f)))) && (!((int)_396 < (int)((int)(_374.y + -31.0f))))) && (!((int)_396 < (int)((int)(_374.y + 31.0f))))) || (((((!((int)_390 < (int)((int)(_374.x + -63.0f)))) && ((int)_390 < (int)((int)(_374.x + 63.0f)))) && (!((int)_396 < (int)((int)(_374.y + -31.0f))))) && ((int)_396 < (int)((int)(_374.y + 31.0f)))) && ((int)_402 < (int)((int)(_374.z + -63.0f)))) || ((((((!((int)_390 < (int)((int)(_374.x + -63.0f)))) && ((int)_390 < (int)((int)(_374.x + 63.0f)))) && (!((int)_396 < (int)((int)(_374.y + -31.0f))))) && ((int)_396 < (int)((int)(_374.y + 31.0f)))) && (!((int)_402 < (int)((int)(_374.z + -63.0f))))) && (!((int)_402 < (int)((int)(_374.z + 63.0f)))))) {
                _427 = (int)(_372) + (int)(1);
                if ((uint)_427 < (uint)8) {
                  _372 = _427;
                  continue;
                } else {
                  _874 = 0.0f;
                  _875 = 0.0f;
                  _876 = 0.0f;
                }
              } else {
                _430 = _390 & 127;
                _431 = _396 & 63;
                _432 = _402 & 127;
                if (!((uint)_372 > (uint)5)) {
                  _442 = (((((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_430, _431, ((int)((uint)((uint)(_432)) + (uint)((uint)((int)((int)((uint)((uint)(_372)) * (uint)(130))) | (int)(1))))), 0)))).x) & 4194303) == 0);
                  [branch]
                  if (_442) {
                    _445 = -10000;
                    _446 = -10000;
                    _447 = -10000;
                    _448 = -10000;
                  } else {
                    _445 = _372;
                    _446 = _432;
                    _447 = _431;
                    _448 = _430;
                  }
                  _453 = (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 0.5f) * ((float)((int)((int)((uint)(1) << (_372 & 31)))));
                  _455 = 0;
                  while(true) {
                    _457 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_455) + (int)(20)))];
                    _463 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_455) + (int)(36)))];
                    _474 = (int)(floor((((_303 - _453) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x) * _457.w) + _463.x));
                    _481 = (int)(floor((((_306 - _453) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y) * _457.w) + _463.y));
                    _488 = (int)(floor((((_309 - _453) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z) * _457.w) + _463.z));
                    if (((int)_474 < (int)((int)(_457.x + -63.0f))) || ((!((int)_474 < (int)((int)(_457.x + -63.0f)))) && (!((int)_474 < (int)((int)(_457.x + 63.0f))))) || (((!((int)_474 < (int)((int)(_457.x + -63.0f)))) && ((int)_474 < (int)((int)(_457.x + 63.0f)))) && ((int)_481 < (int)((int)(_457.y + -31.0f)))) || ((((!((int)_474 < (int)((int)(_457.x + -63.0f)))) && ((int)_474 < (int)((int)(_457.x + 63.0f)))) && (!((int)_481 < (int)((int)(_457.y + -31.0f))))) && (!((int)_481 < (int)((int)(_457.y + 31.0f))))) || (((((!((int)_474 < (int)((int)(_457.x + -63.0f)))) && ((int)_474 < (int)((int)(_457.x + 63.0f)))) && (!((int)_481 < (int)((int)(_457.y + -31.0f))))) && ((int)_481 < (int)((int)(_457.y + 31.0f)))) && ((int)_488 < (int)((int)(_457.z + -63.0f)))) || ((((((!((int)_474 < (int)((int)(_457.x + -63.0f)))) && ((int)_474 < (int)((int)(_457.x + 63.0f)))) && (!((int)_481 < (int)((int)(_457.y + -31.0f))))) && ((int)_481 < (int)((int)(_457.y + 31.0f)))) && (!((int)_488 < (int)((int)(_457.z + -63.0f))))) && (!((int)_488 < (int)((int)(_457.z + 63.0f)))))) {
                      _513 = (int)(_455) + (int)(1);
                      if ((uint)_513 < (uint)8) {
                        _455 = _513;
                        continue;
                      } else {
                        _874 = 0.0f;
                        _875 = 0.0f;
                        _876 = 0.0f;
                      }
                    } else {
                      _516 = _474 & 127;
                      if (!((uint)_455 > (uint)5)) {
                        if (_442) {
                          _523 = _448;
                          _524 = _447;
                          _525 = _446;
                          _526 = _445;
                          _527 = 0;
                          _528 = 0;
                          while(true) {
                            _529 = (int)(_528) + (int)(_488 & 127);
                            _532 = (uint)((uint)(_529)) + (uint)((uint)((int)((int)((uint)((uint)(_455)) * (uint)(130))) | (int)(1)));
                            _533 = (int)(_527) + (int)(_481 & 63);
                            _534 = ((uint)_533 > (uint)63);
                            if ((_534 || ((uint)_529 > (uint)127)) || (((((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_516, _533, _532, 0)))).x) & 4194303) == 0)) {
                              _544 = (int)(_516) + (int)(1);
                              if (!(_534 || ((uint)((int)(_529) | (int)(_544)) > (uint)127))) {
                                _552 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_544, _533, _532, 0)))).x) & 4194303;
                                _553 = (_552 != 0);
                                _559 = _552;
                                _560 = select(_553, _455, _526);
                                _561 = select(_553, _529, _525);
                                _562 = select(_553, _533, _524);
                                _563 = select(_553, _544, _523);
                              } else {
                                _559 = 0;
                                _560 = _526;
                                _561 = _525;
                                _562 = _524;
                                _563 = _523;
                              }
                            } else {
                              _559 = _541;
                              _560 = _455;
                              _561 = _529;
                              _562 = _533;
                              _563 = _516;
                            }
                            _564 = (int)(_527) + (int)(1);
                            _566 = (_559 == 0);
                            if (((int)_564 < (int)2) && _566) {
                              _569 = _564;
                              _570 = _528;
                              while(true) {
                                _523 = _563;
                                _524 = _562;
                                _525 = _561;
                                _526 = _560;
                                _527 = _569;
                                _528 = _570;
                                __loop_jump_target = 522;
                                break;
                                break;
                              }
                              if (__loop_jump_target == 522) {
                                __loop_jump_target = -1;
                                continue;
                              }
                              if (__loop_jump_target != -1) {
                                break;
                              }
                            }
                            _572 = (int)(_528) + (int)(1);
                            if (((int)_572 < (int)2) && _566) {
                              _569 = 0;
                              _570 = _572;
                              while(true) {
                                _523 = _563;
                                _524 = _562;
                                _525 = _561;
                                _526 = _560;
                                _527 = _569;
                                _528 = _570;
                                __loop_jump_target = 522;
                                break;
                                break;
                              }
                              if (__loop_jump_target == 522) {
                                __loop_jump_target = -1;
                                continue;
                              }
                              if (__loop_jump_target != -1) {
                                break;
                              }
                            }
                            _577 = _563;
                            _578 = _562;
                            _579 = _561;
                            _580 = _560;
                            break;
                          }
                        } else {
                          _577 = _448;
                          _578 = _447;
                          _579 = _446;
                          _580 = _445;
                        }
                        if ((uint)_580 < (uint)6) {
                          _583 = (uint)((uint)(_580)) * (uint)(130);
                          _589 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_577, _578, ((int)((uint)((uint)((int)(_583) | (int)(1))) + (uint)((uint)(_579)))), 0)))).x) & 4194303;
                          [branch]
                          if (!(_589 == 0)) {
                            _593 = (uint)(1) << (_580 & 31);
                            _595 = ((float)((int)(_593))) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                            _597 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((uint)((uint)((uint)(_580)) + (uint)(20)))];
                            _602 = 0;
                            _603 = 0.0f;
                            _604 = _222;
                            _605 = _221;
                            _606 = _220;
                            _607 = 0.0f;
                            _608 = 0.0f;
                            _609 = 0.0f;
                            while(true) {
                              _611 = (int)((int)(_589) + (int)(-1)) + (int)(_602);
                              _614 = __3__37__0__0__g_surfelDataBuffer[_611]._baseColor;
                              _616 = __3__37__0__0__g_surfelDataBuffer[_611]._normal;
                              _618 = __3__37__0__0__g_surfelDataBuffer[_611]._radius;
                              if (!(_614 == 0)) {
                                _622 = __3__37__0__0__g_surfelDataBuffer[_611]._radiance.z;
                                _623 = __3__37__0__0__g_surfelDataBuffer[_611]._radiance.y;
                                _624 = __3__37__0__0__g_surfelDataBuffer[_611]._radiance.x;
                                _626 = (float)((uint)((uint)(_614 & 255)));
                                _629 = (float)((uint)((uint)(((uint)((uint)(_614)) >> 8) & 255)));
                                _632 = (float)((uint)((uint)(((uint)((uint)(_614)) >> 16) & 255)));
                                _641 = select(((_626 * 0.003921569f) < 0.04045f), (_626 * 0.000303527f), exp2(log2((_626 * 0.003717127f) + 0.052132703f) * 2.4f));
                                _650 = select(((_629 * 0.003921569f) < 0.04045f), (_629 * 0.000303527f), exp2(log2((_629 * 0.003717127f) + 0.052132703f) * 2.4f));
                                _659 = select(((_632 * 0.003921569f) < 0.04045f), (_632 * 0.000303527f), exp2(log2((_632 * 0.003717127f) + 0.052132703f) * 2.4f));
                                _663 = (((float)((uint)((uint)(_616 & 255)))) * 0.007874016f) + -1.0f;
                                _668 = (((float)((uint)((uint)(((uint)((uint)(_616)) >> 8) & 255)))) * 0.007874016f) + -1.0f;
                                _673 = (((float)((uint)((uint)(((uint)((uint)(_616)) >> 16) & 255)))) * 0.007874016f) + -1.0f;
                                _675 = rsqrt(dot(float3(_663, _668, _673), float3(_663, _668, _673)));  // [sem: invLength]
                                _677 = ((_616 & 16777215) == 0);
                                _678 = float(_624);
                                _679 = float(_623);
                                _680 = float(_622);
                                _684 = (_595 * 0.0019607844f) * ((float)((uint16_t)((int16_t)(_618 & 255))));
                                _701 = ((((_597.x + -63.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_577)) + (uint)(64)) - (uint)((uint)((int)(_597.x))))) & 127)))) * _595) - _viewPos.x) + (((((float)((uint)((uint)((uint)((uint)(_614)) >> 24)))) * 0.003937008f) + -0.5f) * _595);
                                _717 = ((((_597.y + -31.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_578)) + (uint)(32)) - (uint)((uint)((int)(_597.y))))) & 63)))) * _595) - _viewPos.y) + (((((float)((uint)((uint)((uint)((uint)(_616)) >> 24)))) * 0.003937008f) + -0.5f) * _595);
                                _733 = ((((_597.z + -63.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_579)) + (uint)(64)) - (uint)((uint)((int)(_597.z))))) & 127)))) * _595) - _viewPos.z) + (((((float)((uint16_t)((int16_t)((uint16_t)(_618) >> 8)))) * 0.003937008f) + -0.5f) * _595);
                                _734 = (_204.w == 0.0f);  // [sem: _3__36__0__0__g_raytracingNormal_load_derived]
                                _735 = select(_734, _291, _606);
                                _736 = select(_734, _292, _605);
                                _737 = select(_734, _293, _604);
                                _740 = ((-0.0f - _142) - _225) + _701;
                                _743 = ((-0.0f - _151) - _226) + _717;
                                _746 = ((-0.0f - _160) - _227) + _733;
                                _747 = dot(float3(_740, _743, _746), float3(_735, _736, _737));
                                _749 = _740 - (_747 * _735);
                                _751 = _743 - (_747 * _736);
                                _753 = _746 - (_747 * _737);
                                _755 = 1.0f / ((float)((uint)((uint)(_593))));
                                _763 = frac(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _733) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z) * _755);
                                _816 = select(((int)_580 > (int)5), 1.0f, ((((float)((bool)(dot(float3(_749, _751, _753), float3(_749, _751, _753)) < ((_684 * _684) * 64.0f)))) * saturate((saturate(dot(float3(_291, _292, _293), float3(select(_677, _291, (_675 * _663)), select(_677, _292, (_675 * _668)), select(_677, _293, (_675 * _673))))) + -0.03125f) * 1.032258f)) * ((float)((bool)(((__3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _701) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _755), (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _717) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y) * _755), (((((float)((uint)((uint)(_583)))) + 1.0f) + ((select((_763 < 0.0f), 1.0f, 0.0f) + _763) * 128.0f)) * 0.00096153846f)), 0.0f)).x) > ((_595 * 0.25f) * (saturate((dot(float3(_678, _679, _680), float3(0.212671f, 0.71516f, 0.072169f)) * 0.0001f) / _exposure3.w) + 1.0f)))))));
                                _820 = (!(_198.w > 0.0f)) || ((_614 & 16777215) == 16777215);
                                _829 = ((select(_820, (((_650 * 0.33951f) + (_641 * 0.61312f)) + (_659 * 0.04737f)), _198.x) * _678) * _816) + _609;
                                _838 = ((select(_820, (((_650 * 0.91636f) + (_641 * 0.0702f)) + (_659 * 0.01345f)), _198.y) * _679) * _816) + _608;
                                _847 = ((select(_820, (((_650 * 0.10958f) + (_641 * 0.02062f)) + (_659 * 0.8698f)), _198.z) * _680) * _816) + _607;
                                _848 = _816 + _603;
                                _849 = (int)(_602) + (int)(1);
                                if ((uint)_849 < (uint)4) {
                                  _602 = _849;
                                  _603 = _848;
                                  _604 = _737;
                                  _605 = _736;
                                  _606 = _735;
                                  _607 = _847;
                                  _608 = _838;
                                  _609 = _829;
                                  continue;
                                } else {
                                  _852 = _848;
                                  _853 = _847;
                                  _854 = _838;
                                  _855 = _829;
                                }
                              } else {
                                _852 = _603;
                                _853 = _607;
                                _854 = _608;
                                _855 = _609;
                              }
                              if (_852 > 0.0f) {
                                _858 = 1.0f / _852;
                                _874 = (-0.0f - min(0.0f, (-0.0f - (_853 * _858))));
                                _875 = (-0.0f - min(0.0f, (-0.0f - (_854 * _858))));
                                _876 = (-0.0f - min(0.0f, (-0.0f - (_855 * _858))));
                              } else {
                                _874 = _853;
                                _875 = _854;
                                _876 = _855;
                              }
                              break;
                            }
                          } else {
                            _874 = 0.0f;
                            _875 = 0.0f;
                            _876 = 0.0f;
                          }
                        } else {
                          _874 = 0.0f;
                          _875 = 0.0f;
                          _876 = 0.0f;
                        }
                      } else {
                        _874 = 0.0f;
                        _875 = 0.0f;
                        _876 = 0.0f;
                      }
                    }
                    break;
                  }
                } else {
                  _874 = 0.0f;
                  _875 = 0.0f;
                  _876 = 0.0f;
                }
              }
              _880 = max(1e-06f, (_exposure3.w * 0.001f));
              _881 = max(_880, _876);
              _882 = max(_880, _875);
              _883 = max(_880, _874);
              _884 = dot(float3(_881, _882, _883), float3(0.212671f, 0.71516f, 0.072169f));
              _887 = min((max(0.0005f, _exposure3.w) * 512.0f), _884);
              _888 = max(1e-09f, _884);
              _890 = (_887 * _881) / _888;
              _892 = (_887 * _882) / _888;
              _894 = (_887 * _883) / _888;
              if (saturate(_204.w) == 0.0f) {
                _908 = (exp2((saturate(saturate(_198.w)) * 20.0f) + -8.0f) + -0.00390625f) * (1.0f / (((_192 * _192) * 0.1f) + 1.0f));
                _916 = ((_908 * _198.z) + _894);
                _917 = ((_908 * _198.y) + _892);
                _918 = ((_908 * _198.x) + _890);
              } else {
                _916 = _894;
                _917 = _892;
                _918 = _890;
              }
              _926 = _192;
              _927 = 1.0f;
              _928 = (_renderParams2.y * _916);
              _929 = (_renderParams2.y * _917);
              _930 = (_renderParams2.y * _918);
              _931 = _224;
              _932 = _198.w;
              _933 = _198.z;
              _934 = _198.y;
              _935 = _198.x;
              _936 = _204.w;
              _937 = _222;
              _938 = _221;
              _939 = _220;
              break;
            }
          } else {
            _926 = _192;
            _927 = 1.0f;
            _928 = 0.0f;
            _929 = 0.0f;
            _930 = 0.0f;
            _931 = _224;
            _932 = _198.w;
            _933 = _198.z;
            _934 = _198.y;
            _935 = _198.x;
            _936 = _204.w;
            _937 = _222;
            _938 = _221;
            _939 = _220;
          }
        }
        break;
      }
      break;
    }
  } else {
    _926 = 0.0f;
    _927 = 0.0f;
    _928 = 0.0f;
    _929 = 0.0f;
    _930 = 0.0f;
    _931 = 0;
    _932 = 0.0f;
    _933 = 0.0f;
    _934 = 0.0f;
    _935 = 0.0f;
    _936 = 0.0f;
    _937 = 0.0f;
    _938 = 0.0f;
    _939 = 0.0f;
  }
  _940 = (_926 > 0.0f);
  if (!(_940 || (!(_163 > (_lightingParams.z * 0.875f))))) {
    _953 = ((int)(uint)((int)(_163 < (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 11585.126f))));
  } else {
    _953 = 0;
  }
  _955 = (_926 * _188) + _142;
  _957 = (_926 * _189) + _151;
  _959 = (_926 * _190) + _160;
  _971 = (_viewProjRelativePrev[3].w) + mad((_viewProjRelativePrev[3].z), _959, mad((_viewProjRelativePrev[3].y), _957, ((_viewProjRelativePrev[3].x) * _955)));
  _980 = (mad((_viewProjRelativePrev[0].z), _959, mad((_viewProjRelativePrev[0].y), _957, ((_viewProjRelativePrev[0].x) * _955))) + (_viewProjRelativePrev[0].w)) / _971;
  _989 = (mad((_viewProjRelativePrev[1].z), _959, mad((_viewProjRelativePrev[1].y), _957, ((_viewProjRelativePrev[1].x) * _955))) + (_viewProjRelativePrev[1].w)) / _971;
  _998 = (mad((_viewProjRelativePrev[2].z), _959, mad((_viewProjRelativePrev[2].y), _957, ((_viewProjRelativePrev[2].x) * _955))) + (_viewProjRelativePrev[2].w)) / _971;
  _1000 = (_980 * 0.5f) + 0.5f;
  _1002 = 0.5f - (_989 * 0.5f);
  if (_191) {
    if (_940) {
      // [sem: _3__36__0__0__g_normalDepthPrev_load]
      _1016 = __3__36__0__0__g_normalDepthPrev.Load(int3(((int)(((_980 * 0.25f) + 0.25f) * _bufferSizeAndInvSize.x)), ((int)((0.25f - (_989 * 0.25f)) * _bufferSizeAndInvSize.y)), 0));
      _1023 = _nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1016.y & 16777215)))) * 5.960465e-08f));  // [sem: _3__36__0__0__g_normalDepthPrev_load_derived]
      if ((_1002 <= 1.0f) && ((_1002 >= 0.0f) && ((_1000 <= 1.0f) && ((_1000 >= 0.0f) && (_998 > 0.0f))))) {
        if ((_1023 - dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z))) > 0.0f) {
          if (abs(_1023 - _971) < max(0.5f, (_971 * 0.05f))) {
            _1054 = __3__36__0__0__g_sceneColor.SampleLevel(__3__40__0__0__g_samplerClamp, float2(_1000, _1002), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
            if (!(!(_1054.w >= 0.0f))) {
              _1065 = min(1.0f, ((((float)((uint)((uint)(_1016.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthPrev_load_derived]
              // [sem: _3__36__0__0__g_normalDepthPrev_load_derived]
              _1071 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1016.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));
              // [sem: _3__36__0__0__g_normalDepthPrev_load_derived]
              _1077 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1016.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));
              _1079 = rsqrt(dot(float3(_1065, _1071, _1077), float3(_1065, _1071, _1077)));  // [sem: invLength]
              _1080 = _1079 * _1065;
              _1081 = _1079 * _1071;
              _1082 = _1079 * _1077;
              _1088 = select((dot(float3((-0.0f - _188), (-0.0f - _189), (-0.0f - _190)), float3(_1080, _1081, _1082)) > 0.2f), 1.0f, 0.0f);
              _1090 = saturate(_163 * 0.01f);  // [sem: expr_sat]
              _1098 = _renderParams2.x * _renderParams2.x;
              _1106 = (((float)((bool)(abs(_nearFarProj.x - _1023) < (_1023 * 0.5f)))) * ((_1088 + _1090) - (_1088 * _1090))) * _1098;
              _1222 = 1;
              _1223 = _1098;
              _1224 = (_1106 * min(10000.0f, _1054.z));
              _1225 = (_1106 * min(10000.0f, _1054.y));
              _1226 = (_1106 * min(10000.0f, _1054.x));
              _1227 = 0.8f;
              _1228 = _1082;
              _1229 = _1081;
              _1230 = _1080;
              _1231 = ((_926 * 0.9999f) * _renderParams2.x);
            } else {
              _1222 = 0;
              _1223 = 0.0f;
              _1224 = 0.0f;
              _1225 = 0.0f;
              _1226 = 0.0f;
              _1227 = _936;
              _1228 = _937;
              _1229 = _938;
              _1230 = _939;
              _1231 = _926;
            }
          } else {
            _1222 = 0;
            _1223 = 0.0f;
            _1224 = 0.0f;
            _1225 = 0.0f;
            _1226 = 0.0f;
            _1227 = _936;
            _1228 = _937;
            _1229 = _938;
            _1230 = _939;
            _1231 = _926;
          }
        } else {
          _1222 = 0;
          _1223 = 0.0f;
          _1224 = 0.0f;
          _1225 = 0.0f;
          _1226 = 0.0f;
          _1227 = _936;
          _1228 = _937;
          _1229 = _938;
          _1230 = _939;
          _1231 = _926;
        }
      } else {
        _1222 = 0;
        _1223 = 0.0f;
        _1224 = 0.0f;
        _1225 = 0.0f;
        _1226 = 0.0f;
        _1227 = _936;
        _1228 = _937;
        _1229 = _938;
        _1230 = _939;
        _1231 = _926;
      }
    } else {
      _1222 = 0;
      _1223 = 0.0f;
      _1224 = 0.0f;
      _1225 = 0.0f;
      _1226 = 0.0f;
      _1227 = _936;
      _1228 = _937;
      _1229 = _938;
      _1230 = _939;
      _1231 = _926;
    }
  } else {
    if ((_1002 <= 1.0f) && ((_1002 >= 0.0f) && ((_1000 <= 1.0f) && ((_1000 >= 0.0f) && (_940 && (_998 > 0.0f)))))) {
      // [sem: _3__36__0__0__g_normalDepthPrev_load]
      _1135 = __3__36__0__0__g_normalDepthPrev.Load(int3(((int)(((_980 * 0.25f) + 0.25f) * _bufferSizeAndInvSize.x)), ((int)((0.25f - (_989 * 0.25f)) * _bufferSizeAndInvSize.y)), 0));
      _1142 = _nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1135.y & 16777215)))) * 5.960465e-08f));  // [sem: _3__36__0__0__g_normalDepthPrev_load_derived]
      if ((_1142 - dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z))) > 0.0f) {
        if (abs(_1142 - _971) < max(0.5f, (_971 * 0.05f))) {
          _1163 = __3__36__0__0__g_sceneColor.SampleLevel(__3__40__0__0__g_samplerClamp, float2(_1000, _1002), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
          if (!(!(_1163.w >= 0.0f))) {
            _1174 = min(1.0f, ((((float)((uint)((uint)(_1135.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthPrev_load_derived]
            // [sem: _3__36__0__0__g_normalDepthPrev_load_derived]
            _1180 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1135.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));
            // [sem: _3__36__0__0__g_normalDepthPrev_load_derived]
            _1186 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1135.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));
            _1188 = rsqrt(dot(float3(_1174, _1180, _1186), float3(_1174, _1180, _1186)));  // [sem: invLength]
            _1197 = select((dot(float3((-0.0f - _188), (-0.0f - _189), (-0.0f - _190)), float3((_1188 * _1174), (_1188 * _1180), (_1188 * _1186))) > 0.2f), 1.0f, 0.0f);
            _1199 = saturate(_163 * 0.01f);  // [sem: expr_sat]
            _1207 = _renderParams2.x * _renderParams2.x;
            _1215 = (((float)((bool)(abs(_nearFarProj.x - _1142) < (_1142 * 0.5f)))) * ((_1197 + _1199) - (_1197 * _1199))) * _1207;
            _1222 = 1;
            _1223 = _1207;
            _1224 = (_1215 * min(10000.0f, _1163.z));
            _1225 = (_1215 * min(10000.0f, _1163.y));
            _1226 = (_1215 * min(10000.0f, _1163.x));
            _1227 = _936;
            _1228 = _937;
            _1229 = _938;
            _1230 = _939;
            _1231 = ((_926 * 0.9999f) * _renderParams2.x);
          } else {
            _1222 = 0;
            _1223 = 0.0f;
            _1224 = 0.0f;
            _1225 = 0.0f;
            _1226 = 0.0f;
            _1227 = _936;
            _1228 = _937;
            _1229 = _938;
            _1230 = _939;
            _1231 = _926;
          }
        } else {
          _1222 = 0;
          _1223 = 0.0f;
          _1224 = 0.0f;
          _1225 = 0.0f;
          _1226 = 0.0f;
          _1227 = _936;
          _1228 = _937;
          _1229 = _938;
          _1230 = _939;
          _1231 = _926;
        }
      } else {
        _1222 = 0;
        _1223 = 0.0f;
        _1224 = 0.0f;
        _1225 = 0.0f;
        _1226 = 0.0f;
        _1227 = _936;
        _1228 = _937;
        _1229 = _938;
        _1230 = _939;
        _1231 = _926;
      }
    } else {
      _1222 = 0;
      _1223 = 0.0f;
      _1224 = 0.0f;
      _1225 = 0.0f;
      _1226 = 0.0f;
      _1227 = _936;
      _1228 = _937;
      _1229 = _938;
      _1230 = _939;
      _1231 = _926;
    }
  }
  _1233 = 0;
  while(true) {
    _1235 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1233) + (int)(20)))];
    _1241 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1233) + (int)(36)))];
    _1251 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _142) * _1235.w) + _1241.x));
    _1257 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _151) * _1235.w) + _1241.y));
    _1263 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _160) * _1235.w) + _1241.z));
    if (((int)_1251 < (int)((int)(_1235.x + -63.0f))) || ((!((int)_1251 < (int)((int)(_1235.x + -63.0f)))) && (!((int)_1251 < (int)((int)(_1235.x + 63.0f))))) || (((!((int)_1251 < (int)((int)(_1235.x + -63.0f)))) && ((int)_1251 < (int)((int)(_1235.x + 63.0f)))) && ((int)_1257 < (int)((int)(_1235.y + -31.0f)))) || ((((!((int)_1251 < (int)((int)(_1235.x + -63.0f)))) && ((int)_1251 < (int)((int)(_1235.x + 63.0f)))) && (!((int)_1257 < (int)((int)(_1235.y + -31.0f))))) && (!((int)_1257 < (int)((int)(_1235.y + 31.0f))))) || (((((!((int)_1251 < (int)((int)(_1235.x + -63.0f)))) && ((int)_1251 < (int)((int)(_1235.x + 63.0f)))) && (!((int)_1257 < (int)((int)(_1235.y + -31.0f))))) && ((int)_1257 < (int)((int)(_1235.y + 31.0f)))) && ((int)_1263 < (int)((int)(_1235.z + -63.0f)))) || ((((((!((int)_1251 < (int)((int)(_1235.x + -63.0f)))) && ((int)_1251 < (int)((int)(_1235.x + 63.0f)))) && (!((int)_1257 < (int)((int)(_1235.y + -31.0f))))) && ((int)_1257 < (int)((int)(_1235.y + 31.0f)))) && (!((int)_1263 < (int)((int)(_1235.z + -63.0f))))) && (!((int)_1263 < (int)((int)(_1235.z + 63.0f)))))) {
      _1288 = (int)(_1233) + (int)(1);
      if ((uint)_1288 < (uint)8) {
        _1233 = _1288;
        continue;
      } else {
        _1296 = 1.0f;
      }
    } else {
      _1296 = ((float)((int)((int)((uint)(1) << (_1233 & 31)))));
    }
    _1311 = select((_179 != 0), (((_1296 * 2.0f) * frac(frac(dot(float2(((_169 * 32.665f) + _77), ((_169 * 11.815f) + _78)), float2(0.06711056f, 0.00583715f))) * 52.982918f)) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x), 0.0f);
    if (!(_953 == 0)) {
      _1314 = _lightingParams.z * 1.3434899f;
      _1315 = -0.0f - _1314;
      if ((_151 < _1314) && ((_151 > _1315) && ((_142 < _1314) && ((_142 > _1315) && ((_160 > _1315) && (_160 < _1314)))))) {
        _1328 = 1.0f / _188;
        _1329 = 1.0f / _189;
        _1330 = 1.0f / _190;
        _1332 = _1328 * (_1315 - _142);
        _1334 = _1329 * (_1315 - _151);
        _1336 = _1330 * (_1315 - _160);
        _1338 = _1328 * (_1314 - _142);
        _1340 = _1329 * (_1314 - _151);
        _1342 = _1330 * (_1314 - _160);
        _1347 = min(min(max(_1332, _1338), max(_1334, _1340)), max(_1336, _1342));
        if ((_1347 > 0.0f) && (_1347 >= 0.0f)) {
          if (!(!(max(max(min(_1332, _1338), min(_1334, _1340)), min(_1336, _1342)) <= _1347))) {
            _1366 = ((_1347 * _190) + _160);
            _1367 = ((_1347 * _189) + _151);
            _1368 = ((_1347 * _188) + _142);
            _1369 = _1347;
          } else {
            _1366 = _160;
            _1367 = _151;
            _1368 = _142;
            _1369 = 0.0f;
          }
        } else {
          _1366 = _160;
          _1367 = _151;
          _1368 = _142;
          _1369 = 0.0f;
        }
      } else {
        _1366 = _160;
        _1367 = _151;
        _1368 = _142;
        _1369 = 0.0f;
      }
      _1373 = select(((_1223 >= 1.0f) && (_1231 > 0.0f)), _1231, 256.0f);
      _1375 = 0;
      while(true) {
        _1377 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1375) + (int)(20)))];
        _1383 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1375) + (int)(36)))];
        _1393 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _1368) * _1377.w) + _1383.x));
        _1399 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _1367) * _1377.w) + _1383.y));
        _1405 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _1366) * _1377.w) + _1383.z));
        if (((int)_1393 < (int)((int)(_1377.x + -63.0f))) || ((!((int)_1393 < (int)((int)(_1377.x + -63.0f)))) && (!((int)_1393 < (int)((int)(_1377.x + 63.0f))))) || (((!((int)_1393 < (int)((int)(_1377.x + -63.0f)))) && ((int)_1393 < (int)((int)(_1377.x + 63.0f)))) && ((int)_1399 < (int)((int)(_1377.y + -31.0f)))) || ((((!((int)_1393 < (int)((int)(_1377.x + -63.0f)))) && ((int)_1393 < (int)((int)(_1377.x + 63.0f)))) && (!((int)_1399 < (int)((int)(_1377.y + -31.0f))))) && (!((int)_1399 < (int)((int)(_1377.y + 31.0f))))) || (((((!((int)_1393 < (int)((int)(_1377.x + -63.0f)))) && ((int)_1393 < (int)((int)(_1377.x + 63.0f)))) && (!((int)_1399 < (int)((int)(_1377.y + -31.0f))))) && ((int)_1399 < (int)((int)(_1377.y + 31.0f)))) && ((int)_1405 < (int)((int)(_1377.z + -63.0f)))) || ((((((!((int)_1393 < (int)((int)(_1377.x + -63.0f)))) && ((int)_1393 < (int)((int)(_1377.x + 63.0f)))) && (!((int)_1399 < (int)((int)(_1377.y + -31.0f))))) && ((int)_1399 < (int)((int)(_1377.y + 31.0f)))) && (!((int)_1405 < (int)((int)(_1377.z + -63.0f))))) && (!((int)_1405 < (int)((int)(_1377.z + 63.0f)))))) {
          _1430 = (int)(_1375) + (int)(1);
          if ((uint)_1430 < (uint)8) {
            _1375 = _1430;
            continue;
          } else {
            _2265 = 0.0f;
            _2266 = 0.0f;
            _2267 = 0.0f;
            _2268 = 0.0f;
            _2269 = 0.0f;
          }
        } else {
          if (!((int)_1375 > (int)4)) {
            _1436 = _1368 + (_1311 * _188);
            _1438 = _1367 + (_1311 * _189);
            _1440 = _1366 + (_1311 * _190);
            _1441 = (_188 == 0.0f);
            _1442 = (_189 == 0.0f);
            _1443 = (_190 == 0.0f);
            _1445 = select(_1441, 0.0f, (1.0f / _188));
            _1447 = select(_1442, 0.0f, (1.0f / _189));
            _1449 = select(_1443, 0.0f, (1.0f / _190));
            _1450 = (_188 > 0.0f);
            _1451 = (_189 > 0.0f);
            _1452 = (_190 > 0.0f);
            if (_1373 > 0.0f) {
              _1456 = _1436;
              _1457 = _1438;
              _1458 = _1440;
              _1459 = 0.0f;
              _1460 = 0.0f;
              _1461 = 0;
              while(true) {
                _1463 = 0;
                while(true) {
                  _1465 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1463) + (int)(20)))];
                  _1471 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1463) + (int)(36)))];
                  _1479 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _1456) * _1465.w) + _1471.x;
                  _1483 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _1457) * _1465.w) + _1471.y;
                  _1487 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _1458) * _1465.w) + _1471.z;
                  if (!((_1483 >= (_1465.y + -31.0f)) && ((_1479 >= (_1465.x + -63.0f)) && (_1487 >= (_1465.z + -63.0f)))) || (((_1483 >= (_1465.y + -31.0f)) && ((_1479 >= (_1465.x + -63.0f)) && (_1487 >= (_1465.z + -63.0f)))) && (!((_1483 < (_1465.y + 31.0f)) && ((_1479 < (_1465.x + 63.0f)) && (_1487 < (_1465.z + 63.0f))))))) {
                    _1506 = (int)(_1463) + (int)(1);
                    if ((int)_1506 < (int)8) {
                      _1463 = _1506;
                      continue;
                    } else {
                      _1719 = -10000.0f;
                      _1720 = _1460;
                      _1721 = _1456;
                      _1722 = _1457;
                      _1723 = _1458;
                      _1724 = _1459;
                    }
                  } else {
                    if (_1463 == -10000) {
                      _1713 = _1460;
                      _1714 = _1456;
                      _1715 = _1457;
                      _1716 = _1458;
                      _1717 = _1459;
                      _1719 = -10000.0f;
                      _1720 = _1713;
                      _1721 = _1714;
                      _1722 = _1715;
                      _1723 = _1716;
                      _1724 = _1717;
                    } else {
                      _1513 = (float)((int)((int)((uint)(1) << (_1463 & 31))));
                      _1516 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * _1513;
                      _1517 = 1.0f / _1513;
                      _1519 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.y * 0.0078125f;
                      _1524 = ((_1519 * _1456) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _1517;
                      _1529 = (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y + ((_1457 * 0.015625f) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.y)) * _1517;
                      _1533 = (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z + (_1519 * _1458)) * _1517;
                      _1534 = _1524 * 64.0f;
                      _1535 = _1529 * 32.0f;
                      _1536 = _1533 * 64.0f;
                      _1538 = (int)(floor(_1534));
                      _1540 = (int)(floor(_1535));
                      _1542 = (int)(floor(_1536));
                      // [sem: _3__36__0__0__g_axisAlignedDistance_load]
                      _1549 = __3__36__0__0__g_axisAlignedDistanceTextures.Load(int4((_1538 & 63), (_1540 & 31), ((int)(_1542 & 63) | (int)((int)((uint)((uint)(_1463)) << 6))), 0));
                      _1557 = saturate(((float)((uint)((uint)((uint)((uint)(_1549.w)) >> 2)))) * 0.015873017f);  // [sem: expr_sat]
                      _1559 = _1534 - ((float)((int)(_1538)));
                      _1561 = _1535 - ((float)((int)(_1540)));
                      _1563 = _1536 - ((float)((int)(_1542)));
                      _1626 = max(((_1516 * 0.5f) * min(min(select(_1441, 999999.0f, ((select(_1450, 1.0f, 0.0f) - frac(_1524 * 256.0f)) * _1445)), select(_1442, 999999.0f, ((select(_1451, 1.0f, 0.0f) - frac(_1529 * 128.0f)) * _1447))), select(_1443, 999999.0f, ((select(_1452, 1.0f, 0.0f) - frac(_1533 * 256.0f)) * _1449)))), ((_1516 * 2.0f) * min(min(select(_1441, 999999.0f, (select(_1450, ((0.01f - _1559) + ((float)((uint)((uint)(((uint)((uint)(_1549.x)) >> 4) & 15))))), ((0.99f - _1559) - ((float)((uint)((uint)(_1549.x & 15)))))) * _1445)), select(_1442, 999999.0f, (select(_1451, ((0.01f - _1561) + ((float)((uint)((uint)(((uint)((uint)(_1549.y)) >> 4) & 15))))), ((0.99f - _1561) - ((float)((uint)((uint)(_1549.y & 15)))))) * _1447))), select(_1443, 999999.0f, (select(_1452, ((0.01f - _1563) + ((float)((uint)((uint)(((uint)((uint)(_1549.z)) >> 4) & 15))))), ((0.99f - _1563) - ((float)((uint)((uint)(_1549.z & 15)))))) * _1449)))));
                      _1628 = (float)((bool)(_1557 > 0.0f));
                      if (((uint)_1461 < (uint)16) || ((!((uint)_1461 < (uint)16)) && (_1459 < min(32.0f, (_1516 * 32.0f))))) {
                        _1635 = frac(_1533);
                        // [sem: _3__36__0__1__g_signedDistanceVoxels_sampleLod]
                        _1647 = __3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3(_1524, _1529, (((((float)((uint)((uint)((uint)(_1463)) * (uint)(130)))) + 1.0f) + ((select((_1635 < 0.0f), 1.0f, 0.0f) + _1635) * 128.0f)) * 0.00096153846f)), 0.0f);
                        _1649 = _1459 * 0.01f;
                        _1650 = 1.0f / _1516;
                        _1672 = (_1647.x + ((_163 * _163) * 0.0002f)) / ((saturate(((max(1.0f, (_1650 * 0.5f)) * _1650) * min(_1459, max(0.0f, (_1373 - _1459)))) + -1.0f) * (max(((_1516 * 1.06066f) * saturate((_1459 * 0.5f) + 0.5f)), _1649) - _1649)) + _1649);
                        _1678 = saturate((saturate(1.0f - (_1672 * _1672)) * _1628) + _1460);  // [sem: expr_sat]
                        if (!(((int)_1463 > (int)2) || (_1647.x > _1516))) {
                          _1692 = min(_1626, _1647.x);
                          _1693 = _1678;  // [sem: expr_sat]
                        } else {
                          _1692 = _1626;
                          _1693 = _1678;  // [sem: expr_sat]
                        }
                      } else {
                        if (!((_1549.w & 1) == 0)) {
                          _1692 = _1626;
                          _1693 = saturate((_1628 * 0.5f) + _1460);  // [sem: expr_sat]
                        } else {
                          _1692 = _1626;
                          _1693 = _1460;  // [sem: expr_sat]
                        }
                      }
                      if (!(_1693 >= 0.5f)) {
                        _1697 = max(_1692, (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 0.05f));
                        _1698 = _1697 + _1459;
                        _1700 = (_1697 * _188) + _1456;
                        _1702 = (_1697 * _189) + _1457;
                        _1704 = (_1697 * _190) + _1458;
                        _1705 = (int)(_1461) + (int)(1);
                        if (((uint)_1705 < (uint)192) && (_1698 < _1373)) {
                          _1456 = _1700;
                          _1457 = _1702;
                          _1458 = _1704;
                          _1459 = _1698;
                          _1460 = _1693;
                          _1461 = _1705;
                          __loop_jump_target = 1455;
                          break;
                        } else {
                          _1713 = _1693;
                          _1714 = _1700;
                          _1715 = _1702;
                          _1716 = _1704;
                          _1717 = _1698;
                          _1719 = -10000.0f;
                          _1720 = _1713;
                          _1721 = _1714;
                          _1722 = _1715;
                          _1723 = _1716;
                          _1724 = _1717;
                        }
                      } else {
                        _1719 = ((float)((int)(_1463)));
                        _1720 = _1557;
                        _1721 = _1456;
                        _1722 = _1457;
                        _1723 = _1458;
                        _1724 = _1459;
                      }
                    }
                  }
                  break;
                }
                if (__loop_jump_target == 1455) {
                  __loop_jump_target = -1;
                  continue;
                }
                if (__loop_jump_target != -1) {
                  break;
                }
                break;
              }
            } else {
              _1719 = -10000.0f;
              _1720 = 0.0f;
              _1721 = _1436;
              _1722 = _1438;
              _1723 = _1440;
              _1724 = 0.0f;
            }
            _1725 = (int)(_1719);
            if ((uint)_1725 < (uint)8) {
              _1730 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 0.5f;
              _1732 = _1721 - (_1730 * _188);
              _1734 = _1722 - (_1730 * _189);
              _1736 = _1723 - (_1730 * _190);
              if ((int)_1725 < (int)6) {
                _1740 = 0;
                while(true) {
                  _1742 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1740) + (int)(20)))];
                  _1748 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1740) + (int)(36)))];
                  _1758 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _1732) * _1742.w) + _1748.x));
                  _1764 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _1734) * _1742.w) + _1748.y));
                  _1770 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _1736) * _1742.w) + _1748.z));
                  if (((int)_1758 < (int)((int)(_1742.x + -63.0f))) || ((!((int)_1758 < (int)((int)(_1742.x + -63.0f)))) && (!((int)_1758 < (int)((int)(_1742.x + 63.0f))))) || (((!((int)_1758 < (int)((int)(_1742.x + -63.0f)))) && ((int)_1758 < (int)((int)(_1742.x + 63.0f)))) && ((int)_1764 < (int)((int)(_1742.y + -31.0f)))) || ((((!((int)_1758 < (int)((int)(_1742.x + -63.0f)))) && ((int)_1758 < (int)((int)(_1742.x + 63.0f)))) && (!((int)_1764 < (int)((int)(_1742.y + -31.0f))))) && (!((int)_1764 < (int)((int)(_1742.y + 31.0f))))) || (((((!((int)_1758 < (int)((int)(_1742.x + -63.0f)))) && ((int)_1758 < (int)((int)(_1742.x + 63.0f)))) && (!((int)_1764 < (int)((int)(_1742.y + -31.0f))))) && ((int)_1764 < (int)((int)(_1742.y + 31.0f)))) && ((int)_1770 < (int)((int)(_1742.z + -63.0f)))) || ((((((!((int)_1758 < (int)((int)(_1742.x + -63.0f)))) && ((int)_1758 < (int)((int)(_1742.x + 63.0f)))) && (!((int)_1764 < (int)((int)(_1742.y + -31.0f))))) && ((int)_1764 < (int)((int)(_1742.y + 31.0f)))) && (!((int)_1770 < (int)((int)(_1742.z + -63.0f))))) && (!((int)_1770 < (int)((int)(_1742.z + 63.0f)))))) {
                    _1795 = (int)(_1740) + (int)(1);
                    if ((uint)_1795 < (uint)8) {
                      _1740 = _1795;
                      continue;
                    } else {
                      _2233 = 0.0f;
                      _2234 = 0.0f;
                      _2235 = 0.0f;
                      _2236 = 1.0f;
                    }
                  } else {
                    _1798 = _1758 & 127;
                    _1799 = _1764 & 63;
                    _1800 = _1770 & 127;
                    if (!((uint)_1740 > (uint)5)) {
                      _1810 = (((((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1798, _1799, ((int)((uint)((uint)(_1800)) + (uint)((uint)((int)((int)((uint)((uint)(_1740)) * (uint)(130))) | (int)(1))))), 0)))).x) & 4194303) == 0);
                      [branch]
                      if (_1810) {
                        _1813 = -10000;
                        _1814 = -10000;
                        _1815 = -10000;
                        _1816 = -10000;
                      } else {
                        _1813 = _1740;
                        _1814 = _1800;
                        _1815 = _1799;
                        _1816 = _1798;
                      }
                      _1820 = ((float)((int)((int)((uint)(1) << (_1740 & 31))))) * _1730;
                      _1822 = 0;
                      while(true) {
                        _1824 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1822) + (int)(20)))];
                        _1830 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1822) + (int)(36)))];
                        _1841 = (int)(floor((((_1732 - _1820) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x) * _1824.w) + _1830.x));
                        _1848 = (int)(floor((((_1734 - _1820) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y) * _1824.w) + _1830.y));
                        _1855 = (int)(floor((((_1736 - _1820) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z) * _1824.w) + _1830.z));
                        if (((int)_1841 < (int)((int)(_1824.x + -63.0f))) || ((!((int)_1841 < (int)((int)(_1824.x + -63.0f)))) && (!((int)_1841 < (int)((int)(_1824.x + 63.0f))))) || (((!((int)_1841 < (int)((int)(_1824.x + -63.0f)))) && ((int)_1841 < (int)((int)(_1824.x + 63.0f)))) && ((int)_1848 < (int)((int)(_1824.y + -31.0f)))) || ((((!((int)_1841 < (int)((int)(_1824.x + -63.0f)))) && ((int)_1841 < (int)((int)(_1824.x + 63.0f)))) && (!((int)_1848 < (int)((int)(_1824.y + -31.0f))))) && (!((int)_1848 < (int)((int)(_1824.y + 31.0f))))) || (((((!((int)_1841 < (int)((int)(_1824.x + -63.0f)))) && ((int)_1841 < (int)((int)(_1824.x + 63.0f)))) && (!((int)_1848 < (int)((int)(_1824.y + -31.0f))))) && ((int)_1848 < (int)((int)(_1824.y + 31.0f)))) && ((int)_1855 < (int)((int)(_1824.z + -63.0f)))) || ((((((!((int)_1841 < (int)((int)(_1824.x + -63.0f)))) && ((int)_1841 < (int)((int)(_1824.x + 63.0f)))) && (!((int)_1848 < (int)((int)(_1824.y + -31.0f))))) && ((int)_1848 < (int)((int)(_1824.y + 31.0f)))) && (!((int)_1855 < (int)((int)(_1824.z + -63.0f))))) && (!((int)_1855 < (int)((int)(_1824.z + 63.0f)))))) {
                          _1880 = (int)(_1822) + (int)(1);
                          if ((uint)_1880 < (uint)8) {
                            _1822 = _1880;
                            continue;
                          } else {
                            _2233 = 0.0f;
                            _2234 = 0.0f;
                            _2235 = 0.0f;
                            _2236 = 1.0f;
                          }
                        } else {
                          _1883 = _1841 & 127;
                          if (!((uint)_1822 > (uint)5)) {
                            if (_1810) {
                              _1890 = _1816;
                              _1891 = _1815;
                              _1892 = _1814;
                              _1893 = _1813;
                              _1894 = 0;
                              _1895 = 0;
                              while(true) {
                                _1896 = (int)(_1895) + (int)(_1855 & 127);
                                _1899 = (uint)((uint)(_1896)) + (uint)((uint)((int)((int)((uint)((uint)(_1822)) * (uint)(130))) | (int)(1)));
                                _1900 = (int)(_1894) + (int)(_1848 & 63);
                                _1901 = ((uint)_1900 > (uint)63);
                                if ((_1901 || ((uint)_1896 > (uint)127)) || (((((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1883, _1900, _1899, 0)))).x) & 4194303) == 0)) {
                                  _1911 = (int)(_1883) + (int)(1);
                                  if (!(_1901 || ((uint)((int)(_1896) | (int)(_1911)) > (uint)127))) {
                                    _1919 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1911, _1900, _1899, 0)))).x) & 4194303;
                                    _1920 = (_1919 != 0);
                                    _1926 = _1919;
                                    _1927 = select(_1920, _1822, _1893);
                                    _1928 = select(_1920, _1896, _1892);
                                    _1929 = select(_1920, _1900, _1891);
                                    _1930 = select(_1920, _1911, _1890);
                                  } else {
                                    _1926 = 0;
                                    _1927 = _1893;
                                    _1928 = _1892;
                                    _1929 = _1891;
                                    _1930 = _1890;
                                  }
                                } else {
                                  _1926 = _1908;
                                  _1927 = _1822;
                                  _1928 = _1896;
                                  _1929 = _1900;
                                  _1930 = _1883;
                                }
                                _1931 = (int)(_1894) + (int)(1);
                                _1933 = (_1926 == 0);
                                if (((int)_1931 < (int)2) && _1933) {
                                  _1936 = _1931;
                                  _1937 = _1895;
                                  while(true) {
                                    _1890 = _1930;
                                    _1891 = _1929;
                                    _1892 = _1928;
                                    _1893 = _1927;
                                    _1894 = _1936;
                                    _1895 = _1937;
                                    __loop_jump_target = 1889;
                                    break;
                                    break;
                                  }
                                  if (__loop_jump_target == 1889) {
                                    __loop_jump_target = -1;
                                    continue;
                                  }
                                  if (__loop_jump_target != -1) {
                                    break;
                                  }
                                }
                                _1939 = (int)(_1895) + (int)(1);
                                if (((int)_1939 < (int)2) && _1933) {
                                  _1936 = 0;
                                  _1937 = _1939;
                                  while(true) {
                                    _1890 = _1930;
                                    _1891 = _1929;
                                    _1892 = _1928;
                                    _1893 = _1927;
                                    _1894 = _1936;
                                    _1895 = _1937;
                                    __loop_jump_target = 1889;
                                    break;
                                    break;
                                  }
                                  if (__loop_jump_target == 1889) {
                                    __loop_jump_target = -1;
                                    continue;
                                  }
                                  if (__loop_jump_target != -1) {
                                    break;
                                  }
                                }
                                _1944 = _1930;
                                _1945 = _1929;
                                _1946 = _1928;
                                _1947 = _1927;
                                break;
                              }
                            } else {
                              _1944 = _1816;
                              _1945 = _1815;
                              _1946 = _1814;
                              _1947 = _1813;
                            }
                            if ((uint)_1947 < (uint)6) {
                              _1950 = (uint)((uint)(_1947)) * (uint)(130);
                              _1956 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1944, _1945, ((int)((uint)((uint)((int)(_1950) | (int)(1))) + (uint)((uint)(_1946)))), 0)))).x) & 4194303;
                              [branch]
                              if (!(_1956 == 0)) {
                                _1960 = (uint)(1) << (_1947 & 31);
                                _1962 = ((float)((int)(_1960))) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                                _1964 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((uint)((uint)((uint)(_1947)) + (uint)(20)))];
                                _1968 = -0.0f - _188;
                                _1969 = -0.0f - _189;
                                _1970 = -0.0f - _190;
                                _1972 = 0;
                                _1973 = 0.0f;
                                _1974 = 0.0f;
                                _1975 = 0.0f;
                                _1976 = 0.0f;
                                while(true) {
                                  _1978 = (int)((int)(_1956) + (int)(-1)) + (int)(_1972);
                                  _1981 = __3__37__0__0__g_surfelDataBuffer[_1978]._baseColor;
                                  _1983 = __3__37__0__0__g_surfelDataBuffer[_1978]._normal;
                                  _1985 = __3__37__0__0__g_surfelDataBuffer[_1978]._radius;
                                  if (!(_1981 == 0)) {
                                    _1989 = __3__37__0__0__g_surfelDataBuffer[_1978]._radiance.z;
                                    _1990 = __3__37__0__0__g_surfelDataBuffer[_1978]._radiance.y;
                                    _1991 = __3__37__0__0__g_surfelDataBuffer[_1978]._radiance.x;
                                    _1993 = (float)((uint)((uint)(_1981 & 255)));
                                    _1996 = (float)((uint)((uint)(((uint)((uint)(_1981)) >> 8) & 255)));
                                    _1999 = (float)((uint)((uint)(((uint)((uint)(_1981)) >> 16) & 255)));
                                    _2008 = select(((_1993 * 0.003921569f) < 0.04045f), (_1993 * 0.000303527f), exp2(log2((_1993 * 0.003717127f) + 0.052132703f) * 2.4f));
                                    _2017 = select(((_1996 * 0.003921569f) < 0.04045f), (_1996 * 0.000303527f), exp2(log2((_1996 * 0.003717127f) + 0.052132703f) * 2.4f));
                                    _2026 = select(((_1999 * 0.003921569f) < 0.04045f), (_1999 * 0.000303527f), exp2(log2((_1999 * 0.003717127f) + 0.052132703f) * 2.4f));
                                    _2030 = (((float)((uint)((uint)(_1983 & 255)))) * 0.007874016f) + -1.0f;
                                    _2035 = (((float)((uint)((uint)(((uint)((uint)(_1983)) >> 8) & 255)))) * 0.007874016f) + -1.0f;
                                    _2040 = (((float)((uint)((uint)(((uint)((uint)(_1983)) >> 16) & 255)))) * 0.007874016f) + -1.0f;
                                    _2042 = rsqrt(dot(float3(_2030, _2035, _2040), float3(_2030, _2035, _2040)));  // [sem: invLength]
                                    _2044 = ((_1983 & 16777215) == 0);
                                    _2045 = float(_1991);
                                    _2046 = float(_1990);
                                    _2047 = float(_1989);
                                    _2051 = (_1962 * 0.0019607844f) * ((float)((uint16_t)((int16_t)(_1985 & 255))));
                                    _2068 = ((((_1964.x + -63.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_1944)) + (uint)(64)) - (uint)((uint)((int)(_1964.x))))) & 127)))) * _1962) - _viewPos.x) + (((((float)((uint)((uint)((uint)((uint)(_1981)) >> 24)))) * 0.003937008f) + -0.5f) * _1962);
                                    _2084 = ((((_1964.y + -31.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_1945)) + (uint)(32)) - (uint)((uint)((int)(_1964.y))))) & 63)))) * _1962) - _viewPos.y) + (((((float)((uint)((uint)((uint)((uint)(_1983)) >> 24)))) * 0.003937008f) + -0.5f) * _1962);
                                    _2100 = ((((_1964.z + -63.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_1946)) + (uint)(64)) - (uint)((uint)((int)(_1964.z))))) & 127)))) * _1962) - _viewPos.z) + (((((float)((uint16_t)((int16_t)((uint16_t)(_1985) >> 8)))) * 0.003937008f) + -0.5f) * _1962);
                                    _2104 = ((-0.0f - _1368) - (_1724 * _188)) + _2068;
                                    _2108 = ((-0.0f - _1367) - (_1724 * _189)) + _2084;
                                    _2112 = ((-0.0f - _1366) - (_1724 * _190)) + _2100;
                                    _2113 = dot(float3(_2104, _2108, _2112), float3(_1968, _1969, _1970));
                                    _2115 = _2104 - (_2113 * _1968);
                                    _2117 = _2108 - (_2113 * _1969);
                                    _2119 = _2112 - (_2113 * _1970);
                                    _2121 = 1.0f / ((float)((uint)((uint)(_1960))));
                                    _2129 = frac(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _2100) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z) * _2121);
                                    _2182 = select(((int)_1947 > (int)5), 1.0f, ((((float)((bool)(dot(float3(_2115, _2117, _2119), float3(_2115, _2117, _2119)) < ((_2051 * _2051) * 64.0f)))) * saturate((saturate(dot(float3(_1968, _1969, _1970), float3(select(_2044, _1968, (_2042 * _2030)), select(_2044, _1969, (_2042 * _2035)), select(_2044, _1970, (_2042 * _2040))))) + -0.03125f) * 1.032258f)) * ((float)((bool)(((__3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _2068) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _2121), (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _2084) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y) * _2121), (((((float)((uint)((uint)(_1950)))) + 1.0f) + ((select((_2129 < 0.0f), 1.0f, 0.0f) + _2129) * 128.0f)) * 0.00096153846f)), 0.0f)).x) > ((_1962 * 0.25f) * (saturate((dot(float3(_2045, _2046, _2047), float3(0.212671f, 0.71516f, 0.072169f)) * 0.0001f) / _exposure3.w) + 1.0f)))))));
                                    _2190 = (((((_2017 * 0.33951f) + (_2008 * 0.61312f)) + (_2026 * 0.04737f)) * _2045) * _2182) + _1976;
                                    _2198 = (((((_2017 * 0.91636f) + (_2008 * 0.0702f)) + (_2026 * 0.01345f)) * _2046) * _2182) + _1975;
                                    _2206 = (((((_2017 * 0.10958f) + (_2008 * 0.02062f)) + (_2026 * 0.8698f)) * _2047) * _2182) + _1974;
                                    _2207 = _2182 + _1973;
                                    _2208 = (int)(_1972) + (int)(1);
                                    if ((uint)_2208 < (uint)4) {
                                      _1972 = _2208;
                                      _1973 = _2207;
                                      _1974 = _2206;
                                      _1975 = _2198;
                                      _1976 = _2190;
                                      continue;
                                    } else {
                                      _2211 = _2207;
                                      _2212 = _2206;
                                      _2213 = _2198;
                                      _2214 = _2190;
                                    }
                                  } else {
                                    _2211 = _1973;
                                    _2212 = _1974;
                                    _2213 = _1975;
                                    _2214 = _1976;
                                  }
                                  if (_2211 > 0.0f) {
                                    _2217 = 1.0f / _2211;
                                    _2233 = (-0.0f - min(0.0f, (-0.0f - (_2212 * _2217))));
                                    _2234 = (-0.0f - min(0.0f, (-0.0f - (_2213 * _2217))));
                                    _2235 = (-0.0f - min(0.0f, (-0.0f - (_2214 * _2217))));
                                    _2236 = 1.0f;
                                  } else {
                                    _2233 = _2212;
                                    _2234 = _2213;
                                    _2235 = _2214;
                                    _2236 = 0.0f;
                                  }
                                  break;
                                }
                              } else {
                                _2233 = 0.0f;
                                _2234 = 0.0f;
                                _2235 = 0.0f;
                                _2236 = 0.0f;
                              }
                            } else {
                              _2233 = 0.0f;
                              _2234 = 0.0f;
                              _2235 = 0.0f;
                              _2236 = 0.0f;
                            }
                          } else {
                            _2233 = 0.0f;
                            _2234 = 0.0f;
                            _2235 = 0.0f;
                            _2236 = 1.0f;
                          }
                        }
                        break;
                      }
                    } else {
                      _2233 = 0.0f;
                      _2234 = 0.0f;
                      _2235 = 0.0f;
                      _2236 = 1.0f;
                    }
                  }
                  break;
                }
              } else {
                _2233 = 0.0f;
                _2234 = 0.0f;
                _2235 = 0.0f;
                _2236 = 1.0f;
              }
              _2244 = saturate((_1724 * 0.25f) / (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * ((float)((int)((int)((uint)(1) << (_1375 & 31))))))) * _2236;
              _2248 = -0.0f - min(0.0f, (-0.0f - (_2235 * _2244)));
              _2252 = -0.0f - min(0.0f, (-0.0f - (_2234 * _2244)));
              _2256 = -0.0f - min(0.0f, (-0.0f - (_2233 * _2244)));
              _2258 = select(((int)_1725 > (int)-1), 1.0f, 0.0f);
              _2259 = max(1e-06f, _1724);
              if (_2259 > 0.0f) {
                _2265 = _2258;
                _2266 = _2256;
                _2267 = _2252;
                _2268 = _2248;
                _2269 = (_2259 + _1369);
              } else {
                _2265 = _2258;
                _2266 = _2256;
                _2267 = _2252;
                _2268 = _2248;
                _2269 = _2259;
              }
            } else {
              _2265 = _1720;
              _2266 = 0.0f;
              _2267 = 0.0f;
              _2268 = 0.0f;
              _2269 = 0.0f;
            }
          } else {
            _2265 = 0.0f;
            _2266 = 0.0f;
            _2267 = 0.0f;
            _2268 = 0.0f;
            _2269 = 0.0f;
          }
        }
        break;
      }
    } else {
      _2265 = _927;
      _2266 = _928;
      _2267 = _929;
      _2268 = _930;
      _2269 = _926;
    }
    _2272 = saturate(5.0000005f - (_163 * 0.019531252f));  // [sem: expr_sat]
    _2273 = (_1222 != 0);
    if ((_1223 > 0.0f) && (_2273 && (_1231 > 0.0f))) {
      if (!(_1231 < _2269)) {
        _2284 = ((int)(uint)((int)(_2269 <= 0.0f)));
      } else {
        _2284 = 1;
      }
    } else {
      _2284 = 0;
    }
    _2289 = saturate(max(select((_2284 != 0), 1.0f, 0.0f), (1.0f - _2272)));  // [sem: expr_sat]
    _2290 = _2289 * _1223;
    _2293 = min(_2272, saturate(1.0f - _2290));
    if (!(_2265 == 0.0f)) {
      _2308 = ((_2293 * _2265) + _2290);
      _2309 = ((_2293 * _2266) + (_2289 * _1224));
      _2310 = ((_2293 * _2267) + (_2289 * _1225));
      _2311 = ((_2293 * _2268) + (_2289 * _1226));
    } else {
      _2308 = _1223;
      _2309 = _1224;
      _2310 = _1225;
      _2311 = _1226;
    }
    _2314 = 1.0f / max(1e-06f, (_2293 + _2289));
    _2318 = _2314 * ((_2293 * _2269) + (_2289 * _1231));
    _2319 = _2314 * _2289;
    _2321 = (_2318 * _188) + _142;
    _2323 = (_2318 * _189) + _151;
    _2325 = (_2318 * _190) + _160;
    [branch]
    if (!(_2318 <= 0.0f)) {
      _2339 = (_viewProjRelative[3].w) + mad((_viewProjRelative[3].z), _2325, mad((_viewProjRelative[3].y), _2323, ((_viewProjRelative[3].x) * _2321)));
      _2350 = (((mad((_viewProjRelative[0].z), _2325, mad((_viewProjRelative[0].y), _2323, ((_viewProjRelative[0].x) * _2321))) + (_viewProjRelative[0].w)) / _2339) * 0.5f) + 0.5f;
      _2361 = 0.5f - (((mad((_viewProjRelative[1].z), _2325, mad((_viewProjRelative[1].y), _2323, ((_viewProjRelative[1].x) * _2321))) + (_viewProjRelative[1].w)) / _2339) * 0.5f);
      if (_2273 && ((_2361 <= 1.0f) && (((_2350 >= 0.0f) && (_2350 <= 1.0f)) && (_2361 >= 0.0f)))) {
        if (((mad((_viewProjRelative[2].z), _2325, mad((_viewProjRelative[2].y), _2323, ((_viewProjRelative[2].x) * _2321))) + (_viewProjRelative[2].w)) / _2339) > 0.0f) {
          if (_renderParams.x == 0.0f) {
            // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod]
            half4 _2388 = __3__36__0__0__g_sceneShadowColor.SampleLevel(__3__40__0__0__g_sampler, float2(_2350, _2361), 0.0f);
            _2396 = float(_2388.z);  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2397 = float(_2388.y);  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2398 = float(_2388.x);  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          } else {
            _2396 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2397 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2398 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          }
        } else {
          _2396 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          _2397 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          _2398 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
        }
      } else {
        _2396 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
        _2397 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
        _2398 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
      }
      _2401 = _viewPos.x + _2321;
      _2403 = _viewPos.y + _2323;
      _2405 = _viewPos.z + _2325;
      _2408 = _2401 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].x);
      _2410 = _2403 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].y);
      _2412 = _2405 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].z);
      _2424 = (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].w) + mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].z), _2412, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].y), _2410, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].x) * _2408)));
      _2432 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].z), _2412, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].y), _2410, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].x) * _2408))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].w);
      _2435 = 2.0f / __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y;
      _2436 = 1.0f - _2435;
      _2444 = (!(_2432 >= _2435)) || (!((_2432 <= _2436) && ((_2424 >= _2435) && (_2424 <= _2436))));
      _2447 = _2401 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].x);
      _2449 = _2403 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].y);
      _2451 = _2405 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].z);
      _2463 = (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].w) + mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].z), _2451, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].y), _2449, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].x) * _2447)));
      _2471 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].z), _2451, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].y), _2449, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].x) * _2447))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].w);
      _2479 = (!(_2471 >= _2435)) || (!(((_2463 <= _2436) && (_2463 >= _2435)) && (_2471 <= _2436)));
      _2481 = select(_2479, select(_2444, 0.0f, _2424), _2463);
      _2483 = select(_2479, select(_2444, 0.0f, _2432), _2471);
      _2501 = select(_2479, select(_2444, 0.0f, (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].z), _2412, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].y), _2410, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].x) * _2408))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].w))), (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].z), _2451, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].y), _2449, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].x) * _2447))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].w)));
      _2503 = select(_2479, select(_2444, -1, 1), 0);
      [branch]
      if (!(_2503 == -1)) {
        _2508 = (_2481 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x) + -0.5f;
        _2510 = (_2483 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y) + -0.5f;
        _2512 = (int)(floor(_2508));
        _2514 = (int)(floor(_2510));
        _2515 = (uint)((uint)(_2512)) + (uint)(1);
        _2516 = (uint)((uint)(_2514)) + (uint)(1);
        if (!(((uint)_2512 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x)))) || ((uint)_2514 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y)))))) {
          // [sem: _3__36__0__0__g_shadowColorArray_sampleLod]
          half4 _2526 = __3__36__0__0__g_shadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_2481, _2483, ((float)((uint)((uint)(_2503))))), 0.0f);
          _2541 = (half)(_2526.w);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2542 = (half)(_2526.z);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2543 = (half)(_2526.y);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2544 = (half)(_2526.x);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2545 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2515, _2516, _2503, 0)))).x);
          _2546 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2512, _2516, _2503, 0)))).x);
          _2547 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2515, _2514, _2503, 0)))).x);
          _2548 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2512, _2514, _2503, 0)))).x);
        } else {
          _2541 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2542 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2543 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2544 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2545 = 0.0f;
          _2546 = 0.0f;
          _2547 = 0.0f;
          _2548 = 0.0f;
        }
        _2549 = (int)(_2503) << 2;
        _2551 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2549) + (int)(103)))];
        _2557 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2549) + (int)(104)))];
        _2563 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2549) + (int)(105)))];
        _2569 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2549) + (int)(106)))];
        _2574 = _2551.x * _2481;
        _2575 = _2551.y * _2481;
        _2576 = _2551.z * _2481;
        _2577 = _2551.w * _2481;
        _2580 = mad(_2563.w, _2548, mad(_2557.w, _2483, _2577)) + _2569.w;
        _2584 = (mad(_2563.x, _2548, mad(_2557.x, _2483, _2574)) + _2569.x) / _2580;
        _2588 = (mad(_2563.y, _2548, mad(_2557.y, _2483, _2575)) + _2569.y) / _2580;
        _2592 = (mad(_2563.z, _2548, mad(_2557.z, _2483, _2576)) + _2569.z) / _2580;
        _2595 = _2481 + (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.z * 4.0f);
        _2599 = mad(_2563.w, _2547, mad(_2557.w, _2483, (_2551.w * _2595))) + _2569.w;
        _2602 = _2483 - (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.w * 2.0f);
        _2605 = mad(_2563.w, _2546, mad(_2557.w, _2602, _2577)) + _2569.w;
        _2610 = ((mad(_2563.x, _2546, mad(_2557.x, _2602, _2574)) + _2569.x) / _2605) - _2584;
        _2615 = ((mad(_2563.y, _2546, mad(_2557.y, _2602, _2575)) + _2569.y) / _2605) - _2588;
        _2620 = ((mad(_2563.z, _2546, mad(_2557.z, _2602, _2576)) + _2569.z) / _2605) - _2592;
        _2626 = ((mad(_2563.x, _2547, mad(_2557.x, _2483, (_2551.x * _2595))) + _2569.x) / _2599) - _2584;
        _2632 = ((mad(_2563.y, _2547, mad(_2557.y, _2483, (_2551.y * _2595))) + _2569.y) / _2599) - _2588;
        _2638 = ((mad(_2563.z, _2547, mad(_2557.z, _2483, (_2551.z * _2595))) + _2569.z) / _2599) - _2592;
        _2641 = (_2632 * _2620) - (_2638 * _2615);
        _2644 = (_2638 * _2610) - (_2626 * _2620);
        _2647 = (_2626 * _2615) - (_2632 * _2610);
        _2649 = rsqrt(dot(float3(_2641, _2644, _2647), float3(_2641, _2644, _2647)));  // [sem: invLength]
        _2650 = _2641 * _2649;
        _2651 = _2644 * _2649;
        _2652 = _2649 * _2647;
        _2653 = frac(_2508);
        _2657 = (saturate(dot(float3(_188, _189, _190), float3(_2650, _2651, _2652))) * 0.002f) + _2501;
        _2661 = saturate(exp2((_2548 - _2657) * 1.442695e+06f));  // [sem: expr_sat]
        _2665 = saturate(exp2((_2546 - _2657) * 1.442695e+06f));  // [sem: expr_sat]
        _2672 = ((saturate(exp2((_2547 - _2657) * 1.442695e+06f)) - _2661) * _2653) + _2661;
        _2686 = _2541;
        _2687 = _2542;
        _2688 = _2543;
        _2689 = _2544;
        _2690 = _2545;
        _2691 = _2546;
        _2692 = _2547;
        _2693 = _2548;
        // [sem: expr_sat]
        _2694 = saturate((((_2665 - _2672) + ((saturate(exp2((_2545 - _2657) * 1.442695e+06f)) - _2665) * _2653)) * frac(_2510)) + _2672);
        _2695 = _2652;
        _2696 = _2651;
        _2697 = _2650;
      } else {
        _2686 = 0.0h;
        _2687 = 0.0h;
        _2688 = 0.0h;
        _2689 = 0.0h;
        _2690 = 0.0f;
        _2691 = 0.0f;
        _2692 = 0.0f;
        _2693 = 0.0f;
        _2694 = 0.0f;  // [sem: expr_sat]
        _2695 = 0.0f;
        _2696 = 0.0f;
        _2697 = 0.0f;
      }
      _2709 = (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].w) + mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].z), _2325, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].y), _2323, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].x) * _2321)));
      _2717 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].z), _2325, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].y), _2323, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].x) * _2321))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].w);
      _2725 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].z), _2325, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].y), _2323, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].x) * _2321))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].w);
      _2728 = 4.0f / __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y;
      _2729 = 1.0f - _2728;
      if ((_2717 <= _2729) && ((_2709 >= _2728) && (_2709 <= _2729))) {
        _2740 = (_2717 >= _2728) && ((_2725 >= -1.0f) && (_2725 <= 1.0f));
        _2748 = ((int)(uint)(_2740));
        _2749 = select(_2740, 1, _2503);
        _2750 = select(_2740, _2725, _2501);
        _2751 = select(_2740, _2717, _2483);
        _2752 = select(_2740, _2709, _2481);
        _2753 = select(_2740, 1e-05f, -0.0001f);
      } else {
        _2748 = 0;
        _2749 = _2503;
        _2750 = _2501;
        _2751 = _2483;
        _2752 = _2481;
        _2753 = -0.0001f;
      }
      _2765 = (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].w) + mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].z), _2325, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].y), _2323, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].x) * _2321)));
      _2773 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].z), _2325, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].y), _2323, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].x) * _2321))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].w);
      _2781 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].z), _2325, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].y), _2323, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].x) * _2321))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].w);
      if (((_2765 <= _2729) && (_2765 >= _2728)) && (_2773 <= _2729)) {
        _2792 = (_2781 <= 1.0f) && ((_2773 >= _2728) && (_2781 >= -1.0f));
        _2800 = select(_2792, 1, _2748);
        _2801 = select(_2792, 0, _2749);
        _2802 = select(_2792, _2781, _2750);
        _2803 = select(_2792, _2773, _2751);
        _2804 = select(_2792, _2765, _2752);
        _2805 = select(_2792, 1e-05f, _2753);
      } else {
        _2800 = _2748;
        _2801 = _2749;
        _2802 = _2750;
        _2803 = _2751;
        _2804 = _2752;
        _2805 = _2753;
      }
      [branch]
      if (!(_2800 == 0)) {
        _2812 = (int)(floor((_2804 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f));
        _2816 = (int)(floor((_2803 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f));
        _2817 = (uint)((uint)(_2812)) + (uint)(1);
        _2818 = (uint)((uint)(_2816)) + (uint)(1);
        if (!(((uint)_2812 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x)))) || ((uint)_2816 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y)))))) {
          _2835 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2817, _2818, _2801, 0)))).x);
          _2836 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2812, _2818, _2801, 0)))).x);
          _2837 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2817, _2816, _2801, 0)))).x);
          _2838 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2812, _2816, _2801, 0)))).x);
        } else {
          _2835 = _2690;
          _2836 = _2691;
          _2837 = _2692;
          _2838 = _2693;
        }
        _2839 = (uint)((uint)(_2801)) << 2;
        _2841 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)((uint)((uint)(_2839)) + (uint)(58)))];
        _2847 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)((uint)((uint)(_2839)) + (uint)(59)))];
        _2853 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)((uint)((uint)(_2839)) + (uint)(60)))];
        _2859 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)((uint)((uint)(_2839)) + (uint)(61)))];
        _2864 = _2841.x * _2804;
        _2865 = _2841.y * _2804;
        _2866 = _2841.z * _2804;
        _2867 = _2841.w * _2804;
        _2870 = mad(_2853.w, _2838, mad(_2847.w, _2803, _2867)) + _2859.w;
        _2874 = (mad(_2853.x, _2838, mad(_2847.x, _2803, _2864)) + _2859.x) / _2870;
        _2878 = (mad(_2853.y, _2838, mad(_2847.y, _2803, _2865)) + _2859.y) / _2870;
        _2882 = (mad(_2853.z, _2838, mad(_2847.z, _2803, _2866)) + _2859.z) / _2870;
        _2885 = _2804 + (__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.z * 8.0f);
        _2889 = mad(_2853.w, _2837, mad(_2847.w, _2803, (_2841.w * _2885))) + _2859.w;
        _2892 = _2803 - (__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.w * 4.0f);
        _2895 = mad(_2853.w, _2836, mad(_2847.w, _2892, _2867)) + _2859.w;
        _2900 = ((mad(_2853.x, _2836, mad(_2847.x, _2892, _2864)) + _2859.x) / _2895) - _2874;
        _2905 = ((mad(_2853.y, _2836, mad(_2847.y, _2892, _2865)) + _2859.y) / _2895) - _2878;
        _2910 = ((mad(_2853.z, _2836, mad(_2847.z, _2892, _2866)) + _2859.z) / _2895) - _2882;
        _2916 = ((mad(_2853.x, _2837, mad(_2847.x, _2803, (_2841.x * _2885))) + _2859.x) / _2889) - _2874;
        _2922 = ((mad(_2853.y, _2837, mad(_2847.y, _2803, (_2841.y * _2885))) + _2859.y) / _2889) - _2878;
        _2928 = ((mad(_2853.z, _2837, mad(_2847.z, _2803, (_2841.z * _2885))) + _2859.z) / _2889) - _2882;
        _2931 = (_2922 * _2910) - (_2928 * _2905);
        _2934 = (_2928 * _2900) - (_2916 * _2910);
        _2937 = (_2916 * _2905) - (_2922 * _2900);
        _2939 = rsqrt(dot(float3(_2931, _2934, _2937), float3(_2931, _2934, _2937)));  // [sem: invLength]
        if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
          _2956 = _sunDirection.z;
          _2957 = _sunDirection.y;
          _2958 = _sunDirection.x;
        } else {
          _2956 = _moonDirection.z;
          _2957 = _moonDirection.y;
          _2958 = _moonDirection.x;
        }
        _2964 = (_2805 - (saturate(-0.0f - dot(float3(_2958, _2957, _2956), float3(_188, _189, _190))) * 0.0001f)) + _2802;
        _2980 = min(((float)((bool)(_2838 > _2964))), min(min(((float)((bool)(_2837 > _2964))), ((float)((bool)(_2836 > _2964)))), ((float)((bool)(_2835 > _2964)))));
        _2981 = (_2939 * _2937);
        _2982 = (_2934 * _2939);
        _2983 = (_2931 * _2939);
      } else {
        _2980 = _2694;
        _2981 = _2695;
        _2982 = _2696;
        _2983 = _2697;
      }
      _2986 = _viewPos.x - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.x;
      _2988 = _viewPos.y - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.y;
      _2990 = _viewPos.z - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.z;
      _2991 = _2986 + _2321;
      _2992 = _2988 + _2323;
      _2993 = _2990 + _2325;
      _3005 = (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].w) + mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].z), _2993, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].y), _2992, (_2991 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].x))));
      _3013 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].z), _2993, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].y), _2992, (_2991 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].w);
      _3021 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].z), _2993, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].y), _2992, (_2991 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].w);
      if ((_3021 <= 1.0f) && ((saturate(_3005) == _3005) && (_3021 >= 0.0001f))) {
        if (saturate(_3013) == _3013) {
          _3034 = frac((_3005 * 1024.0f) + -0.5f);
          _3037 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_3005, _3013));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
          _3042 = _3021 + -0.005f;
          _3044 = select((_3037.w > _3042), 1.0f, 0.0f);
          _3046 = select((_3037.x > _3042), 1.0f, 0.0f);
          _3051 = ((select((_3037.z > _3042), 1.0f, 0.0f) - _3044) * _3034) + _3044;
          // [sem: expr_sat]
          _3065 = saturate((((((select((_3037.y > _3042), 1.0f, 0.0f) - _3046) * _3034) + _3046) - _3051) * frac((_3013 * 1024.0f) + -0.5f)) + _3051);
        } else {
          _3065 = 1.0f;  // [sem: expr_sat]
        }
      } else {
        _3065 = 1.0f;  // [sem: expr_sat]
      }
      _3066 = min(_2980, _3065);
      _3067 = saturate(_2689);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived_derived_sat]
      _3068 = saturate(_2688);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived_derived_sat]
      _3069 = saturate(_2687);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived_derived_sat]
      _3074 = ((half)(((half)(_3068 * 0.3395996h)) + ((half)(_3067 * 0.61328125h)))) + ((half)(_3069 * 0.04736328h));
      _3079 = ((half)(((half)(_3068 * 0.9165039h)) + ((half)(_3067 * 0.07019043h)))) + ((half)(_3069 * 0.013450623h));
      _3084 = ((half)(((half)(_3068 * 0.109558105h)) + ((half)(_3067 * 0.020614624h)))) + ((half)(_3069 * 0.8696289h));
      _3087 = (_sunDirection.y > 0.0f);
      if (_3087) {
        _3103 = _sunDirection.x;
        _3104 = _sunDirection.y;
        _3105 = _sunDirection.z;
        _3120 = _3103;
        _3121 = _3104;
        _3122 = _3105;
        _3123 = _precomputedAmbient7.y;
      } else {
        _3094 = (_sunDirection.y > _moonDirection.y);
        _3099 = select(_3094, _sunDirection.z, _moonDirection.z);
        _3100 = select(_3094, _sunDirection.x, _moonDirection.x);
        _3101 = select(_3094, _sunDirection.y, _moonDirection.y);
        if (_3094) {
          _3103 = _3100;
          _3104 = _3101;
          _3105 = _3099;
          _3120 = _3103;
          _3121 = _3104;
          _3122 = _3105;
          _3123 = _precomputedAmbient7.y;
        } else {
          _3120 = _3100;
          _3121 = _3101;
          _3122 = _3099;
          _3123 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
        }
      }
      _3126 = _earthRadius + _2403;
      _3132 = sqrt(((_2405 * _2405) + (_2401 * _2401)) + (_3126 * _3126));
      _3136 = dot(float3((_2401 / _3132), (_3126 / _3132), (_2405 / _3132)), float3(_3120, _3121, _3122));
      _3139 = _atmosphereThickness + -16.0f;
      _3143 = min(max(((_3132 - _earthRadius) / _atmosphereThickness), 16.0f), _3139);
      _3144 = _atmosphereThickness + -32.0f;
      _3145 = max(_3143, 0.0f);
      _3146 = _earthRadius * 2.0f;
      _3152 = (-0.0f - sqrt((_3145 + _3146) * _3145)) / (_3145 + _earthRadius);
      if (_3136 > _3152) {
        _3175 = ((exp2(log2(saturate((_3136 - _3152) / (1.0f - _3152))) * 0.2f) * 0.4921875f) + 0.50390625f);
      } else {
        _3175 = ((exp2(log2(saturate((_3152 - _3136) / (_3152 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
      }
      // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
      _3186 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_3143 + -16.0f) / _3144)) * 0.5f) * 0.96875f) + 0.015625f), _3175), 0.0f);
      _3194 = (_mieAerosolDensity * 2e-05f) * (_mieAerosolAbsorption + 1.0f);
      _3195 = _3194 * _3186.y;
      _3205 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.0556001e-06f);
      _3211 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 4.9788005e-06f);
      _3216 = (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.1360002e-07f);
      _3220 = exp2(((_3205 * _3186.x) + _3195) * -1.442695f);
      _3224 = exp2(((_3211 * _3186.x) + _3195) * -1.442695f);
      _3228 = exp2(((_3216 * _3186.x) + _3195) * -1.442695f);
      _3232 = sqrt((_2321 * _2321) + (_2325 * _2325));
      _3240 = (_cloudAltitude - (max(((_3232 * _3232) + -400000.0f), 0.0f) * 1e-06f)) - _viewPos.y;
      _3252 = (_cloudThickness * (0.5f - (((float)((int)((int)((int)(uint)((int)(_3121 > 0.0f))) - (int)((int)(uint)((int)(_3121 < 0.0f)))))) * 0.5f))) + _3240;
      if (_2323 < _3240) {
        _3255 = dot(float3(0.0f, 1.0f, 0.0f), float3(_3120, _3121, _3122));
        _3261 = select((abs(_3255) < 1e-08f), 1e+08f, ((_3252 - dot(float3(0.0f, 1.0f, 0.0f), float3(_2321, _2323, _2325))) / _3255));
        _3267 = ((_3261 * _3122) + _2325);
        _3268 = _3252;
        _3269 = ((_3261 * _3120) + _2321);
      } else {
        _3267 = _2325;
        _3268 = _2323;
        _3269 = _2321;
      }
      _3276 = saturate(abs(_3121) * 4.0f);  // [sem: expr_sat]
      _3288 = (_distanceScale * -1.442695f) * (_cloudScatteringCoefficient / _distanceScale);
      _3291 = (_3276 * _3276) * exp2(((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_3269 * 5e-05f) + 0.5f), ((_3268 - _3240) / _cloudThickness), ((_3267 * 5e-05f) + 0.5f)), 0.0f)).x) * _3288);
      _3298 = ((1.0f - _3291) * saturate(((_2323 - _cloudThickness) - _3240) * 0.1f)) + _3291;
      _3304 = _3298 * (((_3224 * 0.33951f) + (_3220 * 0.61312f)) + (_3228 * 0.04737f));
      _3310 = _3298 * (((_3224 * 0.91636f) + (_3220 * 0.0702f)) + (_3228 * 0.01345f));
      _3316 = _3298 * (((_3224 * 0.10958f) + (_3220 * 0.02062f)) + (_3228 * 0.8698f));
      _3318 = float(saturate(_2686));
      if (!((_931 == 0) || (_953 != 0))) {
        _3323 = (_1227 > 0.0f);
        _3324 = select(_3323, _1230, _2983);
        _3325 = select(_3323, _1229, _2982);
        _3326 = select(_3323, _1228, _2981);
        _3327 = select(_3323, _1227, 0.8f);
        if (_932 > 0.0f) {
          _3330 = half(_935);
          _3331 = half(_934);
          _3332 = half(_933);
          _3338 = dot(float3(_3324, _3325, _3326), float3(_3120, _3121, _3122));
          _3339 = float(_3332);
          _3340 = float(_3331);
          _3341 = float(_3330);
          _3342 = _932;
          _3343 = _3332;
          _3344 = _3331;
          _3345 = _3330;
          _3346 = _3326;
          _3347 = _3325;
          _3348 = _3324;
          _3349 = _3327;
        } else {
          _3338 = _3318;
          _3339 = 1.0f;
          _3340 = 1.0f;
          _3341 = 1.0f;
          _3342 = 0.1f;
          _3343 = _3084;
          _3344 = _3079;
          _3345 = _3074;
          _3346 = _3326;
          _3347 = _3325;
          _3348 = _3324;
          _3349 = _3327;
        }
      } else {
        _3338 = _3318;
        _3339 = 1.0f;
        _3340 = 1.0f;
        _3341 = 1.0f;
        _3342 = 0.1f;
        _3343 = _3084;
        _3344 = _3079;
        _3345 = _3074;
        _3346 = _2981;
        _3347 = _2982;
        _3348 = _2983;
        _3349 = 0.8f;
      }
      _3354 = float(half(saturate(_3338) * 0.31830987f)) * _3066;
      _3359 = 0.7f / min(max(max(max(_3341, _3340), _3339), 0.01f), 0.7f);
      _3363 = (((_3359 * _3340) + -0.04f) * _3342) + 0.04f;
      _3364 = _3120 - _188;
      _3365 = _3121 - _189;
      _3366 = _3122 - _190;
      _3368 = rsqrt(dot(float3(_3364, _3365, _3366), float3(_3364, _3365, _3366)));  // [sem: invLength]
      _3369 = _3368 * _3364;
      _3370 = _3368 * _3365;
      _3371 = _3368 * _3366;
      _3372 = -0.0f - _188;
      _3373 = -0.0f - _189;
      _3374 = -0.0f - _190;
      _3377 = saturate(max(1e-05f, dot(float3(_3372, _3373, _3374), float3(_3348, _3347, _3346))));  // [sem: expr_sat]
      _3379 = saturate(dot(float3(_3348, _3347, _3346), float3(_3369, _3370, _3371)));  // [sem: expr_sat]
      _3384 = saturate(1.0f - saturate(saturate(dot(float3(_3372, _3373, _3374), float3(_3369, _3370, _3371)))));  // [sem: expr_sat]
      _3385 = _3384 * _3384;
      _3387 = (_3385 * _3385) * _3384;
      _3390 = _3387 * saturate(_3363 * 50.0f);
      _3391 = 1.0f - _3387;
      _3393 = saturate(_3338 * _3066);  // [sem: expr_sat]
      _3394 = _3349 * _3349;
      _3395 = _3394 * _3394;
      _3396 = 1.0f - _3394;
      _3400 = (((_3379 * _3395) - _3379) * _3379) + 1.0f;
      _3412 = (0.5f / ((((_3377 * _3396) + _3394) * _3338) + (_3377 * ((_3396 * _3338) + _3394)))) * (_3395 / ((_3400 * _3400) * 3.1415927f));
      _3431 = ((((_3304 * 0.61312f) + (_3310 * 0.33951f)) + (_3316 * 0.04737f)) * _3123) * ((max((((_3391 * ((((_3359 * _3341) + -0.04f) * _3342) + 0.04f)) + _3390) * _3412), 0.0f) * _3393) + (_3354 * float(_3345)));
      _3446 = ((((_3304 * 0.0702f) + (_3310 * 0.91636f)) + (_3316 * 0.01345f)) * _3123) * ((max((((_3391 * _3363) + _3390) * _3412), 0.0f) * _3393) + (_3354 * float(_3344)));
      _3465 = ((((_3304 * 0.02062f) + (_3310 * 0.10958f)) + (_3316 * 0.8698f)) * _3123) * ((max((((_3391 * ((((_3359 * _3339) + -0.04f) * _3342) + 0.04f)) + _3390) * _3412), 0.0f) * _3393) + (_3354 * float(_3343)));
      _3466 = dot(float3(_3431, _3446, _3465), float3(0.212671f, 0.71516f, 0.072169f));
      _3471 = min((max(0.0005f, _exposure3.w) * 4096.0f), _3466);
      _3472 = max(1e-09f, _3466);
      _3474 = (_3471 * _3431) / _3472;
      _3476 = (_3471 * _3446) / _3472;
      _3478 = (_3471 * _3465) / _3472;
      if ((_95 == 33) || (_95 == 54)) {
        if ((_3087) || ((!(_3087)) && (_sunDirection.y > _moonDirection.y))) {
          _3494 = _sunDirection.z;
          _3495 = _sunDirection.y;
          _3496 = _sunDirection.x;
        } else {
          _3494 = _moonDirection.z;
          _3495 = _moonDirection.y;
          _3496 = _moonDirection.x;
        }
        _3498 = rsqrt(dot(float3(_142, _151, _160), float3(_142, _151, _160)));  // [sem: invLength]
        _3499 = _3498 * _142;
        _3500 = _3498 * _151;
        _3501 = _3498 * _160;
        _3503 = _142 - (_115 * 0.04f);
        _3505 = _151 - (_116 * 0.04f);
        _3507 = _160 - (_117 * 0.04f);
        _3509 = (_viewPos.x - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].x)) + _3503;
        _3511 = (_viewPos.y - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].y)) + _3505;
        _3513 = (_viewPos.z - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].z)) + _3507;
        _3517 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].z), _3513, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].y), _3511, (_3509 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].w);
        _3521 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].z), _3513, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].y), _3511, (_3509 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].w);
        _3529 = (!(_3521 >= _2435)) || (!(((_3517 <= _2436) && (_3517 >= _2435)) && (_3521 <= _2436)));
        _3531 = (_viewPos.x - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].x)) + _3503;
        _3533 = (_viewPos.y - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].y)) + _3505;
        _3535 = (_viewPos.z - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].z)) + _3507;
        _3539 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].z), _3535, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].y), _3533, (_3531 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].w);
        _3543 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].z), _3535, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].y), _3533, (_3531 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].w);
        _3551 = (!(_3543 >= _2435)) || (!(((_3539 <= _2436) && (_3539 >= _2435)) && (_3543 <= _2436)));
        _3553 = select((_3529 && _3551), 0.0f, 0.001f);
        _3555 = select(_3551, select(_3529, 0.0f, _3517), _3539);
        _3557 = select(_3551, select(_3529, 0.0f, _3521), _3543);
        _3567 = select(_3551, select(_3529, 0.0f, (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].z), _3513, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].y), _3511, (_3509 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].w))), (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].z), _3535, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].y), _3533, (_3531 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].w)));
        _3569 = select(_3551, select(_3529, -1, 1), 0);
        [branch]
        if (!(_3569 == -1)) {
          _3574 = (_3555 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x) + -0.5f;
          _3576 = (_3557 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y) + -0.5f;
          _3578 = (int)(floor(_3574));
          _3580 = (int)(floor(_3576));
          _3581 = (uint)((uint)(_3578)) + (uint)(1);
          _3582 = (uint)((uint)(_3580)) + (uint)(1);
          if (!(((uint)_3578 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x)))) || ((uint)_3580 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y)))))) {
            _3599 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3581, _3582, _3569, 0)))).x);
            _3600 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3578, _3582, _3569, 0)))).x);
            _3601 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3581, _3580, _3569, 0)))).x);
            _3602 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3578, _3580, _3569, 0)))).x);
          } else {
            _3599 = 0.0f;
            _3600 = 0.0f;
            _3601 = 0.0f;
            _3602 = 0.0f;
          }
          _3603 = (int)(_3569) << 2;
          _3605 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3603) + (int)(103)))];
          _3611 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3603) + (int)(104)))];
          _3617 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3603) + (int)(105)))];
          _3623 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3603) + (int)(106)))];
          _3628 = _3605.x * _3555;
          _3629 = _3605.y * _3555;
          _3630 = _3605.z * _3555;
          _3631 = _3605.w * _3555;
          _3634 = mad(_3617.w, _3602, mad(_3611.w, _3557, _3631)) + _3623.w;
          _3638 = (mad(_3617.x, _3602, mad(_3611.x, _3557, _3628)) + _3623.x) / _3634;
          _3642 = (mad(_3617.y, _3602, mad(_3611.y, _3557, _3629)) + _3623.y) / _3634;
          _3646 = (mad(_3617.z, _3602, mad(_3611.z, _3557, _3630)) + _3623.z) / _3634;
          _3649 = _3555 + (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.z * 4.0f);
          _3653 = mad(_3617.w, _3601, mad(_3611.w, _3557, (_3605.w * _3649))) + _3623.w;
          _3656 = _3557 - (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.w * 2.0f);
          _3659 = mad(_3617.w, _3600, mad(_3611.w, _3656, _3631)) + _3623.w;
          _3664 = ((mad(_3617.x, _3600, mad(_3611.x, _3656, _3628)) + _3623.x) / _3659) - _3638;
          _3669 = ((mad(_3617.y, _3600, mad(_3611.y, _3656, _3629)) + _3623.y) / _3659) - _3642;
          _3674 = ((mad(_3617.z, _3600, mad(_3611.z, _3656, _3630)) + _3623.z) / _3659) - _3646;
          _3680 = ((mad(_3617.x, _3601, mad(_3611.x, _3557, (_3605.x * _3649))) + _3623.x) / _3653) - _3638;
          _3686 = ((mad(_3617.y, _3601, mad(_3611.y, _3557, (_3605.y * _3649))) + _3623.y) / _3653) - _3642;
          _3692 = ((mad(_3617.z, _3601, mad(_3611.z, _3557, (_3605.z * _3649))) + _3623.z) / _3653) - _3646;
          _3695 = (_3686 * _3674) - (_3692 * _3669);
          _3698 = (_3692 * _3664) - (_3680 * _3674);
          _3701 = (_3680 * _3669) - (_3686 * _3664);
          _3703 = rsqrt(dot(float3(_3695, _3698, _3701), float3(_3695, _3698, _3701)));  // [sem: invLength]
          _3704 = frac(_3574);
          _3711 = (saturate(dot(float3(_3499, _3500, _3501), float3((_3695 * _3703), (_3698 * _3703), (_3703 * _3701)))) * 0.002f) + _3567;
          _3715 = saturate(exp2((_3602 - _3711) * 1.442695e+06f));  // [sem: expr_sat]
          _3719 = saturate(exp2((_3600 - _3711) * 1.442695e+06f));  // [sem: expr_sat]
          _3726 = ((saturate(exp2((_3601 - _3711) * 1.442695e+06f)) - _3715) * _3704) + _3715;
          _3740 = _3599;
          _3741 = _3600;
          _3742 = _3601;
          _3743 = _3602;
          // [sem: expr_sat]
          _3744 = saturate((((_3719 - _3726) + ((saturate(exp2((_3599 - _3711) * 1.442695e+06f)) - _3719) * _3704)) * frac(_3576)) + _3726);
        } else {
          _3740 = 0.0f;
          _3741 = 0.0f;
          _3742 = 0.0f;
          _3743 = 0.0f;
          _3744 = 1.0f;  // [sem: expr_sat]
        }
        _3748 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].z), _3507, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].y), _3505, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].x) * _3503))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].w);
        _3752 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].z), _3507, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].y), _3505, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].x) * _3503))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].w);
        _3756 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].z), _3507, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].y), _3505, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].x) * _3503))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].w);
        if (((_3748 <= _2729) && (_3748 >= _2728)) && (_3752 <= _2729)) {
          _3767 = (_3756 <= 1.0f) && ((_3752 >= _2728) && (_3756 >= -1.0f));
          _3775 = ((int)(uint)(_3767));
          _3776 = select(_3767, 1, _3569);
          _3777 = select(_3767, _3756, _3567);
          _3778 = select(_3767, _3752, _3557);
          _3779 = select(_3767, _3748, _3555);
          _3780 = select(_3767, 1e-05f, _3553);
        } else {
          _3775 = 0;
          _3776 = _3569;
          _3777 = _3567;
          _3778 = _3557;
          _3779 = _3555;
          _3780 = _3553;
        }
        _3784 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].z), _3507, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].y), _3505, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].x) * _3503))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].w);
        _3788 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].z), _3507, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].y), _3505, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].x) * _3503))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].w);
        _3792 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].z), _3507, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].y), _3505, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].x) * _3503))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].w);
        if (((_3784 <= _2729) && (_3784 >= _2728)) && (_3788 <= _2729)) {
          _3803 = (_3792 <= 1.0f) && ((_3788 >= _2728) && (_3792 >= -1.0f));
          _3811 = select(_3803, 1, _3775);
          _3812 = select(_3803, 0, _3776);
          _3813 = select(_3803, _3792, _3777);
          _3814 = select(_3803, _3788, _3778);
          _3815 = select(_3803, _3784, _3779);
          _3816 = select(_3803, 1e-05f, _3780);
        } else {
          _3811 = _3775;
          _3812 = _3776;
          _3813 = _3777;
          _3814 = _3778;
          _3815 = _3779;
          _3816 = _3780;
        }
        [branch]
        if (!(_3811 == 0)) {
          _3823 = (int)(floor((_3815 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f));
          _3827 = (int)(floor((_3814 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f));
          _3828 = (uint)((uint)(_3823)) + (uint)(1);
          _3829 = (uint)((uint)(_3827)) + (uint)(1);
          if (!(((uint)_3823 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x)))) || ((uint)_3827 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y)))))) {
            _3846 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3828, _3829, _3812, 0)))).x);
            _3847 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3823, _3829, _3812, 0)))).x);
            _3848 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3828, _3827, _3812, 0)))).x);
            _3849 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3823, _3827, _3812, 0)))).x);
          } else {
            _3846 = _3740;
            _3847 = _3741;
            _3848 = _3742;
            _3849 = _3743;
          }
          if ((_3087) || ((!(_3087)) && (_sunDirection.y > _moonDirection.y))) {
            _3861 = _sunDirection.z;
            _3862 = _sunDirection.y;
            _3863 = _sunDirection.x;
          } else {
            _3861 = _moonDirection.z;
            _3862 = _moonDirection.y;
            _3863 = _moonDirection.x;
          }
          _3869 = (_3816 - (saturate(-0.0f - dot(float3(_3863, _3862, _3861), float3(_3499, _3500, _3501))) * 0.0001f)) + _3813;
          _3882 = min(((float)((bool)(_3849 > _3869))), min(min(((float)((bool)(_3848 > _3869))), ((float)((bool)(_3847 > _3869)))), ((float)((bool)(_3846 > _3869)))));
        } else {
          _3882 = _3744;
        }
        _3883 = _2986 + _3503;
        _3884 = _2988 + _3505;
        _3885 = _2990 + _3507;
        _3889 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].z), _3885, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].y), _3884, (_3883 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].w);
        _3893 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].z), _3885, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].y), _3884, (_3883 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].w);
        _3897 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].z), _3885, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].y), _3884, (_3883 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].w);
        if ((_3897 <= 1.0f) && ((saturate(_3889) == _3889) && (_3897 >= 0.0001f))) {
          if (saturate(_3893) == _3893) {
            _3910 = frac((_3889 * 1024.0f) + -0.5f);
            // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
            _3913 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_3889, _3893));
            _3918 = _3897 + -0.005f;
            _3920 = select((_3913.w > _3918), 1.0f, 0.0f);
            _3922 = select((_3913.x > _3918), 1.0f, 0.0f);
            _3927 = ((select((_3913.z > _3918), 1.0f, 0.0f) - _3920) * _3910) + _3920;
            // [sem: expr_sat]
            _3941 = saturate((((((select((_3913.y > _3918), 1.0f, 0.0f) - _3922) * _3910) + _3922) - _3927) * frac((_3893 * 1024.0f) + -0.5f)) + _3927);
          } else {
            _3941 = 1.0f;  // [sem: expr_sat]
          }
        } else {
          _3941 = 1.0f;  // [sem: expr_sat]
        }
        // [sem: _3__36__0__0__g_baseColor_load]
        _3952 = __3__36__0__0__g_baseColor.Load(int3(((int)((uint)((1.0f / g_screenSpaceScale.x) * _77))), ((int)((uint)((1.0f / g_screenSpaceScale.y) * _78))), 0));
        _3958 = ((float)((uint)((uint)(((uint)((uint)(_3952.x)) >> 8) & 255)))) * 0.003921569f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _3961 = ((float)((uint)((uint)(_3952.x & 255)))) * 0.003921569f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _3965 = ((float)((uint)((uint)(((uint)((uint)(_3952.y)) >> 8) & 255)))) * 0.003921569f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _3966 = _3958 * _3958;
        _3967 = _3961 * _3961;
        _3968 = _3965 * _3965;
        if ((_3087) || ((!(_3087)) && (_sunDirection.y > _moonDirection.y))) {
          _3988 = _precomputedAmbient7.y;
        } else {
          _3988 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
        }
        _3989 = _viewPos.x + _142;
        _3991 = (_viewPos.y + _151) + _earthRadius;
        _3992 = _viewPos.z + _160;
        _3998 = sqrt(((_3992 * _3992) + (_3989 * _3989)) + (_3991 * _3991));
        _4002 = dot(float3((_3989 / _3998), (_3991 / _3998), (_3992 / _3998)), float3(_3496, _3495, _3494));
        _4006 = min(max(((_3998 - _earthRadius) / _atmosphereThickness), 16.0f), _3139);
        _4007 = max(_4006, 0.0f);
        _4013 = (-0.0f - sqrt((_4007 + _3146) * _4007)) / (_4007 + _earthRadius);
        if (_4002 > _4013) {
          _4036 = ((exp2(log2(saturate((_4002 - _4013) / (1.0f - _4013))) * 0.2f) * 0.4921875f) + 0.50390625f);
        } else {
          _4036 = ((exp2(log2(saturate((_4013 - _4002) / (_4013 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
        }
        // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
        _4045 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_4006 + -16.0f) / _3144)) * 0.5f) * 0.96875f) + 0.015625f), _4036), 0.0f);
        _4048 = _4045.y * _3194;
        _4052 = exp2((_4048 + (_4045.x * _3205)) * -1.442695f);
        _4056 = exp2((_4048 + (_4045.x * _3211)) * -1.442695f);
        _4060 = exp2((_4048 + (_4045.x * _3216)) * -1.442695f);
        _4064 = sqrt((_160 * _160) + (_142 * _142));
        _4070 = (_cloudAltitude - (max(((_4064 * _4064) + -400000.0f), 0.0f) * 1e-06f)) - _viewPos.y;
        _4080 = _4070 + ((0.5f - (((float)((int)((int)((int)(uint)((int)(_3495 > 0.0f))) - (int)((int)(uint)((int)(_3495 < 0.0f)))))) * 0.5f)) * _cloudThickness);
        if (_151 < _4070) {
          _4083 = dot(float3(0.0f, 1.0f, 0.0f), float3(_3496, _3495, _3494));
          _4089 = select((abs(_4083) < 1e-08f), 1e+08f, ((_4080 - dot(float3(0.0f, 1.0f, 0.0f), float3(_142, _151, _160))) / _4083));
          _4095 = ((_4089 * _3494) + _160);
          _4096 = _4080;
          _4097 = ((_4089 * _3496) + _142);
        } else {
          _4095 = _160;
          _4096 = _151;
          _4097 = _142;
        }
        _4100 = saturate(abs(_3495) * 4.0f);  // [sem: expr_sat]
        _4112 = (_4100 * _4100) * exp2(((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_4097 * 5e-05f) + 0.5f), ((_4096 - _4070) / _cloudThickness), ((_4095 * 5e-05f) + 0.5f)), 0.0f)).x) * _3288);
        _4119 = ((1.0f - _4112) * saturate(((_151 - _cloudThickness) - _4070) * 0.1f)) + _4112;
        _4125 = _4119 * (((_4056 * 0.33951f) + (_4052 * 0.61312f)) + (_4060 * 0.04737f));
        _4131 = _4119 * (((_4056 * 0.91636f) + (_4052 * 0.0702f)) + (_4060 * 0.01345f));
        _4137 = _4119 * (((_4056 * 0.10958f) + (_4052 * 0.02062f)) + (_4060 * 0.8698f));
        _4145 = ((_3988 * 0.15734209f) * max(0.0f, (0.3f - dot(float3(_115, _116, _117), float3(_3496, _3495, _3494))))) * saturate(min(_3882, _3941));
        _4186 = (((_4145 * (((_3966 * 0.02062f) + (_3967 * 0.10958f)) + (_3968 * 0.8698f))) * (((_4125 * 0.02062f) + (_4131 * 0.10958f)) + (_4137 * 0.8698f))) + _3478);
        _4187 = (((_4145 * (((_3966 * 0.0702f) + (_3967 * 0.91636f)) + (_3968 * 0.01345f))) * (((_4125 * 0.0702f) + (_4131 * 0.91636f)) + (_4137 * 0.01345f))) + _3476);
        _4188 = (((_4145 * (((_3966 * 0.61312f) + (_3967 * 0.33951f)) + (_3968 * 0.04737f))) * (((_4125 * 0.61312f) + (_4131 * 0.33951f)) + (_4137 * 0.04737f))) + _3474);
      } else {
        _4186 = _3478;
        _4187 = _3476;
        _4188 = _3474;
      }
      _4192 = (_4188 * _2398) * _renderParams2.z;
      _4194 = (_4187 * _2397) * _renderParams2.z;
      _4196 = (_4186 * _2396) * _renderParams2.z;
      _4197 = _4192 + _2311;
      _4198 = _4194 + _2310;
      _4199 = _4196 + _2309;
      _4213 = (((max(_2309, _4196) - _4199) * _2319) + _4199);
      _4214 = (((max(_2310, _4194) - _4198) * _2319) + _4198);
      _4215 = (((max(_2311, _4192) - _4197) * _2319) + _4197);
      _4216 = _2318;
    } else {
      _4213 = _2309;
      _4214 = _2310;
      _4215 = _2311;
      _4216 = 1000.0f;
    }
    if (!_940) {
      __3__38__0__1__g_raytracingHitResultUAV[int2(_73, _76)] = float4(_182, _183, _184, select((_4216 <= 0.0f), 1000.0f, _4216));
    }
    if (_4216 > 128.0f) {
      if (dot(float3(_4215, _4214, _4213), float3(0.212671f, 0.71516f, 0.072169f)) == 0.0f) {
        _4227 = 1;
        while(true) {
          _4229 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_4227) + (int)(20)))];
          _4235 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_4227) + (int)(36)))];
          _4245 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _2321) * _4229.w) + _4235.x));
          _4251 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _2323) * _4229.w) + _4235.y));
          _4257 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _2325) * _4229.w) + _4235.z));
          if (((int)_4245 < (int)((int)(_4229.x + -63.0f))) || ((!((int)_4245 < (int)((int)(_4229.x + -63.0f)))) && (!((int)_4245 < (int)((int)(_4229.x + 63.0f))))) || (((!((int)_4245 < (int)((int)(_4229.x + -63.0f)))) && ((int)_4245 < (int)((int)(_4229.x + 63.0f)))) && ((int)_4251 < (int)((int)(_4229.y + -31.0f)))) || ((((!((int)_4245 < (int)((int)(_4229.x + -63.0f)))) && ((int)_4245 < (int)((int)(_4229.x + 63.0f)))) && (!((int)_4251 < (int)((int)(_4229.y + -31.0f))))) && (!((int)_4251 < (int)((int)(_4229.y + 31.0f))))) || (((((!((int)_4245 < (int)((int)(_4229.x + -63.0f)))) && ((int)_4245 < (int)((int)(_4229.x + 63.0f)))) && (!((int)_4251 < (int)((int)(_4229.y + -31.0f))))) && ((int)_4251 < (int)((int)(_4229.y + 31.0f)))) && ((int)_4257 < (int)((int)(_4229.z + -63.0f)))) || ((((((!((int)_4245 < (int)((int)(_4229.x + -63.0f)))) && ((int)_4245 < (int)((int)(_4229.x + 63.0f)))) && (!((int)_4251 < (int)((int)(_4229.y + -31.0f))))) && ((int)_4251 < (int)((int)(_4229.y + 31.0f)))) && (!((int)_4257 < (int)((int)(_4229.z + -63.0f))))) && (!((int)_4257 < (int)((int)(_4229.z + 63.0f)))))) {
            _4282 = (int)(_4227) + (int)(1);
            if ((uint)_4282 < (uint)8) {
              _4227 = _4282;
              continue;
            } else {
              _4326 = 1.0f;  // [sem: expr_sat]
            }
          } else {
            if (!((uint)_4227 > (uint)3)) {
              _4290 = 1.0f / ((float)((uint)((uint)(1) << (_4227 & 31))));
              _4298 = frac(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _2325) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z) * _4290);
              // [sem: expr_sat]
              _4326 = saturate(1.0f - ((__3__36__0__1__g_skyVisibilityVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _2321) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _4290), (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _2323) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y) * _4290), (((((float)((uint)((uint)((uint)(_4227)) * (uint)(66)))) + 1.0f) + ((select((_4298 < 0.0f), 1.0f, 0.0f) + _4298) * 64.0f)) * 0.003787879f)), 0.0f)).x));
            } else {
              _4326 = 1.0f;  // [sem: expr_sat]
            }
          }
          _4329 = _renderParams.w * _4326;
          _4330 = (_932 == 0.0f);
          // [sem: _3__36__0__0__g_environmentColor_sampleLod]
          _4338 = __3__36__0__0__g_environmentColor.SampleLevel(__3__40__0__0__g_samplerTrilinear, float3(select(_4330, (-0.0f - _188), _1230), select(_4330, _189, _1229), select(_4330, (-0.0f - _190), _1228)), 4.0f);
          _4352 = ((_4329 * select(_4330, 0.03125f, _933)) * _4338.z);
          _4353 = ((_4329 * select(_4330, 0.03125f, _934)) * _4338.y);
          _4354 = ((_4329 * select(_4330, 0.03125f, _935)) * _4338.x);
          break;
        }
      } else {
        _4352 = _4213;
        _4353 = _4214;
        _4354 = _4215;
      }
    } else {
      _4352 = _4213;
      _4353 = _4214;
      _4354 = _4215;
    }
    _4357 = saturate(1.0f - saturate(_2308));  // [sem: expr_sat]
    _4362 = (_4357 - (_renderParams2.w * _4357)) + _renderParams2.w;
    // [sem: _3__36__0__0__g_environmentColor_sampleLod]
    _4365 = __3__36__0__0__g_environmentColor.SampleLevel(__3__40__0__0__g_samplerTrilinear, float3(_188, _189, _190), 4.0f);
    _4371 = _renderParams.w * _4362;
    _4372 = _4371 * _4365.x;
    _4373 = _4371 * _4365.y;
    _4374 = _4371 * _4365.z;
    _4375 = dot(float3(_4372, _4373, _4374), float3(0.212671f, 0.71516f, 0.072169f));
    _4380 = min((max(0.01f, _exposure3.w) * 2048.0f), _4375);
    _4381 = max(1e-09f, _4375);
    _4385 = ((__3__36__0__0__g_raytracingDiffuseRayInversePDF.Load(int3(_73, _76, 0))).x) * 2.0f;
    _4391 = (((_4380 * _4372) / _4381) + (_renderParams2.y * _4354)) * _4385;
    _4396 = (((_4380 * _4373) / _4381) + (_renderParams2.y * _4353)) * _4385;
    _4401 = (((_4380 * _4374) / _4381) + (_renderParams2.y * _4352)) * _4385;
    if (!(_renderParams.y == 0.0f)) {
      _4406 = saturate(dot(float3(_115, _116, _117), float3(_188, _189, _190)));  // [sem: expr_sat]
      _4411 = (_4406 * _4401);
      _4412 = (_4406 * _4396);
      _4413 = (_4406 * _4391);
    } else {
      _4411 = _4401;
      _4412 = _4396;
      _4413 = _4391;
    }
    __3__38__0__1__g_diffuseResultUAV[int2(_73, _76)] = float4(((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - min(15000.0f, (_exposure4.x * _4413)))))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - min(15000.0f, (_exposure4.x * _4412)))))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - min(15000.0f, (_exposure4.x * _4411)))))))), (half)(half(1.0f - _4362)));
    break;
  }
}
