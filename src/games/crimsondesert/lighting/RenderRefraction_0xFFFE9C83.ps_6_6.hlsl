struct ManyLightsData {
  float4 _position;
  float4 _color;
  uint2 _up;
  uint2 _look;
};

struct anon {
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


Texture2D<float> __3__36__0__0__g_lightProfile : register(t83, space36);

Texture2D<float2> __3__36__0__0__g_texNetDensity : register(t63, space36);

Texture3D<float> __3__36__0__0__g_texCloudVolumeShadow : register(t104, space36);

Texture2D<float4> __3__36__0__0__g_terrainShadowDepth : register(t65, space36);

Texture2DArray<float4> __3__36__0__0__g_dynamicShadowDepthArray : register(t117, space36);

Texture2DArray<float4> __3__36__0__0__g_shadowDepthArray : register(t120, space36);

Texture3D<float4> __3__36__0__1__g_indirectCacheVoxelsTexturesLikeUav : register(t107, space36);

Texture3D<float4> __3__36__0__1__g_indirectCacheChromaVoxelsTexturesLikeUav : register(t108, space36);

Texture2D<uint2> __3__36__0__0__g_manyLightsHitData : register(t51, space36);

ByteAddressBuffer __3__37__0__0__g_structureCounterBuffer : register(t20, space37);

StructuredBuffer<ManyLightsData> __3__37__0__0__g_manyLightsDataBuffer : register(t1, space37);

Texture3D<float4> __3__36__0__0__g_texFroxelLight : register(t102, space36);

Texture3D<float4> __3__36__0__0__g_texFroxel : register(t103, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t20, space36);

Texture2D<uint4> __3__36__0__0__g_baseColor : register(t21, space36);

Texture2D<float4> __3__36__0__0__g_normal : register(t22, space36);

Texture2D<float4> __3__36__0__0__g_character : register(t23, space36);

Texture2D<float4> __3__36__0__0__g_extinction : register(t24, space36);

Texture2D<float> __3__36__0__0__g_depthTranslucent : register(t26, space36);

Texture2D<uint2> __3__36__0__0__g_stencilTranslucent : register(t27, space36);

Texture2D<uint> __3__36__0__0__g_sceneNormal : register(t29, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t47, space36);

Texture2D<float4> __3__36__0__0__g_sceneSpecular : register(t30, space36);

Texture2D<float4> __3__36__0__0__g_dlssRRNormalRoughnessOpaque : register(t55, space36);

RWTexture2D<float4> __3__38__0__1__g_dlssRRDiffuseAlbedoUAV : register(u0, space38);

RWTexture2D<float4> __3__38__0__1__g_dlssRRSpecularAlbedoUAV : register(u1, space38);

RWTexture2D<float4> __3__38__0__1__g_dlssRRNormalRoughnessUAV : register(u2, space38);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b17, space35) {
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

cbuffer __3__35__0__0__ShadowConstantBuffer : register(b18, space35) {
  float4 _shadowDepthRanges : packoffset(c000.x);
  float4 _massiveShadowSizeAndInvSize : packoffset(c001.x);
  uint4 _shadowParam : packoffset(c002.x);
  int4 _updateIndex : packoffset(c003.x);
  float4 _jitterOffset[8] : packoffset(c004.x);
  float4 _shadowRelativePosition : packoffset(c012.x);
  float4 _dynmaicShadowSizeAndInvSize : packoffset(c013.x);
  column_major float4x4 _dynamicShadowProjTexScale[2] : packoffset(c014.x);
  column_major float4x4 _dynamicShadowProjRelativeTexScale[2] : packoffset(c022.x);
  float4 _dynamicShadowFrustumPlanes0[6] : packoffset(c030.x);
  float4 _dynamicShadowFrustumPlanes1[6] : packoffset(c036.x);
  column_major float4x4 _dynamicShadowViewProj[2] : packoffset(c042.x);
  column_major float4x4 _dynamicShadowViewProjPrev[2] : packoffset(c050.x);
  column_major float4x4 _invDynamicShadowViewProj[2] : packoffset(c058.x);
  float4 _dynamicShadowPosition[2] : packoffset(c066.x);
  float4 _shadowSizeAndInvSize : packoffset(c068.x);
  column_major float4x4 _shadowProjTexScale[2] : packoffset(c069.x);
  column_major float4x4 _shadowProjRelativeTexScale[2] : packoffset(c077.x);
  float4 _staticShadowPosition[2] : packoffset(c085.x);
  column_major float4x4 _shadowViewProj[2] : packoffset(c087.x);
  column_major float4x4 _shadowViewProjRelative[2] : packoffset(c095.x);
  column_major float4x4 _invShadowViewProj[2] : packoffset(c103.x);
  float4 _currShadowFrustumPlanes[6] : packoffset(c111.x);
  column_major float4x4 _currShadowViewProjRelative : packoffset(c117.x);
  column_major float4x4 _currInvShadowViewProjRelative : packoffset(c121.x);
  float4 _currStaticShadowPosition : packoffset(c125.x);
  float4 _currTerrainShadowFrustumPlanes[6] : packoffset(c126.x);
  column_major float4x4 _terrainShadowProjTexScale : packoffset(c132.x);
  column_major float4x4 _terrainShadowProjRelativeTexScale : packoffset(c136.x);
  column_major float4x4 _terrainShadowViewProj : packoffset(c140.x);
  column_major float4x4 _nearFieldShadowViewProj : packoffset(c144.x);
  float4 _nearFieldShadowFlag : packoffset(c148.x);
  float4 _nearFieldShadowFrustumPlanes[6] : packoffset(c149.x);
};

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b30, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};

cbuffer __3__35__0__0__AtmosphereConstantBuffer : register(b27, space35) {
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

cbuffer __3__35__0__0__PrecomputedAmbientConstantBuffer : register(b28, space35) {
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

cbuffer __3__1__0__0__GlobalPushConstants : register(b0, space1) {
  float4 _debugColor : packoffset(c000.x);
  float4 _cubemapViewPosRelative : packoffset(c001.x);
  float4 _volumeSize : packoffset(c002.x);
  float4 _tiledRadianceCacheParams : packoffset(c003.x);
};

SamplerState __0__4__0__0__g_staticBilinearWrapUWClampV : register(s1, space4);

SamplerState __0__4__0__0__g_staticBilinearMirror : register(s2, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

SamplerState __0__4__0__0__g_staticVoxelSampler : register(s12, space4);

SamplerComparisonState __3__40__0__0__g_samplerShadow : register(s0, space40);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  uint _52;
  uint _53;
  float _55;
  float _58;
  float _60;
  float _61;
  float _67;
  float _71;
  float _75;
  float _79;
  float _85;
  float _90;
  float _95;
  float _100;
  float _103;
  float _105;
  float _107;
  uint4 _109;
  float4 _113;
  float _119;
  float _120;
  bool _124;
  float _128;
  float _132;
  float _136;
  float _138;
  float _139;
  float _140;
  float _141;
  float _146;
  float _150;
  float _152;
  float _154;
  float _158;
  float _160;
  float _161;
  float _162;
  float _163;
  float _165;
  float _168;
  float _169;
  float _170;
  float _171;
  float _173;
  float _176;
  float _177;
  float _180;
  float _181;
  float _184;
  float _188;
  float _190;
  float _191;
  float _192;
  float _193;
  float4 _195;
  int _203;
  bool _204;
  float _207;
  bool _208;
  bool _209;
  float _210;
  float _218;
  float _300;
  float _301;
  float _302;
  float _303;
  float _304;
  float _305;
  float _327;
  float _328;
  float _329;
  float _403;
  float _404;
  float _470;
  float _471;
  float _472;
  float _473;
  float _474;
  int _683;
  int _737;
  float _738;
  float _739;
  float _740;
  float _741;
  int _764;
  int _815;
  float _816;
  float _817;
  float _818;
  float _819;
  int _820;
  int _852;
  float _909;
  float _910;
  float _911;
  float _912;
  int _913;
  int _914;
  int _944;
  float _991;
  float _992;
  float _993;
  float _994;
  int _995;
  int _996;
  float _1015;
  float _1087;
  float _1106;
  float _1107;
  float _1108;
  float _1123;
  float _1124;
  float _1125;
  float _1126;
  float _1177;
  float _1266;
  float _1267;
  float _1268;
  int _1325;
  int _1461;
  int _1576;
  int _1634;
  float _1683;
  float _1684;
  float _1685;
  float _1686;
  float _1699;
  float _1700;
  float _1701;
  float _1702;
  float _1744;
  float _1756;
  float _2043;
  float _2094;
  float _2197;
  float _2198;
  float _2199;
  float _2243;
  float _2244;
  float _2245;
  float _2283;
  float _2305;
  float _2360;
  float _2361;
  float _2362;
  float _2435;
  float _2436;
  float _2437;
  float _2438;
  float _2439;
  float _2440;
  float _222;
  float _224;
  float _225;
  float _227;
  float _229;
  float _231;
  float _232;
  int _234;
  int _236;
  float _239;
  float _242;
  float _264;
  float _266;
  float _269;
  float _272;
  float _275;
  float _278;
  float _279;
  float _280;
  float _281;
  float _287;
  float _288;
  float _289;
  float _290;
  float _291;
  float _306;
  float _311;
  float _316;
  float _336;
  float _341;
  float _344;
  float _347;
  float _350;
  float _362;
  float _390;
  float _406;
  float _409;
  float _412;
  float _415;
  int _417;
  int _419;
  float _422;
  float _425;
  float _442;
  float _444;
  float _446;
  float _447;
  float _451;
  float _477;
  float _480;
  float _483;
  float4 _485;
  float _490;
  float _495;
  float _500;
  float _505;
  float _506;
  float _507;
  float _508;
  float _513;
  float _518;
  float _523;
  float _535;
  uint _550;
  uint _558;
  uint _566;
  uint _574;
  uint _582;
  uint _590;
  uint _598;
  uint _606;
  uint _614;
  uint _622;
  uint _630;
  uint _638;
  uint _646;
  uint _654;
  uint _662;
  uint _670;
  bool _672;
  float _700;
  float _716;
  float _718;
  float _719;
  bool _730;
  float _753;
  float _780;
  float _796;
  bool _807;
  bool _821;
  float _825;
  float _827;
  float _829;
  float _841;
  float _855;
  float _857;
  float _858;
  float _859;
  float _873;
  float _887;
  float _889;
  float _890;
  bool _901;
  float _917;
  float _919;
  float _921;
  float _933;
  float _958;
  float _972;
  bool _983;
  float _999;
  float _1000;
  float _1027;
  float _1035;
  float _1043;
  float _1056;
  float4 _1059;
  float _1064;
  float _1066;
  float _1068;
  float _1073;
  bool _1097;
  float _1102;
  float _1103;
  float _1104;
  float _1129;
  float _1135;
  float _1139;
  float _1146;
  float _1147;
  float _1154;
  float2 _1189;
  float _1198;
  float _1212;
  float _1222;
  float _1231;
  float _1232;
  float _1239;
  float _1251;
  float _1254;
  float _1260;
  float _1271;
  float _1292;
  float _1310;
  float _1311;
  float _1317;
  float _1323;
  float4 _1327;
  float4 _1333;
  int _1343;
  int _1349;
  int _1355;
  int _1380;
  float _1390;
  float _1394;
  float _1398;
  float _1402;
  float _1403;
  float _1404;
  float _1406;
  float _1415;
  float4 _1418;
  float4 _1424;
  float _1440;
  float _1442;
  float _1444;
  float _1446;
  float _1447;
  int _1457;
  float4 _1463;
  float4 _1469;
  int _1479;
  int _1485;
  int _1491;
  int _1516;
  float _1524;
  float _1525;
  float _1526;
  float _1528;
  float _1537;
  float4 _1538;
  float4 _1543;
  float _1559;
  float _1561;
  float _1563;
  float _1565;
  float _1566;
  float4 _1578;
  float4 _1584;
  int _1594;
  int _1600;
  int _1606;
  int _1631;
  float _1638;
  float _1639;
  float _1640;
  float _1642;
  float _1651;
  float4 _1652;
  float4 _1657;
  float _1673;
  float _1675;
  float _1687;
  float _1703;
  float _1704;
  float _1705;
  float _1707;
  float _1708;
  float _1709;
  float _1712;
  float _1713;
  float _1717;
  float _1718;
  float _1719;
  float _1720;
  float _1726;
  float _1757;
  float _1761;
  float _1765;
  float _1769;
  float _1770;
  float _1772;
  float _1773;
  float _1774;
  float _1775;
  float _1777;
  float _1778;
  float _1779;
  float _1780;
  float _1781;
  float _1782;
  float _1783;
  float _1785;
  float _1786;
  float _1799;
  float _1803;
  float _1804;
  float _1806;
  float _1811;
  float _1815;
  float _1819;
  float _1823;
  float _1863;
  float _1902;
  float _1941;
  float _1943;
  float _1946;
  float _1962;
  float _1963;
  float _1964;
  float _1965;
  int _1969;
  int _1973;
  uint2 _1981;
  int _1988;
  float _1995;
  float _1996;
  float _1997;
  float _1999;
  float _2000;
  float _2001;
  float _2002;
  int _2004;
  int _2005;
  int _2007;
  int _2008;
  float _2009;
  float _2010;
  float _2011;
  float _2017;
  float _2018;
  float _2019;
  float _2020;
  float _2021;
  bool _2022;
  float _2044;
  float _2045;
  float _2051;
  float _2052;
  float _2053;
  float _2055;
  float _2056;
  float _2057;
  float _2058;
  float _2059;
  float _2061;
  float _2063;
  float _2068;
  float _2069;
  float _2071;
  float _2074;
  float _2098;
  float _2124;
  float _2125;
  float _2126;
  float _2127;
  float _2129;
  float _2131;
  float _2133;
  float _2135;
  float _2137;
  float _2139;
  float _2141;
  float _2143;
  float _2145;
  float _2146;
  float _2147;
  float _2148;
  float _2156;
  float _2159;
  float _2163;
  bool _2164;
  bool _2165;
  bool _2166;
  bool _2167;
  float _2191;
  float _2200;
  float _2201;
  float _2202;
  float _2204;
  float _2205;
  float _2206;
  float _2207;
  float _2208;
  float _2209;
  float _2213;
  float _2214;
  float _2216;
  float _2219;
  float _2235;
  float4 _2248;
  float _2255;
  float _2262;
  float _2284;
  float _2306;
  float _2315;
  float _2324;
  float4 _2327;
  float4 _2332;
  float _2338;
  float _2340;
  float _2342;
  float _2345;
  float _2349;
  int _2365;
  int _2368;
  float _2380;
  float _2389;
  float _2398;
  float _2407;
  float _2412;
  float _2417;
  float _2422;
  float _2423;
  float _2426;
  float4 _2442;
  float _2446;
  float4 _2448;
  uint4 _2452;
  float _2458;
  float _2461;
  float _2465;
  float _2467;
  float _2469;
  float _2471;
  float4 _2473;
  float _2479;
  float _2480;
  float _2481;
  float _2482;
  float _2484;
  float _2485;
  float _2493;
  float _2494;
  float _2495;
  float _2497;
  float _2524;
  int __loop_jump_target = -1;
  _52 = (uint)(SV_Position.x);
  _53 = (uint)(SV_Position.y);
  _55 = __3__36__0__0__g_depthTranslucent.Load(int3(_52, _53, 0));  // [sem: _3__36__0__0__g_depthTranslucent_load]
  _58 = (TEXCOORD.x * 2.0f) + -1.0f;
  _60 = 1.0f - (TEXCOORD.y * 2.0f);
  _61 = max(1e-07f, _55.x);  // [sem: _3__36__0__0__g_depthTranslucent_load_derived]
  _67 = mad((_invViewProjRelative[0].y), _60, ((_invViewProjRelative[0].x) * _58));
  _71 = mad((_invViewProjRelative[1].y), _60, ((_invViewProjRelative[1].x) * _58));
  _75 = mad((_invViewProjRelative[2].y), _60, ((_invViewProjRelative[2].x) * _58));
  _79 = mad((_invViewProjRelative[3].y), _60, ((_invViewProjRelative[3].x) * _58));
  _85 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _61, _79);
  _90 = ((_invViewProjRelative[0].w) + mad((_invViewProjRelative[0].z), _61, _67)) / _85;
  _95 = (mad((_invViewProjRelative[1].z), _61, _71) + (_invViewProjRelative[1].w)) / _85;
  _100 = (mad((_invViewProjRelative[2].z), _61, _75) + (_invViewProjRelative[2].w)) / _85;
  _103 = _viewPos.x + _90;
  _105 = _viewPos.y + _95;
  _107 = _viewPos.z + _100;
  _109 = __3__36__0__0__g_baseColor.Load(int3(_52, _53, 0));  // [sem: _3__36__0__0__g_baseColor_load]
  _113 = __3__36__0__0__g_normal.Load(int3(_52, _53, 0));  // [sem: _3__36__0__0__g_normal_load]
  _119 = (float)((uint)((uint)(_109.z & 255)));  // [sem: _3__36__0__0__g_baseColor_load_derived]
  _120 = _119 * 0.003921569f;
  _124 = (((int)((uint)((_113.w * 3.0f) + 0.5f))) == 1);  // [sem: _3__36__0__0__g_normal_load_derived]
  _128 = (saturate(_113.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
  _132 = (saturate(_113.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
  _136 = (saturate(_113.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
  _138 = rsqrt(dot(float3(_128, _132, _136), float3(_128, _132, _136)));  // [sem: invLength]
  _139 = _138 * _128;
  _140 = _138 * _132;
  _141 = _136 * _138;
  _146 = (((float)((uint)((uint)(((uint)((uint)(_109.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
  _150 = (((float)((uint)((uint)(_109.w & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
  _152 = (_146 + _150) * 0.5f;
  _154 = (_146 - _150) * 0.5f;
  _158 = (1.0f - abs(_152)) - abs(_154);
  _160 = rsqrt(dot(float3(_152, _154, _158), float3(_152, _154, _158)));  // [sem: invLength]
  _161 = _160 * _152;
  _162 = _160 * _154;
  _163 = _160 * _158;
  _165 = select((_141 >= 0.0f), 1.0f, -1.0f);
  _168 = -0.0f - (1.0f / (_165 + _141));
  _169 = _139 * _168;
  _170 = _169 * _140;
  _171 = _165 * _139;
  _173 = (_169 * _171) + 1.0f;
  _176 = ((_140 * _140) * _168) + _165;
  _177 = -0.0f - _140;
  _180 = mad(_163, _139, mad(_162, _170, (_173 * _161)));
  _181 = _170 * _165;
  _184 = mad(_163, _140, mad(_162, _176, (_181 * _161)));
  _188 = mad(_163, _141, mad(_162, _177, (-0.0f - (_171 * _161))));
  _190 = rsqrt(dot(float3(_180, _184, _188), float3(_180, _184, _188)));  // [sem: invLength]
  _191 = _190 * _180;
  _192 = _190 * _184;
  _193 = _190 * _188;
  _195 = __3__36__0__0__g_character.Load(int3(_52, _53, 0));  // [sem: _3__36__0__0__g_character_load]
  _203 = (((uint2)(__3__36__0__0__g_stencilTranslucent.Load(int3(_52, _53, 0)))).x) & 127;
  _204 = (_203 == 24);
  _207 = select(_204, 1.0f, select((_203 == 25), 0.6f, 0.0f));
  _208 = (_203 == 29);
  _209 = _124 || _208;
  _210 = select(_209, 1.0f, 0.0f);
  if (_124 && _208) {
    _218 = select(((((int)((uint)(_119))) & 128) != 0), 1.0f, 0.0f);
  } else {
    _218 = 0.0f;
  }
  _222 = (_100 * _100) + (_90 * _90);
  _224 = sqrt(_222 + (_95 * _95));
  _225 = max(1e-05f, _224);
  _227 = (-0.0f - _90) / _225;
  _229 = (-0.0f - _95) / _225;
  _231 = (-0.0f - _100) / _225;
  _232 = dot(float3(_191, _192, _193), float3(_227, _229, _231));
  _234 = (int)(floor(TEXCOORD.x));
  _236 = (int)(floor(TEXCOORD.y));
  _239 = abs(TEXCOORD.x - ((float)((int)(_234))));
  _242 = abs(TEXCOORD.y - ((float)((int)(_236))));
  _264 = max(1e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(((int)(_bufferSizeAndInvSize.x * select(((_234 & 1) == 0), _239, (1.0f - _239)))), ((int)(_bufferSizeAndInvSize.y * select(((_236 & 1) == 0), _242, (1.0f - _242)))), 0)))).x) & 16777215)))) * 5.960465e-08f));
  _266 = mad((_invViewProjRelative[3].z), _264, _79) + (_invViewProjRelative[3].w);
  _269 = (mad((_invViewProjRelative[0].z), _264, _67) + (_invViewProjRelative[0].w)) / _266;
  _272 = (mad((_invViewProjRelative[1].z), _264, _71) + (_invViewProjRelative[1].w)) / _266;
  _275 = (mad((_invViewProjRelative[2].z), _264, _75) + (_invViewProjRelative[2].w)) / _266;
  _278 = _nearFarProj.x / _61;
  _279 = _90 - _269;
  _280 = _95 - _272;
  _281 = _100 - _275;
  _287 = sqrt(((_280 * _280) + (_279 * _279)) + (_281 * _281));
  _288 = -0.0f - _227;
  _289 = -0.0f - _229;
  _290 = -0.0f - _231;
  _291 = dot(float3(_288, _289, _290), float3(_191, _192, _193));
  if (_291 < 0.0f) {
    _300 = 1.33f;
    _301 = 1.0f;
    _302 = (-0.0f - _291);
    _303 = _193;
    _304 = _192;
    _305 = _191;
  } else {
    _300 = 1.0f;
    _301 = 1.33f;
    _302 = _291;
    _303 = (-0.0f - _193);
    _304 = (-0.0f - _192);
    _305 = (-0.0f - _191);
  }
  _306 = _301 / _300;
  _311 = 1.0f - ((_306 * _306) * (1.0f - (_302 * _302)));
  if (!(_311 < 0.0f)) {
    _316 = (_306 * _302) - sqrt(_311);
    _327 = ((_316 * _303) + (_306 * _290));
    _328 = ((_316 * _304) + (_306 * _289));
    _329 = ((_316 * _305) + (_306 * _288));
  } else {
    _327 = 0.0f;
    _328 = 0.0f;
    _329 = 0.0f;
  }
  _336 = max(0.001f, sqrt(((_328 * _328) + (_327 * _327)) + (_329 * _329)));
  if (_210 < 0.5f) {
    _341 = ((_287 - _120) * _210) + _120;
    _344 = ((_329 / _336) * _341) + _90;
    _347 = ((_328 / _336) * _341) + _95;
    _350 = ((_327 / _336) * _341) + _100;
    _362 = (_viewProjRelative[3].w) + mad((_viewProjRelative[3].z), _350, mad((_viewProjRelative[3].y), _347, ((_viewProjRelative[3].x) * _344)));
    _403 = (0.5f - (((mad((_viewProjRelative[1].z), _350, mad((_viewProjRelative[1].y), _347, ((_viewProjRelative[1].x) * _344))) + (_viewProjRelative[1].w)) / _362) * 0.5f));
    _404 = ((((mad((_viewProjRelative[0].z), _350, mad((_viewProjRelative[0].y), _347, ((_viewProjRelative[0].x) * _344))) + (_viewProjRelative[0].w)) / _362) * 0.5f) + 0.5f);
  } else {
    _390 = (0.33000004f / (_278 + 1.0f)) * saturate(_287 * 5.0f);
    _403 = ((min(max(dot(float3(_191, _192, _193), float3(_170, _176, _177)), -0.2f), 0.2f) * _390) + TEXCOORD.y);
    _404 = ((min(max(dot(float3(_191, _192, _193), float3(_173, _181, (-0.0f - _171))), -0.2f), 0.2f) * _390) + TEXCOORD.x);
  }
  _406 = abs(_232) + 0.001f;
  _409 = _90 - ((_227 * _120) / _406);
  _412 = _95 - ((_229 * _120) / _406);
  _415 = _100 - ((_231 * _120) / _406);
  _417 = (int)(floor(_404));
  _419 = (int)(floor(_403));
  _422 = abs(_404 - ((float)((int)(_417))));
  _425 = abs(_403 - ((float)((int)(_419))));
  _442 = ((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(((int)(select(((_417 & 1) == 0), _422, (1.0f - _422)) * _bufferSizeAndInvSize.x)), ((int)(select(((_419 & 1) == 0), _425, (1.0f - _425)) * _bufferSizeAndInvSize.y)), 0)))).x) & 16777215)))) * 5.960465e-08f;
  _444 = (_404 * 2.0f) + -1.0f;
  _446 = 1.0f - (_403 * 2.0f);
  _447 = max(1e-07f, _442);
  _451 = mad((_invViewProjRelative[3].z), _447, mad((_invViewProjRelative[3].y), _446, (_444 * (_invViewProjRelative[3].x)))) + (_invViewProjRelative[3].w);
  if (!(_442 >= _55.x)) {
    _470 = ((mad((_invViewProjRelative[2].z), _447, mad((_invViewProjRelative[2].y), _446, (_444 * (_invViewProjRelative[2].x)))) + (_invViewProjRelative[2].w)) / _451);
    _471 = ((mad((_invViewProjRelative[1].z), _447, mad((_invViewProjRelative[1].y), _446, (_444 * (_invViewProjRelative[1].x)))) + (_invViewProjRelative[1].w)) / _451);
    _472 = ((mad((_invViewProjRelative[0].z), _447, mad((_invViewProjRelative[0].y), _446, (_444 * (_invViewProjRelative[0].x)))) + (_invViewProjRelative[0].w)) / _451);
    _473 = _403;
    _474 = _404;
  } else {
    _470 = _275;
    _471 = _272;
    _472 = _269;
    _473 = TEXCOORD.y;
    _474 = TEXCOORD.x;
  }
  _477 = ((_470 - _415) * _210) + _415;
  _480 = ((_471 - _412) * _210) + _412;
  _483 = ((_472 - _409) * _210) + _409;
  _485 = __3__36__0__0__g_extinction.Load(int3(_52, _53, 0));  // [sem: _3__36__0__0__g_extinction_load]
  _490 = _485.w * 10.0f;  // [sem: _3__36__0__0__g_extinction_load_derived]
  _495 = _490 / (((max(0.001f, _485.x) + -1.0f) * _207) + 1.0f);
  _500 = _490 / (((max(0.001f, _485.y) + -1.0f) * _207) + 1.0f);
  _505 = _490 / (((max(0.001f, _485.z) + -1.0f) * _207) + 1.0f);
  _506 = _495 * _485.x;
  _507 = _500 * _485.y;
  _508 = _505 * _485.z;
  _513 = ((_500 * 0.33951f) + (_495 * 0.61312f)) + (_505 * 0.04737f);
  _518 = ((_500 * 0.91636f) + (_495 * 0.0702f)) + (_505 * 0.01345f);
  _523 = ((_500 * 0.10958f) + (_495 * 0.02062f)) + (_505 * 0.8698f);
  _535 = (_dynamicShadowProjRelativeTexScale[1][2].w) + mad((_dynamicShadowProjRelativeTexScale[1][2].z), _100, mad((_dynamicShadowProjRelativeTexScale[1][2].y), _95, ((_dynamicShadowProjRelativeTexScale[1][2].x) * _90)));
  _550 = (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524)))) + (uint)((uint)((_bufferSizeAndInvSize.x * ((float)((uint)((uint)(_53))))) + ((float)((uint)((uint)(_52))))));
  _558 = (uint)((uint)((((int)((uint)((uint)((uint)(_550)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_550)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_550)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
  _566 = (uint)((uint)((((int)((uint)((uint)((uint)(_558)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_558)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_558)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_550));
  _574 = (uint)((uint)((((int)((uint)((uint)((uint)(_566)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_566)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_566)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_558));
  _582 = (uint)((uint)((((int)((uint)((uint)((uint)(_574)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_574)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_574)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_566));
  _590 = (uint)((uint)((((int)((uint)((uint)((uint)(_582)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_582)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_582)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_574));
  _598 = (uint)((uint)((((int)((uint)((uint)((uint)(_590)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_590)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_590)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_582));
  _606 = (uint)((uint)((((int)((uint)((uint)((uint)(_598)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_598)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_598)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_590));
  _614 = (uint)((uint)((((int)((uint)((uint)((uint)(_606)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_606)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_606)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_598));
  _622 = (uint)((uint)((((int)((uint)((uint)((uint)(_614)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_614)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_614)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_606));
  _630 = (uint)((uint)((((int)((uint)((uint)((uint)(_622)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_622)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_622)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_614));
  _638 = (uint)((uint)((((int)((uint)((uint)((uint)(_630)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_630)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_630)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_622));
  _646 = (uint)((uint)((((int)((uint)((uint)((uint)(_638)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_638)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_638)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_630));
  _654 = (uint)((uint)((((int)((uint)((uint)((uint)(_646)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_646)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_646)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_638));
  _662 = (uint)((uint)((((int)((uint)((uint)((uint)(_654)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_654)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_654)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_646));
  _670 = (uint)((uint)((((int)((uint)((uint)((uint)(_662)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_662)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_662)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_654));
  _672 = ((_662 & 16777215) == 0);
  if (_672) {
    _683 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_670)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_670)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_670)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_662))));
  } else {
    _683 = _662;
  }
  _700 = (mad((_dynamicShadowProjRelativeTexScale[1][0].z), _100, mad((_dynamicShadowProjRelativeTexScale[1][0].y), _95, ((_dynamicShadowProjRelativeTexScale[1][0].x) * _90))) + (_dynamicShadowProjRelativeTexScale[1][0].w)) + (_dynmaicShadowSizeAndInvSize.z * ((((float)((uint)((uint)(((int)((uint)((uint)(_683)) * (uint)(48271))) & 16777215)))) * 9.834767e-08f) + -0.82500005f));
  _716 = (mad((_dynamicShadowProjRelativeTexScale[1][1].z), _100, mad((_dynamicShadowProjRelativeTexScale[1][1].y), _95, ((_dynamicShadowProjRelativeTexScale[1][1].x) * _90))) + (_dynamicShadowProjRelativeTexScale[1][1].w)) + (_dynmaicShadowSizeAndInvSize.w * ((((float)((uint)((uint)(((int)((uint)((uint)(_683)) * (uint)(-1964877855))) & 16777215)))) * 9.834767e-08f) + -0.82500005f));
  _718 = 4.0f / _dynmaicShadowSizeAndInvSize.y;
  _719 = 1.0f - _718;
  if ((_716 <= _719) && ((_700 >= _718) && (_700 <= _719))) {
    _730 = ((_535 >= -1.0f) && (_535 <= 1.0f)) && (_716 >= _718);
    _737 = ((int)(uint)(_730));
    _738 = select(_730, 2e-05f, 0.0f);
    _739 = select(_730, _535, 0.0f);
    _740 = select(_730, _716, 0.0f);
    _741 = select(_730, _700, 0.0f);
  } else {
    _737 = 0;
    _738 = 0.0f;
    _739 = 0.0f;
    _740 = 0.0f;
    _741 = 0.0f;
  }
  _753 = (_dynamicShadowProjRelativeTexScale[0][2].w) + mad((_dynamicShadowProjRelativeTexScale[0][2].z), _100, mad((_dynamicShadowProjRelativeTexScale[0][2].y), _95, ((_dynamicShadowProjRelativeTexScale[0][2].x) * _90)));
  if (_672) {
    _764 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_670)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_670)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_670)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_662))));
  } else {
    _764 = _662;
  }
  _780 = (mad((_dynamicShadowProjRelativeTexScale[0][0].z), _100, mad((_dynamicShadowProjRelativeTexScale[0][0].y), _95, ((_dynamicShadowProjRelativeTexScale[0][0].x) * _90))) + (_dynamicShadowProjRelativeTexScale[0][0].w)) + (((_dynmaicShadowSizeAndInvSize.z * 1.9669534e-07f) * ((float)((uint)((uint)(((int)((uint)((uint)(_764)) * (uint)(48271))) & 16777215))))) - (_dynmaicShadowSizeAndInvSize.z * 1.6500001f));
  _796 = (mad((_dynamicShadowProjRelativeTexScale[0][1].z), _100, mad((_dynamicShadowProjRelativeTexScale[0][1].y), _95, ((_dynamicShadowProjRelativeTexScale[0][1].x) * _90))) + (_dynamicShadowProjRelativeTexScale[0][1].w)) + (((_dynmaicShadowSizeAndInvSize.w * 1.9669534e-07f) * ((float)((uint)((uint)(((int)((uint)((uint)(_764)) * (uint)(-1964877855))) & 16777215))))) - (_dynmaicShadowSizeAndInvSize.w * 1.6500001f));
  if ((_796 <= _719) && ((_780 >= _718) && (_780 <= _719))) {
    _807 = ((_753 >= -1.0f) && (_753 <= 1.0f)) && (_796 >= _718);
    _815 = select(_807, 1, _737);
    _816 = select(_807, 5e-06f, _738);
    _817 = select(_807, _753, _739);
    _818 = select(_807, _796, _740);
    _819 = select(_807, _780, _741);
    _820 = select(_807, 0, _737);
  } else {
    _815 = _737;
    _816 = _738;
    _817 = _739;
    _818 = _740;
    _819 = _741;
    _820 = _737;
  }
  _821 = (_815 == 0);
  [branch]
  if (_821) {
    _825 = _103 - (_staticShadowPosition[1].x);
    _827 = _105 - (_staticShadowPosition[1].y);
    _829 = _107 - (_staticShadowPosition[1].z);
    _841 = (_shadowProjRelativeTexScale[1][2].w) + mad((_shadowProjRelativeTexScale[1][2].z), _829, mad((_shadowProjRelativeTexScale[1][2].y), _827, ((_shadowProjRelativeTexScale[1][2].x) * _825)));
    if (_672) {
      _852 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_670)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_670)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_670)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_662))));
    } else {
      _852 = _662;
    }
    _855 = _shadowSizeAndInvSize.z * 2.0f;
    _857 = _shadowSizeAndInvSize.w * 2.0f;
    _858 = _shadowSizeAndInvSize.z * 2.3841858e-07f;
    _859 = _shadowSizeAndInvSize.w * 2.3841858e-07f;
    _873 = (((_shadowProjRelativeTexScale[1][0].w) - _855) + mad((_shadowProjRelativeTexScale[1][0].z), _829, mad((_shadowProjRelativeTexScale[1][0].y), _827, ((_shadowProjRelativeTexScale[1][0].x) * _825)))) + (_858 * ((float)((uint)((uint)(((int)((uint)((uint)(_852)) * (uint)(48271))) & 16777215)))));
    _887 = (((_shadowProjRelativeTexScale[1][1].w) - _857) + (_859 * ((float)((uint)((uint)(((int)((uint)((uint)(_852)) * (uint)(-1964877855))) & 16777215)))))) + mad((_shadowProjRelativeTexScale[1][1].z), _829, mad((_shadowProjRelativeTexScale[1][1].y), _827, ((_shadowProjRelativeTexScale[1][1].x) * _825)));
    _889 = 2.0f / _shadowSizeAndInvSize.y;
    _890 = 1.0f - _889;
    if ((_887 <= _890) && ((_873 >= _889) && (_873 <= _890))) {
      _901 = ((_841 >= 0.0001f) && (_841 <= 1.0f)) && (_887 >= _889);
      _909 = select(_901, _873, _819);
      _910 = select(_901, _887, _818);
      _911 = select(_901, _841, _817);
      _912 = select(_901, 0.0002f, _816);
      _913 = select(_901, 1, _815);
      _914 = select(_901, 1, _820);
    } else {
      _909 = _819;
      _910 = _818;
      _911 = _817;
      _912 = _816;
      _913 = _815;
      _914 = _820;
    }
    _917 = _103 - (_staticShadowPosition[0].x);
    _919 = _105 - (_staticShadowPosition[0].y);
    _921 = _107 - (_staticShadowPosition[0].z);
    _933 = (_shadowProjRelativeTexScale[0][2].w) + mad((_shadowProjRelativeTexScale[0][2].z), _921, mad((_shadowProjRelativeTexScale[0][2].y), _919, ((_shadowProjRelativeTexScale[0][2].x) * _917)));
    if (_672) {
      _944 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_670)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_670)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_670)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_662))));
    } else {
      _944 = _662;
    }
    _958 = (((_shadowProjRelativeTexScale[0][0].w) - _855) + mad((_shadowProjRelativeTexScale[0][0].z), _921, mad((_shadowProjRelativeTexScale[0][0].y), _919, ((_shadowProjRelativeTexScale[0][0].x) * _917)))) + (((float)((uint)((uint)(((int)((uint)((uint)(_944)) * (uint)(48271))) & 16777215)))) * _858);
    _972 = (((_shadowProjRelativeTexScale[0][1].w) - _857) + (((float)((uint)((uint)(((int)((uint)((uint)(_944)) * (uint)(-1964877855))) & 16777215)))) * _859)) + mad((_shadowProjRelativeTexScale[0][1].z), _921, mad((_shadowProjRelativeTexScale[0][1].y), _919, ((_shadowProjRelativeTexScale[0][1].x) * _917)));
    if ((_972 <= _890) && ((_958 >= _889) && (_958 <= _890))) {
      _983 = ((_933 >= 0.0001f) && (_933 <= 1.0f)) && (_972 >= _889);
      _991 = select(_983, _958, _909);
      _992 = select(_983, _972, _910);
      _993 = select(_983, _933, _911);
      _994 = select(_983, 0.0002f, _912);
      _995 = select(_983, 1, _913);
      _996 = select(_983, 0, _914);
    } else {
      _991 = _909;
      _992 = _910;
      _993 = _911;
      _994 = _912;
      _995 = _913;
      _996 = _914;
    }
  } else {
    _991 = _819;
    _992 = _818;
    _993 = _817;
    _994 = _816;
    _995 = _815;
    _996 = _820;
  }
  [branch]
  if (!(_995 == 0)) {
    _999 = _993 - _994;
    _1000 = (float)((uint)((uint)(_996)));
    if (_821) {
      // [sem: expr_sat]
      _1015 = saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_991, _992, _1000), _999)).x));
    } else {
      // [sem: expr_sat]
      _1015 = saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_991, _992, _1000), _999)).x));
    }
  } else {
    _1015 = 1.0f;  // [sem: expr_sat]
  }
  _1027 = (_terrainShadowProjRelativeTexScale[0].w) + mad((_terrainShadowProjRelativeTexScale[0].z), _100, mad((_terrainShadowProjRelativeTexScale[0].y), _95, ((_terrainShadowProjRelativeTexScale[0].x) * _90)));
  _1035 = mad((_terrainShadowProjRelativeTexScale[1].z), _100, mad((_terrainShadowProjRelativeTexScale[1].y), _95, ((_terrainShadowProjRelativeTexScale[1].x) * _90))) + (_terrainShadowProjRelativeTexScale[1].w);
  _1043 = mad((_terrainShadowProjRelativeTexScale[2].z), _100, mad((_terrainShadowProjRelativeTexScale[2].y), _95, ((_terrainShadowProjRelativeTexScale[2].x) * _90))) + (_terrainShadowProjRelativeTexScale[2].w);
  if ((_1043 <= 1.0f) && ((saturate(_1027) == _1027) && (_1043 >= 0.0001f))) {
    if (saturate(_1035) == _1035) {
      _1056 = frac((_1027 * 1024.0f) + -0.5f);
      _1059 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_1027, _1035));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
      _1064 = _1043 + -0.005f;
      _1066 = select((_1059.w > _1064), 1.0f, 0.0f);
      _1068 = select((_1059.x > _1064), 1.0f, 0.0f);
      _1073 = ((select((_1059.z > _1064), 1.0f, 0.0f) - _1066) * _1056) + _1066;
      // [sem: expr_sat]
      _1087 = saturate((((((select((_1059.y > _1064), 1.0f, 0.0f) - _1068) * _1056) + _1068) - _1073) * frac((_1035 * 1024.0f) + -0.5f)) + _1073);
    } else {
      _1087 = 1.0f;  // [sem: expr_sat]
    }
  } else {
    _1087 = 1.0f;  // [sem: expr_sat]
  }
  if (_sunDirection.y > 0.0f) {
    _1106 = _sunDirection.z;
    _1107 = _sunDirection.y;
    _1108 = _sunDirection.x;
    _1123 = _1106;
    _1124 = _1107;
    _1125 = _1108;
    _1126 = _precomputedAmbient7.y;
  } else {
    _1097 = (_sunDirection.y > _moonDirection.y);
    _1102 = select(_1097, _sunDirection.z, _moonDirection.z);
    _1103 = select(_1097, _sunDirection.y, _moonDirection.y);
    _1104 = select(_1097, _sunDirection.x, _moonDirection.x);
    if (_1097) {
      _1106 = _1102;
      _1107 = _1103;
      _1108 = _1104;
      _1123 = _1106;
      _1124 = _1107;
      _1125 = _1108;
      _1126 = _precomputedAmbient7.y;
    } else {
      _1123 = _1102;
      _1124 = _1103;
      _1125 = _1104;
      _1126 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
    }
  }
  _1129 = _earthRadius + _105;
  _1135 = sqrt(((_107 * _107) + (_103 * _103)) + (_1129 * _1129));
  _1139 = dot(float3((_103 / _1135), (_1129 / _1135), (_107 / _1135)), float3(_1125, _1124, _1123));
  _1146 = min(max(((_1135 - _earthRadius) / _atmosphereThickness), 16.0f), (_atmosphereThickness + -16.0f));
  _1147 = max(_1146, 0.0f);
  _1154 = (-0.0f - sqrt((_1147 + (_earthRadius * 2.0f)) * _1147)) / (_1147 + _earthRadius);
  if (_1139 > _1154) {
    _1177 = ((exp2(log2(saturate((_1139 - _1154) / (1.0f - _1154))) * 0.2f) * 0.4921875f) + 0.50390625f);
  } else {
    _1177 = ((exp2(log2(saturate((_1154 - _1139) / (_1154 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
  }
  // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
  _1189 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_1146 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f), _1177), 0.0f);
  _1198 = ((_1189.y * 2e-05f) * _mieAerosolDensity) * (_mieAerosolAbsorption + 1.0f);  // [sem: _3__36__0__0__g_texNetDensity_sampleLod_derived]
  _1212 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.0556001e-06f)) * _1189.x) + _1198) * -1.442695f);
  _1222 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 4.9788005e-06f)) * _1189.x) + _1198) * -1.442695f);
  _1231 = exp2(((((((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.1360002e-07f)) * _1189.x) + _1198) * -1.442695f);
  _1232 = sqrt(_222);
  _1239 = _cloudAltitude - (max(((_1232 * _1232) + -400000.0f), 0.0f) * 1e-06f);
  _1251 = (_cloudThickness * (0.5f - (((float)((int)((int)((int)(uint)((int)(_1124 > 0.0f))) - (int)((int)(uint)((int)(_1124 < 0.0f)))))) * 0.5f))) + _1239;
  if (_105 < _1239) {
    _1254 = dot(float3(0.0f, 1.0f, 0.0f), float3(_1125, _1124, _1123));
    _1260 = select((abs(_1254) < 1e-08f), 1e+08f, ((_1251 - dot(float3(0.0f, 1.0f, 0.0f), float3(_103, _105, _107))) / _1254));
    _1266 = ((_1260 * _1125) + _103);
    _1267 = _1251;
    _1268 = ((_1260 * _1123) + _107);
  } else {
    _1266 = _103;
    _1267 = _105;
    _1268 = _107;
  }
  _1271 = saturate(abs(_1124) * 4.0f);  // [sem: expr_sat]
  _1292 = (_1271 * _1271) * exp2(((_distanceScale * -1.442695f) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3((((_1266 - _viewPos.x) * 5e-05f) + 0.5f), ((_1267 - _cloudAltitude) / _cloudThickness), (((_1268 - _viewPos.z) * 5e-05f) + 0.5f)), 0.0f)).x)) * (_cloudScatteringCoefficient / _distanceScale));
  _1310 = ((min(_1015, _1087) * _1126) * _cubemapViewPosRelative.w) * (((1.0f - _1292) * saturate(((_105 - _cloudAltitude) - _cloudThickness) * 0.1f)) + _1292);
  _1311 = _1310 * (((_1222 * 0.33951f) + (_1212 * 0.61312f)) + (_1231 * 0.04737f));
  _1317 = _1310 * (((_1222 * 0.91636f) + (_1212 * 0.0702f)) + (_1231 * 0.01345f));
  _1323 = _1310 * (((_1222 * 0.10958f) + (_1212 * 0.02062f)) + (_1231 * 0.8698f));
  _1325 = 0;
  while(true) {
    _1327 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1325) + (int)(20)))];
    _1333 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1325) + (int)(36)))];
    _1343 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _90) * _1327.w) + _1333.x));
    _1349 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _95) * _1327.w) + _1333.y));
    _1355 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _100) * _1327.w) + _1333.z));
    if (((int)_1343 < (int)((int)(_1327.x + -63.0f))) || ((!((int)_1343 < (int)((int)(_1327.x + -63.0f)))) && (!((int)_1343 < (int)((int)(_1327.x + 63.0f))))) || (((!((int)_1343 < (int)((int)(_1327.x + -63.0f)))) && ((int)_1343 < (int)((int)(_1327.x + 63.0f)))) && ((int)_1349 < (int)((int)(_1327.y + -31.0f)))) || ((((!((int)_1343 < (int)((int)(_1327.x + -63.0f)))) && ((int)_1343 < (int)((int)(_1327.x + 63.0f)))) && (!((int)_1349 < (int)((int)(_1327.y + -31.0f))))) && (!((int)_1349 < (int)((int)(_1327.y + 31.0f))))) || (((((!((int)_1343 < (int)((int)(_1327.x + -63.0f)))) && ((int)_1343 < (int)((int)(_1327.x + 63.0f)))) && (!((int)_1349 < (int)((int)(_1327.y + -31.0f))))) && ((int)_1349 < (int)((int)(_1327.y + 31.0f)))) && ((int)_1355 < (int)((int)(_1327.z + -63.0f)))) || ((((((!((int)_1343 < (int)((int)(_1327.x + -63.0f)))) && ((int)_1343 < (int)((int)(_1327.x + 63.0f)))) && (!((int)_1349 < (int)((int)(_1327.y + -31.0f))))) && ((int)_1349 < (int)((int)(_1327.y + 31.0f)))) && (!((int)_1355 < (int)((int)(_1327.z + -63.0f))))) && (!((int)_1355 < (int)((int)(_1327.z + 63.0f)))))) {
      _1380 = (int)(_1325) + (int)(1);
      if ((uint)_1380 < (uint)8) {
        _1325 = _1380;
        continue;
      } else {
        _1699 = 0.0f;
        _1700 = 0.0f;
        _1701 = 0.0f;
        _1702 = 1.0f;  // [sem: expr_sat]
      }
    } else {
      if ((uint)_1325 < (uint)3) {
        _1390 = (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _90) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x;
        _1394 = (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _95) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y;
        _1398 = (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _100) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z;
        _1402 = 1.0f / ((float)((uint)((uint)(1) << (_1325 & 31))));
        _1403 = _1390 * _1402;
        _1404 = _1394 * _1402;
        _1406 = frac(_1398 * _1402);
        _1415 = ((((float)((uint)((uint)((uint)(_1325)) * (uint)(66)))) + 1.0f) + ((select((_1406 < 0.0f), 1.0f, 0.0f) + _1406) * 64.0f)) * 0.003787879f;
        // [sem: _3__36__0__1__g_indirectCacheVoxels_sampleLod]
        _1418 = __3__36__0__1__g_indirectCacheVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3(_1403, _1404, _1415), 0.0f);
        // [sem: _3__36__0__1__g_indirectCacheChromaVoxels_sampleLod]
        _1424 = __3__36__0__1__g_indirectCacheChromaVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3(_1403, _1404, _1415), 0.0f);
        _1440 = (max(0.0f, ((sqrt(((_1418.y * _1418.y) + (_1418.z * _1418.z)) + (_1418.w * _1418.w)) * 1.0233277f) + (_1418.x * 0.88622755f))) * 1.3333309f) - (_1424.y * 0.5f);
        _1442 = _1440 - (_1424.x * 0.5f);
        _1444 = max(0.0f, (_1442 + _1424.x));
        _1446 = max(0.0f, (_1440 + _1424.y));
        _1447 = max(0.0f, _1442);
        if ((((_1424.z == 0.0f) && (_1444 == 0.0f)) && (_1446 == 0.0f)) && (_1447 == 0.0f)) {
          _1457 = min((int)(3), (int)(((int)(_1325) + (int)(1))));
          if ((uint)_1457 < (uint)8) {
            _1461 = _1457;
            while(true) {
              _1463 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((uint)((uint)((uint)(_1461)) + (uint)(20)))];
              _1469 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((uint)((uint)((uint)(_1461)) + (uint)(36)))];
              _1479 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _90) * _1463.w) + _1469.x));
              _1485 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _95) * _1463.w) + _1469.y));
              _1491 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _100) * _1463.w) + _1469.z));
              if (((int)_1479 < (int)((int)(_1463.x + -63.0f))) || ((!((int)_1479 < (int)((int)(_1463.x + -63.0f)))) && (!((int)_1479 < (int)((int)(_1463.x + 63.0f))))) || (((!((int)_1479 < (int)((int)(_1463.x + -63.0f)))) && ((int)_1479 < (int)((int)(_1463.x + 63.0f)))) && ((int)_1485 < (int)((int)(_1463.y + -31.0f)))) || ((((!((int)_1479 < (int)((int)(_1463.x + -63.0f)))) && ((int)_1479 < (int)((int)(_1463.x + 63.0f)))) && (!((int)_1485 < (int)((int)(_1463.y + -31.0f))))) && (!((int)_1485 < (int)((int)(_1463.y + 31.0f))))) || (((((!((int)_1479 < (int)((int)(_1463.x + -63.0f)))) && ((int)_1479 < (int)((int)(_1463.x + 63.0f)))) && (!((int)_1485 < (int)((int)(_1463.y + -31.0f))))) && ((int)_1485 < (int)((int)(_1463.y + 31.0f)))) && ((int)_1491 < (int)((int)(_1463.z + -63.0f)))) || ((((((!((int)_1479 < (int)((int)(_1463.x + -63.0f)))) && ((int)_1479 < (int)((int)(_1463.x + 63.0f)))) && (!((int)_1485 < (int)((int)(_1463.y + -31.0f))))) && ((int)_1485 < (int)((int)(_1463.y + 31.0f)))) && (!((int)_1491 < (int)((int)(_1463.z + -63.0f))))) && (!((int)_1491 < (int)((int)(_1463.z + 63.0f)))))) {
                _1516 = (int)(_1461) + (int)(1);
                if ((uint)_1516 < (uint)8) {
                  _1461 = _1516;
                  continue;
                } else {
                  _1683 = _1444;
                  _1684 = _1446;
                  _1685 = _1447;
                  _1686 = _1424.z;
                }
              } else {
                if ((uint)_1461 < (uint)4) {
                  _1524 = 1.0f / ((float)((uint)((uint)(1) << (_1461 & 31))));
                  _1525 = _1524 * _1390;
                  _1526 = _1524 * _1394;
                  _1528 = frac(_1524 * _1398);
                  _1537 = ((((float)((uint)((uint)((uint)(_1461)) * (uint)(66)))) + 1.0f) + ((select((_1528 < 0.0f), 1.0f, 0.0f) + _1528) * 64.0f)) * 0.003787879f;
                  // [sem: _3__36__0__1__g_indirectCacheVoxels_sampleLod]
                  _1538 = __3__36__0__1__g_indirectCacheVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3(_1525, _1526, _1537), 0.0f);
                  // [sem: _3__36__0__1__g_indirectCacheChromaVoxels_sampleLod]
                  _1543 = __3__36__0__1__g_indirectCacheChromaVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3(_1525, _1526, _1537), 0.0f);
                  _1559 = (max(0.0f, ((sqrt(((_1538.y * _1538.y) + (_1538.z * _1538.z)) + (_1538.w * _1538.w)) * 1.0233277f) + (_1538.x * 0.88622755f))) * 1.3333309f) - (_1543.y * 0.5f);
                  _1561 = _1559 - (_1543.x * 0.5f);
                  _1563 = max(0.0f, (_1561 + _1543.x));
                  _1565 = max(0.0f, (_1559 + _1543.y));
                  _1566 = max(0.0f, _1561);
                  if ((((_1543.z == 0.0f) && (_1563 == 0.0f)) && (_1565 == 0.0f)) && (_1566 == 0.0f)) {
                    _1576 = 3;
                    while(true) {
                      _1578 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1576) + (int)(20)))];
                      _1584 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1576) + (int)(36)))];
                      _1594 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _90) * _1578.w) + _1584.x));
                      _1600 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _95) * _1578.w) + _1584.y));
                      _1606 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _100) * _1578.w) + _1584.z));
                      if (((int)_1594 < (int)((int)(_1578.x + -63.0f))) || !((int)_1594 < (int)((int)(_1578.x + 63.0f))) || ((int)_1600 < (int)((int)(_1578.y + -31.0f))) || !((int)_1600 < (int)((int)(_1578.y + 31.0f))) || ((int)_1606 < (int)((int)(_1578.z + -63.0f))) || !((int)_1606 < (int)((int)(_1578.z + 63.0f)))) {
                        _1631 = (int)(_1576) + (int)(1);
                        if ((uint)_1631 < (uint)8) {
                          _1576 = _1631;
                          continue;
                        } else {
                          _1634 = -10000;
                        }
                      } else {
                        _1634 = _1576;
                      }
                      _1638 = 1.0f / ((float)((uint)((uint)(1) << (_1634 & 31))));
                      _1639 = _1638 * _1390;
                      _1640 = _1638 * _1394;
                      _1642 = frac(_1638 * _1398);
                      _1651 = ((((float)((uint)((uint)((uint)(_1634)) * (uint)(66)))) + 1.0f) + ((select((_1642 < 0.0f), 1.0f, 0.0f) + _1642) * 64.0f)) * 0.003787879f;
                      // [sem: _3__36__0__1__g_indirectCacheVoxels_sampleLod]
                      _1652 = __3__36__0__1__g_indirectCacheVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3(_1639, _1640, _1651), 0.0f);
                      // [sem: _3__36__0__1__g_indirectCacheChromaVoxels_sampleLod]
                      _1657 = __3__36__0__1__g_indirectCacheChromaVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3(_1639, _1640, _1651), 0.0f);
                      _1673 = (max(0.0f, ((sqrt(((_1652.y * _1652.y) + (_1652.z * _1652.z)) + (_1652.w * _1652.w)) * 1.0233277f) + (_1652.x * 0.88622755f))) * 1.3333309f) - (_1657.y * 0.5f);
                      _1675 = _1673 - (_1657.x * 0.5f);
                      _1683 = max(0.0f, (_1675 + _1657.x));
                      _1684 = max(0.0f, (_1673 + _1657.y));
                      _1685 = max(0.0f, _1675);
                      _1686 = _1657.z;
                      break;
                    }
                  } else {
                    _1683 = _1563;
                    _1684 = _1565;
                    _1685 = _1566;
                    _1686 = _1543.z;
                  }
                } else {
                  _1683 = _1444;
                  _1684 = _1446;
                  _1685 = _1447;
                  _1686 = _1424.z;
                }
              }
              break;
            }
          } else {
            _1683 = _1444;
            _1684 = _1446;
            _1685 = _1447;
            _1686 = _1424.z;
          }
        } else {
          _1683 = _1444;
          _1684 = _1446;
          _1685 = _1447;
          _1686 = _1424.z;
        }
        _1687 = max(0.01f, _1686);
        _1699 = ((_1683 / _1687) * 3.1415927f);
        _1700 = ((_1684 / _1687) * 3.1415927f);
        _1701 = ((_1685 / _1687) * 3.1415927f);
        _1702 = saturate((_278 + -64.0f) * 0.0078125f);  // [sem: expr_sat]
      } else {
        _1699 = 0.0f;
        _1700 = 0.0f;
        _1701 = 0.0f;
        _1702 = 1.0f;  // [sem: expr_sat]
      }
    }
    _1703 = _192 * -1.0233277f;
    _1704 = _193 * 1.0233277f;
    _1705 = _191 * -1.0233277f;
    _1707 = (_191 * 0.8580852f) * _192;
    _1708 = _193 * -0.8580852f;
    _1709 = _1708 * _192;
    _1712 = ((_193 * _193) * 0.74312484f) + -0.24770829f;
    _1713 = _1708 * _191;
    _1717 = ((_191 * _191) - (_192 * _192)) * 0.4290426f;
    _1718 = _90 - _483;
    _1719 = _95 - _480;
    _1720 = _100 - _477;
    _1726 = sqrt(((_1719 * _1719) + (_1720 * _1720)) + (_1718 * _1718));
    if (_224 > 5000.0f) {
      _1744 = (((saturate(max((_224 + -5000.0f), 0.0f) * 0.001f) * 10.0f) * exp2(log2(frac(sin(dot(float2(_58, _60), float2(127.1f, 311.7f))) * 437.545f)) * 0.45454544f)) + _1726);
    } else {
      _1744 = _1726;
    }
    if (_209) {
      _1756 = ((saturate(_1744 * 10.0f) * ((_120 - _1744) + ((_1744 - _120) * ((float)((bool)(_124)))))) + _1744);
    } else {
      _1756 = _1744;
    }
    _1757 = _1756 * 2.0f;
    _1761 = -0.0f - max(1e-05f, ((_1757 * _513) / _1756));
    _1765 = -0.0f - max(1e-05f, ((_1757 * _518) / _1756));
    _1769 = -0.0f - max(1e-05f, ((_1757 * _523) / _1756));
    _1770 = _1756 * 1.442695f;
    _1772 = max(1e-05f, _1756) * -1.442695f;
    _1773 = _1125 + _227;
    _1774 = _1124 + _229;
    _1775 = _1123 + _231;
    _1777 = rsqrt(dot(float3(_1773, _1774, _1775), float3(_1773, _1774, _1775)));  // [sem: invLength]
    _1778 = _1777 * _1773;
    _1779 = _1777 * _1774;
    _1780 = _1777 * _1775;
    _1781 = dot(float3(_191, _192, _193), float3(_1125, _1124, _1123));
    _1782 = dot(float3(_191, _192, _193), float3(_1778, _1779, _1780));
    _1783 = dot(float3(_288, _289, _290), float3(_1125, _1124, _1123));
    _1785 = (_1783 * _1783) + 1.0f;
    _1786 = _1783 * 0.5f;
    _1799 = max(((_1785 / exp2(log2(1.0625f - _1786) * 1.5f)) * 0.054257367f), ((_1785 / exp2(log2(_1786 + 1.0625f) * 1.5f)) * 0.054257367f));
    _1803 = saturate(1.0f - saturate(dot(float3(_227, _229, _231), float3(_1778, _1779, _1780))));  // [sem: expr_sat]
    _1804 = _1803 * _1803;
    _1806 = (_1804 * _1804) * _1803;
    _1811 = (((dot(float3(_227, _229, _231), float3(_1125, _1124, _1123)) * 0.5f) + 0.5f) * _1756) + _1756;
    _1815 = -0.0f - max(1e-05f, ((_1811 * _513) / _1756));
    _1819 = -0.0f - max(1e-05f, ((_1811 * _518) / _1756));
    _1823 = -0.0f - max(1e-05f, ((_1811 * _523) / _1756));
    _1863 = (((((exp2(_1770 * _1761) + -1.0f) / _1761) * 0.2572201f) * (((max(0.0f, ((dot(float4(0.88622755f, _1703, _1704, _1705), float4(_precomputedAmbient0.x, _precomputedAmbient0.y, _precomputedAmbient0.z, _precomputedAmbient0.w)) + dot(float4(_1707, _1709, _1712, _1713), float4(_precomputedAmbient1.x, _precomputedAmbient1.y, _precomputedAmbient1.z, _precomputedAmbient1.w))) + (_precomputedAmbient6.x * _1717))) - _1699) * _1702) + _1699)) + ((_1799 * _1311) * ((exp2(_1770 * _1815) + -1.0f) / _1815))) * (((_507 * 0.33951f) + (_506 * 0.61312f)) + (_508 * 0.04737f));
    _1902 = (((((exp2(_1770 * _1765) + -1.0f) / _1765) * 0.2572201f) * (((max(0.0f, ((dot(float4(0.88622755f, _1703, _1704, _1705), float4(_precomputedAmbient2.x, _precomputedAmbient2.y, _precomputedAmbient2.z, _precomputedAmbient2.w)) + (_precomputedAmbient6.y * _1717)) + dot(float4(_1707, _1709, _1712, _1713), float4(_precomputedAmbient3.x, _precomputedAmbient3.y, _precomputedAmbient3.z, _precomputedAmbient3.w)))) - _1700) * _1702) + _1700)) + ((_1799 * _1317) * ((exp2(_1770 * _1819) + -1.0f) / _1819))) * (((_507 * 0.91636f) + (_506 * 0.0702f)) + (_508 * 0.01345f));
    _1941 = (((((exp2(_1770 * _1769) + -1.0f) / _1769) * 0.2572201f) * (((max(0.0f, ((dot(float4(0.88622755f, _1703, _1704, _1705), float4(_precomputedAmbient4.x, _precomputedAmbient4.y, _precomputedAmbient4.z, _precomputedAmbient4.w)) + (_precomputedAmbient6.z * _1717)) + dot(float4(_1707, _1709, _1712, _1713), float4(_precomputedAmbient5.x, _precomputedAmbient5.y, _precomputedAmbient5.z, _precomputedAmbient5.w)))) - _1701) * _1702) + _1701)) + ((_1799 * _1323) * ((exp2(_1770 * _1823) + -1.0f) / _1823))) * (((_507 * 0.10958f) + (_506 * 0.02062f)) + (_508 * 0.8698f));
    _1943 = (_232 * 0.9996f) + 0.0004f;
    _1946 = 1.0f - ((_1782 * _1782) * 0.9999998f);
    _1962 = max((((0.5f / ((((_1781 * 0.9996f) + 0.0004f) * _232) + (_1781 * _1943))) * (lerp(_1806, 1.0f, 0.04f))) * (5.0929575e-08f / (_1946 * _1946))), 0.0f) * saturate(_1781);
    _1963 = _1962 * _1311;
    _1964 = _1962 * _1317;
    _1965 = _1962 * _1323;
    if (_208) {
      _1969 = asint(__3__37__0__0__g_structureCounterBuffer.Load(4));
      _1973 = ((int)((uint)(_tiledRadianceCacheParams.x))) & 31;
      // [sem: _3__36__0__0__g_manyLightsHitData_load]
      _1981 = __3__36__0__0__g_manyLightsHitData.Load(int3(((int)((int)(_bufferSizeAndInvSize.x * TEXCOORD.x)) >> _1973), ((int)((int)(_bufferSizeAndInvSize.y * TEXCOORD.y)) >> _1973), 0));
      _1988 = select((((int)(_1981.x) | (int)(_1981.y)) != 0), (((uint)((uint)(_1981.x)) >> 16) & 32767), 32767);
      if ((_1988 != 32767) && ((uint)_1988 < (uint)_1969)) {
        _1995 = __3__37__0__0__g_manyLightsDataBuffer[_1988]._position.x;
        _1996 = __3__37__0__0__g_manyLightsDataBuffer[_1988]._position.y;
        _1997 = __3__37__0__0__g_manyLightsDataBuffer[_1988]._position.z;
        _1999 = __3__37__0__0__g_manyLightsDataBuffer[_1988]._color.x;
        _2000 = __3__37__0__0__g_manyLightsDataBuffer[_1988]._color.y;
        _2001 = __3__37__0__0__g_manyLightsDataBuffer[_1988]._color.z;
        _2002 = __3__37__0__0__g_manyLightsDataBuffer[_1988]._color.w;
        _2004 = __3__37__0__0__g_manyLightsDataBuffer[_1988]._up.x;
        _2005 = __3__37__0__0__g_manyLightsDataBuffer[_1988]._up.y;
        _2007 = __3__37__0__0__g_manyLightsDataBuffer[_1988]._look.x;
        _2008 = __3__37__0__0__g_manyLightsDataBuffer[_1988]._look.y;
        _2009 = _1995 - _90;
        _2010 = _1996 - _95;
        _2011 = _1997 - _100;
        _2017 = sqrt(((_2010 * _2010) + (_2009 * _2009)) + (_2011 * _2011));
        _2018 = 1.0f / _2017;
        _2019 = _2018 * _2009;
        _2020 = _2018 * _2010;
        _2021 = _2018 * _2011;
        _2022 = (_2002 > 99999.0f);
        if (!_2022) {
          _2043 = min(min(512.0f, ((_cavityParams.w * 192.0f) + 128.0f)), ((dot(float3(_1999, _2000, _2001), float3(0.212671f, 0.71516f, 0.072169f)) * ((min(0.6f, ((_cavityParams.w * 0.2f) + 0.2f)) * 0.25f) / max(1e-06f, (_exposure2.x * 8.0f)))) + 8.0f));
        } else {
          _2043 = _2002;
        }
        _2044 = abs(_2002);
        _2045 = _2017 * _2017;
        _2051 = _2019 - _227;
        _2052 = _2020 - _229;
        _2053 = _2021 - _231;
        _2055 = rsqrt(dot(float3(_2051, _2052, _2053), float3(_2051, _2052, _2053)));  // [sem: invLength]
        _2056 = _2055 * _2051;
        _2057 = _2055 * _2052;
        _2058 = _2055 * _2053;
        _2059 = dot(float3(_139, _140, _141), float3(_2019, _2020, _2021));
        _2061 = saturate(dot(float3(_139, _140, _141), float3(_288, _289, _290)));  // [sem: expr_sat]
        _2063 = saturate(dot(float3(_139, _140, _141), float3(_2056, _2057, _2058)));  // [sem: expr_sat]
        if (!(_2059 <= 0.0f)) {
          _2068 = saturate(1.0f - dot(float3(_288, _289, _290), float3(_2056, _2057, _2058)));  // [sem: expr_sat]
          _2069 = _2068 * _2068;
          _2071 = (_2069 * _2069) * _2068;
          _2074 = 1.0f - ((_2063 * _2063) * 0.99f);
          _2094 = (saturate(_2059) * max((((0.5f / ((((_2061 * 0.99f) + 0.010000001f) * _2059) + (_2061 * ((_2059 * 0.99f) + 0.010000001f)))) * (0.003183099f / (_2074 * _2074))) * (lerp(_2071, 1.0f, 0.04f))), 0.0f));
        } else {
          _2094 = 0.0f;
        }
        if (_2022) {
          _2124 = select(_2022, 1.0f, saturate(select(_2022, 1.0f, (1.0f / max((_2002 * _2002), _2045))))) * ((float)((bool)((((float)((uint)((uint)(_1981.x & 65535)))) * 0.01560998f) >= 1000.0f)));
          _2125 = _2124 * _1999;
          _2126 = _2124 * _2000;
          _2127 = _2124 * _2001;
          _2129 = f16tof32(((uint)(_2004 & 65535)));
          _2131 = f16tof32(((uint)((uint)((uint)(_2004)) >> 16)));
          _2133 = f16tof32(((uint)(_2005 & 65535)));
          _2135 = f16tof32(((uint)((uint)((uint)(_2005)) >> 16)));
          _2137 = rsqrt(dot(float3(_2129, _2131, _2133), float3(_2129, _2131, _2133)));  // [sem: invLength]
          _2139 = f16tof32(((uint)(_2007 & 65535)));
          _2141 = f16tof32(((uint)((uint)((uint)(_2007)) >> 16)));
          _2143 = f16tof32(((uint)(_2008 & 65535)));
          _2145 = rsqrt(dot(float3(_2139, _2141, _2143), float3(_2139, _2141, _2143)));  // [sem: invLength]
          _2146 = _2145 * _2139;
          _2147 = _2145 * _2141;
          _2148 = _2145 * _2143;
          if (!(!(_2135 >= 0.0f))) {
            _2156 = mad(_2021, (_2137 * _2133), mad(_2020, (_2137 * _2131), ((_2129 * _2019) * _2137)));
            _2159 = mad(_2021, _2148, mad(_2020, _2147, (_2146 * _2019)));
            _2163 = atan((-0.0f - _2159) / (-0.0f - _2156));
            _2164 = (_2156 > -0.0f);
            _2165 = (_2156 == -0.0f);
            _2166 = (_2159 <= -0.0f);
            _2167 = (_2159 > -0.0f);
            // [sem: _3__36__0__0__g_lightProfile_sampleLod]
            _2191 = __3__36__0__0__g_lightProfile.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((asin(dot(float3(_2019, _2020, _2021), float3(_2146, _2147, _2148))) * 0.31830987f) + 0.5f), ((saturate(abs(select((_2165 && _2166), 0.5f, select((_2165 && _2167), -0.5f, (select((_2164 && _2167), (_2163 + -3.1415927f), select((_2164 && _2166), (_2163 + 3.1415927f), _2163)) * 0.31830987f))))) * abs(f16tof32(((uint)((uint)((uint)(_2008)) >> 16))))) + _2135)), 0.0f);
            _2197 = (_2191.x * _2125);
            _2198 = (_2191.x * _2126);
            _2199 = (_2191.x * _2127);
          } else {
            _2197 = _2125;
            _2198 = _2126;
            _2199 = _2127;
          }
          _2200 = _2019 + _227;
          _2201 = _2020 + _229;
          _2202 = _2021 + _231;
          _2204 = rsqrt(dot(float3(_2200, _2201, _2202), float3(_2200, _2201, _2202)));  // [sem: invLength]
          _2205 = _2204 * _2200;
          _2206 = _2204 * _2201;
          _2207 = _2204 * _2202;
          _2208 = dot(float3(_191, _192, _193), float3(_2019, _2020, _2021));
          _2209 = dot(float3(_191, _192, _193), float3(_2205, _2206, _2207));
          _2213 = saturate(1.0f - saturate(dot(float3(_227, _229, _231), float3(_2205, _2206, _2207))));  // [sem: expr_sat]
          _2214 = _2213 * _2213;
          _2216 = (_2214 * _2214) * _2213;
          _2219 = 1.0f - ((_2209 * _2209) * 0.9999998f);
          _2235 = max((((0.5f / ((((_2208 * 0.9996f) + 0.0004f) * _232) + (_2208 * _1943))) * (5.0929575e-08f / (_2219 * _2219))) * (lerp(_2216, 1.0f, 0.04f))), 0.0f) * saturate(_2208);
          _2243 = ((_2235 * _2197) + _1963);
          _2244 = ((_2235 * _2198) + _1964);
          _2245 = ((_2235 * _2199) + _1965);
        } else {
          if (_2017 < _2043) {
            _2098 = _2094 * select((_2044 > 99999.0f), 1.0f, (1.0f / max((_2044 * _2044), _2045)));
            if (dot(float3((_2098 * _1999), (_2098 * _2000), (_2098 * _2001)), float3(0.212671f, 0.71516f, 0.072169f)) > (((saturate(dot(float3(_viewPos.x, _viewPos.y, _viewPos.z), float3(_90, _95, _100)) * 0.015625f) * 0.09f) + 0.01f) * _exposure2.x)) {
              _2124 = select(_2022, 1.0f, saturate(select(_2022, 1.0f, (1.0f / max((_2002 * _2002), _2045))))) * ((float)((bool)((((float)((uint)((uint)(_1981.x & 65535)))) * 0.01560998f) >= 1000.0f)));
              _2125 = _2124 * _1999;
              _2126 = _2124 * _2000;
              _2127 = _2124 * _2001;
              _2129 = f16tof32(((uint)(_2004 & 65535)));
              _2131 = f16tof32(((uint)((uint)((uint)(_2004)) >> 16)));
              _2133 = f16tof32(((uint)(_2005 & 65535)));
              _2135 = f16tof32(((uint)((uint)((uint)(_2005)) >> 16)));
              _2137 = rsqrt(dot(float3(_2129, _2131, _2133), float3(_2129, _2131, _2133)));  // [sem: invLength]
              _2139 = f16tof32(((uint)(_2007 & 65535)));
              _2141 = f16tof32(((uint)((uint)((uint)(_2007)) >> 16)));
              _2143 = f16tof32(((uint)(_2008 & 65535)));
              _2145 = rsqrt(dot(float3(_2139, _2141, _2143), float3(_2139, _2141, _2143)));  // [sem: invLength]
              _2146 = _2145 * _2139;
              _2147 = _2145 * _2141;
              _2148 = _2145 * _2143;
              if (!(!(_2135 >= 0.0f))) {
                _2156 = mad(_2021, (_2137 * _2133), mad(_2020, (_2137 * _2131), ((_2129 * _2019) * _2137)));
                _2159 = mad(_2021, _2148, mad(_2020, _2147, (_2146 * _2019)));
                _2163 = atan((-0.0f - _2159) / (-0.0f - _2156));
                _2164 = (_2156 > -0.0f);
                _2165 = (_2156 == -0.0f);
                _2166 = (_2159 <= -0.0f);
                _2167 = (_2159 > -0.0f);
                // [sem: _3__36__0__0__g_lightProfile_sampleLod]
                _2191 = __3__36__0__0__g_lightProfile.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((asin(dot(float3(_2019, _2020, _2021), float3(_2146, _2147, _2148))) * 0.31830987f) + 0.5f), ((saturate(abs(select((_2165 && _2166), 0.5f, select((_2165 && _2167), -0.5f, (select((_2164 && _2167), (_2163 + -3.1415927f), select((_2164 && _2166), (_2163 + 3.1415927f), _2163)) * 0.31830987f))))) * abs(f16tof32(((uint)((uint)((uint)(_2008)) >> 16))))) + _2135)), 0.0f);
                _2197 = (_2191.x * _2125);
                _2198 = (_2191.x * _2126);
                _2199 = (_2191.x * _2127);
              } else {
                _2197 = _2125;
                _2198 = _2126;
                _2199 = _2127;
              }
              _2200 = _2019 + _227;
              _2201 = _2020 + _229;
              _2202 = _2021 + _231;
              _2204 = rsqrt(dot(float3(_2200, _2201, _2202), float3(_2200, _2201, _2202)));  // [sem: invLength]
              _2205 = _2204 * _2200;
              _2206 = _2204 * _2201;
              _2207 = _2204 * _2202;
              _2208 = dot(float3(_191, _192, _193), float3(_2019, _2020, _2021));
              _2209 = dot(float3(_191, _192, _193), float3(_2205, _2206, _2207));
              _2213 = saturate(1.0f - saturate(dot(float3(_227, _229, _231), float3(_2205, _2206, _2207))));  // [sem: expr_sat]
              _2214 = _2213 * _2213;
              _2216 = (_2214 * _2214) * _2213;
              _2219 = 1.0f - ((_2209 * _2209) * 0.9999998f);
              _2235 = max((((0.5f / ((((_2208 * 0.9996f) + 0.0004f) * _232) + (_2208 * _1943))) * (5.0929575e-08f / (_2219 * _2219))) * (lerp(_2216, 1.0f, 0.04f))), 0.0f) * saturate(_2208);
              _2243 = ((_2235 * _2197) + _1963);
              _2244 = ((_2235 * _2198) + _1964);
              _2245 = ((_2235 * _2199) + _1965);
            } else {
              _2243 = _1963;
              _2244 = _1964;
              _2245 = _1965;
            }
          } else {
            _2243 = _1963;
            _2244 = _1964;
            _2245 = _1965;
          }
        }
      } else {
        _2243 = _1963;
        _2244 = _1964;
        _2245 = _1965;
      }
    } else {
      _2243 = _1963;
      _2244 = _1964;
      _2245 = _1965;
    }
    _2248 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearMirror, float2(_474, _473), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
    _2255 = max(0.0f, (_volumeSize.z + -48.0f));
    _2262 = max(0.0f, sqrt(((_480 * _480) + (_477 * _477)) + (_483 * _483)));
    if (!(_2262 <= 128.0f)) {
      if (!(_2255 <= 0.0f)) {
        _2283 = ((log2((((_2262 + -128.0f) * 0.0078125f) * (exp2(_2255 * 0.056583475f) + -1.0f)) + 1.0f) * 17.673004f) + 48.0f);
      } else {
        _2283 = 48.0f;
      }
    } else {
      _2283 = (log2((_2262 * 0.04351966f) + 1.0f) * 17.673004f);
    }
    _2284 = max(0.0f, _224);
    if (!(_2284 <= 128.0f)) {
      if (!(_2255 <= 0.0f)) {
        _2305 = ((log2((((_2284 + -128.0f) * 0.0078125f) * (exp2(_2255 * 0.056583475f) + -1.0f)) + 1.0f) * 17.673004f) + 48.0f);
      } else {
        _2305 = 48.0f;
      }
    } else {
      _2305 = (log2((_2284 * 0.04351966f) + 1.0f) * 17.673004f);
    }
    _2306 = _2305 / _volumeSize.z;
    _2315 = min((1.0f - ((((float)((bool)((_bufferSizeAndInvSize.x - (_volumeSize.x * 4.0f)) > 0.0f))) + 0.5f) / _volumeSize.x)), _474);
    _2324 = min((1.0f - ((((float)((bool)((_bufferSizeAndInvSize.y - (_volumeSize.y * 4.0f)) > 0.0f))) + 0.5f) / _volumeSize.y)), _473);
    // [sem: _3__36__0__0__g_texFroxel_sampleLod]
    _2327 = __3__36__0__0__g_texFroxel.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_2315, _2324, (_2283 / _volumeSize.z)), 0.0f);
    // [sem: _3__36__0__0__g_texFroxel_sampleLod]
    _2332 = __3__36__0__0__g_texFroxel.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_2315, _2324, _2306), 0.0f);
    _2338 = max(0.0f, (_2327.x - _2332.x));
    _2340 = max(0.0f, (_2327.y - _2332.y));
    _2342 = max(0.0f, (_2327.z - _2332.z));
    _2345 = (1.0f / max(0.01f, _2332.w)) * _2327.w;
    if (_124) {
      _2349 = saturate((_2306 + -0.75f) * 4.0f);  // [sem: expr_sat]
      _2360 = ((_2349 * (_1863 - _2338)) + _2338);
      _2361 = ((_2349 * (_1902 - _2340)) + _2340);
      _2362 = ((_2349 * (_1941 - _2342)) + _2342);
    } else {
      _2360 = _1863;
      _2361 = _1902;
      _2362 = _1941;
    }
    _2365 = (int)((_474 * _bufferSizeAndInvSize.x) + 0.5f);
    _2368 = (int)((_473 * _bufferSizeAndInvSize.y) + 0.5f);
    [branch]
    if (_204) {
      if (!(((((uint)(__3__36__0__0__g_sceneNormal.Load(int3(_2365, _2368, 0)))).x) & 1073741824) == 0)) {
        _2380 = exp2((saturate(_195.w) * 20.0f) + -8.0f) + -0.00390625f;  // [sem: _3__36__0__0__g_character_load_derived]
        _2389 = select((_195.x < 0.04045f), (_195.x * 0.07739938f), exp2(log2((_195.x + 0.055f) * 0.94786733f) * 2.4f)) * _2380;
        _2398 = select((_195.y < 0.04045f), (_195.y * 0.07739938f), exp2(log2((_195.y + 0.055f) * 0.94786733f) * 2.4f)) * _2380;
        _2407 = select((_195.z < 0.04045f), (_195.z * 0.07739938f), exp2(log2((_195.z + 0.055f) * 0.94786733f) * 2.4f)) * _2380;
        _2412 = ((_2398 * 0.33951f) + (_2389 * 0.61312f)) + (_2407 * 0.04737f);
        _2417 = ((_2398 * 0.91636f) + (_2389 * 0.0702f)) + (_2407 * 0.01345f);
        _2422 = ((_2398 * 0.10958f) + (_2389 * 0.02062f)) + (_2407 * 0.8698f);
        _2423 = dot(float3(_2412, _2417, _2422), float3(0.212671f, 0.71516f, 0.072169f));
        _2426 = max(_2423, 1.0f) / max(_2423, 0.1f);
        _2435 = (_2412 * _2426);
        _2436 = (_2417 * _2426);
        _2437 = (_2422 * _2426);
        _2438 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
        _2439 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
        _2440 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
      } else {
        _2435 = 0.0f;
        _2436 = 0.0f;
        _2437 = 0.0f;
        _2438 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
        _2439 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
        _2440 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
      }
    } else {
      _2435 = 0.0f;
      _2436 = 0.0f;
      _2437 = 0.0f;
      _2438 = (_195.x * 4.0f);  // [sem: _3__36__0__0__g_character_load_derived]
      _2439 = (_195.y * 4.0f);  // [sem: _3__36__0__0__g_character_load_derived]
      _2440 = (_195.z * 4.0f);  // [sem: _3__36__0__0__g_character_load_derived]
    }
    // [sem: _3__36__0__0__g_texFroxelLight_sampleLod]
    _2442 = __3__36__0__0__g_texFroxelLight.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_2315, _2324, _2306), 0.0f);
    _2446 = 1.0f - _218;
    // [sem: _3__36__0__0__g_sceneSpecular_sampleLod]
    _2448 = __3__36__0__0__g_sceneSpecular.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y), 0.0f);
    _2452 = __3__36__0__0__g_baseColor.Load(int3(_2365, _2368, 0));  // [sem: _3__36__0__0__g_baseColor_load]
    _2458 = ((float)((uint)((uint)(((uint)((uint)(_2452.x)) >> 8) & 255)))) * 0.003921569f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _2461 = ((float)((uint)((uint)(_2452.x & 255)))) * 0.003921569f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _2465 = ((float)((uint)((uint)(((uint)((uint)(_2452.y)) >> 8) & 255)))) * 0.003921569f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _2467 = saturate(_2458 * _2458);  // [sem: expr_sat]
    _2469 = saturate(_2461 * _2461);  // [sem: expr_sat]
    _2471 = saturate(_2465 * _2465);  // [sem: expr_sat]
    // [sem: _3__36__0__0__g_dlssRRNormalRoughnessOpaque_sampleLod]
    _2473 = __3__36__0__0__g_dlssRRNormalRoughnessOpaque.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_474, _473), 0.0f);
    _2479 = rsqrt(dot(float3(_2473.x, _2473.y, _2473.z), float3(_2473.x, _2473.y, _2473.z)));  // [sem: invLength]
    _2480 = _2479 * _2473.x;
    _2481 = _2479 * _2473.y;
    _2482 = _2479 * _2473.z;
    _2484 = rsqrt(dot(float3(_483, _480, _477), float3(_483, _480, _477)));  // [sem: invLength]
    _2485 = _2473.w * _2473.w;
    _2493 = abs(dot(float3(_2480, _2481, _2482), float3((-0.0f - (_483 * _2484)), (-0.0f - (_480 * _2484)), (-0.0f - (_477 * _2484)))));
    _2494 = _2493 * _2493;
    _2495 = _2494 * _2493;
    _2497 = (_2485 * _2485) * _2485;
    _2524 = mad(0.04f, max(0.0f, (dot(float2(mad(3.32707f, _2493, 0.0365463f), mad(-9.04756f, _2493, 9.0632f)), float2(1.0f, _2485)) * (1.0f / dot(float3(mad(-1.36772f, _2495, mad(3.59685f, _2494, 1.0f)), mad(9.22949f, _2495, mad(-16.3174f, _2494, 9.04401f)), mad(-20.2123f, _2495, mad(19.7886f, _2494, 5.56589f))), float3(1.0f, _2485, _2497))))), max(0.0f, (dot(float2(mad(-1.28514f, _2493, 0.99044f), mad(-0.755907f, _2493, 1.29678f)), float2(1.0f, _2485)) * (1.0f / dot(float3(mad(59.4188f, _2495, mad(2.92338f, _2493, 1.0f)), mad(222.592f, _2495, mad(-27.0302f, _2493, 20.3225f)), mad(316.627f, _2495, mad(626.13f, _2493, 121.563f))), float3(1.0f, _2485, _2497))))));
    __3__38__0__1__g_dlssRRDiffuseAlbedoUAV[int2(_52, _53)] = float4(saturate(((_2469 * 0.33951f) + (_2467 * 0.61312f)) + (_2471 * 0.04737f)), saturate(((_2469 * 0.91636f) + (_2467 * 0.0702f)) + (_2471 * 0.01345f)), saturate(((_2469 * 0.10958f) + (_2467 * 0.02062f)) + (_2471 * 0.8698f)), 1.0f);
    __3__38__0__1__g_dlssRRSpecularAlbedoUAV[int2(_52, _53)] = float4(_2524, _2524, _2524, 1.0f);
    __3__38__0__1__g_dlssRRNormalRoughnessUAV[int2(_52, _53)] = float4(_2480, _2481, _2482, _2473.w);
    SV_Target.x = (((((((_2361 * 0.33951f) + (_2360 * 0.61312f)) + (_2362 * 0.04737f)) + select(_209, (_2442.x * _2438), 0.0f)) + _2448.x) + (min(60000.0f, _2243) * _2446)) + (((_2435 + _2248.x) * _2345) * exp2(_1772 * _513)));
    SV_Target.y = (((((((_2361 * 0.91636f) + (_2360 * 0.0702f)) + (_2362 * 0.01345f)) + select(_209, (_2442.y * _2439), 0.0f)) + _2448.y) + (min(60000.0f, _2244) * _2446)) + (((_2436 + _2248.y) * _2345) * exp2(_1772 * _518)));
    SV_Target.z = (((((((_2361 * 0.10958f) + (_2360 * 0.02062f)) + (_2362 * 0.8698f)) + select(_209, (_2442.z * _2440), 0.0f)) + _2448.z) + (min(60000.0f, _2245) * _2446)) + (((_2437 + _2248.z) * _2345) * exp2(_1772 * _523)));
    SV_Target.w = 1.0f;
    break;
  }
  return SV_Target;
}
