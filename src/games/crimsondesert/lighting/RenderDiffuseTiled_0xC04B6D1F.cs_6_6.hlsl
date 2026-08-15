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
  int _71;
  int _72;
  int4 _80;
  int _90;
  int _94;
  uint _100;
  uint _102;
  float _103;
  float _104;
  float _105;
  float _106;
  float _110;
  float _111;
  float _113;
  uint2 _116;
  int _118;
  float _121;
  float _122;
  bool _127;
  float _128;
  float _129;
  bool _130;
  float _131;
  bool _132;
  float _133;
  bool _134;
  float _135;
  bool _136;
  half _277;
  half _278;
  half _279;
  half _280;
  half _281;
  half _282;
  int _469;
  half _511;
  half _512;
  half _513;
  half _514;
  half _522;
  half _523;
  half _524;
  half _525;
  int _526;
  int _527;
  float _528;
  float _529;
  bool _630;
  float _852;
  float _853;
  float _1072;
  float _1073;
  float _1074;
  float _1075;
  float _1109;
  float _1110;
  float _1111;
  float _1112;
  int _1118;
  half _1119;
  float _1120;
  float _1121;
  float _1122;
  float _1123;
  float _1152;
  half _1153;
  float _1155;
  float _1181;
  float _1182;
  float _1189;
  float _1190;
  float _1191;
  float _1192;
  half _1193;
  float _1199;
  float _1200;
  float _1201;
  float _1202;
  half _1203;
  half _1264;
  float _1281;
  float _1645;
  half _1646;
  float _1647;
  float _1648;
  float _1649;
  int _1650;
  float _1651;
  float _1652;
  float _1653;
  bool _1706;
  bool _1709;
  bool _1710;
  float _1728;
  float _1739;
  float _1740;
  half _1750;
  half _1751;
  float _1752;
  half _1753;
  half _1754;
  half _1755;
  float _1756;
  float _1768;
  bool _1791;
  float _1800;
  float _1841;
  float _1842;
  float _1930;
  float _2008;
  float _2167;
  float _2168;
  float _2169;
  float _2170;
  float _2333;
  int _2334;
  float _2391;
  float _2403;
  float _2435;
  float _2522;
  float _2523;
  float _2524;
  float _2525;
  float _2527;
  float _2528;
  float _2529;
  float _2530;
  float _2534;
  float _2535;
  float _2536;
  float _2537;
  float _2538;
  float _2563;
  float _2588;
  bool _2599;
  half _2642;
  int _2643;
  float _2644;
  float _2645;
  float _2646;
  float _2783;
  float _2836;
  float _2855;
  float _2859;
  half _2883;
  half _2886;
  half _2887;
  float _2993;
  float _3041;
  float _3056;
  float _3158;
  int _3159;
  int _3160;
  float _3161;
  float _3162;
  float _3163;
  float _3164;
  float _3322;
  float _3323;
  float _3324;
  float _3325;
  float _3390;
  float _3403;
  float _3404;
  float _3405;
  float _3459;
  float _3460;
  float _3524;
  float _3525;
  float _3526;
  float _3595;
  float _3596;
  float _3597;
  float _3612;
  float _3613;
  float _3614;
  float _3615;
  float _3616;
  bool _3678;
  bool _3679;
  float _3715;
  float _3716;
  float _3717;
  float _3718;
  float _3784;
  float _3787;
  float _3788;
  float _3789;
  float _3790;
  float _3825;
  float _3826;
  float _3827;
  float _3842;
  float _3871;
  float _3872;
  float _3873;
  float _3874;
  float _3875;
  half _3882;
  half _3883;
  half _3884;
  half _3885;
  half _3886;
  float _3887;
  float _3893;
  half _3894;
  half _3895;
  half _3896;
  half _3897;
  half _3898;
  float _3899;
  float _3900;
  float _3901;
  float _3902;
  float _3903;
  float _3904;
  half _3945;
  half _3946;
  half _3947;
  float _3962;
  float _3963;
  float _3964;
  float _3984;
  float _4049;
  float _4147;
  float _4148;
  float _4149;
  bool _4209;
  bool _4229;
  bool _4231;
  bool _4232;
  float _4249;
  int _4250;
  float _4251;
  float _4252;
  float _4253;
  float _4254;
  float _4298;
  float _4335;
  float _4342;
  float _4343;
  float _4344;
  bool _4368;
  bool _4371;
  bool _4372;
  float _4389;
  float _4390;
  float _4391;
  float _4432;
  float _4700;
  float _4701;
  float _4702;
  float _4703;
  float _4704;
  float _4705;
  float _4706;
  float _4707;
  float _4708;
  float _4880;
  float _4881;
  float _4882;
  float _4883;
  float _4884;
  float _4885;
  float _4886;
  float _4887;
  float _4888;
  float _4978;
  float _4979;
  float _4980;
  float _5019;
  float _5020;
  float _5021;
  float _5024;
  float _5025;
  float _5026;
  float _5054;
  float _5055;
  float _5056;
  float _5057;
  float _5058;
  float _5059;
  float _5125;
  float _5126;
  float _5127;
  float _5128;
  float _5129;
  float _5130;
  float _5131;
  float _5132;
  float _5164;
  float _5165;
  float _5166;
  float _5167;
  float _5168;
  float _5169;
  float _5170;
  float _5171;
  float _5172;
  float _5173;
  float _5174;
  float _5186;
  float _5187;
  float _5188;
  float _5491;
  float _5507;
  float _5508;
  float _5509;
  float _5510;
  float _5511;
  float _5512;
  float _5513;
  float _5514;
  float _5515;
  float _5526;
  float _5527;
  float _5528;
  float _5540;
  float _5541;
  float _5542;
  float _5543;
  float _5544;
  float _5545;
  float _5546;
  float _5547;
  float _5548;
  float _5549;
  float _5550;
  float _5551;
  float _5553;
  float _5554;
  float _5555;
  float _5556;
  float _5557;
  float _5558;
  float _5559;
  float _5560;
  float _5561;
  float _5562;
  float _5563;
  float _5564;
  float _5578;
  float _5579;
  float _5694;
  float _5695;
  float _5696;
  float _5697;
  float _5698;
  float _5699;
  float _5700;
  float _5701;
  float _5702;
  float _5746;
  half _5795;
  half _5796;
  half _5797;
  float _5812;
  float _5847;
  float _5848;
  float _5941;
  float _5942;
  float _5943;
  float _6002;
  float _6003;
  float _6004;
  float _6037;
  float _6038;
  float _6039;
  bool _6065;
  float _6098;
  float _6099;
  float _6100;
  float _6120;
  float _6121;
  float _6122;
  float _6137;
  float _6138;
  float _6139;
  float _6158;
  float _6159;
  float _6160;
  uint4 _145;
  float4 _151;
  half _160;
  half _164;
  half _169;
  half _174;
  half _178;
  uint _181;
  bool _182;
  bool _183;
  float _193;
  float _194;
  float _195;
  float _197;
  half _201;
  half _202;
  half _203;
  int _204;
  half _222;
  half _223;
  float _228;
  float _229;
  float _233;
  float _235;
  float _242;
  float _243;
  float _244;
  float _246;
  float _249;
  float _250;
  float _251;
  float _252;
  float _259;
  float _260;
  float _261;
  half _284;
  half _285;
  half _286;
  half _287;
  half _291;
  half _292;
  half _293;
  half _309;
  half _310;
  half _311;
  bool _316;
  half _318;
  uint _336;
  uint _344;
  uint _352;
  uint _360;
  uint _368;
  uint _376;
  uint _384;
  uint _392;
  uint _400;
  uint _408;
  uint _416;
  uint _424;
  uint _432;
  uint _440;
  uint _448;
  uint _456;
  int _498;
  int _499;
  int4 _532;
  int _537;
  int _541;
  int _545;
  int _549;
  float _576;
  float _581;
  float _582;
  float _583;
  float _584;
  float _585;
  float _586;
  float _587;
  float _588;
  int _589;
  int _590;
  int _591;
  int _592;
  float _632;
  float _637;
  float _639;
  bool _658;
  int4 _687;
  float _706;
  float _707;
  float _708;
  float _710;
  float _714;
  float _715;
  float _716;
  float _732;
  float _733;
  float _734;
  float _736;
  float _755;
  float _756;
  float _757;
  float _759;
  float _778;
  float _779;
  float _780;
  float _782;
  bool _787;
  float _788;
  float _801;
  float _802;
  float _803;
  float _804;
  float _809;
  float _812;
  float _815;
  float _818;
  float _821;
  float _854;
  float _855;
  float _856;
  float _857;
  float _858;
  float _859;
  float _860;
  float _861;
  bool _870;
  float _879;
  float _880;
  float _881;
  float _882;
  float _883;
  float _884;
  float _889;
  float _890;
  float _891;
  float _892;
  float _896;
  float _905;
  float _906;
  float _907;
  float _908;
  half4 _910;
  uint _920;
  half4 _921;
  uint _934;
  half4 _935;
  half4 _948;
  float4 _962;
  float4 _969;
  float4 _979;
  float4 _989;
  bool _1006;
  float _1008;
  float _1010;
  float _1046;
  float _1047;
  float _1048;
  float _1049;
  float _1051;
  float _1052;
  float _1053;
  float _1054;
  bool _1055;
  bool _1057;
  bool _1061;
  float4 _1066;
  uint _1094;
  int _1096;
  float4 _1103;
  bool _1127;
  float _1134;
  float _1165;
  float _1166;
  float _1168;
  float _1169;
  float _1170;
  float _1184;
  float4 _1205;
  float4 _1212;
  float4 _1222;
  float4 _1232;
  float _1245;
  float _1246;
  float _1247;
  float _1249;
  float _1250;
  float _1251;
  float _1252;
  float _1265;
  float _1282;
  float _1283;
  float _1284;
  float _1285;
  float _1286;
  float _1287;
  float _1288;
  float _1289;
  float _1295;
  float _1299;
  float _1300;
  float _1301;
  float _1305;
  float _1306;
  float _1307;
  float _1314;
  float _1324;
  float _1325;
  float _1326;
  float _1327;
  float _1328;
  float _1329;
  float _1338;
  float _1343;
  float _1349;
  float _1350;
  float _1354;
  float _1355;
  float _1360;
  float _1361;
  float _1362;
  float _1363;
  float _1375;
  float _1379;
  float _1389;
  float _1390;
  float _1394;
  float _1396;
  float _1397;
  float _1410;
  float _1420;
  float _1421;
  float _1422;
  float _1431;
  float2 _1440;
  float2 _1443;
  float2 _1446;
  float _1453;
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
  float _1480;
  float _1481;
  float _1482;
  float _1483;
  float _1484;
  float _1485;
  float _1493;
  float _1494;
  float _1495;
  float _1496;
  float _1498;
  float _1499;
  float _1500;
  float _1501;
  float _1502;
  float _1503;
  float _1506;
  float _1507;
  float _1508;
  float _1518;
  float _1541;
  float _1545;
  float _1549;
  float _1567;
  float _1574;
  float _1575;
  float _1576;
  float _1585;
  float _1592;
  float _1599;
  float _1627;
  float _1628;
  float _1629;
  float _1630;
  float _1631;
  float _1660;
  float _1661;
  float _1662;
  half2 _1664;
  half2 _1671;
  half2 _1680;
  half2 _1689;
  float _1696;
  bool _1703;
  bool _1715;
  bool _1716;
  float _1718;
  bool _1721;
  bool _1723;
  uint _1730;
  half _1741;
  bool _1745;
  int _1757;
  bool _1758;
  bool _1759;
  bool _1760;
  float _1761;
  float _1762;
  float _1763;
  float _1764;
  float _1769;
  int _1770;
  bool _1771;
  float _1828;
  float2 _1835;
  float _1844;
  float _1847;
  float _1848;
  float _1856;
  float _1862;
  float _1863;
  int _1866;
  int _1867;
  float _1868;
  float _1869;
  float _1874;
  float _1875;
  int4 _1877;
  int _1900;
  float _1938;
  float _1939;
  float _1940;
  float _1941;
  float _1945;
  float _1962;
  float _1963;
  float _1966;
  bool _1981;
  float _1983;
  float _1985;
  bool _1989;
  float _2014;
  float _2019;
  float _2020;
  float _2021;
  float _2022;
  float _2023;
  float _2024;
  float _2025;
  float _2026;
  float _2028;
  float _2041;
  float _2042;
  float _2043;
  float _2044;
  int _2046;
  int _2047;
  int _2048;
  int _2049;
  bool _2071;
  bool _2075;
  bool _2079;
  bool _2083;
  bool _2096;
  bool _2098;
  bool _2107;
  bool _2129;
  int4 _2172;
  float _2191;
  float _2192;
  float _2193;
  float _2195;
  float _2200;
  float _2215;
  float _2216;
  float _2217;
  float _2219;
  float _2224;
  float _2239;
  float _2240;
  float _2241;
  float _2243;
  float _2248;
  float _2263;
  float _2264;
  float _2265;
  float _2267;
  float _2272;
  float _2275;
  float _2292;
  float _2293;
  float _2294;
  float _2295;
  float _2300;
  float _2302;
  float _2304;
  float _2306;
  float _2308;
  float _2309;
  float _2310;
  float _2311;
  int _2314;
  int _2315;
  int _2323;
  int _2325;
  float _2344;
  uint _2345;
  half4 _2347;
  uint _2352;
  half4 _2353;
  half4 _2358;
  half4 _2363;
  float _2368;
  float _2377;
  float _2382;
  float _2395;
  float _2398;
  bool _2399;
  bool _2404;
  float _2405;
  float _2407;
  float4 _2410;
  float _2415;
  float _2417;
  float _2419;
  float _2420;
  float _2421;
  float _2422;
  float _2477;
  float _2494;
  float _2495;
  float _2496;
  float _2501;
  float _2517;
  float _2545;
  float _2546;
  float _2547;
  float _2554;
  float _2555;
  float _2556;
  float _2564;
  float _2570;
  float _2580;
  float _2581;
  float _2582;
  float _2583;
  bool _2591;
  bool _2601;
  half _2604;
  uint _2627;
  int _2629;
  float4 _2636;
  float _2648;
  float _2652;
  float _2653;
  float _2654;
  float _2660;
  float _2668;
  float _2670;
  float _2672;
  float _2676;
  float _2686;
  float _2687;
  float _2688;
  float _2689;
  float _2694;
  float _2699;
  float _2701;
  float _2703;
  float _2727;
  float _2731;
  float _2735;
  float _2739;
  float _2769;
  float _2774;
  float _2775;
  int _2787;
  bool _2790;
  float _2792;
  float _2796;
  float _2801;
  float _2827;
  float _2838;
  float _2844;
  float _2866;
  half _2872;
  half _2878;
  float _2888;
  float _2889;
  float _2890;
  float _2903;
  float _2904;
  float _2905;
  float _2906;
  float _2946;
  float _2951;
  float _2952;
  float _2953;
  float _2954;
  float _2964;
  float _2967;
  float _2983;
  float _3021;
  float _3024;
  float _3025;
  float _3026;
  float _3027;
  float _3057;
  bool _3059;
  float _3070;
  float _3071;
  int _3074;
  int _3075;
  float _3076;
  float _3077;
  int4 _3087;
  int _3094;
  float _3123;
  float _3124;
  float _3125;
  float _3126;
  float _3141;
  float _3142;
  float _3143;
  float _3144;
  bool _3165;
  uint _3166;
  half4 _3168;
  float _3181;
  uint _3187;
  half4 _3188;
  float _3201;
  half4 _3211;
  float _3224;
  half4 _3234;
  float _3247;
  float _3271;
  float _3273;
  float _3275;
  float _3277;
  float _3278;
  float _3287;
  float _3294;
  float _3301;
  float _3326;
  float _3327;
  float _3328;
  float _3341;
  float _3351;
  float _3352;
  float _3353;
  float _3365;
  float _3370;
  bool _3371;
  int _3373;
  bool _3393;
  float _3394;
  float _3395;
  float _3396;
  float _3397;
  float _3407;
  float _3408;
  float _3409;
  bool _3411;
  float _3412;
  float _3413;
  float _3414;
  float2 _3429;
  float2 _3435;
  float _3442;
  float _3443;
  float _3445;
  float _3453;
  float _3455;
  float _3462;
  float _3465;
  float _3466;
  float _3468;
  float _3476;
  float _3477;
  float _3478;
  float4 _3483;
  float _3487;
  float _3488;
  float _3489;
  float _3491;
  float _3495;
  float _3496;
  float _3497;
  float _3499;
  float2 _3512;
  float _3519;
  float _3532;
  float2 _3537;
  float2 _3542;
  float _3546;
  float _3548;
  float _3565;
  float _3569;
  float _3570;
  float _3571;
  float _3578;
  float2 _3602;
  float _3619;
  float _3626;
  float _3627;
  float _3628;
  float _3649;
  float4 _3659;
  bool _3689;
  float4 _3709;
  float _3725;
  float _3728;
  float _3741;
  float _3742;
  float _3743;
  float _3748;
  float _3753;
  float _3764;
  float _3782;
  float _3794;
  bool _3795;
  float _3798;
  float _3843;
  float _3844;
  float _3845;
  float _3850;
  float _3853;
  float _3860;
  float _3861;
  half4 _3906;
  float _3911;
  float _3912;
  float _3913;
  uint _3917;
  float _3933;
  float _3934;
  float _3935;
  float _3937;
  bool _3950;
  float _3991;
  float _3992;
  float _3993;
  float _3994;
  float _4000;
  float _4005;
  float _4011;
  float _4019;
  float _4026;
  float2 _4054;
  float _4076;
  float _4094;
  float _4095;
  float _4096;
  float _4112;
  float _4120;
  float _4132;
  float _4135;
  float _4141;
  float _4169;
  float _4171;
  float _4178;
  float _4179;
  float _4180;
  float _4181;
  float _4201;
  float _4202;
  float _4203;
  float _4211;
  float _4212;
  bool _4215;
  bool _4218;
  bool _4226;
  float _4233;
  float _4234;
  float _4235;
  uint16_t _4237;
  float _4259;
  float _4260;
  float _4261;
  float _4262;
  float _4273;
  float _4278;
  float _4279;
  float _4280;
  float _4282;
  float _4283;
  float _4284;
  float _4285;
  bool _4288;
  float _4290;
  bool _4291;
  float _4304;
  float _4314;
  float _4315;
  float _4316;
  float _4317;
  int _4318;
  bool _4319;
  bool _4322;
  float _4336;
  float _4345;
  float _4346;
  bool _4348;
  float _4350;
  float _4351;
  float _4352;
  bool _4354;
  float _4377;
  float _4392;
  float _4393;
  float _4394;
  float _4395;
  float _4396;
  float _4397;
  float _4398;
  float _4400;
  float _4401;
  float _4402;
  float _4403;
  float _4404;
  float _4405;
  float _4407;
  float _4409;
  float _4410;
  float _4412;
  bool _4413;
  bool _4414;
  bool _4415;
  float _4447;
  float _4451;
  float4 _4456;
  float _4460;
  float _4461;
  float _4462;
  float _4463;
  float _4474;
  float _4475;
  float _4481;
  float _4485;
  float _4486;
  float _4487;
  float _4491;
  float _4492;
  float _4493;
  float _4500;
  float _4504;
  float _4511;
  float _4512;
  float _4513;
  float _4514;
  float _4515;
  float _4516;
  float _4518;
  float _4532;
  float _4533;
  float _4540;
  float _4549;
  float _4554;
  float _4560;
  float _4561;
  float _4565;
  float _4566;
  float _4571;
  float _4572;
  float _4573;
  float _4574;
  float _4586;
  float _4590;
  float _4600;
  float _4601;
  float _4605;
  float _4607;
  float _4608;
  float _4621;
  float _4628;
  float _4629;
  float _4639;
  float _4650;
  float _4655;
  float _4674;
  float _4676;
  float _4678;
  float _4680;
  float _4687;
  float _4688;
  float _4689;
  float _4696;
  float _4697;
  float _4698;
  bool _4710;
  bool _4711;
  bool _4712;
  float _4727;
  float _4733;
  float _4734;
  float _4735;
  float _4736;
  float _4737;
  float _4738;
  float _4739;
  float _4746;
  float _4759;
  float _4762;
  float _4763;
  float _4765;
  float _4768;
  float _4769;
  float _4770;
  float _4774;
  float _4775;
  float _4776;
  float _4777;
  float _4778;
  float _4779;
  float _4791;
  float _4795;
  float _4799;
  float _4800;
  float _4801;
  float _4802;
  float _4814;
  float _4818;
  float _4834;
  float _4839;
  float _4840;
  float _4850;
  float _4875;
  float _4891;
  float _4892;
  float _4893;
  float _4894;
  float _4897;
  float _4898;
  float _4899;
  float _4904;
  float _4905;
  float _4932;
  float _4935;
  float _4936;
  float _4938;
  float _4941;
  float _4942;
  float _4946;
  float _4947;
  float _4948;
  float _4950;
  float _4951;
  float _4963;
  float _4967;
  float _4988;
  float _5000;
  float _5004;
  float _5011;
  float _5031;
  float _5040;
  float _5062;
  float _5066;
  float _5067;
  float _5068;
  float _5069;
  float _5070;
  float _5071;
  float _5073;
  float _5074;
  float _5075;
  float _5076;
  float _5077;
  float _5078;
  float _5079;
  float _5081;
  float _5083;
  float _5085;
  float _5096;
  float _5099;
  float _5154;
  float _5155;
  float _5156;
  float _5178;
  float _5190;
  float _5194;
  float _5195;
  float _5197;
  float _5202;
  float _5210;
  float _5216;
  float _5218;
  float _5223;
  float _5238;
  float _5248;
  float _5251;
  float _5258;
  float _5259;
  float _5260;
  float _5266;
  float2 _5275;
  float2 _5278;
  float2 _5281;
  float _5290;
  float _5291;
  float _5292;
  float _5293;
  float _5294;
  float _5295;
  float _5296;
  float _5297;
  float _5298;
  float _5299;
  float _5300;
  float _5301;
  float _5302;
  float _5303;
  float _5304;
  float _5305;
  float _5306;
  float _5307;
  float _5317;
  float _5318;
  float _5319;
  float _5320;
  float _5321;
  float _5322;
  float _5330;
  float _5331;
  float _5332;
  float _5333;
  float _5335;
  float _5336;
  float _5337;
  float _5338;
  float _5339;
  float _5340;
  float _5344;
  float _5345;
  float _5355;
  float _5378;
  float _5382;
  float _5386;
  float _5404;
  float _5411;
  float _5412;
  float _5413;
  float _5417;
  float _5424;
  float _5431;
  float _5439;
  float _5460;
  float _5492;
  float _5502;
  float _5529;
  float _5530;
  float _5531;
  float _5533;
  float _5535;
  float _5537;
  float _5572;
  float _5574;
  float _5581;
  float _5584;
  float _5585;
  float _5587;
  float4 _5595;
  float _5599;
  float _5600;
  float _5601;
  float _5603;
  float _5607;
  float _5608;
  float _5609;
  float _5611;
  float _5612;
  float _5613;
  float _5614;
  float _5626;
  float _5627;
  float _5630;
  float _5631;
  float _5645;
  float _5647;
  float _5649;
  float _5650;
  float _5652;
  float _5668;
  float _5675;
  float _5680;
  float _5709;
  float _5710;
  float _5711;
  uint _5714;
  bool _5729;
  float _5761;
  float _5765;
  float _5766;
  float _5767;
  float _5770;
  half _5777;
  half _5778;
  half _5779;
  half _5802;
  float _5803;
  float _5804;
  float _5805;
  float _5813;
  float _5819;
  float _5826;
  float _5827;
  float _5828;
  float _5829;
  float _5830;
  float _5831;
  float2 _5843;
  float _5852;
  float _5853;
  float _5854;
  float _5856;
  float _5863;
  float _5864;
  float _5865;
  float _5882;
  float _5883;
  float _5884;
  float _5885;
  float _5896;
  half _5906;
  half _5907;
  half _5908;
  float _5910;
  float _5911;
  float _5912;
  float _5916;
  float _5924;
  float _5947;
  float _5948;
  float _5949;
  float _5978;
  float _5979;
  float _5980;
  float _5981;
  float _5994;
  float _5995;
  float _5996;
  float _6008;
  float _6009;
  float _6010;
  float _6012;
  float _6013;
  float _6014;
  float _6015;
  float _6016;
  float _6017;
  float _6021;
  float _6022;
  float _6023;
  float _6027;
  float _6028;
  float _6029;
  float _6044;
  float _6105;
  float _6109;
  float _6123;
  float _6124;
  float _6125;
  float _6130;
  float _6131;
  float _6132;
  float _6148;
  float _6149;
  float _6153;
  int _57[4];
  _71 = (int)(SV_GroupID.x) & 15;
  _72 = (uint)((uint)(_71)) >> 2;
  _80 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 7))]);
  _57[0] = _80.x;
  _57[1] = _80.y;
  _57[2] = _80.z;
  _57[3] = _80.w;
  _90 = _57[(((uint)(SV_GroupID.x) >> 5) & 3)];
  _94 = select((((int)(SV_GroupID.x) & 16) == 0), _90, ((uint)((uint)(_90)) >> 16));
  _100 = (uint)((uint)((uint)((int)((int)(_71) - (int)((int)(_72) << 2)) << 3)) + (uint)(SV_GroupThreadID.x)) + (uint)((uint)(((int)((uint)((uint)(_94)) << 5)) & 8160));
  _102 = (uint)((uint)((uint)((int)(_72) << 3)) + (uint)(SV_GroupThreadID.y)) + (uint)((uint)(((uint)((uint)(_94)) >> 3) & 8160));
  _103 = (float)((uint)((uint)(_100)));
  _104 = (float)((uint)((uint)(_102)));
  _105 = _103 + 0.5f;
  _106 = _104 + 0.5f;
  _110 = _bufferSizeAndInvSize.z * _105;
  _111 = _106 * _bufferSizeAndInvSize.w;
  _113 = __3__36__0__0__g_depth.Load(int3(_100, _102, 0));  // [sem: _3__36__0__0__g_depth_load]
  _116 = __3__36__0__0__g_stencil.Load(int3(_100, _102, 0));  // [sem: _3__36__0__0__g_stencil_load]
  _118 = _116.x & 127;  // [sem: _3__36__0__0__g_stencil_load_derived]
  _121 = max(1e-07f, _113.x);  // [sem: _3__36__0__0__g_depth_load_derived]
  _122 = _nearFarProj.x / _121;
  _127 = ((_113.x < 1e-07f) || (_113.x == 1.0f)) || (_118 == 10);
  _128 = (float)((bool)(_127));
  _129 = QuadReadLaneAt(_128, 0);
  _130 = !(_129 == 0.0f);
  _131 = QuadReadLaneAt(_128, 1);
  _132 = !(_131 == 0.0f);
  _133 = QuadReadLaneAt(_128, 2);
  _134 = !(_133 == 0.0f);
  _135 = QuadReadLaneAt(_128, 3);
  _136 = !(_135 == 0.0f);
  if (!(((_130 && _132) && _134) && _136)) {
    _145 = __3__36__0__0__g_baseColor.Load(int3(_100, _102, 0));  // [sem: _3__36__0__0__g_baseColor_load]
    _151 = __3__36__0__0__g_normal.Load(int3(_100, _102, 0));  // [sem: _3__36__0__0__g_normal_load]
    _160 = half(((float)((uint)((uint)(((uint)((uint)(_145.x)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _164 = half(((float)((uint)((uint)(_145.x & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _169 = half(((float)((uint)((uint)(((uint)((uint)(_145.y)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _174 = half(((float)((uint)((uint)(((uint)((uint)(_145.w)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _178 = half(((float)((uint)((uint)(_145.w & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _181 = (uint)((_151.w * 3.0f) + 0.5f);  // [sem: _3__36__0__0__g_normal_load_derived]
    _182 = (_181 == 1);
    _183 = (_181 == 3);
    _193 = (saturate(_151.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _194 = (saturate(_151.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _195 = (saturate(_151.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _197 = rsqrt(dot(float3(_193, _194, _195), float3(_193, _194, _195)));  // [sem: invLength]
    _201 = half(_197 * _193);
    _202 = half(_197 * _194);
    _203 = half(_195 * _197);
    _204 = _116.x & 126;  // [sem: _3__36__0__0__g_stencil_load_derived]
    if (!(_204 == 24)) {
      _222 = ((half)(_174 * 2.0h)) + -1.0h;
      _223 = ((half)(_178 * 2.0h)) + -1.0h;
      _228 = float(_222 + _223) * 0.5f;
      _229 = float(_222 - _223) * 0.5f;
      _233 = (1.0f - abs(_228)) - abs(_229);
      _235 = rsqrt(dot(float3(_228, _229, _233), float3(_228, _229, _233)));  // [sem: invLength]
      _242 = float(_201);
      _243 = float(_202);
      _244 = float(_203);
      _246 = select((_203 >= 0.0h), 1.0f, -1.0f);
      _249 = -0.0f - (1.0f / (_246 + _244));
      _250 = _243 * _249;
      _251 = _250 * _242;
      _252 = _246 * _242;
      _259 = float(half(_235 * _228));
      _260 = float(half(_235 * _229));
      _261 = float(half(_235 * _233));
      _277 = (half)(half(((float)((uint)((uint)(_145.z & 255)))) * 0.003921569f));
      _278 = (half)(half(((float)((uint)((uint)(_145.y & 255)))) * 0.003921569f));  // [sem: _3__36__0__0__g_baseColor_load_derived]
      _279 = (half)(half(((float)((uint)((uint)(((uint)((uint)(_145.z)) >> 8) & 255)))) * 0.003921569f));
      _280 = (half)(half(mad(_261, _242, mad(_260, _251, (_259 * (((_252 * _242) * _249) + 1.0f))))));
      _281 = (half)(half(mad(_261, _243, mad(_260, ((_250 * _243) + _246), ((_259 * _246) * _251)))));
      _282 = (half)(half(mad(_261, _244, mad(_260, (-0.0f - _243), (-0.0f - (_252 * _259))))));
    } else {
      _277 = _178;
      _278 = 0.0h;  // [sem: _3__36__0__0__g_baseColor_load_derived]
      _279 = _174;
      _280 = _201;
      _281 = _202;
      _282 = _203;
    }
    _284 = rsqrt((half)(dot(half3(_280, _281, _282), half3(_280, _281, _282))));  // [sem: invLength]
    _285 = _284 * _280;
    _286 = _284 * _281;
    _287 = _284 * _282;
    _291 = saturate((half)(_160 * _160));  // [sem: expr_sat]
    _292 = saturate((half)(_164 * _164));  // [sem: expr_sat]
    _293 = saturate((half)(_169 * _169));  // [sem: expr_sat]
    // [sem: expr_sat]
    _309 = saturate((half)(((half)(((half)(_292 * 0.3395996h)) + ((half)(_291 * 0.61328125h)))) + ((half)(_293 * 0.04736328h))));
    // [sem: expr_sat]
    _310 = saturate((half)(((half)(((half)(_292 * 0.9165039h)) + ((half)(_291 * 0.07019043h)))) + ((half)(_293 * 0.013450623h))));
    // [sem: expr_sat]
    _311 = saturate((half)(((half)(((half)(_292 * 0.109558105h)) + ((half)(_291 * 0.020614624h)))) + ((half)(_293 * 0.8696289h))));
    if ((uint)((int)(_118) + (int)(-65)) < (uint)2) {
      _511 = _278;
      _512 = _201;
      _513 = _202;
      _514 = _203;
      _522 = _511;
      _523 = _512;
      _524 = _513;
      _525 = _514;
      _526 = ((int)((int)((uint)((uint)(max((int)(1), (int)(_100)))) + (uint)(-1))) >> 1);
      _527 = ((int)((int)((uint)((uint)(max((int)(1), (int)(_102)))) + (uint)(-1))) >> 1);
      _528 = _110;
      _529 = _111;
    } else {
      _316 = (_118 == 29);
      _318 = select(((_118 == 24) || _316), 0.0f, _278);
      if (_316) {
        _336 = (uint)((uint)((_bufferSizeAndInvSize.x * ((float)((int)(_102)))) + ((float)((int)(_100))))) + (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524))));
        _344 = (uint)((uint)((((int)((uint)((uint)((uint)(_336)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_336)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_336)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
        _352 = (uint)((uint)((((int)((uint)((uint)((uint)(_344)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_344)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_344)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_336));
        _360 = (uint)((uint)((((int)((uint)((uint)((uint)(_352)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_352)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_352)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_344));
        _368 = (uint)((uint)((((int)((uint)((uint)((uint)(_360)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_360)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_360)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_352));
        _376 = (uint)((uint)((((int)((uint)((uint)((uint)(_368)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_368)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_368)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_360));
        _384 = (uint)((uint)((((int)((uint)((uint)((uint)(_376)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_376)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_376)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_368));
        _392 = (uint)((uint)((((int)((uint)((uint)((uint)(_384)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_384)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_384)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_376));
        _400 = (uint)((uint)((((int)((uint)((uint)((uint)(_392)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_392)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_392)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_384));
        _408 = (uint)((uint)((((int)((uint)((uint)((uint)(_400)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_400)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_400)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_392));
        _416 = (uint)((uint)((((int)((uint)((uint)((uint)(_408)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_408)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_408)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_400));
        _424 = (uint)((uint)((((int)((uint)((uint)((uint)(_416)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_416)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_416)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_408));
        _432 = (uint)((uint)((((int)((uint)((uint)((uint)(_424)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_424)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_424)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_416));
        _440 = (uint)((uint)((((int)((uint)((uint)((uint)(_432)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_432)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_432)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_424));
        _448 = (uint)((uint)((((int)((uint)((uint)((uint)(_440)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_440)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_440)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_432));
        _456 = (uint)((uint)((((int)((uint)((uint)((uint)(_448)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_448)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_448)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_440));
        if ((_448 & 16777215) == 0) {
          _469 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_456)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_456)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_456)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_448))));
        } else {
          _469 = _448;
        }
        _498 = (int)(min(max(((((saturate(1.0f - (_122 * 0.015625f)) * 4.0f) * ((((float)((uint)((uint)(((int)((uint)((uint)(_469)) * (uint)(48271))) & 16777215)))) * 1.1920929e-07f) + -1.0f)) + ((float)((int)((int)((uint)((uint)(max((int)(1), (int)(_100)))) + (uint)(-1)))))) * 0.5f), 0.0f), ((_bufferSizeAndInvSize.x * 0.5f) + -2.0f)));
        _499 = (int)(min(max((((float)((int)((int)((uint)((uint)(max((int)(1), (int)(_102)))) + (uint)(-1))))) * 0.5f), 0.0f), ((_bufferSizeAndInvSize.y * 0.5f) + -2.0f)));
        _522 = _318;
        _523 = _285;
        _524 = _286;
        _525 = _287;
        _526 = _498;
        _527 = _499;
        _528 = ((_bufferSizeAndInvSize.z * 2.0f) * (((float)((int)(_498))) + 0.5f));
        _529 = ((_bufferSizeAndInvSize.w * 2.0f) * (((float)((int)(_499))) + 0.5f));
      } else {
        _511 = _318;
        _512 = _285;
        _513 = _286;
        _514 = _287;
        _522 = _511;
        _523 = _512;
        _524 = _513;
        _525 = _514;
        _526 = ((int)((int)((uint)((uint)(max((int)(1), (int)(_100)))) + (uint)(-1))) >> 1);
        _527 = ((int)((int)((uint)((uint)(max((int)(1), (int)(_102)))) + (uint)(-1))) >> 1);
        _528 = _110;
        _529 = _111;
      }
    }
    _532 = __3__36__0__0__g_normalDepthHalf.GatherGreen(__3__40__0__0__g_samplerPoint, float2(_528, _529));  // [sem: _3__36__0__0__g_normalDepthHalf_gather]
    _537 = (uint)((uint)(_532.w)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _541 = (uint)((uint)(_532.z)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _545 = (uint)((uint)(_532.x)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _549 = (uint)((uint)(_532.y)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _576 = (max(0.0f, (_122 + -1.0f)) * 0.05f) * _temporalReprojectionParams.y;
    _581 = max(0.0f, (abs(_122 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_532.w & 16777215)))) * 5.960465e-08f)))) - _576));
    _582 = max(0.0f, (abs(_122 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_532.z & 16777215)))) * 5.960465e-08f)))) - _576));
    _583 = max(0.0f, (abs(_122 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_532.x & 16777215)))) * 5.960465e-08f)))) - _576));
    _584 = max(0.0f, (abs(_122 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_532.y & 16777215)))) * 5.960465e-08f)))) - _576));
    _585 = _581 * _581;
    _586 = _582 * _582;
    _587 = _583 * _583;
    _588 = _584 * _584;
    _589 = _537 & 127;
    _590 = _541 & 127;
    _591 = _545 & 127;
    _592 = _549 & 127;
    if ((uint)_118 > (uint)11) {
      if (!(((uint)_118 < (uint)21) || (_118 == 107))) {
        _630 = (_118 == 7);
      } else {
        _630 = true;
      }
    } else {
      if (!(_118 == 6)) {
        _630 = (_118 == 7);
      } else {
        _630 = true;
      }
    }
    _632 = _122 * _122;
    _637 = (_632 * 0.2f) + 1.0f;
    _639 = select(_630, -7.213475f, -72.13475f) * (1.0f / ((select(_630, 0.05f, 0.01f) * _632) + 1.0f));
    _658 = (_204 == 66) || (_118 == 53);
    _687 = __3__36__0__0__g_normalDepthHalf.GatherRed(__3__40__0__0__g_samplerPoint, float2(_528, _529));  // [sem: _3__36__0__0__g_normalDepthHalf_gather]
    _706 = min(1.0f, ((((float)((uint)((uint)(_687.w & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _707 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_687.w)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _708 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_687.w)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _710 = rsqrt(dot(float3(_706, _707, _708), float3(_706, _707, _708)));  // [sem: invLength]
    _714 = float(_523);
    _715 = float(_524);
    _716 = float(_525);
    _732 = min(1.0f, ((((float)((uint)((uint)(_687.z & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _733 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_687.z)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _734 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_687.z)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _736 = rsqrt(dot(float3(_732, _733, _734), float3(_732, _733, _734)));  // [sem: invLength]
    _755 = min(1.0f, ((((float)((uint)((uint)(_687.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _756 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_687.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _757 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_687.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _759 = rsqrt(dot(float3(_755, _756, _757), float3(_755, _756, _757)));  // [sem: invLength]
    _778 = min(1.0f, ((((float)((uint)((uint)(_687.y & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _779 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_687.y)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _780 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_687.y)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _782 = rsqrt(dot(float3(_778, _779, _780), float3(_778, _779, _780)));  // [sem: invLength]
    _787 = (_118 == 29);
    _788 = select(_787, 8192.0f, 256.0f);
    _801 = exp2(log2(saturate(dot(float3(_714, _715, _716), float3((_710 * _706), (_710 * _707), (_710 * _708))))) * _788);
    _802 = exp2(log2(saturate(dot(float3(_714, _715, _716), float3((_736 * _732), (_736 * _733), (_736 * _734))))) * _788);
    _803 = exp2(log2(saturate(dot(float3(_714, _715, _716), float3((_759 * _755), (_759 * _756), (_759 * _757))))) * _788);
    _804 = exp2(log2(saturate(dot(float3(_714, _715, _716), float3((_782 * _778), (_782 * _779), (_782 * _780))))) * _788);
    _809 = 1.0f / max(1e-06f, (((_802 + _801) + _803) + _804));
    _812 = ((select((_585 > _637), 0.0f, exp2(_639 * _585)) * ((float)((bool)(!(_658 ^ (((_537 & 126) == 66) || (_589 == 53))))))) * _801) * _809;
    _815 = ((select((_586 > _637), 0.0f, exp2(_639 * _586)) * ((float)((bool)(!(_658 ^ (((_541 & 126) == 66) || (_590 == 53))))))) * _802) * _809;
    _818 = ((select((_587 > _637), 0.0f, exp2(_639 * _587)) * ((float)((bool)(!(_658 ^ (((_545 & 126) == 66) || (_591 == 53))))))) * _803) * _809;
    _821 = ((select((_588 > _637), 0.0f, exp2(_639 * _588)) * ((float)((bool)(!(_658 ^ (((_549 & 126) == 66) || (_592 == 53))))))) * _804) * _809;
    if (_787) {
      _852 = abs(((((float)((int)(_100))) * 0.5f) + -0.25f) - ((float)((int)(_526))));
      _853 = abs(((((float)((int)(_102))) * 0.5f) + -0.25f) - ((float)((int)(_527))));
    } else {
      _852 = (((float)((uint)((uint)((uint)((uint)(_100)) - (uint)((uint)((uint)(_526)) << 1)) - (uint)((uint)(_frameNumber.x & 1))))) * 0.5f);
      _853 = (((float)((uint)((uint)((uint)((uint)(_102)) - (uint)((uint)((uint)(_527)) << 1)) - (uint)((uint)(((uint)((uint)(_frameNumber.x)) >> 1) & 1))))) * 0.5f);
    }
    _854 = saturate(_852);  // [sem: _852_sat]
    _855 = saturate(_853);  // [sem: _853_sat]
    _856 = 1.0f - _854;
    _857 = 1.0f - _855;
    _858 = _857 * _856;
    _859 = _857 * _854;
    _860 = _856 * _855;
    _861 = _855 * _854;
    _870 = (_118 != 29) && ((_821 == 0.0f) && ((_818 == 0.0f) && ((_812 == 0.0f) && (_815 == 0.0f))));
    _879 = saturate(_858 * select(_870, 1.0f, _812));  // [sem: expr_sat]
    _880 = saturate(_859 * select(_870, 1.0f, _815));  // [sem: expr_sat]
    _881 = saturate(_860 * select(_870, 1.0f, _818));  // [sem: expr_sat]
    _882 = saturate(_861 * select(_870, 1.0f, _821));  // [sem: expr_sat]
    _883 = dot(float4(_879, _880, _881, _882), float4(1.0f, 1.0f, 1.0f, 1.0f));
    _884 = max(0.0f, _883);
    _889 = saturate(_879 / _884);  // [sem: expr_sat]
    _890 = saturate(_880 / _884);  // [sem: expr_sat]
    _891 = saturate(_881 / _884);  // [sem: expr_sat]
    _892 = saturate(_882 / _884);  // [sem: expr_sat]
    _896 = (float)((bool)(((((_592 == 6) || ((_592 == 107) || ((uint)((int)(_592) + (int)(-12)) < (uint)9))) || (((_591 == 6) || ((_591 == 107) || ((uint)((int)(_591) + (int)(-12)) < (uint)9))) || (((_589 == 6) || ((_589 == 107) || ((uint)((int)(_589) + (int)(-12)) < (uint)9))) || ((_590 == 6) || ((_590 == 107) || ((uint)((int)(_590) + (int)(-12)) < (uint)9)))))) || _630) && (_883 < 0.0001f)));
    _905 = ((_858 - _889) * _896) + _889;
    _906 = ((_859 - _890) * _896) + _890;
    _907 = ((_860 - _891) * _896) + _891;
    _908 = ((_861 - _892) * _896) + _892;
    half4 _910 = __3__36__0__0__g_diffuseResult.Load(int3(_526, _527, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    _920 = (uint)((uint)(_526)) + (uint)(1);
    half4 _921 = __3__36__0__0__g_diffuseResult.Load(int3(_920, _527, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    _934 = (uint)((uint)(_527)) + (uint)(1);
    half4 _935 = __3__36__0__0__g_diffuseResult.Load(int3(_526, _934, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    half4 _948 = __3__36__0__0__g_diffuseResult.Load(int3(_920, _934, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    _962 = __3__36__0__0__g_specularResult.Load(int3(_526, _527, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _969 = __3__36__0__0__g_specularResult.Load(int3(_920, _527, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _979 = __3__36__0__0__g_specularResult.Load(int3(_526, _934, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _989 = __3__36__0__0__g_specularResult.Load(int3(_920, _934, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _1006 = ((uint)((int)(_118) + (int)(-27)) < (uint)2) || ((_118 == 26) || (((uint)((int)(_118) + (int)(-105)) < (uint)2) || _183));
    _1008 = (_110 * 2.0f) + -1.0f;
    _1010 = 1.0f - (_111 * 2.0f);
    _1046 = mad((_invViewProjRelative[3].z), _121, mad((_invViewProjRelative[3].y), _1010, ((_invViewProjRelative[3].x) * _1008))) + (_invViewProjRelative[3].w);
    _1047 = (mad((_invViewProjRelative[0].z), _121, mad((_invViewProjRelative[0].y), _1010, ((_invViewProjRelative[0].x) * _1008))) + (_invViewProjRelative[0].w)) / _1046;
    _1048 = (mad((_invViewProjRelative[1].z), _121, mad((_invViewProjRelative[1].y), _1010, ((_invViewProjRelative[1].x) * _1008))) + (_invViewProjRelative[1].w)) / _1046;
    _1049 = (mad((_invViewProjRelative[2].z), _121, mad((_invViewProjRelative[2].y), _1010, ((_invViewProjRelative[2].x) * _1008))) + (_invViewProjRelative[2].w)) / _1046;
    _1051 = rsqrt(dot(float3(_1047, _1048, _1049), float3(_1047, _1048, _1049)));  // [sem: invLength]
    _1052 = _1051 * _1047;
    _1053 = _1051 * _1048;
    _1054 = _1051 * _1049;
    _1055 = (_118 == 33);
    _1057 = (_118 == 54);
    _1061 = (_118 == 55);
    if (((_204 == 64) || (_1057 || (_1055 || _658))) || (_1061 || _1006)) {
      _1066 = __3__36__0__0__g_character.Load(int3(_100, _102, 0));  // [sem: _3__36__0__0__g_character_load]
      _1072 = _1066.x;  // [sem: _3__36__0__0__g_character_load_derived]
      _1073 = _1066.y;  // [sem: _3__36__0__0__g_character_load_derived]
      _1074 = _1066.z;  // [sem: _3__36__0__0__g_character_load_derived]
      _1075 = _1066.w;  // [sem: _3__36__0__0__g_character_load_derived]
    } else {
      _1072 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
      _1073 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
      _1074 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
      _1075 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
    }
    if (!_1055) {
      if (_1057) {
        if ((((int)((uint)((_1074 * 255.0f) + 0.5f))) & 112) == 0) {
          _1118 = 52;
          _1119 = _522;
          _1120 = 0.0f;
          _1121 = 0.0f;
          _1122 = 0.0f;
          _1123 = 0.0f;
        } else {
          _1094 = (uint)((_1074 * 255.0f) + 0.5f);
          _1096 = ((uint)((uint)(_1094)) >> 4) & 7;
          if (!(_1096 == 0)) {
            _1103 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_1096) + (int)(1)))];
            _1109 = min((1.0f - _1103.y), _1103.x);
            _1110 = (((float)((uint)((uint)(_1094 & 15)))) * 0.06666667f);
            _1111 = _1103.y;
            _1112 = _1103.x;
          } else {
            _1109 = 0.0f;
            _1110 = 0.0f;
            _1111 = 0.0f;
            _1112 = 0.0f;
          }
          _1118 = _118;
          _1119 = (half)(half(_effectiveMetallicForVelvet * _1112));
          _1120 = _1109;
          _1121 = _1110;
          _1122 = _1111;
          _1123 = _1112;
        }
      } else {
        if (_1061) {
          if ((((int)((uint)((_1074 * 255.0f) + 0.5f))) & 127) == 0) {
            _1118 = 52;
            _1119 = _522;
            _1120 = 0.0f;
            _1121 = 0.0f;
            _1122 = 0.0f;
            _1123 = 0.0f;
          } else {
            _1118 = 55;
            _1119 = _522;
            _1120 = 0.0f;
            _1121 = 0.0f;
            _1122 = 0.0f;
            _1123 = 0.0f;
          }
        } else {
          _1118 = _118;
          _1119 = _522;
          _1120 = 0.0f;
          _1121 = 0.0f;
          _1122 = 0.0f;
          _1123 = 0.0f;
        }
      }
    } else {
      _1094 = (uint)((_1074 * 255.0f) + 0.5f);
      _1096 = ((uint)((uint)(_1094)) >> 4) & 7;
      if (!(_1096 == 0)) {
        _1103 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_1096) + (int)(1)))];
        _1109 = min((1.0f - _1103.y), _1103.x);
        _1110 = (((float)((uint)((uint)(_1094 & 15)))) * 0.06666667f);
        _1111 = _1103.y;
        _1112 = _1103.x;
      } else {
        _1109 = 0.0f;
        _1110 = 0.0f;
        _1111 = 0.0f;
        _1112 = 0.0f;
      }
      _1118 = _118;
      _1119 = (half)(half(_effectiveMetallicForVelvet * _1112));
      _1120 = _1109;
      _1121 = _1110;
      _1122 = _1111;
      _1123 = _1112;
    }
    if (_1118 == 66) {
      _1155 = float(_1119);
      _1189 = _1155;
      _1190 = ((_1072 * 2.0f) + -1.0f);
      _1191 = ((_1073 * 2.0f) + -1.0f);
      _1192 = ((_1074 * 2.0f) + -1.0f);
      _1193 = 0.0h;
      if ((_1118 == 53) || ((_1118 & 126) == 66)) {
        _1199 = _1189;
        _1200 = _1190;
        _1201 = _1191;
        _1202 = _1192;
        _1203 = _1193;
        _1205 = __3__36__0__0__g_bentCone.Load(int3(_526, _527, 0));  // [sem: _3__36__0__0__g_bentCone_load]
        _1212 = __3__36__0__0__g_bentCone.Load(int3(_920, _527, 0));  // [sem: _3__36__0__0__g_bentCone_load]
        _1222 = __3__36__0__0__g_bentCone.Load(int3(_526, _934, 0));  // [sem: _3__36__0__0__g_bentCone_load]
        _1232 = __3__36__0__0__g_bentCone.Load(int3(_920, _934, 0));  // [sem: _3__36__0__0__g_bentCone_load]
        _1245 = (((((_1212.x * _906) + (_1205.x * _905)) + (_1222.x * _907)) + (_1232.x * _908)) * 2.0f) + -1.0f;
        _1246 = (((((_1212.y * _906) + (_1205.y * _905)) + (_1222.y * _907)) + (_1232.y * _908)) * 2.0f) + -1.0f;
        _1247 = (((((_1212.z * _906) + (_1205.z * _905)) + (_1222.z * _907)) + (_1232.z * _908)) * 2.0f) + -1.0f;
        _1249 = rsqrt(dot(float3(_1245, _1246, _1247), float3(_1245, _1246, _1247)));  // [sem: invLength]
        _1250 = _1245 * _1249;
        _1251 = _1246 * _1249;
        _1252 = _1247 * _1249;
        if (!(_renderParams.z > 0.0f)) {
          if (!(_renderParams2.y > 0.0f)) {
            _1264 = (half)(saturate((half)(_279 + 0.15002441h)));
          } else {
            _1264 = _279;
          }
        } else {
          _1264 = _279;
        }
        _1265 = float(_1264);
        if (_1118 == 53) {
          _1281 = (((asfloat(_globalLightParams.z) * _1265) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_277)));
        } else {
          _1281 = _bevelParams.y;
        }
        _1282 = float(_309);
        _1283 = float(_310);
        _1284 = float(_311);
        _1285 = dot(float3(_1200, _1201, _1202), float3(_1250, _1251, _1252));
        _1286 = -0.0f - _1052;
        _1287 = -0.0f - _1053;
        _1288 = -0.0f - _1054;
        _1289 = dot(float3(_1200, _1201, _1202), float3(_1286, _1287, _1288));
        _1295 = cos(abs(asin(_1289) - asin(_1285)) * 0.5f);
        _1299 = _1250 - (_1285 * _1200);
        _1300 = _1251 - (_1285 * _1201);
        _1301 = _1252 - (_1285 * _1202);
        _1305 = _1286 - (_1289 * _1200);
        _1306 = _1287 - (_1289 * _1201);
        _1307 = _1288 - (_1289 * _1202);
        // [sem: invLength]
        _1314 = rsqrt((dot(float3(_1305, _1306, _1307), float3(_1305, _1306, _1307)) * dot(float3(_1299, _1300, _1301), float3(_1299, _1300, _1301))) + 0.0001f) * dot(float3(_1299, _1300, _1301), float3(_1305, _1306, _1307));
        _1324 = min(max(_1265, 0.09803922f), 1.0f);
        _1325 = _1324 * _1324;
        _1326 = _1325 * 0.5f;
        _1327 = _1325 * 2.0f;
        _1328 = _1289 + _1285;
        _1329 = _1328 - _1281;
        _1338 = 1.0f / ((1.19f / _1295) + (_1295 * 0.36f));
        _1343 = ((_1338 * (0.6f - (_1314 * 0.8f))) + 1.0f) * sqrt(saturate((_1314 * 0.5f) + 0.5f));
        _1349 = 1.0f - (sqrt(saturate(1.0f - (_1343 * _1343))) * _1295);
        _1350 = _1349 * _1349;
        _1354 = 0.9534794f - ((_1350 * _1350) * (_1349 * 0.9534794f));
        _1355 = _1338 * _1343;
        _1360 = (sqrt(1.0f - (_1355 * _1355)) * 0.5f) / _1295;
        _1361 = log2(_1282);
        _1362 = log2(_1283);
        _1363 = log2(_1284);
        _1375 = ((_1354 * _1354) * (exp2((((_1329 * _1329) * -0.5f) / (_1326 * _1326)) * 1.442695f) / (_1325 * 1.2533141f))) * exp2(-5.741926f - (_1314 * 5.265837f));
        _1379 = _1328 - (_1281 * 4.0f);
        _1389 = 1.0f - (_1295 * 0.5f);
        _1390 = _1389 * _1389;
        _1394 = (_1390 * _1390) * (0.9534794f - (_1295 * 0.4767397f));
        _1396 = 0.9534794f - _1394;
        _1397 = 0.8f / _1295;
        _1410 = (((_1396 * _1396) * (_1394 + 0.046520565f)) * (exp2((((_1379 * _1379) * -0.5f) / (_1327 * _1327)) * 1.442695f) / (_1325 * 5.0132565f))) * exp2((_1314 * 24.525816f) + -24.208424f);
        _1420 = min(0.0f, (-0.0f - ((_1375 * exp2(_1361 * _1360)) + (_1410 * exp2(_1397 * _1361)))));
        _1421 = min(0.0f, (-0.0f - ((_1375 * exp2(_1362 * _1360)) + (_1410 * exp2(_1397 * _1362)))));
        _1422 = min(0.0f, (-0.0f - ((_1375 * exp2(_1363 * _1360)) + (_1410 * exp2(_1397 * _1363)))));
        _1431 = saturate(abs(dot(float3(_1250, _1251, _1252), float3(_1200, _1201, _1202))));  // [sem: expr_sat]
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _1440 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1361 * 1.5f)))), 0.0f);
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _1443 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1362 * 1.5f)))), 0.0f);
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _1446 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1363 * 1.5f)))), 0.0f);
        _1453 = min(0.99f, _1440.x);
        _1454 = min(0.99f, _1443.x);
        _1455 = min(0.99f, _1446.x);
        _1456 = min(0.99f, _1440.y);
        _1457 = min(0.99f, _1443.y);
        _1458 = min(0.99f, _1446.y);
        _1459 = _1453 * _1453;
        _1460 = _1454 * _1454;
        _1461 = _1455 * _1455;
        _1462 = _1456 * _1456;
        _1463 = _1457 * _1457;
        _1464 = _1458 * _1458;
        _1465 = _1462 * _1456;
        _1466 = _1463 * _1457;
        _1467 = _1464 * _1458;
        _1468 = 1.0f - _1459;
        _1469 = 1.0f - _1460;
        _1470 = 1.0f - _1461;
        _1480 = _1468 * _1468;
        _1481 = _1469 * _1469;
        _1482 = _1470 * _1470;
        _1483 = _1480 * _1468;
        _1484 = _1481 * _1469;
        _1485 = _1482 * _1470;
        _1493 = min(max(_1265, 0.18f), 0.6f);
        _1494 = _1493 * _1493;
        _1495 = _1494 * 0.25f;
        _1496 = _1494 * 4.0f;
        _1498 = (_1454 + _1453) + _1455;
        _1499 = _1453 / _1498;
        _1500 = _1454 / _1498;
        _1501 = _1455 / _1498;
        _1502 = dot(float3(_1494, _1495, _1496), float3(_1499, _1500, _1501));
        _1503 = _1502 * _1502;
        _1506 = asin(min(max(_1289, -1.0f), 1.0f)) + asin(min(max(_1285, -1.0f), 1.0f));
        _1507 = _1506 * 0.5f;
        _1508 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1499, _1500, _1501));
        _1518 = _1508 * _1508;
        _1541 = (_1457 + _1456) + _1458;
        _1545 = dot(float3(_1494, _1495, _1496), float3((_1456 / _1541), (_1457 / _1541), (_1458 / _1541)));
        _1549 = sqrt((_1545 * _1545) + (_1503 * 2.0f));
        _1567 = (_1545 * 3.0f) + (_1502 * 2.0f);
        _1574 = (((_1465 + _1456) * ((_1459 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1465) + _1456);
        _1575 = (((_1466 + _1457) * ((_1460 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1466) + _1457);
        _1576 = (((_1467 + _1458) * ((_1461 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1467) + _1458);
        _1585 = _1507 - (((_1518 * (((_1459 * 4.0f) * _1462) + (_1480 * 2.0f))) * (1.0f - ((_1462 * 2.0f) / _1480))) / _1483);
        _1592 = _1507 - (((_1518 * (((_1460 * 4.0f) * _1463) + (_1481 * 2.0f))) * (1.0f - ((_1463 * 2.0f) / _1481))) / _1484);
        _1599 = _1507 - (((_1518 * (((_1461 * 4.0f) * _1464) + (_1482 * 2.0f))) * (1.0f - ((_1464 * 2.0f) / _1482))) / _1485);
        _1627 = exp2((((_1506 * -0.25f) * _1507) / _1503) * 1.442695f) * 1.4f;
        _1628 = ((((((_1465 * _1459) / _1483) + ((_1456 * _1459) / _1468)) * 4.3982296f) * exp2((((_1585 * _1585) * -0.5f) / ((_1574 * _1574) + _1503)) * 1.442695f)) + ((((_1440.x + _1420) * 0.25f) - _1420) * 6.2831855f)) * _1627;
        _1629 = ((((((_1466 * _1460) / _1484) + ((_1457 * _1460) / _1469)) * 4.3982296f) * exp2((((_1592 * _1592) * -0.5f) / ((_1575 * _1575) + _1503)) * 1.442695f)) + ((((_1443.x + _1421) * 0.25f) - _1421) * 6.2831855f)) * _1627;
        _1630 = ((((((_1467 * _1461) / _1485) + ((_1458 * _1461) / _1470)) * 4.3982296f) * exp2((((_1599 * _1599) * -0.5f) / ((_1576 * _1576) + _1503)) * 1.442695f)) + ((((_1446.x + _1422) * 0.25f) - _1422) * 6.2831855f)) * _1627;
        _1631 = max(0.125f, _1199);
        _1645 = _1199;
        _1646 = _1203;
        _1647 = _1200;
        _1648 = _1201;
        _1649 = _1202;
        _1650 = _1118;
        _1651 = max(0.01f, ((_1631 * (_1282 - _1628)) + _1628));
        _1652 = max(0.01f, (lerp(_1629, _1283, _1631)));
        _1653 = max(0.01f, (lerp(_1630, _1284, _1631)));
      } else {
        _1645 = _1189;
        _1646 = _1193;
        _1647 = _1190;
        _1648 = _1191;
        _1649 = _1192;
        _1650 = _1118;
        _1651 = 0.0f;
        _1652 = 0.0f;
        _1653 = 0.0f;
      }
    } else {
      _1127 = (_1118 == 53);
      if ((_1118 == 67) || _1127) {
        _1134 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 127)));
        if (!(float(_1119) > (frac(frac(dot(float2(((_1134 * 32.665f) + _103), ((_1134 * 11.815f) + _104)), float2(0.06711056f, 0.00583715f))) * 52.982918f) * 0.2f))) {
          if ((_1118 & 126) == 66) {
            _1155 = 1.0f;
            _1189 = _1155;
            _1190 = ((_1072 * 2.0f) + -1.0f);
            _1191 = ((_1073 * 2.0f) + -1.0f);
            _1192 = ((_1074 * 2.0f) + -1.0f);
            _1193 = 0.0h;
            if ((_1118 == 53) || ((_1118 & 126) == 66)) {
              _1199 = _1189;
              _1200 = _1190;
              _1201 = _1191;
              _1202 = _1192;
              _1203 = _1193;
              _1205 = __3__36__0__0__g_bentCone.Load(int3(_526, _527, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1212 = __3__36__0__0__g_bentCone.Load(int3(_920, _527, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1222 = __3__36__0__0__g_bentCone.Load(int3(_526, _934, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1232 = __3__36__0__0__g_bentCone.Load(int3(_920, _934, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1245 = (((((_1212.x * _906) + (_1205.x * _905)) + (_1222.x * _907)) + (_1232.x * _908)) * 2.0f) + -1.0f;
              _1246 = (((((_1212.y * _906) + (_1205.y * _905)) + (_1222.y * _907)) + (_1232.y * _908)) * 2.0f) + -1.0f;
              _1247 = (((((_1212.z * _906) + (_1205.z * _905)) + (_1222.z * _907)) + (_1232.z * _908)) * 2.0f) + -1.0f;
              _1249 = rsqrt(dot(float3(_1245, _1246, _1247), float3(_1245, _1246, _1247)));  // [sem: invLength]
              _1250 = _1245 * _1249;
              _1251 = _1246 * _1249;
              _1252 = _1247 * _1249;
              if (!(_renderParams.z > 0.0f)) {
                if (!(_renderParams2.y > 0.0f)) {
                  _1264 = (half)(saturate((half)(_279 + 0.15002441h)));
                } else {
                  _1264 = _279;
                }
              } else {
                _1264 = _279;
              }
              _1265 = float(_1264);
              if (_1118 == 53) {
                _1281 = (((asfloat(_globalLightParams.z) * _1265) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_277)));
              } else {
                _1281 = _bevelParams.y;
              }
              _1282 = float(_309);
              _1283 = float(_310);
              _1284 = float(_311);
              _1285 = dot(float3(_1200, _1201, _1202), float3(_1250, _1251, _1252));
              _1286 = -0.0f - _1052;
              _1287 = -0.0f - _1053;
              _1288 = -0.0f - _1054;
              _1289 = dot(float3(_1200, _1201, _1202), float3(_1286, _1287, _1288));
              _1295 = cos(abs(asin(_1289) - asin(_1285)) * 0.5f);
              _1299 = _1250 - (_1285 * _1200);
              _1300 = _1251 - (_1285 * _1201);
              _1301 = _1252 - (_1285 * _1202);
              _1305 = _1286 - (_1289 * _1200);
              _1306 = _1287 - (_1289 * _1201);
              _1307 = _1288 - (_1289 * _1202);
              // [sem: invLength]
              _1314 = rsqrt((dot(float3(_1305, _1306, _1307), float3(_1305, _1306, _1307)) * dot(float3(_1299, _1300, _1301), float3(_1299, _1300, _1301))) + 0.0001f) * dot(float3(_1299, _1300, _1301), float3(_1305, _1306, _1307));
              _1324 = min(max(_1265, 0.09803922f), 1.0f);
              _1325 = _1324 * _1324;
              _1326 = _1325 * 0.5f;
              _1327 = _1325 * 2.0f;
              _1328 = _1289 + _1285;
              _1329 = _1328 - _1281;
              _1338 = 1.0f / ((1.19f / _1295) + (_1295 * 0.36f));
              _1343 = ((_1338 * (0.6f - (_1314 * 0.8f))) + 1.0f) * sqrt(saturate((_1314 * 0.5f) + 0.5f));
              _1349 = 1.0f - (sqrt(saturate(1.0f - (_1343 * _1343))) * _1295);
              _1350 = _1349 * _1349;
              _1354 = 0.9534794f - ((_1350 * _1350) * (_1349 * 0.9534794f));
              _1355 = _1338 * _1343;
              _1360 = (sqrt(1.0f - (_1355 * _1355)) * 0.5f) / _1295;
              _1361 = log2(_1282);
              _1362 = log2(_1283);
              _1363 = log2(_1284);
              _1375 = ((_1354 * _1354) * (exp2((((_1329 * _1329) * -0.5f) / (_1326 * _1326)) * 1.442695f) / (_1325 * 1.2533141f))) * exp2(-5.741926f - (_1314 * 5.265837f));
              _1379 = _1328 - (_1281 * 4.0f);
              _1389 = 1.0f - (_1295 * 0.5f);
              _1390 = _1389 * _1389;
              _1394 = (_1390 * _1390) * (0.9534794f - (_1295 * 0.4767397f));
              _1396 = 0.9534794f - _1394;
              _1397 = 0.8f / _1295;
              _1410 = (((_1396 * _1396) * (_1394 + 0.046520565f)) * (exp2((((_1379 * _1379) * -0.5f) / (_1327 * _1327)) * 1.442695f) / (_1325 * 5.0132565f))) * exp2((_1314 * 24.525816f) + -24.208424f);
              _1420 = min(0.0f, (-0.0f - ((_1375 * exp2(_1361 * _1360)) + (_1410 * exp2(_1397 * _1361)))));
              _1421 = min(0.0f, (-0.0f - ((_1375 * exp2(_1362 * _1360)) + (_1410 * exp2(_1397 * _1362)))));
              _1422 = min(0.0f, (-0.0f - ((_1375 * exp2(_1363 * _1360)) + (_1410 * exp2(_1397 * _1363)))));
              _1431 = saturate(abs(dot(float3(_1250, _1251, _1252), float3(_1200, _1201, _1202))));  // [sem: expr_sat]
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1440 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1361 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1443 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1362 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1446 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1363 * 1.5f)))), 0.0f);
              _1453 = min(0.99f, _1440.x);
              _1454 = min(0.99f, _1443.x);
              _1455 = min(0.99f, _1446.x);
              _1456 = min(0.99f, _1440.y);
              _1457 = min(0.99f, _1443.y);
              _1458 = min(0.99f, _1446.y);
              _1459 = _1453 * _1453;
              _1460 = _1454 * _1454;
              _1461 = _1455 * _1455;
              _1462 = _1456 * _1456;
              _1463 = _1457 * _1457;
              _1464 = _1458 * _1458;
              _1465 = _1462 * _1456;
              _1466 = _1463 * _1457;
              _1467 = _1464 * _1458;
              _1468 = 1.0f - _1459;
              _1469 = 1.0f - _1460;
              _1470 = 1.0f - _1461;
              _1480 = _1468 * _1468;
              _1481 = _1469 * _1469;
              _1482 = _1470 * _1470;
              _1483 = _1480 * _1468;
              _1484 = _1481 * _1469;
              _1485 = _1482 * _1470;
              _1493 = min(max(_1265, 0.18f), 0.6f);
              _1494 = _1493 * _1493;
              _1495 = _1494 * 0.25f;
              _1496 = _1494 * 4.0f;
              _1498 = (_1454 + _1453) + _1455;
              _1499 = _1453 / _1498;
              _1500 = _1454 / _1498;
              _1501 = _1455 / _1498;
              _1502 = dot(float3(_1494, _1495, _1496), float3(_1499, _1500, _1501));
              _1503 = _1502 * _1502;
              _1506 = asin(min(max(_1289, -1.0f), 1.0f)) + asin(min(max(_1285, -1.0f), 1.0f));
              _1507 = _1506 * 0.5f;
              _1508 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1499, _1500, _1501));
              _1518 = _1508 * _1508;
              _1541 = (_1457 + _1456) + _1458;
              _1545 = dot(float3(_1494, _1495, _1496), float3((_1456 / _1541), (_1457 / _1541), (_1458 / _1541)));
              _1549 = sqrt((_1545 * _1545) + (_1503 * 2.0f));
              _1567 = (_1545 * 3.0f) + (_1502 * 2.0f);
              _1574 = (((_1465 + _1456) * ((_1459 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1465) + _1456);
              _1575 = (((_1466 + _1457) * ((_1460 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1466) + _1457);
              _1576 = (((_1467 + _1458) * ((_1461 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1467) + _1458);
              _1585 = _1507 - (((_1518 * (((_1459 * 4.0f) * _1462) + (_1480 * 2.0f))) * (1.0f - ((_1462 * 2.0f) / _1480))) / _1483);
              _1592 = _1507 - (((_1518 * (((_1460 * 4.0f) * _1463) + (_1481 * 2.0f))) * (1.0f - ((_1463 * 2.0f) / _1481))) / _1484);
              _1599 = _1507 - (((_1518 * (((_1461 * 4.0f) * _1464) + (_1482 * 2.0f))) * (1.0f - ((_1464 * 2.0f) / _1482))) / _1485);
              _1627 = exp2((((_1506 * -0.25f) * _1507) / _1503) * 1.442695f) * 1.4f;
              _1628 = ((((((_1465 * _1459) / _1483) + ((_1456 * _1459) / _1468)) * 4.3982296f) * exp2((((_1585 * _1585) * -0.5f) / ((_1574 * _1574) + _1503)) * 1.442695f)) + ((((_1440.x + _1420) * 0.25f) - _1420) * 6.2831855f)) * _1627;
              _1629 = ((((((_1466 * _1460) / _1484) + ((_1457 * _1460) / _1469)) * 4.3982296f) * exp2((((_1592 * _1592) * -0.5f) / ((_1575 * _1575) + _1503)) * 1.442695f)) + ((((_1443.x + _1421) * 0.25f) - _1421) * 6.2831855f)) * _1627;
              _1630 = ((((((_1467 * _1461) / _1485) + ((_1458 * _1461) / _1470)) * 4.3982296f) * exp2((((_1599 * _1599) * -0.5f) / ((_1576 * _1576) + _1503)) * 1.442695f)) + ((((_1446.x + _1422) * 0.25f) - _1422) * 6.2831855f)) * _1627;
              _1631 = max(0.125f, _1199);
              _1645 = _1199;
              _1646 = _1203;
              _1647 = _1200;
              _1648 = _1201;
              _1649 = _1202;
              _1650 = _1118;
              _1651 = max(0.01f, ((_1631 * (_1282 - _1628)) + _1628));
              _1652 = max(0.01f, (lerp(_1629, _1283, _1631)));
              _1653 = max(0.01f, (lerp(_1630, _1284, _1631)));
            } else {
              _1645 = _1189;
              _1646 = _1193;
              _1647 = _1190;
              _1648 = _1191;
              _1649 = _1192;
              _1650 = _1118;
              _1651 = 0.0f;
              _1652 = 0.0f;
              _1653 = 0.0f;
            }
          } else {
            _1152 = 1.0f;
            _1153 = 0.0h;
            if (_1127) {
              _1165 = (_1072 * 2.0f) + -1.0f;
              _1166 = (_1073 * 2.0f) + -1.0f;
              _1168 = 1.0f - abs(_1165);
              _1169 = abs(_1166);
              _1170 = _1168 - _1169;
              if (!(_1170 >= 0.0f)) {
                _1181 = ((1.0f - _1169) * select((_1165 >= 0.0f), 1.0f, -1.0f));
                _1182 = (_1168 * select((_1166 >= 0.0f), 1.0f, -1.0f));
              } else {
                _1181 = _1165;
                _1182 = _1166;
              }
              _1184 = rsqrt(dot(float3(_1181, _1182, _1170), float3(_1181, _1182, _1170)));  // [sem: invLength]
              _1199 = _1152;
              _1200 = (_1184 * _1181);
              _1201 = (_1184 * _1182);
              _1202 = (_1184 * _1170);
              _1203 = 0.0h;
              _1205 = __3__36__0__0__g_bentCone.Load(int3(_526, _527, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1212 = __3__36__0__0__g_bentCone.Load(int3(_920, _527, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1222 = __3__36__0__0__g_bentCone.Load(int3(_526, _934, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1232 = __3__36__0__0__g_bentCone.Load(int3(_920, _934, 0));  // [sem: _3__36__0__0__g_bentCone_load]
              _1245 = (((((_1212.x * _906) + (_1205.x * _905)) + (_1222.x * _907)) + (_1232.x * _908)) * 2.0f) + -1.0f;
              _1246 = (((((_1212.y * _906) + (_1205.y * _905)) + (_1222.y * _907)) + (_1232.y * _908)) * 2.0f) + -1.0f;
              _1247 = (((((_1212.z * _906) + (_1205.z * _905)) + (_1222.z * _907)) + (_1232.z * _908)) * 2.0f) + -1.0f;
              _1249 = rsqrt(dot(float3(_1245, _1246, _1247), float3(_1245, _1246, _1247)));  // [sem: invLength]
              _1250 = _1245 * _1249;
              _1251 = _1246 * _1249;
              _1252 = _1247 * _1249;
              if (!(_renderParams.z > 0.0f)) {
                if (!(_renderParams2.y > 0.0f)) {
                  _1264 = (half)(saturate((half)(_279 + 0.15002441h)));
                } else {
                  _1264 = _279;
                }
              } else {
                _1264 = _279;
              }
              _1265 = float(_1264);
              if (_1118 == 53) {
                _1281 = (((asfloat(_globalLightParams.z) * _1265) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_277)));
              } else {
                _1281 = _bevelParams.y;
              }
              _1282 = float(_309);
              _1283 = float(_310);
              _1284 = float(_311);
              _1285 = dot(float3(_1200, _1201, _1202), float3(_1250, _1251, _1252));
              _1286 = -0.0f - _1052;
              _1287 = -0.0f - _1053;
              _1288 = -0.0f - _1054;
              _1289 = dot(float3(_1200, _1201, _1202), float3(_1286, _1287, _1288));
              _1295 = cos(abs(asin(_1289) - asin(_1285)) * 0.5f);
              _1299 = _1250 - (_1285 * _1200);
              _1300 = _1251 - (_1285 * _1201);
              _1301 = _1252 - (_1285 * _1202);
              _1305 = _1286 - (_1289 * _1200);
              _1306 = _1287 - (_1289 * _1201);
              _1307 = _1288 - (_1289 * _1202);
              // [sem: invLength]
              _1314 = rsqrt((dot(float3(_1305, _1306, _1307), float3(_1305, _1306, _1307)) * dot(float3(_1299, _1300, _1301), float3(_1299, _1300, _1301))) + 0.0001f) * dot(float3(_1299, _1300, _1301), float3(_1305, _1306, _1307));
              _1324 = min(max(_1265, 0.09803922f), 1.0f);
              _1325 = _1324 * _1324;
              _1326 = _1325 * 0.5f;
              _1327 = _1325 * 2.0f;
              _1328 = _1289 + _1285;
              _1329 = _1328 - _1281;
              _1338 = 1.0f / ((1.19f / _1295) + (_1295 * 0.36f));
              _1343 = ((_1338 * (0.6f - (_1314 * 0.8f))) + 1.0f) * sqrt(saturate((_1314 * 0.5f) + 0.5f));
              _1349 = 1.0f - (sqrt(saturate(1.0f - (_1343 * _1343))) * _1295);
              _1350 = _1349 * _1349;
              _1354 = 0.9534794f - ((_1350 * _1350) * (_1349 * 0.9534794f));
              _1355 = _1338 * _1343;
              _1360 = (sqrt(1.0f - (_1355 * _1355)) * 0.5f) / _1295;
              _1361 = log2(_1282);
              _1362 = log2(_1283);
              _1363 = log2(_1284);
              _1375 = ((_1354 * _1354) * (exp2((((_1329 * _1329) * -0.5f) / (_1326 * _1326)) * 1.442695f) / (_1325 * 1.2533141f))) * exp2(-5.741926f - (_1314 * 5.265837f));
              _1379 = _1328 - (_1281 * 4.0f);
              _1389 = 1.0f - (_1295 * 0.5f);
              _1390 = _1389 * _1389;
              _1394 = (_1390 * _1390) * (0.9534794f - (_1295 * 0.4767397f));
              _1396 = 0.9534794f - _1394;
              _1397 = 0.8f / _1295;
              _1410 = (((_1396 * _1396) * (_1394 + 0.046520565f)) * (exp2((((_1379 * _1379) * -0.5f) / (_1327 * _1327)) * 1.442695f) / (_1325 * 5.0132565f))) * exp2((_1314 * 24.525816f) + -24.208424f);
              _1420 = min(0.0f, (-0.0f - ((_1375 * exp2(_1361 * _1360)) + (_1410 * exp2(_1397 * _1361)))));
              _1421 = min(0.0f, (-0.0f - ((_1375 * exp2(_1362 * _1360)) + (_1410 * exp2(_1397 * _1362)))));
              _1422 = min(0.0f, (-0.0f - ((_1375 * exp2(_1363 * _1360)) + (_1410 * exp2(_1397 * _1363)))));
              _1431 = saturate(abs(dot(float3(_1250, _1251, _1252), float3(_1200, _1201, _1202))));  // [sem: expr_sat]
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1440 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1361 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1443 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1362 * 1.5f)))), 0.0f);
              // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
              _1446 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1363 * 1.5f)))), 0.0f);
              _1453 = min(0.99f, _1440.x);
              _1454 = min(0.99f, _1443.x);
              _1455 = min(0.99f, _1446.x);
              _1456 = min(0.99f, _1440.y);
              _1457 = min(0.99f, _1443.y);
              _1458 = min(0.99f, _1446.y);
              _1459 = _1453 * _1453;
              _1460 = _1454 * _1454;
              _1461 = _1455 * _1455;
              _1462 = _1456 * _1456;
              _1463 = _1457 * _1457;
              _1464 = _1458 * _1458;
              _1465 = _1462 * _1456;
              _1466 = _1463 * _1457;
              _1467 = _1464 * _1458;
              _1468 = 1.0f - _1459;
              _1469 = 1.0f - _1460;
              _1470 = 1.0f - _1461;
              _1480 = _1468 * _1468;
              _1481 = _1469 * _1469;
              _1482 = _1470 * _1470;
              _1483 = _1480 * _1468;
              _1484 = _1481 * _1469;
              _1485 = _1482 * _1470;
              _1493 = min(max(_1265, 0.18f), 0.6f);
              _1494 = _1493 * _1493;
              _1495 = _1494 * 0.25f;
              _1496 = _1494 * 4.0f;
              _1498 = (_1454 + _1453) + _1455;
              _1499 = _1453 / _1498;
              _1500 = _1454 / _1498;
              _1501 = _1455 / _1498;
              _1502 = dot(float3(_1494, _1495, _1496), float3(_1499, _1500, _1501));
              _1503 = _1502 * _1502;
              _1506 = asin(min(max(_1289, -1.0f), 1.0f)) + asin(min(max(_1285, -1.0f), 1.0f));
              _1507 = _1506 * 0.5f;
              _1508 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1499, _1500, _1501));
              _1518 = _1508 * _1508;
              _1541 = (_1457 + _1456) + _1458;
              _1545 = dot(float3(_1494, _1495, _1496), float3((_1456 / _1541), (_1457 / _1541), (_1458 / _1541)));
              _1549 = sqrt((_1545 * _1545) + (_1503 * 2.0f));
              _1567 = (_1545 * 3.0f) + (_1502 * 2.0f);
              _1574 = (((_1465 + _1456) * ((_1459 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1465) + _1456);
              _1575 = (((_1466 + _1457) * ((_1460 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1466) + _1457);
              _1576 = (((_1467 + _1458) * ((_1461 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1467) + _1458);
              _1585 = _1507 - (((_1518 * (((_1459 * 4.0f) * _1462) + (_1480 * 2.0f))) * (1.0f - ((_1462 * 2.0f) / _1480))) / _1483);
              _1592 = _1507 - (((_1518 * (((_1460 * 4.0f) * _1463) + (_1481 * 2.0f))) * (1.0f - ((_1463 * 2.0f) / _1481))) / _1484);
              _1599 = _1507 - (((_1518 * (((_1461 * 4.0f) * _1464) + (_1482 * 2.0f))) * (1.0f - ((_1464 * 2.0f) / _1482))) / _1485);
              _1627 = exp2((((_1506 * -0.25f) * _1507) / _1503) * 1.442695f) * 1.4f;
              _1628 = ((((((_1465 * _1459) / _1483) + ((_1456 * _1459) / _1468)) * 4.3982296f) * exp2((((_1585 * _1585) * -0.5f) / ((_1574 * _1574) + _1503)) * 1.442695f)) + ((((_1440.x + _1420) * 0.25f) - _1420) * 6.2831855f)) * _1627;
              _1629 = ((((((_1466 * _1460) / _1484) + ((_1457 * _1460) / _1469)) * 4.3982296f) * exp2((((_1592 * _1592) * -0.5f) / ((_1575 * _1575) + _1503)) * 1.442695f)) + ((((_1443.x + _1421) * 0.25f) - _1421) * 6.2831855f)) * _1627;
              _1630 = ((((((_1467 * _1461) / _1485) + ((_1458 * _1461) / _1470)) * 4.3982296f) * exp2((((_1599 * _1599) * -0.5f) / ((_1576 * _1576) + _1503)) * 1.442695f)) + ((((_1446.x + _1422) * 0.25f) - _1422) * 6.2831855f)) * _1627;
              _1631 = max(0.125f, _1199);
              _1645 = _1199;
              _1646 = _1203;
              _1647 = _1200;
              _1648 = _1201;
              _1649 = _1202;
              _1650 = _1118;
              _1651 = max(0.01f, ((_1631 * (_1282 - _1628)) + _1628));
              _1652 = max(0.01f, (lerp(_1629, _1283, _1631)));
              _1653 = max(0.01f, (lerp(_1630, _1284, _1631)));
            } else {
              _1189 = _1152;
              _1190 = _714;
              _1191 = _715;
              _1192 = _716;
              _1193 = _1153;
              if ((_1118 == 53) || ((_1118 & 126) == 66)) {
                _1199 = _1189;
                _1200 = _1190;
                _1201 = _1191;
                _1202 = _1192;
                _1203 = _1193;
                _1205 = __3__36__0__0__g_bentCone.Load(int3(_526, _527, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _1212 = __3__36__0__0__g_bentCone.Load(int3(_920, _527, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _1222 = __3__36__0__0__g_bentCone.Load(int3(_526, _934, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _1232 = __3__36__0__0__g_bentCone.Load(int3(_920, _934, 0));  // [sem: _3__36__0__0__g_bentCone_load]
                _1245 = (((((_1212.x * _906) + (_1205.x * _905)) + (_1222.x * _907)) + (_1232.x * _908)) * 2.0f) + -1.0f;
                _1246 = (((((_1212.y * _906) + (_1205.y * _905)) + (_1222.y * _907)) + (_1232.y * _908)) * 2.0f) + -1.0f;
                _1247 = (((((_1212.z * _906) + (_1205.z * _905)) + (_1222.z * _907)) + (_1232.z * _908)) * 2.0f) + -1.0f;
                _1249 = rsqrt(dot(float3(_1245, _1246, _1247), float3(_1245, _1246, _1247)));  // [sem: invLength]
                _1250 = _1245 * _1249;
                _1251 = _1246 * _1249;
                _1252 = _1247 * _1249;
                if (!(_renderParams.z > 0.0f)) {
                  if (!(_renderParams2.y > 0.0f)) {
                    _1264 = (half)(saturate((half)(_279 + 0.15002441h)));
                  } else {
                    _1264 = _279;
                  }
                } else {
                  _1264 = _279;
                }
                _1265 = float(_1264);
                if (_1118 == 53) {
                  _1281 = (((asfloat(_globalLightParams.z) * _1265) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_277)));
                } else {
                  _1281 = _bevelParams.y;
                }
                _1282 = float(_309);
                _1283 = float(_310);
                _1284 = float(_311);
                _1285 = dot(float3(_1200, _1201, _1202), float3(_1250, _1251, _1252));
                _1286 = -0.0f - _1052;
                _1287 = -0.0f - _1053;
                _1288 = -0.0f - _1054;
                _1289 = dot(float3(_1200, _1201, _1202), float3(_1286, _1287, _1288));
                _1295 = cos(abs(asin(_1289) - asin(_1285)) * 0.5f);
                _1299 = _1250 - (_1285 * _1200);
                _1300 = _1251 - (_1285 * _1201);
                _1301 = _1252 - (_1285 * _1202);
                _1305 = _1286 - (_1289 * _1200);
                _1306 = _1287 - (_1289 * _1201);
                _1307 = _1288 - (_1289 * _1202);
                // [sem: invLength]
                _1314 = rsqrt((dot(float3(_1305, _1306, _1307), float3(_1305, _1306, _1307)) * dot(float3(_1299, _1300, _1301), float3(_1299, _1300, _1301))) + 0.0001f) * dot(float3(_1299, _1300, _1301), float3(_1305, _1306, _1307));
                _1324 = min(max(_1265, 0.09803922f), 1.0f);
                _1325 = _1324 * _1324;
                _1326 = _1325 * 0.5f;
                _1327 = _1325 * 2.0f;
                _1328 = _1289 + _1285;
                _1329 = _1328 - _1281;
                _1338 = 1.0f / ((1.19f / _1295) + (_1295 * 0.36f));
                _1343 = ((_1338 * (0.6f - (_1314 * 0.8f))) + 1.0f) * sqrt(saturate((_1314 * 0.5f) + 0.5f));
                _1349 = 1.0f - (sqrt(saturate(1.0f - (_1343 * _1343))) * _1295);
                _1350 = _1349 * _1349;
                _1354 = 0.9534794f - ((_1350 * _1350) * (_1349 * 0.9534794f));
                _1355 = _1338 * _1343;
                _1360 = (sqrt(1.0f - (_1355 * _1355)) * 0.5f) / _1295;
                _1361 = log2(_1282);
                _1362 = log2(_1283);
                _1363 = log2(_1284);
                _1375 = ((_1354 * _1354) * (exp2((((_1329 * _1329) * -0.5f) / (_1326 * _1326)) * 1.442695f) / (_1325 * 1.2533141f))) * exp2(-5.741926f - (_1314 * 5.265837f));
                _1379 = _1328 - (_1281 * 4.0f);
                _1389 = 1.0f - (_1295 * 0.5f);
                _1390 = _1389 * _1389;
                _1394 = (_1390 * _1390) * (0.9534794f - (_1295 * 0.4767397f));
                _1396 = 0.9534794f - _1394;
                _1397 = 0.8f / _1295;
                _1410 = (((_1396 * _1396) * (_1394 + 0.046520565f)) * (exp2((((_1379 * _1379) * -0.5f) / (_1327 * _1327)) * 1.442695f) / (_1325 * 5.0132565f))) * exp2((_1314 * 24.525816f) + -24.208424f);
                _1420 = min(0.0f, (-0.0f - ((_1375 * exp2(_1361 * _1360)) + (_1410 * exp2(_1397 * _1361)))));
                _1421 = min(0.0f, (-0.0f - ((_1375 * exp2(_1362 * _1360)) + (_1410 * exp2(_1397 * _1362)))));
                _1422 = min(0.0f, (-0.0f - ((_1375 * exp2(_1363 * _1360)) + (_1410 * exp2(_1397 * _1363)))));
                _1431 = saturate(abs(dot(float3(_1250, _1251, _1252), float3(_1200, _1201, _1202))));  // [sem: expr_sat]
                // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
                _1440 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1361 * 1.5f)))), 0.0f);
                // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
                _1443 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1362 * 1.5f)))), 0.0f);
                // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
                _1446 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1363 * 1.5f)))), 0.0f);
                _1453 = min(0.99f, _1440.x);
                _1454 = min(0.99f, _1443.x);
                _1455 = min(0.99f, _1446.x);
                _1456 = min(0.99f, _1440.y);
                _1457 = min(0.99f, _1443.y);
                _1458 = min(0.99f, _1446.y);
                _1459 = _1453 * _1453;
                _1460 = _1454 * _1454;
                _1461 = _1455 * _1455;
                _1462 = _1456 * _1456;
                _1463 = _1457 * _1457;
                _1464 = _1458 * _1458;
                _1465 = _1462 * _1456;
                _1466 = _1463 * _1457;
                _1467 = _1464 * _1458;
                _1468 = 1.0f - _1459;
                _1469 = 1.0f - _1460;
                _1470 = 1.0f - _1461;
                _1480 = _1468 * _1468;
                _1481 = _1469 * _1469;
                _1482 = _1470 * _1470;
                _1483 = _1480 * _1468;
                _1484 = _1481 * _1469;
                _1485 = _1482 * _1470;
                _1493 = min(max(_1265, 0.18f), 0.6f);
                _1494 = _1493 * _1493;
                _1495 = _1494 * 0.25f;
                _1496 = _1494 * 4.0f;
                _1498 = (_1454 + _1453) + _1455;
                _1499 = _1453 / _1498;
                _1500 = _1454 / _1498;
                _1501 = _1455 / _1498;
                _1502 = dot(float3(_1494, _1495, _1496), float3(_1499, _1500, _1501));
                _1503 = _1502 * _1502;
                _1506 = asin(min(max(_1289, -1.0f), 1.0f)) + asin(min(max(_1285, -1.0f), 1.0f));
                _1507 = _1506 * 0.5f;
                _1508 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1499, _1500, _1501));
                _1518 = _1508 * _1508;
                _1541 = (_1457 + _1456) + _1458;
                _1545 = dot(float3(_1494, _1495, _1496), float3((_1456 / _1541), (_1457 / _1541), (_1458 / _1541)));
                _1549 = sqrt((_1545 * _1545) + (_1503 * 2.0f));
                _1567 = (_1545 * 3.0f) + (_1502 * 2.0f);
                _1574 = (((_1465 + _1456) * ((_1459 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1465) + _1456);
                _1575 = (((_1466 + _1457) * ((_1460 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1466) + _1457);
                _1576 = (((_1467 + _1458) * ((_1461 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1467) + _1458);
                _1585 = _1507 - (((_1518 * (((_1459 * 4.0f) * _1462) + (_1480 * 2.0f))) * (1.0f - ((_1462 * 2.0f) / _1480))) / _1483);
                _1592 = _1507 - (((_1518 * (((_1460 * 4.0f) * _1463) + (_1481 * 2.0f))) * (1.0f - ((_1463 * 2.0f) / _1481))) / _1484);
                _1599 = _1507 - (((_1518 * (((_1461 * 4.0f) * _1464) + (_1482 * 2.0f))) * (1.0f - ((_1464 * 2.0f) / _1482))) / _1485);
                _1627 = exp2((((_1506 * -0.25f) * _1507) / _1503) * 1.442695f) * 1.4f;
                _1628 = ((((((_1465 * _1459) / _1483) + ((_1456 * _1459) / _1468)) * 4.3982296f) * exp2((((_1585 * _1585) * -0.5f) / ((_1574 * _1574) + _1503)) * 1.442695f)) + ((((_1440.x + _1420) * 0.25f) - _1420) * 6.2831855f)) * _1627;
                _1629 = ((((((_1466 * _1460) / _1484) + ((_1457 * _1460) / _1469)) * 4.3982296f) * exp2((((_1592 * _1592) * -0.5f) / ((_1575 * _1575) + _1503)) * 1.442695f)) + ((((_1443.x + _1421) * 0.25f) - _1421) * 6.2831855f)) * _1627;
                _1630 = ((((((_1467 * _1461) / _1485) + ((_1458 * _1461) / _1470)) * 4.3982296f) * exp2((((_1599 * _1599) * -0.5f) / ((_1576 * _1576) + _1503)) * 1.442695f)) + ((((_1446.x + _1422) * 0.25f) - _1422) * 6.2831855f)) * _1627;
                _1631 = max(0.125f, _1199);
                _1645 = _1199;
                _1646 = _1203;
                _1647 = _1200;
                _1648 = _1201;
                _1649 = _1202;
                _1650 = _1118;
                _1651 = max(0.01f, ((_1631 * (_1282 - _1628)) + _1628));
                _1652 = max(0.01f, (lerp(_1629, _1283, _1631)));
                _1653 = max(0.01f, (lerp(_1630, _1284, _1631)));
              } else {
                _1645 = _1189;
                _1646 = _1193;
                _1647 = _1190;
                _1648 = _1191;
                _1649 = _1192;
                _1650 = _1118;
                _1651 = 0.0f;
                _1652 = 0.0f;
                _1653 = 0.0f;
              }
            }
          }
        } else {
          _1645 = 1.0f;
          _1646 = 0.0h;
          _1647 = _714;
          _1648 = _715;
          _1649 = _716;
          _1650 = 52;
          _1651 = 0.0f;
          _1652 = 0.0f;
          _1653 = 0.0f;
        }
      } else {
        _1152 = 0.0f;
        _1153 = _1119;
        if (_1127) {
          _1165 = (_1072 * 2.0f) + -1.0f;
          _1166 = (_1073 * 2.0f) + -1.0f;
          _1168 = 1.0f - abs(_1165);
          _1169 = abs(_1166);
          _1170 = _1168 - _1169;
          if (!(_1170 >= 0.0f)) {
            _1181 = ((1.0f - _1169) * select((_1165 >= 0.0f), 1.0f, -1.0f));
            _1182 = (_1168 * select((_1166 >= 0.0f), 1.0f, -1.0f));
          } else {
            _1181 = _1165;
            _1182 = _1166;
          }
          _1184 = rsqrt(dot(float3(_1181, _1182, _1170), float3(_1181, _1182, _1170)));  // [sem: invLength]
          _1199 = _1152;
          _1200 = (_1184 * _1181);
          _1201 = (_1184 * _1182);
          _1202 = (_1184 * _1170);
          _1203 = 0.0h;
          _1205 = __3__36__0__0__g_bentCone.Load(int3(_526, _527, 0));  // [sem: _3__36__0__0__g_bentCone_load]
          _1212 = __3__36__0__0__g_bentCone.Load(int3(_920, _527, 0));  // [sem: _3__36__0__0__g_bentCone_load]
          _1222 = __3__36__0__0__g_bentCone.Load(int3(_526, _934, 0));  // [sem: _3__36__0__0__g_bentCone_load]
          _1232 = __3__36__0__0__g_bentCone.Load(int3(_920, _934, 0));  // [sem: _3__36__0__0__g_bentCone_load]
          _1245 = (((((_1212.x * _906) + (_1205.x * _905)) + (_1222.x * _907)) + (_1232.x * _908)) * 2.0f) + -1.0f;
          _1246 = (((((_1212.y * _906) + (_1205.y * _905)) + (_1222.y * _907)) + (_1232.y * _908)) * 2.0f) + -1.0f;
          _1247 = (((((_1212.z * _906) + (_1205.z * _905)) + (_1222.z * _907)) + (_1232.z * _908)) * 2.0f) + -1.0f;
          _1249 = rsqrt(dot(float3(_1245, _1246, _1247), float3(_1245, _1246, _1247)));  // [sem: invLength]
          _1250 = _1245 * _1249;
          _1251 = _1246 * _1249;
          _1252 = _1247 * _1249;
          if (!(_renderParams.z > 0.0f)) {
            if (!(_renderParams2.y > 0.0f)) {
              _1264 = (half)(saturate((half)(_279 + 0.15002441h)));
            } else {
              _1264 = _279;
            }
          } else {
            _1264 = _279;
          }
          _1265 = float(_1264);
          if (_1118 == 53) {
            _1281 = (((asfloat(_globalLightParams.z) * _1265) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_277)));
          } else {
            _1281 = _bevelParams.y;
          }
          _1282 = float(_309);
          _1283 = float(_310);
          _1284 = float(_311);
          _1285 = dot(float3(_1200, _1201, _1202), float3(_1250, _1251, _1252));
          _1286 = -0.0f - _1052;
          _1287 = -0.0f - _1053;
          _1288 = -0.0f - _1054;
          _1289 = dot(float3(_1200, _1201, _1202), float3(_1286, _1287, _1288));
          _1295 = cos(abs(asin(_1289) - asin(_1285)) * 0.5f);
          _1299 = _1250 - (_1285 * _1200);
          _1300 = _1251 - (_1285 * _1201);
          _1301 = _1252 - (_1285 * _1202);
          _1305 = _1286 - (_1289 * _1200);
          _1306 = _1287 - (_1289 * _1201);
          _1307 = _1288 - (_1289 * _1202);
          // [sem: invLength]
          _1314 = rsqrt((dot(float3(_1305, _1306, _1307), float3(_1305, _1306, _1307)) * dot(float3(_1299, _1300, _1301), float3(_1299, _1300, _1301))) + 0.0001f) * dot(float3(_1299, _1300, _1301), float3(_1305, _1306, _1307));
          _1324 = min(max(_1265, 0.09803922f), 1.0f);
          _1325 = _1324 * _1324;
          _1326 = _1325 * 0.5f;
          _1327 = _1325 * 2.0f;
          _1328 = _1289 + _1285;
          _1329 = _1328 - _1281;
          _1338 = 1.0f / ((1.19f / _1295) + (_1295 * 0.36f));
          _1343 = ((_1338 * (0.6f - (_1314 * 0.8f))) + 1.0f) * sqrt(saturate((_1314 * 0.5f) + 0.5f));
          _1349 = 1.0f - (sqrt(saturate(1.0f - (_1343 * _1343))) * _1295);
          _1350 = _1349 * _1349;
          _1354 = 0.9534794f - ((_1350 * _1350) * (_1349 * 0.9534794f));
          _1355 = _1338 * _1343;
          _1360 = (sqrt(1.0f - (_1355 * _1355)) * 0.5f) / _1295;
          _1361 = log2(_1282);
          _1362 = log2(_1283);
          _1363 = log2(_1284);
          _1375 = ((_1354 * _1354) * (exp2((((_1329 * _1329) * -0.5f) / (_1326 * _1326)) * 1.442695f) / (_1325 * 1.2533141f))) * exp2(-5.741926f - (_1314 * 5.265837f));
          _1379 = _1328 - (_1281 * 4.0f);
          _1389 = 1.0f - (_1295 * 0.5f);
          _1390 = _1389 * _1389;
          _1394 = (_1390 * _1390) * (0.9534794f - (_1295 * 0.4767397f));
          _1396 = 0.9534794f - _1394;
          _1397 = 0.8f / _1295;
          _1410 = (((_1396 * _1396) * (_1394 + 0.046520565f)) * (exp2((((_1379 * _1379) * -0.5f) / (_1327 * _1327)) * 1.442695f) / (_1325 * 5.0132565f))) * exp2((_1314 * 24.525816f) + -24.208424f);
          _1420 = min(0.0f, (-0.0f - ((_1375 * exp2(_1361 * _1360)) + (_1410 * exp2(_1397 * _1361)))));
          _1421 = min(0.0f, (-0.0f - ((_1375 * exp2(_1362 * _1360)) + (_1410 * exp2(_1397 * _1362)))));
          _1422 = min(0.0f, (-0.0f - ((_1375 * exp2(_1363 * _1360)) + (_1410 * exp2(_1397 * _1363)))));
          _1431 = saturate(abs(dot(float3(_1250, _1251, _1252), float3(_1200, _1201, _1202))));  // [sem: expr_sat]
          // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
          _1440 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1361 * 1.5f)))), 0.0f);
          // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
          _1443 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1362 * 1.5f)))), 0.0f);
          // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
          _1446 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1363 * 1.5f)))), 0.0f);
          _1453 = min(0.99f, _1440.x);
          _1454 = min(0.99f, _1443.x);
          _1455 = min(0.99f, _1446.x);
          _1456 = min(0.99f, _1440.y);
          _1457 = min(0.99f, _1443.y);
          _1458 = min(0.99f, _1446.y);
          _1459 = _1453 * _1453;
          _1460 = _1454 * _1454;
          _1461 = _1455 * _1455;
          _1462 = _1456 * _1456;
          _1463 = _1457 * _1457;
          _1464 = _1458 * _1458;
          _1465 = _1462 * _1456;
          _1466 = _1463 * _1457;
          _1467 = _1464 * _1458;
          _1468 = 1.0f - _1459;
          _1469 = 1.0f - _1460;
          _1470 = 1.0f - _1461;
          _1480 = _1468 * _1468;
          _1481 = _1469 * _1469;
          _1482 = _1470 * _1470;
          _1483 = _1480 * _1468;
          _1484 = _1481 * _1469;
          _1485 = _1482 * _1470;
          _1493 = min(max(_1265, 0.18f), 0.6f);
          _1494 = _1493 * _1493;
          _1495 = _1494 * 0.25f;
          _1496 = _1494 * 4.0f;
          _1498 = (_1454 + _1453) + _1455;
          _1499 = _1453 / _1498;
          _1500 = _1454 / _1498;
          _1501 = _1455 / _1498;
          _1502 = dot(float3(_1494, _1495, _1496), float3(_1499, _1500, _1501));
          _1503 = _1502 * _1502;
          _1506 = asin(min(max(_1289, -1.0f), 1.0f)) + asin(min(max(_1285, -1.0f), 1.0f));
          _1507 = _1506 * 0.5f;
          _1508 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1499, _1500, _1501));
          _1518 = _1508 * _1508;
          _1541 = (_1457 + _1456) + _1458;
          _1545 = dot(float3(_1494, _1495, _1496), float3((_1456 / _1541), (_1457 / _1541), (_1458 / _1541)));
          _1549 = sqrt((_1545 * _1545) + (_1503 * 2.0f));
          _1567 = (_1545 * 3.0f) + (_1502 * 2.0f);
          _1574 = (((_1465 + _1456) * ((_1459 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1465) + _1456);
          _1575 = (((_1466 + _1457) * ((_1460 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1466) + _1457);
          _1576 = (((_1467 + _1458) * ((_1461 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1467) + _1458);
          _1585 = _1507 - (((_1518 * (((_1459 * 4.0f) * _1462) + (_1480 * 2.0f))) * (1.0f - ((_1462 * 2.0f) / _1480))) / _1483);
          _1592 = _1507 - (((_1518 * (((_1460 * 4.0f) * _1463) + (_1481 * 2.0f))) * (1.0f - ((_1463 * 2.0f) / _1481))) / _1484);
          _1599 = _1507 - (((_1518 * (((_1461 * 4.0f) * _1464) + (_1482 * 2.0f))) * (1.0f - ((_1464 * 2.0f) / _1482))) / _1485);
          _1627 = exp2((((_1506 * -0.25f) * _1507) / _1503) * 1.442695f) * 1.4f;
          _1628 = ((((((_1465 * _1459) / _1483) + ((_1456 * _1459) / _1468)) * 4.3982296f) * exp2((((_1585 * _1585) * -0.5f) / ((_1574 * _1574) + _1503)) * 1.442695f)) + ((((_1440.x + _1420) * 0.25f) - _1420) * 6.2831855f)) * _1627;
          _1629 = ((((((_1466 * _1460) / _1484) + ((_1457 * _1460) / _1469)) * 4.3982296f) * exp2((((_1592 * _1592) * -0.5f) / ((_1575 * _1575) + _1503)) * 1.442695f)) + ((((_1443.x + _1421) * 0.25f) - _1421) * 6.2831855f)) * _1627;
          _1630 = ((((((_1467 * _1461) / _1485) + ((_1458 * _1461) / _1470)) * 4.3982296f) * exp2((((_1599 * _1599) * -0.5f) / ((_1576 * _1576) + _1503)) * 1.442695f)) + ((((_1446.x + _1422) * 0.25f) - _1422) * 6.2831855f)) * _1627;
          _1631 = max(0.125f, _1199);
          _1645 = _1199;
          _1646 = _1203;
          _1647 = _1200;
          _1648 = _1201;
          _1649 = _1202;
          _1650 = _1118;
          _1651 = max(0.01f, ((_1631 * (_1282 - _1628)) + _1628));
          _1652 = max(0.01f, (lerp(_1629, _1283, _1631)));
          _1653 = max(0.01f, (lerp(_1630, _1284, _1631)));
        } else {
          _1189 = _1152;
          _1190 = _714;
          _1191 = _715;
          _1192 = _716;
          _1193 = _1153;
          if ((_1118 == 53) || ((_1118 & 126) == 66)) {
            _1199 = _1189;
            _1200 = _1190;
            _1201 = _1191;
            _1202 = _1192;
            _1203 = _1193;
            _1205 = __3__36__0__0__g_bentCone.Load(int3(_526, _527, 0));  // [sem: _3__36__0__0__g_bentCone_load]
            _1212 = __3__36__0__0__g_bentCone.Load(int3(_920, _527, 0));  // [sem: _3__36__0__0__g_bentCone_load]
            _1222 = __3__36__0__0__g_bentCone.Load(int3(_526, _934, 0));  // [sem: _3__36__0__0__g_bentCone_load]
            _1232 = __3__36__0__0__g_bentCone.Load(int3(_920, _934, 0));  // [sem: _3__36__0__0__g_bentCone_load]
            _1245 = (((((_1212.x * _906) + (_1205.x * _905)) + (_1222.x * _907)) + (_1232.x * _908)) * 2.0f) + -1.0f;
            _1246 = (((((_1212.y * _906) + (_1205.y * _905)) + (_1222.y * _907)) + (_1232.y * _908)) * 2.0f) + -1.0f;
            _1247 = (((((_1212.z * _906) + (_1205.z * _905)) + (_1222.z * _907)) + (_1232.z * _908)) * 2.0f) + -1.0f;
            _1249 = rsqrt(dot(float3(_1245, _1246, _1247), float3(_1245, _1246, _1247)));  // [sem: invLength]
            _1250 = _1245 * _1249;
            _1251 = _1246 * _1249;
            _1252 = _1247 * _1249;
            if (!(_renderParams.z > 0.0f)) {
              if (!(_renderParams2.y > 0.0f)) {
                _1264 = (half)(saturate((half)(_279 + 0.15002441h)));
              } else {
                _1264 = _279;
              }
            } else {
              _1264 = _279;
            }
            _1265 = float(_1264);
            if (_1118 == 53) {
              _1281 = (((asfloat(_globalLightParams.z) * _1265) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_277)));
            } else {
              _1281 = _bevelParams.y;
            }
            _1282 = float(_309);
            _1283 = float(_310);
            _1284 = float(_311);
            _1285 = dot(float3(_1200, _1201, _1202), float3(_1250, _1251, _1252));
            _1286 = -0.0f - _1052;
            _1287 = -0.0f - _1053;
            _1288 = -0.0f - _1054;
            _1289 = dot(float3(_1200, _1201, _1202), float3(_1286, _1287, _1288));
            _1295 = cos(abs(asin(_1289) - asin(_1285)) * 0.5f);
            _1299 = _1250 - (_1285 * _1200);
            _1300 = _1251 - (_1285 * _1201);
            _1301 = _1252 - (_1285 * _1202);
            _1305 = _1286 - (_1289 * _1200);
            _1306 = _1287 - (_1289 * _1201);
            _1307 = _1288 - (_1289 * _1202);
            // [sem: invLength]
            _1314 = rsqrt((dot(float3(_1305, _1306, _1307), float3(_1305, _1306, _1307)) * dot(float3(_1299, _1300, _1301), float3(_1299, _1300, _1301))) + 0.0001f) * dot(float3(_1299, _1300, _1301), float3(_1305, _1306, _1307));
            _1324 = min(max(_1265, 0.09803922f), 1.0f);
            _1325 = _1324 * _1324;
            _1326 = _1325 * 0.5f;
            _1327 = _1325 * 2.0f;
            _1328 = _1289 + _1285;
            _1329 = _1328 - _1281;
            _1338 = 1.0f / ((1.19f / _1295) + (_1295 * 0.36f));
            _1343 = ((_1338 * (0.6f - (_1314 * 0.8f))) + 1.0f) * sqrt(saturate((_1314 * 0.5f) + 0.5f));
            _1349 = 1.0f - (sqrt(saturate(1.0f - (_1343 * _1343))) * _1295);
            _1350 = _1349 * _1349;
            _1354 = 0.9534794f - ((_1350 * _1350) * (_1349 * 0.9534794f));
            _1355 = _1338 * _1343;
            _1360 = (sqrt(1.0f - (_1355 * _1355)) * 0.5f) / _1295;
            _1361 = log2(_1282);
            _1362 = log2(_1283);
            _1363 = log2(_1284);
            _1375 = ((_1354 * _1354) * (exp2((((_1329 * _1329) * -0.5f) / (_1326 * _1326)) * 1.442695f) / (_1325 * 1.2533141f))) * exp2(-5.741926f - (_1314 * 5.265837f));
            _1379 = _1328 - (_1281 * 4.0f);
            _1389 = 1.0f - (_1295 * 0.5f);
            _1390 = _1389 * _1389;
            _1394 = (_1390 * _1390) * (0.9534794f - (_1295 * 0.4767397f));
            _1396 = 0.9534794f - _1394;
            _1397 = 0.8f / _1295;
            _1410 = (((_1396 * _1396) * (_1394 + 0.046520565f)) * (exp2((((_1379 * _1379) * -0.5f) / (_1327 * _1327)) * 1.442695f) / (_1325 * 5.0132565f))) * exp2((_1314 * 24.525816f) + -24.208424f);
            _1420 = min(0.0f, (-0.0f - ((_1375 * exp2(_1361 * _1360)) + (_1410 * exp2(_1397 * _1361)))));
            _1421 = min(0.0f, (-0.0f - ((_1375 * exp2(_1362 * _1360)) + (_1410 * exp2(_1397 * _1362)))));
            _1422 = min(0.0f, (-0.0f - ((_1375 * exp2(_1363 * _1360)) + (_1410 * exp2(_1397 * _1363)))));
            _1431 = saturate(abs(dot(float3(_1250, _1251, _1252), float3(_1200, _1201, _1202))));  // [sem: expr_sat]
            // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
            _1440 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1361 * 1.5f)))), 0.0f);
            // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
            _1443 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1362 * 1.5f)))), 0.0f);
            // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
            _1446 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_1431, _1265, saturate(sqrt(exp2(_1363 * 1.5f)))), 0.0f);
            _1453 = min(0.99f, _1440.x);
            _1454 = min(0.99f, _1443.x);
            _1455 = min(0.99f, _1446.x);
            _1456 = min(0.99f, _1440.y);
            _1457 = min(0.99f, _1443.y);
            _1458 = min(0.99f, _1446.y);
            _1459 = _1453 * _1453;
            _1460 = _1454 * _1454;
            _1461 = _1455 * _1455;
            _1462 = _1456 * _1456;
            _1463 = _1457 * _1457;
            _1464 = _1458 * _1458;
            _1465 = _1462 * _1456;
            _1466 = _1463 * _1457;
            _1467 = _1464 * _1458;
            _1468 = 1.0f - _1459;
            _1469 = 1.0f - _1460;
            _1470 = 1.0f - _1461;
            _1480 = _1468 * _1468;
            _1481 = _1469 * _1469;
            _1482 = _1470 * _1470;
            _1483 = _1480 * _1468;
            _1484 = _1481 * _1469;
            _1485 = _1482 * _1470;
            _1493 = min(max(_1265, 0.18f), 0.6f);
            _1494 = _1493 * _1493;
            _1495 = _1494 * 0.25f;
            _1496 = _1494 * 4.0f;
            _1498 = (_1454 + _1453) + _1455;
            _1499 = _1453 / _1498;
            _1500 = _1454 / _1498;
            _1501 = _1455 / _1498;
            _1502 = dot(float3(_1494, _1495, _1496), float3(_1499, _1500, _1501));
            _1503 = _1502 * _1502;
            _1506 = asin(min(max(_1289, -1.0f), 1.0f)) + asin(min(max(_1285, -1.0f), 1.0f));
            _1507 = _1506 * 0.5f;
            _1508 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_1499, _1500, _1501));
            _1518 = _1508 * _1508;
            _1541 = (_1457 + _1456) + _1458;
            _1545 = dot(float3(_1494, _1495, _1496), float3((_1456 / _1541), (_1457 / _1541), (_1458 / _1541)));
            _1549 = sqrt((_1545 * _1545) + (_1503 * 2.0f));
            _1567 = (_1545 * 3.0f) + (_1502 * 2.0f);
            _1574 = (((_1465 + _1456) * ((_1459 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1465) + _1456);
            _1575 = (((_1466 + _1457) * ((_1460 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1466) + _1457);
            _1576 = (((_1467 + _1458) * ((_1461 * 0.7f) + 1.0f)) * _1549) / ((_1567 * _1467) + _1458);
            _1585 = _1507 - (((_1518 * (((_1459 * 4.0f) * _1462) + (_1480 * 2.0f))) * (1.0f - ((_1462 * 2.0f) / _1480))) / _1483);
            _1592 = _1507 - (((_1518 * (((_1460 * 4.0f) * _1463) + (_1481 * 2.0f))) * (1.0f - ((_1463 * 2.0f) / _1481))) / _1484);
            _1599 = _1507 - (((_1518 * (((_1461 * 4.0f) * _1464) + (_1482 * 2.0f))) * (1.0f - ((_1464 * 2.0f) / _1482))) / _1485);
            _1627 = exp2((((_1506 * -0.25f) * _1507) / _1503) * 1.442695f) * 1.4f;
            _1628 = ((((((_1465 * _1459) / _1483) + ((_1456 * _1459) / _1468)) * 4.3982296f) * exp2((((_1585 * _1585) * -0.5f) / ((_1574 * _1574) + _1503)) * 1.442695f)) + ((((_1440.x + _1420) * 0.25f) - _1420) * 6.2831855f)) * _1627;
            _1629 = ((((((_1466 * _1460) / _1484) + ((_1457 * _1460) / _1469)) * 4.3982296f) * exp2((((_1592 * _1592) * -0.5f) / ((_1575 * _1575) + _1503)) * 1.442695f)) + ((((_1443.x + _1421) * 0.25f) - _1421) * 6.2831855f)) * _1627;
            _1630 = ((((((_1467 * _1461) / _1485) + ((_1458 * _1461) / _1470)) * 4.3982296f) * exp2((((_1599 * _1599) * -0.5f) / ((_1576 * _1576) + _1503)) * 1.442695f)) + ((((_1446.x + _1422) * 0.25f) - _1422) * 6.2831855f)) * _1627;
            _1631 = max(0.125f, _1199);
            _1645 = _1199;
            _1646 = _1203;
            _1647 = _1200;
            _1648 = _1201;
            _1649 = _1202;
            _1650 = _1118;
            _1651 = max(0.01f, ((_1631 * (_1282 - _1628)) + _1628));
            _1652 = max(0.01f, (lerp(_1629, _1283, _1631)));
            _1653 = max(0.01f, (lerp(_1630, _1284, _1631)));
          } else {
            _1645 = _1189;
            _1646 = _1193;
            _1647 = _1190;
            _1648 = _1191;
            _1649 = _1192;
            _1650 = _1118;
            _1651 = 0.0f;
            _1652 = 0.0f;
            _1653 = 0.0f;
          }
        }
      }
    }
    _1660 = -0.0f - min(0.0f, (-0.0f - ((((float(_910.x) * _905) + (float(_921.x) * _906)) + (float(_935.x) * _907)) + (float(_948.x) * _908))));
    _1661 = -0.0f - min(0.0f, (-0.0f - ((((float(_910.y) * _905) + (float(_921.y) * _906)) + (float(_935.y) * _907)) + (float(_948.y) * _908))));
    _1662 = -0.0f - min(0.0f, (-0.0f - ((((float(_910.z) * _905) + (float(_921.z) * _906)) + (float(_935.z) * _907)) + (float(_948.z) * _908))));
    half2 _1664 = __3__36__0__0__g_sceneAO.Load(int3(_526, _527, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    half2 _1671 = __3__36__0__0__g_sceneAO.Load(int3(_920, _527, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    half2 _1680 = __3__36__0__0__g_sceneAO.Load(int3(_526, _934, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    half2 _1689 = __3__36__0__0__g_sceneAO.Load(int3(_920, _934, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    _1696 = (((float(_1671.x) * _906) + (float(_1664.x) * _905)) + (float(_1680.x) * _907)) + (float(_1689.x) * _908);
    if ((uint)_1650 > (uint)11) {
      _1703 = ((uint)_1650 < (uint)19);
      if (!((uint)_1650 < (uint)20)) {
        _1706 = _1703;
        _1709 = _1706;
        _1710 = (_1650 == 107);
      } else {
        _1709 = _1703;
        _1710 = true;
      }
    } else {
      if (!((uint)_1650 > (uint)10)) {
        _1706 = false;
        _1709 = _1706;
        _1710 = (_1650 == 107);
      } else {
        _1709 = false;
        _1710 = true;
      }
    }
    _1715 = (_1650 == 65);
    _1716 = _1715 || (_1709 || ((_1650 == 96) || _1710));
    _1718 = select(_1716, float(_1646), 0.0f);
    _1721 = ((uint)(_1650 & 24) > (uint)23);
    if (_1721) {
      _1723 = (_1650 == 29);
      if (_1723) {
        _1728 = float(saturate(_279));
      } else {
        _1728 = 0.0f;
      }
      _1730 = (uint)((half)(_277 * 255.0h));
      if (_182) {
        _1739 = select(((_1730 & 128) != 0), 1.0f, 0.0f);
        _1740 = (((float)((uint)((uint)(_1730 & 127)))) * 0.007874016f);
      } else {
        _1739 = 0.0f;
        _1740 = 0.0f;
      }
      _1741 = half(_1740);
      _1745 = (_1741 > 0.99902344h);
      _1750 = _1741;
      _1751 = (half)(select(((_1650 == 24) || _1723), 0.010002136f, _279));
      _1752 = _1739;
      _1753 = (half)(select(_1745, 1.0f, _309));
      _1754 = (half)(select(_1745, 1.0f, _310));
      _1755 = (half)(select(_1745, 1.0f, _311));
      _1756 = _1728;
    } else {
      _1750 = (half)(select(_1716, 0.0f, _1646));
      _1751 = _279;
      _1752 = 0.0f;
      _1753 = _309;
      _1754 = _310;
      _1755 = _311;
      _1756 = 0.0f;
    }
    _1757 = _1650 & -2;
    _1758 = (_1757 == 66);
    _1759 = (_1650 == 53);
    _1760 = _1759 || _1758;
    _1761 = -0.0f - _1052;
    _1762 = -0.0f - _1053;
    _1763 = -0.0f - _1054;
    _1764 = dot(float3(_1761, _1762, _1763), float3(_714, _715, _716));
    if (_1760) {
      _1768 = abs(_1764);
    } else {
      _1768 = _1764;
    }
    _1769 = saturate(_1768);  // [sem: _1768_sat]
    _1770 = _116.x & 128;  // [sem: _3__36__0__0__g_stencil_load_derived]
    _1771 = (_1770 == 0);
    if (_1771) {
      if ((uint)_118 > (uint)51) {
        if (!(((_116.x & 125) == 105) || ((uint)_118 < (uint)68))) {
          _1791 = (_118 == 98);
        } else {
          _1791 = true;
        }
      } else {
        if ((uint)_118 > (uint)10) {
          if ((uint)_118 < (uint)20) {
            if (_204 == 14) {
              _1791 = (_118 == 98);
            } else {
              _1791 = true;
            }
          } else {
            if (!((_116.x & 125) == 105)) {
              _1791 = (_118 == 98);
            } else {
              _1791 = true;
            }
          }
        } else {
          _1791 = (_118 == 98);
        }
      }
    } else {
      _1791 = true;
    }
    [branch]
    if (_1721) {
      _1800 = (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(_100, _102, 0)))).x) & 16777215)))) * 5.960465e-08f);
    } else {
      _1800 = _113.x;
    }
    _1828 = mad((_projToPrevProj[3].z), _1800, mad((_projToPrevProj[3].y), _1010, ((_projToPrevProj[3].x) * _1008))) + (_projToPrevProj[3].w);
    if (_1791) {
      _1835 = __3__36__0__0__g_velocity.Load(int3(_100, _102, 0));  // [sem: _3__36__0__0__g_velocity_load]
      _1841 = (_1835.x * 2.0f);
      _1842 = (_1835.y * 2.0f);
    } else {
      _1841 = (((mad((_projToPrevProj[0].z), _1800, mad((_projToPrevProj[0].y), _1010, ((_projToPrevProj[0].x) * _1008))) + (_projToPrevProj[0].w)) / _1828) - _1008);
      _1842 = (((mad((_projToPrevProj[1].z), _1800, mad((_projToPrevProj[1].y), _1010, ((_projToPrevProj[1].x) * _1008))) + (_projToPrevProj[1].w)) / _1828) - _1010);
    }
    _1844 = _nearFarProj.x / max(1e-07f, _1800);
    _1847 = (_1841 * 0.5f) + _110;
    _1848 = _111 - (_1842 * 0.5f);
    _1856 = select((((_1847 < 0.0f) || (_1847 > 1.0f)) || ((_1848 < 0.0f) || (_1848 > 1.0f))), 1.0f, 0.0f);
    _1862 = (_bufferSizeAndInvSize.x * _1847) + -0.5f;
    _1863 = (_bufferSizeAndInvSize.y * _1848) + -0.5f;
    _1866 = (int)(floor(_1862));
    _1867 = (int)(floor(_1863));
    _1868 = (float)((int)(_1866));
    _1869 = (float)((int)(_1867));
    _1874 = (_1868 + 0.5f) * _bufferSizeAndInvSize.z;
    _1875 = (_1869 + 0.5f) * _bufferSizeAndInvSize.w;
    _1877 = __3__36__0__0__g_depthOpaquePrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(_1874, _1875));  // [sem: _3__36__0__0__g_depthOpaquePrev_gather]
    _1900 = mad(((uint)((uint)(_1877.w)) >> 24), 16777216, mad(((uint)((uint)(_1877.z)) >> 24), 65536, mad(((uint)((uint)(_1877.y)) >> 24), 256, ((uint)((uint)(_1877.x)) >> 24))));
    if (_1771) {
      if ((uint)_118 > (uint)51) {
        if (!((_118 == 98) || (((_116.x & 125) == 105) || ((uint)_118 < (uint)68)))) {
          _1930 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
        } else {
          _1930 = 0.0f;
        }
      } else {
        if ((uint)_118 > (uint)10) {
          if ((uint)_118 < (uint)20) {
            if (_204 == 14) {
              _1930 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
            } else {
              _1930 = 0.0f;
            }
          } else {
            if (!((_116.x & 125) == 105)) {
              _1930 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
            } else {
              _1930 = 0.0f;
            }
          }
        } else {
          _1930 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
        }
      }
    } else {
      _1930 = 0.0f;
    }
    _1938 = _screenPercentage.x * 2.0f;
    _1939 = _1938 * abs(_110 + -0.5f);
    _1940 = _screenPercentage.y * 2.0f;
    _1941 = _1940 * abs(_111 + -0.5f);
    _1945 = sqrt(dot(float2(_1939, _1941), float2(_1939, _1941)) + 1.0f) * _1844;
    _1962 = _1938 * abs(_1847 + -0.5f);
    _1963 = _1940 * abs(_1848 + -0.5f);
    _1966 = sqrt(dot(float2(_1962, _1963), float2(_1962, _1963)) + 1.0f);
    _1981 = _630 || ((uint)((int)(_1650) + (int)(-97)) < (uint)2);
    _1983 = _1844 * _1844;
    _1985 = (_1983 * select(_1981, 0.5f, 0.2f)) + 1.0f;
    _1989 = ((uint)((int)(_1650) + (int)(-52)) < (uint)16);
    if (_1989) {
      _2008 = (1000.0f - (saturate((float)((bool)((sqrt(((_diffViewPosAccurate.x * _diffViewPosAccurate.x) + (_diffViewPosAccurate.y * _diffViewPosAccurate.y)) + (_diffViewPosAccurate.z * _diffViewPosAccurate.z)) * 50.0f) > 1.0f))) * 875.0f));
    } else {
      _2008 = 50.0f;
    }
    _2014 = select(_1989, 0.0f, ((_temporalReprojectionParams.y * 0.1f) * max(0.0f, (_1844 + -1.0f))));
    _2019 = max(0.0f, (abs(_1945 - (_1966 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1877.x & 16777215)))) * 5.960465e-08f))) - _1930))) - _2014));
    _2020 = max(0.0f, (abs(_1945 - (_1966 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1877.y & 16777215)))) * 5.960465e-08f))) - _1930))) - _2014));
    _2021 = max(0.0f, (abs(_1945 - (_1966 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1877.z & 16777215)))) * 5.960465e-08f))) - _1930))) - _2014));
    _2022 = max(0.0f, (abs(_1945 - (_1966 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1877.w & 16777215)))) * 5.960465e-08f))) - _1930))) - _2014));
    _2023 = _2019 * _2019;
    _2024 = _2020 * _2020;
    _2025 = _2021 * _2021;
    _2026 = _2022 * _2022;
    _2028 = (-1.442695f / ((_1983 * 0.1f) + 1.0f)) * select(_1981, 0.2f, _2008);
    _2041 = select((_2023 > _1985), 0.0f, exp2(_2028 * _2023));
    _2042 = select((_2024 > _1985), 0.0f, exp2(_2024 * _2028));
    _2043 = select((_2025 > _1985), 0.0f, exp2(_2025 * _2028));
    _2044 = select((_2026 > _1985), 0.0f, exp2(_2026 * _2028));
    if (!_1721) {
      _2046 = _1900 & 127;
      _2047 = _1900 & 32512;
      _2048 = _1900 & 8323072;
      _2049 = _1900 & 2130706432;
      _2071 = ((uint)((int)(_2046) + (int)(-52)) < (uint)16);
      _2075 = ((uint)((int)(((uint)((uint)(_1900)) >> 8) & 127) + (int)(-52)) < (uint)16);
      _2079 = ((uint)((int)(((uint)((uint)(_1900)) >> 16) & 127) + (int)(-52)) < (uint)16);
      _2083 = ((uint)((int)(((uint)((uint)(_1900)) >> 24) & 127) + (int)(-52)) < (uint)16);
      _2096 = ((uint)((int)(_118) + (int)(-52)) < (uint)16);
      _2098 = (_1770 != 0) || _2096;
      _2107 = (_1650 == 6);
      _2129 = ((uint)((int)(_1650) + (int)(-105)) < (uint)3);
      _2167 = (_2041 * ((float)((bool)((_658 || ((_2046 != 53) && ((_1900 & 126) != 66))) && (!((_2098 ^ (((_1900 & 128) != 0) || _2071)) || ((_2107 ^ (_2046 == 6)) || ((_2096 ^ _2071) || (_2129 ^ ((_2046 == 107) || ((uint)((int)(_2046) + (int)(-105)) < (uint)2)))))))))));
      _2168 = (_2042 * ((float)((bool)((_658 || ((_2047 != 13568) && ((_1900 & 32256) != 16896))) && (!((_2098 ^ (((_1900 & 32768) != 0) || _2075)) || ((_2107 ^ (_2047 == 1536)) || ((_2096 ^ _2075) || (_2129 ^ (((_1900 & 32000) == 26880) || (_2047 == 27136)))))))))));
      _2169 = (_2043 * ((float)((bool)((_658 || ((_2048 != 3473408) && ((_1900 & 8257536) != 4325376))) && (!((_2098 ^ (((_1900 & 8388608) != 0) || _2079)) || ((_2107 ^ (_2048 == 393216)) || ((_2096 ^ _2079) || (_2129 ^ (((_1900 & 8192000) == 6881280) || (_2048 == 6946816)))))))))));
      _2170 = (_2044 * ((float)((bool)((_658 || ((_2049 != 889192448) && ((_1900 & 2113929216) != 1107296256))) && (!((_2098 ^ (((int)_1900 < (int)0) || _2083)) || ((_2107 ^ (_2049 == 100663296)) || ((_2096 ^ _2083) || (_2129 ^ (((_1900 & 2097152000) == 1761607680) || (_2049 == 1778384896)))))))))));
    } else {
      _2167 = _2041;
      _2168 = _2042;
      _2169 = _2043;
      _2170 = _2044;
    }
    _2172 = __3__36__0__0__g_sceneNormalPrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(_1874, _1875));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather]
    _2191 = min(1.0f, ((((float)((uint)((uint)(_2172.w & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2192 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2172.w)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2193 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2172.w)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2195 = rsqrt(dot(float3(_2191, _2192, _2193), float3(_2191, _2192, _2193)));  // [sem: invLength]
    _2200 = saturate(dot(float3(_714, _715, _716), float3((_2195 * _2191), (_2195 * _2192), (_2195 * _2193))));  // [sem: expr_sat]
    _2215 = min(1.0f, ((((float)((uint)((uint)(_2172.z & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2216 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2172.z)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2217 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2172.z)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2219 = rsqrt(dot(float3(_2215, _2216, _2217), float3(_2215, _2216, _2217)));  // [sem: invLength]
    _2224 = saturate(dot(float3(_714, _715, _716), float3((_2219 * _2215), (_2219 * _2216), (_2219 * _2217))));  // [sem: expr_sat]
    _2239 = min(1.0f, ((((float)((uint)((uint)(_2172.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2240 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2172.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2241 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2172.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2243 = rsqrt(dot(float3(_2239, _2240, _2241), float3(_2239, _2240, _2241)));  // [sem: invLength]
    _2248 = saturate(dot(float3(_714, _715, _716), float3((_2243 * _2239), (_2243 * _2240), (_2243 * _2241))));  // [sem: expr_sat]
    _2263 = min(1.0f, ((((float)((uint)((uint)(_2172.y & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2264 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2172.y)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2265 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2172.y)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _2267 = rsqrt(dot(float3(_2263, _2264, _2265), float3(_2263, _2264, _2265)));  // [sem: invLength]
    _2272 = saturate(dot(float3(_714, _715, _716), float3((_2267 * _2263), (_2267 * _2264), (_2267 * _2265))));  // [sem: expr_sat]
    _2275 = select((_1759 || (_1758 || _1981)), 0.01f, 1.0f);
    _2292 = _1862 - _1868;
    _2293 = _1863 - _1869;
    _2294 = 1.0f - _2292;
    _2295 = 1.0f - _2293;
    _2300 = (_2294 * _2293) * _2167;
    _2302 = (_2293 * _2292) * _2168;
    _2304 = (_2295 * _2292) * _2169;
    _2306 = (_2295 * _2294) * _2170;
    _2308 = saturate(select(_1721, 1.0f, (pow(_2248, _2275))) * _2300);  // [sem: expr_sat]
    _2309 = saturate(select(_1721, 1.0f, (pow(_2272, _2275))) * _2302);  // [sem: expr_sat]
    _2310 = saturate(select(_1721, 1.0f, (pow(_2224, _2275))) * _2304);  // [sem: expr_sat]
    _2311 = saturate(select(_1721, 1.0f, (pow(_2200, _2275))) * _2306);  // [sem: expr_sat]
    _2314 = asint(__3__37__0__0__g_structureCounterBuffer.Load(8));
    _2315 = WaveReadLaneFirst(_2314);
    [branch]
    if (!(_2315 == 0)) {
      _2323 = (((uint)(__3__36__0__0__g_tiledManyLightsMasks.Load(int3(((int)(_100) >> 5), ((int)(_102) >> 5), 0)))).x) & 4;
      _2325 = (uint)((uint)(_2323)) >> 2;
      if (!(_2323 == 0)) {
        _2333 = max((saturate(dot(float3(_1660, _1661, _1662), float3(0.212671f, 0.71516f, 0.072169f)) * 0.01f) * 0.875f), _1856);
        _2334 = _2325;
      } else {
        _2333 = _1856;
        _2334 = _2325;
      }
    } else {
      _2333 = _1856;
      _2334 = 0;
    }
    // [sem: expr_sat]
    _2344 = saturate(max(_2333, (((_environmentLightingHistory[1].w) + _temporalReprojectionParams.w) + _renderParams.y)));
    _2345 = (uint)((uint)(_1867)) + (uint)(1);
    half4 _2347 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1866, _2345, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    _2352 = (uint)((uint)(_1866)) + (uint)(1);
    half4 _2353 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_2352, _2345, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    half4 _2358 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_2352, _1867, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    half4 _2363 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1866, _1867, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    _2368 = dot(float4(_2308, _2309, _2310, _2311), float4(1.0f, 1.0f, 1.0f, 1.0f));
    // [sem: expr_sat]
    _2377 = saturate(dot(float4(_2308, _2309, _2310, _2311), float4(float(_2347.w), float(_2353.w), float(_2358.w), float(_2363.w))) * (1.0f / max(1.0f, _2368)));
    _2382 = sqrt((_1842 * _1842) + (_1841 * _1841)) * 50.0f;
    if (_1989) {
      _2391 = saturate(1.0f - _2382);  // [sem: expr_sat]
    } else {
      _2391 = (1.0f - (saturate(_2382) * 0.5f));  // [sem: expr_sat]
    }
    _2395 = max(1.0f, (_bufferSizeAndInvSize.w * 2160.0f));
    _2398 = min(31.0f, ((_2391 * 15.0f) * _2395));
    _2399 = (_1650 == 29);
    if (_2399) {
      _2403 = min(2.0f, _2398);
    } else {
      _2403 = _2398;
    }
    _2404 = (_1650 == 24);
    _2405 = select(_2404, 1.0f, _2377);
    _2407 = (_2405 * _2405) * 4.0f;
    _2410 = __3__36__0__0__g_manyLightsMoments.SampleLevel(__3__40__0__0__g_sampler, float2(_110, _111), 0.0f);  // [sem: _3__36__0__0__g_manyLightsMoments_sampleLod]
    _2415 = saturate(_2410.w);  // [sem: expr_sat]
    _2417 = 1.0f / max(1e-06f, _2368);
    _2419 = _2417 * _2308;
    _2420 = _2417 * _2309;
    _2421 = _2417 * _2310;
    _2422 = _2417 * _2311;
    if (!((_2417 * _2368) == 0.0f)) {
      _2435 = saturate(saturate(max(_2344, (1.0f / ((saturate(_2407) * _2403) + 1.0f))) + _renderParams.z));  // [sem: expr_sat]
    } else {
      _2435 = 1.0f;  // [sem: expr_sat]
    }
    _2477 = 1.0f / _exposure4.x;
    _2494 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (-0.0f - (min(0.0f, (-0.0f - ((_2422 * float(_2363.x)) + ((_2421 * float(_2358.x)) + ((_2419 * float(_2347.x)) + (_2420 * float(_2353.x))))))) * _exposure4.y)))));
    _2495 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (-0.0f - (min(0.0f, (-0.0f - ((_2422 * float(_2363.y)) + ((_2421 * float(_2358.y)) + ((_2419 * float(_2347.y)) + (_2420 * float(_2353.y))))))) * _exposure4.y)))));
    _2496 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (-0.0f - (min(0.0f, (-0.0f - ((_2422 * float(_2363.z)) + ((_2421 * float(_2358.z)) + ((_2419 * float(_2347.z)) + (_2420 * float(_2353.z))))))) * _exposure4.y)))));
    if (_renderParams.y == 0.0f) {
      if (_1758) {
        _2527 = _2494;
        _2528 = _2495;
        _2529 = _2496;
        _2530 = _2435;
        _2534 = _2527;
        _2535 = _2528;
        _2536 = _2529;
        _2537 = _2530;
        _2538 = saturate(_2377 + 0.0625f);  // [sem: expr_sat]
      } else {
        if (!_1759) {
          _2501 = dot(float3(_2494, _2495, _2496), float3(0.212671f, 0.71516f, 0.072169f));
          _2517 = ((min(_2501, _2410.y) / max(1e-06f, _2501)) * _2415) + saturate(1.0f - _2415);
          _2522 = saturate(((_2415 * 0.5f) * saturate(((_2410.x - _2501) * 2.0f) / max(1e-06f, _2410.x))) + _2435);  // [sem: expr_sat]
          _2523 = (_2517 * _2494);
          _2524 = (_2517 * _2495);
          _2525 = (_2517 * _2496);
        } else {
          _2522 = _2435;  // [sem: expr_sat]
          _2523 = _2494;
          _2524 = _2495;
          _2525 = _2496;
        }
        if (!_2404) {
          _2527 = _2523;
          _2528 = _2524;
          _2529 = _2525;
          _2530 = _2522;
          _2534 = _2527;
          _2535 = _2528;
          _2536 = _2529;
          _2537 = _2530;
          _2538 = saturate(_2377 + 0.0625f);  // [sem: expr_sat]
        } else {
          _2534 = _2523;
          _2535 = _2524;
          _2536 = _2525;
          _2537 = _2522;
          _2538 = 0.0f;  // [sem: expr_sat]
        }
      }
    } else {
      _2522 = _2435;  // [sem: expr_sat]
      _2523 = _2494;
      _2524 = _2495;
      _2525 = _2496;
      if (!_2404) {
        _2527 = _2523;
        _2528 = _2524;
        _2529 = _2525;
        _2530 = _2522;
        _2534 = _2527;
        _2535 = _2528;
        _2536 = _2529;
        _2537 = _2530;
        _2538 = saturate(_2377 + 0.0625f);  // [sem: expr_sat]
      } else {
        _2534 = _2523;
        _2535 = _2524;
        _2536 = _2525;
        _2537 = _2522;
        _2538 = 0.0f;  // [sem: expr_sat]
      }
    }
    _2545 = (_2537 * (_1660 - _2534)) + _2534;
    _2546 = (_2537 * (_1661 - _2535)) + _2535;
    _2547 = (_2537 * (_1662 - _2536)) + _2536;
    __3__38__0__1__g_diffuseResultUAV[int2(_100, _102)] = float4((half)(half(_2545)), (half)(half(_2546)), (half)(half(_2547)), (half)(half(_2538)));
    _2554 = float(_1753);
    _2555 = float(_1754);
    _2556 = float(_1755);
    if (_1650 == 52) {
      _2563 = saturate(((_2555 + _2554) + _2556) * 1.2f);  // [sem: expr_sat]
    } else {
      _2563 = 1.0f;  // [sem: expr_sat]
    }
    _2564 = float(_1750);
    _2570 = (0.7f / min(max(max(max(_2554, _2555), _2556), 0.01f), 0.7f)) * _2563;
    _2580 = (((_2570 * _2554) + -0.04f) * _2564) + 0.04f;
    _2581 = (((_2570 * _2555) + -0.04f) * _2564) + 0.04f;
    _2582 = (((_2570 * _2556) + -0.04f) * _2564) + 0.04f;
    _2583 = select(_1721, 1.0f, ((((float(_1671.y) * _906) + (float(_1664.y) * _905)) + (float(_1680.y) * _907)) + (float(_1689.y) * _908)));
    if (!_1721) {
      _2588 = saturate(1.0f - _1696);  // [sem: expr_sat]
    } else {
      _2588 = 1.0f;  // [sem: expr_sat]
    }
    _2591 = (_1650 == 98) || (_1757 == 96);
    if (!_2591) {
      bool __branch_chain_2592;
      if ((uint)((int)(_1650) + (int)(-105)) < (uint)2) {
        _2599 = _182;
        __branch_chain_2592 = true;
      } else {
        if (!((uint)((int)(_1650) + (int)(-11)) < (uint)9)) {
          _2599 = false;
          __branch_chain_2592 = true;
        } else {
          _2642 = 0.0h;
          _2643 = _1650;
          _2644 = 0.0f;
          _2645 = 0.0f;
          _2646 = 0.0f;
          __branch_chain_2592 = false;
        }
      }
      if (__branch_chain_2592) {
        _2601 = (_1650 == 107) || _2599;
        _2604 = select(_2601, 0.0f, _1750);
        if (_2601 || (!_1715)) {
          if (!(_1650 == 33)) {
            if (_1650 == 54) {
              if (!((((int)((uint)((_1074 * 255.0f) + 0.5f))) & 112) == 0)) {
                _2627 = (uint)((_1074 * 255.0f) + 0.5f);
                _2629 = ((uint)((uint)(_2627)) >> 4) & 7;
                if (!(_2629 == 0)) {
                  _2636 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_2629) + (int)(1)))];
                  _2642 = _2604;
                  _2643 = _1650;
                  _2644 = min((1.0f - _2636.y), _2636.x);
                  _2645 = (((float)((uint)((uint)(_2627 & 15)))) * 0.06666667f);
                  _2646 = _2636.x;
                } else {
                  _2642 = _2604;
                  _2643 = _1650;
                  _2644 = 0.0f;
                  _2645 = 0.0f;
                  _2646 = 0.0f;
                }
              } else {
                _2642 = _2604;
                _2643 = 52;
                _2644 = 0.0f;
                _2645 = 0.0f;
                _2646 = 0.0f;
              }
            } else {
              if (_1650 == 55) {
                _2642 = _2604;
                _2643 = select(((((int)((uint)((_1074 * 255.0f) + 0.5f))) & 127) == 0), 52, 55);
                _2644 = 0.0f;
                _2645 = 0.0f;
                _2646 = 0.0f;
              } else {
                _2642 = _2604;
                _2643 = _1650;
                _2644 = 0.0f;
                _2645 = 0.0f;
                _2646 = 0.0f;
              }
            }
          } else {
            _2627 = (uint)((_1074 * 255.0f) + 0.5f);
            _2629 = ((uint)((uint)(_2627)) >> 4) & 7;
            if (!(_2629 == 0)) {
              _2636 = __3__35__0__0__MaterialParameterPresetTableConstantBuffer_raw[((int)((int)(_2629) + (int)(1)))];
              _2642 = _2604;
              _2643 = _1650;
              _2644 = min((1.0f - _2636.y), _2636.x);
              _2645 = (((float)((uint)((uint)(_2627 & 15)))) * 0.06666667f);
              _2646 = _2636.x;
            } else {
              _2642 = _2604;
              _2643 = _1650;
              _2644 = 0.0f;
              _2645 = 0.0f;
              _2646 = 0.0f;
            }
          }
        } else {
          _2642 = 0.0h;
          _2643 = 65;
          _2644 = 0.0f;
          _2645 = 0.0f;
          _2646 = 0.0f;
        }
      }
    } else {
      _2642 = 0.0h;
      _2643 = _1650;
      _2644 = 0.0f;
      _2645 = 0.0f;
      _2646 = 0.0f;
    }
    _2648 = dot(float3(_1052, _1053, _1054), float3(_714, _715, _716)) * 2.0f;
    _2652 = _1052 - (_2648 * _714);
    _2653 = _1053 - (_2648 * _715);
    _2654 = _1054 - (_2648 * _716);
    _2660 = dot(float3(_1052, _1053, _1054), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
    _2668 = (_1049 * _1049) + (_1047 * _1047);
    _2670 = sqrt(_2668 + (_1048 * _1048));
    _2672 = sqrt(max(0.0f, (dot(float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z)) - (_2660 * _2660)))) / (_2670 + 5.0f);
    _2676 = float(_1751);
    if ((_1751 < 0.099975586h) && (_2672 < 0.125f)) {
      _2686 = select((_2676 < 0.8f), ((__3__36__0__0__g_specularRayHitDistance.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_110, _111), 0.0f)).x), 0.0f) * rsqrt(dot(float3(_2652, _2653, _2654), float3(_2652, _2653, _2654)));
      _2687 = _2686 * _2652;
      _2688 = _2686 * _2653;
      _2689 = _2686 * _2654;
      _2694 = dot(float3(_2687, _2688, _2689), float3((-0.0f - _714), (-0.0f - _715), (-0.0f - _716))) * 2.0f;
      _2699 = ((_2694 * _714) + _1047) + _2687;
      _2701 = ((_2694 * _715) + _1048) + _2688;
      _2703 = ((_2694 * _716) + _1049) + _2689;
      _2727 = mad((_viewProjRelative[0].z), _2703, mad((_viewProjRelative[0].y), _2701, (_2699 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w);
      _2731 = mad((_viewProjRelative[1].z), _2703, mad((_viewProjRelative[1].y), _2701, (_2699 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w);
      _2735 = mad((_viewProjRelative[2].z), _2703, mad((_viewProjRelative[2].y), _2701, (_2699 * (_viewProjRelative[2].x)))) + (_viewProjRelative[2].w);
      _2739 = mad((_viewProjRelative[3].z), _2703, mad((_viewProjRelative[3].y), _2701, (_2699 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
      _2769 = mad((_projToPrevProj[3].w), _2739, mad((_projToPrevProj[3].z), _2735, mad((_projToPrevProj[3].y), _2731, ((_projToPrevProj[3].x) * _2727))));
      _2774 = ((mad((_projToPrevProj[0].w), _2739, mad((_projToPrevProj[0].z), _2735, mad((_projToPrevProj[0].y), _2731, ((_projToPrevProj[0].x) * _2727)))) / _2769) - (_2727 / _2739)) - _1841;
      _2775 = ((mad((_projToPrevProj[1].w), _2739, mad((_projToPrevProj[1].z), _2735, mad((_projToPrevProj[1].y), _2731, ((_projToPrevProj[1].x) * _2727)))) / _2769) - (_2731 / _2739)) - _1842;
      _2783 = max(_2672, saturate(sqrt((_2775 * _2775) + (_2774 * _2774))));
    } else {
      _2783 = _2672;
    }
    _2787 = _2643 & -2;
    _2790 = (_2643 == 29);
    _2792 = select((_2790 || ((_2787 == 24) || (_renderParams.y > 0.0f))), 1.0f, _2583);
    _2796 = float(_2642);
    _2801 = min(max((_cavityParams.y + -1.0f), 0.0f), 2.0f);
    // [sem: expr_sat]
    _2827 = saturate(saturate(1.0f - (((_2796 * _122) / max(0.001f, _1769)) * 0.001f)) * 1.25f) * saturate(((((-0.05f - (_2801 * 0.075f)) + max(0.02f, _2676)) + (saturate(_122 * 0.025f) * 0.1f)) * min(max((_122 + 1.0f), 5.0f), 50.0f)) * (1.0f - (saturate(_2796) * 0.75f)));
    if (_2643 == 64) {
      _2836 = ((saturate(_122 * 0.25f) * (_2827 + -0.39990234f)) + 0.39990234f);
    } else {
      _2836 = _2827;
    }
    _2838 = (_2801 * 16.0f) + 16.0f;
    _2844 = select((_2801 > 1.0f), 0.0f, saturate((1.0f / _2838) * (_122 - _2838)));
    if (_2643 == 105) {
      _2855 = 1.0f;
      _2859 = select((_2643 == 65), 0.0f, _2855);
    } else {
      if (!((uint)(_2643 & 24) > (uint)23)) {
        _2855 = select((_2643 == 107), 1.0f, ((_2844 + _2836) - (_2844 * _2836)));
        _2859 = select((_2643 == 65), 0.0f, _2855);
      } else {
        _2859 = 0.0f;
      }
    }
    _2866 = saturate(select((_lightingParams.y == 0.0f), 1.0f, (1.0f - _2859))) * _2783;
    if ((uint)_2643 > (uint)51) {
      if ((uint)_2643 < (uint)68) {
        if (_2643 == 66) {
          _2883 = (half)(max(0.099975586h, _1751));
          _2886 = _2883;
          _2887 = (half)(max(0.89990234h, _1751));
        } else {
          _2878 = max(0.099975586h, _1751);
          if ((_2643 == 53) || (_2787 == 66)) {
            _2883 = _2878;
            _2886 = _2883;
            _2887 = (half)(max(0.89990234h, _1751));
          } else {
            _2886 = _2878;
            _2887 = _2878;
          }
        }
      } else {
        _2872 = max(0.099975586h, _1751);
        _2886 = _2872;
        _2887 = _2872;
      }
    } else {
      _2878 = max(0.099975586h, _1751);
      if ((_2643 == 53) || (_2787 == 66)) {
        _2883 = _2878;
        _2886 = _2883;
        _2887 = (half)(max(0.89990234h, _1751));
      } else {
        _2886 = _2878;
        _2887 = _2878;
      }
    }
    _2888 = float(_2887);
    _2889 = _2888 * _2888;
    _2890 = _2889 * _2889;
    _2903 = (((_2890 * _2248) - _2248) * _2248) + 1.0f;
    _2904 = (((_2890 * _2272) - _2272) * _2272) + 1.0f;
    _2905 = (((_2890 * _2224) - _2224) * _2224) + 1.0f;
    _2906 = (((_2890 * _2200) - _2200) * _2200) + 1.0f;
    _2946 = (((((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_2352, _2345, 0))).x) * saturate(_2302)) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1866, _2345, 0))).x) * saturate(_2300))) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_2352, _1867, 0))).x) * saturate(_2304))) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1866, _1867, 0))).x) * saturate(_2306));
    _2951 = saturate(select(_2790, 1.0f, saturate((_2890 / (_2903 * _2903)) * _2248)) * _2300);  // [sem: expr_sat]
    _2952 = saturate(select(_2790, 1.0f, saturate((_2890 / (_2904 * _2904)) * _2272)) * _2302);  // [sem: expr_sat]
    _2953 = saturate(select(_2790, 1.0f, saturate((_2890 / (_2905 * _2905)) * _2224)) * _2304);  // [sem: expr_sat]
    _2954 = saturate(select(_2790, 1.0f, saturate((_2890 / (_2906 * _2906)) * _2200)) * _2306);  // [sem: expr_sat]
    _2964 = exp2(log2(saturate(max(float(((half)(((half)(1.0h - _1751)) * 0.75h)) * _2642), (1.0f - _1769)))) * 0.1f);
    _2967 = float(((half)(_1751 * _1751)) + 1.0009766h);
    _2983 = select(_2790, 1.0f, saturate(((_2395 * _2395) * _2407) * exp2((log2(float(_2886)) * 0.5f) * (((_2866 * 15.0f) * ((_2964 + _2967) / (_2967 - _2964))) + 1.0f))));
    if ((uint)((int)((uint)((uint)(_2643)) + (uint)(-12))) < (uint)9) {
      _2993 = ((saturate(_122 * 0.005f) * (_2983 + -1.0f)) + 1.0f);
    } else {
      _2993 = _2983;
    }
    _3021 = mad((_projToPrevProj[3].z), _113.x, mad((_projToPrevProj[3].y), _1010, ((_projToPrevProj[3].x) * _1008))) + (_projToPrevProj[3].w);
    _3024 = ((mad((_projToPrevProj[0].z), _113.x, mad((_projToPrevProj[0].y), _1010, ((_projToPrevProj[0].x) * _1008))) + (_projToPrevProj[0].w)) / _3021) - _1008;
    _3025 = ((mad((_projToPrevProj[1].z), _113.x, mad((_projToPrevProj[1].y), _1010, ((_projToPrevProj[1].x) * _1008))) + (_projToPrevProj[1].w)) / _3021) - _1010;
    _3026 = _1841 - _3024;
    _3027 = _1842 - _3025;
    if (_1791 || ((uint)((int)((uint)((uint)(_2643)) + (uint)(-52))) < (uint)16)) {
      _3041 = (31.0f - (saturate(sqrt((_3027 * _3027) + (_3026 * _3026)) * 500.0f) * 24.0f));
    } else {
      _3041 = 63.0f;
    }
    if (_renderParams.z > 0.0f) {
      _3056 = saturate((_2866 * 200.0f) + 0.125f);  // [sem: expr_sat]
    } else {
      _3056 = 0.0f;  // [sem: expr_sat]
    }
    _3057 = max(max(saturate(_2344), saturate(max(0.0f, (1.0f / (((_2993 * _2946) * _3041) + 1.0f))))), _3056);
    _3059 = ((uint)(_2643 & 24) > (uint)23);
    [branch]
    if (_3059) {
      _3070 = (_bufferSizeAndInvSize.x * ((_3024 * 0.5f) + _110)) + -0.5f;
      _3071 = (_bufferSizeAndInvSize.y * (_111 - (_3025 * 0.5f))) + -0.5f;
      _3074 = (int)(floor(_3070));
      _3075 = (int)(floor(_3071));
      _3076 = (float)((int)(_3074));
      _3077 = (float)((int)(_3075));
      [branch]
      if (_2790) {
        // [sem: _3__36__0__0__g_stencilPrev_gather]
        _3087 = __3__36__0__0__g_stencilPrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(((_3076 + 0.5f) * _bufferSizeAndInvSize.z), ((_3077 + 0.5f) * _bufferSizeAndInvSize.w)));
        _3094 = mad(_3087.w, 16777216, mad(_3087.z, 65536, mad(_3087.y, 256, _3087.x)));
        _3123 = saturate(((float)((bool)(((uint)(_3094 & 24) > (uint)23) && ((_3094 & 127) != 24)))) * _2951);  // [sem: expr_sat]
        _3124 = saturate(((float)((bool)(((uint)(_3094 & 6144) > (uint)5888) && ((_3094 & 32512) != 6144)))) * _2952);  // [sem: expr_sat]
        // [sem: expr_sat]
        _3125 = saturate(((float)((bool)(((uint)(_3094 & 1572864) > (uint)1507328) && ((_3094 & 8323072) != 1572864)))) * _2953);
        // [sem: expr_sat]
        _3126 = saturate(((float)((bool)(((uint)(_3094 & 402653184) > (uint)385875968) && ((_3094 & 2130706432) != 402653184)))) * _2954);
        _3158 = max(saturate(min(max(((_1756 / ((_632 * 0.005f) + 1.0f)) + (_2866 * 500.0f)), 0.03125f), 0.5f) + _3057), saturate(1.0f - dot(float4(_3123, _3124, _3125, _3126), float4(1.0f, 1.0f, 1.0f, 1.0f))));
        _3159 = _3074;
        _3160 = _3075;
        _3161 = _3123;
        _3162 = _3124;
        _3163 = _3125;
        _3164 = _3126;
      } else {
        _3141 = _3070 - _3076;
        _3142 = _3071 - _3077;
        _3143 = 1.0f - _3141;
        _3144 = 1.0f - _3142;
        _3158 = (saturate((sqrt((_3025 * _3025) + (_3024 * _3024)) * 50.0f) + 0.125f) * 0.875f);
        _3159 = _3074;
        _3160 = _3075;
        _3161 = (_3143 * _3142);
        _3162 = (_3142 * _3141);
        _3163 = (_3144 * _3141);
        _3164 = (_3144 * _3143);
      }
    } else {
      _3158 = _3057;
      _3159 = _1866;
      _3160 = _1867;
      _3161 = _2951;
      _3162 = _2952;
      _3163 = _2953;
      _3164 = _2954;
    }
    _3165 = (_2796 > 0.2f);
    _3166 = (uint)((uint)(_3160)) + (uint)(1);
    half4 _3168 = __3__36__0__0__g_specularResultPrev.Load(int3(_3159, _3166, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _3181 = ((float)((bool)(!(_3165 ^ ((half)(_3168.w) < 0.0h))))) * _3161;
    _3187 = (uint)((uint)(_3159)) + (uint)(1);
    half4 _3188 = __3__36__0__0__g_specularResultPrev.Load(int3(_3187, _3166, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _3201 = ((float)((bool)(!(_3165 ^ ((half)(_3188.w) < 0.0h))))) * _3162;
    half4 _3211 = __3__36__0__0__g_specularResultPrev.Load(int3(_3187, _3160, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _3224 = ((float)((bool)(!(_3165 ^ ((half)(_3211.w) < 0.0h))))) * _3163;
    half4 _3234 = __3__36__0__0__g_specularResultPrev.Load(int3(_3159, _3160, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _3247 = ((float)((bool)(!(_3165 ^ ((half)(_3234.w) < 0.0h))))) * _3164;
    _3271 = 1.0f / max(((saturate(_122 * 0.0625f) * 0.000999f) + 1e-06f), dot(float4(_3181, _3201, _3224, _3247), float4(1.0f, 1.0f, 1.0f, 1.0f)));
    _3273 = -0.0f - (min(0.0f, (-0.0f - ((((_3181 * float(_3168.x)) + (_3201 * float(_3188.x))) + (_3224 * float(_3211.x))) + (_3247 * float(_3234.x))))) * _3271);
    _3275 = -0.0f - (min(0.0f, (-0.0f - ((((_3181 * float(_3168.y)) + (_3201 * float(_3188.y))) + (_3224 * float(_3211.y))) + (_3247 * float(_3234.y))))) * _3271);
    _3277 = -0.0f - (min(0.0f, (-0.0f - ((((_3181 * float(_3168.z)) + (_3201 * float(_3188.z))) + (_3224 * float(_3211.z))) + (_3247 * float(_3234.z))))) * _3271);
    _3278 = _3271 * min(0.0f, (-0.0f - ((((_3181 * abs(float(_3168.w))) + (_3201 * abs(float(_3188.w)))) + (_3224 * abs(float(_3211.w)))) + (_3247 * abs(float(_3234.w))))));
    _3287 = max(_3158, saturate((_2676 * _2676) * max(0.0f, saturate(((1.0f - _2583) - _2588) * 2.0f))));
    if ((_2643 != 53) && ((_2787 != 66) && (_renderParams.y == 0.0f))) {
      _3294 = dot(float3(_3273, _3275, _3277), float3(0.212671f, 0.71516f, 0.072169f));
      _3301 = ((min(_3294, _2410.z) / max(1e-09f, _3294)) * _2415) + saturate(1.0f - _2415);
      // [sem: expr_sat]
      _3322 = saturate(((_2415 * 0.5f) * saturate((((_2676 * 1000.0f) * _2866) * ((float(1.0h / ((half)(8.0h - ((half)(_1751 * 7.0h))))) * _2410.z) - _3294)) / max(1e-06f, _2410.z))) + _3287);
      _3323 = (_3301 * _3273);
      _3324 = (_3301 * _3275);
      _3325 = (_3301 * _3277);
    } else {
      _3322 = _3287;  // [sem: expr_sat]
      _3323 = _3273;
      _3324 = _3275;
      _3325 = _3277;
    }
    _3326 = _3323 * _exposure4.y;
    _3327 = _3324 * _exposure4.y;
    _3328 = _3325 * _exposure4.y;
    _3341 = ((max(0.001f, _2588) + _3278) * _3322) - _3278;
    _3351 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_2792 * ((((_969.x * _906) + (_962.x * _905)) + (_979.x * _907)) + (_989.x * _908))) - _3326) * _3322) + _3326))));
    _3352 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_2792 * ((((_969.y * _906) + (_962.y * _905)) + (_979.y * _907)) + (_989.y * _908))) - _3327) * _3322) + _3327))));
    _3353 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_2792 * ((((_969.z * _906) + (_962.z * _905)) + (_979.z * _907)) + (_989.z * _908))) - _3328) * _3322) + _3328))));
    __3__38__0__1__g_specularResultUAV[int2(_100, _102)] = float4((half)(half(_3351)), (half)(half(_3352)), (half)(half(_3353)), (half)(half(select(_3165, (-0.0f - _3341), _3341))));
    __3__38__0__1__g_specularSampleCountUAV[int2(_100, _102)] = saturate((_2946 * 0.984375f) + 0.015625f);
    _3365 = select(_3059, 0.0f, _3341);
    _3370 = float(half(lerp(_3365, 1.0f, _2676)));
    _3371 = (_2787 == 64);
    _3373 = ((int)(uint)(_183)) ^ 1;
    if ((((int)(uint)(_3371)) & _3373) == 0) {
      _3390 = saturate(exp2((_3370 * _3370) * (_122 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _3390 = select((_cavityParams.z > 0.0f), select(_183, 0.0f, _1073), 1.0f);  // [sem: expr_sat]
    }
    _3393 = (_cavityParams.x == 0.0f);
    _3394 = select(_3393, 1.0f, _3390);
    _3395 = float(_201);
    _3396 = float(_202);
    _3397 = float(_203);
    if (_3371) {
      _3403 = (_3394 * _2580);
      _3404 = (_3394 * _2581);
      _3405 = (_3394 * _2582);
    } else {
      _3403 = _2580;
      _3404 = _2581;
      _3405 = _2582;
    }
    _3407 = _2554 * 0.875f;
    _3408 = _2555 * 0.875f;
    _3409 = _2556 * 0.875f;
    if (!(_2643 == 37)) {
      _3411 = (_2643 == 55);
      _3412 = select(_3411, _3407, _3403);
      _3413 = select(_3411, _3408, _3404);
      _3414 = select(_3411, _3409, _3405);
      if ((_2643 == 53) || (_2787 == 66)) {
        // [sem: _3__36__0__0__g_hairBrdfLookup_sampleLod]
        _3429 = __3__36__0__0__g_hairBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, (1.0f - saturate(abs(dot(float3(_1647, _1648, _1649), float3(_1052, _1053, _1054)))))), (1.0f - max(0.75f, (_3370 * 2.0f)))), 0.0f);
        // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
        _3435 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1769), (1.0f - _3370)), 0.0f);
        _3442 = ((_3435.x - _3429.x) * _1645) + _3429.x;
        _3443 = ((_3435.y - _3429.y) * _1645) + _3429.y;
        _3445 = (_3442 * 0.01f) + _3443;
        _3612 = _3442;
        _3613 = _3443;
        _3614 = _3445;
        _3615 = _3445;
        _3616 = _3445;
      } else {
        if ((uint)((int)((uint)((uint)(_2643)) + (uint)(-97))) < (uint)2) {
          if (!(abs(_3396) > 0.99f)) {
            _3453 = -0.0f - _3397;
            _3455 = rsqrt(dot(float3(_3453, 0.0f, _3395), float3(_3453, 0.0f, _3395)));  // [sem: invLength]
            _3459 = (_3455 * _3453);
            _3460 = (_3455 * _3395);
          } else {
            _3459 = 1.0f;
            _3460 = 0.0f;
          }
          _3462 = -0.0f - (_3396 * _3460);
          _3465 = (_3460 * _3395) - (_3459 * _3397);
          _3466 = _3459 * _3396;
          _3468 = rsqrt(dot(float3(_3462, _3465, _3466), float3(_3462, _3465, _3466)));  // [sem: invLength]
          _3476 = _viewPos.x + _1047;
          _3477 = _viewPos.y + _1048;
          _3478 = _viewPos.z + _1049;
          // [sem: _3__36__0__0__g_blueNoise_sampleLod]
          _3483 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_3459, 0.0f, _3460), float3(_3476, _3477, _3478)), dot(float3((_3468 * _3462), (_3465 * _3468), (_3468 * _3466)), float3(_3476, _3477, _3478))), 0.0f);
          _3487 = _3483.x + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _3488 = _3483.y + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _3489 = _3483.z + -0.5f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
          _3491 = rsqrt(dot(float3(_3487, _3488, _3489), float3(_3487, _3488, _3489)));  // [sem: invLength]
          _3495 = (_3487 * _3491) + _714;
          _3496 = (_3488 * _3491) + _715;
          _3497 = (_3489 * _3491) + _716;
          _3499 = rsqrt(dot(float3(_3495, _3496, _3497), float3(_3495, _3496, _3497)));  // [sem: invLength]
          // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
          _3512 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1769), (1.0f - _3370)), 0.0f);
          _3519 = _3512.y + (exp2(log2(saturate(dot(float3(_1761, _1762, _1763), float3((_3495 * _3499), (_3496 * _3499), (_3497 * _3499))))) * 512.0f) * 20.0f);
          _3612 = _3512.x;
          _3613 = _3512.y;
          _3614 = (_3519 + (_3512.x * _3412));
          _3615 = (_3519 + (_3512.x * _3413));
          _3616 = (_3519 + (_3512.x * _3414));
        } else {
          _3524 = _3412;
          _3525 = _3413;
          _3526 = _3414;
          if (_3371) {
            if (_2643 == 65) {
              _3595 = _3524;
              _3596 = _3525;
              _3597 = _3526;
              // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
              _3602 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1769), (1.0f - _3370)), 0.0f);
              _3612 = _3602.x;
              _3613 = _3602.y;
              _3614 = ((_3602.x * _3595) + _3602.y);
              _3615 = ((_3602.x * _3596) + _3602.y);
              _3616 = ((_3602.x * _3597) + _3602.y);
            } else {
              _3532 = min(0.99f, _1769);
              // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
              _3537 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_3532, saturate(1.0f - (_3370 * 1.33f))), 0.0f);
              // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
              _3542 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_3532, saturate(1.0f - (_3370 * 0.47998047f))), 0.0f);
              _3546 = (_3542.x + _3537.x) * 0.5f;
              _3548 = (_3542.y + _3537.y) * 0.5f;
              _3612 = _3546;
              _3613 = _3548;
              _3614 = ((_3546 * _3524) + _3548);
              _3615 = ((_3546 * _3525) + _3548);
              _3616 = ((_3546 * _3526) + _3548);
            }
          } else {
            if ((_2643 == 33) || (_2643 == 54)) {
              _3565 = max(dot(float3(_2554, _2555, _2556), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
              _3569 = sqrt(_2554) - _3565;
              _3570 = sqrt(_2555) - _3565;
              _3571 = sqrt(_2556) - _3565;
              _3578 = saturate(1.0f - (pow(_1769, 4.0f)));  // [sem: expr_sat]
              _3595 = ((((_3569 * _2644) + _3565) + (_3578 * (_3569 * (_2646 - _2644)))) * _2645);
              _3596 = ((((_3570 * _2644) + _3565) + ((_3570 * (_2646 - _2644)) * _3578)) * _2645);
              _3597 = ((((_3571 * _2644) + _3565) + ((_3571 * (_2646 - _2644)) * _3578)) * _2645);
            } else {
              _3595 = _3524;
              _3596 = _3525;
              _3597 = _3526;
            }
            // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
            _3602 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1769), (1.0f - _3370)), 0.0f);
            _3612 = _3602.x;
            _3613 = _3602.y;
            _3614 = ((_3602.x * _3595) + _3602.y);
            _3615 = ((_3602.x * _3596) + _3602.y);
            _3616 = ((_3602.x * _3597) + _3602.y);
          }
        }
      }
    } else {
      _3524 = _3407;
      _3525 = _3408;
      _3526 = _3409;
      if (_3371) {
        if (_2643 == 65) {
          _3595 = _3524;
          _3596 = _3525;
          _3597 = _3526;
          // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
          _3602 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1769), (1.0f - _3370)), 0.0f);
          _3612 = _3602.x;
          _3613 = _3602.y;
          _3614 = ((_3602.x * _3595) + _3602.y);
          _3615 = ((_3602.x * _3596) + _3602.y);
          _3616 = ((_3602.x * _3597) + _3602.y);
        } else {
          _3532 = min(0.99f, _1769);
          // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
          _3537 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_3532, saturate(1.0f - (_3370 * 1.33f))), 0.0f);
          // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
          _3542 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_3532, saturate(1.0f - (_3370 * 0.47998047f))), 0.0f);
          _3546 = (_3542.x + _3537.x) * 0.5f;
          _3548 = (_3542.y + _3537.y) * 0.5f;
          _3612 = _3546;
          _3613 = _3548;
          _3614 = ((_3546 * _3524) + _3548);
          _3615 = ((_3546 * _3525) + _3548);
          _3616 = ((_3546 * _3526) + _3548);
        }
      } else {
        if ((_2643 == 33) || (_2643 == 54)) {
          _3565 = max(dot(float3(_2554, _2555, _2556), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
          _3569 = sqrt(_2554) - _3565;
          _3570 = sqrt(_2555) - _3565;
          _3571 = sqrt(_2556) - _3565;
          _3578 = saturate(1.0f - (pow(_1769, 4.0f)));  // [sem: expr_sat]
          _3595 = ((((_3569 * _2644) + _3565) + (_3578 * (_3569 * (_2646 - _2644)))) * _2645);
          _3596 = ((((_3570 * _2644) + _3565) + ((_3570 * (_2646 - _2644)) * _3578)) * _2645);
          _3597 = ((((_3571 * _2644) + _3565) + ((_3571 * (_2646 - _2644)) * _3578)) * _2645);
        } else {
          _3595 = _3524;
          _3596 = _3525;
          _3597 = _3526;
        }
        // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
        _3602 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1769), (1.0f - _3370)), 0.0f);
        _3612 = _3602.x;
        _3613 = _3602.y;
        _3614 = ((_3602.x * _3595) + _3602.y);
        _3615 = ((_3602.x * _3596) + _3602.y);
        _3616 = ((_3602.x * _3597) + _3602.y);
      }
    }
    _3619 = select((_3371 || _3059), 1.0f, _3394) * _2477;
    _3626 = _2545 * _2477;
    _3627 = _2546 * _2477;
    _3628 = _2547 * _2477;
    if (_1989 || _1721) {
      _3882 = _1750;
      _3883 = _1751;
      _3884 = _1753;
      _3885 = _1754;
      _3886 = _1755;
      _3887 = _3365;
      if (_1760) {
        _3893 = _3887;
        _3894 = _3884;
        _3895 = _3885;
        _3896 = _3886;
        _3897 = _3883;
        _3898 = _3882;
        _3899 = 0.0f;
        _3900 = 0.0f;
        _3901 = 0.0f;
        _3902 = (_3626 * _1651);
        _3903 = (_3627 * _1652);
        _3904 = (_3628 * _1653);
      } else {
        _3893 = _3887;
        _3894 = _3884;
        _3895 = _3885;
        _3896 = _3886;
        _3897 = _3883;
        _3898 = _3882;
        _3899 = _3626;
        _3900 = _3627;
        _3901 = _3628;
        _3902 = 0.0f;
        _3903 = 0.0f;
        _3904 = 0.0f;
      }
    } else {
      if (!((_1650 == 6) || ((_1757 == 106) || (((uint)((int)(_1650) + (int)(-27)) < (uint)2) || ((_1650 == 105) || (_1650 == 26)))))) {
        if (!(_1650 == 7)) {
          _3649 = exp2(log2(_3365) * (saturate(_122 * 0.03125f) + 1.0f));
          // [sem: _3__36__0__0__g_puddleMask_sampleLod]
          _3659 = __3__36__0__0__g_puddleMask.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_110, _111), 0.0f);
          bool __branch_chain_3643;
          if ((_1650 == 15) || ((_1757 == 12) || ((_1650 & -4) == 16))) {
            _3678 = false;
            _3679 = true;
            __branch_chain_3643 = true;
          } else {
            if (!((uint)_1650 > (uint)10)) {
              _3678 = true;
              _3679 = false;
              __branch_chain_3643 = true;
            } else {
              if ((uint)_1650 < (uint)20) {
                _3678 = false;
                _3679 = false;
                __branch_chain_3643 = true;
              } else {
                if (!(_1650 == 97)) {
                  _3678 = (_1650 != 107);
                  _3679 = false;
                  __branch_chain_3643 = true;
                } else {
                  _3871 = _2564;
                  _3872 = _2676;
                  _3873 = _2554;
                  _3874 = _2555;
                  _3875 = _2556;
                  __branch_chain_3643 = false;
                }
              }
            }
          }
          if (__branch_chain_3643) {
            if (_3659.w < 1.0f) {
              if ((_weatherCheckFlag & 5) == 5) {
                _3689 = (_1650 == 36);
                if (!_3689) {
                  // [sem: _3__36__0__0__g_climateSandTex_sampleLod]
                  _3709 = __3__36__0__0__g_climateSandTex.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((_viewPos.x + _1047) / _climateTextureOnePixelMeter.x) + ((float)((int)((int)(_climateTextureSize.x) >> 1)))) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((_viewPos.z + _1049) / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                  _3715 = _3709.x;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3716 = _3709.y;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3717 = _3709.z;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3718 = _3709.w;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                } else {
                  _3715 = 0.12f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3716 = 0.12f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3717 = 0.1f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                  _3718 = 0.5f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                }
                _3725 = 1.0f - saturate(((_viewPos.y + _1048) - _paramGlobalSand.x) / _paramGlobalSand.y);
                if (!(_3725 <= 0.0f)) {
                  _3728 = saturate(_3649);  // [sem: _3649_sat]
                  _3741 = ((_3716 * 0.33951f) + (_3715 * 0.61312f)) + (_3717 * 0.04737f);
                  _3742 = ((_3716 * 0.91636f) + (_3715 * 0.0702f)) + (_3717 * 0.01345f);
                  _3743 = ((_3716 * 0.10958f) + (_3715 * 0.02062f)) + (_3717 * 0.8698f);
                  _3748 = select(_3679, 1.0f, ((float)((bool)(saturate(dot(float3(_714, _715, _716), float3(0.0f, 1.0f, 0.0f))) > 0.5f))));
                  if (_enableSandAO == 1) {
                    _3753 = 1.0f - _3659.x;  // [sem: _3__36__0__0__g_puddleMask_sampleLod_derived]
                    if (_3689) {
                      _3784 = ((((_3753 * 10.0f) * _3718) * _3725) * _3728);
                      _3787 = _3741;
                      _3788 = _3742;
                      _3789 = _3743;
                      _3790 = saturate(_3784);  // [sem: _3784_sat]
                    } else {
                      _3764 = saturate(_3718 + -0.5f);  // [sem: expr_sat]
                      _3787 = _3741;
                      _3788 = _3742;
                      _3789 = _3743;
                      // [sem: _3784_sat]
                      _3790 = ((((_3764 * 2.0f) * max((_3748 * _3659.x), min((_3728 * ((_3659.x * 7.0f) + 3.0f)), (_3764 * 40.0f)))) + (((_3753 * 10.0f) * _3728) * saturate((0.5f - _3718) * 2.0f))) * _3725);
                    }
                  } else {
                    _3782 = ((_3725 * _3718) * _3659.x) * _3748;
                    if (_3689) {
                      _3784 = _3782;
                      _3787 = _3741;
                      _3788 = _3742;
                      _3789 = _3743;
                      _3790 = saturate(_3784);  // [sem: _3784_sat]
                    } else {
                      _3787 = _3741;
                      _3788 = _3742;
                      _3789 = _3743;
                      _3790 = _3782;  // [sem: _3784_sat]
                    }
                  }
                } else {
                  _3787 = 0.0f;
                  _3788 = 0.0f;
                  _3789 = 0.0f;
                  _3790 = 0.0f;  // [sem: _3784_sat]
                }
                _3794 = ((1.0f - _3659.w) * (1.0f - _3659.y)) * _3790;
                _3795 = (_3794 > 0.0001f);
                if (_3795) {
                  if (_3679) {
                    _3798 = saturate(_3794);  // [sem: _3794_sat]
                    _3825 = (((sqrt(_3787 * _2554) - _2554) * _3798) + _2554);
                    _3826 = (((sqrt(_3788 * _2555) - _2555) * _3798) + _2555);
                    _3827 = (((sqrt(_3789 * _2556) - _2556) * _3798) + _2556);
                  } else {
                    _3825 = ((_3794 * (_3787 - _2554)) + _2554);
                    _3826 = ((_3794 * (_3788 - _2555)) + _2555);
                    _3827 = ((_3794 * (_3789 - _2556)) + _2556);
                  }
                } else {
                  _3825 = _2554;
                  _3826 = _2555;
                  _3827 = _2556;
                }
                if (_3689 && _3795) {
                  if (_3679) {
                    _3842 = (((sqrt(_2676 * 0.25f) - _2676) * saturate(_3794)) + _2676);
                  } else {
                    _3842 = ((_3794 * (0.25f - _2676)) + _2676);
                  }
                } else {
                  _3842 = _2676;
                }
                _3843 = saturate(_3825);  // [sem: _3825_sat]
                _3844 = saturate(_3826);  // [sem: _3826_sat]
                _3845 = saturate(_3827);  // [sem: _3827_sat]
                _3850 = (_3842 * (1.0f - _3649)) + _3649;
                _3853 = ((_3842 - _3850) * _3659.y) + _3850;
                _3860 = (((_3649 * _3649) * _3659.z) * ((float)((bool)(_3678)))) * saturate(dot(float3(_714, _715, _716), float3(0.0f, 1.0f, 0.0f)));
                _3861 = _3860 * -0.5f;
                _3871 = (_2564 - (_3649 * _2564));
                _3872 = (_3853 - (_3860 * _3853));
                _3873 = ((_3861 * _3843) + _3843);
                _3874 = ((_3861 * _3844) + _3844);
                _3875 = ((_3861 * _3845) + _3845);
              } else {
                _3871 = _2564;
                _3872 = _2676;
                _3873 = _2554;
                _3874 = _2555;
                _3875 = _2556;
              }
            } else {
              _3871 = _2564;
              _3872 = _2676;
              _3873 = _2554;
              _3874 = _2555;
              _3875 = _2556;
            }
          }
          _3882 = (half)(half(_3871));
          _3883 = (half)(half(_3872));
          _3884 = (half)(half(_3873));
          _3885 = (half)(half(_3874));
          _3886 = (half)(half(_3875));
          _3887 = _3649;
        } else {
          _3882 = _1750;
          _3883 = _1751;
          _3884 = _1753;
          _3885 = _1754;
          _3886 = _1755;
          _3887 = _3365;
        }
        if (_1760) {
          _3893 = _3887;
          _3894 = _3884;
          _3895 = _3885;
          _3896 = _3886;
          _3897 = _3883;
          _3898 = _3882;
          _3899 = 0.0f;
          _3900 = 0.0f;
          _3901 = 0.0f;
          _3902 = (_3626 * _1651);
          _3903 = (_3627 * _1652);
          _3904 = (_3628 * _1653);
        } else {
          _3893 = _3887;
          _3894 = _3884;
          _3895 = _3885;
          _3896 = _3886;
          _3897 = _3883;
          _3898 = _3882;
          _3899 = _3626;
          _3900 = _3627;
          _3901 = _3628;
          _3902 = 0.0f;
          _3903 = 0.0f;
          _3904 = 0.0f;
        }
      } else {
        _3893 = _3365;
        _3894 = _1753;
        _3895 = _1754;
        _3896 = _1755;
        _3897 = _1751;
        _3898 = _1750;
        _3899 = _3626;
        _3900 = _3627;
        _3901 = _3628;
        _3902 = 0.0f;
        _3903 = 0.0f;
        _3904 = 0.0f;
      }
    }
    half4 _3906 = __3__36__0__0__g_sceneShadowColor.Load(int3(_100, _102, 0));  // [sem: _3__36__0__0__g_sceneShadowColor_load]
    _3911 = float(_3906.x);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    _3912 = float(_3906.y);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    _3913 = float(_3906.z);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    [branch]
    if (_1721) {
      _3917 = __3__36__0__0__g_sceneNormal.Load(int3(_100, _102, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
      _3933 = min(1.0f, ((((float)((uint)((uint)(_3917.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _3934 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_3917.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _3935 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_3917.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _3937 = rsqrt(dot(float3(_3933, _3934, _3935), float3(_3933, _3934, _3935)));  // [sem: invLength]
      _3945 = (half)(half(_3937 * _3933));
      _3946 = (half)(half(_3937 * _3934));
      _3947 = (half)(half(_3937 * _3935));
    } else {
      _3945 = _523;
      _3946 = _524;
      _3947 = _525;
    }
    _3950 = (_sunDirection.y > 0.0f);
    if ((_3950) || ((!(_3950)) && (_sunDirection.y > _moonDirection.y))) {
      _3962 = _sunDirection.x;
      _3963 = _sunDirection.y;
      _3964 = _sunDirection.z;
    } else {
      _3962 = _moonDirection.x;
      _3963 = _moonDirection.y;
      _3964 = _moonDirection.z;
    }
    if ((_3950) || ((!(_3950)) && (_sunDirection.y > _moonDirection.y))) {
      _3984 = _precomputedAmbient7.y;
    } else {
      _3984 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
    }
    _3991 = _viewPos.x + _1047;
    _3992 = _viewPos.y + _1048;
    _3993 = _3992 + _earthRadius;
    _3994 = _viewPos.z + _1049;
    _4000 = sqrt(((_3991 * _3991) + (_3993 * _3993)) + (_3994 * _3994));
    _4005 = dot(float3((_3991 / _4000), (_3993 / _4000), (_3994 / _4000)), float3(_3962, _3963, _3964));
    _4011 = min(max(((_4000 - _earthRadius) / _atmosphereThickness), 16.0f), (_atmosphereThickness + -16.0f));
    _4019 = max(_4011, 0.0f);
    _4026 = (-0.0f - sqrt((_4019 + (_earthRadius * 2.0f)) * _4019)) / (_4019 + _earthRadius);
    if (_4005 > _4026) {
      _4049 = ((exp2(log2(saturate((_4005 - _4026) / (1.0f - _4026))) * 0.2f) * 0.4921875f) + 0.50390625f);
    } else {
      _4049 = ((exp2(log2(saturate((_4026 - _4005) / (_4026 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
    }
    // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
    _4054 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_4011 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f), _4049), 0.0f);
    _4076 = ((_4054.y * 2e-05f) * _mieAerosolDensity) * (_mieAerosolAbsorption + 1.0f);  // [sem: _3__36__0__0__g_texNetDensity_sampleLod_derived]
    _4094 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.0556001e-06f)) * _4054.x) + _4076) * -1.442695f);
    _4095 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 4.9788005e-06f)) * _4054.x) + _4076) * -1.442695f);
    _4096 = exp2(((((_ozoneRatio * 2.1360002e-07f) + (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f)) * _4054.x) + _4076) * -1.442695f);
    _4112 = sqrt(_2668);
    _4120 = (_cloudAltitude - (max(((_4112 * _4112) + -400000.0f), 0.0f) * 1e-06f)) - _viewPos.y;
    _4132 = (_cloudThickness * (0.5f - (((float)((int)((int)((int)(uint)((int)(_3963 > 0.0f))) - (int)((int)(uint)((int)(_3963 < 0.0f)))))) * 0.5f))) + _4120;
    if (_1048 < _4120) {
      _4135 = dot(float3(0.0f, 1.0f, 0.0f), float3(_3962, _3963, _3964));
      _4141 = select((abs(_4135) < 1e-08f), 1e+08f, ((_4132 - dot(float3(0.0f, 1.0f, 0.0f), float3(_1047, _1048, _1049))) / _4135));
      _4147 = ((_4141 * _3962) + _1047);
      _4148 = _4132;
      _4149 = ((_4141 * _3964) + _1049);
    } else {
      _4147 = _1047;
      _4148 = _1048;
      _4149 = _1049;
    }
    _4169 = saturate(abs(_3963) * 4.0f);  // [sem: expr_sat]
    _4171 = (_4169 * _4169) * exp2(((_distanceScale * -1.442695f) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_4147 * 5e-05f) + 0.5f), ((_4148 - _4120) / _cloudThickness), ((_4149 * 5e-05f) + 0.5f)), 0.0f)).x)) * (_cloudScatteringCoefficient / _distanceScale));
    _4178 = ((1.0f - _4171) * saturate(((_1048 - _cloudThickness) - _4120) * 0.1f)) + _4171;
    _4179 = _4178 * (((_4095 * 0.33951f) + (_4094 * 0.61312f)) + (_4096 * 0.04737f));
    _4180 = _4178 * (((_4095 * 0.91636f) + (_4094 * 0.0702f)) + (_4096 * 0.01345f));
    _4181 = _4178 * (((_4095 * 0.10958f) + (_4094 * 0.02062f)) + (_4096 * 0.8698f));
    _4201 = float(_3894);
    _4202 = float(_3895);
    _4203 = float(_3896);
    if (!_2591) {
      _4209 = (_182 && ((uint)((int)(_1650) + (int)(-105)) < (uint)2));
    } else {
      _4209 = true;
    }
    _4211 = float(max(0.010002136h, _3897));
    _4212 = float(_3898);
    _4215 = (_1650 == 107);
    _4218 = _1715 || (((uint)((int)(_1650) + (int)(-11)) < (uint)9) || (_4215 || _4209));
    if ((_1757 == 26) || ((_1650 == 105) || (_1650 == 28))) {
      _4229 = true;
      _4231 = _4229;
      _4232 = _4215;
    } else {
      _4226 = (_1650 == 106);
      if (!(_1650 == 19)) {
        _4229 = _4226;
        _4231 = _4229;
        _4232 = _4215;
      } else {
        _4231 = _4226;
        _4232 = true;
      }
    }
    _4233 = float(_3945);
    _4234 = float(_3946);
    _4235 = float(_3947);
    _4237 = __3__36__0__0__g_sceneDecalMask.Load(int3(_100, _102, 0));  // [sem: _3__36__0__0__g_sceneDecalMask_load]
    if (_1650 == 97) {
      _4249 = (((float)((uint16_t)((int16_t)((uint16_t)((int16_t)(_4237.x)) >> 2)))) * 0.015873017f);
      _4250 = ((int)((uint)((uint)((int)(min16uint)((int)((int)(_4237.x) & 2)))) >> 1) + (int)(97));
      _4251 = 0.0f;
      _4252 = 0.0f;
      _4253 = 0.0f;
      _4254 = 0.0f;
    } else {
      _4249 = select(_4218, _4212, 0.0f);
      _4250 = _1650;
      _4251 = _1120;
      _4252 = _1121;
      _4253 = _1122;
      _4254 = _1123;
    }
    _4259 = float(saturate(_202));
    _4260 = _4259 * _4259;
    _4261 = _4260 * _4260;
    _4262 = _4261 * _4261;
    _4273 = ((_4262 * _4262) * select((_2399 || (_4231 || _4232)), 0.0f, 1.0f)) * (((float4)(__3__36__0__0__g_puddleMask.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((_bufferSizeAndInvSize.z * _105), (_bufferSizeAndInvSize.w * _106)), 0.0f))).y);
    _4278 = _4233 - (_4273 * _4233);
    _4279 = (_4273 * (1.0f - _4234)) + _4234;
    _4280 = _4235 - (_4273 * _4235);
    _4282 = rsqrt(dot(float3(_4278, _4279, _4280), float3(_4278, _4279, _4280)));  // [sem: invLength]
    _4283 = _4278 * _4282;
    _4284 = _4279 * _4282;
    _4285 = _4280 * _4282;
    _4288 = (_4250 == 37) || (_4250 == 55);
    _4290 = select((_4218 || _4288), 0.0f, _4212);
    _4291 = (_4250 == 52);
    if (_4291) {
      _4298 = saturate(((_4202 + _4201) + _4203) * 1.2f);  // [sem: expr_sat]
    } else {
      _4298 = 1.0f;  // [sem: expr_sat]
    }
    _4304 = (0.7f / min(max(max(max(_4201, _4202), _4203), 0.01f), 0.7f)) * _4298;
    _4314 = (((_4304 * _4201) + -0.04f) * _4290) + 0.04f;
    _4315 = (((_4304 * _4202) + -0.04f) * _4290) + 0.04f;
    _4316 = (((_4304 * _4203) + -0.04f) * _4290) + 0.04f;
    _4317 = float(_3897);
    _4318 = _4250 & -2;
    _4319 = (_4318 == 64);
    _4322 = ((((int)(uint)(_4319)) & _3373) == 0);
    if (_4322) {
      _4335 = saturate(exp2((_4317 * _4317) * (_122 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _4335 = select((_cavityParams.z > 0.0f), select(_183, 0.0f, _1073), 1.0f);  // [sem: expr_sat]
    }
    _4336 = select(_3393, 1.0f, _4335);
    if (_4319) {
      _4342 = (_4336 * _4314);
      _4343 = (_4336 * _4315);
      _4344 = (_4336 * _4316);
    } else {
      _4342 = _4314;
      _4343 = _4315;
      _4344 = _4316;
    }
    _4345 = _4211 * _4211;
    _4346 = _4345 * _4345;
    _4348 = ((uint)((int)(_4250) + (int)(-97)) < (uint)2);
    _4350 = select(_4348, 0.5f, (_4211 * 0.60009766f));
    _4351 = _4350 * _4350;
    _4352 = _4351 * _4351;
    _4354 = (_4250 == 98);
    if (!(_4354 || (_4318 == 96))) {
      if ((uint)((int)(_4250) + (int)(-105)) < (uint)2) {
        _4368 = _182;
        _4371 = _4368;
        _4372 = (_4250 == 7);
      } else {
        if ((uint)_4250 > (uint)11) {
          if (!(((uint)_4250 < (uint)21) || (_4250 == 107))) {
            _4368 = false;
            _4371 = _4368;
            _4372 = (_4250 == 7);
          } else {
            _4371 = false;
            _4372 = true;
          }
        } else {
          if (!(_4250 == 6)) {
            _4368 = false;
            _4371 = _4368;
            _4372 = (_4250 == 7);
          } else {
            _4371 = false;
            _4372 = true;
          }
        }
      }
    } else {
      _4368 = true;
      _4371 = _4368;
      _4372 = (_4250 == 7);
    }
    _4377 = exp2(log2(float(_3906.w)) * 2.2f) * 1000.0f;  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    if ((_3950) || ((!(_3950)) && (_sunDirection.y > _moonDirection.y))) {
      _4389 = _sunDirection.x;
      _4390 = _sunDirection.y;
      _4391 = _sunDirection.z;
    } else {
      _4389 = _moonDirection.x;
      _4390 = _moonDirection.y;
      _4391 = _moonDirection.z;
    }
    _4392 = _lightingParams.x * _3984;
    _4393 = (((_4179 * 0.61312f) + (_4180 * 0.33951f)) + (_4181 * 0.04737f)) * _4392;
    _4394 = (((_4179 * 0.0702f) + (_4180 * 0.91636f)) + (_4181 * 0.01345f)) * _4392;
    _4395 = (((_4179 * 0.02062f) + (_4180 * 0.10958f)) + (_4181 * 0.8698f)) * _4392;
    _4396 = _4389 - _1052;
    _4397 = _4390 - _1053;
    _4398 = _4391 - _1054;
    _4400 = rsqrt(dot(float3(_4396, _4397, _4398), float3(_4396, _4397, _4398)));  // [sem: invLength]
    _4401 = _4400 * _4396;
    _4402 = _4400 * _4397;
    _4403 = _4400 * _4398;
    _4404 = dot(float3(_4233, _4234, _4235), float3(_4389, _4390, _4391));
    _4405 = dot(float3(_4283, _4284, _4285), float3(_4389, _4390, _4391));
    _4407 = saturate(dot(float3(_4233, _4234, _4235), float3(_1761, _1762, _1763)));  // [sem: expr_sat]
    _4409 = saturate(dot(float3(_4283, _4284, _4285), float3(_4401, _4402, _4403)));  // [sem: expr_sat]
    _4410 = dot(float3(_1761, _1762, _1763), float3(_4401, _4402, _4403));
    _4412 = saturate(dot(float3(_4389, _4390, _4391), float3(_4401, _4402, _4403)));  // [sem: expr_sat]
    _4413 = (_4318 == 66);
    _4414 = (_4250 == 53);
    _4415 = _4414 || _4413;
    if (_4415) {
      if (_4414) {
        _4432 = (((asfloat(_globalLightParams.z) * _4211) + _bevelParams.y) + (asfloat(_globalLightParams.w) * float(_277)));
      } else {
        _4432 = _bevelParams.y;
      }
      _4447 = (_2670 * 2.0f) + 1.0f;
      _4451 = (_1645 * 7.0f) + 1.0f;
      // [sem: _3__36__0__0__g_blueNoise_sampleLod]
      _4456 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2((((dot(float3(_1047, _1048, _1049), float3(((_1649 * _3396) - (_1648 * _3397)), ((_1647 * _3397) - (_1649 * _3395)), ((_1648 * _3395) - (_1647 * _3396)))) * 2.0f) / _4447) * _4451), (((dot(float3(_1047, _1048, _1049), float3(_1647, _1648, _1649)) * 0.5f) / _4447) * _4451)), 0.0f);
      _4460 = _1645 * 0.5f;
      _4461 = _4456.x * 2.0f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
      _4462 = _4456.y * 2.0f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
      _4463 = _4456.z * 2.0f;  // [sem: _3__36__0__0__g_blueNoise_sampleLod_derived]
      _4474 = dot(float3(_1647, _1648, _1649), float3(_4389, _4390, _4391));
      _4475 = dot(float3(_1647, _1648, _1649), float3(_1761, _1762, _1763));
      _4481 = cos(abs(asin(_4475) - asin(_4474)) * 0.5f);
      _4485 = _4389 - (_4474 * _1647);
      _4486 = _4390 - (_4474 * _1648);
      _4487 = _4391 - (_4474 * _1649);
      _4491 = _1761 - (_4475 * _1647);
      _4492 = _1762 - (_4475 * _1648);
      _4493 = _1763 - (_4475 * _1649);
      // [sem: invLength]
      _4500 = rsqrt((dot(float3(_4491, _4492, _4493), float3(_4491, _4492, _4493)) * dot(float3(_4485, _4486, _4487), float3(_4485, _4486, _4487))) + 0.0001f) * dot(float3(_4485, _4486, _4487), float3(_4491, _4492, _4493));
      _4504 = sqrt(saturate((_4500 * 0.5f) + 0.5f));
      _4511 = min(max(max(0.05f, _4211), 0.09803922f), 1.0f);
      _4512 = _4511 * _4511;
      _4513 = _4512 * 0.5f;
      _4514 = _4512 * 2.0f;
      _4515 = _4475 + _4474;
      _4516 = _4515 + (_4432 * 2.0f);
      _4518 = (_4504 * 1.4142135f) * _4512;
      _4532 = 1.0f - sqrt(saturate((dot(float3(_1761, _1762, _1763), float3(_4389, _4390, _4391)) * 0.5f) + 0.5f));
      _4533 = _4532 * _4532;
      _4540 = _4515 - _4432;
      _4549 = 1.0f / ((1.19f / _4481) + (_4481 * 0.36f));
      _4554 = ((_4549 * (0.6f - (_4500 * 0.8f))) + 1.0f) * _4504;
      _4560 = 1.0f - (sqrt(saturate(1.0f - (_4554 * _4554))) * _4481);
      _4561 = _4560 * _4560;
      _4565 = 0.9534794f - ((_4561 * _4561) * (_4560 * 0.9534794f));
      _4566 = _4549 * _4554;
      _4571 = (sqrt(1.0f - (_4566 * _4566)) * 0.5f) / _4481;
      _4572 = log2(_4201);
      _4573 = log2(_4202);
      _4574 = log2(_4203);
      _4586 = ((_4565 * _4565) * (exp2((((_4540 * _4540) * -0.5f) / (_4513 * _4513)) * 1.442695f) / (_4512 * 1.2533141f))) * exp2(-5.741926f - (_4500 * 5.265837f));
      _4590 = _4515 - (_4432 * 4.0f);
      _4600 = 1.0f - (_4481 * 0.5f);
      _4601 = _4600 * _4600;
      _4605 = (_4601 * _4601) * (0.9534794f - (_4481 * 0.4767397f));
      _4607 = 0.9534794f - _4605;
      _4608 = 0.8f / _4481;
      _4621 = (((_4607 * _4607) * (_4605 + 0.046520565f)) * (exp2((((_4590 * _4590) * -0.5f) / (_4514 * _4514)) * 1.442695f) / (_4512 * 5.0132565f))) * exp2((_4500 * 24.525816f) + -24.208424f);
      _4628 = saturate(_4405);  // [sem: _4405_sat]
      _4629 = (((_4504 * 0.25f) * (exp2((((_4516 * _4516) * -0.5f) / (_4518 * _4518)) * 1.442695f) / (_4518 * 2.5066283f))) * (((_4533 * _4533) * (_4532 * 0.9534794f)) + 0.046520565f)) * _4628;
      _4639 = -0.0f - _4628;
      _4650 = saturate((_4405 + 1.0f) * 0.25f);  // [sem: expr_sat]
      _4655 = max(0.001f, dot(float3(_4201, _4202, _4203), float3(0.3f, 0.59f, 0.11f)));
      _4674 = ((((1.0f - abs(_4405)) - _4650) * 0.33f) + _4650) * 0.07957747f;
      _4676 = (exp2(log2(_4201 / _4655) * (1.0f - _3911)) * _4674) * sqrt(_4201);
      _4678 = (exp2(log2(_4202 / _4655) * (1.0f - _3912)) * _4674) * sqrt(_4202);
      _4680 = (exp2(log2(_4203 / _4655) * (1.0f - _3913)) * _4674) * sqrt(_4203);
      _4687 = min(2048.0f, (-0.0f - min(0.0f, min(0.0f, (((_4621 * exp2(_4608 * _4572)) + (_4586 * exp2(_4572 * _4571))) * _4639)))));
      _4688 = min(2048.0f, (-0.0f - min(0.0f, min(0.0f, (((_4621 * exp2(_4608 * _4573)) + (_4586 * exp2(_4573 * _4571))) * _4639)))));
      _4689 = min(2048.0f, (-0.0f - min(0.0f, min(0.0f, (((_4621 * exp2(_4608 * _4574)) + (_4586 * exp2(_4574 * _4571))) * _4639)))));
      _4696 = -0.0f - min(0.0f, (min(0.0f, (-0.0f - ((lerp(_4461, 1.0f, _4460)) * _4629))) * _3911));
      _4697 = -0.0f - min(0.0f, (min(0.0f, (-0.0f - ((lerp(_4462, 1.0f, _4460)) * _4629))) * _3912));
      _4698 = -0.0f - min(0.0f, (min(0.0f, (-0.0f - ((lerp(_4463, 1.0f, _4460)) * _4629))) * _3913));
      if (!_4413) {
        _4700 = _4687;
        _4701 = _4688;
        _4702 = _4689;
        _4703 = _4696;
        _4704 = _4697;
        _4705 = _4698;
        _4706 = _4676;
        _4707 = _4678;
        _4708 = _4680;
        if (!_4414) {
          _4710 = (_4250 == 33);
          _4711 = (_4250 == 54);
          _4712 = _4710 || _4711;
          if (_4712) {
            _4727 = (saturate(_4404) * 0.31830987f) * (((saturate(1.0f - _effectiveMetallicForVelvet) + -1.0f) * _4254) + 1.0f);
            _4733 = max(dot(float3(_4201, _4202, _4203), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
            _4734 = sqrt(_4201);
            _4735 = sqrt(_4202);
            _4736 = sqrt(_4203);
            _4737 = _4734 - _4733;
            _4738 = _4735 - _4733;
            _4739 = _4736 - _4733;
            _4746 = saturate(1.0f - (pow(_4407, 4.0f)));  // [sem: expr_sat]
            _4759 = (((_4738 * _4251) + _4733) + ((_4738 * (_4254 - _4251)) * _4746)) * _4252;
            _4762 = saturate(1.0f - saturate(_4410));  // [sem: expr_sat]
            _4763 = _4762 * _4762;
            _4765 = (_4763 * _4763) * _4762;
            _4768 = _4765 * saturate(_4759 * 50.0f);
            _4769 = 1.0f - _4765;
            _4770 = _4769 * _4252;
            _4774 = (_4770 * (((_4737 * _4251) + _4733) + (_4746 * (_4737 * (_4254 - _4251))))) + _4768;
            _4775 = (_4769 * _4759) + _4768;
            _4776 = (_4770 * (((_4739 * _4251) + _4733) + ((_4739 * (_4254 - _4251)) * _4746))) + _4768;
            _4777 = min(_4409, 0.9999f);
            _4778 = _4777 * _4777;
            _4779 = 1.0f - _4778;
            _4791 = (((exp2(((-0.0f - _4778) / (_4779 * _4346)) * 1.442695f) * 4.0f) / (_4779 * _4779)) + 1.0f) / ((_4346 * 12.566371f) + 3.1415927f);
            _4795 = ((_4407 + _4405) - (_4407 * _4405)) * 4.0f;
            _4799 = (_4774 * _4791) / _4795;
            _4800 = (_4775 * _4791) / _4795;
            _4801 = (_4776 * _4791) / _4795;
            _4802 = 1.0f - _4345;
            _4814 = (((_4409 * _4346) - _4409) * _4409) + 1.0f;
            _4818 = (_4346 / ((_4814 * _4814) * 3.1415927f)) * (0.5f / ((((_4407 * _4802) + _4345) * _4404) + (_4407 * ((_4404 * _4802) + _4345))));
            _4834 = saturate(_4405);  // [sem: _4405_sat]
            _4839 = (_4253 * 1.5f) + 2.5f;
            _4840 = _4839 * _4839;
            _4850 = (max(0.0f, (0.3f - _4404)) * 0.25f) * ((exp2(_4840 * -0.48089835f) * 3.0f) + exp2(_4840 * -1.442695f));
            _4875 = (((1.0f - _4254) * 0.4774648f) * saturate(_4253)) * saturate((pow(_4409, 4.0f)) * exp2(log2(saturate(1.0f - abs(_4404))) * 3.0f));
            _4880 = (_4875 * _4734);
            _4881 = (_4875 * _4735);
            _4882 = (_4875 * _4736);
            _4883 = ((((max((_4818 * _4774), 0.0f) - _4799) * _4251) + _4799) * _4834);
            _4884 = ((((max((_4818 * _4775), 0.0f) - _4800) * _4251) + _4800) * _4834);
            _4885 = ((((max((_4818 * _4776), 0.0f) - _4801) * _4251) + _4801) * _4834);
            _4886 = (((_4734 * _3911) * _4850) + _4727);
            _4887 = (((_4735 * _3912) * _4850) + _4727);
            _4888 = (((_4736 * _3913) * _4850) + _4727);
            if (!_4710) {
              if (_4711) {
                _5054 = _4703;
                _5055 = _4704;
                _5056 = _4705;
                _5057 = _4706;
                _5058 = _4707;
                _5059 = _4708;
                if (_4288) {
                  _5062 = dot(float3(_1761, _1762, _1763), float3(_4283, _4284, _4285)) * 2.0f;
                  _5066 = _1761 - (_5062 * _4283);
                  _5067 = _1762 - (_5062 * _4284);
                  _5068 = _1763 - (_5062 * _4285);
                  _5069 = _4389 - _5066;
                  _5070 = _4390 - _5067;
                  _5071 = _4391 - _5068;
                  _5073 = rsqrt(dot(float3(_5069, _5070, _5071), float3(_5069, _5070, _5071)));  // [sem: invLength]
                  _5074 = _5069 * _5073;
                  _5075 = _5070 * _5073;
                  _5076 = _5071 * _5073;
                  _5077 = -0.0f - _5066;
                  _5078 = -0.0f - _5067;
                  _5079 = -0.0f - _5068;
                  _5081 = saturate(dot(float3(_4233, _4234, _4235), float3(_5077, _5078, _5079)));  // [sem: expr_sat]
                  _5083 = saturate(dot(float3(_4283, _4284, _4285), float3(_5074, _5075, _5076)));  // [sem: expr_sat]
                  _5085 = saturate(_4405);  // [sem: _4405_sat]
                  _5096 = 1.0f - ((_5083 * _5083) * 0.9f);
                  _5099 = (0.03183099f / (_5096 * _5096)) * (0.5f / ((((_5081 * 0.9f) + 0.1f) * _4405) + (_5081 * ((_4405 * 0.9f) + 0.1f))));
                  _5125 = _5057;
                  _5126 = _5058;
                  _5127 = _5059;
                  _5128 = dot(float3(_5077, _5078, _5079), float3(_5074, _5075, _5076));
                  _5129 = _5083;
                  _5130 = (((float(half(max((_5099 * _4201), 0.0f) * _5085)) - _5054) * 0.875f) + _5054);
                  _5131 = (((float(half(max((_5099 * _4202), 0.0f) * _5085)) - _5055) * 0.875f) + _5055);
                  _5132 = (((float(half(max((_5099 * _4203), 0.0f) * _5085)) - _5056) * 0.875f) + _5056);
                } else {
                  _5125 = _5057;
                  _5126 = _5058;
                  _5127 = _5059;
                  _5128 = _4410;
                  _5129 = _4409;
                  _5130 = _5054;
                  _5131 = _5055;
                  _5132 = _5056;
                }
              } else {
                _4891 = saturate(_4404);  // [sem: _4404_sat]
                _4892 = 1.0f - _4346;
                _4893 = 1.0f - _4412;
                _4894 = _4893 * _4893;
                _4897 = ((_4894 * _4894) * _4893) + _4412;
                _4898 = 1.0f - _4891;
                _4899 = _4898 * _4898;
                _4904 = 1.0f - _4407;
                _4905 = _4904 * _4904;
                _4932 = (_4891 * 0.31830987f) * ((((_4412 * ((((_4892 * 34.5f) + -59.0f) * _4892) + 24.5f)) * exp2(-0.0f - (max(((_4892 * 73.2f) + -21.2f), 8.9f) * sqrt(_4409)))) + _4897) + ((((1.0f - ((_4899 * _4899) * (_4898 * 0.75f))) * (1.0f - ((_4905 * _4905) * (_4904 * 0.75f)))) - _4897) * saturate((_4892 * 2.2f) + -0.5f)));
                _4935 = saturate(1.0f - saturate(_4410));  // [sem: expr_sat]
                _4936 = _4935 * _4935;
                _4938 = (_4936 * _4936) * _4935;
                _4941 = _4938 * saturate(_4343 * 50.0f);
                _4942 = 1.0f - _4938;
                _4946 = (_4942 * _4342) + _4941;
                _4947 = (_4942 * _4343) + _4941;
                _4948 = (_4942 * _4344) + _4941;
                if (!(_4250 == 29)) {
                  _4950 = saturate(_4405);  // [sem: _4405_sat]
                  _4951 = 1.0f - _4345;
                  _4963 = (((_4409 * _4346) - _4409) * _4409) + 1.0f;
                  _4967 = (_4346 / ((_4963 * _4963) * 3.1415927f)) * (0.5f / ((((_4407 * _4951) + _4345) * _4405) + (_4407 * ((_4405 * _4951) + _4345))));
                  _4978 = (max((_4967 * _4946), 0.0f) * _4950);
                  _4979 = (max((_4967 * _4947), 0.0f) * _4950);
                  _4980 = (max((_4967 * _4948), 0.0f) * _4950);
                } else {
                  _4978 = 0.0f;
                  _4979 = 0.0f;
                  _4980 = 0.0f;
                }
                if (_4319) {
                  if (_4250 == 65) {
                    _5024 = _4978;
                    _5025 = _4979;
                    _5026 = _4980;
                    _5031 = max(1e-06f, _exposure2.x);
                    _5040 = ((_4891 * 50.265484f) * exp2(log2(saturate(dot(float3(_4283, _4284, _4285), float3(_1761, _1762, _1763)))) * 16.0f)) / (((_5031 * _5031) * 1e+06f) + 1.0f);
                    _5125 = ((((_5040 * _4201) - _4932) * _4249) + _4932);
                    _5126 = ((((_5040 * _4202) - _4932) * _4249) + _4932);
                    _5127 = ((((_5040 * _4203) - _4932) * _4249) + _4932);
                    _5128 = _4410;
                    _5129 = _4409;
                    _5130 = _5024;
                    _5131 = _5025;
                    _5132 = _5026;
                  } else {
                    _4988 = 1.0f - _4351;
                    _5000 = (((_4409 * _4352) - _4409) * _4409) + 1.0f;
                    _5004 = (_4352 / ((_5000 * _5000) * 3.1415927f)) * (0.5f / ((((_4407 * _4988) + _4351) * _4405) + (_4407 * ((_4405 * _4988) + _4351))));
                    _5011 = saturate(_4405) * 0.39990234f;
                    _5019 = ((max((_5004 * _4946), 0.0f) * _5011) + (_4978 * 0.60009766f));
                    _5020 = ((max((_5004 * _4947), 0.0f) * _5011) + (_4979 * 0.60009766f));
                    _5021 = ((max((_5004 * _4948), 0.0f) * _5011) + (_4980 * 0.60009766f));
                    if (_4250 == 65) {
                      _5024 = _5019;
                      _5025 = _5020;
                      _5026 = _5021;
                      _5031 = max(1e-06f, _exposure2.x);
                      _5040 = ((_4891 * 50.265484f) * exp2(log2(saturate(dot(float3(_4283, _4284, _4285), float3(_1761, _1762, _1763)))) * 16.0f)) / (((_5031 * _5031) * 1e+06f) + 1.0f);
                      _5125 = ((((_5040 * _4201) - _4932) * _4249) + _4932);
                      _5126 = ((((_5040 * _4202) - _4932) * _4249) + _4932);
                      _5127 = ((((_5040 * _4203) - _4932) * _4249) + _4932);
                      _5128 = _4410;
                      _5129 = _4409;
                      _5130 = _5024;
                      _5131 = _5025;
                      _5132 = _5026;
                    } else {
                      _5054 = _5019;
                      _5055 = _5020;
                      _5056 = _5021;
                      _5057 = _4932;
                      _5058 = _4932;
                      _5059 = _4932;
                      if (_4288) {
                        _5062 = dot(float3(_1761, _1762, _1763), float3(_4283, _4284, _4285)) * 2.0f;
                        _5066 = _1761 - (_5062 * _4283);
                        _5067 = _1762 - (_5062 * _4284);
                        _5068 = _1763 - (_5062 * _4285);
                        _5069 = _4389 - _5066;
                        _5070 = _4390 - _5067;
                        _5071 = _4391 - _5068;
                        _5073 = rsqrt(dot(float3(_5069, _5070, _5071), float3(_5069, _5070, _5071)));  // [sem: invLength]
                        _5074 = _5069 * _5073;
                        _5075 = _5070 * _5073;
                        _5076 = _5071 * _5073;
                        _5077 = -0.0f - _5066;
                        _5078 = -0.0f - _5067;
                        _5079 = -0.0f - _5068;
                        _5081 = saturate(dot(float3(_4233, _4234, _4235), float3(_5077, _5078, _5079)));  // [sem: expr_sat]
                        _5083 = saturate(dot(float3(_4283, _4284, _4285), float3(_5074, _5075, _5076)));  // [sem: expr_sat]
                        _5085 = saturate(_4405);  // [sem: _4405_sat]
                        _5096 = 1.0f - ((_5083 * _5083) * 0.9f);
                        _5099 = (0.03183099f / (_5096 * _5096)) * (0.5f / ((((_5081 * 0.9f) + 0.1f) * _4405) + (_5081 * ((_4405 * 0.9f) + 0.1f))));
                        _5125 = _5057;
                        _5126 = _5058;
                        _5127 = _5059;
                        _5128 = dot(float3(_5077, _5078, _5079), float3(_5074, _5075, _5076));
                        _5129 = _5083;
                        _5130 = (((float(half(max((_5099 * _4201), 0.0f) * _5085)) - _5054) * 0.875f) + _5054);
                        _5131 = (((float(half(max((_5099 * _4202), 0.0f) * _5085)) - _5055) * 0.875f) + _5055);
                        _5132 = (((float(half(max((_5099 * _4203), 0.0f) * _5085)) - _5056) * 0.875f) + _5056);
                      } else {
                        _5125 = _5057;
                        _5126 = _5058;
                        _5127 = _5059;
                        _5128 = _4410;
                        _5129 = _4409;
                        _5130 = _5054;
                        _5131 = _5055;
                        _5132 = _5056;
                      }
                    }
                  }
                } else {
                  _5019 = _4978;
                  _5020 = _4979;
                  _5021 = _4980;
                  if (_4250 == 65) {
                    _5024 = _5019;
                    _5025 = _5020;
                    _5026 = _5021;
                    _5031 = max(1e-06f, _exposure2.x);
                    _5040 = ((_4891 * 50.265484f) * exp2(log2(saturate(dot(float3(_4283, _4284, _4285), float3(_1761, _1762, _1763)))) * 16.0f)) / (((_5031 * _5031) * 1e+06f) + 1.0f);
                    _5125 = ((((_5040 * _4201) - _4932) * _4249) + _4932);
                    _5126 = ((((_5040 * _4202) - _4932) * _4249) + _4932);
                    _5127 = ((((_5040 * _4203) - _4932) * _4249) + _4932);
                    _5128 = _4410;
                    _5129 = _4409;
                    _5130 = _5024;
                    _5131 = _5025;
                    _5132 = _5026;
                  } else {
                    _5054 = _5019;
                    _5055 = _5020;
                    _5056 = _5021;
                    _5057 = _4932;
                    _5058 = _4932;
                    _5059 = _4932;
                    if (_4288) {
                      _5062 = dot(float3(_1761, _1762, _1763), float3(_4283, _4284, _4285)) * 2.0f;
                      _5066 = _1761 - (_5062 * _4283);
                      _5067 = _1762 - (_5062 * _4284);
                      _5068 = _1763 - (_5062 * _4285);
                      _5069 = _4389 - _5066;
                      _5070 = _4390 - _5067;
                      _5071 = _4391 - _5068;
                      _5073 = rsqrt(dot(float3(_5069, _5070, _5071), float3(_5069, _5070, _5071)));  // [sem: invLength]
                      _5074 = _5069 * _5073;
                      _5075 = _5070 * _5073;
                      _5076 = _5071 * _5073;
                      _5077 = -0.0f - _5066;
                      _5078 = -0.0f - _5067;
                      _5079 = -0.0f - _5068;
                      _5081 = saturate(dot(float3(_4233, _4234, _4235), float3(_5077, _5078, _5079)));  // [sem: expr_sat]
                      _5083 = saturate(dot(float3(_4283, _4284, _4285), float3(_5074, _5075, _5076)));  // [sem: expr_sat]
                      _5085 = saturate(_4405);  // [sem: _4405_sat]
                      _5096 = 1.0f - ((_5083 * _5083) * 0.9f);
                      _5099 = (0.03183099f / (_5096 * _5096)) * (0.5f / ((((_5081 * 0.9f) + 0.1f) * _4405) + (_5081 * ((_4405 * 0.9f) + 0.1f))));
                      _5125 = _5057;
                      _5126 = _5058;
                      _5127 = _5059;
                      _5128 = dot(float3(_5077, _5078, _5079), float3(_5074, _5075, _5076));
                      _5129 = _5083;
                      _5130 = (((float(half(max((_5099 * _4201), 0.0f) * _5085)) - _5054) * 0.875f) + _5054);
                      _5131 = (((float(half(max((_5099 * _4202), 0.0f) * _5085)) - _5055) * 0.875f) + _5055);
                      _5132 = (((float(half(max((_5099 * _4203), 0.0f) * _5085)) - _5056) * 0.875f) + _5056);
                    } else {
                      _5125 = _5057;
                      _5126 = _5058;
                      _5127 = _5059;
                      _5128 = _4410;
                      _5129 = _4409;
                      _5130 = _5054;
                      _5131 = _5055;
                      _5132 = _5056;
                    }
                  }
                }
              }
            } else {
              _5125 = _4706;
              _5126 = _4707;
              _5127 = _4708;
              _5128 = _4410;
              _5129 = _4409;
              _5130 = _4703;
              _5131 = _4704;
              _5132 = _4705;
            }
            _5154 = select(_4712, _4883, _5130) * _3911;
            _5155 = select(_4712, _4884, _5131) * _3912;
            _5156 = select(_4712, _4885, _5132) * _3913;
            _5164 = _5128;
            _5165 = _5129;
            _5166 = select(_4712, 0.0f, _4700);
            _5167 = select(_4712, 0.0f, _4701);
            _5168 = select(_4712, 0.0f, _4702);
            _5169 = select(_4712, (_5154 + _4880), _5154);
            _5170 = select(_4712, (_5155 + _4881), _5155);
            _5171 = select(_4712, (_5156 + _4882), _5156);
            _5172 = (select(_4712, _4886, (-0.0f - min(-0.0f, (-0.0f - _5125)))) * _3911);
            _5173 = (select(_4712, _4887, (-0.0f - min(-0.0f, (-0.0f - _5126)))) * _3912);
            _5174 = (select(_4712, _4888, (-0.0f - min(-0.0f, (-0.0f - _5127)))) * _3913);
          } else {
            if ((_4404 > 0.0f) || (_4405 > 0.0f)) {
              _4880 = 0.0f;
              _4881 = 0.0f;
              _4882 = 0.0f;
              _4883 = 0.0f;
              _4884 = 0.0f;
              _4885 = 0.0f;
              _4886 = 0.0f;
              _4887 = 0.0f;
              _4888 = 0.0f;
              if (!_4710) {
                if (_4711) {
                  _5054 = _4703;
                  _5055 = _4704;
                  _5056 = _4705;
                  _5057 = _4706;
                  _5058 = _4707;
                  _5059 = _4708;
                  if (_4288) {
                    _5062 = dot(float3(_1761, _1762, _1763), float3(_4283, _4284, _4285)) * 2.0f;
                    _5066 = _1761 - (_5062 * _4283);
                    _5067 = _1762 - (_5062 * _4284);
                    _5068 = _1763 - (_5062 * _4285);
                    _5069 = _4389 - _5066;
                    _5070 = _4390 - _5067;
                    _5071 = _4391 - _5068;
                    _5073 = rsqrt(dot(float3(_5069, _5070, _5071), float3(_5069, _5070, _5071)));  // [sem: invLength]
                    _5074 = _5069 * _5073;
                    _5075 = _5070 * _5073;
                    _5076 = _5071 * _5073;
                    _5077 = -0.0f - _5066;
                    _5078 = -0.0f - _5067;
                    _5079 = -0.0f - _5068;
                    _5081 = saturate(dot(float3(_4233, _4234, _4235), float3(_5077, _5078, _5079)));  // [sem: expr_sat]
                    _5083 = saturate(dot(float3(_4283, _4284, _4285), float3(_5074, _5075, _5076)));  // [sem: expr_sat]
                    _5085 = saturate(_4405);  // [sem: _4405_sat]
                    _5096 = 1.0f - ((_5083 * _5083) * 0.9f);
                    _5099 = (0.03183099f / (_5096 * _5096)) * (0.5f / ((((_5081 * 0.9f) + 0.1f) * _4405) + (_5081 * ((_4405 * 0.9f) + 0.1f))));
                    _5125 = _5057;
                    _5126 = _5058;
                    _5127 = _5059;
                    _5128 = dot(float3(_5077, _5078, _5079), float3(_5074, _5075, _5076));
                    _5129 = _5083;
                    _5130 = (((float(half(max((_5099 * _4201), 0.0f) * _5085)) - _5054) * 0.875f) + _5054);
                    _5131 = (((float(half(max((_5099 * _4202), 0.0f) * _5085)) - _5055) * 0.875f) + _5055);
                    _5132 = (((float(half(max((_5099 * _4203), 0.0f) * _5085)) - _5056) * 0.875f) + _5056);
                  } else {
                    _5125 = _5057;
                    _5126 = _5058;
                    _5127 = _5059;
                    _5128 = _4410;
                    _5129 = _4409;
                    _5130 = _5054;
                    _5131 = _5055;
                    _5132 = _5056;
                  }
                } else {
                  _4891 = saturate(_4404);  // [sem: _4404_sat]
                  _4892 = 1.0f - _4346;
                  _4893 = 1.0f - _4412;
                  _4894 = _4893 * _4893;
                  _4897 = ((_4894 * _4894) * _4893) + _4412;
                  _4898 = 1.0f - _4891;
                  _4899 = _4898 * _4898;
                  _4904 = 1.0f - _4407;
                  _4905 = _4904 * _4904;
                  _4932 = (_4891 * 0.31830987f) * ((((_4412 * ((((_4892 * 34.5f) + -59.0f) * _4892) + 24.5f)) * exp2(-0.0f - (max(((_4892 * 73.2f) + -21.2f), 8.9f) * sqrt(_4409)))) + _4897) + ((((1.0f - ((_4899 * _4899) * (_4898 * 0.75f))) * (1.0f - ((_4905 * _4905) * (_4904 * 0.75f)))) - _4897) * saturate((_4892 * 2.2f) + -0.5f)));
                  _4935 = saturate(1.0f - saturate(_4410));  // [sem: expr_sat]
                  _4936 = _4935 * _4935;
                  _4938 = (_4936 * _4936) * _4935;
                  _4941 = _4938 * saturate(_4343 * 50.0f);
                  _4942 = 1.0f - _4938;
                  _4946 = (_4942 * _4342) + _4941;
                  _4947 = (_4942 * _4343) + _4941;
                  _4948 = (_4942 * _4344) + _4941;
                  if (!(_4250 == 29)) {
                    _4950 = saturate(_4405);  // [sem: _4405_sat]
                    _4951 = 1.0f - _4345;
                    _4963 = (((_4409 * _4346) - _4409) * _4409) + 1.0f;
                    _4967 = (_4346 / ((_4963 * _4963) * 3.1415927f)) * (0.5f / ((((_4407 * _4951) + _4345) * _4405) + (_4407 * ((_4405 * _4951) + _4345))));
                    _4978 = (max((_4967 * _4946), 0.0f) * _4950);
                    _4979 = (max((_4967 * _4947), 0.0f) * _4950);
                    _4980 = (max((_4967 * _4948), 0.0f) * _4950);
                  } else {
                    _4978 = 0.0f;
                    _4979 = 0.0f;
                    _4980 = 0.0f;
                  }
                  if (_4319) {
                    if (_4250 == 65) {
                      _5024 = _4978;
                      _5025 = _4979;
                      _5026 = _4980;
                      _5031 = max(1e-06f, _exposure2.x);
                      _5040 = ((_4891 * 50.265484f) * exp2(log2(saturate(dot(float3(_4283, _4284, _4285), float3(_1761, _1762, _1763)))) * 16.0f)) / (((_5031 * _5031) * 1e+06f) + 1.0f);
                      _5125 = ((((_5040 * _4201) - _4932) * _4249) + _4932);
                      _5126 = ((((_5040 * _4202) - _4932) * _4249) + _4932);
                      _5127 = ((((_5040 * _4203) - _4932) * _4249) + _4932);
                      _5128 = _4410;
                      _5129 = _4409;
                      _5130 = _5024;
                      _5131 = _5025;
                      _5132 = _5026;
                    } else {
                      _4988 = 1.0f - _4351;
                      _5000 = (((_4409 * _4352) - _4409) * _4409) + 1.0f;
                      _5004 = (_4352 / ((_5000 * _5000) * 3.1415927f)) * (0.5f / ((((_4407 * _4988) + _4351) * _4405) + (_4407 * ((_4405 * _4988) + _4351))));
                      _5011 = saturate(_4405) * 0.39990234f;
                      _5019 = ((max((_5004 * _4946), 0.0f) * _5011) + (_4978 * 0.60009766f));
                      _5020 = ((max((_5004 * _4947), 0.0f) * _5011) + (_4979 * 0.60009766f));
                      _5021 = ((max((_5004 * _4948), 0.0f) * _5011) + (_4980 * 0.60009766f));
                      if (_4250 == 65) {
                        _5024 = _5019;
                        _5025 = _5020;
                        _5026 = _5021;
                        _5031 = max(1e-06f, _exposure2.x);
                        _5040 = ((_4891 * 50.265484f) * exp2(log2(saturate(dot(float3(_4283, _4284, _4285), float3(_1761, _1762, _1763)))) * 16.0f)) / (((_5031 * _5031) * 1e+06f) + 1.0f);
                        _5125 = ((((_5040 * _4201) - _4932) * _4249) + _4932);
                        _5126 = ((((_5040 * _4202) - _4932) * _4249) + _4932);
                        _5127 = ((((_5040 * _4203) - _4932) * _4249) + _4932);
                        _5128 = _4410;
                        _5129 = _4409;
                        _5130 = _5024;
                        _5131 = _5025;
                        _5132 = _5026;
                      } else {
                        _5054 = _5019;
                        _5055 = _5020;
                        _5056 = _5021;
                        _5057 = _4932;
                        _5058 = _4932;
                        _5059 = _4932;
                        if (_4288) {
                          _5062 = dot(float3(_1761, _1762, _1763), float3(_4283, _4284, _4285)) * 2.0f;
                          _5066 = _1761 - (_5062 * _4283);
                          _5067 = _1762 - (_5062 * _4284);
                          _5068 = _1763 - (_5062 * _4285);
                          _5069 = _4389 - _5066;
                          _5070 = _4390 - _5067;
                          _5071 = _4391 - _5068;
                          _5073 = rsqrt(dot(float3(_5069, _5070, _5071), float3(_5069, _5070, _5071)));  // [sem: invLength]
                          _5074 = _5069 * _5073;
                          _5075 = _5070 * _5073;
                          _5076 = _5071 * _5073;
                          _5077 = -0.0f - _5066;
                          _5078 = -0.0f - _5067;
                          _5079 = -0.0f - _5068;
                          _5081 = saturate(dot(float3(_4233, _4234, _4235), float3(_5077, _5078, _5079)));  // [sem: expr_sat]
                          _5083 = saturate(dot(float3(_4283, _4284, _4285), float3(_5074, _5075, _5076)));  // [sem: expr_sat]
                          _5085 = saturate(_4405);  // [sem: _4405_sat]
                          _5096 = 1.0f - ((_5083 * _5083) * 0.9f);
                          _5099 = (0.03183099f / (_5096 * _5096)) * (0.5f / ((((_5081 * 0.9f) + 0.1f) * _4405) + (_5081 * ((_4405 * 0.9f) + 0.1f))));
                          _5125 = _5057;
                          _5126 = _5058;
                          _5127 = _5059;
                          _5128 = dot(float3(_5077, _5078, _5079), float3(_5074, _5075, _5076));
                          _5129 = _5083;
                          _5130 = (((float(half(max((_5099 * _4201), 0.0f) * _5085)) - _5054) * 0.875f) + _5054);
                          _5131 = (((float(half(max((_5099 * _4202), 0.0f) * _5085)) - _5055) * 0.875f) + _5055);
                          _5132 = (((float(half(max((_5099 * _4203), 0.0f) * _5085)) - _5056) * 0.875f) + _5056);
                        } else {
                          _5125 = _5057;
                          _5126 = _5058;
                          _5127 = _5059;
                          _5128 = _4410;
                          _5129 = _4409;
                          _5130 = _5054;
                          _5131 = _5055;
                          _5132 = _5056;
                        }
                      }
                    }
                  } else {
                    _5019 = _4978;
                    _5020 = _4979;
                    _5021 = _4980;
                    if (_4250 == 65) {
                      _5024 = _5019;
                      _5025 = _5020;
                      _5026 = _5021;
                      _5031 = max(1e-06f, _exposure2.x);
                      _5040 = ((_4891 * 50.265484f) * exp2(log2(saturate(dot(float3(_4283, _4284, _4285), float3(_1761, _1762, _1763)))) * 16.0f)) / (((_5031 * _5031) * 1e+06f) + 1.0f);
                      _5125 = ((((_5040 * _4201) - _4932) * _4249) + _4932);
                      _5126 = ((((_5040 * _4202) - _4932) * _4249) + _4932);
                      _5127 = ((((_5040 * _4203) - _4932) * _4249) + _4932);
                      _5128 = _4410;
                      _5129 = _4409;
                      _5130 = _5024;
                      _5131 = _5025;
                      _5132 = _5026;
                    } else {
                      _5054 = _5019;
                      _5055 = _5020;
                      _5056 = _5021;
                      _5057 = _4932;
                      _5058 = _4932;
                      _5059 = _4932;
                      if (_4288) {
                        _5062 = dot(float3(_1761, _1762, _1763), float3(_4283, _4284, _4285)) * 2.0f;
                        _5066 = _1761 - (_5062 * _4283);
                        _5067 = _1762 - (_5062 * _4284);
                        _5068 = _1763 - (_5062 * _4285);
                        _5069 = _4389 - _5066;
                        _5070 = _4390 - _5067;
                        _5071 = _4391 - _5068;
                        _5073 = rsqrt(dot(float3(_5069, _5070, _5071), float3(_5069, _5070, _5071)));  // [sem: invLength]
                        _5074 = _5069 * _5073;
                        _5075 = _5070 * _5073;
                        _5076 = _5071 * _5073;
                        _5077 = -0.0f - _5066;
                        _5078 = -0.0f - _5067;
                        _5079 = -0.0f - _5068;
                        _5081 = saturate(dot(float3(_4233, _4234, _4235), float3(_5077, _5078, _5079)));  // [sem: expr_sat]
                        _5083 = saturate(dot(float3(_4283, _4284, _4285), float3(_5074, _5075, _5076)));  // [sem: expr_sat]
                        _5085 = saturate(_4405);  // [sem: _4405_sat]
                        _5096 = 1.0f - ((_5083 * _5083) * 0.9f);
                        _5099 = (0.03183099f / (_5096 * _5096)) * (0.5f / ((((_5081 * 0.9f) + 0.1f) * _4405) + (_5081 * ((_4405 * 0.9f) + 0.1f))));
                        _5125 = _5057;
                        _5126 = _5058;
                        _5127 = _5059;
                        _5128 = dot(float3(_5077, _5078, _5079), float3(_5074, _5075, _5076));
                        _5129 = _5083;
                        _5130 = (((float(half(max((_5099 * _4201), 0.0f) * _5085)) - _5054) * 0.875f) + _5054);
                        _5131 = (((float(half(max((_5099 * _4202), 0.0f) * _5085)) - _5055) * 0.875f) + _5055);
                        _5132 = (((float(half(max((_5099 * _4203), 0.0f) * _5085)) - _5056) * 0.875f) + _5056);
                      } else {
                        _5125 = _5057;
                        _5126 = _5058;
                        _5127 = _5059;
                        _5128 = _4410;
                        _5129 = _4409;
                        _5130 = _5054;
                        _5131 = _5055;
                        _5132 = _5056;
                      }
                    }
                  }
                }
              } else {
                _5125 = _4706;
                _5126 = _4707;
                _5127 = _4708;
                _5128 = _4410;
                _5129 = _4409;
                _5130 = _4703;
                _5131 = _4704;
                _5132 = _4705;
              }
              _5154 = select(_4712, _4883, _5130) * _3911;
              _5155 = select(_4712, _4884, _5131) * _3912;
              _5156 = select(_4712, _4885, _5132) * _3913;
              _5164 = _5128;
              _5165 = _5129;
              _5166 = select(_4712, 0.0f, _4700);
              _5167 = select(_4712, 0.0f, _4701);
              _5168 = select(_4712, 0.0f, _4702);
              _5169 = select(_4712, (_5154 + _4880), _5154);
              _5170 = select(_4712, (_5155 + _4881), _5155);
              _5171 = select(_4712, (_5156 + _4882), _5156);
              _5172 = (select(_4712, _4886, (-0.0f - min(-0.0f, (-0.0f - _5125)))) * _3911);
              _5173 = (select(_4712, _4887, (-0.0f - min(-0.0f, (-0.0f - _5126)))) * _3912);
              _5174 = (select(_4712, _4888, (-0.0f - min(-0.0f, (-0.0f - _5127)))) * _3913);
            } else {
              _5164 = _4410;
              _5165 = _4409;
              _5166 = _4700;
              _5167 = _4701;
              _5168 = _4702;
              _5169 = _4703;
              _5170 = _4704;
              _5171 = _4705;
              _5172 = _4706;
              _5173 = _4707;
              _5174 = _4708;
            }
          }
        } else {
          _5164 = _4410;
          _5165 = _4409;
          _5166 = _4700;
          _5167 = _4701;
          _5168 = _4702;
          _5169 = _4703;
          _5170 = _4704;
          _5171 = _4705;
          _5172 = _4706;
          _5173 = _4707;
          _5174 = _4708;
        }
      } else {
        _5164 = _4410;
        _5165 = _4409;
        _5166 = _4687;
        _5167 = _4688;
        _5168 = _4689;
        _5169 = _4696;
        _5170 = _4697;
        _5171 = _4698;
        _5172 = _4676;
        _5173 = _4678;
        _5174 = _4680;
      }
    } else {
      _4700 = 0.0f;
      _4701 = 0.0f;
      _4702 = 0.0f;
      _4703 = 0.0f;
      _4704 = 0.0f;
      _4705 = 0.0f;
      _4706 = 0.0f;
      _4707 = 0.0f;
      _4708 = 0.0f;
      if (!_4414) {
        _4710 = (_4250 == 33);
        _4711 = (_4250 == 54);
        _4712 = _4710 || _4711;
        if (_4712) {
          _4727 = (saturate(_4404) * 0.31830987f) * (((saturate(1.0f - _effectiveMetallicForVelvet) + -1.0f) * _4254) + 1.0f);
          _4733 = max(dot(float3(_4201, _4202, _4203), float3(0.212671f, 0.71516f, 0.072169f)), 0.04f);
          _4734 = sqrt(_4201);
          _4735 = sqrt(_4202);
          _4736 = sqrt(_4203);
          _4737 = _4734 - _4733;
          _4738 = _4735 - _4733;
          _4739 = _4736 - _4733;
          _4746 = saturate(1.0f - (pow(_4407, 4.0f)));  // [sem: expr_sat]
          _4759 = (((_4738 * _4251) + _4733) + ((_4738 * (_4254 - _4251)) * _4746)) * _4252;
          _4762 = saturate(1.0f - saturate(_4410));  // [sem: expr_sat]
          _4763 = _4762 * _4762;
          _4765 = (_4763 * _4763) * _4762;
          _4768 = _4765 * saturate(_4759 * 50.0f);
          _4769 = 1.0f - _4765;
          _4770 = _4769 * _4252;
          _4774 = (_4770 * (((_4737 * _4251) + _4733) + (_4746 * (_4737 * (_4254 - _4251))))) + _4768;
          _4775 = (_4769 * _4759) + _4768;
          _4776 = (_4770 * (((_4739 * _4251) + _4733) + ((_4739 * (_4254 - _4251)) * _4746))) + _4768;
          _4777 = min(_4409, 0.9999f);
          _4778 = _4777 * _4777;
          _4779 = 1.0f - _4778;
          _4791 = (((exp2(((-0.0f - _4778) / (_4779 * _4346)) * 1.442695f) * 4.0f) / (_4779 * _4779)) + 1.0f) / ((_4346 * 12.566371f) + 3.1415927f);
          _4795 = ((_4407 + _4405) - (_4407 * _4405)) * 4.0f;
          _4799 = (_4774 * _4791) / _4795;
          _4800 = (_4775 * _4791) / _4795;
          _4801 = (_4776 * _4791) / _4795;
          _4802 = 1.0f - _4345;
          _4814 = (((_4409 * _4346) - _4409) * _4409) + 1.0f;
          _4818 = (_4346 / ((_4814 * _4814) * 3.1415927f)) * (0.5f / ((((_4407 * _4802) + _4345) * _4404) + (_4407 * ((_4404 * _4802) + _4345))));
          _4834 = saturate(_4405);  // [sem: _4405_sat]
          _4839 = (_4253 * 1.5f) + 2.5f;
          _4840 = _4839 * _4839;
          _4850 = (max(0.0f, (0.3f - _4404)) * 0.25f) * ((exp2(_4840 * -0.48089835f) * 3.0f) + exp2(_4840 * -1.442695f));
          _4875 = (((1.0f - _4254) * 0.4774648f) * saturate(_4253)) * saturate((pow(_4409, 4.0f)) * exp2(log2(saturate(1.0f - abs(_4404))) * 3.0f));
          _4880 = (_4875 * _4734);
          _4881 = (_4875 * _4735);
          _4882 = (_4875 * _4736);
          _4883 = ((((max((_4818 * _4774), 0.0f) - _4799) * _4251) + _4799) * _4834);
          _4884 = ((((max((_4818 * _4775), 0.0f) - _4800) * _4251) + _4800) * _4834);
          _4885 = ((((max((_4818 * _4776), 0.0f) - _4801) * _4251) + _4801) * _4834);
          _4886 = (((_4734 * _3911) * _4850) + _4727);
          _4887 = (((_4735 * _3912) * _4850) + _4727);
          _4888 = (((_4736 * _3913) * _4850) + _4727);
          if (!_4710) {
            if (_4711) {
              _5054 = _4703;
              _5055 = _4704;
              _5056 = _4705;
              _5057 = _4706;
              _5058 = _4707;
              _5059 = _4708;
              if (_4288) {
                _5062 = dot(float3(_1761, _1762, _1763), float3(_4283, _4284, _4285)) * 2.0f;
                _5066 = _1761 - (_5062 * _4283);
                _5067 = _1762 - (_5062 * _4284);
                _5068 = _1763 - (_5062 * _4285);
                _5069 = _4389 - _5066;
                _5070 = _4390 - _5067;
                _5071 = _4391 - _5068;
                _5073 = rsqrt(dot(float3(_5069, _5070, _5071), float3(_5069, _5070, _5071)));  // [sem: invLength]
                _5074 = _5069 * _5073;
                _5075 = _5070 * _5073;
                _5076 = _5071 * _5073;
                _5077 = -0.0f - _5066;
                _5078 = -0.0f - _5067;
                _5079 = -0.0f - _5068;
                _5081 = saturate(dot(float3(_4233, _4234, _4235), float3(_5077, _5078, _5079)));  // [sem: expr_sat]
                _5083 = saturate(dot(float3(_4283, _4284, _4285), float3(_5074, _5075, _5076)));  // [sem: expr_sat]
                _5085 = saturate(_4405);  // [sem: _4405_sat]
                _5096 = 1.0f - ((_5083 * _5083) * 0.9f);
                _5099 = (0.03183099f / (_5096 * _5096)) * (0.5f / ((((_5081 * 0.9f) + 0.1f) * _4405) + (_5081 * ((_4405 * 0.9f) + 0.1f))));
                _5125 = _5057;
                _5126 = _5058;
                _5127 = _5059;
                _5128 = dot(float3(_5077, _5078, _5079), float3(_5074, _5075, _5076));
                _5129 = _5083;
                _5130 = (((float(half(max((_5099 * _4201), 0.0f) * _5085)) - _5054) * 0.875f) + _5054);
                _5131 = (((float(half(max((_5099 * _4202), 0.0f) * _5085)) - _5055) * 0.875f) + _5055);
                _5132 = (((float(half(max((_5099 * _4203), 0.0f) * _5085)) - _5056) * 0.875f) + _5056);
              } else {
                _5125 = _5057;
                _5126 = _5058;
                _5127 = _5059;
                _5128 = _4410;
                _5129 = _4409;
                _5130 = _5054;
                _5131 = _5055;
                _5132 = _5056;
              }
            } else {
              _4891 = saturate(_4404);  // [sem: _4404_sat]
              _4892 = 1.0f - _4346;
              _4893 = 1.0f - _4412;
              _4894 = _4893 * _4893;
              _4897 = ((_4894 * _4894) * _4893) + _4412;
              _4898 = 1.0f - _4891;
              _4899 = _4898 * _4898;
              _4904 = 1.0f - _4407;
              _4905 = _4904 * _4904;
              _4932 = (_4891 * 0.31830987f) * ((((_4412 * ((((_4892 * 34.5f) + -59.0f) * _4892) + 24.5f)) * exp2(-0.0f - (max(((_4892 * 73.2f) + -21.2f), 8.9f) * sqrt(_4409)))) + _4897) + ((((1.0f - ((_4899 * _4899) * (_4898 * 0.75f))) * (1.0f - ((_4905 * _4905) * (_4904 * 0.75f)))) - _4897) * saturate((_4892 * 2.2f) + -0.5f)));
              _4935 = saturate(1.0f - saturate(_4410));  // [sem: expr_sat]
              _4936 = _4935 * _4935;
              _4938 = (_4936 * _4936) * _4935;
              _4941 = _4938 * saturate(_4343 * 50.0f);
              _4942 = 1.0f - _4938;
              _4946 = (_4942 * _4342) + _4941;
              _4947 = (_4942 * _4343) + _4941;
              _4948 = (_4942 * _4344) + _4941;
              if (!(_4250 == 29)) {
                _4950 = saturate(_4405);  // [sem: _4405_sat]
                _4951 = 1.0f - _4345;
                _4963 = (((_4409 * _4346) - _4409) * _4409) + 1.0f;
                _4967 = (_4346 / ((_4963 * _4963) * 3.1415927f)) * (0.5f / ((((_4407 * _4951) + _4345) * _4405) + (_4407 * ((_4405 * _4951) + _4345))));
                _4978 = (max((_4967 * _4946), 0.0f) * _4950);
                _4979 = (max((_4967 * _4947), 0.0f) * _4950);
                _4980 = (max((_4967 * _4948), 0.0f) * _4950);
              } else {
                _4978 = 0.0f;
                _4979 = 0.0f;
                _4980 = 0.0f;
              }
              if (_4319) {
                if (_4250 == 65) {
                  _5024 = _4978;
                  _5025 = _4979;
                  _5026 = _4980;
                  _5031 = max(1e-06f, _exposure2.x);
                  _5040 = ((_4891 * 50.265484f) * exp2(log2(saturate(dot(float3(_4283, _4284, _4285), float3(_1761, _1762, _1763)))) * 16.0f)) / (((_5031 * _5031) * 1e+06f) + 1.0f);
                  _5125 = ((((_5040 * _4201) - _4932) * _4249) + _4932);
                  _5126 = ((((_5040 * _4202) - _4932) * _4249) + _4932);
                  _5127 = ((((_5040 * _4203) - _4932) * _4249) + _4932);
                  _5128 = _4410;
                  _5129 = _4409;
                  _5130 = _5024;
                  _5131 = _5025;
                  _5132 = _5026;
                } else {
                  _4988 = 1.0f - _4351;
                  _5000 = (((_4409 * _4352) - _4409) * _4409) + 1.0f;
                  _5004 = (_4352 / ((_5000 * _5000) * 3.1415927f)) * (0.5f / ((((_4407 * _4988) + _4351) * _4405) + (_4407 * ((_4405 * _4988) + _4351))));
                  _5011 = saturate(_4405) * 0.39990234f;
                  _5019 = ((max((_5004 * _4946), 0.0f) * _5011) + (_4978 * 0.60009766f));
                  _5020 = ((max((_5004 * _4947), 0.0f) * _5011) + (_4979 * 0.60009766f));
                  _5021 = ((max((_5004 * _4948), 0.0f) * _5011) + (_4980 * 0.60009766f));
                  if (_4250 == 65) {
                    _5024 = _5019;
                    _5025 = _5020;
                    _5026 = _5021;
                    _5031 = max(1e-06f, _exposure2.x);
                    _5040 = ((_4891 * 50.265484f) * exp2(log2(saturate(dot(float3(_4283, _4284, _4285), float3(_1761, _1762, _1763)))) * 16.0f)) / (((_5031 * _5031) * 1e+06f) + 1.0f);
                    _5125 = ((((_5040 * _4201) - _4932) * _4249) + _4932);
                    _5126 = ((((_5040 * _4202) - _4932) * _4249) + _4932);
                    _5127 = ((((_5040 * _4203) - _4932) * _4249) + _4932);
                    _5128 = _4410;
                    _5129 = _4409;
                    _5130 = _5024;
                    _5131 = _5025;
                    _5132 = _5026;
                  } else {
                    _5054 = _5019;
                    _5055 = _5020;
                    _5056 = _5021;
                    _5057 = _4932;
                    _5058 = _4932;
                    _5059 = _4932;
                    if (_4288) {
                      _5062 = dot(float3(_1761, _1762, _1763), float3(_4283, _4284, _4285)) * 2.0f;
                      _5066 = _1761 - (_5062 * _4283);
                      _5067 = _1762 - (_5062 * _4284);
                      _5068 = _1763 - (_5062 * _4285);
                      _5069 = _4389 - _5066;
                      _5070 = _4390 - _5067;
                      _5071 = _4391 - _5068;
                      _5073 = rsqrt(dot(float3(_5069, _5070, _5071), float3(_5069, _5070, _5071)));  // [sem: invLength]
                      _5074 = _5069 * _5073;
                      _5075 = _5070 * _5073;
                      _5076 = _5071 * _5073;
                      _5077 = -0.0f - _5066;
                      _5078 = -0.0f - _5067;
                      _5079 = -0.0f - _5068;
                      _5081 = saturate(dot(float3(_4233, _4234, _4235), float3(_5077, _5078, _5079)));  // [sem: expr_sat]
                      _5083 = saturate(dot(float3(_4283, _4284, _4285), float3(_5074, _5075, _5076)));  // [sem: expr_sat]
                      _5085 = saturate(_4405);  // [sem: _4405_sat]
                      _5096 = 1.0f - ((_5083 * _5083) * 0.9f);
                      _5099 = (0.03183099f / (_5096 * _5096)) * (0.5f / ((((_5081 * 0.9f) + 0.1f) * _4405) + (_5081 * ((_4405 * 0.9f) + 0.1f))));
                      _5125 = _5057;
                      _5126 = _5058;
                      _5127 = _5059;
                      _5128 = dot(float3(_5077, _5078, _5079), float3(_5074, _5075, _5076));
                      _5129 = _5083;
                      _5130 = (((float(half(max((_5099 * _4201), 0.0f) * _5085)) - _5054) * 0.875f) + _5054);
                      _5131 = (((float(half(max((_5099 * _4202), 0.0f) * _5085)) - _5055) * 0.875f) + _5055);
                      _5132 = (((float(half(max((_5099 * _4203), 0.0f) * _5085)) - _5056) * 0.875f) + _5056);
                    } else {
                      _5125 = _5057;
                      _5126 = _5058;
                      _5127 = _5059;
                      _5128 = _4410;
                      _5129 = _4409;
                      _5130 = _5054;
                      _5131 = _5055;
                      _5132 = _5056;
                    }
                  }
                }
              } else {
                _5019 = _4978;
                _5020 = _4979;
                _5021 = _4980;
                if (_4250 == 65) {
                  _5024 = _5019;
                  _5025 = _5020;
                  _5026 = _5021;
                  _5031 = max(1e-06f, _exposure2.x);
                  _5040 = ((_4891 * 50.265484f) * exp2(log2(saturate(dot(float3(_4283, _4284, _4285), float3(_1761, _1762, _1763)))) * 16.0f)) / (((_5031 * _5031) * 1e+06f) + 1.0f);
                  _5125 = ((((_5040 * _4201) - _4932) * _4249) + _4932);
                  _5126 = ((((_5040 * _4202) - _4932) * _4249) + _4932);
                  _5127 = ((((_5040 * _4203) - _4932) * _4249) + _4932);
                  _5128 = _4410;
                  _5129 = _4409;
                  _5130 = _5024;
                  _5131 = _5025;
                  _5132 = _5026;
                } else {
                  _5054 = _5019;
                  _5055 = _5020;
                  _5056 = _5021;
                  _5057 = _4932;
                  _5058 = _4932;
                  _5059 = _4932;
                  if (_4288) {
                    _5062 = dot(float3(_1761, _1762, _1763), float3(_4283, _4284, _4285)) * 2.0f;
                    _5066 = _1761 - (_5062 * _4283);
                    _5067 = _1762 - (_5062 * _4284);
                    _5068 = _1763 - (_5062 * _4285);
                    _5069 = _4389 - _5066;
                    _5070 = _4390 - _5067;
                    _5071 = _4391 - _5068;
                    _5073 = rsqrt(dot(float3(_5069, _5070, _5071), float3(_5069, _5070, _5071)));  // [sem: invLength]
                    _5074 = _5069 * _5073;
                    _5075 = _5070 * _5073;
                    _5076 = _5071 * _5073;
                    _5077 = -0.0f - _5066;
                    _5078 = -0.0f - _5067;
                    _5079 = -0.0f - _5068;
                    _5081 = saturate(dot(float3(_4233, _4234, _4235), float3(_5077, _5078, _5079)));  // [sem: expr_sat]
                    _5083 = saturate(dot(float3(_4283, _4284, _4285), float3(_5074, _5075, _5076)));  // [sem: expr_sat]
                    _5085 = saturate(_4405);  // [sem: _4405_sat]
                    _5096 = 1.0f - ((_5083 * _5083) * 0.9f);
                    _5099 = (0.03183099f / (_5096 * _5096)) * (0.5f / ((((_5081 * 0.9f) + 0.1f) * _4405) + (_5081 * ((_4405 * 0.9f) + 0.1f))));
                    _5125 = _5057;
                    _5126 = _5058;
                    _5127 = _5059;
                    _5128 = dot(float3(_5077, _5078, _5079), float3(_5074, _5075, _5076));
                    _5129 = _5083;
                    _5130 = (((float(half(max((_5099 * _4201), 0.0f) * _5085)) - _5054) * 0.875f) + _5054);
                    _5131 = (((float(half(max((_5099 * _4202), 0.0f) * _5085)) - _5055) * 0.875f) + _5055);
                    _5132 = (((float(half(max((_5099 * _4203), 0.0f) * _5085)) - _5056) * 0.875f) + _5056);
                  } else {
                    _5125 = _5057;
                    _5126 = _5058;
                    _5127 = _5059;
                    _5128 = _4410;
                    _5129 = _4409;
                    _5130 = _5054;
                    _5131 = _5055;
                    _5132 = _5056;
                  }
                }
              }
            }
          } else {
            _5125 = _4706;
            _5126 = _4707;
            _5127 = _4708;
            _5128 = _4410;
            _5129 = _4409;
            _5130 = _4703;
            _5131 = _4704;
            _5132 = _4705;
          }
          _5154 = select(_4712, _4883, _5130) * _3911;
          _5155 = select(_4712, _4884, _5131) * _3912;
          _5156 = select(_4712, _4885, _5132) * _3913;
          _5164 = _5128;
          _5165 = _5129;
          _5166 = select(_4712, 0.0f, _4700);
          _5167 = select(_4712, 0.0f, _4701);
          _5168 = select(_4712, 0.0f, _4702);
          _5169 = select(_4712, (_5154 + _4880), _5154);
          _5170 = select(_4712, (_5155 + _4881), _5155);
          _5171 = select(_4712, (_5156 + _4882), _5156);
          _5172 = (select(_4712, _4886, (-0.0f - min(-0.0f, (-0.0f - _5125)))) * _3911);
          _5173 = (select(_4712, _4887, (-0.0f - min(-0.0f, (-0.0f - _5126)))) * _3912);
          _5174 = (select(_4712, _4888, (-0.0f - min(-0.0f, (-0.0f - _5127)))) * _3913);
        } else {
          if ((_4404 > 0.0f) || (_4405 > 0.0f)) {
            _4880 = 0.0f;
            _4881 = 0.0f;
            _4882 = 0.0f;
            _4883 = 0.0f;
            _4884 = 0.0f;
            _4885 = 0.0f;
            _4886 = 0.0f;
            _4887 = 0.0f;
            _4888 = 0.0f;
            if (!_4710) {
              if (_4711) {
                _5054 = _4703;
                _5055 = _4704;
                _5056 = _4705;
                _5057 = _4706;
                _5058 = _4707;
                _5059 = _4708;
                if (_4288) {
                  _5062 = dot(float3(_1761, _1762, _1763), float3(_4283, _4284, _4285)) * 2.0f;
                  _5066 = _1761 - (_5062 * _4283);
                  _5067 = _1762 - (_5062 * _4284);
                  _5068 = _1763 - (_5062 * _4285);
                  _5069 = _4389 - _5066;
                  _5070 = _4390 - _5067;
                  _5071 = _4391 - _5068;
                  _5073 = rsqrt(dot(float3(_5069, _5070, _5071), float3(_5069, _5070, _5071)));  // [sem: invLength]
                  _5074 = _5069 * _5073;
                  _5075 = _5070 * _5073;
                  _5076 = _5071 * _5073;
                  _5077 = -0.0f - _5066;
                  _5078 = -0.0f - _5067;
                  _5079 = -0.0f - _5068;
                  _5081 = saturate(dot(float3(_4233, _4234, _4235), float3(_5077, _5078, _5079)));  // [sem: expr_sat]
                  _5083 = saturate(dot(float3(_4283, _4284, _4285), float3(_5074, _5075, _5076)));  // [sem: expr_sat]
                  _5085 = saturate(_4405);  // [sem: _4405_sat]
                  _5096 = 1.0f - ((_5083 * _5083) * 0.9f);
                  _5099 = (0.03183099f / (_5096 * _5096)) * (0.5f / ((((_5081 * 0.9f) + 0.1f) * _4405) + (_5081 * ((_4405 * 0.9f) + 0.1f))));
                  _5125 = _5057;
                  _5126 = _5058;
                  _5127 = _5059;
                  _5128 = dot(float3(_5077, _5078, _5079), float3(_5074, _5075, _5076));
                  _5129 = _5083;
                  _5130 = (((float(half(max((_5099 * _4201), 0.0f) * _5085)) - _5054) * 0.875f) + _5054);
                  _5131 = (((float(half(max((_5099 * _4202), 0.0f) * _5085)) - _5055) * 0.875f) + _5055);
                  _5132 = (((float(half(max((_5099 * _4203), 0.0f) * _5085)) - _5056) * 0.875f) + _5056);
                } else {
                  _5125 = _5057;
                  _5126 = _5058;
                  _5127 = _5059;
                  _5128 = _4410;
                  _5129 = _4409;
                  _5130 = _5054;
                  _5131 = _5055;
                  _5132 = _5056;
                }
              } else {
                _4891 = saturate(_4404);  // [sem: _4404_sat]
                _4892 = 1.0f - _4346;
                _4893 = 1.0f - _4412;
                _4894 = _4893 * _4893;
                _4897 = ((_4894 * _4894) * _4893) + _4412;
                _4898 = 1.0f - _4891;
                _4899 = _4898 * _4898;
                _4904 = 1.0f - _4407;
                _4905 = _4904 * _4904;
                _4932 = (_4891 * 0.31830987f) * ((((_4412 * ((((_4892 * 34.5f) + -59.0f) * _4892) + 24.5f)) * exp2(-0.0f - (max(((_4892 * 73.2f) + -21.2f), 8.9f) * sqrt(_4409)))) + _4897) + ((((1.0f - ((_4899 * _4899) * (_4898 * 0.75f))) * (1.0f - ((_4905 * _4905) * (_4904 * 0.75f)))) - _4897) * saturate((_4892 * 2.2f) + -0.5f)));
                _4935 = saturate(1.0f - saturate(_4410));  // [sem: expr_sat]
                _4936 = _4935 * _4935;
                _4938 = (_4936 * _4936) * _4935;
                _4941 = _4938 * saturate(_4343 * 50.0f);
                _4942 = 1.0f - _4938;
                _4946 = (_4942 * _4342) + _4941;
                _4947 = (_4942 * _4343) + _4941;
                _4948 = (_4942 * _4344) + _4941;
                if (!(_4250 == 29)) {
                  _4950 = saturate(_4405);  // [sem: _4405_sat]
                  _4951 = 1.0f - _4345;
                  _4963 = (((_4409 * _4346) - _4409) * _4409) + 1.0f;
                  _4967 = (_4346 / ((_4963 * _4963) * 3.1415927f)) * (0.5f / ((((_4407 * _4951) + _4345) * _4405) + (_4407 * ((_4405 * _4951) + _4345))));
                  _4978 = (max((_4967 * _4946), 0.0f) * _4950);
                  _4979 = (max((_4967 * _4947), 0.0f) * _4950);
                  _4980 = (max((_4967 * _4948), 0.0f) * _4950);
                } else {
                  _4978 = 0.0f;
                  _4979 = 0.0f;
                  _4980 = 0.0f;
                }
                if (_4319) {
                  if (_4250 == 65) {
                    _5024 = _4978;
                    _5025 = _4979;
                    _5026 = _4980;
                    _5031 = max(1e-06f, _exposure2.x);
                    _5040 = ((_4891 * 50.265484f) * exp2(log2(saturate(dot(float3(_4283, _4284, _4285), float3(_1761, _1762, _1763)))) * 16.0f)) / (((_5031 * _5031) * 1e+06f) + 1.0f);
                    _5125 = ((((_5040 * _4201) - _4932) * _4249) + _4932);
                    _5126 = ((((_5040 * _4202) - _4932) * _4249) + _4932);
                    _5127 = ((((_5040 * _4203) - _4932) * _4249) + _4932);
                    _5128 = _4410;
                    _5129 = _4409;
                    _5130 = _5024;
                    _5131 = _5025;
                    _5132 = _5026;
                  } else {
                    _4988 = 1.0f - _4351;
                    _5000 = (((_4409 * _4352) - _4409) * _4409) + 1.0f;
                    _5004 = (_4352 / ((_5000 * _5000) * 3.1415927f)) * (0.5f / ((((_4407 * _4988) + _4351) * _4405) + (_4407 * ((_4405 * _4988) + _4351))));
                    _5011 = saturate(_4405) * 0.39990234f;
                    _5019 = ((max((_5004 * _4946), 0.0f) * _5011) + (_4978 * 0.60009766f));
                    _5020 = ((max((_5004 * _4947), 0.0f) * _5011) + (_4979 * 0.60009766f));
                    _5021 = ((max((_5004 * _4948), 0.0f) * _5011) + (_4980 * 0.60009766f));
                    if (_4250 == 65) {
                      _5024 = _5019;
                      _5025 = _5020;
                      _5026 = _5021;
                      _5031 = max(1e-06f, _exposure2.x);
                      _5040 = ((_4891 * 50.265484f) * exp2(log2(saturate(dot(float3(_4283, _4284, _4285), float3(_1761, _1762, _1763)))) * 16.0f)) / (((_5031 * _5031) * 1e+06f) + 1.0f);
                      _5125 = ((((_5040 * _4201) - _4932) * _4249) + _4932);
                      _5126 = ((((_5040 * _4202) - _4932) * _4249) + _4932);
                      _5127 = ((((_5040 * _4203) - _4932) * _4249) + _4932);
                      _5128 = _4410;
                      _5129 = _4409;
                      _5130 = _5024;
                      _5131 = _5025;
                      _5132 = _5026;
                    } else {
                      _5054 = _5019;
                      _5055 = _5020;
                      _5056 = _5021;
                      _5057 = _4932;
                      _5058 = _4932;
                      _5059 = _4932;
                      if (_4288) {
                        _5062 = dot(float3(_1761, _1762, _1763), float3(_4283, _4284, _4285)) * 2.0f;
                        _5066 = _1761 - (_5062 * _4283);
                        _5067 = _1762 - (_5062 * _4284);
                        _5068 = _1763 - (_5062 * _4285);
                        _5069 = _4389 - _5066;
                        _5070 = _4390 - _5067;
                        _5071 = _4391 - _5068;
                        _5073 = rsqrt(dot(float3(_5069, _5070, _5071), float3(_5069, _5070, _5071)));  // [sem: invLength]
                        _5074 = _5069 * _5073;
                        _5075 = _5070 * _5073;
                        _5076 = _5071 * _5073;
                        _5077 = -0.0f - _5066;
                        _5078 = -0.0f - _5067;
                        _5079 = -0.0f - _5068;
                        _5081 = saturate(dot(float3(_4233, _4234, _4235), float3(_5077, _5078, _5079)));  // [sem: expr_sat]
                        _5083 = saturate(dot(float3(_4283, _4284, _4285), float3(_5074, _5075, _5076)));  // [sem: expr_sat]
                        _5085 = saturate(_4405);  // [sem: _4405_sat]
                        _5096 = 1.0f - ((_5083 * _5083) * 0.9f);
                        _5099 = (0.03183099f / (_5096 * _5096)) * (0.5f / ((((_5081 * 0.9f) + 0.1f) * _4405) + (_5081 * ((_4405 * 0.9f) + 0.1f))));
                        _5125 = _5057;
                        _5126 = _5058;
                        _5127 = _5059;
                        _5128 = dot(float3(_5077, _5078, _5079), float3(_5074, _5075, _5076));
                        _5129 = _5083;
                        _5130 = (((float(half(max((_5099 * _4201), 0.0f) * _5085)) - _5054) * 0.875f) + _5054);
                        _5131 = (((float(half(max((_5099 * _4202), 0.0f) * _5085)) - _5055) * 0.875f) + _5055);
                        _5132 = (((float(half(max((_5099 * _4203), 0.0f) * _5085)) - _5056) * 0.875f) + _5056);
                      } else {
                        _5125 = _5057;
                        _5126 = _5058;
                        _5127 = _5059;
                        _5128 = _4410;
                        _5129 = _4409;
                        _5130 = _5054;
                        _5131 = _5055;
                        _5132 = _5056;
                      }
                    }
                  }
                } else {
                  _5019 = _4978;
                  _5020 = _4979;
                  _5021 = _4980;
                  if (_4250 == 65) {
                    _5024 = _5019;
                    _5025 = _5020;
                    _5026 = _5021;
                    _5031 = max(1e-06f, _exposure2.x);
                    _5040 = ((_4891 * 50.265484f) * exp2(log2(saturate(dot(float3(_4283, _4284, _4285), float3(_1761, _1762, _1763)))) * 16.0f)) / (((_5031 * _5031) * 1e+06f) + 1.0f);
                    _5125 = ((((_5040 * _4201) - _4932) * _4249) + _4932);
                    _5126 = ((((_5040 * _4202) - _4932) * _4249) + _4932);
                    _5127 = ((((_5040 * _4203) - _4932) * _4249) + _4932);
                    _5128 = _4410;
                    _5129 = _4409;
                    _5130 = _5024;
                    _5131 = _5025;
                    _5132 = _5026;
                  } else {
                    _5054 = _5019;
                    _5055 = _5020;
                    _5056 = _5021;
                    _5057 = _4932;
                    _5058 = _4932;
                    _5059 = _4932;
                    if (_4288) {
                      _5062 = dot(float3(_1761, _1762, _1763), float3(_4283, _4284, _4285)) * 2.0f;
                      _5066 = _1761 - (_5062 * _4283);
                      _5067 = _1762 - (_5062 * _4284);
                      _5068 = _1763 - (_5062 * _4285);
                      _5069 = _4389 - _5066;
                      _5070 = _4390 - _5067;
                      _5071 = _4391 - _5068;
                      _5073 = rsqrt(dot(float3(_5069, _5070, _5071), float3(_5069, _5070, _5071)));  // [sem: invLength]
                      _5074 = _5069 * _5073;
                      _5075 = _5070 * _5073;
                      _5076 = _5071 * _5073;
                      _5077 = -0.0f - _5066;
                      _5078 = -0.0f - _5067;
                      _5079 = -0.0f - _5068;
                      _5081 = saturate(dot(float3(_4233, _4234, _4235), float3(_5077, _5078, _5079)));  // [sem: expr_sat]
                      _5083 = saturate(dot(float3(_4283, _4284, _4285), float3(_5074, _5075, _5076)));  // [sem: expr_sat]
                      _5085 = saturate(_4405);  // [sem: _4405_sat]
                      _5096 = 1.0f - ((_5083 * _5083) * 0.9f);
                      _5099 = (0.03183099f / (_5096 * _5096)) * (0.5f / ((((_5081 * 0.9f) + 0.1f) * _4405) + (_5081 * ((_4405 * 0.9f) + 0.1f))));
                      _5125 = _5057;
                      _5126 = _5058;
                      _5127 = _5059;
                      _5128 = dot(float3(_5077, _5078, _5079), float3(_5074, _5075, _5076));
                      _5129 = _5083;
                      _5130 = (((float(half(max((_5099 * _4201), 0.0f) * _5085)) - _5054) * 0.875f) + _5054);
                      _5131 = (((float(half(max((_5099 * _4202), 0.0f) * _5085)) - _5055) * 0.875f) + _5055);
                      _5132 = (((float(half(max((_5099 * _4203), 0.0f) * _5085)) - _5056) * 0.875f) + _5056);
                    } else {
                      _5125 = _5057;
                      _5126 = _5058;
                      _5127 = _5059;
                      _5128 = _4410;
                      _5129 = _4409;
                      _5130 = _5054;
                      _5131 = _5055;
                      _5132 = _5056;
                    }
                  }
                }
              }
            } else {
              _5125 = _4706;
              _5126 = _4707;
              _5127 = _4708;
              _5128 = _4410;
              _5129 = _4409;
              _5130 = _4703;
              _5131 = _4704;
              _5132 = _4705;
            }
            _5154 = select(_4712, _4883, _5130) * _3911;
            _5155 = select(_4712, _4884, _5131) * _3912;
            _5156 = select(_4712, _4885, _5132) * _3913;
            _5164 = _5128;
            _5165 = _5129;
            _5166 = select(_4712, 0.0f, _4700);
            _5167 = select(_4712, 0.0f, _4701);
            _5168 = select(_4712, 0.0f, _4702);
            _5169 = select(_4712, (_5154 + _4880), _5154);
            _5170 = select(_4712, (_5155 + _4881), _5155);
            _5171 = select(_4712, (_5156 + _4882), _5156);
            _5172 = (select(_4712, _4886, (-0.0f - min(-0.0f, (-0.0f - _5125)))) * _3911);
            _5173 = (select(_4712, _4887, (-0.0f - min(-0.0f, (-0.0f - _5126)))) * _3912);
            _5174 = (select(_4712, _4888, (-0.0f - min(-0.0f, (-0.0f - _5127)))) * _3913);
          } else {
            _5164 = _4410;
            _5165 = _4409;
            _5166 = _4700;
            _5167 = _4701;
            _5168 = _4702;
            _5169 = _4703;
            _5170 = _4704;
            _5171 = _4705;
            _5172 = _4706;
            _5173 = _4707;
            _5174 = _4708;
          }
        }
      } else {
        _5164 = _4410;
        _5165 = _4409;
        _5166 = _4700;
        _5167 = _4701;
        _5168 = _4702;
        _5169 = _4703;
        _5170 = _4704;
        _5171 = _4705;
        _5172 = _4706;
        _5173 = _4707;
        _5174 = _4708;
      }
    }
    if (_4372) {
      _5178 = max(0.0f, (0.3f - _4404)) * 0.23190688f;
      _5186 = ((_5178 * _3911) + _5172);
      _5187 = ((_5178 * _3912) + _5173);
      _5188 = ((_5178 * _3913) + _5174);
    } else {
      _5186 = _5172;
      _5187 = _5173;
      _5188 = _5174;
    }
    _5190 = 1.0f - (_5164 * 0.85f);
    if (_4319) {
      _5194 = max(4.0f, _4377);
      _5195 = _5194 * _5194;
      _5197 = exp2(_5195 * -225.4211f);
      _5202 = exp2(_5195 * -29.807749f);
      _5210 = exp2(_5195 * -7.7149463f);
      _5216 = exp2(_5195 * -2.5444357f);
      _5218 = _5216 * 0.007f;
      _5223 = exp2(_5195 * -0.72497237f);
      _5238 = saturate(dot(float3(_4389, _4390, _4391), float3((-0.0f - _3395), (-0.0f - _3396), (-0.0f - _3397))) + 0.3f) * 0.31830987f;
      _5526 = ((_5238 * ((((((_5202 * 0.1f) + (_5197 * 0.233f)) + (_5210 * 0.118f)) + (_5216 * 0.113f)) + (_5223 * 0.358f)) + (exp2(_5195 * -0.19469568f) * 0.078f))) + _5186);
      _5527 = ((_5238 * (((((_5202 * 0.336f) + (_5197 * 0.455f)) + (_5210 * 0.198f)) + _5218) + (_5223 * 0.004f))) + _5187);
      _5528 = ((_5238 * (((_5202 * 0.344f) + (_5197 * 0.649f)) + _5218)) + _5188);
      _5529 = _5526 * _4393;
      _5530 = _5527 * _4394;
      _5531 = _5528 * _4395;
      _5533 = (_5169 * _4393) * _3911;
      _5535 = (_5170 * _4394) * _3912;
      _5537 = (_5171 * _4395) * _3913;
      bool __branch_chain_5525;
      if (_4250 == 97) {
        _5553 = _5533;
        _5554 = _5535;
        _5555 = _5537;
        _5556 = _5529;
        _5557 = _5530;
        _5558 = _5531;
        _5559 = _5166;
        _5560 = _5167;
        _5561 = _5168;
        _5562 = _3911;
        _5563 = _3912;
        _5564 = _3913;
        __branch_chain_5525 = true;
      } else {
        _5540 = _5533;
        _5541 = _5535;
        _5542 = _5537;
        _5543 = _5529;
        _5544 = _5530;
        _5545 = _5531;
        _5546 = _5166;
        _5547 = _5167;
        _5548 = _5168;
        _5549 = _3911;
        _5550 = _3912;
        _5551 = _3913;
        if (_4354) {
          _5553 = _5540;
          _5554 = _5541;
          _5555 = _5542;
          _5556 = _5543;
          _5557 = _5544;
          _5558 = _5545;
          _5559 = _5546;
          _5560 = _5547;
          _5561 = _5548;
          _5562 = _5549;
          _5563 = _5550;
          _5564 = _5551;
          __branch_chain_5525 = true;
        } else {
          _5694 = _5543;
          _5695 = _5544;
          _5696 = _5545;
          _5697 = _5546;
          _5698 = _5547;
          _5699 = _5548;
          _5700 = _5540;
          _5701 = _5541;
          _5702 = _5542;
          __branch_chain_5525 = false;
        }
      }
      if (__branch_chain_5525) {
        if ((_122 < 1000.0f) && (_3898 == 0.0h)) {
          if (!(abs(_3396) > 0.99f)) {
            _5572 = -0.0f - _3397;
            _5574 = rsqrt(dot(float3(_5572, 0.0f, _3395), float3(_5572, 0.0f, _3395)));  // [sem: invLength]
            _5578 = (_5574 * _5572);
            _5579 = (_5574 * _3395);
          } else {
            _5578 = 1.0f;
            _5579 = 0.0f;
          }
          _5581 = -0.0f - (_3396 * _5579);
          _5584 = (_5579 * _3395) - (_5578 * _3397);
          _5585 = _5578 * _3396;
          _5587 = rsqrt(dot(float3(_5581, _5584, _5585), float3(_5581, _5584, _5585)));  // [sem: invLength]
          // [sem: _3__36__0__0__g_blueNoise_sampleLod]
          _5595 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_5578, 0.0f, _5579), float3(_3991, _3992, _3994)), dot(float3((_5587 * _5581), (_5584 * _5587), (_5587 * _5585)), float3(_3991, _3992, _3994))), 0.0f);
          _5599 = _5595.x + -0.5f;
          _5600 = _5595.y + -0.5f;
          _5601 = _5595.z + -0.5f;
          _5603 = rsqrt(dot(float3(_5599, _5600, _5601), float3(_5599, _5600, _5601)));  // [sem: invLength]
          _5607 = (_5599 * _5603) + _4283;
          _5608 = (_5600 * _5603) + _4284;
          _5609 = (_5601 * _5603) + _4285;
          _5611 = rsqrt(dot(float3(_5607, _5608, _5609), float3(_5607, _5608, _5609)));  // [sem: invLength]
          _5612 = _5607 * _5611;
          _5613 = _5608 * _5611;
          _5614 = _5609 * _5611;
          _5626 = abs(((_103 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
          _5627 = abs(1.0f - ((_104 * 2.0f) * _bufferSizeAndInvSize.w));
          _5630 = saturate(_5626 * _5626);  // [sem: expr_sat]
          _5631 = saturate(_5627 * _5627);  // [sem: expr_sat]
          _5645 = dot(float3((-0.0f - _5612), (-0.0f - _5613), (-0.0f - _5614)), float3(_4389, _4390, _4391));
          _5647 = saturate(dot(float3(_5612, _5613, _5614), float3(_1761, _1762, _1763)));  // [sem: expr_sat]
          _5649 = saturate(1.0f - _5164);  // [sem: expr_sat]
          _5650 = _5649 * _5649;
          _5652 = (_5650 * _5650) * _5649;
          _5668 = 1.0f - ((_5165 * _5165) * 0.9999f);
          _5675 = (max((((3.1830987e-05f / (_5668 * _5668)) * (0.5f / ((((_5647 * 0.9999f) + 0.0001f) * _5645) + (_5647 * ((_5645 * 0.9999f) + 0.0001f))))) * (lerp(_5652, 1.0f, 0.08f))), 0.0f) * saturate(_5645)) + (exp2(log2(saturate(dot(float3(_1761, _1762, _1763), float3(_5612, _5613, _5614)))) * 1024.0f) * 50.0f);
          // [sem: expr_sat]
          _5680 = saturate(1.0f - (_122 * 0.001f)) * ((1.0f - ((_5631 * _5631) * (3.0f - (_5631 * 2.0f)))) * (1.0f - ((_5630 * _5630) * (3.0f - (_5630 * 2.0f)))));
          _5694 = _5556;
          _5695 = _5557;
          _5696 = _5558;
          _5697 = _5559;
          _5698 = _5560;
          _5699 = _5561;
          _5700 = ((((_5680 * _4393) * _5562) * _5675) + _5553);
          _5701 = ((((_5680 * _4394) * _5563) * _5675) + _5554);
          _5702 = ((((_5680 * _4395) * _5564) * _5675) + _5555);
        } else {
          _5694 = _5556;
          _5695 = _5557;
          _5696 = _5558;
          _5697 = _5559;
          _5698 = _5560;
          _5699 = _5561;
          _5700 = _5553;
          _5701 = _5554;
          _5702 = _5555;
        }
      }
    } else {
      if (_4415) {
        _5248 = dot(float3(_4201, _4202, _4203), float3(0.212671f, 0.71516f, 0.072169f)) * _renderParams2.w;
        _5251 = _5248 + (_1696 - (_5248 * _1696));
        _5258 = (pow(_3911, 1.2f));
        _5259 = (pow(_3912, 1.2f));
        _5260 = (pow(_3913, 1.2f));
        _5266 = saturate(abs(dot(float3(_4389, _4390, _4391), float3(_1647, _1648, _1649))));  // [sem: expr_sat]
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _5275 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_5266, _4211, saturate(sqrt(sqrt(_4201)))), 0.0f);
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _5278 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_5266, _4211, saturate(sqrt(sqrt(_4202)))), 0.0f);
        // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod]
        _5281 = __3__36__0__0__g_hairDualScatteringLUT.SampleLevel(__3__40__0__0__g_samplerClamp, float3(_5266, _4211, saturate(sqrt(sqrt(_4203)))), 0.0f);
        _5290 = min(0.99f, _5275.x);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _5291 = min(0.99f, _5278.x);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _5292 = min(0.99f, _5281.x);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _5293 = min(0.99f, _5275.y);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _5294 = min(0.99f, _5278.y);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _5295 = min(0.99f, _5281.y);  // [sem: _3__36__0__0__g_hairDualScatteringLUT_sampleLod_derived]
        _5296 = _5290 * _5290;
        _5297 = _5291 * _5291;
        _5298 = _5292 * _5292;
        _5299 = _5293 * _5293;
        _5300 = _5294 * _5294;
        _5301 = _5295 * _5295;
        _5302 = _5299 * _5293;
        _5303 = _5300 * _5294;
        _5304 = _5301 * _5295;
        _5305 = 1.0f - _5296;
        _5306 = 1.0f - _5297;
        _5307 = 1.0f - _5298;
        _5317 = _5305 * _5305;
        _5318 = _5306 * _5306;
        _5319 = _5307 * _5307;
        _5320 = _5317 * _5305;
        _5321 = _5318 * _5306;
        _5322 = _5319 * _5307;
        _5330 = min(max(_4211, 0.18f), 0.6f);
        _5331 = _5330 * _5330;
        _5332 = _5331 * 0.25f;
        _5333 = _5331 * 4.0f;
        _5335 = (_5291 + _5290) + _5292;
        _5336 = _5290 / _5335;
        _5337 = _5291 / _5335;
        _5338 = _5292 / _5335;
        _5339 = dot(float3(_5331, _5332, _5333), float3(_5336, _5337, _5338));
        _5340 = _5339 * _5339;
        _5344 = (asin(min(max(dot(float3(_1647, _1648, _1649), float3(_1761, _1762, _1763)), -1.0f), 1.0f)) + asin(min(max(dot(float3(_1647, _1648, _1649), float3(_4389, _4390, _4391)), -1.0f), 1.0f))) * 0.5f;
        _5345 = dot(float3(-0.07f, 0.035f, 0.14f), float3(_5336, _5337, _5338));
        _5355 = _5345 * _5345;
        _5378 = (_5294 + _5293) + _5295;
        _5382 = dot(float3(_5331, _5332, _5333), float3((_5293 / _5378), (_5294 / _5378), (_5295 / _5378)));
        _5386 = sqrt((_5382 * _5382) + (_5340 * 2.0f));
        _5404 = (_5382 * 3.0f) + (_5339 * 2.0f);
        _5411 = (((_5302 + _5293) * ((_5296 * 0.7f) + 1.0f)) * _5386) / ((_5404 * _5302) + _5293);
        _5412 = (((_5303 + _5294) * ((_5297 * 0.7f) + 1.0f)) * _5386) / ((_5404 * _5303) + _5294);
        _5413 = (((_5304 + _5295) * ((_5298 * 0.7f) + 1.0f)) * _5386) / ((_5404 * _5304) + _5295);
        _5417 = _5344 - (((_5355 * (((_5296 * 4.0f) * _5299) + (_5317 * 2.0f))) * (1.0f - ((_5299 * 2.0f) / _5317))) / _5320);
        _5424 = _5344 - (((_5355 * (((_5297 * 4.0f) * _5300) + (_5318 * 2.0f))) * (1.0f - ((_5300 * 2.0f) / _5318))) / _5321);
        _5431 = _5344 - (((_5355 * (((_5298 * 4.0f) * _5301) + (_5319 * 2.0f))) * (1.0f - ((_5301 * 2.0f) / _5319))) / _5322);
        _5439 = (1.0f - _1645) * 2.1f;
        _5460 = (_1645 * 0.31830987f) * saturate(_4404);
        _5507 = _5258;
        _5508 = _5259;
        _5509 = _5260;
        _5510 = (((_5251 * _4393) * _5258) * ((((((_5302 * _5296) / _5320) + ((_5293 * _5296) / _5305)) * _5439) * exp2((((_5417 * _5417) * -0.5f) / ((_5411 * _5411) + _5340)) * 1.442695f)) + _5166));
        _5511 = (((_5251 * _4394) * _5259) * ((((((_5303 * _5297) / _5321) + ((_5294 * _5297) / _5306)) * _5439) * exp2((((_5424 * _5424) * -0.5f) / ((_5412 * _5412) + _5340)) * 1.442695f)) + _5167));
        _5512 = (((_5251 * _4395) * _5260) * ((((((_5304 * _5298) / _5322) + ((_5295 * _5298) / _5307)) * _5439) * exp2((((_5431 * _5431) * -0.5f) / ((_5413 * _5413) + _5340)) * 1.442695f)) + _5168));
        _5513 = (_5460 * _5258);
        _5514 = (_5460 * _5259);
        _5515 = (_5460 * _5260);
        _5540 = ((_5169 * _4393) * _5507);
        _5541 = ((_5170 * _4394) * _5508);
        _5542 = ((_5171 * _4395) * _5509);
        _5543 = (_5513 * _4393);
        _5544 = (_5514 * _4394);
        _5545 = (_5515 * _4395);
        _5546 = _5510;
        _5547 = _5511;
        _5548 = _5512;
        _5549 = _5507;
        _5550 = _5508;
        _5551 = _5509;
        if (_4354) {
          _5553 = _5540;
          _5554 = _5541;
          _5555 = _5542;
          _5556 = _5543;
          _5557 = _5544;
          _5558 = _5545;
          _5559 = _5546;
          _5560 = _5547;
          _5561 = _5548;
          _5562 = _5549;
          _5563 = _5550;
          _5564 = _5551;
          if ((_122 < 1000.0f) && (_3898 == 0.0h)) {
            if (!(abs(_3396) > 0.99f)) {
              _5572 = -0.0f - _3397;
              _5574 = rsqrt(dot(float3(_5572, 0.0f, _3395), float3(_5572, 0.0f, _3395)));  // [sem: invLength]
              _5578 = (_5574 * _5572);
              _5579 = (_5574 * _3395);
            } else {
              _5578 = 1.0f;
              _5579 = 0.0f;
            }
            _5581 = -0.0f - (_3396 * _5579);
            _5584 = (_5579 * _3395) - (_5578 * _3397);
            _5585 = _5578 * _3396;
            _5587 = rsqrt(dot(float3(_5581, _5584, _5585), float3(_5581, _5584, _5585)));  // [sem: invLength]
            // [sem: _3__36__0__0__g_blueNoise_sampleLod]
            _5595 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_5578, 0.0f, _5579), float3(_3991, _3992, _3994)), dot(float3((_5587 * _5581), (_5584 * _5587), (_5587 * _5585)), float3(_3991, _3992, _3994))), 0.0f);
            _5599 = _5595.x + -0.5f;
            _5600 = _5595.y + -0.5f;
            _5601 = _5595.z + -0.5f;
            _5603 = rsqrt(dot(float3(_5599, _5600, _5601), float3(_5599, _5600, _5601)));  // [sem: invLength]
            _5607 = (_5599 * _5603) + _4283;
            _5608 = (_5600 * _5603) + _4284;
            _5609 = (_5601 * _5603) + _4285;
            _5611 = rsqrt(dot(float3(_5607, _5608, _5609), float3(_5607, _5608, _5609)));  // [sem: invLength]
            _5612 = _5607 * _5611;
            _5613 = _5608 * _5611;
            _5614 = _5609 * _5611;
            _5626 = abs(((_103 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
            _5627 = abs(1.0f - ((_104 * 2.0f) * _bufferSizeAndInvSize.w));
            _5630 = saturate(_5626 * _5626);  // [sem: expr_sat]
            _5631 = saturate(_5627 * _5627);  // [sem: expr_sat]
            _5645 = dot(float3((-0.0f - _5612), (-0.0f - _5613), (-0.0f - _5614)), float3(_4389, _4390, _4391));
            _5647 = saturate(dot(float3(_5612, _5613, _5614), float3(_1761, _1762, _1763)));  // [sem: expr_sat]
            _5649 = saturate(1.0f - _5164);  // [sem: expr_sat]
            _5650 = _5649 * _5649;
            _5652 = (_5650 * _5650) * _5649;
            _5668 = 1.0f - ((_5165 * _5165) * 0.9999f);
            _5675 = (max((((3.1830987e-05f / (_5668 * _5668)) * (0.5f / ((((_5647 * 0.9999f) + 0.0001f) * _5645) + (_5647 * ((_5645 * 0.9999f) + 0.0001f))))) * (lerp(_5652, 1.0f, 0.08f))), 0.0f) * saturate(_5645)) + (exp2(log2(saturate(dot(float3(_1761, _1762, _1763), float3(_5612, _5613, _5614)))) * 1024.0f) * 50.0f);
            // [sem: expr_sat]
            _5680 = saturate(1.0f - (_122 * 0.001f)) * ((1.0f - ((_5631 * _5631) * (3.0f - (_5631 * 2.0f)))) * (1.0f - ((_5630 * _5630) * (3.0f - (_5630 * 2.0f)))));
            _5694 = _5556;
            _5695 = _5557;
            _5696 = _5558;
            _5697 = _5559;
            _5698 = _5560;
            _5699 = _5561;
            _5700 = ((((_5680 * _4393) * _5562) * _5675) + _5553);
            _5701 = ((((_5680 * _4394) * _5563) * _5675) + _5554);
            _5702 = ((((_5680 * _4395) * _5564) * _5675) + _5555);
          } else {
            _5694 = _5556;
            _5695 = _5557;
            _5696 = _5558;
            _5697 = _5559;
            _5698 = _5560;
            _5699 = _5561;
            _5700 = _5553;
            _5701 = _5554;
            _5702 = _5555;
          }
        } else {
          _5694 = _5543;
          _5695 = _5544;
          _5696 = _5545;
          _5697 = _5546;
          _5698 = _5547;
          _5699 = _5548;
          _5700 = _5540;
          _5701 = _5541;
          _5702 = _5542;
        }
      } else {
        if (_4371) {
          if (_4250 == 97) {
            _5553 = ((_5169 * _4393) * _3911);
            _5554 = ((_5170 * _4394) * _3912);
            _5555 = ((_5171 * _4395) * _3913);
            _5556 = (_5186 * _4393);
            _5557 = (_5187 * _4394);
            _5558 = (_5188 * _4395);
            _5559 = _5166;
            _5560 = _5167;
            _5561 = _5168;
            _5562 = _3911;
            _5563 = _3912;
            _5564 = _3913;
            if ((_122 < 1000.0f) && (_3898 == 0.0h)) {
              if (!(abs(_3396) > 0.99f)) {
                _5572 = -0.0f - _3397;
                _5574 = rsqrt(dot(float3(_5572, 0.0f, _3395), float3(_5572, 0.0f, _3395)));  // [sem: invLength]
                _5578 = (_5574 * _5572);
                _5579 = (_5574 * _3395);
              } else {
                _5578 = 1.0f;
                _5579 = 0.0f;
              }
              _5581 = -0.0f - (_3396 * _5579);
              _5584 = (_5579 * _3395) - (_5578 * _3397);
              _5585 = _5578 * _3396;
              _5587 = rsqrt(dot(float3(_5581, _5584, _5585), float3(_5581, _5584, _5585)));  // [sem: invLength]
              // [sem: _3__36__0__0__g_blueNoise_sampleLod]
              _5595 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_5578, 0.0f, _5579), float3(_3991, _3992, _3994)), dot(float3((_5587 * _5581), (_5584 * _5587), (_5587 * _5585)), float3(_3991, _3992, _3994))), 0.0f);
              _5599 = _5595.x + -0.5f;
              _5600 = _5595.y + -0.5f;
              _5601 = _5595.z + -0.5f;
              _5603 = rsqrt(dot(float3(_5599, _5600, _5601), float3(_5599, _5600, _5601)));  // [sem: invLength]
              _5607 = (_5599 * _5603) + _4283;
              _5608 = (_5600 * _5603) + _4284;
              _5609 = (_5601 * _5603) + _4285;
              _5611 = rsqrt(dot(float3(_5607, _5608, _5609), float3(_5607, _5608, _5609)));  // [sem: invLength]
              _5612 = _5607 * _5611;
              _5613 = _5608 * _5611;
              _5614 = _5609 * _5611;
              _5626 = abs(((_103 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
              _5627 = abs(1.0f - ((_104 * 2.0f) * _bufferSizeAndInvSize.w));
              _5630 = saturate(_5626 * _5626);  // [sem: expr_sat]
              _5631 = saturate(_5627 * _5627);  // [sem: expr_sat]
              _5645 = dot(float3((-0.0f - _5612), (-0.0f - _5613), (-0.0f - _5614)), float3(_4389, _4390, _4391));
              _5647 = saturate(dot(float3(_5612, _5613, _5614), float3(_1761, _1762, _1763)));  // [sem: expr_sat]
              _5649 = saturate(1.0f - _5164);  // [sem: expr_sat]
              _5650 = _5649 * _5649;
              _5652 = (_5650 * _5650) * _5649;
              _5668 = 1.0f - ((_5165 * _5165) * 0.9999f);
              _5675 = (max((((3.1830987e-05f / (_5668 * _5668)) * (0.5f / ((((_5647 * 0.9999f) + 0.0001f) * _5645) + (_5647 * ((_5645 * 0.9999f) + 0.0001f))))) * (lerp(_5652, 1.0f, 0.08f))), 0.0f) * saturate(_5645)) + (exp2(log2(saturate(dot(float3(_1761, _1762, _1763), float3(_5612, _5613, _5614)))) * 1024.0f) * 50.0f);
              // [sem: expr_sat]
              _5680 = saturate(1.0f - (_122 * 0.001f)) * ((1.0f - ((_5631 * _5631) * (3.0f - (_5631 * 2.0f)))) * (1.0f - ((_5630 * _5630) * (3.0f - (_5630 * 2.0f)))));
              _5694 = _5556;
              _5695 = _5557;
              _5696 = _5558;
              _5697 = _5559;
              _5698 = _5560;
              _5699 = _5561;
              _5700 = ((((_5680 * _4393) * _5562) * _5675) + _5553);
              _5701 = ((((_5680 * _4394) * _5563) * _5675) + _5554);
              _5702 = ((((_5680 * _4395) * _5564) * _5675) + _5555);
            } else {
              _5694 = _5556;
              _5695 = _5557;
              _5696 = _5558;
              _5697 = _5559;
              _5698 = _5560;
              _5699 = _5561;
              _5700 = _5553;
              _5701 = _5554;
              _5702 = _5555;
            }
          } else {
            if ((uint)((int)(_4250) + (int)(-105)) < (uint)2) {
              _5507 = _3911;
              _5508 = _3912;
              _5509 = _3913;
              _5510 = _5166;
              _5511 = _5167;
              _5512 = _5168;
              _5513 = _5186;
              _5514 = _5187;
              _5515 = _5188;
              _5540 = ((_5169 * _4393) * _5507);
              _5541 = ((_5170 * _4394) * _5508);
              _5542 = ((_5171 * _4395) * _5509);
              _5543 = (_5513 * _4393);
              _5544 = (_5514 * _4394);
              _5545 = (_5515 * _4395);
              _5546 = _5510;
              _5547 = _5511;
              _5548 = _5512;
              _5549 = _5507;
              _5550 = _5508;
              _5551 = _5509;
              if (_4354) {
                _5553 = _5540;
                _5554 = _5541;
                _5555 = _5542;
                _5556 = _5543;
                _5557 = _5544;
                _5558 = _5545;
                _5559 = _5546;
                _5560 = _5547;
                _5561 = _5548;
                _5562 = _5549;
                _5563 = _5550;
                _5564 = _5551;
                if ((_122 < 1000.0f) && (_3898 == 0.0h)) {
                  if (!(abs(_3396) > 0.99f)) {
                    _5572 = -0.0f - _3397;
                    _5574 = rsqrt(dot(float3(_5572, 0.0f, _3395), float3(_5572, 0.0f, _3395)));  // [sem: invLength]
                    _5578 = (_5574 * _5572);
                    _5579 = (_5574 * _3395);
                  } else {
                    _5578 = 1.0f;
                    _5579 = 0.0f;
                  }
                  _5581 = -0.0f - (_3396 * _5579);
                  _5584 = (_5579 * _3395) - (_5578 * _3397);
                  _5585 = _5578 * _3396;
                  _5587 = rsqrt(dot(float3(_5581, _5584, _5585), float3(_5581, _5584, _5585)));  // [sem: invLength]
                  // [sem: _3__36__0__0__g_blueNoise_sampleLod]
                  _5595 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_5578, 0.0f, _5579), float3(_3991, _3992, _3994)), dot(float3((_5587 * _5581), (_5584 * _5587), (_5587 * _5585)), float3(_3991, _3992, _3994))), 0.0f);
                  _5599 = _5595.x + -0.5f;
                  _5600 = _5595.y + -0.5f;
                  _5601 = _5595.z + -0.5f;
                  _5603 = rsqrt(dot(float3(_5599, _5600, _5601), float3(_5599, _5600, _5601)));  // [sem: invLength]
                  _5607 = (_5599 * _5603) + _4283;
                  _5608 = (_5600 * _5603) + _4284;
                  _5609 = (_5601 * _5603) + _4285;
                  _5611 = rsqrt(dot(float3(_5607, _5608, _5609), float3(_5607, _5608, _5609)));  // [sem: invLength]
                  _5612 = _5607 * _5611;
                  _5613 = _5608 * _5611;
                  _5614 = _5609 * _5611;
                  _5626 = abs(((_103 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
                  _5627 = abs(1.0f - ((_104 * 2.0f) * _bufferSizeAndInvSize.w));
                  _5630 = saturate(_5626 * _5626);  // [sem: expr_sat]
                  _5631 = saturate(_5627 * _5627);  // [sem: expr_sat]
                  _5645 = dot(float3((-0.0f - _5612), (-0.0f - _5613), (-0.0f - _5614)), float3(_4389, _4390, _4391));
                  _5647 = saturate(dot(float3(_5612, _5613, _5614), float3(_1761, _1762, _1763)));  // [sem: expr_sat]
                  _5649 = saturate(1.0f - _5164);  // [sem: expr_sat]
                  _5650 = _5649 * _5649;
                  _5652 = (_5650 * _5650) * _5649;
                  _5668 = 1.0f - ((_5165 * _5165) * 0.9999f);
                  _5675 = (max((((3.1830987e-05f / (_5668 * _5668)) * (0.5f / ((((_5647 * 0.9999f) + 0.0001f) * _5645) + (_5647 * ((_5645 * 0.9999f) + 0.0001f))))) * (lerp(_5652, 1.0f, 0.08f))), 0.0f) * saturate(_5645)) + (exp2(log2(saturate(dot(float3(_1761, _1762, _1763), float3(_5612, _5613, _5614)))) * 1024.0f) * 50.0f);
                  // [sem: expr_sat]
                  _5680 = saturate(1.0f - (_122 * 0.001f)) * ((1.0f - ((_5631 * _5631) * (3.0f - (_5631 * 2.0f)))) * (1.0f - ((_5630 * _5630) * (3.0f - (_5630 * 2.0f)))));
                  _5694 = _5556;
                  _5695 = _5557;
                  _5696 = _5558;
                  _5697 = _5559;
                  _5698 = _5560;
                  _5699 = _5561;
                  _5700 = ((((_5680 * _4393) * _5562) * _5675) + _5553);
                  _5701 = ((((_5680 * _4394) * _5563) * _5675) + _5554);
                  _5702 = ((((_5680 * _4395) * _5564) * _5675) + _5555);
                } else {
                  _5694 = _5556;
                  _5695 = _5557;
                  _5696 = _5558;
                  _5697 = _5559;
                  _5698 = _5560;
                  _5699 = _5561;
                  _5700 = _5553;
                  _5701 = _5554;
                  _5702 = _5555;
                }
              } else {
                _5694 = _5543;
                _5695 = _5544;
                _5696 = _5545;
                _5697 = _5546;
                _5698 = _5547;
                _5699 = _5548;
                _5700 = _5540;
                _5701 = _5541;
                _5702 = _5542;
              }
            } else {
              if (!(_4377 >= 999.9f)) {
                _5491 = ((max(0.002f, _4377) * 0.4f) / ((_4249 * 100.0f) + 0.1f));
              } else {
                _5491 = 1000.0f;
              }
              _5492 = _5491 * _5491;
              _5502 = (((_4249 * 0.25f) * (0.022082746f / (_5190 * _5190))) * max(0.0f, (0.3f - _4404))) * ((exp2(_5492 * -0.48089835f) * 3.0f) + exp2(_5492 * -1.442695f));
              _5526 = (_5502 + _5186);
              _5527 = (_5502 + _5187);
              _5528 = (_5502 + _5188);
              _5529 = _5526 * _4393;
              _5530 = _5527 * _4394;
              _5531 = _5528 * _4395;
              _5533 = (_5169 * _4393) * _3911;
              _5535 = (_5170 * _4394) * _3912;
              _5537 = (_5171 * _4395) * _3913;
              bool __branch_chain_5525;
              if (_4250 == 97) {
                _5553 = _5533;
                _5554 = _5535;
                _5555 = _5537;
                _5556 = _5529;
                _5557 = _5530;
                _5558 = _5531;
                _5559 = _5166;
                _5560 = _5167;
                _5561 = _5168;
                _5562 = _3911;
                _5563 = _3912;
                _5564 = _3913;
                __branch_chain_5525 = true;
              } else {
                _5540 = _5533;
                _5541 = _5535;
                _5542 = _5537;
                _5543 = _5529;
                _5544 = _5530;
                _5545 = _5531;
                _5546 = _5166;
                _5547 = _5167;
                _5548 = _5168;
                _5549 = _3911;
                _5550 = _3912;
                _5551 = _3913;
                if (_4354) {
                  _5553 = _5540;
                  _5554 = _5541;
                  _5555 = _5542;
                  _5556 = _5543;
                  _5557 = _5544;
                  _5558 = _5545;
                  _5559 = _5546;
                  _5560 = _5547;
                  _5561 = _5548;
                  _5562 = _5549;
                  _5563 = _5550;
                  _5564 = _5551;
                  __branch_chain_5525 = true;
                } else {
                  _5694 = _5543;
                  _5695 = _5544;
                  _5696 = _5545;
                  _5697 = _5546;
                  _5698 = _5547;
                  _5699 = _5548;
                  _5700 = _5540;
                  _5701 = _5541;
                  _5702 = _5542;
                  __branch_chain_5525 = false;
                }
              }
              if (__branch_chain_5525) {
                if ((_122 < 1000.0f) && (_3898 == 0.0h)) {
                  if (!(abs(_3396) > 0.99f)) {
                    _5572 = -0.0f - _3397;
                    _5574 = rsqrt(dot(float3(_5572, 0.0f, _3395), float3(_5572, 0.0f, _3395)));  // [sem: invLength]
                    _5578 = (_5574 * _5572);
                    _5579 = (_5574 * _3395);
                  } else {
                    _5578 = 1.0f;
                    _5579 = 0.0f;
                  }
                  _5581 = -0.0f - (_3396 * _5579);
                  _5584 = (_5579 * _3395) - (_5578 * _3397);
                  _5585 = _5578 * _3396;
                  _5587 = rsqrt(dot(float3(_5581, _5584, _5585), float3(_5581, _5584, _5585)));  // [sem: invLength]
                  // [sem: _3__36__0__0__g_blueNoise_sampleLod]
                  _5595 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_5578, 0.0f, _5579), float3(_3991, _3992, _3994)), dot(float3((_5587 * _5581), (_5584 * _5587), (_5587 * _5585)), float3(_3991, _3992, _3994))), 0.0f);
                  _5599 = _5595.x + -0.5f;
                  _5600 = _5595.y + -0.5f;
                  _5601 = _5595.z + -0.5f;
                  _5603 = rsqrt(dot(float3(_5599, _5600, _5601), float3(_5599, _5600, _5601)));  // [sem: invLength]
                  _5607 = (_5599 * _5603) + _4283;
                  _5608 = (_5600 * _5603) + _4284;
                  _5609 = (_5601 * _5603) + _4285;
                  _5611 = rsqrt(dot(float3(_5607, _5608, _5609), float3(_5607, _5608, _5609)));  // [sem: invLength]
                  _5612 = _5607 * _5611;
                  _5613 = _5608 * _5611;
                  _5614 = _5609 * _5611;
                  _5626 = abs(((_103 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
                  _5627 = abs(1.0f - ((_104 * 2.0f) * _bufferSizeAndInvSize.w));
                  _5630 = saturate(_5626 * _5626);  // [sem: expr_sat]
                  _5631 = saturate(_5627 * _5627);  // [sem: expr_sat]
                  _5645 = dot(float3((-0.0f - _5612), (-0.0f - _5613), (-0.0f - _5614)), float3(_4389, _4390, _4391));
                  _5647 = saturate(dot(float3(_5612, _5613, _5614), float3(_1761, _1762, _1763)));  // [sem: expr_sat]
                  _5649 = saturate(1.0f - _5164);  // [sem: expr_sat]
                  _5650 = _5649 * _5649;
                  _5652 = (_5650 * _5650) * _5649;
                  _5668 = 1.0f - ((_5165 * _5165) * 0.9999f);
                  _5675 = (max((((3.1830987e-05f / (_5668 * _5668)) * (0.5f / ((((_5647 * 0.9999f) + 0.0001f) * _5645) + (_5647 * ((_5645 * 0.9999f) + 0.0001f))))) * (lerp(_5652, 1.0f, 0.08f))), 0.0f) * saturate(_5645)) + (exp2(log2(saturate(dot(float3(_1761, _1762, _1763), float3(_5612, _5613, _5614)))) * 1024.0f) * 50.0f);
                  // [sem: expr_sat]
                  _5680 = saturate(1.0f - (_122 * 0.001f)) * ((1.0f - ((_5631 * _5631) * (3.0f - (_5631 * 2.0f)))) * (1.0f - ((_5630 * _5630) * (3.0f - (_5630 * 2.0f)))));
                  _5694 = _5556;
                  _5695 = _5557;
                  _5696 = _5558;
                  _5697 = _5559;
                  _5698 = _5560;
                  _5699 = _5561;
                  _5700 = ((((_5680 * _4393) * _5562) * _5675) + _5553);
                  _5701 = ((((_5680 * _4394) * _5563) * _5675) + _5554);
                  _5702 = ((((_5680 * _4395) * _5564) * _5675) + _5555);
                } else {
                  _5694 = _5556;
                  _5695 = _5557;
                  _5696 = _5558;
                  _5697 = _5559;
                  _5698 = _5560;
                  _5699 = _5561;
                  _5700 = _5553;
                  _5701 = _5554;
                  _5702 = _5555;
                }
              }
            }
          }
        } else {
          _5526 = _5186;
          _5527 = _5187;
          _5528 = _5188;
          _5529 = _5526 * _4393;
          _5530 = _5527 * _4394;
          _5531 = _5528 * _4395;
          _5533 = (_5169 * _4393) * _3911;
          _5535 = (_5170 * _4394) * _3912;
          _5537 = (_5171 * _4395) * _3913;
          bool __branch_chain_5525;
          if (_4250 == 97) {
            _5553 = _5533;
            _5554 = _5535;
            _5555 = _5537;
            _5556 = _5529;
            _5557 = _5530;
            _5558 = _5531;
            _5559 = _5166;
            _5560 = _5167;
            _5561 = _5168;
            _5562 = _3911;
            _5563 = _3912;
            _5564 = _3913;
            __branch_chain_5525 = true;
          } else {
            _5540 = _5533;
            _5541 = _5535;
            _5542 = _5537;
            _5543 = _5529;
            _5544 = _5530;
            _5545 = _5531;
            _5546 = _5166;
            _5547 = _5167;
            _5548 = _5168;
            _5549 = _3911;
            _5550 = _3912;
            _5551 = _3913;
            if (_4354) {
              _5553 = _5540;
              _5554 = _5541;
              _5555 = _5542;
              _5556 = _5543;
              _5557 = _5544;
              _5558 = _5545;
              _5559 = _5546;
              _5560 = _5547;
              _5561 = _5548;
              _5562 = _5549;
              _5563 = _5550;
              _5564 = _5551;
              __branch_chain_5525 = true;
            } else {
              _5694 = _5543;
              _5695 = _5544;
              _5696 = _5545;
              _5697 = _5546;
              _5698 = _5547;
              _5699 = _5548;
              _5700 = _5540;
              _5701 = _5541;
              _5702 = _5542;
              __branch_chain_5525 = false;
            }
          }
          if (__branch_chain_5525) {
            if ((_122 < 1000.0f) && (_3898 == 0.0h)) {
              if (!(abs(_3396) > 0.99f)) {
                _5572 = -0.0f - _3397;
                _5574 = rsqrt(dot(float3(_5572, 0.0f, _3395), float3(_5572, 0.0f, _3395)));  // [sem: invLength]
                _5578 = (_5574 * _5572);
                _5579 = (_5574 * _3395);
              } else {
                _5578 = 1.0f;
                _5579 = 0.0f;
              }
              _5581 = -0.0f - (_3396 * _5579);
              _5584 = (_5579 * _3395) - (_5578 * _3397);
              _5585 = _5578 * _3396;
              _5587 = rsqrt(dot(float3(_5581, _5584, _5585), float3(_5581, _5584, _5585)));  // [sem: invLength]
              // [sem: _3__36__0__0__g_blueNoise_sampleLod]
              _5595 = __3__36__0__0__g_blueNoise.SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(dot(float3(_5578, 0.0f, _5579), float3(_3991, _3992, _3994)), dot(float3((_5587 * _5581), (_5584 * _5587), (_5587 * _5585)), float3(_3991, _3992, _3994))), 0.0f);
              _5599 = _5595.x + -0.5f;
              _5600 = _5595.y + -0.5f;
              _5601 = _5595.z + -0.5f;
              _5603 = rsqrt(dot(float3(_5599, _5600, _5601), float3(_5599, _5600, _5601)));  // [sem: invLength]
              _5607 = (_5599 * _5603) + _4283;
              _5608 = (_5600 * _5603) + _4284;
              _5609 = (_5601 * _5603) + _4285;
              _5611 = rsqrt(dot(float3(_5607, _5608, _5609), float3(_5607, _5608, _5609)));  // [sem: invLength]
              _5612 = _5607 * _5611;
              _5613 = _5608 * _5611;
              _5614 = _5609 * _5611;
              _5626 = abs(((_103 * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f);
              _5627 = abs(1.0f - ((_104 * 2.0f) * _bufferSizeAndInvSize.w));
              _5630 = saturate(_5626 * _5626);  // [sem: expr_sat]
              _5631 = saturate(_5627 * _5627);  // [sem: expr_sat]
              _5645 = dot(float3((-0.0f - _5612), (-0.0f - _5613), (-0.0f - _5614)), float3(_4389, _4390, _4391));
              _5647 = saturate(dot(float3(_5612, _5613, _5614), float3(_1761, _1762, _1763)));  // [sem: expr_sat]
              _5649 = saturate(1.0f - _5164);  // [sem: expr_sat]
              _5650 = _5649 * _5649;
              _5652 = (_5650 * _5650) * _5649;
              _5668 = 1.0f - ((_5165 * _5165) * 0.9999f);
              _5675 = (max((((3.1830987e-05f / (_5668 * _5668)) * (0.5f / ((((_5647 * 0.9999f) + 0.0001f) * _5645) + (_5647 * ((_5645 * 0.9999f) + 0.0001f))))) * (lerp(_5652, 1.0f, 0.08f))), 0.0f) * saturate(_5645)) + (exp2(log2(saturate(dot(float3(_1761, _1762, _1763), float3(_5612, _5613, _5614)))) * 1024.0f) * 50.0f);
              // [sem: expr_sat]
              _5680 = saturate(1.0f - (_122 * 0.001f)) * ((1.0f - ((_5631 * _5631) * (3.0f - (_5631 * 2.0f)))) * (1.0f - ((_5630 * _5630) * (3.0f - (_5630 * 2.0f)))));
              _5694 = _5556;
              _5695 = _5557;
              _5696 = _5558;
              _5697 = _5559;
              _5698 = _5560;
              _5699 = _5561;
              _5700 = ((((_5680 * _4393) * _5562) * _5675) + _5553);
              _5701 = ((((_5680 * _4394) * _5563) * _5675) + _5554);
              _5702 = ((((_5680 * _4395) * _5564) * _5675) + _5555);
            } else {
              _5694 = _5556;
              _5695 = _5557;
              _5696 = _5558;
              _5697 = _5559;
              _5698 = _5560;
              _5699 = _5561;
              _5700 = _5553;
              _5701 = _5554;
              _5702 = _5555;
            }
          }
        }
      }
    }
    _5709 = _5694 + _3899;
    _5710 = _5695 + _3900;
    _5711 = _5696 + _3901;
    _5714 = (uint)((uint)(_frameNumber.x)) * (uint)(13);
    [branch]
    if ((((int)((int)((uint)((uint)(_5714)) + (uint)((uint)(_100)))) | (int)((int)((uint)((uint)(_5714)) + (uint)((uint)(_102))))) & 31) == 0) {
      __3__38__0__1__g_sceneColorLightingOnlyForAwbUAV[int2(((int)(_100) >> 5), ((int)(_102) >> 5))] = float4((half)(half(_5709)), (half)(half(_5710)), (half)(half(_5711)), 1.0f);
    }
    _5729 = ((uint)(_4250 & 24) > (uint)23);
    if (_4322) {
      _5746 = saturate(exp2((_4317 * _4317) * (_122 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _5746 = select((_cavityParams.z > 0.0f), select(_183, 0.0f, _1752), 1.0f);  // [sem: expr_sat]
    }
    _5761 = select(_4319, 1.0f, (select((_cavityParams.x == 0.0f), 1.0f, _5746) * select((_182 && _5729), (1.0f - _1752), 1.0f)));
    _5765 = min(60000.0f, (_5761 * (((_3614 * _3351) * _3619) - min(0.0f, (-0.0f - _5700)))));
    _5766 = min(60000.0f, (_5761 * (((_3615 * _3352) * _3619) - min(0.0f, (-0.0f - _5701)))));
    _5767 = min(60000.0f, (_5761 * (((_3616 * _3353) * _3619) - min(0.0f, (-0.0f - _5702)))));
    _5770 = 1.0f - _renderParams.x;
    _5777 = half((_renderParams.x * _4201) + _5770);
    _5778 = half((_renderParams.x * _4202) + _5770);
    _5779 = half((_renderParams.x * _4203) + _5770);
    if (_4319 && (_renderParams2.x == 0.0f)) {
      _5795 = (half)(exp2((half)((half)(log2(_5777)) * 0.5h)));
      _5796 = (half)(exp2((half)((half)(log2(_5778)) * 0.5h)));
      _5797 = (half)(exp2((half)((half)(log2(_5779)) * 0.5h)));
    } else {
      _5795 = _5777;
      _5796 = _5778;
      _5797 = _5779;
    }
    _5802 = select(((_4318 == 54) || ((_4250 & -5) == 33)), 0.0f, _3898);
    _5803 = float(_5795);
    _5804 = float(_5796);
    _5805 = float(_5797);
    if (_4291) {
      _5812 = saturate(((_5804 + _5803) + _5805) * 1.2f);  // [sem: expr_sat]
    } else {
      _5812 = 1.0f;  // [sem: expr_sat]
    }
    _5813 = float(_5802);
    _5819 = (0.7f / min(max(max(max(_5803, _5804), _5805), 0.01f), 0.7f)) * _5812;
    _5826 = ((_5819 * _5803) + -0.04f) * _5813;
    _5827 = ((_5819 * _5804) + -0.04f) * _5813;
    _5828 = ((_5819 * _5805) + -0.04f) * _5813;
    _5829 = _5826 + 0.04f;
    _5830 = _5827 + 0.04f;
    _5831 = _5828 + 0.04f;
    if (_4348 || (_4414 || (_4413 || ((_4250 == 33) || (_4250 == 54))))) {
      // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
      _5843 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__3__40__0__0__g_samplerClamp, float2(min(0.99f, _1769), (1.0f - max(0.02f, float(_279)))), 0.0f);
      _5847 = _5843.x;
      _5848 = _5843.y;
    } else {
      _5847 = _3612;
      _5848 = _3613;
    }
    _5852 = (_5847 * _5829) + _5848;
    _5853 = (_5847 * _5830) + _5848;
    _5854 = (_5847 * _5831) + _5848;
    _5856 = (1.0f - _5847) - _5848;
    _5863 = ((0.96f - _5826) * 0.04761905f) + _5829;
    _5864 = ((0.96f - _5827) * 0.04761905f) + _5830;
    _5865 = ((0.96f - _5828) * 0.04761905f) + _5831;
    _5882 = saturate(1.0f - _3893);  // [sem: expr_sat]
    _5883 = (((_5852 * _5863) / (1.0f - (_5856 * _5863))) * _5856) * _5882;
    _5884 = (((_5853 * _5864) / (1.0f - (_5856 * _5864))) * _5856) * _5882;
    _5885 = (((_5854 * _5865) / (1.0f - (_5856 * _5865))) * _5856) * _5882;
    _5896 = float(1.0h - _5802);
    _5906 = half(((_5803 * _5896) * saturate((1.0f - _5852) - _5883)) + _5883);
    _5907 = half(((_5804 * _5896) * saturate((1.0f - _5853) - _5884)) + _5884);
    _5908 = half(((_5805 * _5896) * saturate((1.0f - _5854) - _5885)) + _5885);
    _5910 = float(_5906);
    _5911 = float(_5907);
    _5912 = float(_5908);
    if (_4250 == 65) {
      _5916 = max(1e-06f, _exposure2.x);
      _5924 = ((pow(_4407, 16.0f)) * 50.265484f) / (((_5916 * _5916) * 1e+06f) + 1.0f);
      _5941 = (((((_5910 * _5709) * _5924) - _5709) * _1718) + _5709);
      _5942 = (((((_5911 * _5710) * _5924) - _5710) * _1718) + _5710);
      _5943 = (((((_5912 * _5711) * _5924) - _5711) * _1718) + _5711);
    } else {
      _5941 = _5709;
      _5942 = _5710;
      _5943 = _5711;
    }
    _5947 = (min(65535.0f, _5697) + _3902) + (_5941 * _5910);
    _5948 = (min(65535.0f, _5698) + _3903) + (_5942 * _5911);
    _5949 = (min(65535.0f, _5699) + _3904) + (_5943 * _5912);
    _5978 = exp2((saturate(_1075) * 20.0f) + -8.0f) + -0.00390625f;
    _5979 = _5978 * select((_1072 < 0.04045f), (_1072 * 0.07739938f), exp2(log2((_1072 + 0.055f) * 0.94786733f) * 2.4f));
    _5980 = _5978 * select((_1073 < 0.04045f), (_1073 * 0.07739938f), exp2(log2((_1073 + 0.055f) * 0.94786733f) * 2.4f));
    _5981 = _5978 * select((_1074 < 0.04045f), (_1074 * 0.07739938f), exp2(log2((_1074 + 0.055f) * 0.94786733f) * 2.4f));
    _5994 = ((_5979 * 0.61312f) + (_5980 * 0.33951f)) + (_5981 * 0.04737f);
    _5995 = ((_5979 * 0.0702f) + (_5980 * 0.91636f)) + (_5981 * 0.01345f);
    _5996 = ((_5979 * 0.02062f) + (_5980 * 0.10958f)) + (_5981 * 0.8698f);
    if (_1006) {
      _6002 = (_5994 + _5947);
      _6003 = (_5995 + _5948);
      _6004 = (_5996 + _5949);
    } else {
      _6002 = _5947;
      _6003 = _5948;
      _6004 = _5949;
    }
    _6008 = _6002 + (_5765 * _5813);
    _6009 = _6003 + (_5766 * _5813);
    _6010 = _6004 + (_5767 * _5813);
    if (!(((_130 || _132) || _134) || _136)) {
      _6012 = QuadReadLaneAt(_6008, 0);
      _6013 = QuadReadLaneAt(_6009, 0);
      _6014 = QuadReadLaneAt(_6010, 0);
      _6015 = QuadReadLaneAt(_6008, 1);
      _6016 = QuadReadLaneAt(_6009, 1);
      _6017 = QuadReadLaneAt(_6010, 1);
      _6021 = QuadReadLaneAt(_6008, 2);
      _6022 = QuadReadLaneAt(_6009, 2);
      _6023 = QuadReadLaneAt(_6010, 2);
      _6027 = QuadReadLaneAt(_6008, 3);
      _6028 = QuadReadLaneAt(_6009, 3);
      _6029 = QuadReadLaneAt(_6010, 3);
      _6037 = ((((_6015 + _6012) + _6021) + _6027) * 0.25f);
      _6038 = ((((_6016 + _6013) + _6022) + _6028) * 0.25f);
      _6039 = ((((_6017 + _6014) + _6023) + _6029) * 0.25f);
    } else {
      _6037 = _6008;
      _6038 = _6009;
      _6039 = _6010;
    }
    [branch]
    if ((((int)(_102) | (int)(_100)) & 1) == 0) {
      _6044 = dot(float3(_6037, _6038, _6039), float3(0.212671f, 0.71516f, 0.072169f));
      __3__38__0__1__g_diffuseHalfPrevUAV[int2(((int)(_100) >> 1), ((int)(_102) >> 1))] = float4(min(60000.0f, _6037), min(60000.0f, _6038), min(60000.0f, _6039), min(60000.0f, select((_2334 != 0), (-0.0f - _6044), _6044)));
    }
    if (_5729) {
      _6065 = ((_5802 == 0.0h) && (((_5906 < 0.010002136h) && (_5907 < 0.010002136h)) && (_5908 < 0.010002136h)));
    } else {
      _6065 = false;
    }
    if ((_5729 || ((_4250 == 96) || (_4414 || ((_4250 & -4) == 64)))) || ((_122 <= 10.0f) && _4348)) {
      __3__38__0__1__g_sceneSpecularUAV[int2(_100, _102)] = float4(((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _5765)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _5766)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _5767)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _3365)))))));
      _6098 = _6002;
      _6099 = _6003;
      _6100 = _6004;
    } else {
      _6098 = (_6002 + _5765);
      _6099 = (_6003 + _5766);
      _6100 = (_6004 + _5767);
    }
    if (_1006 && ((uint)((int)(_4250) + (int)(-52)) > (uint)15)) {
      _6105 = dot(float3(_5994, _5995, _5996), float3(0.212671f, 0.71516f, 0.072169f));
      _6109 = max((max(_6105, 1.0f) / max(_6105, 0.1f)), 0.0f);
      _6120 = ((_6098 - _5994) + (_6109 * _5994));
      _6121 = ((_6099 - _5995) + (_6109 * _5995));
      _6122 = ((_6100 - _5996) + (_6109 * _5996));
    } else {
      _6120 = _6098;
      _6121 = _6099;
      _6122 = _6100;
    }
    _6123 = min(60000.0f, _6120);
    _6124 = min(60000.0f, _6121);
    _6125 = min(60000.0f, _6122);
    if (!_127) {
      [branch]
      if (_6065) {
        _6130 = __3__38__0__1__g_sceneColorUAV[int2(_100, _102)].x;
        _6131 = __3__38__0__1__g_sceneColorUAV[int2(_100, _102)].y;
        _6132 = __3__38__0__1__g_sceneColorUAV[int2(_100, _102)].z;
        _6137 = (_6130 + _6123);
        _6138 = (_6131 + _6124);
        _6139 = (_6132 + _6125);
      } else {
        _6137 = _6123;
        _6138 = _6124;
        _6139 = _6125;
      }
      if (!(_renderParams.y == 0.0f)) {
        _6148 = dot(float3(_6137, _6138, _6139), float3(0.212671f, 0.71516f, 0.072169f));
        _6149 = min((max(0.01f, _exposure3.w) * 4096.0f), _6148);
        _6153 = max(1e-09f, _6148);
        _6158 = ((_6149 * _6137) / _6153);
        _6159 = ((_6149 * _6138) / _6153);
        _6160 = ((_6149 * _6139) / _6153);
      } else {
        _6158 = _6137;
        _6159 = _6138;
        _6160 = _6139;
      }
      __3__38__0__1__g_sceneColorUAV[int2(_100, _102)] = float4(_6158, _6159, _6160, 1.0f);
    }
  }
}
