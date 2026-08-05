struct anon {
  uint4 g_tileIndex[4096];
};


Texture2D<float4> __3__36__0__0__g_puddleMask : register(t139, space36);

Texture2D<float4> __3__36__0__0__g_climateSandTex : register(t140, space36);

Texture2D<uint16_t> __3__36__0__0__g_sceneDecalMask : register(t141, space36);

Texture2D<float2> __3__36__0__0__g_texNetDensity : register(t106, space36);

Texture3D<float> __3__36__0__0__g_texCloudVolumeShadow : register(t199, space36);

Texture2D<float4> __3__36__0__0__g_specularResult : register(t154, space36);

Texture2D<float2> __3__36__0__0__g_iblBrdfLookup : register(t156, space36);

Texture2D<uint2> __3__36__0__0__g_stencilPrev : register(t143, space36);

Texture2D<half4> __3__36__0__0__g_sceneDiffuse : register(t57, space36);

Texture2D<half4> __3__36__0__0__g_diffuseResult : register(t185, space36);

Texture2D<half4> __3__36__0__0__g_diffuseResultPrev : register(t176, space36);

Texture2D<half4> __3__36__0__0__g_specularResultPrev : register(t177, space36);

Texture2D<half2> __3__36__0__0__g_sceneAO : register(t107, space36);

Texture2D<float> __3__36__0__0__g_specularSampleCountPrev : register(t108, space36);

Texture2D<uint4> __3__36__0__0__g_baseColor : register(t18, space36);

Texture2D<float4> __3__36__0__0__g_normal : register(t19, space36);

Texture2D<float2> __3__36__0__0__g_velocity : register(t20, space36);

Texture2D<uint> __3__36__0__0__g_sceneNormal : register(t50, space36);

Texture2D<uint> __3__36__0__0__g_sceneNormalPrev : register(t59, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t48, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t63, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaquePrev : register(t64, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t52, space36);

Texture2D<float4> __3__36__0__0__g_manyLightsMoments : register(t65, space36);

Texture2D<float> __3__36__0__0__g_specularRayHitDistance : register(t66, space36);

Texture2D<float> __3__36__0__0__g_caustic : register(t67, space36);

Texture2D<uint> __3__36__0__0__g_tiledManyLightsMasks : register(t14, space36);

ByteAddressBuffer __3__37__0__0__g_structureCounterBuffer : register(t27, space37);

Texture2D<half4> __3__36__0__0__g_sceneShadowColor : register(t54, space36);

RWTexture2D<float4> __3__38__0__1__g_diffuseHalfPrevUAV : register(u43, space38);

RWTexture2D<float4> __3__38__0__1__g_sceneColorUAV : register(u9, space38);

RWTexture2D<half4> __3__38__0__1__g_sceneSpecularUAV : register(u10, space38);

RWTexture2D<half4> __3__38__0__1__g_diffuseResultUAV : register(u11, space38);

RWTexture2D<half4> __3__38__0__1__g_specularResultUAV : register(u12, space38);

RWTexture2D<float> __3__38__0__1__g_specularSampleCountUAV : register(u13, space38);

RWTexture2D<half4> __3__38__0__1__g_sceneColorLightingOnlyForAwbUAV : register(u18, space38);

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

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b27, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};

cbuffer __3__35__0__0__WeatherConstantBuffer : register(b31, space35) {
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
  int _64;
  int _65;
  int4 _67;
  int _79;
  int _83;
  uint _90;
  uint _95;
  float _97;
  float _99;
  float _102;
  float _104;
  float _106;
  uint2 _109;
  int _111;
  float _112;
  float _115;
  bool _120;
  float _121;
  float _122;
  bool _123;
  float _124;
  bool _125;
  float _126;
  bool _127;
  float _128;
  bool _129;
  float _311;
  float _312;
  float _313;
  int _331;
  half _368;
  float _421;
  float _436;
  float _437;
  half _445;
  half _446;
  half _447;
  half _448;
  half _449;
  float _450;
  float _451;
  int _488;
  float _497;
  float _540;
  float _541;
  float _651;
  float _704;
  bool _831;
  float _836;
  float _842;
  bool _859;
  float _864;
  float _865;
  float _871;
  float _872;
  bool _889;
  float _894;
  float _895;
  float _896;
  float _902;
  float _903;
  float _904;
  bool _920;
  float _923;
  float _924;
  float _925;
  bool _926;
  float _930;
  float _931;
  float _932;
  float _933;
  int _1098;
  float _1099;
  float _1156;
  float _1194;
  float _1277;
  float _1278;
  float _1279;
  float _1280;
  float _1285;
  float _1310;
  half _1334;
  half _1352;
  float _1489;
  bool _1499;
  float _1541;
  float _1562;
  half _1587;
  float _1693;
  float _1740;
  float _1749;
  float _1846;
  float _1847;
  float _1848;
  float _1849;
  int _1850;
  int _1851;
  float _1852;
  float _1996;
  float _1997;
  float _1998;
  float _1999;
  float _2069;
  float _2079;
  float _2080;
  float _2081;
  int _2132;
  int _2133;
  float _2174;
  float _2175;
  float _2176;
  float _2177;
  float _2249;
  float _2250;
  float _2251;
  float _2252;
  float _2282;
  float _2283;
  float _2284;
  float _2301;
  float _2302;
  float _2303;
  float _2304;
  float _2334;
  float _2335;
  float _2336;
  float _2337;
  float _2338;
  float _2345;
  half _2346;
  half _2347;
  half _2348;
  half _2349;
  half _2350;
  half _2386;
  half _2387;
  half _2388;
  float _2407;
  float _2408;
  float _2409;
  float _2424;
  float _2425;
  float _2426;
  float _2427;
  float _2485;
  float _2574;
  float _2575;
  float _2576;
  int _2659;
  float _2682;
  float _2683;
  float _2684;
  int _2685;
  int _2686;
  int _2687;
  int _2688;
  float _2732;
  float _2733;
  float _2734;
  int _2820;
  int _2823;
  float _2843;
  float _2844;
  float _2845;
  bool _2846;
  float _2847;
  float _2848;
  float _2883;
  float _2890;
  float _2891;
  float _2892;
  float _2942;
  float _2943;
  float _2944;
  float _2954;
  float _2998;
  half _3065;
  half _3066;
  half _3067;
  float _3077;
  float _3207;
  float _3208;
  float _3209;
  bool _3235;
  int _3250;
  int _3273;
  float _3274;
  float _3275;
  float _3276;
  float _3292;
  float _3293;
  float _3294;
  float _3313;
  float _3314;
  float _3315;
  uint4 _135;
  float4 _141;
  half _150;
  half _154;
  half _159;
  half _164;
  uint _167;
  bool _168;
  bool _169;
  float _173;
  float _177;
  float _181;
  float _183;
  half _185;
  half _187;
  half _194;
  half _200;
  float _203;
  float _206;
  float _210;
  float _212;
  float _215;
  float _216;
  float _217;
  float _219;
  float _222;
  float _223;
  float _224;
  float _225;
  float _228;
  float _231;
  float _234;
  half _241;
  half _248;
  half _254;
  half _256;
  half _257;
  half _258;
  half _259;
  half _261;
  half _263;
  half _265;
  half _271;
  half _277;
  half _283;
  bool _284;
  bool _285;
  bool _286;
  half4 _288;
  float _292;
  float _293;
  float _294;
  half4 _300;
  float4 _315;
  bool _319;
  float _334;
  float _337;
  float _340;
  half2 _342;
  float _370;
  float _372;
  float _384;
  float _393;
  float _402;
  float _411;
  float _413;
  bool _415;
  uint _427;
  half _438;
  bool _439;
  float _452;
  float _453;
  float _454;
  float _455;
  float _456;
  float _457;
  float _458;
  float _459;
  float _460;
  float _462;
  int _463;
  bool _464;
  float _509;
  float2 _513;
  float _545;
  float _547;
  float _549;
  float _557;
  float _561;
  float _564;
  int _566;
  int _568;
  float _569;
  float _570;
  float _573;
  float _576;
  int4 _579;
  int _590;
  float _654;
  float _657;
  float _659;
  float _662;
  float _666;
  float _669;
  float _672;
  float _675;
  bool _679;
  float _680;
  float _683;
  bool _685;
  float _711;
  float _722;
  float _733;
  float _744;
  float _755;
  float _756;
  float _757;
  float _758;
  float _759;
  float _764;
  float _768;
  float _772;
  float _776;
  float _780;
  int _781;
  bool _785;
  int _786;
  int _787;
  int _788;
  int _789;
  bool _791;
  bool _795;
  bool _799;
  bool _803;
  bool _805;
  bool _806;
  bool _808;
  float _834;
  float _862;
  float _892;
  int4 _935;
  float _944;
  float _950;
  float _956;
  float _958;
  float _963;
  float _968;
  float _974;
  float _980;
  float _982;
  float _987;
  float _992;
  float _998;
  float _1004;
  float _1006;
  float _1011;
  float _1016;
  float _1022;
  float _1028;
  float _1030;
  float _1035;
  bool _1036;
  bool _1037;
  float _1040;
  float _1041;
  float _1042;
  float _1043;
  float _1044;
  float _1046;
  float _1048;
  float _1050;
  float _1052;
  float _1058;
  float _1064;
  float _1070;
  float _1076;
  int _1079;
  int _1080;
  int _1088;
  int _1089;
  float _1109;
  uint _1110;
  half4 _1112;
  uint _1117;
  half4 _1118;
  half4 _1123;
  half4 _1128;
  float _1133;
  float _1142;
  float _1147;
  float _1160;
  float _1161;
  float _1163;
  float4 _1166;
  float _1171;
  float _1173;
  float _1174;
  float _1175;
  float _1176;
  float _1177;
  float _1197;
  float _1212;
  float _1217;
  float _1235;
  float _1253;
  float _1256;
  float _1263;
  float _1288;
  float _1291;
  float _1294;
  float _1300;
  float _1301;
  float _1302;
  float _1311;
  float _1317;
  float _1321;
  float _1325;
  float _1329;
  float _1354;
  float _1356;
  float _1358;
  float _1360;
  float _1365;
  float _1368;
  float _1378;
  float _1379;
  float _1392;
  float _1393;
  float _1394;
  float _1395;
  float _1400;
  float _1403;
  float _1406;
  float _1409;
  float _1421;
  float _1429;
  float _1437;
  float _1445;
  float _1457;
  float _1469;
  float _1481;
  float _1500;
  float _1501;
  float _1506;
  float _1532;
  float _1543;
  float _1549;
  bool _1550;
  float _1569;
  half _1571;
  float _1588;
  float _1589;
  float _1590;
  float _1594;
  float _1598;
  float _1602;
  float _1606;
  float _1626;
  float _1633;
  float _1640;
  float _1647;
  float _1654;
  float _1664;
  float _1667;
  float _1683;
  float _1705;
  float _1715;
  float _1725;
  float _1726;
  float _1727;
  float _1758;
  float _1765;
  float _1770;
  int _1772;
  int _1774;
  float _1775;
  float _1776;
  int4 _1786;
  int _1793;
  float _1798;
  float _1803;
  float _1808;
  float _1813;
  float _1829;
  float _1830;
  float _1831;
  float _1832;
  bool _1853;
  uint _1854;
  half4 _1856;
  float _1865;
  uint _1866;
  half4 _1867;
  float _1876;
  half4 _1877;
  float _1886;
  half4 _1887;
  float _1896;
  float _1903;
  float _1917;
  float _1918;
  float _1932;
  float _1946;
  float _1964;
  float _1968;
  float _1975;
  float _2002;
  float _2003;
  float _2004;
  float _2009;
  float _2017;
  float _2025;
  float _2033;
  float _2045;
  float _2050;
  bool _2051;
  int _2053;
  bool _2072;
  float _2073;
  float2 _2086;
  float _2091;
  float _2109;
  float4 _2111;
  bool _2141;
  float4 _2168;
  float _2187;
  float _2190;
  float _2195;
  float _2200;
  float _2205;
  float _2211;
  float _2217;
  float _2225;
  float _2245;
  float _2256;
  bool _2259;
  float _2261;
  float _2285;
  float _2286;
  float _2287;
  float _2305;
  float _2306;
  float _2307;
  float _2310;
  float _2313;
  float _2321;
  float _2322;
  half4 _2352;
  uint _2358;
  float _2364;
  float _2370;
  float _2376;
  float _2378;
  bool _2391;
  bool _2398;
  float _2403;
  float _2404;
  float _2405;
  float _2430;
  float _2435;
  float _2437;
  float _2443;
  float _2447;
  float _2454;
  float _2455;
  float _2462;
  float2 _2496;
  float _2505;
  float _2519;
  float _2529;
  float _2538;
  float _2539;
  float _2547;
  float _2559;
  float _2562;
  float _2568;
  float _2579;
  float _2598;
  float _2605;
  float _2611;
  float _2617;
  float _2623;
  float _2629;
  float _2635;
  float _2641;
  float _2642;
  float _2643;
  float _2644;
  int _2667;
  int _2668;
  float _2669;
  float _2670;
  float _2671;
  float _2690;
  float _2691;
  float _2692;
  float _2693;
  float _2708;
  float _2710;
  float _2713;
  float _2715;
  float _2717;
  float _2718;
  float _2719;
  float _2720;
  float _2737;
  float _2738;
  float _2739;
  float _2740;
  float _2741;
  float _2742;
  float _2744;
  float _2745;
  float _2746;
  float _2747;
  float _2748;
  float _2749;
  float _2751;
  float _2753;
  float _2755;
  float _2757;
  float _2758;
  float _2759;
  float _2760;
  float _2761;
  float _2762;
  float _2763;
  float _2766;
  float _2767;
  float _2768;
  float _2769;
  float _2770;
  float _2802;
  int _2803;
  float _2828;
  float _2830;
  float _2831;
  float _2832;
  float _2854;
  float _2858;
  float _2862;
  float _2866;
  float _2867;
  bool _2868;
  bool _2871;
  float _2884;
  float _2896;
  float _2897;
  float _2899;
  float _2902;
  float _2903;
  float _2905;
  float _2906;
  float _2910;
  float _2922;
  float _2958;
  float _2962;
  float _2966;
  uint _2969;
  bool _2984;
  float _3007;
  float _3017;
  float _3027;
  float _3037;
  float _3040;
  half _3043;
  half _3046;
  half _3049;
  float _3068;
  float _3069;
  float _3070;
  float _3078;
  float _3084;
  float _3087;
  float _3090;
  float _3093;
  float _3094;
  float _3095;
  float _3096;
  float _3098;
  float _3100;
  float _3102;
  float _3104;
  float _3107;
  float _3110;
  float _3113;
  float _3120;
  float _3121;
  float _3126;
  float _3131;
  float _3133;
  half _3140;
  half _3147;
  half _3154;
  float _3159;
  float _3163;
  float _3167;
  float _3171;
  float _3173;
  float _3175;
  float _3177;
  float _3182;
  float _3183;
  float _3184;
  float _3185;
  float _3186;
  float _3187;
  float _3188;
  float _3189;
  float _3190;
  float _3191;
  float _3192;
  float _3193;
  float _3214;
  float _3277;
  float _3278;
  float _3279;
  float _3285;
  float _3286;
  float _3287;
  float _3299;
  float _3304;
  float _3305;
  int _62[4];
  _64 = (int)(SV_GroupID.x) & 15;
  _65 = (uint)((uint)(_64)) >> 2;
  _67 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 7))]);
  _62[0] = _67.x;
  _62[1] = _67.y;
  _62[2] = _67.z;
  _62[3] = _67.w;
  _79 = _62[(((uint)(SV_GroupID.x) >> 5) & 3)];
  _83 = select((((int)(SV_GroupID.x) & 16) == 0), _79, ((uint)((uint)(_79)) >> 16));
  _90 = (uint)((uint)((uint)((int)((int)(_64) - (int)((int)(_65) << 2)) << 3)) + (uint)(SV_GroupThreadID.x)) + (uint)((uint)(((int)((uint)((uint)(_83)) << 5)) & 8160));
  _95 = (uint)((uint)((uint)((int)(_65) << 3)) + (uint)(SV_GroupThreadID.y)) + (uint)((uint)(((uint)((uint)(_83)) >> 3) & 8160));
  _97 = ((float)((uint)((uint)(_90)))) + 0.5f;
  _99 = ((float)((uint)((uint)(_95)))) + 0.5f;
  _102 = _97 * _bufferSizeAndInvSize.z;
  _104 = _99 * _bufferSizeAndInvSize.w;
  _106 = __3__36__0__0__g_depth.Load(int3(_90, _95, 0));  // [sem: _3__36__0__0__g_depth_load]
  _109 = __3__36__0__0__g_stencil.Load(int3(_90, _95, 0));  // [sem: _3__36__0__0__g_stencil_load]
  _111 = _109.x & 127;  // [sem: _3__36__0__0__g_stencil_load_derived]
  _112 = max(1e-07f, _106.x);  // [sem: _3__36__0__0__g_depth_load_derived]
  _115 = _nearFarProj.x / _112;
  _120 = ((_106.x < 1e-07f) || (_106.x == 1.0f)) || (_111 == 10);
  _121 = (float)((bool)(_120));
  _122 = QuadReadLaneAt(_121, 0);
  _123 = !(_122 == 0.0f);
  _124 = QuadReadLaneAt(_121, 1);
  _125 = !(_124 == 0.0f);
  _126 = QuadReadLaneAt(_121, 2);
  _127 = !(_126 == 0.0f);
  _128 = QuadReadLaneAt(_121, 3);
  _129 = !(_128 == 0.0f);
  if (!(((_123 && _125) && _127) && _129)) {
    _135 = __3__36__0__0__g_baseColor.Load(int3(_90, _95, 0));  // [sem: _3__36__0__0__g_baseColor_load]
    _141 = __3__36__0__0__g_normal.Load(int3(_90, _95, 0));  // [sem: _3__36__0__0__g_normal_load]
    _150 = half(((float)((uint)((uint)(((uint)((uint)(_135.x)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _154 = half(((float)((uint)((uint)(_135.x & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _159 = half(((float)((uint)((uint)(((uint)((uint)(_135.y)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _164 = half(((float)((uint)((uint)(((uint)((uint)(_135.z)) >> 8) & 255)))) * 0.003921569f);  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _167 = (uint)((_141.w * 3.0f) + 0.5f);  // [sem: _3__36__0__0__g_normal_load_derived]
    _168 = (_167 == 1);
    _169 = (_167 == 3);
    _173 = (saturate(_141.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _177 = (saturate(_141.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _181 = (saturate(_141.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
    _183 = rsqrt(dot(float3(_173, _177, _181), float3(_173, _177, _181)));  // [sem: invLength]
    _185 = half(_183 * _177);
    _187 = half(_181 * _183);
    // [sem: _3__36__0__0__g_baseColor_load_derived]
    _194 = ((half)((half)(half(((float)((uint)((uint)(((uint)((uint)(_135.w)) >> 8) & 255)))) * 0.003921569f)) * 2.0h)) + -1.0h;
    _200 = ((half)((half)(half(((float)((uint)((uint)(_135.w & 255)))) * 0.003921569f)) * 2.0h)) + -1.0h;  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _203 = float(_194 + _200) * 0.5f;
    _206 = float(_194 - _200) * 0.5f;
    _210 = (1.0f - abs(_203)) - abs(_206);
    _212 = rsqrt(dot(float3(_203, _206, _210), float3(_203, _206, _210)));  // [sem: invLength]
    _215 = float(half(_183 * _173));
    _216 = float(_185);
    _217 = float(_187);
    _219 = select((_187 >= 0.0h), 1.0f, -1.0f);
    _222 = -0.0f - (1.0f / (_219 + _217));
    _223 = _216 * _222;
    _224 = _223 * _215;
    _225 = _219 * _215;
    _228 = float(half(_212 * _203));
    _231 = float(half(_212 * _206));
    _234 = float(half(_212 * _210));
    _241 = half(mad(_234, _215, mad(_231, _224, ((((_225 * _215) * _222) + 1.0f) * _228))));
    _248 = half(mad(_234, _216, mad(_231, ((_223 * _216) + _219), ((_228 * _219) * _224))));
    _254 = half(mad(_234, _217, mad(_231, (-0.0f - _216), (-0.0f - (_225 * _228)))));
    _256 = rsqrt((half)(dot(half3(_241, _248, _254), half3(_241, _248, _254))));  // [sem: invLength]
    _257 = _256 * _241;
    _258 = _256 * _248;
    _259 = _256 * _254;
    _261 = saturate((half)(_150 * _150));  // [sem: expr_sat]
    _263 = saturate((half)(_154 * _154));  // [sem: expr_sat]
    _265 = saturate((half)(_159 * _159));  // [sem: expr_sat]
    // [sem: expr_sat]
    _271 = saturate((half)(((half)(((half)(_263 * 0.3395996h)) + ((half)(_261 * 0.61328125h)))) + ((half)(_265 * 0.04736328h))));
    // [sem: expr_sat]
    _277 = saturate((half)(((half)(((half)(_263 * 0.9165039h)) + ((half)(_261 * 0.07019043h)))) + ((half)(_265 * 0.013450623h))));
    // [sem: expr_sat]
    _283 = saturate((half)(((half)(((half)(_263 * 0.109558105h)) + ((half)(_261 * 0.020614624h)))) + ((half)(_265 * 0.8696289h))));
    _284 = (_111 == 24);
    _285 = (_111 == 29);
    _286 = _284 || _285;
    half4 _288 = __3__36__0__0__g_diffuseResult.Load(int3(_90, _95, 0));  // [sem: _3__36__0__0__g_diffuseResult_load]
    _292 = float(_288.x);  // [sem: _3__36__0__0__g_diffuseResult_load_derived]
    _293 = float(_288.y);  // [sem: _3__36__0__0__g_diffuseResult_load_derived]
    _294 = float(_288.z);  // [sem: _3__36__0__0__g_diffuseResult_load_derived]
    [branch]
    if (_renderParams2.y > 0.0f) {
      half4 _300 = __3__36__0__0__g_sceneDiffuse.Load(int3(_90, _95, 0));  // [sem: _3__36__0__0__g_sceneDiffuse_load]
      _311 = (float(_300.z) + _294);
      _312 = (float(_300.y) + _293);
      _313 = (float(_300.x) + _292);
    } else {
      _311 = _294;
      _312 = _293;
      _313 = _292;
    }
    _315 = __3__36__0__0__g_specularResult.Load(int3(_90, _95, 0));  // [sem: _3__36__0__0__g_specularResult_load]
    _319 = ((uint)_111 > (uint)11);
    if (_319) {
      _331 = ((int)(uint)((int)(((uint)_111 < (uint)21) || (_111 == 107))));
    } else {
      if (!(_111 == 6)) {
        _331 = ((int)(uint)((int)(_111 == 7)));
      } else {
        _331 = 1;
      }
    }
    _334 = -0.0f - min(0.0f, (-0.0f - _313));
    _337 = -0.0f - min(0.0f, (-0.0f - _312));
    _340 = -0.0f - min(0.0f, (-0.0f - _311));
    half2 _342 = __3__36__0__0__g_sceneAO.Load(int3(_90, _95, 0));  // [sem: _3__36__0__0__g_sceneAO_load]
    if (_319) {
      if (!((uint)_111 < (uint)20)) {
        if (!((_111 == 96) || ((_111 == 65) || (_111 == 107)))) {
          _368 = (half)(select(_286, 0.0f, (half)(half(((float)((uint)((uint)(_135.y & 255)))) * 0.003921569f))));
        } else {
          _368 = 0.0h;
        }
      } else {
        _368 = 0.0h;
      }
    } else {
      if (!((uint)_111 > (uint)10)) {
        _368 = (half)(select(_286, 0.0f, (half)(half(((float)((uint)((uint)(_135.y & 255)))) * 0.003921569f))));
      } else {
        _368 = 0.0h;
      }
    }
    _370 = (_102 * 2.0f) + -1.0f;
    _372 = 1.0f - (_104 * 2.0f);
    _384 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _112, mad((_invViewProjRelative[3].y), _372, ((_invViewProjRelative[3].x) * _370)));
    _393 = (mad((_invViewProjRelative[0].z), _112, mad((_invViewProjRelative[0].y), _372, ((_invViewProjRelative[0].x) * _370))) + (_invViewProjRelative[0].w)) / _384;
    _402 = (mad((_invViewProjRelative[1].z), _112, mad((_invViewProjRelative[1].y), _372, ((_invViewProjRelative[1].x) * _370))) + (_invViewProjRelative[1].w)) / _384;
    _411 = (mad((_invViewProjRelative[2].z), _112, mad((_invViewProjRelative[2].y), _372, ((_invViewProjRelative[2].x) * _370))) + (_invViewProjRelative[2].w)) / _384;
    _413 = rsqrt(dot(float3(_393, _402, _411), float3(_393, _402, _411)));  // [sem: invLength]
    _415 = ((uint)(_109.x & 24) > (uint)23);  // [sem: _3__36__0__0__g_stencil_load_derived]
    if (_415) {
      if (_285) {
        _421 = float(saturate(_164));
      } else {
        _421 = 0.0f;
      }
      _427 = (uint)((half)((half)(half(((float)((uint)((uint)(_135.z & 255)))) * 0.003921569f)) * 255.0h));  // [sem: _3__36__0__0__g_baseColor_load_derived]
      if (_168) {
        _436 = (((float)((uint)((uint)(_427 & 127)))) * 0.007874016f);
        _437 = select(((_427 & 128) != 0), 1.0f, 0.0f);
      } else {
        _436 = 0.0f;
        _437 = 0.0f;
      }
      _438 = half(_436);
      _439 = (_438 > 0.99902344h);
      _445 = (half)(select(_439, 1.0f, _283));
      _446 = (half)(select(_439, 1.0f, _277));
      _447 = (half)(select(_439, 1.0f, _271));
      _448 = (half)(select(_286, 0.010002136f, _164));
      _449 = _438;
      _450 = _421;
      _451 = _437;
    } else {
      _445 = _283;
      _446 = _277;
      _447 = _271;
      _448 = _164;
      _449 = _368;
      _450 = 0.0f;
      _451 = 0.0f;
    }
    _452 = float(_257);
    _453 = float(_258);
    _454 = float(_259);
    _455 = _413 * _393;
    _456 = -0.0f - _455;
    _457 = _413 * _402;
    _458 = -0.0f - _457;
    _459 = _413 * _411;
    _460 = -0.0f - _459;
    _462 = saturate(dot(float3(_456, _458, _460), float3(_452, _453, _454)));  // [sem: expr_sat]
    _463 = _109.x & 128;  // [sem: _3__36__0__0__g_stencil_load_derived]
    _464 = (_463 == 0);
    if (_464) {
      if ((uint)_111 > (uint)51) {
        if (!(((_109.x & 125) == 105) || ((uint)_111 < (uint)68))) {
          _488 = ((int)(uint)((int)(_111 == 98)));
        } else {
          _488 = 1;
        }
      } else {
        if ((uint)_111 > (uint)10) {
          if ((uint)_111 < (uint)20) {
            _488 = ((int)(uint)((int)((_109.x & 126) != 14)));
          } else {
            _488 = ((int)(uint)((int)((_109.x & 125) == 105)));
          }
        } else {
          _488 = 0;
        }
      }
    } else {
      _488 = 1;
    }
    [branch]
    if (_415) {
      _497 = (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(_90, _95, 0)))).x) & 16777215)))) * 5.960465e-08f);
    } else {
      _497 = _106.x;
    }
    _509 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), _497, mad((_projToPrevProj[3].y), _372, ((_projToPrevProj[3].x) * _370)));
    if (_488 == 0) {
      _540 = (((mad((_projToPrevProj[1].z), _497, mad((_projToPrevProj[1].y), _372, ((_projToPrevProj[1].x) * _370))) + (_projToPrevProj[1].w)) / _509) - _372);
      _541 = (((mad((_projToPrevProj[0].z), _497, mad((_projToPrevProj[0].y), _372, ((_projToPrevProj[0].x) * _370))) + (_projToPrevProj[0].w)) / _509) - _370);
    } else {
      _513 = __3__36__0__0__g_velocity.Load(int3(_90, _95, 0));  // [sem: _3__36__0__0__g_velocity_load]
      _540 = (_513.y * 2.0f);
      _541 = (_513.x * 2.0f);
    }
    _545 = _nearFarProj.x / max(1e-07f, _497);
    _547 = (_541 * 0.5f) + _102;
    _549 = _104 - (_540 * 0.5f);
    _557 = select(((_549 > 1.0f) || ((_549 < 0.0f) || ((_547 < 0.0f) || (_547 > 1.0f)))), 1.0f, 0.0f);
    _561 = (_bufferSizeAndInvSize.x * _547) + -0.5f;
    _564 = (_bufferSizeAndInvSize.y * _549) + -0.5f;
    _566 = (int)(floor(_561));
    _568 = (int)(floor(_564));
    _569 = (float)((int)(_566));
    _570 = (float)((int)(_568));
    _573 = (_569 + 0.5f) * _bufferSizeAndInvSize.z;
    _576 = (_570 + 0.5f) * _bufferSizeAndInvSize.w;
    _579 = __3__36__0__0__g_depthOpaquePrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(_573, _576));  // [sem: _3__36__0__0__g_depthOpaquePrev_gather]
    _590 = mad(((uint)((uint)(_579.w)) >> 24), 16777216, mad(((uint)((uint)(_579.z)) >> 24), 65536, mad(((uint)((uint)(_579.y)) >> 24), 256, ((uint)((uint)(_579.x)) >> 24))));
    if (_464) {
      if ((uint)_111 > (uint)51) {
        if (!(_111 == 98)) {
          if (!(((_109.x & 125) == 105) || ((uint)_111 < (uint)68))) {
            _651 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
          } else {
            _651 = 0.0f;
          }
        } else {
          _651 = 0.0f;
        }
      } else {
        if ((uint)_111 > (uint)10) {
          if ((uint)_111 < (uint)20) {
            if ((_109.x & 126) == 14) {
              _651 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
            } else {
              _651 = 0.0f;
            }
          } else {
            if (!((_109.x & 125) == 105)) {
              _651 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
            } else {
              _651 = 0.0f;
            }
          }
        } else {
          _651 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
        }
      }
    } else {
      _651 = 0.0f;
    }
    _654 = _screenPercentage.x * 2.0f;
    _657 = _654 * abs(_102 + -0.5f);
    _659 = _screenPercentage.y * 2.0f;
    _662 = _659 * abs(_104 + -0.5f);
    _666 = sqrt(dot(float2(_657, _662), float2(_657, _662)) + 1.0f) * _545;
    _669 = abs(_547 + -0.5f) * _654;
    _672 = abs(_549 + -0.5f) * _659;
    _675 = sqrt(dot(float2(_669, _672), float2(_669, _672)) + 1.0f);
    _679 = ((uint)((int)(_111) + (int)(-97)) < (uint)2) || (_331 != 0);
    _680 = _545 * _545;
    _683 = (_680 * select(_679, 0.5f, 0.2f)) + 1.0f;
    _685 = ((uint)((int)(_111) + (int)(-52)) < (uint)16);
    if (_685) {
      _704 = (1000.0f - (saturate((float)((bool)((sqrt(((_diffViewPosAccurate.y * _diffViewPosAccurate.y) + (_diffViewPosAccurate.x * _diffViewPosAccurate.x)) + (_diffViewPosAccurate.z * _diffViewPosAccurate.z)) * 50.0f) > 1.0f))) * 875.0f));
    } else {
      _704 = 50.0f;
    }
    _711 = select(_685, 0.0f, ((max(0.0f, (_545 + -1.0f)) * 0.1f) * _temporalReprojectionParams.y));
    _722 = max(0.0f, (abs(_666 - (((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_579.x & 16777215)))) * 5.960465e-08f))) - _651) * _675)) - _711));
    _733 = max(0.0f, (abs(_666 - (((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_579.y & 16777215)))) * 5.960465e-08f))) - _651) * _675)) - _711));
    _744 = max(0.0f, (abs(_666 - (((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_579.z & 16777215)))) * 5.960465e-08f))) - _651) * _675)) - _711));
    _755 = max(0.0f, (abs(_666 - (((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)(_579.w & 16777215)))) * 5.960465e-08f))) - _651) * _675)) - _711));
    _756 = _722 * _722;
    _757 = _733 * _733;
    _758 = _744 * _744;
    _759 = _755 * _755;
    _764 = (-1.442695f / ((_680 * 0.1f) + 1.0f)) * select(_679, 0.2f, _704);
    _768 = select((_756 > _683), 0.0f, exp2(_764 * _756));
    _772 = select((_757 > _683), 0.0f, exp2(_764 * _757));
    _776 = select((_758 > _683), 0.0f, exp2(_764 * _758));
    _780 = select((_759 > _683), 0.0f, exp2(_764 * _759));
    _781 = _109.x & 126;  // [sem: _3__36__0__0__g_stencil_load_derived]
    if (!_415) {
      _785 = (_781 == 66) || (_111 == 53);
      _786 = _590 & 127;
      _787 = _590 & 32512;
      _788 = _590 & 8323072;
      _789 = _590 & 2130706432;
      _791 = ((uint)((int)(_786) + (int)(-52)) < (uint)16);
      _795 = ((uint)((int)(((uint)((uint)(_590)) >> 8) & 127) + (int)(-52)) < (uint)16);
      _799 = ((uint)((int)(((uint)((uint)(_590)) >> 16) & 127) + (int)(-52)) < (uint)16);
      _803 = ((uint)((int)(((uint)((uint)(_590)) >> 24) & 127) + (int)(-52)) < (uint)16);
      _805 = (_463 != 0) || _685;
      _806 = (_111 == 6);
      _808 = ((uint)((int)(_111) + (int)(-105)) < (uint)3);
      if (_785) {
        if (!((_685 ^ _791) || ((_806 ^ (_786 == 6)) || (_805 ^ (((_590 & 128) != 0) || _791))))) {
          _831 = (_808 ^ ((_786 == 107) || ((uint)((int)(_786) + (int)(-105)) < (uint)2)));
        } else {
          _831 = true;
        }
        _834 = ((float)((bool)(!_831))) * _768;
        _842 = _834;
        if (!((_685 ^ _795) || ((_806 ^ (_787 == 1536)) || (_805 ^ (((_590 & 32768) != 0) || _795))))) {
          _859 = (_808 ^ (((_590 & 32000) == 26880) || (_787 == 27136)));
        } else {
          _859 = true;
        }
        _862 = ((float)((bool)(!_859))) * _772;
        _871 = _862;
        _872 = _842;
        if (!((_685 ^ _799) || ((_806 ^ (_788 == 393216)) || (_805 ^ (((_590 & 8388608) != 0) || _799))))) {
          _889 = (_808 ^ (((_590 & 8192000) == 6881280) || (_788 == 6946816)));
        } else {
          _889 = true;
        }
        _892 = ((float)((bool)(!_889))) * _776;
        _902 = _892;
        _903 = _872;
        _904 = _871;
        if (!((_685 ^ _803) || ((_806 ^ (_789 == 100663296)) || (_805 ^ (((int)_590 < (int)0) || _803))))) {
          _920 = (_808 ^ (((_590 & 2097152000) == 1761607680) || (_789 == 1778384896)));
        } else {
          _920 = true;
        }
        _923 = _902;
        _924 = _903;
        _925 = _904;
        _926 = (!_920);
      } else {
        if ((_786 != 53) && ((_590 & 126) != 66)) {
          if (!((_685 ^ _791) || ((_806 ^ (_786 == 6)) || (_805 ^ (((_590 & 128) != 0) || _791))))) {
            _831 = (_808 ^ ((_786 == 107) || ((uint)((int)(_786) + (int)(-105)) < (uint)2)));
          } else {
            _831 = true;
          }
          _834 = ((float)((bool)(!_831))) * _768;
          _836 = _834;
          if ((_787 != 13568) && ((_590 & 32256) != 16896)) {
            _842 = _836;
            if (!((_685 ^ _795) || ((_806 ^ (_787 == 1536)) || (_805 ^ (((_590 & 32768) != 0) || _795))))) {
              _859 = (_808 ^ (((_590 & 32000) == 26880) || (_787 == 27136)));
            } else {
              _859 = true;
            }
            _862 = ((float)((bool)(!_859))) * _772;
            _864 = _862;
            _865 = _842;
            if ((_788 != 3473408) && ((_590 & 8257536) != 4325376)) {
              _871 = _864;
              _872 = _865;
              if (!((_685 ^ _799) || ((_806 ^ (_788 == 393216)) || (_805 ^ (((_590 & 8388608) != 0) || _799))))) {
                _889 = (_808 ^ (((_590 & 8192000) == 6881280) || (_788 == 6946816)));
              } else {
                _889 = true;
              }
              _892 = ((float)((bool)(!_889))) * _776;
              _894 = _892;
              _895 = _872;
              _896 = _871;
              if ((_789 != 889192448) && ((_590 & 2113929216) != 1107296256)) {
                _902 = _894;
                _903 = _895;
                _904 = _896;
                if (!((_685 ^ _803) || ((_806 ^ (_789 == 100663296)) || (_805 ^ (((int)_590 < (int)0) || _803))))) {
                  _920 = (_808 ^ (((_590 & 2097152000) == 1761607680) || (_789 == 1778384896)));
                } else {
                  _920 = true;
                }
                _923 = _902;
                _924 = _903;
                _925 = _904;
                _926 = (!_920);
              } else {
                _923 = _894;
                _924 = _895;
                _925 = _896;
                _926 = false;
              }
            } else {
              _894 = 0.0f;
              _895 = _865;
              _896 = _864;
              if ((_789 != 889192448) && ((_590 & 2113929216) != 1107296256)) {
                _902 = _894;
                _903 = _895;
                _904 = _896;
                if (!((_685 ^ _803) || ((_806 ^ (_789 == 100663296)) || (_805 ^ (((int)_590 < (int)0) || _803))))) {
                  _920 = (_808 ^ (((_590 & 2097152000) == 1761607680) || (_789 == 1778384896)));
                } else {
                  _920 = true;
                }
                _923 = _902;
                _924 = _903;
                _925 = _904;
                _926 = (!_920);
              } else {
                _923 = _894;
                _924 = _895;
                _925 = _896;
                _926 = false;
              }
            }
          } else {
            _864 = 0.0f;
            _865 = _836;
            if ((_788 != 3473408) && ((_590 & 8257536) != 4325376)) {
              _871 = _864;
              _872 = _865;
              if (!((_685 ^ _799) || ((_806 ^ (_788 == 393216)) || (_805 ^ (((_590 & 8388608) != 0) || _799))))) {
                _889 = (_808 ^ (((_590 & 8192000) == 6881280) || (_788 == 6946816)));
              } else {
                _889 = true;
              }
              _892 = ((float)((bool)(!_889))) * _776;
              _894 = _892;
              _895 = _872;
              _896 = _871;
              if ((_789 != 889192448) && ((_590 & 2113929216) != 1107296256)) {
                _902 = _894;
                _903 = _895;
                _904 = _896;
                if (!((_685 ^ _803) || ((_806 ^ (_789 == 100663296)) || (_805 ^ (((int)_590 < (int)0) || _803))))) {
                  _920 = (_808 ^ (((_590 & 2097152000) == 1761607680) || (_789 == 1778384896)));
                } else {
                  _920 = true;
                }
                _923 = _902;
                _924 = _903;
                _925 = _904;
                _926 = (!_920);
              } else {
                _923 = _894;
                _924 = _895;
                _925 = _896;
                _926 = false;
              }
            } else {
              _894 = 0.0f;
              _895 = _865;
              _896 = _864;
              if ((_789 != 889192448) && ((_590 & 2113929216) != 1107296256)) {
                _902 = _894;
                _903 = _895;
                _904 = _896;
                if (!((_685 ^ _803) || ((_806 ^ (_789 == 100663296)) || (_805 ^ (((int)_590 < (int)0) || _803))))) {
                  _920 = (_808 ^ (((_590 & 2097152000) == 1761607680) || (_789 == 1778384896)));
                } else {
                  _920 = true;
                }
                _923 = _902;
                _924 = _903;
                _925 = _904;
                _926 = (!_920);
              } else {
                _923 = _894;
                _924 = _895;
                _925 = _896;
                _926 = false;
              }
            }
          }
        } else {
          _836 = 0.0f;
          if ((_787 != 13568) && ((_590 & 32256) != 16896)) {
            _842 = _836;
            if (!((_685 ^ _795) || ((_806 ^ (_787 == 1536)) || (_805 ^ (((_590 & 32768) != 0) || _795))))) {
              _859 = (_808 ^ (((_590 & 32000) == 26880) || (_787 == 27136)));
            } else {
              _859 = true;
            }
            _862 = ((float)((bool)(!_859))) * _772;
            _864 = _862;
            _865 = _842;
            if ((_788 != 3473408) && ((_590 & 8257536) != 4325376)) {
              _871 = _864;
              _872 = _865;
              if (!((_685 ^ _799) || ((_806 ^ (_788 == 393216)) || (_805 ^ (((_590 & 8388608) != 0) || _799))))) {
                _889 = (_808 ^ (((_590 & 8192000) == 6881280) || (_788 == 6946816)));
              } else {
                _889 = true;
              }
              _892 = ((float)((bool)(!_889))) * _776;
              _894 = _892;
              _895 = _872;
              _896 = _871;
              if ((_789 != 889192448) && ((_590 & 2113929216) != 1107296256)) {
                _902 = _894;
                _903 = _895;
                _904 = _896;
                if (!((_685 ^ _803) || ((_806 ^ (_789 == 100663296)) || (_805 ^ (((int)_590 < (int)0) || _803))))) {
                  _920 = (_808 ^ (((_590 & 2097152000) == 1761607680) || (_789 == 1778384896)));
                } else {
                  _920 = true;
                }
                _923 = _902;
                _924 = _903;
                _925 = _904;
                _926 = (!_920);
              } else {
                _923 = _894;
                _924 = _895;
                _925 = _896;
                _926 = false;
              }
            } else {
              _894 = 0.0f;
              _895 = _865;
              _896 = _864;
              if ((_789 != 889192448) && ((_590 & 2113929216) != 1107296256)) {
                _902 = _894;
                _903 = _895;
                _904 = _896;
                if (!((_685 ^ _803) || ((_806 ^ (_789 == 100663296)) || (_805 ^ (((int)_590 < (int)0) || _803))))) {
                  _920 = (_808 ^ (((_590 & 2097152000) == 1761607680) || (_789 == 1778384896)));
                } else {
                  _920 = true;
                }
                _923 = _902;
                _924 = _903;
                _925 = _904;
                _926 = (!_920);
              } else {
                _923 = _894;
                _924 = _895;
                _925 = _896;
                _926 = false;
              }
            }
          } else {
            _864 = 0.0f;
            _865 = _836;
            if ((_788 != 3473408) && ((_590 & 8257536) != 4325376)) {
              _871 = _864;
              _872 = _865;
              if (!((_685 ^ _799) || ((_806 ^ (_788 == 393216)) || (_805 ^ (((_590 & 8388608) != 0) || _799))))) {
                _889 = (_808 ^ (((_590 & 8192000) == 6881280) || (_788 == 6946816)));
              } else {
                _889 = true;
              }
              _892 = ((float)((bool)(!_889))) * _776;
              _894 = _892;
              _895 = _872;
              _896 = _871;
              if ((_789 != 889192448) && ((_590 & 2113929216) != 1107296256)) {
                _902 = _894;
                _903 = _895;
                _904 = _896;
                if (!((_685 ^ _803) || ((_806 ^ (_789 == 100663296)) || (_805 ^ (((int)_590 < (int)0) || _803))))) {
                  _920 = (_808 ^ (((_590 & 2097152000) == 1761607680) || (_789 == 1778384896)));
                } else {
                  _920 = true;
                }
                _923 = _902;
                _924 = _903;
                _925 = _904;
                _926 = (!_920);
              } else {
                _923 = _894;
                _924 = _895;
                _925 = _896;
                _926 = false;
              }
            } else {
              _894 = 0.0f;
              _895 = _865;
              _896 = _864;
              if ((_789 != 889192448) && ((_590 & 2113929216) != 1107296256)) {
                _902 = _894;
                _903 = _895;
                _904 = _896;
                if (!((_685 ^ _803) || ((_806 ^ (_789 == 100663296)) || (_805 ^ (((int)_590 < (int)0) || _803))))) {
                  _920 = (_808 ^ (((_590 & 2097152000) == 1761607680) || (_789 == 1778384896)));
                } else {
                  _920 = true;
                }
                _923 = _902;
                _924 = _903;
                _925 = _904;
                _926 = (!_920);
              } else {
                _923 = _894;
                _924 = _895;
                _925 = _896;
                _926 = false;
              }
            }
          }
        }
      }
      _930 = (((float)((bool)(_926))) * _780);
      _931 = _923;
      _932 = _925;
      _933 = _924;
    } else {
      _930 = _780;
      _931 = _776;
      _932 = _772;
      _933 = _768;
    }
    _935 = __3__36__0__0__g_sceneNormalPrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(_573, _576));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather]
    _944 = min(1.0f, ((((float)((uint)((uint)(_935.w & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _950 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_935.w)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _956 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_935.w)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _958 = rsqrt(dot(float3(_944, _950, _956), float3(_944, _950, _956)));  // [sem: invLength]
    _963 = saturate(dot(float3(_452, _453, _454), float3((_958 * _944), (_958 * _950), (_958 * _956))));  // [sem: expr_sat]
    _968 = min(1.0f, ((((float)((uint)((uint)(_935.z & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _974 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_935.z)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _980 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_935.z)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _982 = rsqrt(dot(float3(_968, _974, _980), float3(_968, _974, _980)));  // [sem: invLength]
    _987 = saturate(dot(float3(_452, _453, _454), float3((_982 * _968), (_982 * _974), (_982 * _980))));  // [sem: expr_sat]
    _992 = min(1.0f, ((((float)((uint)((uint)(_935.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _998 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_935.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1004 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_935.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1006 = rsqrt(dot(float3(_992, _998, _1004), float3(_992, _998, _1004)));  // [sem: invLength]
    _1011 = saturate(dot(float3(_452, _453, _454), float3((_1006 * _992), (_1006 * _998), (_1006 * _1004))));  // [sem: expr_sat]
    _1016 = min(1.0f, ((((float)((uint)((uint)(_935.y & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1022 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_935.y)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1028 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_935.y)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormalPrev_gather_derived]
    _1030 = rsqrt(dot(float3(_1016, _1022, _1028), float3(_1016, _1022, _1028)));  // [sem: invLength]
    _1035 = saturate(dot(float3(_452, _453, _454), float3((_1030 * _1016), (_1030 * _1022), (_1030 * _1028))));  // [sem: expr_sat]
    _1036 = (_781 == 66);
    _1037 = (_111 == 53);
    _1040 = select((_1037 || (_1036 || _679)), 0.01f, 1.0f);
    _1041 = _561 - _569;
    _1042 = _564 - _570;
    _1043 = 1.0f - _1041;
    _1044 = 1.0f - _1042;
    _1046 = (_1043 * _1042) * _933;
    _1048 = (_1042 * _1041) * _932;
    _1050 = (_1044 * _1041) * _931;
    _1052 = (_1044 * _1043) * _930;
    _1058 = saturate(select(_415, 1.0f, (pow(_1011, _1040))) * _1046);  // [sem: expr_sat]
    _1064 = saturate(select(_415, 1.0f, (pow(_1035, _1040))) * _1048);  // [sem: expr_sat]
    _1070 = saturate(select(_415, 1.0f, (pow(_987, _1040))) * _1050);  // [sem: expr_sat]
    _1076 = saturate(select(_415, 1.0f, (pow(_963, _1040))) * _1052);  // [sem: expr_sat]
    _1079 = asint(__3__37__0__0__g_structureCounterBuffer.Load(8));
    _1080 = WaveReadLaneFirst(_1079);
    [branch]
    if (!(_1080 == 0)) {
      _1088 = (((uint)(__3__36__0__0__g_tiledManyLightsMasks.Load(int3(((int)(_90) >> 5), ((int)(_95) >> 5), 0)))).x) & 4;
      _1089 = (uint)((uint)(_1088)) >> 2;
      if (!(_1088 == 0)) {
        _1098 = _1089;
        _1099 = max((saturate(dot(float3(_334, _337, _340), float3(0.212671f, 0.71516f, 0.072169f)) * 0.01f) * 0.875f), _557);
      } else {
        _1098 = _1089;
        _1099 = _557;
      }
    } else {
      _1098 = 0;
      _1099 = _557;
    }
    // [sem: expr_sat]
    _1109 = saturate(max(_1099, ((_temporalReprojectionParams.w + (_environmentLightingHistory[1].w)) + _renderParams.y)));
    _1110 = (uint)((uint)(_568)) + (uint)(1);
    half4 _1112 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_566, _1110, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    _1117 = (uint)((uint)(_566)) + (uint)(1);
    half4 _1118 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1117, _1110, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    half4 _1123 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_1117, _568, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    half4 _1128 = __3__36__0__0__g_diffuseResultPrev.Load(int3(_566, _568, 0));  // [sem: _3__36__0__0__g_diffuseResultPrev_load]
    _1133 = dot(float4(_1058, _1064, _1070, _1076), float4(1.0f, 1.0f, 1.0f, 1.0f));
    // [sem: expr_sat]
    _1142 = saturate((1.0f / max(1.0f, _1133)) * dot(float4(_1058, _1064, _1070, _1076), float4(float(_1112.w), float(_1118.w), float(_1123.w), float(_1128.w))));
    _1147 = sqrt((_541 * _541) + (_540 * _540)) * 50.0f;
    if (_685) {
      _1156 = saturate(1.0f - _1147);  // [sem: expr_sat]
    } else {
      _1156 = (1.0f - (saturate(_1147) * 0.5f));  // [sem: expr_sat]
    }
    _1160 = max(1.0f, (_bufferSizeAndInvSize.w * 2160.0f));
    _1161 = select(_284, 1.0f, _1142);
    _1163 = (_1161 * _1161) * 4.0f;
    _1166 = __3__36__0__0__g_manyLightsMoments.SampleLevel(__3__40__0__0__g_sampler, float2(_102, _104), 0.0f);  // [sem: _3__36__0__0__g_manyLightsMoments_sampleLod]
    _1171 = saturate(_1166.w);  // [sem: expr_sat]
    _1173 = 1.0f / max(1e-06f, _1133);
    _1174 = _1173 * _1058;
    _1175 = _1173 * _1064;
    _1176 = _1173 * _1070;
    _1177 = _1173 * _1076;
    if (!((_1173 * _1133) == 0.0f)) {
      // [sem: expr_sat]
      _1194 = saturate(saturate(max(_1109, (1.0f / ((saturate(_1163) * min(31.0f, ((_1156 * 15.0f) * _1160))) + 1.0f))) + _renderParams.z));
    } else {
      _1194 = 1.0f;  // [sem: expr_sat]
    }
    _1197 = 1.0f / _exposure4.x;
    _1212 = -0.0f - _exposure4.y;
    _1217 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (min(0.0f, (-0.0f - ((_1177 * float(_1128.x)) + ((_1176 * float(_1123.x)) + ((_1174 * float(_1112.x)) + (_1175 * float(_1118.x))))))) * _1212))));
    _1235 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (min(0.0f, (-0.0f - ((_1177 * float(_1128.y)) + ((_1176 * float(_1123.y)) + ((_1174 * float(_1112.y)) + (_1175 * float(_1118.y))))))) * _1212))));
    _1253 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, (min(0.0f, (-0.0f - ((_1177 * float(_1128.z)) + ((_1176 * float(_1123.z)) + ((_1174 * float(_1112.z)) + (_1175 * float(_1118.z))))))) * _1212))));
    if (_renderParams.y == 0.0f) {
      _1256 = dot(float3(_1217, _1235, _1253), float3(0.212671f, 0.71516f, 0.072169f));
      _1263 = ((min(_1256, _1166.y) / max(1e-06f, _1256)) * _1171) + saturate(1.0f - _1171);
      _1277 = (_1263 * _1253);
      _1278 = (_1263 * _1235);
      _1279 = (_1263 * _1217);
      _1280 = saturate(((_1171 * 0.5f) * saturate(((_1166.x - _1256) * 2.0f) / max(1e-06f, _1166.x))) + _1194);  // [sem: expr_sat]
    } else {
      _1277 = _1253;
      _1278 = _1235;
      _1279 = _1217;
      _1280 = _1194;  // [sem: expr_sat]
    }
    if (!_284) {
      _1285 = saturate(_1142 + 0.0625f);  // [sem: expr_sat]
    } else {
      _1285 = 0.0f;  // [sem: expr_sat]
    }
    _1288 = ((_334 - _1279) * _1280) + _1279;
    _1291 = (_1280 * (_337 - _1278)) + _1278;
    _1294 = (_1280 * (_340 - _1277)) + _1277;
    __3__38__0__1__g_diffuseResultUAV[int2(_90, _95)] = float4((half)(half(_1288)), (half)(half(_1291)), (half)(half(_1294)), (half)(half(_1285)));
    _1300 = float(_447);
    _1301 = float(_446);
    _1302 = float(_445);
    if (_111 == 52) {
      _1310 = saturate(((_1301 + _1302) + _1300) * 1.2f);  // [sem: expr_sat]
    } else {
      _1310 = 1.0f;  // [sem: expr_sat]
    }
    _1311 = float(_449);
    _1317 = (0.7f / min(max(max(max(_1300, _1301), _1302), 0.01f), 0.7f)) * _1310;
    _1321 = (((_1317 * _1300) + -0.04f) * _1311) + 0.04f;
    _1325 = (((_1317 * _1301) + -0.04f) * _1311) + 0.04f;
    _1329 = (((_1317 * _1302) + -0.04f) * _1311) + 0.04f;
    if (!_415) {
      _1334 = (half)(saturate((half)(1.0h - (half)(_342.x))));  // [sem: _3__36__0__0__g_sceneAO_load_derived]
    } else {
      _1334 = 1.0h;  // [sem: _3__36__0__0__g_sceneAO_load_derived]
    }
    if (!((_111 == 98) || (_781 == 96))) {
      if ((uint)((int)(_111) + (int)(-105)) < (uint)2) {
        _1352 = (half)(select(_168, 0.0f, _449));
      } else {
        if (!((uint)((int)(_111) + (int)(-11)) < (uint)9)) {
          _1352 = (half)(select(((_111 == 65) || (_111 == 107)), 0.0f, _449));
        } else {
          _1352 = 0.0h;
        }
      }
    } else {
      _1352 = 0.0h;
    }
    _1354 = dot(float3(_455, _457, _459), float3(_452, _453, _454)) * 2.0f;
    _1356 = _455 - (_1354 * _452);
    _1358 = _457 - (_1354 * _453);
    _1360 = _459 - (_1354 * _454);
    _1365 = dot(float3(_455, _457, _459), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z));
    _1368 = (_411 * _411) + (_393 * _393);
    _1378 = sqrt(max(0.0f, (dot(float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z), float3(_diffViewPosAccurate.x, _diffViewPosAccurate.y, _diffViewPosAccurate.z)) - (_1365 * _1365)))) / (sqrt(_1368 + (_402 * _402)) + 5.0f);
    _1379 = float(_448);
    if ((_448 < 0.099975586h) && (_1378 < 0.125f)) {
      _1392 = select((_1379 < 0.8f), ((__3__36__0__0__g_specularRayHitDistance.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_102, _104), 0.0f)).x), 0.0f) * rsqrt(dot(float3(_1356, _1358, _1360), float3(_1356, _1358, _1360)));
      _1393 = _1392 * _1356;
      _1394 = _1392 * _1358;
      _1395 = _1392 * _1360;
      _1400 = dot(float3(_1393, _1394, _1395), float3((-0.0f - _452), (-0.0f - _453), (-0.0f - _454))) * 2.0f;
      _1403 = (_1393 + _393) + (_1400 * _452);
      _1406 = (_1394 + _402) + (_1400 * _453);
      _1409 = (_1395 + _411) + (_1400 * _454);
      _1421 = (_viewProjRelative[0].w) + mad((_viewProjRelative[0].z), _1409, mad((_viewProjRelative[0].y), _1406, (_1403 * (_viewProjRelative[0].x))));
      _1429 = mad((_viewProjRelative[1].z), _1409, mad((_viewProjRelative[1].y), _1406, (_1403 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w);
      _1437 = mad((_viewProjRelative[2].z), _1409, mad((_viewProjRelative[2].y), _1406, (_1403 * (_viewProjRelative[2].x)))) + (_viewProjRelative[2].w);
      _1445 = mad((_viewProjRelative[3].z), _1409, mad((_viewProjRelative[3].y), _1406, (_1403 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
      _1457 = mad((_projToPrevProj[3].w), _1445, mad((_projToPrevProj[3].z), _1437, mad((_projToPrevProj[3].y), _1429, ((_projToPrevProj[3].x) * _1421))));
      _1469 = ((mad((_projToPrevProj[0].w), _1445, mad((_projToPrevProj[0].z), _1437, mad((_projToPrevProj[0].y), _1429, ((_projToPrevProj[0].x) * _1421)))) / _1457) - (_1421 / _1445)) - _541;
      _1481 = ((mad((_projToPrevProj[1].w), _1445, mad((_projToPrevProj[1].z), _1437, mad((_projToPrevProj[1].y), _1429, ((_projToPrevProj[1].x) * _1421)))) / _1457) - (_1429 / _1445)) - _540;
      _1489 = max(_1378, saturate(sqrt((_1481 * _1481) + (_1469 * _1469))));
    } else {
      _1489 = _1378;
    }
    if (!((_781 == 24) || (_285 || _415))) {
      _1499 = (_renderParams.y > 0.0f);
    } else {
      _1499 = true;
    }
    _1500 = select(_1499, 1.0f, float(_342.y));
    _1501 = float(_1352);
    _1506 = min(max((_cavityParams.y + -1.0f), 0.0f), 2.0f);
    // [sem: expr_sat]
    _1532 = saturate(((((-0.05f - (_1506 * 0.075f)) + max(0.02f, _1379)) + (saturate(_115 * 0.025f) * 0.1f)) * min(max((_115 + 1.0f), 5.0f), 50.0f)) * (1.0f - (saturate(_1501) * 0.75f))) * saturate(saturate(1.0f - (((_1501 * _115) / max(0.001f, _462)) * 0.001f)) * 1.25f);
    if (_111 == 64) {
      _1541 = ((saturate(_115 * 0.25f) * (_1532 + -0.39990234f)) + 0.39990234f);
    } else {
      _1541 = _1532;
    }
    _1543 = (_1506 * 16.0f) + 16.0f;
    _1549 = select((_1506 > 1.0f), 0.0f, saturate((1.0f / _1543) * (_115 - _1543)));
    _1550 = (_111 == 105);
    if (!(_1550 || _415)) {
      _1562 = select((_111 == 65), 0.0f, select((_111 == 107), 1.0f, ((_1549 + _1541) - (_1549 * _1541))));
    } else {
      _1562 = select(_1550, 1.0f, 0.0f);
    }
    _1569 = saturate(select((_lightingParams.y == 0.0f), 1.0f, (1.0f - _1562))) * _1489;
    _1571 = max(0.099975586h, _448);
    if ((uint)_111 > (uint)51) {
      if ((uint)_111 < (uint)68) {
        if (_111 == 66) {
          _1587 = (half)(max(0.89990234h, _448));
        } else {
          if (_1037 || _1036) {
            _1587 = (half)(max(0.89990234h, _448));
          } else {
            _1587 = _1571;
          }
        }
      } else {
        _1587 = _1571;
      }
    } else {
      if (_1037 || _1036) {
        _1587 = (half)(max(0.89990234h, _448));
      } else {
        _1587 = _1571;
      }
    }
    _1588 = float(_1587);
    _1589 = _1588 * _1588;
    _1590 = _1589 * _1589;
    _1594 = (((_1590 * _1011) - _1011) * _1011) + 1.0f;
    _1598 = (((_1590 * _1035) - _1035) * _1035) + 1.0f;
    _1602 = (((_1590 * _987) - _987) * _987) + 1.0f;
    _1606 = (((_1590 * _963) - _963) * _963) + 1.0f;
    _1626 = (((((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_566, _1110, 0))).x) * saturate(_1046)) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1117, _1110, 0))).x) * saturate(_1048))) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_1117, _568, 0))).x) * saturate(_1050))) + (((__3__36__0__0__g_specularSampleCountPrev.Load(int3(_566, _568, 0))).x) * saturate(_1052));
    _1633 = saturate(select(_285, 1.0f, saturate((_1590 / (_1594 * _1594)) * _1011)) * _1046);  // [sem: expr_sat]
    _1640 = saturate(select(_285, 1.0f, saturate((_1590 / (_1598 * _1598)) * _1035)) * _1048);  // [sem: expr_sat]
    _1647 = saturate(select(_285, 1.0f, saturate((_1590 / (_1602 * _1602)) * _987)) * _1050);  // [sem: expr_sat]
    _1654 = saturate(select(_285, 1.0f, saturate((_1590 / (_1606 * _1606)) * _963)) * _1052);  // [sem: expr_sat]
    _1664 = exp2(log2(saturate(max(float(((half)(((half)(1.0h - _448)) * 0.75h)) * _1352), (1.0f - _462)))) * 0.1f);
    _1667 = float(((half)(_448 * _448)) + 1.0009766h);
    _1683 = select(_285, 1.0f, saturate(((_1160 * _1160) * _1163) * exp2((log2(float(_1571)) * 0.5f) * (((_1569 * 15.0f) * ((_1664 + _1667) / (_1667 - _1664))) + 1.0f))));
    if ((uint)((int)(_111) + (int)(-12)) < (uint)9) {
      _1693 = ((saturate(_115 * 0.005f) * (_1683 + -1.0f)) + 1.0f);
    } else {
      _1693 = _1683;
    }
    _1705 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), _106.x, mad((_projToPrevProj[3].y), _372, ((_projToPrevProj[3].x) * _370)));
    _1715 = ((mad((_projToPrevProj[0].z), _106.x, mad((_projToPrevProj[0].y), _372, ((_projToPrevProj[0].x) * _370))) + (_projToPrevProj[0].w)) / _1705) - _370;
    _1725 = ((mad((_projToPrevProj[1].z), _106.x, mad((_projToPrevProj[1].y), _372, ((_projToPrevProj[1].x) * _370))) + (_projToPrevProj[1].w)) / _1705) - _372;
    _1726 = _541 - _1715;
    _1727 = _540 - _1725;
    if (_685 || (_488 != 0)) {
      _1740 = (31.0f - (saturate(sqrt((_1727 * _1727) + (_1726 * _1726)) * 500.0f) * 24.0f));
    } else {
      _1740 = 63.0f;
    }
    if (_renderParams.z > 0.0f) {
      _1749 = saturate((_1569 * 200.0f) + 0.125f);  // [sem: expr_sat]
    } else {
      _1749 = 0.0f;  // [sem: expr_sat]
    }
    _1758 = max(max(saturate(_1109), saturate(max(0.0f, (1.0f / (((_1693 * _1626) * _1740) + 1.0f))))), _1749);
    [branch]
    if (_415) {
      _1765 = (_bufferSizeAndInvSize.x * ((_1715 * 0.5f) + _102)) + -0.5f;
      _1770 = (_bufferSizeAndInvSize.y * (_104 - (_1725 * 0.5f))) + -0.5f;
      _1772 = (int)(floor(_1765));
      _1774 = (int)(floor(_1770));
      _1775 = (float)((int)(_1772));
      _1776 = (float)((int)(_1774));
      [branch]
      if (_285) {
        // [sem: _3__36__0__0__g_stencilPrev_gather]
        _1786 = __3__36__0__0__g_stencilPrev.GatherRed(__3__40__0__0__g_samplerPoint, float2(((_1775 + 0.5f) * _bufferSizeAndInvSize.z), ((_1776 + 0.5f) * _bufferSizeAndInvSize.w)));
        _1793 = mad(_1786.w, 16777216, mad(_1786.z, 65536, mad(_1786.y, 256, _1786.x)));
        _1798 = saturate(((float)((bool)((uint)(_1793 & 24) > (uint)23))) * _1633);  // [sem: expr_sat]
        _1803 = saturate(((float)((bool)((uint)(_1793 & 6144) > (uint)5888))) * _1640);  // [sem: expr_sat]
        _1808 = saturate(((float)((bool)((uint)(_1793 & 1572864) > (uint)1507328))) * _1647);  // [sem: expr_sat]
        _1813 = saturate(((float)((bool)((uint)(_1793 & 402653184) > (uint)385875968))) * _1654);  // [sem: expr_sat]
        _1846 = _1813;
        _1847 = _1808;
        _1848 = _1803;
        _1849 = _1798;
        _1850 = _1774;
        _1851 = _1772;
        _1852 = max(saturate(min(max(((_450 / (((_115 * _115) * 0.005f) + 1.0f)) + (_1569 * 500.0f)), 0.03125f), 0.5f) + _1758), saturate(1.0f - dot(float4(_1798, _1803, _1808, _1813), float4(1.0f, 1.0f, 1.0f, 1.0f))));
      } else {
        _1829 = _1765 - _1775;
        _1830 = _1770 - _1776;
        _1831 = 1.0f - _1829;
        _1832 = 1.0f - _1830;
        _1846 = (_1832 * _1831);
        _1847 = (_1832 * _1829);
        _1848 = (_1830 * _1829);
        _1849 = (_1831 * _1830);
        _1850 = _1774;
        _1851 = _1772;
        _1852 = (saturate((sqrt((_1725 * _1725) + (_1715 * _1715)) * 50.0f) + 0.125f) * 0.875f);
      }
    } else {
      _1846 = _1654;
      _1847 = _1647;
      _1848 = _1640;
      _1849 = _1633;
      _1850 = _568;
      _1851 = _566;
      _1852 = _1758;
    }
    _1853 = (_1501 > 0.2f);
    _1854 = (uint)((uint)(_1850)) + (uint)(1);
    half4 _1856 = __3__36__0__0__g_specularResultPrev.Load(int3(_1851, _1854, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _1865 = ((float)((bool)(!(_1853 ^ ((half)(_1856.w) < 0.0h))))) * _1849;
    _1866 = (uint)((uint)(_1851)) + (uint)(1);
    half4 _1867 = __3__36__0__0__g_specularResultPrev.Load(int3(_1866, _1854, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _1876 = ((float)((bool)(!(_1853 ^ ((half)(_1867.w) < 0.0h))))) * _1848;
    half4 _1877 = __3__36__0__0__g_specularResultPrev.Load(int3(_1866, _1850, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _1886 = ((float)((bool)(!(_1853 ^ ((half)(_1877.w) < 0.0h))))) * _1847;
    half4 _1887 = __3__36__0__0__g_specularResultPrev.Load(int3(_1851, _1850, 0));  // [sem: _3__36__0__0__g_specularResultPrev_load]
    _1896 = ((float)((bool)(!(_1853 ^ ((half)(_1887.w) < 0.0h))))) * _1846;
    _1903 = 1.0f / max(((saturate(_115 * 0.0625f) * 0.000999f) + 1e-06f), dot(float4(_1865, _1876, _1886, _1896), float4(1.0f, 1.0f, 1.0f, 1.0f)));
    _1917 = -0.0f - _1903;
    _1918 = min(0.0f, (-0.0f - ((((_1865 * float(_1856.x)) + (_1876 * float(_1867.x))) + (_1886 * float(_1877.x))) + (_1896 * float(_1887.x))))) * _1917;
    _1932 = min(0.0f, (-0.0f - ((((_1865 * float(_1856.y)) + (_1876 * float(_1867.y))) + (_1886 * float(_1877.y))) + (_1896 * float(_1887.y))))) * _1917;
    _1946 = min(0.0f, (-0.0f - ((((_1865 * float(_1856.z)) + (_1876 * float(_1867.z))) + (_1886 * float(_1877.z))) + (_1896 * float(_1887.z))))) * _1917;
    _1964 = min(0.0f, (-0.0f - ((((abs(float(_1856.w)) * _1865) + (abs(float(_1867.w)) * _1876)) + (abs(float(_1877.w)) * _1886)) + (abs(float(_1887.w)) * _1896)))) * _1903;
    if (_renderParams.y == 0.0f) {
      _1968 = dot(float3(_1918, _1932, _1946), float3(0.212671f, 0.71516f, 0.072169f));
      _1975 = ((min(_1968, _1166.z) / max(1e-09f, _1968)) * _1171) + saturate(1.0f - _1171);
      _1996 = (_1975 * _1946);
      _1997 = (_1975 * _1932);
      _1998 = (_1975 * _1918);
      // [sem: expr_sat]
      _1999 = saturate(((_1171 * 0.5f) * saturate((((_1379 * 1000.0f) * _1569) * ((float(1.0h / ((half)(8.0h - ((half)(_448 * 7.0h))))) * _1166.z) - _1968)) / max(1e-06f, _1166.z))) + _1852);
    } else {
      _1996 = _1946;
      _1997 = _1932;
      _1998 = _1918;
      _1999 = _1852;  // [sem: expr_sat]
    }
    _2002 = _exposure4.y * _1998;
    _2003 = _exposure4.y * _1997;
    _2004 = _exposure4.y * _1996;
    _2009 = ((max(0.001f, float(_1334)) + _1964) * _1999) - _1964;
    _2017 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_1500 * _315.x) - _2002) * _1999) + _2002))));
    _2025 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_1500 * _315.y) - _2003) * _1999) + _2003))));
    _2033 = -0.0f - min(0.0f, (-0.0f - min(30000.0f, ((((_1500 * _315.z) - _2004) * _1999) + _2004))));
    __3__38__0__1__g_specularResultUAV[int2(_90, _95)] = float4((half)(half(_2017)), (half)(half(_2025)), (half)(half(_2033)), (half)(half(select(_1853, (-0.0f - _2009), _2009))));
    __3__38__0__1__g_specularSampleCountUAV[int2(_90, _95)] = saturate((_1626 * 0.984375f) + 0.015625f);
    _2045 = select(_415, 0.0f, _2009);
    _2050 = float(half(lerp(_2045, 1.0f, _1379)));
    _2051 = (_781 == 64);
    _2053 = ((int)(uint)(_169)) ^ 1;
    if ((_2053 & ((int)(uint)(_2051))) == 0) {
      _2069 = saturate(exp2((_2050 * _2050) * (_115 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _2069 = select((_cavityParams.z > 0.0f), 0.0f, 1.0f);  // [sem: expr_sat]
    }
    _2072 = (_cavityParams.x == 0.0f);
    _2073 = select(_2072, 1.0f, _2069);
    if (_2051) {
      _2079 = (_2073 * _1329);
      _2080 = (_2073 * _1325);
      _2081 = (_2073 * _1321);
    } else {
      _2079 = _1329;
      _2080 = _1325;
      _2081 = _1321;
    }
    // [sem: _3__36__0__0__g_iblBrdfLookup_sampleLod]
    _2086 = __3__36__0__0__g_iblBrdfLookup.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(min(0.99f, _462), (1.0f - _2050)), 0.0f);
    _2091 = select((_2051 || _415), 1.0f, _2073) * _1197;
    if (!(((uint)((int)(_111) + (int)(-27)) < (uint)2) || ((_781 == 6) || _685))) {
      if (!((_781 == 106) || (_1550 || ((_111 == 26) || _415)))) {
        _2109 = exp2((saturate(_115 * 0.03125f) + 1.0f) * log2(_2045));
        _2111 = __3__36__0__0__g_puddleMask.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_102, _104), 0.0f);  // [sem: _3__36__0__0__g_puddleMask_sampleLod]
        if (!(_111 == 15)) {
          if (((_109.x & 124) == 16) || (_781 == 12)) {
            _2132 = 1;
            _2133 = 0;
            if (_2111.w < 1.0f) {
              if ((_weatherCheckFlag & 5) == 5) {
                _2141 = (_111 == 36);
                if (!_2141) {
                  // [sem: _3__36__0__0__g_climateSandTex_sampleLod]
                  _2168 = __3__36__0__0__g_climateSandTex.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + ((_viewPos.x + _393) / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + ((_viewPos.z + _411) / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                  _2174 = _2168.w;
                  _2175 = _2168.z;
                  _2176 = _2168.y;
                  _2177 = _2168.x;
                } else {
                  _2174 = 0.5f;
                  _2175 = 0.1f;
                  _2176 = 0.12f;
                  _2177 = 0.12f;
                }
                _2187 = 1.0f - saturate(((_viewPos.y + _402) - _paramGlobalSand.x) / _paramGlobalSand.y);
                if (!(_2187 <= 0.0f)) {
                  _2190 = saturate(_2109);  // [sem: _2109_sat]
                  _2195 = ((_2176 * 0.33951f) + (_2175 * 0.04737f)) + (_2177 * 0.61312f);
                  _2200 = ((_2176 * 0.91636f) + (_2175 * 0.01345f)) + (_2177 * 0.0702f);
                  _2205 = ((_2176 * 0.10958f) + (_2175 * 0.8698f)) + (_2177 * 0.02062f);
                  _2211 = select((_2132 != 0), 1.0f, ((float)((bool)(saturate(dot(float3(_452, _453, _454), float3(0.0f, 1.0f, 0.0f))) > 0.5f))));
                  if (_enableSandAO == 1) {
                    _2217 = (1.0f - _2111.x) * 10.0f;
                    if (_2141) {
                      _2249 = saturate(((_2187 * _2174) * _2217) * _2190);  // [sem: _2245_sat]
                      _2250 = _2205;
                      _2251 = _2200;
                      _2252 = _2195;
                    } else {
                      _2225 = saturate(_2174 + -0.5f);  // [sem: expr_sat]
                      // [sem: _2245_sat]
                      _2249 = ((((_2190 * _2217) * saturate((0.5f - _2174) * 2.0f)) + ((_2225 * 2.0f) * max((_2211 * _2111.x), min((_2190 * ((_2111.x * 7.0f) + 3.0f)), (_2225 * 40.0f))))) * _2187);
                      _2250 = _2205;
                      _2251 = _2200;
                      _2252 = _2195;
                    }
                  } else {
                    _2245 = ((_2187 * _2174) * _2111.x) * _2211;
                    if (_2141) {
                      _2249 = saturate(_2245);  // [sem: _2245_sat]
                      _2250 = _2205;
                      _2251 = _2200;
                      _2252 = _2195;
                    } else {
                      _2249 = _2245;  // [sem: _2245_sat]
                      _2250 = _2205;
                      _2251 = _2200;
                      _2252 = _2195;
                    }
                  }
                } else {
                  _2249 = 0.0f;  // [sem: _2245_sat]
                  _2250 = 0.0f;
                  _2251 = 0.0f;
                  _2252 = 0.0f;
                }
                _2256 = ((1.0f - _2111.w) * (1.0f - _2111.y)) * _2249;
                if (_2256 > 0.0001f) {
                  _2259 = (_2132 == 0);
                  if (_2259) {
                    _2282 = ((_2250 - _1302) * _2256);
                    _2283 = ((_2251 - _1301) * _2256);
                    _2284 = ((_2252 - _1300) * _2256);
                  } else {
                    _2261 = saturate(_2256);  // [sem: _2256_sat]
                    _2282 = ((sqrt(_2250 * _1302) - _1302) * _2261);
                    _2283 = ((sqrt(_2251 * _1301) - _1301) * _2261);
                    _2284 = ((sqrt(_2252 * _1300) - _1300) * _2261);
                  }
                  _2285 = _1300 + _2284;
                  _2286 = _1301 + _2283;
                  _2287 = _2282 + _1302;
                  if (_2141) {
                    if (_2259) {
                      _2301 = _2285;
                      _2302 = _2286;
                      _2303 = _2287;
                      _2304 = ((_2256 * (0.25f - _1379)) + _1379);
                    } else {
                      _2301 = _2285;
                      _2302 = _2286;
                      _2303 = _2287;
                      _2304 = (((sqrt(_1379 * 0.25f) - _1379) * saturate(_2256)) + _1379);
                    }
                  } else {
                    _2301 = _2285;
                    _2302 = _2286;
                    _2303 = _2287;
                    _2304 = _1379;
                  }
                } else {
                  _2301 = _1300;
                  _2302 = _1301;
                  _2303 = _1302;
                  _2304 = _1379;
                }
                _2305 = saturate(_2301);  // [sem: _2301_sat]
                _2306 = saturate(_2302);  // [sem: _2302_sat]
                _2307 = saturate(_2303);  // [sem: _2303_sat]
                _2310 = (_2304 * (1.0f - _2109)) + _2109;
                _2313 = ((_2304 - _2310) * _2111.y) + _2310;
                _2321 = (((_2109 * _2109) * _2111.z) * ((float)((bool)(_2133 != 0)))) * saturate(dot(float3(_452, _453, _454), float3(0.0f, 1.0f, 0.0f)));
                _2322 = _2321 * -0.5f;
                _2334 = ((_2322 * _2307) + _2307);
                _2335 = ((_2322 * _2306) + _2306);
                _2336 = ((_2322 * _2305) + _2305);
                _2337 = (_2313 - (_2321 * _2313));
                _2338 = (_1311 - (_2109 * _1311));
              } else {
                _2334 = _1302;
                _2335 = _1301;
                _2336 = _1300;
                _2337 = _1379;
                _2338 = _1311;
              }
            } else {
              _2334 = _1302;
              _2335 = _1301;
              _2336 = _1300;
              _2337 = _1379;
              _2338 = _1311;
            }
          } else {
            if ((uint)_111 > (uint)10) {
              if ((uint)_111 < (uint)20) {
                _2132 = 0;
                _2133 = 0;
                if (_2111.w < 1.0f) {
                  if ((_weatherCheckFlag & 5) == 5) {
                    _2141 = (_111 == 36);
                    if (!_2141) {
                      // [sem: _3__36__0__0__g_climateSandTex_sampleLod]
                      _2168 = __3__36__0__0__g_climateSandTex.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + ((_viewPos.x + _393) / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + ((_viewPos.z + _411) / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                      _2174 = _2168.w;
                      _2175 = _2168.z;
                      _2176 = _2168.y;
                      _2177 = _2168.x;
                    } else {
                      _2174 = 0.5f;
                      _2175 = 0.1f;
                      _2176 = 0.12f;
                      _2177 = 0.12f;
                    }
                    _2187 = 1.0f - saturate(((_viewPos.y + _402) - _paramGlobalSand.x) / _paramGlobalSand.y);
                    if (!(_2187 <= 0.0f)) {
                      _2190 = saturate(_2109);  // [sem: _2109_sat]
                      _2195 = ((_2176 * 0.33951f) + (_2175 * 0.04737f)) + (_2177 * 0.61312f);
                      _2200 = ((_2176 * 0.91636f) + (_2175 * 0.01345f)) + (_2177 * 0.0702f);
                      _2205 = ((_2176 * 0.10958f) + (_2175 * 0.8698f)) + (_2177 * 0.02062f);
                      _2211 = select((_2132 != 0), 1.0f, ((float)((bool)(saturate(dot(float3(_452, _453, _454), float3(0.0f, 1.0f, 0.0f))) > 0.5f))));
                      if (_enableSandAO == 1) {
                        _2217 = (1.0f - _2111.x) * 10.0f;
                        if (_2141) {
                          _2249 = saturate(((_2187 * _2174) * _2217) * _2190);  // [sem: _2245_sat]
                          _2250 = _2205;
                          _2251 = _2200;
                          _2252 = _2195;
                        } else {
                          _2225 = saturate(_2174 + -0.5f);  // [sem: expr_sat]
                          // [sem: _2245_sat]
                          _2249 = ((((_2190 * _2217) * saturate((0.5f - _2174) * 2.0f)) + ((_2225 * 2.0f) * max((_2211 * _2111.x), min((_2190 * ((_2111.x * 7.0f) + 3.0f)), (_2225 * 40.0f))))) * _2187);
                          _2250 = _2205;
                          _2251 = _2200;
                          _2252 = _2195;
                        }
                      } else {
                        _2245 = ((_2187 * _2174) * _2111.x) * _2211;
                        if (_2141) {
                          _2249 = saturate(_2245);  // [sem: _2245_sat]
                          _2250 = _2205;
                          _2251 = _2200;
                          _2252 = _2195;
                        } else {
                          _2249 = _2245;  // [sem: _2245_sat]
                          _2250 = _2205;
                          _2251 = _2200;
                          _2252 = _2195;
                        }
                      }
                    } else {
                      _2249 = 0.0f;  // [sem: _2245_sat]
                      _2250 = 0.0f;
                      _2251 = 0.0f;
                      _2252 = 0.0f;
                    }
                    _2256 = ((1.0f - _2111.w) * (1.0f - _2111.y)) * _2249;
                    if (_2256 > 0.0001f) {
                      _2259 = (_2132 == 0);
                      if (_2259) {
                        _2282 = ((_2250 - _1302) * _2256);
                        _2283 = ((_2251 - _1301) * _2256);
                        _2284 = ((_2252 - _1300) * _2256);
                      } else {
                        _2261 = saturate(_2256);  // [sem: _2256_sat]
                        _2282 = ((sqrt(_2250 * _1302) - _1302) * _2261);
                        _2283 = ((sqrt(_2251 * _1301) - _1301) * _2261);
                        _2284 = ((sqrt(_2252 * _1300) - _1300) * _2261);
                      }
                      _2285 = _1300 + _2284;
                      _2286 = _1301 + _2283;
                      _2287 = _2282 + _1302;
                      if (_2141) {
                        if (_2259) {
                          _2301 = _2285;
                          _2302 = _2286;
                          _2303 = _2287;
                          _2304 = ((_2256 * (0.25f - _1379)) + _1379);
                        } else {
                          _2301 = _2285;
                          _2302 = _2286;
                          _2303 = _2287;
                          _2304 = (((sqrt(_1379 * 0.25f) - _1379) * saturate(_2256)) + _1379);
                        }
                      } else {
                        _2301 = _2285;
                        _2302 = _2286;
                        _2303 = _2287;
                        _2304 = _1379;
                      }
                    } else {
                      _2301 = _1300;
                      _2302 = _1301;
                      _2303 = _1302;
                      _2304 = _1379;
                    }
                    _2305 = saturate(_2301);  // [sem: _2301_sat]
                    _2306 = saturate(_2302);  // [sem: _2302_sat]
                    _2307 = saturate(_2303);  // [sem: _2303_sat]
                    _2310 = (_2304 * (1.0f - _2109)) + _2109;
                    _2313 = ((_2304 - _2310) * _2111.y) + _2310;
                    _2321 = (((_2109 * _2109) * _2111.z) * ((float)((bool)(_2133 != 0)))) * saturate(dot(float3(_452, _453, _454), float3(0.0f, 1.0f, 0.0f)));
                    _2322 = _2321 * -0.5f;
                    _2334 = ((_2322 * _2307) + _2307);
                    _2335 = ((_2322 * _2306) + _2306);
                    _2336 = ((_2322 * _2305) + _2305);
                    _2337 = (_2313 - (_2321 * _2313));
                    _2338 = (_1311 - (_2109 * _1311));
                  } else {
                    _2334 = _1302;
                    _2335 = _1301;
                    _2336 = _1300;
                    _2337 = _1379;
                    _2338 = _1311;
                  }
                } else {
                  _2334 = _1302;
                  _2335 = _1301;
                  _2336 = _1300;
                  _2337 = _1379;
                  _2338 = _1311;
                }
              } else {
                if (!(_111 == 97)) {
                  _2132 = 0;
                  _2133 = ((int)(uint)((int)(_111 != 107)));
                  if (_2111.w < 1.0f) {
                    if ((_weatherCheckFlag & 5) == 5) {
                      _2141 = (_111 == 36);
                      if (!_2141) {
                        // [sem: _3__36__0__0__g_climateSandTex_sampleLod]
                        _2168 = __3__36__0__0__g_climateSandTex.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + ((_viewPos.x + _393) / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + ((_viewPos.z + _411) / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                        _2174 = _2168.w;
                        _2175 = _2168.z;
                        _2176 = _2168.y;
                        _2177 = _2168.x;
                      } else {
                        _2174 = 0.5f;
                        _2175 = 0.1f;
                        _2176 = 0.12f;
                        _2177 = 0.12f;
                      }
                      _2187 = 1.0f - saturate(((_viewPos.y + _402) - _paramGlobalSand.x) / _paramGlobalSand.y);
                      if (!(_2187 <= 0.0f)) {
                        _2190 = saturate(_2109);  // [sem: _2109_sat]
                        _2195 = ((_2176 * 0.33951f) + (_2175 * 0.04737f)) + (_2177 * 0.61312f);
                        _2200 = ((_2176 * 0.91636f) + (_2175 * 0.01345f)) + (_2177 * 0.0702f);
                        _2205 = ((_2176 * 0.10958f) + (_2175 * 0.8698f)) + (_2177 * 0.02062f);
                        _2211 = select((_2132 != 0), 1.0f, ((float)((bool)(saturate(dot(float3(_452, _453, _454), float3(0.0f, 1.0f, 0.0f))) > 0.5f))));
                        if (_enableSandAO == 1) {
                          _2217 = (1.0f - _2111.x) * 10.0f;
                          if (_2141) {
                            _2249 = saturate(((_2187 * _2174) * _2217) * _2190);  // [sem: _2245_sat]
                            _2250 = _2205;
                            _2251 = _2200;
                            _2252 = _2195;
                          } else {
                            _2225 = saturate(_2174 + -0.5f);  // [sem: expr_sat]
                            // [sem: _2245_sat]
                            _2249 = ((((_2190 * _2217) * saturate((0.5f - _2174) * 2.0f)) + ((_2225 * 2.0f) * max((_2211 * _2111.x), min((_2190 * ((_2111.x * 7.0f) + 3.0f)), (_2225 * 40.0f))))) * _2187);
                            _2250 = _2205;
                            _2251 = _2200;
                            _2252 = _2195;
                          }
                        } else {
                          _2245 = ((_2187 * _2174) * _2111.x) * _2211;
                          if (_2141) {
                            _2249 = saturate(_2245);  // [sem: _2245_sat]
                            _2250 = _2205;
                            _2251 = _2200;
                            _2252 = _2195;
                          } else {
                            _2249 = _2245;  // [sem: _2245_sat]
                            _2250 = _2205;
                            _2251 = _2200;
                            _2252 = _2195;
                          }
                        }
                      } else {
                        _2249 = 0.0f;  // [sem: _2245_sat]
                        _2250 = 0.0f;
                        _2251 = 0.0f;
                        _2252 = 0.0f;
                      }
                      _2256 = ((1.0f - _2111.w) * (1.0f - _2111.y)) * _2249;
                      if (_2256 > 0.0001f) {
                        _2259 = (_2132 == 0);
                        if (_2259) {
                          _2282 = ((_2250 - _1302) * _2256);
                          _2283 = ((_2251 - _1301) * _2256);
                          _2284 = ((_2252 - _1300) * _2256);
                        } else {
                          _2261 = saturate(_2256);  // [sem: _2256_sat]
                          _2282 = ((sqrt(_2250 * _1302) - _1302) * _2261);
                          _2283 = ((sqrt(_2251 * _1301) - _1301) * _2261);
                          _2284 = ((sqrt(_2252 * _1300) - _1300) * _2261);
                        }
                        _2285 = _1300 + _2284;
                        _2286 = _1301 + _2283;
                        _2287 = _2282 + _1302;
                        if (_2141) {
                          if (_2259) {
                            _2301 = _2285;
                            _2302 = _2286;
                            _2303 = _2287;
                            _2304 = ((_2256 * (0.25f - _1379)) + _1379);
                          } else {
                            _2301 = _2285;
                            _2302 = _2286;
                            _2303 = _2287;
                            _2304 = (((sqrt(_1379 * 0.25f) - _1379) * saturate(_2256)) + _1379);
                          }
                        } else {
                          _2301 = _2285;
                          _2302 = _2286;
                          _2303 = _2287;
                          _2304 = _1379;
                        }
                      } else {
                        _2301 = _1300;
                        _2302 = _1301;
                        _2303 = _1302;
                        _2304 = _1379;
                      }
                      _2305 = saturate(_2301);  // [sem: _2301_sat]
                      _2306 = saturate(_2302);  // [sem: _2302_sat]
                      _2307 = saturate(_2303);  // [sem: _2303_sat]
                      _2310 = (_2304 * (1.0f - _2109)) + _2109;
                      _2313 = ((_2304 - _2310) * _2111.y) + _2310;
                      _2321 = (((_2109 * _2109) * _2111.z) * ((float)((bool)(_2133 != 0)))) * saturate(dot(float3(_452, _453, _454), float3(0.0f, 1.0f, 0.0f)));
                      _2322 = _2321 * -0.5f;
                      _2334 = ((_2322 * _2307) + _2307);
                      _2335 = ((_2322 * _2306) + _2306);
                      _2336 = ((_2322 * _2305) + _2305);
                      _2337 = (_2313 - (_2321 * _2313));
                      _2338 = (_1311 - (_2109 * _1311));
                    } else {
                      _2334 = _1302;
                      _2335 = _1301;
                      _2336 = _1300;
                      _2337 = _1379;
                      _2338 = _1311;
                    }
                  } else {
                    _2334 = _1302;
                    _2335 = _1301;
                    _2336 = _1300;
                    _2337 = _1379;
                    _2338 = _1311;
                  }
                } else {
                  _2334 = _1302;
                  _2335 = _1301;
                  _2336 = _1300;
                  _2337 = _1379;
                  _2338 = _1311;
                }
              }
            } else {
              _2132 = 0;
              _2133 = 1;
              if (_2111.w < 1.0f) {
                if ((_weatherCheckFlag & 5) == 5) {
                  _2141 = (_111 == 36);
                  if (!_2141) {
                    // [sem: _3__36__0__0__g_climateSandTex_sampleLod]
                    _2168 = __3__36__0__0__g_climateSandTex.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + ((_viewPos.x + _393) / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + ((_viewPos.z + _411) / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                    _2174 = _2168.w;
                    _2175 = _2168.z;
                    _2176 = _2168.y;
                    _2177 = _2168.x;
                  } else {
                    _2174 = 0.5f;
                    _2175 = 0.1f;
                    _2176 = 0.12f;
                    _2177 = 0.12f;
                  }
                  _2187 = 1.0f - saturate(((_viewPos.y + _402) - _paramGlobalSand.x) / _paramGlobalSand.y);
                  if (!(_2187 <= 0.0f)) {
                    _2190 = saturate(_2109);  // [sem: _2109_sat]
                    _2195 = ((_2176 * 0.33951f) + (_2175 * 0.04737f)) + (_2177 * 0.61312f);
                    _2200 = ((_2176 * 0.91636f) + (_2175 * 0.01345f)) + (_2177 * 0.0702f);
                    _2205 = ((_2176 * 0.10958f) + (_2175 * 0.8698f)) + (_2177 * 0.02062f);
                    _2211 = select((_2132 != 0), 1.0f, ((float)((bool)(saturate(dot(float3(_452, _453, _454), float3(0.0f, 1.0f, 0.0f))) > 0.5f))));
                    if (_enableSandAO == 1) {
                      _2217 = (1.0f - _2111.x) * 10.0f;
                      if (_2141) {
                        _2249 = saturate(((_2187 * _2174) * _2217) * _2190);  // [sem: _2245_sat]
                        _2250 = _2205;
                        _2251 = _2200;
                        _2252 = _2195;
                      } else {
                        _2225 = saturate(_2174 + -0.5f);  // [sem: expr_sat]
                        // [sem: _2245_sat]
                        _2249 = ((((_2190 * _2217) * saturate((0.5f - _2174) * 2.0f)) + ((_2225 * 2.0f) * max((_2211 * _2111.x), min((_2190 * ((_2111.x * 7.0f) + 3.0f)), (_2225 * 40.0f))))) * _2187);
                        _2250 = _2205;
                        _2251 = _2200;
                        _2252 = _2195;
                      }
                    } else {
                      _2245 = ((_2187 * _2174) * _2111.x) * _2211;
                      if (_2141) {
                        _2249 = saturate(_2245);  // [sem: _2245_sat]
                        _2250 = _2205;
                        _2251 = _2200;
                        _2252 = _2195;
                      } else {
                        _2249 = _2245;  // [sem: _2245_sat]
                        _2250 = _2205;
                        _2251 = _2200;
                        _2252 = _2195;
                      }
                    }
                  } else {
                    _2249 = 0.0f;  // [sem: _2245_sat]
                    _2250 = 0.0f;
                    _2251 = 0.0f;
                    _2252 = 0.0f;
                  }
                  _2256 = ((1.0f - _2111.w) * (1.0f - _2111.y)) * _2249;
                  if (_2256 > 0.0001f) {
                    _2259 = (_2132 == 0);
                    if (_2259) {
                      _2282 = ((_2250 - _1302) * _2256);
                      _2283 = ((_2251 - _1301) * _2256);
                      _2284 = ((_2252 - _1300) * _2256);
                    } else {
                      _2261 = saturate(_2256);  // [sem: _2256_sat]
                      _2282 = ((sqrt(_2250 * _1302) - _1302) * _2261);
                      _2283 = ((sqrt(_2251 * _1301) - _1301) * _2261);
                      _2284 = ((sqrt(_2252 * _1300) - _1300) * _2261);
                    }
                    _2285 = _1300 + _2284;
                    _2286 = _1301 + _2283;
                    _2287 = _2282 + _1302;
                    if (_2141) {
                      if (_2259) {
                        _2301 = _2285;
                        _2302 = _2286;
                        _2303 = _2287;
                        _2304 = ((_2256 * (0.25f - _1379)) + _1379);
                      } else {
                        _2301 = _2285;
                        _2302 = _2286;
                        _2303 = _2287;
                        _2304 = (((sqrt(_1379 * 0.25f) - _1379) * saturate(_2256)) + _1379);
                      }
                    } else {
                      _2301 = _2285;
                      _2302 = _2286;
                      _2303 = _2287;
                      _2304 = _1379;
                    }
                  } else {
                    _2301 = _1300;
                    _2302 = _1301;
                    _2303 = _1302;
                    _2304 = _1379;
                  }
                  _2305 = saturate(_2301);  // [sem: _2301_sat]
                  _2306 = saturate(_2302);  // [sem: _2302_sat]
                  _2307 = saturate(_2303);  // [sem: _2303_sat]
                  _2310 = (_2304 * (1.0f - _2109)) + _2109;
                  _2313 = ((_2304 - _2310) * _2111.y) + _2310;
                  _2321 = (((_2109 * _2109) * _2111.z) * ((float)((bool)(_2133 != 0)))) * saturate(dot(float3(_452, _453, _454), float3(0.0f, 1.0f, 0.0f)));
                  _2322 = _2321 * -0.5f;
                  _2334 = ((_2322 * _2307) + _2307);
                  _2335 = ((_2322 * _2306) + _2306);
                  _2336 = ((_2322 * _2305) + _2305);
                  _2337 = (_2313 - (_2321 * _2313));
                  _2338 = (_1311 - (_2109 * _1311));
                } else {
                  _2334 = _1302;
                  _2335 = _1301;
                  _2336 = _1300;
                  _2337 = _1379;
                  _2338 = _1311;
                }
              } else {
                _2334 = _1302;
                _2335 = _1301;
                _2336 = _1300;
                _2337 = _1379;
                _2338 = _1311;
              }
            }
          }
        } else {
          _2132 = 1;
          _2133 = 0;
          if (_2111.w < 1.0f) {
            if ((_weatherCheckFlag & 5) == 5) {
              _2141 = (_111 == 36);
              if (!_2141) {
                // [sem: _3__36__0__0__g_climateSandTex_sampleLod]
                _2168 = __3__36__0__0__g_climateSandTex.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((((float)((int)((int)(_climateTextureSize.x) >> 1))) + ((_viewPos.x + _393) / _climateTextureOnePixelMeter.x)) / ((float)((int)(_climateTextureSize.x)))), (1.0f - ((((float)((int)((int)(_climateTextureSize.y) >> 1))) + ((_viewPos.z + _411) / _climateTextureOnePixelMeter.y)) / ((float)((int)(_climateTextureSize.y)))))), 0.0f);
                _2174 = _2168.w;
                _2175 = _2168.z;
                _2176 = _2168.y;
                _2177 = _2168.x;
              } else {
                _2174 = 0.5f;
                _2175 = 0.1f;
                _2176 = 0.12f;
                _2177 = 0.12f;
              }
              _2187 = 1.0f - saturate(((_viewPos.y + _402) - _paramGlobalSand.x) / _paramGlobalSand.y);
              if (!(_2187 <= 0.0f)) {
                _2190 = saturate(_2109);  // [sem: _2109_sat]
                _2195 = ((_2176 * 0.33951f) + (_2175 * 0.04737f)) + (_2177 * 0.61312f);
                _2200 = ((_2176 * 0.91636f) + (_2175 * 0.01345f)) + (_2177 * 0.0702f);
                _2205 = ((_2176 * 0.10958f) + (_2175 * 0.8698f)) + (_2177 * 0.02062f);
                _2211 = select((_2132 != 0), 1.0f, ((float)((bool)(saturate(dot(float3(_452, _453, _454), float3(0.0f, 1.0f, 0.0f))) > 0.5f))));
                if (_enableSandAO == 1) {
                  _2217 = (1.0f - _2111.x) * 10.0f;
                  if (_2141) {
                    _2249 = saturate(((_2187 * _2174) * _2217) * _2190);  // [sem: _2245_sat]
                    _2250 = _2205;
                    _2251 = _2200;
                    _2252 = _2195;
                  } else {
                    _2225 = saturate(_2174 + -0.5f);  // [sem: expr_sat]
                    // [sem: _2245_sat]
                    _2249 = ((((_2190 * _2217) * saturate((0.5f - _2174) * 2.0f)) + ((_2225 * 2.0f) * max((_2211 * _2111.x), min((_2190 * ((_2111.x * 7.0f) + 3.0f)), (_2225 * 40.0f))))) * _2187);
                    _2250 = _2205;
                    _2251 = _2200;
                    _2252 = _2195;
                  }
                } else {
                  _2245 = ((_2187 * _2174) * _2111.x) * _2211;
                  if (_2141) {
                    _2249 = saturate(_2245);  // [sem: _2245_sat]
                    _2250 = _2205;
                    _2251 = _2200;
                    _2252 = _2195;
                  } else {
                    _2249 = _2245;  // [sem: _2245_sat]
                    _2250 = _2205;
                    _2251 = _2200;
                    _2252 = _2195;
                  }
                }
              } else {
                _2249 = 0.0f;  // [sem: _2245_sat]
                _2250 = 0.0f;
                _2251 = 0.0f;
                _2252 = 0.0f;
              }
              _2256 = ((1.0f - _2111.w) * (1.0f - _2111.y)) * _2249;
              if (_2256 > 0.0001f) {
                _2259 = (_2132 == 0);
                if (_2259) {
                  _2282 = ((_2250 - _1302) * _2256);
                  _2283 = ((_2251 - _1301) * _2256);
                  _2284 = ((_2252 - _1300) * _2256);
                } else {
                  _2261 = saturate(_2256);  // [sem: _2256_sat]
                  _2282 = ((sqrt(_2250 * _1302) - _1302) * _2261);
                  _2283 = ((sqrt(_2251 * _1301) - _1301) * _2261);
                  _2284 = ((sqrt(_2252 * _1300) - _1300) * _2261);
                }
                _2285 = _1300 + _2284;
                _2286 = _1301 + _2283;
                _2287 = _2282 + _1302;
                if (_2141) {
                  if (_2259) {
                    _2301 = _2285;
                    _2302 = _2286;
                    _2303 = _2287;
                    _2304 = ((_2256 * (0.25f - _1379)) + _1379);
                  } else {
                    _2301 = _2285;
                    _2302 = _2286;
                    _2303 = _2287;
                    _2304 = (((sqrt(_1379 * 0.25f) - _1379) * saturate(_2256)) + _1379);
                  }
                } else {
                  _2301 = _2285;
                  _2302 = _2286;
                  _2303 = _2287;
                  _2304 = _1379;
                }
              } else {
                _2301 = _1300;
                _2302 = _1301;
                _2303 = _1302;
                _2304 = _1379;
              }
              _2305 = saturate(_2301);  // [sem: _2301_sat]
              _2306 = saturate(_2302);  // [sem: _2302_sat]
              _2307 = saturate(_2303);  // [sem: _2303_sat]
              _2310 = (_2304 * (1.0f - _2109)) + _2109;
              _2313 = ((_2304 - _2310) * _2111.y) + _2310;
              _2321 = (((_2109 * _2109) * _2111.z) * ((float)((bool)(_2133 != 0)))) * saturate(dot(float3(_452, _453, _454), float3(0.0f, 1.0f, 0.0f)));
              _2322 = _2321 * -0.5f;
              _2334 = ((_2322 * _2307) + _2307);
              _2335 = ((_2322 * _2306) + _2306);
              _2336 = ((_2322 * _2305) + _2305);
              _2337 = (_2313 - (_2321 * _2313));
              _2338 = (_1311 - (_2109 * _1311));
            } else {
              _2334 = _1302;
              _2335 = _1301;
              _2336 = _1300;
              _2337 = _1379;
              _2338 = _1311;
            }
          } else {
            _2334 = _1302;
            _2335 = _1301;
            _2336 = _1300;
            _2337 = _1379;
            _2338 = _1311;
          }
        }
        _2345 = _2109;
        _2346 = (half)(half(_2334));
        _2347 = (half)(half(_2335));
        _2348 = (half)(half(_2336));
        _2349 = (half)(half(_2337));
        _2350 = (half)(half(_2338));
      } else {
        _2345 = _2045;
        _2346 = _445;
        _2347 = _446;
        _2348 = _447;
        _2349 = _448;
        _2350 = _449;
      }
    } else {
      _2345 = _2045;
      _2346 = _445;
      _2347 = _446;
      _2348 = _447;
      _2349 = _448;
      _2350 = _449;
    }
    half4 _2352 = __3__36__0__0__g_sceneShadowColor.Load(int3(_90, _95, 0));  // [sem: _3__36__0__0__g_sceneShadowColor_load]
    [branch]
    if (_415) {
      _2358 = __3__36__0__0__g_sceneNormal.Load(int3(_90, _95, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
      _2364 = min(1.0f, ((((float)((uint)((uint)(_2358.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _2370 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2358.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _2376 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_2358.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _2378 = rsqrt(dot(float3(_2364, _2370, _2376), float3(_2364, _2370, _2376)));  // [sem: invLength]
      _2386 = (half)(half(_2378 * _2376));
      _2387 = (half)(half(_2378 * _2370));
      _2388 = (half)(half(_2378 * _2364));
    } else {
      _2386 = _259;
      _2387 = _258;
      _2388 = _257;
    }
    _2391 = (_sunDirection.y > 0.0f);
    if (_2391) {
      _2407 = _sunDirection.x;
      _2408 = _sunDirection.y;
      _2409 = _sunDirection.z;
      _2424 = _2407;
      _2425 = _2408;
      _2426 = _2409;
      _2427 = _precomputedAmbient7.y;
    } else {
      _2398 = (_sunDirection.y > _moonDirection.y);
      _2403 = select(_2398, _sunDirection.z, _moonDirection.z);
      _2404 = select(_2398, _sunDirection.x, _moonDirection.x);
      _2405 = select(_2398, _sunDirection.y, _moonDirection.y);
      if (_2398) {
        _2407 = _2404;
        _2408 = _2405;
        _2409 = _2403;
        _2424 = _2407;
        _2425 = _2408;
        _2426 = _2409;
        _2427 = _precomputedAmbient7.y;
      } else {
        _2424 = _2404;
        _2425 = _2405;
        _2426 = _2403;
        _2427 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
      }
    }
    _2430 = _viewPos.x + _393;
    _2435 = (_viewPos.y + _402) + _earthRadius;
    _2437 = _viewPos.z + _411;
    _2443 = sqrt(((_2437 * _2437) + (_2430 * _2430)) + (_2435 * _2435));
    _2447 = dot(float3((_2430 / _2443), (_2435 / _2443), (_2437 / _2443)), float3(_2424, _2425, _2426));
    _2454 = min(max(((_2443 - _earthRadius) / _atmosphereThickness), 16.0f), (_atmosphereThickness + -16.0f));
    _2455 = max(_2454, 0.0f);
    _2462 = (-0.0f - sqrt((_2455 + (_earthRadius * 2.0f)) * _2455)) / (_2455 + _earthRadius);
    if (_2447 > _2462) {
      _2485 = ((exp2(log2(saturate((_2447 - _2462) / (1.0f - _2462))) * 0.2f) * 0.4921875f) + 0.50390625f);
    } else {
      _2485 = ((exp2(log2(saturate((_2462 - _2447) / (_2462 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
    }
    // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
    _2496 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_2454 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f), _2485), 0.0f);
    _2505 = ((_2496.y * 2e-05f) * _mieAerosolDensity) * (_mieAerosolAbsorption + 1.0f);  // [sem: _3__36__0__0__g_texNetDensity_sampleLod_derived]
    _2519 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.0556001e-06f)) * _2496.x) + _2505) * -1.442695f);
    _2529 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 4.9788005e-06f)) * _2496.x) + _2505) * -1.442695f);
    _2538 = exp2(((((((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.1360002e-07f)) * _2496.x) + _2505) * -1.442695f);
    _2539 = sqrt(_1368);
    _2547 = (_cloudAltitude - (max(((_2539 * _2539) + -400000.0f), 0.0f) * 1e-06f)) - _viewPos.y;
    _2559 = (_cloudThickness * (0.5f - (((float)((int)((int)((int)(uint)((int)(_2425 > 0.0f))) - (int)((int)(uint)((int)(_2425 < 0.0f)))))) * 0.5f))) + _2547;
    if (_402 < _2547) {
      _2562 = dot(float3(0.0f, 1.0f, 0.0f), float3(_2424, _2425, _2426));
      _2568 = select((abs(_2562) < 1e-08f), 1e+08f, ((_2559 - dot(float3(0.0f, 1.0f, 0.0f), float3(_393, _402, _411))) / _2562));
      _2574 = ((_2568 * _2426) + _411);
      _2575 = _2559;
      _2576 = ((_2568 * _2424) + _393);
    } else {
      _2574 = _411;
      _2575 = _402;
      _2576 = _393;
    }
    _2579 = saturate(abs(_2425) * 4.0f);  // [sem: expr_sat]
    _2598 = (_2579 * _2579) * exp2(((_distanceScale * -1.442695f) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3(((_2576 * 5e-05f) + 0.5f), ((_2575 - _2547) / _cloudThickness), ((_2574 * 5e-05f) + 0.5f)), 0.0f)).x)) * (_cloudScatteringCoefficient / _distanceScale));
    _2605 = ((1.0f - _2598) * saturate(((_402 - _cloudThickness) - _2547) * 0.1f)) + _2598;
    _2611 = _2605 * (((_2529 * 0.33951f) + (_2519 * 0.61312f)) + (_2538 * 0.04737f));
    _2617 = _2605 * (((_2529 * 0.91636f) + (_2519 * 0.0702f)) + (_2538 * 0.01345f));
    _2623 = _2605 * (((_2529 * 0.10958f) + (_2519 * 0.02062f)) + (_2538 * 0.8698f));
    _2629 = (((_2611 * 0.61312f) + (_2617 * 0.33951f)) + (_2623 * 0.04737f)) * _2427;
    _2635 = (((_2611 * 0.0702f) + (_2617 * 0.91636f)) + (_2623 * 0.01345f)) * _2427;
    _2641 = (((_2611 * 0.02062f) + (_2617 * 0.10958f)) + (_2623 * 0.8698f)) * _2427;
    _2642 = float(_2352.x);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    _2643 = float(_2352.y);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    _2644 = float(_2352.z);  // [sem: _3__36__0__0__g_sceneShadowColor_load_derived]
    if (_319) {
      if ((uint)_111 < (uint)20) {
        if (_111 == 19) {
          _2682 = float(_2386);
          _2683 = float(_2387);
          _2684 = float(_2388);
          _2685 = 1;
          _2686 = 0;
          _2687 = 1;
          _2688 = 19;
        } else {
          _2659 = 1;
          _2667 = select(((_781 == 26) || (_1550 || (_111 == 28))), 1, ((int)(uint)((int)(_111 == 106))));
          _2668 = (int)(uint)((int)(_111 == 107));
          _2669 = float(_2388);
          _2670 = float(_2387);
          _2671 = float(_2386);
          if (_111 == 97) {
            _2682 = _2671;
            _2683 = _2670;
            _2684 = _2669;
            _2685 = _2668;
            _2686 = _2667;
            _2687 = _2659;
            _2688 = ((int)((uint)((uint)((int)(min16uint)((int)(((int)(((uint16_t)(__3__36__0__0__g_sceneDecalMask.Load(int3(_90, _95, 0)))).x)) & 2)))) >> 1) + (int)(97));
          } else {
            _2682 = _2671;
            _2683 = _2670;
            _2684 = _2669;
            _2685 = _2668;
            _2686 = _2667;
            _2687 = _2659;
            _2688 = _111;
          }
        }
      } else {
        if (!(_111 == 107)) {
          _2659 = ((int)(uint)((int)(_111 == 20)));
        } else {
          _2659 = 1;
        }
        _2667 = select(((_781 == 26) || (_1550 || (_111 == 28))), 1, ((int)(uint)((int)(_111 == 106))));
        _2668 = (int)(uint)((int)(_111 == 107));
        _2669 = float(_2388);
        _2670 = float(_2387);
        _2671 = float(_2386);
        if (_111 == 97) {
          _2682 = _2671;
          _2683 = _2670;
          _2684 = _2669;
          _2685 = _2668;
          _2686 = _2667;
          _2687 = _2659;
          _2688 = ((int)((uint)((uint)((int)(min16uint)((int)(((int)(((uint16_t)(__3__36__0__0__g_sceneDecalMask.Load(int3(_90, _95, 0)))).x)) & 2)))) >> 1) + (int)(97));
        } else {
          _2682 = _2671;
          _2683 = _2670;
          _2684 = _2669;
          _2685 = _2668;
          _2686 = _2667;
          _2687 = _2659;
          _2688 = _111;
        }
      }
    } else {
      _2659 = ((int)(uint)((int)(_111 == 20)));
      _2667 = select(((_781 == 26) || (_1550 || (_111 == 28))), 1, ((int)(uint)((int)(_111 == 106))));
      _2668 = (int)(uint)((int)(_111 == 107));
      _2669 = float(_2388);
      _2670 = float(_2387);
      _2671 = float(_2386);
      if (_111 == 97) {
        _2682 = _2671;
        _2683 = _2670;
        _2684 = _2669;
        _2685 = _2668;
        _2686 = _2667;
        _2687 = _2659;
        _2688 = ((int)((uint)((uint)((int)(min16uint)((int)(((int)(((uint16_t)(__3__36__0__0__g_sceneDecalMask.Load(int3(_90, _95, 0)))).x)) & 2)))) >> 1) + (int)(97));
      } else {
        _2682 = _2671;
        _2683 = _2670;
        _2684 = _2669;
        _2685 = _2668;
        _2686 = _2667;
        _2687 = _2659;
        _2688 = _111;
      }
    }
    _2690 = float(saturate(_185));
    _2691 = _2690 * _2690;
    _2692 = _2691 * _2691;
    _2693 = _2692 * _2692;
    _2708 = ((_2693 * _2693) * select((_285 || (((int)(_2686) | (int)(_2685)) != 0)), 0.0f, 1.0f)) * (((float4)(__3__36__0__0__g_puddleMask.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((_bufferSizeAndInvSize.z * _97), (_bufferSizeAndInvSize.w * _99)), 0.0f))).y);
    _2710 = _2684 - (_2708 * _2684);
    _2713 = (_2708 * (1.0f - _2683)) + _2683;
    _2715 = _2682 - (_2708 * _2682);
    _2717 = rsqrt(dot(float3(_2710, _2713, _2715), float3(_2710, _2713, _2715)));  // [sem: invLength]
    _2718 = _2710 * _2717;
    _2719 = _2713 * _2717;
    _2720 = _2715 * _2717;
    if ((_2391) || ((!(_2391)) && (_sunDirection.y > _moonDirection.y))) {
      _2732 = _sunDirection.z;
      _2733 = _sunDirection.y;
      _2734 = _sunDirection.x;
    } else {
      _2732 = _moonDirection.z;
      _2733 = _moonDirection.y;
      _2734 = _moonDirection.x;
    }
    _2737 = _lightingParams.x * _2629;
    _2738 = _lightingParams.x * _2635;
    _2739 = _lightingParams.x * _2641;
    _2740 = _2734 - _455;
    _2741 = _2733 - _457;
    _2742 = _2732 - _459;
    _2744 = rsqrt(dot(float3(_2740, _2741, _2742), float3(_2740, _2741, _2742)));  // [sem: invLength]
    _2745 = _2744 * _2740;
    _2746 = _2744 * _2741;
    _2747 = _2744 * _2742;
    _2748 = dot(float3(_2684, _2683, _2682), float3(_2734, _2733, _2732));
    _2749 = dot(float3(_2718, _2719, _2720), float3(_2734, _2733, _2732));
    _2751 = saturate(dot(float3(_2684, _2683, _2682), float3(_456, _458, _460)));  // [sem: expr_sat]
    _2753 = saturate(dot(float3(_2718, _2719, _2720), float3(_2745, _2746, _2747)));  // [sem: expr_sat]
    _2755 = saturate(dot(float3(_2734, _2733, _2732), float3(_2745, _2746, _2747)));  // [sem: expr_sat]
    _2757 = float(max(0.010002136h, _2349));
    _2758 = saturate(_2748);  // [sem: _2748_sat]
    _2759 = _2757 * _2757;
    _2760 = _2759 * _2759;
    _2761 = 1.0f - _2760;
    _2762 = 1.0f - _2755;
    _2763 = _2762 * _2762;
    _2766 = ((_2763 * _2763) * _2762) + _2755;
    _2767 = 1.0f - _2758;
    _2768 = _2767 * _2767;
    _2769 = 1.0f - _2751;
    _2770 = _2769 * _2769;
    // [sem: expr_sat]
    _2802 = saturate((_2758 * 0.31830987f) * ((((((1.0f - ((_2768 * _2768) * (_2767 * 0.75f))) * (1.0f - ((_2770 * _2770) * (_2769 * 0.75f)))) - _2766) * saturate((_2761 * 2.2f) + -0.5f)) + _2766) + ((exp2(-0.0f - (max(((_2761 * 73.2f) + -21.2f), 8.9f) * sqrt(_2753))) * _2755) * ((((_2761 * 34.5f) + -59.0f) * _2761) + 24.5f))));
    _2803 = _2688 & 126;
    if (_2688 == 98) {
      _2843 = float(_2346);
      _2844 = float(_2347);
      _2845 = float(_2348);
      _2846 = false;
      _2847 = 0.0f;
      _2848 = 1.0f;  // [sem: expr_sat]
    } else {
      if (_2803 == 96) {
        _2820 = 1;
        if (_2688 == 65) {
          _2843 = float(_2346);
          _2844 = float(_2347);
          _2845 = float(_2348);
          _2846 = false;
          _2847 = 0.0f;
          _2848 = 1.0f;  // [sem: expr_sat]
        } else {
          _2823 = _2820;
          _2828 = select(((_2688 == 107) || (_2823 != 0)), 0.0f, float(_2350));
          _2830 = float(_2348);
          _2831 = float(_2347);
          _2832 = float(_2346);
          if (_2688 == 52) {
            _2843 = _2832;
            _2844 = _2831;
            _2845 = _2830;
            _2846 = true;
            _2847 = _2828;
            _2848 = saturate(((_2831 + _2832) + _2830) * 1.2f);  // [sem: expr_sat]
          } else {
            _2843 = _2832;
            _2844 = _2831;
            _2845 = _2830;
            _2846 = false;
            _2847 = _2828;
            _2848 = 1.0f;  // [sem: expr_sat]
          }
        }
      } else {
        if ((uint)((int)(_2688) + (int)(-105)) < (uint)2) {
          _2823 = ((int)(uint)(_168));
          _2828 = select(((_2688 == 107) || (_2823 != 0)), 0.0f, float(_2350));
          _2830 = float(_2348);
          _2831 = float(_2347);
          _2832 = float(_2346);
          if (_2688 == 52) {
            _2843 = _2832;
            _2844 = _2831;
            _2845 = _2830;
            _2846 = true;
            _2847 = _2828;
            _2848 = saturate(((_2831 + _2832) + _2830) * 1.2f);  // [sem: expr_sat]
          } else {
            _2843 = _2832;
            _2844 = _2831;
            _2845 = _2830;
            _2846 = false;
            _2847 = _2828;
            _2848 = 1.0f;  // [sem: expr_sat]
          }
        } else {
          if ((uint)((int)(_2688) + (int)(-11)) < (uint)9) {
            _2843 = float(_2346);
            _2844 = float(_2347);
            _2845 = float(_2348);
            _2846 = false;
            _2847 = 0.0f;
            _2848 = 1.0f;  // [sem: expr_sat]
          } else {
            _2820 = 0;
            if (_2688 == 65) {
              _2843 = float(_2346);
              _2844 = float(_2347);
              _2845 = float(_2348);
              _2846 = false;
              _2847 = 0.0f;
              _2848 = 1.0f;  // [sem: expr_sat]
            } else {
              _2823 = _2820;
              _2828 = select(((_2688 == 107) || (_2823 != 0)), 0.0f, float(_2350));
              _2830 = float(_2348);
              _2831 = float(_2347);
              _2832 = float(_2346);
              if (_2688 == 52) {
                _2843 = _2832;
                _2844 = _2831;
                _2845 = _2830;
                _2846 = true;
                _2847 = _2828;
                _2848 = saturate(((_2831 + _2832) + _2830) * 1.2f);  // [sem: expr_sat]
              } else {
                _2843 = _2832;
                _2844 = _2831;
                _2845 = _2830;
                _2846 = false;
                _2847 = _2828;
                _2848 = 1.0f;  // [sem: expr_sat]
              }
            }
          }
        }
      }
    }
    _2854 = (0.7f / min(max(max(max(_2845, _2844), _2843), 0.01f), 0.7f)) * _2848;
    _2858 = (((_2854 * _2845) + -0.04f) * _2847) + 0.04f;
    _2862 = (((_2854 * _2844) + -0.04f) * _2847) + 0.04f;
    _2866 = (((_2854 * _2843) + -0.04f) * _2847) + 0.04f;
    _2867 = float(_2349);
    _2868 = (_2803 == 64);
    _2871 = ((((int)(uint)(_2868)) & _2053) == 0);
    if (_2871) {
      _2883 = saturate(exp2((_2867 * _2867) * (_115 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _2883 = select((_cavityParams.z > 0.0f), 0.0f, 1.0f);  // [sem: expr_sat]
    }
    _2884 = select(_2072, 1.0f, _2883);
    if (_2868) {
      _2890 = (_2884 * _2858);
      _2891 = (_2884 * _2862);
      _2892 = (_2884 * _2866);
    } else {
      _2890 = _2858;
      _2891 = _2862;
      _2892 = _2866;
    }
    _2896 = saturate(1.0f - saturate(dot(float3(_456, _458, _460), float3(_2745, _2746, _2747))));  // [sem: expr_sat]
    _2897 = _2896 * _2896;
    _2899 = (_2897 * _2897) * _2896;
    _2902 = _2899 * saturate(_2891 * 50.0f);
    _2903 = 1.0f - _2899;
    if (!_285) {
      _2905 = saturate(_2749);  // [sem: _2749_sat]
      _2906 = 1.0f - _2759;
      _2910 = (((_2760 * _2753) - _2753) * _2753) + 1.0f;
      _2922 = (0.5f / ((((_2906 * _2751) + _2759) * _2749) + (((_2906 * _2749) + _2759) * _2751))) * (_2760 / ((_2910 * _2910) * 3.1415927f));
      _2942 = ((_2905 * _2642) * max((_2922 * ((_2903 * _2890) + _2902)), 0.0f));
      _2943 = ((_2905 * _2643) * max((_2922 * ((_2903 * _2891) + _2902)), 0.0f));
      _2944 = ((_2905 * _2644) * max((_2922 * ((_2903 * _2892) + _2902)), 0.0f));
    } else {
      _2942 = 0.0f;
      _2943 = 0.0f;
      _2944 = 0.0f;
    }
    if ((_2687 != 0) || (_2803 == 6)) {
      _2954 = ((max(0.0f, (0.3f - _2748)) * 0.23190688f) + _2802);
    } else {
      _2954 = _2802;
    }
    _2958 = ((_2737 * _2642) * _2954) + (_1288 * _1197);
    _2962 = ((_2738 * _2643) * _2954) + (_1291 * _1197);
    _2966 = ((_2739 * _2644) * _2954) + (_1294 * _1197);
    _2969 = (uint)((uint)(_frameNumber.x)) * (uint)(13);
    [branch]
    if ((((int)((int)((uint)((uint)(_2969)) + (uint)((uint)(_90)))) | (int)((int)((uint)((uint)(_2969)) + (uint)((uint)(_95))))) & 31) == 0) {
      __3__38__0__1__g_sceneColorLightingOnlyForAwbUAV[int2(((int)(_90) >> 5), ((int)(_95) >> 5))] = float4((half)(half(_2958)), (half)(half(_2962)), (half)(half(_2966)), 1.0f);
    }
    _2984 = ((uint)(_2688 & 24) > (uint)23);
    if (_2871) {
      _2998 = saturate(exp2((_2867 * _2867) * (_115 * -0.00577078f)));  // [sem: expr_sat]
    } else {
      _2998 = select((_cavityParams.z > 0.0f), select(_169, 0.0f, _451), 1.0f);  // [sem: expr_sat]
    }
    _3007 = select(_2868, 1.0f, (select((_cavityParams.x == 0.0f), 1.0f, _2998) * select((_168 && _2984), (1.0f - _451), 1.0f)));
    _3017 = min(60000.0f, (_3007 * (((_2091 * _2017) * ((_2086.x * _2081) + _2086.y)) - min(0.0f, (-0.0f - (_2737 * _2942))))));
    _3027 = min(60000.0f, (_3007 * (((_2091 * _2025) * ((_2086.x * _2080) + _2086.y)) - min(0.0f, (-0.0f - (_2738 * _2943))))));
    _3037 = min(60000.0f, ((((_2091 * _2033) * ((_2086.x * _2079) + _2086.y)) - min(0.0f, (-0.0f - (_2739 * _2944)))) * _3007));
    _3040 = 1.0f - _renderParams.x;
    _3043 = half((_renderParams.x * _2845) + _3040);
    _3046 = half((_renderParams.x * _2844) + _3040);
    _3049 = half((_renderParams.x * _2843) + _3040);
    if (_2868) {
      if (_renderParams2.x == 0.0f) {
        _3065 = (half)(exp2((half)((half)(log2(_3043)) * 0.5h)));
        _3066 = (half)(exp2((half)((half)(log2(_3046)) * 0.5h)));
        _3067 = (half)(exp2((half)((half)(log2(_3049)) * 0.5h)));
      } else {
        _3065 = _3043;
        _3066 = _3046;
        _3067 = _3049;
      }
    } else {
      _3065 = _3043;
      _3066 = _3046;
      _3067 = _3049;
    }
    _3068 = float(_3065);
    _3069 = float(_3066);
    _3070 = float(_3067);
    if (_2846) {
      _3077 = saturate(((_3069 + _3068) + _3070) * 1.2f);  // [sem: expr_sat]
    } else {
      _3077 = 1.0f;  // [sem: expr_sat]
    }
    _3078 = float(_2350);
    _3084 = (0.7f / min(max(max(max(_3068, _3069), _3070), 0.01f), 0.7f)) * _3077;
    _3087 = ((_3084 * _3068) + -0.04f) * _3078;
    _3090 = ((_3084 * _3069) + -0.04f) * _3078;
    _3093 = ((_3084 * _3070) + -0.04f) * _3078;
    _3094 = _3087 + 0.04f;
    _3095 = _3090 + 0.04f;
    _3096 = _3093 + 0.04f;
    _3098 = (_3094 * _2086.x) + _2086.y;
    _3100 = (_3095 * _2086.x) + _2086.y;
    _3102 = (_3096 * _2086.x) + _2086.y;
    _3104 = (1.0f - _2086.y) - _2086.x;
    _3107 = ((0.96f - _3087) * 0.04761905f) + _3094;
    _3110 = ((0.96f - _3090) * 0.04761905f) + _3095;
    _3113 = ((0.96f - _3093) * 0.04761905f) + _3096;
    _3120 = saturate(1.0f - _2345) * _3104;
    _3121 = _3120 * ((_3098 * _3107) / (1.0f - (_3107 * _3104)));
    _3126 = ((_3100 * _3110) / (1.0f - (_3110 * _3104))) * _3120;
    _3131 = ((_3102 * _3113) / (1.0f - (_3113 * _3104))) * _3120;
    _3133 = float(1.0h - _2350);
    _3140 = half(((_3068 * _3133) * saturate((1.0f - _3121) - _3098)) + _3121);
    _3147 = half(((_3069 * _3133) * saturate((1.0f - _3126) - _3100)) + _3126);
    _3154 = half(((_3070 * _3133) * saturate((1.0f - _3131) - _3102)) + _3131);
    _3159 = ((__3__36__0__0__g_caustic.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_102, _104), 0.0f)).x) * 0.31830987f;
    _3163 = ((_3159 * _2629) + _2958) * float(_3140);
    _3167 = ((_3159 * _2635) + _2962) * float(_3147);
    _3171 = ((_3159 * _2641) + _2966) * float(_3154);
    _3173 = _3163 + (_3017 * _3078);
    _3175 = _3167 + (_3027 * _3078);
    _3177 = _3171 + (_3037 * _3078);
    if (!(((_123 || _125) || _127) || _129)) {
      _3182 = QuadReadLaneAt(_3173, 0);
      _3183 = QuadReadLaneAt(_3175, 0);
      _3184 = QuadReadLaneAt(_3177, 0);
      _3185 = QuadReadLaneAt(_3173, 1);
      _3186 = QuadReadLaneAt(_3175, 1);
      _3187 = QuadReadLaneAt(_3177, 1);
      _3188 = QuadReadLaneAt(_3173, 2);
      _3189 = QuadReadLaneAt(_3175, 2);
      _3190 = QuadReadLaneAt(_3177, 2);
      _3191 = QuadReadLaneAt(_3173, 3);
      _3192 = QuadReadLaneAt(_3175, 3);
      _3193 = QuadReadLaneAt(_3177, 3);
      _3207 = ((((_3185 + _3182) + _3188) + _3191) * 0.25f);
      _3208 = ((((_3186 + _3183) + _3189) + _3192) * 0.25f);
      _3209 = ((((_3187 + _3184) + _3190) + _3193) * 0.25f);
    } else {
      _3207 = _3173;
      _3208 = _3175;
      _3209 = _3177;
    }
    [branch]
    if ((((int)(_95) | (int)(_90)) & 1) == 0) {
      _3214 = dot(float3(_3207, _3208, _3209), float3(0.212671f, 0.71516f, 0.072169f));
      __3__38__0__1__g_diffuseHalfPrevUAV[int2(((int)(_90) >> 1), ((int)(_95) >> 1))] = float4(min(60000.0f, _3207), min(60000.0f, _3208), min(60000.0f, _3209), min(60000.0f, select((_1098 != 0), (-0.0f - _3214), _3214)));
    }
    if (_2984) {
      if (_2350 == 0.0h) {
        _3235 = (((_3140 == 0.0h) || (_3147 == 0.0h)) || (_3154 == 0.0h));
      } else {
        _3235 = false;
      }
      _3250 = ((int)(uint)(_3235));
      __3__38__0__1__g_sceneSpecularUAV[int2(_90, _95)] = float4(((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _3017)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _3027)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _3037)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _2045)))))));
      _3273 = _3250;
      _3274 = _3163;
      _3275 = _3167;
      _3276 = _3171;
    } else {
      bool __branch_chain_3237;
      if (((_2688 == 96) || (_2688 == 53)) || ((_2688 & 124) == 64)) {
        _3250 = 0;
        __branch_chain_3237 = true;
      } else {
        if ((_115 <= 10.0f) && ((uint)((int)(_2688) + (int)(-97)) < (uint)2)) {
          _3250 = 0;
          __branch_chain_3237 = true;
        } else {
          __branch_chain_3237 = false;
        }
      }
      if (__branch_chain_3237) {
        __3__38__0__1__g_sceneSpecularUAV[int2(_90, _95)] = float4(((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _3017)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _3027)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _3037)))))), ((half)(-0.0h - (half)(half(min(0.0f, (-0.0f - _2045)))))));
        _3273 = _3250;
        _3274 = _3163;
        _3275 = _3167;
        _3276 = _3171;
      } else {
        _3273 = 0;
        _3274 = (_3163 + _3017);
        _3275 = (_3167 + _3027);
        _3276 = (_3171 + _3037);
      }
    }
    _3277 = min(60000.0f, _3274);
    _3278 = min(60000.0f, _3275);
    _3279 = min(60000.0f, _3276);
    if (!_120) {
      [branch]
      if (!(_3273 == 0)) {
        _3285 = __3__38__0__1__g_sceneColorUAV[int2(_90, _95)].x;
        _3286 = __3__38__0__1__g_sceneColorUAV[int2(_90, _95)].y;
        _3287 = __3__38__0__1__g_sceneColorUAV[int2(_90, _95)].z;
        _3292 = (_3285 + _3277);
        _3293 = (_3286 + _3278);
        _3294 = (_3287 + _3279);
      } else {
        _3292 = _3277;
        _3293 = _3278;
        _3294 = _3279;
      }
      if (!(_renderParams.y == 0.0f)) {
        _3299 = dot(float3(_3292, _3293, _3294), float3(0.212671f, 0.71516f, 0.072169f));
        _3304 = min((max(0.01f, _exposure3.w) * 4096.0f), _3299);
        _3305 = max(1e-09f, _3299);
        _3313 = ((_3304 * _3292) / _3305);
        _3314 = ((_3304 * _3293) / _3305);
        _3315 = ((_3304 * _3294) / _3305);
      } else {
        _3313 = _3292;
        _3314 = _3293;
        _3315 = _3294;
      }
      __3__38__0__1__g_sceneColorUAV[int2(_90, _95)] = float4(_3313, _3314, _3315, 1.0f);
    }
  }
}
