Texture2D<float4> __3__36__0__0__g_puddleMask : register(t136, space36);

Texture2D<float4> __3__36__0__0__g_climateSandTex : register(t137, space36);

Texture2D<uint16_t> __3__36__0__0__g_sceneDecalMask : register(t138, space36);

Texture2D<float2> __3__36__0__0__g_texNetDensity : register(t74, space36);

Texture3D<float> __3__36__0__0__g_texCloudVolumeShadow : register(t201, space36);

Texture3D<float2> __3__36__0__0__g_hairDualScatteringLUT : register(t220, space36);

Texture2D<float4> __3__36__0__0__g_blueNoise : register(t145, space36);

Texture2D<float4> __3__36__0__0__g_bentCone : register(t68, space36);

Texture2D<float4> __3__36__0__0__g_character : register(t50, space36);

Texture2D<float4> __3__36__0__0__g_specularResult : register(t152, space36);

Texture2D<float2> __3__36__0__0__g_iblBrdfLookup : register(t154, space36);

Texture2D<float2> __3__36__0__0__g_hairBrdfLookup : register(t156, space36);

Texture2D<uint2> __3__36__0__0__g_stencilPrev : register(t140, space36);

Texture2D<half4> __3__36__0__0__g_diffuseResult : register(t59, space36);

Texture2D<half4> __3__36__0__0__g_diffuseResultPrev : register(t183, space36);

Texture2D<half4> __3__36__0__0__g_specularResultPrev : register(t60, space36);

Texture2D<half2> __3__36__0__0__g_sceneAO : register(t61, space36);

Texture2D<float> __3__36__0__0__g_specularSampleCountPrev : register(t62, space36);

Texture2D<float4> __3__36__0__0__g_sceneSpecularHalf : register(t63, space36);

Texture2D<uint4> __3__36__0__0__g_baseColor : register(t21, space36);

Texture2D<float4> __3__36__0__0__g_normal : register(t22, space36);

Texture2D<float2> __3__36__0__0__g_velocity : register(t23, space36);

Texture2D<uint> __3__36__0__0__g_sceneNormal : register(t24, space36);

Texture2D<uint> __3__36__0__0__g_sceneNormalPrev : register(t64, space36);

Texture2D<uint2> __3__36__0__0__g_normalDepthHalf : register(t53, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t51, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t79, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaquePrev : register(t80, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t54, space36);

Texture2D<float4> __3__36__0__0__g_manyLightsMoments : register(t81, space36);

Texture2D<float> __3__36__0__0__g_specularRayHitDistance : register(t82, space36);

Texture2D<uint> __3__36__0__0__g_tiledManyLightsMasks : register(t17, space36);

ByteAddressBuffer __3__37__0__0__g_structureCounterBuffer : register(t27, space37);

Texture2D<half4> __3__36__0__0__g_sceneShadowColor : register(t56, space36);

RWTexture2D<float4> __3__38__0__1__g_diffuseHalfPrevUAV : register(u42, space38);

RWTexture2D<float4> __3__38__0__1__g_sceneColorUAV : register(u10, space38);

RWTexture2D<half4> __3__38__0__1__g_sceneSpecularUAV : register(u11, space38);

RWTexture2D<half4> __3__38__0__1__g_diffuseResultUAV : register(u12, space38);

RWTexture2D<half4> __3__38__0__1__g_specularResultUAV : register(u13, space38);

RWTexture2D<float> __3__38__0__1__g_specularSampleCountUAV : register(u14, space38);

RWTexture2D<half4> __3__38__0__1__g_sceneColorLightingOnlyForAwbUAV : register(u19, space38);

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

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b32, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};

cbuffer __3__35__0__0__WeatherConstantBuffer : register(b48, space35) {
  float _rain : packoffset(c000.x);
  float _windSpeed : packoffset(c000.y);
  float _puddleRate : packoffset(c000.z);
  float _humidity : packoffset(c000.w);
  float _puddleScale : packoffset(c001.x);
  float2 _windDir : packoffset(c001.y);
  float _snowAmount : packoffset(c001.w);
  float _snowDetail : packoffset(c002.x);
  float _iceRate : packoffset(c002.y);
  float _snowRate : packoffset(c002.z);
  uint _weatherCheckFlag : packoffset(c002.w);
  float2 _climateTextureOnePixelMeter : packoffset(c003.x);
  float2 _cloudScroll : packoffset(c003.z);
  int2 _climateTextureSize : packoffset(c004.x);
  float _heightScaleMin : packoffset(c004.z);
  float _heightScaleMax : packoffset(c004.w);
  float _temperatureSnowStart : packoffset(c005.x);
  float _temperatureSnowEnd : packoffset(c005.y);
  float _temperatureDeformableSnowStart : packoffset(c005.z);
  float _tempeartureDeformableSnowEnd : packoffset(c005.w);
  float _rainDropletAmount : packoffset(c006.x);
  float _rainDropletRate : packoffset(c006.y);
  float _puddleCloudAltitude : packoffset(c006.z);
  float _puddleCloudThickenss : packoffset(c006.w);
  float _windSpeedExceptAltitude : packoffset(c007.x);
  float3 _weatherPadding : packoffset(c007.y);
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

cbuffer __3__35__0__0__EnvironmentLightingHistoryConstantBuffer : register(b0, space35) {
  float4 _environmentLightingHistory[4] : packoffset(c000.x);
};

cbuffer __3__35__0__0__MaterialParameterPresetTableConstantBuffer : register(b40, space35) {
  struct {
    float4 _clothLightingCategory;
    float4 _clothLightingParameter[8];
    float4 _colorPresetInfo;
    uint4 _colorPresetParameter[16];
    float4 _debugOption;
  } __3__35__0__0__MaterialParameterPresetTableConstantBuffer_view : packoffset(c000.x);

  // Raw views preserve dynamic cbufferLoadLegacy.f32/i32 access.
  float4 __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[27] : packoffset(c0);
  uint4 __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw_uint[27] : packoffset(c0);
};

cbuffer __3__1__0__0__WeatherShadingConstants : register(b1, space1) {
  int4 _paramWeather : packoffset(c000.x);
  float4 _paramShading : packoffset(c001.x);
  int2 _readBackBufferSize : packoffset(c002.x);
  float _readBackFieldSize : packoffset(c002.z);
  int _enableSandAO : packoffset(c002.w);
  float4 _blurSourceSize : packoffset(c003.x);
  float4 _blurTargetSize : packoffset(c004.x);
  float2 _paramGlobalSand : packoffset(c005.x);
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

SamplerState __3__40__0__0__g_samplerPoint : register(s4, space40);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearWrapUWClampV : register(s1, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

[numthreads(8, 8, 1)]
void main(
  uint3 SV_DispatchThreadID : SV_DispatchThreadID,
  uint3 SV_GroupID : SV_GroupID,
  uint3 SV_GroupThreadID : SV_GroupThreadID,
  uint SV_GroupIndex : SV_GroupIndex
) {
  int _72;
  int _73;
  int4 _81;
  int _91;
  int _95;
  uint _101;
  uint _103;
  float _104;
  float _105;
  float _106;
  float _107;
  float _111;
  float _112;
  float _114;
  uint2 _117;
  int _119;
  float _122;
  float _123;
  bool _128;
  float _129;
  float _130;
  bool _131;
  float _132;
  bool _133;
  float _134;
  bool _135;
  float _136;
  bool _137;
  half _278;
  half _279;
  half _280;
  half _281;
  half _282;
  half _283;
  int _470;
  half _512;
  half _513;
  half _514;
  half _515;
  half _523;
  half _524;
  half _525;
  half _526;
  int _527;
  int _528;
  float _529;
  float _530;
  bool _631;
  float _853;
  float _854;
  float _1073;
  float _1074;
  float _1075;
  float _1076;
  float _1110;
  float _1111;
  float _1112;
  float _1113;
  int _1119;
  half _1120;
  float _1121;
  float _1122;
  float _1123;
  float _1124;
  float _1153;
  half _1154;
  float _1156;
  float _1182;
  float _1183;
  float _1190;
  half _1191;
  float _1192;
  float _1193;
  float _1194;
  float _1200;
  half _1201;
  float _1202;
  float _1203;
  float _1204;
  half _1265;
  float _1282;
  float _1698;
  half _1699;
  float _1700;
  float _1701;
  float _1702;
  int _1703;
  float _1704;
  float _1705;
  float _1706;
  float _1707;
  float _1708;
  float _1709;
  bool _1762;
  bool _1765;
  bool _1766;
  float _1784;
  float _1795;
  float _1796;
  half _1806;
  half _1807;
  half _1808;
  half _1809;
  half _1810;
  float _1811;
  float _1812;
  float _1824;
  bool _1847;
  float _1856;
  float _1897;
  float _1898;
  float _1986;
  float _2064;
  float _2223;
  float _2224;
  float _2225;
  float _2226;
  float _2389;
  int _2390;
  float _2447;
  float _2459;
  float _2491;
  float _2578;
  float _2579;
  float _2580;
  float _2581;
  float _2583;
  float _2584;
  float _2585;
  float _2586;
  float _2590;
  float _2591;
  float _2592;
  float _2593;
  float _2594;
  float _2619;
  float _2644;
  bool _2655;
  half _2698;
  int _2699;
  float _2700;
  float _2701;
  float _2702;
  float _2839;
  float _2892;
  float _2911;
  float _2915;
  half _2939;
  half _2942;
  half _2943;
  float _3049;
  float _3097;
  float _3112;
  float _3214;
  int _3215;
  int _3216;
  float _3217;
  float _3218;
  float _3219;
  float _3220;
  float _3378;
  float _3379;
  float _3380;
  float _3381;
  float _3446;
  float _3459;
  float _3460;
  float _3461;
  float _3515;
  float _3516;
  float _3580;
  float _3581;
  float _3582;
  float _3651;
  float _3652;
  float _3653;
  float _3668;
  float _3669;
  float _3670;
  float _3671;
  float _3672;
  bool _3734;
  bool _3735;
  float _3771;
  float _3772;
  float _3773;
  float _3774;
  float _3840;
  float _3843;
  float _3844;
  float _3845;
  float _3846;
  float _3881;
  float _3882;
  float _3883;
  float _3898;
  float _3927;
  float _3928;
  float _3929;
  float _3930;
  float _3931;
  half _3938;
  half _3939;
  half _3940;
  half _3941;
  half _3942;
  float _3943;
  float _3949;
  half _3950;
  half _3951;
  half _3952;
  half _3953;
  half _3954;
  float _3955;
  float _3956;
  float _3957;
  float _3958;
  float _3959;
  float _3960;
  half _4001;
  half _4002;
  half _4003;
  float _4018;
  float _4019;
  float _4020;
  float _4040;
  float _4105;
  float _4203;
  float _4204;
  float _4205;
  bool _4265;
  bool _4285;
  bool _4287;
  bool _4288;
  float _4305;
  int _4306;
  float _4307;
  float _4308;
  float _4309;
  float _4310;
  float _4354;
  float _4391;
  float _4398;
  float _4399;
  float _4400;
  bool _4424;
  bool _4427;
  bool _4428;
  float _4445;
  float _4446;
  float _4447;
  float _4488;
  float _4756;
  float _4757;
  float _4758;
  float _4759;
  float _4760;
  float _4761;
  float _4762;
  float _4763;
  float _4764;
  float _4936;
  float _4937;
  float _4938;
  float _4939;
  float _4940;
  float _4941;
  float _4942;
  float _4943;
  float _4944;
  float _5034;
  float _5035;
  float _5036;
  float _5075;
  float _5076;
  float _5077;
  float _5080;
  float _5081;
  float _5082;
  float _5110;
  float _5111;
  float _5112;
  float _5113;
  float _5114;
  float _5115;
  float _5181;
  float _5182;
  float _5183;
  float _5184;
  float _5185;
  float _5186;
  float _5187;
  float _5188;
  float _5220;
  float _5221;
  float _5222;
  float _5223;
  float _5224;
  float _5225;
  float _5226;
  float _5227;
  float _5228;
  float _5229;
  float _5230;
  float _5242;
  float _5243;
  float _5244;
  float _5561;
  float _5587;
  float _5588;
  float _5589;
  float _5590;
  float _5591;
  float _5592;
  float _5593;
  float _5594;
  float _5595;
  float _5606;
  float _5607;
  float _5608;
  float _5609;
  float _5610;
  float _5611;
  float _5612;
  float _5613;
  float _5614;
  float _5615;
  float _5616;
  float _5617;
  float _5631;
  float _5632;
  float _5747;
  float _5748;
  float _5749;
  float _5750;
  float _5751;
  float _5752;
  float _5753;
  float _5754;
  float _5755;
  float _5799;
  half _5848;
  half _5849;
  half _5850;
  float _5865;
  float _5900;
  float _5901;
  float _5994;
  float _5995;
  float _5996;
  float _6055;
  float _6056;
  float _6057;
  float _6090;
  float _6091;
  float _6092;
  bool _6118;
  float _6151;
  float _6152;
  float _6153;
  float _6173;
  float _6174;
  float _6175;
  float _6190;
  float _6191;
  float _6192;
  float _6211;
  float _6212;
  float _6213;
  uint4 _146;
  float4 _152;
  half _161;
  half _165;
  half _170;
  half _175;
  half _179;
  uint _182;
  bool _183;
  bool _184;
  float _194;
  float _195;
  float _196;
  float _198;
  half _202;
  half _203;
  half _204;
  int _205;
  half _223;
  half _224;
  float _229;
  float _230;
  float _234;
  float _236;
  float _243;
  float _244;
  float _245;
  float _247;
  float _250;
  float _251;
  float _252;
  float _253;
  float _260;
  float _261;
  float _262;
  half _285;
  half _286;
  half _287;
  half _288;
  half _292;
  half _293;
  half _294;
  half _310;
  half _311;
  half _312;
  bool _317;
  half _319;
  uint _337;
  uint _345;
  uint _353;
  uint _361;
  uint _369;
  uint _377;
  uint _385;
  uint _393;
  uint _401;
  uint _409;
  uint _417;
  uint _425;
  uint _433;
  uint _441;
  uint _449;
  uint _457;
  int _499;
  int _500;
  int4 _533;
  int _538;
  int _542;
  int _546;
  int _550;
  float _577;
  float _582;
  float _583;
  float _584;
  float _585;
  float _586;
  float _587;
  float _588;
  float _589;
  int _590;
  int _591;
  int _592;
  int _593;
  float _633;
  float _638;
  float _640;
  bool _659;
  int4 _688;
  float _707;
  float _708;
  float _709;
  float _711;
  float _715;
  float _716;
  float _717;
  float _733;
  float _734;
  float _735;
  float _737;
  float _756;
  float _757;
  float _758;
  float _760;
  float _779;
  float _780;
  float _781;
  float _783;
  bool _788;
  float _789;
  float _802;
  float _803;
  float _804;
  float _805;
  float _810;
  float _813;
  float _816;
  float _819;
  float _822;
  float _855;
  float _856;
  float _857;
  float _858;
  float _859;
  float _860;
  float _861;
  float _862;
  bool _871;
  float _880;
  float _881;
  float _882;
  float _883;
  float _884;
  float _885;
  float _890;
  float _891;
  float _892;
  float _893;
  float _897;
  float _906;
  float _907;
  float _908;
  float _909;
  half4 _911;
  uint _921;
  half4 _922;
  uint _935;
  half4 _936;
  half4 _949;
  float _959;
  float _960;
  float _961;
  float4 _963;
  float4 _970;
  float4 _980;
  float4 _990;
  bool _1007;
  float _1009;
  float _1011;
  float _1047;
  float _1048;
  float _1049;
  float _1050;
  float _1052;
  float _1053;
  float _1054;
  float _1055;
  bool _1056;
  bool _1058;
  bool _1062;
  float4 _1067;
  uint _1095;
  int _1097;
  float4 _1104;
  bool _1128;
  float _1135;
  float _1166;
  float _1167;
  float _1169;
  float _1170;
  float _1171;
  float _1185;
  float4 _1206;
  float4 _1213;
  float4 _1223;
  float4 _1233;
  float _1246;
  float _1247;
  float _1248;
  float _1250;
  float _1251;
  float _1252;
  float _1253;
  float _1266;
  float _1283;
  float _1284;
  float _1285;
  float _1286;
  float _1287;
  float _1288;
  float _1289;
  float _1290;
  float _1296;
  float _1300;
  float _1301;
  float _1302;
  float _1306;
  float _1307;
  float _1308;
  float _1315;
  float _1325;
  float _1326;
  float _1327;
  float _1328;
  float _1329;
  float _1330;
  float _1339;
  float _1344;
  float _1350;
  float _1351;
  float _1355;
  float _1356;
  float _1361;
  float _1362;
  float _1363;
  float _1364;
  float _1376;
  float _1380;
  float _1390;
  float _1391;
  float _1395;
  float _1397;
  float _1398;
  float _1411;
  float _1421;
  float _1422;
  float _1423;
  float _1432;
  float2 _1441;
  float2 _1444;
  float2 _1447;
  float _1454;
  float _1455;
  float _1456;
  float _1457;
  float _1458;
  float _1459;
  float _1460;
  float _1461;
  float _1462;
  float _1463;
  float _1464;
  float _1465;
  float _1466;
  float _1467;
  float _1468;
  float _1469;
  float _1470;
  float _1471;
  float _1481;
  float _1482;
  float _1483;
  float _1484;
  float _1485;
  float _1486;
  float _1494;
  float _1495;
  float _1496;
  float _1497;
  float _1499;
  float _1500;
  float _1501;
  float _1502;
  float _1503;
  float _1504;
  float _1507;
  float _1508;
  float _1509;
  float _1519;
  float _1542;
  float _1546;
  float _1550;
  float _1568;
  float _1575;
  float _1576;
  float _1577;
  float _1586;
  float _1593;
  float _1600;
  float _1628;
  float _1629;
  float _1630;
  float _1631;
  float _1632;
  float _1642;
  float _1643;
  float _1644;
  float4 _1646;
  float4 _1653;
  float4 _1663;
  float4 _1673;
  float _1716;
  float _1717;
  float _1718;
  half2 _1720;
  half2 _1727;
  half2 _1736;
  half2 _1745;
  float _1752;
  bool _1759;
  bool _1771;
  bool _1772;
  float _1775;
  bool _1777;
  bool _1779;
  uint _1786;
  half _1797;
  bool _1801;
  int _1813;
  bool _1814;
  bool _1815;
  bool _1816;
  float _1817;
  float _1818;
  float _1819;
  float _1820;
  float _1825;
  int _1826;
  bool _1827;
  float _1884;
  float2 _1891;
  float _1900;
  float _1903;
  float _1904;
  float _1912;
  float _1918;
  float _1919;
  int _1922;
  int _1923;
  float _1924;
  float _1925;
  float _1930;
  float _1931;
  int4 _1933;
  int _1956;
  float _1994;
  float _1995;
  float _1996;
  float _1997;
  float _2001;
  float _2018;
  float _2019;
  float _2022;
  bool _2037;
  float _2039;
  float _2041;
  bool _2045;
  float _2070;
  float _2075;
  float _2076;
  float _2077;
  float _2078;
  float _2079;
  float _2080;
  float _2081;
  float _2082;
  float _2084;
  float _2097;
  float _2098;
  float _2099;
  float _2100;
  int _2102;
  int _2103;
  int _2104;
  int _2105;
  bool _2127;
  bool _2131;
  bool _2135;
  bool _2139;
  bool _2152;
  bool _2154;
  bool _2163;
  bool _2185;
  int4 _2228;
  float _2247;
  float _2248;
  float _2249;
  float _2251;
  float _2256;
  float _2271;
  float _2272;
  float _2273;
  float _2275;
  float _2280;
  float _2295;
  float _2296;
  float _2297;
  float _2299;
  float _2304;
  float _2319;
  float _2320;
  float _2321;
  float _2323;
  float _2328;
  float _2331;
  float _2348;
  float _2349;
  float _2350;
  float _2351;
  float _2356;
  float _2358;
  float _2360;
  float _2362;
  float _2364;
  float _2365;
  float _2366;
  float _2367;
  int _2370;
  int _2371;
  int _2379;
  int _2381;
  float _2400;
  uint _2401;
  half4 _2403;
  uint _2408;
  half4 _2409;
  half4 _2414;
  half4 _2419;
  float _2424;
  float _2433;
  float _2438;
  float _2451;
  float _2454;
  bool _2455;
  bool _2460;
  float _2461;
  float _2463;
  float4 _2466;
  float _2471;
  float _2473;
  float _2475;
  float _2476;
  float _2477;
  float _2478;
  float _2533;
  float _2550;
  float _2551;
  float _2552;
  float _2557;
  float _2573;
  float _2601;
  float _2602;
  float _2603;
  float _2610;
  float _2611;
  float _2612;
  float _2620;
  float _2626;
  float _2636;
  float _2637;
  float _2638;
  float _2639;
  bool _2647;
  bool _2657;
  half _2660;
  uint _2683;
  int _2685;
  float4 _2692;
  float _2704;
  float _2708;
  float _2709;
  float _2710;
  float _2716;
  float _2724;
  float _2726;
  float _2728;
  float _2732;
  float _2742;
  float _2743;
  float _2744;
  float _2745;
  float _2750;
  float _2755;
  float _2757;
  float _2759;
  float _2783;
  float _2787;
  float _2791;
  float _2795;
  float _2825;
  float _2830;
  float _2831;
  int _2843;
  bool _2846;
  float _2848;
  float _2852;
  float _2857;
  float _2883;
  float _2894;
  float _2900;
  float _2922;
  half _2928;
  half _2934;
  float _2944;
  float _2945;
  float _2946;
  float _2959;
  float _2960;
  float _2961;
  float _2962;
  float _3002;
  float _3007;
  float _3008;
  float _3009;
  float _3010;
  float _3020;
  float _3023;
  float _3039;
  float _3077;
  float _3080;
  float _3081;
  float _3082;
  float _3083;
  float _3113;
  bool _3115;
  float _3126;
  float _3127;
  int _3130;
  int _3131;
  float _3132;
  float _3133;
  int4 _3143;
  int _3150;
  float _3179;
  float _3180;
  float _3181;
  float _3182;
  float _3197;
  float _3198;
  float _3199;
  float _3200;
  bool _3221;
  uint _3222;
  half4 _3224;
  float _3237;
  uint _3243;
  half4 _3244;
  float _3257;
  half4 _3267;
  float _3280;
  half4 _3290;
  float _3303;
  float _3327;
  float _3329;
  float _3331;
  float _3333;
  float _3334;
  float _3343;
  float _3350;
  float _3357;
  float _3382;
  float _3383;
  float _3384;
  float _3397;
  float _3407;
  float _3408;
  float _3409;
  float _3421;
  float _3426;
  bool _3427;
  int _3429;
  bool _3449;
  float _3450;
  float _3451;
  float _3452;
  float _3453;
  float _3463;
  float _3464;
  float _3465;
  bool _3467;
  float _3468;
  float _3469;
  float _3470;
  float2 _3485;
  float2 _3491;
  float _3498;
  float _3499;
  float _3501;
  float _3509;
  float _3511;
  float _3518;
  float _3521;
  float _3522;
  float _3524;
  float _3532;
  float _3533;
  float _3534;
  float4 _3539;
  float _3543;
  float _3544;
  float _3545;
  float _3547;
  float _3551;
  float _3552;
  float _3553;
  float _3555;
  float2 _3568;
  float _3575;
  float _3588;
  float2 _3593;
  float2 _3598;
  float _3602;
  float _3604;
  float _3621;
  float _3625;
  float _3626;
  float _3627;
  float _3634;
  float2 _3658;
  float _3675;
  float _3682;
  float _3683;
  float _3684;
  float _3705;
  float4 _3715;
  bool _3745;
  float4 _3765;
  float _3781;
  float _3784;
  float _3797;
  float _3798;
  float _3799;
  float _3804;
  float _3809;
  float _3820;
  float _3838;
  float _3850;
  bool _3851;
  float _3854;
  float _3899;
  float _3900;
  float _3901;
  float _3906;
  float _3909;
  float _3916;
  float _3917;
  half4 _3962;
  float _3967;
  float _3968;
  float _3969;
  uint _3973;
  float _3989;
  float _3990;
  float _3991;
  float _3993;
  bool _4006;
  float _4047;
  float _4048;
  float _4049;
  float _4050;
  float _4056;
  float _4061;
  float _4067;
  float _4075;
  float _4082;
  float2 _4110;
  float _4132;
  float _4150;
  float _4151;
  float _4152;
  float _4168;
  float _4176;
  float _4188;
  float _4191;
  float _4197;
  float _4225;
  float _4227;
  float _4234;
  float _4235;
  float _4236;
  float _4237;
  float _4257;
  float _4258;
  float _4259;
  float _4267;
  float _4268;
  bool _4271;
  bool _4274;
  bool _4282;
  float _4289;
  float _4290;
  float _4291;
  uint16_t _4293;
  float _4315;
  float _4316;
  float _4317;
  float _4318;
  float _4329;
  float _4334;
  float _4335;
  float _4336;
  float _4338;
  float _4339;
  float _4340;
  float _4341;
  bool _4344;
  float _4346;
  bool _4347;
  float _4360;
  float _4370;
  float _4371;
  float _4372;
  float _4373;
  int _4374;
  bool _4375;
  bool _4378;
  float _4392;
  float _4401;
  float _4402;
  bool _4404;
  float _4406;
  float _4407;
  float _4408;
  float _4433;
  float _4448;
  float _4449;
  float _4450;
  float _4451;
  float _4452;
  float _4453;
  float _4454;
  float _4456;
  float _4457;
  float _4458;
  float _4459;
  float _4460;
  float _4461;
  float _4463;
  float _4465;
  float _4466;
  float _4468;
  bool _4469;
  bool _4470;
  bool _4471;
  float _4503;
  float _4507;
  float4 _4512;
  float _4516;
  float _4517;
  float _4518;
  float _4519;
  float _4530;
  float _4531;
  float _4537;
  float _4541;
  float _4542;
  float _4543;
  float _4547;
  float _4548;
  float _4549;
  float _4556;
  float _4560;
  float _4567;
  float _4568;
  float _4569;
  float _4570;
  float _4571;
  float _4572;
  float _4574;
  float _4588;
  float _4589;
  float _4596;
  float _4605;
  float _4610;
  float _4616;
  float _4617;
  float _4621;
  float _4622;
  float _4627;
  float _4628;
  float _4629;
  float _4630;
  float _4642;
  float _4646;
  float _4656;
  float _4657;
  float _4661;
  float _4663;
  float _4664;
  float _4677;
  float _4684;
  float _4685;
  float _4695;
  float _4706;
  float _4711;
  float _4730;
  float _4732;
  float _4734;
  float _4736;
  float _4743;
  float _4744;
  float _4745;
  float _4752;
  float _4753;
  float _4754;
  bool _4766;
  bool _4767;
  bool _4768;
  float _4783;
  float _4789;
  float _4790;
  float _4791;
  float _4792;
  float _4793;
  float _4794;
  float _4795;
  float _4802;
  float _4815;
  float _4818;
  float _4819;
  float _4821;
  float _4824;
  float _4825;
  float _4826;
  float _4830;
  float _4831;
  float _4832;
  float _4833;
  float _4834;
  float _4835;
  float _4847;
  float _4851;
  float _4855;
  float _4856;
  float _4857;
  float _4858;
  float _4870;
  float _4874;
  float _4890;
  float _4895;
  float _4896;
  float _4906;
  float _4931;
  float _4947;
  float _4948;
  float _4949;
  float _4950;
  float _4953;
  float _4954;
  float _4955;
  float _4960;
  float _4961;
  float _4988;
  float _4991;
  float _4992;
  float _4994;
  float _4997;
  float _4998;
  float _5002;
  float _5003;
  float _5004;
  float _5006;
  float _5007;
  float _5019;
  float _5023;
  float _5044;
  float _5056;
  float _5060;
  float _5067;
  float _5087;
  float _5096;
  float _5118;
  float _5122;
  float _5123;
  float _5124;
  float _5125;
  float _5126;
  float _5127;
  float _5129;
  float _5130;
  float _5131;
  float _5132;
  float _5133;
  float _5134;
  float _5135;
  float _5137;
  float _5139;
  float _5141;
  float _5152;
  float _5155;
  float _5210;
  float _5211;
  float _5212;
  float _5234;
  float _5246;
  float _5250;
  float _5251;
  float _5253;
  float _5258;
  float _5266;
  float _5272;
  float _5274;
  float _5279;
  float _5294;
  float _5304;
  float _5307;
  float _5309;
  float _5325;
  float _5326;
  float _5327;
  float _5334;
  float2 _5343;
  float2 _5346;
  float2 _5349;
  float _5358;
  float _5359;
  float _5360;
  float _5361;
  float _5362;
  float _5363;
  float _5364;
  float _5365;
  float _5366;
  float _5367;
  float _5368;
  float _5369;
  float _5370;
  float _5371;
  float _5372;
  float _5373;
  float _5374;
  float _5375;
  float _5385;
  float _5386;
  float _5387;
  float _5388;
  float _5389;
  float _5390;
  float _5398;
  float _5399;
  float _5400;
  float _5401;
  float _5403;
  float _5404;
  float _5405;
  float _5406;
  float _5407;
  float _5408;
  float _5412;
  float _5413;
  float _5423;
  float _5446;
  float _5450;
  float _5454;
  float _5472;
  float _5479;
  float _5480;
  float _5481;
  float _5485;
  float _5492;
  float _5499;
  float _5509;
  float _5530;
  float _5562;
  float _5572;
  float _5596;
  float _5597;
  float _5598;
  float _5600;
  float _5602;
  float _5604;
  float _5625;
  float _5627;
  float _5634;
  float _5637;
  float _5638;
  float _5640;
  float4 _5648;
  float _5652;
  float _5653;
  float _5654;
  float _5656;
  float _5660;
  float _5661;
  float _5662;
  float _5664;
  float _5665;
  float _5666;
  float _5667;
  float _5679;
  float _5680;
  float _5683;
  float _5684;
  float _5698;
  float _5700;
  float _5702;
  float _5703;
  float _5705;
  float _5721;
  float _5728;
  float _5733;
  float _5762;
  float _5763;
  float _5764;
  uint _5767;
  bool _5782;
  float _5814;
  float _5818;
  float _5819;
  float _5820;
  float _5823;
  half _5830;
  half _5831;
  half _5832;
  half _5855;
  float _5856;
  float _5857;
  float _5858;
  float _5866;
  float _5872;
  float _5879;
  float _5880;
  float _5881;
  float _5882;
  float _5883;
  float _5884;
  float2 _5896;
  float _5905;
  float _5906;
  float _5907;
  float _5909;
  float _5916;
  float _5917;
  float _5918;
  float _5935;
  float _5936;
  float _5937;
  float _5938;
  float _5949;
  half _5959;
  half _5960;
  half _5961;
  float _5963;
  float _5964;
  float _5965;
  float _5969;
  float _5977;
  float _6000;
  float _6001;
  float _6002;
  float _6031;
  float _6032;
  float _6033;
  float _6034;
  float _6047;
  float _6048;
  float _6049;
  float _6061;
  float _6062;
  float _6063;
  float _6065;
  float _6066;
  float _6067;
  float _6068;
  float _6069;
  float _6070;
  float _6074;
  float _6075;
  float _6076;
  float _6080;
  float _6081;
  float _6082;
  float _6097;
  float _6158;
  float _6162;
  float _6176;
  float _6177;
  float _6178;
  float _6183;
  float _6184;
  float _6185;
  float _6201;
  float _6202;
  float _6206;
  int _58[4];
  _72 = (int)(SV_GroupID.x) & 15;
  _73 = (uint)((uint)(_72)) >> 2;
  _81 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 7))]);
  _58[0] = _81.x;
  _58[1] = _81.y;
  _58[2] = _81.z;
  _58[3] = _81.w;
  _91 = _58[(((uint)(SV_GroupID.x) >> 5) & 3)];
  _95 = select((((int)(SV_GroupID.x) & 16) == 0), _91, ((uint)((uint)(_91)) >> 16));
  _101 = (uint)((uint)((uint)((int)((int)(_72) - (int)((int)(_73) << 2)) << 3)) + (uint)(SV_GroupThreadID.x)) + (uint)((uint)(((int)((uint)((uint)(_95)) << 5)) & 8160));
  _103 = (uint)((uint)((uint)((int)(_73) << 3)) + (uint)(SV_GroupThreadID.y)) + (uint)((uint)(((uint)((uint)(_95)) >> 3) & 8160));
  _104 = (float)((uint)((uint)(_101)));
  _105 = (float)((uint)((uint)(_103)));
  _106 = _104 + 0.5f;
  _107 = _105 + 0.5f;
  _111 = _bufferSizeAndInvSize.z * _106;
  _112 = _107 * _bufferSizeAndInvSize.w;
  _114 = __3__36__0__0__g_depth.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_depth_load]
  _117 = __3__36__0__0__g_stencil.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_stencil_load]
  _119 = _117.x & 127;  // [sem: _3__36__0__0__g_stencil_load_derived]
  _122 = max(1e-07f, _114.x);  // [sem: _3__36__0__0__g_depth_load_derived]
  _123 = _nearFarProj.x / _122;
  _128 = ((_114.x < 1e-07f) || (_114.x == 1.0f)) || (_119 == 10);
  _129 = (float)((bool)(_128));
  _130 = QuadReadLaneAt(_129, 0);
  _131 = !(_130 == 0.0f);
  _132 = QuadReadLaneAt(_129, 1);
  _133 = !(_132 == 0.0f);
  _134 = QuadReadLaneAt(_129, 2);
  _135 = !(_134 == 0.0f);
  _136 = QuadReadLaneAt(_129, 3);
  _137 = !(_136 == 0.0f);
  if (!(((_131 && _133) && _135) && _137)) {
    _146 = __3__36__0__0__g_baseColor.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_baseColor_load]
    _152 = __3__36__0__0__g_normal.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_normal_load]
    _161 = half(((float)((uint)((uint)(((uint)((uint)(_146.x)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _165 = half(((float)((uint)((uint)(_146.x & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _170 = half(((float)((uint)((uint)(((uint)((uint)(_146.y)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _175 = half(((float)((uint)((uint)(((uint)((uint)(_146.w)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _179 = half(((float)((uint)((uint)(_146.w & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _182 = (uint)((_152.w * 3.0f) + 0.5f);  // [sem: _3__36__0__0__g_normal_load_derived]
    _183 = (_182 == 1);
    _184 = (_182 == 3);
    _194 = (saturate(_152.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _195 = (saturate(_152.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _196 = (saturate(_152.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _198 = rsqrt(dot(float3(_194, _195, _196), float3(_194, _195, _196)));  // [sem: invLength]
    _202 = half(_198 * _194);
    _203 = half(_198 * _195);
    _204 = half(_196 * _198);
    _205 = _117.x & 126;  // [sem: _3__36__0__0__g_stencil_load_derived]
    if (!(_205 == 24)) {
      _223 = ((half)(_175 * 2.0h)) + -1.0h;
      _224 = ((half)(_179 * 2.0h)) + -1.0h;
      _229 = float(_223 + _224) * 0.5f;
      _230 = float(_223 - _224) * 0.5f;
      _234 = (1.0f - abs(_229)) - abs(_230);
      _236 = rsqrt(dot(float3(_229, _230, _234), float3(_229, _230, _234)));  // [sem: invLength]
      _243 = float(_202);
      _244 = float(_203);
      _245 = float(_204);
      _247 = select((_204 >= 0.0h), 1.0f, -1.0f);
      _250 = -0.0f - (1.0f / (_247 + _245));
      _251 = _244 * _250;
      _252 = _251 * _243;
      _253 = _247 * _243;
      _260 = float(half(_236 * _229));
      _261 = float(half(_236 * _230));
      _262 = float(half(_236 * _234));
      _278 = (half)(half(((float)((uint)((uint)(_146.z & 255)))) * 0.003921569f));
      _279 = (half)(half(((float)((uint)((uint)(_146.y & 255)))) * 0.003921569f));  // [sem: _3__36__0__0__g_baseColor_load_derived]
      _280 = (half)(half(((float)((uint)((uint)(((uint)((uint)(_146.z)) >> 8) & 255)))) * 0.003921569f));
      _281 = (half)(half(mad(_262, _243, mad(_261, _252, (_260 * (((_253 * _243) * _250) + 1.0f))))));
      _282 = (half)(half(mad(_262, _244, mad(_261, ((_251 * _244) + _247), ((_260 * _247) * _252)))));
      _283 = (half)(half(mad(_262, _245, mad(_261, (-0.0f - _244), (-0.0f - (_253 * _260))))));
    } else {
      _278 = _179;
      _279 = 0.0h;  // [sem: _3__36__0__0__g_baseColor_load_derived]
      _280 = _175;
      _281 = _202;
      _282 = _203;
      _283 = _204;
    }
    _285 = rsqrt((half)(dot(half3(_281, _282, _283), half3(_281, _282, _283))));  // [sem: invLength]
    _286 = _285 * _281;
    _287 = _285 * _282;
    _288 = _285 * _283;
    _292 = saturate((half)(_161 * _161));  // [sem: expr_sat]
    _293 = saturate((half)(_165 * _165));  // [sem: expr_sat]
    _294 = saturate((half)(_170 * _170));  // [sem: expr_sat]
    // [sem: expr_sat]
    _310 = saturate((half)(((half)(((half)(_293 * 0.3395996h)) + ((half)(_292 * 0.61328125h)))) + ((half)(_294 * 0.04736328h))));
    // [sem: expr_sat]
    _311 = saturate((half)(((half)(((half)(_293 * 0.9165039h)) + ((half)(_292 * 0.07019043h)))) + ((half)(_294 * 0.013450623h))));
    // [sem: expr_sat]
    _312 = saturate((half)(((half)(((half)(_293 * 0.109558105h)) + ((half)(_292 * 0.020614624h)))) + ((half)(_294 * 0.8696289h))));
    if ((uint)((int)(_119) + (int)(-65)) < (uint)2) {
      _512 = _279;
      _513 = _202;
      _514 = _203;
      _515 = _204;
      _523 = _512;
      _524 = _513;
      _525 = _514;
      _526 = _515;
      _527 = ((int)((int)((uint)((uint)(max((int)(1), (int)(_101)))) + (uint)(-1))) >> 1);
      _528 = ((int)((int)((uint)((uint)(max((int)(1), (int)(_103)))) + (uint)(-1))) >> 1);
      _529 = _111;
      _530 = _112;
    } else {
      _317 = (_119 == 29);
      _319 = select(((_119 == 24) || _317), 0.0f, _279);
      if (_317) {
        _337 = (uint)((uint)((_bufferSizeAndInvSize.x * ((float)((int)(_103)))) + ((float)((int)(_101))))) + (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524))));
        _345 = (uint)((uint)((((int)((uint)((uint)((uint)(_337)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_337)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_337)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
        _353 = (uint)((uint)((((int)((uint)((uint)((uint)(_345)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_345)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_345)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_337));
        _361 = (uint)((uint)((((int)((uint)((uint)((uint)(_353)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_353)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_353)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_345));
        _369 = (uint)((uint)((((int)((uint)((uint)((uint)(_361)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_361)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_361)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_353));
        _377 = (uint)((uint)((((int)((uint)((uint)((uint)(_369)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_369)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_369)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_361));
        _385 = (uint)((uint)((((int)((uint)((uint)((uint)(_377)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_377)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_377)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_369));
        _393 = (uint)((uint)((((int)((uint)((uint)((uint)(_385)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_385)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_385)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_377));
        _401 = (uint)((uint)((((int)((uint)((uint)((uint)(_393)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_393)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_393)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_385));
        _409 = (uint)((uint)((((int)((uint)((uint)((uint)(_401)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_401)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_401)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_393));
        _417 = (uint)((uint)((((int)((uint)((uint)((uint)(_409)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_409)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_409)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_401));
        _425 = (uint)((uint)((((int)((uint)((uint)((uint)(_417)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_417)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_417)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_409));
        _433 = (uint)((uint)((((int)((uint)((uint)((uint)(_425)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_425)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_425)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_417));
        _441 = (uint)((uint)((((int)((uint)((uint)((uint)(_433)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_433)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_433)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_425));
        _449 = (uint)((uint)((((int)((uint)((uint)((uint)(_441)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_441)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_441)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_433));
        _457 = (uint)((uint)((((int)((uint)((uint)((uint)(_449)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_449)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_449)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_441));
        if ((_449 & 16777215) == 0) {
          _470 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_457)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_457)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_457)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_449))));
        } else {
          _470 = _449;
        }
        _499 = (int)(min(max(((((saturate(1.0f - (_123 * 0.015625f)) * 4.0f) * ((((float)((uint)((uint)(((int)((uint)((uint)(_470)) * (uint)(48271))) & 16777215)))) * 1.1920929e-07f) + -1.0f)) + ((float)((int)((int)((uint)((uint)(max((int)(1), (int)(_101)))) + (uint)(-1)))))) * 0.5f), 0.0f), ((_bufferSizeAndInvSize.x * 0.5f) + -2.0f)));
        _500 = (int)(min(max((((float)((int)((int)((uint)((uint)(max((int)(1), (int)(_103)))) + (uint)(-1))))) * 0.5f), 0.0f), ((_bufferSizeAndInvSize.y * 0.5f) + -2.0f)));
        _523 = _319;
        _524 = _286;
        _525 = _287;
        _526 = _288;
        _527 = _499;
        _528 = _500;
        _529 = ((_bufferSizeAndInvSize.z * 2.0f) * (((float)((int)(_499))) + 0.5f));
        _530 = ((_bufferSizeAndInvSize.w * 2.0f) * (((float)((int)(_500))) + 0.5f));
      } else {
        _512 = _319;
        _513 = _286;
        _514 = _287;
        _515 = _288;
        _523 = _512;
        _524 = _513;
        _525 = _514;
        _526 = _515;
        _527 = ((int)((int)((uint)((uint)(max((int)(1), (int)(_101)))) + (uint)(-1))) >> 1);
        _528 = ((int)((int)((uint)((uint)(max((int)(1), (int)(_103)))) + (uint)(-1))) >> 1);
        _529 = _111;
        _530 = _112;
      }
    }
    _533 = __3__36__0__0__g_normalDepthHalf.GatherGreen(__3__40__0__0__g_samplerPoint, float2(_529, _530));  // [sem: _3__36__0__0__g_normalDepthHalf_gather]
    _538 = (uint)((uint)(_533.w)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _542 = (uint)((uint)(_533.z)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _546 = (uint)((uint)(_533.x)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _550 = (uint)((uint)(_533.y)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _577 = (max(0.0f, (_123 + -1.0f)) * 0.05f) * _temporalReprojectionParams.y;
    _582 = max(0.0f, (abs(_123 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_533.w & 16777215)))) * 5.960465e-08f)))) - _577));
    _583 = max(0.0f, (abs(_123 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_533.z & 16777215)))) * 5.960465e-08f)))) - _577));
    _584 = max(0.0f, (abs(_123 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_533.x & 16777215)))) * 5.960465e-08f)))) - _577));
    _585 = max(0.0f, (abs(_123 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_533.y & 16777215)))) * 5.960465e-08f)))) - _577));
    _586 = _582 * _582;
    _587 = _583 * _583;
    _588 = _584 * _584;
    _589 = _585 * _585;
    _590 = _538 & 127;
    _591 = _542 & 127;
    _592 = _546 & 127;
    _593 = _550 & 127;
    if ((uint)_119 > (uint)11) {
      if (!(((uint)_119 < (uint)21) || (_119 == 107))) {
        _631 = (_119 == 7);
      } else {
        _631 = true;
      }
    } else {
      if (!(_119 == 6)) {
        _631 = (_119 == 7);
      } else {
        _631 = true;
      }
    }
    _633 = _123 * _123;
    _638 = (_633 * 0.2f) + 1.0f;
    _640 = select(_631, -7.213475f, -72.13475f) * (1.0f / ((select(_631, 0.05f, 0.01f) * _633) + 1.0f));
    _659 = (_205 == 66) || (_119 == 53);
    _688 = __3__36__0__0__g_normalDepthHalf.GatherRed(__3__40__0__0__g_samplerPoint, float2(_529, _530));  // [sem: _3__36__0__0__g_normalDepthHalf_gather]
    _707 = min(1.0f, ((((float)((uint)((uint)(_688.w & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _708 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_688.w)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _709 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_688.w)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _711 = rsqrt(dot(float3(_707, _708, _709), float3(_707, _708, _709)));  // [sem: invLength]
    _715 = float(_524);
    _716 = float(_525);
    _717 = float(_526);
    _733 = min(1.0f, ((((float)((uint)((uint)(_688.z & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _734 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_688.z)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _735 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_688.z)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _737 = rsqrt(dot(float3(_733, _734, _735), float3(_733, _734, _735)));  // [sem: invLength]
    _756 = min(1.0f, ((((float)((uint)((uint)(_688.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _757 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_688.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _758 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_688.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _760 = rsqrt(dot(float3(_756, _757, _758), float3(_756, _757, _758)));  // [sem: invLength]
    _779 = min(1.0f, ((((float)((uint)((uint)(_688.y & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _780 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_688.y)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _781 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_688.y)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _783 = rsqrt(dot(float3(_779, _780, _781), float3(_779, _780, _781)));  // [sem: invLength]
    _788 = (_119 == 29);
    _789 = select(_788, 8192.0f, 256.0f);
    _802 = exp2(log2(saturate(dot(float3(_715, _716, _717), float3((_711 * _707), (_711 * _708), (_711 * _709))))) * _789);
    _803 = exp2(log2(saturate(dot(float3(_715, _716, _717), float3((_737 * _733), (_737 * _734), (_737 * _735))))) * _789);
    _804 = exp2(log2(saturate(dot(float3(_715, _716, _717), float3((_760 * _756), (_760 * _757), (_760 * _758))))) * _789);
    _805 = exp2(log2(saturate(dot(float3(_715, _716, _717), float3((_783 * _779), (_783 * _780), (_783 * _781))))) * _789);
    _810 = 1.0f / max(1e-06f, (((_803 + _802) + _804) + _805));
    _813 = ((select((_586 > _638), 0.0f, exp2(_640 * _586)) * ((float)((bool)(!(_659 ^ (((_538 & 126) == 66) || (_590 == 53))))))) * _802) * _810;
    _816 = ((select((_587 > _638), 0.0f, exp2(_640 * _587)) * ((float)((bool)(!(_659 ^ (((_542 & 126) == 66) || (_591 == 53))))))) * _803) * _810;
    _819 = ((select((_588 > _638), 0.0f, exp2(_640 * _588)) * ((float)((bool)(!(_659 ^ (((_546 & 126) == 66) || (_592 == 53))))))) * _804) * _810;
    _822 = ((select((_589 > _638), 0.0f, exp2(_640 * _589)) * ((float)((bool)(!(_659 ^ (((_550 & 126) == 66) || (_593 == 53))))))) * _805) * _810;
    if (_788) {
      _853 = abs(((((float)((int)(_101))) * 0.5f) + -0.25f) - ((float)((int)(_527))));
      _854 = abs(((((float)((int)(_103))) * 0.5f) + -0.25f) - ((float)((int)(_528))));
    } else {
      _853 = (((float)((uint)((uint)((uint)((uint)(_101)) - (uint)((uint)((uint)(_527)) << 1)) - (uint)((uint)(_frameNumber.x & 1))))) * 0.5f);
      _854 = (((float)((uint)((uint)((uint)((uint)(_103)) - (uint)((uint)((uint)(_528)) << 1)) - (uint)((uint)(((uint)((uint)(_frameNumber.x)) >> 1) & 1))))) * 0.5f);
    }
    _855 = saturate(_853);  // [sem: _853_sat]
    _856 = saturate(_854);  // [sem: _854_sat]
    _857 = 1.0f - _855;
    _858 = 1.0f - _856;
    _859 = _858 * _857;
    _860 = _858 * _855;
    _861 = _857 * _856;
    _862 = _856 * _855;
    _871 = (_119 != 29) && ((_822 == 0.0f) && ((_819 == 0.0f) && ((_813 == 0.0f) && (_816 == 0.0f))));
    _880 = saturate(_859 * select(_871, 1.0f, _813));  // [sem: expr_sat]
    _881 = saturate(_860 * select(_871, 1.0f, _816));  // [sem: expr_sat]
    _882 = saturate(_861 * select(_871, 1.0f, _819));  // [sem: expr_sat]
    _883 = saturate(_862 * select(_871, 1.0f, _822));  // [sem: expr_sat]
    _884 = dot(float4(_880, _881, _882, _883), float4(1.0f, 1.0f, 1.0f, 1.0f));
    _885 = max(0.0f, _884);
    _890 = saturate(_880 / _885);  // [sem: expr_sat]
    _891 = saturate(_881 / _885);  // [sem: expr_sat]
    _892 = saturate(_882 / _885);  // [sem: expr_sat]
    _893 = saturate(_883 / _885);  // [sem: expr_sat]
    _897 = (float)((bool)(((((_593 == 6) || ((_593 == 107) || ((uint)((int)(_593) + (int)(-12)) < (uint)9))) || (((_592 == 6) || ((_592 == 107) || ((uint)((int)(_592) + (int)(-12)) < (uint)9))) || (((_590 == 6) || ((_590 == 107) || ((uint)((int)(_590) + (int)(-12)) < (uint)9))) || ((_591 == 6) || ((_591 == 107) || ((uint)((int)(_591) + (int)(-12)) < (uint)9)))))) || _631) && (_884 < 0.0001f)));
    _906 = ((_859 - _890) * _897) + _890;
    _907 = ((_860 - _891) * _897) + _891;
    _908 = ((_861 - _892) * _897) + _892;
    _909 = ((_862 - _893) * _897) + _893;
    half4 _911 = __3__36__0__0__g_diffuseResult.Load(int3(_527, _528, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    _921 = (uint)((uint)(_527)) + (uint)(1);
    half4 _922 = __3__36__0__0__g_diffuseResult.Load(int3(_921, _528, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    _935 = (uint)((uint)(_528)) + (uint)(1);
    half4 _936 = __3__36__0__0__g_diffuseResult.Load(int3(_527, _935, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    half4 _949 = __3__36__0__0__g_diffuseResult.Load(int3(_921, _935, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    _959 = (((float(_922.x) * _907) + (float(_911.x) * _906)) + (float(_936.x) * _908)) + (float(_949.x) * _909);
    _960 = (((float(_922.y) * _907) + (float(_911.y) * _906)) + (float(_936.y) * _908)) + (float(_949.y) * _909);
    _961 = (((float(_922.z) * _907) + (float(_911.z) * _906)) + (float(_936.z) * _908)) + (float(_949.z) * _909);
    _963 = __3__36__0__0__g_specularResult.Load(int3(_527, _528, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _970 = __3__36__0__0__g_specularResult.Load(int3(_921, _528, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _980 = __3__36__0__0__g_specularResult.Load(int3(_527, _935, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _990 = __3__36__0__0__g_specularResult.Load(int3(_921, _935, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _1007 = ((uint)((int)(_119) + (int)(-27)) < (uint)2) || ((_119 == 26) || (((uint)((int)(_119) + (int)(-105)) < (uint)2) || _184));
    _1009 = (_111 * 2.0f) + -1.0f;
    _1011 = 1.0f - (_112 * 2.0f);
    _1047 = mad((_invViewProjRelative[3].z), _122, mad((_invViewProjRelative[3].y), _1011, ((_invViewProjRelative[3].x) * _1009))) + (_invViewProjRelative[3].w);
    _1048 = (mad((_invViewProjRelative[0].z), _122, mad((_invViewProjRelative[0].y), _1011, ((_invViewProjRelative[0].x) * _1009))) + (_invViewProjRelative[0].w)) / _1047;
    _1049 = (mad((_invViewProjRelative[1].z), _122, mad((_invViewProjRelative[1].y), _1011, ((_invViewProjRelative[1].x) * _1009))) + (_invViewProjRelative[1].w)) / _1047;
    _1050 = (mad((_invViewProjRelative[2].z), _122, mad((_invViewProjRelative[2].y), _1011, ((_invViewProjRelative[2].x) * _1009))) + (_invViewProjRelative[2].w)) / _1047;
    _1052 = rsqrt(dot(float3(_1048, _1049, _1050), float3(_1048, _1049, _1050)));  // [sem: invLength]
    _1053 = _1052 * _1048;
    _1054 = _1052 * _1049;
    _1055 = _1052 * _1050;
    _1056 = (_119 == 33);
    _1058 = (_119 == 54);
    _1062 = (_119 == 55);
    if (((_205 == 64) || (_1058 || (_1056 || _659))) || (_1062 || _1007)) {
      _1067 = __3__36__0__0__g_character.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_character_load]
      _1073 = _1067.x;  // [sem: _3__36__0__0__g_character_load_derived]
      _1074 = _1067.y;  // [sem: _3__36__0__0__g_character_load_derived]
      _1075 = _1067.z;  // [sem: _3__36__0__0__g_character_load_derived]
      _1076 = _1067.w;  // [sem: _3__36__0__0__g_character_load_derived]
    } else {
      _1073 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
      _1074 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
      _1075 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
      _1076 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
    }
    if (!_1056) {
      if (_1058) {
        if ((((int)((uint)((_1075 * 255.0f) + 0.5f))) & 112) == 0) {
          _1119 = 52;
          _1120 = _523;
          _1121 = 0.0f;
          _1122 = 0.0f;
          _1123 = 0.0f;
          _1124 = 0.0f;
        } else {
          _1095 = (uint)((_1075 * 255.0f) + 0.5f);
          _1097 = ((uint)((uint)(_1095)) >> 4) & 7;
          if (!(_1097 == 0)) {
            _1104 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_1097) + (int)(1)))];
            _1110 = min((1.0f - _1104.y), _1104.x);
            _1111 = (((float)((uint)((uint)(_1095 & 15)))) * 0.06666667f);
            _1112 = _1104.y;
            _1113 = _1104.x;
          } else {
            _1110 = 0.0f;
            _1111 = 0.0f;
            _1112 = 0.0f;
            _1113 = 0.0f;
          }
          _1119 = _119;
          _1120 = (half)(half(_effectiveMetallicForVelvet * _1113));
          _1121 = _1110;
          _1122 = _1111;
          _1123 = _1112;
          _1124 = _1113;
        }
      } else {
        if (_1062) {
          if ((((int)((uint)((_1075 * 255.0f) + 0.5f))) & 127) == 0) {
            _1119 = 52;
            _1120 = _523;
            _1121 = 0.0f;
            _1122 = 0.0f;
            _1123 = 0.0f;
            _1124 = 0.0f;
          } else {
            _1119 = 55;
            _1120 = _523;
            _1121 = 0.0f;
            _1122 = 0.0f;
            _1123 = 0.0f;
            _1124 = 0.0f;
          }
        } else {
          _1119 = _119;
          _1120 = _523;
          _1121 = 0.0f;
          _1122 = 0.0f;
          _1123 = 0.0f;
          _1124 = 0.0f;
        }
      }
    } else {
      _1095 = (uint)((_1075 * 255.0f) + 0.5f);
      _1097 = ((uint)((uint)(_1095)) >> 4) & 7;
      if (!(_1097 == 0)) {
        _1104 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_1097) + (int)(1)))];
        _1110 = min((1.0f - _1104.y), _1104.x);
        _1111 = (((float)((uint)((uint)(_1095 & 15)))) * 0.06666667f);
        _1112 = _1104.y;
        _1113 = _1104.x;
      } else {
        _1110 = 0.0f;
        _1111 = 0.0f;
        _1112 = 0.0f;
        _1113 = 0.0f;
      }
      _1119 = _119;
      _1120 = (half)(half(_effectiveMetallicForVelvet * _1113));
      _1121 = _1110;
      _1122 = _1111;
      _1123 = _1112;
      _1124 = _1113;
    }
    if (_1119 == 66) {
      _1156 = float(_1120);
      _1190 = _1156;
      _1191 = 0.0h;
      _1192 = ((_1073 * 2.0f) + -1.0f);
      _1193 = ((_1074 * 2.0f) + -1.0f);
      _1194 = ((_1075 * 2.0f) + -1.0f);
      if ((_1119 == 53) || ((_1119 & 126) == 66)) {
        _1200 = _1190;
        _1201 = _1191;
        _1202 = _1192;
        _1203 = _1193;
        _1204 = _1194;
        _1206 = __3__36__0__0__g_bentCone.Load(int3(_527, _528, 0));  // [sem: _3__36__0__0__g_bentCone_load]
        _1213 = __3__36__0__0__g_bentCone.Load(int3(_921, _528, 0));  // [sem: _3__36__0__0__g_bentCone_load]
        _1223 = __3__36__0__0__g_bentCone.Load(int3(_527, _935, 0));  // [sem: _3__36__0__0__g_bentCone_load]
        _1233 = __3__36__0__0__g_bentCone.Load(int3(_921, _935, 0));  // [sem: _3__36__0__0__g_bentCone_load]
        _1246 = (((((_1213.x * _907) + (_1206.x * _906)) + (_1223.x * _908)) + (_1233.x * _909)) * 2.0f) + -1.0f;
        _1247 = (((((_1213.y * _907) + (_1206.y * _906)) + (_1223.y * _908)) + (_1233.y * _909)) * 2.0f) + -1.0f;
        _1248 = (((((_1213.z * _907) + (_1206.z * _906)) + (_1223.z * _908)) + (_1233.z * _909)) * 2.0f) + -1.0f;
        _1250 = rsqrt(dot(float3(_1246, _1247, _1248), float3(_1246, _1247, _1248)));  // [sem: invLength]
        _1251 = _1246 * _1250;
        _1252 = _1247 * _1250;
        _1253 = _1248 * _1250;
        if (!(_renderParams.z > 0.0f)) {
          if (!(_renderParams2.y > 0.0f)) {
            _1265 = (half)(saturate((half)(_280 + 0.15002441h)));
          } else {
            _1265 = _280;
          }
        } else {
          _1265 = _280;
        }
        _1266 = float(_1265);
        if (_1119 == 53) {
          _1282 = (((asfloat(_globalLightParams.z) * _1266) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_278)));
        } else {
          _1282 = _bevelParams.y;
        }
        _1283 = float(_310);
        _1284 = float(_311);
        _1285 = float(_312);
        _1286 = dot(float3(_1202, _1203, _1204), float3(_1251, _1252, _1253));
        _1287 = -0.0f - _1053;
        _1288 = -0.0f - _1054;
        _1289 = -0.0f - _1055;
        _1290 = dot(float3(_1202, _1203, _1204), float3(_1287, _1288, _1289));
        _1296 = cos(abs(asin(_1290) - asin(_1286)) * 0.5f);
        _1300 = _1251 - (_1286 * _1202);
        _1301 = _1252 - (_1286 * _1203);
        _1302 = _1253 - (_1286 * _1204);
        _1306 = _1287 - (_1290 * _1202);
        _1307 = _1288 - (_1290 * _1203);
        _1308 = _1289 - (_1290 * _1204);
        // [sem: invLength]
        _1315 = rsqrt((dot(float3(_1306, _1307, _1308), float3(_1306, _1307, _1308)) * dot(float3(_1300, _1301, _1302), float3(_1300, _1301, _1302))) + 0.0001f) * dot(float3(_1300, _1301, _1302), float3(_1306, _1307, _1308));
        _1325 = min(max(_1266, 0.09803922f), 1.0f);
        _1326 = _1325 * _1325;
        _1327 = _1326 * 0.5f;
        _1328 = _1326 * 2.0f;
        _1329 = _1290 + _1286;
        _1330 = _1329 - _1282;
        _1339 = 1.0f / ((1.19f / _1296) + (_1296 * 0.36f));
        _1344 = ((_1339 * (0.6f - (_1315 * 0.8f))) + 1.0f) * sqrt(saturate((_1315 * 0.5f) + 0.5f));
        _1350 = 1.0f - (sqrt(saturate(1.0f - (_1344 * _1344))) * _1296);
        _1351 = _1350 * _1350;
        _1355 = 0.9534794f - ((_1351 * _1351) * (_1350 * 0.9534794f));
        _1356 = _1339 * _1344;
        _1361 = (sqrt(1.0f - (_1356 * _1356)) * 0.5f) / _1296;
        _1362 = log2(_1283);
        _1363 = log2(_1284);
        _1364 = log2(_1285);
        _1376 = ((_1355 * _1355) * (exp2((((_1330 * _1330) * -0.5f) / (_1327 * _1327)) * 1.442695f) / (_1326 * 1.2533141f))) * exp2(-5.741926f - (_1315 * 5.265837f));
        _1380 = _1329 - (_1282 * 4.0f);
        _1390 = 1.0f - (_1296 * 0.5f);
        _1391 = _1390 * _1390;
        _1395 = (_1391 * _1391) * (0.9534794f - (_1296 * 0.4767397f));
        _1397 = 0.9534794f - _1395;
        _1398 = 0.8f / _1296;
        _1411 = (((_1397 * _1397) * (_1395 + 0.046520565f)) * (exp2((((_1380 * _1380) * -0.5f) / (_1328 * _1328)) * 1.442695f) / (_1326 * 5.0132565f))) * exp2((_1315 * 24.525816f) + -24.208424f);
        _1421 = min(0.0f, (-0.0f - ((_1376 * exp2(_1362 * _1361)) + (_1411 * exp2(_1398 * _1362)))));
        _1422 = min(0.0f, (-0.0f - ((_1376 * exp2(_1363 * _1361)) + (_1411 * exp2(_1398 * _1363)))));
        _1423 = min(0.0f, (-0.0f - ((_1376 * exp2(_1364 * _1361)) + (_1411 * exp2(_1398 * _1364)))));
        _1432 = saturate(abs(dot(float3(_1251, _1252, _1253), float3(_1202, _1203, _1204))));  // [sem: expr_sat]
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _1441 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1432, _1266, saturate(sqrt(exp2(_1362 * 1.5f)))), 0.0f);
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _1444 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1432, _1266, saturate(sqrt(exp2(_1363 * 1.5f)))), 0.0f);
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _1447 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1432, _1266, saturate(sqrt(exp2(_1364 * 1.5f)))), 0.0f);
        _1454 = min(0.99f, _1441.x);
        _1455 = min(0.99f, _1444.x);
        _1456 = min(0.99f, _1447.x);
        _1457 = min(0.99f, _1441.y);
        _1458 = min(0.99f, _1444.y);
        _1459 = min(0.99f, _1447.y);
        _1460 = _1454 * _1454;
        _1461 = _1455 * _1455;
        _1462 = _1456 * _1456;
        _1463 = _1457 * _1457;
        _1464 = _1458 * _1458;
        _1465 = _1459 * _1459;
        _1466 = _1463 * _1457;
        _1467 = _1464 * _1458;
        _1468 = _1465 * _1459;
        _1469 = 1.0f - _1460;
        _1470 = 1.0f - _1461;
        _1471 = 1.0f - _1462;
        _1481 = _1469 * _1469;
        _1482 = _1470 * _1470;
        _1483 = _1471 * _1471;
        _1484 = _1481 * _1469;
        _1485 = _1482 * _1470;
        _1486 = _1483 * _1471;
        _1494 = min(max(_1266, 0.18f), 0.6f);
        _1495 = _1494 * _1494;
        _1496 = _1495 * 0.25f;
        _1497 = _1495 * 4.0f;
        _1499 = (_1455 + _1454) + _1456;
        _1500 = _1454 / _1499;
        _1501 = _1455 / _1499;
        _1502 = _1456 / _1499;
        _1503 = dot(float3(_1495, _1496, _1497), float3(_1500, _1501, _1502));
        _1504 = _1503 * _1503;
        _1507 = asin(min(max(_1290, -1.0f), 1.0f)) + asin(min(max(_1286, -1.0f), 1.0f));
        _1508 = _1507 * 0.5f;
        _1509 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1500, _1501, _1502));
        _1519 = _1509 * _1509;
        _1542 = (_1458 + _1457) + _1459;
        _1546 = dot(float3(_1495, _1496, _1497), float3((_1457 / _1542), (_1458 / _1542), (_1459 / _1542)));
        _1550 = sqrt((_1546 * _1546) + (_1504 * 2.0f));
        _1568 = (_1546 * 3.0f) + (_1503 * 2.0f);
        _1575 = (((_1466 + _1457) * ((_1460 * 0.7f) + 1.0f)) * _1550) / ((_1568 * _1466) + _1457);
        _1576 = (((_1467 + _1458) * ((_1461 * 0.7f) + 1.0f)) * _1550) / ((_1568 * _1467) + _1458);
        _1577 = (((_1468 + _1459) * ((_1462 * 0.7f) + 1.0f)) * _1550) / ((_1568 * _1468) + _1459);
        _1586 = _1508 - (((_1519 * (((_1460 * 4.0f) * _1463) + (_1481 * 2.0f))) * (1.0f - ((_1463 * 2.0f) / _1481))) / _1484);
        _1593 = _1508 - (((_1519 * (((_1461 * 4.0f) * _1464) + (_1482 * 2.0f))) * (1.0f - ((_1464 * 2.0f) / _1482))) / _1485);
        _1600 = _1508 - (((_1519 * (((_1462 * 4.0f) * _1465) + (_1483 * 2.0f))) * (1.0f - ((_1465 * 2.0f) / _1483))) / _1486);
        _1628 = exp2((((_1507 * -0.25f) * _1508) / _1504) * 1.442695f) * 1.4f;
        _1629 = ((((((_1466 * _1460) / _1484) + ((_1457 * _1460) / _1469)) * 4.3982296f) * exp2((((_1586 * _1586) * -0.5f) / ((_1575 * _1575) + _1504)) * 1.442695f)) + ((((_1441.x + _1421) * 0.25f) - _1421) * 6.2831855f)) * _1628;
        _1630 = ((((((_1467 * _1461) / _1485) + ((_1458 * _1461) / _1470)) * 4.3982296f) * exp2((((_1593 * _1593) * -0.5f) / ((_1576 * _1576) + _1504)) * 1.442695f)) + ((((_1444.x + _1422) * 0.25f) - _1422) * 6.2831855f)) * _1628;
        _1631 = ((((((_1468 * _1462) / _1486) + ((_1459 * _1462) / _1471)) * 4.3982296f) * exp2((((_1600 * _1600) * -0.5f) / ((_1577 * _1577) + _1504)) * 1.442695f)) + ((((_1447.x + _1423) * 0.25f) - _1423) * 6.2831855f)) * _1628;
        _1632 = max(0.125f, _1200);
        _1642 = max(0.01f, ((_1632 * (_1283 - _1629)) + _1629));
        _1643 = max(0.01f, (lerp(_1630, _1284, _1632)));
        _1644 = max(0.01f, (lerp(_1631, _1285, _1632)));
        _1646 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_527, _528, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
        _1653 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_921, _528, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
        _1663 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_527, _935, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
        _1673 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_921, _935, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
        _1698 = _1200;
        _1699 = _1201;
        _1700 = _1202;
        _1701 = _1203;
        _1702 = _1204;
        _1703 = _1119;
        _1704 = (min(30000.0f, (_exposure4.x * (((((_1653.x * _907) + (_1646.x * _906)) + (_1663.x * _908)) + (_1673.x * _909)) / _1642))) + _959);
        _1705 = (min(30000.0f, (_exposure4.x * (((((_1653.y * _907) + (_1646.y * _906)) + (_1663.y * _908)) + (_1673.y * _909)) / _1643))) + _960);
        _1706 = (min(30000.0f, (_exposure4.x * (((((_1653.z * _907) + (_1646.z * _906)) + (_1663.z * _908)) + (_1673.z * _909)) / _1644))) + _961);
        _1707 = _1642;
        _1708 = _1643;
        _1709 = _1644;
      } else {
        _1698 = _1190;
        _1699 = _1191;
        _1700 = _1192;
        _1701 = _1193;
        _1702 = _1194;
        _1703 = _1119;
        _1704 = _959;
        _1705 = _960;
        _1706 = _961;
        _1707 = 0.0f;
        _1708 = 0.0f;
        _1709 = 0.0f;
      }
    } else {
      _1128 = (_1119 == 53);
      if ((_1119 == 67) || _1128) {
        _1135 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 127)));
        if (!(float(_1120) > (frac(frac(dot(float2(((_1135 * 32.665f) + _104), ((_1135 * 11.815f) + _105)), float2(0.06711056f, 0.00583715f))) * 52.982918f) * 0.2f))) {
          if ((_1119 & 126) == 66) {
            _1156 = 1.0f;
            _1190 = _1156;
            _1191 = 0.0h;
            _1192 = ((_1073 * 2.0f) + -1.0f);
            _1193 = ((_1074 * 2.0f) + -1.0f);
            _1194 = ((_1075 * 2.0f) + -1.0f);
            if ((_1119 == 53) || ((_1119 & 126) == 66)) {
              _1200 = _1190;
              _1201 = _1191;
              _1202 = _1192;
              _1203 = _1193;
              _1204 = _1194;
              _1206 = __3__36__0__0__g_bentCone.Load(int3(_527, _528, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1213 = __3__36__0__0__g_bentCone.Load(int3(_921, _528, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1223 = __3__36__0__0__g_bentCone.Load(int3(_527, _935, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1233 = __3__36__0__0__g_bentCone.Load(int3(_921, _935, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1246 = (((((_1213.x * _907) + (_1206.x * _906)) + (_1223.x * _908)) + (_1233.x * _909)) * 2.0f) + -1.0f;
              _1247 = (((((_1213.y * _907) + (_1206.y * _906)) + (_1223.y * _908)) + (_1233.y * _909)) * 2.0f) + -1.0f;
              _1248 = (((((_1213.z * _907) + (_1206.z * _906)) + (_1223.z * _908)) + (_1233.z * _909)) * 2.0f) + -1.0f;
              _1250 = rsqrt(dot(float3(_1246, _1247, _1248), float3(_1246, _1247, _1248)));  // [sem: invLength]
              _1251 = _1246 * _1250;
              _1252 = _1247 * _1250;
              _1253 = _1248 * _1250;
              if (!(_renderParams.z > 0.0f)) {
                if (!(_renderParams2.y > 0.0f)) {
                  _1265 = (half)(saturate((half)(_280 + 0.15002441h)));
                } else {
                  _1265 = _280;
                }
              } else {
                _1265 = _280;
              }
              _1266 = float(_1265);
              if (_1119 == 53) {
                _1282 = (((asfloat(_globalLightParams.z) * _1266) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_278)));
              } else {
                _1282 = _bevelParams.y;
              }
              _1283 = float(_310);
              _1284 = float(_311);
              _1285 = float(_312);
              _1286 = dot(float3(_1202, _1203, _1204), float3(_1251, _1252, _1253));
              _1287 = -0.0f - _1053;
              _1288 = -0.0f - _1054;
              _1289 = -0.0f - _1055;
              _1290 = dot(float3(_1202, _1203, _1204), float3(_1287, _1288, _1289));
              _1296 = cos(abs(asin(_1290) - asin(_1286)) * 0.5f);
              _1300 = _1251 - (_1286 * _1202);
              _1301 = _1252 - (_1286 * _1203);
              _1302 = _1253 - (_1286 * _1204);
              _1306 = _1287 - (_1290 * _1202);
              _1307 = _1288 - (_1290 * _1203);
              _1308 = _1289 - (_1290 * _1204);
              // [sem: invLength]
              _1315 = rsqrt((dot(float3(_1306, _1307, _1308), float3(_1306, _1307, _1308)) * dot(float3(_1300, _1301, _1302), float3(_1300, _1301, _1302))) + 0.0001f) * dot(float3(_1300, _1301, _1302), float3(_1306, _1307, _1308));
              _1325 = min(max(_1266, 0.09803922f), 1.0f);
              _1326 = _1325 * _1325;
              _1327 = _1326 * 0.5f;
              _1328 = _1326 * 2.0f;
              _1329 = _1290 + _1286;
              _1330 = _1329 - _1282;
              _1339 = 1.0f / ((1.19f / _1296) + (_1296 * 0.36f));
              _1344 = ((_1339 * (0.6f - (_1315 * 0.8f))) + 1.0f) * sqrt(saturate((_1315 * 0.5f) + 0.5f));
              _1350 = 1.0f - (sqrt(saturate(1.0f - (_1344 * _1344))) * _1296);
              _1351 = _1350 * _1350;
              _1355 = 0.9534794f - ((_1351 * _1351) * (_1350 * 0.9534794f));
              _1356 = _1339 * _1344;
              _1361 = (sqrt(1.0f - (_1356 * _1356)) * 0.5f) / _1296;
              _1362 = log2(_1283);
              _1363 = log2(_1284);
              _1364 = log2(_1285);
              _1376 = ((_1355 * _1355) * (exp2((((_1330 * _1330) * -0.5f) / (_1327 * _1327)) * 1.442695f) / (_1326 * 1.2533141f))) * exp2(-5.741926f - (_1315 * 5.265837f));
              _1380 = _1329 - (_1282 * 4.0f);
              _1390 = 1.0f - (_1296 * 0.5f);
              _1391 = _1390 * _1390;
              _1395 = (_1391 * _1391) * (0.9534794f - (_1296 * 0.4767397f));
              _1397 = 0.9534794f - _1395;
              _1398 = 0.8f / _1296;
              _1411 = (((_1397 * _1397) * (_1395 + 0.046520565f)) * (exp2((((_1380 * _1380) * -0.5f) / (_1328 * _1328)) * 1.442695f) / (_1326 * 5.0132565f))) * exp2((_1315 * 24.525816f) + -24.208424f);
              _1421 = min(0.0f, (-0.0f - ((_1376 * exp2(_1362 * _1361)) + (_1411 * exp2(_1398 * _1362)))));
              _1422 = min(0.0f, (-0.0f - ((_1376 * exp2(_1363 * _1361)) + (_1411 * exp2(_1398 * _1363)))));
              _1423 = min(0.0f, (-0.0f - ((_1376 * exp2(_1364 * _1361)) + (_1411 * exp2(_1398 * _1364)))));
              _1432 = saturate(abs(dot(float3(_1251, _1252, _1253), float3(_1202, _1203, _1204))));  // [sem: expr_sat]
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1441 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1432, _1266, saturate(sqrt(exp2(_1362 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1444 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1432, _1266, saturate(sqrt(exp2(_1363 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1447 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1432, _1266, saturate(sqrt(exp2(_1364 * 1.5f)))), 0.0f);
              _1454 = min(0.99f, _1441.x);
              _1455 = min(0.99f, _1444.x);
              _1456 = min(0.99f, _1447.x);
              _1457 = min(0.99f, _1441.y);
              _1458 = min(0.99f, _1444.y);
              _1459 = min(0.99f, _1447.y);
              _1460 = _1454 * _1454;
              _1461 = _1455 * _1455;
              _1462 = _1456 * _1456;
              _1463 = _1457 * _1457;
              _1464 = _1458 * _1458;
              _1465 = _1459 * _1459;
              _1466 = _1463 * _1457;
              _1467 = _1464 * _1458;
              _1468 = _1465 * _1459;
              _1469 = 1.0f - _1460;
              _1470 = 1.0f - _1461;
              _1471 = 1.0f - _1462;
              _1481 = _1469 * _1469;
              _1482 = _1470 * _1470;
              _1483 = _1471 * _1471;
              _1484 = _1481 * _1469;
              _1485 = _1482 * _1470;
              _1486 = _1483 * _1471;
              _1494 = min(max(_1266, 0.18f), 0.6f);
              _1495 = _1494 * _1494;
              _1496 = _1495 * 0.25f;
              _1497 = _1495 * 4.0f;
              _1499 = (_1455 + _1454) + _1456;
              _1500 = _1454 / _1499;
              _1501 = _1455 / _1499;
              _1502 = _1456 / _1499;
              _1503 = dot(float3(_1495, _1496, _1497), float3(_1500, _1501, _1502));
              _1504 = _1503 * _1503;
              _1507 = asin(min(max(_1290, -1.0f), 1.0f)) + asin(min(max(_1286, -1.0f), 1.0f));
              _1508 = _1507 * 0.5f;
              _1509 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1500, _1501, _1502));
              _1519 = _1509 * _1509;
              _1542 = (_1458 + _1457) + _1459;
              _1546 = dot(float3(_1495, _1496, _1497), float3((_1457 / _1542), (_1458 / _1542), (_1459 / _1542)));
              _1550 = sqrt((_1546 * _1546) + (_1504 * 2.0f));
              _1568 = (_1546 * 3.0f) + (_1503 * 2.0f);
              _1575 = (((_1466 + _1457) * ((_1460 * 0.7f) + 1.0f)) * _1550) / ((_1568 * _1466) + _1457);
              _1576 = (((_1467 + _1458) * ((_1461 * 0.7f) + 1.0f)) * _1550) / ((_1568 * _1467) + _1458);
              _1577 = (((_1468 + _1459) * ((_1462 * 0.7f) + 1.0f)) * _1550) / ((_1568 * _1468) + _1459);
              _1586 = _1508 - (((_1519 * (((_1460 * 4.0f) * _1463) + (_1481 * 2.0f))) * (1.0f - ((_1463 * 2.0f) / _1481))) / _1484);
              _1593 = _1508 - (((_1519 * (((_1461 * 4.0f) * _1464) + (_1482 * 2.0f))) * (1.0f - ((_1464 * 2.0f) / _1482))) / _1485);
              _1600 = _1508 - (((_1519 * (((_1462 * 4.0f) * _1465) + (_1483 * 2.0f))) * (1.0f - ((_1465 * 2.0f) / _1483))) / _1486);
              _1628 = exp2((((_1507 * -0.25f) * _1508) / _1504) * 1.442695f) * 1.4f;
              _1629 = ((((((_1466 * _1460) / _1484) + ((_1457 * _1460) / _1469)) * 4.3982296f) * exp2((((_1586 * _1586) * -0.5f) / ((_1575 * _1575) + _1504)) * 1.442695f)) + ((((_1441.x + _1421) * 0.25f) - _1421) * 6.2831855f)) * _1628;
              _1630 = ((((((_1467 * _1461) / _1485) + ((_1458 * _1461) / _1470)) * 4.3982296f) * exp2((((_1593 * _1593) * -0.5f) / ((_1576 * _1576) + _1504)) * 1.442695f)) + ((((_1444.x + _1422) * 0.25f) - _1422) * 6.2831855f)) * _1628;
              _1631 = ((((((_1468 * _1462) / _1486) + ((_1459 * _1462) / _1471)) * 4.3982296f) * exp2((((_1600 * _1600) * -0.5f) / ((_1577 * _1577) + _1504)) * 1.442695f)) + ((((_1447.x + _1423) * 0.25f) - _1423) * 6.2831855f)) * _1628;
              _1632 = max(0.125f, _1200);
              _1642 = max(0.01f, ((_1632 * (_1283 - _1629)) + _1629));
              _1643 = max(0.01f, (lerp(_1630, _1284, _1632)));
              _1644 = max(0.01f, (lerp(_1631, _1285, _1632)));
              _1646 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_527, _528, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _1653 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_921, _528, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _1663 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_527, _935, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _1673 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_921, _935, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _1698 = _1200;
              _1699 = _1201;
              _1700 = _1202;
              _1701 = _1203;
              _1702 = _1204;
              _1703 = _1119;
              _1704 = (min(30000.0f, (_exposure4.x * (((((_1653.x * _907) + (_1646.x * _906)) + (_1663.x * _908)) + (_1673.x * _909)) / _1642))) + _959);
              _1705 = (min(30000.0f, (_exposure4.x * (((((_1653.y * _907) + (_1646.y * _906)) + (_1663.y * _908)) + (_1673.y * _909)) / _1643))) + _960);
              _1706 = (min(30000.0f, (_exposure4.x * (((((_1653.z * _907) + (_1646.z * _906)) + (_1663.z * _908)) + (_1673.z * _909)) / _1644))) + _961);
              _1707 = _1642;
              _1708 = _1643;
              _1709 = _1644;
            } else {
              _1698 = _1190;
              _1699 = _1191;
              _1700 = _1192;
              _1701 = _1193;
              _1702 = _1194;
              _1703 = _1119;
              _1704 = _959;
              _1705 = _960;
              _1706 = _961;
              _1707 = 0.0f;
              _1708 = 0.0f;
              _1709 = 0.0f;
            }
          } else {
            _1153 = 1.0f;
            _1154 = 0.0h;
            if (_1128) {
              _1166 = (_1073 * 2.0f) + -1.0f;
              _1167 = (_1074 * 2.0f) + -1.0f;
              _1169 = 1.0f - abs(_1166);
              _1170 = abs(_1167);
              _1171 = _1169 - _1170;
              if (!(_1171 >= 0.0f)) {
                _1182 = ((1.0f - _1170) * select((_1166 >= 0.0f), 1.0f, -1.0f));
                _1183 = (_1169 * select((_1167 >= 0.0f), 1.0f, -1.0f));
              } else {
                _1182 = _1166;
                _1183 = _1167;
              }
              _1185 = rsqrt(dot(float3(_1182, _1183, _1171), float3(_1182, _1183, _1171)));  // [sem: invLength]
              _1200 = _1153;
              _1201 = 0.0h;
              _1202 = (_1185 * _1182);
              _1203 = (_1185 * _1183);
              _1204 = (_1185 * _1171);
              _1206 = __3__36__0__0__g_bentCone.Load(int3(_527, _528, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1213 = __3__36__0__0__g_bentCone.Load(int3(_921, _528, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1223 = __3__36__0__0__g_bentCone.Load(int3(_527, _935, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1233 = __3__36__0__0__g_bentCone.Load(int3(_921, _935, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1246 = (((((_1213.x * _907) + (_1206.x * _906)) + (_1223.x * _908)) + (_1233.x * _909)) * 2.0f) + -1.0f;
              _1247 = (((((_1213.y * _907) + (_1206.y * _906)) + (_1223.y * _908)) + (_1233.y * _909)) * 2.0f) + -1.0f;
              _1248 = (((((_1213.z * _907) + (_1206.z * _906)) + (_1223.z * _908)) + (_1233.z * _909)) * 2.0f) + -1.0f;
              _1250 = rsqrt(dot(float3(_1246, _1247, _1248), float3(_1246, _1247, _1248)));  // [sem: invLength]
              _1251 = _1246 * _1250;
              _1252 = _1247 * _1250;
              _1253 = _1248 * _1250;
              if (!(_renderParams.z > 0.0f)) {
                if (!(_renderParams2.y > 0.0f)) {
                  _1265 = (half)(saturate((half)(_280 + 0.15002441h)));
                } else {
                  _1265 = _280;
                }
              } else {
                _1265 = _280;
              }
              _1266 = float(_1265);
              if (_1119 == 53) {
                _1282 = (((asfloat(_globalLightParams.z) * _1266) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_278)));
              } else {
                _1282 = _bevelParams.y;
              }
              _1283 = float(_310);
              _1284 = float(_311);
              _1285 = float(_312);
              _1286 = dot(float3(_1202, _1203, _1204), float3(_1251, _1252, _1253));
              _1287 = -0.0f - _1053;
              _1288 = -0.0f - _1054;
              _1289 = -0.0f - _1055;
              _1290 = dot(float3(_1202, _1203, _1204), float3(_1287, _1288, _1289));
              _1296 = cos(abs(asin(_1290) - asin(_1286)) * 0.5f);
              _1300 = _1251 - (_1286 * _1202);
              _1301 = _1252 - (_1286 * _1203);
              _1302 = _1253 - (_1286 * _1204);
              _1306 = _1287 - (_1290 * _1202);
              _1307 = _1288 - (_1290 * _1203);
              _1308 = _1289 - (_1290 * _1204);
              // [sem: invLength]
              _1315 = rsqrt((dot(float3(_1306, _1307, _1308), float3(_1306, _1307, _1308)) * dot(float3(_1300, _1301, _1302), float3(_1300, _1301, _1302))) + 0.0001f) * dot(float3(_1300, _1301, _1302), float3(_1306, _1307, _1308));
              _1325 = min(max(_1266, 0.09803922f), 1.0f);
              _1326 = _1325 * _1325;
              _1327 = _1326 * 0.5f;
              _1328 = _1326 * 2.0f;
              _1329 = _1290 + _1286;
              _1330 = _1329 - _1282;
              _1339 = 1.0f / ((1.19f / _1296) + (_1296 * 0.36f));
              _1344 = ((_1339 * (0.6f - (_1315 * 0.8f))) + 1.0f) * sqrt(saturate((_1315 * 0.5f) + 0.5f));
              _1350 = 1.0f - (sqrt(saturate(1.0f - (_1344 * _1344))) * _1296);
              _1351 = _1350 * _1350;
              _1355 = 0.9534794f - ((_1351 * _1351) * (_1350 * 0.9534794f));
              _1356 = _1339 * _1344;
              _1361 = (sqrt(1.0f - (_1356 * _1356)) * 0.5f) / _1296;
              _1362 = log2(_1283);
              _1363 = log2(_1284);
              _1364 = log2(_1285);
              _1376 = ((_1355 * _1355) * (exp2((((_1330 * _1330) * -0.5f) / (_1327 * _1327)) * 1.442695f) / (_1326 * 1.2533141f))) * exp2(-5.741926f - (_1315 * 5.265837f));
              _1380 = _1329 - (_1282 * 4.0f);
              _1390 = 1.0f - (_1296 * 0.5f);
              _1391 = _1390 * _1390;
              _1395 = (_1391 * _1391) * (0.9534794f - (_1296 * 0.4767397f));
              _1397 = 0.9534794f - _1395;
              _1398 = 0.8f / _1296;
              _1411 = (((_1397 * _1397) * (_1395 + 0.046520565f)) * (exp2((((_1380 * _1380) * -0.5f) / (_1328 * _1328)) * 1.442695f) / (_1326 * 5.0132565f))) * exp2((_1315 * 24.525816f) + -24.208424f);
              _1421 = min(0.0f, (-0.0f - ((_1376 * exp2(_1362 * _1361)) + (_1411 * exp2(_1398 * _1362)))));
              _1422 = min(0.0f, (-0.0f - ((_1376 * exp2(_1363 * _1361)) + (_1411 * exp2(_1398 * _1363)))));
              _1423 = min(0.0f, (-0.0f - ((_1376 * exp2(_1364 * _1361)) + (_1411 * exp2(_1398 * _1364)))));
              _1432 = saturate(abs(dot(float3(_1251, _1252, _1253), float3(_1202, _1203, _1204))));  // [sem: expr_sat]
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1441 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1432, _1266, saturate(sqrt(exp2(_1362 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1444 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1432, _1266, saturate(sqrt(exp2(_1363 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1447 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1432, _1266, saturate(sqrt(exp2(_1364 * 1.5f)))), 0.0f);
              _1454 = min(0.99f, _1441.x);
              _1455 = min(0.99f, _1444.x);
              _1456 = min(0.99f, _1447.x);
              _1457 = min(0.99f, _1441.y);
              _1458 = min(0.99f, _1444.y);
              _1459 = min(0.99f, _1447.y);
              _1460 = _1454 * _1454;
              _1461 = _1455 * _1455;
              _1462 = _1456 * _1456;
              _1463 = _1457 * _1457;
              _1464 = _1458 * _1458;
              _1465 = _1459 * _1459;
              _1466 = _1463 * _1457;
              _1467 = _1464 * _1458;
              _1468 = _1465 * _1459;
              _1469 = 1.0f - _1460;
              _1470 = 1.0f - _1461;
              _1471 = 1.0f - _1462;
              _1481 = _1469 * _1469;
              _1482 = _1470 * _1470;
              _1483 = _1471 * _1471;
              _1484 = _1481 * _1469;
              _1485 = _1482 * _1470;
              _1486 = _1483 * _1471;
              _1494 = min(max(_1266, 0.18f), 0.6f);
              _1495 = _1494 * _1494;
              _1496 = _1495 * 0.25f;
              _1497 = _1495 * 4.0f;
              _1499 = (_1455 + _1454) + _1456;
              _1500 = _1454 / _1499;
              _1501 = _1455 / _1499;
              _1502 = _1456 / _1499;
              _1503 = dot(float3(_1495, _1496, _1497), float3(_1500, _1501, _1502));
              _1504 = _1503 * _1503;
              _1507 = asin(min(max(_1290, -1.0f), 1.0f)) + asin(min(max(_1286, -1.0f), 1.0f));
              _1508 = _1507 * 0.5f;
              _1509 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1500, _1501, _1502));
              _1519 = _1509 * _1509;
              _1542 = (_1458 + _1457) + _1459;
              _1546 = dot(float3(_1495, _1496, _1497), float3((_1457 / _1542), (_1458 / _1542), (_1459 / _1542)));
              _1550 = sqrt((_1546 * _1546) + (_1504 * 2.0f));
              _1568 = (_1546 * 3.0f) + (_1503 * 2.0f);
              _1575 = (((_1466 + _1457) * ((_1460 * 0.7f) + 1.0f)) * _1550) / ((_1568 * _1466) + _1457);
              _1576 = (((_1467 + _1458) * ((_1461 * 0.7f) + 1.0f)) * _1550) / ((_1568 * _1467) + _1458);
              _1577 = (((_1468 + _1459) * ((_1462 * 0.7f) + 1.0f)) * _1550) / ((_1568 * _1468) + _1459);
              _1586 = _1508 - (((_1519 * (((_1460 * 4.0f) * _1463) + (_1481 * 2.0f))) * (1.0f - ((_1463 * 2.0f) / _1481))) / _1484);
              _1593 = _1508 - (((_1519 * (((_1461 * 4.0f) * _1464) + (_1482 * 2.0f))) * (1.0f - ((_1464 * 2.0f) / _1482))) / _1485);
              _1600 = _1508 - (((_1519 * (((_1462 * 4.0f) * _1465) + (_1483 * 2.0f))) * (1.0f - ((_1465 * 2.0f) / _1483))) / _1486);
              _1628 = exp2((((_1507 * -0.25f) * _1508) / _1504) * 1.442695f) * 1.4f;
              _1629 = ((((((_1466 * _1460) / _1484) + ((_1457 * _1460) / _1469)) * 4.3982296f) * exp2((((_1586 * _1586) * -0.5f) / ((_1575 * _1575) + _1504)) * 1.442695f)) + ((((_1441.x + _1421) * 0.25f) - _1421) * 6.2831855f)) * _1628;
              _1630 = ((((((_1467 * _1461) / _1485) + ((_1458 * _1461) / _1470)) * 4.3982296f) * exp2((((_1593 * _1593) * -0.5f) / ((_1576 * _1576) + _1504)) * 1.442695f)) + ((((_1444.x + _1422) * 0.25f) - _1422) * 6.2831855f)) * _1628;
              _1631 = ((((((_1468 * _1462) / _1486) + ((_1459 * _1462) / _1471)) * 4.3982296f) * exp2((((_1600 * _1600) * -0.5f) / ((_1577 * _1577) + _1504)) * 1.442695f)) + ((((_1447.x + _1423) * 0.25f) - _1423) * 6.2831855f)) * _1628;
              _1632 = max(0.125f, _1200);
              _1642 = max(0.01f, ((_1632 * (_1283 - _1629)) + _1629));
              _1643 = max(0.01f, (lerp(_1630, _1284, _1632)));
              _1644 = max(0.01f, (lerp(_1631, _1285, _1632)));
              _1646 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_527, _528, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _1653 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_921, _528, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _1663 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_527, _935, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _1673 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_921, _935, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
              _1698 = _1200;
              _1699 = _1201;
              _1700 = _1202;
              _1701 = _1203;
              _1702 = _1204;
              _1703 = _1119;
              _1704 = (min(30000.0f, (_exposure4.x * (((((_1653.x * _907) + (_1646.x * _906)) + (_1663.x * _908)) + (_1673.x * _909)) / _1642))) + _959);
              _1705 = (min(30000.0f, (_exposure4.x * (((((_1653.y * _907) + (_1646.y * _906)) + (_1663.y * _908)) + (_1673.y * _909)) / _1643))) + _960);
              _1706 = (min(30000.0f, (_exposure4.x * (((((_1653.z * _907) + (_1646.z * _906)) + (_1663.z * _908)) + (_1673.z * _909)) / _1644))) + _961);
              _1707 = _1642;
              _1708 = _1643;
              _1709 = _1644;
            } else {
              _1190 = _1153;
              _1191 = _1154;
              _1192 = _715;
              _1193 = _716;
              _1194 = _717;
              if ((_1119 == 53) || ((_1119 & 126) == 66)) {
                _1200 = _1190;
                _1201 = _1191;
                _1202 = _1192;
                _1203 = _1193;
                _1204 = _1194;
                _1206 = __3__36__0__0__g_bentCone.Load(int3(_527, _528, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _1213 = __3__36__0__0__g_bentCone.Load(int3(_921, _528, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _1223 = __3__36__0__0__g_bentCone.Load(int3(_527, _935, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _1233 = __3__36__0__0__g_bentCone.Load(int3(_921, _935, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _1246 = (((((_1213.x * _907) + (_1206.x * _906)) + (_1223.x * _908)) + (_1233.x * _909)) * 2.0f) + -1.0f;
                _1247 = (((((_1213.y * _907) + (_1206.y * _906)) + (_1223.y * _908)) + (_1233.y * _909)) * 2.0f) + -1.0f;
                _1248 = (((((_1213.z * _907) + (_1206.z * _906)) + (_1223.z * _908)) + (_1233.z * _909)) * 2.0f) + -1.0f;
                _1250 = rsqrt(dot(float3(_1246, _1247, _1248), float3(_1246, _1247, _1248)));  // [sem: invLength]
                _1251 = _1246 * _1250;
                _1252 = _1247 * _1250;
                _1253 = _1248 * _1250;
                if (!(_renderParams.z > 0.0f)) {
                  if (!(_renderParams2.y > 0.0f)) {
                    _1265 = (half)(saturate((half)(_280 + 0.15002441h)));
                  } else {
                    _1265 = _280;
                  }
                } else {
                  _1265 = _280;
                }
                _1266 = float(_1265);
                if (_1119 == 53) {
                  _1282 = (((asfloat(_globalLightParams.z) * _1266) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_278)));
                } else {
                  _1282 = _bevelParams.y;
                }
                _1283 = float(_310);
                _1284 = float(_311);
                _1285 = float(_312);
                _1286 = dot(float3(_1202, _1203, _1204), float3(_1251, _1252, _1253));
                _1287 = -0.0f - _1053;
                _1288 = -0.0f - _1054;
                _1289 = -0.0f - _1055;
                _1290 = dot(float3(_1202, _1203, _1204), float3(_1287, _1288, _1289));
                _1296 = cos(abs(asin(_1290) - asin(_1286)) * 0.5f);
                _1300 = _1251 - (_1286 * _1202);
                _1301 = _1252 - (_1286 * _1203);
                _1302 = _1253 - (_1286 * _1204);
                _1306 = _1287 - (_1290 * _1202);
                _1307 = _1288 - (_1290 * _1203);
                _1308 = _1289 - (_1290 * _1204);
                // [sem: invLength]
                _1315 = rsqrt((dot(float3(_1306, _1307, _1308), float3(_1306, _1307, _1308)) * dot(float3(_1300, _1301, _1302), float3(_1300, _1301, _1302))) + 0.0001f) * dot(float3(_1300, _1301, _1302), float3(_1306, _1307, _1308));
                _1325 = min(max(_1266, 0.09803922f), 1.0f);
                _1326 = _1325 * _1325;
                _1327 = _1326 * 0.5f;
                _1328 = _1326 * 2.0f;
                _1329 = _1290 + _1286;
                _1330 = _1329 - _1282;
                _1339 = 1.0f / ((1.19f / _1296) + (_1296 * 0.36f));
                _1344 = ((_1339 * (0.6f - (_1315 * 0.8f))) + 1.0f) * sqrt(saturate((_1315 * 0.5f) + 0.5f));
                _1350 = 1.0f - (sqrt(saturate(1.0f - (_1344 * _1344))) * _1296);
                _1351 = _1350 * _1350;
                _1355 = 0.9534794f - ((_1351 * _1351) * (_1350 * 0.9534794f));
                _1356 = _1339 * _1344;
                _1361 = (sqrt(1.0f - (_1356 * _1356)) * 0.5f) / _1296;
                _1362 = log2(_1283);
                _1363 = log2(_1284);
                _1364 = log2(_1285);
                _1376 = ((_1355 * _1355) * (exp2((((_1330 * _1330) * -0.5f) / (_1327 * _1327)) * 1.442695f) / (_1326 * 1.2533141f))) * exp2(-5.741926f - (_1315 * 5.265837f));
                _1380 = _1329 - (_1282 * 4.0f);
                _1390 = 1.0f - (_1296 * 0.5f);
                _1391 = _1390 * _1390;
                _1395 = (_1391 * _1391) * (0.9534794f - (_1296 * 0.4767397f));
                _1397 = 0.9534794f - _1395;
                _1398 = 0.8f / _1296;
                _1411 = (((_1397 * _1397) * (_1395 + 0.046520565f)) * (exp2((((_1380 * _1380) * -0.5f) / (_1328 * _1328)) * 1.442695f) / (_1326 * 5.0132565f))) * exp2((_1315 * 24.525816f) + -24.208424f);
                _1421 = min(0.0f, (-0.0f - ((_1376 * exp2(_1362 * _1361)) + (_1411 * exp2(_1398 * _1362)))));
                _1422 = min(0.0f, (-0.0f - ((_1376 * exp2(_1363 * _1361)) + (_1411 * exp2(_1398 * _1363)))));
                _1423 = min(0.0f, (-0.0f - ((_1376 * exp2(_1364 * _1361)) + (_1411 * exp2(_1398 * _1364)))));
                _1432 = saturate(abs(dot(float3(_1251, _1252, _1253), float3(_1202, _1203, _1204))));  // [sem: expr_sat]
                // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
                _1441 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1432, _1266, saturate(sqrt(exp2(_1362 * 1.5f)))), 0.0f);
                // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
                _1444 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1432, _1266, saturate(sqrt(exp2(_1363 * 1.5f)))), 0.0f);
                // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
                _1447 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1432, _1266, saturate(sqrt(exp2(_1364 * 1.5f)))), 0.0f);
                _1454 = min(0.99f, _1441.x);
                _1455 = min(0.99f, _1444.x);
                _1456 = min(0.99f, _1447.x);
                _1457 = min(0.99f, _1441.y);
                _1458 = min(0.99f, _1444.y);
                _1459 = min(0.99f, _1447.y);
                _1460 = _1454 * _1454;
                _1461 = _1455 * _1455;
                _1462 = _1456 * _1456;
                _1463 = _1457 * _1457;
                _1464 = _1458 * _1458;
                _1465 = _1459 * _1459;
                _1466 = _1463 * _1457;
                _1467 = _1464 * _1458;
                _1468 = _1465 * _1459;
                _1469 = 1.0f - _1460;
                _1470 = 1.0f - _1461;
                _1471 = 1.0f - _1462;
                _1481 = _1469 * _1469;
                _1482 = _1470 * _1470;
                _1483 = _1471 * _1471;
                _1484 = _1481 * _1469;
                _1485 = _1482 * _1470;
                _1486 = _1483 * _1471;
                _1494 = min(max(_1266, 0.18f), 0.6f);
                _1495 = _1494 * _1494;
                _1496 = _1495 * 0.25f;
                _1497 = _1495 * 4.0f;
                _1499 = (_1455 + _1454) + _1456;
                _1500 = _1454 / _1499;
                _1501 = _1455 / _1499;
                _1502 = _1456 / _1499;
                _1503 = dot(float3(_1495, _1496, _1497), float3(_1500, _1501, _1502));
                _1504 = _1503 * _1503;
                _1507 = asin(min(max(_1290, -1.0f), 1.0f)) + asin(min(max(_1286, -1.0f), 1.0f));
                _1508 = _1507 * 0.5f;
                _1509 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1500, _1501, _1502));
                _1519 = _1509 * _1509;
                _1542 = (_1458 + _1457) + _1459;
                _1546 = dot(float3(_1495, _1496, _1497), float3((_1457 / _1542), (_1458 / _1542), (_1459 / _1542)));
                _1550 = sqrt((_1546 * _1546) + (_1504 * 2.0f));
                _1568 = (_1546 * 3.0f) + (_1503 * 2.0f);
                _1575 = (((_1466 + _1457) * ((_1460 * 0.7f) + 1.0f)) * _1550) / ((_1568 * _1466) + _1457);
                _1576 = (((_1467 + _1458) * ((_1461 * 0.7f) + 1.0f)) * _1550) / ((_1568 * _1467) + _1458);
                _1577 = (((_1468 + _1459) * ((_1462 * 0.7f) + 1.0f)) * _1550) / ((_1568 * _1468) + _1459);
                _1586 = _1508 - (((_1519 * (((_1460 * 4.0f) * _1463) + (_1481 * 2.0f))) * (1.0f - ((_1463 * 2.0f) / _1481))) / _1484);
                _1593 = _1508 - (((_1519 * (((_1461 * 4.0f) * _1464) + (_1482 * 2.0f))) * (1.0f - ((_1464 * 2.0f) / _1482))) / _1485);
                _1600 = _1508 - (((_1519 * (((_1462 * 4.0f) * _1465) + (_1483 * 2.0f))) * (1.0f - ((_1465 * 2.0f) / _1483))) / _1486);
                _1628 = exp2((((_1507 * -0.25f) * _1508) / _1504) * 1.442695f) * 1.4f;
                _1629 = ((((((_1466 * _1460) / _1484) + ((_1457 * _1460) / _1469)) * 4.3982296f) * exp2((((_1586 * _1586) * -0.5f) / ((_1575 * _1575) + _1504)) * 1.442695f)) + ((((_1441.x + _1421) * 0.25f) - _1421) * 6.2831855f)) * _1628;
                _1630 = ((((((_1467 * _1461) / _1485) + ((_1458 * _1461) / _1470)) * 4.3982296f) * exp2((((_1593 * _1593) * -0.5f) / ((_1576 * _1576) + _1504)) * 1.442695f)) + ((((_1444.x + _1422) * 0.25f) - _1422) * 6.2831855f)) * _1628;
                _1631 = ((((((_1468 * _1462) / _1486) + ((_1459 * _1462) / _1471)) * 4.3982296f) * exp2((((_1600 * _1600) * -0.5f) / ((_1577 * _1577) + _1504)) * 1.442695f)) + ((((_1447.x + _1423) * 0.25f) - _1423) * 6.2831855f)) * _1628;
                _1632 = max(0.125f, _1200);
                _1642 = max(0.01f, ((_1632 * (_1283 - _1629)) + _1629));
                _1643 = max(0.01f, (lerp(_1630, _1284, _1632)));
                _1644 = max(0.01f, (lerp(_1631, _1285, _1632)));
                _1646 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_527, _528, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                _1653 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_921, _528, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                _1663 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_527, _935, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                _1673 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_921, _935, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
                _1698 = _1200;
                _1699 = _1201;
                _1700 = _1202;
                _1701 = _1203;
                _1702 = _1204;
                _1703 = _1119;
                _1704 = (min(30000.0f, (_exposure4.x * (((((_1653.x * _907) + (_1646.x * _906)) + (_1663.x * _908)) + (_1673.x * _909)) / _1642))) + _959);
                _1705 = (min(30000.0f, (_exposure4.x * (((((_1653.y * _907) + (_1646.y * _906)) + (_1663.y * _908)) + (_1673.y * _909)) / _1643))) + _960);
                _1706 = (min(30000.0f, (_exposure4.x * (((((_1653.z * _907) + (_1646.z * _906)) + (_1663.z * _908)) + (_1673.z * _909)) / _1644))) + _961);
                _1707 = _1642;
                _1708 = _1643;
                _1709 = _1644;
              } else {
                _1698 = _1190;
                _1699 = _1191;
                _1700 = _1192;
                _1701 = _1193;
                _1702 = _1194;
                _1703 = _1119;
                _1704 = _959;
                _1705 = _960;
                _1706 = _961;
                _1707 = 0.0f;
                _1708 = 0.0f;
                _1709 = 0.0f;
              }
            }
          }
        } else {
          _1698 = 1.0f;
          _1699 = 0.0h;
          _1700 = _715;
          _1701 = _716;
          _1702 = _717;
          _1703 = 52;
          _1704 = _959;
          _1705 = _960;
          _1706 = _961;
          _1707 = 0.0f;
          _1708 = 0.0f;
          _1709 = 0.0f;
        }
      } else {
        _1153 = 0.0f;
        _1154 = _1120;
        if (_1128) {
          _1166 = (_1073 * 2.0f) + -1.0f;
          _1167 = (_1074 * 2.0f) + -1.0f;
          _1169 = 1.0f - abs(_1166);
          _1170 = abs(_1167);
          _1171 = _1169 - _1170;
          if (!(_1171 >= 0.0f)) {
            _1182 = ((1.0f - _1170) * select((_1166 >= 0.0f), 1.0f, -1.0f));
            _1183 = (_1169 * select((_1167 >= 0.0f), 1.0f, -1.0f));
          } else {
            _1182 = _1166;
            _1183 = _1167;
          }
          _1185 = rsqrt(dot(float3(_1182, _1183, _1171), float3(_1182, _1183, _1171)));  // [sem: invLength]
          _1200 = _1153;
          _1201 = 0.0h;
          _1202 = (_1185 * _1182);
          _1203 = (_1185 * _1183);
          _1204 = (_1185 * _1171);
          _1206 = __3__36__0__0__g_bentCone.Load(int3(_527, _528, 0));  // [sem: _3__36__0__0__g_bentCone_load]
          _1213 = __3__36__0__0__g_bentCone.Load(int3(_921, _528, 0));  // [sem: _3__36__0__0__g_bentCone_load]
          _1223 = __3__36__0__0__g_bentCone.Load(int3(_527, _935, 0));  // [sem: _3__36__0__0__g_bentCone_load]
          _1233 = __3__36__0__0__g_bentCone.Load(int3(_921, _935, 0));  // [sem: _3__36__0__0__g_bentCone_load]
          _1246 = (((((_1213.x * _907) + (_1206.x * _906)) + (_1223.x * _908)) + (_1233.x * _909)) * 2.0f) + -1.0f;
          _1247 = (((((_1213.y * _907) + (_1206.y * _906)) + (_1223.y * _908)) + (_1233.y * _909)) * 2.0f) + -1.0f;
          _1248 = (((((_1213.z * _907) + (_1206.z * _906)) + (_1223.z * _908)) + (_1233.z * _909)) * 2.0f) + -1.0f;
          _1250 = rsqrt(dot(float3(_1246, _1247, _1248), float3(_1246, _1247, _1248)));  // [sem: invLength]
          _1251 = _1246 * _1250;
          _1252 = _1247 * _1250;
          _1253 = _1248 * _1250;
          if (!(_renderParams.z > 0.0f)) {
            if (!(_renderParams2.y > 0.0f)) {
              _1265 = (half)(saturate((half)(_280 + 0.15002441h)));
            } else {
              _1265 = _280;
            }
          } else {
            _1265 = _280;
          }
          _1266 = float(_1265);
          if (_1119 == 53) {
            _1282 = (((asfloat(_globalLightParams.z) * _1266) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_278)));
          } else {
            _1282 = _bevelParams.y;
          }
          _1283 = float(_310);
          _1284 = float(_311);
          _1285 = float(_312);
          _1286 = dot(float3(_1202, _1203, _1204), float3(_1251, _1252, _1253));
          _1287 = -0.0f - _1053;
          _1288 = -0.0f - _1054;
          _1289 = -0.0f - _1055;
          _1290 = dot(float3(_1202, _1203, _1204), float3(_1287, _1288, _1289));
          _1296 = cos(abs(asin(_1290) - asin(_1286)) * 0.5f);
          _1300 = _1251 - (_1286 * _1202);
          _1301 = _1252 - (_1286 * _1203);
          _1302 = _1253 - (_1286 * _1204);
          _1306 = _1287 - (_1290 * _1202);
          _1307 = _1288 - (_1290 * _1203);
          _1308 = _1289 - (_1290 * _1204);
          // [sem: invLength]
          _1315 = rsqrt((dot(float3(_1306, _1307, _1308), float3(_1306, _1307, _1308)) * dot(float3(_1300, _1301, _1302), float3(_1300, _1301, _1302))) + 0.0001f) * dot(float3(_1300, _1301, _1302), float3(_1306, _1307, _1308));
          _1325 = min(max(_1266, 0.09803922f), 1.0f);
          _1326 = _1325 * _1325;
          _1327 = _1326 * 0.5f;
          _1328 = _1326 * 2.0f;
          _1329 = _1290 + _1286;
          _1330 = _1329 - _1282;
          _1339 = 1.0f / ((1.19f / _1296) + (_1296 * 0.36f));
          _1344 = ((_1339 * (0.6f - (_1315 * 0.8f))) + 1.0f) * sqrt(saturate((_1315 * 0.5f) + 0.5f));
          _1350 = 1.0f - (sqrt(saturate(1.0f - (_1344 * _1344))) * _1296);
          _1351 = _1350 * _1350;
          _1355 = 0.9534794f - ((_1351 * _1351) * (_1350 * 0.9534794f));
          _1356 = _1339 * _1344;
          _1361 = (sqrt(1.0f - (_1356 * _1356)) * 0.5f) / _1296;
          _1362 = log2(_1283);
          _1363 = log2(_1284);
          _1364 = log2(_1285);
          _1376 = ((_1355 * _1355) * (exp2((((_1330 * _1330) * -0.5f) / (_1327 * _1327)) * 1.442695f) / (_1326 * 1.2533141f))) * exp2(-5.741926f - (_1315 * 5.265837f));
          _1380 = _1329 - (_1282 * 4.0f);
          _1390 = 1.0f - (_1296 * 0.5f);
          _1391 = _1390 * _1390;
          _1395 = (_1391 * _1391) * (0.9534794f - (_1296 * 0.4767397f));
          _1397 = 0.9534794f - _1395;
          _1398 = 0.8f / _1296;
          _1411 = (((_1397 * _1397) * (_1395 + 0.046520565f)) * (exp2((((_1380 * _1380) * -0.5f) / (_1328 * _1328)) * 1.442695f) / (_1326 * 5.0132565f))) * exp2((_1315 * 24.525816f) + -24.208424f);
          _1421 = min(0.0f, (-0.0f - ((_1376 * exp2(_1362 * _1361)) + (_1411 * exp2(_1398 * _1362)))));
          _1422 = min(0.0f, (-0.0f - ((_1376 * exp2(_1363 * _1361)) + (_1411 * exp2(_1398 * _1363)))));
          _1423 = min(0.0f, (-0.0f - ((_1376 * exp2(_1364 * _1361)) + (_1411 * exp2(_1398 * _1364)))));
          _1432 = saturate(abs(dot(float3(_1251, _1252, _1253), float3(_1202, _1203, _1204))));  // [sem: expr_sat]
          // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
          _1441 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1432, _1266, saturate(sqrt(exp2(_1362 * 1.5f)))), 0.0f);
          // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
          _1444 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1432, _1266, saturate(sqrt(exp2(_1363 * 1.5f)))), 0.0f);
          // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
          _1447 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1432, _1266, saturate(sqrt(exp2(_1364 * 1.5f)))), 0.0f);
          _1454 = min(0.99f, _1441.x);
          _1455 = min(0.99f, _1444.x);
          _1456 = min(0.99f, _1447.x);
          _1457 = min(0.99f, _1441.y);
          _1458 = min(0.99f, _1444.y);
          _1459 = min(0.99f, _1447.y);
          _1460 = _1454 * _1454;
          _1461 = _1455 * _1455;
          _1462 = _1456 * _1456;
          _1463 = _1457 * _1457;
          _1464 = _1458 * _1458;
          _1465 = _1459 * _1459;
          _1466 = _1463 * _1457;
          _1467 = _1464 * _1458;
          _1468 = _1465 * _1459;
          _1469 = 1.0f - _1460;
          _1470 = 1.0f - _1461;
          _1471 = 1.0f - _1462;
          _1481 = _1469 * _1469;
          _1482 = _1470 * _1470;
          _1483 = _1471 * _1471;
          _1484 = _1481 * _1469;
          _1485 = _1482 * _1470;
          _1486 = _1483 * _1471;
          _1494 = min(max(_1266, 0.18f), 0.6f);
          _1495 = _1494 * _1494;
          _1496 = _1495 * 0.25f;
          _1497 = _1495 * 4.0f;
          _1499 = (_1455 + _1454) + _1456;
          _1500 = _1454 / _1499;
          _1501 = _1455 / _1499;
          _1502 = _1456 / _1499;
          _1503 = dot(float3(_1495, _1496, _1497), float3(_1500, _1501, _1502));
          _1504 = _1503 * _1503;
          _1507 = asin(min(max(_1290, -1.0f), 1.0f)) + asin(min(max(_1286, -1.0f), 1.0f));
          _1508 = _1507 * 0.5f;
          _1509 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1500, _1501, _1502));
          _1519 = _1509 * _1509;
          _1542 = (_1458 + _1457) + _1459;
          _1546 = dot(float3(_1495, _1496, _1497), float3((_1457 / _1542), (_1458 / _1542), (_1459 / _1542)));
          _1550 = sqrt((_1546 * _1546) + (_1504 * 2.0f));
          _1568 = (_1546 * 3.0f) + (_1503 * 2.0f);
          _1575 = (((_1466 + _1457) * ((_1460 * 0.7f) + 1.0f)) * _1550) / ((_1568 * _1466) + _1457);
          _1576 = (((_1467 + _1458) * ((_1461 * 0.7f) + 1.0f)) * _1550) / ((_1568 * _1467) + _1458);
          _1577 = (((_1468 + _1459) * ((_1462 * 0.7f) + 1.0f)) * _1550) / ((_1568 * _1468) + _1459);
          _1586 = _1508 - (((_1519 * (((_1460 * 4.0f) * _1463) + (_1481 * 2.0f))) * (1.0f - ((_1463 * 2.0f) / _1481))) / _1484);
          _1593 = _1508 - (((_1519 * (((_1461 * 4.0f) * _1464) + (_1482 * 2.0f))) * (1.0f - ((_1464 * 2.0f) / _1482))) / _1485);
          _1600 = _1508 - (((_1519 * (((_1462 * 4.0f) * _1465) + (_1483 * 2.0f))) * (1.0f - ((_1465 * 2.0f) / _1483))) / _1486);
          _1628 = exp2((((_1507 * -0.25f) * _1508) / _1504) * 1.442695f) * 1.4f;
          _1629 = ((((((_1466 * _1460) / _1484) + ((_1457 * _1460) / _1469)) * 4.3982296f) * exp2((((_1586 * _1586) * -0.5f) / ((_1575 * _1575) + _1504)) * 1.442695f)) + ((((_1441.x + _1421) * 0.25f) - _1421) * 6.2831855f)) * _1628;
          _1630 = ((((((_1467 * _1461) / _1485) + ((_1458 * _1461) / _1470)) * 4.3982296f) * exp2((((_1593 * _1593) * -0.5f) / ((_1576 * _1576) + _1504)) * 1.442695f)) + ((((_1444.x + _1422) * 0.25f) - _1422) * 6.2831855f)) * _1628;
          _1631 = ((((((_1468 * _1462) / _1486) + ((_1459 * _1462) / _1471)) * 4.3982296f) * exp2((((_1600 * _1600) * -0.5f) / ((_1577 * _1577) + _1504)) * 1.442695f)) + ((((_1447.x + _1423) * 0.25f) - _1423) * 6.2831855f)) * _1628;
          _1632 = max(0.125f, _1200);
          _1642 = max(0.01f, ((_1632 * (_1283 - _1629)) + _1629));
          _1643 = max(0.01f, (lerp(_1630, _1284, _1632)));
          _1644 = max(0.01f, (lerp(_1631, _1285, _1632)));
          _1646 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_527, _528, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
          _1653 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_921, _528, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
          _1663 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_527, _935, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
          _1673 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_921, _935, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
          _1698 = _1200;
          _1699 = _1201;
          _1700 = _1202;
          _1701 = _1203;
          _1702 = _1204;
          _1703 = _1119;
          _1704 = (min(30000.0f, (_exposure4.x * (((((_1653.x * _907) + (_1646.x * _906)) + (_1663.x * _908)) + (_1673.x * _909)) / _1642))) + _959);
          _1705 = (min(30000.0f, (_exposure4.x * (((((_1653.y * _907) + (_1646.y * _906)) + (_1663.y * _908)) + (_1673.y * _909)) / _1643))) + _960);
          _1706 = (min(30000.0f, (_exposure4.x * (((((_1653.z * _907) + (_1646.z * _906)) + (_1663.z * _908)) + (_1673.z * _909)) / _1644))) + _961);
          _1707 = _1642;
          _1708 = _1643;
          _1709 = _1644;
        } else {
          _1190 = _1153;
          _1191 = _1154;
          _1192 = _715;
          _1193 = _716;
          _1194 = _717;
          if ((_1119 == 53) || ((_1119 & 126) == 66)) {
            _1200 = _1190;
            _1201 = _1191;
            _1202 = _1192;
            _1203 = _1193;
            _1204 = _1194;
            _1206 = __3__36__0__0__g_bentCone.Load(int3(_527, _528, 0));  // [sem: _3__36__0__0__g_bentCone_load]
            _1213 = __3__36__0__0__g_bentCone.Load(int3(_921, _528, 0));  // [sem: _3__36__0__0__g_bentCone_load]
            _1223 = __3__36__0__0__g_bentCone.Load(int3(_527, _935, 0));  // [sem: _3__36__0__0__g_bentCone_load]
            _1233 = __3__36__0__0__g_bentCone.Load(int3(_921, _935, 0));  // [sem: _3__36__0__0__g_bentCone_load]
            _1246 = (((((_1213.x * _907) + (_1206.x * _906)) + (_1223.x * _908)) + (_1233.x * _909)) * 2.0f) + -1.0f;
            _1247 = (((((_1213.y * _907) + (_1206.y * _906)) + (_1223.y * _908)) + (_1233.y * _909)) * 2.0f) + -1.0f;
            _1248 = (((((_1213.z * _907) + (_1206.z * _906)) + (_1223.z * _908)) + (_1233.z * _909)) * 2.0f) + -1.0f;
            _1250 = rsqrt(dot(float3(_1246, _1247, _1248), float3(_1246, _1247, _1248)));  // [sem: invLength]
            _1251 = _1246 * _1250;
            _1252 = _1247 * _1250;
            _1253 = _1248 * _1250;
            if (!(_renderParams.z > 0.0f)) {
              if (!(_renderParams2.y > 0.0f)) {
                _1265 = (half)(saturate((half)(_280 + 0.15002441h)));
              } else {
                _1265 = _280;
              }
            } else {
              _1265 = _280;
            }
            _1266 = float(_1265);
            if (_1119 == 53) {
              _1282 = (((asfloat(_globalLightParams.z) * _1266) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_278)));
            } else {
              _1282 = _bevelParams.y;
            }
            _1283 = float(_310);
            _1284 = float(_311);
            _1285 = float(_312);
            _1286 = dot(float3(_1202, _1203, _1204), float3(_1251, _1252, _1253));
            _1287 = -0.0f - _1053;
            _1288 = -0.0f - _1054;
            _1289 = -0.0f - _1055;
            _1290 = dot(float3(_1202, _1203, _1204), float3(_1287, _1288, _1289));
            _1296 = cos(abs(asin(_1290) - asin(_1286)) * 0.5f);
            _1300 = _1251 - (_1286 * _1202);
            _1301 = _1252 - (_1286 * _1203);
            _1302 = _1253 - (_1286 * _1204);
            _1306 = _1287 - (_1290 * _1202);
            _1307 = _1288 - (_1290 * _1203);
            _1308 = _1289 - (_1290 * _1204);
            // [sem: invLength]
            _1315 = rsqrt((dot(float3(_1306, _1307, _1308), float3(_1306, _1307, _1308)) * dot(float3(_1300, _1301, _1302), float3(_1300, _1301, _1302))) + 0.0001f) * dot(float3(_1300, _1301, _1302), float3(_1306, _1307, _1308));
            _1325 = min(max(_1266, 0.09803922f), 1.0f);
            _1326 = _1325 * _1325;
            _1327 = _1326 * 0.5f;
            _1328 = _1326 * 2.0f;
            _1329 = _1290 + _1286;
            _1330 = _1329 - _1282;
            _1339 = 1.0f / ((1.19f / _1296) + (_1296 * 0.36f));
            _1344 = ((_1339 * (0.6f - (_1315 * 0.8f))) + 1.0f) * sqrt(saturate((_1315 * 0.5f) + 0.5f));
            _1350 = 1.0f - (sqrt(saturate(1.0f - (_1344 * _1344))) * _1296);
            _1351 = _1350 * _1350;
            _1355 = 0.9534794f - ((_1351 * _1351) * (_1350 * 0.9534794f));
            _1356 = _1339 * _1344;
            _1361 = (sqrt(1.0f - (_1356 * _1356)) * 0.5f) / _1296;
            _1362 = log2(_1283);
            _1363 = log2(_1284);
            _1364 = log2(_1285);
            _1376 = ((_1355 * _1355) * (exp2((((_1330 * _1330) * -0.5f) / (_1327 * _1327)) * 1.442695f) / (_1326 * 1.2533141f))) * exp2(-5.741926f - (_1315 * 5.265837f));
            _1380 = _1329 - (_1282 * 4.0f);
            _1390 = 1.0f - (_1296 * 0.5f);
            _1391 = _1390 * _1390;
            _1395 = (_1391 * _1391) * (0.9534794f - (_1296 * 0.4767397f));
            _1397 = 0.9534794f - _1395;
            _1398 = 0.8f / _1296;
            _1411 = (((_1397 * _1397) * (_1395 + 0.046520565f)) * (exp2((((_1380 * _1380) * -0.5f) / (_1328 * _1328)) * 1.442695f) / (_1326 * 5.0132565f))) * exp2((_1315 * 24.525816f) + -24.208424f);
            _1421 = min(0.0f, (-0.0f - ((_1376 * exp2(_1362 * _1361)) + (_1411 * exp2(_1398 * _1362)))));
            _1422 = min(0.0f, (-0.0f - ((_1376 * exp2(_1363 * _1361)) + (_1411 * exp2(_1398 * _1363)))));
            _1423 = min(0.0f, (-0.0f - ((_1376 * exp2(_1364 * _1361)) + (_1411 * exp2(_1398 * _1364)))));
            _1432 = saturate(abs(dot(float3(_1251, _1252, _1253), float3(_1202, _1203, _1204))));  // [sem: expr_sat]
            // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
            _1441 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1432, _1266, saturate(sqrt(exp2(_1362 * 1.5f)))), 0.0f);
            // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
            _1444 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1432, _1266, saturate(sqrt(exp2(_1363 * 1.5f)))), 0.0f);
            // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
            _1447 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1432, _1266, saturate(sqrt(exp2(_1364 * 1.5f)))), 0.0f);
            _1454 = min(0.99f, _1441.x);
            _1455 = min(0.99f, _1444.x);
            _1456 = min(0.99f, _1447.x);
            _1457 = min(0.99f, _1441.y);
            _1458 = min(0.99f, _1444.y);
            _1459 = min(0.99f, _1447.y);
            _1460 = _1454 * _1454;
            _1461 = _1455 * _1455;
            _1462 = _1456 * _1456;
            _1463 = _1457 * _1457;
            _1464 = _1458 * _1458;
            _1465 = _1459 * _1459;
            _1466 = _1463 * _1457;
            _1467 = _1464 * _1458;
            _1468 = _1465 * _1459;
            _1469 = 1.0f - _1460;
            _1470 = 1.0f - _1461;
            _1471 = 1.0f - _1462;
            _1481 = _1469 * _1469;
            _1482 = _1470 * _1470;
            _1483 = _1471 * _1471;
            _1484 = _1481 * _1469;
            _1485 = _1482 * _1470;
            _1486 = _1483 * _1471;
            _1494 = min(max(_1266, 0.18f), 0.6f);
            _1495 = _1494 * _1494;
            _1496 = _1495 * 0.25f;
            _1497 = _1495 * 4.0f;
            _1499 = (_1455 + _1454) + _1456;
            _1500 = _1454 / _1499;
            _1501 = _1455 / _1499;
            _1502 = _1456 / _1499;
            _1503 = dot(float3(_1495, _1496, _1497), float3(_1500, _1501, _1502));
            _1504 = _1503 * _1503;
            _1507 = asin(min(max(_1290, -1.0f), 1.0f)) + asin(min(max(_1286, -1.0f), 1.0f));
            _1508 = _1507 * 0.5f;
            _1509 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1500, _1501, _1502));
            _1519 = _1509 * _1509;
            _1542 = (_1458 + _1457) + _1459;
            _1546 = dot(float3(_1495, _1496, _1497), float3((_1457 / _1542), (_1458 / _1542), (_1459 / _1542)));
            _1550 = sqrt((_1546 * _1546) + (_1504 * 2.0f));
            _1568 = (_1546 * 3.0f) + (_1503 * 2.0f);
            _1575 = (((_1466 + _1457) * ((_1460 * 0.7f) + 1.0f)) * _1550) / ((_1568 * _1466) + _1457);
            _1576 = (((_1467 + _1458) * ((_1461 * 0.7f) + 1.0f)) * _1550) / ((_1568 * _1467) + _1458);
            _1577 = (((_1468 + _1459) * ((_1462 * 0.7f) + 1.0f)) * _1550) / ((_1568 * _1468) + _1459);
            _1586 = _1508 - (((_1519 * (((_1460 * 4.0f) * _1463) + (_1481 * 2.0f))) * (1.0f - ((_1463 * 2.0f) / _1481))) / _1484);
            _1593 = _1508 - (((_1519 * (((_1461 * 4.0f) * _1464) + (_1482 * 2.0f))) * (1.0f - ((_1464 * 2.0f) / _1482))) / _1485);
            _1600 = _1508 - (((_1519 * (((_1462 * 4.0f) * _1465) + (_1483 * 2.0f))) * (1.0f - ((_1465 * 2.0f) / _1483))) / _1486);
            _1628 = exp2((((_1507 * -0.25f) * _1508) / _1504) * 1.442695f) * 1.4f;
            _1629 = ((((((_1466 * _1460) / _1484) + ((_1457 * _1460) / _1469)) * 4.3982296f) * exp2((((_1586 * _1586) * -0.5f) / ((_1575 * _1575) + _1504)) * 1.442695f)) + ((((_1441.x + _1421) * 0.25f) - _1421) * 6.2831855f)) * _1628;
            _1630 = ((((((_1467 * _1461) / _1485) + ((_1458 * _1461) / _1470)) * 4.3982296f) * exp2((((_1593 * _1593) * -0.5f) / ((_1576 * _1576) + _1504)) * 1.442695f)) + ((((_1444.x + _1422) * 0.25f) - _1422) * 6.2831855f)) * _1628;
            _1631 = ((((((_1468 * _1462) / _1486) + ((_1459 * _1462) / _1471)) * 4.3982296f) * exp2((((_1600 * _1600) * -0.5f) / ((_1577 * _1577) + _1504)) * 1.442695f)) + ((((_1447.x + _1423) * 0.25f) - _1423) * 6.2831855f)) * _1628;
            _1632 = max(0.125f, _1200);
            _1642 = max(0.01f, ((_1632 * (_1283 - _1629)) + _1629));
            _1643 = max(0.01f, (lerp(_1630, _1284, _1632)));
            _1644 = max(0.01f, (lerp(_1631, _1285, _1632)));
            _1646 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_527, _528, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
            _1653 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_921, _528, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
            _1663 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_527, _935, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
            _1673 = __3__36__0__0__g_sceneSpecularHalf.Load(int3(_921, _935, 0));  // [sem: _3__36__0__0__g_sceneSpecularHalf_load]
            _1698 = _1200;
            _1699 = _1201;
            _1700 = _1202;
            _1701 = _1203;
            _1702 = _1204;
            _1703 = _1119;
            _1704 = (min(30000.0f, (_exposure4.x * (((((_1653.x * _907) + (_1646.x * _906)) + (_1663.x * _908)) + (_1673.x * _909)) / _1642))) + _959);
            _1705 = (min(30000.0f, (_exposure4.x * (((((_1653.y * _907) + (_1646.y * _906)) + (_1663.y * _908)) + (_1673.y * _909)) / _1643))) + _960);
            _1706 = (min(30000.0f, (_exposure4.x * (((((_1653.z * _907) + (_1646.z * _906)) + (_1663.z * _908)) + (_1673.z * _909)) / _1644))) + _961);
            _1707 = _1642;
            _1708 = _1643;
            _1709 = _1644;
          } else {
            _1698 = _1190;
            _1699 = _1191;
            _1700 = _1192;
            _1701 = _1193;
            _1702 = _1194;
            _1703 = _1119;
            _1704 = _959;
            _1705 = _960;
            _1706 = _961;
            _1707 = 0.0f;
            _1708 = 0.0f;
            _1709 = 0.0f;
          }
        }
      }
    }
    _1716 = -0.0f - min(0.0f, (-0.0f - _1704));
    _1717 = -0.0f - min(0.0f, (-0.0f - _1705));
    _1718 = -0.0f - min(0.0f, (-0.0f - _1706));
    half2 _1720 = __3__36__0__0__g_sceneAO.Load(int3(_527, _528, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    half2 _1727 = __3__36__0__0__g_sceneAO.Load(int3(_921, _528, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    half2 _1736 = __3__36__0__0__g_sceneAO.Load(int3(_527, _935, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    half2 _1745 = __3__36__0__0__g_sceneAO.Load(int3(_921, _935, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    _1752 = (((float(_1727.x) * _907) + (float(_1720.x) * _906)) + (float(_1736.x) * _908)) + (float(_1745.x) * _909);
    if ((uint)_1703 > (uint)11) {
      _1759 = ((uint)_1703 < (uint)19);
      if (!((uint)_1703 < (uint)20)) {
        _1762 = _1759;
        _1765 = _1762;
        _1766 = (_1703 == 107);
      } else {
        _1765 = _1759;
        _1766 = true;
      }
    } else {
      if (!((uint)_1703 > (uint)10)) {
        _1762 = false;
        _1765 = _1762;
        _1766 = (_1703 == 107);
      } else {
        _1765 = false;
        _1766 = true;
      }
    }
    _1771 = (_1703 == 65);
    _1772 = _1771 || (_1765 || ((_1703 == 96) || _1766));
    _1775 = select(_1772, float(_1699), 0.0f);
    _1777 = ((uint)(_1703 & 24) > (uint)23);
    if (_1777) {
      _1779 = (_1703 == 29);
      if (_1779) {
        _1784 = float(saturate(_280));
      } else {
        _1784 = 0.0f;
      }
      _1786 = (uint)((half)(_278 * 255.0h));
      if (_183) {
        _1795 = select(((_1786 & 128) != 0), 1.0f, 0.0f);
        _1796 = (((float)((uint)((uint)(_1786 & 127)))) * 0.007874016f);
      } else {
        _1795 = 0.0f;
        _1796 = 0.0f;
      }
      _1797 = half(_1796);
      _1801 = (_1797 > 0.99902344h);
      _1806 = _1797;
      _1807 = (half)(select(((_1703 == 24) || _1779), 0.010002136f, _280));
      _1808 = (half)(select(_1801, 1.0f, _310));
      _1809 = (half)(select(_1801, 1.0f, _311));
      _1810 = (half)(select(_1801, 1.0f, _312));
      _1811 = _1795;
      _1812 = _1784;
    } else {
      _1806 = (half)(select(_1772, 0.0f, _1699));
      _1807 = _280;
      _1808 = _310;
      _1809 = _311;
      _1810 = _312;
      _1811 = 0.0f;
      _1812 = 0.0f;
    }
    _1813 = _1703 & -2;
    _1814 = (_1813 == 66);
    _1815 = (_1703 == 53);
    _1816 = _1815 || _1814;
    _1817 = -0.0f - _1053;
    _1818 = -0.0f - _1054;
    _1819 = -0.0f - _1055;
    _1820 = dot(float3(_1817, _1818, _1819), float3(_715, _716, _717));
    if (_1816) {
      _1824 = abs(_1820);
    } else {
      _1824 = _1820;
    }
    _1825 = saturate(_1824);  // [sem: _1824_sat]
    _1826 = _117.x & 128;  // [sem: _3__36__0__0__g_stencil_load_derived]
    _1827 = (_1826 == 0);
    if (_1827) {
      if ((uint)_119 > (uint)51) {
        if (!(((_117.x & 125) == 105) || ((uint)_119 < (uint)68))) {
          _1847 = (_119 == 98);
        } else {
          _1847 = true;
        }
      } else {
        if ((uint)_119 > (uint)10) {
          if ((uint)_119 < (uint)20) {
            if (_205 == 14) {
              _1847 = (_119 == 98);
            } else {
              _1847 = true;
            }
          } else {
            if (!((_117.x & 125) == 105)) {
              _1847 = (_119 == 98);
            } else {
              _1847 = true;
            }
          }
        } else {
          _1847 = (_119 == 98);
        }
      }
    } else {
      _1847 = true;
    }
    [branch]
    if (_1777) {
      _1856 = (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(_101, _103, 0)))).x) & 16777215)))) * 5.960465e-08f);
    } else {
      _1856 = _114.x;
    }
    _1884 = mad((_projToPrevProj[3].z), _1856, mad((_projToPrevProj[3].y), _1011, ((_projToPrevProj[3].x) * _1009))) + (_projToPrevProj[3].w);
    if (_1847) {
      _1891 = __3__36__0__0__g_velocity.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_velocity_load]
      _1897 = (_1891.x * 2.0f);
      _1898 = (_1891.y * 2.0f);
    } else {
      _1897 = (((mad((_projToPrevProj[0].z), _1856, mad((_projToPrevProj[0].y), _1011, ((_projToPrevProj[0].x) * _1009))) + (_projToPrevProj[0].w)) / _1884) - _1009);
      _1898 = (((mad((_projToPrevProj[1].z), _1856, mad((_projToPrevProj[1].y), _1011, ((_projToPrevProj[1].x) * _1009))) + (_projToPrevProj[1].w)) / _1884) - _1011);
    }
    _1900 = _nearFarProj.x / max(1e-07f, _1856);
    _1903 = (_1897 * 0.5f) + _111;
    _1904 = _112 - (_1898 * 0.5f);
    _1912 = select((((_1903 < 0.0f) || (_1903 > 1.0f)) || ((_1904 < 0.0f) || (_1904 > 1.0f))), 1.0f, 0.0f);
    _1918 = (_bufferSizeAndInvSize.x * _1903) + -0.5f;
    _1919 = (_bufferSizeAndInvSize.y * _1904) + -0.5f;
    _1922 = (int)(floor(_1918));
    _1923 = (int)(floor(_1919));
    _1924 = (float)((int)(_1922));
    _1925 = (float)((int)(_1923));
    _1930 = (_1924 + 0.5f) * _bufferSizeAndInvSize.z;
    _1931 = (_1925 + 0.5f) * _bufferSizeAndInvSize.w;
    _1933 = __3__36__0__0__g_depthOpaquePrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(_1930, _1931));  // [sem: _3__36__0__0__g_depthOpaquePrev_gather]
    _1956 = mad(((uint)((uint)(_1933.w)) >> 24), 16777216, mad(((uint)((uint)(_1933.z)) >> 24), 65536, mad(((uint)((uint)(_1933.y)) >> 24), 256, ((uint)((uint)(_1933.x)) >> 24))));
    if (_1827) {
      if ((uint)_119 > (uint)51) {
        if (!((_119 == 98) || (((_117.x & 125) == 105) || ((uint)_119 < (uint)68)))) {
          _1986 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
        } else {
          _1986 = 0.0f;
        }
      } else {
        if ((uint)_119 > (uint)10) {
          if ((uint)_119 < (uint)20) {
            if (_205 == 14) {
              _1986 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
            } else {
              _1986 = 0.0f;
            }
          } else {
            if (!((_117.x & 125) == 105)) {
              _1986 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
            } else {
              _1986 = 0.0f;
            }
          }
        } else {
          _1986 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
        }
      }
    } else {
      _1986 = 0.0f;
    }
    _1994 = _screenPercentage.x * 2.0f;
    _1995 = _1994 * abs(_111 + -0.5f);
    _1996 = _screenPercentage.y * 2.0f;
    _1997 = _1996 * abs(_112 + -0.5f);
    _2001 = sqrt(dot(float2(_1995, _1997), float2(_1995, _1997)) + 1.0f) * _1900;
    _2018 = _1994 * abs(_1903 + -0.5f);
    _2019 = _1996 * abs(_1904 + -0.5f);
    _2022 = sqrt(dot(float2(_2018, _2019), float2(_2018, _2019)) + 1.0f);
    _2037 = _631 || ((uint)((int)(_1703) + (int)(-97)) < (uint)2);
    _2039 = _1900 * _1900;
    _2041 = (_2039 * select(_2037, 0.5f, 0.2f)) + 1.0f;
    _2045 = ((uint)((int)(_1703) + (int)(-52)) < (uint)16);
    if (_2045) {
      _2064 = (1000.0f - (saturate((float)((bool)((sqrt(((_diffViewPosAccurate.x * _diffViewPosAccurate.x) + (_diffViewPosAccurate.y * _diffViewPosAccurate.y)) + (_diffViewPosAccurate.z * _diffViewPosAccurate.z)) * 50.0f) > 1.0f))) * 875.0f));
    } else {
      _2064 = 50.0f;
    }
    _2070 = select(_2045, 0.0f, ((_temporalReprojectionParams.y * 0.1f) * max(0.0f, (_1900 + -1.0f))));
    _2075 = max(0.0f, (abs(_2001 - (_2022 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1933.x & 16777215)))) * 5.960465e-08f))) - _1986))) - _2070));
    _2076 = max(0.0f, (abs(_2001 - (_2022 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1933.y & 16777215)))) * 5.960465e-08f))) - _1986))) - _2070));
    _2077 = max(0.0f, (abs(_2001 - (_2022 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1933.z & 16777215)))) * 5.960465e-08f))) - _1986))) - _2070));
    _2078 = max(0.0f, (abs(_2001 - (_2022 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1933.w & 16777215)))) * 5.960465e-08f))) - _1986))) - _2070));
    _2079 = _2075 * _2075;
    _2080 = _2076 * _2076;
    _2081 = _2077 * _2077;
    _2082 = _2078 * _2078;
    _2084 = (-1.442695f / ((_2039 * 0.1f) + 1.0f)) * select(_2037, 0.2f, _2064);
    _2097 = select((_2079 > _2041), 0.0f, exp2(_2084 * _2079));
    _2098 = select((_2080 > _2041), 0.0f, exp2(_2080 * _2084));
    _2099 = select((_2081 > _2041), 0.0f, exp2(_2081 * _2084));
    _2100 = select((_2082 > _2041), 0.0f, exp2(_2082 * _2084));
    if (!_1777) {
      _2102 = _1956 & 127;
      _2103 = _1956 & 32512;
      _2104 = _1956 & 8323072;
      _2105 = _1956 & 2130706432;
      _2127 = ((uint)((int)(_2102) + (int)(-52)) < (uint)16);
      _2131 = ((uint)((int)(((uint)((uint)(_1956)) >> 8) & 127) + (int)(-52)) < (uint)16);
      _2135 = ((uint)((int)(((uint)((uint)(_1956)) >> 16) & 127) + (int)(-52)) < (uint)16);
      _2139 = ((uint)((int)(((uint)((uint)(_1956)) >> 24) & 127) + (int)(-52)) < (uint)16);
      _2152 = ((uint)((int)(_119) + (int)(-52)) < (uint)16);
      _2154 = (_1826 != 0) || _2152;
      _2163 = (_1703 == 6);
      _2185 = ((uint)((int)(_1703) + (int)(-105)) < (uint)3);
      _2223 = (_2097 * ((float)((bool)((_659 || ((_2102 != 53) && ((_1956 & 126) != 66))) && (!((_2154 ^ (((_1956 & 128) != 0) || _2127)) || ((_2163 ^ (_2102 == 6)) || ((_2152 ^ _2127) || (_2185 ^ ((_2102 == 107) || ((uint)((int)(_2102) + (int)(-105)) < (uint)2)))))))))));
      _2224 = (_2098 * ((float)((bool)((_659 || ((_2103 != 13568) && ((_1956 & 32256) != 16896))) && (!((_2154 ^ (((_1956 & 32768) != 0) || _2131)) || ((_2163 ^ (_2103 == 1536)) || ((_2152 ^ _2131) || (_2185 ^ (((_1956 & 32000) == 26880) || (_2103 == 27136)))))))))));
      _2225 = (_2099 * ((float)((bool)((_659 || ((_2104 != 3473408) && ((_1956 & 8257536) != 4325376))) && (!((_2154 ^ (((_1956 & 8388608) != 0) || _2135)) || ((_2163 ^ (_2104 == 393216)) || ((_2152 ^ _2135) || (_2185 ^ (((_1956 & 8192000) == 6881280) || (_2104 == 6946816)))))))))));
      _2226 = (_2100 * ((float)((bool)((_659 || ((_2105 != 889192448) && ((_1956 & 2113929216) != 1107296256))) && (!((_2154 ^ (((int)_1956 < (int)0) || _2139)) || ((_2163 ^ (_2105 == 100663296)) || ((_2152 ^ _2139) || (_2185 ^ (((_1956 & 2097152000) == 1761607680) || (_2105 == 1778384896)))))))))));
    } else {
      _2223 = _2097;
      _2224 = _2098;
      _2225 = _2099;
      _2226 = _2100;
    }
    _2228 = __3__36__0__0__g_sceneNormalPrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(_1930, _1931));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather]
    _2247 = min(1.0f, ((((float)((uint)((uint)(_2228.w & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2248 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2228.w)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2249 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2228.w)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2251 = rsqrt(dot(float3(_2247, _2248, _2249), float3(_2247, _2248, _2249)));  // [sem: invLength]
    _2256 = saturate(dot(float3(_715, _716, _717), float3((_2251 * _2247), (_2251 * _2248), (_2251 * _2249))));  // [sem: expr_sat]
    _2271 = min(1.0f, ((((float)((uint)((uint)(_2228.z & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2272 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2228.z)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2273 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2228.z)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2275 = rsqrt(dot(float3(_2271, _2272, _2273), float3(_2271, _2272, _2273)));  // [sem: invLength]
    _2280 = saturate(dot(float3(_715, _716, _717), float3((_2275 * _2271), (_2275 * _2272), (_2275 * _2273))));  // [sem: expr_sat]
    _2295 = min(1.0f, ((((float)((uint)((uint)(_2228.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2296 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2228.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2297 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2228.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2299 = rsqrt(dot(float3(_2295, _2296, _2297), float3(_2295, _2296, _2297)));  // [sem: invLength]
    _2304 = saturate(dot(float3(_715, _716, _717), float3((_2299 * _2295), (_2299 * _2296), (_2299 * _2297))));  // [sem: expr_sat]
    _2319 = min(1.0f, ((((float)((uint)((uint)(_2228.y & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2320 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2228.y)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2321 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2228.y)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2323 = rsqrt(dot(float3(_2319, _2320, _2321), float3(_2319, _2320, _2321)));  // [sem: invLength]
    _2328 = saturate(dot(float3(_715, _716, _717), float3((_2323 * _2319), (_2323 * _2320), (_2323 * _2321))));  // [sem: expr_sat]
    _2331 = select((_1815 || (_1814 || _2037)), 0.01f, 1.0f);
    _2348 = _1918 - _1924;
    _2349 = _1919 - _1925;
    _2350 = 1.0f - _2348;
    _2351 = 1.0f - _2349;
    _2356 = (_2350 * _2349) * _2223;
    _2358 = (_2349 * _2348) * _2224;
    _2360 = (_2351 * _2348) * _2225;
    _2362 = (_2351 * _2350) * _2226;
    _2364 = saturate(select(_1777, 1.0f, (pow(_2304, _2331))) * _2356);  // [sem: expr_sat]
    _2365 = saturate(select(_1777, 1.0f, (pow(_2328, _2331))) * _2358);  // [sem: expr_sat]
    _2366 = saturate(select(_1777, 1.0f, (pow(_2280, _2331))) * _2360);  // [sem: expr_sat]
    _2367 = saturate(select(_1777, 1.0f, (pow(_2256, _2331))) * _2362);  // [sem: expr_sat]
    _2370 = asint(__3__37__0__0__g_structureCounterBuffer.Load(8));
    _2371 = WaveReadLaneFirst(_2370);
    [branch]
    if (!(_2371 == 0)) {
      _2379 = (((uint)(__3__36__0__0__g_tiledManyLightsMasks.Load(int3(((int)(_101) >> 5), ((int)(_103) >> 5), 0)))).x) & 4;
      _2381 = (uint)((uint)(_2379)) >> 2;
      if (!(_2379 == 0)) {
        _2389 = max((saturate(dot(float3(_1716, _1717, _1718), float3(0.212671f, 0.71516f, 0.072169f)) * 0.01f) * 0.875f), _1912);
        _2390 = _2381;
      } else {
        _2389 = _1912;
        _2390 = _2381;
      }
    } else {
      _2389 = _1912;
      _2390 = 0;
    }
    // [sem: expr_sat]
    _2400 = saturate(max(_2389, (((_environmentLightingHistory[1].w) + _temporalReprojectionParams.w) + _renderParams.y)));
    _2401 = (uint)((uint)(_1923)) + (uint)(1);
    half4 _2403 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1922, _2401, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    _2408 = (uint)((uint)(_1922)) + (uint)(1);
    half4 _2409 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_2408, _2401, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    half4 _2414 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_2408, _1923, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    half4 _2419 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1922, _1923, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    _2424 = dot(float4(_2364, _2365, _2366, _2367), float4(1.0f, 1.0f, 1.0f, 1.0f));
    // [sem: expr_sat]
    _2433 = saturate(dot(float4(_2364, _2365, _2366, _2367), float4(float(_2403.w), float(_2409.w), float(_2414.w), float(_2419.w))) * (1.0f / max(1.0f, _2424)));
    _2438 = sqrt((_1898 * _1898) + (_1897 * _1897)) * 50.0f;
    if (_2045) {
      _2447 = saturate(1.0f - _2438);  // [sem: expr_sat]
    } else {
      _2447 = (1.0f - (saturate(_2438) * 0.5f));  // [sem: expr_sat]
    }
    _2451 = max(1.0f, (_bufferSizeAndInvSize.w * 2160.0f));
    _2454 = min(31.0f, ((_2447 * 15.0f) * _2451));
    _2455 = (_1703 == 29);
    if (_2455) {
      _2459 = min(2.0f, _2454);
    } else {
      _2459 = _2454;
    }
    _2460 = (_1703 == 24);
    _2461 = select(_2460, 1.0f, _2433);
    _2463 = (_2461 * _2461) * 4.0f;
    _2466 = __3__36__0__0__g_manyLightsMoments.SampleLevel(__3__40__0__0__g_sampler, float2(_111, _112), 0.0f);  // [sem: _3__36__0__0__g_manyLightsMoments_sampleLod]
    _2471 = saturate(_2466.w);  // [sem: expr_sat]
    _2473 = 1.0f / max(1e-06f, _2424);
    _2475 = _2473 * _2364;
    _2476 = _2473 * _2365;
    _2477 = _2473 * _2366;
    _2478 = _2473 * _2367;
    if (!((_2473 * _2424) == 0.0f)) {
      _2491 = saturate(saturate(max(_2400, (1.0f / ((saturate(_2463) * _2459) + 1.0f))) + _renderParams.z));  // [sem: expr_sat]
    } else {
      _2491 = 1.0f;  // [sem: expr_sat]
    }
    _2533 = 1.0f / _exposure4.x;
    _2550 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (-0.0f - (min(0.0f, (-0.0f - ((_2478 * float(_2419.x)) + ((_2477 * float(_2414.x)) + ((_2475 * float(_2403.x)) + (_2476 * float(_2409.x))))))) * _exposure4.y)))));
    _2551 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (-0.0f - (min(0.0f, (-0.0f - ((_2478 * float(_2419.y)) + ((_2477 * float(_2414.y)) + ((_2475 * float(_2403.y)) + (_2476 * float(_2409.y))))))) * _exposure4.y)))));
    _2552 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (-0.0f - (min(0.0f, (-0.0f - ((_2478 * float(_2419.z)) + ((_2477 * float(_2414.z)) + ((_2475 * float(_2403.z)) + (_2476 * float(_2409.z))))))) * _exposure4.y)))));
    if (_renderParams.y == 0.0f) {
      if (_1814) {
        _2583 = _2550;
        _2584 = _2551;
        _2585 = _2552;
        _2586 = _2491;
        _2590 = _2583;
        _2591 = _2584;
        _2592 = _2585;
        _2593 = _2586;
        _2594 = saturate(_2433 + 0.0625f);  // [sem: expr_sat]
      } else {
        if (!_1815) {
          _2557 = dot(float3(_2550, _2551, _2552), float3(0.212671f, 0.71516f, 0.072169f));
          _2573 = ((min(_2557, _2466.y) / max(1e-06f, _2557)) * _2471) + saturate(1.0f - _2471);
          _2578 = saturate(((_2471 * 0.5f) * saturate(((_2466.x - _2557) * 2.0f) / max(1e-06f, _2466.x))) + _2491);  // [sem: expr_sat]
          _2579 = (_2573 * _2550);
          _2580 = (_2573 * _2551);
          _2581 = (_2573 * _2552);
        } else {
          _2578 = _2491;  // [sem: expr_sat]
          _2579 = _2550;
          _2580 = _2551;
          _2581 = _2552;
        }
        if (!_2460) {
          _2583 = _2579;
          _2584 = _2580;
          _2585 = _2581;
          _2586 = _2578;
          _2590 = _2583;
          _2591 = _2584;
          _2592 = _2585;
          _2593 = _2586;
          _2594 = saturate(_2433 + 0.0625f);  // [sem: expr_sat]
        } else {
          _2590 = _2579;
          _2591 = _2580;
          _2592 = _2581;
          _2593 = _2578;
          _2594 = 0.0f;  // [sem: expr_sat]
        }
      }
    } else {
      _2578 = _2491;  // [sem: expr_sat]
      _2579 = _2550;
      _2580 = _2551;
      _2581 = _2552;
      if (!_2460) {
        _2583 = _2579;
        _2584 = _2580;
        _2585 = _2581;
        _2586 = _2578;
        _2590 = _2583;
        _2591 = _2584;
        _2592 = _2585;
        _2593 = _2586;
        _2594 = saturate(_2433 + 0.0625f);  // [sem: expr_sat]
      } else {
        _2590 = _2579;
        _2591 = _2580;
        _2592 = _2581;
        _2593 = _2578;
        _2594 = 0.0f;  // [sem: expr_sat]
      }
    }
    _2601 = (_2593 * (_1716 - _2590)) + _2590;
    _2602 = (_2593 * (_1717 - _2591)) + _2591;
    _2603 = (_2593 * (_1718 - _2592)) + _2592;
    __3__38__0__1__g_diffuseResultUAV[int2(_101, _103)] = float4((half)(half(_2601)), (half)(half(_2602)), (half)(half(_2603)), (half)(half(_2594)));
    _2610 = float(_1808);
    _2611 = float(_1809);
    _2612 = float(_1810);
    if (_1703 == 52) {
      _2619 = saturate(((_2611 + _2610) + _2612) * 1.2f);  // [sem: expr_sat]
    } else {
      _2619 = 1.0f;  // [sem: expr_sat]
    }
    _2620 = float(_1806);
    _2626 = (0.7f / min(max(max(max(_2610, _2611), _2612), 0.01f), 0.7f)) * _2619;
    _2636 = (((_2626 * _2610) + -0.04f) * _2620) + 0.04f;
    _2637 = (((_2626 * _2611) + -0.04f) * _2620) + 0.04f;
    _2638 = (((_2626 * _2612) + -0.04f) * _2620) + 0.04f;
    _2639 = select(_1777, 1.0f, ((((float(_1727.y) * _907) + (float(_1720.y) * _906)) + (float(_1736.y) * _908)) + (float(_1745.y) * _909)));
    if (!_1777) {
      _2644 = saturate(1.0f - _1752);  // [sem: expr_sat]
    } else {
      _2644 = 1.0f;  // [sem: expr_sat]
    }
    _2647 = (_1703 == 98) || (_1813 == 96);
    if (!_2647) {
      bool __branch_chain_2648;
      if ((uint)((int)(_1703) + (int)(-105)) < (uint)2) {
        _2655 = _183;
        __branch_chain_2648 = true;
      } else {
        if (!((uint)((int)(_1703) + (int)(-11)) < (uint)9)) {
          _2655 = false;
          __branch_chain_2648 = true;
        } else {
          _2698 = 0.0h;
          _2699 = _1703;
          _2700 = 0.0f;
          _2701 = 0.0f;
          _2702 = 0.0f;
          __branch_chain_2648 = false;
        }
      }
      if (__branch_chain_2648) {
        _2657 = (_1703 == 107) || _2655;
        _2660 = select(_2657, 0.0f, _1806);
        if (_2657 || (!_1771)) {
          if (!(_1703 == 33)) {
            if (_1703 == 54) {
              if (!((((int)((uint)((_1075 * 255.0f) + 0.5f))) & 112) == 0)) {
                _2683 = (uint)((_1075 * 255.0f) + 0.5f);
                _2685 = ((uint)((uint)(_2683)) >> 4) & 7;
                if (!(_2685 == 0)) {
                  _2692 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_2685) + (int)(1)))];
                  _2698 = _2660;
                  _2699 = _1703;
                  _2700 = min((1.0f - _2692.y), _2692.x);
                  _2701 = (((float)((uint)((uint)(_2683 & 15)))) * 0.06666667f);
                  _2702 = _2692.x;
                } else {
                  _2698 = _2660;
                  _2699 = _1703;
                  _2700 = 0.0f;
                  _2701 = 0.0f;
                  _2702 = 0.0f;
                }
              } else {
                _2698 = _2660;
                _2699 = 52;
                _2700 = 0.0f;
                _2701 = 0.0f;
                _2702 = 0.0f;
              }
            } else {
              if (_1703 == 55) {
                _2698 = _2660;
                _2699 = select(((((int)((uint)((_1075 * 255.0f) + 0.5f))) & 127) == 0), 52, 55);
                _2700 = 0.0f;
                _2701 = 0.0f;
                _2702 = 0.0f;
              } else {
                _2698 = _2660;
                _2699 = _1703;
                _2700 = 0.0f;
                _2701 = 0.0f;
                _2702 = 0.0f;
              }
            }
          } else {
            _2683 = (uint)((_1075 * 255.0f) + 0.5f);
            _2685 = ((uint)((uint)(_2683)) >> 4) & 7;
            if (!(_2685 == 0)) {
              _2692 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_2685) + (int)(1)))];
              _2698 = _2660;
              _2699 = _1703;
              _2700 = min((1.0f - _2692.y), _2692.x);
              _2701 = (((float)((uint)((uint)(_2683 & 15)))) * 0.06666667f);
              _2702 = _2692.x;
            } else {
              _2698 = _2660;
              _2699 = _1703;
              _2700 = 0.0f;
              _2701 = 0.0f;
              _2702 = 0.0f;
            }
          }
        } else {
          _2698 = 0.0h;
          _2699 = 65;
          _2700 = 0.0f;
          _2701 = 0.0f;
          _2702 = 0.0f;
        }
      }
    } else {
      _2698 = 0.0h;
      _2699 = _1703;
      _2700 = 0.0f;
      _2701 = 0.0f;
      _2702 = 0.0f;
    }
    _2704 = dot(float3(_1053, _1054, _1055), float3(_715, _716, _717)) * 2.0f;
    _2708 = _1053 - (_2704 * _715);
    _2709 = _1054 - (_2704 * _716);
    _2710 = _1055 - (_2704 * _717);
    _2716 = dot(float3(_1053, _1054, _1055), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
    _2724 = (_1050 * _1050) + (_1048 * _1048);
    _2726 = sqrt(_2724 + (_1049 * _1049));
    _2728 = sqrt(max(0.0f, (dot(float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z)) - (_2716 * _2716)))) / (_2726 + 5.0f);
    _2732 = float(_1807);
    if ((_1807 < 0.099975586h) && (_2728 < 0.125f)) {
      _2742 = select((_2732 < 0.8f), ((__3__36__0__0__g_specularRayHitDistance.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_111, _112), 0.0f)).x), 0.0f) * rsqrt(dot(float3(_2708, _2709, _2710), float3(_2708, _2709, _2710)));
      _2743 = _2742 * _2708;
      _2744 = _2742 * _2709;
      _2745 = _2742 * _2710;
      _2750 = dot(float3(_2743, _2744, _2745), float3((-0.0f - _715), (-0.0f - _716), (-0.0f - _717))) * 2.0f;
      _2755 = ((_2750 * _715) + _1048) + _2743;
      _2757 = ((_2750 * _716) + _1049) + _2744;
      _2759 = ((_2750 * _717) + _1050) + _2745;
      _2783 = mad((_viewProjRelative[0].z), _2759, mad((_viewProjRelative[0].y), _2757, (_2755 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w);
      _2787 = mad((_viewProjRelative[1].z), _2759, mad((_viewProjRelative[1].y), _2757, (_2755 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w);
      _2791 = mad((_viewProjRelative[2].z), _2759, mad((_viewProjRelative[2].y), _2757, (_2755 * (_viewProjRelative[2].x)))) + (_viewProjRelative[2].w);
      _2795 = mad((_viewProjRelative[3].z), _2759, mad((_viewProjRelative[3].y), _2757, (_2755 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
      _2825 = mad((_projToPrevProj[3].w), _2795, mad((_projToPrevProj[3].z), _2791, mad((_projToPrevProj[3].y), _2787, ((_projToPrevProj[3].x) * _2783))));
      _2830 = ((mad((_projToPrevProj[0].w), _2795, mad((_projToPrevProj[0].z), _2791, mad((_projToPrevProj[0].y), _2787, ((_projToPrevProj[0].x) * _2783)))) / _2825) - (_2783 / _2795)) - _1897;
      _2831 = ((mad((_projToPrevProj[1].w), _2795, mad((_projToPrevProj[1].z), _2791, mad((_projToPrevProj[1].y), _2787, ((_projToPrevProj[1].x) * _2783)))) / _2825) - (_2787 / _2795)) - _1898;
      _2839 = max(_2728, saturate(sqrt((_2831 * _2831) + (_2830 * _2830))));
    } else {
      _2839 = _2728;
    }
    _2843 = _2699 & -2;
    _2846 = (_2699 == 29);
    _2848 = select((_2846 || ((_2843 == 24) || (_renderParams.y > 0.0f))), 1.0f, _2639);
    _2852 = float(_2698);
    _2857 = min(max((_cavityParams.y + -1.0f), 0.0f), 2.0f);
    // [sem: expr_sat]
    _2883 = saturate(saturate(1.0f - (((_2852 * _123) / max(0.001f, _1825)) * 0.001f)) * 1.25f) * saturate(((((-0.05f - (_2857 * 0.075f)) + max(0.02f, _2732)) + (saturate(_123 * 0.025f) * 0.1f)) * min(max((_123 + 1.0f), 5.0f), 50.0f)) * (1.0f - (saturate(_2852) * 0.75f)));
    if (_2699 == 64) {
      _2892 = ((saturate(_123 * 0.25f) * (_2883 + -0.39990234f)) + 0.39990234f);
    } else {
      _2892 = _2883;
    }
    _2894 = (_2857 * 16.0f) + 16.0f;
    _2900 = select((_2857 > 1.0f), 0.0f, saturate((1.0f / _2894) * (_123 - _2894)));
    if (_2699 == 105) {
      _2911 = 1.0f;
      _2915 = select((_2699 == 65), 0.0f, _2911);
    } else {
      if (!((uint)(_2699 & 24) > (uint)23)) {
        _2911 = select((_2699 == 107), 1.0f, ((_2900 + _2892) - (_2900 * _2892)));
        _2915 = select((_2699 == 65), 0.0f, _2911);
      } else {
        _2915 = 0.0f;
      }
    }
    _2922 = saturate(select((_lightingParams.y == 0.0f), 1.0f, (1.0f - _2915))) * _2839;
    if ((uint)_2699 > (uint)51) {
      if ((uint)_2699 < (uint)68) {
        if (_2699 == 66) {
          _2939 = (half)(max(0.099975586h, _1807));
          _2942 = _2939;
          _2943 = (half)(max(0.89990234h, _1807));
        } else {
          _2934 = max(0.099975586h, _1807);
          if ((_2699 == 53) || (_2843 == 66)) {
            _2939 = _2934;
            _2942 = _2939;
            _2943 = (half)(max(0.89990234h, _1807));
          } else {
            _2942 = _2934;
            _2943 = _2934;
          }
        }
      } else {
        _2928 = max(0.099975586h, _1807);
        _2942 = _2928;
        _2943 = _2928;
      }
    } else {
      _2934 = max(0.099975586h, _1807);
      if ((_2699 == 53) || (_2843 == 66)) {
        _2939 = _2934;
        _2942 = _2939;
        _2943 = (half)(max(0.89990234h, _1807));
      } else {
        _2942 = _2934;
        _2943 = _2934;
      }
    }
    _2944 = float(_2943);
    _2945 = _2944 * _2944;
    _2946 = _2945 * _2945;
    _2959 = (((_2946 * _2304) - _2304) * _2304) + 1.0f;
    _2960 = (((_2946 * _2328) - _2328) * _2328) + 1.0f;
    _2961 = (((_2946 * _2280) - _2280) * _2280) + 1.0f;
    _2962 = (((_2946 * _2256) - _2256) * _2256) + 1.0f;
    _3002 = (((((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_2408, _2401, 0))).x) * saturate(_2358)) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1922, _2401, 0))).x) * saturate(_2356))) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_2408, _1923, 0))).x) * saturate(_2360))) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1922, _1923, 0))).x) * saturate(_2362));
    _3007 = saturate(select(_2846, 1.0f, saturate((_2946 / (_2959 * _2959)) * _2304)) * _2356);  // [sem: expr_sat]
    _3008 = saturate(select(_2846, 1.0f, saturate((_2946 / (_2960 * _2960)) * _2328)) * _2358);  // [sem: expr_sat]
    _3009 = saturate(select(_2846, 1.0f, saturate((_2946 / (_2961 * _2961)) * _2280)) * _2360);  // [sem: expr_sat]
    _3010 = saturate(select(_2846, 1.0f, saturate((_2946 / (_2962 * _2962)) * _2256)) * _2362);  // [sem: expr_sat]
    _3020 = exp2(log2(saturate(max(float(((half)(((half)(1.0h - _1807)) * 0.75h)) * _2698), (1.0f - _1825)))) * 0.1f);
    _3023 = float(((half)(_1807 * _1807)) + 1.0009766h);
    _3039 = select(_2846, 1.0f, saturate(((_2451 * _2451) * _2463) * exp2((log2(float(_2942)) * 0.5f) * (((_2922 * 15.0f) * ((_3020 + _3023) / (_3023 - _3020))) + 1.0f))));
    if ((uint)((int)((uint)((uint)(_2699)) + (uint)(-12))) < (uint)9) {
      _3049 = ((saturate(_123 * 0.005f) * (_3039 + -1.0f)) + 1.0f);
    } else {
      _3049 = _3039;
    }
    _3077 = mad((_projToPrevProj[3].z), _114.x, mad((_projToPrevProj[3].y), _1011, ((_projToPrevProj[3].x) * _1009))) + (_projToPrevProj[3].w);
    _3080 = ((mad((_projToPrevProj[0].z), _114.x, mad((_projToPrevProj[0].y), _1011, ((_projToPrevProj[0].x) * _1009))) + (_projToPrevProj[0].w)) / _3077) - _1009;
    _3081 = ((mad((_projToPrevProj[1].z), _114.x, mad((_projToPrevProj[1].y), _1011, ((_projToPrevProj[1].x) * _1009))) + (_projToPrevProj[1].w)) / _3077) - _1011;
    _3082 = _1897 - _3080;
    _3083 = _1898 - _3081;
    if (_1847 || ((uint)((int)((uint)((uint)(_2699)) + (uint)(-52))) < (uint)16)) {
      _3097 = (31.0f - (saturate(sqrt((_3083 * _3083) + (_3082 * _3082)) * 500.0f) * 24.0f));
    } else {
      _3097 = 63.0f;
    }
    if (_renderParams.z > 0.0f) {
      _3112 = saturate((_2922 * 200.0f) + 0.125f);  // [sem: expr_sat]
    } else {
      _3112 = 0.0f;  // [sem: expr_sat]
    }
    _3113 = max(max(saturate(_2400), saturate(max(0.0f, (1.0f / (((_3049 * _3002) * _3097) + 1.0f))))), _3112);
    _3115 = ((uint)(_2699 & 24) > (uint)23);
    [branch]
    if (_3115) {
      _3126 = (_bufferSizeAndInvSize.x * ((_3080 * 0.5f) + _111)) + -0.5f;
      _3127 = (_bufferSizeAndInvSize.y * (_112 - (_3081 * 0.5f))) + -0.5f;
      _3130 = (int)(floor(_3126));
      _3131 = (int)(floor(_3127));
      _3132 = (float)((int)(_3130));
      _3133 = (float)((int)(_3131));
      [branch]
      if (_2846) {
        // [sem: _3__36__0__0__g_stencilPrev_gather]
        _3143 = __3__36__0__0__g_stencilPrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(((_3132 + 0.5f) * _bufferSizeAndInvSize.z), ((_3133 + 0.5f) * _bufferSizeAndInvSize.w)));
        _3150 = mad(_3143.w, 16777216, mad(_3143.z, 65536, mad(_3143.y, 256, _3143.x)));
        _3179 = saturate(((float)((bool)(((uint)(_3150 & 24) > (uint)23) && ((_3150 & 127) != 24)))) * _3007);  // [sem: expr_sat]
        _3180 = saturate(((float)((bool)(((uint)(_3150 & 6144) > (uint)5888) && ((_3150 & 32512) != 6144)))) * _3008);  // [sem: expr_sat]
        // [sem: expr_sat]
        _3181 = saturate(((float)((bool)(((uint)(_3150 & 1572864) > (uint)1507328) && ((_3150 & 8323072) != 1572864)))) * _3009);
        // [sem: expr_sat]
        _3182 = saturate(((float)((bool)(((uint)(_3150 & 402653184) > (uint)385875968) && ((_3150 & 2130706432) != 402653184)))) * _3010);
        _3214 = max(saturate(min(max(((_1812 / ((_633 * 0.005f) + 1.0f)) + (_2922 * 500.0f)), 0.03125f), 0.5f) + _3113), saturate(1.0f - dot(float4(_3179, _3180, _3181, _3182), float4(1.0f, 1.0f, 1.0f, 1.0f))));
        _3215 = _3130;
        _3216 = _3131;
        _3217 = _3179;
        _3218 = _3180;
        _3219 = _3181;
        _3220 = _3182;
      } else {
        _3197 = _3126 - _3132;
        _3198 = _3127 - _3133;
        _3199 = 1.0f - _3197;
        _3200 = 1.0f - _3198;
        _3214 = (saturate((sqrt((_3081 * _3081) + (_3080 * _3080)) * 50.0f) + 0.125f) * 0.875f);
        _3215 = _3130;
        _3216 = _3131;
        _3217 = (_3199 * _3198);
        _3218 = (_3198 * _3197);
        _3219 = (_3200 * _3197);
        _3220 = (_3200 * _3199);
      }
    } else {
      _3214 = _3113;
      _3215 = _1922;
      _3216 = _1923;
      _3217 = _3007;
      _3218 = _3008;
      _3219 = _3009;
      _3220 = _3010;
    }
    _3221 = (_2852 > 0.2f);
    _3222 = (uint)((uint)(_3216)) + (uint)(1);
    half4 _3224 = __3__36__0__0__g_specularResultPrev.Load(int3(_3215, _3222, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _3237 = ((float)((bool)(!(_3221 ^ ((half)(_3224.w) < 0.0h))))) * _3217;
    _3243 = (uint)((uint)(_3215)) + (uint)(1);
    half4 _3244 = __3__36__0__0__g_specularResultPrev.Load(int3(_3243, _3222, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _3257 = ((float)((bool)(!(_3221 ^ ((half)(_3244.w) < 0.0h))))) * _3218;
    half4 _3267 = __3__36__0__0__g_specularResultPrev.Load(int3(_3243, _3216, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _3280 = ((float)((bool)(!(_3221 ^ ((half)(_3267.w) < 0.0h))))) * _3219;
    half4 _3290 = __3__36__0__0__g_specularResultPrev.Load(int3(_3215, _3216, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _3303 = ((float)((bool)(!(_3221 ^ ((half)(_3290.w) < 0.0h))))) * _3220;
    _3327 = 1.0f / max(((saturate(_123 * 0.0625f) * 0.000999f) + 1e-06f), dot(float4(_3237, _3257, _3280, _3303), float4(1.0f, 1.0f, 1.0f, 1.0f)));
    _3329 = -0.0f - (min(0.0f, (-0.0f - ((((_3237 * float(_3224.x)) + (_3257 * float(_3244.x))) + (_3280 * float(_3267.x))) + (_3303 * float(_3290.x))))) * _3327);
    _3331 = -0.0f - (min(0.0f, (-0.0f - ((((_3237 * float(_3224.y)) + (_3257 * float(_3244.y))) + (_3280 * float(_3267.y))) + (_3303 * float(_3290.y))))) * _3327);
    _3333 = -0.0f - (min(0.0f, (-0.0f - ((((_3237 * float(_3224.z)) + (_3257 * float(_3244.z))) + (_3280 * float(_3267.z))) + (_3303 * float(_3290.z))))) * _3327);
    _3334 = _3327 * min(0.0f, (-0.0f - ((((_3237 * abs(float(_3224.w))) + (_3257 * abs(float(_3244.w)))) + (_3280 * abs(float(_3267.w)))) + (_3303 * abs(float(_3290.w))))));
    _3343 = max(_3214, saturate((_2732 * _2732) * max(0.0f, saturate(((1.0f - _2639) - _2644) * 2.0f))));
    if ((_2699 != 53) && ((_2843 != 66) && (_renderParams.y == 0.0f))) {
      _3350 = dot(float3(_3329, _3331, _3333), float3(0.212671f, 0.71516f, 0.072169f));
      _3357 = ((min(_3350, _2466.z) / max(1e-09f, _3350)) * _2471) + saturate(1.0f - _2471);
      // [sem: expr_sat]
      _3378 = saturate(((_2471 * 0.5f) * saturate((((_2732 * 1000.0f) * _2922) * ((float(1.0h / ((half)(8.0h - ((half)(_1807 * 7.0h))))) * _2466.z) - _3350)) / max(1e-06f, _2466.z))) + _3343);
      _3379 = (_3357 * _3329);
      _3380 = (_3357 * _3331);
      _3381 = (_3357 * _3333);
    } else {
      _3378 = _3343;  // [sem: expr_sat]
      _3379 = _3329;
      _3380 = _3331;
      _3381 = _3333;
    }
    _3382 = _3379 * _exposure4.y;
    _3383 = _3380 * _exposure4.y;
    _3384 = _3381 * _exposure4.y;
    _3397 = ((max(0.001f, _2644) + _3334) * _3378) - _3334;
    _3407 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_2848 * ((((_970.x * _907) + (_963.x * _906)) + (_980.x * _908)) + (_990.x * _909))) - _3382) * _3378) + _3382))));
    _3408 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_2848 * ((((_970.y * _907) + (_963.y * _906)) + (_980.y * _908)) + (_990.y * _909))) - _3383) * _3378) + _3383))));
    _3409 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_2848 * ((((_970.z * _907) + (_963.z * _906)) + (_980.z * _908)) + (_990.z * _909))) - _3384) * _3378) + _3384))));
    __3__38__0__1__g_specularResultUAV[int2(_101, _103)] = float4((half)(half(_3407)), (half)(half(_3408)), (half)(half(_3409)), (half)(half(select(_3221, (-0.0f - _3397), _3397))));
    __3__38__0__1__g_specularSampleCountUAV[int2(_101, _103)] = saturate((_3002 * 0.984375f) + 0.015625f);
    _3421 = select(_3115, 0.0f, _3397);
    _3426 = float(half(lerp(_3421, 1.0f, _2732)));
    _3427 = (_2843 == 64);
    _3429 = ((int)(uint)(_184)) ^ 1;
    if ((((int)(uint)(_3427)) & _3429) == 0) {
      _3446 = saturate(exp2((_3426 * _3426) * (_123 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _3446 = select((_cavityParams.z > 0.0f), select(_184, 0.0f, _1074), 1.0f);  // [sem: expr_sat]
    }
    _3449 = (_cavityParams.x == 0.0f);
    _3450 = select(_3449, 1.0f, _3446);
    _3451 = float(_202);
    _3452 = float(_203);
    _3453 = float(_204);
    if (_3427) {
      _3459 = (_3450 * _2636);
      _3460 = (_3450 * _2637);
      _3461 = (_3450 * _2638);
    } else {
      _3459 = _2636;
      _3460 = _2637;
      _3461 = _2638;
    }
    _3463 = _2610 * 0.875f;
    _3464 = _2611 * 0.875f;
    _3465 = _2612 * 0.875f;
    if (!(_2699 == 37)) {
      _3467 = (_2699 == 55);
      _3468 = select(_3467, _3463, _3459);
      _3469 = select(_3467, _3464, _3460);
      _3470 = select(_3467, _3465, _3461);
      if ((_2699 == 53) || (_2843 == 66)) {
        // [sem: _3__36__0__0__g_hairBrdfLookup_sampleLod]
        _3485 = __3__36__0__0__g_hairBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, (1.0f - saturate(abs(dot(float3(_1700, _1701, _1702), float3(_1053, _1054, _1055)))))), (1.0f - max(0.75f, (_3426 * 2.0f)))), 0.0f);
        // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
        _3491 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1825), (1.0f - _3426)), 0.0f);
        _3498 = ((_3491.x - _3485.x) * _1698) + _3485.x;
        _3499 = ((_3491.y - _3485.y) * _1698) + _3485.y;
        _3501 = (_3498 * 0.01f) + _3499;
        _3668 = _3498;
        _3669 = _3499;
        _3670 = _3501;
        _3671 = _3501;
        _3672 = _3501;
      } else {
        if ((uint)((int)((uint)((uint)(_2699)) + (uint)(-97))) < (uint)2) {
          if (!(abs(_3452) > 0.99f)) {
            _3509 = -0.0f - _3453;
            _3511 = rsqrt(dot(float3(_3509, 0.0f, _3451), float3(_3509, 0.0f, _3451)));  // [sem: invLength]
            _3515 = (_3511 * _3509);
            _3516 = (_3511 * _3451);
          } else {
            _3515 = 1.0f;
            _3516 = 0.0f;
          }
          _3518 = -0.0f - (_3452 * _3516);
          _3521 = (_3516 * _3451) - (_3515 * _3453);
          _3522 = _3515 * _3452;
          _3524 = rsqrt(dot(float3(_3518, _3521, _3522), float3(_3518, _3521, _3522)));  // [sem: invLength]
          _3532 = _viewPos.x + _1048;
          _3533 = _viewPos.y + _1049;
          _3534 = _viewPos.z + _1050;
          // [sem: _3__36__0__0__g_blueNoise_sampleLod]
          _3539 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_3515, 0.0f, _3516), float3(_3532, _3533, _3534)), dot(float3((_3524 * _3518), (_3521 * _3524), (_3524 * _3522)), float3(_3532, _3533, _3534))), 0.0f);
          _3543 = _3539.x + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _3544 = _3539.y + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _3545 = _3539.z + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _3547 = rsqrt(dot(float3(_3543, _3544, _3545), float3(_3543, _3544, _3545)));  // [sem: invLength]
          _3551 = (_3543 * _3547) + _715;
          _3552 = (_3544 * _3547) + _716;
          _3553 = (_3545 * _3547) + _717;
          _3555 = rsqrt(dot(float3(_3551, _3552, _3553), float3(_3551, _3552, _3553)));  // [sem: invLength]
          // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
          _3568 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1825), (1.0f - _3426)), 0.0f);
          _3575 = _3568.y + (exp2(log2(saturate(dot(float3(_1817, _1818, _1819), float3((_3551 * _3555), (_3552 * _3555), (_3553 * _3555))))) * 512.0f) * 20.0f);
          _3668 = _3568.x;
          _3669 = _3568.y;
          _3670 = (_3575 + (_3568.x * _3468));
          _3671 = (_3575 + (_3568.x * _3469));
          _3672 = (_3575 + (_3568.x * _3470));
        } else {
          _3580 = _3468;
          _3581 = _3469;
          _3582 = _3470;
          if (_3427) {
            if (_2699 == 65) {
              _3651 = _3580;
              _3652 = _3581;
              _3653 = _3582;
              // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
              _3658 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1825), (1.0f - _3426)), 0.0f);
              _3668 = _3658.x;
              _3669 = _3658.y;
              _3670 = ((_3658.x * _3651) + _3658.y);
              _3671 = ((_3658.x * _3652) + _3658.y);
              _3672 = ((_3658.x * _3653) + _3658.y);
            } else {
              _3588 = min(0.99f, _1825);
              // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
              _3593 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_3588, saturate(1.0f - (_3426 * 1.33f))), 0.0f);
              // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
              _3598 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_3588, saturate(1.0f - (_3426 * 0.47998047f))), 0.0f);
              _3602 = (_3598.x + _3593.x) * 0.5f;
              _3604 = (_3598.y + _3593.y) * 0.5f;
              _3668 = _3602;
              _3669 = _3604;
              _3670 = ((_3602 * _3580) + _3604);
              _3671 = ((_3602 * _3581) + _3604);
              _3672 = ((_3602 * _3582) + _3604);
            }
          } else {
            if ((_2699 == 33) || (_2699 == 54)) {
              _3621 = max(dot(float3(_2610, _2611, _2612), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
              _3625 = sqrt(_2610) - _3621;
              _3626 = sqrt(_2611) - _3621;
              _3627 = sqrt(_2612) - _3621;
              _3634 = saturate(1.0f - (pow(_1825, 4.0f)));  // [sem: expr_sat]
              _3651 = ((((_3625 * _2700) + _3621) + (_3634 * (_3625 * (_2702 - _2700)))) * _2701);
              _3652 = ((((_3626 * _2700) + _3621) + ((_3626 * (_2702 - _2700)) * _3634)) * _2701);
              _3653 = ((((_3627 * _2700) + _3621) + ((_3627 * (_2702 - _2700)) * _3634)) * _2701);
            } else {
              _3651 = _3580;
              _3652 = _3581;
              _3653 = _3582;
            }
            // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
            _3658 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1825), (1.0f - _3426)), 0.0f);
            _3668 = _3658.x;
            _3669 = _3658.y;
            _3670 = ((_3658.x * _3651) + _3658.y);
            _3671 = ((_3658.x * _3652) + _3658.y);
            _3672 = ((_3658.x * _3653) + _3658.y);
          }
        }
      }
    } else {
      _3580 = _3463;
      _3581 = _3464;
      _3582 = _3465;
      if (_3427) {
        if (_2699 == 65) {
          _3651 = _3580;
          _3652 = _3581;
          _3653 = _3582;
          // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
          _3658 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1825), (1.0f - _3426)), 0.0f);
          _3668 = _3658.x;
          _3669 = _3658.y;
          _3670 = ((_3658.x * _3651) + _3658.y);
          _3671 = ((_3658.x * _3652) + _3658.y);
          _3672 = ((_3658.x * _3653) + _3658.y);
        } else {
          _3588 = min(0.99f, _1825);
          // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
          _3593 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_3588, saturate(1.0f - (_3426 * 1.33f))), 0.0f);
          // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
          _3598 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_3588, saturate(1.0f - (_3426 * 0.47998047f))), 0.0f);
          _3602 = (_3598.x + _3593.x) * 0.5f;
          _3604 = (_3598.y + _3593.y) * 0.5f;
          _3668 = _3602;
          _3669 = _3604;
          _3670 = ((_3602 * _3580) + _3604);
          _3671 = ((_3602 * _3581) + _3604);
          _3672 = ((_3602 * _3582) + _3604);
        }
      } else {
        if ((_2699 == 33) || (_2699 == 54)) {
          _3621 = max(dot(float3(_2610, _2611, _2612), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
          _3625 = sqrt(_2610) - _3621;
          _3626 = sqrt(_2611) - _3621;
          _3627 = sqrt(_2612) - _3621;
          _3634 = saturate(1.0f - (pow(_1825, 4.0f)));  // [sem: expr_sat]
          _3651 = ((((_3625 * _2700) + _3621) + (_3634 * (_3625 * (_2702 - _2700)))) * _2701);
          _3652 = ((((_3626 * _2700) + _3621) + ((_3626 * (_2702 - _2700)) * _3634)) * _2701);
          _3653 = ((((_3627 * _2700) + _3621) + ((_3627 * (_2702 - _2700)) * _3634)) * _2701);
        } else {
          _3651 = _3580;
          _3652 = _3581;
          _3653 = _3582;
        }
        // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
        _3658 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1825), (1.0f - _3426)), 0.0f);
        _3668 = _3658.x;
        _3669 = _3658.y;
        _3670 = ((_3658.x * _3651) + _3658.y);
        _3671 = ((_3658.x * _3652) + _3658.y);
        _3672 = ((_3658.x * _3653) + _3658.y);
      }
    }
    _3675 = select((_3427 || _3115), 1.0f, _3450) * _2533;
    _3682 = _2601 * _2533;
    _3683 = _2602 * _2533;
    _3684 = _2603 * _2533;
    if (_2045 || _1777) {
      _3938 = _1806;
      _3939 = _1807;
      _3940 = _1808;
      _3941 = _1809;
      _3942 = _1810;
      _3943 = _3421;
      if (_1816) {
        _3949 = _3943;
        _3950 = _3940;
        _3951 = _3941;
        _3952 = _3942;
        _3953 = _3939;
        _3954 = _3938;
        _3955 = 0.0f;
        _3956 = 0.0f;
        _3957 = 0.0f;
        _3958 = (_3682 * _1707);
        _3959 = (_3683 * _1708);
        _3960 = (_3684 * _1709);
      } else {
        _3949 = _3943;
        _3950 = _3940;
        _3951 = _3941;
        _3952 = _3942;
        _3953 = _3939;
        _3954 = _3938;
        _3955 = _3682;
        _3956 = _3683;
        _3957 = _3684;
        _3958 = 0.0f;
        _3959 = 0.0f;
        _3960 = 0.0f;
      }
    } else {
      if (!((_1703 == 6) || ((_1813 == 106) || (((uint)((int)(_1703) + (int)(-27)) < (uint)2) || ((_1703 == 105) || (_1703 == 26)))))) {
        if (!(_1703 == 7)) {
          _3705 = exp2(log2(_3421) * (saturate(_123 * 0.03125f) + 1.0f));
          // [sem: _3__36__0__0__g_puddleMask_sampleLod]
          _3715 = __3__36__0__0__g_puddleMask.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_111, _112), 0.0f);
          bool __branch_chain_3699;
          if ((_1703 == 15) || ((_1813 == 12) || ((_1703 & -4) == 16))) {
            _3734 = false;
            _3735 = true;
            __branch_chain_3699 = true;
          } else {
            if (!((uint)_1703 > (uint)10)) {
              _3734 = true;
              _3735 = false;
              __branch_chain_3699 = true;
            } else {
              if ((uint)_1703 < (uint)20) {
                _3734 = false;
                _3735 = false;
                __branch_chain_3699 = true;
              } else {
                if (!(_1703 == 97)) {
                  _3734 = (_1703 != 107);
                  _3735 = false;
                  __branch_chain_3699 = true;
                } else {
                  _3927 = _2620;
                  _3928 = _2732;
                  _3929 = _2610;
                  _3930 = _2611;
                  _3931 = _2612;
                  __branch_chain_3699 = false;
                }
              }
            }
          }
          if (__branch_chain_3699) {
            if (_3715.w < 1.0f) {
              if ((_weatherCheckFlag & 5) == 5) {
                _3745 = (_1703 == 36);
                if (!_3745) {
                  // [sem: _3__36__0__0__g_climateSandTex_sampleLod]
                  _3765 = __3__36__0__0__g_climateSandTex.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((_viewPos.x + _1048) / _climateTextureOnePixelMeter.x) + ((float)((int)((int)(_climateTextureSize.x) >> 1)))) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((_viewPos.z + _1050) / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                  _3771 = _3765.x;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3772 = _3765.y;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3773 = _3765.z;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3774 = _3765.w;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                } else {
                  _3771 = 0.12f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3772 = 0.12f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3773 = 0.1f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3774 = 0.5f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                }
                _3781 = 1.0f - saturate(((_viewPos.y + _1049) - _paramGlobalSand.x) / _paramGlobalSand.y);
                if (!(_3781 <= 0.0f)) {
                  _3784 = saturate(_3705);  // [sem: _3705_sat]
                  _3797 = ((_3772 * 0.33951f) + (_3771 * 0.61312f)) + (_3773 * 0.04737f);
                  _3798 = ((_3772 * 0.91636f) + (_3771 * 0.0702f)) + (_3773 * 0.01345f);
                  _3799 = ((_3772 * 0.10958f) + (_3771 * 0.02062f)) + (_3773 * 0.8698f);
                  _3804 = select(_3735, 1.0f, ((float)((bool)(saturate(dot(float3(_715, _716, _717), float3(0.0f, 1.0f, 0.0f))) > 0.5f))));
                  if (_enableSandAO == 1) {
                    _3809 = 1.0f - _3715.x;  // [sem: _3__36__0__0__g_puddleMask_sampleLod_derived]
                    if (_3745) {
                      _3840 = ((((_3809 * 10.0f) * _3774) * _3781) * _3784);
                      _3843 = _3797;
                      _3844 = _3798;
                      _3845 = _3799;
                      _3846 = saturate(_3840);  // [sem: _3840_sat]
                    } else {
                      _3820 = saturate(_3774 + -0.5f);  // [sem: expr_sat]
                      _3843 = _3797;
                      _3844 = _3798;
                      _3845 = _3799;
                      // [sem: _3840_sat]
                      _3846 = ((((_3820 * 2.0f) * max((_3804 * _3715.x), min((_3784 * ((_3715.x * 7.0f) + 3.0f)), (_3820 * 40.0f)))) + (((_3809 * 10.0f) * _3784) * saturate((0.5f - _3774) * 2.0f))) * _3781);
                    }
                  } else {
                    _3838 = ((_3781 * _3774) * _3715.x) * _3804;
                    if (_3745) {
                      _3840 = _3838;
                      _3843 = _3797;
                      _3844 = _3798;
                      _3845 = _3799;
                      _3846 = saturate(_3840);  // [sem: _3840_sat]
                    } else {
                      _3843 = _3797;
                      _3844 = _3798;
                      _3845 = _3799;
                      _3846 = _3838;  // [sem: _3840_sat]
                    }
                  }
                } else {
                  _3843 = 0.0f;
                  _3844 = 0.0f;
                  _3845 = 0.0f;
                  _3846 = 0.0f;  // [sem: _3840_sat]
                }
                _3850 = ((1.0f - _3715.w) * (1.0f - _3715.y)) * _3846;
                _3851 = (_3850 > 0.0001f);
                if (_3851) {
                  if (_3735) {
                    _3854 = saturate(_3850);  // [sem: _3850_sat]
                    _3881 = (((sqrt(_3843 * _2610) - _2610) * _3854) + _2610);
                    _3882 = (((sqrt(_3844 * _2611) - _2611) * _3854) + _2611);
                    _3883 = (((sqrt(_3845 * _2612) - _2612) * _3854) + _2612);
                  } else {
                    _3881 = ((_3850 * (_3843 - _2610)) + _2610);
                    _3882 = ((_3850 * (_3844 - _2611)) + _2611);
                    _3883 = ((_3850 * (_3845 - _2612)) + _2612);
                  }
                } else {
                  _3881 = _2610;
                  _3882 = _2611;
                  _3883 = _2612;
                }
                if (_3745 && _3851) {
                  if (_3735) {
                    _3898 = (((sqrt(_2732 * 0.25f) - _2732) * saturate(_3850)) + _2732);
                  } else {
                    _3898 = ((_3850 * (0.25f - _2732)) + _2732);
                  }
                } else {
                  _3898 = _2732;
                }
                _3899 = saturate(_3881);  // [sem: _3881_sat]
                _3900 = saturate(_3882);  // [sem: _3882_sat]
                _3901 = saturate(_3883);  // [sem: _3883_sat]
                _3906 = (_3898 * (1.0f - _3705)) + _3705;
                _3909 = ((_3898 - _3906) * _3715.y) + _3906;
                _3916 = (((_3705 * _3705) * _3715.z) * ((float)((bool)(_3734)))) * saturate(dot(float3(_715, _716, _717), float3(0.0f, 1.0f, 0.0f)));
                _3917 = _3916 * -0.5f;
                _3927 = (_2620 - (_3705 * _2620));
                _3928 = (_3909 - (_3916 * _3909));
                _3929 = ((_3917 * _3899) + _3899);
                _3930 = ((_3917 * _3900) + _3900);
                _3931 = ((_3917 * _3901) + _3901);
              } else {
                _3927 = _2620;
                _3928 = _2732;
                _3929 = _2610;
                _3930 = _2611;
                _3931 = _2612;
              }
            } else {
              _3927 = _2620;
              _3928 = _2732;
              _3929 = _2610;
              _3930 = _2611;
              _3931 = _2612;
            }
          }
          _3938 = (half)(half(_3927));
          _3939 = (half)(half(_3928));
          _3940 = (half)(half(_3929));
          _3941 = (half)(half(_3930));
          _3942 = (half)(half(_3931));
          _3943 = _3705;
        } else {
          _3938 = _1806;
          _3939 = _1807;
          _3940 = _1808;
          _3941 = _1809;
          _3942 = _1810;
          _3943 = _3421;
        }
        if (_1816) {
          _3949 = _3943;
          _3950 = _3940;
          _3951 = _3941;
          _3952 = _3942;
          _3953 = _3939;
          _3954 = _3938;
          _3955 = 0.0f;
          _3956 = 0.0f;
          _3957 = 0.0f;
          _3958 = (_3682 * _1707);
          _3959 = (_3683 * _1708);
          _3960 = (_3684 * _1709);
        } else {
          _3949 = _3943;
          _3950 = _3940;
          _3951 = _3941;
          _3952 = _3942;
          _3953 = _3939;
          _3954 = _3938;
          _3955 = _3682;
          _3956 = _3683;
          _3957 = _3684;
          _3958 = 0.0f;
          _3959 = 0.0f;
          _3960 = 0.0f;
        }
      } else {
        _3949 = _3421;
        _3950 = _1808;
        _3951 = _1809;
        _3952 = _1810;
        _3953 = _1807;
        _3954 = _1806;
        _3955 = _3682;
        _3956 = _3683;
        _3957 = _3684;
        _3958 = 0.0f;
        _3959 = 0.0f;
        _3960 = 0.0f;
      }
    }
    half4 _3962 = __3__36__0__0__g_sceneShadowColor.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_sceneShadowColor_load]
    _3967 = float(_3962.x);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    _3968 = float(_3962.y);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    _3969 = float(_3962.z);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    [branch]
    if (_1777) {
      _3973 = __3__36__0__0__g_sceneNormal.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
      _3989 = min(1.0f, ((((float)((uint)((uint)(_3973.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _3990 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_3973.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _3991 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_3973.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _3993 = rsqrt(dot(float3(_3989, _3990, _3991), float3(_3989, _3990, _3991)));  // [sem: invLength]
      _4001 = (half)(half(_3993 * _3989));
      _4002 = (half)(half(_3993 * _3990));
      _4003 = (half)(half(_3993 * _3991));
    } else {
      _4001 = _524;
      _4002 = _525;
      _4003 = _526;
    }
    _4006 = (_sunDirection.y > 0.0f);
    if ((_4006) || ((!(_4006)) && (_sunDirection.y > _moonDirection.y))) {
      _4018 = _sunDirection.x;
      _4019 = _sunDirection.y;
      _4020 = _sunDirection.z;
    } else {
      _4018 = _moonDirection.x;
      _4019 = _moonDirection.y;
      _4020 = _moonDirection.z;
    }
    if ((_4006) || ((!(_4006)) && (_sunDirection.y > _moonDirection.y))) {
      _4040 = _precomputedAmbient7.y;
    } else {
      _4040 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
    }
    _4047 = _viewPos.x + _1048;
    _4048 = _viewPos.y + _1049;
    _4049 = _4048 + _earthRadius;
    _4050 = _viewPos.z + _1050;
    _4056 = sqrt(((_4047 * _4047) + (_4049 * _4049)) + (_4050 * _4050));
    _4061 = dot(float3((_4047 / _4056), (_4049 / _4056), (_4050 / _4056)), float3(_4018, _4019, _4020));
    _4067 = min(max(((_4056 - _earthRadius) / _atmosphereThickness), 16.0f), (_atmosphereThickness + -16.0f));
    _4075 = max(_4067, 0.0f);
    _4082 = (-0.0f - sqrt((_4075 + (_earthRadius * 2.0f)) * _4075)) / (_4075 + _earthRadius);
    if (_4061 > _4082) {
      _4105 = ((exp2(log2(saturate((_4061 - _4082) / (1.0f - _4082))) * 0.2f) * 0.4921875f) + 0.50390625f);
    } else {
      _4105 = ((exp2(log2(saturate((_4082 - _4061) / (_4082 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
    }
    // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
    _4110 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_4067 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f), _4105), 0.0f);
    _4132 = ((_4110.y * 2e-05f) * _mieAerosolDensity) * (_mieAerosolAbsorption + 1.0f);  // [sem: _3__36__0__0__g_texNetDensity_sampleLod_derived]
    _4150 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.0556001e-06f)) * _4110.x) + _4132) * -1.442695f);
    _4151 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 4.9788005e-06f)) * _4110.x) + _4132) * -1.442695f);
    _4152 = exp2(((((_ozoneRatio * 2.1360002e-07f) + (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f)) * _4110.x) + _4132) * -1.442695f);
    _4168 = sqrt(_2724);
    _4176 = (_cloudAltitude - (max(((_4168 * _4168) + -400000.0f), 0.0f) * 1e-06f)) - _viewPos.y;
    _4188 = (_cloudThickness * (0.5f - (((float)((int)((int)((int)(uint)((int)(_4019 > 0.0f))) - (int)((int)(uint)((int)(_4019 < 0.0f)))))) * 0.5f))) + _4176;
    if (_1049 < _4176) {
      _4191 = dot(float3(0.0f, 1.0f, 0.0f), float3(_4018, _4019, _4020));
      _4197 = select((abs(_4191) < 1e-08f), 1e+08f, ((_4188 - dot(float3(0.0f, 1.0f, 0.0f), float3(_1048, _1049, _1050))) / _4191));
      _4203 = ((_4197 * _4018) + _1048);
      _4204 = _4188;
      _4205 = ((_4197 * _4020) + _1050);
    } else {
      _4203 = _1048;
      _4204 = _1049;
      _4205 = _1050;
    }
    _4225 = saturate(abs(_4019) * 4.0f);  // [sem: expr_sat]
    _4227 = (_4225 * _4225) * exp2(((_distanceScale * -1.442695f) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_4203 * 5e-05f) + 0.5f), ((_4204 - _4176) / _cloudThickness), ((_4205 * 5e-05f) + 0.5f)), 0.0f)).x)) * (_cloudScatteringCoefficient / _distanceScale));
    _4234 = ((1.0f - _4227) * saturate(((_1049 - _cloudThickness) - _4176) * 0.1f)) + _4227;
    _4235 = _4234 * (((_4151 * 0.33951f) + (_4150 * 0.61312f)) + (_4152 * 0.04737f));
    _4236 = _4234 * (((_4151 * 0.91636f) + (_4150 * 0.0702f)) + (_4152 * 0.01345f));
    _4237 = _4234 * (((_4151 * 0.10958f) + (_4150 * 0.02062f)) + (_4152 * 0.8698f));
    _4257 = float(_3950);
    _4258 = float(_3951);
    _4259 = float(_3952);
    if (!_2647) {
      _4265 = (_183 && ((uint)((int)(_1703) + (int)(-105)) < (uint)2));
    } else {
      _4265 = true;
    }
    _4267 = float(max(0.010002136h, _3953));
    _4268 = float(_3954);
    _4271 = (_1703 == 107);
    _4274 = _1771 || (((uint)((int)(_1703) + (int)(-11)) < (uint)9) || (_4271 || _4265));
    if ((_1813 == 26) || ((_1703 == 105) || (_1703 == 28))) {
      _4285 = true;
      _4287 = _4285;
      _4288 = _4271;
    } else {
      _4282 = (_1703 == 106);
      if (!(_1703 == 19)) {
        _4285 = _4282;
        _4287 = _4285;
        _4288 = _4271;
      } else {
        _4287 = _4282;
        _4288 = true;
      }
    }
    _4289 = float(_4001);
    _4290 = float(_4002);
    _4291 = float(_4003);
    _4293 = __3__36__0__0__g_sceneDecalMask.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_sceneDecalMask_load]
    if (_1703 == 97) {
      _4305 = (((float)((uint16_t)((int16_t)((uint16_t)((int16_t)(_4293.x)) >> 2)))) * 0.015873017f);
      _4306 = ((int)((uint)((uint)((int)(min16uint)((int)((int)(_4293.x) & 2)))) >> 1) + (int)(97));
      _4307 = 0.0f;
      _4308 = 0.0f;
      _4309 = 0.0f;
      _4310 = 0.0f;
    } else {
      _4305 = select(_4274, _4268, 0.0f);
      _4306 = _1703;
      _4307 = _1121;
      _4308 = _1122;
      _4309 = _1123;
      _4310 = _1124;
    }
    _4315 = float(saturate(_203));
    _4316 = _4315 * _4315;
    _4317 = _4316 * _4316;
    _4318 = _4317 * _4317;
    _4329 = ((_4318 * _4318) * select((_2455 || (_4287 || _4288)), 0.0f, 1.0f)) * (((float4)(__3__36__0__0__g_puddleMask.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((_bufferSizeAndInvSize.z * _106), (_bufferSizeAndInvSize.w * _107)), 0.0f))).y);
    _4334 = _4289 - (_4329 * _4289);
    _4335 = (_4329 * (1.0f - _4290)) + _4290;
    _4336 = _4291 - (_4329 * _4291);
    _4338 = rsqrt(dot(float3(_4334, _4335, _4336), float3(_4334, _4335, _4336)));  // [sem: invLength]
    _4339 = _4334 * _4338;
    _4340 = _4335 * _4338;
    _4341 = _4336 * _4338;
    _4344 = (_4306 == 37) || (_4306 == 55);
    _4346 = select((_4274 || _4344), 0.0f, _4268);
    _4347 = (_4306 == 52);
    if (_4347) {
      _4354 = saturate(((_4258 + _4257) + _4259) * 1.2f);  // [sem: expr_sat]
    } else {
      _4354 = 1.0f;  // [sem: expr_sat]
    }
    _4360 = (0.7f / min(max(max(max(_4257, _4258), _4259), 0.01f), 0.7f)) * _4354;
    _4370 = (((_4360 * _4257) + -0.04f) * _4346) + 0.04f;
    _4371 = (((_4360 * _4258) + -0.04f) * _4346) + 0.04f;
    _4372 = (((_4360 * _4259) + -0.04f) * _4346) + 0.04f;
    _4373 = float(_3953);
    _4374 = _4306 & -2;
    _4375 = (_4374 == 64);
    _4378 = ((((int)(uint)(_4375)) & _3429) == 0);
    if (_4378) {
      _4391 = saturate(exp2((_4373 * _4373) * (_123 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _4391 = select((_cavityParams.z > 0.0f), select(_184, 0.0f, _1074), 1.0f);  // [sem: expr_sat]
    }
    _4392 = select(_3449, 1.0f, _4391);
    if (_4375) {
      _4398 = (_4392 * _4370);
      _4399 = (_4392 * _4371);
      _4400 = (_4392 * _4372);
    } else {
      _4398 = _4370;
      _4399 = _4371;
      _4400 = _4372;
    }
    _4401 = _4267 * _4267;
    _4402 = _4401 * _4401;
    _4404 = ((uint)((int)(_4306) + (int)(-97)) < (uint)2);
    _4406 = select(_4404, 0.5f, (_4267 * 0.60009766f));
    _4407 = _4406 * _4406;
    _4408 = _4407 * _4407;
    if (!((_4306 == 98) || (_4374 == 96))) {
      if ((uint)((int)(_4306) + (int)(-105)) < (uint)2) {
        _4424 = _183;
        _4427 = _4424;
        _4428 = (_4306 == 7);
      } else {
        if ((uint)_4306 > (uint)11) {
          if (!(((uint)_4306 < (uint)21) || (_4306 == 107))) {
            _4424 = false;
            _4427 = _4424;
            _4428 = (_4306 == 7);
          } else {
            _4427 = false;
            _4428 = true;
          }
        } else {
          if (!(_4306 == 6)) {
            _4424 = false;
            _4427 = _4424;
            _4428 = (_4306 == 7);
          } else {
            _4427 = false;
            _4428 = true;
          }
        }
      }
    } else {
      _4424 = true;
      _4427 = _4424;
      _4428 = (_4306 == 7);
    }
    _4433 = exp2(log2(float(_3962.w)) * 2.2f) * 1000.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    if ((_4006) || ((!(_4006)) && (_sunDirection.y > _moonDirection.y))) {
      _4445 = _sunDirection.x;
      _4446 = _sunDirection.y;
      _4447 = _sunDirection.z;
    } else {
      _4445 = _moonDirection.x;
      _4446 = _moonDirection.y;
      _4447 = _moonDirection.z;
    }
    _4448 = _lightingParams.x * _4040;
    _4449 = (((_4235 * 0.61312f) + (_4236 * 0.33951f)) + (_4237 * 0.04737f)) * _4448;
    _4450 = (((_4235 * 0.0702f) + (_4236 * 0.91636f)) + (_4237 * 0.01345f)) * _4448;
    _4451 = (((_4235 * 0.02062f) + (_4236 * 0.10958f)) + (_4237 * 0.8698f)) * _4448;
    _4452 = _4445 - _1053;
    _4453 = _4446 - _1054;
    _4454 = _4447 - _1055;
    _4456 = rsqrt(dot(float3(_4452, _4453, _4454), float3(_4452, _4453, _4454)));  // [sem: invLength]
    _4457 = _4456 * _4452;
    _4458 = _4456 * _4453;
    _4459 = _4456 * _4454;
    _4460 = dot(float3(_4289, _4290, _4291), float3(_4445, _4446, _4447));
    _4461 = dot(float3(_4339, _4340, _4341), float3(_4445, _4446, _4447));
    _4463 = saturate(dot(float3(_4289, _4290, _4291), float3(_1817, _1818, _1819)));  // [sem: expr_sat]
    _4465 = saturate(dot(float3(_4339, _4340, _4341), float3(_4457, _4458, _4459)));  // [sem: expr_sat]
    _4466 = dot(float3(_1817, _1818, _1819), float3(_4457, _4458, _4459));
    _4468 = saturate(dot(float3(_4445, _4446, _4447), float3(_4457, _4458, _4459)));  // [sem: expr_sat]
    _4469 = (_4374 == 66);
    _4470 = (_4306 == 53);
    _4471 = _4470 || _4469;
    if (_4471) {
      if (_4470) {
        _4488 = (((asfloat(_globalLightParams.z) * _4267) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_278)));
      } else {
        _4488 = _bevelParams.y;
      }
      _4503 = (_2726 * 2.0f) + 1.0f;
      _4507 = (_1698 * 7.0f) + 1.0f;
      // [sem: _3__36__0__0__g_blueNoise_sampleLod]
      _4512 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2((((dot(float3(_1048, _1049, _1050), float3(((_1702 * _3452) - (_1701 * _3453)), ((_1700 * _3453) - (_1702 * _3451)), ((_1701 * _3451) - (_1700 * _3452)))) * 2.0f) / _4503) * _4507), (((dot(float3(_1048, _1049, _1050), float3(_1700, _1701, _1702)) * 0.5f) / _4503) * _4507)), 0.0f);
      _4516 = _1698 * 0.5f;
      _4517 = _4512.x * 2.0f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
      _4518 = _4512.y * 2.0f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
      _4519 = _4512.z * 2.0f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
      _4530 = dot(float3(_1700, _1701, _1702), float3(_4445, _4446, _4447));
      _4531 = dot(float3(_1700, _1701, _1702), float3(_1817, _1818, _1819));
      _4537 = cos(abs(asin(_4531) - asin(_4530)) * 0.5f);
      _4541 = _4445 - (_4530 * _1700);
      _4542 = _4446 - (_4530 * _1701);
      _4543 = _4447 - (_4530 * _1702);
      _4547 = _1817 - (_4531 * _1700);
      _4548 = _1818 - (_4531 * _1701);
      _4549 = _1819 - (_4531 * _1702);
      // [sem: invLength]
      _4556 = rsqrt((dot(float3(_4547, _4548, _4549), float3(_4547, _4548, _4549)) * dot(float3(_4541, _4542, _4543), float3(_4541, _4542, _4543))) + 0.0001f) * dot(float3(_4541, _4542, _4543), float3(_4547, _4548, _4549));
      _4560 = sqrt(saturate((_4556 * 0.5f) + 0.5f));
      _4567 = min(max(max(0.05f, _4267), 0.09803922f), 1.0f);
      _4568 = _4567 * _4567;
      _4569 = _4568 * 0.5f;
      _4570 = _4568 * 2.0f;
      _4571 = _4531 + _4530;
      _4572 = _4571 + (_4488 * 2.0f);
      _4574 = (_4560 * 1.4142135f) * _4568;
      _4588 = 1.0f - sqrt(saturate((dot(float3(_1817, _1818, _1819), float3(_4445, _4446, _4447)) * 0.5f) + 0.5f));
      _4589 = _4588 * _4588;
      _4596 = _4571 - _4488;
      _4605 = 1.0f / ((1.19f / _4537) + (_4537 * 0.36f));
      _4610 = ((_4605 * (0.6f - (_4556 * 0.8f))) + 1.0f) * _4560;
      _4616 = 1.0f - (sqrt(saturate(1.0f - (_4610 * _4610))) * _4537);
      _4617 = _4616 * _4616;
      _4621 = 0.9534794f - ((_4617 * _4617) * (_4616 * 0.9534794f));
      _4622 = _4605 * _4610;
      _4627 = (sqrt(1.0f - (_4622 * _4622)) * 0.5f) / _4537;
      _4628 = log2(_4257);
      _4629 = log2(_4258);
      _4630 = log2(_4259);
      _4642 = ((_4621 * _4621) * (exp2((((_4596 * _4596) * -0.5f) / (_4569 * _4569)) * 1.442695f) / (_4568 * 1.2533141f))) * exp2(-5.741926f - (_4556 * 5.265837f));
      _4646 = _4571 - (_4488 * 4.0f);
      _4656 = 1.0f - (_4537 * 0.5f);
      _4657 = _4656 * _4656;
      _4661 = (_4657 * _4657) * (0.9534794f - (_4537 * 0.4767397f));
      _4663 = 0.9534794f - _4661;
      _4664 = 0.8f / _4537;
      _4677 = (((_4663 * _4663) * (_4661 + 0.046520565f)) * (exp2((((_4646 * _4646) * -0.5f) / (_4570 * _4570)) * 1.442695f) / (_4568 * 5.0132565f))) * exp2((_4556 * 24.525816f) + -24.208424f);
      _4684 = saturate(_4461);  // [sem: _4461_sat]
      _4685 = (((_4560 * 0.25f) * (exp2((((_4572 * _4572) * -0.5f) / (_4574 * _4574)) * 1.442695f) / (_4574 * 2.5066283f))) * (((_4589 * _4589) * (_4588 * 0.9534794f)) + 0.046520565f)) * _4684;
      _4695 = -0.0f - _4684;
      _4706 = saturate((_4461 + 1.0f) * 0.25f);  // [sem: expr_sat]
      _4711 = max(0.001f, dot(float3(_4257, _4258, _4259), float3(0.3f, 0.59f, 0.11f)));
      _4730 = ((((1.0f - abs(_4461)) - _4706) * 0.33f) + _4706) * 0.07957747f;
      _4732 = (exp2(log2(_4257 / _4711) * (1.0f - _3967)) * _4730) * sqrt(_4257);
      _4734 = (exp2(log2(_4258 / _4711) * (1.0f - _3968)) * _4730) * sqrt(_4258);
      _4736 = (exp2(log2(_4259 / _4711) * (1.0f - _3969)) * _4730) * sqrt(_4259);
      _4743 = min(2048.0f, (-0.0f - min(0.0f, min(0.0f, (((_4677 * exp2(_4664 * _4628)) + (_4642 * exp2(_4628 * _4627))) * _4695)))));
      _4744 = min(2048.0f, (-0.0f - min(0.0f, min(0.0f, (((_4677 * exp2(_4664 * _4629)) + (_4642 * exp2(_4629 * _4627))) * _4695)))));
      _4745 = min(2048.0f, (-0.0f - min(0.0f, min(0.0f, (((_4677 * exp2(_4664 * _4630)) + (_4642 * exp2(_4630 * _4627))) * _4695)))));
      _4752 = -0.0f - min(0.0f, (min(0.0f, (-0.0f - ((lerp(_4517, 1.0f, _4516)) * _4685))) * _3967));
      _4753 = -0.0f - min(0.0f, (min(0.0f, (-0.0f - ((lerp(_4518, 1.0f, _4516)) * _4685))) * _3968));
      _4754 = -0.0f - min(0.0f, (min(0.0f, (-0.0f - ((lerp(_4519, 1.0f, _4516)) * _4685))) * _3969));
      if (!_4469) {
        _4756 = _4743;
        _4757 = _4744;
        _4758 = _4745;
        _4759 = _4752;
        _4760 = _4753;
        _4761 = _4754;
        _4762 = _4732;
        _4763 = _4734;
        _4764 = _4736;
        if (!_4470) {
          _4766 = (_4306 == 33);
          _4767 = (_4306 == 54);
          _4768 = _4766 || _4767;
          if (_4768) {
            _4783 = (saturate(_4460) * 0.31830987f) * (((saturate(1.0f - _effectiveMetallicForVelvet) + -1.0f) * _4310) + 1.0f);
            _4789 = max(dot(float3(_4257, _4258, _4259), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
            _4790 = sqrt(_4257);
            _4791 = sqrt(_4258);
            _4792 = sqrt(_4259);
            _4793 = _4790 - _4789;
            _4794 = _4791 - _4789;
            _4795 = _4792 - _4789;
            _4802 = saturate(1.0f - (pow(_4463, 4.0f)));  // [sem: expr_sat]
            _4815 = (((_4794 * _4307) + _4789) + ((_4794 * (_4310 - _4307)) * _4802)) * _4308;
            _4818 = saturate(1.0f - saturate(_4466));  // [sem: expr_sat]
            _4819 = _4818 * _4818;
            _4821 = (_4819 * _4819) * _4818;
            _4824 = _4821 * saturate(_4815 * 50.0f);
            _4825 = 1.0f - _4821;
            _4826 = _4825 * _4308;
            _4830 = (_4826 * (((_4793 * _4307) + _4789) + (_4802 * (_4793 * (_4310 - _4307))))) + _4824;
            _4831 = (_4825 * _4815) + _4824;
            _4832 = (_4826 * (((_4795 * _4307) + _4789) + ((_4795 * (_4310 - _4307)) * _4802))) + _4824;
            _4833 = min(_4465, 0.9999f);
            _4834 = _4833 * _4833;
            _4835 = 1.0f - _4834;
            _4847 = (((exp2(((-0.0f - _4834) / (_4835 * _4402)) * 1.442695f) * 4.0f) / (_4835 * _4835)) + 1.0f) / ((_4402 * 12.566371f) + 3.1415927f);
            _4851 = ((_4463 + _4461) - (_4463 * _4461)) * 4.0f;
            _4855 = (_4830 * _4847) / _4851;
            _4856 = (_4831 * _4847) / _4851;
            _4857 = (_4832 * _4847) / _4851;
            _4858 = 1.0f - _4401;
            _4870 = (((_4465 * _4402) - _4465) * _4465) + 1.0f;
            _4874 = (_4402 / ((_4870 * _4870) * 3.1415927f)) * (0.5f / ((((_4463 * _4858) + _4401) * _4460) + (_4463 * ((_4460 * _4858) + _4401))));
            _4890 = saturate(_4461);  // [sem: _4461_sat]
            _4895 = (_4309 * 1.5f) + 2.5f;
            _4896 = _4895 * _4895;
            _4906 = (max(0.0f, (0.3f - _4460)) * 0.25f) * ((exp2(_4896 * -0.48089835f) * 3.0f) + exp2(_4896 * -1.442695f));
            _4931 = (((1.0f - _4310) * 0.4774648f) * saturate(_4309)) * saturate((pow(_4465, 4.0f)) * exp2(log2(saturate(1.0f - abs(_4460))) * 3.0f));
            _4936 = (_4931 * _4790);
            _4937 = (_4931 * _4791);
            _4938 = (_4931 * _4792);
            _4939 = ((((max((_4874 * _4830), 0.0f) - _4855) * _4307) + _4855) * _4890);
            _4940 = ((((max((_4874 * _4831), 0.0f) - _4856) * _4307) + _4856) * _4890);
            _4941 = ((((max((_4874 * _4832), 0.0f) - _4857) * _4307) + _4857) * _4890);
            _4942 = (((_4790 * _3967) * _4906) + _4783);
            _4943 = (((_4791 * _3968) * _4906) + _4783);
            _4944 = (((_4792 * _3969) * _4906) + _4783);
            if (!_4766) {
              if (_4767) {
                _5110 = _4759;
                _5111 = _4760;
                _5112 = _4761;
                _5113 = _4762;
                _5114 = _4763;
                _5115 = _4764;
                if (_4344) {
                  _5118 = dot(float3(_1817, _1818, _1819), float3(_4339, _4340, _4341)) * 2.0f;
                  _5122 = _1817 - (_5118 * _4339);
                  _5123 = _1818 - (_5118 * _4340);
                  _5124 = _1819 - (_5118 * _4341);
                  _5125 = _4445 - _5122;
                  _5126 = _4446 - _5123;
                  _5127 = _4447 - _5124;
                  _5129 = rsqrt(dot(float3(_5125, _5126, _5127), float3(_5125, _5126, _5127)));  // [sem: invLength]
                  _5130 = _5125 * _5129;
                  _5131 = _5126 * _5129;
                  _5132 = _5127 * _5129;
                  _5133 = -0.0f - _5122;
                  _5134 = -0.0f - _5123;
                  _5135 = -0.0f - _5124;
                  _5137 = saturate(dot(float3(_4289, _4290, _4291), float3(_5133, _5134, _5135)));  // [sem: expr_sat]
                  _5139 = saturate(dot(float3(_4339, _4340, _4341), float3(_5130, _5131, _5132)));  // [sem: expr_sat]
                  _5141 = saturate(_4461);  // [sem: _4461_sat]
                  _5152 = 1.0f - ((_5139 * _5139) * 0.9f);
                  _5155 = (0.03183099f / (_5152 * _5152)) * (0.5f / ((((_5137 * 0.9f) + 0.1f) * _4461) + (_5137 * ((_4461 * 0.9f) + 0.1f))));
                  _5181 = _5113;
                  _5182 = _5114;
                  _5183 = _5115;
                  _5184 = dot(float3(_5133, _5134, _5135), float3(_5130, _5131, _5132));
                  _5185 = _5139;
                  _5186 = (((float(half(max((_5155 * _4257), 0.0f) * _5141)) - _5110) * 0.875f) + _5110);
                  _5187 = (((float(half(max((_5155 * _4258), 0.0f) * _5141)) - _5111) * 0.875f) + _5111);
                  _5188 = (((float(half(max((_5155 * _4259), 0.0f) * _5141)) - _5112) * 0.875f) + _5112);
                } else {
                  _5181 = _5113;
                  _5182 = _5114;
                  _5183 = _5115;
                  _5184 = _4466;
                  _5185 = _4465;
                  _5186 = _5110;
                  _5187 = _5111;
                  _5188 = _5112;
                }
              } else {
                _4947 = saturate(_4460);  // [sem: _4460_sat]
                _4948 = 1.0f - _4402;
                _4949 = 1.0f - _4468;
                _4950 = _4949 * _4949;
                _4953 = ((_4950 * _4950) * _4949) + _4468;
                _4954 = 1.0f - _4947;
                _4955 = _4954 * _4954;
                _4960 = 1.0f - _4463;
                _4961 = _4960 * _4960;
                _4988 = (_4947 * 0.31830987f) * ((((_4468 * ((((_4948 * 34.5f) + -59.0f) * _4948) + 24.5f)) * exp2(-0.0f - (max(((_4948 * 73.2f) + -21.2f), 8.9f) * sqrt(_4465)))) + _4953) + ((((1.0f - ((_4955 * _4955) * (_4954 * 0.75f))) * (1.0f - ((_4961 * _4961) * (_4960 * 0.75f)))) - _4953) * saturate((_4948 * 2.2f) + -0.5f)));
                _4991 = saturate(1.0f - saturate(_4466));  // [sem: expr_sat]
                _4992 = _4991 * _4991;
                _4994 = (_4992 * _4992) * _4991;
                _4997 = _4994 * saturate(_4399 * 50.0f);
                _4998 = 1.0f - _4994;
                _5002 = (_4998 * _4398) + _4997;
                _5003 = (_4998 * _4399) + _4997;
                _5004 = (_4998 * _4400) + _4997;
                if (!(_4306 == 29)) {
                  _5006 = saturate(_4461);  // [sem: _4461_sat]
                  _5007 = 1.0f - _4401;
                  _5019 = (((_4465 * _4402) - _4465) * _4465) + 1.0f;
                  _5023 = (_4402 / ((_5019 * _5019) * 3.1415927f)) * (0.5f / ((((_4463 * _5007) + _4401) * _4461) + (_4463 * ((_4461 * _5007) + _4401))));
                  _5034 = (max((_5023 * _5002), 0.0f) * _5006);
                  _5035 = (max((_5023 * _5003), 0.0f) * _5006);
                  _5036 = (max((_5023 * _5004), 0.0f) * _5006);
                } else {
                  _5034 = 0.0f;
                  _5035 = 0.0f;
                  _5036 = 0.0f;
                }
                if (_4375) {
                  if (_4306 == 65) {
                    _5080 = _5034;
                    _5081 = _5035;
                    _5082 = _5036;
                    _5087 = max(1e-06f, _exposure2.x);
                    _5096 = ((_4947 * 50.265484f) * exp2(log2(saturate(dot(float3(_4339, _4340, _4341), float3(_1817, _1818, _1819)))) * 16.0f)) / (((_5087 * _5087) * 1e+06f) + 1.0f);
                    _5181 = ((((_5096 * _4257) - _4988) * _4305) + _4988);
                    _5182 = ((((_5096 * _4258) - _4988) * _4305) + _4988);
                    _5183 = ((((_5096 * _4259) - _4988) * _4305) + _4988);
                    _5184 = _4466;
                    _5185 = _4465;
                    _5186 = _5080;
                    _5187 = _5081;
                    _5188 = _5082;
                  } else {
                    _5044 = 1.0f - _4407;
                    _5056 = (((_4465 * _4408) - _4465) * _4465) + 1.0f;
                    _5060 = (_4408 / ((_5056 * _5056) * 3.1415927f)) * (0.5f / ((((_4463 * _5044) + _4407) * _4461) + (_4463 * ((_4461 * _5044) + _4407))));
                    _5067 = saturate(_4461) * 0.39990234f;
                    _5075 = ((max((_5060 * _5002), 0.0f) * _5067) + (_5034 * 0.60009766f));
                    _5076 = ((max((_5060 * _5003), 0.0f) * _5067) + (_5035 * 0.60009766f));
                    _5077 = ((max((_5060 * _5004), 0.0f) * _5067) + (_5036 * 0.60009766f));
                    if (_4306 == 65) {
                      _5080 = _5075;
                      _5081 = _5076;
                      _5082 = _5077;
                      _5087 = max(1e-06f, _exposure2.x);
                      _5096 = ((_4947 * 50.265484f) * exp2(log2(saturate(dot(float3(_4339, _4340, _4341), float3(_1817, _1818, _1819)))) * 16.0f)) / (((_5087 * _5087) * 1e+06f) + 1.0f);
                      _5181 = ((((_5096 * _4257) - _4988) * _4305) + _4988);
                      _5182 = ((((_5096 * _4258) - _4988) * _4305) + _4988);
                      _5183 = ((((_5096 * _4259) - _4988) * _4305) + _4988);
                      _5184 = _4466;
                      _5185 = _4465;
                      _5186 = _5080;
                      _5187 = _5081;
                      _5188 = _5082;
                    } else {
                      _5110 = _5075;
                      _5111 = _5076;
                      _5112 = _5077;
                      _5113 = _4988;
                      _5114 = _4988;
                      _5115 = _4988;
                      if (_4344) {
                        _5118 = dot(float3(_1817, _1818, _1819), float3(_4339, _4340, _4341)) * 2.0f;
                        _5122 = _1817 - (_5118 * _4339);
                        _5123 = _1818 - (_5118 * _4340);
                        _5124 = _1819 - (_5118 * _4341);
                        _5125 = _4445 - _5122;
                        _5126 = _4446 - _5123;
                        _5127 = _4447 - _5124;
                        _5129 = rsqrt(dot(float3(_5125, _5126, _5127), float3(_5125, _5126, _5127)));  // [sem: invLength]
                        _5130 = _5125 * _5129;
                        _5131 = _5126 * _5129;
                        _5132 = _5127 * _5129;
                        _5133 = -0.0f - _5122;
                        _5134 = -0.0f - _5123;
                        _5135 = -0.0f - _5124;
                        _5137 = saturate(dot(float3(_4289, _4290, _4291), float3(_5133, _5134, _5135)));  // [sem: expr_sat]
                        _5139 = saturate(dot(float3(_4339, _4340, _4341), float3(_5130, _5131, _5132)));  // [sem: expr_sat]
                        _5141 = saturate(_4461);  // [sem: _4461_sat]
                        _5152 = 1.0f - ((_5139 * _5139) * 0.9f);
                        _5155 = (0.03183099f / (_5152 * _5152)) * (0.5f / ((((_5137 * 0.9f) + 0.1f) * _4461) + (_5137 * ((_4461 * 0.9f) + 0.1f))));
                        _5181 = _5113;
                        _5182 = _5114;
                        _5183 = _5115;
                        _5184 = dot(float3(_5133, _5134, _5135), float3(_5130, _5131, _5132));
                        _5185 = _5139;
                        _5186 = (((float(half(max((_5155 * _4257), 0.0f) * _5141)) - _5110) * 0.875f) + _5110);
                        _5187 = (((float(half(max((_5155 * _4258), 0.0f) * _5141)) - _5111) * 0.875f) + _5111);
                        _5188 = (((float(half(max((_5155 * _4259), 0.0f) * _5141)) - _5112) * 0.875f) + _5112);
                      } else {
                        _5181 = _5113;
                        _5182 = _5114;
                        _5183 = _5115;
                        _5184 = _4466;
                        _5185 = _4465;
                        _5186 = _5110;
                        _5187 = _5111;
                        _5188 = _5112;
                      }
                    }
                  }
                } else {
                  _5075 = _5034;
                  _5076 = _5035;
                  _5077 = _5036;
                  if (_4306 == 65) {
                    _5080 = _5075;
                    _5081 = _5076;
                    _5082 = _5077;
                    _5087 = max(1e-06f, _exposure2.x);
                    _5096 = ((_4947 * 50.265484f) * exp2(log2(saturate(dot(float3(_4339, _4340, _4341), float3(_1817, _1818, _1819)))) * 16.0f)) / (((_5087 * _5087) * 1e+06f) + 1.0f);
                    _5181 = ((((_5096 * _4257) - _4988) * _4305) + _4988);
                    _5182 = ((((_5096 * _4258) - _4988) * _4305) + _4988);
                    _5183 = ((((_5096 * _4259) - _4988) * _4305) + _4988);
                    _5184 = _4466;
                    _5185 = _4465;
                    _5186 = _5080;
                    _5187 = _5081;
                    _5188 = _5082;
                  } else {
                    _5110 = _5075;
                    _5111 = _5076;
                    _5112 = _5077;
                    _5113 = _4988;
                    _5114 = _4988;
                    _5115 = _4988;
                    if (_4344) {
                      _5118 = dot(float3(_1817, _1818, _1819), float3(_4339, _4340, _4341)) * 2.0f;
                      _5122 = _1817 - (_5118 * _4339);
                      _5123 = _1818 - (_5118 * _4340);
                      _5124 = _1819 - (_5118 * _4341);
                      _5125 = _4445 - _5122;
                      _5126 = _4446 - _5123;
                      _5127 = _4447 - _5124;
                      _5129 = rsqrt(dot(float3(_5125, _5126, _5127), float3(_5125, _5126, _5127)));  // [sem: invLength]
                      _5130 = _5125 * _5129;
                      _5131 = _5126 * _5129;
                      _5132 = _5127 * _5129;
                      _5133 = -0.0f - _5122;
                      _5134 = -0.0f - _5123;
                      _5135 = -0.0f - _5124;
                      _5137 = saturate(dot(float3(_4289, _4290, _4291), float3(_5133, _5134, _5135)));  // [sem: expr_sat]
                      _5139 = saturate(dot(float3(_4339, _4340, _4341), float3(_5130, _5131, _5132)));  // [sem: expr_sat]
                      _5141 = saturate(_4461);  // [sem: _4461_sat]
                      _5152 = 1.0f - ((_5139 * _5139) * 0.9f);
                      _5155 = (0.03183099f / (_5152 * _5152)) * (0.5f / ((((_5137 * 0.9f) + 0.1f) * _4461) + (_5137 * ((_4461 * 0.9f) + 0.1f))));
                      _5181 = _5113;
                      _5182 = _5114;
                      _5183 = _5115;
                      _5184 = dot(float3(_5133, _5134, _5135), float3(_5130, _5131, _5132));
                      _5185 = _5139;
                      _5186 = (((float(half(max((_5155 * _4257), 0.0f) * _5141)) - _5110) * 0.875f) + _5110);
                      _5187 = (((float(half(max((_5155 * _4258), 0.0f) * _5141)) - _5111) * 0.875f) + _5111);
                      _5188 = (((float(half(max((_5155 * _4259), 0.0f) * _5141)) - _5112) * 0.875f) + _5112);
                    } else {
                      _5181 = _5113;
                      _5182 = _5114;
                      _5183 = _5115;
                      _5184 = _4466;
                      _5185 = _4465;
                      _5186 = _5110;
                      _5187 = _5111;
                      _5188 = _5112;
                    }
                  }
                }
              }
            } else {
              _5181 = _4762;
              _5182 = _4763;
              _5183 = _4764;
              _5184 = _4466;
              _5185 = _4465;
              _5186 = _4759;
              _5187 = _4760;
              _5188 = _4761;
            }
            _5210 = select(_4768, _4939, _5186) * _3967;
            _5211 = select(_4768, _4940, _5187) * _3968;
            _5212 = select(_4768, _4941, _5188) * _3969;
            _5220 = _5184;
            _5221 = _5185;
            _5222 = select(_4768, 0.0f, _4756);
            _5223 = select(_4768, 0.0f, _4757);
            _5224 = select(_4768, 0.0f, _4758);
            _5225 = select(_4768, (_5210 + _4936), _5210);
            _5226 = select(_4768, (_5211 + _4937), _5211);
            _5227 = select(_4768, (_5212 + _4938), _5212);
            _5228 = (select(_4768, _4942, (-0.0f - min(-0.0f, (-0.0f - _5181)))) * _3967);
            _5229 = (select(_4768, _4943, (-0.0f - min(-0.0f, (-0.0f - _5182)))) * _3968);
            _5230 = (select(_4768, _4944, (-0.0f - min(-0.0f, (-0.0f - _5183)))) * _3969);
          } else {
            if ((_4460 > 0.0f) || (_4461 > 0.0f)) {
              _4936 = 0.0f;
              _4937 = 0.0f;
              _4938 = 0.0f;
              _4939 = 0.0f;
              _4940 = 0.0f;
              _4941 = 0.0f;
              _4942 = 0.0f;
              _4943 = 0.0f;
              _4944 = 0.0f;
              if (!_4766) {
                if (_4767) {
                  _5110 = _4759;
                  _5111 = _4760;
                  _5112 = _4761;
                  _5113 = _4762;
                  _5114 = _4763;
                  _5115 = _4764;
                  if (_4344) {
                    _5118 = dot(float3(_1817, _1818, _1819), float3(_4339, _4340, _4341)) * 2.0f;
                    _5122 = _1817 - (_5118 * _4339);
                    _5123 = _1818 - (_5118 * _4340);
                    _5124 = _1819 - (_5118 * _4341);
                    _5125 = _4445 - _5122;
                    _5126 = _4446 - _5123;
                    _5127 = _4447 - _5124;
                    _5129 = rsqrt(dot(float3(_5125, _5126, _5127), float3(_5125, _5126, _5127)));  // [sem: invLength]
                    _5130 = _5125 * _5129;
                    _5131 = _5126 * _5129;
                    _5132 = _5127 * _5129;
                    _5133 = -0.0f - _5122;
                    _5134 = -0.0f - _5123;
                    _5135 = -0.0f - _5124;
                    _5137 = saturate(dot(float3(_4289, _4290, _4291), float3(_5133, _5134, _5135)));  // [sem: expr_sat]
                    _5139 = saturate(dot(float3(_4339, _4340, _4341), float3(_5130, _5131, _5132)));  // [sem: expr_sat]
                    _5141 = saturate(_4461);  // [sem: _4461_sat]
                    _5152 = 1.0f - ((_5139 * _5139) * 0.9f);
                    _5155 = (0.03183099f / (_5152 * _5152)) * (0.5f / ((((_5137 * 0.9f) + 0.1f) * _4461) + (_5137 * ((_4461 * 0.9f) + 0.1f))));
                    _5181 = _5113;
                    _5182 = _5114;
                    _5183 = _5115;
                    _5184 = dot(float3(_5133, _5134, _5135), float3(_5130, _5131, _5132));
                    _5185 = _5139;
                    _5186 = (((float(half(max((_5155 * _4257), 0.0f) * _5141)) - _5110) * 0.875f) + _5110);
                    _5187 = (((float(half(max((_5155 * _4258), 0.0f) * _5141)) - _5111) * 0.875f) + _5111);
                    _5188 = (((float(half(max((_5155 * _4259), 0.0f) * _5141)) - _5112) * 0.875f) + _5112);
                  } else {
                    _5181 = _5113;
                    _5182 = _5114;
                    _5183 = _5115;
                    _5184 = _4466;
                    _5185 = _4465;
                    _5186 = _5110;
                    _5187 = _5111;
                    _5188 = _5112;
                  }
                } else {
                  _4947 = saturate(_4460);  // [sem: _4460_sat]
                  _4948 = 1.0f - _4402;
                  _4949 = 1.0f - _4468;
                  _4950 = _4949 * _4949;
                  _4953 = ((_4950 * _4950) * _4949) + _4468;
                  _4954 = 1.0f - _4947;
                  _4955 = _4954 * _4954;
                  _4960 = 1.0f - _4463;
                  _4961 = _4960 * _4960;
                  _4988 = (_4947 * 0.31830987f) * ((((_4468 * ((((_4948 * 34.5f) + -59.0f) * _4948) + 24.5f)) * exp2(-0.0f - (max(((_4948 * 73.2f) + -21.2f), 8.9f) * sqrt(_4465)))) + _4953) + ((((1.0f - ((_4955 * _4955) * (_4954 * 0.75f))) * (1.0f - ((_4961 * _4961) * (_4960 * 0.75f)))) - _4953) * saturate((_4948 * 2.2f) + -0.5f)));
                  _4991 = saturate(1.0f - saturate(_4466));  // [sem: expr_sat]
                  _4992 = _4991 * _4991;
                  _4994 = (_4992 * _4992) * _4991;
                  _4997 = _4994 * saturate(_4399 * 50.0f);
                  _4998 = 1.0f - _4994;
                  _5002 = (_4998 * _4398) + _4997;
                  _5003 = (_4998 * _4399) + _4997;
                  _5004 = (_4998 * _4400) + _4997;
                  if (!(_4306 == 29)) {
                    _5006 = saturate(_4461);  // [sem: _4461_sat]
                    _5007 = 1.0f - _4401;
                    _5019 = (((_4465 * _4402) - _4465) * _4465) + 1.0f;
                    _5023 = (_4402 / ((_5019 * _5019) * 3.1415927f)) * (0.5f / ((((_4463 * _5007) + _4401) * _4461) + (_4463 * ((_4461 * _5007) + _4401))));
                    _5034 = (max((_5023 * _5002), 0.0f) * _5006);
                    _5035 = (max((_5023 * _5003), 0.0f) * _5006);
                    _5036 = (max((_5023 * _5004), 0.0f) * _5006);
                  } else {
                    _5034 = 0.0f;
                    _5035 = 0.0f;
                    _5036 = 0.0f;
                  }
                  if (_4375) {
                    if (_4306 == 65) {
                      _5080 = _5034;
                      _5081 = _5035;
                      _5082 = _5036;
                      _5087 = max(1e-06f, _exposure2.x);
                      _5096 = ((_4947 * 50.265484f) * exp2(log2(saturate(dot(float3(_4339, _4340, _4341), float3(_1817, _1818, _1819)))) * 16.0f)) / (((_5087 * _5087) * 1e+06f) + 1.0f);
                      _5181 = ((((_5096 * _4257) - _4988) * _4305) + _4988);
                      _5182 = ((((_5096 * _4258) - _4988) * _4305) + _4988);
                      _5183 = ((((_5096 * _4259) - _4988) * _4305) + _4988);
                      _5184 = _4466;
                      _5185 = _4465;
                      _5186 = _5080;
                      _5187 = _5081;
                      _5188 = _5082;
                    } else {
                      _5044 = 1.0f - _4407;
                      _5056 = (((_4465 * _4408) - _4465) * _4465) + 1.0f;
                      _5060 = (_4408 / ((_5056 * _5056) * 3.1415927f)) * (0.5f / ((((_4463 * _5044) + _4407) * _4461) + (_4463 * ((_4461 * _5044) + _4407))));
                      _5067 = saturate(_4461) * 0.39990234f;
                      _5075 = ((max((_5060 * _5002), 0.0f) * _5067) + (_5034 * 0.60009766f));
                      _5076 = ((max((_5060 * _5003), 0.0f) * _5067) + (_5035 * 0.60009766f));
                      _5077 = ((max((_5060 * _5004), 0.0f) * _5067) + (_5036 * 0.60009766f));
                      if (_4306 == 65) {
                        _5080 = _5075;
                        _5081 = _5076;
                        _5082 = _5077;
                        _5087 = max(1e-06f, _exposure2.x);
                        _5096 = ((_4947 * 50.265484f) * exp2(log2(saturate(dot(float3(_4339, _4340, _4341), float3(_1817, _1818, _1819)))) * 16.0f)) / (((_5087 * _5087) * 1e+06f) + 1.0f);
                        _5181 = ((((_5096 * _4257) - _4988) * _4305) + _4988);
                        _5182 = ((((_5096 * _4258) - _4988) * _4305) + _4988);
                        _5183 = ((((_5096 * _4259) - _4988) * _4305) + _4988);
                        _5184 = _4466;
                        _5185 = _4465;
                        _5186 = _5080;
                        _5187 = _5081;
                        _5188 = _5082;
                      } else {
                        _5110 = _5075;
                        _5111 = _5076;
                        _5112 = _5077;
                        _5113 = _4988;
                        _5114 = _4988;
                        _5115 = _4988;
                        if (_4344) {
                          _5118 = dot(float3(_1817, _1818, _1819), float3(_4339, _4340, _4341)) * 2.0f;
                          _5122 = _1817 - (_5118 * _4339);
                          _5123 = _1818 - (_5118 * _4340);
                          _5124 = _1819 - (_5118 * _4341);
                          _5125 = _4445 - _5122;
                          _5126 = _4446 - _5123;
                          _5127 = _4447 - _5124;
                          _5129 = rsqrt(dot(float3(_5125, _5126, _5127), float3(_5125, _5126, _5127)));  // [sem: invLength]
                          _5130 = _5125 * _5129;
                          _5131 = _5126 * _5129;
                          _5132 = _5127 * _5129;
                          _5133 = -0.0f - _5122;
                          _5134 = -0.0f - _5123;
                          _5135 = -0.0f - _5124;
                          _5137 = saturate(dot(float3(_4289, _4290, _4291), float3(_5133, _5134, _5135)));  // [sem: expr_sat]
                          _5139 = saturate(dot(float3(_4339, _4340, _4341), float3(_5130, _5131, _5132)));  // [sem: expr_sat]
                          _5141 = saturate(_4461);  // [sem: _4461_sat]
                          _5152 = 1.0f - ((_5139 * _5139) * 0.9f);
                          _5155 = (0.03183099f / (_5152 * _5152)) * (0.5f / ((((_5137 * 0.9f) + 0.1f) * _4461) + (_5137 * ((_4461 * 0.9f) + 0.1f))));
                          _5181 = _5113;
                          _5182 = _5114;
                          _5183 = _5115;
                          _5184 = dot(float3(_5133, _5134, _5135), float3(_5130, _5131, _5132));
                          _5185 = _5139;
                          _5186 = (((float(half(max((_5155 * _4257), 0.0f) * _5141)) - _5110) * 0.875f) + _5110);
                          _5187 = (((float(half(max((_5155 * _4258), 0.0f) * _5141)) - _5111) * 0.875f) + _5111);
                          _5188 = (((float(half(max((_5155 * _4259), 0.0f) * _5141)) - _5112) * 0.875f) + _5112);
                        } else {
                          _5181 = _5113;
                          _5182 = _5114;
                          _5183 = _5115;
                          _5184 = _4466;
                          _5185 = _4465;
                          _5186 = _5110;
                          _5187 = _5111;
                          _5188 = _5112;
                        }
                      }
                    }
                  } else {
                    _5075 = _5034;
                    _5076 = _5035;
                    _5077 = _5036;
                    if (_4306 == 65) {
                      _5080 = _5075;
                      _5081 = _5076;
                      _5082 = _5077;
                      _5087 = max(1e-06f, _exposure2.x);
                      _5096 = ((_4947 * 50.265484f) * exp2(log2(saturate(dot(float3(_4339, _4340, _4341), float3(_1817, _1818, _1819)))) * 16.0f)) / (((_5087 * _5087) * 1e+06f) + 1.0f);
                      _5181 = ((((_5096 * _4257) - _4988) * _4305) + _4988);
                      _5182 = ((((_5096 * _4258) - _4988) * _4305) + _4988);
                      _5183 = ((((_5096 * _4259) - _4988) * _4305) + _4988);
                      _5184 = _4466;
                      _5185 = _4465;
                      _5186 = _5080;
                      _5187 = _5081;
                      _5188 = _5082;
                    } else {
                      _5110 = _5075;
                      _5111 = _5076;
                      _5112 = _5077;
                      _5113 = _4988;
                      _5114 = _4988;
                      _5115 = _4988;
                      if (_4344) {
                        _5118 = dot(float3(_1817, _1818, _1819), float3(_4339, _4340, _4341)) * 2.0f;
                        _5122 = _1817 - (_5118 * _4339);
                        _5123 = _1818 - (_5118 * _4340);
                        _5124 = _1819 - (_5118 * _4341);
                        _5125 = _4445 - _5122;
                        _5126 = _4446 - _5123;
                        _5127 = _4447 - _5124;
                        _5129 = rsqrt(dot(float3(_5125, _5126, _5127), float3(_5125, _5126, _5127)));  // [sem: invLength]
                        _5130 = _5125 * _5129;
                        _5131 = _5126 * _5129;
                        _5132 = _5127 * _5129;
                        _5133 = -0.0f - _5122;
                        _5134 = -0.0f - _5123;
                        _5135 = -0.0f - _5124;
                        _5137 = saturate(dot(float3(_4289, _4290, _4291), float3(_5133, _5134, _5135)));  // [sem: expr_sat]
                        _5139 = saturate(dot(float3(_4339, _4340, _4341), float3(_5130, _5131, _5132)));  // [sem: expr_sat]
                        _5141 = saturate(_4461);  // [sem: _4461_sat]
                        _5152 = 1.0f - ((_5139 * _5139) * 0.9f);
                        _5155 = (0.03183099f / (_5152 * _5152)) * (0.5f / ((((_5137 * 0.9f) + 0.1f) * _4461) + (_5137 * ((_4461 * 0.9f) + 0.1f))));
                        _5181 = _5113;
                        _5182 = _5114;
                        _5183 = _5115;
                        _5184 = dot(float3(_5133, _5134, _5135), float3(_5130, _5131, _5132));
                        _5185 = _5139;
                        _5186 = (((float(half(max((_5155 * _4257), 0.0f) * _5141)) - _5110) * 0.875f) + _5110);
                        _5187 = (((float(half(max((_5155 * _4258), 0.0f) * _5141)) - _5111) * 0.875f) + _5111);
                        _5188 = (((float(half(max((_5155 * _4259), 0.0f) * _5141)) - _5112) * 0.875f) + _5112);
                      } else {
                        _5181 = _5113;
                        _5182 = _5114;
                        _5183 = _5115;
                        _5184 = _4466;
                        _5185 = _4465;
                        _5186 = _5110;
                        _5187 = _5111;
                        _5188 = _5112;
                      }
                    }
                  }
                }
              } else {
                _5181 = _4762;
                _5182 = _4763;
                _5183 = _4764;
                _5184 = _4466;
                _5185 = _4465;
                _5186 = _4759;
                _5187 = _4760;
                _5188 = _4761;
              }
              _5210 = select(_4768, _4939, _5186) * _3967;
              _5211 = select(_4768, _4940, _5187) * _3968;
              _5212 = select(_4768, _4941, _5188) * _3969;
              _5220 = _5184;
              _5221 = _5185;
              _5222 = select(_4768, 0.0f, _4756);
              _5223 = select(_4768, 0.0f, _4757);
              _5224 = select(_4768, 0.0f, _4758);
              _5225 = select(_4768, (_5210 + _4936), _5210);
              _5226 = select(_4768, (_5211 + _4937), _5211);
              _5227 = select(_4768, (_5212 + _4938), _5212);
              _5228 = (select(_4768, _4942, (-0.0f - min(-0.0f, (-0.0f - _5181)))) * _3967);
              _5229 = (select(_4768, _4943, (-0.0f - min(-0.0f, (-0.0f - _5182)))) * _3968);
              _5230 = (select(_4768, _4944, (-0.0f - min(-0.0f, (-0.0f - _5183)))) * _3969);
            } else {
              _5220 = _4466;
              _5221 = _4465;
              _5222 = _4756;
              _5223 = _4757;
              _5224 = _4758;
              _5225 = _4759;
              _5226 = _4760;
              _5227 = _4761;
              _5228 = _4762;
              _5229 = _4763;
              _5230 = _4764;
            }
          }
        } else {
          _5220 = _4466;
          _5221 = _4465;
          _5222 = _4756;
          _5223 = _4757;
          _5224 = _4758;
          _5225 = _4759;
          _5226 = _4760;
          _5227 = _4761;
          _5228 = _4762;
          _5229 = _4763;
          _5230 = _4764;
        }
      } else {
        _5220 = _4466;
        _5221 = _4465;
        _5222 = _4743;
        _5223 = _4744;
        _5224 = _4745;
        _5225 = _4752;
        _5226 = _4753;
        _5227 = _4754;
        _5228 = _4732;
        _5229 = _4734;
        _5230 = _4736;
      }
    } else {
      _4756 = 0.0f;
      _4757 = 0.0f;
      _4758 = 0.0f;
      _4759 = 0.0f;
      _4760 = 0.0f;
      _4761 = 0.0f;
      _4762 = 0.0f;
      _4763 = 0.0f;
      _4764 = 0.0f;
      if (!_4470) {
        _4766 = (_4306 == 33);
        _4767 = (_4306 == 54);
        _4768 = _4766 || _4767;
        if (_4768) {
          _4783 = (saturate(_4460) * 0.31830987f) * (((saturate(1.0f - _effectiveMetallicForVelvet) + -1.0f) * _4310) + 1.0f);
          _4789 = max(dot(float3(_4257, _4258, _4259), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
          _4790 = sqrt(_4257);
          _4791 = sqrt(_4258);
          _4792 = sqrt(_4259);
          _4793 = _4790 - _4789;
          _4794 = _4791 - _4789;
          _4795 = _4792 - _4789;
          _4802 = saturate(1.0f - (pow(_4463, 4.0f)));  // [sem: expr_sat]
          _4815 = (((_4794 * _4307) + _4789) + ((_4794 * (_4310 - _4307)) * _4802)) * _4308;
          _4818 = saturate(1.0f - saturate(_4466));  // [sem: expr_sat]
          _4819 = _4818 * _4818;
          _4821 = (_4819 * _4819) * _4818;
          _4824 = _4821 * saturate(_4815 * 50.0f);
          _4825 = 1.0f - _4821;
          _4826 = _4825 * _4308;
          _4830 = (_4826 * (((_4793 * _4307) + _4789) + (_4802 * (_4793 * (_4310 - _4307))))) + _4824;
          _4831 = (_4825 * _4815) + _4824;
          _4832 = (_4826 * (((_4795 * _4307) + _4789) + ((_4795 * (_4310 - _4307)) * _4802))) + _4824;
          _4833 = min(_4465, 0.9999f);
          _4834 = _4833 * _4833;
          _4835 = 1.0f - _4834;
          _4847 = (((exp2(((-0.0f - _4834) / (_4835 * _4402)) * 1.442695f) * 4.0f) / (_4835 * _4835)) + 1.0f) / ((_4402 * 12.566371f) + 3.1415927f);
          _4851 = ((_4463 + _4461) - (_4463 * _4461)) * 4.0f;
          _4855 = (_4830 * _4847) / _4851;
          _4856 = (_4831 * _4847) / _4851;
          _4857 = (_4832 * _4847) / _4851;
          _4858 = 1.0f - _4401;
          _4870 = (((_4465 * _4402) - _4465) * _4465) + 1.0f;
          _4874 = (_4402 / ((_4870 * _4870) * 3.1415927f)) * (0.5f / ((((_4463 * _4858) + _4401) * _4460) + (_4463 * ((_4460 * _4858) + _4401))));
          _4890 = saturate(_4461);  // [sem: _4461_sat]
          _4895 = (_4309 * 1.5f) + 2.5f;
          _4896 = _4895 * _4895;
          _4906 = (max(0.0f, (0.3f - _4460)) * 0.25f) * ((exp2(_4896 * -0.48089835f) * 3.0f) + exp2(_4896 * -1.442695f));
          _4931 = (((1.0f - _4310) * 0.4774648f) * saturate(_4309)) * saturate((pow(_4465, 4.0f)) * exp2(log2(saturate(1.0f - abs(_4460))) * 3.0f));
          _4936 = (_4931 * _4790);
          _4937 = (_4931 * _4791);
          _4938 = (_4931 * _4792);
          _4939 = ((((max((_4874 * _4830), 0.0f) - _4855) * _4307) + _4855) * _4890);
          _4940 = ((((max((_4874 * _4831), 0.0f) - _4856) * _4307) + _4856) * _4890);
          _4941 = ((((max((_4874 * _4832), 0.0f) - _4857) * _4307) + _4857) * _4890);
          _4942 = (((_4790 * _3967) * _4906) + _4783);
          _4943 = (((_4791 * _3968) * _4906) + _4783);
          _4944 = (((_4792 * _3969) * _4906) + _4783);
          if (!_4766) {
            if (_4767) {
              _5110 = _4759;
              _5111 = _4760;
              _5112 = _4761;
              _5113 = _4762;
              _5114 = _4763;
              _5115 = _4764;
              if (_4344) {
                _5118 = dot(float3(_1817, _1818, _1819), float3(_4339, _4340, _4341)) * 2.0f;
                _5122 = _1817 - (_5118 * _4339);
                _5123 = _1818 - (_5118 * _4340);
                _5124 = _1819 - (_5118 * _4341);
                _5125 = _4445 - _5122;
                _5126 = _4446 - _5123;
                _5127 = _4447 - _5124;
                _5129 = rsqrt(dot(float3(_5125, _5126, _5127), float3(_5125, _5126, _5127)));  // [sem: invLength]
                _5130 = _5125 * _5129;
                _5131 = _5126 * _5129;
                _5132 = _5127 * _5129;
                _5133 = -0.0f - _5122;
                _5134 = -0.0f - _5123;
                _5135 = -0.0f - _5124;
                _5137 = saturate(dot(float3(_4289, _4290, _4291), float3(_5133, _5134, _5135)));  // [sem: expr_sat]
                _5139 = saturate(dot(float3(_4339, _4340, _4341), float3(_5130, _5131, _5132)));  // [sem: expr_sat]
                _5141 = saturate(_4461);  // [sem: _4461_sat]
                _5152 = 1.0f - ((_5139 * _5139) * 0.9f);
                _5155 = (0.03183099f / (_5152 * _5152)) * (0.5f / ((((_5137 * 0.9f) + 0.1f) * _4461) + (_5137 * ((_4461 * 0.9f) + 0.1f))));
                _5181 = _5113;
                _5182 = _5114;
                _5183 = _5115;
                _5184 = dot(float3(_5133, _5134, _5135), float3(_5130, _5131, _5132));
                _5185 = _5139;
                _5186 = (((float(half(max((_5155 * _4257), 0.0f) * _5141)) - _5110) * 0.875f) + _5110);
                _5187 = (((float(half(max((_5155 * _4258), 0.0f) * _5141)) - _5111) * 0.875f) + _5111);
                _5188 = (((float(half(max((_5155 * _4259), 0.0f) * _5141)) - _5112) * 0.875f) + _5112);
              } else {
                _5181 = _5113;
                _5182 = _5114;
                _5183 = _5115;
                _5184 = _4466;
                _5185 = _4465;
                _5186 = _5110;
                _5187 = _5111;
                _5188 = _5112;
              }
            } else {
              _4947 = saturate(_4460);  // [sem: _4460_sat]
              _4948 = 1.0f - _4402;
              _4949 = 1.0f - _4468;
              _4950 = _4949 * _4949;
              _4953 = ((_4950 * _4950) * _4949) + _4468;
              _4954 = 1.0f - _4947;
              _4955 = _4954 * _4954;
              _4960 = 1.0f - _4463;
              _4961 = _4960 * _4960;
              _4988 = (_4947 * 0.31830987f) * ((((_4468 * ((((_4948 * 34.5f) + -59.0f) * _4948) + 24.5f)) * exp2(-0.0f - (max(((_4948 * 73.2f) + -21.2f), 8.9f) * sqrt(_4465)))) + _4953) + ((((1.0f - ((_4955 * _4955) * (_4954 * 0.75f))) * (1.0f - ((_4961 * _4961) * (_4960 * 0.75f)))) - _4953) * saturate((_4948 * 2.2f) + -0.5f)));
              _4991 = saturate(1.0f - saturate(_4466));  // [sem: expr_sat]
              _4992 = _4991 * _4991;
              _4994 = (_4992 * _4992) * _4991;
              _4997 = _4994 * saturate(_4399 * 50.0f);
              _4998 = 1.0f - _4994;
              _5002 = (_4998 * _4398) + _4997;
              _5003 = (_4998 * _4399) + _4997;
              _5004 = (_4998 * _4400) + _4997;
              if (!(_4306 == 29)) {
                _5006 = saturate(_4461);  // [sem: _4461_sat]
                _5007 = 1.0f - _4401;
                _5019 = (((_4465 * _4402) - _4465) * _4465) + 1.0f;
                _5023 = (_4402 / ((_5019 * _5019) * 3.1415927f)) * (0.5f / ((((_4463 * _5007) + _4401) * _4461) + (_4463 * ((_4461 * _5007) + _4401))));
                _5034 = (max((_5023 * _5002), 0.0f) * _5006);
                _5035 = (max((_5023 * _5003), 0.0f) * _5006);
                _5036 = (max((_5023 * _5004), 0.0f) * _5006);
              } else {
                _5034 = 0.0f;
                _5035 = 0.0f;
                _5036 = 0.0f;
              }
              if (_4375) {
                if (_4306 == 65) {
                  _5080 = _5034;
                  _5081 = _5035;
                  _5082 = _5036;
                  _5087 = max(1e-06f, _exposure2.x);
                  _5096 = ((_4947 * 50.265484f) * exp2(log2(saturate(dot(float3(_4339, _4340, _4341), float3(_1817, _1818, _1819)))) * 16.0f)) / (((_5087 * _5087) * 1e+06f) + 1.0f);
                  _5181 = ((((_5096 * _4257) - _4988) * _4305) + _4988);
                  _5182 = ((((_5096 * _4258) - _4988) * _4305) + _4988);
                  _5183 = ((((_5096 * _4259) - _4988) * _4305) + _4988);
                  _5184 = _4466;
                  _5185 = _4465;
                  _5186 = _5080;
                  _5187 = _5081;
                  _5188 = _5082;
                } else {
                  _5044 = 1.0f - _4407;
                  _5056 = (((_4465 * _4408) - _4465) * _4465) + 1.0f;
                  _5060 = (_4408 / ((_5056 * _5056) * 3.1415927f)) * (0.5f / ((((_4463 * _5044) + _4407) * _4461) + (_4463 * ((_4461 * _5044) + _4407))));
                  _5067 = saturate(_4461) * 0.39990234f;
                  _5075 = ((max((_5060 * _5002), 0.0f) * _5067) + (_5034 * 0.60009766f));
                  _5076 = ((max((_5060 * _5003), 0.0f) * _5067) + (_5035 * 0.60009766f));
                  _5077 = ((max((_5060 * _5004), 0.0f) * _5067) + (_5036 * 0.60009766f));
                  if (_4306 == 65) {
                    _5080 = _5075;
                    _5081 = _5076;
                    _5082 = _5077;
                    _5087 = max(1e-06f, _exposure2.x);
                    _5096 = ((_4947 * 50.265484f) * exp2(log2(saturate(dot(float3(_4339, _4340, _4341), float3(_1817, _1818, _1819)))) * 16.0f)) / (((_5087 * _5087) * 1e+06f) + 1.0f);
                    _5181 = ((((_5096 * _4257) - _4988) * _4305) + _4988);
                    _5182 = ((((_5096 * _4258) - _4988) * _4305) + _4988);
                    _5183 = ((((_5096 * _4259) - _4988) * _4305) + _4988);
                    _5184 = _4466;
                    _5185 = _4465;
                    _5186 = _5080;
                    _5187 = _5081;
                    _5188 = _5082;
                  } else {
                    _5110 = _5075;
                    _5111 = _5076;
                    _5112 = _5077;
                    _5113 = _4988;
                    _5114 = _4988;
                    _5115 = _4988;
                    if (_4344) {
                      _5118 = dot(float3(_1817, _1818, _1819), float3(_4339, _4340, _4341)) * 2.0f;
                      _5122 = _1817 - (_5118 * _4339);
                      _5123 = _1818 - (_5118 * _4340);
                      _5124 = _1819 - (_5118 * _4341);
                      _5125 = _4445 - _5122;
                      _5126 = _4446 - _5123;
                      _5127 = _4447 - _5124;
                      _5129 = rsqrt(dot(float3(_5125, _5126, _5127), float3(_5125, _5126, _5127)));  // [sem: invLength]
                      _5130 = _5125 * _5129;
                      _5131 = _5126 * _5129;
                      _5132 = _5127 * _5129;
                      _5133 = -0.0f - _5122;
                      _5134 = -0.0f - _5123;
                      _5135 = -0.0f - _5124;
                      _5137 = saturate(dot(float3(_4289, _4290, _4291), float3(_5133, _5134, _5135)));  // [sem: expr_sat]
                      _5139 = saturate(dot(float3(_4339, _4340, _4341), float3(_5130, _5131, _5132)));  // [sem: expr_sat]
                      _5141 = saturate(_4461);  // [sem: _4461_sat]
                      _5152 = 1.0f - ((_5139 * _5139) * 0.9f);
                      _5155 = (0.03183099f / (_5152 * _5152)) * (0.5f / ((((_5137 * 0.9f) + 0.1f) * _4461) + (_5137 * ((_4461 * 0.9f) + 0.1f))));
                      _5181 = _5113;
                      _5182 = _5114;
                      _5183 = _5115;
                      _5184 = dot(float3(_5133, _5134, _5135), float3(_5130, _5131, _5132));
                      _5185 = _5139;
                      _5186 = (((float(half(max((_5155 * _4257), 0.0f) * _5141)) - _5110) * 0.875f) + _5110);
                      _5187 = (((float(half(max((_5155 * _4258), 0.0f) * _5141)) - _5111) * 0.875f) + _5111);
                      _5188 = (((float(half(max((_5155 * _4259), 0.0f) * _5141)) - _5112) * 0.875f) + _5112);
                    } else {
                      _5181 = _5113;
                      _5182 = _5114;
                      _5183 = _5115;
                      _5184 = _4466;
                      _5185 = _4465;
                      _5186 = _5110;
                      _5187 = _5111;
                      _5188 = _5112;
                    }
                  }
                }
              } else {
                _5075 = _5034;
                _5076 = _5035;
                _5077 = _5036;
                if (_4306 == 65) {
                  _5080 = _5075;
                  _5081 = _5076;
                  _5082 = _5077;
                  _5087 = max(1e-06f, _exposure2.x);
                  _5096 = ((_4947 * 50.265484f) * exp2(log2(saturate(dot(float3(_4339, _4340, _4341), float3(_1817, _1818, _1819)))) * 16.0f)) / (((_5087 * _5087) * 1e+06f) + 1.0f);
                  _5181 = ((((_5096 * _4257) - _4988) * _4305) + _4988);
                  _5182 = ((((_5096 * _4258) - _4988) * _4305) + _4988);
                  _5183 = ((((_5096 * _4259) - _4988) * _4305) + _4988);
                  _5184 = _4466;
                  _5185 = _4465;
                  _5186 = _5080;
                  _5187 = _5081;
                  _5188 = _5082;
                } else {
                  _5110 = _5075;
                  _5111 = _5076;
                  _5112 = _5077;
                  _5113 = _4988;
                  _5114 = _4988;
                  _5115 = _4988;
                  if (_4344) {
                    _5118 = dot(float3(_1817, _1818, _1819), float3(_4339, _4340, _4341)) * 2.0f;
                    _5122 = _1817 - (_5118 * _4339);
                    _5123 = _1818 - (_5118 * _4340);
                    _5124 = _1819 - (_5118 * _4341);
                    _5125 = _4445 - _5122;
                    _5126 = _4446 - _5123;
                    _5127 = _4447 - _5124;
                    _5129 = rsqrt(dot(float3(_5125, _5126, _5127), float3(_5125, _5126, _5127)));  // [sem: invLength]
                    _5130 = _5125 * _5129;
                    _5131 = _5126 * _5129;
                    _5132 = _5127 * _5129;
                    _5133 = -0.0f - _5122;
                    _5134 = -0.0f - _5123;
                    _5135 = -0.0f - _5124;
                    _5137 = saturate(dot(float3(_4289, _4290, _4291), float3(_5133, _5134, _5135)));  // [sem: expr_sat]
                    _5139 = saturate(dot(float3(_4339, _4340, _4341), float3(_5130, _5131, _5132)));  // [sem: expr_sat]
                    _5141 = saturate(_4461);  // [sem: _4461_sat]
                    _5152 = 1.0f - ((_5139 * _5139) * 0.9f);
                    _5155 = (0.03183099f / (_5152 * _5152)) * (0.5f / ((((_5137 * 0.9f) + 0.1f) * _4461) + (_5137 * ((_4461 * 0.9f) + 0.1f))));
                    _5181 = _5113;
                    _5182 = _5114;
                    _5183 = _5115;
                    _5184 = dot(float3(_5133, _5134, _5135), float3(_5130, _5131, _5132));
                    _5185 = _5139;
                    _5186 = (((float(half(max((_5155 * _4257), 0.0f) * _5141)) - _5110) * 0.875f) + _5110);
                    _5187 = (((float(half(max((_5155 * _4258), 0.0f) * _5141)) - _5111) * 0.875f) + _5111);
                    _5188 = (((float(half(max((_5155 * _4259), 0.0f) * _5141)) - _5112) * 0.875f) + _5112);
                  } else {
                    _5181 = _5113;
                    _5182 = _5114;
                    _5183 = _5115;
                    _5184 = _4466;
                    _5185 = _4465;
                    _5186 = _5110;
                    _5187 = _5111;
                    _5188 = _5112;
                  }
                }
              }
            }
          } else {
            _5181 = _4762;
            _5182 = _4763;
            _5183 = _4764;
            _5184 = _4466;
            _5185 = _4465;
            _5186 = _4759;
            _5187 = _4760;
            _5188 = _4761;
          }
          _5210 = select(_4768, _4939, _5186) * _3967;
          _5211 = select(_4768, _4940, _5187) * _3968;
          _5212 = select(_4768, _4941, _5188) * _3969;
          _5220 = _5184;
          _5221 = _5185;
          _5222 = select(_4768, 0.0f, _4756);
          _5223 = select(_4768, 0.0f, _4757);
          _5224 = select(_4768, 0.0f, _4758);
          _5225 = select(_4768, (_5210 + _4936), _5210);
          _5226 = select(_4768, (_5211 + _4937), _5211);
          _5227 = select(_4768, (_5212 + _4938), _5212);
          _5228 = (select(_4768, _4942, (-0.0f - min(-0.0f, (-0.0f - _5181)))) * _3967);
          _5229 = (select(_4768, _4943, (-0.0f - min(-0.0f, (-0.0f - _5182)))) * _3968);
          _5230 = (select(_4768, _4944, (-0.0f - min(-0.0f, (-0.0f - _5183)))) * _3969);
        } else {
          if ((_4460 > 0.0f) || (_4461 > 0.0f)) {
            _4936 = 0.0f;
            _4937 = 0.0f;
            _4938 = 0.0f;
            _4939 = 0.0f;
            _4940 = 0.0f;
            _4941 = 0.0f;
            _4942 = 0.0f;
            _4943 = 0.0f;
            _4944 = 0.0f;
            if (!_4766) {
              if (_4767) {
                _5110 = _4759;
                _5111 = _4760;
                _5112 = _4761;
                _5113 = _4762;
                _5114 = _4763;
                _5115 = _4764;
                if (_4344) {
                  _5118 = dot(float3(_1817, _1818, _1819), float3(_4339, _4340, _4341)) * 2.0f;
                  _5122 = _1817 - (_5118 * _4339);
                  _5123 = _1818 - (_5118 * _4340);
                  _5124 = _1819 - (_5118 * _4341);
                  _5125 = _4445 - _5122;
                  _5126 = _4446 - _5123;
                  _5127 = _4447 - _5124;
                  _5129 = rsqrt(dot(float3(_5125, _5126, _5127), float3(_5125, _5126, _5127)));  // [sem: invLength]
                  _5130 = _5125 * _5129;
                  _5131 = _5126 * _5129;
                  _5132 = _5127 * _5129;
                  _5133 = -0.0f - _5122;
                  _5134 = -0.0f - _5123;
                  _5135 = -0.0f - _5124;
                  _5137 = saturate(dot(float3(_4289, _4290, _4291), float3(_5133, _5134, _5135)));  // [sem: expr_sat]
                  _5139 = saturate(dot(float3(_4339, _4340, _4341), float3(_5130, _5131, _5132)));  // [sem: expr_sat]
                  _5141 = saturate(_4461);  // [sem: _4461_sat]
                  _5152 = 1.0f - ((_5139 * _5139) * 0.9f);
                  _5155 = (0.03183099f / (_5152 * _5152)) * (0.5f / ((((_5137 * 0.9f) + 0.1f) * _4461) + (_5137 * ((_4461 * 0.9f) + 0.1f))));
                  _5181 = _5113;
                  _5182 = _5114;
                  _5183 = _5115;
                  _5184 = dot(float3(_5133, _5134, _5135), float3(_5130, _5131, _5132));
                  _5185 = _5139;
                  _5186 = (((float(half(max((_5155 * _4257), 0.0f) * _5141)) - _5110) * 0.875f) + _5110);
                  _5187 = (((float(half(max((_5155 * _4258), 0.0f) * _5141)) - _5111) * 0.875f) + _5111);
                  _5188 = (((float(half(max((_5155 * _4259), 0.0f) * _5141)) - _5112) * 0.875f) + _5112);
                } else {
                  _5181 = _5113;
                  _5182 = _5114;
                  _5183 = _5115;
                  _5184 = _4466;
                  _5185 = _4465;
                  _5186 = _5110;
                  _5187 = _5111;
                  _5188 = _5112;
                }
              } else {
                _4947 = saturate(_4460);  // [sem: _4460_sat]
                _4948 = 1.0f - _4402;
                _4949 = 1.0f - _4468;
                _4950 = _4949 * _4949;
                _4953 = ((_4950 * _4950) * _4949) + _4468;
                _4954 = 1.0f - _4947;
                _4955 = _4954 * _4954;
                _4960 = 1.0f - _4463;
                _4961 = _4960 * _4960;
                _4988 = (_4947 * 0.31830987f) * ((((_4468 * ((((_4948 * 34.5f) + -59.0f) * _4948) + 24.5f)) * exp2(-0.0f - (max(((_4948 * 73.2f) + -21.2f), 8.9f) * sqrt(_4465)))) + _4953) + ((((1.0f - ((_4955 * _4955) * (_4954 * 0.75f))) * (1.0f - ((_4961 * _4961) * (_4960 * 0.75f)))) - _4953) * saturate((_4948 * 2.2f) + -0.5f)));
                _4991 = saturate(1.0f - saturate(_4466));  // [sem: expr_sat]
                _4992 = _4991 * _4991;
                _4994 = (_4992 * _4992) * _4991;
                _4997 = _4994 * saturate(_4399 * 50.0f);
                _4998 = 1.0f - _4994;
                _5002 = (_4998 * _4398) + _4997;
                _5003 = (_4998 * _4399) + _4997;
                _5004 = (_4998 * _4400) + _4997;
                if (!(_4306 == 29)) {
                  _5006 = saturate(_4461);  // [sem: _4461_sat]
                  _5007 = 1.0f - _4401;
                  _5019 = (((_4465 * _4402) - _4465) * _4465) + 1.0f;
                  _5023 = (_4402 / ((_5019 * _5019) * 3.1415927f)) * (0.5f / ((((_4463 * _5007) + _4401) * _4461) + (_4463 * ((_4461 * _5007) + _4401))));
                  _5034 = (max((_5023 * _5002), 0.0f) * _5006);
                  _5035 = (max((_5023 * _5003), 0.0f) * _5006);
                  _5036 = (max((_5023 * _5004), 0.0f) * _5006);
                } else {
                  _5034 = 0.0f;
                  _5035 = 0.0f;
                  _5036 = 0.0f;
                }
                if (_4375) {
                  if (_4306 == 65) {
                    _5080 = _5034;
                    _5081 = _5035;
                    _5082 = _5036;
                    _5087 = max(1e-06f, _exposure2.x);
                    _5096 = ((_4947 * 50.265484f) * exp2(log2(saturate(dot(float3(_4339, _4340, _4341), float3(_1817, _1818, _1819)))) * 16.0f)) / (((_5087 * _5087) * 1e+06f) + 1.0f);
                    _5181 = ((((_5096 * _4257) - _4988) * _4305) + _4988);
                    _5182 = ((((_5096 * _4258) - _4988) * _4305) + _4988);
                    _5183 = ((((_5096 * _4259) - _4988) * _4305) + _4988);
                    _5184 = _4466;
                    _5185 = _4465;
                    _5186 = _5080;
                    _5187 = _5081;
                    _5188 = _5082;
                  } else {
                    _5044 = 1.0f - _4407;
                    _5056 = (((_4465 * _4408) - _4465) * _4465) + 1.0f;
                    _5060 = (_4408 / ((_5056 * _5056) * 3.1415927f)) * (0.5f / ((((_4463 * _5044) + _4407) * _4461) + (_4463 * ((_4461 * _5044) + _4407))));
                    _5067 = saturate(_4461) * 0.39990234f;
                    _5075 = ((max((_5060 * _5002), 0.0f) * _5067) + (_5034 * 0.60009766f));
                    _5076 = ((max((_5060 * _5003), 0.0f) * _5067) + (_5035 * 0.60009766f));
                    _5077 = ((max((_5060 * _5004), 0.0f) * _5067) + (_5036 * 0.60009766f));
                    if (_4306 == 65) {
                      _5080 = _5075;
                      _5081 = _5076;
                      _5082 = _5077;
                      _5087 = max(1e-06f, _exposure2.x);
                      _5096 = ((_4947 * 50.265484f) * exp2(log2(saturate(dot(float3(_4339, _4340, _4341), float3(_1817, _1818, _1819)))) * 16.0f)) / (((_5087 * _5087) * 1e+06f) + 1.0f);
                      _5181 = ((((_5096 * _4257) - _4988) * _4305) + _4988);
                      _5182 = ((((_5096 * _4258) - _4988) * _4305) + _4988);
                      _5183 = ((((_5096 * _4259) - _4988) * _4305) + _4988);
                      _5184 = _4466;
                      _5185 = _4465;
                      _5186 = _5080;
                      _5187 = _5081;
                      _5188 = _5082;
                    } else {
                      _5110 = _5075;
                      _5111 = _5076;
                      _5112 = _5077;
                      _5113 = _4988;
                      _5114 = _4988;
                      _5115 = _4988;
                      if (_4344) {
                        _5118 = dot(float3(_1817, _1818, _1819), float3(_4339, _4340, _4341)) * 2.0f;
                        _5122 = _1817 - (_5118 * _4339);
                        _5123 = _1818 - (_5118 * _4340);
                        _5124 = _1819 - (_5118 * _4341);
                        _5125 = _4445 - _5122;
                        _5126 = _4446 - _5123;
                        _5127 = _4447 - _5124;
                        _5129 = rsqrt(dot(float3(_5125, _5126, _5127), float3(_5125, _5126, _5127)));  // [sem: invLength]
                        _5130 = _5125 * _5129;
                        _5131 = _5126 * _5129;
                        _5132 = _5127 * _5129;
                        _5133 = -0.0f - _5122;
                        _5134 = -0.0f - _5123;
                        _5135 = -0.0f - _5124;
                        _5137 = saturate(dot(float3(_4289, _4290, _4291), float3(_5133, _5134, _5135)));  // [sem: expr_sat]
                        _5139 = saturate(dot(float3(_4339, _4340, _4341), float3(_5130, _5131, _5132)));  // [sem: expr_sat]
                        _5141 = saturate(_4461);  // [sem: _4461_sat]
                        _5152 = 1.0f - ((_5139 * _5139) * 0.9f);
                        _5155 = (0.03183099f / (_5152 * _5152)) * (0.5f / ((((_5137 * 0.9f) + 0.1f) * _4461) + (_5137 * ((_4461 * 0.9f) + 0.1f))));
                        _5181 = _5113;
                        _5182 = _5114;
                        _5183 = _5115;
                        _5184 = dot(float3(_5133, _5134, _5135), float3(_5130, _5131, _5132));
                        _5185 = _5139;
                        _5186 = (((float(half(max((_5155 * _4257), 0.0f) * _5141)) - _5110) * 0.875f) + _5110);
                        _5187 = (((float(half(max((_5155 * _4258), 0.0f) * _5141)) - _5111) * 0.875f) + _5111);
                        _5188 = (((float(half(max((_5155 * _4259), 0.0f) * _5141)) - _5112) * 0.875f) + _5112);
                      } else {
                        _5181 = _5113;
                        _5182 = _5114;
                        _5183 = _5115;
                        _5184 = _4466;
                        _5185 = _4465;
                        _5186 = _5110;
                        _5187 = _5111;
                        _5188 = _5112;
                      }
                    }
                  }
                } else {
                  _5075 = _5034;
                  _5076 = _5035;
                  _5077 = _5036;
                  if (_4306 == 65) {
                    _5080 = _5075;
                    _5081 = _5076;
                    _5082 = _5077;
                    _5087 = max(1e-06f, _exposure2.x);
                    _5096 = ((_4947 * 50.265484f) * exp2(log2(saturate(dot(float3(_4339, _4340, _4341), float3(_1817, _1818, _1819)))) * 16.0f)) / (((_5087 * _5087) * 1e+06f) + 1.0f);
                    _5181 = ((((_5096 * _4257) - _4988) * _4305) + _4988);
                    _5182 = ((((_5096 * _4258) - _4988) * _4305) + _4988);
                    _5183 = ((((_5096 * _4259) - _4988) * _4305) + _4988);
                    _5184 = _4466;
                    _5185 = _4465;
                    _5186 = _5080;
                    _5187 = _5081;
                    _5188 = _5082;
                  } else {
                    _5110 = _5075;
                    _5111 = _5076;
                    _5112 = _5077;
                    _5113 = _4988;
                    _5114 = _4988;
                    _5115 = _4988;
                    if (_4344) {
                      _5118 = dot(float3(_1817, _1818, _1819), float3(_4339, _4340, _4341)) * 2.0f;
                      _5122 = _1817 - (_5118 * _4339);
                      _5123 = _1818 - (_5118 * _4340);
                      _5124 = _1819 - (_5118 * _4341);
                      _5125 = _4445 - _5122;
                      _5126 = _4446 - _5123;
                      _5127 = _4447 - _5124;
                      _5129 = rsqrt(dot(float3(_5125, _5126, _5127), float3(_5125, _5126, _5127)));  // [sem: invLength]
                      _5130 = _5125 * _5129;
                      _5131 = _5126 * _5129;
                      _5132 = _5127 * _5129;
                      _5133 = -0.0f - _5122;
                      _5134 = -0.0f - _5123;
                      _5135 = -0.0f - _5124;
                      _5137 = saturate(dot(float3(_4289, _4290, _4291), float3(_5133, _5134, _5135)));  // [sem: expr_sat]
                      _5139 = saturate(dot(float3(_4339, _4340, _4341), float3(_5130, _5131, _5132)));  // [sem: expr_sat]
                      _5141 = saturate(_4461);  // [sem: _4461_sat]
                      _5152 = 1.0f - ((_5139 * _5139) * 0.9f);
                      _5155 = (0.03183099f / (_5152 * _5152)) * (0.5f / ((((_5137 * 0.9f) + 0.1f) * _4461) + (_5137 * ((_4461 * 0.9f) + 0.1f))));
                      _5181 = _5113;
                      _5182 = _5114;
                      _5183 = _5115;
                      _5184 = dot(float3(_5133, _5134, _5135), float3(_5130, _5131, _5132));
                      _5185 = _5139;
                      _5186 = (((float(half(max((_5155 * _4257), 0.0f) * _5141)) - _5110) * 0.875f) + _5110);
                      _5187 = (((float(half(max((_5155 * _4258), 0.0f) * _5141)) - _5111) * 0.875f) + _5111);
                      _5188 = (((float(half(max((_5155 * _4259), 0.0f) * _5141)) - _5112) * 0.875f) + _5112);
                    } else {
                      _5181 = _5113;
                      _5182 = _5114;
                      _5183 = _5115;
                      _5184 = _4466;
                      _5185 = _4465;
                      _5186 = _5110;
                      _5187 = _5111;
                      _5188 = _5112;
                    }
                  }
                }
              }
            } else {
              _5181 = _4762;
              _5182 = _4763;
              _5183 = _4764;
              _5184 = _4466;
              _5185 = _4465;
              _5186 = _4759;
              _5187 = _4760;
              _5188 = _4761;
            }
            _5210 = select(_4768, _4939, _5186) * _3967;
            _5211 = select(_4768, _4940, _5187) * _3968;
            _5212 = select(_4768, _4941, _5188) * _3969;
            _5220 = _5184;
            _5221 = _5185;
            _5222 = select(_4768, 0.0f, _4756);
            _5223 = select(_4768, 0.0f, _4757);
            _5224 = select(_4768, 0.0f, _4758);
            _5225 = select(_4768, (_5210 + _4936), _5210);
            _5226 = select(_4768, (_5211 + _4937), _5211);
            _5227 = select(_4768, (_5212 + _4938), _5212);
            _5228 = (select(_4768, _4942, (-0.0f - min(-0.0f, (-0.0f - _5181)))) * _3967);
            _5229 = (select(_4768, _4943, (-0.0f - min(-0.0f, (-0.0f - _5182)))) * _3968);
            _5230 = (select(_4768, _4944, (-0.0f - min(-0.0f, (-0.0f - _5183)))) * _3969);
          } else {
            _5220 = _4466;
            _5221 = _4465;
            _5222 = _4756;
            _5223 = _4757;
            _5224 = _4758;
            _5225 = _4759;
            _5226 = _4760;
            _5227 = _4761;
            _5228 = _4762;
            _5229 = _4763;
            _5230 = _4764;
          }
        }
      } else {
        _5220 = _4466;
        _5221 = _4465;
        _5222 = _4756;
        _5223 = _4757;
        _5224 = _4758;
        _5225 = _4759;
        _5226 = _4760;
        _5227 = _4761;
        _5228 = _4762;
        _5229 = _4763;
        _5230 = _4764;
      }
    }
    if (_4428) {
      _5234 = max(0.0f, (0.3f - _4460)) * 0.23190688f;
      _5242 = ((_5234 * _3967) + _5228);
      _5243 = ((_5234 * _3968) + _5229);
      _5244 = ((_5234 * _3969) + _5230);
    } else {
      _5242 = _5228;
      _5243 = _5229;
      _5244 = _5230;
    }
    _5246 = 1.0f - (_5220 * 0.85f);
    if (_4375) {
      _5250 = max(4.0f, _4433);
      _5251 = _5250 * _5250;
      _5253 = exp2(_5251 * -225.4211f);
      _5258 = exp2(_5251 * -29.807749f);
      _5266 = exp2(_5251 * -7.7149463f);
      _5272 = exp2(_5251 * -2.5444357f);
      _5274 = _5272 * 0.007f;
      _5279 = exp2(_5251 * -0.72497237f);
      _5294 = saturate(dot(float3(_4445, _4446, _4447), float3((-0.0f - _3451), (-0.0f - _3452), (-0.0f - _3453))) + 0.3f) * 0.31830987f;
      _5587 = _3967;
      _5588 = _3968;
      _5589 = _3969;
      _5590 = _5222;
      _5591 = _5223;
      _5592 = _5224;
      _5593 = ((_5294 * ((((((_5258 * 0.1f) + (_5253 * 0.233f)) + (_5266 * 0.118f)) + (_5272 * 0.113f)) + (_5279 * 0.358f)) + (exp2(_5251 * -0.19469568f) * 0.078f))) + _5242);
      _5594 = ((_5294 * (((((_5258 * 0.336f) + (_5253 * 0.455f)) + (_5266 * 0.198f)) + _5274) + (_5279 * 0.004f))) + _5243);
      _5595 = ((_5294 * (((_5258 * 0.344f) + (_5253 * 0.649f)) + _5274)) + _5244);
      _5596 = _5593 * _4449;
      _5597 = _5594 * _4450;
      _5598 = _5595 * _4451;
      _5600 = (_5225 * _4449) * _5587;
      _5602 = (_5226 * _4450) * _5588;
      _5604 = (_5227 * _4451) * _5589;
      if (_4404) {
        _5606 = _5600;
        _5607 = _5602;
        _5608 = _5604;
        _5609 = _5596;
        _5610 = _5597;
        _5611 = _5598;
        _5612 = _5590;
        _5613 = _5591;
        _5614 = _5592;
        _5615 = _5587;
        _5616 = _5588;
        _5617 = _5589;
        if ((_123 < 1000.0f) && (_3954 == 0.0h)) {
          if (!(abs(_3452) > 0.99f)) {
            _5625 = -0.0f - _3453;
            _5627 = rsqrt(dot(float3(_5625, 0.0f, _3451), float3(_5625, 0.0f, _3451)));  // [sem: invLength]
            _5631 = (_5627 * _5625);
            _5632 = (_5627 * _3451);
          } else {
            _5631 = 1.0f;
            _5632 = 0.0f;
          }
          _5634 = -0.0f - (_3452 * _5632);
          _5637 = (_5632 * _3451) - (_5631 * _3453);
          _5638 = _5631 * _3452;
          _5640 = rsqrt(dot(float3(_5634, _5637, _5638), float3(_5634, _5637, _5638)));  // [sem: invLength]
          // [sem: _3__36__0__0__g_blueNoise_sampleLod]
          _5648 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_5631, 0.0f, _5632), float3(_4047, _4048, _4050)), dot(float3((_5640 * _5634), (_5637 * _5640), (_5640 * _5638)), float3(_4047, _4048, _4050))), 0.0f);
          _5652 = _5648.x + -0.5f;
          _5653 = _5648.y + -0.5f;
          _5654 = _5648.z + -0.5f;
          _5656 = rsqrt(dot(float3(_5652, _5653, _5654), float3(_5652, _5653, _5654)));  // [sem: invLength]
          _5660 = (_5652 * _5656) + _4339;
          _5661 = (_5653 * _5656) + _4340;
          _5662 = (_5654 * _5656) + _4341;
          _5664 = rsqrt(dot(float3(_5660, _5661, _5662), float3(_5660, _5661, _5662)));  // [sem: invLength]
          _5665 = _5660 * _5664;
          _5666 = _5661 * _5664;
          _5667 = _5662 * _5664;
          _5679 = abs(((_104 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
          _5680 = abs(1.0f - ((_105 * 2.0f) * _bufferSizeAndInvSize.w));
          _5683 = saturate(_5679 * _5679);  // [sem: expr_sat]
          _5684 = saturate(_5680 * _5680);  // [sem: expr_sat]
          _5698 = dot(float3((-0.0f - _5665), (-0.0f - _5666), (-0.0f - _5667)), float3(_4445, _4446, _4447));
          _5700 = saturate(dot(float3(_5665, _5666, _5667), float3(_1817, _1818, _1819)));  // [sem: expr_sat]
          _5702 = saturate(1.0f - _5220);  // [sem: expr_sat]
          _5703 = _5702 * _5702;
          _5705 = (_5703 * _5703) * _5702;
          _5721 = 1.0f - ((_5221 * _5221) * 0.9999f);
          _5728 = (max((((3.1830987e-05f / (_5721 * _5721)) * (0.5f / ((((_5700 * 0.9999f) + 0.0001f) * _5698) + (_5700 * ((_5698 * 0.9999f) + 0.0001f))))) * (lerp(_5705, 1.0f, 0.08f))), 0.0f) * saturate(_5698)) + (exp2(log2(saturate(dot(float3(_1817, _1818, _1819), float3(_5665, _5666, _5667)))) * 1024.0f) * 50.0f);
          // [sem: expr_sat]
          _5733 = saturate(1.0f - (_123 * 0.001f)) * ((1.0f - ((_5684 * _5684) * (3.0f - (_5684 * 2.0f)))) * (1.0f - ((_5683 * _5683) * (3.0f - (_5683 * 2.0f)))));
          _5747 = _5609;
          _5748 = _5610;
          _5749 = _5611;
          _5750 = _5612;
          _5751 = _5613;
          _5752 = _5614;
          _5753 = ((((_5733 * _4449) * _5615) * _5728) + _5606);
          _5754 = ((((_5733 * _4450) * _5616) * _5728) + _5607);
          _5755 = ((((_5733 * _4451) * _5617) * _5728) + _5608);
        } else {
          _5747 = _5609;
          _5748 = _5610;
          _5749 = _5611;
          _5750 = _5612;
          _5751 = _5613;
          _5752 = _5614;
          _5753 = _5606;
          _5754 = _5607;
          _5755 = _5608;
        }
      } else {
        _5747 = _5596;
        _5748 = _5597;
        _5749 = _5598;
        _5750 = _5590;
        _5751 = _5591;
        _5752 = _5592;
        _5753 = _5600;
        _5754 = _5602;
        _5755 = _5604;
      }
    } else {
      if (_4471) {
        _5304 = dot(float3(_4257, _4258, _4259), float3(0.212671f, 0.71516f, 0.072169f)) * _renderParams2.w;
        _5307 = _5304 + (_1752 - (_5304 * _1752));
        _5309 = saturate(_123 + -7.0f);  // [sem: expr_sat]
        _5325 = (((pow(_3967, 1.2f)) - _3967) * _5309) + _3967;
        _5326 = (((pow(_3968, 1.2f)) - _3968) * _5309) + _3968;
        _5327 = (((pow(_3969, 1.2f)) - _3969) * _5309) + _3969;
        _5334 = saturate(abs(dot(float3(_4445, _4446, _4447), float3(_1700, _1701, _1702))));  // [sem: expr_sat]
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _5343 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_5334, _4267, saturate(sqrt(sqrt(_4257)))), 0.0f);
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _5346 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_5334, _4267, saturate(sqrt(sqrt(_4258)))), 0.0f);
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _5349 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_5334, _4267, saturate(sqrt(sqrt(_4259)))), 0.0f);
        _5358 = min(0.99f, _5343.x);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _5359 = min(0.99f, _5346.x);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _5360 = min(0.99f, _5349.x);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _5361 = min(0.99f, _5343.y);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _5362 = min(0.99f, _5346.y);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _5363 = min(0.99f, _5349.y);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _5364 = _5358 * _5358;
        _5365 = _5359 * _5359;
        _5366 = _5360 * _5360;
        _5367 = _5361 * _5361;
        _5368 = _5362 * _5362;
        _5369 = _5363 * _5363;
        _5370 = _5367 * _5361;
        _5371 = _5368 * _5362;
        _5372 = _5369 * _5363;
        _5373 = 1.0f - _5364;
        _5374 = 1.0f - _5365;
        _5375 = 1.0f - _5366;
        _5385 = _5373 * _5373;
        _5386 = _5374 * _5374;
        _5387 = _5375 * _5375;
        _5388 = _5385 * _5373;
        _5389 = _5386 * _5374;
        _5390 = _5387 * _5375;
        _5398 = min(max(_4267, 0.18f), 0.6f);
        _5399 = _5398 * _5398;
        _5400 = _5399 * 0.25f;
        _5401 = _5399 * 4.0f;
        _5403 = (_5359 + _5358) + _5360;
        _5404 = _5358 / _5403;
        _5405 = _5359 / _5403;
        _5406 = _5360 / _5403;
        _5407 = dot(float3(_5399, _5400, _5401), float3(_5404, _5405, _5406));
        _5408 = _5407 * _5407;
        _5412 = (asin(min(max(dot(float3(_1700, _1701, _1702), float3(_1817, _1818, _1819)), -1.0f), 1.0f)) + asin(min(max(dot(float3(_1700, _1701, _1702), float3(_4445, _4446, _4447)), -1.0f), 1.0f))) * 0.5f;
        _5413 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_5404, _5405, _5406));
        _5423 = _5413 * _5413;
        _5446 = (_5362 + _5361) + _5363;
        _5450 = dot(float3(_5399, _5400, _5401), float3((_5361 / _5446), (_5362 / _5446), (_5363 / _5446)));
        _5454 = sqrt((_5450 * _5450) + (_5408 * 2.0f));
        _5472 = (_5450 * 3.0f) + (_5407 * 2.0f);
        _5479 = (((_5370 + _5361) * ((_5364 * 0.7f) + 1.0f)) * _5454) / ((_5472 * _5370) + _5361);
        _5480 = (((_5371 + _5362) * ((_5365 * 0.7f) + 1.0f)) * _5454) / ((_5472 * _5371) + _5362);
        _5481 = (((_5372 + _5363) * ((_5366 * 0.7f) + 1.0f)) * _5454) / ((_5472 * _5372) + _5363);
        _5485 = _5412 - (((_5423 * (((_5364 * 4.0f) * _5367) + (_5385 * 2.0f))) * (1.0f - ((_5367 * 2.0f) / _5385))) / _5388);
        _5492 = _5412 - (((_5423 * (((_5365 * 4.0f) * _5368) + (_5386 * 2.0f))) * (1.0f - ((_5368 * 2.0f) / _5386))) / _5389);
        _5499 = _5412 - (((_5423 * (((_5366 * 4.0f) * _5369) + (_5387 * 2.0f))) * (1.0f - ((_5369 * 2.0f) / _5387))) / _5390);
        _5509 = ((1.0f - _1698) * 2.1f) * ((_5309 * 0.75f) + 0.25f);
        _5530 = (_1698 * 0.31830987f) * saturate(_4460);
        _5587 = _5325;
        _5588 = _5326;
        _5589 = _5327;
        _5590 = (((_5307 * _4449) * _5325) * ((((((_5370 * _5364) / _5388) + ((_5361 * _5364) / _5373)) * _5509) * exp2((((_5485 * _5485) * -0.5f) / ((_5479 * _5479) + _5408)) * 1.442695f)) + _5222));
        _5591 = (((_5307 * _4450) * _5326) * ((((((_5371 * _5365) / _5389) + ((_5362 * _5365) / _5374)) * _5509) * exp2((((_5492 * _5492) * -0.5f) / ((_5480 * _5480) + _5408)) * 1.442695f)) + _5223));
        _5592 = (((_5307 * _4451) * _5327) * ((((((_5372 * _5366) / _5390) + ((_5363 * _5366) / _5375)) * _5509) * exp2((((_5499 * _5499) * -0.5f) / ((_5481 * _5481) + _5408)) * 1.442695f)) + _5224));
        _5593 = (_5530 * _5325);
        _5594 = (_5530 * _5326);
        _5595 = (_5530 * _5327);
        _5596 = _5593 * _4449;
        _5597 = _5594 * _4450;
        _5598 = _5595 * _4451;
        _5600 = (_5225 * _4449) * _5587;
        _5602 = (_5226 * _4450) * _5588;
        _5604 = (_5227 * _4451) * _5589;
        if (_4404) {
          _5606 = _5600;
          _5607 = _5602;
          _5608 = _5604;
          _5609 = _5596;
          _5610 = _5597;
          _5611 = _5598;
          _5612 = _5590;
          _5613 = _5591;
          _5614 = _5592;
          _5615 = _5587;
          _5616 = _5588;
          _5617 = _5589;
          if ((_123 < 1000.0f) && (_3954 == 0.0h)) {
            if (!(abs(_3452) > 0.99f)) {
              _5625 = -0.0f - _3453;
              _5627 = rsqrt(dot(float3(_5625, 0.0f, _3451), float3(_5625, 0.0f, _3451)));  // [sem: invLength]
              _5631 = (_5627 * _5625);
              _5632 = (_5627 * _3451);
            } else {
              _5631 = 1.0f;
              _5632 = 0.0f;
            }
            _5634 = -0.0f - (_3452 * _5632);
            _5637 = (_5632 * _3451) - (_5631 * _3453);
            _5638 = _5631 * _3452;
            _5640 = rsqrt(dot(float3(_5634, _5637, _5638), float3(_5634, _5637, _5638)));  // [sem: invLength]
            // [sem: _3__36__0__0__g_blueNoise_sampleLod]
            _5648 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_5631, 0.0f, _5632), float3(_4047, _4048, _4050)), dot(float3((_5640 * _5634), (_5637 * _5640), (_5640 * _5638)), float3(_4047, _4048, _4050))), 0.0f);
            _5652 = _5648.x + -0.5f;
            _5653 = _5648.y + -0.5f;
            _5654 = _5648.z + -0.5f;
            _5656 = rsqrt(dot(float3(_5652, _5653, _5654), float3(_5652, _5653, _5654)));  // [sem: invLength]
            _5660 = (_5652 * _5656) + _4339;
            _5661 = (_5653 * _5656) + _4340;
            _5662 = (_5654 * _5656) + _4341;
            _5664 = rsqrt(dot(float3(_5660, _5661, _5662), float3(_5660, _5661, _5662)));  // [sem: invLength]
            _5665 = _5660 * _5664;
            _5666 = _5661 * _5664;
            _5667 = _5662 * _5664;
            _5679 = abs(((_104 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
            _5680 = abs(1.0f - ((_105 * 2.0f) * _bufferSizeAndInvSize.w));
            _5683 = saturate(_5679 * _5679);  // [sem: expr_sat]
            _5684 = saturate(_5680 * _5680);  // [sem: expr_sat]
            _5698 = dot(float3((-0.0f - _5665), (-0.0f - _5666), (-0.0f - _5667)), float3(_4445, _4446, _4447));
            _5700 = saturate(dot(float3(_5665, _5666, _5667), float3(_1817, _1818, _1819)));  // [sem: expr_sat]
            _5702 = saturate(1.0f - _5220);  // [sem: expr_sat]
            _5703 = _5702 * _5702;
            _5705 = (_5703 * _5703) * _5702;
            _5721 = 1.0f - ((_5221 * _5221) * 0.9999f);
            _5728 = (max((((3.1830987e-05f / (_5721 * _5721)) * (0.5f / ((((_5700 * 0.9999f) + 0.0001f) * _5698) + (_5700 * ((_5698 * 0.9999f) + 0.0001f))))) * (lerp(_5705, 1.0f, 0.08f))), 0.0f) * saturate(_5698)) + (exp2(log2(saturate(dot(float3(_1817, _1818, _1819), float3(_5665, _5666, _5667)))) * 1024.0f) * 50.0f);
            // [sem: expr_sat]
            _5733 = saturate(1.0f - (_123 * 0.001f)) * ((1.0f - ((_5684 * _5684) * (3.0f - (_5684 * 2.0f)))) * (1.0f - ((_5683 * _5683) * (3.0f - (_5683 * 2.0f)))));
            _5747 = _5609;
            _5748 = _5610;
            _5749 = _5611;
            _5750 = _5612;
            _5751 = _5613;
            _5752 = _5614;
            _5753 = ((((_5733 * _4449) * _5615) * _5728) + _5606);
            _5754 = ((((_5733 * _4450) * _5616) * _5728) + _5607);
            _5755 = ((((_5733 * _4451) * _5617) * _5728) + _5608);
          } else {
            _5747 = _5609;
            _5748 = _5610;
            _5749 = _5611;
            _5750 = _5612;
            _5751 = _5613;
            _5752 = _5614;
            _5753 = _5606;
            _5754 = _5607;
            _5755 = _5608;
          }
        } else {
          _5747 = _5596;
          _5748 = _5597;
          _5749 = _5598;
          _5750 = _5590;
          _5751 = _5591;
          _5752 = _5592;
          _5753 = _5600;
          _5754 = _5602;
          _5755 = _5604;
        }
      } else {
        if (_4427) {
          if (_4306 == 97) {
            _5606 = ((_5225 * _4449) * _3967);
            _5607 = ((_5226 * _4450) * _3968);
            _5608 = ((_5227 * _4451) * _3969);
            _5609 = (_5242 * _4449);
            _5610 = (_5243 * _4450);
            _5611 = (_5244 * _4451);
            _5612 = _5222;
            _5613 = _5223;
            _5614 = _5224;
            _5615 = _3967;
            _5616 = _3968;
            _5617 = _3969;
            if ((_123 < 1000.0f) && (_3954 == 0.0h)) {
              if (!(abs(_3452) > 0.99f)) {
                _5625 = -0.0f - _3453;
                _5627 = rsqrt(dot(float3(_5625, 0.0f, _3451), float3(_5625, 0.0f, _3451)));  // [sem: invLength]
                _5631 = (_5627 * _5625);
                _5632 = (_5627 * _3451);
              } else {
                _5631 = 1.0f;
                _5632 = 0.0f;
              }
              _5634 = -0.0f - (_3452 * _5632);
              _5637 = (_5632 * _3451) - (_5631 * _3453);
              _5638 = _5631 * _3452;
              _5640 = rsqrt(dot(float3(_5634, _5637, _5638), float3(_5634, _5637, _5638)));  // [sem: invLength]
              // [sem: _3__36__0__0__g_blueNoise_sampleLod]
              _5648 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_5631, 0.0f, _5632), float3(_4047, _4048, _4050)), dot(float3((_5640 * _5634), (_5637 * _5640), (_5640 * _5638)), float3(_4047, _4048, _4050))), 0.0f);
              _5652 = _5648.x + -0.5f;
              _5653 = _5648.y + -0.5f;
              _5654 = _5648.z + -0.5f;
              _5656 = rsqrt(dot(float3(_5652, _5653, _5654), float3(_5652, _5653, _5654)));  // [sem: invLength]
              _5660 = (_5652 * _5656) + _4339;
              _5661 = (_5653 * _5656) + _4340;
              _5662 = (_5654 * _5656) + _4341;
              _5664 = rsqrt(dot(float3(_5660, _5661, _5662), float3(_5660, _5661, _5662)));  // [sem: invLength]
              _5665 = _5660 * _5664;
              _5666 = _5661 * _5664;
              _5667 = _5662 * _5664;
              _5679 = abs(((_104 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
              _5680 = abs(1.0f - ((_105 * 2.0f) * _bufferSizeAndInvSize.w));
              _5683 = saturate(_5679 * _5679);  // [sem: expr_sat]
              _5684 = saturate(_5680 * _5680);  // [sem: expr_sat]
              _5698 = dot(float3((-0.0f - _5665), (-0.0f - _5666), (-0.0f - _5667)), float3(_4445, _4446, _4447));
              _5700 = saturate(dot(float3(_5665, _5666, _5667), float3(_1817, _1818, _1819)));  // [sem: expr_sat]
              _5702 = saturate(1.0f - _5220);  // [sem: expr_sat]
              _5703 = _5702 * _5702;
              _5705 = (_5703 * _5703) * _5702;
              _5721 = 1.0f - ((_5221 * _5221) * 0.9999f);
              _5728 = (max((((3.1830987e-05f / (_5721 * _5721)) * (0.5f / ((((_5700 * 0.9999f) + 0.0001f) * _5698) + (_5700 * ((_5698 * 0.9999f) + 0.0001f))))) * (lerp(_5705, 1.0f, 0.08f))), 0.0f) * saturate(_5698)) + (exp2(log2(saturate(dot(float3(_1817, _1818, _1819), float3(_5665, _5666, _5667)))) * 1024.0f) * 50.0f);
              // [sem: expr_sat]
              _5733 = saturate(1.0f - (_123 * 0.001f)) * ((1.0f - ((_5684 * _5684) * (3.0f - (_5684 * 2.0f)))) * (1.0f - ((_5683 * _5683) * (3.0f - (_5683 * 2.0f)))));
              _5747 = _5609;
              _5748 = _5610;
              _5749 = _5611;
              _5750 = _5612;
              _5751 = _5613;
              _5752 = _5614;
              _5753 = ((((_5733 * _4449) * _5615) * _5728) + _5606);
              _5754 = ((((_5733 * _4450) * _5616) * _5728) + _5607);
              _5755 = ((((_5733 * _4451) * _5617) * _5728) + _5608);
            } else {
              _5747 = _5609;
              _5748 = _5610;
              _5749 = _5611;
              _5750 = _5612;
              _5751 = _5613;
              _5752 = _5614;
              _5753 = _5606;
              _5754 = _5607;
              _5755 = _5608;
            }
          } else {
            if ((uint)((int)(_4306) + (int)(-105)) < (uint)2) {
              _5747 = (_5242 * _4449);
              _5748 = (_5243 * _4450);
              _5749 = (_5244 * _4451);
              _5750 = _5222;
              _5751 = _5223;
              _5752 = _5224;
              _5753 = ((_5225 * _4449) * _3967);
              _5754 = ((_5226 * _4450) * _3968);
              _5755 = ((_5227 * _4451) * _3969);
            } else {
              if (!(_4433 >= 999.9f)) {
                _5561 = ((max(0.002f, _4433) * 0.4f) / ((_4305 * 100.0f) + 0.1f));
              } else {
                _5561 = 1000.0f;
              }
              _5562 = _5561 * _5561;
              _5572 = (((_4305 * 0.25f) * (0.022082746f / (_5246 * _5246))) * max(0.0f, (0.3f - _4460))) * ((exp2(_5562 * -0.48089835f) * 3.0f) + exp2(_5562 * -1.442695f));
              _5587 = _3967;
              _5588 = _3968;
              _5589 = _3969;
              _5590 = _5222;
              _5591 = _5223;
              _5592 = _5224;
              _5593 = (_5572 + _5242);
              _5594 = (_5572 + _5243);
              _5595 = (_5572 + _5244);
              _5596 = _5593 * _4449;
              _5597 = _5594 * _4450;
              _5598 = _5595 * _4451;
              _5600 = (_5225 * _4449) * _5587;
              _5602 = (_5226 * _4450) * _5588;
              _5604 = (_5227 * _4451) * _5589;
              if (_4404) {
                _5606 = _5600;
                _5607 = _5602;
                _5608 = _5604;
                _5609 = _5596;
                _5610 = _5597;
                _5611 = _5598;
                _5612 = _5590;
                _5613 = _5591;
                _5614 = _5592;
                _5615 = _5587;
                _5616 = _5588;
                _5617 = _5589;
                if ((_123 < 1000.0f) && (_3954 == 0.0h)) {
                  if (!(abs(_3452) > 0.99f)) {
                    _5625 = -0.0f - _3453;
                    _5627 = rsqrt(dot(float3(_5625, 0.0f, _3451), float3(_5625, 0.0f, _3451)));  // [sem: invLength]
                    _5631 = (_5627 * _5625);
                    _5632 = (_5627 * _3451);
                  } else {
                    _5631 = 1.0f;
                    _5632 = 0.0f;
                  }
                  _5634 = -0.0f - (_3452 * _5632);
                  _5637 = (_5632 * _3451) - (_5631 * _3453);
                  _5638 = _5631 * _3452;
                  _5640 = rsqrt(dot(float3(_5634, _5637, _5638), float3(_5634, _5637, _5638)));  // [sem: invLength]
                  // [sem: _3__36__0__0__g_blueNoise_sampleLod]
                  _5648 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_5631, 0.0f, _5632), float3(_4047, _4048, _4050)), dot(float3((_5640 * _5634), (_5637 * _5640), (_5640 * _5638)), float3(_4047, _4048, _4050))), 0.0f);
                  _5652 = _5648.x + -0.5f;
                  _5653 = _5648.y + -0.5f;
                  _5654 = _5648.z + -0.5f;
                  _5656 = rsqrt(dot(float3(_5652, _5653, _5654), float3(_5652, _5653, _5654)));  // [sem: invLength]
                  _5660 = (_5652 * _5656) + _4339;
                  _5661 = (_5653 * _5656) + _4340;
                  _5662 = (_5654 * _5656) + _4341;
                  _5664 = rsqrt(dot(float3(_5660, _5661, _5662), float3(_5660, _5661, _5662)));  // [sem: invLength]
                  _5665 = _5660 * _5664;
                  _5666 = _5661 * _5664;
                  _5667 = _5662 * _5664;
                  _5679 = abs(((_104 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
                  _5680 = abs(1.0f - ((_105 * 2.0f) * _bufferSizeAndInvSize.w));
                  _5683 = saturate(_5679 * _5679);  // [sem: expr_sat]
                  _5684 = saturate(_5680 * _5680);  // [sem: expr_sat]
                  _5698 = dot(float3((-0.0f - _5665), (-0.0f - _5666), (-0.0f - _5667)), float3(_4445, _4446, _4447));
                  _5700 = saturate(dot(float3(_5665, _5666, _5667), float3(_1817, _1818, _1819)));  // [sem: expr_sat]
                  _5702 = saturate(1.0f - _5220);  // [sem: expr_sat]
                  _5703 = _5702 * _5702;
                  _5705 = (_5703 * _5703) * _5702;
                  _5721 = 1.0f - ((_5221 * _5221) * 0.9999f);
                  _5728 = (max((((3.1830987e-05f / (_5721 * _5721)) * (0.5f / ((((_5700 * 0.9999f) + 0.0001f) * _5698) + (_5700 * ((_5698 * 0.9999f) + 0.0001f))))) * (lerp(_5705, 1.0f, 0.08f))), 0.0f) * saturate(_5698)) + (exp2(log2(saturate(dot(float3(_1817, _1818, _1819), float3(_5665, _5666, _5667)))) * 1024.0f) * 50.0f);
                  // [sem: expr_sat]
                  _5733 = saturate(1.0f - (_123 * 0.001f)) * ((1.0f - ((_5684 * _5684) * (3.0f - (_5684 * 2.0f)))) * (1.0f - ((_5683 * _5683) * (3.0f - (_5683 * 2.0f)))));
                  _5747 = _5609;
                  _5748 = _5610;
                  _5749 = _5611;
                  _5750 = _5612;
                  _5751 = _5613;
                  _5752 = _5614;
                  _5753 = ((((_5733 * _4449) * _5615) * _5728) + _5606);
                  _5754 = ((((_5733 * _4450) * _5616) * _5728) + _5607);
                  _5755 = ((((_5733 * _4451) * _5617) * _5728) + _5608);
                } else {
                  _5747 = _5609;
                  _5748 = _5610;
                  _5749 = _5611;
                  _5750 = _5612;
                  _5751 = _5613;
                  _5752 = _5614;
                  _5753 = _5606;
                  _5754 = _5607;
                  _5755 = _5608;
                }
              } else {
                _5747 = _5596;
                _5748 = _5597;
                _5749 = _5598;
                _5750 = _5590;
                _5751 = _5591;
                _5752 = _5592;
                _5753 = _5600;
                _5754 = _5602;
                _5755 = _5604;
              }
            }
          }
        } else {
          _5587 = _3967;
          _5588 = _3968;
          _5589 = _3969;
          _5590 = _5222;
          _5591 = _5223;
          _5592 = _5224;
          _5593 = _5242;
          _5594 = _5243;
          _5595 = _5244;
          _5596 = _5593 * _4449;
          _5597 = _5594 * _4450;
          _5598 = _5595 * _4451;
          _5600 = (_5225 * _4449) * _5587;
          _5602 = (_5226 * _4450) * _5588;
          _5604 = (_5227 * _4451) * _5589;
          if (_4404) {
            _5606 = _5600;
            _5607 = _5602;
            _5608 = _5604;
            _5609 = _5596;
            _5610 = _5597;
            _5611 = _5598;
            _5612 = _5590;
            _5613 = _5591;
            _5614 = _5592;
            _5615 = _5587;
            _5616 = _5588;
            _5617 = _5589;
            if ((_123 < 1000.0f) && (_3954 == 0.0h)) {
              if (!(abs(_3452) > 0.99f)) {
                _5625 = -0.0f - _3453;
                _5627 = rsqrt(dot(float3(_5625, 0.0f, _3451), float3(_5625, 0.0f, _3451)));  // [sem: invLength]
                _5631 = (_5627 * _5625);
                _5632 = (_5627 * _3451);
              } else {
                _5631 = 1.0f;
                _5632 = 0.0f;
              }
              _5634 = -0.0f - (_3452 * _5632);
              _5637 = (_5632 * _3451) - (_5631 * _3453);
              _5638 = _5631 * _3452;
              _5640 = rsqrt(dot(float3(_5634, _5637, _5638), float3(_5634, _5637, _5638)));  // [sem: invLength]
              // [sem: _3__36__0__0__g_blueNoise_sampleLod]
              _5648 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_5631, 0.0f, _5632), float3(_4047, _4048, _4050)), dot(float3((_5640 * _5634), (_5637 * _5640), (_5640 * _5638)), float3(_4047, _4048, _4050))), 0.0f);
              _5652 = _5648.x + -0.5f;
              _5653 = _5648.y + -0.5f;
              _5654 = _5648.z + -0.5f;
              _5656 = rsqrt(dot(float3(_5652, _5653, _5654), float3(_5652, _5653, _5654)));  // [sem: invLength]
              _5660 = (_5652 * _5656) + _4339;
              _5661 = (_5653 * _5656) + _4340;
              _5662 = (_5654 * _5656) + _4341;
              _5664 = rsqrt(dot(float3(_5660, _5661, _5662), float3(_5660, _5661, _5662)));  // [sem: invLength]
              _5665 = _5660 * _5664;
              _5666 = _5661 * _5664;
              _5667 = _5662 * _5664;
              _5679 = abs(((_104 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
              _5680 = abs(1.0f - ((_105 * 2.0f) * _bufferSizeAndInvSize.w));
              _5683 = saturate(_5679 * _5679);  // [sem: expr_sat]
              _5684 = saturate(_5680 * _5680);  // [sem: expr_sat]
              _5698 = dot(float3((-0.0f - _5665), (-0.0f - _5666), (-0.0f - _5667)), float3(_4445, _4446, _4447));
              _5700 = saturate(dot(float3(_5665, _5666, _5667), float3(_1817, _1818, _1819)));  // [sem: expr_sat]
              _5702 = saturate(1.0f - _5220);  // [sem: expr_sat]
              _5703 = _5702 * _5702;
              _5705 = (_5703 * _5703) * _5702;
              _5721 = 1.0f - ((_5221 * _5221) * 0.9999f);
              _5728 = (max((((3.1830987e-05f / (_5721 * _5721)) * (0.5f / ((((_5700 * 0.9999f) + 0.0001f) * _5698) + (_5700 * ((_5698 * 0.9999f) + 0.0001f))))) * (lerp(_5705, 1.0f, 0.08f))), 0.0f) * saturate(_5698)) + (exp2(log2(saturate(dot(float3(_1817, _1818, _1819), float3(_5665, _5666, _5667)))) * 1024.0f) * 50.0f);
              // [sem: expr_sat]
              _5733 = saturate(1.0f - (_123 * 0.001f)) * ((1.0f - ((_5684 * _5684) * (3.0f - (_5684 * 2.0f)))) * (1.0f - ((_5683 * _5683) * (3.0f - (_5683 * 2.0f)))));
              _5747 = _5609;
              _5748 = _5610;
              _5749 = _5611;
              _5750 = _5612;
              _5751 = _5613;
              _5752 = _5614;
              _5753 = ((((_5733 * _4449) * _5615) * _5728) + _5606);
              _5754 = ((((_5733 * _4450) * _5616) * _5728) + _5607);
              _5755 = ((((_5733 * _4451) * _5617) * _5728) + _5608);
            } else {
              _5747 = _5609;
              _5748 = _5610;
              _5749 = _5611;
              _5750 = _5612;
              _5751 = _5613;
              _5752 = _5614;
              _5753 = _5606;
              _5754 = _5607;
              _5755 = _5608;
            }
          } else {
            _5747 = _5596;
            _5748 = _5597;
            _5749 = _5598;
            _5750 = _5590;
            _5751 = _5591;
            _5752 = _5592;
            _5753 = _5600;
            _5754 = _5602;
            _5755 = _5604;
          }
        }
      }
    }
    _5762 = _5747 + _3955;
    _5763 = _5748 + _3956;
    _5764 = _5749 + _3957;
    _5767 = (uint)((uint)(_frameNumber.x)) * (uint)(13);
    [branch]
    if ((((int)((int)((uint)((uint)(_5767)) + (uint)((uint)(_101)))) | (int)((int)((uint)((uint)(_5767)) + (uint)((uint)(_103))))) & 31) == 0) {
      __3__38__0__1__g_sceneColorLightingOnlyForAwbUAV[int2(((int)(_101) >> 5), ((int)(_103) >> 5))] = float4((half)(half(_5762)), (half)(half(_5763)), (half)(half(_5764)), 1.0f);
    }
    _5782 = ((uint)(_4306 & 24) > (uint)23);
    if (_4378) {
      _5799 = saturate(exp2((_4373 * _4373) * (_123 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _5799 = select((_cavityParams.z > 0.0f), select(_184, 0.0f, _1811), 1.0f);  // [sem: expr_sat]
    }
    _5814 = select(_4375, 1.0f, (select((_cavityParams.x == 0.0f), 1.0f, _5799) * select((_183 && _5782), (1.0f - _1811), 1.0f)));
    _5818 = min(60000.0f, (_5814 * (((_3670 * _3407) * _3675) - min(0.0f, (-0.0f - _5753)))));
    _5819 = min(60000.0f, (_5814 * (((_3671 * _3408) * _3675) - min(0.0f, (-0.0f - _5754)))));
    _5820 = min(60000.0f, (_5814 * (((_3672 * _3409) * _3675) - min(0.0f, (-0.0f - _5755)))));
    _5823 = 1.0f - _renderParams.x;
    _5830 = half((_renderParams.x * _4257) + _5823);
    _5831 = half((_renderParams.x * _4258) + _5823);
    _5832 = half((_renderParams.x * _4259) + _5823);
    if (_4375 && (_renderParams2.x == 0.0f)) {
      _5848 = (half)(exp2((half)((half)(log2(_5830)) * 0.5h)));
      _5849 = (half)(exp2((half)((half)(log2(_5831)) * 0.5h)));
      _5850 = (half)(exp2((half)((half)(log2(_5832)) * 0.5h)));
    } else {
      _5848 = _5830;
      _5849 = _5831;
      _5850 = _5832;
    }
    _5855 = select(((_4374 == 54) || ((_4306 & -5) == 33)), 0.0f, _3954);
    _5856 = float(_5848);
    _5857 = float(_5849);
    _5858 = float(_5850);
    if (_4347) {
      _5865 = saturate(((_5857 + _5856) + _5858) * 1.2f);  // [sem: expr_sat]
    } else {
      _5865 = 1.0f;  // [sem: expr_sat]
    }
    _5866 = float(_5855);
    _5872 = (0.7f / min(max(max(max(_5856, _5857), _5858), 0.01f), 0.7f)) * _5865;
    _5879 = ((_5872 * _5856) + -0.04f) * _5866;
    _5880 = ((_5872 * _5857) + -0.04f) * _5866;
    _5881 = ((_5872 * _5858) + -0.04f) * _5866;
    _5882 = _5879 + 0.04f;
    _5883 = _5880 + 0.04f;
    _5884 = _5881 + 0.04f;
    if (_4404 || (_4470 || (_4469 || ((_4306 == 33) || (_4306 == 54))))) {
      // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
      _5896 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__3__40__0__0__g_samplerClamp, float2(min(0.99f, _1825), (1.0f - max(0.02f, float(_280)))), 0.0f);
      _5900 = _5896.x;
      _5901 = _5896.y;
    } else {
      _5900 = _3668;
      _5901 = _3669;
    }
    _5905 = (_5900 * _5882) + _5901;
    _5906 = (_5900 * _5883) + _5901;
    _5907 = (_5900 * _5884) + _5901;
    _5909 = (1.0f - _5900) - _5901;
    _5916 = ((0.96f - _5879) * 0.04761905f) + _5882;
    _5917 = ((0.96f - _5880) * 0.04761905f) + _5883;
    _5918 = ((0.96f - _5881) * 0.04761905f) + _5884;
    _5935 = saturate(1.0f - _3949);  // [sem: expr_sat]
    _5936 = (((_5905 * _5916) / (1.0f - (_5909 * _5916))) * _5909) * _5935;
    _5937 = (((_5906 * _5917) / (1.0f - (_5909 * _5917))) * _5909) * _5935;
    _5938 = (((_5907 * _5918) / (1.0f - (_5909 * _5918))) * _5909) * _5935;
    _5949 = float(1.0h - _5855);
    _5959 = half(((_5856 * _5949) * saturate((1.0f - _5905) - _5936)) + _5936);
    _5960 = half(((_5857 * _5949) * saturate((1.0f - _5906) - _5937)) + _5937);
    _5961 = half(((_5858 * _5949) * saturate((1.0f - _5907) - _5938)) + _5938);
    _5963 = float(_5959);
    _5964 = float(_5960);
    _5965 = float(_5961);
    if (_4306 == 65) {
      _5969 = max(1e-06f, _exposure2.x);
      _5977 = ((pow(_4463, 16.0f)) * 50.265484f) / (((_5969 * _5969) * 1e+06f) + 1.0f);
      _5994 = (((((_5963 * _5762) * _5977) - _5762) * _1775) + _5762);
      _5995 = (((((_5964 * _5763) * _5977) - _5763) * _1775) + _5763);
      _5996 = (((((_5965 * _5764) * _5977) - _5764) * _1775) + _5764);
    } else {
      _5994 = _5762;
      _5995 = _5763;
      _5996 = _5764;
    }
    _6000 = (min(65535.0f, _5750) + _3958) + (_5994 * _5963);
    _6001 = (min(65535.0f, _5751) + _3959) + (_5995 * _5964);
    _6002 = (min(65535.0f, _5752) + _3960) + (_5996 * _5965);
    _6031 = exp2((saturate(_1076) * 20.0f) + -8.0f) + -0.00390625f;
    _6032 = _6031 * select((_1073 < 0.04045f), (_1073 * 0.07739938f), exp2(log2((_1073 + 0.055f) * 0.94786733f) * 2.4f));
    _6033 = _6031 * select((_1074 < 0.04045f), (_1074 * 0.07739938f), exp2(log2((_1074 + 0.055f) * 0.94786733f) * 2.4f));
    _6034 = _6031 * select((_1075 < 0.04045f), (_1075 * 0.07739938f), exp2(log2((_1075 + 0.055f) * 0.94786733f) * 2.4f));
    _6047 = ((_6032 * 0.61312f) + (_6033 * 0.33951f)) + (_6034 * 0.04737f);
    _6048 = ((_6032 * 0.0702f) + (_6033 * 0.91636f)) + (_6034 * 0.01345f);
    _6049 = ((_6032 * 0.02062f) + (_6033 * 0.10958f)) + (_6034 * 0.8698f);
    if (_1007) {
      _6055 = (_6047 + _6000);
      _6056 = (_6048 + _6001);
      _6057 = (_6049 + _6002);
    } else {
      _6055 = _6000;
      _6056 = _6001;
      _6057 = _6002;
    }
    _6061 = _6055 + (_5818 * _5866);
    _6062 = _6056 + (_5819 * _5866);
    _6063 = _6057 + (_5820 * _5866);
    if (!(((_131 || _133) || _135) || _137)) {
      _6065 = QuadReadLaneAt(_6061, 0);
      _6066 = QuadReadLaneAt(_6062, 0);
      _6067 = QuadReadLaneAt(_6063, 0);
      _6068 = QuadReadLaneAt(_6061, 1);
      _6069 = QuadReadLaneAt(_6062, 1);
      _6070 = QuadReadLaneAt(_6063, 1);
      _6074 = QuadReadLaneAt(_6061, 2);
      _6075 = QuadReadLaneAt(_6062, 2);
      _6076 = QuadReadLaneAt(_6063, 2);
      _6080 = QuadReadLaneAt(_6061, 3);
      _6081 = QuadReadLaneAt(_6062, 3);
      _6082 = QuadReadLaneAt(_6063, 3);
      _6090 = ((((_6068 + _6065) + _6074) + _6080) * 0.25f);
      _6091 = ((((_6069 + _6066) + _6075) + _6081) * 0.25f);
      _6092 = ((((_6070 + _6067) + _6076) + _6082) * 0.25f);
    } else {
      _6090 = _6061;
      _6091 = _6062;
      _6092 = _6063;
    }
    [branch]
    if ((((int)(_103) | (int)(_101)) & 1) == 0) {
      _6097 = dot(float3(_6090, _6091, _6092), float3(0.212671f, 0.71516f, 0.072169f));
      __3__38__0__1__g_diffuseHalfPrevUAV[int2(((int)(_101) >> 1), ((int)(_103) >> 1))] = float4(min(60000.0f, _6090), min(60000.0f, _6091), min(60000.0f, _6092), min(60000.0f, select((_2390 != 0), (-0.0f - _6097), _6097)));
    }
    if (_5782) {
      _6118 = ((_5855 == 0.0h) && (((_5959 < 0.010002136h) && (_5960 < 0.010002136h)) && (_5961 < 0.010002136h)));
    } else {
      _6118 = false;
    }
    if ((_5782 || ((_4306 == 96) || (_4470 || ((_4306 & -4) == 64)))) || ((_123 <= 10.0f) && _4404)) {
      __3__38__0__1__g_sceneSpecularUAV[int2(_101, _103)] = float4(((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _5818)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _5819)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _5820)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _3421)))))));
      _6151 = _6055;
      _6152 = _6056;
      _6153 = _6057;
    } else {
      _6151 = (_6055 + _5818);
      _6152 = (_6056 + _5819);
      _6153 = (_6057 + _5820);
    }
    if (_1007 && ((uint)((int)(_4306) + (int)(-52)) > (uint)15)) {
      _6158 = dot(float3(_6047, _6048, _6049), float3(0.212671f, 0.71516f, 0.072169f));
      _6162 = max((max(_6158, 1.0f) / max(_6158, 0.1f)), 0.0f);
      _6173 = ((_6151 - _6047) + (_6162 * _6047));
      _6174 = ((_6152 - _6048) + (_6162 * _6048));
      _6175 = ((_6153 - _6049) + (_6162 * _6049));
    } else {
      _6173 = _6151;
      _6174 = _6152;
      _6175 = _6153;
    }
    _6176 = min(60000.0f, _6173);
    _6177 = min(60000.0f, _6174);
    _6178 = min(60000.0f, _6175);
    if (!_128) {
      [branch]
      if (_6118) {
        _6183 = __3__38__0__1__g_sceneColorUAV[int2(_101, _103)].x;
        _6184 = __3__38__0__1__g_sceneColorUAV[int2(_101, _103)].y;
        _6185 = __3__38__0__1__g_sceneColorUAV[int2(_101, _103)].z;
        _6190 = (_6183 + _6176);
        _6191 = (_6184 + _6177);
        _6192 = (_6185 + _6178);
      } else {
        _6190 = _6176;
        _6191 = _6177;
        _6192 = _6178;
      }
      if (!(_renderParams.y == 0.0f)) {
        _6201 = dot(float3(_6190, _6191, _6192), float3(0.212671f, 0.71516f, 0.072169f));
        _6202 = min((max(0.01f, _exposure3.w) * 4096.0f), _6201);
        _6206 = max(1e-09f, _6201);
        _6211 = ((_6202 * _6190) / _6206);
        _6212 = ((_6202 * _6191) / _6206);
        _6213 = ((_6202 * _6192) / _6206);
      } else {
        _6211 = _6190;
        _6212 = _6191;
        _6213 = _6192;
      }
      __3__38__0__1__g_sceneColorUAV[int2(_101, _103)] = float4(_6211, _6212, _6213, 1.0f);
    }
  }
}
