struct SurfelData {
  uint _baseColor;
  uint _normal;
  half3 _radiance;
  uint16_t _radius;
};


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
  int _485;
  int _548;
  int _549;
  int _550;
  int _551;
  int _557;
  int _558;
  int _559;
  int _560;
  int _561;
  int _564;
  int _565;
  int _566;
  int _567;
  int _570;
  int _571;
  int _572;
  int _573;
  int _574;
  int _581;
  int _602;
  int _608;
  int _609;
  int _610;
  int _611;
  int _612;
  float _671;
  float _672;
  float _673;
  float _674;
  float _675;
  float _676;
  float _677;
  int _678;
  float _917;
  float _918;
  float _919;
  float _920;
  float _937;
  float _938;
  float _939;
  float _959;
  float _960;
  float _961;
  float _983;
  float _984;
  float _985;
  float _992;
  float _993;
  float _994;
  float _995;
  float _996;
  float _997;
  float _998;
  float _999;
  int _1000;
  float _1001;
  float _1002;
  float _1003;
  float _1004;
  float _1005;
  bool _1020;
  float _1185;
  float _1186;
  float _1187;
  float _1188;
  float _1199;
  float _1200;
  float _1201;
  float _1202;
  float _1203;
  float _1204;
  float _1205;
  float _1206;
  float _1207;
  int _1208;
  int _1210;
  int _1271;
  int _1272;
  float _1279;
  float _1339;
  float _1340;
  float _1341;
  float _1342;
  int _1348;
  int _1406;
  int _1443;
  float _1444;
  float _1445;
  float _1446;
  float _1447;
  float _1448;
  int _1450;
  float _1667;
  float _1668;
  float _1687;
  float _1688;
  float _1689;
  float _1690;
  float _1691;
  float _1693;
  float _1694;
  float _1695;
  float _1696;
  float _1697;
  float _1698;
  int _1715;
  int _1778;
  int _1779;
  int _1780;
  int _1781;
  int _1807;
  int _1870;
  int _1871;
  int _1872;
  int _1873;
  int _1879;
  int _1880;
  int _1881;
  int _1882;
  int _1883;
  int _1886;
  int _1887;
  int _1888;
  int _1889;
  int _1892;
  int _1893;
  int _1894;
  int _1895;
  int _1896;
  int _1903;
  int _1924;
  int _1930;
  int _1931;
  int _1932;
  int _1933;
  int _1934;
  float _1993;
  float _1994;
  float _1995;
  float _1996;
  int _1997;
  float _2228;
  float _2229;
  float _2230;
  float _2231;
  float _2248;
  float _2249;
  float _2250;
  float _2251;
  float _2279;
  float _2280;
  float _2281;
  float _2282;
  float _2283;
  bool _2297;
  float _2320;
  float _2321;
  float _2322;
  float _2323;
  float _2409;
  float _2410;
  float _2411;
  float _2554;
  float _2555;
  float _2556;
  float _2557;
  half _2558;
  half _2559;
  half _2560;
  half _2561;
  float _2699;
  float _2700;
  float _2701;
  float _2702;
  float _2703;
  float _2704;
  float _2705;
  float _2706;
  half _2707;
  half _2708;
  half _2709;
  half _2710;
  float _2761;
  float _2762;
  float _2763;
  float _2764;
  int _2765;
  int _2766;
  float _2813;
  float _2814;
  float _2815;
  float _2816;
  int _2817;
  int _2818;
  float _2848;
  float _2849;
  float _2850;
  float _2851;
  float _2970;
  float _2971;
  float _2972;
  float _2991;
  float _2992;
  float _2993;
  float _2994;
  float _3076;
  float _3111;
  float _3112;
  float _3113;
  float _3133;
  float _3191;
  float _3292;
  float _3293;
  float _3294;
  float _3362;
  float _3363;
  float _3364;
  float _3365;
  half _3366;
  half _3367;
  half _3368;
  float _3369;
  float _3370;
  float _3371;
  float _3372;
  float _3373;
  float _3505;
  float _3506;
  float _3507;
  float _3611;
  float _3612;
  float _3613;
  float _3614;
  float _3752;
  float _3753;
  float _3754;
  float _3755;
  float _3756;
  float _3787;
  float _3788;
  float _3789;
  float _3790;
  int _3791;
  int _3792;
  float _3823;
  float _3824;
  float _3825;
  float _3826;
  int _3827;
  int _3828;
  float _3858;
  float _3859;
  float _3860;
  float _3861;
  float _3873;
  float _3874;
  float _3875;
  float _3894;
  float _3953;
  float _4010;
  float _4064;
  float _4133;
  float _4134;
  float _4135;
  float _4188;
  float _4189;
  float _4190;
  float _4210;
  float _4211;
  float _4212;
  float _4213;
  int _4224;
  int _4282;
  float _4323;
  float _4349;
  float _4350;
  float _4351;
  float _4408;
  float _4409;
  float _4410;
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
  int _470;
  bool _474;
  int _475;
  int _476;
  int _477;
  int _478;
  float _480;
  float4 _487;
  float4 _515;
  int _525;
  int _526;
  int _527;
  int _540;
  int _576;
  int _582;
  int _583;
  int _584;
  int _596;
  int _603;
  int _613;
  uint _618;
  int _624;
  uint _631;
  float _633;
  float4 _635;
  int _680;
  int _683;
  int _685;
  int16_t _688;
  half _691;
  half _692;
  half _693;
  float _699;
  float _700;
  float _701;
  float _726;
  float _727;
  float _728;
  float _740;
  float _741;
  float _742;
  float _744;
  bool _746;
  float _750;
  float _766;
  float _767;
  float _768;
  float _802;
  float _803;
  float _804;
  bool _822;
  float _823;
  float _824;
  float _825;
  float _828;
  float _831;
  float _834;
  float _835;
  float _839;
  float _840;
  float _841;
  float _867;
  float _871;
  float _896;
  bool _900;
  float _910;
  float _911;
  float _912;
  float _913;
  int _914;
  float _923;
  float _943;
  float _944;
  float _945;
  float _946;
  float _949;
  float _950;
  float _954;
  float _975;
  bool _1007;
  float _1024;
  float _1025;
  float _1026;
  float _1062;
  float _1063;
  float _1064;
  float _1065;
  float _1068;
  float _1069;
  uint2 _1094;
  float _1101;
  float4 _1132;
  float _1157;
  float _1158;
  float _1159;
  float _1161;
  float _1162;
  float _1163;
  float _1164;
  float _1170;
  float _1172;
  float _1180;
  float _1189;
  float _1190;
  float4 _1212;
  float4 _1240;
  int _1250;
  int _1251;
  int _1252;
  int _1265;
  float _1285;
  float _1287;
  float _1288;
  float _1301;
  float _1302;
  float _1303;
  float _1307;
  float _1308;
  float _1309;
  float _1313;
  float _1314;
  float _1315;
  float _1325;
  float _1346;
  float4 _1350;
  float4 _1378;
  int _1388;
  int _1389;
  int _1390;
  int _1403;
  float _1416;
  float _1417;
  float _1418;
  bool _1422;
  bool _1423;
  bool _1424;
  float _1425;
  float _1426;
  float _1427;
  bool _1428;
  bool _1429;
  bool _1430;
  float4 _1452;
  float4 _1471;
  float _1475;
  float _1476;
  float _1477;
  int _1493;
  float _1500;
  float _1501;
  float _1502;
  float _1503;
  float _1512;
  float _1513;
  float _1514;
  float _1515;
  float _1516;
  float _1517;
  int _1521;
  int _1522;
  int _1523;
  uint4 _1530;
  float _1547;
  float _1570;
  float _1571;
  float _1572;
  float _1603;
  float _1605;
  float _1612;
  float _1624;
  float _1630;
  float _1631;
  float _1647;
  float _1653;
  float _1673;
  float _1674;
  float _1678;
  float _1679;
  float _1680;
  int _1681;
  int _1699;
  float _1702;
  float _1706;
  float _1707;
  float _1708;
  float4 _1717;
  float4 _1745;
  int _1755;
  int _1756;
  int _1757;
  int _1770;
  int _1793;
  bool _1797;
  int _1798;
  int _1799;
  int _1800;
  int _1801;
  float _1802;
  float4 _1809;
  float4 _1837;
  int _1847;
  int _1848;
  int _1849;
  int _1862;
  int _1898;
  int _1904;
  int _1905;
  int _1906;
  int _1918;
  int _1925;
  int _1935;
  uint _1940;
  int _1946;
  uint _1953;
  float _1955;
  float4 _1957;
  int _1999;
  int _2002;
  int _2004;
  int16_t _2007;
  half _2010;
  half _2011;
  half _2012;
  float _2018;
  float _2019;
  float _2020;
  float _2045;
  float _2046;
  float _2047;
  float _2059;
  float _2060;
  float _2061;
  float _2063;
  bool _2065;
  float _2069;
  float _2085;
  float _2086;
  float _2087;
  float _2109;
  float _2112;
  float _2115;
  float _2124;
  float _2125;
  float _2126;
  float _2146;
  float _2149;
  float _2152;
  float _2153;
  float _2157;
  float _2158;
  float _2159;
  float _2185;
  float _2189;
  float _2214;
  float _2221;
  float _2222;
  float _2223;
  float _2224;
  int _2225;
  float _2234;
  float _2259;
  float _2269;
  float _2270;
  float _2271;
  float _2273;
  float _2274;
  float _2286;
  bool _2287;
  float _2301;
  float _2302;
  float _2305;
  float _2326;
  float _2330;
  float _2332;
  float _2336;
  float _2337;
  float _2338;
  float _2368;
  float _2373;
  float _2374;
  half4 _2401;
  float _2418;
  float _2419;
  float _2420;
  float _2425;
  float _2426;
  float _2427;
  float _2447;
  float _2451;
  float _2458;
  float _2459;
  bool _2466;
  float _2475;
  float _2476;
  float _2477;
  float _2497;
  float _2501;
  bool _2512;
  float _2513;
  float _2514;
  float _2515;
  int _2516;
  float _2522;
  float _2523;
  int _2526;
  int _2527;
  uint _2530;
  uint _2531;
  half4 _2548;
  int _2562;
  float4 _2564;
  float4 _2570;
  float4 _2576;
  float4 _2582;
  float _2587;
  float _2591;
  float _2595;
  float _2599;
  float _2602;
  float _2603;
  float _2604;
  float _2605;
  float _2608;
  float _2624;
  float _2630;
  float _2642;
  float _2646;
  float _2647;
  float _2648;
  float _2649;
  float _2650;
  float _2651;
  float _2654;
  float _2657;
  float _2660;
  float _2662;
  float _2663;
  float _2664;
  float _2665;
  float _2666;
  float _2671;
  float _2684;
  float _2686;
  float _2692;
  float _2730;
  float _2734;
  float _2738;
  float _2741;
  float _2742;
  bool _2753;
  float _2786;
  float _2790;
  float _2794;
  bool _2805;
  int _2828;
  int _2829;
  uint _2832;
  uint _2833;
  uint _2852;
  float4 _2854;
  float4 _2860;
  float4 _2866;
  float4 _2872;
  float _2877;
  float _2881;
  float _2885;
  float _2889;
  float _2892;
  float _2893;
  float _2894;
  float _2895;
  float _2898;
  float _2914;
  float _2920;
  float _2932;
  float _2936;
  float _2937;
  float _2938;
  float _2939;
  float _2940;
  float _2941;
  float _2944;
  float _2947;
  float _2950;
  float _2952;
  float _2978;
  float _2999;
  float _3000;
  float _3001;
  float _3002;
  float _3003;
  float _3004;
  float _3024;
  float _3028;
  float _3032;
  float _3047;
  float4 _3051;
  float _3056;
  float _3061;
  float _3063;
  float _3070;
  float _3077;
  half _3078;
  half _3079;
  half _3080;
  half _3094;
  half _3095;
  half _3096;
  bool _3099;
  float _3136;
  float _3142;
  float _3147;
  float _3151;
  float _3153;
  float _3155;
  float _3161;
  float _3162;
  float _3168;
  float2 _3196;
  float _3215;
  float _3216;
  float _3218;
  float _3224;
  float _3227;
  float _3230;
  float _3236;
  float _3237;
  float _3238;
  float _3257;
  float _3265;
  float _3277;
  float _3280;
  float _3286;
  float _3307;
  float _3308;
  float _3314;
  float _3316;
  float _3323;
  float _3324;
  float _3325;
  float _3326;
  float _3345;
  bool _3347;
  float _3348;
  float _3349;
  float _3350;
  float _3351;
  half _3354;
  half _3355;
  half _3356;
  float _3381;
  float _3389;
  float _3400;
  float _3402;
  float _3403;
  float _3404;
  float _3406;
  float _3407;
  float _3408;
  float _3409;
  float _3410;
  float _3411;
  float _3412;
  float _3417;
  float _3419;
  float _3422;
  float _3423;
  float _3425;
  float _3428;
  float _3429;
  float _3437;
  float _3438;
  float _3439;
  float _3440;
  float _3452;
  float _3456;
  float _3467;
  float _3469;
  float _3471;
  float _3476;
  float _3477;
  float _3481;
  float _3482;
  float _3483;
  float _3484;
  float _3512;
  float _3513;
  float _3514;
  float _3515;
  float _3519;
  float _3520;
  float _3521;
  float _3525;
  float _3526;
  float _3527;
  float _3531;
  float _3535;
  bool _3546;
  float _3554;
  float _3555;
  float _3556;
  float _3560;
  float _3564;
  bool _3575;
  float _3577;
  float _3578;
  float _3579;
  float _3580;
  int _3581;
  float _3587;
  float _3588;
  int _3591;
  int _3592;
  uint _3595;
  uint _3596;
  int _3615;
  float4 _3617;
  float4 _3623;
  float4 _3629;
  float4 _3635;
  float _3640;
  float _3644;
  float _3648;
  float _3652;
  float _3655;
  float _3656;
  float _3657;
  float _3658;
  float _3661;
  float _3677;
  float _3683;
  float _3695;
  float _3699;
  float _3700;
  float _3701;
  float _3702;
  float _3703;
  float _3704;
  float _3707;
  float _3710;
  float _3713;
  float _3715;
  float _3719;
  float _3724;
  float _3737;
  float _3739;
  float _3745;
  float _3760;
  float _3764;
  float _3768;
  bool _3779;
  float _3796;
  float _3800;
  float _3804;
  bool _3815;
  int _3838;
  int _3839;
  uint _3842;
  uint _3843;
  float _3881;
  float _3895;
  float _3896;
  float _3897;
  float _3901;
  float _3905;
  float _3909;
  float _3924;
  float4 _3928;
  float _3933;
  float _3938;
  float _3940;
  float _3947;
  uint4 _3959;
  float _3965;
  float _3968;
  float _3972;
  float _3973;
  float _3974;
  float _3975;
  float _4011;
  float _4013;
  float _4014;
  float _4020;
  float _4025;
  float _4028;
  float _4035;
  float _4041;
  float2 _4067;
  float _4071;
  float _4081;
  float _4082;
  float _4083;
  float _4102;
  float _4108;
  float _4118;
  float _4121;
  float _4127;
  float _4149;
  float _4151;
  float _4158;
  float _4159;
  float _4160;
  float _4161;
  float _4177;
  float _4191;
  float _4192;
  float _4193;
  float _4197;
  float _4198;
  float _4199;
  float4 _4226;
  float4 _4254;
  int _4264;
  int _4265;
  int _4266;
  int _4279;
  float _4302;
  float _4306;
  float _4326;
  bool _4327;
  float4 _4335;
  float _4358;
  float _4362;
  float4 _4366;
  float _4372;
  float _4373;
  float _4374;
  float _4375;
  float _4380;
  float _4381;
  float _4385;
  float _4395;
  float _4396;
  float _4397;
  float _4398;
  float _4403;
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
  _106 = ((uint)((uint)(_99.y)) >> 24) & 127;  // [sem: _3__36__0__0__g_normalDepth_load_derived]
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
  _177 = (float)((uint)((uint)(((int)((uint)((uint)((uint)((uint)(_frameNumber.x)) >> 2)) * (uint)(71))) & 31)));
  if (!((uint)_106 > (uint)11) || !(((uint)_106 < (uint)20) || (_106 == 107))) {
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
      _249 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_247) + (int)(20)))];
      _277 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_247) + (int)(36)))];
      _287 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _243) * _249.w) + _277.x));
      _288 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _244) * _249.w) + _277.y));
      _289 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _245) * _249.w) + _277.z));
      if (!(((((int)_287 >= (int)((int)(_249.x + -63.0f))) && ((int)_287 < (int)((int)(_249.x + 63.0f)))) && (((int)_288 >= (int)((int)(_249.y + -31.0f))) && ((int)_288 < (int)((int)(_249.y + 31.0f))))) && (((int)_289 >= (int)((int)(_249.z + -63.0f))) && ((int)_289 < (int)((int)(_249.z + 63.0f)))))) {
        _302 = (int)(_247) + (int)(1);
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
      _318 = min(_207, (((float)((int)((int)((uint)(1) << (_305 & 31))))) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x));
      _322 = (_318 * select(_206, _312, _232)) + _243;
      _323 = (_318 * select(_206, _313, _233)) + _244;
      _324 = (_318 * select(_206, _314, _234)) + _245;
      _326 = 0;
      while(true) {
        _328 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_326) + (int)(20)))];
        _356 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_326) + (int)(36)))];
        _366 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _322) * _328.w) + _356.x));
        _367 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _323) * _328.w) + _356.y));
        _368 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _324) * _328.w) + _356.z));
        if (!(((((int)_366 >= (int)((int)(_328.x + -63.0f))) && ((int)_366 < (int)((int)(_328.x + 63.0f)))) && (((int)_367 >= (int)((int)(_328.y + -31.0f))) && ((int)_367 < (int)((int)(_328.y + 31.0f))))) && (((int)_368 >= (int)((int)(_328.z + -63.0f))) && ((int)_368 < (int)((int)(_328.z + 63.0f)))))) {
          _381 = (int)(_326) + (int)(1);
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
              _394 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_392) + (int)(20)))];
              _422 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_392) + (int)(36)))];
              _432 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _322) * _394.w) + _422.x));
              _433 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _323) * _394.w) + _422.y));
              _434 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _324) * _394.w) + _422.z));
              if (((((int)_432 >= (int)((int)(_394.x + -63.0f))) && ((int)_432 < (int)((int)(_394.x + 63.0f)))) && (((int)_433 >= (int)((int)(_394.y + -31.0f))) && ((int)_433 < (int)((int)(_394.y + 31.0f))))) && (((int)_434 >= (int)((int)(_394.z + -63.0f))) && ((int)_434 < (int)((int)(_394.z + 63.0f))))) {
                _455 = (_432 & 127);
                _456 = (_433 & 63);
                _457 = (_434 & 127);
                _458 = _392;
              } else {
                _447 = (int)(_392) + (int)(1);
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
                _470 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_455, _456, ((int)((uint)((uint)((int)((int)((uint)((uint)(_458)) * (uint)(130))) | (int)(1))) + (uint)((uint)(_457)))), 0)))).x) & 4194303;
                _474 = (_470 != 0) && ((uint)((int)(_470) + (int)(4)) < (uint)3145729);
                _475 = select(_474, _455, -10000);
                _476 = select(_474, _456, -10000);
                _477 = select(_474, _457, -10000);
                _478 = select(_474, _458, -10000);
                _480 = (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 0.5f) * ((float)((int)((int)((uint)(1) << (_458 & 31)))));
                _485 = 0;
                while(true) {
                  _487 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_485) + (int)(20)))];
                  _515 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_485) + (int)(36)))];
                  _525 = (int)(floor((((_322 - _480) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x) * _487.w) + _515.x));
                  _526 = (int)(floor((((_323 - _480) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y) * _487.w) + _515.y));
                  _527 = (int)(floor((((_324 - _480) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z) * _487.w) + _515.z));
                  if (((((int)_525 >= (int)((int)(_487.x + -63.0f))) && ((int)_525 < (int)((int)(_487.x + 63.0f)))) && (((int)_526 >= (int)((int)(_487.y + -31.0f))) && ((int)_526 < (int)((int)(_487.y + 31.0f))))) && (((int)_527 >= (int)((int)(_487.z + -63.0f))) && ((int)_527 < (int)((int)(_487.z + 63.0f))))) {
                    _548 = (_525 & 127);
                    _549 = (_526 & 63);
                    _550 = (_527 & 127);
                    _551 = _485;
                  } else {
                    _540 = (int)(_485) + (int)(1);
                    if ((uint)_540 < (uint)8) {
                      _485 = _540;
                      continue;
                    } else {
                      _548 = -10000;
                      _549 = -10000;
                      _550 = -10000;
                      _551 = -10000;
                    }
                  }
                  if (!((uint)_551 > (uint)5)) {
                    if (_470 == 0) {
                      _557 = 0;
                      _558 = _478;
                      _559 = _477;
                      _560 = _476;
                      _561 = _475;
                      while(true) {
                        _570 = 0;
                        _571 = _558;
                        _572 = _559;
                        _573 = _560;
                        _574 = _561;
                        while(true) {
                          _581 = 0;
                          while(true) {
                            _582 = (int)(_581) + (int)(_548);
                            _583 = (int)(_570) + (int)(_549);
                            _584 = (int)(_557) + (int)(_550);
                            bool __branch_chain_580;
                            if (((uint)_583 > (uint)63) || ((uint)((int)(_582) | (int)(_584)) > (uint)127)) {
                              _602 = 0;
                              __branch_chain_580 = true;
                            } else {
                              _596 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_582, _583, ((int)((uint)((uint)(_584)) + (uint)((uint)((int)((int)((uint)((uint)(_551)) * (uint)(130))) | (int)(1))))), 0)))).x) & 4194303;
                              if (!((_596 != 0) && ((uint)((int)(_596) + (int)(4)) < (uint)3145729))) {
                                _602 = _596;
                                __branch_chain_580 = true;
                              } else {
                                _608 = _582;
                                _609 = _583;
                                _610 = _584;
                                _611 = _551;
                                _612 = _596;
                                __branch_chain_580 = false;
                              }
                            }
                            if (__branch_chain_580) {
                              _603 = (int)(_581) + (int)(1);
                              if (((int)_603 < (int)2) && (_602 == 0)) {
                                _581 = _603;
                                continue;
                              } else {
                                _608 = _574;
                                _609 = _573;
                                _610 = _572;
                                _611 = _571;
                                _612 = _602;
                              }
                            }
                            _613 = (int)(_570) + (int)(1);
                            if (((int)_613 < (int)2) && (_612 == 0)) {
                              _570 = _613;
                              _571 = _611;
                              _572 = _610;
                              _573 = _609;
                              _574 = _608;
                              __loop_jump_target = 569;
                              break;
                            }
                            while(true) {
                              _576 = (int)(_557) + (int)(1);
                              if (((int)_576 < (int)2) && (_612 == 0)) {
                                _557 = _576;
                                _558 = _611;
                                _559 = _610;
                                _560 = _609;
                                _561 = _608;
                                __loop_jump_target = 556;
                                break;
                              }
                              while(true) {
                                _564 = _611;
                                _565 = _610;
                                _566 = _609;
                                _567 = _608;
                                break;
                              }
                              break;
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
                        if (__loop_jump_target == 556) {
                          __loop_jump_target = -1;
                          continue;
                        }
                        if (__loop_jump_target != -1) {
                          break;
                        }
                        break;
                      }
                    } else {
                      _564 = _478;
                      _565 = _477;
                      _566 = _476;
                      _567 = _475;
                    }
                    if ((uint)_564 < (uint)6) {
                      _618 = (uint)((uint)(_564)) * (uint)(130);
                      _624 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_567, _566, ((int)((uint)((uint)((int)(_618) | (int)(1))) + (uint)((uint)(_565)))), 0)))).x) & 4194303;
                      if ((_624 != 0) && ((uint)((int)(_624) + (int)(4)) < (uint)3145729)) {
                        _631 = (uint)(1) << (_564 & 31);
                        _633 = ((float)((int)(_631))) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                        _635 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((uint)((uint)((uint)(_564)) + (uint)(20)))];
                        _671 = 0.0f;
                        _672 = 0.0f;
                        _673 = 0.0f;
                        _674 = _235;
                        _675 = _236;
                        _676 = _237;
                        _677 = 0.0f;
                        _678 = 0;
                        while(true) {
                          _680 = (int)((int)(_624) + (int)(-1)) + (int)(_678);
                          _683 = __3__37__0__0__g_surfelDataBuffer[_680]._baseColor;
                          _685 = __3__37__0__0__g_surfelDataBuffer[_680]._normal;
                          _688 = __3__37__0__0__g_surfelDataBuffer[_680]._radius;
                          if (!(_683 == 0)) {
                            _691 = __3__37__0__0__g_surfelDataBuffer[_680]._radiance.z;
                            _692 = __3__37__0__0__g_surfelDataBuffer[_680]._radiance.y;
                            _693 = __3__37__0__0__g_surfelDataBuffer[_680]._radiance.x;
                            _699 = (float)((uint)((uint)(_683 & 255)));
                            _700 = (float)((uint)((uint)(((uint)((uint)(_683)) >> 8) & 255)));
                            _701 = (float)((uint)((uint)(((uint)((uint)(_683)) >> 16) & 255)));
                            _726 = select(((_699 * 0.003921569f) < 0.04045f), (_699 * 0.000303527f), exp2(log2((_699 * 0.003717127f) + 0.052132703f) * 2.4f));
                            _727 = select(((_700 * 0.003921569f) < 0.04045f), (_700 * 0.000303527f), exp2(log2((_700 * 0.003717127f) + 0.052132703f) * 2.4f));
                            _728 = select(((_701 * 0.003921569f) < 0.04045f), (_701 * 0.000303527f), exp2(log2((_701 * 0.003717127f) + 0.052132703f) * 2.4f));
                            _740 = (((float)((uint)((uint)(_685 & 255)))) * 0.007874016f) + -1.0f;
                            _741 = (((float)((uint)((uint)(((uint)((uint)(_685)) >> 8) & 255)))) * 0.007874016f) + -1.0f;
                            _742 = (((float)((uint)((uint)(((uint)((uint)(_685)) >> 16) & 255)))) * 0.007874016f) + -1.0f;
                            _744 = rsqrt(dot(float3(_740, _741, _742), float3(_740, _741, _742)));  // [sem: invLength]
                            _746 = ((_685 & 16777215) == 0);
                            _750 = (_633 * 0.0019607844f) * ((float)((uint16_t)((int16_t)(_688 & 255))));
                            _766 = (((((float)((uint)((uint)((uint)((uint)(_683)) >> 24)))) * 0.003937008f) + -0.5f) * _633) + ((((_635.x + -63.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_567)) + (uint)(64)) - (uint)((uint)((int)(_635.x))))) & 127)))) * _633) - _viewPos.x);
                            _767 = (((((float)((uint)((uint)((uint)((uint)(_685)) >> 24)))) * 0.003937008f) + -0.5f) * _633) + ((((_635.y + -31.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_566)) + (uint)(32)) - (uint)((uint)((int)(_635.y))))) & 63)))) * _633) - _viewPos.y);
                            _768 = (((((float)((uint16_t)((int16_t)((uint16_t)(_688) >> 8)))) * 0.003937008f) + -0.5f) * _633) + ((((_635.z + -63.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_565)) + (uint)(64)) - (uint)((uint)((int)(_635.z))))) & 127)))) * _633) - _viewPos.z);
                            if (!((((_693 < 0.0h) || ((_726 > 1.1f) || (_726 < 0.0f))) || ((_692 < 0.0h) || ((_727 > 1.1f) || (_727 < 0.0f)))) || ((_691 < 0.0h) || ((_728 > 1.1f) || (_728 < 0.0f))))) {
                              _802 = -0.0f - min(0.0f, (-0.0f - float(_693)));
                              _803 = -0.0f - min(0.0f, (-0.0f - float(_692)));
                              _804 = -0.0f - min(0.0f, (-0.0f - float(_691)));
                              _822 = (_219.w == 0.0f);  // [sem: _3__36__0__0__g_raytracingNormal_load_derived]
                              _823 = select(_822, _312, _674);
                              _824 = select(_822, _313, _675);
                              _825 = select(_822, _314, _676);
                              _828 = ((-0.0f - _166) - _240) + _766;
                              _831 = ((-0.0f - _167) - _241) + _767;
                              _834 = ((-0.0f - _168) - _242) + _768;
                              _835 = dot(float3(_828, _831, _834), float3(_823, _824, _825));
                              _839 = _828 - (_835 * _823);
                              _840 = _831 - (_835 * _824);
                              _841 = _834 - (_835 * _825);
                              _867 = 1.0f / ((float)((uint)((uint)(_631))));
                              _871 = frac(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _768) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z) * _867);
                              _896 = select(((int)_564 > (int)5), 1.0f, ((saturate((saturate(dot(float3(_312, _313, _314), float3(select(_746, _312, (_744 * _740)), select(_746, _313, (_744 * _741)), select(_746, _314, (_744 * _742))))) + -0.03125f) * 1.032258f) * ((float)((bool)(dot(float3(_839, _840, _841), float3(_839, _840, _841)) < ((_750 * _750) * 64.0f))))) * ((float)((bool)(((__3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _766) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _867), (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _767) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y) * _867), (((((float)((uint)((uint)(_618)))) + 1.0f) + ((select((_871 < 0.0f), 1.0f, 0.0f) + _871) * 128.0f)) * 0.00096153846f)), 0.0f)).x) > ((_633 * 0.25f) * (saturate((dot(float3(_802, _803, _804), float3(0.212671f, 0.71516f, 0.072169f)) * 0.0001f) / _exposure3.w) + 1.0f)))))));
                              _900 = (!(_213.w > 0.0f)) || ((_683 & 16777215) == 16777215);
                              _910 = ((select(_900, (((_727 * 0.33951f) + (_726 * 0.61312f)) + (_728 * 0.04737f)), _213.x) * _802) * _896) + _671;
                              _911 = ((select(_900, (((_727 * 0.91636f) + (_726 * 0.0702f)) + (_728 * 0.01345f)), _213.y) * _803) * _896) + _672;
                              _912 = ((select(_900, (((_727 * 0.10958f) + (_726 * 0.02062f)) + (_728 * 0.8698f)), _213.z) * _804) * _896) + _673;
                              _913 = _896 + _677;
                              _914 = (int)(_678) + (int)(1);
                              if ((uint)_914 < (uint)4) {
                                _671 = _910;
                                _672 = _911;
                                _673 = _912;
                                _674 = _823;
                                _675 = _824;
                                _676 = _825;
                                _677 = _913;
                                _678 = _914;
                                continue;
                              } else {
                                _917 = _910;
                                _918 = _911;
                                _919 = _912;
                                _920 = _913;
                              }
                            } else {
                              _917 = _671;
                              _918 = _672;
                              _919 = _673;
                              _920 = _677;
                            }
                          } else {
                            _917 = _671;
                            _918 = _672;
                            _919 = _673;
                            _920 = _677;
                          }
                          if (_920 > 0.0f) {
                            _923 = 1.0f / _920;
                            _937 = (-0.0f - min(0.0f, (-0.0f - (_917 * _923))));
                            _938 = (-0.0f - min(0.0f, (-0.0f - (_918 * _923))));
                            _939 = (-0.0f - min(0.0f, (-0.0f - (_919 * _923))));
                          } else {
                            _937 = _917;
                            _938 = _918;
                            _939 = _919;
                          }
                          break;
                        }
                      } else {
                        _937 = 0.0f;
                        _938 = 0.0f;
                        _939 = 0.0f;
                      }
                    } else {
                      _937 = 0.0f;
                      _938 = 0.0f;
                      _939 = 0.0f;
                    }
                  } else {
                    _937 = 0.0f;
                    _938 = 0.0f;
                    _939 = 0.0f;
                  }
                  break;
                }
              } else {
                _937 = 0.0f;
                _938 = 0.0f;
                _939 = 0.0f;
              }
              _943 = max(1e-06f, (_exposure3.w * 0.001f));
              _944 = max(_943, _937);
              _945 = max(_943, _938);
              _946 = max(_943, _939);
              _949 = dot(float3(_944, _945, _946), float3(0.212671f, 0.71516f, 0.072169f));
              _950 = min((max(0.0005f, _exposure3.w) * 512.0f), _949);
              _954 = max(1e-09f, _949);
              _959 = ((_950 * _944) / _954);
              _960 = ((_950 * _945) / _954);
              _961 = ((_950 * _946) / _954);
              break;
            }
          } else {
            _959 = 0.0f;
            _960 = 0.0f;
            _961 = 0.0f;
          }
          if (saturate(_219.w) == 0.0f) {
            _975 = (exp2((saturate(saturate(_213.w)) * 20.0f) + -8.0f) + -0.00390625f) * (1.0f / (((_207 * _207) * 0.1f) + 1.0f));
            _983 = ((_975 * _213.x) + _959);
            _984 = ((_975 * _213.y) + _960);
            _985 = ((_975 * _213.z) + _961);
          } else {
            _983 = _959;
            _984 = _960;
            _985 = _961;
          }
          _992 = _235;
          _993 = _236;
          _994 = _237;
          _995 = _219.w;
          _996 = _213.x;
          _997 = _213.y;
          _998 = _213.z;
          _999 = _213.w;
          _1000 = _239;
          _1001 = (_renderParams2.y * _983);
          _1002 = (_renderParams2.y * _984);
          _1003 = (_renderParams2.y * _985);
          _1004 = 1.0f;
          _1005 = _207;
        } else {
          _992 = _235;
          _993 = _236;
          _994 = _237;
          _995 = _219.w;
          _996 = _213.x;
          _997 = _213.y;
          _998 = _213.z;
          _999 = _213.w;
          _1000 = _239;
          _1001 = 0.0f;
          _1002 = 0.0f;
          _1003 = 0.0f;
          _1004 = 1.0f;
          _1005 = _207;
        }
        break;
      }
      break;
    }
  } else {
    _992 = 0.0f;
    _993 = 0.0f;
    _994 = 0.0f;
    _995 = 0.0f;
    _996 = 0.0f;
    _997 = 0.0f;
    _998 = 0.0f;
    _999 = 0.0f;
    _1000 = 0;
    _1001 = 0.0f;
    _1002 = 0.0f;
    _1003 = 0.0f;
    _1004 = 0.0f;
    _1005 = 0.0f;
  }
  _1007 = (_1005 > 0.0f);
  if ((_171 > (_lightingParams.z * 0.875f)) && (!_1007)) {
    _1020 = (_171 < (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 11585.126f));
  } else {
    _1020 = false;
  }
  _1024 = (_1005 * _203) + _166;
  _1025 = (_1005 * _204) + _167;
  _1026 = (_1005 * _205) + _168;
  _1062 = mad((_viewProjRelativePrev[3].z), _1026, mad((_viewProjRelativePrev[3].y), _1025, ((_viewProjRelativePrev[3].x) * _1024))) + (_viewProjRelativePrev[3].w);
  _1063 = (mad((_viewProjRelativePrev[0].z), _1026, mad((_viewProjRelativePrev[0].y), _1025, ((_viewProjRelativePrev[0].x) * _1024))) + (_viewProjRelativePrev[0].w)) / _1062;
  _1064 = (mad((_viewProjRelativePrev[1].z), _1026, mad((_viewProjRelativePrev[1].y), _1025, ((_viewProjRelativePrev[1].x) * _1024))) + (_viewProjRelativePrev[1].w)) / _1062;
  _1065 = (mad((_viewProjRelativePrev[2].z), _1026, mad((_viewProjRelativePrev[2].y), _1025, ((_viewProjRelativePrev[2].x) * _1024))) + (_viewProjRelativePrev[2].w)) / _1062;
  _1068 = (_1063 * 0.5f) + 0.5f;
  _1069 = 0.5f - (_1064 * 0.5f);
  if (_206) {
    if (_1007) {
      // [sem: _3__36__0__0__g_normalDepthPrev_load]
      _1094 = __3__36__0__0__g_normalDepthPrev.Load(int3(((int)(((_1063 * 0.25f) + 0.25f) * _bufferSizeAndInvSize.x)), ((int)((0.25f - (_1064 * 0.25f)) * _bufferSizeAndInvSize.y)), 0));
      _1101 = _nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1094.y & 16777215)))) * 5.960465e-08f));
      if ((_1065 > 0.0f) && (((_1068 >= 0.0f) && (_1068 <= 1.0f)) && ((_1069 >= 0.0f) && (_1069 <= 1.0f)))) {
        if (((_1101 - dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z))) > 0.0f) && (abs(_1101 - _1062) < max(0.5f, (_1062 * 0.05f)))) {
          _1132 = __3__36__0__0__g_sceneColor.SampleLevel(__3__40__0__0__g_samplerClamp, float2(_1068, _1069), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
          if (!(!(_1132.w >= 0.0f))) {
            _1157 = min(1.0f, ((((float)((uint)((uint)(_1094.x & 1023)))) * 0.0019569471f) + -1.0f));
            _1158 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1094.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));
            _1159 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1094.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));
            _1161 = rsqrt(dot(float3(_1157, _1158, _1159), float3(_1157, _1158, _1159)));  // [sem: invLength]
            _1162 = _1161 * _1157;
            _1163 = _1161 * _1158;
            _1164 = _1161 * _1159;
            _1170 = select((dot(float3((-0.0f - _203), (-0.0f - _204), (-0.0f - _205)), float3(_1162, _1163, _1164)) > 0.2f), 1.0f, 0.0f);
            _1172 = saturate(_171 * 0.01f);  // [sem: expr_sat]
            _1180 = (float)((bool)(abs(_nearFarProj.x - _1101) < (_1101 * 0.5f)));
            _1185 = _1162;
            _1186 = _1163;
            _1187 = _1164;
            _1188 = 0.8f;
            _1189 = _renderParams2.x * _renderParams2.x;
            _1190 = ((_1170 - (_1170 * _1172)) + _1172) * _1189;
            _1199 = ((_1005 * 0.9999f) * _renderParams2.x);
            _1200 = _1185;
            _1201 = _1186;
            _1202 = _1187;
            _1203 = _1188;
            _1204 = ((_1190 * min(10000.0f, _1132.x)) * _1180);
            _1205 = ((_1190 * min(10000.0f, _1132.y)) * _1180);
            _1206 = ((_1190 * min(10000.0f, _1132.z)) * _1180);
            _1207 = _1189;
            _1208 = 1;
          } else {
            _1199 = _1005;
            _1200 = _992;
            _1201 = _993;
            _1202 = _994;
            _1203 = _995;
            _1204 = 0.0f;
            _1205 = 0.0f;
            _1206 = 0.0f;
            _1207 = 0.0f;
            _1208 = 0;
          }
        } else {
          _1199 = _1005;
          _1200 = _992;
          _1201 = _993;
          _1202 = _994;
          _1203 = _995;
          _1204 = 0.0f;
          _1205 = 0.0f;
          _1206 = 0.0f;
          _1207 = 0.0f;
          _1208 = 0;
        }
      } else {
        _1199 = _1005;
        _1200 = _992;
        _1201 = _993;
        _1202 = _994;
        _1203 = _995;
        _1204 = 0.0f;
        _1205 = 0.0f;
        _1206 = 0.0f;
        _1207 = 0.0f;
        _1208 = 0;
      }
    } else {
      _1199 = _1005;
      _1200 = _992;
      _1201 = _993;
      _1202 = _994;
      _1203 = _995;
      _1204 = 0.0f;
      _1205 = 0.0f;
      _1206 = 0.0f;
      _1207 = 0.0f;
      _1208 = 0;
    }
  } else {
    if (_1007 && ((_1065 > 0.0f) && (((_1068 >= 0.0f) && (_1068 <= 1.0f)) && ((_1069 >= 0.0f) && (_1069 <= 1.0f))))) {
      // [sem: _3__36__0__0__g_normalDepthPrev_load]
      _1094 = __3__36__0__0__g_normalDepthPrev.Load(int3(((int)(((_1063 * 0.25f) + 0.25f) * _bufferSizeAndInvSize.x)), ((int)((0.25f - (_1064 * 0.25f)) * _bufferSizeAndInvSize.y)), 0));
      _1101 = _nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1094.y & 16777215)))) * 5.960465e-08f));
      if ((_1065 > 0.0f) && (((_1068 >= 0.0f) && (_1068 <= 1.0f)) && ((_1069 >= 0.0f) && (_1069 <= 1.0f)))) {
        if (((_1101 - dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z))) > 0.0f) && (abs(_1101 - _1062) < max(0.5f, (_1062 * 0.05f)))) {
          _1132 = __3__36__0__0__g_sceneColor.SampleLevel(__3__40__0__0__g_samplerClamp, float2(_1068, _1069), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
          if (!(!(_1132.w >= 0.0f))) {
            _1157 = min(1.0f, ((((float)((uint)((uint)(_1094.x & 1023)))) * 0.0019569471f) + -1.0f));
            _1158 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1094.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));
            _1159 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1094.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));
            _1161 = rsqrt(dot(float3(_1157, _1158, _1159), float3(_1157, _1158, _1159)));  // [sem: invLength]
            _1162 = _1161 * _1157;
            _1163 = _1161 * _1158;
            _1164 = _1161 * _1159;
            _1170 = select((dot(float3((-0.0f - _203), (-0.0f - _204), (-0.0f - _205)), float3(_1162, _1163, _1164)) > 0.2f), 1.0f, 0.0f);
            _1172 = saturate(_171 * 0.01f);  // [sem: expr_sat]
            _1180 = (float)((bool)(abs(_nearFarProj.x - _1101) < (_1101 * 0.5f)));
            _1185 = _992;
            _1186 = _993;
            _1187 = _994;
            _1188 = _995;
            _1189 = _renderParams2.x * _renderParams2.x;
            _1190 = ((_1170 - (_1170 * _1172)) + _1172) * _1189;
            _1199 = ((_1005 * 0.9999f) * _renderParams2.x);
            _1200 = _1185;
            _1201 = _1186;
            _1202 = _1187;
            _1203 = _1188;
            _1204 = ((_1190 * min(10000.0f, _1132.x)) * _1180);
            _1205 = ((_1190 * min(10000.0f, _1132.y)) * _1180);
            _1206 = ((_1190 * min(10000.0f, _1132.z)) * _1180);
            _1207 = _1189;
            _1208 = 1;
          } else {
            _1199 = _1005;
            _1200 = _992;
            _1201 = _993;
            _1202 = _994;
            _1203 = _995;
            _1204 = 0.0f;
            _1205 = 0.0f;
            _1206 = 0.0f;
            _1207 = 0.0f;
            _1208 = 0;
          }
        } else {
          _1199 = _1005;
          _1200 = _992;
          _1201 = _993;
          _1202 = _994;
          _1203 = _995;
          _1204 = 0.0f;
          _1205 = 0.0f;
          _1206 = 0.0f;
          _1207 = 0.0f;
          _1208 = 0;
        }
      } else {
        _1199 = _1005;
        _1200 = _992;
        _1201 = _993;
        _1202 = _994;
        _1203 = _995;
        _1204 = 0.0f;
        _1205 = 0.0f;
        _1206 = 0.0f;
        _1207 = 0.0f;
        _1208 = 0;
      }
    } else {
      _1199 = _1005;
      _1200 = _992;
      _1201 = _993;
      _1202 = _994;
      _1203 = _995;
      _1204 = 0.0f;
      _1205 = 0.0f;
      _1206 = 0.0f;
      _1207 = 0.0f;
      _1208 = 0;
    }
  }
  _1210 = 0;
  while(true) {
    _1212 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1210) + (int)(20)))];
    _1240 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1210) + (int)(36)))];
    _1250 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _166) * _1212.w) + _1240.x));
    _1251 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _167) * _1212.w) + _1240.y));
    _1252 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _168) * _1212.w) + _1240.z));
    if (((((int)_1250 >= (int)((int)(_1212.x + -63.0f))) && ((int)_1250 < (int)((int)(_1212.x + 63.0f)))) && (((int)_1251 >= (int)((int)(_1212.y + -31.0f))) && ((int)_1251 < (int)((int)(_1212.y + 31.0f))))) && (((int)_1252 >= (int)((int)(_1212.z + -63.0f))) && ((int)_1252 < (int)((int)(_1212.z + 63.0f))))) {
      _1271 = (_1250 & 127);
      _1272 = _1210;
    } else {
      _1265 = (int)(_1210) + (int)(1);
      if ((uint)_1265 < (uint)8) {
        _1210 = _1265;
        continue;
      } else {
        _1271 = -10000;
        _1272 = -10000;
      }
    }
    if (!(_1271 == -10000)) {
      _1279 = ((float)((int)((int)((uint)(1) << (_1272 & 31)))));
    } else {
      _1279 = 1.0f;
    }
    _1285 = select(_194, (((frac(frac(dot(float2(((_177 * 32.665f) + _76), ((_177 * 11.815f) + _77)), float2(0.06711056f, 0.00583715f))) * 52.982918f) * 2.0f) * _1279) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x), 0.0f);
    if (_1020) {
      _1287 = _lightingParams.z * 1.3434899f;
      _1288 = -0.0f - _1287;
      if (((_168 > _1288) && (_168 < _1287)) && (((_166 > _1288) && (_166 < _1287)) && ((_167 > _1288) && (_167 < _1287)))) {
        _1301 = 1.0f / _203;
        _1302 = 1.0f / _204;
        _1303 = 1.0f / _205;
        _1307 = _1301 * (_1288 - _166);
        _1308 = _1302 * (_1288 - _167);
        _1309 = _1303 * (_1288 - _168);
        _1313 = _1301 * (_1287 - _166);
        _1314 = _1302 * (_1287 - _167);
        _1315 = _1303 * (_1287 - _168);
        _1325 = min(min(max(_1307, _1313), max(_1308, _1314)), max(_1309, _1315));
        if ((_1325 > 0.0f) && ((_1325 >= 0.0f) && (max(max(min(_1307, _1313), min(_1308, _1314)), min(_1309, _1315)) <= _1325))) {
          _1339 = _1325;
          _1340 = ((_1325 * _203) + _166);
          _1341 = ((_1325 * _204) + _167);
          _1342 = ((_1325 * _205) + _168);
        } else {
          _1339 = 0.0f;
          _1340 = _166;
          _1341 = _167;
          _1342 = _168;
        }
      } else {
        _1339 = 0.0f;
        _1340 = _166;
        _1341 = _167;
        _1342 = _168;
      }
      _1346 = select(((_1199 > 0.0f) && (_1207 >= 1.0f)), _1199, 256.0f);
      _1348 = 0;
      while(true) {
        _1350 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1348) + (int)(20)))];
        _1378 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1348) + (int)(36)))];
        _1388 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _1340) * _1350.w) + _1378.x));
        _1389 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _1341) * _1350.w) + _1378.y));
        _1390 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _1342) * _1350.w) + _1378.z));
        if (!(((((int)_1388 >= (int)((int)(_1350.x + -63.0f))) && ((int)_1388 < (int)((int)(_1350.x + 63.0f)))) && (((int)_1389 >= (int)((int)(_1350.y + -31.0f))) && ((int)_1389 < (int)((int)(_1350.y + 31.0f))))) && (((int)_1390 >= (int)((int)(_1350.z + -63.0f))) && ((int)_1390 < (int)((int)(_1350.z + 63.0f)))))) {
          _1403 = (int)(_1348) + (int)(1);
          if ((uint)_1403 < (uint)8) {
            _1348 = _1403;
            continue;
          } else {
            _1406 = -10000;
          }
        } else {
          _1406 = _1348;
        }
        if (!((_1406 == -10000) || ((int)_1406 > (int)4))) {
          _1416 = _1340 + (_1285 * _203);
          _1417 = _1341 + (_1285 * _204);
          _1418 = _1342 + (_1285 * _205);
          _1422 = (_203 == 0.0f);
          _1423 = (_204 == 0.0f);
          _1424 = (_205 == 0.0f);
          _1425 = select(_1422, 0.0f, (1.0f / _203));
          _1426 = select(_1423, 0.0f, (1.0f / _204));
          _1427 = select(_1424, 0.0f, (1.0f / _205));
          _1428 = (_203 > 0.0f);
          _1429 = (_204 > 0.0f);
          _1430 = (_205 > 0.0f);
          if (_1346 > 0.0f) {
            _1443 = 0;
            _1444 = 0.0f;
            _1445 = 0.0f;
            _1446 = _1418;
            _1447 = _1417;
            _1448 = _1416;
            while(true) {
              _1450 = 0;
              while(true) {
                _1452 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1450) + (int)(20)))];
                _1471 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1450) + (int)(36)))];
                _1475 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _1448) * _1452.w) + _1471.x;
                _1476 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _1447) * _1452.w) + _1471.y;
                _1477 = ((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _1446) * _1452.w) + _1471.z;
                if (!((_1477 >= (_1452.z + -63.0f)) && ((_1475 >= (_1452.x + -63.0f)) && (_1476 >= (_1452.y + -31.0f)))) || (((_1477 >= (_1452.z + -63.0f)) && ((_1475 >= (_1452.x + -63.0f)) && (_1476 >= (_1452.y + -31.0f)))) && (!((_1477 < (_1452.z + 63.0f)) && ((_1475 < (_1452.x + 63.0f)) && (_1476 < (_1452.y + 31.0f))))))) {
                  _1493 = (int)(_1450) + (int)(1);
                  if ((int)_1493 < (int)8) {
                    _1450 = _1493;
                    continue;
                  } else {
                    _1693 = _1445;
                    _1694 = _1446;
                    _1695 = _1447;
                    _1696 = _1448;
                    _1697 = _1444;
                    _1698 = -10000.0f;
                  }
                } else {
                  if (_1450 == -10000) {
                    _1687 = _1445;
                    _1688 = _1446;
                    _1689 = _1447;
                    _1690 = _1448;
                    _1691 = _1444;
                    _1693 = _1687;
                    _1694 = _1688;
                    _1695 = _1689;
                    _1696 = _1690;
                    _1697 = _1691;
                    _1698 = -10000.0f;
                  } else {
                    _1500 = (float)((int)((int)((uint)(1) << (_1450 & 31))));
                    _1501 = _1500 * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                    _1502 = 1.0f / _1500;
                    _1503 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.y * 0.0078125f;
                    _1512 = _1502 * ((_1448 * _1503) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x);
                    _1513 = _1502 * (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.y * 0.015625f) * _1447) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y);
                    _1514 = _1502 * ((_1446 * _1503) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z);
                    _1515 = _1512 * 64.0f;
                    _1516 = _1513 * 32.0f;
                    _1517 = _1514 * 64.0f;
                    _1521 = (int)(floor(_1515));
                    _1522 = (int)(floor(_1516));
                    _1523 = (int)(floor(_1517));
                    // [sem: _3__36__0__0__g_axisAlignedDistance_load]
                    _1530 = __3__36__0__0__g_axisAlignedDistanceTextures.Load(int4((_1521 & 63), (_1522 & 31), ((int)(_1523 & 63) | (int)((int)(_1450) << 6)), 0));
                    _1547 = saturate(((float)((uint)((uint)((uint)((uint)(_1530.w)) >> 2)))) * 0.015873017f);  // [sem: expr_sat]
                    _1570 = _1515 - ((float)((int)(_1521)));
                    _1571 = _1516 - ((float)((int)(_1522)));
                    _1572 = _1517 - ((float)((int)(_1523)));
                    _1603 = max(((_1501 * 0.5f) * min(min(select(_1422, 999999.0f, ((select(_1428, 1.0f, 0.0f) - frac(_1512 * 256.0f)) * _1425)), select(_1423, 999999.0f, ((select(_1429, 1.0f, 0.0f) - frac(_1513 * 128.0f)) * _1426))), select(_1424, 999999.0f, ((select(_1430, 1.0f, 0.0f) - frac(_1514 * 256.0f)) * _1427)))), ((_1501 * 2.0f) * min(min(select(_1422, 999999.0f, (select(_1428, ((0.01f - _1570) + ((float)((uint)((uint)(((uint)((uint)(_1530.x)) >> 4) & 15))))), ((0.99f - _1570) - ((float)((uint)((uint)(_1530.x & 15)))))) * _1425)), select(_1423, 999999.0f, (select(_1429, ((0.01f - _1571) + ((float)((uint)((uint)(((uint)((uint)(_1530.y)) >> 4) & 15))))), ((0.99f - _1571) - ((float)((uint)((uint)(_1530.y & 15)))))) * _1426))), select(_1424, 999999.0f, (select(_1430, ((0.01f - _1572) + ((float)((uint)((uint)(((uint)((uint)(_1530.z)) >> 4) & 15))))), ((0.99f - _1572) - ((float)((uint)((uint)(_1530.z & 15)))))) * _1427)))));
                    _1605 = (float)((bool)(_1547 > 0.0f));
                    if (((uint)_1443 < (uint)16) || (_1445 < min(32.0f, (_1501 * 32.0f)))) {
                      _1612 = frac(_1514);
                      // [sem: _3__36__0__1__g_signedDistanceVoxels_sampleLod]
                      _1624 = __3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3(_1512, _1513, (((((float)((uint)((uint)((uint)(_1450)) * (uint)(130)))) + 1.0f) + ((select((_1612 < 0.0f), 1.0f, 0.0f) + _1612) * 128.0f)) * 0.00096153846f)), 0.0f);
                      _1630 = _1445 * 0.01f;
                      _1631 = 1.0f / _1501;
                      _1647 = (_1624.x + ((_171 * _171) * 0.0002f)) / (((max(((_1501 * 1.06066f) * saturate((_1445 * 0.5f) + 0.5f)), _1630) - _1630) * saturate(((max(1.0f, (_1631 * 0.5f)) * _1631) * min(_1445, max(0.0f, (_1346 - _1445)))) + -1.0f)) + _1630);
                      _1653 = saturate((saturate(1.0f - (_1647 * _1647)) * _1605) + _1444);  // [sem: expr_sat]
                      if (!(((int)_1450 > (int)2) || (_1624.x > _1501))) {
                        _1667 = _1653;  // [sem: expr_sat]
                        _1668 = min(_1603, _1624.x);
                      } else {
                        _1667 = _1653;  // [sem: expr_sat]
                        _1668 = _1603;
                      }
                    } else {
                      if (!((_1530.w & 1) == 0)) {
                        _1667 = saturate((_1605 * 0.5f) + _1444);  // [sem: expr_sat]
                        _1668 = _1603;
                      } else {
                        _1667 = _1444;  // [sem: expr_sat]
                        _1668 = _1603;
                      }
                    }
                    if (!(_1667 >= 0.5f)) {
                      _1673 = max(_1668, (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 0.05f));
                      _1674 = _1673 + _1445;
                      _1678 = (_1673 * _203) + _1448;
                      _1679 = (_1673 * _204) + _1447;
                      _1680 = (_1673 * _205) + _1446;
                      _1681 = (int)(_1443) + (int)(1);
                      if (((uint)_1681 < (uint)192) && (_1674 < _1346)) {
                        _1443 = _1681;
                        _1444 = _1667;
                        _1445 = _1674;
                        _1446 = _1680;
                        _1447 = _1679;
                        _1448 = _1678;
                        __loop_jump_target = 1442;
                        break;
                      } else {
                        _1687 = _1674;
                        _1688 = _1680;
                        _1689 = _1679;
                        _1690 = _1678;
                        _1691 = _1667;
                        _1693 = _1687;
                        _1694 = _1688;
                        _1695 = _1689;
                        _1696 = _1690;
                        _1697 = _1691;
                        _1698 = -10000.0f;
                      }
                    } else {
                      _1693 = _1445;
                      _1694 = _1446;
                      _1695 = _1447;
                      _1696 = _1448;
                      _1697 = _1547;
                      _1698 = ((float)((int)(_1450)));
                    }
                  }
                }
                break;
              }
              if (__loop_jump_target == 1442) {
                __loop_jump_target = -1;
                continue;
              }
              if (__loop_jump_target != -1) {
                break;
              }
              break;
            }
          } else {
            _1693 = 0.0f;
            _1694 = _1418;
            _1695 = _1417;
            _1696 = _1416;
            _1697 = 0.0f;
            _1698 = -10000.0f;
          }
          _1699 = (int)(_1698);
          if ((uint)_1699 < (uint)8) {
            _1702 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x * 0.5f;
            _1706 = _1696 - (_1702 * _203);
            _1707 = _1695 - (_1702 * _204);
            _1708 = _1694 - (_1702 * _205);
            if ((int)_1699 < (int)6) {
              _1715 = 0;
              while(true) {
                _1717 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1715) + (int)(20)))];
                _1745 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1715) + (int)(36)))];
                _1755 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _1706) * _1717.w) + _1745.x));
                _1756 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _1707) * _1717.w) + _1745.y));
                _1757 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _1708) * _1717.w) + _1745.z));
                if (((((int)_1755 >= (int)((int)(_1717.x + -63.0f))) && ((int)_1755 < (int)((int)(_1717.x + 63.0f)))) && (((int)_1756 >= (int)((int)(_1717.y + -31.0f))) && ((int)_1756 < (int)((int)(_1717.y + 31.0f))))) && (((int)_1757 >= (int)((int)(_1717.z + -63.0f))) && ((int)_1757 < (int)((int)(_1717.z + 63.0f))))) {
                  _1778 = (_1755 & 127);
                  _1779 = (_1756 & 63);
                  _1780 = (_1757 & 127);
                  _1781 = _1715;
                } else {
                  _1770 = (int)(_1715) + (int)(1);
                  if ((uint)_1770 < (uint)8) {
                    _1715 = _1770;
                    continue;
                  } else {
                    _1778 = -10000;
                    _1779 = -10000;
                    _1780 = -10000;
                    _1781 = -10000;
                  }
                }
                if (!((uint)_1781 > (uint)5)) {
                  _1793 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1778, _1779, ((int)((uint)((uint)((int)((int)((uint)((uint)(_1781)) * (uint)(130))) | (int)(1))) + (uint)((uint)(_1780)))), 0)))).x) & 4194303;
                  _1797 = (_1793 != 0) && ((uint)((int)(_1793) + (int)(4)) < (uint)3145729);
                  _1798 = select(_1797, _1778, -10000);
                  _1799 = select(_1797, _1779, -10000);
                  _1800 = select(_1797, _1780, -10000);
                  _1801 = select(_1797, _1781, -10000);
                  _1802 = _1702 * ((float)((int)((int)((uint)(1) << (_1781 & 31)))));
                  _1807 = 0;
                  while(true) {
                    _1809 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1807) + (int)(20)))];
                    _1837 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1807) + (int)(36)))];
                    _1847 = (int)(floor((((_1706 - _1802) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x) * _1809.w) + _1837.x));
                    _1848 = (int)(floor((((_1707 - _1802) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y) * _1809.w) + _1837.y));
                    _1849 = (int)(floor((((_1708 - _1802) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z) * _1809.w) + _1837.z));
                    if (((((int)_1847 >= (int)((int)(_1809.x + -63.0f))) && ((int)_1847 < (int)((int)(_1809.x + 63.0f)))) && (((int)_1848 >= (int)((int)(_1809.y + -31.0f))) && ((int)_1848 < (int)((int)(_1809.y + 31.0f))))) && (((int)_1849 >= (int)((int)(_1809.z + -63.0f))) && ((int)_1849 < (int)((int)(_1809.z + 63.0f))))) {
                      _1870 = (_1847 & 127);
                      _1871 = (_1848 & 63);
                      _1872 = (_1849 & 127);
                      _1873 = _1807;
                    } else {
                      _1862 = (int)(_1807) + (int)(1);
                      if ((uint)_1862 < (uint)8) {
                        _1807 = _1862;
                        continue;
                      } else {
                        _1870 = -10000;
                        _1871 = -10000;
                        _1872 = -10000;
                        _1873 = -10000;
                      }
                    }
                    if (!((uint)_1873 > (uint)5)) {
                      if (_1793 == 0) {
                        _1879 = 0;
                        _1880 = _1801;
                        _1881 = _1800;
                        _1882 = _1799;
                        _1883 = _1798;
                        while(true) {
                          _1892 = 0;
                          _1893 = _1880;
                          _1894 = _1881;
                          _1895 = _1882;
                          _1896 = _1883;
                          while(true) {
                            _1903 = 0;
                            while(true) {
                              _1904 = (int)(_1903) + (int)(_1870);
                              _1905 = (int)(_1892) + (int)(_1871);
                              _1906 = (int)(_1879) + (int)(_1872);
                              bool __branch_chain_1902;
                              if (((uint)_1905 > (uint)63) || ((uint)((int)(_1904) | (int)(_1906)) > (uint)127)) {
                                _1924 = 0;
                                __branch_chain_1902 = true;
                              } else {
                                _1918 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1904, _1905, ((int)((uint)((uint)(_1906)) + (uint)((uint)((int)((int)((uint)((uint)(_1873)) * (uint)(130))) | (int)(1))))), 0)))).x) & 4194303;
                                if (!((_1918 != 0) && ((uint)((int)(_1918) + (int)(4)) < (uint)3145729))) {
                                  _1924 = _1918;
                                  __branch_chain_1902 = true;
                                } else {
                                  _1930 = _1904;
                                  _1931 = _1905;
                                  _1932 = _1906;
                                  _1933 = _1873;
                                  _1934 = _1918;
                                  __branch_chain_1902 = false;
                                }
                              }
                              if (__branch_chain_1902) {
                                _1925 = (int)(_1903) + (int)(1);
                                if (((int)_1925 < (int)2) && (_1924 == 0)) {
                                  _1903 = _1925;
                                  continue;
                                } else {
                                  _1930 = _1896;
                                  _1931 = _1895;
                                  _1932 = _1894;
                                  _1933 = _1893;
                                  _1934 = _1924;
                                }
                              }
                              _1935 = (int)(_1892) + (int)(1);
                              if (((int)_1935 < (int)2) && (_1934 == 0)) {
                                _1892 = _1935;
                                _1893 = _1933;
                                _1894 = _1932;
                                _1895 = _1931;
                                _1896 = _1930;
                                __loop_jump_target = 1891;
                                break;
                              }
                              while(true) {
                                _1898 = (int)(_1879) + (int)(1);
                                if (((int)_1898 < (int)2) && (_1934 == 0)) {
                                  _1879 = _1898;
                                  _1880 = _1933;
                                  _1881 = _1932;
                                  _1882 = _1931;
                                  _1883 = _1930;
                                  __loop_jump_target = 1878;
                                  break;
                                }
                                while(true) {
                                  _1886 = _1933;
                                  _1887 = _1932;
                                  _1888 = _1931;
                                  _1889 = _1930;
                                  break;
                                }
                                break;
                              }
                              if (__loop_jump_target != -1) {
                                break;
                              }
                              break;
                            }
                            if (__loop_jump_target == 1891) {
                              __loop_jump_target = -1;
                              continue;
                            }
                            if (__loop_jump_target != -1) {
                              break;
                            }
                            break;
                          }
                          if (__loop_jump_target == 1878) {
                            __loop_jump_target = -1;
                            continue;
                          }
                          if (__loop_jump_target != -1) {
                            break;
                          }
                          break;
                        }
                      } else {
                        _1886 = _1801;
                        _1887 = _1800;
                        _1888 = _1799;
                        _1889 = _1798;
                      }
                      if ((uint)_1886 < (uint)6) {
                        _1940 = (uint)((uint)(_1886)) * (uint)(130);
                        _1946 = (((uint)(__3__36__0__0__g_surfelIndicesVoxelsTextures.Load(int4(_1889, _1888, ((int)((uint)((uint)((int)(_1940) | (int)(1))) + (uint)((uint)(_1887)))), 0)))).x) & 4194303;
                        if ((_1946 != 0) && ((uint)((int)(_1946) + (int)(4)) < (uint)3145729)) {
                          _1953 = (uint)(1) << (_1886 & 31);
                          _1955 = ((float)((int)(_1953))) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x;
                          _1957 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((uint)((uint)((uint)(_1886)) + (uint)(20)))];
                          _1993 = 0.0f;
                          _1994 = 0.0f;
                          _1995 = 0.0f;
                          _1996 = 0.0f;
                          _1997 = 0;
                          while(true) {
                            _1999 = (int)((int)(_1946) + (int)(-1)) + (int)(_1997);
                            _2002 = __3__37__0__0__g_surfelDataBuffer[_1999]._baseColor;
                            _2004 = __3__37__0__0__g_surfelDataBuffer[_1999]._normal;
                            _2007 = __3__37__0__0__g_surfelDataBuffer[_1999]._radius;
                            if (!(_2002 == 0)) {
                              _2010 = __3__37__0__0__g_surfelDataBuffer[_1999]._radiance.z;
                              _2011 = __3__37__0__0__g_surfelDataBuffer[_1999]._radiance.y;
                              _2012 = __3__37__0__0__g_surfelDataBuffer[_1999]._radiance.x;
                              _2018 = (float)((uint)((uint)(_2002 & 255)));
                              _2019 = (float)((uint)((uint)(((uint)((uint)(_2002)) >> 8) & 255)));
                              _2020 = (float)((uint)((uint)(((uint)((uint)(_2002)) >> 16) & 255)));
                              _2045 = select(((_2018 * 0.003921569f) < 0.04045f), (_2018 * 0.000303527f), exp2(log2((_2018 * 0.003717127f) + 0.052132703f) * 2.4f));
                              _2046 = select(((_2019 * 0.003921569f) < 0.04045f), (_2019 * 0.000303527f), exp2(log2((_2019 * 0.003717127f) + 0.052132703f) * 2.4f));
                              _2047 = select(((_2020 * 0.003921569f) < 0.04045f), (_2020 * 0.000303527f), exp2(log2((_2020 * 0.003717127f) + 0.052132703f) * 2.4f));
                              _2059 = (((float)((uint)((uint)(_2004 & 255)))) * 0.007874016f) + -1.0f;
                              _2060 = (((float)((uint)((uint)(((uint)((uint)(_2004)) >> 8) & 255)))) * 0.007874016f) + -1.0f;
                              _2061 = (((float)((uint)((uint)(((uint)((uint)(_2004)) >> 16) & 255)))) * 0.007874016f) + -1.0f;
                              _2063 = rsqrt(dot(float3(_2059, _2060, _2061), float3(_2059, _2060, _2061)));  // [sem: invLength]
                              _2065 = ((_2004 & 16777215) == 0);
                              _2069 = (_1955 * 0.0019607844f) * ((float)((uint16_t)((int16_t)(_2007 & 255))));
                              _2085 = (((((float)((uint)((uint)((uint)((uint)(_2002)) >> 24)))) * 0.003937008f) + -0.5f) * _1955) + ((((_1957.x + -63.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_1889)) + (uint)(64)) - (uint)((uint)((int)(_1957.x))))) & 127)))) * _1955) - _viewPos.x);
                              _2086 = (((((float)((uint)((uint)((uint)((uint)(_2004)) >> 24)))) * 0.003937008f) + -0.5f) * _1955) + ((((_1957.y + -31.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_1888)) + (uint)(32)) - (uint)((uint)((int)(_1957.y))))) & 63)))) * _1955) - _viewPos.y);
                              _2087 = (((((float)((uint16_t)((int16_t)((uint16_t)(_2007) >> 8)))) * 0.003937008f) + -0.5f) * _1955) + ((((_1957.z + -63.5f) + ((float)((int)(((int)((uint)((uint)((uint)(_1887)) + (uint)(64)) - (uint)((uint)((int)(_1957.z))))) & 127)))) * _1955) - _viewPos.z);
                              if (!((((_2012 < 0.0h) || ((_2045 > 1.1f) || (_2045 < 0.0f))) || ((_2011 < 0.0h) || ((_2046 > 1.1f) || (_2046 < 0.0f)))) || ((_2010 < 0.0h) || ((_2047 > 1.1f) || (_2047 < 0.0f))))) {
                                _2109 = -0.0f - _205;
                                _2112 = -0.0f - _204;
                                _2115 = -0.0f - _203;
                                _2124 = -0.0f - min(0.0f, (-0.0f - float(_2012)));
                                _2125 = -0.0f - min(0.0f, (-0.0f - float(_2011)));
                                _2126 = -0.0f - min(0.0f, (-0.0f - float(_2010)));
                                _2146 = ((-0.0f - _1340) - (_1693 * _203)) + _2085;
                                _2149 = ((-0.0f - _1341) - (_1693 * _204)) + _2086;
                                _2152 = ((-0.0f - _1342) - (_1693 * _205)) + _2087;
                                _2153 = dot(float3(_2146, _2149, _2152), float3(_2115, _2112, _2109));
                                _2157 = _2146 - (_2153 * _2115);
                                _2158 = _2149 - (_2153 * _2112);
                                _2159 = _2152 - (_2153 * _2109);
                                _2185 = 1.0f / ((float)((uint)((uint)(_1953))));
                                _2189 = frac(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _2087) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z) * _2185);
                                _2214 = select(((int)_1886 > (int)5), 1.0f, ((saturate((saturate(dot(float3(_2115, _2112, _2109), float3(select(_2065, _2115, (_2063 * _2059)), select(_2065, _2112, (_2063 * _2060)), select(_2065, _2109, (_2063 * _2061))))) + -0.03125f) * 1.032258f) * ((float)((bool)(dot(float3(_2157, _2158, _2159), float3(_2157, _2158, _2159)) < ((_2069 * _2069) * 64.0f))))) * ((float)((bool)(((__3__36__0__1__g_signedDistanceVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _2085) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _2185), (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _2086) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y) * _2185), (((((float)((uint)((uint)(_1940)))) + 1.0f) + ((select((_2189 < 0.0f), 1.0f, 0.0f) + _2189) * 128.0f)) * 0.00096153846f)), 0.0f)).x) > ((_1955 * 0.25f) * (saturate((dot(float3(_2124, _2125, _2126), float3(0.212671f, 0.71516f, 0.072169f)) * 0.0001f) / _exposure3.w) + 1.0f)))))));
                                _2221 = (((((_2046 * 0.33951f) + (_2045 * 0.61312f)) + (_2047 * 0.04737f)) * _2124) * _2214) + _1993;
                                _2222 = (((((_2046 * 0.91636f) + (_2045 * 0.0702f)) + (_2047 * 0.01345f)) * _2125) * _2214) + _1994;
                                _2223 = (((((_2046 * 0.10958f) + (_2045 * 0.02062f)) + (_2047 * 0.8698f)) * _2126) * _2214) + _1995;
                                _2224 = _2214 + _1996;
                                _2225 = (int)(_1997) + (int)(1);
                                if ((uint)_2225 < (uint)4) {
                                  _1993 = _2221;
                                  _1994 = _2222;
                                  _1995 = _2223;
                                  _1996 = _2224;
                                  _1997 = _2225;
                                  continue;
                                } else {
                                  _2228 = _2221;
                                  _2229 = _2222;
                                  _2230 = _2223;
                                  _2231 = _2224;
                                }
                              } else {
                                _2228 = _1993;
                                _2229 = _1994;
                                _2230 = _1995;
                                _2231 = _1996;
                              }
                            } else {
                              _2228 = _1993;
                              _2229 = _1994;
                              _2230 = _1995;
                              _2231 = _1996;
                            }
                            if (_2231 > 0.0f) {
                              _2234 = 1.0f / _2231;
                              _2248 = 1.0f;
                              _2249 = (-0.0f - min(0.0f, (-0.0f - (_2228 * _2234))));
                              _2250 = (-0.0f - min(0.0f, (-0.0f - (_2229 * _2234))));
                              _2251 = (-0.0f - min(0.0f, (-0.0f - (_2230 * _2234))));
                            } else {
                              _2248 = 0.0f;
                              _2249 = _2228;
                              _2250 = _2229;
                              _2251 = _2230;
                            }
                            break;
                          }
                        } else {
                          _2248 = 0.0f;
                          _2249 = 0.0f;
                          _2250 = 0.0f;
                          _2251 = 0.0f;
                        }
                      } else {
                        _2248 = 0.0f;
                        _2249 = 0.0f;
                        _2250 = 0.0f;
                        _2251 = 0.0f;
                      }
                    } else {
                      _2248 = 1.0f;
                      _2249 = 0.0f;
                      _2250 = 0.0f;
                      _2251 = 0.0f;
                    }
                    break;
                  }
                } else {
                  _2248 = 1.0f;
                  _2249 = 0.0f;
                  _2250 = 0.0f;
                  _2251 = 0.0f;
                }
                break;
              }
            } else {
              _2248 = 1.0f;
              _2249 = 0.0f;
              _2250 = 0.0f;
              _2251 = 0.0f;
            }
            _2259 = saturate((_1693 * 0.25f) / (((float)((int)((int)((uint)(1) << (_1406 & 31))))) * __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._voxelParams.x)) * _2248;
            _2269 = -0.0f - min(0.0f, (-0.0f - (_2249 * _2259)));
            _2270 = -0.0f - min(0.0f, (-0.0f - (_2250 * _2259)));
            _2271 = -0.0f - min(0.0f, (-0.0f - (_2251 * _2259)));
            _2273 = select(((int)_1699 > (int)-1), 1.0f, 0.0f);
            _2274 = max(1e-06f, _1693);
            if (_2274 > 0.0f) {
              _2279 = (_2274 + _1339);
              _2280 = _2269;
              _2281 = _2270;
              _2282 = _2271;
              _2283 = _2273;
            } else {
              _2279 = _2274;
              _2280 = _2269;
              _2281 = _2270;
              _2282 = _2271;
              _2283 = _2273;
            }
          } else {
            _2279 = 0.0f;
            _2280 = 0.0f;
            _2281 = 0.0f;
            _2282 = 0.0f;
            _2283 = _1697;
          }
        } else {
          _2279 = 0.0f;
          _2280 = 0.0f;
          _2281 = 0.0f;
          _2282 = 0.0f;
          _2283 = 0.0f;
        }
        break;
      }
    } else {
      _2279 = _1005;
      _2280 = _1001;
      _2281 = _1002;
      _2282 = _1003;
      _2283 = _1004;
    }
    _2286 = saturate(5.0000005f - (_171 * 0.019531252f));  // [sem: expr_sat]
    _2287 = (_1208 != 0);
    if ((_1207 > 0.0f) && ((_1199 > 0.0f) && _2287)) {
      if (!(_1199 < _2279)) {
        _2297 = (_2279 <= 0.0f);
      } else {
        _2297 = true;
      }
    } else {
      _2297 = false;
    }
    _2301 = saturate(max(select(_2297, 1.0f, 0.0f), (1.0f - _2286)));  // [sem: expr_sat]
    _2302 = _2301 * _1207;
    _2305 = min(_2286, saturate(1.0f - _2302));
    if (!(_2283 == 0.0f)) {
      _2320 = ((_2305 * _2280) + (_2301 * _1204));
      _2321 = ((_2305 * _2281) + (_2301 * _1205));
      _2322 = ((_2305 * _2282) + (_2301 * _1206));
      _2323 = ((_2305 * _2283) + _2302);
    } else {
      _2320 = _1204;
      _2321 = _1205;
      _2322 = _1206;
      _2323 = _1207;
    }
    _2326 = 1.0f / max(1e-06f, (_2305 + _2301));
    _2330 = _2326 * ((_2305 * _2279) + (_2301 * _1199));
    _2332 = _2326 * _2301;
    _2336 = (_2330 * _203) + _166;
    _2337 = (_2330 * _204) + _167;
    _2338 = (_2330 * _205) + _168;
    [branch]
    if (!(_2330 <= 0.0f)) {
      _2368 = mad((_viewProjRelative[3].z), _2338, mad((_viewProjRelative[3].y), _2337, ((_viewProjRelative[3].x) * _2336))) + (_viewProjRelative[3].w);
      _2373 = (((mad((_viewProjRelative[0].z), _2338, mad((_viewProjRelative[0].y), _2337, ((_viewProjRelative[0].x) * _2336))) + (_viewProjRelative[0].w)) / _2368) * 0.5f) + 0.5f;
      _2374 = 0.5f - (((mad((_viewProjRelative[1].z), _2338, mad((_viewProjRelative[1].y), _2337, ((_viewProjRelative[1].x) * _2336))) + (_viewProjRelative[1].w)) / _2368) * 0.5f);
      if (((_2373 >= 0.0f) && (_2373 <= 1.0f)) && ((_2374 >= 0.0f) && (_2374 <= 1.0f))) {
        if (_2287 && (((mad((_viewProjRelative[2].z), _2338, mad((_viewProjRelative[2].y), _2337, ((_viewProjRelative[2].x) * _2336))) + (_viewProjRelative[2].w)) / _2368) > 0.0f)) {
          if (_renderParams.x == 0.0f) {
            // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod]
            half4 _2401 = __3__36__0__0__g_sceneShadowColor.SampleLevel(__3__40__0__0__g_sampler, float2(_2373, _2374), 0.0f);
            _2409 = float(_2401.x);  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2410 = float(_2401.y);  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2411 = float(_2401.z);  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          } else {
            _2409 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2410 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
            _2411 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          }
        } else {
          _2409 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          _2410 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
          _2411 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
        }
      } else {
        _2409 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
        _2410 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
        _2411 = 1.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_sampleLod_derived]
      }
      _2418 = _viewPos.x + _2336;
      _2419 = _viewPos.y + _2337;
      _2420 = _viewPos.z + _2338;
      _2425 = _2418 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].x);
      _2426 = _2419 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].y);
      _2427 = _2420 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].z);
      _2447 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].z), _2427, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].y), _2426, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].x) * _2425))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].w);
      _2451 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].z), _2427, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].y), _2426, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].x) * _2425))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].w);
      _2458 = 2.0f / __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y;
      _2459 = 1.0f - _2458;
      _2466 = (((!(_2447 <= _2459)) || (!(_2447 >= _2458))) || (!(_2451 <= _2459))) || (!(_2451 >= _2458));
      _2475 = _2418 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].x);
      _2476 = _2419 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].y);
      _2477 = _2420 - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].z);
      _2497 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].z), _2477, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].y), _2476, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].x) * _2475))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].w);
      _2501 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].z), _2477, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].y), _2476, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].x) * _2475))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].w);
      _2512 = (((!(_2497 <= _2459)) || (!(_2497 >= _2458))) || (!(_2501 <= _2459))) || (!(_2501 >= _2458));
      _2513 = select(_2512, select(_2466, 0.0f, _2447), _2497);
      _2514 = select(_2512, select(_2466, 0.0f, _2451), _2501);
      _2515 = select(_2512, select(_2466, 0.0f, (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].z), _2427, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].y), _2426, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].x) * _2425))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].w))), (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].z), _2477, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].y), _2476, ((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].x) * _2475))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].w)));
      _2516 = select(_2512, select(_2466, -1, 1), 0);
      [branch]
      if (!(_2516 == -1)) {
        _2522 = (_2513 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x) + -0.5f;
        _2523 = (_2514 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y) + -0.5f;
        _2526 = (int)(floor(_2522));
        _2527 = (int)(floor(_2523));
        _2530 = (uint)((uint)(_2526)) + (uint)(1);
        _2531 = (uint)((uint)(_2527)) + (uint)(1);
        if (!(((uint)_2526 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x)))) || ((uint)_2527 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y)))))) {
          // [sem: _3__36__0__0__g_shadowColorArray_sampleLod]
          half4 _2548 = __3__36__0__0__g_shadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_2513, _2514, ((float)((uint)((uint)(_2516))))), 0.0f);
          _2554 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2526, _2527, _2516, 0)))).x);
          _2555 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2530, _2527, _2516, 0)))).x);
          _2556 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2526, _2531, _2516, 0)))).x);
          _2557 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_2530, _2531, _2516, 0)))).x);
          _2558 = (half)(_2548.x);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2559 = (half)(_2548.y);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2560 = (half)(_2548.z);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2561 = (half)(_2548.w);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
        } else {
          _2554 = 0.0f;
          _2555 = 0.0f;
          _2556 = 0.0f;
          _2557 = 0.0f;
          _2558 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2559 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2560 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
          _2561 = 1.0h;  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived]
        }
        _2562 = (int)(_2516) << 2;
        _2564 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2562) + (int)(103)))];
        _2570 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2562) + (int)(104)))];
        _2576 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2562) + (int)(105)))];
        _2582 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_2562) + (int)(106)))];
        _2587 = _2564.x * _2513;
        _2591 = _2564.y * _2513;
        _2595 = _2564.z * _2513;
        _2599 = _2564.w * _2513;
        _2602 = mad(_2576.w, _2554, mad(_2570.w, _2514, _2599)) + _2582.w;
        _2603 = (mad(_2576.x, _2554, mad(_2570.x, _2514, _2587)) + _2582.x) / _2602;
        _2604 = (mad(_2576.y, _2554, mad(_2570.y, _2514, _2591)) + _2582.y) / _2602;
        _2605 = (mad(_2576.z, _2554, mad(_2570.z, _2514, _2595)) + _2582.z) / _2602;
        _2608 = _2513 + (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.z * 4.0f);
        _2624 = mad(_2576.w, _2555, mad(_2570.w, _2514, (_2564.w * _2608))) + _2582.w;
        _2630 = _2514 - (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.w * 2.0f);
        _2642 = mad(_2576.w, _2556, mad(_2570.w, _2630, _2599)) + _2582.w;
        _2646 = ((mad(_2576.x, _2556, mad(_2570.x, _2630, _2587)) + _2582.x) / _2642) - _2603;
        _2647 = ((mad(_2576.y, _2556, mad(_2570.y, _2630, _2591)) + _2582.y) / _2642) - _2604;
        _2648 = ((mad(_2576.z, _2556, mad(_2570.z, _2630, _2595)) + _2582.z) / _2642) - _2605;
        _2649 = ((mad(_2576.x, _2555, mad(_2570.x, _2514, (_2564.x * _2608))) + _2582.x) / _2624) - _2603;
        _2650 = ((mad(_2576.y, _2555, mad(_2570.y, _2514, (_2564.y * _2608))) + _2582.y) / _2624) - _2604;
        _2651 = ((mad(_2576.z, _2555, mad(_2570.z, _2514, (_2564.z * _2608))) + _2582.z) / _2624) - _2605;
        _2654 = (_2648 * _2650) - (_2647 * _2651);
        _2657 = (_2646 * _2651) - (_2648 * _2649);
        _2660 = (_2647 * _2649) - (_2646 * _2650);
        _2662 = rsqrt(dot(float3(_2654, _2657, _2660), float3(_2654, _2657, _2660)));  // [sem: invLength]
        _2663 = _2654 * _2662;
        _2664 = _2657 * _2662;
        _2665 = _2660 * _2662;
        _2666 = frac(_2522);
        _2671 = (saturate(dot(float3(_203, _204, _205), float3(_2663, _2664, _2665))) * 0.002f) + _2515;
        _2684 = saturate(exp2((_2554 - _2671) * 1.442695e+06f));  // [sem: expr_sat]
        _2686 = saturate(exp2((_2556 - _2671) * 1.442695e+06f));  // [sem: expr_sat]
        _2692 = ((saturate(exp2((_2555 - _2671) * 1.442695e+06f)) - _2684) * _2666) + _2684;
        _2699 = _2663;
        _2700 = _2664;
        _2701 = _2665;
        // [sem: expr_sat]
        _2702 = saturate((((_2686 - _2692) + ((saturate(exp2((_2557 - _2671) * 1.442695e+06f)) - _2686) * _2666)) * frac(_2523)) + _2692);
        _2703 = _2554;
        _2704 = _2555;
        _2705 = _2556;
        _2706 = _2557;
        _2707 = _2558;
        _2708 = _2559;
        _2709 = _2560;
        _2710 = _2561;
      } else {
        _2699 = 0.0f;
        _2700 = 0.0f;
        _2701 = 0.0f;
        _2702 = 0.0f;  // [sem: expr_sat]
        _2703 = 0.0f;
        _2704 = 0.0f;
        _2705 = 0.0f;
        _2706 = 0.0f;
        _2707 = 0.0h;
        _2708 = 0.0h;
        _2709 = 0.0h;
        _2710 = 0.0h;
      }
      _2730 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].z), _2338, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].y), _2337, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].x) * _2336))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].w);
      _2734 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].z), _2338, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].y), _2337, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].x) * _2336))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].w);
      _2738 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].z), _2338, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].y), _2337, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].x) * _2336))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].w);
      _2741 = 4.0f / __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y;
      _2742 = 1.0f - _2741;
      if (!(((!(_2730 <= _2742)) || (!(_2730 >= _2741))) || (!(_2734 <= _2742)))) {
        _2753 = (_2738 >= -1.0f) && ((_2738 <= 1.0f) && (_2734 >= _2741));
        _2761 = select(_2753, 1e-05f, -0.0001f);
        _2762 = select(_2753, _2730, _2513);
        _2763 = select(_2753, _2734, _2514);
        _2764 = select(_2753, _2738, _2515);
        _2765 = select(_2753, 1, _2516);
        _2766 = ((int)(uint)(_2753));
      } else {
        _2761 = -0.0001f;
        _2762 = _2513;
        _2763 = _2514;
        _2764 = _2515;
        _2765 = _2516;
        _2766 = 0;
      }
      _2786 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].z), _2338, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].y), _2337, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].x) * _2336))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].w);
      _2790 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].z), _2338, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].y), _2337, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].x) * _2336))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].w);
      _2794 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].z), _2338, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].y), _2337, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].x) * _2336))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].w);
      if (!(((!(_2786 <= _2742)) || (!(_2786 >= _2741))) || (!(_2790 <= _2742)))) {
        _2805 = (_2794 >= -1.0f) && ((_2790 >= _2741) && (_2794 <= 1.0f));
        _2813 = select(_2805, 1e-05f, _2761);
        _2814 = select(_2805, _2786, _2762);
        _2815 = select(_2805, _2790, _2763);
        _2816 = select(_2805, _2794, _2764);
        _2817 = select(_2805, 0, _2765);
        _2818 = select(_2805, 1, _2766);
      } else {
        _2813 = _2761;
        _2814 = _2762;
        _2815 = _2763;
        _2816 = _2764;
        _2817 = _2765;
        _2818 = _2766;
      }
      [branch]
      if (!(_2818 == 0)) {
        _2828 = (int)(floor((_2814 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f));
        _2829 = (int)(floor((_2815 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f));
        _2832 = (uint)((uint)(_2828)) + (uint)(1);
        _2833 = (uint)((uint)(_2829)) + (uint)(1);
        if (!(((uint)_2828 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x)))) || ((uint)_2829 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y)))))) {
          _2848 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2828, _2829, _2817, 0)))).x);
          _2849 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2832, _2829, _2817, 0)))).x);
          _2850 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2828, _2833, _2817, 0)))).x);
          _2851 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_2832, _2833, _2817, 0)))).x);
        } else {
          _2848 = _2703;
          _2849 = _2704;
          _2850 = _2705;
          _2851 = _2706;
        }
        _2852 = (uint)((uint)(_2817)) << 2;
        _2854 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)((uint)((uint)(_2852)) + (uint)(58)))];
        _2860 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)((uint)((uint)(_2852)) + (uint)(59)))];
        _2866 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)((uint)((uint)(_2852)) + (uint)(60)))];
        _2872 = __3__35__0__0__ShadowConstantBuffer_raw[((uint)((uint)((uint)(_2852)) + (uint)(61)))];
        _2877 = _2854.x * _2814;
        _2881 = _2854.y * _2814;
        _2885 = _2854.z * _2814;
        _2889 = _2854.w * _2814;
        _2892 = mad(_2866.w, _2848, mad(_2860.w, _2815, _2889)) + _2872.w;
        _2893 = (mad(_2866.x, _2848, mad(_2860.x, _2815, _2877)) + _2872.x) / _2892;
        _2894 = (mad(_2866.y, _2848, mad(_2860.y, _2815, _2881)) + _2872.y) / _2892;
        _2895 = (mad(_2866.z, _2848, mad(_2860.z, _2815, _2885)) + _2872.z) / _2892;
        _2898 = _2814 + (__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.z * 8.0f);
        _2914 = mad(_2866.w, _2849, mad(_2860.w, _2815, (_2854.w * _2898))) + _2872.w;
        _2920 = _2815 - (__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.w * 4.0f);
        _2932 = mad(_2866.w, _2850, mad(_2860.w, _2920, _2889)) + _2872.w;
        _2936 = ((mad(_2866.x, _2850, mad(_2860.x, _2920, _2877)) + _2872.x) / _2932) - _2893;
        _2937 = ((mad(_2866.y, _2850, mad(_2860.y, _2920, _2881)) + _2872.y) / _2932) - _2894;
        _2938 = ((mad(_2866.z, _2850, mad(_2860.z, _2920, _2885)) + _2872.z) / _2932) - _2895;
        _2939 = ((mad(_2866.x, _2849, mad(_2860.x, _2815, (_2854.x * _2898))) + _2872.x) / _2914) - _2893;
        _2940 = ((mad(_2866.y, _2849, mad(_2860.y, _2815, (_2854.y * _2898))) + _2872.y) / _2914) - _2894;
        _2941 = ((mad(_2866.z, _2849, mad(_2860.z, _2815, (_2854.z * _2898))) + _2872.z) / _2914) - _2895;
        _2944 = (_2938 * _2940) - (_2937 * _2941);
        _2947 = (_2936 * _2941) - (_2938 * _2939);
        _2950 = (_2937 * _2939) - (_2936 * _2940);
        _2952 = rsqrt(dot(float3(_2944, _2947, _2950), float3(_2944, _2947, _2950)));  // [sem: invLength]
        if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
          _2970 = _sunDirection.x;
          _2971 = _sunDirection.y;
          _2972 = _sunDirection.z;
        } else {
          _2970 = _moonDirection.x;
          _2971 = _moonDirection.y;
          _2972 = _moonDirection.z;
        }
        _2978 = (_2813 - (saturate(-0.0f - dot(float3(_2970, _2971, _2972), float3(_203, _204, _205))) * 0.0001f)) + _2816;
        _2991 = (_2944 * _2952);
        _2992 = (_2947 * _2952);
        _2993 = (_2950 * _2952);
        _2994 = min(((float)((bool)(_2848 > _2978))), min(min(((float)((bool)(_2849 > _2978))), ((float)((bool)(_2850 > _2978)))), ((float)((bool)(_2851 > _2978)))));
      } else {
        _2991 = _2699;
        _2992 = _2700;
        _2993 = _2701;
        _2994 = _2702;
      }
      _2999 = _viewPos.x - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.x;
      _3000 = _viewPos.y - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.y;
      _3001 = _viewPos.z - __3__35__0__0__ShadowConstantBuffer_view._shadowRelativePosition.z;
      _3002 = _2999 + _2336;
      _3003 = _3000 + _2337;
      _3004 = _3001 + _2338;
      _3024 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].z), _3004, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].y), _3003, (_3002 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].w);
      _3028 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].z), _3004, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].y), _3003, (_3002 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].w);
      _3032 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].z), _3004, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].y), _3003, (_3002 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].w);
      if (saturate(_3024) == _3024) {
        if ((_3032 >= 0.0001f) && ((_3032 <= 1.0f) && (saturate(_3028) == _3028))) {
          _3047 = frac((_3024 * 1024.0f) + -0.5f);
          _3051 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_3024, _3028));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
          _3056 = _3032 + -0.005f;
          _3061 = select((_3051.w > _3056), 1.0f, 0.0f);
          _3063 = select((_3051.x > _3056), 1.0f, 0.0f);
          _3070 = ((select((_3051.z > _3056), 1.0f, 0.0f) - _3061) * _3047) + _3061;
          // [sem: expr_sat]
          _3076 = saturate((((((select((_3051.y > _3056), 1.0f, 0.0f) - _3063) * _3047) + _3063) - _3070) * frac((_3028 * 1024.0f) + -0.5f)) + _3070);
        } else {
          _3076 = 1.0f;  // [sem: expr_sat]
        }
      } else {
        _3076 = 1.0f;  // [sem: expr_sat]
      }
      _3077 = min(_2994, _3076);
      _3078 = saturate(_2707);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived_derived_sat]
      _3079 = saturate(_2708);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived_derived_sat]
      _3080 = saturate(_2709);  // [sem: _3__36__0__0__g_shadowColorArray_sampleLod_derived_derived_sat]
      _3094 = ((half)(((half)(_3079 * 0.3395996h)) + ((half)(_3078 * 0.61328125h)))) + ((half)(_3080 * 0.04736328h));
      _3095 = ((half)(((half)(_3079 * 0.9165039h)) + ((half)(_3078 * 0.07019043h)))) + ((half)(_3080 * 0.013450623h));
      _3096 = ((half)(((half)(_3079 * 0.109558105h)) + ((half)(_3078 * 0.020614624h)))) + ((half)(_3080 * 0.8696289h));
      _3099 = (_sunDirection.y > 0.0f);
      if ((_3099) || ((!(_3099)) && (_sunDirection.y > _moonDirection.y))) {
        _3111 = _sunDirection.x;
        _3112 = _sunDirection.y;
        _3113 = _sunDirection.z;
      } else {
        _3111 = _moonDirection.x;
        _3112 = _moonDirection.y;
        _3113 = _moonDirection.z;
      }
      if ((_3099) || ((!(_3099)) && (_sunDirection.y > _moonDirection.y))) {
        _3133 = _precomputedAmbient7.y;
      } else {
        _3133 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
      }
      _3136 = _2419 + _earthRadius;
      _3142 = sqrt(((_2420 * _2420) + (_2418 * _2418)) + (_3136 * _3136));
      _3147 = dot(float3((_2418 / _3142), (_3136 / _3142), (_2420 / _3142)), float3(_3111, _3112, _3113));
      _3151 = _atmosphereThickness + -16.0f;
      _3153 = min(max(((_3142 - _earthRadius) / _atmosphereThickness), 16.0f), _3151);
      _3155 = _atmosphereThickness + -32.0f;
      _3161 = max(_3153, 0.0f);
      _3162 = _earthRadius * 2.0f;
      _3168 = (-0.0f - sqrt((_3161 + _3162) * _3161)) / (_3161 + _earthRadius);
      if (_3147 > _3168) {
        _3191 = ((exp2(log2(saturate((_3147 - _3168) / (1.0f - _3168))) * 0.2f) * 0.4921875f) + 0.50390625f);
      } else {
        _3191 = ((exp2(log2(saturate((_3168 - _3147) / (_3168 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
      }
      // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
      _3196 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_3153 + -16.0f) / _3155)) * 0.5f) * 0.96875f) + 0.015625f), _3191), 0.0f);
      _3215 = _mieAerosolAbsorption + 1.0f;
      _3216 = _mieAerosolDensity * 2e-05f;
      _3218 = (_3216 * _3196.y) * _3215;
      _3224 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.0556001e-06f);
      _3227 = (((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 4.9788005e-06f);
      _3230 = (_ozoneRatio * 2.1360002e-07f) + (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f);
      _3236 = exp2(((_3224 * _3196.x) + _3218) * -1.442695f);
      _3237 = exp2(((_3227 * _3196.x) + _3218) * -1.442695f);
      _3238 = exp2(((_3230 * _3196.x) + _3218) * -1.442695f);
      _3257 = sqrt((_2336 * _2336) + (_2338 * _2338));
      _3265 = (_cloudAltitude - (max(((_3257 * _3257) + -400000.0f), 0.0f) * 1e-06f)) - _viewPos.y;
      _3277 = (_cloudThickness * (0.5f - (((float)((int)((int)((int)(uint)((int)(_3112 > 0.0f))) - (int)((int)(uint)((int)(_3112 < 0.0f)))))) * 0.5f))) + _3265;
      if (_2337 < _3265) {
        _3280 = dot(float3(0.0f, 1.0f, 0.0f), float3(_3111, _3112, _3113));
        _3286 = select((abs(_3280) < 1e-08f), 1e+08f, ((_3277 - dot(float3(0.0f, 1.0f, 0.0f), float3(_2336, _2337, _2338))) / _3280));
        _3292 = ((_3286 * _3111) + _2336);
        _3293 = _3277;
        _3294 = ((_3286 * _3113) + _2338);
      } else {
        _3292 = _2336;
        _3293 = _2337;
        _3294 = _2338;
      }
      _3307 = _cloudScatteringCoefficient / _distanceScale;
      _3308 = _distanceScale * -1.442695f;
      _3314 = saturate(abs(_3112) * 4.0f);  // [sem: expr_sat]
      _3316 = (_3314 * _3314) * exp2((_3308 * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_3292 * 5e-05f) + 0.5f), ((_3293 - _3265) / _cloudThickness), ((_3294 * 5e-05f) + 0.5f)), 0.0f)).x)) * _3307);
      _3323 = ((1.0f - _3316) * saturate(((_2337 - _cloudThickness) - _3265) * 0.1f)) + _3316;
      _3324 = _3323 * (((_3237 * 0.33951f) + (_3236 * 0.61312f)) + (_3238 * 0.04737f));
      _3325 = _3323 * (((_3237 * 0.91636f) + (_3236 * 0.0702f)) + (_3238 * 0.01345f));
      _3326 = _3323 * (((_3237 * 0.10958f) + (_3236 * 0.02062f)) + (_3238 * 0.8698f));
      _3345 = float(saturate(_2710));
      if ((_1000 != 0) && (!_1020)) {
        _3347 = (_1203 > 0.0f);
        _3348 = select(_3347, _1200, _2991);
        _3349 = select(_3347, _1201, _2992);
        _3350 = select(_3347, _1202, _2993);
        _3351 = select(_3347, _1203, 0.8f);
        if (_999 > 0.0f) {
          _3354 = half(_996);
          _3355 = half(_997);
          _3356 = half(_998);
          _3362 = _3351;
          _3363 = _3348;
          _3364 = _3349;
          _3365 = _3350;
          _3366 = _3354;
          _3367 = _3355;
          _3368 = _3356;
          _3369 = _999;
          _3370 = float(_3354);
          _3371 = float(_3355);
          _3372 = float(_3356);
          _3373 = dot(float3(_3348, _3349, _3350), float3(_3111, _3112, _3113));
        } else {
          _3362 = _3351;
          _3363 = _3348;
          _3364 = _3349;
          _3365 = _3350;
          _3366 = _3094;
          _3367 = _3095;
          _3368 = _3096;
          _3369 = 0.1f;
          _3370 = 1.0f;
          _3371 = 1.0f;
          _3372 = 1.0f;
          _3373 = _3345;
        }
      } else {
        _3362 = 0.8f;
        _3363 = _2991;
        _3364 = _2992;
        _3365 = _2993;
        _3366 = _3094;
        _3367 = _3095;
        _3368 = _3096;
        _3369 = 0.1f;
        _3370 = 1.0f;
        _3371 = 1.0f;
        _3372 = 1.0f;
        _3373 = _3345;
      }
      _3381 = float(half(saturate(_3373) * 0.31830987f)) * _3077;
      _3389 = 0.7f / min(max(max(max(_3370, _3371), _3372), 0.01f), 0.7f);
      _3400 = (((_3389 * _3371) + -0.04f) * _3369) + 0.04f;
      _3402 = _3111 - _203;
      _3403 = _3112 - _204;
      _3404 = _3113 - _205;
      _3406 = rsqrt(dot(float3(_3402, _3403, _3404), float3(_3402, _3403, _3404)));  // [sem: invLength]
      _3407 = _3406 * _3402;
      _3408 = _3406 * _3403;
      _3409 = _3406 * _3404;
      _3410 = -0.0f - _203;
      _3411 = -0.0f - _204;
      _3412 = -0.0f - _205;
      _3417 = saturate(max(1e-05f, dot(float3(_3410, _3411, _3412), float3(_3363, _3364, _3365))));  // [sem: expr_sat]
      _3419 = saturate(dot(float3(_3363, _3364, _3365), float3(_3407, _3408, _3409)));  // [sem: expr_sat]
      _3422 = saturate(1.0f - saturate(saturate(dot(float3(_3410, _3411, _3412), float3(_3407, _3408, _3409)))));  // [sem: expr_sat]
      _3423 = _3422 * _3422;
      _3425 = (_3423 * _3423) * _3422;
      _3428 = _3425 * saturate(_3400 * 50.0f);
      _3429 = 1.0f - _3425;
      _3437 = saturate(_3373 * _3077);  // [sem: expr_sat]
      _3438 = _3362 * _3362;
      _3439 = _3438 * _3438;
      _3440 = 1.0f - _3438;
      _3452 = (((_3419 * _3439) - _3419) * _3419) + 1.0f;
      _3456 = (_3439 / ((_3452 * _3452) * 3.1415927f)) * (0.5f / ((((_3417 * _3440) + _3438) * _3373) + (_3417 * ((_3373 * _3440) + _3438))));
      _3467 = ((((_3324 * 0.61312f) + (_3325 * 0.33951f)) + (_3326 * 0.04737f)) * _3133) * ((max((((_3429 * ((((_3389 * _3370) + -0.04f) * _3369) + 0.04f)) + _3428) * _3456), 0.0f) * _3437) + (_3381 * float(_3366)));
      _3469 = ((((_3324 * 0.0702f) + (_3325 * 0.91636f)) + (_3326 * 0.01345f)) * _3133) * ((max((((_3429 * _3400) + _3428) * _3456), 0.0f) * _3437) + (_3381 * float(_3367)));
      _3471 = ((((_3324 * 0.02062f) + (_3325 * 0.10958f)) + (_3326 * 0.8698f)) * _3133) * ((max((((_3429 * ((((_3389 * _3372) + -0.04f) * _3369) + 0.04f)) + _3428) * _3456), 0.0f) * _3437) + (_3381 * float(_3368)));
      _3476 = dot(float3(_3467, _3469, _3471), float3(0.212671f, 0.71516f, 0.072169f));
      _3477 = min((max(0.0005f, _exposure3.w) * 4096.0f), _3476);
      _3481 = max(1e-09f, _3476);
      _3482 = (_3477 * _3467) / _3481;
      _3483 = (_3477 * _3469) / _3481;
      _3484 = (_3477 * _3471) / _3481;
      if ((_106 == 33) || (_106 == 54)) {
        if ((_3099) || ((!(_3099)) && (_sunDirection.y > _moonDirection.y))) {
          _3505 = _sunDirection.x;
          _3506 = _sunDirection.y;
          _3507 = _sunDirection.z;
        } else {
          _3505 = _moonDirection.x;
          _3506 = _moonDirection.y;
          _3507 = _moonDirection.z;
        }
        _3512 = rsqrt(dot(float3(_166, _167, _168), float3(_166, _167, _168)));  // [sem: invLength]
        _3513 = _3512 * _166;
        _3514 = _3512 * _167;
        _3515 = _3512 * _168;
        _3519 = _166 - (_126 * 0.04f);
        _3520 = _167 - (_127 * 0.04f);
        _3521 = _168 - (_128 * 0.04f);
        _3525 = (_viewPos.x - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].x)) + _3519;
        _3526 = (_viewPos.y - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].y)) + _3520;
        _3527 = (_viewPos.z - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[1].z)) + _3521;
        _3531 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].z), _3527, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].y), _3526, (_3525 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][0].w);
        _3535 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].z), _3527, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].y), _3526, (_3525 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][1].w);
        _3546 = (((!(_3531 <= _2459)) || (!(_3531 >= _2458))) || (!(_3535 <= _2459))) || (!(_3535 >= _2458));
        _3554 = (_viewPos.x - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].x)) + _3519;
        _3555 = (_viewPos.y - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].y)) + _3520;
        _3556 = (_viewPos.z - (__3__35__0__0__ShadowConstantBuffer_view._staticShadowPosition[0].z)) + _3521;
        _3560 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].z), _3556, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].y), _3555, (_3554 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][0].w);
        _3564 = mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].z), _3556, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].y), _3555, (_3554 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][1].w);
        _3575 = (((!(_3560 <= _2459)) || (!(_3560 >= _2458))) || (!(_3564 <= _2459))) || (!(_3564 >= _2458));
        _3577 = select((_3575 && _3546), 0.0f, 0.001f);
        _3578 = select(_3575, select(_3546, 0.0f, _3531), _3560);
        _3579 = select(_3575, select(_3546, 0.0f, _3535), _3564);
        _3580 = select(_3575, select(_3546, 0.0f, (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].z), _3527, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].y), _3526, (_3525 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[1][2].w))), (mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].z), _3556, mad((__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].y), _3555, (_3554 * (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._shadowProjRelativeTexScale[0][2].w)));
        _3581 = select(_3575, select(_3546, -1, 1), 0);
        [branch]
        if (!(_3581 == -1)) {
          _3587 = (_3578 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x) + -0.5f;
          _3588 = (_3579 * __3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y) + -0.5f;
          _3591 = (int)(floor(_3587));
          _3592 = (int)(floor(_3588));
          _3595 = (uint)((uint)(_3591)) + (uint)(1);
          _3596 = (uint)((uint)(_3592)) + (uint)(1);
          if (!(((uint)_3591 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.x)))) || ((uint)_3592 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.y)))))) {
            _3611 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3591, _3592, _3581, 0)))).x);
            _3612 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3595, _3592, _3581, 0)))).x);
            _3613 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3591, _3596, _3581, 0)))).x);
            _3614 = (((float4)(__3__36__0__0__g_shadowDepthArray.Load(int4(_3595, _3596, _3581, 0)))).x);
          } else {
            _3611 = 0.0f;
            _3612 = 0.0f;
            _3613 = 0.0f;
            _3614 = 0.0f;
          }
          _3615 = (int)(_3581) << 2;
          _3617 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3615) + (int)(103)))];
          _3623 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3615) + (int)(104)))];
          _3629 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3615) + (int)(105)))];
          _3635 = __3__35__0__0__ShadowConstantBuffer_raw[((int)((int)(_3615) + (int)(106)))];
          _3640 = _3617.x * _3578;
          _3644 = _3617.y * _3578;
          _3648 = _3617.z * _3578;
          _3652 = _3617.w * _3578;
          _3655 = mad(_3629.w, _3611, mad(_3623.w, _3579, _3652)) + _3635.w;
          _3656 = (mad(_3629.x, _3611, mad(_3623.x, _3579, _3640)) + _3635.x) / _3655;
          _3657 = (mad(_3629.y, _3611, mad(_3623.y, _3579, _3644)) + _3635.y) / _3655;
          _3658 = (mad(_3629.z, _3611, mad(_3623.z, _3579, _3648)) + _3635.z) / _3655;
          _3661 = _3578 + (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.z * 4.0f);
          _3677 = mad(_3629.w, _3612, mad(_3623.w, _3579, (_3617.w * _3661))) + _3635.w;
          _3683 = _3579 - (__3__35__0__0__ShadowConstantBuffer_view._shadowSizeAndInvSize.w * 2.0f);
          _3695 = mad(_3629.w, _3613, mad(_3623.w, _3683, _3652)) + _3635.w;
          _3699 = ((mad(_3629.x, _3613, mad(_3623.x, _3683, _3640)) + _3635.x) / _3695) - _3656;
          _3700 = ((mad(_3629.y, _3613, mad(_3623.y, _3683, _3644)) + _3635.y) / _3695) - _3657;
          _3701 = ((mad(_3629.z, _3613, mad(_3623.z, _3683, _3648)) + _3635.z) / _3695) - _3658;
          _3702 = ((mad(_3629.x, _3612, mad(_3623.x, _3579, (_3617.x * _3661))) + _3635.x) / _3677) - _3656;
          _3703 = ((mad(_3629.y, _3612, mad(_3623.y, _3579, (_3617.y * _3661))) + _3635.y) / _3677) - _3657;
          _3704 = ((mad(_3629.z, _3612, mad(_3623.z, _3579, (_3617.z * _3661))) + _3635.z) / _3677) - _3658;
          _3707 = (_3701 * _3703) - (_3700 * _3704);
          _3710 = (_3699 * _3704) - (_3701 * _3702);
          _3713 = (_3700 * _3702) - (_3699 * _3703);
          _3715 = rsqrt(dot(float3(_3707, _3710, _3713), float3(_3707, _3710, _3713)));  // [sem: invLength]
          _3719 = frac(_3587);
          _3724 = (saturate(dot(float3(_3513, _3514, _3515), float3((_3707 * _3715), (_3710 * _3715), (_3713 * _3715)))) * 0.002f) + _3580;
          _3737 = saturate(exp2((_3611 - _3724) * 1.442695e+06f));  // [sem: expr_sat]
          _3739 = saturate(exp2((_3613 - _3724) * 1.442695e+06f));  // [sem: expr_sat]
          _3745 = ((saturate(exp2((_3612 - _3724) * 1.442695e+06f)) - _3737) * _3719) + _3737;
          // [sem: expr_sat]
          _3752 = saturate((((_3739 - _3745) + ((saturate(exp2((_3614 - _3724) * 1.442695e+06f)) - _3739) * _3719)) * frac(_3588)) + _3745);
          _3753 = _3611;
          _3754 = _3612;
          _3755 = _3613;
          _3756 = _3614;
        } else {
          _3752 = 1.0f;  // [sem: expr_sat]
          _3753 = 0.0f;
          _3754 = 0.0f;
          _3755 = 0.0f;
          _3756 = 0.0f;
        }
        _3760 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].z), _3521, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].y), _3520, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].x) * _3519))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][0].w);
        _3764 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].z), _3521, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].y), _3520, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].x) * _3519))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][1].w);
        _3768 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].z), _3521, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].y), _3520, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].x) * _3519))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[1][2].w);
        if (!(((!(_3760 <= _2742)) || (!(_3760 >= _2741))) || (!(_3764 <= _2742)))) {
          _3779 = (_3768 >= -1.0f) && ((_3764 >= _2741) && (_3768 <= 1.0f));
          _3787 = select(_3779, 1e-05f, _3577);
          _3788 = select(_3779, _3760, _3578);
          _3789 = select(_3779, _3764, _3579);
          _3790 = select(_3779, _3768, _3580);
          _3791 = select(_3779, 1, _3581);
          _3792 = ((int)(uint)(_3779));
        } else {
          _3787 = _3577;
          _3788 = _3578;
          _3789 = _3579;
          _3790 = _3580;
          _3791 = _3581;
          _3792 = 0;
        }
        _3796 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].z), _3521, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].y), _3520, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].x) * _3519))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][0].w);
        _3800 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].z), _3521, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].y), _3520, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].x) * _3519))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][1].w);
        _3804 = mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].z), _3521, mad((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].y), _3520, ((__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].x) * _3519))) + (__3__35__0__0__ShadowConstantBuffer_view._dynamicShadowProjRelativeTexScale[0][2].w);
        if (!(((!(_3796 <= _2742)) || (!(_3796 >= _2741))) || (!(_3800 <= _2742)))) {
          _3815 = (_3804 >= -1.0f) && ((_3800 >= _2741) && (_3804 <= 1.0f));
          _3823 = select(_3815, 1e-05f, _3787);
          _3824 = select(_3815, _3796, _3788);
          _3825 = select(_3815, _3800, _3789);
          _3826 = select(_3815, _3804, _3790);
          _3827 = select(_3815, 0, _3791);
          _3828 = select(_3815, 1, _3792);
        } else {
          _3823 = _3787;
          _3824 = _3788;
          _3825 = _3789;
          _3826 = _3790;
          _3827 = _3791;
          _3828 = _3792;
        }
        [branch]
        if (!(_3828 == 0)) {
          _3838 = (int)(floor((_3824 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x) + -0.5f));
          _3839 = (int)(floor((_3825 * __3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y) + -0.5f));
          _3842 = (uint)((uint)(_3838)) + (uint)(1);
          _3843 = (uint)((uint)(_3839)) + (uint)(1);
          if (!(((uint)_3838 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.x)))) || ((uint)_3839 > (uint)((int)((uint)(__3__35__0__0__ShadowConstantBuffer_view._dynmaicShadowSizeAndInvSize.y)))))) {
            _3858 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3838, _3839, _3827, 0)))).x);
            _3859 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3842, _3839, _3827, 0)))).x);
            _3860 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3838, _3843, _3827, 0)))).x);
            _3861 = (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.Load(int4(_3842, _3843, _3827, 0)))).x);
          } else {
            _3858 = _3753;
            _3859 = _3754;
            _3860 = _3755;
            _3861 = _3756;
          }
          if ((_3099) || ((!(_3099)) && (_sunDirection.y > _moonDirection.y))) {
            _3873 = _sunDirection.x;
            _3874 = _sunDirection.y;
            _3875 = _sunDirection.z;
          } else {
            _3873 = _moonDirection.x;
            _3874 = _moonDirection.y;
            _3875 = _moonDirection.z;
          }
          _3881 = (_3823 - (saturate(-0.0f - dot(float3(_3873, _3874, _3875), float3(_3513, _3514, _3515))) * 0.0001f)) + _3826;
          _3894 = min(((float)((bool)(_3858 > _3881))), min(min(((float)((bool)(_3859 > _3881))), ((float)((bool)(_3860 > _3881)))), ((float)((bool)(_3861 > _3881)))));
        } else {
          _3894 = _3752;
        }
        _3895 = _2999 + _3519;
        _3896 = _3000 + _3520;
        _3897 = _3001 + _3521;
        _3901 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].z), _3897, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].y), _3896, (_3895 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[0].w);
        _3905 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].z), _3897, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].y), _3896, (_3895 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[1].w);
        _3909 = mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].z), _3897, mad((__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].y), _3896, (_3895 * (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].x)))) + (__3__35__0__0__ShadowConstantBuffer_view._terrainShadowProjRelativeTexScale[2].w);
        if (saturate(_3901) == _3901) {
          if ((_3909 >= 0.0001f) && ((_3909 <= 1.0f) && (saturate(_3905) == _3905))) {
            _3924 = frac((_3901 * 1024.0f) + -0.5f);
            // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
            _3928 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_3901, _3905));
            _3933 = _3909 + -0.005f;
            _3938 = select((_3928.w > _3933), 1.0f, 0.0f);
            _3940 = select((_3928.x > _3933), 1.0f, 0.0f);
            _3947 = ((select((_3928.z > _3933), 1.0f, 0.0f) - _3938) * _3924) + _3938;
            // [sem: expr_sat]
            _3953 = saturate((((((select((_3928.y > _3933), 1.0f, 0.0f) - _3940) * _3924) + _3940) - _3947) * frac((_3905 * 1024.0f) + -0.5f)) + _3947);
          } else {
            _3953 = 1.0f;  // [sem: expr_sat]
          }
        } else {
          _3953 = 1.0f;  // [sem: expr_sat]
        }
        // [sem: _3__36__0__0__g_baseColor_load]
        _3959 = __3__36__0__0__g_baseColor.Load(int3(((int)((uint)(_76 * (1.0f / g_screenSpaceScale.x)))), ((int)((uint)(_77 * (1.0f / g_screenSpaceScale.y)))), 0));
        _3965 = ((float)((uint)((uint)(((uint)((uint)(_3959.x)) >> 8) & 255)))) * 0.003921569f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _3968 = ((float)((uint)((uint)(_3959.x & 255)))) * 0.003921569f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _3972 = ((float)((uint)((uint)(((uint)((uint)(_3959.y)) >> 8) & 255)))) * 0.003921569f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
        _3973 = _3965 * _3965;
        _3974 = _3968 * _3968;
        _3975 = _3972 * _3972;
        if ((_3099) || ((!(_3099)) && (_sunDirection.y > _moonDirection.y))) {
          _4010 = _precomputedAmbient7.y;
        } else {
          _4010 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
        }
        _4011 = _viewPos.x + _166;
        _4013 = (_earthRadius + _viewPos.y) + _167;
        _4014 = _viewPos.z + _168;
        _4020 = sqrt(((_4014 * _4014) + (_4011 * _4011)) + (_4013 * _4013));
        _4025 = dot(float3((_4011 / _4020), (_4013 / _4020), (_4014 / _4020)), float3(_3505, _3506, _3507));
        _4028 = min(max(((_4020 - _earthRadius) / _atmosphereThickness), 16.0f), _3151);
        _4035 = max(_4028, 0.0f);
        _4041 = (-0.0f - sqrt((_4035 + _3162) * _4035)) / (_4035 + _earthRadius);
        if (_4025 > _4041) {
          _4064 = ((exp2(log2(saturate((_4025 - _4041) / (1.0f - _4041))) * 0.2f) * 0.4921875f) + 0.50390625f);
        } else {
          _4064 = ((exp2(log2(saturate((_4041 - _4025) / (_4041 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
        }
        // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
        _4067 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_4028 + -16.0f) / _3155)) * 0.5f) * 0.96875f) + 0.015625f), _4064), 0.0f);
        _4071 = (_3216 * _3215) * _4067.y;
        _4081 = exp2((_4071 + (_4067.x * _3224)) * -1.442695f);
        _4082 = exp2((_4071 + (_4067.x * _3227)) * -1.442695f);
        _4083 = exp2((_4071 + (_4067.x * _3230)) * -1.442695f);
        _4102 = sqrt((_168 * _168) + (_166 * _166));
        _4108 = (_cloudAltitude - (max(((_4102 * _4102) + -400000.0f), 0.0f) * 1e-06f)) - _viewPos.y;
        _4118 = _4108 + ((0.5f - (((float)((int)((int)((int)(uint)((int)(_3506 > 0.0f))) - (int)((int)(uint)((int)(_3506 < 0.0f)))))) * 0.5f)) * _cloudThickness);
        if (_167 < _4108) {
          _4121 = dot(float3(0.0f, 1.0f, 0.0f), float3(_3505, _3506, _3507));
          _4127 = select((abs(_4121) < 1e-08f), 1e+08f, ((_4118 - dot(float3(0.0f, 1.0f, 0.0f), float3(_166, _167, _168))) / _4121));
          _4133 = ((_4127 * _3505) + _166);
          _4134 = _4118;
          _4135 = ((_4127 * _3507) + _168);
        } else {
          _4133 = _166;
          _4134 = _167;
          _4135 = _168;
        }
        _4149 = saturate(abs(_3506) * 4.0f);  // [sem: expr_sat]
        _4151 = (_4149 * _4149) * exp2((_3308 * _3307) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_4133 * 5e-05f) + 0.5f), ((_4134 - _4108) / _cloudThickness), ((_4135 * 5e-05f) + 0.5f)), 0.0f)).x));
        _4158 = ((1.0f - _4151) * saturate(((_167 - _cloudThickness) - _4108) * 0.1f)) + _4151;
        _4159 = _4158 * (((_4082 * 0.33951f) + (_4081 * 0.61312f)) + (_4083 * 0.04737f));
        _4160 = _4158 * (((_4082 * 0.91636f) + (_4081 * 0.0702f)) + (_4083 * 0.01345f));
        _4161 = _4158 * (((_4082 * 0.10958f) + (_4081 * 0.02062f)) + (_4083 * 0.8698f));
        _4177 = ((max(0.0f, (0.3f - dot(float3(_126, _127, _128), float3(_3505, _3506, _3507)))) * 0.15734209f) * saturate(min(_3894, _3953))) * _4010;
        _4188 = (((_4177 * (((_3973 * 0.61312f) + (_3974 * 0.33951f)) + (_3975 * 0.04737f))) * (((_4159 * 0.61312f) + (_4160 * 0.33951f)) + (_4161 * 0.04737f))) + _3482);
        _4189 = (((_4177 * (((_3973 * 0.0702f) + (_3974 * 0.91636f)) + (_3975 * 0.01345f))) * (((_4159 * 0.0702f) + (_4160 * 0.91636f)) + (_4161 * 0.01345f))) + _3483);
        _4190 = (((_4177 * (((_3973 * 0.02062f) + (_3974 * 0.10958f)) + (_3975 * 0.8698f))) * (((_4159 * 0.02062f) + (_4160 * 0.10958f)) + (_4161 * 0.8698f))) + _3484);
      } else {
        _4188 = _3482;
        _4189 = _3483;
        _4190 = _3484;
      }
      _4191 = (_renderParams2.z * _2409) * _4188;
      _4192 = (_renderParams2.z * _2410) * _4189;
      _4193 = (_renderParams2.z * _2411) * _4190;
      _4197 = _4191 + _2320;
      _4198 = _4192 + _2321;
      _4199 = _4193 + _2322;
      _4210 = _2330;
      _4211 = (((max(_2320, _4191) - _4197) * _2332) + _4197);
      _4212 = (((max(_2321, _4192) - _4198) * _2332) + _4198);
      _4213 = (((max(_2322, _4193) - _4199) * _2332) + _4199);
    } else {
      _4210 = 1000.0f;
      _4211 = _2320;
      _4212 = _2321;
      _4213 = _2322;
    }
    if (!_1007) {
      __3__38__0__1__g_raytracingHitResultUAV[int2(_74, _75)] = float4(_197, _198, _199, select((_4210 <= 0.0f), 1000.0f, _4210));
    }
    if ((_4210 > 128.0f) && (dot(float3(_4211, _4212, _4213), float3(0.212671f, 0.71516f, 0.072169f)) == 0.0f)) {
      _4224 = 1;
      while(true) {
        _4226 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_4224) + (int)(20)))];
        _4254 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_4224) + (int)(36)))];
        _4264 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _2336) * _4226.w) + _4254.x));
        _4265 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _2337) * _4226.w) + _4254.y));
        _4266 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _2338) * _4226.w) + _4254.z));
        if (!(((((int)_4264 >= (int)((int)(_4226.x + -63.0f))) && ((int)_4264 < (int)((int)(_4226.x + 63.0f)))) && (((int)_4265 >= (int)((int)(_4226.y + -31.0f))) && ((int)_4265 < (int)((int)(_4226.y + 31.0f))))) && (((int)_4266 >= (int)((int)(_4226.z + -63.0f))) && ((int)_4266 < (int)((int)(_4226.z + 63.0f)))))) {
          _4279 = (int)(_4224) + (int)(1);
          if ((uint)_4279 < (uint)8) {
            _4224 = _4279;
            continue;
          } else {
            _4282 = -10000;
          }
        } else {
          _4282 = _4224;
        }
        if (!((uint)_4282 > (uint)3)) {
          _4302 = 1.0f / ((float)((uint)((uint)(1) << (_4282 & 31))));
          _4306 = frac(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _2338) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z) * _4302);
          // [sem: expr_sat]
          _4323 = saturate(1.0f - ((__3__36__0__1__g_skyVisibilityVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3((((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _2336) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x) * _4302), (((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _2337) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y) * _4302), (((((float)((uint)((uint)((uint)(_4282)) * (uint)(66)))) + 1.0f) + ((select((_4306 < 0.0f), 1.0f, 0.0f) + _4306) * 64.0f)) * 0.003787879f)), 0.0f)).x));
        } else {
          _4323 = 1.0f;  // [sem: expr_sat]
        }
        _4326 = _renderParams.w * _4323;
        _4327 = (_999 == 0.0f);
        // [sem: _3__36__0__0__g_environmentColor_sampleLod]
        _4335 = __3__36__0__0__g_environmentColor.SampleLevel(__3__40__0__0__g_samplerTrilinear, float3(select(_4327, (-0.0f - _203), _1200), select(_4327, _204, _1201), select(_4327, (-0.0f - _205), _1202)), 4.0f);
        _4349 = ((_4326 * select(_4327, 0.03125f, _996)) * _4335.x);
        _4350 = ((_4326 * select(_4327, 0.03125f, _997)) * _4335.y);
        _4351 = ((_4326 * select(_4327, 0.03125f, _998)) * _4335.z);
        break;
      }
    } else {
      _4349 = _4211;
      _4350 = _4212;
      _4351 = _4213;
    }
    _4358 = saturate(1.0f - saturate(_2323));  // [sem: expr_sat]
    _4362 = (_4358 - (_renderParams2.w * _4358)) + _renderParams2.w;
    // [sem: _3__36__0__0__g_environmentColor_sampleLod]
    _4366 = __3__36__0__0__g_environmentColor.SampleLevel(__3__40__0__0__g_samplerTrilinear, float3(_203, _204, _205), 4.0f);
    _4372 = _renderParams.w * _4362;
    _4373 = _4372 * _4366.x;
    _4374 = _4372 * _4366.y;
    _4375 = _4372 * _4366.z;
    _4380 = dot(float3(_4373, _4374, _4375), float3(0.212671f, 0.71516f, 0.072169f));
    _4381 = min((max(0.01f, _exposure3.w) * 2048.0f), _4380);
    _4385 = max(1e-09f, _4380);
    _4395 = ((__3__36__0__0__g_raytracingDiffuseRayInversePDF.Load(int3(_74, _75, 0))).x) * 2.0f;
    _4396 = _4395 * (((_4381 * _4373) / _4385) + (_renderParams2.y * _4349));
    _4397 = _4395 * (((_4381 * _4374) / _4385) + (_renderParams2.y * _4350));
    _4398 = _4395 * (((_4381 * _4375) / _4385) + (_renderParams2.y * _4351));
    if (!(_renderParams.y == 0.0f)) {
      _4403 = saturate(dot(float3(_126, _127, _128), float3(_203, _204, _205)));  // [sem: expr_sat]
      _4408 = (_4403 * _4396);
      _4409 = (_4403 * _4397);
      _4410 = (_4403 * _4398);
    } else {
      _4408 = _4396;
      _4409 = _4397;
      _4410 = _4398;
    }
    __3__38__0__1__g_diffuseResultUAV[int2(_74, _75)] = float4(((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - min(15000.0f, (_exposure4.x * _4408)))))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - min(15000.0f, (_exposure4.x * _4409)))))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - min(15000.0f, (_exposure4.x * _4410)))))))), (half)(half(1.0f - _4362)));
    break;
  }
}
