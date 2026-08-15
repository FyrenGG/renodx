Texture2D<float4> __3__36__0__0__g_puddleMask : register(t136, space36);

Texture2D<float4> __3__36__0__0__g_climateSandTex : register(t137, space36);

Texture2D<uint16_t> __3__36__0__0__g_sceneDecalMask : register(t138, space36);

Texture2D<float2> __3__36__0__0__g_texNetDensity : register(t74, space36);

Texture3D<float> __3__36__0__0__g_texCloudVolumeShadow : register(t201, space36);

Texture2D<float4> __3__36__0__0__g_specularResult : register(t152, space36);

Texture2D<float2> __3__36__0__0__g_iblBrdfLookup : register(t154, space36);

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

SamplerState __3__40__0__0__g_samplerPoint : register(s4, space40);

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
  int _62;
  int _63;
  int4 _71;
  int _81;
  int _85;
  uint _91;
  uint _93;
  float _96;
  float _97;
  float _101;
  float _102;
  float _104;
  uint2 _107;
  int _109;
  float _112;
  float _113;
  bool _118;
  float _119;
  float _120;
  bool _121;
  float _122;
  bool _123;
  float _124;
  bool _125;
  float _126;
  bool _127;
  half _268;
  half _269;
  half _270;
  half _271;
  half _272;
  half _273;
  int _457;
  int _506;
  int _507;
  float _508;
  float _509;
  bool _610;
  float _831;
  float _832;
  bool _1026;
  half _1034;
  float _1087;
  float _1098;
  float _1099;
  float _1107;
  float _1108;
  half _1109;
  half _1110;
  half _1111;
  half _1112;
  half _1113;
  bool _1143;
  float _1152;
  float _1193;
  float _1194;
  float _1282;
  float _1360;
  float _1517;
  float _1518;
  float _1519;
  float _1520;
  float _1683;
  int _1684;
  float _1741;
  float _1752;
  float _1783;
  float _1868;
  float _1869;
  float _1870;
  float _1871;
  float _1876;
  float _1901;
  float _1929;
  bool _1940;
  half _1947;
  float _2084;
  float _2134;
  float _2151;
  float _2155;
  half _2176;
  half _2179;
  half _2180;
  float _2286;
  float _2332;
  float _2347;
  float _2447;
  int _2448;
  int _2449;
  float _2450;
  float _2451;
  float _2452;
  float _2453;
  float _2607;
  float _2608;
  float _2609;
  float _2610;
  float _2674;
  float _2684;
  float _2685;
  float _2686;
  bool _2761;
  bool _2762;
  float _2798;
  float _2799;
  float _2800;
  float _2801;
  float _2867;
  float _2870;
  float _2871;
  float _2872;
  float _2873;
  float _2908;
  float _2909;
  float _2910;
  float _2925;
  float _2954;
  float _2955;
  float _2956;
  float _2957;
  float _2958;
  half _2965;
  half _2966;
  half _2967;
  half _2968;
  half _2969;
  float _2970;
  half _3009;
  half _3010;
  half _3011;
  float _3026;
  float _3027;
  float _3028;
  float _3048;
  float _3113;
  float _3210;
  float _3211;
  float _3212;
  bool _3269;
  bool _3278;
  bool _3281;
  bool _3282;
  int _3296;
  float _3339;
  float _3340;
  float _3341;
  bool _3421;
  float _3429;
  float _3440;
  float _3475;
  float _3482;
  float _3483;
  float _3484;
  float _3533;
  float _3534;
  float _3535;
  float _3544;
  float _3588;
  half _3640;
  half _3641;
  half _3642;
  float _3652;
  float _3770;
  float _3771;
  float _3772;
  bool _3798;
  float _3834;
  float _3835;
  float _3836;
  float _3851;
  float _3852;
  float _3853;
  float _3872;
  float _3873;
  float _3874;
  uint4 _136;
  float4 _142;
  half _151;
  half _155;
  half _160;
  half _165;
  half _169;
  uint _172;
  bool _173;
  bool _174;
  float _184;
  float _185;
  float _186;
  float _188;
  half _192;
  half _193;
  half _194;
  int _195;
  bool _196;
  half _213;
  half _214;
  float _219;
  float _220;
  float _224;
  float _226;
  float _233;
  float _234;
  float _235;
  float _237;
  float _240;
  float _241;
  float _242;
  float _243;
  float _250;
  float _251;
  float _252;
  half _275;
  half _276;
  half _277;
  half _278;
  half _282;
  half _283;
  half _284;
  half _300;
  half _301;
  half _302;
  bool _303;
  bool _304;
  bool _305;
  uint _324;
  uint _332;
  uint _340;
  uint _348;
  uint _356;
  uint _364;
  uint _372;
  uint _380;
  uint _388;
  uint _396;
  uint _404;
  uint _412;
  uint _420;
  uint _428;
  uint _436;
  uint _444;
  int _486;
  int _487;
  int4 _512;
  int _517;
  int _521;
  int _525;
  int _529;
  float _556;
  float _561;
  float _562;
  float _563;
  float _564;
  float _565;
  float _566;
  float _567;
  float _568;
  int _569;
  int _570;
  int _571;
  int _572;
  bool _600;
  float _612;
  float _617;
  float _619;
  bool _636;
  bool _637;
  bool _638;
  int4 _667;
  float _686;
  float _687;
  float _688;
  float _690;
  float _694;
  float _695;
  float _696;
  float _712;
  float _713;
  float _714;
  float _716;
  float _735;
  float _736;
  float _737;
  float _739;
  float _758;
  float _759;
  float _760;
  float _762;
  float _767;
  float _780;
  float _781;
  float _782;
  float _783;
  float _788;
  float _791;
  float _794;
  float _797;
  float _800;
  float _833;
  float _834;
  float _835;
  float _836;
  float _837;
  float _838;
  float _839;
  float _840;
  bool _849;
  float _858;
  float _859;
  float _860;
  float _861;
  float _862;
  float _863;
  float _868;
  float _869;
  float _870;
  float _871;
  float _875;
  float _884;
  float _885;
  float _886;
  float _887;
  half4 _889;
  uint _899;
  half4 _900;
  uint _913;
  half4 _914;
  half4 _927;
  float4 _941;
  float4 _948;
  float4 _958;
  float4 _968;
  float _984;
  float _985;
  float _986;
  half2 _988;
  half2 _995;
  half2 _1003;
  half2 _1011;
  float _1036;
  float _1038;
  float _1074;
  float _1075;
  float _1076;
  float _1077;
  float _1079;
  bool _1081;
  uint _1089;
  half _1100;
  bool _1102;
  float _1114;
  float _1115;
  float _1116;
  float _1117;
  float _1118;
  float _1119;
  float _1121;
  int _1122;
  bool _1123;
  float _1180;
  float2 _1187;
  float _1196;
  float _1199;
  float _1200;
  float _1208;
  float _1214;
  float _1215;
  int _1218;
  int _1219;
  float _1220;
  float _1221;
  float _1226;
  float _1227;
  int4 _1229;
  int _1252;
  float _1290;
  float _1291;
  float _1292;
  float _1293;
  float _1297;
  float _1314;
  float _1315;
  float _1318;
  bool _1333;
  float _1335;
  float _1337;
  int _1340;
  bool _1341;
  float _1366;
  float _1371;
  float _1372;
  float _1373;
  float _1374;
  float _1375;
  float _1376;
  float _1377;
  float _1378;
  float _1380;
  float _1393;
  float _1394;
  float _1395;
  float _1396;
  int _1398;
  int _1399;
  int _1400;
  int _1401;
  bool _1423;
  bool _1427;
  bool _1431;
  bool _1435;
  bool _1448;
  bool _1457;
  bool _1479;
  int4 _1522;
  float _1541;
  float _1542;
  float _1543;
  float _1545;
  float _1550;
  float _1565;
  float _1566;
  float _1567;
  float _1569;
  float _1574;
  float _1589;
  float _1590;
  float _1591;
  float _1593;
  float _1598;
  float _1613;
  float _1614;
  float _1615;
  float _1617;
  float _1622;
  float _1625;
  float _1642;
  float _1643;
  float _1644;
  float _1645;
  float _1650;
  float _1652;
  float _1654;
  float _1656;
  float _1658;
  float _1659;
  float _1660;
  float _1661;
  int _1664;
  int _1665;
  int _1673;
  int _1675;
  float _1694;
  uint _1695;
  half4 _1697;
  uint _1702;
  half4 _1703;
  half4 _1708;
  half4 _1713;
  float _1718;
  float _1727;
  float _1732;
  float _1745;
  float _1748;
  float _1753;
  float _1755;
  float4 _1758;
  float _1763;
  float _1765;
  float _1767;
  float _1768;
  float _1769;
  float _1770;
  float _1825;
  float _1842;
  float _1843;
  float _1844;
  float _1847;
  float _1863;
  float _1883;
  float _1884;
  float _1885;
  float _1892;
  float _1893;
  float _1894;
  float _1902;
  float _1908;
  float _1918;
  float _1919;
  float _1920;
  float _1921;
  float _1949;
  float _1953;
  float _1954;
  float _1955;
  float _1961;
  float _1969;
  float _1973;
  float _1977;
  float _1987;
  float _1988;
  float _1989;
  float _1990;
  float _1995;
  float _2000;
  float _2002;
  float _2004;
  float _2028;
  float _2032;
  float _2036;
  float _2040;
  float _2070;
  float _2075;
  float _2076;
  float _2090;
  float _2094;
  float _2099;
  float _2125;
  float _2136;
  float _2142;
  bool _2143;
  float _2162;
  half _2168;
  half _2174;
  float _2181;
  float _2182;
  float _2183;
  float _2196;
  float _2197;
  float _2198;
  float _2199;
  float _2239;
  float _2244;
  float _2245;
  float _2246;
  float _2247;
  float _2257;
  float _2260;
  float _2276;
  float _2314;
  float _2317;
  float _2318;
  float _2319;
  float _2320;
  float _2348;
  float _2359;
  float _2360;
  int _2363;
  int _2364;
  float _2365;
  float _2366;
  int4 _2376;
  int _2383;
  float _2412;
  float _2413;
  float _2414;
  float _2415;
  float _2430;
  float _2431;
  float _2432;
  float _2433;
  bool _2454;
  uint _2455;
  half4 _2457;
  float _2470;
  uint _2476;
  half4 _2477;
  float _2490;
  half4 _2500;
  float _2513;
  half4 _2523;
  float _2536;
  float _2560;
  float _2562;
  float _2564;
  float _2566;
  float _2567;
  float _2576;
  float _2579;
  float _2586;
  float _2611;
  float _2612;
  float _2613;
  float _2626;
  float _2636;
  float _2637;
  float _2638;
  float _2650;
  float _2655;
  bool _2656;
  int _2658;
  bool _2677;
  float _2678;
  float2 _2691;
  float _2702;
  float _2733;
  float4 _2742;
  bool _2772;
  float4 _2792;
  float _2808;
  float _2811;
  float _2824;
  float _2825;
  float _2826;
  float _2831;
  float _2836;
  float _2847;
  float _2865;
  float _2877;
  bool _2878;
  float _2881;
  float _2926;
  float _2927;
  float _2928;
  float _2933;
  float _2936;
  float _2943;
  float _2944;
  half4 _2972;
  float _2976;
  float _2977;
  float _2978;
  uint _2981;
  float _2997;
  float _2998;
  float _2999;
  float _3001;
  bool _3014;
  float _3055;
  float _3057;
  float _3058;
  float _3064;
  float _3069;
  float _3075;
  float _3083;
  float _3090;
  float2 _3117;
  float _3139;
  float _3157;
  float _3158;
  float _3159;
  float _3175;
  float _3183;
  float _3195;
  float _3198;
  float _3204;
  float _3232;
  float _3234;
  float _3241;
  float _3242;
  float _3243;
  float _3244;
  bool _3272;
  float _3283;
  float _3284;
  float _3285;
  float _3301;
  float _3302;
  float _3303;
  float _3304;
  float _3315;
  float _3320;
  float _3321;
  float _3322;
  float _3324;
  float _3325;
  float _3326;
  float _3327;
  float _3342;
  float _3343;
  float _3344;
  float _3345;
  float _3346;
  float _3347;
  float _3348;
  float _3350;
  float _3351;
  float _3352;
  float _3353;
  float _3354;
  float _3355;
  float _3357;
  float _3359;
  float _3362;
  float _3364;
  float _3365;
  float _3366;
  float _3367;
  float _3368;
  float _3369;
  float _3370;
  float _3373;
  float _3374;
  float _3375;
  float _3380;
  float _3381;
  float _3409;
  int _3410;
  bool _3430;
  float _3431;
  float _3432;
  float _3433;
  float _3446;
  float _3456;
  float _3457;
  float _3458;
  float _3459;
  bool _3460;
  bool _3463;
  float _3476;
  float _3487;
  float _3488;
  float _3490;
  float _3493;
  float _3494;
  float _3502;
  float _3503;
  float _3515;
  float _3519;
  float _3551;
  float _3552;
  float _3553;
  uint _3556;
  bool _3571;
  float _3606;
  float _3610;
  float _3611;
  float _3612;
  float _3615;
  half _3622;
  half _3623;
  half _3624;
  float _3643;
  float _3644;
  float _3645;
  float _3653;
  float _3659;
  float _3666;
  float _3667;
  float _3668;
  float _3669;
  float _3670;
  float _3671;
  float _3675;
  float _3676;
  float _3677;
  float _3679;
  float _3686;
  float _3687;
  float _3688;
  float _3705;
  float _3706;
  float _3707;
  float _3708;
  float _3719;
  half _3729;
  half _3730;
  half _3731;
  float _3735;
  float _3736;
  float _3737;
  float _3741;
  float _3742;
  float _3743;
  float _3745;
  float _3746;
  float _3747;
  float _3748;
  float _3749;
  float _3750;
  float _3754;
  float _3755;
  float _3756;
  float _3760;
  float _3761;
  float _3762;
  float _3777;
  float _3837;
  float _3838;
  float _3839;
  float _3844;
  float _3845;
  float _3846;
  float _3862;
  float _3863;
  float _3867;
  int _49[4];
  _62 = (int)(SV_GroupID.x) & 15;
  _63 = (uint)((uint)(_62)) >> 2;
  _71 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 7))]);
  _49[0] = _71.x;
  _49[1] = _71.y;
  _49[2] = _71.z;
  _49[3] = _71.w;
  _81 = _49[(((uint)(SV_GroupID.x) >> 5) & 3)];
  _85 = select((((int)(SV_GroupID.x) & 16) == 0), _81, ((uint)((uint)(_81)) >> 16));
  _91 = (uint)((uint)((uint)((int)((int)(_62) - (int)((int)(_63) << 2)) << 3)) + (uint)(SV_GroupThreadID.x)) + (uint)((uint)(((int)((uint)((uint)(_85)) << 5)) & 8160));
  _93 = (uint)((uint)((uint)((int)(_63) << 3)) + (uint)(SV_GroupThreadID.y)) + (uint)((uint)(((uint)((uint)(_85)) >> 3) & 8160));
  _96 = ((float)((uint)((uint)(_91)))) + 0.5f;
  _97 = ((float)((uint)((uint)(_93)))) + 0.5f;
  _101 = _bufferSizeAndInvSize.z * _96;
  _102 = _97 * _bufferSizeAndInvSize.w;
  _104 = __3__36__0__0__g_depth.Load(int3(_91, _93, 0));  // [sem: _3__36__0__0__g_depth_load]
  _107 = __3__36__0__0__g_stencil.Load(int3(_91, _93, 0));  // [sem: _3__36__0__0__g_stencil_load]
  _109 = _107.x & 127;  // [sem: _3__36__0__0__g_stencil_load_derived]
  _112 = max(1e-07f, _104.x);  // [sem: _3__36__0__0__g_depth_load_derived]
  _113 = _nearFarProj.x / _112;
  _118 = ((_104.x < 1e-07f) || (_104.x == 1.0f)) || (_109 == 10);
  _119 = (float)((bool)(_118));
  _120 = QuadReadLaneAt(_119, 0);
  _121 = !(_120 == 0.0f);
  _122 = QuadReadLaneAt(_119, 1);
  _123 = !(_122 == 0.0f);
  _124 = QuadReadLaneAt(_119, 2);
  _125 = !(_124 == 0.0f);
  _126 = QuadReadLaneAt(_119, 3);
  _127 = !(_126 == 0.0f);
  if (!(((_121 && _123) && _125) && _127)) {
    _136 = __3__36__0__0__g_baseColor.Load(int3(_91, _93, 0));  // [sem: _3__36__0__0__g_baseColor_load]
    _142 = __3__36__0__0__g_normal.Load(int3(_91, _93, 0));  // [sem: _3__36__0__0__g_normal_load]
    _151 = half(((float)((uint)((uint)(((uint)((uint)(_136.x)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _155 = half(((float)((uint)((uint)(_136.x & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _160 = half(((float)((uint)((uint)(((uint)((uint)(_136.y)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _165 = half(((float)((uint)((uint)(((uint)((uint)(_136.w)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _169 = half(((float)((uint)((uint)(_136.w & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _172 = (uint)((_142.w * 3.0f) + 0.5f);  // [sem: _3__36__0__0__g_normal_load_derived]
    _173 = (_172 == 1);
    _174 = (_172 == 3);
    _184 = (saturate(_142.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _185 = (saturate(_142.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _186 = (saturate(_142.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _188 = rsqrt(dot(float3(_184, _185, _186), float3(_184, _185, _186)));  // [sem: invLength]
    _192 = half(_188 * _184);
    _193 = half(_188 * _185);
    _194 = half(_186 * _188);
    _195 = _107.x & 126;  // [sem: _3__36__0__0__g_stencil_load_derived]
    _196 = (_195 == 24);
    if (!_196) {
      _213 = ((half)(_165 * 2.0h)) + -1.0h;
      _214 = ((half)(_169 * 2.0h)) + -1.0h;
      _219 = float(_213 + _214) * 0.5f;
      _220 = float(_213 - _214) * 0.5f;
      _224 = (1.0f - abs(_219)) - abs(_220);
      _226 = rsqrt(dot(float3(_219, _220, _224), float3(_219, _220, _224)));  // [sem: invLength]
      _233 = float(_192);
      _234 = float(_193);
      _235 = float(_194);
      _237 = select((_194 >= 0.0h), 1.0f, -1.0f);
      _240 = -0.0f - (1.0f / (_237 + _235));
      _241 = _234 * _240;
      _242 = _241 * _233;
      _243 = _237 * _233;
      _250 = float(half(_226 * _219));
      _251 = float(half(_226 * _220));
      _252 = float(half(_226 * _224));
      _268 = (half)(half(((float)((uint)((uint)(_136.z & 255)))) * 0.003921569f));
      _269 = (half)(half(((float)((uint)((uint)(_136.y & 255)))) * 0.003921569f));  // [sem: _3__36__0__0__g_baseColor_load_derived]
      _270 = (half)(half(((float)((uint)((uint)(((uint)((uint)(_136.z)) >> 8) & 255)))) * 0.003921569f));
      _271 = (half)(half(mad(_252, _233, mad(_251, _242, (_250 * (((_243 * _233) * _240) + 1.0f))))));
      _272 = (half)(half(mad(_252, _234, mad(_251, ((_241 * _234) + _237), ((_250 * _237) * _242)))));
      _273 = (half)(half(mad(_252, _235, mad(_251, (-0.0f - _234), (-0.0f - (_243 * _250))))));
    } else {
      _268 = _169;
      _269 = 0.0h;  // [sem: _3__36__0__0__g_baseColor_load_derived]
      _270 = _165;
      _271 = _192;
      _272 = _193;
      _273 = _194;
    }
    _275 = rsqrt((half)(dot(half3(_271, _272, _273), half3(_271, _272, _273))));  // [sem: invLength]
    _276 = _275 * _271;
    _277 = _275 * _272;
    _278 = _275 * _273;
    _282 = saturate((half)(_151 * _151));  // [sem: expr_sat]
    _283 = saturate((half)(_155 * _155));  // [sem: expr_sat]
    _284 = saturate((half)(_160 * _160));  // [sem: expr_sat]
    // [sem: expr_sat]
    _300 = saturate((half)(((half)(((half)(_283 * 0.3395996h)) + ((half)(_282 * 0.61328125h)))) + ((half)(_284 * 0.04736328h))));
    // [sem: expr_sat]
    _301 = saturate((half)(((half)(((half)(_283 * 0.9165039h)) + ((half)(_282 * 0.07019043h)))) + ((half)(_284 * 0.013450623h))));
    // [sem: expr_sat]
    _302 = saturate((half)(((half)(((half)(_283 * 0.109558105h)) + ((half)(_282 * 0.020614624h)))) + ((half)(_284 * 0.8696289h))));
    _303 = (_109 == 24);
    _304 = (_109 == 29);
    _305 = _303 || _304;
    if (_304) {
      _324 = (uint)((uint)((_bufferSizeAndInvSize.x * ((float)((int)(_93)))) + ((float)((int)(_91))))) + (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524))));
      _332 = (uint)((uint)((((int)((uint)((uint)((uint)(_324)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_324)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_324)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
      _340 = (uint)((uint)((((int)((uint)((uint)((uint)(_332)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_332)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_332)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_324));
      _348 = (uint)((uint)((((int)((uint)((uint)((uint)(_340)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_340)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_340)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_332));
      _356 = (uint)((uint)((((int)((uint)((uint)((uint)(_348)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_348)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_348)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_340));
      _364 = (uint)((uint)((((int)((uint)((uint)((uint)(_356)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_356)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_356)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_348));
      _372 = (uint)((uint)((((int)((uint)((uint)((uint)(_364)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_364)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_364)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_356));
      _380 = (uint)((uint)((((int)((uint)((uint)((uint)(_372)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_372)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_372)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_364));
      _388 = (uint)((uint)((((int)((uint)((uint)((uint)(_380)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_380)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_380)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_372));
      _396 = (uint)((uint)((((int)((uint)((uint)((uint)(_388)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_388)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_388)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_380));
      _404 = (uint)((uint)((((int)((uint)((uint)((uint)(_396)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_396)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_396)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_388));
      _412 = (uint)((uint)((((int)((uint)((uint)((uint)(_404)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_404)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_404)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_396));
      _420 = (uint)((uint)((((int)((uint)((uint)((uint)(_412)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_412)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_412)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_404));
      _428 = (uint)((uint)((((int)((uint)((uint)((uint)(_420)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_420)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_420)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_412));
      _436 = (uint)((uint)((((int)((uint)((uint)((uint)(_428)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_428)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_428)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_420));
      _444 = (uint)((uint)((((int)((uint)((uint)((uint)(_436)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_436)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_436)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_428));
      if ((_436 & 16777215) == 0) {
        _457 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_444)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_444)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_444)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_436))));
      } else {
        _457 = _436;
      }
      _486 = (int)(min(max(((((saturate(1.0f - (_113 * 0.015625f)) * 4.0f) * ((((float)((uint)((uint)(((int)((uint)((uint)(_457)) * (uint)(48271))) & 16777215)))) * 1.1920929e-07f) + -1.0f)) + ((float)((int)((int)((uint)((uint)(max((int)(1), (int)(_91)))) + (uint)(-1)))))) * 0.5f), 0.0f), ((_bufferSizeAndInvSize.x * 0.5f) + -2.0f)));
      _487 = (int)(min(max((((float)((int)((int)((uint)((uint)(max((int)(1), (int)(_93)))) + (uint)(-1))))) * 0.5f), 0.0f), ((_bufferSizeAndInvSize.y * 0.5f) + -2.0f)));
      _506 = _486;
      _507 = _487;
      _508 = ((_bufferSizeAndInvSize.z * 2.0f) * (((float)((int)(_486))) + 0.5f));
      _509 = ((_bufferSizeAndInvSize.w * 2.0f) * (((float)((int)(_487))) + 0.5f));
    } else {
      _506 = ((int)((int)((uint)((uint)(max((int)(1), (int)(_91)))) + (uint)(-1))) >> 1);
      _507 = ((int)((int)((uint)((uint)(max((int)(1), (int)(_93)))) + (uint)(-1))) >> 1);
      _508 = _101;
      _509 = _102;
    }
    _512 = __3__36__0__0__g_normalDepthHalf.GatherGreen(__3__40__0__0__g_samplerPoint, float2(_508, _509));  // [sem: _3__36__0__0__g_normalDepthHalf_gather]
    _517 = (uint)((uint)(_512.w)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _521 = (uint)((uint)(_512.z)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _525 = (uint)((uint)(_512.x)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _529 = (uint)((uint)(_512.y)) >> 24;  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _556 = (max(0.0f, (_113 + -1.0f)) * 0.05f) * _temporalReprojectionParams.y;
    _561 = max(0.0f, (abs(_113 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_512.w & 16777215)))) * 5.960465e-08f)))) - _556));
    _562 = max(0.0f, (abs(_113 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_512.z & 16777215)))) * 5.960465e-08f)))) - _556));
    _563 = max(0.0f, (abs(_113 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_512.x & 16777215)))) * 5.960465e-08f)))) - _556));
    _564 = max(0.0f, (abs(_113 - (_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_512.y & 16777215)))) * 5.960465e-08f)))) - _556));
    _565 = _561 * _561;
    _566 = _562 * _562;
    _567 = _563 * _563;
    _568 = _564 * _564;
    _569 = _517 & 127;
    _570 = _521 & 127;
    _571 = _525 & 127;
    _572 = _529 & 127;
    _600 = ((uint)_109 > (uint)11);
    if (_600) {
      if (!(((uint)_109 < (uint)21) || (_109 == 107))) {
        _610 = (_109 == 7);
      } else {
        _610 = true;
      }
    } else {
      if (!(_109 == 6)) {
        _610 = (_109 == 7);
      } else {
        _610 = true;
      }
    }
    _612 = _113 * _113;
    _617 = (_612 * 0.2f) + 1.0f;
    _619 = select(_610, -7.213475f, -72.13475f) * (1.0f / ((select(_610, 0.05f, 0.01f) * _612) + 1.0f));
    _636 = (_195 == 66);
    _637 = (_109 == 53);
    _638 = _636 || _637;
    _667 = __3__36__0__0__g_normalDepthHalf.GatherRed(__3__40__0__0__g_samplerPoint, float2(_508, _509));  // [sem: _3__36__0__0__g_normalDepthHalf_gather]
    _686 = min(1.0f, ((((float)((uint)((uint)(_667.w & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _687 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_667.w)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _688 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_667.w)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _690 = rsqrt(dot(float3(_686, _687, _688), float3(_686, _687, _688)));  // [sem: invLength]
    _694 = float(_276);
    _695 = float(_277);
    _696 = float(_278);
    _712 = min(1.0f, ((((float)((uint)((uint)(_667.z & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _713 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_667.z)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _714 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_667.z)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _716 = rsqrt(dot(float3(_712, _713, _714), float3(_712, _713, _714)));  // [sem: invLength]
    _735 = min(1.0f, ((((float)((uint)((uint)(_667.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _736 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_667.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _737 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_667.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _739 = rsqrt(dot(float3(_735, _736, _737), float3(_735, _736, _737)));  // [sem: invLength]
    _758 = min(1.0f, ((((float)((uint)((uint)(_667.y & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _759 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_667.y)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _760 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_667.y)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_normalDepthHalf_gather_derived]
    _762 = rsqrt(dot(float3(_758, _759, _760), float3(_758, _759, _760)));  // [sem: invLength]
    _767 = select(_304, 8192.0f, 256.0f);
    _780 = exp2(log2(saturate(dot(float3(_694, _695, _696), float3((_690 * _686), (_690 * _687), (_690 * _688))))) * _767);
    _781 = exp2(log2(saturate(dot(float3(_694, _695, _696), float3((_716 * _712), (_716 * _713), (_716 * _714))))) * _767);
    _782 = exp2(log2(saturate(dot(float3(_694, _695, _696), float3((_739 * _735), (_739 * _736), (_739 * _737))))) * _767);
    _783 = exp2(log2(saturate(dot(float3(_694, _695, _696), float3((_762 * _758), (_762 * _759), (_762 * _760))))) * _767);
    _788 = 1.0f / max(1e-06f, (((_781 + _780) + _782) + _783));
    _791 = ((select((_565 > _617), 0.0f, exp2(_619 * _565)) * ((float)((bool)(!(_638 ^ (((_517 & 126) == 66) || (_569 == 53))))))) * _780) * _788;
    _794 = ((select((_566 > _617), 0.0f, exp2(_619 * _566)) * ((float)((bool)(!(_638 ^ (((_521 & 126) == 66) || (_570 == 53))))))) * _781) * _788;
    _797 = ((select((_567 > _617), 0.0f, exp2(_619 * _567)) * ((float)((bool)(!(_638 ^ (((_525 & 126) == 66) || (_571 == 53))))))) * _782) * _788;
    _800 = ((select((_568 > _617), 0.0f, exp2(_619 * _568)) * ((float)((bool)(!(_638 ^ (((_529 & 126) == 66) || (_572 == 53))))))) * _783) * _788;
    if (_304) {
      _831 = abs(((((float)((int)(_91))) * 0.5f) + -0.25f) - ((float)((int)(_506))));
      _832 = abs(((((float)((int)(_93))) * 0.5f) + -0.25f) - ((float)((int)(_507))));
    } else {
      _831 = (((float)((uint)((uint)((uint)((uint)(_91)) - (uint)((uint)((uint)(_506)) << 1)) - (uint)((uint)(_frameNumber.x & 1))))) * 0.5f);
      _832 = (((float)((uint)((uint)((uint)((uint)(_93)) - (uint)((uint)((uint)(_507)) << 1)) - (uint)((uint)(((uint)((uint)(_frameNumber.x)) >> 1) & 1))))) * 0.5f);
    }
    _833 = saturate(_831);  // [sem: _831_sat]
    _834 = saturate(_832);  // [sem: _832_sat]
    _835 = 1.0f - _833;
    _836 = 1.0f - _834;
    _837 = _836 * _835;
    _838 = _836 * _833;
    _839 = _835 * _834;
    _840 = _834 * _833;
    _849 = (_109 != 29) && ((_800 == 0.0f) && ((_797 == 0.0f) && ((_791 == 0.0f) && (_794 == 0.0f))));
    _858 = saturate(_837 * select(_849, 1.0f, _791));  // [sem: expr_sat]
    _859 = saturate(_838 * select(_849, 1.0f, _794));  // [sem: expr_sat]
    _860 = saturate(_839 * select(_849, 1.0f, _797));  // [sem: expr_sat]
    _861 = saturate(_840 * select(_849, 1.0f, _800));  // [sem: expr_sat]
    _862 = dot(float4(_858, _859, _860, _861), float4(1.0f, 1.0f, 1.0f, 1.0f));
    _863 = max(0.0f, _862);
    _868 = saturate(_858 / _863);  // [sem: expr_sat]
    _869 = saturate(_859 / _863);  // [sem: expr_sat]
    _870 = saturate(_860 / _863);  // [sem: expr_sat]
    _871 = saturate(_861 / _863);  // [sem: expr_sat]
    _875 = (float)((bool)(((((_572 == 6) || ((_572 == 107) || ((uint)((int)(_572) + (int)(-12)) < (uint)9))) || (((_571 == 6) || ((_571 == 107) || ((uint)((int)(_571) + (int)(-12)) < (uint)9))) || (((_569 == 6) || ((_569 == 107) || ((uint)((int)(_569) + (int)(-12)) < (uint)9))) || ((_570 == 6) || ((_570 == 107) || ((uint)((int)(_570) + (int)(-12)) < (uint)9)))))) || _610) && (_862 < 0.0001f)));
    _884 = ((_837 - _868) * _875) + _868;
    _885 = ((_838 - _869) * _875) + _869;
    _886 = ((_839 - _870) * _875) + _870;
    _887 = ((_840 - _871) * _875) + _871;
    half4 _889 = __3__36__0__0__g_diffuseResult.Load(int3(_506, _507, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    _899 = (uint)((uint)(_506)) + (uint)(1);
    half4 _900 = __3__36__0__0__g_diffuseResult.Load(int3(_899, _507, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    _913 = (uint)((uint)(_507)) + (uint)(1);
    half4 _914 = __3__36__0__0__g_diffuseResult.Load(int3(_506, _913, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    half4 _927 = __3__36__0__0__g_diffuseResult.Load(int3(_899, _913, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    _941 = __3__36__0__0__g_specularResult.Load(int3(_506, _507, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _948 = __3__36__0__0__g_specularResult.Load(int3(_899, _507, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _958 = __3__36__0__0__g_specularResult.Load(int3(_506, _913, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _968 = __3__36__0__0__g_specularResult.Load(int3(_899, _913, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _984 = -0.0f - min(0.0f, (-0.0f - ((((float(_889.x) * _884) + (float(_900.x) * _885)) + (float(_914.x) * _886)) + (float(_927.x) * _887))));
    _985 = -0.0f - min(0.0f, (-0.0f - ((((float(_889.y) * _884) + (float(_900.y) * _885)) + (float(_914.y) * _886)) + (float(_927.y) * _887))));
    _986 = -0.0f - min(0.0f, (-0.0f - ((((float(_889.z) * _884) + (float(_900.z) * _885)) + (float(_914.z) * _886)) + (float(_927.z) * _887))));
    half2 _988 = __3__36__0__0__g_sceneAO.Load(int3(_506, _507, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    half2 _995 = __3__36__0__0__g_sceneAO.Load(int3(_899, _507, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    half2 _1003 = __3__36__0__0__g_sceneAO.Load(int3(_506, _913, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    half2 _1011 = __3__36__0__0__g_sceneAO.Load(int3(_899, _913, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    if (_600) {
      if ((uint)_109 < (uint)20) {
        _1034 = 0.0h;
      } else {
        _1026 = ((uint)_109 < (uint)19);
        if ((_109 == 65) || (((_109 == 107) || (_109 == 96)) || _1026)) {
          _1034 = 0.0h;
        } else {
          _1034 = (half)(select(_305, 0.0f, _269));
        }
      }
    } else {
      if ((uint)_109 > (uint)10) {
        _1034 = 0.0h;
      } else {
        _1026 = false;
        if ((_109 == 65) || (((_109 == 107) || (_109 == 96)) || _1026)) {
          _1034 = 0.0h;
        } else {
          _1034 = (half)(select(_305, 0.0f, _269));
        }
      }
    }
    _1036 = (_101 * 2.0f) + -1.0f;
    _1038 = 1.0f - (_102 * 2.0f);
    _1074 = mad((_invViewProjRelative[3].z), _112, mad((_invViewProjRelative[3].y), _1038, ((_invViewProjRelative[3].x) * _1036))) + (_invViewProjRelative[3].w);
    _1075 = (mad((_invViewProjRelative[0].z), _112, mad((_invViewProjRelative[0].y), _1038, ((_invViewProjRelative[0].x) * _1036))) + (_invViewProjRelative[0].w)) / _1074;
    _1076 = (mad((_invViewProjRelative[1].z), _112, mad((_invViewProjRelative[1].y), _1038, ((_invViewProjRelative[1].x) * _1036))) + (_invViewProjRelative[1].w)) / _1074;
    _1077 = (mad((_invViewProjRelative[2].z), _112, mad((_invViewProjRelative[2].y), _1038, ((_invViewProjRelative[2].x) * _1036))) + (_invViewProjRelative[2].w)) / _1074;
    _1079 = rsqrt(dot(float3(_1075, _1076, _1077), float3(_1075, _1076, _1077)));  // [sem: invLength]
    _1081 = ((uint)(_107.x & 24) > (uint)23);  // [sem: _3__36__0__0__g_stencil_load_derived]
    if (_1081) {
      if (_304) {
        _1087 = float(saturate(_270));
      } else {
        _1087 = 0.0f;
      }
      _1089 = (uint)((half)(_268 * 255.0h));
      if (_173) {
        _1098 = select(((_1089 & 128) != 0), 1.0f, 0.0f);
        _1099 = (((float)((uint)((uint)(_1089 & 127)))) * 0.007874016f);
      } else {
        _1098 = 0.0f;
        _1099 = 0.0f;
      }
      _1100 = half(_1099);
      _1102 = (_1100 > 0.99902344h);
      _1107 = _1098;
      _1108 = _1087;
      _1109 = _1100;
      _1110 = (half)(select(_305, 0.010002136f, _270));
      _1111 = (half)(select(_1102, 1.0f, _300));
      _1112 = (half)(select(_1102, 1.0f, _301));
      _1113 = (half)(select(_1102, 1.0f, _302));
    } else {
      _1107 = 0.0f;
      _1108 = 0.0f;
      _1109 = _1034;
      _1110 = _270;
      _1111 = _300;
      _1112 = _301;
      _1113 = _302;
    }
    _1114 = _1079 * _1075;
    _1115 = -0.0f - _1114;
    _1116 = _1079 * _1076;
    _1117 = -0.0f - _1116;
    _1118 = _1079 * _1077;
    _1119 = -0.0f - _1118;
    _1121 = saturate(dot(float3(_1115, _1117, _1119), float3(_694, _695, _696)));  // [sem: expr_sat]
    _1122 = _107.x & 128;  // [sem: _3__36__0__0__g_stencil_load_derived]
    _1123 = (_1122 == 0);
    if (_1123) {
      if ((uint)_109 > (uint)51) {
        if (!(((_107.x & 125) == 105) || ((uint)_109 < (uint)68))) {
          _1143 = (_109 == 98);
        } else {
          _1143 = true;
        }
      } else {
        if ((uint)_109 > (uint)10) {
          if ((uint)_109 < (uint)20) {
            if (_195 == 14) {
              _1143 = (_109 == 98);
            } else {
              _1143 = true;
            }
          } else {
            if (!((_107.x & 125) == 105)) {
              _1143 = (_109 == 98);
            } else {
              _1143 = true;
            }
          }
        } else {
          _1143 = (_109 == 98);
        }
      }
    } else {
      _1143 = true;
    }
    [branch]
    if (_1081) {
      _1152 = (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(_91, _93, 0)))).x) & 16777215)))) * 5.960465e-08f);
    } else {
      _1152 = _104.x;
    }
    _1180 = mad((_projToPrevProj[3].z), _1152, mad((_projToPrevProj[3].y), _1038, ((_projToPrevProj[3].x) * _1036))) + (_projToPrevProj[3].w);
    if (_1143) {
      _1187 = __3__36__0__0__g_velocity.Load(int3(_91, _93, 0));  // [sem: _3__36__0__0__g_velocity_load]
      _1193 = (_1187.x * 2.0f);
      _1194 = (_1187.y * 2.0f);
    } else {
      _1193 = (((mad((_projToPrevProj[0].z), _1152, mad((_projToPrevProj[0].y), _1038, ((_projToPrevProj[0].x) * _1036))) + (_projToPrevProj[0].w)) / _1180) - _1036);
      _1194 = (((mad((_projToPrevProj[1].z), _1152, mad((_projToPrevProj[1].y), _1038, ((_projToPrevProj[1].x) * _1036))) + (_projToPrevProj[1].w)) / _1180) - _1038);
    }
    _1196 = _nearFarProj.x / max(1e-07f, _1152);
    _1199 = (_1193 * 0.5f) + _101;
    _1200 = _102 - (_1194 * 0.5f);
    _1208 = select((((_1199 < 0.0f) || (_1199 > 1.0f)) || ((_1200 < 0.0f) || (_1200 > 1.0f))), 1.0f, 0.0f);
    _1214 = (_bufferSizeAndInvSize.x * _1199) + -0.5f;
    _1215 = (_bufferSizeAndInvSize.y * _1200) + -0.5f;
    _1218 = (int)(floor(_1214));
    _1219 = (int)(floor(_1215));
    _1220 = (float)((int)(_1218));
    _1221 = (float)((int)(_1219));
    _1226 = (_1220 + 0.5f) * _bufferSizeAndInvSize.z;
    _1227 = (_1221 + 0.5f) * _bufferSizeAndInvSize.w;
    _1229 = __3__36__0__0__g_depthOpaquePrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(_1226, _1227));  // [sem: _3__36__0__0__g_depthOpaquePrev_gather]
    _1252 = mad(((uint)((uint)(_1229.w)) >> 24), 16777216, mad(((uint)((uint)(_1229.z)) >> 24), 65536, mad(((uint)((uint)(_1229.y)) >> 24), 256, ((uint)((uint)(_1229.x)) >> 24))));
    if (_1123) {
      if ((uint)_109 > (uint)51) {
        if (!((_109 == 98) || (((_107.x & 125) == 105) || ((uint)_109 < (uint)68)))) {
          _1282 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
        } else {
          _1282 = 0.0f;
        }
      } else {
        if ((uint)_109 > (uint)10) {
          if ((uint)_109 < (uint)20) {
            if (_195 == 14) {
              _1282 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
            } else {
              _1282 = 0.0f;
            }
          } else {
            if (!((_107.x & 125) == 105)) {
              _1282 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
            } else {
              _1282 = 0.0f;
            }
          }
        } else {
          _1282 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
        }
      }
    } else {
      _1282 = 0.0f;
    }
    _1290 = _screenPercentage.x * 2.0f;
    _1291 = _1290 * abs(_101 + -0.5f);
    _1292 = _screenPercentage.y * 2.0f;
    _1293 = _1292 * abs(_102 + -0.5f);
    _1297 = sqrt(dot(float2(_1291, _1293), float2(_1291, _1293)) + 1.0f) * _1196;
    _1314 = _1290 * abs(_1199 + -0.5f);
    _1315 = _1292 * abs(_1200 + -0.5f);
    _1318 = sqrt(dot(float2(_1314, _1315), float2(_1314, _1315)) + 1.0f);
    _1333 = ((uint)((int)(_109) + (int)(-97)) < (uint)2) || _610;
    _1335 = _1196 * _1196;
    _1337 = (_1335 * select(_1333, 0.5f, 0.2f)) + 1.0f;
    _1340 = (int)(_109) + (int)(-52);
    _1341 = ((uint)_1340 < (uint)16);
    if (_1341) {
      _1360 = (1000.0f - (saturate((float)((bool)((sqrt(((_diffViewPosAccurate.x * _diffViewPosAccurate.x) + (_diffViewPosAccurate.y * _diffViewPosAccurate.y)) + (_diffViewPosAccurate.z * _diffViewPosAccurate.z)) * 50.0f) > 1.0f))) * 875.0f));
    } else {
      _1360 = 50.0f;
    }
    _1366 = select(_1341, 0.0f, ((_temporalReprojectionParams.y * 0.1f) * max(0.0f, (_1196 + -1.0f))));
    _1371 = max(0.0f, (abs(_1297 - (_1318 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1229.x & 16777215)))) * 5.960465e-08f))) - _1282))) - _1366));
    _1372 = max(0.0f, (abs(_1297 - (_1318 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1229.y & 16777215)))) * 5.960465e-08f))) - _1282))) - _1366));
    _1373 = max(0.0f, (abs(_1297 - (_1318 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1229.z & 16777215)))) * 5.960465e-08f))) - _1282))) - _1366));
    _1374 = max(0.0f, (abs(_1297 - (_1318 * ((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_1229.w & 16777215)))) * 5.960465e-08f))) - _1282))) - _1366));
    _1375 = _1371 * _1371;
    _1376 = _1372 * _1372;
    _1377 = _1373 * _1373;
    _1378 = _1374 * _1374;
    _1380 = (-1.442695f / ((_1335 * 0.1f) + 1.0f)) * select(_1333, 0.2f, _1360);
    _1393 = select((_1375 > _1337), 0.0f, exp2(_1380 * _1375));
    _1394 = select((_1376 > _1337), 0.0f, exp2(_1376 * _1380));
    _1395 = select((_1377 > _1337), 0.0f, exp2(_1377 * _1380));
    _1396 = select((_1378 > _1337), 0.0f, exp2(_1378 * _1380));
    if (!_1081) {
      _1398 = _1252 & 127;
      _1399 = _1252 & 32512;
      _1400 = _1252 & 8323072;
      _1401 = _1252 & 2130706432;
      _1423 = ((uint)((int)(_1398) + (int)(-52)) < (uint)16);
      _1427 = ((uint)((int)(((uint)((uint)(_1252)) >> 8) & 127) + (int)(-52)) < (uint)16);
      _1431 = ((uint)((int)(((uint)((uint)(_1252)) >> 16) & 127) + (int)(-52)) < (uint)16);
      _1435 = ((uint)((int)(((uint)((uint)(_1252)) >> 24) & 127) + (int)(-52)) < (uint)16);
      _1448 = (_1122 != 0) || _1341;
      _1457 = (_109 == 6);
      _1479 = ((uint)((int)(_109) + (int)(-105)) < (uint)3);
      _1517 = (_1393 * ((float)((bool)((_638 || ((_1398 != 53) && ((_1252 & 126) != 66))) && (!((_1448 ^ (((_1252 & 128) != 0) || _1423)) || ((_1457 ^ (_1398 == 6)) || ((_1341 ^ _1423) || (_1479 ^ ((_1398 == 107) || ((uint)((int)(_1398) + (int)(-105)) < (uint)2)))))))))));
      _1518 = (_1394 * ((float)((bool)((_638 || ((_1399 != 13568) && ((_1252 & 32256) != 16896))) && (!((_1448 ^ (((_1252 & 32768) != 0) || _1427)) || ((_1457 ^ (_1399 == 1536)) || ((_1341 ^ _1427) || (_1479 ^ (((_1252 & 32000) == 26880) || (_1399 == 27136)))))))))));
      _1519 = (_1395 * ((float)((bool)((_638 || ((_1400 != 3473408) && ((_1252 & 8257536) != 4325376))) && (!((_1448 ^ (((_1252 & 8388608) != 0) || _1431)) || ((_1457 ^ (_1400 == 393216)) || ((_1341 ^ _1431) || (_1479 ^ (((_1252 & 8192000) == 6881280) || (_1400 == 6946816)))))))))));
      _1520 = (_1396 * ((float)((bool)((_638 || ((_1401 != 889192448) && ((_1252 & 2113929216) != 1107296256))) && (!((_1448 ^ (((int)_1252 < (int)0) || _1435)) || ((_1457 ^ (_1401 == 100663296)) || ((_1341 ^ _1435) || (_1479 ^ (((_1252 & 2097152000) == 1761607680) || (_1401 == 1778384896)))))))))));
    } else {
      _1517 = _1393;
      _1518 = _1394;
      _1519 = _1395;
      _1520 = _1396;
    }
    _1522 = __3__36__0__0__g_sceneNormalPrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(_1226, _1227));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather]
    _1541 = min(1.0f, ((((float)((uint)((uint)(_1522.w & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1542 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1522.w)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1543 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1522.w)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1545 = rsqrt(dot(float3(_1541, _1542, _1543), float3(_1541, _1542, _1543)));  // [sem: invLength]
    _1550 = saturate(dot(float3(_694, _695, _696), float3((_1545 * _1541), (_1545 * _1542), (_1545 * _1543))));  // [sem: expr_sat]
    _1565 = min(1.0f, ((((float)((uint)((uint)(_1522.z & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1566 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1522.z)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1567 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1522.z)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1569 = rsqrt(dot(float3(_1565, _1566, _1567), float3(_1565, _1566, _1567)));  // [sem: invLength]
    _1574 = saturate(dot(float3(_694, _695, _696), float3((_1569 * _1565), (_1569 * _1566), (_1569 * _1567))));  // [sem: expr_sat]
    _1589 = min(1.0f, ((((float)((uint)((uint)(_1522.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1590 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1522.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1591 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1522.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1593 = rsqrt(dot(float3(_1589, _1590, _1591), float3(_1589, _1590, _1591)));  // [sem: invLength]
    _1598 = saturate(dot(float3(_694, _695, _696), float3((_1593 * _1589), (_1593 * _1590), (_1593 * _1591))));  // [sem: expr_sat]
    _1613 = min(1.0f, ((((float)((uint)((uint)(_1522.y & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1614 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1522.y)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1615 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_1522.y)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1617 = rsqrt(dot(float3(_1613, _1614, _1615), float3(_1613, _1614, _1615)));  // [sem: invLength]
    _1622 = saturate(dot(float3(_694, _695, _696), float3((_1617 * _1613), (_1617 * _1614), (_1617 * _1615))));  // [sem: expr_sat]
    _1625 = select((_637 || (_636 || _1333)), 0.01f, 1.0f);
    _1642 = _1214 - _1220;
    _1643 = _1215 - _1221;
    _1644 = 1.0f - _1642;
    _1645 = 1.0f - _1643;
    _1650 = (_1644 * _1643) * _1517;
    _1652 = (_1643 * _1642) * _1518;
    _1654 = (_1645 * _1642) * _1519;
    _1656 = (_1645 * _1644) * _1520;
    _1658 = saturate(select(_1081, 1.0f, (pow(_1598, _1625))) * _1650);  // [sem: expr_sat]
    _1659 = saturate(select(_1081, 1.0f, (pow(_1622, _1625))) * _1652);  // [sem: expr_sat]
    _1660 = saturate(select(_1081, 1.0f, (pow(_1574, _1625))) * _1654);  // [sem: expr_sat]
    _1661 = saturate(select(_1081, 1.0f, (pow(_1550, _1625))) * _1656);  // [sem: expr_sat]
    _1664 = asint(__3__37__0__0__g_structureCounterBuffer.Load(8));
    _1665 = WaveReadLaneFirst(_1664);
    [branch]
    if (!(_1665 == 0)) {
      _1673 = (((uint)(__3__36__0__0__g_tiledManyLightsMasks.Load(int3(((int)(_91) >> 5), ((int)(_93) >> 5), 0)))).x) & 4;
      _1675 = (uint)((uint)(_1673)) >> 2;
      if (!(_1673 == 0)) {
        _1683 = max((saturate(dot(float3(_984, _985, _986), float3(0.212671f, 0.71516f, 0.072169f)) * 0.01f) * 0.875f), _1208);
        _1684 = _1675;
      } else {
        _1683 = _1208;
        _1684 = _1675;
      }
    } else {
      _1683 = _1208;
      _1684 = 0;
    }
    // [sem: expr_sat]
    _1694 = saturate(max(_1683, (((_environmentLightingHistory[1].w) + _temporalReprojectionParams.w) + _renderParams.y)));
    _1695 = (uint)((uint)(_1219)) + (uint)(1);
    half4 _1697 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1218, _1695, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    _1702 = (uint)((uint)(_1218)) + (uint)(1);
    half4 _1703 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1702, _1695, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    half4 _1708 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1702, _1219, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    half4 _1713 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1218, _1219, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    _1718 = dot(float4(_1658, _1659, _1660, _1661), float4(1.0f, 1.0f, 1.0f, 1.0f));
    // [sem: expr_sat]
    _1727 = saturate(dot(float4(_1658, _1659, _1660, _1661), float4(float(_1697.w), float(_1703.w), float(_1708.w), float(_1713.w))) * (1.0f / max(1.0f, _1718)));
    _1732 = sqrt((_1194 * _1194) + (_1193 * _1193)) * 50.0f;
    if (_1341) {
      _1741 = saturate(1.0f - _1732);  // [sem: expr_sat]
    } else {
      _1741 = (1.0f - (saturate(_1732) * 0.5f));  // [sem: expr_sat]
    }
    _1745 = max(1.0f, (_bufferSizeAndInvSize.w * 2160.0f));
    _1748 = min(31.0f, ((_1741 * 15.0f) * _1745));
    if (_304) {
      _1752 = min(2.0f, _1748);
    } else {
      _1752 = _1748;
    }
    _1753 = select(_303, 1.0f, _1727);
    _1755 = (_1753 * _1753) * 4.0f;
    _1758 = __3__36__0__0__g_manyLightsMoments.SampleLevel(__3__40__0__0__g_sampler, float2(_101, _102), 0.0f);  // [sem: _3__36__0__0__g_manyLightsMoments_sampleLod]
    _1763 = saturate(_1758.w);  // [sem: expr_sat]
    _1765 = 1.0f / max(1e-06f, _1718);
    _1767 = _1765 * _1658;
    _1768 = _1765 * _1659;
    _1769 = _1765 * _1660;
    _1770 = _1765 * _1661;
    if (!((_1765 * _1718) == 0.0f)) {
      _1783 = saturate(saturate(max(_1694, (1.0f / ((saturate(_1755) * _1752) + 1.0f))) + _renderParams.z));  // [sem: expr_sat]
    } else {
      _1783 = 1.0f;  // [sem: expr_sat]
    }
    _1825 = 1.0f / _exposure4.x;
    _1842 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (-0.0f - (min(0.0f, (-0.0f - ((_1770 * float(_1713.x)) + ((_1769 * float(_1708.x)) + ((_1767 * float(_1697.x)) + (_1768 * float(_1703.x))))))) * _exposure4.y)))));
    _1843 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (-0.0f - (min(0.0f, (-0.0f - ((_1770 * float(_1713.y)) + ((_1769 * float(_1708.y)) + ((_1767 * float(_1697.y)) + (_1768 * float(_1703.y))))))) * _exposure4.y)))));
    _1844 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (-0.0f - (min(0.0f, (-0.0f - ((_1770 * float(_1713.z)) + ((_1769 * float(_1708.z)) + ((_1767 * float(_1697.z)) + (_1768 * float(_1703.z))))))) * _exposure4.y)))));
    if (_renderParams.y == 0.0f) {
      _1847 = dot(float3(_1842, _1843, _1844), float3(0.212671f, 0.71516f, 0.072169f));
      _1863 = ((min(_1847, _1758.y) / max(1e-06f, _1847)) * _1763) + saturate(1.0f - _1763);
      _1868 = saturate(((_1763 * 0.5f) * saturate(((_1758.x - _1847) * 2.0f) / max(1e-06f, _1758.x))) + _1783);  // [sem: expr_sat]
      _1869 = (_1863 * _1842);
      _1870 = (_1863 * _1843);
      _1871 = (_1863 * _1844);
    } else {
      _1868 = _1783;  // [sem: expr_sat]
      _1869 = _1842;
      _1870 = _1843;
      _1871 = _1844;
    }
    if (!_303) {
      _1876 = saturate(_1727 + 0.0625f);  // [sem: expr_sat]
    } else {
      _1876 = 0.0f;  // [sem: expr_sat]
    }
    _1883 = ((_984 - _1869) * _1868) + _1869;
    _1884 = ((_985 - _1870) * _1868) + _1870;
    _1885 = ((_986 - _1871) * _1868) + _1871;
    __3__38__0__1__g_diffuseResultUAV[int2(_91, _93)] = float4((half)(half(_1883)), (half)(half(_1884)), (half)(half(_1885)), (half)(half(_1876)));
    _1892 = float(_1111);
    _1893 = float(_1112);
    _1894 = float(_1113);
    if (_109 == 52) {
      _1901 = saturate(((_1893 + _1892) + _1894) * 1.2f);  // [sem: expr_sat]
    } else {
      _1901 = 1.0f;  // [sem: expr_sat]
    }
    _1902 = float(_1109);
    _1908 = (0.7f / min(max(max(max(_1892, _1893), _1894), 0.01f), 0.7f)) * _1901;
    _1918 = (((_1908 * _1892) + -0.04f) * _1902) + 0.04f;
    _1919 = (((_1908 * _1893) + -0.04f) * _1902) + 0.04f;
    _1920 = (((_1908 * _1894) + -0.04f) * _1902) + 0.04f;
    _1921 = select(_1081, 1.0f, ((((float(_995.y) * _885) + (float(_988.y) * _884)) + (float(_1003.y) * _886)) + (float(_1011.y) * _887)));
    if (!_1081) {
      // [sem: expr_sat]
      _1929 = saturate((((1.0f - (float(_988.x) * _884)) - (float(_995.x) * _885)) - (float(_1003.x) * _886)) - (float(_1011.x) * _887));
    } else {
      _1929 = 1.0f;  // [sem: expr_sat]
    }
    if (!((_195 == 96) || (_109 == 98))) {
      if ((uint)((int)(_109) + (int)(-105)) < (uint)2) {
        _1940 = _173;
        _1947 = (half)(select(((_109 == 65) || ((_109 == 107) || _1940)), 0.0f, _1109));
      } else {
        if (!((uint)((int)(_109) + (int)(-11)) < (uint)9)) {
          _1940 = false;
          _1947 = (half)(select(((_109 == 65) || ((_109 == 107) || _1940)), 0.0f, _1109));
        } else {
          _1947 = 0.0h;
        }
      }
    } else {
      _1947 = 0.0h;
    }
    _1949 = dot(float3(_1114, _1116, _1118), float3(_694, _695, _696)) * 2.0f;
    _1953 = _1114 - (_1949 * _694);
    _1954 = _1116 - (_1949 * _695);
    _1955 = _1118 - (_1949 * _696);
    _1961 = dot(float3(_1114, _1116, _1118), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
    _1969 = (_1077 * _1077) + (_1075 * _1075);
    _1973 = sqrt(max(0.0f, (dot(float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z)) - (_1961 * _1961)))) / (sqrt(_1969 + (_1076 * _1076)) + 5.0f);
    _1977 = float(_1110);
    if ((_1110 < 0.099975586h) && (_1973 < 0.125f)) {
      _1987 = select((_1977 < 0.8f), ((__3__36__0__0__g_specularRayHitDistance.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_101, _102), 0.0f)).x), 0.0f) * rsqrt(dot(float3(_1953, _1954, _1955), float3(_1953, _1954, _1955)));
      _1988 = _1987 * _1953;
      _1989 = _1987 * _1954;
      _1990 = _1987 * _1955;
      _1995 = dot(float3(_1988, _1989, _1990), float3((-0.0f - _694), (-0.0f - _695), (-0.0f - _696))) * 2.0f;
      _2000 = ((_1995 * _694) + _1075) + _1988;
      _2002 = ((_1995 * _695) + _1076) + _1989;
      _2004 = ((_1995 * _696) + _1077) + _1990;
      _2028 = mad((_viewProjRelative[0].z), _2004, mad((_viewProjRelative[0].y), _2002, (_2000 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w);
      _2032 = mad((_viewProjRelative[1].z), _2004, mad((_viewProjRelative[1].y), _2002, (_2000 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w);
      _2036 = mad((_viewProjRelative[2].z), _2004, mad((_viewProjRelative[2].y), _2002, (_2000 * (_viewProjRelative[2].x)))) + (_viewProjRelative[2].w);
      _2040 = mad((_viewProjRelative[3].z), _2004, mad((_viewProjRelative[3].y), _2002, (_2000 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
      _2070 = mad((_projToPrevProj[3].w), _2040, mad((_projToPrevProj[3].z), _2036, mad((_projToPrevProj[3].y), _2032, ((_projToPrevProj[3].x) * _2028))));
      _2075 = ((mad((_projToPrevProj[0].w), _2040, mad((_projToPrevProj[0].z), _2036, mad((_projToPrevProj[0].y), _2032, ((_projToPrevProj[0].x) * _2028)))) / _2070) - (_2028 / _2040)) - _1193;
      _2076 = ((mad((_projToPrevProj[1].w), _2040, mad((_projToPrevProj[1].z), _2036, mad((_projToPrevProj[1].y), _2032, ((_projToPrevProj[1].x) * _2028)))) / _2070) - (_2032 / _2040)) - _1194;
      _2084 = max(_1973, saturate(sqrt((_2076 * _2076) + (_2075 * _2075))));
    } else {
      _2084 = _1973;
    }
    _2090 = select((_304 || (_196 || (_renderParams.y > 0.0f))), 1.0f, _1921);
    _2094 = float(_1947);
    _2099 = min(max((_cavityParams.y + -1.0f), 0.0f), 2.0f);
    // [sem: expr_sat]
    _2125 = saturate(saturate(1.0f - (((_2094 * _113) / max(0.001f, _1121)) * 0.001f)) * 1.25f) * saturate(((((-0.05f - (_2099 * 0.075f)) + max(0.02f, _1977)) + (saturate(_113 * 0.025f) * 0.1f)) * min(max((_113 + 1.0f), 5.0f), 50.0f)) * (1.0f - (saturate(_2094) * 0.75f)));
    if (_109 == 64) {
      _2134 = ((saturate(_113 * 0.25f) * (_2125 + -0.39990234f)) + 0.39990234f);
    } else {
      _2134 = _2125;
    }
    _2136 = (_2099 * 16.0f) + 16.0f;
    _2142 = select((_2099 > 1.0f), 0.0f, saturate((1.0f / _2136) * (_113 - _2136)));
    _2143 = (_109 == 105);
    if (_2143) {
      _2151 = 1.0f;
      _2155 = select((_109 == 65), 0.0f, _2151);
    } else {
      if (!_1081) {
        _2151 = select((_109 == 107), 1.0f, ((_2142 + _2134) - (_2142 * _2134)));
        _2155 = select((_109 == 65), 0.0f, _2151);
      } else {
        _2155 = 0.0f;
      }
    }
    _2162 = saturate(select((_lightingParams.y == 0.0f), 1.0f, (1.0f - _2155))) * _2084;
    if ((uint)_109 > (uint)51) {
      if ((uint)_109 < (uint)68) {
        if (_109 == 66) {
          _2176 = (half)(max(0.099975586h, _1110));
          _2179 = _2176;
          _2180 = (half)(max(0.89990234h, _1110));
        } else {
          _2174 = max(0.099975586h, _1110);
          if (_638) {
            _2176 = _2174;
            _2179 = _2176;
            _2180 = (half)(max(0.89990234h, _1110));
          } else {
            _2179 = _2174;
            _2180 = _2174;
          }
        }
      } else {
        _2168 = max(0.099975586h, _1110);
        _2179 = _2168;
        _2180 = _2168;
      }
    } else {
      _2174 = max(0.099975586h, _1110);
      if (_638) {
        _2176 = _2174;
        _2179 = _2176;
        _2180 = (half)(max(0.89990234h, _1110));
      } else {
        _2179 = _2174;
        _2180 = _2174;
      }
    }
    _2181 = float(_2180);
    _2182 = _2181 * _2181;
    _2183 = _2182 * _2182;
    _2196 = (((_2183 * _1598) - _1598) * _1598) + 1.0f;
    _2197 = (((_2183 * _1622) - _1622) * _1622) + 1.0f;
    _2198 = (((_2183 * _1574) - _1574) * _1574) + 1.0f;
    _2199 = (((_2183 * _1550) - _1550) * _1550) + 1.0f;
    _2239 = (((((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1702, _1695, 0))).x) * saturate(_1652)) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1218, _1695, 0))).x) * saturate(_1650))) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1702, _1219, 0))).x) * saturate(_1654))) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1218, _1219, 0))).x) * saturate(_1656));
    _2244 = saturate(select(_304, 1.0f, saturate((_2183 / (_2196 * _2196)) * _1598)) * _1650);  // [sem: expr_sat]
    _2245 = saturate(select(_304, 1.0f, saturate((_2183 / (_2197 * _2197)) * _1622)) * _1652);  // [sem: expr_sat]
    _2246 = saturate(select(_304, 1.0f, saturate((_2183 / (_2198 * _2198)) * _1574)) * _1654);  // [sem: expr_sat]
    _2247 = saturate(select(_304, 1.0f, saturate((_2183 / (_2199 * _2199)) * _1550)) * _1656);  // [sem: expr_sat]
    _2257 = exp2(log2(saturate(max(float(((half)(((half)(1.0h - _1110)) * 0.75h)) * _1947), (1.0f - _1121)))) * 0.1f);
    _2260 = float(((half)(_1110 * _1110)) + 1.0009766h);
    _2276 = select(_304, 1.0f, saturate(((_1745 * _1745) * _1755) * exp2((log2(float(_2179)) * 0.5f) * (((_2162 * 15.0f) * ((_2257 + _2260) / (_2260 - _2257))) + 1.0f))));
    if ((uint)((int)(_109) + (int)(-12)) < (uint)9) {
      _2286 = ((saturate(_113 * 0.005f) * (_2276 + -1.0f)) + 1.0f);
    } else {
      _2286 = _2276;
    }
    _2314 = mad((_projToPrevProj[3].z), _104.x, mad((_projToPrevProj[3].y), _1038, ((_projToPrevProj[3].x) * _1036))) + (_projToPrevProj[3].w);
    _2317 = ((mad((_projToPrevProj[0].z), _104.x, mad((_projToPrevProj[0].y), _1038, ((_projToPrevProj[0].x) * _1036))) + (_projToPrevProj[0].w)) / _2314) - _1036;
    _2318 = ((mad((_projToPrevProj[1].z), _104.x, mad((_projToPrevProj[1].y), _1038, ((_projToPrevProj[1].x) * _1036))) + (_projToPrevProj[1].w)) / _2314) - _1038;
    _2319 = _1193 - _2317;
    _2320 = _1194 - _2318;
    if (_1341 || _1143) {
      _2332 = (31.0f - (saturate(sqrt((_2320 * _2320) + (_2319 * _2319)) * 500.0f) * 24.0f));
    } else {
      _2332 = 63.0f;
    }
    if (_renderParams.z > 0.0f) {
      _2347 = saturate((_2162 * 200.0f) + 0.125f);  // [sem: expr_sat]
    } else {
      _2347 = 0.0f;  // [sem: expr_sat]
    }
    _2348 = max(max(saturate(_1694), saturate(max(0.0f, (1.0f / (((_2286 * _2239) * _2332) + 1.0f))))), _2347);
    [branch]
    if (_1081) {
      _2359 = (_bufferSizeAndInvSize.x * ((_2317 * 0.5f) + _101)) + -0.5f;
      _2360 = (_bufferSizeAndInvSize.y * (_102 - (_2318 * 0.5f))) + -0.5f;
      _2363 = (int)(floor(_2359));
      _2364 = (int)(floor(_2360));
      _2365 = (float)((int)(_2363));
      _2366 = (float)((int)(_2364));
      [branch]
      if (_304) {
        // [sem: _3__36__0__0__g_stencilPrev_gather]
        _2376 = __3__36__0__0__g_stencilPrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(((_2365 + 0.5f) * _bufferSizeAndInvSize.z), ((_2366 + 0.5f) * _bufferSizeAndInvSize.w)));
        _2383 = mad(_2376.w, 16777216, mad(_2376.z, 65536, mad(_2376.y, 256, _2376.x)));
        _2412 = saturate(((float)((bool)(((uint)(_2383 & 24) > (uint)23) && ((_2383 & 127) != 24)))) * _2244);  // [sem: expr_sat]
        _2413 = saturate(((float)((bool)(((uint)(_2383 & 6144) > (uint)5888) && ((_2383 & 32512) != 6144)))) * _2245);  // [sem: expr_sat]
        // [sem: expr_sat]
        _2414 = saturate(((float)((bool)(((uint)(_2383 & 1572864) > (uint)1507328) && ((_2383 & 8323072) != 1572864)))) * _2246);
        // [sem: expr_sat]
        _2415 = saturate(((float)((bool)(((uint)(_2383 & 402653184) > (uint)385875968) && ((_2383 & 2130706432) != 402653184)))) * _2247);
        _2447 = max(saturate(min(max(((_1108 / ((_612 * 0.005f) + 1.0f)) + (_2162 * 500.0f)), 0.03125f), 0.5f) + _2348), saturate(1.0f - dot(float4(_2412, _2413, _2414, _2415), float4(1.0f, 1.0f, 1.0f, 1.0f))));
        _2448 = _2363;
        _2449 = _2364;
        _2450 = _2412;
        _2451 = _2413;
        _2452 = _2414;
        _2453 = _2415;
      } else {
        _2430 = _2359 - _2365;
        _2431 = _2360 - _2366;
        _2432 = 1.0f - _2430;
        _2433 = 1.0f - _2431;
        _2447 = (saturate((sqrt((_2318 * _2318) + (_2317 * _2317)) * 50.0f) + 0.125f) * 0.875f);
        _2448 = _2363;
        _2449 = _2364;
        _2450 = (_2432 * _2431);
        _2451 = (_2431 * _2430);
        _2452 = (_2433 * _2430);
        _2453 = (_2433 * _2432);
      }
    } else {
      _2447 = _2348;
      _2448 = _1218;
      _2449 = _1219;
      _2450 = _2244;
      _2451 = _2245;
      _2452 = _2246;
      _2453 = _2247;
    }
    _2454 = (_2094 > 0.2f);
    _2455 = (uint)((uint)(_2449)) + (uint)(1);
    half4 _2457 = __3__36__0__0__g_specularResultPrev.Load(int3(_2448, _2455, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _2470 = ((float)((bool)(!(_2454 ^ ((half)(_2457.w) < 0.0h))))) * _2450;
    _2476 = (uint)((uint)(_2448)) + (uint)(1);
    half4 _2477 = __3__36__0__0__g_specularResultPrev.Load(int3(_2476, _2455, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _2490 = ((float)((bool)(!(_2454 ^ ((half)(_2477.w) < 0.0h))))) * _2451;
    half4 _2500 = __3__36__0__0__g_specularResultPrev.Load(int3(_2476, _2449, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _2513 = ((float)((bool)(!(_2454 ^ ((half)(_2500.w) < 0.0h))))) * _2452;
    half4 _2523 = __3__36__0__0__g_specularResultPrev.Load(int3(_2448, _2449, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _2536 = ((float)((bool)(!(_2454 ^ ((half)(_2523.w) < 0.0h))))) * _2453;
    _2560 = 1.0f / max(((saturate(_113 * 0.0625f) * 0.000999f) + 1e-06f), dot(float4(_2470, _2490, _2513, _2536), float4(1.0f, 1.0f, 1.0f, 1.0f)));
    _2562 = -0.0f - (min(0.0f, (-0.0f - ((((_2470 * float(_2457.x)) + (_2490 * float(_2477.x))) + (_2513 * float(_2500.x))) + (_2536 * float(_2523.x))))) * _2560);
    _2564 = -0.0f - (min(0.0f, (-0.0f - ((((_2470 * float(_2457.y)) + (_2490 * float(_2477.y))) + (_2513 * float(_2500.y))) + (_2536 * float(_2523.y))))) * _2560);
    _2566 = -0.0f - (min(0.0f, (-0.0f - ((((_2470 * float(_2457.z)) + (_2490 * float(_2477.z))) + (_2513 * float(_2500.z))) + (_2536 * float(_2523.z))))) * _2560);
    _2567 = _2560 * min(0.0f, (-0.0f - ((((_2470 * abs(float(_2457.w))) + (_2490 * abs(float(_2477.w)))) + (_2513 * abs(float(_2500.w)))) + (_2536 * abs(float(_2523.w))))));
    _2576 = max(_2447, saturate((_1977 * _1977) * max(0.0f, saturate(((1.0f - _1921) - _1929) * 2.0f))));
    if (_renderParams.y == 0.0f) {
      _2579 = dot(float3(_2562, _2564, _2566), float3(0.212671f, 0.71516f, 0.072169f));
      _2586 = ((min(_2579, _1758.z) / max(1e-09f, _2579)) * _1763) + saturate(1.0f - _1763);
      // [sem: expr_sat]
      _2607 = saturate(((_1763 * 0.5f) * saturate((((_1977 * 1000.0f) * _2162) * ((float(1.0h / ((half)(8.0h - ((half)(_1110 * 7.0h))))) * _1758.z) - _2579)) / max(1e-06f, _1758.z))) + _2576);
      _2608 = (_2586 * _2562);
      _2609 = (_2586 * _2564);
      _2610 = (_2586 * _2566);
    } else {
      _2607 = _2576;  // [sem: expr_sat]
      _2608 = _2562;
      _2609 = _2564;
      _2610 = _2566;
    }
    _2611 = _2608 * _exposure4.y;
    _2612 = _2609 * _exposure4.y;
    _2613 = _2610 * _exposure4.y;
    _2626 = ((max(0.001f, _1929) + _2567) * _2607) - _2567;
    _2636 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_2090 * ((((_948.x * _885) + (_941.x * _884)) + (_958.x * _886)) + (_968.x * _887))) - _2611) * _2607) + _2611))));
    _2637 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_2090 * ((((_948.y * _885) + (_941.y * _884)) + (_958.y * _886)) + (_968.y * _887))) - _2612) * _2607) + _2612))));
    _2638 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_2090 * ((((_948.z * _885) + (_941.z * _884)) + (_958.z * _886)) + (_968.z * _887))) - _2613) * _2607) + _2613))));
    __3__38__0__1__g_specularResultUAV[int2(_91, _93)] = float4((half)(half(_2636)), (half)(half(_2637)), (half)(half(_2638)), (half)(half(select(_2454, (-0.0f - _2626), _2626))));
    __3__38__0__1__g_specularSampleCountUAV[int2(_91, _93)] = saturate((_2239 * 0.984375f) + 0.015625f);
    _2650 = select(_1081, 0.0f, _2626);
    _2655 = float(half(lerp(_2650, 1.0f, _1977)));
    _2656 = (_195 == 64);
    _2658 = ((int)(uint)(_174)) ^ 1;
    if ((_2658 & ((int)(uint)(_2656))) == 0) {
      _2674 = saturate(exp2((_2655 * _2655) * (_113 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _2674 = select((_cavityParams.z > 0.0f), 0.0f, 1.0f);  // [sem: expr_sat]
    }
    _2677 = (_cavityParams.x == 0.0f);
    _2678 = select(_2677, 1.0f, _2674);
    if (_2656) {
      _2684 = (_2678 * _1918);
      _2685 = (_2678 * _1919);
      _2686 = (_2678 * _1920);
    } else {
      _2684 = _1918;
      _2685 = _1919;
      _2686 = _1920;
    }
    // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
    _2691 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _1121), (1.0f - _2655)), 0.0f);
    _2702 = select((_2656 || _1081), 1.0f, _2678) * _1825;
    if ((uint)_1340 > (uint)15) {
      if ((_109 != 7) && (!((_109 == 6) || ((_195 == 106) || (((uint)((int)(_109) + (int)(-27)) < (uint)2) || ((_109 == 26) || (_1081 || _2143))))))) {
        _2733 = exp2(log2(_2650) * (saturate(_113 * 0.03125f) + 1.0f));
        _2742 = __3__36__0__0__g_puddleMask.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_101, _102), 0.0f);  // [sem: _3__36__0__0__g_puddleMask_sampleLod]
        bool __branch_chain_2727;
        if ((_109 == 15) || ((_195 == 12) || ((_107.x & 124) == 16))) {
          _2761 = false;
          _2762 = true;
          __branch_chain_2727 = true;
        } else {
          if (!((uint)_109 > (uint)10)) {
            _2761 = true;
            _2762 = _2143;
            __branch_chain_2727 = true;
          } else {
            if ((uint)_109 < (uint)20) {
              _2761 = false;
              _2762 = _2143;
              __branch_chain_2727 = true;
            } else {
              if (!(_109 == 97)) {
                _2761 = (_109 != 107);
                _2762 = _2143;
                __branch_chain_2727 = true;
              } else {
                _2954 = _1902;
                _2955 = _1977;
                _2956 = _1892;
                _2957 = _1893;
                _2958 = _1894;
                __branch_chain_2727 = false;
              }
            }
          }
        }
        if (__branch_chain_2727) {
          if (_2742.w < 1.0f) {
            if ((_weatherCheckFlag & 5) == 5) {
              _2772 = (_109 == 36);
              if (!_2772) {
                // [sem: _3__36__0__0__g_climateSandTex_sampleLod]
                _2792 = __3__36__0__0__g_climateSandTex.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((_viewPos.x + _1075) / _climateTextureOnePixelMeter.x) + ((float)((int)((int)(_climateTextureSize.x) >> 1)))) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((_viewPos.z + _1077) / _climateTextureOnePixelMeter.y) + ((float)((int)((int)(_climateTextureSize.y) >> 1)))) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                _2798 = _2792.x;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                _2799 = _2792.y;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                _2800 = _2792.z;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                _2801 = _2792.w;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
              } else {
                _2798 = 0.12f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                _2799 = 0.12f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                _2800 = 0.1f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
                _2801 = 0.5f;  // [sem: _3__36__0__0__g_climateSandTex_sampleLod_derived]
              }
              _2808 = 1.0f - saturate(((_viewPos.y + _1076) - _paramGlobalSand.x) / _paramGlobalSand.y);
              if (!(_2808 <= 0.0f)) {
                _2811 = saturate(_2733);  // [sem: _2733_sat]
                _2824 = ((_2799 * 0.33951f) + (_2798 * 0.61312f)) + (_2800 * 0.04737f);
                _2825 = ((_2799 * 0.91636f) + (_2798 * 0.0702f)) + (_2800 * 0.01345f);
                _2826 = ((_2799 * 0.10958f) + (_2798 * 0.02062f)) + (_2800 * 0.8698f);
                _2831 = select(_2762, 1.0f, ((float)((bool)(saturate(dot(float3(_694, _695, _696), float3(0.0f, 1.0f, 0.0f))) > 0.5f))));
                if (_enableSandAO == 1) {
                  _2836 = 1.0f - _2742.x;  // [sem: _3__36__0__0__g_puddleMask_sampleLod_derived]
                  if (_2772) {
                    _2867 = ((((_2836 * 10.0f) * _2801) * _2808) * _2811);
                    _2870 = _2824;
                    _2871 = _2825;
                    _2872 = _2826;
                    _2873 = saturate(_2867);  // [sem: _2867_sat]
                  } else {
                    _2847 = saturate(_2801 + -0.5f);  // [sem: expr_sat]
                    _2870 = _2824;
                    _2871 = _2825;
                    _2872 = _2826;
                    // [sem: _2867_sat]
                    _2873 = ((((_2847 * 2.0f) * max((_2831 * _2742.x), min((_2811 * ((_2742.x * 7.0f) + 3.0f)), (_2847 * 40.0f)))) + (((_2836 * 10.0f) * _2811) * saturate((0.5f - _2801) * 2.0f))) * _2808);
                  }
                } else {
                  _2865 = ((_2808 * _2801) * _2742.x) * _2831;
                  if (_2772) {
                    _2867 = _2865;
                    _2870 = _2824;
                    _2871 = _2825;
                    _2872 = _2826;
                    _2873 = saturate(_2867);  // [sem: _2867_sat]
                  } else {
                    _2870 = _2824;
                    _2871 = _2825;
                    _2872 = _2826;
                    _2873 = _2865;  // [sem: _2867_sat]
                  }
                }
              } else {
                _2870 = 0.0f;
                _2871 = 0.0f;
                _2872 = 0.0f;
                _2873 = 0.0f;  // [sem: _2867_sat]
              }
              _2877 = ((1.0f - _2742.w) * (1.0f - _2742.y)) * _2873;
              _2878 = (_2877 > 0.0001f);
              if (_2878) {
                if (_2762) {
                  _2881 = saturate(_2877);  // [sem: _2877_sat]
                  _2908 = (((sqrt(_2870 * _1892) - _1892) * _2881) + _1892);
                  _2909 = (((sqrt(_2871 * _1893) - _1893) * _2881) + _1893);
                  _2910 = (((sqrt(_2872 * _1894) - _1894) * _2881) + _1894);
                } else {
                  _2908 = ((_2877 * (_2870 - _1892)) + _1892);
                  _2909 = ((_2877 * (_2871 - _1893)) + _1893);
                  _2910 = ((_2877 * (_2872 - _1894)) + _1894);
                }
              } else {
                _2908 = _1892;
                _2909 = _1893;
                _2910 = _1894;
              }
              if (_2772 && _2878) {
                if (_2762) {
                  _2925 = (((sqrt(_1977 * 0.25f) - _1977) * saturate(_2877)) + _1977);
                } else {
                  _2925 = ((_2877 * (0.25f - _1977)) + _1977);
                }
              } else {
                _2925 = _1977;
              }
              _2926 = saturate(_2908);  // [sem: _2908_sat]
              _2927 = saturate(_2909);  // [sem: _2909_sat]
              _2928 = saturate(_2910);  // [sem: _2910_sat]
              _2933 = (_2925 * (1.0f - _2733)) + _2733;
              _2936 = ((_2925 - _2933) * _2742.y) + _2933;
              _2943 = (((_2733 * _2733) * _2742.z) * ((float)((bool)(_2761)))) * saturate(dot(float3(_694, _695, _696), float3(0.0f, 1.0f, 0.0f)));
              _2944 = _2943 * -0.5f;
              _2954 = (_1902 - (_2733 * _1902));
              _2955 = (_2936 - (_2943 * _2936));
              _2956 = ((_2944 * _2926) + _2926);
              _2957 = ((_2944 * _2927) + _2927);
              _2958 = ((_2944 * _2928) + _2928);
            } else {
              _2954 = _1902;
              _2955 = _1977;
              _2956 = _1892;
              _2957 = _1893;
              _2958 = _1894;
            }
          } else {
            _2954 = _1902;
            _2955 = _1977;
            _2956 = _1892;
            _2957 = _1893;
            _2958 = _1894;
          }
        }
        _2965 = (half)(half(_2954));
        _2966 = (half)(half(_2955));
        _2967 = (half)(half(_2956));
        _2968 = (half)(half(_2957));
        _2969 = (half)(half(_2958));
        _2970 = _2733;
      } else {
        _2965 = _1109;
        _2966 = _1110;
        _2967 = _1111;
        _2968 = _1112;
        _2969 = _1113;
        _2970 = _2650;
      }
    } else {
      _2965 = _1109;
      _2966 = _1110;
      _2967 = _1111;
      _2968 = _1112;
      _2969 = _1113;
      _2970 = _2650;
    }
    half4 _2972 = __3__36__0__0__g_sceneShadowColor.Load(int3(_91, _93, 0));  // [sem: _3__36__0__0__g_sceneShadowColor_load]
    _2976 = float(_2972.x);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    _2977 = float(_2972.y);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    _2978 = float(_2972.z);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    [branch]
    if (_1081) {
      _2981 = __3__36__0__0__g_sceneNormal.Load(int3(_91, _93, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
      _2997 = min(1.0f, ((((float)((uint)((uint)(_2981.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _2998 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2981.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _2999 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2981.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _3001 = rsqrt(dot(float3(_2997, _2998, _2999), float3(_2997, _2998, _2999)));  // [sem: invLength]
      _3009 = (half)(half(_3001 * _2997));
      _3010 = (half)(half(_3001 * _2998));
      _3011 = (half)(half(_3001 * _2999));
    } else {
      _3009 = _276;
      _3010 = _277;
      _3011 = _278;
    }
    _3014 = (_sunDirection.y > 0.0f);
    if ((_3014) || ((!(_3014)) && (_sunDirection.y > _moonDirection.y))) {
      _3026 = _sunDirection.x;
      _3027 = _sunDirection.y;
      _3028 = _sunDirection.z;
    } else {
      _3026 = _moonDirection.x;
      _3027 = _moonDirection.y;
      _3028 = _moonDirection.z;
    }
    if ((_3014) || ((!(_3014)) && (_sunDirection.y > _moonDirection.y))) {
      _3048 = _precomputedAmbient7.y;
    } else {
      _3048 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
    }
    _3055 = _viewPos.x + _1075;
    _3057 = (_earthRadius + _1076) + _viewPos.y;
    _3058 = _viewPos.z + _1077;
    _3064 = sqrt(((_3055 * _3055) + (_3057 * _3057)) + (_3058 * _3058));
    _3069 = dot(float3((_3055 / _3064), (_3057 / _3064), (_3058 / _3064)), float3(_3026, _3027, _3028));
    _3075 = min(max(((_3064 - _earthRadius) / _atmosphereThickness), 16.0f), (_atmosphereThickness + -16.0f));
    _3083 = max(_3075, 0.0f);
    _3090 = (-0.0f - sqrt((_3083 + (_earthRadius * 2.0f)) * _3083)) / (_3083 + _earthRadius);
    if (_3069 > _3090) {
      _3113 = ((exp2(log2(saturate((_3069 - _3090) / (1.0f - _3090))) * 0.2f) * 0.4921875f) + 0.50390625f);
    } else {
      _3113 = ((exp2(log2(saturate((_3090 - _3069) / (_3090 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
    }
    // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
    _3117 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_3075 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f), _3113), 0.0f);
    _3139 = ((_3117.y * 2e-05f) * _mieAerosolDensity) * (_mieAerosolAbsorption + 1.0f);  // [sem: _3__36__0__0__g_texNetDensity_sampleLod_derived]
    _3157 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.0556001e-06f)) * _3117.x) + _3139) * -1.442695f);
    _3158 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 4.9788005e-06f)) * _3117.x) + _3139) * -1.442695f);
    _3159 = exp2(((((_ozoneRatio * 2.1360002e-07f) + (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f)) * _3117.x) + _3139) * -1.442695f);
    _3175 = sqrt(_1969);
    _3183 = (_cloudAltitude - (max(((_3175 * _3175) + -400000.0f), 0.0f) * 1e-06f)) - _viewPos.y;
    _3195 = (_cloudThickness * (0.5f - (((float)((int)((int)((int)(uint)((int)(_3027 > 0.0f))) - (int)((int)(uint)((int)(_3027 < 0.0f)))))) * 0.5f))) + _3183;
    if (_1076 < _3183) {
      _3198 = dot(float3(0.0f, 1.0f, 0.0f), float3(_3026, _3027, _3028));
      _3204 = select((abs(_3198) < 1e-08f), 1e+08f, ((_3195 - dot(float3(0.0f, 1.0f, 0.0f), float3(_1075, _1076, _1077))) / _3198));
      _3210 = ((_3204 * _3026) + _1075);
      _3211 = _3195;
      _3212 = ((_3204 * _3028) + _1077);
    } else {
      _3210 = _1075;
      _3211 = _1076;
      _3212 = _1077;
    }
    _3232 = saturate(abs(_3027) * 4.0f);  // [sem: expr_sat]
    _3234 = (_3232 * _3232) * exp2(((_distanceScale * -1.442695f) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_3210 * 5e-05f) + 0.5f), ((_3211 - _3183) / _cloudThickness), ((_3212 * 5e-05f) + 0.5f)), 0.0f)).x)) * (_cloudScatteringCoefficient / _distanceScale));
    _3241 = ((1.0f - _3234) * saturate(((_1076 - _cloudThickness) - _3183) * 0.1f)) + _3234;
    _3242 = _3241 * (((_3158 * 0.33951f) + (_3157 * 0.61312f)) + (_3159 * 0.04737f));
    _3243 = _3241 * (((_3158 * 0.91636f) + (_3157 * 0.0702f)) + (_3159 * 0.01345f));
    _3244 = _3241 * (((_3158 * 0.10958f) + (_3157 * 0.02062f)) + (_3159 * 0.8698f));
    if (!(_600) || !(((uint)_109 < (uint)20) || (_109 == 107))) {
      _3269 = (_109 == 20);
    } else {
      _3269 = true;
    }
    if (_109 == 19) {
      _3278 = true;
      _3281 = _3278;
      _3282 = (_109 == 106);
    } else {
      _3272 = (_109 == 107);
      if (!((_195 == 26) || (_2143 || (_109 == 28)))) {
        _3278 = _3272;
        _3281 = _3278;
        _3282 = (_109 == 106);
      } else {
        _3281 = _3272;
        _3282 = true;
      }
    }
    _3283 = float(_3009);
    _3284 = float(_3010);
    _3285 = float(_3011);
    if (_109 == 97) {
      _3296 = ((int)((uint)((uint)((int)(min16uint)((int)(((int)(((uint16_t)(__3__36__0__0__g_sceneDecalMask.Load(int3(_91, _93, 0)))).x)) & 2)))) >> 1) + (int)(97));
    } else {
      _3296 = _109;
    }
    _3301 = float(saturate(_193));
    _3302 = _3301 * _3301;
    _3303 = _3302 * _3302;
    _3304 = _3303 * _3303;
    _3315 = ((_3304 * _3304) * select((_304 || (_3281 || _3282)), 0.0f, 1.0f)) * (((float4)(__3__36__0__0__g_puddleMask.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((_bufferSizeAndInvSize.z * _96), (_bufferSizeAndInvSize.w * _97)), 0.0f))).y);
    _3320 = _3283 - (_3315 * _3283);
    _3321 = (_3315 * (1.0f - _3284)) + _3284;
    _3322 = _3285 - (_3315 * _3285);
    _3324 = rsqrt(dot(float3(_3320, _3321, _3322), float3(_3320, _3321, _3322)));  // [sem: invLength]
    _3325 = _3320 * _3324;
    _3326 = _3321 * _3324;
    _3327 = _3322 * _3324;
    if ((_3014) || ((!(_3014)) && (_sunDirection.y > _moonDirection.y))) {
      _3339 = _sunDirection.x;
      _3340 = _sunDirection.y;
      _3341 = _sunDirection.z;
    } else {
      _3339 = _moonDirection.x;
      _3340 = _moonDirection.y;
      _3341 = _moonDirection.z;
    }
    _3342 = _lightingParams.x * _3048;
    _3343 = (((_3242 * 0.61312f) + (_3243 * 0.33951f)) + (_3244 * 0.04737f)) * _3342;
    _3344 = (((_3242 * 0.0702f) + (_3243 * 0.91636f)) + (_3244 * 0.01345f)) * _3342;
    _3345 = (((_3242 * 0.02062f) + (_3243 * 0.10958f)) + (_3244 * 0.8698f)) * _3342;
    _3346 = _3339 - _1114;
    _3347 = _3340 - _1116;
    _3348 = _3341 - _1118;
    _3350 = rsqrt(dot(float3(_3346, _3347, _3348), float3(_3346, _3347, _3348)));  // [sem: invLength]
    _3351 = _3350 * _3346;
    _3352 = _3350 * _3347;
    _3353 = _3350 * _3348;
    _3354 = dot(float3(_3283, _3284, _3285), float3(_3339, _3340, _3341));
    _3355 = dot(float3(_3325, _3326, _3327), float3(_3339, _3340, _3341));
    _3357 = saturate(dot(float3(_3283, _3284, _3285), float3(_1115, _1117, _1119)));  // [sem: expr_sat]
    _3359 = saturate(dot(float3(_3325, _3326, _3327), float3(_3351, _3352, _3353)));  // [sem: expr_sat]
    _3362 = saturate(dot(float3(_3339, _3340, _3341), float3(_3351, _3352, _3353)));  // [sem: expr_sat]
    _3364 = float(max(0.010002136h, _2966));
    _3365 = saturate(_3354);  // [sem: _3354_sat]
    _3366 = _3364 * _3364;
    _3367 = _3366 * _3366;
    _3368 = 1.0f - _3367;
    _3369 = 1.0f - _3362;
    _3370 = _3369 * _3369;
    _3373 = ((_3370 * _3370) * _3369) + _3362;
    _3374 = 1.0f - _3365;
    _3375 = _3374 * _3374;
    _3380 = 1.0f - _3357;
    _3381 = _3380 * _3380;
    // [sem: expr_sat]
    _3409 = saturate((_3365 * 0.31830987f) * ((((((1.0f - ((_3375 * _3375) * (_3374 * 0.75f))) * (1.0f - ((_3381 * _3381) * (_3380 * 0.75f)))) - _3373) * saturate((_3368 * 2.2f) + -0.5f)) + _3373) + ((exp2(-0.0f - (max(((_3368 * 73.2f) + -21.2f), 8.9f) * sqrt(_3359))) * _3362) * ((((_3368 * 34.5f) + -59.0f) * _3368) + 24.5f))));
    _3410 = _3296 & 126;
    bool __branch_chain_3338;
    if ((_3296 == 98) || (_3410 == 96)) {
      _3421 = true;
      __branch_chain_3338 = true;
    } else {
      if ((uint)((int)(_3296) + (int)(-105)) < (uint)2) {
        _3421 = _173;
        __branch_chain_3338 = true;
      } else {
        if (!((uint)((int)(_3296) + (int)(-11)) < (uint)9)) {
          _3421 = false;
          __branch_chain_3338 = true;
        } else {
          __branch_chain_3338 = false;
        }
      }
    }
    if (__branch_chain_3338) {
      if ((_3296 == 65) || ((_3296 == 107) || _3421)) {
        _3429 = 0.0f;
      } else {
        _3429 = float(_2965);
      }
    } else {
      _3429 = 0.0f;
    }
    _3430 = (_3296 == 52);
    _3431 = float(_2967);
    _3432 = float(_2968);
    _3433 = float(_2969);
    if (_3430) {
      _3440 = saturate(((_3432 + _3431) + _3433) * 1.2f);  // [sem: expr_sat]
    } else {
      _3440 = 1.0f;  // [sem: expr_sat]
    }
    _3446 = (0.7f / min(max(max(max(_3431, _3432), _3433), 0.01f), 0.7f)) * _3440;
    _3456 = (((_3446 * _3431) + -0.04f) * _3429) + 0.04f;
    _3457 = (((_3446 * _3432) + -0.04f) * _3429) + 0.04f;
    _3458 = (((_3446 * _3433) + -0.04f) * _3429) + 0.04f;
    _3459 = float(_2966);
    _3460 = (_3410 == 64);
    _3463 = ((((int)(uint)(_3460)) & _2658) == 0);
    if (_3463) {
      _3475 = saturate(exp2((_3459 * _3459) * (_113 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _3475 = select((_cavityParams.z > 0.0f), 0.0f, 1.0f);  // [sem: expr_sat]
    }
    _3476 = select(_2677, 1.0f, _3475);
    if (_3460) {
      _3482 = (_3476 * _3456);
      _3483 = (_3476 * _3457);
      _3484 = (_3476 * _3458);
    } else {
      _3482 = _3456;
      _3483 = _3457;
      _3484 = _3458;
    }
    _3487 = saturate(1.0f - saturate(dot(float3(_1115, _1117, _1119), float3(_3351, _3352, _3353))));  // [sem: expr_sat]
    _3488 = _3487 * _3487;
    _3490 = (_3488 * _3488) * _3487;
    _3493 = _3490 * saturate(_3483 * 50.0f);
    _3494 = 1.0f - _3490;
    if (!_304) {
      _3502 = saturate(_3355);  // [sem: _3355_sat]
      _3503 = 1.0f - _3366;
      _3515 = (((_3367 * _3359) - _3359) * _3359) + 1.0f;
      _3519 = (_3367 / ((_3515 * _3515) * 3.1415927f)) * (0.5f / ((((_3503 * _3357) + _3366) * _3355) + (((_3503 * _3355) + _3366) * _3357)));
      _3533 = ((_3502 * _2976) * max((_3519 * ((_3494 * _3482) + _3493)), 0.0f));
      _3534 = ((_3502 * _2977) * max((_3519 * ((_3494 * _3483) + _3493)), 0.0f));
      _3535 = ((_3502 * _2978) * max((_3519 * ((_3494 * _3484) + _3493)), 0.0f));
    } else {
      _3533 = 0.0f;
      _3534 = 0.0f;
      _3535 = 0.0f;
    }
    if (_3269 || (_3410 == 6)) {
      _3544 = ((max(0.0f, (0.3f - _3354)) * 0.23190688f) + _3409);
    } else {
      _3544 = _3409;
    }
    _3551 = ((_2976 * _3544) * _3343) + (_1883 * _1825);
    _3552 = ((_2977 * _3544) * _3344) + (_1884 * _1825);
    _3553 = ((_2978 * _3544) * _3345) + (_1885 * _1825);
    _3556 = (uint)((uint)(_frameNumber.x)) * (uint)(13);
    [branch]
    if ((((int)((int)((uint)((uint)(_3556)) + (uint)((uint)(_91)))) | (int)((int)((uint)((uint)(_3556)) + (uint)((uint)(_93))))) & 31) == 0) {
      __3__38__0__1__g_sceneColorLightingOnlyForAwbUAV[int2(((int)(_91) >> 5), ((int)(_93) >> 5))] = float4((half)(half(_3551)), (half)(half(_3552)), (half)(half(_3553)), 1.0f);
    }
    _3571 = ((uint)(_3296 & 24) > (uint)23);
    if (_3463) {
      _3588 = saturate(exp2((_3459 * _3459) * (_113 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _3588 = select((_cavityParams.z > 0.0f), select(_174, 0.0f, _1107), 1.0f);  // [sem: expr_sat]
    }
    _3606 = select(_3460, 1.0f, (select((_cavityParams.x == 0.0f), 1.0f, _3588) * select((_173 && _3571), (1.0f - _1107), 1.0f)));
    _3610 = min(60000.0f, (_3606 * (((((_2691.x * _2684) + _2691.y) * _2636) * _2702) - min(0.0f, (-0.0f - (_3343 * _3533))))));
    _3611 = min(60000.0f, (_3606 * (((((_2691.x * _2685) + _2691.y) * _2637) * _2702) - min(0.0f, (-0.0f - (_3344 * _3534))))));
    _3612 = min(60000.0f, (_3606 * (((((_2691.x * _2686) + _2691.y) * _2638) * _2702) - min(0.0f, (-0.0f - (_3345 * _3535))))));
    _3615 = 1.0f - _renderParams.x;
    _3622 = half((_renderParams.x * _3431) + _3615);
    _3623 = half((_renderParams.x * _3432) + _3615);
    _3624 = half((_renderParams.x * _3433) + _3615);
    if (_3460 && (_renderParams2.x == 0.0f)) {
      _3640 = (half)(exp2((half)((half)(log2(_3622)) * 0.5h)));
      _3641 = (half)(exp2((half)((half)(log2(_3623)) * 0.5h)));
      _3642 = (half)(exp2((half)((half)(log2(_3624)) * 0.5h)));
    } else {
      _3640 = _3622;
      _3641 = _3623;
      _3642 = _3624;
    }
    _3643 = float(_3640);
    _3644 = float(_3641);
    _3645 = float(_3642);
    if (_3430) {
      _3652 = saturate(((_3644 + _3643) + _3645) * 1.2f);  // [sem: expr_sat]
    } else {
      _3652 = 1.0f;  // [sem: expr_sat]
    }
    _3653 = float(_2965);
    _3659 = (0.7f / min(max(max(max(_3643, _3644), _3645), 0.01f), 0.7f)) * _3652;
    _3666 = ((_3659 * _3643) + -0.04f) * _3653;
    _3667 = ((_3659 * _3644) + -0.04f) * _3653;
    _3668 = ((_3659 * _3645) + -0.04f) * _3653;
    _3669 = _3666 + 0.04f;
    _3670 = _3667 + 0.04f;
    _3671 = _3668 + 0.04f;
    _3675 = (_3669 * _2691.x) + _2691.y;
    _3676 = (_3670 * _2691.x) + _2691.y;
    _3677 = (_3671 * _2691.x) + _2691.y;
    _3679 = (1.0f - _2691.y) - _2691.x;
    _3686 = ((0.96f - _3666) * 0.04761905f) + _3669;
    _3687 = ((0.96f - _3667) * 0.04761905f) + _3670;
    _3688 = ((0.96f - _3668) * 0.04761905f) + _3671;
    _3705 = saturate(1.0f - _2970);  // [sem: expr_sat]
    _3706 = (((_3675 * _3686) / (1.0f - (_3686 * _3679))) * _3679) * _3705;
    _3707 = (((_3676 * _3687) / (1.0f - (_3687 * _3679))) * _3679) * _3705;
    _3708 = (((_3677 * _3688) / (1.0f - (_3688 * _3679))) * _3679) * _3705;
    _3719 = float(1.0h - _2965);
    _3729 = half(((_3643 * _3719) * saturate((1.0f - _3706) - _3675)) + _3706);
    _3730 = half(((_3644 * _3719) * saturate((1.0f - _3707) - _3676)) + _3707);
    _3731 = half(((_3645 * _3719) * saturate((1.0f - _3708) - _3677)) + _3708);
    _3735 = float(_3729) * _3551;
    _3736 = float(_3730) * _3552;
    _3737 = float(_3731) * _3553;
    _3741 = _3735 + (_3610 * _3653);
    _3742 = _3736 + (_3611 * _3653);
    _3743 = _3737 + (_3612 * _3653);
    if (!(((_121 || _123) || _125) || _127)) {
      _3745 = QuadReadLaneAt(_3741, 0);
      _3746 = QuadReadLaneAt(_3742, 0);
      _3747 = QuadReadLaneAt(_3743, 0);
      _3748 = QuadReadLaneAt(_3741, 1);
      _3749 = QuadReadLaneAt(_3742, 1);
      _3750 = QuadReadLaneAt(_3743, 1);
      _3754 = QuadReadLaneAt(_3741, 2);
      _3755 = QuadReadLaneAt(_3742, 2);
      _3756 = QuadReadLaneAt(_3743, 2);
      _3760 = QuadReadLaneAt(_3741, 3);
      _3761 = QuadReadLaneAt(_3742, 3);
      _3762 = QuadReadLaneAt(_3743, 3);
      _3770 = ((((_3748 + _3745) + _3754) + _3760) * 0.25f);
      _3771 = ((((_3749 + _3746) + _3755) + _3761) * 0.25f);
      _3772 = ((((_3750 + _3747) + _3756) + _3762) * 0.25f);
    } else {
      _3770 = _3741;
      _3771 = _3742;
      _3772 = _3743;
    }
    [branch]
    if ((((int)(_93) | (int)(_91)) & 1) == 0) {
      _3777 = dot(float3(_3770, _3771, _3772), float3(0.212671f, 0.71516f, 0.072169f));
      __3__38__0__1__g_diffuseHalfPrevUAV[int2(((int)(_91) >> 1), ((int)(_93) >> 1))] = float4(min(60000.0f, _3770), min(60000.0f, _3771), min(60000.0f, _3772), min(60000.0f, select((_1684 != 0), (-0.0f - _3777), _3777)));
    }
    if (_3571) {
      _3798 = ((_2965 == 0.0h) && (((_3729 < 0.010002136h) && (_3730 < 0.010002136h)) && (_3731 < 0.010002136h)));
    } else {
      _3798 = false;
    }
    if ((_3571 || ((_3296 == 96) || ((_3296 == 53) || ((_3296 & 124) == 64)))) || ((!(_3571 || ((_3296 == 96) || ((_3296 == 53) || ((_3296 & 124) == 64))))) && ((_113 <= 10.0f) && ((uint)((int)(_3296) + (int)(-97)) < (uint)2)))) {
      __3__38__0__1__g_sceneSpecularUAV[int2(_91, _93)] = float4(((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _3610)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _3611)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _3612)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _2650)))))));
      _3834 = _3735;
      _3835 = _3736;
      _3836 = _3737;
    } else {
      _3834 = (_3735 + _3610);
      _3835 = (_3736 + _3611);
      _3836 = (_3737 + _3612);
    }
    _3837 = min(60000.0f, _3834);
    _3838 = min(60000.0f, _3835);
    _3839 = min(60000.0f, _3836);
    if (!_118) {
      [branch]
      if (_3798) {
        _3844 = __3__38__0__1__g_sceneColorUAV[int2(_91, _93)].x;
        _3845 = __3__38__0__1__g_sceneColorUAV[int2(_91, _93)].y;
        _3846 = __3__38__0__1__g_sceneColorUAV[int2(_91, _93)].z;
        _3851 = (_3844 + _3837);
        _3852 = (_3845 + _3838);
        _3853 = (_3846 + _3839);
      } else {
        _3851 = _3837;
        _3852 = _3838;
        _3853 = _3839;
      }
      if (!(_renderParams.y == 0.0f)) {
        _3862 = dot(float3(_3851, _3852, _3853), float3(0.212671f, 0.71516f, 0.072169f));
        _3863 = min((max(0.01f, _exposure3.w) * 4096.0f), _3862);
        _3867 = max(1e-09f, _3862);
        _3872 = ((_3863 * _3851) / _3867);
        _3873 = ((_3863 * _3852) / _3867);
        _3874 = ((_3863 * _3853) / _3867);
      } else {
        _3872 = _3851;
        _3873 = _3852;
        _3874 = _3853;
      }
      __3__38__0__1__g_sceneColorUAV[int2(_91, _93)] = float4(_3872, _3873, _3874, 1.0f);
    }
  }
}
