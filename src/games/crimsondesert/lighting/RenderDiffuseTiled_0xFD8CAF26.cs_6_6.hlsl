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

Texture2D<half4> __3__36__0__0__g_sceneDiffuse : register(t188, space36);

Texture2D<half4> __3__36__0__0__g_diffuseResult : register(t59, space36);

Texture2D<half4> __3__36__0__0__g_diffuseResultPrev : register(t183, space36);

Texture2D<half4> __3__36__0__0__g_specularResultPrev : register(t60, space36);

Texture2D<half2> __3__36__0__0__g_sceneAO : register(t61, space36);

Texture2D<float> __3__36__0__0__g_specularSampleCountPrev : register(t62, space36);

Texture2D<uint4> __3__36__0__0__g_baseColor : register(t21, space36);

Texture2D<float4> __3__36__0__0__g_normal : register(t22, space36);

Texture2D<float2> __3__36__0__0__g_velocity : register(t23, space36);

Texture2D<uint> __3__36__0__0__g_sceneNormal : register(t24, space36);

Texture2D<uint> __3__36__0__0__g_sceneNormalPrev : register(t64, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t51, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t79, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaquePrev : register(t80, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t54, space36);

Texture2D<float4> __3__36__0__0__g_manyLightsMoments : register(t81, space36);

Texture2D<float> __3__36__0__0__g_specularRayHitDistance : register(t82, space36);

Texture2D<float> __3__36__0__0__g_caustic : register(t83, space36);

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
  half _320;
  half _321;
  half _322;
  half _323;
  float _348;
  float _349;
  float _350;
  bool _366;
  float _446;
  float _447;
  float _448;
  float _449;
  float _483;
  float _484;
  float _485;
  float _486;
  int _492;
  half _493;
  float _494;
  float _495;
  float _496;
  float _497;
  float _526;
  half _527;
  float _529;
  float _555;
  float _556;
  float _563;
  half _564;
  float _565;
  float _566;
  float _567;
  float _573;
  half _574;
  float _575;
  float _576;
  float _577;
  half _602;
  float _619;
  float _983;
  half _984;
  float _985;
  float _986;
  float _987;
  int _988;
  float _989;
  float _990;
  float _991;
  bool _1013;
  bool _1016;
  bool _1017;
  float _1035;
  float _1046;
  float _1047;
  half _1057;
  half _1058;
  half _1059;
  half _1060;
  half _1061;
  float _1062;
  float _1063;
  float _1075;
  bool _1098;
  float _1107;
  float _1148;
  float _1149;
  float _1240;
  float _1318;
  float _1479;
  float _1480;
  float _1481;
  float _1482;
  float _1645;
  int _1646;
  float _1703;
  float _1742;
  float _1829;
  float _1830;
  float _1831;
  float _1832;
  float _1834;
  float _1835;
  float _1836;
  float _1837;
  float _1841;
  float _1842;
  float _1843;
  float _1844;
  float _1845;
  float _1870;
  half _1896;
  bool _1908;
  half _1951;
  int _1952;
  float _1953;
  float _1954;
  float _1955;
  float _2092;
  float _2145;
  float _2164;
  float _2168;
  half _2192;
  half _2195;
  half _2196;
  float _2302;
  float _2350;
  float _2365;
  float _2468;
  int _2469;
  int _2470;
  float _2471;
  float _2472;
  float _2473;
  float _2474;
  float _2632;
  float _2633;
  float _2634;
  float _2635;
  float _2700;
  float _2713;
  float _2714;
  float _2715;
  float _2769;
  float _2770;
  float _2834;
  float _2835;
  float _2836;
  float _2905;
  float _2906;
  float _2907;
  float _2922;
  float _2923;
  float _2924;
  float _2925;
  float _2926;
  bool _2988;
  bool _2989;
  float _3025;
  float _3026;
  float _3027;
  float _3028;
  float _3094;
  float _3097;
  float _3098;
  float _3099;
  float _3100;
  float _3135;
  float _3136;
  float _3137;
  float _3152;
  float _3181;
  float _3182;
  float _3183;
  float _3184;
  float _3185;
  half _3192;
  half _3193;
  half _3194;
  half _3195;
  half _3196;
  float _3197;
  float _3203;
  half _3204;
  half _3205;
  half _3206;
  half _3207;
  half _3208;
  float _3209;
  float _3210;
  float _3211;
  float _3212;
  float _3213;
  float _3214;
  half _3251;
  half _3252;
  half _3253;
  float _3268;
  float _3269;
  float _3270;
  float _3290;
  float _3355;
  float _3453;
  float _3454;
  float _3455;
  bool _3523;
  bool _3544;
  bool _3546;
  bool _3547;
  float _3564;
  int _3565;
  float _3566;
  float _3567;
  float _3568;
  float _3569;
  float _3613;
  float _3650;
  float _3657;
  float _3658;
  float _3659;
  bool _3683;
  bool _3686;
  bool _3687;
  float _3704;
  float _3705;
  float _3706;
  float _3746;
  float _4014;
  float _4015;
  float _4016;
  float _4017;
  float _4018;
  float _4019;
  float _4020;
  float _4021;
  float _4022;
  float _4194;
  float _4195;
  float _4196;
  float _4197;
  float _4198;
  float _4199;
  float _4200;
  float _4201;
  float _4202;
  float _4292;
  float _4293;
  float _4294;
  float _4333;
  float _4334;
  float _4335;
  float _4338;
  float _4339;
  float _4340;
  float _4368;
  float _4369;
  float _4370;
  float _4371;
  float _4372;
  float _4373;
  float _4439;
  float _4440;
  float _4441;
  float _4442;
  float _4443;
  float _4444;
  float _4445;
  float _4446;
  float _4478;
  float _4479;
  float _4480;
  float _4481;
  float _4482;
  float _4483;
  float _4484;
  float _4485;
  float _4486;
  float _4487;
  float _4488;
  float _4500;
  float _4501;
  float _4502;
  float _4805;
  float _4821;
  float _4822;
  float _4823;
  float _4824;
  float _4825;
  float _4826;
  float _4827;
  float _4828;
  float _4829;
  float _4840;
  float _4841;
  float _4842;
  float _4854;
  float _4855;
  float _4856;
  float _4857;
  float _4858;
  float _4859;
  float _4860;
  float _4861;
  float _4862;
  float _4863;
  float _4864;
  float _4865;
  float _4867;
  float _4868;
  float _4869;
  float _4870;
  float _4871;
  float _4872;
  float _4873;
  float _4874;
  float _4875;
  float _4876;
  float _4877;
  float _4878;
  float _4892;
  float _4893;
  float _5008;
  float _5009;
  float _5010;
  float _5011;
  float _5012;
  float _5013;
  float _5014;
  float _5015;
  float _5016;
  float _5060;
  half _5109;
  half _5110;
  half _5111;
  float _5126;
  float _5161;
  float _5162;
  float _5255;
  float _5256;
  float _5257;
  float _5327;
  float _5328;
  float _5329;
  float _5362;
  float _5363;
  float _5364;
  bool _5390;
  float _5423;
  float _5424;
  float _5425;
  float _5445;
  float _5446;
  float _5447;
  float _5462;
  float _5463;
  float _5464;
  float _5483;
  float _5484;
  float _5485;
  uint4 _146;
  float4 _152;
  half _161;
  half _165;
  half _170;
  half _174;
  half _179;
  half _183;
  uint _186;
  bool _187;
  bool _188;
  float _198;
  float _199;
  float _200;
  float _202;
  half _206;
  half _207;
  half _208;
  int _209;
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
  half _284;
  half _288;
  half _289;
  half _290;
  half _306;
  half _307;
  half _308;
  half4 _325;
  float _329;
  float _330;
  float _331;
  bool _334;
  half4 _337;
  float4 _352;
  bool _374;
  float _375;
  float _376;
  float _377;
  float _379;
  float _381;
  float _417;
  float _418;
  float _419;
  float _420;
  float _422;
  float _423;
  float _424;
  float _425;
  bool _428;
  bool _429;
  bool _431;
  bool _435;
  float4 _440;
  uint _468;
  int _470;
  float4 _477;
  bool _501;
  float _508;
  float _539;
  float _540;
  float _542;
  float _543;
  float _544;
  float _558;
  float4 _579;
  float _586;
  float _587;
  float _588;
  float _590;
  float _591;
  float _592;
  float _593;
  float _603;
  float _620;
  float _621;
  float _622;
  float _623;
  float _624;
  float _625;
  float _626;
  float _627;
  float _633;
  float _637;
  float _638;
  float _639;
  float _643;
  float _644;
  float _645;
  float _652;
  float _662;
  float _663;
  float _664;
  float _665;
  float _666;
  float _667;
  float _676;
  float _681;
  float _687;
  float _688;
  float _692;
  float _693;
  float _698;
  float _699;
  float _700;
  float _701;
  float _713;
  float _717;
  float _727;
  float _728;
  float _732;
  float _734;
  float _735;
  float _748;
  float _758;
  float _759;
  float _760;
  float _769;
  float2 _778;
  float2 _781;
  float2 _784;
  float _791;
  float _792;
  float _793;
  float _794;
  float _795;
  float _796;
  float _797;
  float _798;
  float _799;
  float _800;
  float _801;
  float _802;
  float _803;
  float _804;
  float _805;
  float _806;
  float _807;
  float _808;
  float _818;
  float _819;
  float _820;
  float _821;
  float _822;
  float _823;
  float _831;
  float _832;
  float _833;
  float _834;
  float _836;
  float _837;
  float _838;
  float _839;
  float _840;
  float _841;
  float _844;
  float _845;
  float _846;
  float _856;
  float _879;
  float _883;
  float _887;
  float _905;
  float _912;
  float _913;
  float _914;
  float _923;
  float _930;
  float _937;
  float _965;
  float _966;
  float _967;
  float _968;
  float _969;
  float _998;
  float _999;
  float _1000;
  half2 _1002;
  bool _1010;
  bool _1022;
  bool _1023;
  float _1026;
  bool _1028;
  bool _1030;
  uint _1037;
  half _1048;
  bool _1052;
  int _1064;
  bool _1065;
  bool _1066;
  bool _1067;
  float _1068;
  float _1069;
  float _1070;
  float _1071;
  float _1076;
  int _1077;
  bool _1078;
  float _1135;
  float2 _1142;
  float _1153;
  float _1156;
  float _1157;
  float _1165;
  float _1171;
  float _1172;
  int _1175;
  int _1176;
  float _1177;
  float _1178;
  float _1183;
  float _1184;
  int4 _1187;
  int _1210;
  float _1248;
  float _1249;
  float _1250;
  float _1251;
  float _1255;
  float _1272;
  float _1273;
  float _1276;
  bool _1291;
  float _1293;
  float _1295;
  bool _1299;
  float _1326;
  float _1331;
  float _1332;
  float _1333;
  float _1334;
  float _1335;
  float _1336;
  float _1337;
  float _1338;
  float _1340;
  float _1353;
  float _1354;
  float _1355;
  float _1356;
  int _1358;
  int _1359;
  int _1360;
  int _1361;
  bool _1383;
  bool _1387;
  bool _1391;
  bool _1395;
  bool _1408;
  bool _1410;
  bool _1419;
  bool _1441;
  int4 _1484;
  float _1503;
  float _1504;
  float _1505;
  float _1507;
  float _1512;
  float _1527;
  float _1528;
  float _1529;
  float _1531;
  float _1536;
  float _1551;
  float _1552;
  float _1553;
  float _1555;
  float _1560;
  float _1575;
  float _1576;
  float _1577;
  float _1579;
  float _1584;
  float _1587;
  float _1604;
  float _1605;
  float _1606;
  float _1607;
  float _1612;
  float _1614;
  float _1616;
  float _1618;
  float _1620;
  float _1621;
  float _1622;
  float _1623;
  int _1626;
  int _1627;
  int _1635;
  int _1637;
  float _1656;
  uint _1657;
  half4 _1659;
  uint _1664;
  half4 _1665;
  half4 _1670;
  half4 _1675;
  float _1680;
  float _1689;
  float _1694;
  float _1707;
  bool _1708;
  float _1709;
  float _1711;
  float4 _1714;
  float _1719;
  float _1721;
  float _1723;
  float _1724;
  float _1725;
  float _1726;
  float _1784;
  float _1801;
  float _1802;
  float _1803;
  float _1808;
  float _1824;
  float _1852;
  float _1853;
  float _1854;
  float _1861;
  float _1862;
  float _1863;
  float _1871;
  float _1877;
  float _1887;
  float _1888;
  float _1889;
  float _1891;
  float _1897;
  bool _1900;
  bool _1910;
  half _1913;
  uint _1936;
  int _1938;
  float4 _1945;
  float _1957;
  float _1961;
  float _1962;
  float _1963;
  float _1969;
  float _1977;
  float _1979;
  float _1981;
  float _1985;
  float _1995;
  float _1996;
  float _1997;
  float _1998;
  float _2003;
  float _2008;
  float _2010;
  float _2012;
  float _2036;
  float _2040;
  float _2044;
  float _2048;
  float _2078;
  float _2083;
  float _2084;
  int _2096;
  bool _2099;
  float _2101;
  float _2105;
  float _2110;
  float _2136;
  float _2147;
  float _2153;
  float _2175;
  half _2181;
  half _2187;
  float _2197;
  float _2198;
  float _2199;
  float _2212;
  float _2213;
  float _2214;
  float _2215;
  float _2255;
  float _2260;
  float _2261;
  float _2262;
  float _2263;
  float _2273;
  float _2276;
  float _2292;
  float _2330;
  float _2333;
  float _2334;
  float _2335;
  float _2336;
  float _2366;
  bool _2368;
  float _2379;
  float _2380;
  int _2383;
  int _2384;
  float _2385;
  float _2386;
  int4 _2396;
  int _2403;
  float _2432;
  float _2433;
  float _2434;
  float _2435;
  float _2451;
  float _2452;
  float _2453;
  float _2454;
  bool _2475;
  uint _2476;
  half4 _2478;
  float _2491;
  uint _2497;
  half4 _2498;
  float _2511;
  half4 _2521;
  float _2534;
  half4 _2544;
  float _2557;
  float _2581;
  float _2583;
  float _2585;
  float _2587;
  float _2588;
  float _2597;
  float _2604;
  float _2611;
  float _2636;
  float _2637;
  float _2638;
  float _2651;
  float _2661;
  float _2662;
  float _2663;
  float _2675;
  float _2680;
  bool _2681;
  int _2683;
  bool _2703;
  float _2704;
  float _2705;
  float _2706;
  float _2707;
  float _2717;
  float _2718;
  float _2719;
  bool _2721;
  float _2722;
  float _2723;
  float _2724;
  float2 _2739;
  float2 _2745;
  float _2752;
  float _2753;
  float _2755;
  float _2763;
  float _2765;
  float _2772;
  float _2775;
  float _2776;
  float _2778;
  float _2786;
  float _2787;
  float _2788;
  float4 _2793;
  float _2797;
  float _2798;
  float _2799;
  float _2801;
  float _2805;
  float _2806;
  float _2807;
  float _2809;
  float2 _2822;
  float _2829;
  float _2842;
  float2 _2847;
  float2 _2852;
  float _2856;
  float _2858;
  float _2875;
  float _2879;
  float _2880;
  float _2881;
  float _2888;
  float2 _2912;
  float _2929;
  float _2936;
  float _2937;
  float _2938;
  float _2959;
  float4 _2969;
  bool _2999;
  float4 _3019;
  float _3035;
  float _3038;
  float _3051;
  float _3052;
  float _3053;
  float _3058;
  float _3063;
  float _3074;
  float _3092;
  float _3104;
  bool _3105;
  float _3108;
  float _3153;
  float _3154;
  float _3155;
  float _3160;
  float _3163;
  float _3170;
  float _3171;
  half4 _3216;
  uint _3223;
  float _3239;
  float _3240;
  float _3241;
  float _3243;
  bool _3256;
  float _3297;
  float _3298;
  float _3299;
  float _3300;
  float _3306;
  float _3311;
  float _3317;
  float _3325;
  float _3332;
  float2 _3360;
  float _3382;
  float _3400;
  float _3401;
  float _3402;
  float _3418;
  float _3426;
  float _3438;
  float _3441;
  float _3447;
  float _3475;
  float _3477;
  float _3484;
  float _3485;
  float _3486;
  float _3487;
  float _3503;
  float _3504;
  float _3505;
  float _3511;
  float _3512;
  float _3513;
  float _3514;
  float _3515;
  float _3516;
  float _3517;
  float _3525;
  float _3526;
  bool _3529;
  bool _3532;
  bool _3541;
  float _3548;
  float _3549;
  float _3550;
  uint16_t _3552;
  float _3574;
  float _3575;
  float _3576;
  float _3577;
  float _3588;
  float _3593;
  float _3594;
  float _3595;
  float _3597;
  float _3598;
  float _3599;
  float _3600;
  bool _3603;
  float _3605;
  bool _3606;
  float _3619;
  float _3629;
  float _3630;
  float _3631;
  float _3632;
  int _3633;
  bool _3634;
  bool _3637;
  float _3651;
  float _3660;
  float _3661;
  bool _3663;
  float _3665;
  float _3666;
  float _3667;
  bool _3669;
  float _3692;
  float _3707;
  float _3708;
  float _3709;
  float _3710;
  float _3711;
  float _3712;
  float _3714;
  float _3715;
  float _3716;
  float _3717;
  float _3718;
  float _3719;
  float _3721;
  float _3723;
  float _3724;
  float _3726;
  bool _3727;
  bool _3728;
  bool _3729;
  float _3761;
  float _3765;
  float4 _3770;
  float _3774;
  float _3775;
  float _3776;
  float _3777;
  float _3788;
  float _3789;
  float _3795;
  float _3799;
  float _3800;
  float _3801;
  float _3805;
  float _3806;
  float _3807;
  float _3814;
  float _3818;
  float _3825;
  float _3826;
  float _3827;
  float _3828;
  float _3829;
  float _3830;
  float _3832;
  float _3846;
  float _3847;
  float _3854;
  float _3863;
  float _3868;
  float _3874;
  float _3875;
  float _3879;
  float _3880;
  float _3885;
  float _3886;
  float _3887;
  float _3888;
  float _3900;
  float _3904;
  float _3914;
  float _3915;
  float _3919;
  float _3921;
  float _3922;
  float _3935;
  float _3942;
  float _3943;
  float _3953;
  float _3964;
  float _3969;
  float _3988;
  float _3990;
  float _3992;
  float _3994;
  float _4001;
  float _4002;
  float _4003;
  float _4010;
  float _4011;
  float _4012;
  bool _4024;
  bool _4025;
  bool _4026;
  float _4041;
  float _4047;
  float _4048;
  float _4049;
  float _4050;
  float _4051;
  float _4052;
  float _4053;
  float _4060;
  float _4073;
  float _4076;
  float _4077;
  float _4079;
  float _4082;
  float _4083;
  float _4084;
  float _4088;
  float _4089;
  float _4090;
  float _4091;
  float _4092;
  float _4093;
  float _4105;
  float _4109;
  float _4113;
  float _4114;
  float _4115;
  float _4116;
  float _4128;
  float _4132;
  float _4148;
  float _4153;
  float _4154;
  float _4164;
  float _4189;
  float _4205;
  float _4206;
  float _4207;
  float _4208;
  float _4211;
  float _4212;
  float _4213;
  float _4218;
  float _4219;
  float _4246;
  float _4249;
  float _4250;
  float _4252;
  float _4255;
  float _4256;
  float _4260;
  float _4261;
  float _4262;
  float _4264;
  float _4265;
  float _4277;
  float _4281;
  float _4302;
  float _4314;
  float _4318;
  float _4325;
  float _4345;
  float _4354;
  float _4376;
  float _4380;
  float _4381;
  float _4382;
  float _4383;
  float _4384;
  float _4385;
  float _4387;
  float _4388;
  float _4389;
  float _4390;
  float _4391;
  float _4392;
  float _4393;
  float _4395;
  float _4397;
  float _4399;
  float _4410;
  float _4413;
  float _4468;
  float _4469;
  float _4470;
  float _4492;
  float _4504;
  float _4508;
  float _4509;
  float _4511;
  float _4516;
  float _4524;
  float _4530;
  float _4532;
  float _4537;
  float _4552;
  float _4562;
  float _4565;
  float _4572;
  float _4573;
  float _4574;
  float _4580;
  float2 _4589;
  float2 _4592;
  float2 _4595;
  float _4604;
  float _4605;
  float _4606;
  float _4607;
  float _4608;
  float _4609;
  float _4610;
  float _4611;
  float _4612;
  float _4613;
  float _4614;
  float _4615;
  float _4616;
  float _4617;
  float _4618;
  float _4619;
  float _4620;
  float _4621;
  float _4631;
  float _4632;
  float _4633;
  float _4634;
  float _4635;
  float _4636;
  float _4644;
  float _4645;
  float _4646;
  float _4647;
  float _4649;
  float _4650;
  float _4651;
  float _4652;
  float _4653;
  float _4654;
  float _4658;
  float _4659;
  float _4669;
  float _4692;
  float _4696;
  float _4700;
  float _4718;
  float _4725;
  float _4726;
  float _4727;
  float _4731;
  float _4738;
  float _4745;
  float _4753;
  float _4774;
  float _4806;
  float _4816;
  float _4843;
  float _4844;
  float _4845;
  float _4847;
  float _4849;
  float _4851;
  float _4886;
  float _4888;
  float _4895;
  float _4898;
  float _4899;
  float _4901;
  float4 _4909;
  float _4913;
  float _4914;
  float _4915;
  float _4917;
  float _4921;
  float _4922;
  float _4923;
  float _4925;
  float _4926;
  float _4927;
  float _4928;
  float _4940;
  float _4941;
  float _4944;
  float _4945;
  float _4959;
  float _4961;
  float _4963;
  float _4964;
  float _4966;
  float _4982;
  float _4989;
  float _4994;
  float _5023;
  float _5024;
  float _5025;
  uint _5028;
  bool _5043;
  float _5075;
  float _5079;
  float _5080;
  float _5081;
  float _5084;
  half _5091;
  half _5092;
  half _5093;
  half _5116;
  float _5117;
  float _5118;
  float _5119;
  float _5127;
  float _5133;
  float _5140;
  float _5141;
  float _5142;
  float _5143;
  float _5144;
  float _5145;
  float2 _5157;
  float _5166;
  float _5167;
  float _5168;
  float _5170;
  float _5177;
  float _5178;
  float _5179;
  float _5196;
  float _5197;
  float _5198;
  float _5199;
  float _5210;
  half _5220;
  half _5221;
  half _5222;
  float _5224;
  float _5225;
  float _5226;
  float _5230;
  float _5238;
  float _5262;
  float _5272;
  float _5273;
  float _5274;
  float _5303;
  float _5304;
  float _5305;
  float _5306;
  float _5319;
  float _5320;
  float _5321;
  float _5333;
  float _5334;
  float _5335;
  float _5337;
  float _5338;
  float _5339;
  float _5340;
  float _5341;
  float _5342;
  float _5346;
  float _5347;
  float _5348;
  float _5352;
  float _5353;
  float _5354;
  float _5369;
  float _5430;
  float _5434;
  float _5448;
  float _5449;
  float _5450;
  float _5455;
  float _5456;
  float _5457;
  float _5473;
  float _5474;
  float _5478;
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
    _174 = half(((float)((uint)((uint)(_146.y & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _179 = half(((float)((uint)((uint)(((uint)((uint)(_146.w)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _183 = half(((float)((uint)((uint)(_146.w & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _186 = (uint)((_152.w * 3.0f) + 0.5f);  // [sem: _3__36__0__0__g_normal_load_derived]
    _187 = (_186 == 1);
    _188 = (_186 == 3);
    _198 = (saturate(_152.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _199 = (saturate(_152.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _200 = (saturate(_152.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _202 = rsqrt(dot(float3(_198, _199, _200), float3(_198, _199, _200)));  // [sem: invLength]
    _206 = half(_202 * _198);
    _207 = half(_202 * _199);
    _208 = half(_200 * _202);
    _209 = _117.x & 126;  // [sem: _3__36__0__0__g_stencil_load_derived]
    if (!(_209 == 24)) {
      _223 = ((half)(_179 * 2.0h)) + -1.0h;
      _224 = ((half)(_183 * 2.0h)) + -1.0h;
      _229 = float(_223 + _224) * 0.5f;
      _230 = float(_223 - _224) * 0.5f;
      _234 = (1.0f - abs(_229)) - abs(_230);
      _236 = rsqrt(dot(float3(_229, _230, _234), float3(_229, _230, _234)));  // [sem: invLength]
      _243 = float(_206);
      _244 = float(_207);
      _245 = float(_208);
      _247 = select((_208 >= 0.0h), 1.0f, -1.0f);
      _250 = -0.0f - (1.0f / (_247 + _245));
      _251 = _244 * _250;
      _252 = _251 * _243;
      _253 = _247 * _243;
      _260 = float(half(_236 * _229));
      _261 = float(half(_236 * _230));
      _262 = float(half(_236 * _234));
      _278 = (half)(half(((float)((uint)((uint)(_146.z & 255)))) * 0.003921569f));
      _279 = (half)(half(((float)((uint)((uint)(((uint)((uint)(_146.z)) >> 8) & 255)))) * 0.003921569f));
      _280 = (half)(half(mad(_262, _243, mad(_261, _252, (_260 * (((_253 * _243) * _250) + 1.0f))))));
      _281 = (half)(half(mad(_262, _244, mad(_261, ((_251 * _244) + _247), ((_260 * _247) * _252)))));
      _282 = (half)(half(mad(_262, _245, mad(_261, (-0.0f - _244), (-0.0f - (_253 * _260))))));
    } else {
      _278 = _183;
      _279 = _179;
      _280 = _206;
      _281 = _207;
      _282 = _208;
    }
    _284 = rsqrt((half)(dot(half3(_280, _281, _282), half3(_280, _281, _282))));  // [sem: invLength]
    _288 = saturate((half)(_161 * _161));  // [sem: expr_sat]
    _289 = saturate((half)(_165 * _165));  // [sem: expr_sat]
    _290 = saturate((half)(_170 * _170));  // [sem: expr_sat]
    // [sem: expr_sat]
    _306 = saturate((half)(((half)(((half)(_289 * 0.3395996h)) + ((half)(_288 * 0.61328125h)))) + ((half)(_290 * 0.04736328h))));
    // [sem: expr_sat]
    _307 = saturate((half)(((half)(((half)(_289 * 0.9165039h)) + ((half)(_288 * 0.07019043h)))) + ((half)(_290 * 0.013450623h))));
    // [sem: expr_sat]
    _308 = saturate((half)(((half)(((half)(_289 * 0.109558105h)) + ((half)(_288 * 0.020614624h)))) + ((half)(_290 * 0.8696289h))));
    if (!((uint)((int)(_119) + (int)(-65)) < (uint)2)) {
      _320 = ((half)(_284 * _280));
      _321 = ((half)(_284 * _281));
      _322 = ((half)(_284 * _282));
      _323 = (half)(select(((_119 == 24) || (_119 == 29)), 0.0f, _174));
    } else {
      _320 = _206;
      _321 = _207;
      _322 = _208;
      _323 = _174;
    }
    half4 _325 = __3__36__0__0__g_diffuseResult.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    _329 = float(_325.x);  // [sem: _3__36__0__0__g_diffuseResult_load_derived]
    _330 = float(_325.y);  // [sem: _3__36__0__0__g_diffuseResult_load_derived]
    _331 = float(_325.z);  // [sem: _3__36__0__0__g_diffuseResult_load_derived]
    _334 = (_renderParams2.y > 0.0f);
    [branch]
    if (_334) {
      half4 _337 = __3__36__0__0__g_sceneDiffuse.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_sceneDiffuse_load]
      _348 = (float(_337.x) + _329);
      _349 = (float(_337.y) + _330);
      _350 = (float(_337.z) + _331);
    } else {
      _348 = _329;
      _349 = _330;
      _350 = _331;
    }
    _352 = __3__36__0__0__g_specularResult.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    if ((uint)_119 > (uint)11) {
      if (!(((uint)_119 < (uint)21) || (_119 == 107))) {
        _366 = (_119 == 7);
      } else {
        _366 = true;
      }
    } else {
      if (!(_119 == 6)) {
        _366 = (_119 == 7);
      } else {
        _366 = true;
      }
    }
    _374 = ((uint)((int)(_119) + (int)(-27)) < (uint)2) || ((_119 == 26) || (((uint)((int)(_119) + (int)(-105)) < (uint)2) || _188));
    _375 = float(_320);
    _376 = float(_321);
    _377 = float(_322);
    _379 = (_111 * 2.0f) + -1.0f;
    _381 = 1.0f - (_112 * 2.0f);
    _417 = mad((_invViewProjRelative[3].z), _122, mad((_invViewProjRelative[3].y), _381, ((_invViewProjRelative[3].x) * _379))) + (_invViewProjRelative[3].w);
    _418 = (mad((_invViewProjRelative[0].z), _122, mad((_invViewProjRelative[0].y), _381, ((_invViewProjRelative[0].x) * _379))) + (_invViewProjRelative[0].w)) / _417;
    _419 = (mad((_invViewProjRelative[1].z), _122, mad((_invViewProjRelative[1].y), _381, ((_invViewProjRelative[1].x) * _379))) + (_invViewProjRelative[1].w)) / _417;
    _420 = (mad((_invViewProjRelative[2].z), _122, mad((_invViewProjRelative[2].y), _381, ((_invViewProjRelative[2].x) * _379))) + (_invViewProjRelative[2].w)) / _417;
    _422 = rsqrt(dot(float3(_418, _419, _420), float3(_418, _419, _420)));  // [sem: invLength]
    _423 = _422 * _418;
    _424 = _422 * _419;
    _425 = _422 * _420;
    _428 = (_209 == 66) || (_119 == 53);
    _429 = (_119 == 33);
    _431 = (_119 == 54);
    _435 = (_119 == 55);
    if (((_209 == 64) || (_431 || (_429 || _428))) || (_435 || _374)) {
      _440 = __3__36__0__0__g_character.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_character_load]
      _446 = _440.x;  // [sem: _3__36__0__0__g_character_load_derived]
      _447 = _440.y;  // [sem: _3__36__0__0__g_character_load_derived]
      _448 = _440.z;  // [sem: _3__36__0__0__g_character_load_derived]
      _449 = _440.w;  // [sem: _3__36__0__0__g_character_load_derived]
    } else {
      _446 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
      _447 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
      _448 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
      _449 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
    }
    if (!_429) {
      if (_431) {
        if ((((int)((uint)((_448 * 255.0f) + 0.5f))) & 112) == 0) {
          _492 = 52;
          _493 = _323;
          _494 = 0.0f;
          _495 = 0.0f;
          _496 = 0.0f;
          _497 = 0.0f;
        } else {
          _468 = (uint)((_448 * 255.0f) + 0.5f);
          _470 = ((uint)((uint)(_468)) >> 4) & 7;
          if (!(_470 == 0)) {
            _477 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_470) + (int)(1)))];
            _483 = min((1.0f - _477.y), _477.x);
            _484 = (((float)((uint)((uint)(_468 & 15)))) * 0.06666667f);
            _485 = _477.y;
            _486 = _477.x;
          } else {
            _483 = 0.0f;
            _484 = 0.0f;
            _485 = 0.0f;
            _486 = 0.0f;
          }
          _492 = _119;
          _493 = (half)(half(_effectiveMetallicForVelvet * _486));
          _494 = _483;
          _495 = _484;
          _496 = _485;
          _497 = _486;
        }
      } else {
        if (_435) {
          if ((((int)((uint)((_448 * 255.0f) + 0.5f))) & 127) == 0) {
            _492 = 52;
            _493 = _323;
            _494 = 0.0f;
            _495 = 0.0f;
            _496 = 0.0f;
            _497 = 0.0f;
          } else {
            _492 = 55;
            _493 = _323;
            _494 = 0.0f;
            _495 = 0.0f;
            _496 = 0.0f;
            _497 = 0.0f;
          }
        } else {
          _492 = _119;
          _493 = _323;
          _494 = 0.0f;
          _495 = 0.0f;
          _496 = 0.0f;
          _497 = 0.0f;
        }
      }
    } else {
      _468 = (uint)((_448 * 255.0f) + 0.5f);
      _470 = ((uint)((uint)(_468)) >> 4) & 7;
      if (!(_470 == 0)) {
        _477 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_470) + (int)(1)))];
        _483 = min((1.0f - _477.y), _477.x);
        _484 = (((float)((uint)((uint)(_468 & 15)))) * 0.06666667f);
        _485 = _477.y;
        _486 = _477.x;
      } else {
        _483 = 0.0f;
        _484 = 0.0f;
        _485 = 0.0f;
        _486 = 0.0f;
      }
      _492 = _119;
      _493 = (half)(half(_effectiveMetallicForVelvet * _486));
      _494 = _483;
      _495 = _484;
      _496 = _485;
      _497 = _486;
    }
    if (_492 == 66) {
      _529 = float(_493);
      _563 = _529;
      _564 = 0.0h;
      _565 = ((_446 * 2.0f) + -1.0f);
      _566 = ((_447 * 2.0f) + -1.0f);
      _567 = ((_448 * 2.0f) + -1.0f);
      if ((_492 == 53) || ((_492 & 126) == 66)) {
        _573 = _563;
        _574 = _564;
        _575 = _565;
        _576 = _566;
        _577 = _567;
        _579 = __3__36__0__0__g_bentCone.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_bentCone_load]
        _586 = (_579.x * 2.0f) + -1.0f;
        _587 = (_579.y * 2.0f) + -1.0f;
        _588 = (_579.z * 2.0f) + -1.0f;
        _590 = rsqrt(dot(float3(_586, _587, _588), float3(_586, _587, _588)));  // [sem: invLength]
        _591 = _586 * _590;
        _592 = _587 * _590;
        _593 = _588 * _590;
        if (!((_renderParams.z > 0.0f) || _334)) {
          _602 = (half)(saturate((half)(_279 + 0.15002441h)));
        } else {
          _602 = _279;
        }
        _603 = float(_602);
        if (_492 == 53) {
          _619 = (((asfloat(_globalLightParams.z) * _603) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_278)));
        } else {
          _619 = _bevelParams.y;
        }
        _620 = float(_306);
        _621 = float(_307);
        _622 = float(_308);
        _623 = dot(float3(_575, _576, _577), float3(_591, _592, _593));
        _624 = -0.0f - _423;
        _625 = -0.0f - _424;
        _626 = -0.0f - _425;
        _627 = dot(float3(_575, _576, _577), float3(_624, _625, _626));
        _633 = cos(abs(asin(_627) - asin(_623)) * 0.5f);
        _637 = _591 - (_623 * _575);
        _638 = _592 - (_623 * _576);
        _639 = _593 - (_623 * _577);
        _643 = _624 - (_627 * _575);
        _644 = _625 - (_627 * _576);
        _645 = _626 - (_627 * _577);
        // [sem: invLength]
        _652 = rsqrt((dot(float3(_643, _644, _645), float3(_643, _644, _645)) * dot(float3(_637, _638, _639), float3(_637, _638, _639))) + 0.0001f) * dot(float3(_637, _638, _639), float3(_643, _644, _645));
        _662 = min(max(_603, 0.09803922f), 1.0f);
        _663 = _662 * _662;
        _664 = _663 * 0.5f;
        _665 = _663 * 2.0f;
        _666 = _627 + _623;
        _667 = _666 - _619;
        _676 = 1.0f / ((1.19f / _633) + (_633 * 0.36f));
        _681 = ((_676 * (0.6f - (_652 * 0.8f))) + 1.0f) * sqrt(saturate((_652 * 0.5f) + 0.5f));
        _687 = 1.0f - (sqrt(saturate(1.0f - (_681 * _681))) * _633);
        _688 = _687 * _687;
        _692 = 0.9534794f - ((_688 * _688) * (_687 * 0.9534794f));
        _693 = _676 * _681;
        _698 = (sqrt(1.0f - (_693 * _693)) * 0.5f) / _633;
        _699 = log2(_620);
        _700 = log2(_621);
        _701 = log2(_622);
        _713 = ((_692 * _692) * (exp2((((_667 * _667) * -0.5f) / (_664 * _664)) * 1.442695f) / (_663 * 1.2533141f))) * exp2(-5.741926f - (_652 * 5.265837f));
        _717 = _666 - (_619 * 4.0f);
        _727 = 1.0f - (_633 * 0.5f);
        _728 = _727 * _727;
        _732 = (_728 * _728) * (0.9534794f - (_633 * 0.4767397f));
        _734 = 0.9534794f - _732;
        _735 = 0.8f / _633;
        _748 = (((_734 * _734) * (_732 + 0.046520565f)) * (exp2((((_717 * _717) * -0.5f) / (_665 * _665)) * 1.442695f) / (_663 * 5.0132565f))) * exp2((_652 * 24.525816f) + -24.208424f);
        _758 = min(0.0f, (-0.0f - ((_713 * exp2(_699 * _698)) + (_748 * exp2(_735 * _699)))));
        _759 = min(0.0f, (-0.0f - ((_713 * exp2(_700 * _698)) + (_748 * exp2(_735 * _700)))));
        _760 = min(0.0f, (-0.0f - ((_713 * exp2(_701 * _698)) + (_748 * exp2(_735 * _701)))));
        _769 = saturate(abs(dot(float3(_591, _592, _593), float3(_575, _576, _577))));  // [sem: expr_sat]
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _778 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_769, _603, saturate(sqrt(exp2(_699 * 1.5f)))), 0.0f);
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _781 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_769, _603, saturate(sqrt(exp2(_700 * 1.5f)))), 0.0f);
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _784 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_769, _603, saturate(sqrt(exp2(_701 * 1.5f)))), 0.0f);
        _791 = min(0.99f, _778.x);
        _792 = min(0.99f, _781.x);
        _793 = min(0.99f, _784.x);
        _794 = min(0.99f, _778.y);
        _795 = min(0.99f, _781.y);
        _796 = min(0.99f, _784.y);
        _797 = _791 * _791;
        _798 = _792 * _792;
        _799 = _793 * _793;
        _800 = _794 * _794;
        _801 = _795 * _795;
        _802 = _796 * _796;
        _803 = _800 * _794;
        _804 = _801 * _795;
        _805 = _802 * _796;
        _806 = 1.0f - _797;
        _807 = 1.0f - _798;
        _808 = 1.0f - _799;
        _818 = _806 * _806;
        _819 = _807 * _807;
        _820 = _808 * _808;
        _821 = _818 * _806;
        _822 = _819 * _807;
        _823 = _820 * _808;
        _831 = min(max(_603, 0.18f), 0.6f);
        _832 = _831 * _831;
        _833 = _832 * 0.25f;
        _834 = _832 * 4.0f;
        _836 = (_792 + _791) + _793;
        _837 = _791 / _836;
        _838 = _792 / _836;
        _839 = _793 / _836;
        _840 = dot(float3(_832, _833, _834), float3(_837, _838, _839));
        _841 = _840 * _840;
        _844 = asin(min(max(_627, -1.0f), 1.0f)) + asin(min(max(_623, -1.0f), 1.0f));
        _845 = _844 * 0.5f;
        _846 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_837, _838, _839));
        _856 = _846 * _846;
        _879 = (_795 + _794) + _796;
        _883 = dot(float3(_832, _833, _834), float3((_794 / _879), (_795 / _879), (_796 / _879)));
        _887 = sqrt((_883 * _883) + (_841 * 2.0f));
        _905 = (_883 * 3.0f) + (_840 * 2.0f);
        _912 = (((_803 + _794) * ((_797 * 0.7f) + 1.0f)) * _887) / ((_905 * _803) + _794);
        _913 = (((_804 + _795) * ((_798 * 0.7f) + 1.0f)) * _887) / ((_905 * _804) + _795);
        _914 = (((_805 + _796) * ((_799 * 0.7f) + 1.0f)) * _887) / ((_905 * _805) + _796);
        _923 = _845 - (((_856 * (((_797 * 4.0f) * _800) + (_818 * 2.0f))) * (1.0f - ((_800 * 2.0f) / _818))) / _821);
        _930 = _845 - (((_856 * (((_798 * 4.0f) * _801) + (_819 * 2.0f))) * (1.0f - ((_801 * 2.0f) / _819))) / _822);
        _937 = _845 - (((_856 * (((_799 * 4.0f) * _802) + (_820 * 2.0f))) * (1.0f - ((_802 * 2.0f) / _820))) / _823);
        _965 = exp2((((_844 * -0.25f) * _845) / _841) * 1.442695f) * 1.4f;
        _966 = ((((((_803 * _797) / _821) + ((_794 * _797) / _806)) * 4.3982296f) * exp2((((_923 * _923) * -0.5f) / ((_912 * _912) + _841)) * 1.442695f)) + ((((_778.x + _758) * 0.25f) - _758) * 6.2831855f)) * _965;
        _967 = ((((((_804 * _798) / _822) + ((_795 * _798) / _807)) * 4.3982296f) * exp2((((_930 * _930) * -0.5f) / ((_913 * _913) + _841)) * 1.442695f)) + ((((_781.x + _759) * 0.25f) - _759) * 6.2831855f)) * _965;
        _968 = ((((((_805 * _799) / _823) + ((_796 * _799) / _808)) * 4.3982296f) * exp2((((_937 * _937) * -0.5f) / ((_914 * _914) + _841)) * 1.442695f)) + ((((_784.x + _760) * 0.25f) - _760) * 6.2831855f)) * _965;
        _969 = max(0.125f, _573);
        _983 = _573;
        _984 = _574;
        _985 = _575;
        _986 = _576;
        _987 = _577;
        _988 = _492;
        _989 = max(0.01f, ((_969 * (_620 - _966)) + _966));
        _990 = max(0.01f, (lerp(_967, _621, _969)));
        _991 = max(0.01f, (lerp(_968, _622, _969)));
      } else {
        _983 = _563;
        _984 = _564;
        _985 = _565;
        _986 = _566;
        _987 = _567;
        _988 = _492;
        _989 = 0.0f;
        _990 = 0.0f;
        _991 = 0.0f;
      }
    } else {
      _501 = (_492 == 53);
      if ((_492 == 67) || _501) {
        _508 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 127)));
        if (!(float(_493) > (frac(frac(dot(float2(((_508 * 32.665f) + _104), ((_508 * 11.815f) + _105)), float2(0.06711056f, 0.00583715f))) * 52.982918f) * 0.2f))) {
          if ((_492 & 126) == 66) {
            _529 = 1.0f;
            _563 = _529;
            _564 = 0.0h;
            _565 = ((_446 * 2.0f) + -1.0f);
            _566 = ((_447 * 2.0f) + -1.0f);
            _567 = ((_448 * 2.0f) + -1.0f);
            if ((_492 == 53) || ((_492 & 126) == 66)) {
              _573 = _563;
              _574 = _564;
              _575 = _565;
              _576 = _566;
              _577 = _567;
              _579 = __3__36__0__0__g_bentCone.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _586 = (_579.x * 2.0f) + -1.0f;
              _587 = (_579.y * 2.0f) + -1.0f;
              _588 = (_579.z * 2.0f) + -1.0f;
              _590 = rsqrt(dot(float3(_586, _587, _588), float3(_586, _587, _588)));  // [sem: invLength]
              _591 = _586 * _590;
              _592 = _587 * _590;
              _593 = _588 * _590;
              if (!((_renderParams.z > 0.0f) || _334)) {
                _602 = (half)(saturate((half)(_279 + 0.15002441h)));
              } else {
                _602 = _279;
              }
              _603 = float(_602);
              if (_492 == 53) {
                _619 = (((asfloat(_globalLightParams.z) * _603) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_278)));
              } else {
                _619 = _bevelParams.y;
              }
              _620 = float(_306);
              _621 = float(_307);
              _622 = float(_308);
              _623 = dot(float3(_575, _576, _577), float3(_591, _592, _593));
              _624 = -0.0f - _423;
              _625 = -0.0f - _424;
              _626 = -0.0f - _425;
              _627 = dot(float3(_575, _576, _577), float3(_624, _625, _626));
              _633 = cos(abs(asin(_627) - asin(_623)) * 0.5f);
              _637 = _591 - (_623 * _575);
              _638 = _592 - (_623 * _576);
              _639 = _593 - (_623 * _577);
              _643 = _624 - (_627 * _575);
              _644 = _625 - (_627 * _576);
              _645 = _626 - (_627 * _577);
              // [sem: invLength]
              _652 = rsqrt((dot(float3(_643, _644, _645), float3(_643, _644, _645)) * dot(float3(_637, _638, _639), float3(_637, _638, _639))) + 0.0001f) * dot(float3(_637, _638, _639), float3(_643, _644, _645));
              _662 = min(max(_603, 0.09803922f), 1.0f);
              _663 = _662 * _662;
              _664 = _663 * 0.5f;
              _665 = _663 * 2.0f;
              _666 = _627 + _623;
              _667 = _666 - _619;
              _676 = 1.0f / ((1.19f / _633) + (_633 * 0.36f));
              _681 = ((_676 * (0.6f - (_652 * 0.8f))) + 1.0f) * sqrt(saturate((_652 * 0.5f) + 0.5f));
              _687 = 1.0f - (sqrt(saturate(1.0f - (_681 * _681))) * _633);
              _688 = _687 * _687;
              _692 = 0.9534794f - ((_688 * _688) * (_687 * 0.9534794f));
              _693 = _676 * _681;
              _698 = (sqrt(1.0f - (_693 * _693)) * 0.5f) / _633;
              _699 = log2(_620);
              _700 = log2(_621);
              _701 = log2(_622);
              _713 = ((_692 * _692) * (exp2((((_667 * _667) * -0.5f) / (_664 * _664)) * 1.442695f) / (_663 * 1.2533141f))) * exp2(-5.741926f - (_652 * 5.265837f));
              _717 = _666 - (_619 * 4.0f);
              _727 = 1.0f - (_633 * 0.5f);
              _728 = _727 * _727;
              _732 = (_728 * _728) * (0.9534794f - (_633 * 0.4767397f));
              _734 = 0.9534794f - _732;
              _735 = 0.8f / _633;
              _748 = (((_734 * _734) * (_732 + 0.046520565f)) * (exp2((((_717 * _717) * -0.5f) / (_665 * _665)) * 1.442695f) / (_663 * 5.0132565f))) * exp2((_652 * 24.525816f) + -24.208424f);
              _758 = min(0.0f, (-0.0f - ((_713 * exp2(_699 * _698)) + (_748 * exp2(_735 * _699)))));
              _759 = min(0.0f, (-0.0f - ((_713 * exp2(_700 * _698)) + (_748 * exp2(_735 * _700)))));
              _760 = min(0.0f, (-0.0f - ((_713 * exp2(_701 * _698)) + (_748 * exp2(_735 * _701)))));
              _769 = saturate(abs(dot(float3(_591, _592, _593), float3(_575, _576, _577))));  // [sem: expr_sat]
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _778 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_769, _603, saturate(sqrt(exp2(_699 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _781 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_769, _603, saturate(sqrt(exp2(_700 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _784 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_769, _603, saturate(sqrt(exp2(_701 * 1.5f)))), 0.0f);
              _791 = min(0.99f, _778.x);
              _792 = min(0.99f, _781.x);
              _793 = min(0.99f, _784.x);
              _794 = min(0.99f, _778.y);
              _795 = min(0.99f, _781.y);
              _796 = min(0.99f, _784.y);
              _797 = _791 * _791;
              _798 = _792 * _792;
              _799 = _793 * _793;
              _800 = _794 * _794;
              _801 = _795 * _795;
              _802 = _796 * _796;
              _803 = _800 * _794;
              _804 = _801 * _795;
              _805 = _802 * _796;
              _806 = 1.0f - _797;
              _807 = 1.0f - _798;
              _808 = 1.0f - _799;
              _818 = _806 * _806;
              _819 = _807 * _807;
              _820 = _808 * _808;
              _821 = _818 * _806;
              _822 = _819 * _807;
              _823 = _820 * _808;
              _831 = min(max(_603, 0.18f), 0.6f);
              _832 = _831 * _831;
              _833 = _832 * 0.25f;
              _834 = _832 * 4.0f;
              _836 = (_792 + _791) + _793;
              _837 = _791 / _836;
              _838 = _792 / _836;
              _839 = _793 / _836;
              _840 = dot(float3(_832, _833, _834), float3(_837, _838, _839));
              _841 = _840 * _840;
              _844 = asin(min(max(_627, -1.0f), 1.0f)) + asin(min(max(_623, -1.0f), 1.0f));
              _845 = _844 * 0.5f;
              _846 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_837, _838, _839));
              _856 = _846 * _846;
              _879 = (_795 + _794) + _796;
              _883 = dot(float3(_832, _833, _834), float3((_794 / _879), (_795 / _879), (_796 / _879)));
              _887 = sqrt((_883 * _883) + (_841 * 2.0f));
              _905 = (_883 * 3.0f) + (_840 * 2.0f);
              _912 = (((_803 + _794) * ((_797 * 0.7f) + 1.0f)) * _887) / ((_905 * _803) + _794);
              _913 = (((_804 + _795) * ((_798 * 0.7f) + 1.0f)) * _887) / ((_905 * _804) + _795);
              _914 = (((_805 + _796) * ((_799 * 0.7f) + 1.0f)) * _887) / ((_905 * _805) + _796);
              _923 = _845 - (((_856 * (((_797 * 4.0f) * _800) + (_818 * 2.0f))) * (1.0f - ((_800 * 2.0f) / _818))) / _821);
              _930 = _845 - (((_856 * (((_798 * 4.0f) * _801) + (_819 * 2.0f))) * (1.0f - ((_801 * 2.0f) / _819))) / _822);
              _937 = _845 - (((_856 * (((_799 * 4.0f) * _802) + (_820 * 2.0f))) * (1.0f - ((_802 * 2.0f) / _820))) / _823);
              _965 = exp2((((_844 * -0.25f) * _845) / _841) * 1.442695f) * 1.4f;
              _966 = ((((((_803 * _797) / _821) + ((_794 * _797) / _806)) * 4.3982296f) * exp2((((_923 * _923) * -0.5f) / ((_912 * _912) + _841)) * 1.442695f)) + ((((_778.x + _758) * 0.25f) - _758) * 6.2831855f)) * _965;
              _967 = ((((((_804 * _798) / _822) + ((_795 * _798) / _807)) * 4.3982296f) * exp2((((_930 * _930) * -0.5f) / ((_913 * _913) + _841)) * 1.442695f)) + ((((_781.x + _759) * 0.25f) - _759) * 6.2831855f)) * _965;
              _968 = ((((((_805 * _799) / _823) + ((_796 * _799) / _808)) * 4.3982296f) * exp2((((_937 * _937) * -0.5f) / ((_914 * _914) + _841)) * 1.442695f)) + ((((_784.x + _760) * 0.25f) - _760) * 6.2831855f)) * _965;
              _969 = max(0.125f, _573);
              _983 = _573;
              _984 = _574;
              _985 = _575;
              _986 = _576;
              _987 = _577;
              _988 = _492;
              _989 = max(0.01f, ((_969 * (_620 - _966)) + _966));
              _990 = max(0.01f, (lerp(_967, _621, _969)));
              _991 = max(0.01f, (lerp(_968, _622, _969)));
            } else {
              _983 = _563;
              _984 = _564;
              _985 = _565;
              _986 = _566;
              _987 = _567;
              _988 = _492;
              _989 = 0.0f;
              _990 = 0.0f;
              _991 = 0.0f;
            }
          } else {
            _526 = 1.0f;
            _527 = 0.0h;
            if (_501) {
              _539 = (_446 * 2.0f) + -1.0f;
              _540 = (_447 * 2.0f) + -1.0f;
              _542 = 1.0f - abs(_539);
              _543 = abs(_540);
              _544 = _542 - _543;
              if (!(_544 >= 0.0f)) {
                _555 = ((1.0f - _543) * select((_539 >= 0.0f), 1.0f, -1.0f));
                _556 = (_542 * select((_540 >= 0.0f), 1.0f, -1.0f));
              } else {
                _555 = _539;
                _556 = _540;
              }
              _558 = rsqrt(dot(float3(_555, _556, _544), float3(_555, _556, _544)));  // [sem: invLength]
              _573 = _526;
              _574 = 0.0h;
              _575 = (_558 * _555);
              _576 = (_558 * _556);
              _577 = (_558 * _544);
              _579 = __3__36__0__0__g_bentCone.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _586 = (_579.x * 2.0f) + -1.0f;
              _587 = (_579.y * 2.0f) + -1.0f;
              _588 = (_579.z * 2.0f) + -1.0f;
              _590 = rsqrt(dot(float3(_586, _587, _588), float3(_586, _587, _588)));  // [sem: invLength]
              _591 = _586 * _590;
              _592 = _587 * _590;
              _593 = _588 * _590;
              if (!((_renderParams.z > 0.0f) || _334)) {
                _602 = (half)(saturate((half)(_279 + 0.15002441h)));
              } else {
                _602 = _279;
              }
              _603 = float(_602);
              if (_492 == 53) {
                _619 = (((asfloat(_globalLightParams.z) * _603) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_278)));
              } else {
                _619 = _bevelParams.y;
              }
              _620 = float(_306);
              _621 = float(_307);
              _622 = float(_308);
              _623 = dot(float3(_575, _576, _577), float3(_591, _592, _593));
              _624 = -0.0f - _423;
              _625 = -0.0f - _424;
              _626 = -0.0f - _425;
              _627 = dot(float3(_575, _576, _577), float3(_624, _625, _626));
              _633 = cos(abs(asin(_627) - asin(_623)) * 0.5f);
              _637 = _591 - (_623 * _575);
              _638 = _592 - (_623 * _576);
              _639 = _593 - (_623 * _577);
              _643 = _624 - (_627 * _575);
              _644 = _625 - (_627 * _576);
              _645 = _626 - (_627 * _577);
              // [sem: invLength]
              _652 = rsqrt((dot(float3(_643, _644, _645), float3(_643, _644, _645)) * dot(float3(_637, _638, _639), float3(_637, _638, _639))) + 0.0001f) * dot(float3(_637, _638, _639), float3(_643, _644, _645));
              _662 = min(max(_603, 0.09803922f), 1.0f);
              _663 = _662 * _662;
              _664 = _663 * 0.5f;
              _665 = _663 * 2.0f;
              _666 = _627 + _623;
              _667 = _666 - _619;
              _676 = 1.0f / ((1.19f / _633) + (_633 * 0.36f));
              _681 = ((_676 * (0.6f - (_652 * 0.8f))) + 1.0f) * sqrt(saturate((_652 * 0.5f) + 0.5f));
              _687 = 1.0f - (sqrt(saturate(1.0f - (_681 * _681))) * _633);
              _688 = _687 * _687;
              _692 = 0.9534794f - ((_688 * _688) * (_687 * 0.9534794f));
              _693 = _676 * _681;
              _698 = (sqrt(1.0f - (_693 * _693)) * 0.5f) / _633;
              _699 = log2(_620);
              _700 = log2(_621);
              _701 = log2(_622);
              _713 = ((_692 * _692) * (exp2((((_667 * _667) * -0.5f) / (_664 * _664)) * 1.442695f) / (_663 * 1.2533141f))) * exp2(-5.741926f - (_652 * 5.265837f));
              _717 = _666 - (_619 * 4.0f);
              _727 = 1.0f - (_633 * 0.5f);
              _728 = _727 * _727;
              _732 = (_728 * _728) * (0.9534794f - (_633 * 0.4767397f));
              _734 = 0.9534794f - _732;
              _735 = 0.8f / _633;
              _748 = (((_734 * _734) * (_732 + 0.046520565f)) * (exp2((((_717 * _717) * -0.5f) / (_665 * _665)) * 1.442695f) / (_663 * 5.0132565f))) * exp2((_652 * 24.525816f) + -24.208424f);
              _758 = min(0.0f, (-0.0f - ((_713 * exp2(_699 * _698)) + (_748 * exp2(_735 * _699)))));
              _759 = min(0.0f, (-0.0f - ((_713 * exp2(_700 * _698)) + (_748 * exp2(_735 * _700)))));
              _760 = min(0.0f, (-0.0f - ((_713 * exp2(_701 * _698)) + (_748 * exp2(_735 * _701)))));
              _769 = saturate(abs(dot(float3(_591, _592, _593), float3(_575, _576, _577))));  // [sem: expr_sat]
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _778 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_769, _603, saturate(sqrt(exp2(_699 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _781 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_769, _603, saturate(sqrt(exp2(_700 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _784 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_769, _603, saturate(sqrt(exp2(_701 * 1.5f)))), 0.0f);
              _791 = min(0.99f, _778.x);
              _792 = min(0.99f, _781.x);
              _793 = min(0.99f, _784.x);
              _794 = min(0.99f, _778.y);
              _795 = min(0.99f, _781.y);
              _796 = min(0.99f, _784.y);
              _797 = _791 * _791;
              _798 = _792 * _792;
              _799 = _793 * _793;
              _800 = _794 * _794;
              _801 = _795 * _795;
              _802 = _796 * _796;
              _803 = _800 * _794;
              _804 = _801 * _795;
              _805 = _802 * _796;
              _806 = 1.0f - _797;
              _807 = 1.0f - _798;
              _808 = 1.0f - _799;
              _818 = _806 * _806;
              _819 = _807 * _807;
              _820 = _808 * _808;
              _821 = _818 * _806;
              _822 = _819 * _807;
              _823 = _820 * _808;
              _831 = min(max(_603, 0.18f), 0.6f);
              _832 = _831 * _831;
              _833 = _832 * 0.25f;
              _834 = _832 * 4.0f;
              _836 = (_792 + _791) + _793;
              _837 = _791 / _836;
              _838 = _792 / _836;
              _839 = _793 / _836;
              _840 = dot(float3(_832, _833, _834), float3(_837, _838, _839));
              _841 = _840 * _840;
              _844 = asin(min(max(_627, -1.0f), 1.0f)) + asin(min(max(_623, -1.0f), 1.0f));
              _845 = _844 * 0.5f;
              _846 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_837, _838, _839));
              _856 = _846 * _846;
              _879 = (_795 + _794) + _796;
              _883 = dot(float3(_832, _833, _834), float3((_794 / _879), (_795 / _879), (_796 / _879)));
              _887 = sqrt((_883 * _883) + (_841 * 2.0f));
              _905 = (_883 * 3.0f) + (_840 * 2.0f);
              _912 = (((_803 + _794) * ((_797 * 0.7f) + 1.0f)) * _887) / ((_905 * _803) + _794);
              _913 = (((_804 + _795) * ((_798 * 0.7f) + 1.0f)) * _887) / ((_905 * _804) + _795);
              _914 = (((_805 + _796) * ((_799 * 0.7f) + 1.0f)) * _887) / ((_905 * _805) + _796);
              _923 = _845 - (((_856 * (((_797 * 4.0f) * _800) + (_818 * 2.0f))) * (1.0f - ((_800 * 2.0f) / _818))) / _821);
              _930 = _845 - (((_856 * (((_798 * 4.0f) * _801) + (_819 * 2.0f))) * (1.0f - ((_801 * 2.0f) / _819))) / _822);
              _937 = _845 - (((_856 * (((_799 * 4.0f) * _802) + (_820 * 2.0f))) * (1.0f - ((_802 * 2.0f) / _820))) / _823);
              _965 = exp2((((_844 * -0.25f) * _845) / _841) * 1.442695f) * 1.4f;
              _966 = ((((((_803 * _797) / _821) + ((_794 * _797) / _806)) * 4.3982296f) * exp2((((_923 * _923) * -0.5f) / ((_912 * _912) + _841)) * 1.442695f)) + ((((_778.x + _758) * 0.25f) - _758) * 6.2831855f)) * _965;
              _967 = ((((((_804 * _798) / _822) + ((_795 * _798) / _807)) * 4.3982296f) * exp2((((_930 * _930) * -0.5f) / ((_913 * _913) + _841)) * 1.442695f)) + ((((_781.x + _759) * 0.25f) - _759) * 6.2831855f)) * _965;
              _968 = ((((((_805 * _799) / _823) + ((_796 * _799) / _808)) * 4.3982296f) * exp2((((_937 * _937) * -0.5f) / ((_914 * _914) + _841)) * 1.442695f)) + ((((_784.x + _760) * 0.25f) - _760) * 6.2831855f)) * _965;
              _969 = max(0.125f, _573);
              _983 = _573;
              _984 = _574;
              _985 = _575;
              _986 = _576;
              _987 = _577;
              _988 = _492;
              _989 = max(0.01f, ((_969 * (_620 - _966)) + _966));
              _990 = max(0.01f, (lerp(_967, _621, _969)));
              _991 = max(0.01f, (lerp(_968, _622, _969)));
            } else {
              _563 = _526;
              _564 = _527;
              _565 = _375;
              _566 = _376;
              _567 = _377;
              if ((_492 == 53) || ((_492 & 126) == 66)) {
                _573 = _563;
                _574 = _564;
                _575 = _565;
                _576 = _566;
                _577 = _567;
                _579 = __3__36__0__0__g_bentCone.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _586 = (_579.x * 2.0f) + -1.0f;
                _587 = (_579.y * 2.0f) + -1.0f;
                _588 = (_579.z * 2.0f) + -1.0f;
                _590 = rsqrt(dot(float3(_586, _587, _588), float3(_586, _587, _588)));  // [sem: invLength]
                _591 = _586 * _590;
                _592 = _587 * _590;
                _593 = _588 * _590;
                if (!((_renderParams.z > 0.0f) || _334)) {
                  _602 = (half)(saturate((half)(_279 + 0.15002441h)));
                } else {
                  _602 = _279;
                }
                _603 = float(_602);
                if (_492 == 53) {
                  _619 = (((asfloat(_globalLightParams.z) * _603) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_278)));
                } else {
                  _619 = _bevelParams.y;
                }
                _620 = float(_306);
                _621 = float(_307);
                _622 = float(_308);
                _623 = dot(float3(_575, _576, _577), float3(_591, _592, _593));
                _624 = -0.0f - _423;
                _625 = -0.0f - _424;
                _626 = -0.0f - _425;
                _627 = dot(float3(_575, _576, _577), float3(_624, _625, _626));
                _633 = cos(abs(asin(_627) - asin(_623)) * 0.5f);
                _637 = _591 - (_623 * _575);
                _638 = _592 - (_623 * _576);
                _639 = _593 - (_623 * _577);
                _643 = _624 - (_627 * _575);
                _644 = _625 - (_627 * _576);
                _645 = _626 - (_627 * _577);
                // [sem: invLength]
                _652 = rsqrt((dot(float3(_643, _644, _645), float3(_643, _644, _645)) * dot(float3(_637, _638, _639), float3(_637, _638, _639))) + 0.0001f) * dot(float3(_637, _638, _639), float3(_643, _644, _645));
                _662 = min(max(_603, 0.09803922f), 1.0f);
                _663 = _662 * _662;
                _664 = _663 * 0.5f;
                _665 = _663 * 2.0f;
                _666 = _627 + _623;
                _667 = _666 - _619;
                _676 = 1.0f / ((1.19f / _633) + (_633 * 0.36f));
                _681 = ((_676 * (0.6f - (_652 * 0.8f))) + 1.0f) * sqrt(saturate((_652 * 0.5f) + 0.5f));
                _687 = 1.0f - (sqrt(saturate(1.0f - (_681 * _681))) * _633);
                _688 = _687 * _687;
                _692 = 0.9534794f - ((_688 * _688) * (_687 * 0.9534794f));
                _693 = _676 * _681;
                _698 = (sqrt(1.0f - (_693 * _693)) * 0.5f) / _633;
                _699 = log2(_620);
                _700 = log2(_621);
                _701 = log2(_622);
                _713 = ((_692 * _692) * (exp2((((_667 * _667) * -0.5f) / (_664 * _664)) * 1.442695f) / (_663 * 1.2533141f))) * exp2(-5.741926f - (_652 * 5.265837f));
                _717 = _666 - (_619 * 4.0f);
                _727 = 1.0f - (_633 * 0.5f);
                _728 = _727 * _727;
                _732 = (_728 * _728) * (0.9534794f - (_633 * 0.4767397f));
                _734 = 0.9534794f - _732;
                _735 = 0.8f / _633;
                _748 = (((_734 * _734) * (_732 + 0.046520565f)) * (exp2((((_717 * _717) * -0.5f) / (_665 * _665)) * 1.442695f) / (_663 * 5.0132565f))) * exp2((_652 * 24.525816f) + -24.208424f);
                _758 = min(0.0f, (-0.0f - ((_713 * exp2(_699 * _698)) + (_748 * exp2(_735 * _699)))));
                _759 = min(0.0f, (-0.0f - ((_713 * exp2(_700 * _698)) + (_748 * exp2(_735 * _700)))));
                _760 = min(0.0f, (-0.0f - ((_713 * exp2(_701 * _698)) + (_748 * exp2(_735 * _701)))));
                _769 = saturate(abs(dot(float3(_591, _592, _593), float3(_575, _576, _577))));  // [sem: expr_sat]
                // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
                _778 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_769, _603, saturate(sqrt(exp2(_699 * 1.5f)))), 0.0f);
                // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
                _781 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_769, _603, saturate(sqrt(exp2(_700 * 1.5f)))), 0.0f);
                // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
                _784 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_769, _603, saturate(sqrt(exp2(_701 * 1.5f)))), 0.0f);
                _791 = min(0.99f, _778.x);
                _792 = min(0.99f, _781.x);
                _793 = min(0.99f, _784.x);
                _794 = min(0.99f, _778.y);
                _795 = min(0.99f, _781.y);
                _796 = min(0.99f, _784.y);
                _797 = _791 * _791;
                _798 = _792 * _792;
                _799 = _793 * _793;
                _800 = _794 * _794;
                _801 = _795 * _795;
                _802 = _796 * _796;
                _803 = _800 * _794;
                _804 = _801 * _795;
                _805 = _802 * _796;
                _806 = 1.0f - _797;
                _807 = 1.0f - _798;
                _808 = 1.0f - _799;
                _818 = _806 * _806;
                _819 = _807 * _807;
                _820 = _808 * _808;
                _821 = _818 * _806;
                _822 = _819 * _807;
                _823 = _820 * _808;
                _831 = min(max(_603, 0.18f), 0.6f);
                _832 = _831 * _831;
                _833 = _832 * 0.25f;
                _834 = _832 * 4.0f;
                _836 = (_792 + _791) + _793;
                _837 = _791 / _836;
                _838 = _792 / _836;
                _839 = _793 / _836;
                _840 = dot(float3(_832, _833, _834), float3(_837, _838, _839));
                _841 = _840 * _840;
                _844 = asin(min(max(_627, -1.0f), 1.0f)) + asin(min(max(_623, -1.0f), 1.0f));
                _845 = _844 * 0.5f;
                _846 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_837, _838, _839));
                _856 = _846 * _846;
                _879 = (_795 + _794) + _796;
                _883 = dot(float3(_832, _833, _834), float3((_794 / _879), (_795 / _879), (_796 / _879)));
                _887 = sqrt((_883 * _883) + (_841 * 2.0f));
                _905 = (_883 * 3.0f) + (_840 * 2.0f);
                _912 = (((_803 + _794) * ((_797 * 0.7f) + 1.0f)) * _887) / ((_905 * _803) + _794);
                _913 = (((_804 + _795) * ((_798 * 0.7f) + 1.0f)) * _887) / ((_905 * _804) + _795);
                _914 = (((_805 + _796) * ((_799 * 0.7f) + 1.0f)) * _887) / ((_905 * _805) + _796);
                _923 = _845 - (((_856 * (((_797 * 4.0f) * _800) + (_818 * 2.0f))) * (1.0f - ((_800 * 2.0f) / _818))) / _821);
                _930 = _845 - (((_856 * (((_798 * 4.0f) * _801) + (_819 * 2.0f))) * (1.0f - ((_801 * 2.0f) / _819))) / _822);
                _937 = _845 - (((_856 * (((_799 * 4.0f) * _802) + (_820 * 2.0f))) * (1.0f - ((_802 * 2.0f) / _820))) / _823);
                _965 = exp2((((_844 * -0.25f) * _845) / _841) * 1.442695f) * 1.4f;
                _966 = ((((((_803 * _797) / _821) + ((_794 * _797) / _806)) * 4.3982296f) * exp2((((_923 * _923) * -0.5f) / ((_912 * _912) + _841)) * 1.442695f)) + ((((_778.x + _758) * 0.25f) - _758) * 6.2831855f)) * _965;
                _967 = ((((((_804 * _798) / _822) + ((_795 * _798) / _807)) * 4.3982296f) * exp2((((_930 * _930) * -0.5f) / ((_913 * _913) + _841)) * 1.442695f)) + ((((_781.x + _759) * 0.25f) - _759) * 6.2831855f)) * _965;
                _968 = ((((((_805 * _799) / _823) + ((_796 * _799) / _808)) * 4.3982296f) * exp2((((_937 * _937) * -0.5f) / ((_914 * _914) + _841)) * 1.442695f)) + ((((_784.x + _760) * 0.25f) - _760) * 6.2831855f)) * _965;
                _969 = max(0.125f, _573);
                _983 = _573;
                _984 = _574;
                _985 = _575;
                _986 = _576;
                _987 = _577;
                _988 = _492;
                _989 = max(0.01f, ((_969 * (_620 - _966)) + _966));
                _990 = max(0.01f, (lerp(_967, _621, _969)));
                _991 = max(0.01f, (lerp(_968, _622, _969)));
              } else {
                _983 = _563;
                _984 = _564;
                _985 = _565;
                _986 = _566;
                _987 = _567;
                _988 = _492;
                _989 = 0.0f;
                _990 = 0.0f;
                _991 = 0.0f;
              }
            }
          }
        } else {
          _983 = 1.0f;
          _984 = 0.0h;
          _985 = _375;
          _986 = _376;
          _987 = _377;
          _988 = 52;
          _989 = 0.0f;
          _990 = 0.0f;
          _991 = 0.0f;
        }
      } else {
        _526 = 0.0f;
        _527 = _493;
        if (_501) {
          _539 = (_446 * 2.0f) + -1.0f;
          _540 = (_447 * 2.0f) + -1.0f;
          _542 = 1.0f - abs(_539);
          _543 = abs(_540);
          _544 = _542 - _543;
          if (!(_544 >= 0.0f)) {
            _555 = ((1.0f - _543) * select((_539 >= 0.0f), 1.0f, -1.0f));
            _556 = (_542 * select((_540 >= 0.0f), 1.0f, -1.0f));
          } else {
            _555 = _539;
            _556 = _540;
          }
          _558 = rsqrt(dot(float3(_555, _556, _544), float3(_555, _556, _544)));  // [sem: invLength]
          _573 = _526;
          _574 = 0.0h;
          _575 = (_558 * _555);
          _576 = (_558 * _556);
          _577 = (_558 * _544);
          _579 = __3__36__0__0__g_bentCone.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_bentCone_load]
          _586 = (_579.x * 2.0f) + -1.0f;
          _587 = (_579.y * 2.0f) + -1.0f;
          _588 = (_579.z * 2.0f) + -1.0f;
          _590 = rsqrt(dot(float3(_586, _587, _588), float3(_586, _587, _588)));  // [sem: invLength]
          _591 = _586 * _590;
          _592 = _587 * _590;
          _593 = _588 * _590;
          if (!((_renderParams.z > 0.0f) || _334)) {
            _602 = (half)(saturate((half)(_279 + 0.15002441h)));
          } else {
            _602 = _279;
          }
          _603 = float(_602);
          if (_492 == 53) {
            _619 = (((asfloat(_globalLightParams.z) * _603) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_278)));
          } else {
            _619 = _bevelParams.y;
          }
          _620 = float(_306);
          _621 = float(_307);
          _622 = float(_308);
          _623 = dot(float3(_575, _576, _577), float3(_591, _592, _593));
          _624 = -0.0f - _423;
          _625 = -0.0f - _424;
          _626 = -0.0f - _425;
          _627 = dot(float3(_575, _576, _577), float3(_624, _625, _626));
          _633 = cos(abs(asin(_627) - asin(_623)) * 0.5f);
          _637 = _591 - (_623 * _575);
          _638 = _592 - (_623 * _576);
          _639 = _593 - (_623 * _577);
          _643 = _624 - (_627 * _575);
          _644 = _625 - (_627 * _576);
          _645 = _626 - (_627 * _577);
          // [sem: invLength]
          _652 = rsqrt((dot(float3(_643, _644, _645), float3(_643, _644, _645)) * dot(float3(_637, _638, _639), float3(_637, _638, _639))) + 0.0001f) * dot(float3(_637, _638, _639), float3(_643, _644, _645));
          _662 = min(max(_603, 0.09803922f), 1.0f);
          _663 = _662 * _662;
          _664 = _663 * 0.5f;
          _665 = _663 * 2.0f;
          _666 = _627 + _623;
          _667 = _666 - _619;
          _676 = 1.0f / ((1.19f / _633) + (_633 * 0.36f));
          _681 = ((_676 * (0.6f - (_652 * 0.8f))) + 1.0f) * sqrt(saturate((_652 * 0.5f) + 0.5f));
          _687 = 1.0f - (sqrt(saturate(1.0f - (_681 * _681))) * _633);
          _688 = _687 * _687;
          _692 = 0.9534794f - ((_688 * _688) * (_687 * 0.9534794f));
          _693 = _676 * _681;
          _698 = (sqrt(1.0f - (_693 * _693)) * 0.5f) / _633;
          _699 = log2(_620);
          _700 = log2(_621);
          _701 = log2(_622);
          _713 = ((_692 * _692) * (exp2((((_667 * _667) * -0.5f) / (_664 * _664)) * 1.442695f) / (_663 * 1.2533141f))) * exp2(-5.741926f - (_652 * 5.265837f));
          _717 = _666 - (_619 * 4.0f);
          _727 = 1.0f - (_633 * 0.5f);
          _728 = _727 * _727;
          _732 = (_728 * _728) * (0.9534794f - (_633 * 0.4767397f));
          _734 = 0.9534794f - _732;
          _735 = 0.8f / _633;
          _748 = (((_734 * _734) * (_732 + 0.046520565f)) * (exp2((((_717 * _717) * -0.5f) / (_665 * _665)) * 1.442695f) / (_663 * 5.0132565f))) * exp2((_652 * 24.525816f) + -24.208424f);
          _758 = min(0.0f, (-0.0f - ((_713 * exp2(_699 * _698)) + (_748 * exp2(_735 * _699)))));
          _759 = min(0.0f, (-0.0f - ((_713 * exp2(_700 * _698)) + (_748 * exp2(_735 * _700)))));
          _760 = min(0.0f, (-0.0f - ((_713 * exp2(_701 * _698)) + (_748 * exp2(_735 * _701)))));
          _769 = saturate(abs(dot(float3(_591, _592, _593), float3(_575, _576, _577))));  // [sem: expr_sat]
          // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
          _778 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_769, _603, saturate(sqrt(exp2(_699 * 1.5f)))), 0.0f);
          // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
          _781 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_769, _603, saturate(sqrt(exp2(_700 * 1.5f)))), 0.0f);
          // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
          _784 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_769, _603, saturate(sqrt(exp2(_701 * 1.5f)))), 0.0f);
          _791 = min(0.99f, _778.x);
          _792 = min(0.99f, _781.x);
          _793 = min(0.99f, _784.x);
          _794 = min(0.99f, _778.y);
          _795 = min(0.99f, _781.y);
          _796 = min(0.99f, _784.y);
          _797 = _791 * _791;
          _798 = _792 * _792;
          _799 = _793 * _793;
          _800 = _794 * _794;
          _801 = _795 * _795;
          _802 = _796 * _796;
          _803 = _800 * _794;
          _804 = _801 * _795;
          _805 = _802 * _796;
          _806 = 1.0f - _797;
          _807 = 1.0f - _798;
          _808 = 1.0f - _799;
          _818 = _806 * _806;
          _819 = _807 * _807;
          _820 = _808 * _808;
          _821 = _818 * _806;
          _822 = _819 * _807;
          _823 = _820 * _808;
          _831 = min(max(_603, 0.18f), 0.6f);
          _832 = _831 * _831;
          _833 = _832 * 0.25f;
          _834 = _832 * 4.0f;
          _836 = (_792 + _791) + _793;
          _837 = _791 / _836;
          _838 = _792 / _836;
          _839 = _793 / _836;
          _840 = dot(float3(_832, _833, _834), float3(_837, _838, _839));
          _841 = _840 * _840;
          _844 = asin(min(max(_627, -1.0f), 1.0f)) + asin(min(max(_623, -1.0f), 1.0f));
          _845 = _844 * 0.5f;
          _846 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_837, _838, _839));
          _856 = _846 * _846;
          _879 = (_795 + _794) + _796;
          _883 = dot(float3(_832, _833, _834), float3((_794 / _879), (_795 / _879), (_796 / _879)));
          _887 = sqrt((_883 * _883) + (_841 * 2.0f));
          _905 = (_883 * 3.0f) + (_840 * 2.0f);
          _912 = (((_803 + _794) * ((_797 * 0.7f) + 1.0f)) * _887) / ((_905 * _803) + _794);
          _913 = (((_804 + _795) * ((_798 * 0.7f) + 1.0f)) * _887) / ((_905 * _804) + _795);
          _914 = (((_805 + _796) * ((_799 * 0.7f) + 1.0f)) * _887) / ((_905 * _805) + _796);
          _923 = _845 - (((_856 * (((_797 * 4.0f) * _800) + (_818 * 2.0f))) * (1.0f - ((_800 * 2.0f) / _818))) / _821);
          _930 = _845 - (((_856 * (((_798 * 4.0f) * _801) + (_819 * 2.0f))) * (1.0f - ((_801 * 2.0f) / _819))) / _822);
          _937 = _845 - (((_856 * (((_799 * 4.0f) * _802) + (_820 * 2.0f))) * (1.0f - ((_802 * 2.0f) / _820))) / _823);
          _965 = exp2((((_844 * -0.25f) * _845) / _841) * 1.442695f) * 1.4f;
          _966 = ((((((_803 * _797) / _821) + ((_794 * _797) / _806)) * 4.3982296f) * exp2((((_923 * _923) * -0.5f) / ((_912 * _912) + _841)) * 1.442695f)) + ((((_778.x + _758) * 0.25f) - _758) * 6.2831855f)) * _965;
          _967 = ((((((_804 * _798) / _822) + ((_795 * _798) / _807)) * 4.3982296f) * exp2((((_930 * _930) * -0.5f) / ((_913 * _913) + _841)) * 1.442695f)) + ((((_781.x + _759) * 0.25f) - _759) * 6.2831855f)) * _965;
          _968 = ((((((_805 * _799) / _823) + ((_796 * _799) / _808)) * 4.3982296f) * exp2((((_937 * _937) * -0.5f) / ((_914 * _914) + _841)) * 1.442695f)) + ((((_784.x + _760) * 0.25f) - _760) * 6.2831855f)) * _965;
          _969 = max(0.125f, _573);
          _983 = _573;
          _984 = _574;
          _985 = _575;
          _986 = _576;
          _987 = _577;
          _988 = _492;
          _989 = max(0.01f, ((_969 * (_620 - _966)) + _966));
          _990 = max(0.01f, (lerp(_967, _621, _969)));
          _991 = max(0.01f, (lerp(_968, _622, _969)));
        } else {
          _563 = _526;
          _564 = _527;
          _565 = _375;
          _566 = _376;
          _567 = _377;
          if ((_492 == 53) || ((_492 & 126) == 66)) {
            _573 = _563;
            _574 = _564;
            _575 = _565;
            _576 = _566;
            _577 = _567;
            _579 = __3__36__0__0__g_bentCone.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_bentCone_load]
            _586 = (_579.x * 2.0f) + -1.0f;
            _587 = (_579.y * 2.0f) + -1.0f;
            _588 = (_579.z * 2.0f) + -1.0f;
            _590 = rsqrt(dot(float3(_586, _587, _588), float3(_586, _587, _588)));  // [sem: invLength]
            _591 = _586 * _590;
            _592 = _587 * _590;
            _593 = _588 * _590;
            if (!((_renderParams.z > 0.0f) || _334)) {
              _602 = (half)(saturate((half)(_279 + 0.15002441h)));
            } else {
              _602 = _279;
            }
            _603 = float(_602);
            if (_492 == 53) {
              _619 = (((asfloat(_globalLightParams.z) * _603) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_278)));
            } else {
              _619 = _bevelParams.y;
            }
            _620 = float(_306);
            _621 = float(_307);
            _622 = float(_308);
            _623 = dot(float3(_575, _576, _577), float3(_591, _592, _593));
            _624 = -0.0f - _423;
            _625 = -0.0f - _424;
            _626 = -0.0f - _425;
            _627 = dot(float3(_575, _576, _577), float3(_624, _625, _626));
            _633 = cos(abs(asin(_627) - asin(_623)) * 0.5f);
            _637 = _591 - (_623 * _575);
            _638 = _592 - (_623 * _576);
            _639 = _593 - (_623 * _577);
            _643 = _624 - (_627 * _575);
            _644 = _625 - (_627 * _576);
            _645 = _626 - (_627 * _577);
            // [sem: invLength]
            _652 = rsqrt((dot(float3(_643, _644, _645), float3(_643, _644, _645)) * dot(float3(_637, _638, _639), float3(_637, _638, _639))) + 0.0001f) * dot(float3(_637, _638, _639), float3(_643, _644, _645));
            _662 = min(max(_603, 0.09803922f), 1.0f);
            _663 = _662 * _662;
            _664 = _663 * 0.5f;
            _665 = _663 * 2.0f;
            _666 = _627 + _623;
            _667 = _666 - _619;
            _676 = 1.0f / ((1.19f / _633) + (_633 * 0.36f));
            _681 = ((_676 * (0.6f - (_652 * 0.8f))) + 1.0f) * sqrt(saturate((_652 * 0.5f) + 0.5f));
            _687 = 1.0f - (sqrt(saturate(1.0f - (_681 * _681))) * _633);
            _688 = _687 * _687;
            _692 = 0.9534794f - ((_688 * _688) * (_687 * 0.9534794f));
            _693 = _676 * _681;
            _698 = (sqrt(1.0f - (_693 * _693)) * 0.5f) / _633;
            _699 = log2(_620);
            _700 = log2(_621);
            _701 = log2(_622);
            _713 = ((_692 * _692) * (exp2((((_667 * _667) * -0.5f) / (_664 * _664)) * 1.442695f) / (_663 * 1.2533141f))) * exp2(-5.741926f - (_652 * 5.265837f));
            _717 = _666 - (_619 * 4.0f);
            _727 = 1.0f - (_633 * 0.5f);
            _728 = _727 * _727;
            _732 = (_728 * _728) * (0.9534794f - (_633 * 0.4767397f));
            _734 = 0.9534794f - _732;
            _735 = 0.8f / _633;
            _748 = (((_734 * _734) * (_732 + 0.046520565f)) * (exp2((((_717 * _717) * -0.5f) / (_665 * _665)) * 1.442695f) / (_663 * 5.0132565f))) * exp2((_652 * 24.525816f) + -24.208424f);
            _758 = min(0.0f, (-0.0f - ((_713 * exp2(_699 * _698)) + (_748 * exp2(_735 * _699)))));
            _759 = min(0.0f, (-0.0f - ((_713 * exp2(_700 * _698)) + (_748 * exp2(_735 * _700)))));
            _760 = min(0.0f, (-0.0f - ((_713 * exp2(_701 * _698)) + (_748 * exp2(_735 * _701)))));
            _769 = saturate(abs(dot(float3(_591, _592, _593), float3(_575, _576, _577))));  // [sem: expr_sat]
            // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
            _778 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_769, _603, saturate(sqrt(exp2(_699 * 1.5f)))), 0.0f);
            // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
            _781 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_769, _603, saturate(sqrt(exp2(_700 * 1.5f)))), 0.0f);
            // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
            _784 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_769, _603, saturate(sqrt(exp2(_701 * 1.5f)))), 0.0f);
            _791 = min(0.99f, _778.x);
            _792 = min(0.99f, _781.x);
            _793 = min(0.99f, _784.x);
            _794 = min(0.99f, _778.y);
            _795 = min(0.99f, _781.y);
            _796 = min(0.99f, _784.y);
            _797 = _791 * _791;
            _798 = _792 * _792;
            _799 = _793 * _793;
            _800 = _794 * _794;
            _801 = _795 * _795;
            _802 = _796 * _796;
            _803 = _800 * _794;
            _804 = _801 * _795;
            _805 = _802 * _796;
            _806 = 1.0f - _797;
            _807 = 1.0f - _798;
            _808 = 1.0f - _799;
            _818 = _806 * _806;
            _819 = _807 * _807;
            _820 = _808 * _808;
            _821 = _818 * _806;
            _822 = _819 * _807;
            _823 = _820 * _808;
            _831 = min(max(_603, 0.18f), 0.6f);
            _832 = _831 * _831;
            _833 = _832 * 0.25f;
            _834 = _832 * 4.0f;
            _836 = (_792 + _791) + _793;
            _837 = _791 / _836;
            _838 = _792 / _836;
            _839 = _793 / _836;
            _840 = dot(float3(_832, _833, _834), float3(_837, _838, _839));
            _841 = _840 * _840;
            _844 = asin(min(max(_627, -1.0f), 1.0f)) + asin(min(max(_623, -1.0f), 1.0f));
            _845 = _844 * 0.5f;
            _846 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_837, _838, _839));
            _856 = _846 * _846;
            _879 = (_795 + _794) + _796;
            _883 = dot(float3(_832, _833, _834), float3((_794 / _879), (_795 / _879), (_796 / _879)));
            _887 = sqrt((_883 * _883) + (_841 * 2.0f));
            _905 = (_883 * 3.0f) + (_840 * 2.0f);
            _912 = (((_803 + _794) * ((_797 * 0.7f) + 1.0f)) * _887) / ((_905 * _803) + _794);
            _913 = (((_804 + _795) * ((_798 * 0.7f) + 1.0f)) * _887) / ((_905 * _804) + _795);
            _914 = (((_805 + _796) * ((_799 * 0.7f) + 1.0f)) * _887) / ((_905 * _805) + _796);
            _923 = _845 - (((_856 * (((_797 * 4.0f) * _800) + (_818 * 2.0f))) * (1.0f - ((_800 * 2.0f) / _818))) / _821);
            _930 = _845 - (((_856 * (((_798 * 4.0f) * _801) + (_819 * 2.0f))) * (1.0f - ((_801 * 2.0f) / _819))) / _822);
            _937 = _845 - (((_856 * (((_799 * 4.0f) * _802) + (_820 * 2.0f))) * (1.0f - ((_802 * 2.0f) / _820))) / _823);
            _965 = exp2((((_844 * -0.25f) * _845) / _841) * 1.442695f) * 1.4f;
            _966 = ((((((_803 * _797) / _821) + ((_794 * _797) / _806)) * 4.3982296f) * exp2((((_923 * _923) * -0.5f) / ((_912 * _912) + _841)) * 1.442695f)) + ((((_778.x + _758) * 0.25f) - _758) * 6.2831855f)) * _965;
            _967 = ((((((_804 * _798) / _822) + ((_795 * _798) / _807)) * 4.3982296f) * exp2((((_930 * _930) * -0.5f) / ((_913 * _913) + _841)) * 1.442695f)) + ((((_781.x + _759) * 0.25f) - _759) * 6.2831855f)) * _965;
            _968 = ((((((_805 * _799) / _823) + ((_796 * _799) / _808)) * 4.3982296f) * exp2((((_937 * _937) * -0.5f) / ((_914 * _914) + _841)) * 1.442695f)) + ((((_784.x + _760) * 0.25f) - _760) * 6.2831855f)) * _965;
            _969 = max(0.125f, _573);
            _983 = _573;
            _984 = _574;
            _985 = _575;
            _986 = _576;
            _987 = _577;
            _988 = _492;
            _989 = max(0.01f, ((_969 * (_620 - _966)) + _966));
            _990 = max(0.01f, (lerp(_967, _621, _969)));
            _991 = max(0.01f, (lerp(_968, _622, _969)));
          } else {
            _983 = _563;
            _984 = _564;
            _985 = _565;
            _986 = _566;
            _987 = _567;
            _988 = _492;
            _989 = 0.0f;
            _990 = 0.0f;
            _991 = 0.0f;
          }
        }
      }
    }
    _998 = -0.0f - min(0.0f, (-0.0f - _348));
    _999 = -0.0f - min(0.0f, (-0.0f - _349));
    _1000 = -0.0f - min(0.0f, (-0.0f - _350));
    half2 _1002 = __3__36__0__0__g_sceneAO.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    if ((uint)_988 > (uint)11) {
      _1010 = ((uint)_988 < (uint)19);
      if (!((uint)_988 < (uint)20)) {
        _1013 = _1010;
        _1016 = _1013;
        _1017 = (_988 == 107);
      } else {
        _1016 = _1010;
        _1017 = true;
      }
    } else {
      if (!((uint)_988 > (uint)10)) {
        _1013 = false;
        _1016 = _1013;
        _1017 = (_988 == 107);
      } else {
        _1016 = false;
        _1017 = true;
      }
    }
    _1022 = (_988 == 65);
    _1023 = _1022 || (_1016 || ((_988 == 96) || _1017));
    _1026 = select(_1023, float(_984), 0.0f);
    _1028 = ((uint)(_988 & 24) > (uint)23);
    if (_1028) {
      _1030 = (_988 == 29);
      if (_1030) {
        _1035 = float(saturate(_279));
      } else {
        _1035 = 0.0f;
      }
      _1037 = (uint)((half)(_278 * 255.0h));
      if (_187) {
        _1046 = select(((_1037 & 128) != 0), 1.0f, 0.0f);
        _1047 = (((float)((uint)((uint)(_1037 & 127)))) * 0.007874016f);
      } else {
        _1046 = 0.0f;
        _1047 = 0.0f;
      }
      _1048 = half(_1047);
      _1052 = (_1048 > 0.99902344h);
      _1057 = _1048;
      _1058 = (half)(select(((_988 == 24) || _1030), 0.010002136f, _279));
      _1059 = (half)(select(_1052, 1.0f, _306));
      _1060 = (half)(select(_1052, 1.0f, _307));
      _1061 = (half)(select(_1052, 1.0f, _308));
      _1062 = _1046;
      _1063 = _1035;
    } else {
      _1057 = (half)(select(_1023, 0.0f, _984));
      _1058 = _279;
      _1059 = _306;
      _1060 = _307;
      _1061 = _308;
      _1062 = 0.0f;
      _1063 = 0.0f;
    }
    _1064 = _988 & -2;
    _1065 = (_1064 == 66);
    _1066 = (_988 == 53);
    _1067 = _1066 || _1065;
    _1068 = -0.0f - _423;
    _1069 = -0.0f - _424;
    _1070 = -0.0f - _425;
    _1071 = dot(float3(_1068, _1069, _1070), float3(_375, _376, _377));
    if (_1067) {
      _1075 = abs(_1071);
    } else {
      _1075 = _1071;
    }
    _1076 = saturate(_1075);  // [sem: _1075_sat]
    _1077 = _117.x & 128;  // [sem: _3__36__0__0__g_stencil_load_derived]
    _1078 = (_1077 == 0);
    if (_1078) {
      if ((uint)_119 > (uint)51) {
        if (!(((_117.x & 125) == 105) || ((uint)_119 < (uint)68))) {
          _1098 = (_119 == 98);
        } else {
          _1098 = true;
        }
      } else {
        if ((uint)_119 > (uint)10) {
          if ((uint)_119 < (uint)20) {
            if (_209 == 14) {
              _1098 = (_119 == 98);
            } else {
              _1098 = true;
            }
          } else {
            if (!((_117.x & 125) == 105)) {
              _1098 = (_119 == 98);
            } else {
              _1098 = true;
            }
          }
        } else {
          _1098 = (_119 == 98);
        }
      }
    } else {
      _1098 = true;
    }
    [branch]
    if (_1028) {
      _1107 = (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(_101, _103, 0)))).x) & 16777215)))) * 5.960465e-08f);
    } else {
      _1107 = _114.x;
    }
    _1135 = mad((_projToPrevProj[3].z), _1107, mad((_projToPrevProj[3].y), _381, ((_projToPrevProj[3].x) * _379))) + (_projToPrevProj[3].w);
    if (_1098) {
      _1142 = __3__36__0__0__g_velocity.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_velocity_load]
      _1148 = (_1142.x * 2.0f);
      _1149 = (_1142.y * 2.0f);
    } else {
      _1148 = (((mad((_projToPrevProj[0].z), _1107, mad((_projToPrevProj[0].y), _381, ((_projToPrevProj[0].x) * _379))) + (_projToPrevProj[0].w)) / _1135) - _379);
      _1149 = (((mad((_projToPrevProj[1].z), _1107, mad((_projToPrevProj[1].y), _381, ((_projToPrevProj[1].x) * _379))) + (_projToPrevProj[1].w)) / _1135) - _381);
    }
    _1153 = _nearFarProj.x / max(1e-07f, _1107);
    _1156 = (_1148 * 0.5f) + _111;
    _1157 = _112 - (_1149 * 0.5f);
    _1165 = select((((_1156 < 0.0f) || (_1156 > 1.0f)) || ((_1157 < 0.0f) || (_1157 > 1.0f))), 1.0f, 0.0f);
    _1171 = (_bufferSizeAndInvSize.x * _1156) + -0.5f;
    _1172 = (_bufferSizeAndInvSize.y * _1157) + -0.5f;
    _1175 = (int)(floor(_1171));
    _1176 = (int)(floor(_1172));
    _1177 = (float)((int)(_1175));
    _1178 = (float)((int)(_1176));
    _1183 = (_1177 + 0.5f) * _bufferSizeAndInvSize.z;
    _1184 = (_1178 + 0.5f) * _bufferSizeAndInvSize.w;
    _1187 = __3__36__0__0__g_depthOpaquePrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(_1183, _1184));  // [sem: _3__36__0__0__g_depthOpaquePrev_gather]
    _1210 = mad(((uint)((uint)(_1187.w)) >> 24), 16777216, mad(((uint)((uint)(_1187.z)) >> 24), 65536, mad(((uint)((uint)(_1187.y)) >> 24), 256, ((uint)((uint)(_1187.x)) >> 24))));
    if (_1078) {
      if ((uint)_119 > (uint)51) {
        if (!((_119 == 98) || (((_117.x & 125) == 105) || ((uint)_119 < (uint)68)))) {
          _1240 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
        } else {
          _1240 = 0.0f;
        }
      } else {
        if ((uint)_119 > (uint)10) {
          if ((uint)_119 < (uint)20) {
            if (_209 == 14) {
              _1240 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
            } else {
              _1240 = 0.0f;
            }
          } else {
            if (!((_117.x & 125) == 105)) {
              _1240 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
            } else {
              _1240 = 0.0f;
            }
          }
        } else {
          _1240 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
        }
      }
    } else {
      _1240 = 0.0f;
    }
    _1248 = _screenPercentage.x * 2.0f;
    _1249 = _1248 * abs(_111 + -0.5f);
    _1250 = _screenPercentage.y * 2.0f;
    _1251 = _1250 * abs(_112 + -0.5f);
    _1255 = sqrt(dot(float2(_1249, _1251), float2(_1249, _1251)) + 1.0f) * _1153;
    _1272 = _1248 * abs(_1156 + -0.5f);
    _1273 = _1250 * abs(_1157 + -0.5f);
    _1276 = sqrt(dot(float2(_1272, _1273), float2(_1272, _1273)) + 1.0f);
    _1291 = _366 || ((uint)((int)(_988) + (int)(-97)) < (uint)2);
    _1293 = _1153 * _1153;
    _1295 = (_1293 * select(_1291, 0.5f, 0.2f)) + 1.0f;
    _1299 = ((uint)((int)(_988) + (int)(-52)) < (uint)16);
    if (_1299) {
      _1318 = (1000.0f - (saturate((float)((bool)((sqrt(((_diffViewPosAccurate.x * _diffViewPosAccurate.x) + (_diffViewPosAccurate.y * _diffViewPosAccurate.y)) + (_diffViewPosAccurate.z * _diffViewPosAccurate.z)) * 50.0f) > 1.0f))) * 875.0f));
    } else {
      _1318 = 50.0f;
    }
    _1326 = select(_1299, 0.0f, ((max(0.0f, (_1153 + -1.0f)) * 0.1f) * _temporalReprojectionParams.y));
    _1331 = max(0.0f, (abs(_1255 - (_1276 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1187.x & 16777215)))) * 5.960465e-08f))) - _1240))) - _1326));
    _1332 = max(0.0f, (abs(_1255 - (_1276 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1187.y & 16777215)))) * 5.960465e-08f))) - _1240))) - _1326));
    _1333 = max(0.0f, (abs(_1255 - (_1276 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1187.z & 16777215)))) * 5.960465e-08f))) - _1240))) - _1326));
    _1334 = max(0.0f, (abs(_1255 - (_1276 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1187.w & 16777215)))) * 5.960465e-08f))) - _1240))) - _1326));
    _1335 = _1331 * _1331;
    _1336 = _1332 * _1332;
    _1337 = _1333 * _1333;
    _1338 = _1334 * _1334;
    _1340 = (-1.442695f / ((_1293 * 0.1f) + 1.0f)) * select(_1291, 0.2f, _1318);
    _1353 = select((_1335 > _1295), 0.0f, exp2(_1335 * _1340));
    _1354 = select((_1336 > _1295), 0.0f, exp2(_1336 * _1340));
    _1355 = select((_1337 > _1295), 0.0f, exp2(_1337 * _1340));
    _1356 = select((_1338 > _1295), 0.0f, exp2(_1338 * _1340));
    if (!_1028) {
      _1358 = _1210 & 127;
      _1359 = _1210 & 32512;
      _1360 = _1210 & 8323072;
      _1361 = _1210 & 2130706432;
      _1383 = ((uint)((int)(_1358) + (int)(-52)) < (uint)16);
      _1387 = ((uint)((int)(((uint)((uint)(_1210)) >> 8) & 127) + (int)(-52)) < (uint)16);
      _1391 = ((uint)((int)(((uint)((uint)(_1210)) >> 16) & 127) + (int)(-52)) < (uint)16);
      _1395 = ((uint)((int)(((uint)((uint)(_1210)) >> 24) & 127) + (int)(-52)) < (uint)16);
      _1408 = ((uint)((int)(_119) + (int)(-52)) < (uint)16);
      _1410 = (_1077 != 0) || _1408;
      _1419 = (_988 == 6);
      _1441 = ((uint)((int)(_988) + (int)(-105)) < (uint)3);
      _1479 = (_1353 * ((float)((bool)((_428 || ((_1358 != 53) && ((_1210 & 126) != 66))) && (!((_1410 ^ (((_1210 & 128) != 0) || _1383)) || ((_1419 ^ (_1358 == 6)) || ((_1408 ^ _1383) || (_1441 ^ ((_1358 == 107) || ((uint)((int)(_1358) + (int)(-105)) < (uint)2)))))))))));
      _1480 = (_1354 * ((float)((bool)((_428 || ((_1359 != 13568) && ((_1210 & 32256) != 16896))) && (!((_1410 ^ (((_1210 & 32768) != 0) || _1387)) || ((_1419 ^ (_1359 == 1536)) || ((_1408 ^ _1387) || (_1441 ^ (((_1210 & 32000) == 26880) || (_1359 == 27136)))))))))));
      _1481 = (_1355 * ((float)((bool)((_428 || ((_1360 != 3473408) && ((_1210 & 8257536) != 4325376))) && (!((_1410 ^ (((_1210 & 8388608) != 0) || _1391)) || ((_1419 ^ (_1360 == 393216)) || ((_1408 ^ _1391) || (_1441 ^ (((_1210 & 8192000) == 6881280) || (_1360 == 6946816)))))))))));
      _1482 = (_1356 * ((float)((bool)((_428 || ((_1361 != 889192448) && ((_1210 & 2113929216) != 1107296256))) && (!((_1410 ^ (((int)_1210 < (int)0) || _1395)) || ((_1419 ^ (_1361 == 100663296)) || ((_1408 ^ _1395) || (_1441 ^ (((_1210 & 2097152000) == 1761607680) || (_1361 == 1778384896)))))))))));
    } else {
      _1479 = _1353;
      _1480 = _1354;
      _1481 = _1355;
      _1482 = _1356;
    }
    _1484 = __3__36__0__0__g_sceneNormalPrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(_1183, _1184));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather]
    _1503 = min(1.0f, ((((float)((uint)((uint)(_1484.w & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1504 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1484.w)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1505 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1484.w)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1507 = rsqrt(dot(float3(_1503, _1504, _1505), float3(_1503, _1504, _1505)));  // [sem: invLength]
    _1512 = saturate(dot(float3(_375, _376, _377), float3((_1507 * _1503), (_1507 * _1504), (_1507 * _1505))));  // [sem: expr_sat]
    _1527 = min(1.0f, ((((float)((uint)((uint)(_1484.z & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1528 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1484.z)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1529 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1484.z)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1531 = rsqrt(dot(float3(_1527, _1528, _1529), float3(_1527, _1528, _1529)));  // [sem: invLength]
    _1536 = saturate(dot(float3(_375, _376, _377), float3((_1531 * _1527), (_1531 * _1528), (_1531 * _1529))));  // [sem: expr_sat]
    _1551 = min(1.0f, ((((float)((uint)((uint)(_1484.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1552 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1484.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1553 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1484.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1555 = rsqrt(dot(float3(_1551, _1552, _1553), float3(_1551, _1552, _1553)));  // [sem: invLength]
    _1560 = saturate(dot(float3(_375, _376, _377), float3((_1555 * _1551), (_1555 * _1552), (_1555 * _1553))));  // [sem: expr_sat]
    _1575 = min(1.0f, ((((float)((uint)((uint)(_1484.y & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1576 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1484.y)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1577 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1484.y)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1579 = rsqrt(dot(float3(_1575, _1576, _1577), float3(_1575, _1576, _1577)));  // [sem: invLength]
    _1584 = saturate(dot(float3(_375, _376, _377), float3((_1579 * _1575), (_1579 * _1576), (_1579 * _1577))));  // [sem: expr_sat]
    _1587 = select((_1066 || (_1065 || _1291)), 0.01f, 1.0f);
    _1604 = _1171 - _1177;
    _1605 = _1172 - _1178;
    _1606 = 1.0f - _1604;
    _1607 = 1.0f - _1605;
    _1612 = (_1606 * _1605) * _1479;
    _1614 = (_1605 * _1604) * _1480;
    _1616 = (_1607 * _1604) * _1481;
    _1618 = (_1607 * _1606) * _1482;
    _1620 = saturate(select(_1028, 1.0f, (pow(_1560, _1587))) * _1612);  // [sem: expr_sat]
    _1621 = saturate(select(_1028, 1.0f, (pow(_1584, _1587))) * _1614);  // [sem: expr_sat]
    _1622 = saturate(select(_1028, 1.0f, (pow(_1536, _1587))) * _1616);  // [sem: expr_sat]
    _1623 = saturate(select(_1028, 1.0f, (pow(_1512, _1587))) * _1618);  // [sem: expr_sat]
    _1626 = asint(__3__37__0__0__g_structureCounterBuffer.Load(8));
    _1627 = WaveReadLaneFirst(_1626);
    [branch]
    if (!(_1627 == 0)) {
      _1635 = (((uint)(__3__36__0__0__g_tiledManyLightsMasks.Load(int3(((int)(_101) >> 5), ((int)(_103) >> 5), 0)))).x) & 4;
      _1637 = (uint)((uint)(_1635)) >> 2;
      if (!(_1635 == 0)) {
        _1645 = max((saturate(dot(float3(_998, _999, _1000), float3(0.212671f, 0.71516f, 0.072169f)) * 0.01f) * 0.875f), _1165);
        _1646 = _1637;
      } else {
        _1645 = _1165;
        _1646 = _1637;
      }
    } else {
      _1645 = _1165;
      _1646 = 0;
    }
    // [sem: expr_sat]
    _1656 = saturate(max(_1645, (((_environmentLightingHistory[1].w) + _temporalReprojectionParams.w) + _renderParams.y)));
    _1657 = (uint)((uint)(_1176)) + (uint)(1);
    half4 _1659 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1175, _1657, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    _1664 = (uint)((uint)(_1175)) + (uint)(1);
    half4 _1665 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1664, _1657, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    half4 _1670 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1664, _1176, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    half4 _1675 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1175, _1176, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    _1680 = dot(float4(_1620, _1621, _1622, _1623), float4(1.0f, 1.0f, 1.0f, 1.0f));
    // [sem: expr_sat]
    _1689 = saturate(dot(float4(_1620, _1621, _1622, _1623), float4(float(_1659.w), float(_1665.w), float(_1670.w), float(_1675.w))) * (1.0f / max(1.0f, _1680)));
    _1694 = sqrt((_1149 * _1149) + (_1148 * _1148)) * 50.0f;
    if (_1299) {
      _1703 = saturate(1.0f - _1694);  // [sem: expr_sat]
    } else {
      _1703 = (1.0f - (saturate(_1694) * 0.5f));  // [sem: expr_sat]
    }
    _1707 = max(1.0f, (_bufferSizeAndInvSize.w * 2160.0f));
    _1708 = (_988 == 24);
    _1709 = select(_1708, 1.0f, _1689);
    _1711 = (_1709 * _1709) * 4.0f;
    _1714 = __3__36__0__0__g_manyLightsMoments.SampleLevel(__3__40__0__0__g_sampler, float2(_111, _112), 0.0f);  // [sem: _3__36__0__0__g_manyLightsMoments_sampleLod]
    _1719 = saturate(_1714.w);  // [sem: expr_sat]
    _1721 = 1.0f / max(1e-06f, _1680);
    _1723 = _1721 * _1620;
    _1724 = _1721 * _1621;
    _1725 = _1721 * _1622;
    _1726 = _1721 * _1623;
    if (!((_1721 * _1680) == 0.0f)) {
      // [sem: expr_sat]
      _1742 = saturate(saturate(max(_1656, (1.0f / ((min(31.0f, ((_1703 * 15.0f) * _1707)) * saturate(_1711)) + 1.0f))) + _renderParams.z));
    } else {
      _1742 = 1.0f;  // [sem: expr_sat]
    }
    _1784 = 1.0f / _exposure4.x;
    _1801 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (-0.0f - (min(0.0f, (-0.0f - ((_1726 * float(_1675.x)) + ((_1725 * float(_1670.x)) + ((_1723 * float(_1659.x)) + (_1724 * float(_1665.x))))))) * _exposure4.y)))));
    _1802 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (-0.0f - (min(0.0f, (-0.0f - ((_1726 * float(_1675.y)) + ((_1725 * float(_1670.y)) + ((_1723 * float(_1659.y)) + (_1724 * float(_1665.y))))))) * _exposure4.y)))));
    _1803 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (-0.0f - (min(0.0f, (-0.0f - ((_1726 * float(_1675.z)) + ((_1725 * float(_1670.z)) + ((_1723 * float(_1659.z)) + (_1724 * float(_1665.z))))))) * _exposure4.y)))));
    if (_renderParams.y == 0.0f) {
      if (_1065) {
        _1834 = _1801;
        _1835 = _1802;
        _1836 = _1803;
        _1837 = _1742;
        _1841 = _1834;
        _1842 = _1835;
        _1843 = _1836;
        _1844 = _1837;
        _1845 = saturate(_1689 + 0.0625f);  // [sem: expr_sat]
      } else {
        if (!_1066) {
          _1808 = dot(float3(_1801, _1802, _1803), float3(0.212671f, 0.71516f, 0.072169f));
          _1824 = ((min(_1808, _1714.y) / max(1e-06f, _1808)) * _1719) + saturate(1.0f - _1719);
          _1829 = saturate(((_1719 * 0.5f) * saturate(((_1714.x - _1808) * 2.0f) / max(1e-06f, _1714.x))) + _1742);  // [sem: expr_sat]
          _1830 = (_1824 * _1801);
          _1831 = (_1824 * _1802);
          _1832 = (_1824 * _1803);
        } else {
          _1829 = _1742;  // [sem: expr_sat]
          _1830 = _1801;
          _1831 = _1802;
          _1832 = _1803;
        }
        if (!_1708) {
          _1834 = _1830;
          _1835 = _1831;
          _1836 = _1832;
          _1837 = _1829;
          _1841 = _1834;
          _1842 = _1835;
          _1843 = _1836;
          _1844 = _1837;
          _1845 = saturate(_1689 + 0.0625f);  // [sem: expr_sat]
        } else {
          _1841 = _1830;
          _1842 = _1831;
          _1843 = _1832;
          _1844 = _1829;
          _1845 = 0.0f;  // [sem: expr_sat]
        }
      }
    } else {
      _1829 = _1742;  // [sem: expr_sat]
      _1830 = _1801;
      _1831 = _1802;
      _1832 = _1803;
      if (!_1708) {
        _1834 = _1830;
        _1835 = _1831;
        _1836 = _1832;
        _1837 = _1829;
        _1841 = _1834;
        _1842 = _1835;
        _1843 = _1836;
        _1844 = _1837;
        _1845 = saturate(_1689 + 0.0625f);  // [sem: expr_sat]
      } else {
        _1841 = _1830;
        _1842 = _1831;
        _1843 = _1832;
        _1844 = _1829;
        _1845 = 0.0f;  // [sem: expr_sat]
      }
    }
    _1852 = (_1844 * (_998 - _1841)) + _1841;
    _1853 = (_1844 * (_999 - _1842)) + _1842;
    _1854 = (_1844 * (_1000 - _1843)) + _1843;
    __3__38__0__1__g_diffuseResultUAV[int2(_101, _103)] = float4((half)(half(_1852)), (half)(half(_1853)), (half)(half(_1854)), (half)(half(_1845)));
    _1861 = float(_1059);
    _1862 = float(_1060);
    _1863 = float(_1061);
    if (_988 == 52) {
      _1870 = saturate(((_1862 + _1861) + _1863) * 1.2f);  // [sem: expr_sat]
    } else {
      _1870 = 1.0f;  // [sem: expr_sat]
    }
    _1871 = float(_1057);
    _1877 = (0.7f / min(max(max(max(_1861, _1862), _1863), 0.01f), 0.7f)) * _1870;
    _1887 = (((_1877 * _1861) + -0.04f) * _1871) + 0.04f;
    _1888 = (((_1877 * _1862) + -0.04f) * _1871) + 0.04f;
    _1889 = (((_1877 * _1863) + -0.04f) * _1871) + 0.04f;
    _1891 = select(_1028, 1.0f, float(_1002.y));
    if (!_1028) {
      _1896 = (half)(saturate((half)(1.0h - (half)(_1002.x))));  // [sem: _3__36__0__0__g_sceneAO_load_derived]
    } else {
      _1896 = 1.0h;  // [sem: _3__36__0__0__g_sceneAO_load_derived]
    }
    _1897 = float(_1896);
    _1900 = (_988 == 98) || (_1064 == 96);
    if (!_1900) {
      bool __branch_chain_1901;
      if ((uint)((int)(_988) + (int)(-105)) < (uint)2) {
        _1908 = _187;
        __branch_chain_1901 = true;
      } else {
        if (!((uint)((int)(_988) + (int)(-11)) < (uint)9)) {
          _1908 = false;
          __branch_chain_1901 = true;
        } else {
          _1951 = 0.0h;
          _1952 = _988;
          _1953 = 0.0f;
          _1954 = 0.0f;
          _1955 = 0.0f;
          __branch_chain_1901 = false;
        }
      }
      if (__branch_chain_1901) {
        _1910 = (_988 == 107) || _1908;
        _1913 = select(_1910, 0.0f, _1057);
        if (_1910 || (!_1022)) {
          if (!(_988 == 33)) {
            if (_988 == 54) {
              if (!((((int)((uint)((_448 * 255.0f) + 0.5f))) & 112) == 0)) {
                _1936 = (uint)((_448 * 255.0f) + 0.5f);
                _1938 = ((uint)((uint)(_1936)) >> 4) & 7;
                if (!(_1938 == 0)) {
                  _1945 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_1938) + (int)(1)))];
                  _1951 = _1913;
                  _1952 = _988;
                  _1953 = min((1.0f - _1945.y), _1945.x);
                  _1954 = (((float)((uint)((uint)(_1936 & 15)))) * 0.06666667f);
                  _1955 = _1945.x;
                } else {
                  _1951 = _1913;
                  _1952 = _988;
                  _1953 = 0.0f;
                  _1954 = 0.0f;
                  _1955 = 0.0f;
                }
              } else {
                _1951 = _1913;
                _1952 = 52;
                _1953 = 0.0f;
                _1954 = 0.0f;
                _1955 = 0.0f;
              }
            } else {
              if (_988 == 55) {
                _1951 = _1913;
                _1952 = select(((((int)((uint)((_448 * 255.0f) + 0.5f))) & 127) == 0), 52, 55);
                _1953 = 0.0f;
                _1954 = 0.0f;
                _1955 = 0.0f;
              } else {
                _1951 = _1913;
                _1952 = _988;
                _1953 = 0.0f;
                _1954 = 0.0f;
                _1955 = 0.0f;
              }
            }
          } else {
            _1936 = (uint)((_448 * 255.0f) + 0.5f);
            _1938 = ((uint)((uint)(_1936)) >> 4) & 7;
            if (!(_1938 == 0)) {
              _1945 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_1938) + (int)(1)))];
              _1951 = _1913;
              _1952 = _988;
              _1953 = min((1.0f - _1945.y), _1945.x);
              _1954 = (((float)((uint)((uint)(_1936 & 15)))) * 0.06666667f);
              _1955 = _1945.x;
            } else {
              _1951 = _1913;
              _1952 = _988;
              _1953 = 0.0f;
              _1954 = 0.0f;
              _1955 = 0.0f;
            }
          }
        } else {
          _1951 = 0.0h;
          _1952 = 65;
          _1953 = 0.0f;
          _1954 = 0.0f;
          _1955 = 0.0f;
        }
      }
    } else {
      _1951 = 0.0h;
      _1952 = _988;
      _1953 = 0.0f;
      _1954 = 0.0f;
      _1955 = 0.0f;
    }
    _1957 = dot(float3(_423, _424, _425), float3(_375, _376, _377)) * 2.0f;
    _1961 = _423 - (_1957 * _375);
    _1962 = _424 - (_1957 * _376);
    _1963 = _425 - (_1957 * _377);
    _1969 = dot(float3(_423, _424, _425), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
    _1977 = (_420 * _420) + (_418 * _418);
    _1979 = sqrt(_1977 + (_419 * _419));
    _1981 = sqrt(max(0.0f, (dot(float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z)) - (_1969 * _1969)))) / (_1979 + 5.0f);
    _1985 = float(_1058);
    if ((_1058 < 0.099975586h) && (_1981 < 0.125f)) {
      _1995 = select((_1985 < 0.8f), ((__3__36__0__0__g_specularRayHitDistance.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_111, _112), 0.0f)).x), 0.0f) * rsqrt(dot(float3(_1961, _1962, _1963), float3(_1961, _1962, _1963)));
      _1996 = _1995 * _1961;
      _1997 = _1995 * _1962;
      _1998 = _1995 * _1963;
      _2003 = dot(float3(_1996, _1997, _1998), float3((-0.0f - _375), (-0.0f - _376), (-0.0f - _377))) * 2.0f;
      _2008 = ((_2003 * _375) + _418) + _1996;
      _2010 = ((_2003 * _376) + _419) + _1997;
      _2012 = ((_2003 * _377) + _420) + _1998;
      _2036 = mad((_viewProjRelative[0].z), _2012, mad((_viewProjRelative[0].y), _2010, (_2008 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w);
      _2040 = mad((_viewProjRelative[1].z), _2012, mad((_viewProjRelative[1].y), _2010, (_2008 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w);
      _2044 = mad((_viewProjRelative[2].z), _2012, mad((_viewProjRelative[2].y), _2010, (_2008 * (_viewProjRelative[2].x)))) + (_viewProjRelative[2].w);
      _2048 = mad((_viewProjRelative[3].z), _2012, mad((_viewProjRelative[3].y), _2010, (_2008 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
      _2078 = mad((_projToPrevProj[3].w), _2048, mad((_projToPrevProj[3].z), _2044, mad((_projToPrevProj[3].y), _2040, ((_projToPrevProj[3].x) * _2036))));
      _2083 = ((mad((_projToPrevProj[0].w), _2048, mad((_projToPrevProj[0].z), _2044, mad((_projToPrevProj[0].y), _2040, ((_projToPrevProj[0].x) * _2036)))) / _2078) - (_2036 / _2048)) - _1148;
      _2084 = ((mad((_projToPrevProj[1].w), _2048, mad((_projToPrevProj[1].z), _2044, mad((_projToPrevProj[1].y), _2040, ((_projToPrevProj[1].x) * _2036)))) / _2078) - (_2040 / _2048)) - _1149;
      _2092 = max(_1981, saturate(sqrt((_2084 * _2084) + (_2083 * _2083))));
    } else {
      _2092 = _1981;
    }
    _2096 = _1952 & -2;
    _2099 = (_1952 == 29);
    _2101 = select((_2099 || ((_2096 == 24) || (_renderParams.y > 0.0f))), 1.0f, _1891);
    _2105 = float(_1951);
    _2110 = min(max((_cavityParams.y + -1.0f), 0.0f), 2.0f);
    // [sem: expr_sat]
    _2136 = saturate(saturate(1.0f - (((_2105 * _123) / max(0.001f, _1076)) * 0.001f)) * 1.25f) * saturate(((((-0.05f - (_2110 * 0.075f)) + max(0.02f, _1985)) + (saturate(_123 * 0.025f) * 0.1f)) * min(max((_123 + 1.0f), 5.0f), 50.0f)) * (1.0f - (saturate(_2105) * 0.75f)));
    if (_1952 == 64) {
      _2145 = ((saturate(_123 * 0.25f) * (_2136 + -0.39990234f)) + 0.39990234f);
    } else {
      _2145 = _2136;
    }
    _2147 = (_2110 * 16.0f) + 16.0f;
    _2153 = select((_2110 > 1.0f), 0.0f, saturate((1.0f / _2147) * (_123 - _2147)));
    if (_1952 == 105) {
      _2164 = 1.0f;
      _2168 = select((_1952 == 65), 0.0f, _2164);
    } else {
      if (!((uint)(_1952 & 24) > (uint)23)) {
        _2164 = select((_1952 == 107), 1.0f, ((_2153 + _2145) - (_2153 * _2145)));
        _2168 = select((_1952 == 65), 0.0f, _2164);
      } else {
        _2168 = 0.0f;
      }
    }
    _2175 = saturate(select((_lightingParams.y == 0.0f), 1.0f, (1.0f - _2168))) * _2092;
    if ((uint)_1952 > (uint)51) {
      if ((uint)_1952 < (uint)68) {
        if (_1952 == 66) {
          _2192 = (half)(max(0.099975586h, _1058));
          _2195 = _2192;
          _2196 = (half)(max(0.89990234h, _1058));
        } else {
          _2187 = max(0.099975586h, _1058);
          if ((_1952 == 53) || (_2096 == 66)) {
            _2192 = _2187;
            _2195 = _2192;
            _2196 = (half)(max(0.89990234h, _1058));
          } else {
            _2195 = _2187;
            _2196 = _2187;
          }
        }
      } else {
        _2181 = max(0.099975586h, _1058);
        _2195 = _2181;
        _2196 = _2181;
      }
    } else {
      _2187 = max(0.099975586h, _1058);
      if ((_1952 == 53) || (_2096 == 66)) {
        _2192 = _2187;
        _2195 = _2192;
        _2196 = (half)(max(0.89990234h, _1058));
      } else {
        _2195 = _2187;
        _2196 = _2187;
      }
    }
    _2197 = float(_2196);
    _2198 = _2197 * _2197;
    _2199 = _2198 * _2198;
    _2212 = (((_2199 * _1560) - _1560) * _1560) + 1.0f;
    _2213 = (((_2199 * _1584) - _1584) * _1584) + 1.0f;
    _2214 = (((_2199 * _1536) - _1536) * _1536) + 1.0f;
    _2215 = (((_2199 * _1512) - _1512) * _1512) + 1.0f;
    _2255 = (((((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1664, _1657, 0))).x) * saturate(_1614)) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1175, _1657, 0))).x) * saturate(_1612))) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1664, _1176, 0))).x) * saturate(_1616))) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1175, _1176, 0))).x) * saturate(_1618));
    _2260 = saturate(select(_2099, 1.0f, saturate((_2199 / (_2212 * _2212)) * _1560)) * _1612);  // [sem: expr_sat]
    _2261 = saturate(select(_2099, 1.0f, saturate((_2199 / (_2213 * _2213)) * _1584)) * _1614);  // [sem: expr_sat]
    _2262 = saturate(select(_2099, 1.0f, saturate((_2199 / (_2214 * _2214)) * _1536)) * _1616);  // [sem: expr_sat]
    _2263 = saturate(select(_2099, 1.0f, saturate((_2199 / (_2215 * _2215)) * _1512)) * _1618);  // [sem: expr_sat]
    _2273 = exp2(log2(saturate(max(float(((half)(((half)(1.0h - _1058)) * 0.75h)) * _1951), (1.0f - _1076)))) * 0.1f);
    _2276 = float(((half)(_1058 * _1058)) + 1.0009766h);
    _2292 = select(_2099, 1.0f, saturate(((_1707 * _1707) * _1711) * exp2((log2(float(_2195)) * 0.5f) * (((_2175 * 15.0f) * ((_2273 + _2276) / (_2276 - _2273))) + 1.0f))));
    if ((uint)((int)((uint)((uint)(_1952)) + (uint)(-12))) < (uint)9) {
      _2302 = ((saturate(_123 * 0.005f) * (_2292 + -1.0f)) + 1.0f);
    } else {
      _2302 = _2292;
    }
    _2330 = mad((_projToPrevProj[3].z), _114.x, mad((_projToPrevProj[3].y), _381, ((_projToPrevProj[3].x) * _379))) + (_projToPrevProj[3].w);
    _2333 = ((mad((_projToPrevProj[0].z), _114.x, mad((_projToPrevProj[0].y), _381, ((_projToPrevProj[0].x) * _379))) + (_projToPrevProj[0].w)) / _2330) - _379;
    _2334 = ((mad((_projToPrevProj[1].z), _114.x, mad((_projToPrevProj[1].y), _381, ((_projToPrevProj[1].x) * _379))) + (_projToPrevProj[1].w)) / _2330) - _381;
    _2335 = _1148 - _2333;
    _2336 = _1149 - _2334;
    if (_1098 || ((uint)((int)((uint)((uint)(_1952)) + (uint)(-52))) < (uint)16)) {
      _2350 = (31.0f - (saturate(sqrt((_2336 * _2336) + (_2335 * _2335)) * 500.0f) * 24.0f));
    } else {
      _2350 = 63.0f;
    }
    if (_renderParams.z > 0.0f) {
      _2365 = saturate((_2175 * 200.0f) + 0.125f);  // [sem: expr_sat]
    } else {
      _2365 = 0.0f;  // [sem: expr_sat]
    }
    _2366 = max(max(saturate(_1656), saturate(max(0.0f, (1.0f / (((_2302 * _2255) * _2350) + 1.0f))))), _2365);
    _2368 = ((uint)(_1952 & 24) > (uint)23);
    [branch]
    if (_2368) {
      _2379 = (_bufferSizeAndInvSize.x * ((_2333 * 0.5f) + _111)) + -0.5f;
      _2380 = (_bufferSizeAndInvSize.y * (_112 - (_2334 * 0.5f))) + -0.5f;
      _2383 = (int)(floor(_2379));
      _2384 = (int)(floor(_2380));
      _2385 = (float)((int)(_2383));
      _2386 = (float)((int)(_2384));
      [branch]
      if (_2099) {
        // [sem: _3__36__0__0__g_stencilPrev_gather]
        _2396 = __3__36__0__0__g_stencilPrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(((_2385 + 0.5f) * _bufferSizeAndInvSize.z), ((_2386 + 0.5f) * _bufferSizeAndInvSize.w)));
        _2403 = mad(_2396.w, 16777216, mad(_2396.z, 65536, mad(_2396.y, 256, _2396.x)));
        _2432 = saturate(((float)((bool)(((uint)(_2403 & 24) > (uint)23) && ((_2403 & 127) != 24)))) * _2260);  // [sem: expr_sat]
        _2433 = saturate(((float)((bool)(((uint)(_2403 & 6144) > (uint)5888) && ((_2403 & 32512) != 6144)))) * _2261);  // [sem: expr_sat]
        // [sem: expr_sat]
        _2434 = saturate(((float)((bool)(((uint)(_2403 & 1572864) > (uint)1507328) && ((_2403 & 8323072) != 1572864)))) * _2262);
        // [sem: expr_sat]
        _2435 = saturate(((float)((bool)(((uint)(_2403 & 402653184) > (uint)385875968) && ((_2403 & 2130706432) != 402653184)))) * _2263);
        _2468 = max(saturate(min(max(((_1063 / (((_123 * _123) * 0.005f) + 1.0f)) + (_2175 * 500.0f)), 0.03125f), 0.5f) + _2366), saturate(1.0f - dot(float4(_2432, _2433, _2434, _2435), float4(1.0f, 1.0f, 1.0f, 1.0f))));
        _2469 = _2383;
        _2470 = _2384;
        _2471 = _2432;
        _2472 = _2433;
        _2473 = _2434;
        _2474 = _2435;
      } else {
        _2451 = _2379 - _2385;
        _2452 = _2380 - _2386;
        _2453 = 1.0f - _2451;
        _2454 = 1.0f - _2452;
        _2468 = (saturate((sqrt((_2334 * _2334) + (_2333 * _2333)) * 50.0f) + 0.125f) * 0.875f);
        _2469 = _2383;
        _2470 = _2384;
        _2471 = (_2453 * _2452);
        _2472 = (_2452 * _2451);
        _2473 = (_2454 * _2451);
        _2474 = (_2454 * _2453);
      }
    } else {
      _2468 = _2366;
      _2469 = _1175;
      _2470 = _1176;
      _2471 = _2260;
      _2472 = _2261;
      _2473 = _2262;
      _2474 = _2263;
    }
    _2475 = (_2105 > 0.2f);
    _2476 = (uint)((uint)(_2470)) + (uint)(1);
    half4 _2478 = __3__36__0__0__g_specularResultPrev.Load(int3(_2469, _2476, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _2491 = ((float)((bool)(!(_2475 ^ ((half)(_2478.w) < 0.0h))))) * _2471;
    _2497 = (uint)((uint)(_2469)) + (uint)(1);
    half4 _2498 = __3__36__0__0__g_specularResultPrev.Load(int3(_2497, _2476, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _2511 = ((float)((bool)(!(_2475 ^ ((half)(_2498.w) < 0.0h))))) * _2472;
    half4 _2521 = __3__36__0__0__g_specularResultPrev.Load(int3(_2497, _2470, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _2534 = ((float)((bool)(!(_2475 ^ ((half)(_2521.w) < 0.0h))))) * _2473;
    half4 _2544 = __3__36__0__0__g_specularResultPrev.Load(int3(_2469, _2470, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _2557 = ((float)((bool)(!(_2475 ^ ((half)(_2544.w) < 0.0h))))) * _2474;
    _2581 = 1.0f / max(((saturate(_123 * 0.0625f) * 0.000999f) + 1e-06f), dot(float4(_2491, _2511, _2534, _2557), float4(1.0f, 1.0f, 1.0f, 1.0f)));
    _2583 = -0.0f - (min(0.0f, (-0.0f - ((((_2491 * float(_2478.x)) + (_2511 * float(_2498.x))) + (_2534 * float(_2521.x))) + (_2557 * float(_2544.x))))) * _2581);
    _2585 = -0.0f - (min(0.0f, (-0.0f - ((((_2491 * float(_2478.y)) + (_2511 * float(_2498.y))) + (_2534 * float(_2521.y))) + (_2557 * float(_2544.y))))) * _2581);
    _2587 = -0.0f - (min(0.0f, (-0.0f - ((((_2491 * float(_2478.z)) + (_2511 * float(_2498.z))) + (_2534 * float(_2521.z))) + (_2557 * float(_2544.z))))) * _2581);
    _2588 = _2581 * min(0.0f, (-0.0f - ((((_2491 * abs(float(_2478.w))) + (_2511 * abs(float(_2498.w)))) + (_2534 * abs(float(_2521.w)))) + (_2557 * abs(float(_2544.w))))));
    _2597 = max(_2468, saturate((_1985 * _1985) * max(0.0f, saturate(((1.0f - _1891) - _1897) * 2.0f))));
    if ((_1952 != 53) && ((_2096 != 66) && (_renderParams.y == 0.0f))) {
      _2604 = dot(float3(_2583, _2585, _2587), float3(0.212671f, 0.71516f, 0.072169f));
      _2611 = ((min(_2604, _1714.z) / max(1e-09f, _2604)) * _1719) + saturate(1.0f - _1719);
      // [sem: expr_sat]
      _2632 = saturate(((_1719 * 0.5f) * saturate((((_1985 * 1000.0f) * _2175) * ((float(1.0h / ((half)(8.0h - ((half)(_1058 * 7.0h))))) * _1714.z) - _2604)) / max(1e-06f, _1714.z))) + _2597);
      _2633 = (_2611 * _2583);
      _2634 = (_2611 * _2585);
      _2635 = (_2611 * _2587);
    } else {
      _2632 = _2597;  // [sem: expr_sat]
      _2633 = _2583;
      _2634 = _2585;
      _2635 = _2587;
    }
    _2636 = _2633 * _exposure4.y;
    _2637 = _2634 * _exposure4.y;
    _2638 = _2635 * _exposure4.y;
    _2651 = ((max(0.001f, _1897) + _2588) * _2632) - _2588;
    _2661 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_2101 * _352.x) - _2636) * _2632) + _2636))));
    _2662 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_2101 * _352.y) - _2637) * _2632) + _2637))));
    _2663 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_2101 * _352.z) - _2638) * _2632) + _2638))));
    __3__38__0__1__g_specularResultUAV[int2(_101, _103)] = float4((half)(half(_2661)), (half)(half(_2662)), (half)(half(_2663)), (half)(half(select(_2475, (-0.0f - _2651), _2651))));
    __3__38__0__1__g_specularSampleCountUAV[int2(_101, _103)] = saturate((_2255 * 0.984375f) + 0.015625f);
    _2675 = select(_2368, 0.0f, _2651);
    _2680 = float(half(lerp(_2675, 1.0f, _1985)));
    _2681 = (_2096 == 64);
    _2683 = ((int)(uint)(_188)) ^ 1;
    if ((((int)(uint)(_2681)) & _2683) == 0) {
      _2700 = saturate(exp2((_2680 * _2680) * (_123 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _2700 = select((_cavityParams.z > 0.0f), select(_188, 0.0f, _447), 1.0f);  // [sem: expr_sat]
    }
    _2703 = (_cavityParams.x == 0.0f);
    _2704 = select(_2703, 1.0f, _2700);
    _2705 = float(_206);
    _2706 = float(_207);
    _2707 = float(_208);
    if (_2681) {
      _2713 = (_2704 * _1887);
      _2714 = (_2704 * _1888);
      _2715 = (_2704 * _1889);
    } else {
      _2713 = _1887;
      _2714 = _1888;
      _2715 = _1889;
    }
    _2717 = _1861 * 0.875f;
    _2718 = _1862 * 0.875f;
    _2719 = _1863 * 0.875f;
    if (!(_1952 == 37)) {
      _2721 = (_1952 == 55);
      _2722 = select(_2721, _2717, _2713);
      _2723 = select(_2721, _2718, _2714);
      _2724 = select(_2721, _2719, _2715);
      if ((_1952 == 53) || (_2096 == 66)) {
        // [sem: _3__36__0__0__g_hairBrdfLookup_sampleLod]
        _2739 = __3__36__0__0__g_hairBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, (1.0f - saturate(abs(dot(float3(_985, _986, _987), float3(_423, _424, _425)))))), (1.0f - max(0.75f, (_2680 * 2.0f)))), 0.0f);
        // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
        _2745 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1076), (1.0f - _2680)), 0.0f);
        _2752 = ((_2745.x - _2739.x) * _983) + _2739.x;
        _2753 = ((_2745.y - _2739.y) * _983) + _2739.y;
        _2755 = (_2752 * 0.01f) + _2753;
        _2922 = _2752;
        _2923 = _2753;
        _2924 = _2755;
        _2925 = _2755;
        _2926 = _2755;
      } else {
        if ((uint)((int)((uint)((uint)(_1952)) + (uint)(-97))) < (uint)2) {
          if (!(abs(_2706) > 0.99f)) {
            _2763 = -0.0f - _2707;
            _2765 = rsqrt(dot(float3(_2763, 0.0f, _2705), float3(_2763, 0.0f, _2705)));  // [sem: invLength]
            _2769 = (_2765 * _2763);
            _2770 = (_2765 * _2705);
          } else {
            _2769 = 1.0f;
            _2770 = 0.0f;
          }
          _2772 = -0.0f - (_2706 * _2770);
          _2775 = (_2770 * _2705) - (_2769 * _2707);
          _2776 = _2769 * _2706;
          _2778 = rsqrt(dot(float3(_2772, _2775, _2776), float3(_2772, _2775, _2776)));  // [sem: invLength]
          _2786 = _viewPos.x + _418;
          _2787 = _viewPos.y + _419;
          _2788 = _viewPos.z + _420;
          // [sem: _3__36__0__0__g_blueNoise_sampleLod]
          _2793 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_2769, 0.0f, _2770), float3(_2786, _2787, _2788)), dot(float3((_2778 * _2772), (_2775 * _2778), (_2778 * _2776)), float3(_2786, _2787, _2788))), 0.0f);
          _2797 = _2793.x + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _2798 = _2793.y + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _2799 = _2793.z + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _2801 = rsqrt(dot(float3(_2797, _2798, _2799), float3(_2797, _2798, _2799)));  // [sem: invLength]
          _2805 = (_2797 * _2801) + _375;
          _2806 = (_2798 * _2801) + _376;
          _2807 = (_2799 * _2801) + _377;
          _2809 = rsqrt(dot(float3(_2805, _2806, _2807), float3(_2805, _2806, _2807)));  // [sem: invLength]
          // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
          _2822 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1076), (1.0f - _2680)), 0.0f);
          _2829 = _2822.y + (exp2(log2(saturate(dot(float3(_1068, _1069, _1070), float3((_2805 * _2809), (_2806 * _2809), (_2807 * _2809))))) * 512.0f) * 20.0f);
          _2922 = _2822.x;
          _2923 = _2822.y;
          _2924 = (_2829 + (_2822.x * _2722));
          _2925 = (_2829 + (_2822.x * _2723));
          _2926 = (_2829 + (_2822.x * _2724));
        } else {
          _2834 = _2722;
          _2835 = _2723;
          _2836 = _2724;
          if (_2681) {
            if (_1952 == 65) {
              _2905 = _2834;
              _2906 = _2835;
              _2907 = _2836;
              // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
              _2912 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1076), (1.0f - _2680)), 0.0f);
              _2922 = _2912.x;
              _2923 = _2912.y;
              _2924 = ((_2912.x * _2905) + _2912.y);
              _2925 = ((_2912.x * _2906) + _2912.y);
              _2926 = ((_2912.x * _2907) + _2912.y);
            } else {
              _2842 = min(0.99f, _1076);
              // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
              _2847 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_2842, saturate(1.0f - (_2680 * 1.33f))), 0.0f);
              // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
              _2852 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_2842, saturate(1.0f - (_2680 * 0.47998047f))), 0.0f);
              _2856 = (_2852.x + _2847.x) * 0.5f;
              _2858 = (_2852.y + _2847.y) * 0.5f;
              _2922 = _2856;
              _2923 = _2858;
              _2924 = ((_2856 * _2834) + _2858);
              _2925 = ((_2856 * _2835) + _2858);
              _2926 = ((_2856 * _2836) + _2858);
            }
          } else {
            if ((_1952 == 33) || (_1952 == 54)) {
              _2875 = max(dot(float3(_1861, _1862, _1863), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
              _2879 = sqrt(_1861) - _2875;
              _2880 = sqrt(_1862) - _2875;
              _2881 = sqrt(_1863) - _2875;
              _2888 = saturate(1.0f - (pow(_1076, 4.0f)));  // [sem: expr_sat]
              _2905 = ((((_2879 * _1953) + _2875) + (_2888 * (_2879 * (_1955 - _1953)))) * _1954);
              _2906 = ((((_2880 * _1953) + _2875) + ((_2880 * (_1955 - _1953)) * _2888)) * _1954);
              _2907 = ((((_2881 * _1953) + _2875) + ((_2881 * (_1955 - _1953)) * _2888)) * _1954);
            } else {
              _2905 = _2834;
              _2906 = _2835;
              _2907 = _2836;
            }
            // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
            _2912 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1076), (1.0f - _2680)), 0.0f);
            _2922 = _2912.x;
            _2923 = _2912.y;
            _2924 = ((_2912.x * _2905) + _2912.y);
            _2925 = ((_2912.x * _2906) + _2912.y);
            _2926 = ((_2912.x * _2907) + _2912.y);
          }
        }
      }
    } else {
      _2834 = _2717;
      _2835 = _2718;
      _2836 = _2719;
      if (_2681) {
        if (_1952 == 65) {
          _2905 = _2834;
          _2906 = _2835;
          _2907 = _2836;
          // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
          _2912 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1076), (1.0f - _2680)), 0.0f);
          _2922 = _2912.x;
          _2923 = _2912.y;
          _2924 = ((_2912.x * _2905) + _2912.y);
          _2925 = ((_2912.x * _2906) + _2912.y);
          _2926 = ((_2912.x * _2907) + _2912.y);
        } else {
          _2842 = min(0.99f, _1076);
          // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
          _2847 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_2842, saturate(1.0f - (_2680 * 1.33f))), 0.0f);
          // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
          _2852 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_2842, saturate(1.0f - (_2680 * 0.47998047f))), 0.0f);
          _2856 = (_2852.x + _2847.x) * 0.5f;
          _2858 = (_2852.y + _2847.y) * 0.5f;
          _2922 = _2856;
          _2923 = _2858;
          _2924 = ((_2856 * _2834) + _2858);
          _2925 = ((_2856 * _2835) + _2858);
          _2926 = ((_2856 * _2836) + _2858);
        }
      } else {
        if ((_1952 == 33) || (_1952 == 54)) {
          _2875 = max(dot(float3(_1861, _1862, _1863), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
          _2879 = sqrt(_1861) - _2875;
          _2880 = sqrt(_1862) - _2875;
          _2881 = sqrt(_1863) - _2875;
          _2888 = saturate(1.0f - (pow(_1076, 4.0f)));  // [sem: expr_sat]
          _2905 = ((((_2879 * _1953) + _2875) + (_2888 * (_2879 * (_1955 - _1953)))) * _1954);
          _2906 = ((((_2880 * _1953) + _2875) + ((_2880 * (_1955 - _1953)) * _2888)) * _1954);
          _2907 = ((((_2881 * _1953) + _2875) + ((_2881 * (_1955 - _1953)) * _2888)) * _1954);
        } else {
          _2905 = _2834;
          _2906 = _2835;
          _2907 = _2836;
        }
        // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
        _2912 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1076), (1.0f - _2680)), 0.0f);
        _2922 = _2912.x;
        _2923 = _2912.y;
        _2924 = ((_2912.x * _2905) + _2912.y);
        _2925 = ((_2912.x * _2906) + _2912.y);
        _2926 = ((_2912.x * _2907) + _2912.y);
      }
    }
    _2929 = select((_2681 || _2368), 1.0f, _2704) * _1784;
    _2936 = _1852 * _1784;
    _2937 = _1853 * _1784;
    _2938 = _1854 * _1784;
    if (_1299 || _1028) {
      _3192 = _1057;
      _3193 = _1058;
      _3194 = _1059;
      _3195 = _1060;
      _3196 = _1061;
      _3197 = _2675;
      if (_1067) {
        _3203 = _3197;
        _3204 = _3194;
        _3205 = _3195;
        _3206 = _3196;
        _3207 = _3193;
        _3208 = _3192;
        _3209 = 0.0f;
        _3210 = 0.0f;
        _3211 = 0.0f;
        _3212 = (_2936 * _989);
        _3213 = (_2937 * _990);
        _3214 = (_2938 * _991);
      } else {
        _3203 = _3197;
        _3204 = _3194;
        _3205 = _3195;
        _3206 = _3196;
        _3207 = _3193;
        _3208 = _3192;
        _3209 = _2936;
        _3210 = _2937;
        _3211 = _2938;
        _3212 = 0.0f;
        _3213 = 0.0f;
        _3214 = 0.0f;
      }
    } else {
      if (!((_988 == 6) || ((_1064 == 106) || (((uint)((int)(_988) + (int)(-27)) < (uint)2) || ((_988 == 105) || (_988 == 26)))))) {
        if (!(_988 == 7)) {
          _2959 = exp2(log2(_2675) * (saturate(_123 * 0.03125f) + 1.0f));
          // [sem: _3__36__0__0__g_puddleMask_sampleLod]
          _2969 = __3__36__0__0__g_puddleMask.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_111, _112), 0.0f);
          bool __branch_chain_2953;
          if ((_988 == 15) || ((_1064 == 12) || ((_988 & -4) == 16))) {
            _2988 = false;
            _2989 = true;
            __branch_chain_2953 = true;
          } else {
            if (!((uint)_988 > (uint)10)) {
              _2988 = true;
              _2989 = false;
              __branch_chain_2953 = true;
            } else {
              if ((uint)_988 < (uint)20) {
                _2988 = false;
                _2989 = false;
                __branch_chain_2953 = true;
              } else {
                if (!(_988 == 97)) {
                  _2988 = (_988 != 107);
                  _2989 = false;
                  __branch_chain_2953 = true;
                } else {
                  _3181 = _1871;
                  _3182 = _1985;
                  _3183 = _1861;
                  _3184 = _1862;
                  _3185 = _1863;
                  __branch_chain_2953 = false;
                }
              }
            }
          }
          if (__branch_chain_2953) {
            if (_2969.w < 1.0f) {
              if ((_weatherCheckFlag & 5) == 5) {
                _2999 = (_988 == 36);
                if (!_2999) {
                  // [sem: _3__36__0__0__g_climateSandTex_sampleLod]
                  _3019 = __3__36__0__0__g_climateSandTex.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((_viewPos.x + _418) / _climateTextureOnePixelMeter.x) + ((float)((int)((int)(_climateTextureSize.x) >> 1)))) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((_viewPos.z + _420) / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                  _3025 = _3019.x;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3026 = _3019.y;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3027 = _3019.z;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3028 = _3019.w;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                } else {
                  _3025 = 0.12f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3026 = 0.12f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3027 = 0.1f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3028 = 0.5f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                }
                _3035 = 1.0f - saturate(((_viewPos.y + _419) - _paramGlobalSand.x) / _paramGlobalSand.y);
                if (!(_3035 <= 0.0f)) {
                  _3038 = saturate(_2959);  // [sem: _2959_sat]
                  _3051 = ((_3026 * 0.33951f) + (_3025 * 0.61312f)) + (_3027 * 0.04737f);
                  _3052 = ((_3026 * 0.91636f) + (_3025 * 0.0702f)) + (_3027 * 0.01345f);
                  _3053 = ((_3026 * 0.10958f) + (_3025 * 0.02062f)) + (_3027 * 0.8698f);
                  _3058 = select(_2989, 1.0f, ((float)((bool)(saturate(dot(float3(_375, _376, _377), float3(0.0f, 1.0f, 0.0f))) > 0.5f))));
                  if (_enableSandAO == 1) {
                    _3063 = 1.0f - _2969.x;  // [sem: _3__36__0__0__g_puddleMask_sampleLod_derived]
                    if (_2999) {
                      _3094 = ((((_3063 * 10.0f) * _3028) * _3035) * _3038);
                      _3097 = _3051;
                      _3098 = _3052;
                      _3099 = _3053;
                      _3100 = saturate(_3094);  // [sem: _3094_sat]
                    } else {
                      _3074 = saturate(_3028 + -0.5f);  // [sem: expr_sat]
                      _3097 = _3051;
                      _3098 = _3052;
                      _3099 = _3053;
                      // [sem: _3094_sat]
                      _3100 = ((((_3074 * 2.0f) * max((_3058 * _2969.x), min((_3038 * ((_2969.x * 7.0f) + 3.0f)), (_3074 * 40.0f)))) + (((_3063 * 10.0f) * _3038) * saturate((0.5f - _3028) * 2.0f))) * _3035);
                    }
                  } else {
                    _3092 = ((_3035 * _3028) * _2969.x) * _3058;
                    if (_2999) {
                      _3094 = _3092;
                      _3097 = _3051;
                      _3098 = _3052;
                      _3099 = _3053;
                      _3100 = saturate(_3094);  // [sem: _3094_sat]
                    } else {
                      _3097 = _3051;
                      _3098 = _3052;
                      _3099 = _3053;
                      _3100 = _3092;  // [sem: _3094_sat]
                    }
                  }
                } else {
                  _3097 = 0.0f;
                  _3098 = 0.0f;
                  _3099 = 0.0f;
                  _3100 = 0.0f;  // [sem: _3094_sat]
                }
                _3104 = ((1.0f - _2969.w) * (1.0f - _2969.y)) * _3100;
                _3105 = (_3104 > 0.0001f);
                if (_3105) {
                  if (_2989) {
                    _3108 = saturate(_3104);  // [sem: _3104_sat]
                    _3135 = (((sqrt(_3097 * _1861) - _1861) * _3108) + _1861);
                    _3136 = (((sqrt(_3098 * _1862) - _1862) * _3108) + _1862);
                    _3137 = (((sqrt(_3099 * _1863) - _1863) * _3108) + _1863);
                  } else {
                    _3135 = ((_3104 * (_3097 - _1861)) + _1861);
                    _3136 = ((_3104 * (_3098 - _1862)) + _1862);
                    _3137 = ((_3104 * (_3099 - _1863)) + _1863);
                  }
                } else {
                  _3135 = _1861;
                  _3136 = _1862;
                  _3137 = _1863;
                }
                if (_2999 && _3105) {
                  if (_2989) {
                    _3152 = (((sqrt(_1985 * 0.25f) - _1985) * saturate(_3104)) + _1985);
                  } else {
                    _3152 = ((_3104 * (0.25f - _1985)) + _1985);
                  }
                } else {
                  _3152 = _1985;
                }
                _3153 = saturate(_3135);  // [sem: _3135_sat]
                _3154 = saturate(_3136);  // [sem: _3136_sat]
                _3155 = saturate(_3137);  // [sem: _3137_sat]
                _3160 = (_3152 * (1.0f - _2959)) + _2959;
                _3163 = ((_3152 - _3160) * _2969.y) + _3160;
                _3170 = (((_2959 * _2959) * _2969.z) * ((float)((bool)(_2988)))) * saturate(dot(float3(_375, _376, _377), float3(0.0f, 1.0f, 0.0f)));
                _3171 = _3170 * -0.5f;
                _3181 = (_1871 - (_2959 * _1871));
                _3182 = (_3163 - (_3170 * _3163));
                _3183 = ((_3171 * _3153) + _3153);
                _3184 = ((_3171 * _3154) + _3154);
                _3185 = ((_3171 * _3155) + _3155);
              } else {
                _3181 = _1871;
                _3182 = _1985;
                _3183 = _1861;
                _3184 = _1862;
                _3185 = _1863;
              }
            } else {
              _3181 = _1871;
              _3182 = _1985;
              _3183 = _1861;
              _3184 = _1862;
              _3185 = _1863;
            }
          }
          _3192 = (half)(half(_3181));
          _3193 = (half)(half(_3182));
          _3194 = (half)(half(_3183));
          _3195 = (half)(half(_3184));
          _3196 = (half)(half(_3185));
          _3197 = _2959;
        } else {
          _3192 = _1057;
          _3193 = _1058;
          _3194 = _1059;
          _3195 = _1060;
          _3196 = _1061;
          _3197 = _2675;
        }
        if (_1067) {
          _3203 = _3197;
          _3204 = _3194;
          _3205 = _3195;
          _3206 = _3196;
          _3207 = _3193;
          _3208 = _3192;
          _3209 = 0.0f;
          _3210 = 0.0f;
          _3211 = 0.0f;
          _3212 = (_2936 * _989);
          _3213 = (_2937 * _990);
          _3214 = (_2938 * _991);
        } else {
          _3203 = _3197;
          _3204 = _3194;
          _3205 = _3195;
          _3206 = _3196;
          _3207 = _3193;
          _3208 = _3192;
          _3209 = _2936;
          _3210 = _2937;
          _3211 = _2938;
          _3212 = 0.0f;
          _3213 = 0.0f;
          _3214 = 0.0f;
        }
      } else {
        _3203 = _2675;
        _3204 = _1059;
        _3205 = _1060;
        _3206 = _1061;
        _3207 = _1058;
        _3208 = _1057;
        _3209 = _2936;
        _3210 = _2937;
        _3211 = _2938;
        _3212 = 0.0f;
        _3213 = 0.0f;
        _3214 = 0.0f;
      }
    }
    half4 _3216 = __3__36__0__0__g_sceneShadowColor.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_sceneShadowColor_load]
    [branch]
    if (_1028) {
      _3223 = __3__36__0__0__g_sceneNormal.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
      _3239 = min(1.0f, ((((float)((uint)((uint)(_3223.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _3240 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_3223.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _3241 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_3223.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _3243 = rsqrt(dot(float3(_3239, _3240, _3241), float3(_3239, _3240, _3241)));  // [sem: invLength]
      _3251 = (half)(half(_3243 * _3239));
      _3252 = (half)(half(_3243 * _3240));
      _3253 = (half)(half(_3243 * _3241));
    } else {
      _3251 = _320;
      _3252 = _321;
      _3253 = _322;
    }
    _3256 = (_sunDirection.y > 0.0f);
    if ((_3256) || ((!(_3256)) && (_sunDirection.y > _moonDirection.y))) {
      _3268 = _sunDirection.x;
      _3269 = _sunDirection.y;
      _3270 = _sunDirection.z;
    } else {
      _3268 = _moonDirection.x;
      _3269 = _moonDirection.y;
      _3270 = _moonDirection.z;
    }
    if ((_3256) || ((!(_3256)) && (_sunDirection.y > _moonDirection.y))) {
      _3290 = _precomputedAmbient7.y;
    } else {
      _3290 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
    }
    _3297 = _viewPos.x + _418;
    _3298 = _viewPos.y + _419;
    _3299 = _3298 + _earthRadius;
    _3300 = _viewPos.z + _420;
    _3306 = sqrt(((_3297 * _3297) + (_3299 * _3299)) + (_3300 * _3300));
    _3311 = dot(float3((_3297 / _3306), (_3299 / _3306), (_3300 / _3306)), float3(_3268, _3269, _3270));
    _3317 = min(max(((_3306 - _earthRadius) / _atmosphereThickness), 16.0f), (_atmosphereThickness + -16.0f));
    _3325 = max(_3317, 0.0f);
    _3332 = (-0.0f - sqrt((_3325 + (_earthRadius * 2.0f)) * _3325)) / (_3325 + _earthRadius);
    if (_3311 > _3332) {
      _3355 = ((exp2(log2(saturate((_3311 - _3332) / (1.0f - _3332))) * 0.2f) * 0.4921875f) + 0.50390625f);
    } else {
      _3355 = ((exp2(log2(saturate((_3332 - _3311) / (_3332 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
    }
    // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
    _3360 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_3317 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f), _3355), 0.0f);
    _3382 = ((_3360.y * 2e-05f) * _mieAerosolDensity) * (_mieAerosolAbsorption + 1.0f);  // [sem: _3__36__0__0__g_texNetDensity_sampleLod_derived]
    _3400 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.0556001e-06f)) * _3360.x) + _3382) * -1.442695f);
    _3401 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 4.9788005e-06f)) * _3360.x) + _3382) * -1.442695f);
    _3402 = exp2(((((_ozoneRatio * 2.1360002e-07f) + (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f)) * _3360.x) + _3382) * -1.442695f);
    _3418 = sqrt(_1977);
    _3426 = (_cloudAltitude - (max(((_3418 * _3418) + -400000.0f), 0.0f) * 1e-06f)) - _viewPos.y;
    _3438 = (_cloudThickness * (0.5f - (((float)((int)((int)((int)(uint)((int)(_3269 > 0.0f))) - (int)((int)(uint)((int)(_3269 < 0.0f)))))) * 0.5f))) + _3426;
    if (_419 < _3426) {
      _3441 = dot(float3(0.0f, 1.0f, 0.0f), float3(_3268, _3269, _3270));
      _3447 = select((abs(_3441) < 1e-08f), 1e+08f, ((_3438 - dot(float3(0.0f, 1.0f, 0.0f), float3(_418, _419, _420))) / _3441));
      _3453 = ((_3447 * _3268) + _418);
      _3454 = _3438;
      _3455 = ((_3447 * _3270) + _420);
    } else {
      _3453 = _418;
      _3454 = _419;
      _3455 = _420;
    }
    _3475 = saturate(abs(_3269) * 4.0f);  // [sem: expr_sat]
    _3477 = (_3475 * _3475) * exp2(((_distanceScale * -1.442695f) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_3453 * 5e-05f) + 0.5f), ((_3454 - _3426) / _cloudThickness), ((_3455 * 5e-05f) + 0.5f)), 0.0f)).x)) * (_cloudScatteringCoefficient / _distanceScale));
    _3484 = ((1.0f - _3477) * saturate(((_419 - _cloudThickness) - _3426) * 0.1f)) + _3477;
    _3485 = _3484 * (((_3401 * 0.33951f) + (_3400 * 0.61312f)) + (_3402 * 0.04737f));
    _3486 = _3484 * (((_3401 * 0.91636f) + (_3400 * 0.0702f)) + (_3402 * 0.01345f));
    _3487 = _3484 * (((_3401 * 0.10958f) + (_3400 * 0.02062f)) + (_3402 * 0.8698f));
    _3503 = (((_3485 * 0.61312f) + (_3486 * 0.33951f)) + (_3487 * 0.04737f)) * _3290;
    _3504 = (((_3485 * 0.0702f) + (_3486 * 0.91636f)) + (_3487 * 0.01345f)) * _3290;
    _3505 = (((_3485 * 0.02062f) + (_3486 * 0.10958f)) + (_3487 * 0.8698f)) * _3290;
    _3511 = float(_1002.x);  // [sem: _3__36__0__0__g_sceneAO_load_derived]
    _3512 = float(_3216.x);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    _3513 = float(_3216.y);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    _3514 = float(_3216.z);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    _3515 = float(_3204);
    _3516 = float(_3205);
    _3517 = float(_3206);
    if (!_1900) {
      _3523 = (_187 && ((uint)((int)(_988) + (int)(-105)) < (uint)2));
    } else {
      _3523 = true;
    }
    _3525 = float(max(0.010002136h, _3207));
    _3526 = float(_3208);
    _3529 = (_988 == 107);
    _3532 = _1022 || (((uint)((int)(_988) + (int)(-11)) < (uint)9) || (_3529 || _3523));
    if ((_1064 == 26) || ((_988 == 105) || (_988 == 28))) {
      _3544 = true;
      _3546 = _3544;
      _3547 = _3529;
    } else {
      _3541 = (_988 == 106);
      if (!(_988 == 19)) {
        _3544 = _3541;
        _3546 = _3544;
        _3547 = _3529;
      } else {
        _3546 = _3541;
        _3547 = true;
      }
    }
    _3548 = float(_3251);
    _3549 = float(_3252);
    _3550 = float(_3253);
    _3552 = __3__36__0__0__g_sceneDecalMask.Load(int3(_101, _103, 0));  // [sem: _3__36__0__0__g_sceneDecalMask_load]
    if (_988 == 97) {
      _3564 = (((float)((uint16_t)((int16_t)((uint16_t)((int16_t)(_3552.x)) >> 2)))) * 0.015873017f);
      _3565 = ((int)((uint)((uint)((int)(min16uint)((int)((int)(_3552.x) & 2)))) >> 1) + (int)(97));
      _3566 = 0.0f;
      _3567 = 0.0f;
      _3568 = 0.0f;
      _3569 = 0.0f;
    } else {
      _3564 = select(_3532, _3526, 0.0f);
      _3565 = _988;
      _3566 = _494;
      _3567 = _495;
      _3568 = _496;
      _3569 = _497;
    }
    _3574 = float(saturate(_207));
    _3575 = _3574 * _3574;
    _3576 = _3575 * _3575;
    _3577 = _3576 * _3576;
    _3588 = ((_3577 * _3577) * select(((_988 == 29) || (_3546 || _3547)), 0.0f, 1.0f)) * (((float4)(__3__36__0__0__g_puddleMask.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((_bufferSizeAndInvSize.z * _106), (_bufferSizeAndInvSize.w * _107)), 0.0f))).y);
    _3593 = _3548 - (_3588 * _3548);
    _3594 = (_3588 * (1.0f - _3549)) + _3549;
    _3595 = _3550 - (_3588 * _3550);
    _3597 = rsqrt(dot(float3(_3593, _3594, _3595), float3(_3593, _3594, _3595)));  // [sem: invLength]
    _3598 = _3593 * _3597;
    _3599 = _3594 * _3597;
    _3600 = _3595 * _3597;
    _3603 = (_3565 == 37) || (_3565 == 55);
    _3605 = select((_3532 || _3603), 0.0f, _3526);
    _3606 = (_3565 == 52);
    if (_3606) {
      _3613 = saturate(((_3516 + _3515) + _3517) * 1.2f);  // [sem: expr_sat]
    } else {
      _3613 = 1.0f;  // [sem: expr_sat]
    }
    _3619 = (0.7f / min(max(max(max(_3515, _3516), _3517), 0.01f), 0.7f)) * _3613;
    _3629 = (((_3619 * _3515) + -0.04f) * _3605) + 0.04f;
    _3630 = (((_3619 * _3516) + -0.04f) * _3605) + 0.04f;
    _3631 = (((_3619 * _3517) + -0.04f) * _3605) + 0.04f;
    _3632 = float(_3207);
    _3633 = _3565 & -2;
    _3634 = (_3633 == 64);
    _3637 = ((((int)(uint)(_3634)) & _2683) == 0);
    if (_3637) {
      _3650 = saturate(exp2((_3632 * _3632) * (_123 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _3650 = select((_cavityParams.z > 0.0f), select(_188, 0.0f, _447), 1.0f);  // [sem: expr_sat]
    }
    _3651 = select(_2703, 1.0f, _3650);
    if (_3634) {
      _3657 = (_3651 * _3629);
      _3658 = (_3651 * _3630);
      _3659 = (_3651 * _3631);
    } else {
      _3657 = _3629;
      _3658 = _3630;
      _3659 = _3631;
    }
    _3660 = _3525 * _3525;
    _3661 = _3660 * _3660;
    _3663 = ((uint)((int)(_3565) + (int)(-97)) < (uint)2);
    _3665 = select(_3663, 0.5f, (_3525 * 0.60009766f));
    _3666 = _3665 * _3665;
    _3667 = _3666 * _3666;
    _3669 = (_3565 == 98);
    if (!(_3669 || (_3633 == 96))) {
      if ((uint)((int)(_3565) + (int)(-105)) < (uint)2) {
        _3683 = _187;
        _3686 = _3683;
        _3687 = (_3565 == 7);
      } else {
        if ((uint)_3565 > (uint)11) {
          if (!(((uint)_3565 < (uint)21) || (_3565 == 107))) {
            _3683 = false;
            _3686 = _3683;
            _3687 = (_3565 == 7);
          } else {
            _3686 = false;
            _3687 = true;
          }
        } else {
          if (!(_3565 == 6)) {
            _3683 = false;
            _3686 = _3683;
            _3687 = (_3565 == 7);
          } else {
            _3686 = false;
            _3687 = true;
          }
        }
      }
    } else {
      _3683 = true;
      _3686 = _3683;
      _3687 = (_3565 == 7);
    }
    _3692 = exp2(log2(float(_3216.w)) * 2.2f) * 1000.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    if ((_3256) || ((!(_3256)) && (_sunDirection.y > _moonDirection.y))) {
      _3704 = _sunDirection.x;
      _3705 = _sunDirection.y;
      _3706 = _sunDirection.z;
    } else {
      _3704 = _moonDirection.x;
      _3705 = _moonDirection.y;
      _3706 = _moonDirection.z;
    }
    _3707 = _3503 * _lightingParams.x;
    _3708 = _3504 * _lightingParams.x;
    _3709 = _3505 * _lightingParams.x;
    _3710 = _3704 - _423;
    _3711 = _3705 - _424;
    _3712 = _3706 - _425;
    _3714 = rsqrt(dot(float3(_3710, _3711, _3712), float3(_3710, _3711, _3712)));  // [sem: invLength]
    _3715 = _3714 * _3710;
    _3716 = _3714 * _3711;
    _3717 = _3714 * _3712;
    _3718 = dot(float3(_3548, _3549, _3550), float3(_3704, _3705, _3706));
    _3719 = dot(float3(_3598, _3599, _3600), float3(_3704, _3705, _3706));
    _3721 = saturate(dot(float3(_3548, _3549, _3550), float3(_1068, _1069, _1070)));  // [sem: expr_sat]
    _3723 = saturate(dot(float3(_3598, _3599, _3600), float3(_3715, _3716, _3717)));  // [sem: expr_sat]
    _3724 = dot(float3(_1068, _1069, _1070), float3(_3715, _3716, _3717));
    _3726 = saturate(dot(float3(_3704, _3705, _3706), float3(_3715, _3716, _3717)));  // [sem: expr_sat]
    _3727 = (_3633 == 66);
    _3728 = (_3565 == 53);
    _3729 = _3728 || _3727;
    if (_3729) {
      if (_3728) {
        _3746 = (((asfloat(_globalLightParams.z) * _3525) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_278)));
      } else {
        _3746 = _bevelParams.y;
      }
      _3761 = (_1979 * 2.0f) + 1.0f;
      _3765 = (_983 * 7.0f) + 1.0f;
      // [sem: _3__36__0__0__g_blueNoise_sampleLod]
      _3770 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2((((dot(float3(_418, _419, _420), float3(((_987 * _2706) - (_986 * _2707)), ((_985 * _2707) - (_987 * _2705)), ((_986 * _2705) - (_985 * _2706)))) * 2.0f) / _3761) * _3765), (((dot(float3(_418, _419, _420), float3(_985, _986, _987)) * 0.5f) / _3761) * _3765)), 0.0f);
      _3774 = _983 * 0.5f;
      _3775 = _3770.x * 2.0f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
      _3776 = _3770.y * 2.0f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
      _3777 = _3770.z * 2.0f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
      _3788 = dot(float3(_985, _986, _987), float3(_3704, _3705, _3706));
      _3789 = dot(float3(_985, _986, _987), float3(_1068, _1069, _1070));
      _3795 = cos(abs(asin(_3789) - asin(_3788)) * 0.5f);
      _3799 = _3704 - (_3788 * _985);
      _3800 = _3705 - (_3788 * _986);
      _3801 = _3706 - (_3788 * _987);
      _3805 = _1068 - (_3789 * _985);
      _3806 = _1069 - (_3789 * _986);
      _3807 = _1070 - (_3789 * _987);
      // [sem: invLength]
      _3814 = rsqrt((dot(float3(_3805, _3806, _3807), float3(_3805, _3806, _3807)) * dot(float3(_3799, _3800, _3801), float3(_3799, _3800, _3801))) + 0.0001f) * dot(float3(_3799, _3800, _3801), float3(_3805, _3806, _3807));
      _3818 = sqrt(saturate((_3814 * 0.5f) + 0.5f));
      _3825 = min(max(max(0.05f, _3525), 0.09803922f), 1.0f);
      _3826 = _3825 * _3825;
      _3827 = _3826 * 0.5f;
      _3828 = _3826 * 2.0f;
      _3829 = _3789 + _3788;
      _3830 = _3829 + (_3746 * 2.0f);
      _3832 = (_3818 * 1.4142135f) * _3826;
      _3846 = 1.0f - sqrt(saturate((dot(float3(_1068, _1069, _1070), float3(_3704, _3705, _3706)) * 0.5f) + 0.5f));
      _3847 = _3846 * _3846;
      _3854 = _3829 - _3746;
      _3863 = 1.0f / ((1.19f / _3795) + (_3795 * 0.36f));
      _3868 = ((_3863 * (0.6f - (_3814 * 0.8f))) + 1.0f) * _3818;
      _3874 = 1.0f - (sqrt(saturate(1.0f - (_3868 * _3868))) * _3795);
      _3875 = _3874 * _3874;
      _3879 = 0.9534794f - ((_3875 * _3875) * (_3874 * 0.9534794f));
      _3880 = _3863 * _3868;
      _3885 = (sqrt(1.0f - (_3880 * _3880)) * 0.5f) / _3795;
      _3886 = log2(_3515);
      _3887 = log2(_3516);
      _3888 = log2(_3517);
      _3900 = ((_3879 * _3879) * (exp2((((_3854 * _3854) * -0.5f) / (_3827 * _3827)) * 1.442695f) / (_3826 * 1.2533141f))) * exp2(-5.741926f - (_3814 * 5.265837f));
      _3904 = _3829 - (_3746 * 4.0f);
      _3914 = 1.0f - (_3795 * 0.5f);
      _3915 = _3914 * _3914;
      _3919 = (_3915 * _3915) * (0.9534794f - (_3795 * 0.4767397f));
      _3921 = 0.9534794f - _3919;
      _3922 = 0.8f / _3795;
      _3935 = (((_3921 * _3921) * (_3919 + 0.046520565f)) * (exp2((((_3904 * _3904) * -0.5f) / (_3828 * _3828)) * 1.442695f) / (_3826 * 5.0132565f))) * exp2((_3814 * 24.525816f) + -24.208424f);
      _3942 = saturate(_3719);  // [sem: _3719_sat]
      _3943 = (((_3818 * 0.25f) * (exp2((((_3830 * _3830) * -0.5f) / (_3832 * _3832)) * 1.442695f) / (_3832 * 2.5066283f))) * (((_3847 * _3847) * (_3846 * 0.9534794f)) + 0.046520565f)) * _3942;
      _3953 = -0.0f - _3942;
      _3964 = saturate((_3719 + 1.0f) * 0.25f);  // [sem: expr_sat]
      _3969 = max(0.001f, dot(float3(_3515, _3516, _3517), float3(0.3f, 0.59f, 0.11f)));
      _3988 = ((((1.0f - abs(_3719)) - _3964) * 0.33f) + _3964) * 0.07957747f;
      _3990 = (exp2(log2(_3515 / _3969) * (1.0f - _3512)) * _3988) * sqrt(_3515);
      _3992 = (exp2(log2(_3516 / _3969) * (1.0f - _3513)) * _3988) * sqrt(_3516);
      _3994 = (exp2(log2(_3517 / _3969) * (1.0f - _3514)) * _3988) * sqrt(_3517);
      _4001 = min(2048.0f, (-0.0f - min(0.0f, min(0.0f, (((_3935 * exp2(_3922 * _3886)) + (_3900 * exp2(_3886 * _3885))) * _3953)))));
      _4002 = min(2048.0f, (-0.0f - min(0.0f, min(0.0f, (((_3935 * exp2(_3922 * _3887)) + (_3900 * exp2(_3887 * _3885))) * _3953)))));
      _4003 = min(2048.0f, (-0.0f - min(0.0f, min(0.0f, (((_3935 * exp2(_3922 * _3888)) + (_3900 * exp2(_3888 * _3885))) * _3953)))));
      _4010 = -0.0f - min(0.0f, (min(0.0f, (-0.0f - ((lerp(_3775, 1.0f, _3774)) * _3943))) * _3512));
      _4011 = -0.0f - min(0.0f, (min(0.0f, (-0.0f - ((lerp(_3776, 1.0f, _3774)) * _3943))) * _3513));
      _4012 = -0.0f - min(0.0f, (min(0.0f, (-0.0f - ((lerp(_3777, 1.0f, _3774)) * _3943))) * _3514));
      if (!_3727) {
        _4014 = _4001;
        _4015 = _4002;
        _4016 = _4003;
        _4017 = _4010;
        _4018 = _4011;
        _4019 = _4012;
        _4020 = _3990;
        _4021 = _3992;
        _4022 = _3994;
        if (!_3728) {
          _4024 = (_3565 == 33);
          _4025 = (_3565 == 54);
          _4026 = _4024 || _4025;
          if (_4026) {
            _4041 = (saturate(_3718) * 0.31830987f) * (((saturate(1.0f - _effectiveMetallicForVelvet) + -1.0f) * _3569) + 1.0f);
            _4047 = max(dot(float3(_3515, _3516, _3517), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
            _4048 = sqrt(_3515);
            _4049 = sqrt(_3516);
            _4050 = sqrt(_3517);
            _4051 = _4048 - _4047;
            _4052 = _4049 - _4047;
            _4053 = _4050 - _4047;
            _4060 = saturate(1.0f - (pow(_3721, 4.0f)));  // [sem: expr_sat]
            _4073 = (((_4052 * _3566) + _4047) + ((_4052 * (_3569 - _3566)) * _4060)) * _3567;
            _4076 = saturate(1.0f - saturate(_3724));  // [sem: expr_sat]
            _4077 = _4076 * _4076;
            _4079 = (_4077 * _4077) * _4076;
            _4082 = _4079 * saturate(_4073 * 50.0f);
            _4083 = 1.0f - _4079;
            _4084 = _4083 * _3567;
            _4088 = (_4084 * (((_4051 * _3566) + _4047) + (_4060 * (_4051 * (_3569 - _3566))))) + _4082;
            _4089 = (_4083 * _4073) + _4082;
            _4090 = (_4084 * (((_4053 * _3566) + _4047) + ((_4053 * (_3569 - _3566)) * _4060))) + _4082;
            _4091 = min(_3723, 0.9999f);
            _4092 = _4091 * _4091;
            _4093 = 1.0f - _4092;
            _4105 = (((exp2(((-0.0f - _4092) / (_4093 * _3661)) * 1.442695f) * 4.0f) / (_4093 * _4093)) + 1.0f) / ((_3661 * 12.566371f) + 3.1415927f);
            _4109 = ((_3721 + _3719) - (_3721 * _3719)) * 4.0f;
            _4113 = (_4088 * _4105) / _4109;
            _4114 = (_4089 * _4105) / _4109;
            _4115 = (_4090 * _4105) / _4109;
            _4116 = 1.0f - _3660;
            _4128 = (((_3723 * _3661) - _3723) * _3723) + 1.0f;
            _4132 = (_3661 / ((_4128 * _4128) * 3.1415927f)) * (0.5f / ((((_3721 * _4116) + _3660) * _3718) + (_3721 * ((_3718 * _4116) + _3660))));
            _4148 = saturate(_3719);  // [sem: _3719_sat]
            _4153 = (_3568 * 1.5f) + 2.5f;
            _4154 = _4153 * _4153;
            _4164 = (max(0.0f, (0.3f - _3718)) * 0.25f) * ((exp2(_4154 * -0.48089835f) * 3.0f) + exp2(_4154 * -1.442695f));
            _4189 = (((1.0f - _3569) * 0.4774648f) * saturate(_3568)) * saturate((pow(_3723, 4.0f)) * exp2(log2(saturate(1.0f - abs(_3718))) * 3.0f));
            _4194 = (_4189 * _4048);
            _4195 = (_4189 * _4049);
            _4196 = (_4189 * _4050);
            _4197 = ((((max((_4132 * _4088), 0.0f) - _4113) * _3566) + _4113) * _4148);
            _4198 = ((((max((_4132 * _4089), 0.0f) - _4114) * _3566) + _4114) * _4148);
            _4199 = ((((max((_4132 * _4090), 0.0f) - _4115) * _3566) + _4115) * _4148);
            _4200 = (((_4048 * _3512) * _4164) + _4041);
            _4201 = (((_4049 * _3513) * _4164) + _4041);
            _4202 = (((_4050 * _3514) * _4164) + _4041);
            if (!_4024) {
              if (_4025) {
                _4368 = _4017;
                _4369 = _4018;
                _4370 = _4019;
                _4371 = _4020;
                _4372 = _4021;
                _4373 = _4022;
                if (_3603) {
                  _4376 = dot(float3(_1068, _1069, _1070), float3(_3598, _3599, _3600)) * 2.0f;
                  _4380 = _1068 - (_4376 * _3598);
                  _4381 = _1069 - (_4376 * _3599);
                  _4382 = _1070 - (_4376 * _3600);
                  _4383 = _3704 - _4380;
                  _4384 = _3705 - _4381;
                  _4385 = _3706 - _4382;
                  _4387 = rsqrt(dot(float3(_4383, _4384, _4385), float3(_4383, _4384, _4385)));  // [sem: invLength]
                  _4388 = _4383 * _4387;
                  _4389 = _4384 * _4387;
                  _4390 = _4385 * _4387;
                  _4391 = -0.0f - _4380;
                  _4392 = -0.0f - _4381;
                  _4393 = -0.0f - _4382;
                  _4395 = saturate(dot(float3(_3548, _3549, _3550), float3(_4391, _4392, _4393)));  // [sem: expr_sat]
                  _4397 = saturate(dot(float3(_3598, _3599, _3600), float3(_4388, _4389, _4390)));  // [sem: expr_sat]
                  _4399 = saturate(_3719);  // [sem: _3719_sat]
                  _4410 = 1.0f - ((_4397 * _4397) * 0.9f);
                  _4413 = (0.03183099f / (_4410 * _4410)) * (0.5f / ((((_4395 * 0.9f) + 0.1f) * _3719) + (_4395 * ((_3719 * 0.9f) + 0.1f))));
                  _4439 = _4371;
                  _4440 = _4372;
                  _4441 = _4373;
                  _4442 = dot(float3(_4391, _4392, _4393), float3(_4388, _4389, _4390));
                  _4443 = _4397;
                  _4444 = (((float(half(max((_4413 * _3515), 0.0f) * _4399)) - _4368) * 0.875f) + _4368);
                  _4445 = (((float(half(max((_4413 * _3516), 0.0f) * _4399)) - _4369) * 0.875f) + _4369);
                  _4446 = (((float(half(max((_4413 * _3517), 0.0f) * _4399)) - _4370) * 0.875f) + _4370);
                } else {
                  _4439 = _4371;
                  _4440 = _4372;
                  _4441 = _4373;
                  _4442 = _3724;
                  _4443 = _3723;
                  _4444 = _4368;
                  _4445 = _4369;
                  _4446 = _4370;
                }
              } else {
                _4205 = saturate(_3718);  // [sem: _3718_sat]
                _4206 = 1.0f - _3661;
                _4207 = 1.0f - _3726;
                _4208 = _4207 * _4207;
                _4211 = ((_4208 * _4208) * _4207) + _3726;
                _4212 = 1.0f - _4205;
                _4213 = _4212 * _4212;
                _4218 = 1.0f - _3721;
                _4219 = _4218 * _4218;
                _4246 = (_4205 * 0.31830987f) * ((((_3726 * ((((_4206 * 34.5f) + -59.0f) * _4206) + 24.5f)) * exp2(-0.0f - (max(((_4206 * 73.2f) + -21.2f), 8.9f) * sqrt(_3723)))) + _4211) + ((((1.0f - ((_4213 * _4213) * (_4212 * 0.75f))) * (1.0f - ((_4219 * _4219) * (_4218 * 0.75f)))) - _4211) * saturate((_4206 * 2.2f) + -0.5f)));
                _4249 = saturate(1.0f - saturate(_3724));  // [sem: expr_sat]
                _4250 = _4249 * _4249;
                _4252 = (_4250 * _4250) * _4249;
                _4255 = _4252 * saturate(_3658 * 50.0f);
                _4256 = 1.0f - _4252;
                _4260 = (_4256 * _3657) + _4255;
                _4261 = (_4256 * _3658) + _4255;
                _4262 = (_4256 * _3659) + _4255;
                if (!(_3565 == 29)) {
                  _4264 = saturate(_3719);  // [sem: _3719_sat]
                  _4265 = 1.0f - _3660;
                  _4277 = (((_3723 * _3661) - _3723) * _3723) + 1.0f;
                  _4281 = (_3661 / ((_4277 * _4277) * 3.1415927f)) * (0.5f / ((((_3721 * _4265) + _3660) * _3719) + (_3721 * ((_3719 * _4265) + _3660))));
                  _4292 = (max((_4281 * _4260), 0.0f) * _4264);
                  _4293 = (max((_4281 * _4261), 0.0f) * _4264);
                  _4294 = (max((_4281 * _4262), 0.0f) * _4264);
                } else {
                  _4292 = 0.0f;
                  _4293 = 0.0f;
                  _4294 = 0.0f;
                }
                if (_3634) {
                  if (_3565 == 65) {
                    _4338 = _4292;
                    _4339 = _4293;
                    _4340 = _4294;
                    _4345 = max(1e-06f, _exposure2.x);
                    _4354 = ((_4205 * 50.265484f) * exp2(log2(saturate(dot(float3(_3598, _3599, _3600), float3(_1068, _1069, _1070)))) * 16.0f)) / (((_4345 * _4345) * 1e+06f) + 1.0f);
                    _4439 = ((((_4354 * _3515) - _4246) * _3564) + _4246);
                    _4440 = ((((_4354 * _3516) - _4246) * _3564) + _4246);
                    _4441 = ((((_4354 * _3517) - _4246) * _3564) + _4246);
                    _4442 = _3724;
                    _4443 = _3723;
                    _4444 = _4338;
                    _4445 = _4339;
                    _4446 = _4340;
                  } else {
                    _4302 = 1.0f - _3666;
                    _4314 = (((_3723 * _3667) - _3723) * _3723) + 1.0f;
                    _4318 = (_3667 / ((_4314 * _4314) * 3.1415927f)) * (0.5f / ((((_3721 * _4302) + _3666) * _3719) + (_3721 * ((_3719 * _4302) + _3666))));
                    _4325 = saturate(_3719) * 0.39990234f;
                    _4333 = ((max((_4318 * _4260), 0.0f) * _4325) + (_4292 * 0.60009766f));
                    _4334 = ((max((_4318 * _4261), 0.0f) * _4325) + (_4293 * 0.60009766f));
                    _4335 = ((max((_4318 * _4262), 0.0f) * _4325) + (_4294 * 0.60009766f));
                    if (_3565 == 65) {
                      _4338 = _4333;
                      _4339 = _4334;
                      _4340 = _4335;
                      _4345 = max(1e-06f, _exposure2.x);
                      _4354 = ((_4205 * 50.265484f) * exp2(log2(saturate(dot(float3(_3598, _3599, _3600), float3(_1068, _1069, _1070)))) * 16.0f)) / (((_4345 * _4345) * 1e+06f) + 1.0f);
                      _4439 = ((((_4354 * _3515) - _4246) * _3564) + _4246);
                      _4440 = ((((_4354 * _3516) - _4246) * _3564) + _4246);
                      _4441 = ((((_4354 * _3517) - _4246) * _3564) + _4246);
                      _4442 = _3724;
                      _4443 = _3723;
                      _4444 = _4338;
                      _4445 = _4339;
                      _4446 = _4340;
                    } else {
                      _4368 = _4333;
                      _4369 = _4334;
                      _4370 = _4335;
                      _4371 = _4246;
                      _4372 = _4246;
                      _4373 = _4246;
                      if (_3603) {
                        _4376 = dot(float3(_1068, _1069, _1070), float3(_3598, _3599, _3600)) * 2.0f;
                        _4380 = _1068 - (_4376 * _3598);
                        _4381 = _1069 - (_4376 * _3599);
                        _4382 = _1070 - (_4376 * _3600);
                        _4383 = _3704 - _4380;
                        _4384 = _3705 - _4381;
                        _4385 = _3706 - _4382;
                        _4387 = rsqrt(dot(float3(_4383, _4384, _4385), float3(_4383, _4384, _4385)));  // [sem: invLength]
                        _4388 = _4383 * _4387;
                        _4389 = _4384 * _4387;
                        _4390 = _4385 * _4387;
                        _4391 = -0.0f - _4380;
                        _4392 = -0.0f - _4381;
                        _4393 = -0.0f - _4382;
                        _4395 = saturate(dot(float3(_3548, _3549, _3550), float3(_4391, _4392, _4393)));  // [sem: expr_sat]
                        _4397 = saturate(dot(float3(_3598, _3599, _3600), float3(_4388, _4389, _4390)));  // [sem: expr_sat]
                        _4399 = saturate(_3719);  // [sem: _3719_sat]
                        _4410 = 1.0f - ((_4397 * _4397) * 0.9f);
                        _4413 = (0.03183099f / (_4410 * _4410)) * (0.5f / ((((_4395 * 0.9f) + 0.1f) * _3719) + (_4395 * ((_3719 * 0.9f) + 0.1f))));
                        _4439 = _4371;
                        _4440 = _4372;
                        _4441 = _4373;
                        _4442 = dot(float3(_4391, _4392, _4393), float3(_4388, _4389, _4390));
                        _4443 = _4397;
                        _4444 = (((float(half(max((_4413 * _3515), 0.0f) * _4399)) - _4368) * 0.875f) + _4368);
                        _4445 = (((float(half(max((_4413 * _3516), 0.0f) * _4399)) - _4369) * 0.875f) + _4369);
                        _4446 = (((float(half(max((_4413 * _3517), 0.0f) * _4399)) - _4370) * 0.875f) + _4370);
                      } else {
                        _4439 = _4371;
                        _4440 = _4372;
                        _4441 = _4373;
                        _4442 = _3724;
                        _4443 = _3723;
                        _4444 = _4368;
                        _4445 = _4369;
                        _4446 = _4370;
                      }
                    }
                  }
                } else {
                  _4333 = _4292;
                  _4334 = _4293;
                  _4335 = _4294;
                  if (_3565 == 65) {
                    _4338 = _4333;
                    _4339 = _4334;
                    _4340 = _4335;
                    _4345 = max(1e-06f, _exposure2.x);
                    _4354 = ((_4205 * 50.265484f) * exp2(log2(saturate(dot(float3(_3598, _3599, _3600), float3(_1068, _1069, _1070)))) * 16.0f)) / (((_4345 * _4345) * 1e+06f) + 1.0f);
                    _4439 = ((((_4354 * _3515) - _4246) * _3564) + _4246);
                    _4440 = ((((_4354 * _3516) - _4246) * _3564) + _4246);
                    _4441 = ((((_4354 * _3517) - _4246) * _3564) + _4246);
                    _4442 = _3724;
                    _4443 = _3723;
                    _4444 = _4338;
                    _4445 = _4339;
                    _4446 = _4340;
                  } else {
                    _4368 = _4333;
                    _4369 = _4334;
                    _4370 = _4335;
                    _4371 = _4246;
                    _4372 = _4246;
                    _4373 = _4246;
                    if (_3603) {
                      _4376 = dot(float3(_1068, _1069, _1070), float3(_3598, _3599, _3600)) * 2.0f;
                      _4380 = _1068 - (_4376 * _3598);
                      _4381 = _1069 - (_4376 * _3599);
                      _4382 = _1070 - (_4376 * _3600);
                      _4383 = _3704 - _4380;
                      _4384 = _3705 - _4381;
                      _4385 = _3706 - _4382;
                      _4387 = rsqrt(dot(float3(_4383, _4384, _4385), float3(_4383, _4384, _4385)));  // [sem: invLength]
                      _4388 = _4383 * _4387;
                      _4389 = _4384 * _4387;
                      _4390 = _4385 * _4387;
                      _4391 = -0.0f - _4380;
                      _4392 = -0.0f - _4381;
                      _4393 = -0.0f - _4382;
                      _4395 = saturate(dot(float3(_3548, _3549, _3550), float3(_4391, _4392, _4393)));  // [sem: expr_sat]
                      _4397 = saturate(dot(float3(_3598, _3599, _3600), float3(_4388, _4389, _4390)));  // [sem: expr_sat]
                      _4399 = saturate(_3719);  // [sem: _3719_sat]
                      _4410 = 1.0f - ((_4397 * _4397) * 0.9f);
                      _4413 = (0.03183099f / (_4410 * _4410)) * (0.5f / ((((_4395 * 0.9f) + 0.1f) * _3719) + (_4395 * ((_3719 * 0.9f) + 0.1f))));
                      _4439 = _4371;
                      _4440 = _4372;
                      _4441 = _4373;
                      _4442 = dot(float3(_4391, _4392, _4393), float3(_4388, _4389, _4390));
                      _4443 = _4397;
                      _4444 = (((float(half(max((_4413 * _3515), 0.0f) * _4399)) - _4368) * 0.875f) + _4368);
                      _4445 = (((float(half(max((_4413 * _3516), 0.0f) * _4399)) - _4369) * 0.875f) + _4369);
                      _4446 = (((float(half(max((_4413 * _3517), 0.0f) * _4399)) - _4370) * 0.875f) + _4370);
                    } else {
                      _4439 = _4371;
                      _4440 = _4372;
                      _4441 = _4373;
                      _4442 = _3724;
                      _4443 = _3723;
                      _4444 = _4368;
                      _4445 = _4369;
                      _4446 = _4370;
                    }
                  }
                }
              }
            } else {
              _4439 = _4020;
              _4440 = _4021;
              _4441 = _4022;
              _4442 = _3724;
              _4443 = _3723;
              _4444 = _4017;
              _4445 = _4018;
              _4446 = _4019;
            }
            _4468 = select(_4026, _4197, _4444) * _3512;
            _4469 = select(_4026, _4198, _4445) * _3513;
            _4470 = select(_4026, _4199, _4446) * _3514;
            _4478 = _4442;
            _4479 = _4443;
            _4480 = select(_4026, 0.0f, _4014);
            _4481 = select(_4026, 0.0f, _4015);
            _4482 = select(_4026, 0.0f, _4016);
            _4483 = select(_4026, (_4468 + _4194), _4468);
            _4484 = select(_4026, (_4469 + _4195), _4469);
            _4485 = select(_4026, (_4470 + _4196), _4470);
            _4486 = (select(_4026, _4200, (-0.0f - min(-0.0f, (-0.0f - _4439)))) * _3512);
            _4487 = (select(_4026, _4201, (-0.0f - min(-0.0f, (-0.0f - _4440)))) * _3513);
            _4488 = (select(_4026, _4202, (-0.0f - min(-0.0f, (-0.0f - _4441)))) * _3514);
          } else {
            if ((_3718 > 0.0f) || (_3719 > 0.0f)) {
              _4194 = 0.0f;
              _4195 = 0.0f;
              _4196 = 0.0f;
              _4197 = 0.0f;
              _4198 = 0.0f;
              _4199 = 0.0f;
              _4200 = 0.0f;
              _4201 = 0.0f;
              _4202 = 0.0f;
              if (!_4024) {
                if (_4025) {
                  _4368 = _4017;
                  _4369 = _4018;
                  _4370 = _4019;
                  _4371 = _4020;
                  _4372 = _4021;
                  _4373 = _4022;
                  if (_3603) {
                    _4376 = dot(float3(_1068, _1069, _1070), float3(_3598, _3599, _3600)) * 2.0f;
                    _4380 = _1068 - (_4376 * _3598);
                    _4381 = _1069 - (_4376 * _3599);
                    _4382 = _1070 - (_4376 * _3600);
                    _4383 = _3704 - _4380;
                    _4384 = _3705 - _4381;
                    _4385 = _3706 - _4382;
                    _4387 = rsqrt(dot(float3(_4383, _4384, _4385), float3(_4383, _4384, _4385)));  // [sem: invLength]
                    _4388 = _4383 * _4387;
                    _4389 = _4384 * _4387;
                    _4390 = _4385 * _4387;
                    _4391 = -0.0f - _4380;
                    _4392 = -0.0f - _4381;
                    _4393 = -0.0f - _4382;
                    _4395 = saturate(dot(float3(_3548, _3549, _3550), float3(_4391, _4392, _4393)));  // [sem: expr_sat]
                    _4397 = saturate(dot(float3(_3598, _3599, _3600), float3(_4388, _4389, _4390)));  // [sem: expr_sat]
                    _4399 = saturate(_3719);  // [sem: _3719_sat]
                    _4410 = 1.0f - ((_4397 * _4397) * 0.9f);
                    _4413 = (0.03183099f / (_4410 * _4410)) * (0.5f / ((((_4395 * 0.9f) + 0.1f) * _3719) + (_4395 * ((_3719 * 0.9f) + 0.1f))));
                    _4439 = _4371;
                    _4440 = _4372;
                    _4441 = _4373;
                    _4442 = dot(float3(_4391, _4392, _4393), float3(_4388, _4389, _4390));
                    _4443 = _4397;
                    _4444 = (((float(half(max((_4413 * _3515), 0.0f) * _4399)) - _4368) * 0.875f) + _4368);
                    _4445 = (((float(half(max((_4413 * _3516), 0.0f) * _4399)) - _4369) * 0.875f) + _4369);
                    _4446 = (((float(half(max((_4413 * _3517), 0.0f) * _4399)) - _4370) * 0.875f) + _4370);
                  } else {
                    _4439 = _4371;
                    _4440 = _4372;
                    _4441 = _4373;
                    _4442 = _3724;
                    _4443 = _3723;
                    _4444 = _4368;
                    _4445 = _4369;
                    _4446 = _4370;
                  }
                } else {
                  _4205 = saturate(_3718);  // [sem: _3718_sat]
                  _4206 = 1.0f - _3661;
                  _4207 = 1.0f - _3726;
                  _4208 = _4207 * _4207;
                  _4211 = ((_4208 * _4208) * _4207) + _3726;
                  _4212 = 1.0f - _4205;
                  _4213 = _4212 * _4212;
                  _4218 = 1.0f - _3721;
                  _4219 = _4218 * _4218;
                  _4246 = (_4205 * 0.31830987f) * ((((_3726 * ((((_4206 * 34.5f) + -59.0f) * _4206) + 24.5f)) * exp2(-0.0f - (max(((_4206 * 73.2f) + -21.2f), 8.9f) * sqrt(_3723)))) + _4211) + ((((1.0f - ((_4213 * _4213) * (_4212 * 0.75f))) * (1.0f - ((_4219 * _4219) * (_4218 * 0.75f)))) - _4211) * saturate((_4206 * 2.2f) + -0.5f)));
                  _4249 = saturate(1.0f - saturate(_3724));  // [sem: expr_sat]
                  _4250 = _4249 * _4249;
                  _4252 = (_4250 * _4250) * _4249;
                  _4255 = _4252 * saturate(_3658 * 50.0f);
                  _4256 = 1.0f - _4252;
                  _4260 = (_4256 * _3657) + _4255;
                  _4261 = (_4256 * _3658) + _4255;
                  _4262 = (_4256 * _3659) + _4255;
                  if (!(_3565 == 29)) {
                    _4264 = saturate(_3719);  // [sem: _3719_sat]
                    _4265 = 1.0f - _3660;
                    _4277 = (((_3723 * _3661) - _3723) * _3723) + 1.0f;
                    _4281 = (_3661 / ((_4277 * _4277) * 3.1415927f)) * (0.5f / ((((_3721 * _4265) + _3660) * _3719) + (_3721 * ((_3719 * _4265) + _3660))));
                    _4292 = (max((_4281 * _4260), 0.0f) * _4264);
                    _4293 = (max((_4281 * _4261), 0.0f) * _4264);
                    _4294 = (max((_4281 * _4262), 0.0f) * _4264);
                  } else {
                    _4292 = 0.0f;
                    _4293 = 0.0f;
                    _4294 = 0.0f;
                  }
                  if (_3634) {
                    if (_3565 == 65) {
                      _4338 = _4292;
                      _4339 = _4293;
                      _4340 = _4294;
                      _4345 = max(1e-06f, _exposure2.x);
                      _4354 = ((_4205 * 50.265484f) * exp2(log2(saturate(dot(float3(_3598, _3599, _3600), float3(_1068, _1069, _1070)))) * 16.0f)) / (((_4345 * _4345) * 1e+06f) + 1.0f);
                      _4439 = ((((_4354 * _3515) - _4246) * _3564) + _4246);
                      _4440 = ((((_4354 * _3516) - _4246) * _3564) + _4246);
                      _4441 = ((((_4354 * _3517) - _4246) * _3564) + _4246);
                      _4442 = _3724;
                      _4443 = _3723;
                      _4444 = _4338;
                      _4445 = _4339;
                      _4446 = _4340;
                    } else {
                      _4302 = 1.0f - _3666;
                      _4314 = (((_3723 * _3667) - _3723) * _3723) + 1.0f;
                      _4318 = (_3667 / ((_4314 * _4314) * 3.1415927f)) * (0.5f / ((((_3721 * _4302) + _3666) * _3719) + (_3721 * ((_3719 * _4302) + _3666))));
                      _4325 = saturate(_3719) * 0.39990234f;
                      _4333 = ((max((_4318 * _4260), 0.0f) * _4325) + (_4292 * 0.60009766f));
                      _4334 = ((max((_4318 * _4261), 0.0f) * _4325) + (_4293 * 0.60009766f));
                      _4335 = ((max((_4318 * _4262), 0.0f) * _4325) + (_4294 * 0.60009766f));
                      if (_3565 == 65) {
                        _4338 = _4333;
                        _4339 = _4334;
                        _4340 = _4335;
                        _4345 = max(1e-06f, _exposure2.x);
                        _4354 = ((_4205 * 50.265484f) * exp2(log2(saturate(dot(float3(_3598, _3599, _3600), float3(_1068, _1069, _1070)))) * 16.0f)) / (((_4345 * _4345) * 1e+06f) + 1.0f);
                        _4439 = ((((_4354 * _3515) - _4246) * _3564) + _4246);
                        _4440 = ((((_4354 * _3516) - _4246) * _3564) + _4246);
                        _4441 = ((((_4354 * _3517) - _4246) * _3564) + _4246);
                        _4442 = _3724;
                        _4443 = _3723;
                        _4444 = _4338;
                        _4445 = _4339;
                        _4446 = _4340;
                      } else {
                        _4368 = _4333;
                        _4369 = _4334;
                        _4370 = _4335;
                        _4371 = _4246;
                        _4372 = _4246;
                        _4373 = _4246;
                        if (_3603) {
                          _4376 = dot(float3(_1068, _1069, _1070), float3(_3598, _3599, _3600)) * 2.0f;
                          _4380 = _1068 - (_4376 * _3598);
                          _4381 = _1069 - (_4376 * _3599);
                          _4382 = _1070 - (_4376 * _3600);
                          _4383 = _3704 - _4380;
                          _4384 = _3705 - _4381;
                          _4385 = _3706 - _4382;
                          _4387 = rsqrt(dot(float3(_4383, _4384, _4385), float3(_4383, _4384, _4385)));  // [sem: invLength]
                          _4388 = _4383 * _4387;
                          _4389 = _4384 * _4387;
                          _4390 = _4385 * _4387;
                          _4391 = -0.0f - _4380;
                          _4392 = -0.0f - _4381;
                          _4393 = -0.0f - _4382;
                          _4395 = saturate(dot(float3(_3548, _3549, _3550), float3(_4391, _4392, _4393)));  // [sem: expr_sat]
                          _4397 = saturate(dot(float3(_3598, _3599, _3600), float3(_4388, _4389, _4390)));  // [sem: expr_sat]
                          _4399 = saturate(_3719);  // [sem: _3719_sat]
                          _4410 = 1.0f - ((_4397 * _4397) * 0.9f);
                          _4413 = (0.03183099f / (_4410 * _4410)) * (0.5f / ((((_4395 * 0.9f) + 0.1f) * _3719) + (_4395 * ((_3719 * 0.9f) + 0.1f))));
                          _4439 = _4371;
                          _4440 = _4372;
                          _4441 = _4373;
                          _4442 = dot(float3(_4391, _4392, _4393), float3(_4388, _4389, _4390));
                          _4443 = _4397;
                          _4444 = (((float(half(max((_4413 * _3515), 0.0f) * _4399)) - _4368) * 0.875f) + _4368);
                          _4445 = (((float(half(max((_4413 * _3516), 0.0f) * _4399)) - _4369) * 0.875f) + _4369);
                          _4446 = (((float(half(max((_4413 * _3517), 0.0f) * _4399)) - _4370) * 0.875f) + _4370);
                        } else {
                          _4439 = _4371;
                          _4440 = _4372;
                          _4441 = _4373;
                          _4442 = _3724;
                          _4443 = _3723;
                          _4444 = _4368;
                          _4445 = _4369;
                          _4446 = _4370;
                        }
                      }
                    }
                  } else {
                    _4333 = _4292;
                    _4334 = _4293;
                    _4335 = _4294;
                    if (_3565 == 65) {
                      _4338 = _4333;
                      _4339 = _4334;
                      _4340 = _4335;
                      _4345 = max(1e-06f, _exposure2.x);
                      _4354 = ((_4205 * 50.265484f) * exp2(log2(saturate(dot(float3(_3598, _3599, _3600), float3(_1068, _1069, _1070)))) * 16.0f)) / (((_4345 * _4345) * 1e+06f) + 1.0f);
                      _4439 = ((((_4354 * _3515) - _4246) * _3564) + _4246);
                      _4440 = ((((_4354 * _3516) - _4246) * _3564) + _4246);
                      _4441 = ((((_4354 * _3517) - _4246) * _3564) + _4246);
                      _4442 = _3724;
                      _4443 = _3723;
                      _4444 = _4338;
                      _4445 = _4339;
                      _4446 = _4340;
                    } else {
                      _4368 = _4333;
                      _4369 = _4334;
                      _4370 = _4335;
                      _4371 = _4246;
                      _4372 = _4246;
                      _4373 = _4246;
                      if (_3603) {
                        _4376 = dot(float3(_1068, _1069, _1070), float3(_3598, _3599, _3600)) * 2.0f;
                        _4380 = _1068 - (_4376 * _3598);
                        _4381 = _1069 - (_4376 * _3599);
                        _4382 = _1070 - (_4376 * _3600);
                        _4383 = _3704 - _4380;
                        _4384 = _3705 - _4381;
                        _4385 = _3706 - _4382;
                        _4387 = rsqrt(dot(float3(_4383, _4384, _4385), float3(_4383, _4384, _4385)));  // [sem: invLength]
                        _4388 = _4383 * _4387;
                        _4389 = _4384 * _4387;
                        _4390 = _4385 * _4387;
                        _4391 = -0.0f - _4380;
                        _4392 = -0.0f - _4381;
                        _4393 = -0.0f - _4382;
                        _4395 = saturate(dot(float3(_3548, _3549, _3550), float3(_4391, _4392, _4393)));  // [sem: expr_sat]
                        _4397 = saturate(dot(float3(_3598, _3599, _3600), float3(_4388, _4389, _4390)));  // [sem: expr_sat]
                        _4399 = saturate(_3719);  // [sem: _3719_sat]
                        _4410 = 1.0f - ((_4397 * _4397) * 0.9f);
                        _4413 = (0.03183099f / (_4410 * _4410)) * (0.5f / ((((_4395 * 0.9f) + 0.1f) * _3719) + (_4395 * ((_3719 * 0.9f) + 0.1f))));
                        _4439 = _4371;
                        _4440 = _4372;
                        _4441 = _4373;
                        _4442 = dot(float3(_4391, _4392, _4393), float3(_4388, _4389, _4390));
                        _4443 = _4397;
                        _4444 = (((float(half(max((_4413 * _3515), 0.0f) * _4399)) - _4368) * 0.875f) + _4368);
                        _4445 = (((float(half(max((_4413 * _3516), 0.0f) * _4399)) - _4369) * 0.875f) + _4369);
                        _4446 = (((float(half(max((_4413 * _3517), 0.0f) * _4399)) - _4370) * 0.875f) + _4370);
                      } else {
                        _4439 = _4371;
                        _4440 = _4372;
                        _4441 = _4373;
                        _4442 = _3724;
                        _4443 = _3723;
                        _4444 = _4368;
                        _4445 = _4369;
                        _4446 = _4370;
                      }
                    }
                  }
                }
              } else {
                _4439 = _4020;
                _4440 = _4021;
                _4441 = _4022;
                _4442 = _3724;
                _4443 = _3723;
                _4444 = _4017;
                _4445 = _4018;
                _4446 = _4019;
              }
              _4468 = select(_4026, _4197, _4444) * _3512;
              _4469 = select(_4026, _4198, _4445) * _3513;
              _4470 = select(_4026, _4199, _4446) * _3514;
              _4478 = _4442;
              _4479 = _4443;
              _4480 = select(_4026, 0.0f, _4014);
              _4481 = select(_4026, 0.0f, _4015);
              _4482 = select(_4026, 0.0f, _4016);
              _4483 = select(_4026, (_4468 + _4194), _4468);
              _4484 = select(_4026, (_4469 + _4195), _4469);
              _4485 = select(_4026, (_4470 + _4196), _4470);
              _4486 = (select(_4026, _4200, (-0.0f - min(-0.0f, (-0.0f - _4439)))) * _3512);
              _4487 = (select(_4026, _4201, (-0.0f - min(-0.0f, (-0.0f - _4440)))) * _3513);
              _4488 = (select(_4026, _4202, (-0.0f - min(-0.0f, (-0.0f - _4441)))) * _3514);
            } else {
              _4478 = _3724;
              _4479 = _3723;
              _4480 = _4014;
              _4481 = _4015;
              _4482 = _4016;
              _4483 = _4017;
              _4484 = _4018;
              _4485 = _4019;
              _4486 = _4020;
              _4487 = _4021;
              _4488 = _4022;
            }
          }
        } else {
          _4478 = _3724;
          _4479 = _3723;
          _4480 = _4014;
          _4481 = _4015;
          _4482 = _4016;
          _4483 = _4017;
          _4484 = _4018;
          _4485 = _4019;
          _4486 = _4020;
          _4487 = _4021;
          _4488 = _4022;
        }
      } else {
        _4478 = _3724;
        _4479 = _3723;
        _4480 = _4001;
        _4481 = _4002;
        _4482 = _4003;
        _4483 = _4010;
        _4484 = _4011;
        _4485 = _4012;
        _4486 = _3990;
        _4487 = _3992;
        _4488 = _3994;
      }
    } else {
      _4014 = 0.0f;
      _4015 = 0.0f;
      _4016 = 0.0f;
      _4017 = 0.0f;
      _4018 = 0.0f;
      _4019 = 0.0f;
      _4020 = 0.0f;
      _4021 = 0.0f;
      _4022 = 0.0f;
      if (!_3728) {
        _4024 = (_3565 == 33);
        _4025 = (_3565 == 54);
        _4026 = _4024 || _4025;
        if (_4026) {
          _4041 = (saturate(_3718) * 0.31830987f) * (((saturate(1.0f - _effectiveMetallicForVelvet) + -1.0f) * _3569) + 1.0f);
          _4047 = max(dot(float3(_3515, _3516, _3517), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
          _4048 = sqrt(_3515);
          _4049 = sqrt(_3516);
          _4050 = sqrt(_3517);
          _4051 = _4048 - _4047;
          _4052 = _4049 - _4047;
          _4053 = _4050 - _4047;
          _4060 = saturate(1.0f - (pow(_3721, 4.0f)));  // [sem: expr_sat]
          _4073 = (((_4052 * _3566) + _4047) + ((_4052 * (_3569 - _3566)) * _4060)) * _3567;
          _4076 = saturate(1.0f - saturate(_3724));  // [sem: expr_sat]
          _4077 = _4076 * _4076;
          _4079 = (_4077 * _4077) * _4076;
          _4082 = _4079 * saturate(_4073 * 50.0f);
          _4083 = 1.0f - _4079;
          _4084 = _4083 * _3567;
          _4088 = (_4084 * (((_4051 * _3566) + _4047) + (_4060 * (_4051 * (_3569 - _3566))))) + _4082;
          _4089 = (_4083 * _4073) + _4082;
          _4090 = (_4084 * (((_4053 * _3566) + _4047) + ((_4053 * (_3569 - _3566)) * _4060))) + _4082;
          _4091 = min(_3723, 0.9999f);
          _4092 = _4091 * _4091;
          _4093 = 1.0f - _4092;
          _4105 = (((exp2(((-0.0f - _4092) / (_4093 * _3661)) * 1.442695f) * 4.0f) / (_4093 * _4093)) + 1.0f) / ((_3661 * 12.566371f) + 3.1415927f);
          _4109 = ((_3721 + _3719) - (_3721 * _3719)) * 4.0f;
          _4113 = (_4088 * _4105) / _4109;
          _4114 = (_4089 * _4105) / _4109;
          _4115 = (_4090 * _4105) / _4109;
          _4116 = 1.0f - _3660;
          _4128 = (((_3723 * _3661) - _3723) * _3723) + 1.0f;
          _4132 = (_3661 / ((_4128 * _4128) * 3.1415927f)) * (0.5f / ((((_3721 * _4116) + _3660) * _3718) + (_3721 * ((_3718 * _4116) + _3660))));
          _4148 = saturate(_3719);  // [sem: _3719_sat]
          _4153 = (_3568 * 1.5f) + 2.5f;
          _4154 = _4153 * _4153;
          _4164 = (max(0.0f, (0.3f - _3718)) * 0.25f) * ((exp2(_4154 * -0.48089835f) * 3.0f) + exp2(_4154 * -1.442695f));
          _4189 = (((1.0f - _3569) * 0.4774648f) * saturate(_3568)) * saturate((pow(_3723, 4.0f)) * exp2(log2(saturate(1.0f - abs(_3718))) * 3.0f));
          _4194 = (_4189 * _4048);
          _4195 = (_4189 * _4049);
          _4196 = (_4189 * _4050);
          _4197 = ((((max((_4132 * _4088), 0.0f) - _4113) * _3566) + _4113) * _4148);
          _4198 = ((((max((_4132 * _4089), 0.0f) - _4114) * _3566) + _4114) * _4148);
          _4199 = ((((max((_4132 * _4090), 0.0f) - _4115) * _3566) + _4115) * _4148);
          _4200 = (((_4048 * _3512) * _4164) + _4041);
          _4201 = (((_4049 * _3513) * _4164) + _4041);
          _4202 = (((_4050 * _3514) * _4164) + _4041);
          if (!_4024) {
            if (_4025) {
              _4368 = _4017;
              _4369 = _4018;
              _4370 = _4019;
              _4371 = _4020;
              _4372 = _4021;
              _4373 = _4022;
              if (_3603) {
                _4376 = dot(float3(_1068, _1069, _1070), float3(_3598, _3599, _3600)) * 2.0f;
                _4380 = _1068 - (_4376 * _3598);
                _4381 = _1069 - (_4376 * _3599);
                _4382 = _1070 - (_4376 * _3600);
                _4383 = _3704 - _4380;
                _4384 = _3705 - _4381;
                _4385 = _3706 - _4382;
                _4387 = rsqrt(dot(float3(_4383, _4384, _4385), float3(_4383, _4384, _4385)));  // [sem: invLength]
                _4388 = _4383 * _4387;
                _4389 = _4384 * _4387;
                _4390 = _4385 * _4387;
                _4391 = -0.0f - _4380;
                _4392 = -0.0f - _4381;
                _4393 = -0.0f - _4382;
                _4395 = saturate(dot(float3(_3548, _3549, _3550), float3(_4391, _4392, _4393)));  // [sem: expr_sat]
                _4397 = saturate(dot(float3(_3598, _3599, _3600), float3(_4388, _4389, _4390)));  // [sem: expr_sat]
                _4399 = saturate(_3719);  // [sem: _3719_sat]
                _4410 = 1.0f - ((_4397 * _4397) * 0.9f);
                _4413 = (0.03183099f / (_4410 * _4410)) * (0.5f / ((((_4395 * 0.9f) + 0.1f) * _3719) + (_4395 * ((_3719 * 0.9f) + 0.1f))));
                _4439 = _4371;
                _4440 = _4372;
                _4441 = _4373;
                _4442 = dot(float3(_4391, _4392, _4393), float3(_4388, _4389, _4390));
                _4443 = _4397;
                _4444 = (((float(half(max((_4413 * _3515), 0.0f) * _4399)) - _4368) * 0.875f) + _4368);
                _4445 = (((float(half(max((_4413 * _3516), 0.0f) * _4399)) - _4369) * 0.875f) + _4369);
                _4446 = (((float(half(max((_4413 * _3517), 0.0f) * _4399)) - _4370) * 0.875f) + _4370);
              } else {
                _4439 = _4371;
                _4440 = _4372;
                _4441 = _4373;
                _4442 = _3724;
                _4443 = _3723;
                _4444 = _4368;
                _4445 = _4369;
                _4446 = _4370;
              }
            } else {
              _4205 = saturate(_3718);  // [sem: _3718_sat]
              _4206 = 1.0f - _3661;
              _4207 = 1.0f - _3726;
              _4208 = _4207 * _4207;
              _4211 = ((_4208 * _4208) * _4207) + _3726;
              _4212 = 1.0f - _4205;
              _4213 = _4212 * _4212;
              _4218 = 1.0f - _3721;
              _4219 = _4218 * _4218;
              _4246 = (_4205 * 0.31830987f) * ((((_3726 * ((((_4206 * 34.5f) + -59.0f) * _4206) + 24.5f)) * exp2(-0.0f - (max(((_4206 * 73.2f) + -21.2f), 8.9f) * sqrt(_3723)))) + _4211) + ((((1.0f - ((_4213 * _4213) * (_4212 * 0.75f))) * (1.0f - ((_4219 * _4219) * (_4218 * 0.75f)))) - _4211) * saturate((_4206 * 2.2f) + -0.5f)));
              _4249 = saturate(1.0f - saturate(_3724));  // [sem: expr_sat]
              _4250 = _4249 * _4249;
              _4252 = (_4250 * _4250) * _4249;
              _4255 = _4252 * saturate(_3658 * 50.0f);
              _4256 = 1.0f - _4252;
              _4260 = (_4256 * _3657) + _4255;
              _4261 = (_4256 * _3658) + _4255;
              _4262 = (_4256 * _3659) + _4255;
              if (!(_3565 == 29)) {
                _4264 = saturate(_3719);  // [sem: _3719_sat]
                _4265 = 1.0f - _3660;
                _4277 = (((_3723 * _3661) - _3723) * _3723) + 1.0f;
                _4281 = (_3661 / ((_4277 * _4277) * 3.1415927f)) * (0.5f / ((((_3721 * _4265) + _3660) * _3719) + (_3721 * ((_3719 * _4265) + _3660))));
                _4292 = (max((_4281 * _4260), 0.0f) * _4264);
                _4293 = (max((_4281 * _4261), 0.0f) * _4264);
                _4294 = (max((_4281 * _4262), 0.0f) * _4264);
              } else {
                _4292 = 0.0f;
                _4293 = 0.0f;
                _4294 = 0.0f;
              }
              if (_3634) {
                if (_3565 == 65) {
                  _4338 = _4292;
                  _4339 = _4293;
                  _4340 = _4294;
                  _4345 = max(1e-06f, _exposure2.x);
                  _4354 = ((_4205 * 50.265484f) * exp2(log2(saturate(dot(float3(_3598, _3599, _3600), float3(_1068, _1069, _1070)))) * 16.0f)) / (((_4345 * _4345) * 1e+06f) + 1.0f);
                  _4439 = ((((_4354 * _3515) - _4246) * _3564) + _4246);
                  _4440 = ((((_4354 * _3516) - _4246) * _3564) + _4246);
                  _4441 = ((((_4354 * _3517) - _4246) * _3564) + _4246);
                  _4442 = _3724;
                  _4443 = _3723;
                  _4444 = _4338;
                  _4445 = _4339;
                  _4446 = _4340;
                } else {
                  _4302 = 1.0f - _3666;
                  _4314 = (((_3723 * _3667) - _3723) * _3723) + 1.0f;
                  _4318 = (_3667 / ((_4314 * _4314) * 3.1415927f)) * (0.5f / ((((_3721 * _4302) + _3666) * _3719) + (_3721 * ((_3719 * _4302) + _3666))));
                  _4325 = saturate(_3719) * 0.39990234f;
                  _4333 = ((max((_4318 * _4260), 0.0f) * _4325) + (_4292 * 0.60009766f));
                  _4334 = ((max((_4318 * _4261), 0.0f) * _4325) + (_4293 * 0.60009766f));
                  _4335 = ((max((_4318 * _4262), 0.0f) * _4325) + (_4294 * 0.60009766f));
                  if (_3565 == 65) {
                    _4338 = _4333;
                    _4339 = _4334;
                    _4340 = _4335;
                    _4345 = max(1e-06f, _exposure2.x);
                    _4354 = ((_4205 * 50.265484f) * exp2(log2(saturate(dot(float3(_3598, _3599, _3600), float3(_1068, _1069, _1070)))) * 16.0f)) / (((_4345 * _4345) * 1e+06f) + 1.0f);
                    _4439 = ((((_4354 * _3515) - _4246) * _3564) + _4246);
                    _4440 = ((((_4354 * _3516) - _4246) * _3564) + _4246);
                    _4441 = ((((_4354 * _3517) - _4246) * _3564) + _4246);
                    _4442 = _3724;
                    _4443 = _3723;
                    _4444 = _4338;
                    _4445 = _4339;
                    _4446 = _4340;
                  } else {
                    _4368 = _4333;
                    _4369 = _4334;
                    _4370 = _4335;
                    _4371 = _4246;
                    _4372 = _4246;
                    _4373 = _4246;
                    if (_3603) {
                      _4376 = dot(float3(_1068, _1069, _1070), float3(_3598, _3599, _3600)) * 2.0f;
                      _4380 = _1068 - (_4376 * _3598);
                      _4381 = _1069 - (_4376 * _3599);
                      _4382 = _1070 - (_4376 * _3600);
                      _4383 = _3704 - _4380;
                      _4384 = _3705 - _4381;
                      _4385 = _3706 - _4382;
                      _4387 = rsqrt(dot(float3(_4383, _4384, _4385), float3(_4383, _4384, _4385)));  // [sem: invLength]
                      _4388 = _4383 * _4387;
                      _4389 = _4384 * _4387;
                      _4390 = _4385 * _4387;
                      _4391 = -0.0f - _4380;
                      _4392 = -0.0f - _4381;
                      _4393 = -0.0f - _4382;
                      _4395 = saturate(dot(float3(_3548, _3549, _3550), float3(_4391, _4392, _4393)));  // [sem: expr_sat]
                      _4397 = saturate(dot(float3(_3598, _3599, _3600), float3(_4388, _4389, _4390)));  // [sem: expr_sat]
                      _4399 = saturate(_3719);  // [sem: _3719_sat]
                      _4410 = 1.0f - ((_4397 * _4397) * 0.9f);
                      _4413 = (0.03183099f / (_4410 * _4410)) * (0.5f / ((((_4395 * 0.9f) + 0.1f) * _3719) + (_4395 * ((_3719 * 0.9f) + 0.1f))));
                      _4439 = _4371;
                      _4440 = _4372;
                      _4441 = _4373;
                      _4442 = dot(float3(_4391, _4392, _4393), float3(_4388, _4389, _4390));
                      _4443 = _4397;
                      _4444 = (((float(half(max((_4413 * _3515), 0.0f) * _4399)) - _4368) * 0.875f) + _4368);
                      _4445 = (((float(half(max((_4413 * _3516), 0.0f) * _4399)) - _4369) * 0.875f) + _4369);
                      _4446 = (((float(half(max((_4413 * _3517), 0.0f) * _4399)) - _4370) * 0.875f) + _4370);
                    } else {
                      _4439 = _4371;
                      _4440 = _4372;
                      _4441 = _4373;
                      _4442 = _3724;
                      _4443 = _3723;
                      _4444 = _4368;
                      _4445 = _4369;
                      _4446 = _4370;
                    }
                  }
                }
              } else {
                _4333 = _4292;
                _4334 = _4293;
                _4335 = _4294;
                if (_3565 == 65) {
                  _4338 = _4333;
                  _4339 = _4334;
                  _4340 = _4335;
                  _4345 = max(1e-06f, _exposure2.x);
                  _4354 = ((_4205 * 50.265484f) * exp2(log2(saturate(dot(float3(_3598, _3599, _3600), float3(_1068, _1069, _1070)))) * 16.0f)) / (((_4345 * _4345) * 1e+06f) + 1.0f);
                  _4439 = ((((_4354 * _3515) - _4246) * _3564) + _4246);
                  _4440 = ((((_4354 * _3516) - _4246) * _3564) + _4246);
                  _4441 = ((((_4354 * _3517) - _4246) * _3564) + _4246);
                  _4442 = _3724;
                  _4443 = _3723;
                  _4444 = _4338;
                  _4445 = _4339;
                  _4446 = _4340;
                } else {
                  _4368 = _4333;
                  _4369 = _4334;
                  _4370 = _4335;
                  _4371 = _4246;
                  _4372 = _4246;
                  _4373 = _4246;
                  if (_3603) {
                    _4376 = dot(float3(_1068, _1069, _1070), float3(_3598, _3599, _3600)) * 2.0f;
                    _4380 = _1068 - (_4376 * _3598);
                    _4381 = _1069 - (_4376 * _3599);
                    _4382 = _1070 - (_4376 * _3600);
                    _4383 = _3704 - _4380;
                    _4384 = _3705 - _4381;
                    _4385 = _3706 - _4382;
                    _4387 = rsqrt(dot(float3(_4383, _4384, _4385), float3(_4383, _4384, _4385)));  // [sem: invLength]
                    _4388 = _4383 * _4387;
                    _4389 = _4384 * _4387;
                    _4390 = _4385 * _4387;
                    _4391 = -0.0f - _4380;
                    _4392 = -0.0f - _4381;
                    _4393 = -0.0f - _4382;
                    _4395 = saturate(dot(float3(_3548, _3549, _3550), float3(_4391, _4392, _4393)));  // [sem: expr_sat]
                    _4397 = saturate(dot(float3(_3598, _3599, _3600), float3(_4388, _4389, _4390)));  // [sem: expr_sat]
                    _4399 = saturate(_3719);  // [sem: _3719_sat]
                    _4410 = 1.0f - ((_4397 * _4397) * 0.9f);
                    _4413 = (0.03183099f / (_4410 * _4410)) * (0.5f / ((((_4395 * 0.9f) + 0.1f) * _3719) + (_4395 * ((_3719 * 0.9f) + 0.1f))));
                    _4439 = _4371;
                    _4440 = _4372;
                    _4441 = _4373;
                    _4442 = dot(float3(_4391, _4392, _4393), float3(_4388, _4389, _4390));
                    _4443 = _4397;
                    _4444 = (((float(half(max((_4413 * _3515), 0.0f) * _4399)) - _4368) * 0.875f) + _4368);
                    _4445 = (((float(half(max((_4413 * _3516), 0.0f) * _4399)) - _4369) * 0.875f) + _4369);
                    _4446 = (((float(half(max((_4413 * _3517), 0.0f) * _4399)) - _4370) * 0.875f) + _4370);
                  } else {
                    _4439 = _4371;
                    _4440 = _4372;
                    _4441 = _4373;
                    _4442 = _3724;
                    _4443 = _3723;
                    _4444 = _4368;
                    _4445 = _4369;
                    _4446 = _4370;
                  }
                }
              }
            }
          } else {
            _4439 = _4020;
            _4440 = _4021;
            _4441 = _4022;
            _4442 = _3724;
            _4443 = _3723;
            _4444 = _4017;
            _4445 = _4018;
            _4446 = _4019;
          }
          _4468 = select(_4026, _4197, _4444) * _3512;
          _4469 = select(_4026, _4198, _4445) * _3513;
          _4470 = select(_4026, _4199, _4446) * _3514;
          _4478 = _4442;
          _4479 = _4443;
          _4480 = select(_4026, 0.0f, _4014);
          _4481 = select(_4026, 0.0f, _4015);
          _4482 = select(_4026, 0.0f, _4016);
          _4483 = select(_4026, (_4468 + _4194), _4468);
          _4484 = select(_4026, (_4469 + _4195), _4469);
          _4485 = select(_4026, (_4470 + _4196), _4470);
          _4486 = (select(_4026, _4200, (-0.0f - min(-0.0f, (-0.0f - _4439)))) * _3512);
          _4487 = (select(_4026, _4201, (-0.0f - min(-0.0f, (-0.0f - _4440)))) * _3513);
          _4488 = (select(_4026, _4202, (-0.0f - min(-0.0f, (-0.0f - _4441)))) * _3514);
        } else {
          if ((_3718 > 0.0f) || (_3719 > 0.0f)) {
            _4194 = 0.0f;
            _4195 = 0.0f;
            _4196 = 0.0f;
            _4197 = 0.0f;
            _4198 = 0.0f;
            _4199 = 0.0f;
            _4200 = 0.0f;
            _4201 = 0.0f;
            _4202 = 0.0f;
            if (!_4024) {
              if (_4025) {
                _4368 = _4017;
                _4369 = _4018;
                _4370 = _4019;
                _4371 = _4020;
                _4372 = _4021;
                _4373 = _4022;
                if (_3603) {
                  _4376 = dot(float3(_1068, _1069, _1070), float3(_3598, _3599, _3600)) * 2.0f;
                  _4380 = _1068 - (_4376 * _3598);
                  _4381 = _1069 - (_4376 * _3599);
                  _4382 = _1070 - (_4376 * _3600);
                  _4383 = _3704 - _4380;
                  _4384 = _3705 - _4381;
                  _4385 = _3706 - _4382;
                  _4387 = rsqrt(dot(float3(_4383, _4384, _4385), float3(_4383, _4384, _4385)));  // [sem: invLength]
                  _4388 = _4383 * _4387;
                  _4389 = _4384 * _4387;
                  _4390 = _4385 * _4387;
                  _4391 = -0.0f - _4380;
                  _4392 = -0.0f - _4381;
                  _4393 = -0.0f - _4382;
                  _4395 = saturate(dot(float3(_3548, _3549, _3550), float3(_4391, _4392, _4393)));  // [sem: expr_sat]
                  _4397 = saturate(dot(float3(_3598, _3599, _3600), float3(_4388, _4389, _4390)));  // [sem: expr_sat]
                  _4399 = saturate(_3719);  // [sem: _3719_sat]
                  _4410 = 1.0f - ((_4397 * _4397) * 0.9f);
                  _4413 = (0.03183099f / (_4410 * _4410)) * (0.5f / ((((_4395 * 0.9f) + 0.1f) * _3719) + (_4395 * ((_3719 * 0.9f) + 0.1f))));
                  _4439 = _4371;
                  _4440 = _4372;
                  _4441 = _4373;
                  _4442 = dot(float3(_4391, _4392, _4393), float3(_4388, _4389, _4390));
                  _4443 = _4397;
                  _4444 = (((float(half(max((_4413 * _3515), 0.0f) * _4399)) - _4368) * 0.875f) + _4368);
                  _4445 = (((float(half(max((_4413 * _3516), 0.0f) * _4399)) - _4369) * 0.875f) + _4369);
                  _4446 = (((float(half(max((_4413 * _3517), 0.0f) * _4399)) - _4370) * 0.875f) + _4370);
                } else {
                  _4439 = _4371;
                  _4440 = _4372;
                  _4441 = _4373;
                  _4442 = _3724;
                  _4443 = _3723;
                  _4444 = _4368;
                  _4445 = _4369;
                  _4446 = _4370;
                }
              } else {
                _4205 = saturate(_3718);  // [sem: _3718_sat]
                _4206 = 1.0f - _3661;
                _4207 = 1.0f - _3726;
                _4208 = _4207 * _4207;
                _4211 = ((_4208 * _4208) * _4207) + _3726;
                _4212 = 1.0f - _4205;
                _4213 = _4212 * _4212;
                _4218 = 1.0f - _3721;
                _4219 = _4218 * _4218;
                _4246 = (_4205 * 0.31830987f) * ((((_3726 * ((((_4206 * 34.5f) + -59.0f) * _4206) + 24.5f)) * exp2(-0.0f - (max(((_4206 * 73.2f) + -21.2f), 8.9f) * sqrt(_3723)))) + _4211) + ((((1.0f - ((_4213 * _4213) * (_4212 * 0.75f))) * (1.0f - ((_4219 * _4219) * (_4218 * 0.75f)))) - _4211) * saturate((_4206 * 2.2f) + -0.5f)));
                _4249 = saturate(1.0f - saturate(_3724));  // [sem: expr_sat]
                _4250 = _4249 * _4249;
                _4252 = (_4250 * _4250) * _4249;
                _4255 = _4252 * saturate(_3658 * 50.0f);
                _4256 = 1.0f - _4252;
                _4260 = (_4256 * _3657) + _4255;
                _4261 = (_4256 * _3658) + _4255;
                _4262 = (_4256 * _3659) + _4255;
                if (!(_3565 == 29)) {
                  _4264 = saturate(_3719);  // [sem: _3719_sat]
                  _4265 = 1.0f - _3660;
                  _4277 = (((_3723 * _3661) - _3723) * _3723) + 1.0f;
                  _4281 = (_3661 / ((_4277 * _4277) * 3.1415927f)) * (0.5f / ((((_3721 * _4265) + _3660) * _3719) + (_3721 * ((_3719 * _4265) + _3660))));
                  _4292 = (max((_4281 * _4260), 0.0f) * _4264);
                  _4293 = (max((_4281 * _4261), 0.0f) * _4264);
                  _4294 = (max((_4281 * _4262), 0.0f) * _4264);
                } else {
                  _4292 = 0.0f;
                  _4293 = 0.0f;
                  _4294 = 0.0f;
                }
                if (_3634) {
                  if (_3565 == 65) {
                    _4338 = _4292;
                    _4339 = _4293;
                    _4340 = _4294;
                    _4345 = max(1e-06f, _exposure2.x);
                    _4354 = ((_4205 * 50.265484f) * exp2(log2(saturate(dot(float3(_3598, _3599, _3600), float3(_1068, _1069, _1070)))) * 16.0f)) / (((_4345 * _4345) * 1e+06f) + 1.0f);
                    _4439 = ((((_4354 * _3515) - _4246) * _3564) + _4246);
                    _4440 = ((((_4354 * _3516) - _4246) * _3564) + _4246);
                    _4441 = ((((_4354 * _3517) - _4246) * _3564) + _4246);
                    _4442 = _3724;
                    _4443 = _3723;
                    _4444 = _4338;
                    _4445 = _4339;
                    _4446 = _4340;
                  } else {
                    _4302 = 1.0f - _3666;
                    _4314 = (((_3723 * _3667) - _3723) * _3723) + 1.0f;
                    _4318 = (_3667 / ((_4314 * _4314) * 3.1415927f)) * (0.5f / ((((_3721 * _4302) + _3666) * _3719) + (_3721 * ((_3719 * _4302) + _3666))));
                    _4325 = saturate(_3719) * 0.39990234f;
                    _4333 = ((max((_4318 * _4260), 0.0f) * _4325) + (_4292 * 0.60009766f));
                    _4334 = ((max((_4318 * _4261), 0.0f) * _4325) + (_4293 * 0.60009766f));
                    _4335 = ((max((_4318 * _4262), 0.0f) * _4325) + (_4294 * 0.60009766f));
                    if (_3565 == 65) {
                      _4338 = _4333;
                      _4339 = _4334;
                      _4340 = _4335;
                      _4345 = max(1e-06f, _exposure2.x);
                      _4354 = ((_4205 * 50.265484f) * exp2(log2(saturate(dot(float3(_3598, _3599, _3600), float3(_1068, _1069, _1070)))) * 16.0f)) / (((_4345 * _4345) * 1e+06f) + 1.0f);
                      _4439 = ((((_4354 * _3515) - _4246) * _3564) + _4246);
                      _4440 = ((((_4354 * _3516) - _4246) * _3564) + _4246);
                      _4441 = ((((_4354 * _3517) - _4246) * _3564) + _4246);
                      _4442 = _3724;
                      _4443 = _3723;
                      _4444 = _4338;
                      _4445 = _4339;
                      _4446 = _4340;
                    } else {
                      _4368 = _4333;
                      _4369 = _4334;
                      _4370 = _4335;
                      _4371 = _4246;
                      _4372 = _4246;
                      _4373 = _4246;
                      if (_3603) {
                        _4376 = dot(float3(_1068, _1069, _1070), float3(_3598, _3599, _3600)) * 2.0f;
                        _4380 = _1068 - (_4376 * _3598);
                        _4381 = _1069 - (_4376 * _3599);
                        _4382 = _1070 - (_4376 * _3600);
                        _4383 = _3704 - _4380;
                        _4384 = _3705 - _4381;
                        _4385 = _3706 - _4382;
                        _4387 = rsqrt(dot(float3(_4383, _4384, _4385), float3(_4383, _4384, _4385)));  // [sem: invLength]
                        _4388 = _4383 * _4387;
                        _4389 = _4384 * _4387;
                        _4390 = _4385 * _4387;
                        _4391 = -0.0f - _4380;
                        _4392 = -0.0f - _4381;
                        _4393 = -0.0f - _4382;
                        _4395 = saturate(dot(float3(_3548, _3549, _3550), float3(_4391, _4392, _4393)));  // [sem: expr_sat]
                        _4397 = saturate(dot(float3(_3598, _3599, _3600), float3(_4388, _4389, _4390)));  // [sem: expr_sat]
                        _4399 = saturate(_3719);  // [sem: _3719_sat]
                        _4410 = 1.0f - ((_4397 * _4397) * 0.9f);
                        _4413 = (0.03183099f / (_4410 * _4410)) * (0.5f / ((((_4395 * 0.9f) + 0.1f) * _3719) + (_4395 * ((_3719 * 0.9f) + 0.1f))));
                        _4439 = _4371;
                        _4440 = _4372;
                        _4441 = _4373;
                        _4442 = dot(float3(_4391, _4392, _4393), float3(_4388, _4389, _4390));
                        _4443 = _4397;
                        _4444 = (((float(half(max((_4413 * _3515), 0.0f) * _4399)) - _4368) * 0.875f) + _4368);
                        _4445 = (((float(half(max((_4413 * _3516), 0.0f) * _4399)) - _4369) * 0.875f) + _4369);
                        _4446 = (((float(half(max((_4413 * _3517), 0.0f) * _4399)) - _4370) * 0.875f) + _4370);
                      } else {
                        _4439 = _4371;
                        _4440 = _4372;
                        _4441 = _4373;
                        _4442 = _3724;
                        _4443 = _3723;
                        _4444 = _4368;
                        _4445 = _4369;
                        _4446 = _4370;
                      }
                    }
                  }
                } else {
                  _4333 = _4292;
                  _4334 = _4293;
                  _4335 = _4294;
                  if (_3565 == 65) {
                    _4338 = _4333;
                    _4339 = _4334;
                    _4340 = _4335;
                    _4345 = max(1e-06f, _exposure2.x);
                    _4354 = ((_4205 * 50.265484f) * exp2(log2(saturate(dot(float3(_3598, _3599, _3600), float3(_1068, _1069, _1070)))) * 16.0f)) / (((_4345 * _4345) * 1e+06f) + 1.0f);
                    _4439 = ((((_4354 * _3515) - _4246) * _3564) + _4246);
                    _4440 = ((((_4354 * _3516) - _4246) * _3564) + _4246);
                    _4441 = ((((_4354 * _3517) - _4246) * _3564) + _4246);
                    _4442 = _3724;
                    _4443 = _3723;
                    _4444 = _4338;
                    _4445 = _4339;
                    _4446 = _4340;
                  } else {
                    _4368 = _4333;
                    _4369 = _4334;
                    _4370 = _4335;
                    _4371 = _4246;
                    _4372 = _4246;
                    _4373 = _4246;
                    if (_3603) {
                      _4376 = dot(float3(_1068, _1069, _1070), float3(_3598, _3599, _3600)) * 2.0f;
                      _4380 = _1068 - (_4376 * _3598);
                      _4381 = _1069 - (_4376 * _3599);
                      _4382 = _1070 - (_4376 * _3600);
                      _4383 = _3704 - _4380;
                      _4384 = _3705 - _4381;
                      _4385 = _3706 - _4382;
                      _4387 = rsqrt(dot(float3(_4383, _4384, _4385), float3(_4383, _4384, _4385)));  // [sem: invLength]
                      _4388 = _4383 * _4387;
                      _4389 = _4384 * _4387;
                      _4390 = _4385 * _4387;
                      _4391 = -0.0f - _4380;
                      _4392 = -0.0f - _4381;
                      _4393 = -0.0f - _4382;
                      _4395 = saturate(dot(float3(_3548, _3549, _3550), float3(_4391, _4392, _4393)));  // [sem: expr_sat]
                      _4397 = saturate(dot(float3(_3598, _3599, _3600), float3(_4388, _4389, _4390)));  // [sem: expr_sat]
                      _4399 = saturate(_3719);  // [sem: _3719_sat]
                      _4410 = 1.0f - ((_4397 * _4397) * 0.9f);
                      _4413 = (0.03183099f / (_4410 * _4410)) * (0.5f / ((((_4395 * 0.9f) + 0.1f) * _3719) + (_4395 * ((_3719 * 0.9f) + 0.1f))));
                      _4439 = _4371;
                      _4440 = _4372;
                      _4441 = _4373;
                      _4442 = dot(float3(_4391, _4392, _4393), float3(_4388, _4389, _4390));
                      _4443 = _4397;
                      _4444 = (((float(half(max((_4413 * _3515), 0.0f) * _4399)) - _4368) * 0.875f) + _4368);
                      _4445 = (((float(half(max((_4413 * _3516), 0.0f) * _4399)) - _4369) * 0.875f) + _4369);
                      _4446 = (((float(half(max((_4413 * _3517), 0.0f) * _4399)) - _4370) * 0.875f) + _4370);
                    } else {
                      _4439 = _4371;
                      _4440 = _4372;
                      _4441 = _4373;
                      _4442 = _3724;
                      _4443 = _3723;
                      _4444 = _4368;
                      _4445 = _4369;
                      _4446 = _4370;
                    }
                  }
                }
              }
            } else {
              _4439 = _4020;
              _4440 = _4021;
              _4441 = _4022;
              _4442 = _3724;
              _4443 = _3723;
              _4444 = _4017;
              _4445 = _4018;
              _4446 = _4019;
            }
            _4468 = select(_4026, _4197, _4444) * _3512;
            _4469 = select(_4026, _4198, _4445) * _3513;
            _4470 = select(_4026, _4199, _4446) * _3514;
            _4478 = _4442;
            _4479 = _4443;
            _4480 = select(_4026, 0.0f, _4014);
            _4481 = select(_4026, 0.0f, _4015);
            _4482 = select(_4026, 0.0f, _4016);
            _4483 = select(_4026, (_4468 + _4194), _4468);
            _4484 = select(_4026, (_4469 + _4195), _4469);
            _4485 = select(_4026, (_4470 + _4196), _4470);
            _4486 = (select(_4026, _4200, (-0.0f - min(-0.0f, (-0.0f - _4439)))) * _3512);
            _4487 = (select(_4026, _4201, (-0.0f - min(-0.0f, (-0.0f - _4440)))) * _3513);
            _4488 = (select(_4026, _4202, (-0.0f - min(-0.0f, (-0.0f - _4441)))) * _3514);
          } else {
            _4478 = _3724;
            _4479 = _3723;
            _4480 = _4014;
            _4481 = _4015;
            _4482 = _4016;
            _4483 = _4017;
            _4484 = _4018;
            _4485 = _4019;
            _4486 = _4020;
            _4487 = _4021;
            _4488 = _4022;
          }
        }
      } else {
        _4478 = _3724;
        _4479 = _3723;
        _4480 = _4014;
        _4481 = _4015;
        _4482 = _4016;
        _4483 = _4017;
        _4484 = _4018;
        _4485 = _4019;
        _4486 = _4020;
        _4487 = _4021;
        _4488 = _4022;
      }
    }
    if (_3687) {
      _4492 = max(0.0f, (0.3f - _3718)) * 0.23190688f;
      _4500 = ((_4492 * _3512) + _4486);
      _4501 = ((_4492 * _3513) + _4487);
      _4502 = ((_4492 * _3514) + _4488);
    } else {
      _4500 = _4486;
      _4501 = _4487;
      _4502 = _4488;
    }
    _4504 = 1.0f - (_4478 * 0.85f);
    if (_3634) {
      _4508 = max(4.0f, _3692);
      _4509 = _4508 * _4508;
      _4511 = exp2(_4509 * -225.4211f);
      _4516 = exp2(_4509 * -29.807749f);
      _4524 = exp2(_4509 * -7.7149463f);
      _4530 = exp2(_4509 * -2.5444357f);
      _4532 = _4530 * 0.007f;
      _4537 = exp2(_4509 * -0.72497237f);
      _4552 = saturate(dot(float3(_3704, _3705, _3706), float3((-0.0f - _2705), (-0.0f - _2706), (-0.0f - _2707))) + 0.3f) * 0.31830987f;
      _4840 = ((_4552 * ((((((_4516 * 0.1f) + (_4511 * 0.233f)) + (_4524 * 0.118f)) + (_4530 * 0.113f)) + (_4537 * 0.358f)) + (exp2(_4509 * -0.19469568f) * 0.078f))) + _4500);
      _4841 = ((_4552 * (((((_4516 * 0.336f) + (_4511 * 0.455f)) + (_4524 * 0.198f)) + _4532) + (_4537 * 0.004f))) + _4501);
      _4842 = ((_4552 * (((_4516 * 0.344f) + (_4511 * 0.649f)) + _4532)) + _4502);
      _4843 = _4840 * _3707;
      _4844 = _4841 * _3708;
      _4845 = _4842 * _3709;
      _4847 = (_4483 * _3707) * _3512;
      _4849 = (_4484 * _3708) * _3513;
      _4851 = (_4485 * _3709) * _3514;
      bool __branch_chain_4839;
      if (_3565 == 97) {
        _4867 = _4847;
        _4868 = _4849;
        _4869 = _4851;
        _4870 = _4843;
        _4871 = _4844;
        _4872 = _4845;
        _4873 = _4480;
        _4874 = _4481;
        _4875 = _4482;
        _4876 = _3512;
        _4877 = _3513;
        _4878 = _3514;
        __branch_chain_4839 = true;
      } else {
        _4854 = _4847;
        _4855 = _4849;
        _4856 = _4851;
        _4857 = _4843;
        _4858 = _4844;
        _4859 = _4845;
        _4860 = _4480;
        _4861 = _4481;
        _4862 = _4482;
        _4863 = _3512;
        _4864 = _3513;
        _4865 = _3514;
        if (_3669) {
          _4867 = _4854;
          _4868 = _4855;
          _4869 = _4856;
          _4870 = _4857;
          _4871 = _4858;
          _4872 = _4859;
          _4873 = _4860;
          _4874 = _4861;
          _4875 = _4862;
          _4876 = _4863;
          _4877 = _4864;
          _4878 = _4865;
          __branch_chain_4839 = true;
        } else {
          _5008 = _4857;
          _5009 = _4858;
          _5010 = _4859;
          _5011 = _4860;
          _5012 = _4861;
          _5013 = _4862;
          _5014 = _4854;
          _5015 = _4855;
          _5016 = _4856;
          __branch_chain_4839 = false;
        }
      }
      if (__branch_chain_4839) {
        if ((_123 < 1000.0f) && (_3208 == 0.0h)) {
          if (!(abs(_2706) > 0.99f)) {
            _4886 = -0.0f - _2707;
            _4888 = rsqrt(dot(float3(_4886, 0.0f, _2705), float3(_4886, 0.0f, _2705)));  // [sem: invLength]
            _4892 = (_4888 * _4886);
            _4893 = (_4888 * _2705);
          } else {
            _4892 = 1.0f;
            _4893 = 0.0f;
          }
          _4895 = -0.0f - (_2706 * _4893);
          _4898 = (_4893 * _2705) - (_4892 * _2707);
          _4899 = _4892 * _2706;
          _4901 = rsqrt(dot(float3(_4895, _4898, _4899), float3(_4895, _4898, _4899)));  // [sem: invLength]
          // [sem: _3__36__0__0__g_blueNoise_sampleLod]
          _4909 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_4892, 0.0f, _4893), float3(_3297, _3298, _3300)), dot(float3((_4901 * _4895), (_4898 * _4901), (_4901 * _4899)), float3(_3297, _3298, _3300))), 0.0f);
          _4913 = _4909.x + -0.5f;
          _4914 = _4909.y + -0.5f;
          _4915 = _4909.z + -0.5f;
          _4917 = rsqrt(dot(float3(_4913, _4914, _4915), float3(_4913, _4914, _4915)));  // [sem: invLength]
          _4921 = (_4913 * _4917) + _3598;
          _4922 = (_4914 * _4917) + _3599;
          _4923 = (_4915 * _4917) + _3600;
          _4925 = rsqrt(dot(float3(_4921, _4922, _4923), float3(_4921, _4922, _4923)));  // [sem: invLength]
          _4926 = _4921 * _4925;
          _4927 = _4922 * _4925;
          _4928 = _4923 * _4925;
          _4940 = abs(((_104 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
          _4941 = abs(1.0f - ((_105 * 2.0f) * _bufferSizeAndInvSize.w));
          _4944 = saturate(_4940 * _4940);  // [sem: expr_sat]
          _4945 = saturate(_4941 * _4941);  // [sem: expr_sat]
          _4959 = dot(float3((-0.0f - _4926), (-0.0f - _4927), (-0.0f - _4928)), float3(_3704, _3705, _3706));
          _4961 = saturate(dot(float3(_4926, _4927, _4928), float3(_1068, _1069, _1070)));  // [sem: expr_sat]
          _4963 = saturate(1.0f - _4478);  // [sem: expr_sat]
          _4964 = _4963 * _4963;
          _4966 = (_4964 * _4964) * _4963;
          _4982 = 1.0f - ((_4479 * _4479) * 0.9999f);
          _4989 = (max((((3.1830987e-05f / (_4982 * _4982)) * (0.5f / ((((_4961 * 0.9999f) + 0.0001f) * _4959) + (_4961 * ((_4959 * 0.9999f) + 0.0001f))))) * (lerp(_4966, 1.0f, 0.08f))), 0.0f) * saturate(_4959)) + (exp2(log2(saturate(dot(float3(_1068, _1069, _1070), float3(_4926, _4927, _4928)))) * 1024.0f) * 50.0f);
          // [sem: expr_sat]
          _4994 = saturate(1.0f - (_123 * 0.001f)) * ((1.0f - ((_4945 * _4945) * (3.0f - (_4945 * 2.0f)))) * (1.0f - ((_4944 * _4944) * (3.0f - (_4944 * 2.0f)))));
          _5008 = _4870;
          _5009 = _4871;
          _5010 = _4872;
          _5011 = _4873;
          _5012 = _4874;
          _5013 = _4875;
          _5014 = ((((_4994 * _3707) * _4876) * _4989) + _4867);
          _5015 = ((((_4994 * _3708) * _4877) * _4989) + _4868);
          _5016 = ((((_4994 * _3709) * _4878) * _4989) + _4869);
        } else {
          _5008 = _4870;
          _5009 = _4871;
          _5010 = _4872;
          _5011 = _4873;
          _5012 = _4874;
          _5013 = _4875;
          _5014 = _4867;
          _5015 = _4868;
          _5016 = _4869;
        }
      }
    } else {
      if (_3729) {
        _4562 = dot(float3(_3515, _3516, _3517), float3(0.212671f, 0.71516f, 0.072169f)) * _renderParams2.w;
        _4565 = _4562 + (_3511 - (_4562 * _3511));
        _4572 = (pow(_3512, 1.2f));
        _4573 = (pow(_3513, 1.2f));
        _4574 = (pow(_3514, 1.2f));
        _4580 = saturate(abs(dot(float3(_3704, _3705, _3706), float3(_985, _986, _987))));  // [sem: expr_sat]
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _4589 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_4580, _3525, saturate(sqrt(sqrt(_3515)))), 0.0f);
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _4592 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_4580, _3525, saturate(sqrt(sqrt(_3516)))), 0.0f);
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _4595 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_4580, _3525, saturate(sqrt(sqrt(_3517)))), 0.0f);
        _4604 = min(0.99f, _4589.x);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _4605 = min(0.99f, _4592.x);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _4606 = min(0.99f, _4595.x);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _4607 = min(0.99f, _4589.y);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _4608 = min(0.99f, _4592.y);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _4609 = min(0.99f, _4595.y);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _4610 = _4604 * _4604;
        _4611 = _4605 * _4605;
        _4612 = _4606 * _4606;
        _4613 = _4607 * _4607;
        _4614 = _4608 * _4608;
        _4615 = _4609 * _4609;
        _4616 = _4613 * _4607;
        _4617 = _4614 * _4608;
        _4618 = _4615 * _4609;
        _4619 = 1.0f - _4610;
        _4620 = 1.0f - _4611;
        _4621 = 1.0f - _4612;
        _4631 = _4619 * _4619;
        _4632 = _4620 * _4620;
        _4633 = _4621 * _4621;
        _4634 = _4631 * _4619;
        _4635 = _4632 * _4620;
        _4636 = _4633 * _4621;
        _4644 = min(max(_3525, 0.18f), 0.6f);
        _4645 = _4644 * _4644;
        _4646 = _4645 * 0.25f;
        _4647 = _4645 * 4.0f;
        _4649 = (_4605 + _4604) + _4606;
        _4650 = _4604 / _4649;
        _4651 = _4605 / _4649;
        _4652 = _4606 / _4649;
        _4653 = dot(float3(_4645, _4646, _4647), float3(_4650, _4651, _4652));
        _4654 = _4653 * _4653;
        _4658 = (asin(min(max(dot(float3(_985, _986, _987), float3(_1068, _1069, _1070)), -1.0f), 1.0f)) + asin(min(max(dot(float3(_985, _986, _987), float3(_3704, _3705, _3706)), -1.0f), 1.0f))) * 0.5f;
        _4659 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_4650, _4651, _4652));
        _4669 = _4659 * _4659;
        _4692 = (_4608 + _4607) + _4609;
        _4696 = dot(float3(_4645, _4646, _4647), float3((_4607 / _4692), (_4608 / _4692), (_4609 / _4692)));
        _4700 = sqrt((_4696 * _4696) + (_4654 * 2.0f));
        _4718 = (_4696 * 3.0f) + (_4653 * 2.0f);
        _4725 = (((_4616 + _4607) * ((_4610 * 0.7f) + 1.0f)) * _4700) / ((_4718 * _4616) + _4607);
        _4726 = (((_4617 + _4608) * ((_4611 * 0.7f) + 1.0f)) * _4700) / ((_4718 * _4617) + _4608);
        _4727 = (((_4618 + _4609) * ((_4612 * 0.7f) + 1.0f)) * _4700) / ((_4718 * _4618) + _4609);
        _4731 = _4658 - (((_4669 * (((_4610 * 4.0f) * _4613) + (_4631 * 2.0f))) * (1.0f - ((_4613 * 2.0f) / _4631))) / _4634);
        _4738 = _4658 - (((_4669 * (((_4611 * 4.0f) * _4614) + (_4632 * 2.0f))) * (1.0f - ((_4614 * 2.0f) / _4632))) / _4635);
        _4745 = _4658 - (((_4669 * (((_4612 * 4.0f) * _4615) + (_4633 * 2.0f))) * (1.0f - ((_4615 * 2.0f) / _4633))) / _4636);
        _4753 = (1.0f - _983) * 2.1f;
        _4774 = (_983 * 0.31830987f) * saturate(_3718);
        _4821 = _4572;
        _4822 = _4573;
        _4823 = _4574;
        _4824 = (((_4565 * _3707) * _4572) * ((((((_4616 * _4610) / _4634) + ((_4607 * _4610) / _4619)) * _4753) * exp2((((_4731 * _4731) * -0.5f) / ((_4725 * _4725) + _4654)) * 1.442695f)) + _4480));
        _4825 = (((_4565 * _3708) * _4573) * ((((((_4617 * _4611) / _4635) + ((_4608 * _4611) / _4620)) * _4753) * exp2((((_4738 * _4738) * -0.5f) / ((_4726 * _4726) + _4654)) * 1.442695f)) + _4481));
        _4826 = (((_4565 * _3709) * _4574) * ((((((_4618 * _4612) / _4636) + ((_4609 * _4612) / _4621)) * _4753) * exp2((((_4745 * _4745) * -0.5f) / ((_4727 * _4727) + _4654)) * 1.442695f)) + _4482));
        _4827 = (_4774 * _4572);
        _4828 = (_4774 * _4573);
        _4829 = (_4774 * _4574);
        _4854 = ((_4483 * _3707) * _4821);
        _4855 = ((_4484 * _3708) * _4822);
        _4856 = ((_4485 * _3709) * _4823);
        _4857 = (_4827 * _3707);
        _4858 = (_4828 * _3708);
        _4859 = (_4829 * _3709);
        _4860 = _4824;
        _4861 = _4825;
        _4862 = _4826;
        _4863 = _4821;
        _4864 = _4822;
        _4865 = _4823;
        if (_3669) {
          _4867 = _4854;
          _4868 = _4855;
          _4869 = _4856;
          _4870 = _4857;
          _4871 = _4858;
          _4872 = _4859;
          _4873 = _4860;
          _4874 = _4861;
          _4875 = _4862;
          _4876 = _4863;
          _4877 = _4864;
          _4878 = _4865;
          if ((_123 < 1000.0f) && (_3208 == 0.0h)) {
            if (!(abs(_2706) > 0.99f)) {
              _4886 = -0.0f - _2707;
              _4888 = rsqrt(dot(float3(_4886, 0.0f, _2705), float3(_4886, 0.0f, _2705)));  // [sem: invLength]
              _4892 = (_4888 * _4886);
              _4893 = (_4888 * _2705);
            } else {
              _4892 = 1.0f;
              _4893 = 0.0f;
            }
            _4895 = -0.0f - (_2706 * _4893);
            _4898 = (_4893 * _2705) - (_4892 * _2707);
            _4899 = _4892 * _2706;
            _4901 = rsqrt(dot(float3(_4895, _4898, _4899), float3(_4895, _4898, _4899)));  // [sem: invLength]
            // [sem: _3__36__0__0__g_blueNoise_sampleLod]
            _4909 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_4892, 0.0f, _4893), float3(_3297, _3298, _3300)), dot(float3((_4901 * _4895), (_4898 * _4901), (_4901 * _4899)), float3(_3297, _3298, _3300))), 0.0f);
            _4913 = _4909.x + -0.5f;
            _4914 = _4909.y + -0.5f;
            _4915 = _4909.z + -0.5f;
            _4917 = rsqrt(dot(float3(_4913, _4914, _4915), float3(_4913, _4914, _4915)));  // [sem: invLength]
            _4921 = (_4913 * _4917) + _3598;
            _4922 = (_4914 * _4917) + _3599;
            _4923 = (_4915 * _4917) + _3600;
            _4925 = rsqrt(dot(float3(_4921, _4922, _4923), float3(_4921, _4922, _4923)));  // [sem: invLength]
            _4926 = _4921 * _4925;
            _4927 = _4922 * _4925;
            _4928 = _4923 * _4925;
            _4940 = abs(((_104 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
            _4941 = abs(1.0f - ((_105 * 2.0f) * _bufferSizeAndInvSize.w));
            _4944 = saturate(_4940 * _4940);  // [sem: expr_sat]
            _4945 = saturate(_4941 * _4941);  // [sem: expr_sat]
            _4959 = dot(float3((-0.0f - _4926), (-0.0f - _4927), (-0.0f - _4928)), float3(_3704, _3705, _3706));
            _4961 = saturate(dot(float3(_4926, _4927, _4928), float3(_1068, _1069, _1070)));  // [sem: expr_sat]
            _4963 = saturate(1.0f - _4478);  // [sem: expr_sat]
            _4964 = _4963 * _4963;
            _4966 = (_4964 * _4964) * _4963;
            _4982 = 1.0f - ((_4479 * _4479) * 0.9999f);
            _4989 = (max((((3.1830987e-05f / (_4982 * _4982)) * (0.5f / ((((_4961 * 0.9999f) + 0.0001f) * _4959) + (_4961 * ((_4959 * 0.9999f) + 0.0001f))))) * (lerp(_4966, 1.0f, 0.08f))), 0.0f) * saturate(_4959)) + (exp2(log2(saturate(dot(float3(_1068, _1069, _1070), float3(_4926, _4927, _4928)))) * 1024.0f) * 50.0f);
            // [sem: expr_sat]
            _4994 = saturate(1.0f - (_123 * 0.001f)) * ((1.0f - ((_4945 * _4945) * (3.0f - (_4945 * 2.0f)))) * (1.0f - ((_4944 * _4944) * (3.0f - (_4944 * 2.0f)))));
            _5008 = _4870;
            _5009 = _4871;
            _5010 = _4872;
            _5011 = _4873;
            _5012 = _4874;
            _5013 = _4875;
            _5014 = ((((_4994 * _3707) * _4876) * _4989) + _4867);
            _5015 = ((((_4994 * _3708) * _4877) * _4989) + _4868);
            _5016 = ((((_4994 * _3709) * _4878) * _4989) + _4869);
          } else {
            _5008 = _4870;
            _5009 = _4871;
            _5010 = _4872;
            _5011 = _4873;
            _5012 = _4874;
            _5013 = _4875;
            _5014 = _4867;
            _5015 = _4868;
            _5016 = _4869;
          }
        } else {
          _5008 = _4857;
          _5009 = _4858;
          _5010 = _4859;
          _5011 = _4860;
          _5012 = _4861;
          _5013 = _4862;
          _5014 = _4854;
          _5015 = _4855;
          _5016 = _4856;
        }
      } else {
        if (_3686) {
          if (_3565 == 97) {
            _4867 = ((_4483 * _3707) * _3512);
            _4868 = ((_4484 * _3708) * _3513);
            _4869 = ((_4485 * _3709) * _3514);
            _4870 = (_4500 * _3707);
            _4871 = (_4501 * _3708);
            _4872 = (_4502 * _3709);
            _4873 = _4480;
            _4874 = _4481;
            _4875 = _4482;
            _4876 = _3512;
            _4877 = _3513;
            _4878 = _3514;
            if ((_123 < 1000.0f) && (_3208 == 0.0h)) {
              if (!(abs(_2706) > 0.99f)) {
                _4886 = -0.0f - _2707;
                _4888 = rsqrt(dot(float3(_4886, 0.0f, _2705), float3(_4886, 0.0f, _2705)));  // [sem: invLength]
                _4892 = (_4888 * _4886);
                _4893 = (_4888 * _2705);
              } else {
                _4892 = 1.0f;
                _4893 = 0.0f;
              }
              _4895 = -0.0f - (_2706 * _4893);
              _4898 = (_4893 * _2705) - (_4892 * _2707);
              _4899 = _4892 * _2706;
              _4901 = rsqrt(dot(float3(_4895, _4898, _4899), float3(_4895, _4898, _4899)));  // [sem: invLength]
              // [sem: _3__36__0__0__g_blueNoise_sampleLod]
              _4909 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_4892, 0.0f, _4893), float3(_3297, _3298, _3300)), dot(float3((_4901 * _4895), (_4898 * _4901), (_4901 * _4899)), float3(_3297, _3298, _3300))), 0.0f);
              _4913 = _4909.x + -0.5f;
              _4914 = _4909.y + -0.5f;
              _4915 = _4909.z + -0.5f;
              _4917 = rsqrt(dot(float3(_4913, _4914, _4915), float3(_4913, _4914, _4915)));  // [sem: invLength]
              _4921 = (_4913 * _4917) + _3598;
              _4922 = (_4914 * _4917) + _3599;
              _4923 = (_4915 * _4917) + _3600;
              _4925 = rsqrt(dot(float3(_4921, _4922, _4923), float3(_4921, _4922, _4923)));  // [sem: invLength]
              _4926 = _4921 * _4925;
              _4927 = _4922 * _4925;
              _4928 = _4923 * _4925;
              _4940 = abs(((_104 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
              _4941 = abs(1.0f - ((_105 * 2.0f) * _bufferSizeAndInvSize.w));
              _4944 = saturate(_4940 * _4940);  // [sem: expr_sat]
              _4945 = saturate(_4941 * _4941);  // [sem: expr_sat]
              _4959 = dot(float3((-0.0f - _4926), (-0.0f - _4927), (-0.0f - _4928)), float3(_3704, _3705, _3706));
              _4961 = saturate(dot(float3(_4926, _4927, _4928), float3(_1068, _1069, _1070)));  // [sem: expr_sat]
              _4963 = saturate(1.0f - _4478);  // [sem: expr_sat]
              _4964 = _4963 * _4963;
              _4966 = (_4964 * _4964) * _4963;
              _4982 = 1.0f - ((_4479 * _4479) * 0.9999f);
              _4989 = (max((((3.1830987e-05f / (_4982 * _4982)) * (0.5f / ((((_4961 * 0.9999f) + 0.0001f) * _4959) + (_4961 * ((_4959 * 0.9999f) + 0.0001f))))) * (lerp(_4966, 1.0f, 0.08f))), 0.0f) * saturate(_4959)) + (exp2(log2(saturate(dot(float3(_1068, _1069, _1070), float3(_4926, _4927, _4928)))) * 1024.0f) * 50.0f);
              // [sem: expr_sat]
              _4994 = saturate(1.0f - (_123 * 0.001f)) * ((1.0f - ((_4945 * _4945) * (3.0f - (_4945 * 2.0f)))) * (1.0f - ((_4944 * _4944) * (3.0f - (_4944 * 2.0f)))));
              _5008 = _4870;
              _5009 = _4871;
              _5010 = _4872;
              _5011 = _4873;
              _5012 = _4874;
              _5013 = _4875;
              _5014 = ((((_4994 * _3707) * _4876) * _4989) + _4867);
              _5015 = ((((_4994 * _3708) * _4877) * _4989) + _4868);
              _5016 = ((((_4994 * _3709) * _4878) * _4989) + _4869);
            } else {
              _5008 = _4870;
              _5009 = _4871;
              _5010 = _4872;
              _5011 = _4873;
              _5012 = _4874;
              _5013 = _4875;
              _5014 = _4867;
              _5015 = _4868;
              _5016 = _4869;
            }
          } else {
            if ((uint)((int)(_3565) + (int)(-105)) < (uint)2) {
              _4821 = _3512;
              _4822 = _3513;
              _4823 = _3514;
              _4824 = _4480;
              _4825 = _4481;
              _4826 = _4482;
              _4827 = _4500;
              _4828 = _4501;
              _4829 = _4502;
              _4854 = ((_4483 * _3707) * _4821);
              _4855 = ((_4484 * _3708) * _4822);
              _4856 = ((_4485 * _3709) * _4823);
              _4857 = (_4827 * _3707);
              _4858 = (_4828 * _3708);
              _4859 = (_4829 * _3709);
              _4860 = _4824;
              _4861 = _4825;
              _4862 = _4826;
              _4863 = _4821;
              _4864 = _4822;
              _4865 = _4823;
              if (_3669) {
                _4867 = _4854;
                _4868 = _4855;
                _4869 = _4856;
                _4870 = _4857;
                _4871 = _4858;
                _4872 = _4859;
                _4873 = _4860;
                _4874 = _4861;
                _4875 = _4862;
                _4876 = _4863;
                _4877 = _4864;
                _4878 = _4865;
                if ((_123 < 1000.0f) && (_3208 == 0.0h)) {
                  if (!(abs(_2706) > 0.99f)) {
                    _4886 = -0.0f - _2707;
                    _4888 = rsqrt(dot(float3(_4886, 0.0f, _2705), float3(_4886, 0.0f, _2705)));  // [sem: invLength]
                    _4892 = (_4888 * _4886);
                    _4893 = (_4888 * _2705);
                  } else {
                    _4892 = 1.0f;
                    _4893 = 0.0f;
                  }
                  _4895 = -0.0f - (_2706 * _4893);
                  _4898 = (_4893 * _2705) - (_4892 * _2707);
                  _4899 = _4892 * _2706;
                  _4901 = rsqrt(dot(float3(_4895, _4898, _4899), float3(_4895, _4898, _4899)));  // [sem: invLength]
                  // [sem: _3__36__0__0__g_blueNoise_sampleLod]
                  _4909 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_4892, 0.0f, _4893), float3(_3297, _3298, _3300)), dot(float3((_4901 * _4895), (_4898 * _4901), (_4901 * _4899)), float3(_3297, _3298, _3300))), 0.0f);
                  _4913 = _4909.x + -0.5f;
                  _4914 = _4909.y + -0.5f;
                  _4915 = _4909.z + -0.5f;
                  _4917 = rsqrt(dot(float3(_4913, _4914, _4915), float3(_4913, _4914, _4915)));  // [sem: invLength]
                  _4921 = (_4913 * _4917) + _3598;
                  _4922 = (_4914 * _4917) + _3599;
                  _4923 = (_4915 * _4917) + _3600;
                  _4925 = rsqrt(dot(float3(_4921, _4922, _4923), float3(_4921, _4922, _4923)));  // [sem: invLength]
                  _4926 = _4921 * _4925;
                  _4927 = _4922 * _4925;
                  _4928 = _4923 * _4925;
                  _4940 = abs(((_104 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
                  _4941 = abs(1.0f - ((_105 * 2.0f) * _bufferSizeAndInvSize.w));
                  _4944 = saturate(_4940 * _4940);  // [sem: expr_sat]
                  _4945 = saturate(_4941 * _4941);  // [sem: expr_sat]
                  _4959 = dot(float3((-0.0f - _4926), (-0.0f - _4927), (-0.0f - _4928)), float3(_3704, _3705, _3706));
                  _4961 = saturate(dot(float3(_4926, _4927, _4928), float3(_1068, _1069, _1070)));  // [sem: expr_sat]
                  _4963 = saturate(1.0f - _4478);  // [sem: expr_sat]
                  _4964 = _4963 * _4963;
                  _4966 = (_4964 * _4964) * _4963;
                  _4982 = 1.0f - ((_4479 * _4479) * 0.9999f);
                  _4989 = (max((((3.1830987e-05f / (_4982 * _4982)) * (0.5f / ((((_4961 * 0.9999f) + 0.0001f) * _4959) + (_4961 * ((_4959 * 0.9999f) + 0.0001f))))) * (lerp(_4966, 1.0f, 0.08f))), 0.0f) * saturate(_4959)) + (exp2(log2(saturate(dot(float3(_1068, _1069, _1070), float3(_4926, _4927, _4928)))) * 1024.0f) * 50.0f);
                  // [sem: expr_sat]
                  _4994 = saturate(1.0f - (_123 * 0.001f)) * ((1.0f - ((_4945 * _4945) * (3.0f - (_4945 * 2.0f)))) * (1.0f - ((_4944 * _4944) * (3.0f - (_4944 * 2.0f)))));
                  _5008 = _4870;
                  _5009 = _4871;
                  _5010 = _4872;
                  _5011 = _4873;
                  _5012 = _4874;
                  _5013 = _4875;
                  _5014 = ((((_4994 * _3707) * _4876) * _4989) + _4867);
                  _5015 = ((((_4994 * _3708) * _4877) * _4989) + _4868);
                  _5016 = ((((_4994 * _3709) * _4878) * _4989) + _4869);
                } else {
                  _5008 = _4870;
                  _5009 = _4871;
                  _5010 = _4872;
                  _5011 = _4873;
                  _5012 = _4874;
                  _5013 = _4875;
                  _5014 = _4867;
                  _5015 = _4868;
                  _5016 = _4869;
                }
              } else {
                _5008 = _4857;
                _5009 = _4858;
                _5010 = _4859;
                _5011 = _4860;
                _5012 = _4861;
                _5013 = _4862;
                _5014 = _4854;
                _5015 = _4855;
                _5016 = _4856;
              }
            } else {
              if (!(_3692 >= 999.9f)) {
                _4805 = ((max(0.002f, _3692) * 0.4f) / ((_3564 * 100.0f) + 0.1f));
              } else {
                _4805 = 1000.0f;
              }
              _4806 = _4805 * _4805;
              _4816 = (((_3564 * 0.25f) * (0.022082746f / (_4504 * _4504))) * max(0.0f, (0.3f - _3718))) * ((exp2(_4806 * -0.48089835f) * 3.0f) + exp2(_4806 * -1.442695f));
              _4840 = (_4816 + _4500);
              _4841 = (_4816 + _4501);
              _4842 = (_4816 + _4502);
              _4843 = _4840 * _3707;
              _4844 = _4841 * _3708;
              _4845 = _4842 * _3709;
              _4847 = (_4483 * _3707) * _3512;
              _4849 = (_4484 * _3708) * _3513;
              _4851 = (_4485 * _3709) * _3514;
              bool __branch_chain_4839;
              if (_3565 == 97) {
                _4867 = _4847;
                _4868 = _4849;
                _4869 = _4851;
                _4870 = _4843;
                _4871 = _4844;
                _4872 = _4845;
                _4873 = _4480;
                _4874 = _4481;
                _4875 = _4482;
                _4876 = _3512;
                _4877 = _3513;
                _4878 = _3514;
                __branch_chain_4839 = true;
              } else {
                _4854 = _4847;
                _4855 = _4849;
                _4856 = _4851;
                _4857 = _4843;
                _4858 = _4844;
                _4859 = _4845;
                _4860 = _4480;
                _4861 = _4481;
                _4862 = _4482;
                _4863 = _3512;
                _4864 = _3513;
                _4865 = _3514;
                if (_3669) {
                  _4867 = _4854;
                  _4868 = _4855;
                  _4869 = _4856;
                  _4870 = _4857;
                  _4871 = _4858;
                  _4872 = _4859;
                  _4873 = _4860;
                  _4874 = _4861;
                  _4875 = _4862;
                  _4876 = _4863;
                  _4877 = _4864;
                  _4878 = _4865;
                  __branch_chain_4839 = true;
                } else {
                  _5008 = _4857;
                  _5009 = _4858;
                  _5010 = _4859;
                  _5011 = _4860;
                  _5012 = _4861;
                  _5013 = _4862;
                  _5014 = _4854;
                  _5015 = _4855;
                  _5016 = _4856;
                  __branch_chain_4839 = false;
                }
              }
              if (__branch_chain_4839) {
                if ((_123 < 1000.0f) && (_3208 == 0.0h)) {
                  if (!(abs(_2706) > 0.99f)) {
                    _4886 = -0.0f - _2707;
                    _4888 = rsqrt(dot(float3(_4886, 0.0f, _2705), float3(_4886, 0.0f, _2705)));  // [sem: invLength]
                    _4892 = (_4888 * _4886);
                    _4893 = (_4888 * _2705);
                  } else {
                    _4892 = 1.0f;
                    _4893 = 0.0f;
                  }
                  _4895 = -0.0f - (_2706 * _4893);
                  _4898 = (_4893 * _2705) - (_4892 * _2707);
                  _4899 = _4892 * _2706;
                  _4901 = rsqrt(dot(float3(_4895, _4898, _4899), float3(_4895, _4898, _4899)));  // [sem: invLength]
                  // [sem: _3__36__0__0__g_blueNoise_sampleLod]
                  _4909 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_4892, 0.0f, _4893), float3(_3297, _3298, _3300)), dot(float3((_4901 * _4895), (_4898 * _4901), (_4901 * _4899)), float3(_3297, _3298, _3300))), 0.0f);
                  _4913 = _4909.x + -0.5f;
                  _4914 = _4909.y + -0.5f;
                  _4915 = _4909.z + -0.5f;
                  _4917 = rsqrt(dot(float3(_4913, _4914, _4915), float3(_4913, _4914, _4915)));  // [sem: invLength]
                  _4921 = (_4913 * _4917) + _3598;
                  _4922 = (_4914 * _4917) + _3599;
                  _4923 = (_4915 * _4917) + _3600;
                  _4925 = rsqrt(dot(float3(_4921, _4922, _4923), float3(_4921, _4922, _4923)));  // [sem: invLength]
                  _4926 = _4921 * _4925;
                  _4927 = _4922 * _4925;
                  _4928 = _4923 * _4925;
                  _4940 = abs(((_104 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
                  _4941 = abs(1.0f - ((_105 * 2.0f) * _bufferSizeAndInvSize.w));
                  _4944 = saturate(_4940 * _4940);  // [sem: expr_sat]
                  _4945 = saturate(_4941 * _4941);  // [sem: expr_sat]
                  _4959 = dot(float3((-0.0f - _4926), (-0.0f - _4927), (-0.0f - _4928)), float3(_3704, _3705, _3706));
                  _4961 = saturate(dot(float3(_4926, _4927, _4928), float3(_1068, _1069, _1070)));  // [sem: expr_sat]
                  _4963 = saturate(1.0f - _4478);  // [sem: expr_sat]
                  _4964 = _4963 * _4963;
                  _4966 = (_4964 * _4964) * _4963;
                  _4982 = 1.0f - ((_4479 * _4479) * 0.9999f);
                  _4989 = (max((((3.1830987e-05f / (_4982 * _4982)) * (0.5f / ((((_4961 * 0.9999f) + 0.0001f) * _4959) + (_4961 * ((_4959 * 0.9999f) + 0.0001f))))) * (lerp(_4966, 1.0f, 0.08f))), 0.0f) * saturate(_4959)) + (exp2(log2(saturate(dot(float3(_1068, _1069, _1070), float3(_4926, _4927, _4928)))) * 1024.0f) * 50.0f);
                  // [sem: expr_sat]
                  _4994 = saturate(1.0f - (_123 * 0.001f)) * ((1.0f - ((_4945 * _4945) * (3.0f - (_4945 * 2.0f)))) * (1.0f - ((_4944 * _4944) * (3.0f - (_4944 * 2.0f)))));
                  _5008 = _4870;
                  _5009 = _4871;
                  _5010 = _4872;
                  _5011 = _4873;
                  _5012 = _4874;
                  _5013 = _4875;
                  _5014 = ((((_4994 * _3707) * _4876) * _4989) + _4867);
                  _5015 = ((((_4994 * _3708) * _4877) * _4989) + _4868);
                  _5016 = ((((_4994 * _3709) * _4878) * _4989) + _4869);
                } else {
                  _5008 = _4870;
                  _5009 = _4871;
                  _5010 = _4872;
                  _5011 = _4873;
                  _5012 = _4874;
                  _5013 = _4875;
                  _5014 = _4867;
                  _5015 = _4868;
                  _5016 = _4869;
                }
              }
            }
          }
        } else {
          _4840 = _4500;
          _4841 = _4501;
          _4842 = _4502;
          _4843 = _4840 * _3707;
          _4844 = _4841 * _3708;
          _4845 = _4842 * _3709;
          _4847 = (_4483 * _3707) * _3512;
          _4849 = (_4484 * _3708) * _3513;
          _4851 = (_4485 * _3709) * _3514;
          bool __branch_chain_4839;
          if (_3565 == 97) {
            _4867 = _4847;
            _4868 = _4849;
            _4869 = _4851;
            _4870 = _4843;
            _4871 = _4844;
            _4872 = _4845;
            _4873 = _4480;
            _4874 = _4481;
            _4875 = _4482;
            _4876 = _3512;
            _4877 = _3513;
            _4878 = _3514;
            __branch_chain_4839 = true;
          } else {
            _4854 = _4847;
            _4855 = _4849;
            _4856 = _4851;
            _4857 = _4843;
            _4858 = _4844;
            _4859 = _4845;
            _4860 = _4480;
            _4861 = _4481;
            _4862 = _4482;
            _4863 = _3512;
            _4864 = _3513;
            _4865 = _3514;
            if (_3669) {
              _4867 = _4854;
              _4868 = _4855;
              _4869 = _4856;
              _4870 = _4857;
              _4871 = _4858;
              _4872 = _4859;
              _4873 = _4860;
              _4874 = _4861;
              _4875 = _4862;
              _4876 = _4863;
              _4877 = _4864;
              _4878 = _4865;
              __branch_chain_4839 = true;
            } else {
              _5008 = _4857;
              _5009 = _4858;
              _5010 = _4859;
              _5011 = _4860;
              _5012 = _4861;
              _5013 = _4862;
              _5014 = _4854;
              _5015 = _4855;
              _5016 = _4856;
              __branch_chain_4839 = false;
            }
          }
          if (__branch_chain_4839) {
            if ((_123 < 1000.0f) && (_3208 == 0.0h)) {
              if (!(abs(_2706) > 0.99f)) {
                _4886 = -0.0f - _2707;
                _4888 = rsqrt(dot(float3(_4886, 0.0f, _2705), float3(_4886, 0.0f, _2705)));  // [sem: invLength]
                _4892 = (_4888 * _4886);
                _4893 = (_4888 * _2705);
              } else {
                _4892 = 1.0f;
                _4893 = 0.0f;
              }
              _4895 = -0.0f - (_2706 * _4893);
              _4898 = (_4893 * _2705) - (_4892 * _2707);
              _4899 = _4892 * _2706;
              _4901 = rsqrt(dot(float3(_4895, _4898, _4899), float3(_4895, _4898, _4899)));  // [sem: invLength]
              // [sem: _3__36__0__0__g_blueNoise_sampleLod]
              _4909 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_4892, 0.0f, _4893), float3(_3297, _3298, _3300)), dot(float3((_4901 * _4895), (_4898 * _4901), (_4901 * _4899)), float3(_3297, _3298, _3300))), 0.0f);
              _4913 = _4909.x + -0.5f;
              _4914 = _4909.y + -0.5f;
              _4915 = _4909.z + -0.5f;
              _4917 = rsqrt(dot(float3(_4913, _4914, _4915), float3(_4913, _4914, _4915)));  // [sem: invLength]
              _4921 = (_4913 * _4917) + _3598;
              _4922 = (_4914 * _4917) + _3599;
              _4923 = (_4915 * _4917) + _3600;
              _4925 = rsqrt(dot(float3(_4921, _4922, _4923), float3(_4921, _4922, _4923)));  // [sem: invLength]
              _4926 = _4921 * _4925;
              _4927 = _4922 * _4925;
              _4928 = _4923 * _4925;
              _4940 = abs(((_104 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
              _4941 = abs(1.0f - ((_105 * 2.0f) * _bufferSizeAndInvSize.w));
              _4944 = saturate(_4940 * _4940);  // [sem: expr_sat]
              _4945 = saturate(_4941 * _4941);  // [sem: expr_sat]
              _4959 = dot(float3((-0.0f - _4926), (-0.0f - _4927), (-0.0f - _4928)), float3(_3704, _3705, _3706));
              _4961 = saturate(dot(float3(_4926, _4927, _4928), float3(_1068, _1069, _1070)));  // [sem: expr_sat]
              _4963 = saturate(1.0f - _4478);  // [sem: expr_sat]
              _4964 = _4963 * _4963;
              _4966 = (_4964 * _4964) * _4963;
              _4982 = 1.0f - ((_4479 * _4479) * 0.9999f);
              _4989 = (max((((3.1830987e-05f / (_4982 * _4982)) * (0.5f / ((((_4961 * 0.9999f) + 0.0001f) * _4959) + (_4961 * ((_4959 * 0.9999f) + 0.0001f))))) * (lerp(_4966, 1.0f, 0.08f))), 0.0f) * saturate(_4959)) + (exp2(log2(saturate(dot(float3(_1068, _1069, _1070), float3(_4926, _4927, _4928)))) * 1024.0f) * 50.0f);
              // [sem: expr_sat]
              _4994 = saturate(1.0f - (_123 * 0.001f)) * ((1.0f - ((_4945 * _4945) * (3.0f - (_4945 * 2.0f)))) * (1.0f - ((_4944 * _4944) * (3.0f - (_4944 * 2.0f)))));
              _5008 = _4870;
              _5009 = _4871;
              _5010 = _4872;
              _5011 = _4873;
              _5012 = _4874;
              _5013 = _4875;
              _5014 = ((((_4994 * _3707) * _4876) * _4989) + _4867);
              _5015 = ((((_4994 * _3708) * _4877) * _4989) + _4868);
              _5016 = ((((_4994 * _3709) * _4878) * _4989) + _4869);
            } else {
              _5008 = _4870;
              _5009 = _4871;
              _5010 = _4872;
              _5011 = _4873;
              _5012 = _4874;
              _5013 = _4875;
              _5014 = _4867;
              _5015 = _4868;
              _5016 = _4869;
            }
          }
        }
      }
    }
    _5023 = _5008 + _3209;
    _5024 = _5009 + _3210;
    _5025 = _5010 + _3211;
    _5028 = (uint)((uint)(_frameNumber.x)) * (uint)(13);
    [branch]
    if ((((int)((int)((uint)((uint)(_5028)) + (uint)((uint)(_101)))) | (int)((int)((uint)((uint)(_5028)) + (uint)((uint)(_103))))) & 31) == 0) {
      __3__38__0__1__g_sceneColorLightingOnlyForAwbUAV[int2(((int)(_101) >> 5), ((int)(_103) >> 5))] = float4((half)(half(_5023)), (half)(half(_5024)), (half)(half(_5025)), 1.0f);
    }
    _5043 = ((uint)(_3565 & 24) > (uint)23);
    if (_3637) {
      _5060 = saturate(exp2((_3632 * _3632) * (_123 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _5060 = select((_cavityParams.z > 0.0f), select(_188, 0.0f, _1062), 1.0f);  // [sem: expr_sat]
    }
    _5075 = select(_3634, 1.0f, (select((_cavityParams.x == 0.0f), 1.0f, _5060) * select((_187 && _5043), (1.0f - _1062), 1.0f)));
    _5079 = min(60000.0f, (_5075 * (((_2924 * _2661) * _2929) - min(0.0f, (-0.0f - _5014)))));
    _5080 = min(60000.0f, (_5075 * (((_2925 * _2662) * _2929) - min(0.0f, (-0.0f - _5015)))));
    _5081 = min(60000.0f, (_5075 * (((_2926 * _2663) * _2929) - min(0.0f, (-0.0f - _5016)))));
    _5084 = 1.0f - _renderParams.x;
    _5091 = half((_renderParams.x * _3515) + _5084);
    _5092 = half((_renderParams.x * _3516) + _5084);
    _5093 = half((_renderParams.x * _3517) + _5084);
    if (_3634 && (_renderParams2.x == 0.0f)) {
      _5109 = (half)(exp2((half)((half)(log2(_5091)) * 0.5h)));
      _5110 = (half)(exp2((half)((half)(log2(_5092)) * 0.5h)));
      _5111 = (half)(exp2((half)((half)(log2(_5093)) * 0.5h)));
    } else {
      _5109 = _5091;
      _5110 = _5092;
      _5111 = _5093;
    }
    _5116 = select(((_3633 == 54) || ((_3565 & -5) == 33)), 0.0f, _3208);
    _5117 = float(_5109);
    _5118 = float(_5110);
    _5119 = float(_5111);
    if (_3606) {
      _5126 = saturate(((_5118 + _5117) + _5119) * 1.2f);  // [sem: expr_sat]
    } else {
      _5126 = 1.0f;  // [sem: expr_sat]
    }
    _5127 = float(_5116);
    _5133 = (0.7f / min(max(max(max(_5117, _5118), _5119), 0.01f), 0.7f)) * _5126;
    _5140 = ((_5133 * _5117) + -0.04f) * _5127;
    _5141 = ((_5133 * _5118) + -0.04f) * _5127;
    _5142 = ((_5133 * _5119) + -0.04f) * _5127;
    _5143 = _5140 + 0.04f;
    _5144 = _5141 + 0.04f;
    _5145 = _5142 + 0.04f;
    if (_3663 || (_3728 || (_3727 || ((_3565 == 33) || (_3565 == 54))))) {
      // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
      _5157 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__3__40__0__0__g_samplerClamp, float2(min(0.99f, _1076), (1.0f - max(0.02f, float(_279)))), 0.0f);
      _5161 = _5157.x;
      _5162 = _5157.y;
    } else {
      _5161 = _2922;
      _5162 = _2923;
    }
    _5166 = (_5161 * _5143) + _5162;
    _5167 = (_5161 * _5144) + _5162;
    _5168 = (_5161 * _5145) + _5162;
    _5170 = (1.0f - _5161) - _5162;
    _5177 = ((0.96f - _5140) * 0.04761905f) + _5143;
    _5178 = ((0.96f - _5141) * 0.04761905f) + _5144;
    _5179 = ((0.96f - _5142) * 0.04761905f) + _5145;
    _5196 = saturate(1.0f - _3203);  // [sem: expr_sat]
    _5197 = (((_5166 * _5177) / (1.0f - (_5170 * _5177))) * _5170) * _5196;
    _5198 = (((_5167 * _5178) / (1.0f - (_5170 * _5178))) * _5170) * _5196;
    _5199 = (((_5168 * _5179) / (1.0f - (_5170 * _5179))) * _5170) * _5196;
    _5210 = float(1.0h - _5116);
    _5220 = half(((_5117 * _5210) * saturate((1.0f - _5166) - _5197)) + _5197);
    _5221 = half(((_5118 * _5210) * saturate((1.0f - _5167) - _5198)) + _5198);
    _5222 = half(((_5119 * _5210) * saturate((1.0f - _5168) - _5199)) + _5199);
    _5224 = float(_5220);
    _5225 = float(_5221);
    _5226 = float(_5222);
    if (_3565 == 65) {
      _5230 = max(1e-06f, _exposure2.x);
      _5238 = ((pow(_3721, 16.0f)) * 50.265484f) / (((_5230 * _5230) * 1e+06f) + 1.0f);
      _5255 = (((((_5224 * _5023) * _5238) - _5023) * _1026) + _5023);
      _5256 = (((((_5225 * _5024) * _5238) - _5024) * _1026) + _5024);
      _5257 = (((((_5226 * _5025) * _5238) - _5025) * _1026) + _5025);
    } else {
      _5255 = _5023;
      _5256 = _5024;
      _5257 = _5025;
    }
    _5262 = ((__3__36__0__0__g_caustic.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_111, _112), 0.0f)).x) * 0.31830987f;
    _5272 = (min(65535.0f, _5011) + _3212) + (((_5262 * _3503) + _5255) * _5224);
    _5273 = (min(65535.0f, _5012) + _3213) + (((_5262 * _3504) + _5256) * _5225);
    _5274 = (min(65535.0f, _5013) + _3214) + (((_5262 * _3505) + _5257) * _5226);
    _5303 = exp2((saturate(_449) * 20.0f) + -8.0f) + -0.00390625f;
    _5304 = _5303 * select((_446 < 0.04045f), (_446 * 0.07739938f), exp2(log2((_446 + 0.055f) * 0.94786733f) * 2.4f));
    _5305 = _5303 * select((_447 < 0.04045f), (_447 * 0.07739938f), exp2(log2((_447 + 0.055f) * 0.94786733f) * 2.4f));
    _5306 = _5303 * select((_448 < 0.04045f), (_448 * 0.07739938f), exp2(log2((_448 + 0.055f) * 0.94786733f) * 2.4f));
    _5319 = ((_5304 * 0.61312f) + (_5305 * 0.33951f)) + (_5306 * 0.04737f);
    _5320 = ((_5304 * 0.0702f) + (_5305 * 0.91636f)) + (_5306 * 0.01345f);
    _5321 = ((_5304 * 0.02062f) + (_5305 * 0.10958f)) + (_5306 * 0.8698f);
    if (_374) {
      _5327 = (_5319 + _5272);
      _5328 = (_5320 + _5273);
      _5329 = (_5321 + _5274);
    } else {
      _5327 = _5272;
      _5328 = _5273;
      _5329 = _5274;
    }
    _5333 = _5327 + (_5079 * _5127);
    _5334 = _5328 + (_5080 * _5127);
    _5335 = _5329 + (_5081 * _5127);
    if (!(((_131 || _133) || _135) || _137)) {
      _5337 = QuadReadLaneAt(_5333, 0);
      _5338 = QuadReadLaneAt(_5334, 0);
      _5339 = QuadReadLaneAt(_5335, 0);
      _5340 = QuadReadLaneAt(_5333, 1);
      _5341 = QuadReadLaneAt(_5334, 1);
      _5342 = QuadReadLaneAt(_5335, 1);
      _5346 = QuadReadLaneAt(_5333, 2);
      _5347 = QuadReadLaneAt(_5334, 2);
      _5348 = QuadReadLaneAt(_5335, 2);
      _5352 = QuadReadLaneAt(_5333, 3);
      _5353 = QuadReadLaneAt(_5334, 3);
      _5354 = QuadReadLaneAt(_5335, 3);
      _5362 = ((((_5340 + _5337) + _5346) + _5352) * 0.25f);
      _5363 = ((((_5341 + _5338) + _5347) + _5353) * 0.25f);
      _5364 = ((((_5342 + _5339) + _5348) + _5354) * 0.25f);
    } else {
      _5362 = _5333;
      _5363 = _5334;
      _5364 = _5335;
    }
    [branch]
    if ((((int)(_103) | (int)(_101)) & 1) == 0) {
      _5369 = dot(float3(_5362, _5363, _5364), float3(0.212671f, 0.71516f, 0.072169f));
      __3__38__0__1__g_diffuseHalfPrevUAV[int2(((int)(_101) >> 1), ((int)(_103) >> 1))] = float4(min(60000.0f, _5362), min(60000.0f, _5363), min(60000.0f, _5364), min(60000.0f, select((_1646 != 0), (-0.0f - _5369), _5369)));
    }
    if (_5043) {
      _5390 = ((_5116 == 0.0h) && (((_5220 < 0.010002136h) && (_5221 < 0.010002136h)) && (_5222 < 0.010002136h)));
    } else {
      _5390 = false;
    }
    if ((_5043 || ((_3565 == 96) || (_3728 || ((_3565 & -4) == 64)))) || ((_123 <= 10.0f) && _3663)) {
      __3__38__0__1__g_sceneSpecularUAV[int2(_101, _103)] = float4(((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _5079)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _5080)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _5081)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _2675)))))));
      _5423 = _5327;
      _5424 = _5328;
      _5425 = _5329;
    } else {
      _5423 = (_5327 + _5079);
      _5424 = (_5328 + _5080);
      _5425 = (_5329 + _5081);
    }
    if (_374 && ((uint)((int)(_3565) + (int)(-52)) > (uint)15)) {
      _5430 = dot(float3(_5319, _5320, _5321), float3(0.212671f, 0.71516f, 0.072169f));
      _5434 = max((max(_5430, 1.0f) / max(_5430, 0.1f)), 0.0f);
      _5445 = ((_5423 - _5319) + (_5434 * _5319));
      _5446 = ((_5424 - _5320) + (_5434 * _5320));
      _5447 = ((_5425 - _5321) + (_5434 * _5321));
    } else {
      _5445 = _5423;
      _5446 = _5424;
      _5447 = _5425;
    }
    _5448 = min(60000.0f, _5445);
    _5449 = min(60000.0f, _5446);
    _5450 = min(60000.0f, _5447);
    if (!_128) {
      [branch]
      if (_5390) {
        _5455 = __3__38__0__1__g_sceneColorUAV[int2(_101, _103)].x;
        _5456 = __3__38__0__1__g_sceneColorUAV[int2(_101, _103)].y;
        _5457 = __3__38__0__1__g_sceneColorUAV[int2(_101, _103)].z;
        _5462 = (_5455 + _5448);
        _5463 = (_5456 + _5449);
        _5464 = (_5457 + _5450);
      } else {
        _5462 = _5448;
        _5463 = _5449;
        _5464 = _5450;
      }
      if (!(_renderParams.y == 0.0f)) {
        _5473 = dot(float3(_5462, _5463, _5464), float3(0.212671f, 0.71516f, 0.072169f));
        _5474 = min((max(0.01f, _exposure3.w) * 4096.0f), _5473);
        _5478 = max(1e-09f, _5473);
        _5483 = ((_5474 * _5462) / _5478);
        _5484 = ((_5474 * _5463) / _5478);
        _5485 = ((_5474 * _5464) / _5478);
      } else {
        _5483 = _5462;
        _5484 = _5463;
        _5485 = _5464;
      }
      __3__38__0__1__g_sceneColorUAV[int2(_101, _103)] = float4(_5483, _5484, _5485, 1.0f);
    }
  }
}
