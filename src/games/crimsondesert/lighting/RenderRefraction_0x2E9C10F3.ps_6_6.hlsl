// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports "../shared.h" for the effective RenoDX option gates and injected constants used below.
#include "../shared.h"
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
struct ManyLightsData {
  float4 _position;
  float4 _color;
  uint2 _up;
  uint2 _look;
};


Texture2D<float> __3__36__0__0__g_lightProfile : register(t76, space36);

Texture2D<float2> __3__36__0__0__g_texNetDensity : register(t54, space36);

Texture3D<float> __3__36__0__0__g_texCloudVolumeShadow : register(t106, space36);

Texture2D<float4> __3__36__0__0__g_terrainShadowDepth : register(t65, space36);

Texture2DArray<float4> __3__36__0__0__g_dynamicShadowDepthArray : register(t119, space36);

Texture2DArray<float4> __3__36__0__0__g_shadowDepthArray : register(t122, space36);

Texture3D<float4> __3__36__0__1__g_indirectCacheVoxelsTexturesLikeUav : register(t109, space36);

Texture3D<float4> __3__36__0__1__g_indirectCacheChromaVoxelsTexturesLikeUav : register(t110, space36);

Texture2D<uint2> __3__36__0__0__g_manyLightsHitData : register(t20, space36);

ByteAddressBuffer __3__37__0__0__g_structureCounterBuffer : register(t20, space37);

StructuredBuffer<ManyLightsData> __3__37__0__0__g_manyLightsDataBuffer : register(t1, space37);

Texture3D<float4> __3__36__0__0__g_texFroxelLight : register(t104, space36);

Texture3D<float4> __3__36__0__0__g_texFroxel : register(t105, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t30, space36);

Texture2D<uint4> __3__36__0__0__g_baseColor : register(t31, space36);

Texture2D<float4> __3__36__0__0__g_normal : register(t32, space36);

Texture2D<float4> __3__36__0__0__g_character : register(t33, space36);

Texture2D<float4> __3__36__0__0__g_extinction : register(t34, space36);

Texture2D<float> __3__36__0__0__g_depthTranslucent : register(t36, space36);

Texture2D<uint2> __3__36__0__0__g_stencilTranslucent : register(t37, space36);

Texture2D<uint> __3__36__0__0__g_sceneNormal : register(t39, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t41, space36);

Texture2D<float4> __3__36__0__0__g_sceneSpecular : register(t42, space36);

Texture2D<float4> __3__36__0__0__g_dlssRRNormalRoughnessOpaque : register(t46, space36);

RWTexture2D<uint2> __3__38__0__1__g_depthOpaqueTintColorRefractedUAV : register(u0, space38);

RWTexture2D<float4> __3__38__0__1__g_dlssRRDiffuseAlbedoUAV : register(u1, space38);

RWTexture2D<float4> __3__38__0__1__g_dlssRRSpecularAlbedoUAV : register(u2, space38);

RWTexture2D<float4> __3__38__0__1__g_dlssRRNormalRoughnessUAV : register(u3, space38);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b16, space35) {
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

cbuffer __3__35__0__0__ShadowConstantBuffer : register(b17, space35) {
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

cbuffer __3__35__0__0__PrecomputedAmbientConstantBuffer : register(b29, space35) {
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
  uint _53;
  uint _54;
  float _56;
  float _59;
  float _61;
  float _62;
  float _84;
  float _88;
  float _92;
  float _96;
  float _98;
  float _99;
  float _100;
  float _101;
  float _106;
  float _107;
  float _108;
  float4 _110;
  uint2 _116;
  int _118;
  uint4 _120;
  float4 _123;
  float _129;
  float _130;
  bool _134;
  float _144;
  float _145;
  float _146;
  float _148;
  float _149;
  float _150;
  float _151;
  float _219;
  float _220;
  float _221;
  float _222;
  float _226;
  float _227;
  float _228;
  float _229;
  float _230;
  float _243;
  float _325;
  float _326;
  float _327;
  float _328;
  float _329;
  float _330;
  float _352;
  float _353;
  float _354;
  float _445;
  float _446;
  float _512;
  float _513;
  float _514;
  float _515;
  float _516;
  float _517;
  int _761;
  float _797;
  float _798;
  float _799;
  float _800;
  int _801;
  int _840;
  float _876;
  float _877;
  float _878;
  float _879;
  int _880;
  int _881;
  int _882;
  int _937;
  float _974;
  float _975;
  float _976;
  float _977;
  int _978;
  int _979;
  int _1025;
  float _1056;
  float _1057;
  float _1058;
  float _1059;
  int _1060;
  int _1061;
  float _1080;
  float _1152;
  float _1168;
  float _1169;
  float _1170;
  float _1190;
  float _1248;
  float _1348;
  float _1349;
  float _1350;
  int _1393;
  int _1451;
  int _1530;
  int _1588;
  int _1590;
  int _1648;
  int _1706;
  float _1754;
  float _1755;
  float _1756;
  float _1757;
  float _1769;
  float _1770;
  float _1771;
  float _1772;
  float _1875;
  float _1886;
  float _2112;
  float _2166;
  float _2257;
  float _2258;
  float _2259;
  float _2303;
  float _2304;
  float _2305;
  float _2346;
  float _2368;
  float _2423;
  float _2424;
  float _2425;
  float _2508;
  float _2509;
  float _2510;
  float _2511;
  float _2512;
  float _2513;
  float _164;
  float _165;
  float _168;
  float _169;
  float _173;
  float _175;
  float _176;
  float _177;
  float _178;
  float _180;
  float _183;
  float _185;
  float _197;
  float _201;
  float _205;
  float _207;
  float _213;
  float _214;
  float _215;
  float _216;
  bool _232;
  bool _233;
  float _234;
  float _252;
  float _253;
  float _254;
  float _255;
  float _256;
  float _257;
  int _260;
  int _261;
  float _266;
  float _267;
  float _288;
  float _289;
  float _297;
  float _298;
  float _299;
  float _300;
  float _303;
  float _304;
  float _305;
  float _306;
  float _312;
  float _313;
  float _314;
  float _315;
  float _316;
  float _331;
  float _336;
  float _344;
  float _361;
  float _369;
  float _373;
  float _374;
  float _375;
  float _403;
  float _412;
  float _415;
  float _417;
  float _439;
  float _451;
  float _455;
  float _456;
  float _457;
  int _460;
  int _461;
  float _466;
  float _467;
  float _484;
  float _486;
  float _488;
  float _489;
  float _505;
  float _506;
  float _507;
  float _508;
  float4 _528;
  float _533;
  float _546;
  float _547;
  float _548;
  float _549;
  float _550;
  float _551;
  float _564;
  float _565;
  float _566;
  float _613;
  uint _628;
  uint _636;
  uint _644;
  uint _652;
  uint _660;
  uint _668;
  uint _676;
  uint _684;
  uint _692;
  uint _700;
  uint _708;
  uint _716;
  uint _724;
  uint _732;
  uint _740;
  uint _748;
  bool _750;
  float _776;
  float _777;
  float _778;
  float _779;
  bool _790;
  float _829;
  float _855;
  float _856;
  bool _867;
  bool _883;
  float _889;
  float _890;
  float _891;
  float _896;
  float _897;
  float _898;
  float _926;
  float _938;
  float _939;
  float _946;
  float _948;
  float _952;
  float _953;
  float _954;
  float _955;
  bool _966;
  float _984;
  float _985;
  float _986;
  float _1014;
  float _1036;
  float _1037;
  bool _1048;
  float _1064;
  float _1065;
  float _1100;
  float _1104;
  float _1108;
  float _1123;
  float4 _1127;
  float _1132;
  float _1137;
  float _1139;
  float _1146;
  bool _1156;
  float _1193;
  float _1199;
  float _1204;
  float _1210;
  float _1218;
  float _1225;
  float2 _1253;
  float _1275;
  float _1293;
  float _1294;
  float _1295;
  float _1314;
  float _1321;
  float _1333;
  float _1336;
  float _1342;
  float _1372;
  float _1374;
  float _1381;
  float _1385;
  float _1387;
  float _1389;
  float _1391;
  float4 _1395;
  float4 _1423;
  int _1433;
  int _1434;
  int _1435;
  int _1448;
  float _1465;
  float _1466;
  float _1467;
  float _1471;
  float _1472;
  float _1473;
  float _1475;
  float _1484;
  float4 _1487;
  float4 _1493;
  float _1509;
  float _1512;
  float _1514;
  float _1515;
  float _1516;
  int _1526;
  float4 _1532;
  float4 _1560;
  int _1570;
  int _1571;
  int _1572;
  int _1585;
  float _1596;
  float _1597;
  float _1598;
  float _1600;
  float _1609;
  float4 _1610;
  float4 _1615;
  float _1631;
  float _1634;
  float _1636;
  float _1637;
  float _1638;
  float4 _1650;
  float4 _1678;
  int _1688;
  int _1689;
  int _1690;
  int _1703;
  float _1710;
  float _1711;
  float _1712;
  float _1714;
  float _1723;
  float4 _1724;
  float4 _1729;
  float _1745;
  float _1748;
  float _1758;
  float _1810;
  float _1811;
  float _1812;
  float _1814;
  float _1815;
  float _1816;
  float _1819;
  float _1820;
  float _1821;
  float _1849;
  float _1850;
  float _1851;
  float _1857;
  float _1887;
  float _1897;
  float _1898;
  float _1899;
  float _1900;
  float _1914;
  float _1927;
  float _1928;
  float _1929;
  float _1931;
  float _1932;
  float _1933;
  float _1934;
  float _1935;
  float _1936;
  float _1938;
  float _1940;
  float _1941;
  float _1954;
  float _1957;
  float _1958;
  float _1960;
  float _1968;
  float _1978;
  float _1979;
  float _1980;
  float _2000;
  float _2002;
  float _2004;
  float _2006;
  float _2015;
  float _2022;
  float _2023;
  float _2024;
  float _2025;
  int _2036;
  int _2045;
  uint2 _2049;
  int _2056;
  float _2066;
  float _2067;
  float _2068;
  float _2070;
  float _2071;
  float _2072;
  float _2073;
  int _2075;
  int _2076;
  int _2078;
  int _2079;
  float _2080;
  float _2081;
  float _2082;
  float _2088;
  float _2089;
  float _2090;
  float _2091;
  float _2092;
  bool _2093;
  float _2113;
  float _2114;
  float _2119;
  float _2123;
  float _2124;
  float _2125;
  float _2127;
  float _2128;
  float _2129;
  float _2130;
  float _2131;
  float _2133;
  float _2135;
  float _2140;
  float _2141;
  float _2143;
  float _2158;
  float _2184;
  float _2185;
  float _2186;
  float _2187;
  float _2192;
  float _2193;
  float _2194;
  float _2195;
  float _2197;
  float _2201;
  float _2202;
  float _2203;
  float _2205;
  float _2206;
  float _2207;
  float _2208;
  float _2218;
  float _2221;
  float _2229;
  bool _2232;
  bool _2233;
  bool _2234;
  bool _2235;
  float _2251;
  float _2260;
  float _2261;
  float _2262;
  float _2264;
  float _2265;
  float _2266;
  float _2267;
  float _2268;
  float _2269;
  float _2273;
  float _2274;
  float _2276;
  float _2288;
  float _2295;
  float4 _2311;
  float _2324;
  float _2325;
  float _2347;
  float _2370;
  float _2387;
  float _2388;
  float4 _2390;
  float4 _2395;
  float _2405;
  float _2406;
  float _2407;
  float _2408;
  float _2412;
  bool _2435;
  int _2440;
  int _2441;
  float _2481;
  float _2482;
  float _2483;
  float _2484;
  float _2497;
  float _2498;
  float _2499;
  float _2500;
  float _2503;
  float4 _2515;
  float _2519;
  float4 _2530;
  uint4 _2534;
  float _2540;
  float _2543;
  float _2547;
  float _2551;
  float _2552;
  float _2553;
  float4 _2573;
  float _2579;
  float _2580;
  float _2581;
  float _2582;
  float _2584;
  float _2592;
  float _2593;
  float _2594;
  float _2595;
  float _2597;
  float _2624;
  float _2628;
  float _2629;
  float _2630;
  int __loop_jump_target = -1;
  _53 = (uint)(SV_Position.x);
  _54 = (uint)(SV_Position.y);
  _56 = __3__36__0__0__g_depthTranslucent.Load(int3(_53, _54, 0));  // [sem: _3__36__0__0__g_depthTranslucent_load]
  _59 = (TEXCOORD.x * 2.0f) + -1.0f;
  _61 = 1.0f - (TEXCOORD.y * 2.0f);
  _62 = max(1e-07f, _56.x);  // [sem: _3__36__0__0__g_depthTranslucent_load_derived]
  _84 = mad((_invViewProjRelative[0].y), _61, ((_invViewProjRelative[0].x) * _59));
  _88 = mad((_invViewProjRelative[1].y), _61, ((_invViewProjRelative[1].x) * _59));
  _92 = mad((_invViewProjRelative[2].y), _61, ((_invViewProjRelative[2].x) * _59));
  _96 = mad((_invViewProjRelative[3].y), _61, ((_invViewProjRelative[3].x) * _59));
  _98 = mad((_invViewProjRelative[3].z), _62, _96) + (_invViewProjRelative[3].w);
  _99 = (mad((_invViewProjRelative[0].z), _62, _84) + (_invViewProjRelative[0].w)) / _98;
  _100 = (mad((_invViewProjRelative[1].z), _62, _88) + (_invViewProjRelative[1].w)) / _98;
  _101 = (mad((_invViewProjRelative[2].z), _62, _92) + (_invViewProjRelative[2].w)) / _98;
  _106 = _viewPos.x + _99;
  _107 = _viewPos.y + _100;
  _108 = _viewPos.z + _101;
  _110 = __3__36__0__0__g_character.Load(int3(_53, _54, 0));  // [sem: _3__36__0__0__g_character_load]
  _116 = __3__36__0__0__g_stencilTranslucent.Load(int3(_53, _54, 0));  // [sem: _3__36__0__0__g_stencilTranslucent_load]
  _118 = _116.x & 127;  // [sem: _3__36__0__0__g_stencilTranslucent_load_derived]
  _120 = __3__36__0__0__g_baseColor.Load(int3(_53, _54, 0));  // [sem: _3__36__0__0__g_baseColor_load]
  _123 = __3__36__0__0__g_normal.Load(int3(_53, _54, 0));  // [sem: _3__36__0__0__g_normal_load]
  _129 = (float)((uint)((uint)(_120.w & 255)));  // [sem: _3__36__0__0__g_baseColor_load_derived]
  _130 = _129 * 0.003921569f;
  _134 = (((int)((uint)((_123.w * 3.0f) + 0.5f))) == 1);  // [sem: _3__36__0__0__g_normal_load_derived]
  _144 = (saturate(_123.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
  _145 = (saturate(_123.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
  _146 = (saturate(_123.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_normal_load_derived]
  _148 = rsqrt(dot(float3(_144, _145, _146), float3(_144, _145, _146)));  // [sem: invLength]
  _149 = _148 * _144;
  _150 = _148 * _145;
  _151 = _146 * _148;
  if ((_116.x & 126) == 24) {
    _213 = rsqrt(dot(float3(_149, _150, _151), float3(_149, _150, _151)));  // [sem: invLength]
    _214 = _213 * _149;
    _215 = _213 * _150;
    _216 = _213 * _151;
    if (!(_118 == 24)) {
      _219 = _214;
      _220 = _215;
      _221 = _216;
      _222 = _130;
      _226 = _219;
      _227 = _220;
      _228 = _221;
      _229 = _222;
      _230 = select((_118 == 25), 0.6f, 0.0f);
    } else {
      _226 = _214;
      _227 = _215;
      _228 = _216;
      _229 = _130;
      _230 = 1.0f;
    }
  } else {
    _164 = (((float)((uint)((uint)(((uint)((uint)(_120.w)) >> 8) & 255)))) * 0.007843138f) + -1.0f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _165 = (_129 * 0.007843138f) + -1.0f;
    _168 = (_164 + _165) * 0.5f;
    _169 = (_164 - _165) * 0.5f;
    _173 = (1.0f - abs(_168)) - abs(_169);
    _175 = rsqrt(dot(float3(_168, _169, _173), float3(_168, _169, _173)));  // [sem: invLength]
    _176 = _175 * _168;
    _177 = _175 * _169;
    _178 = _175 * _173;
    _180 = select((_151 >= 0.0f), 1.0f, -1.0f);
    _183 = -0.0f - (1.0f / (_180 + _151));
    _185 = (_149 * _150) * _183;
    _197 = mad(_178, _149, mad(_177, _185, (((((_149 * _149) * _180) * _183) + 1.0f) * _176)));
    _201 = mad(_178, _150, mad(_177, (((_150 * _150) * _183) + _180), ((_176 * _180) * _185)));
    _205 = mad(_178, _151, mad(_177, (-0.0f - _150), (-0.0f - ((_180 * _149) * _176))));
    _207 = rsqrt(dot(float3(_197, _201, _205), float3(_197, _201, _205)));  // [sem: invLength]
    _219 = (_207 * _197);
    _220 = (_207 * _201);
    _221 = (_207 * _205);
    _222 = (((float)((uint)((uint)(_120.z & 255)))) * 0.003921569f);
    _226 = _219;
    _227 = _220;
    _228 = _221;
    _229 = _222;
    _230 = select((_118 == 25), 0.6f, 0.0f);
  }
  _232 = (_118 == 29);
  _233 = _232 || _134;
  _234 = select(_233, 1.0f, 0.0f);
  if (_232 && _134) {
    _243 = select(((((int)((uint)(_229 * 255.0f))) & 128) != 0), 1.0f, 0.0f);
  } else {
    _243 = 0.0f;
  }
  _252 = sqrt(((_100 * _100) + (_99 * _99)) + (_101 * _101));
  _253 = max(1e-05f, _252);
  _254 = (-0.0f - _99) / _253;
  _255 = (-0.0f - _100) / _253;
  _256 = (-0.0f - _101) / _253;
  _257 = dot(float3(_226, _227, _228), float3(_254, _255, _256));
  _260 = (int)(floor(TEXCOORD.x));
  _261 = (int)(floor(TEXCOORD.y));
  _266 = abs(TEXCOORD.x - ((float)((int)(_260))));
  _267 = abs(TEXCOORD.y - ((float)((int)(_261))));
  _288 = ((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(((int)(_bufferSizeAndInvSize.x * select(((_260 & 1) == 0), _266, (1.0f - _266)))), ((int)(select(((_261 & 1) == 0), _267, (1.0f - _267)) * _bufferSizeAndInvSize.y)), 0)))).x) & 16777215)))) * 5.960465e-08f;
  _289 = max(1e-07f, _288);
  _297 = mad((_invViewProjRelative[3].z), _289, _96) + (_invViewProjRelative[3].w);
  _298 = (mad((_invViewProjRelative[0].z), _289, _84) + (_invViewProjRelative[0].w)) / _297;
  _299 = (mad((_invViewProjRelative[1].z), _289, _88) + (_invViewProjRelative[1].w)) / _297;
  _300 = (mad((_invViewProjRelative[2].z), _289, _92) + (_invViewProjRelative[2].w)) / _297;
  _303 = _nearFarProj.x / _62;
  _304 = _99 - _298;
  _305 = _100 - _299;
  _306 = _101 - _300;
  _312 = sqrt(((_305 * _305) + (_304 * _304)) + (_306 * _306));
  _313 = -0.0f - _254;
  _314 = -0.0f - _255;
  _315 = -0.0f - _256;
  _316 = dot(float3(_313, _314, _315), float3(_226, _227, _228));
  if (_316 < 0.0f) {
    _325 = _226;
    _326 = _227;
    _327 = _228;
    _328 = (-0.0f - _316);
    _329 = 1.0f;
    _330 = 1.33f;
  } else {
    _325 = (-0.0f - _226);
    _326 = (-0.0f - _227);
    _327 = (-0.0f - _228);
    _328 = _316;
    _329 = 1.33f;
    _330 = 1.0f;
  }
  _331 = _329 / _330;
  _336 = 1.0f - ((_331 * _331) * (1.0f - (_328 * _328)));
  if (!(_336 < 0.0f)) {
    _344 = (_331 * _328) - sqrt(_336);
    _352 = ((_344 * _325) + (_331 * _313));
    _353 = ((_344 * _326) + (_331 * _314));
    _354 = ((_344 * _327) + (_331 * _315));
  } else {
    _352 = 0.0f;
    _353 = 0.0f;
    _354 = 0.0f;
  }
  _361 = max(0.001f, sqrt(((_353 * _353) + (_352 * _352)) + (_354 * _354)));
  if (_234 < 0.5f) {
    _369 = ((_312 - _229) * _234) + _229;
    _373 = ((_352 / _361) * _369) + _99;
    _374 = ((_353 / _361) * _369) + _100;
    _375 = ((_354 / _361) * _369) + _101;
    _403 = mad((_viewProjRelative[3].z), _375, mad((_viewProjRelative[3].y), _374, ((_viewProjRelative[3].x) * _373))) + (_viewProjRelative[3].w);
    _445 = ((((mad((_viewProjRelative[0].z), _375, mad((_viewProjRelative[0].y), _374, ((_viewProjRelative[0].x) * _373))) + (_viewProjRelative[0].w)) / _403) * 0.5f) + 0.5f);
    _446 = (0.5f - (((mad((_viewProjRelative[1].z), _375, mad((_viewProjRelative[1].y), _374, ((_viewProjRelative[1].x) * _373))) + (_viewProjRelative[1].w)) / _403) * 0.5f));
  } else {
    _412 = select((_151 >= 0.0f), 1.0f, -1.0f);
    _415 = -0.0f - (1.0f / (_412 + _151));
    _417 = (_149 * _150) * _415;
    _439 = saturate(_312 * 5.0f) * (0.33000004f / (_303 + 1.0f));  // [sem: expr_sat]
    _445 = ((_439 * min(max(dot(float3(_226, _227, _228), float3(((((_149 * _149) * _412) * _415) + 1.0f), (_417 * _412), (-0.0f - (_412 * _149)))), -0.2f), 0.2f)) + TEXCOORD.x);
    _446 = ((_439 * min(max(dot(float3(_226, _227, _228), float3(_417, (((_150 * _150) * _415) + _412), (-0.0f - _150))), -0.2f), 0.2f)) + TEXCOORD.y);
  }
  _451 = abs(_257) + 0.001f;
  _455 = _99 - ((_254 * _229) / _451);
  _456 = _100 - ((_255 * _229) / _451);
  _457 = _101 - ((_256 * _229) / _451);
  _460 = (int)(floor(_445));
  _461 = (int)(floor(_446));
  _466 = abs(_445 - ((float)((int)(_460))));
  _467 = abs(_446 - ((float)((int)(_461))));
  _484 = ((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(((int)(select(((_460 & 1) == 0), _466, (1.0f - _466)) * _bufferSizeAndInvSize.x)), ((int)(select(((_461 & 1) == 0), _467, (1.0f - _467)) * _bufferSizeAndInvSize.y)), 0)))).x) & 16777215)))) * 5.960465e-08f;
  _486 = (_445 * 2.0f) + -1.0f;
  _488 = 1.0f - (_446 * 2.0f);
  _489 = max(1e-07f, _484);
  _505 = mad((_invViewProjRelative[3].z), _489, mad((_invViewProjRelative[3].y), _488, (_486 * (_invViewProjRelative[3].x)))) + (_invViewProjRelative[3].w);
  _506 = (mad((_invViewProjRelative[0].z), _489, mad((_invViewProjRelative[0].y), _488, (_486 * (_invViewProjRelative[0].x)))) + (_invViewProjRelative[0].w)) / _505;
  _507 = (mad((_invViewProjRelative[1].z), _489, mad((_invViewProjRelative[1].y), _488, (_486 * (_invViewProjRelative[1].x)))) + (_invViewProjRelative[1].w)) / _505;
  _508 = (mad((_invViewProjRelative[2].z), _489, mad((_invViewProjRelative[2].y), _488, (_486 * (_invViewProjRelative[2].x)))) + (_invViewProjRelative[2].w)) / _505;
  if (!(!(_484 >= _56.x))) {
    _512 = TEXCOORD.x;
    _513 = TEXCOORD.y;
    _514 = _288;
    _515 = _298;
    _516 = _299;
    _517 = _300;
  } else {
    _512 = _445;
    _513 = _446;
    _514 = _484;
    _515 = _506;
    _516 = _507;
    _517 = _508;
  }
  _528 = __3__36__0__0__g_extinction.Load(int3(_53, _54, 0));  // [sem: _3__36__0__0__g_extinction_load]
  _533 = _528.w * 10.0f;  // [sem: _3__36__0__0__g_extinction_load_derived]
  _546 = _533 / (((max(0.001f, _528.x) + -1.0f) * _230) + 1.0f);
  _547 = _533 / (((max(0.001f, _528.y) + -1.0f) * _230) + 1.0f);
  _548 = _533 / (((max(0.001f, _528.z) + -1.0f) * _230) + 1.0f);
  _549 = _546 * _528.x;
  _550 = _547 * _528.y;
  _551 = _548 * _528.z;
  _564 = ((_547 * 0.33951f) + (_546 * 0.61312f)) + (_548 * 0.04737f);
  _565 = ((_547 * 0.91636f) + (_546 * 0.0702f)) + (_548 * 0.01345f);
  _566 = ((_547 * 0.10958f) + (_546 * 0.02062f)) + (_548 * 0.8698f);
  _613 = mad((_dynamicShadowProjRelativeTexScale[1][2].z), _101, mad((_dynamicShadowProjRelativeTexScale[1][2].y), _100, ((_dynamicShadowProjRelativeTexScale[1][2].x) * _99))) + (_dynamicShadowProjRelativeTexScale[1][2].w);
  _628 = (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524)))) + (uint)((uint)((_bufferSizeAndInvSize.x * ((float)((uint)((uint)(_54))))) + ((float)((uint)((uint)(_53))))));
  _636 = (uint)((uint)((((int)((uint)((uint)((uint)(_628)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_628)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_628)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
  _644 = (uint)((uint)((((int)((uint)((uint)((uint)(_636)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_636)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_636)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_628));
  _652 = (uint)((uint)((((int)((uint)((uint)((uint)(_644)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_644)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_644)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_636));
  _660 = (uint)((uint)((((int)((uint)((uint)((uint)(_652)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_652)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_652)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_644));
  _668 = (uint)((uint)((((int)((uint)((uint)((uint)(_660)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_660)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_660)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_652));
  _676 = (uint)((uint)((((int)((uint)((uint)((uint)(_668)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_668)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_668)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_660));
  _684 = (uint)((uint)((((int)((uint)((uint)((uint)(_676)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_676)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_676)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_668));
  _692 = (uint)((uint)((((int)((uint)((uint)((uint)(_684)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_684)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_684)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_676));
  _700 = (uint)((uint)((((int)((uint)((uint)((uint)(_692)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_692)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_692)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_684));
  _708 = (uint)((uint)((((int)((uint)((uint)((uint)(_700)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_700)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_700)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_692));
  _716 = (uint)((uint)((((int)((uint)((uint)((uint)(_708)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_708)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_708)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_700));
  _724 = (uint)((uint)((((int)((uint)((uint)((uint)(_716)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_716)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_716)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_708));
  _732 = (uint)((uint)((((int)((uint)((uint)((uint)(_724)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_724)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_724)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_716));
  _740 = (uint)((uint)((((int)((uint)((uint)((uint)(_732)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_732)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_732)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_724));
  _748 = (uint)((uint)((((int)((uint)((uint)((uint)(_740)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_740)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_740)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_732));
  _750 = ((_740 & 16777215) == 0);
  if (_750) {
    _761 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_748)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_748)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_748)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_740))));
  } else {
    _761 = _740;
  }
  _776 = (mad((_dynamicShadowProjRelativeTexScale[1][0].z), _101, mad((_dynamicShadowProjRelativeTexScale[1][0].y), _100, ((_dynamicShadowProjRelativeTexScale[1][0].x) * _99))) + (_dynamicShadowProjRelativeTexScale[1][0].w)) + (((_dynmaicShadowSizeAndInvSize.z * 9.834767e-08f) * ((float)((uint)((uint)(((int)((uint)((uint)(_761)) * (uint)(48271))) & 16777215))))) - (_dynmaicShadowSizeAndInvSize.z * 0.82500005f));
  _777 = (mad((_dynamicShadowProjRelativeTexScale[1][1].z), _101, mad((_dynamicShadowProjRelativeTexScale[1][1].y), _100, ((_dynamicShadowProjRelativeTexScale[1][1].x) * _99))) + (_dynamicShadowProjRelativeTexScale[1][1].w)) + (((_dynmaicShadowSizeAndInvSize.w * 9.834767e-08f) * ((float)((uint)((uint)(((int)((uint)((uint)(_761)) * (uint)(-1964877855))) & 16777215))))) - (_dynmaicShadowSizeAndInvSize.w * 0.82500005f));
  _778 = 4.0f / _dynmaicShadowSizeAndInvSize.y;
  _779 = 1.0f - _778;
  if (!(((!(_776 >= _778)) || (!(_776 <= _779))) || (!(_777 <= _779)))) {
    _790 = (_613 >= -1.0f) && ((_613 <= 1.0f) && (_777 >= _778));
    _797 = select(_790, _776, 0.0f);
    _798 = select(_790, _777, 0.0f);
    _799 = select(_790, _613, 0.0f);
    _800 = select(_790, 2e-05f, 0.0f);
    _801 = ((int)(uint)(_790));
  } else {
    _797 = 0.0f;
    _798 = 0.0f;
    _799 = 0.0f;
    _800 = 0.0f;
    _801 = 0;
  }
  _829 = mad((_dynamicShadowProjRelativeTexScale[0][2].z), _101, mad((_dynamicShadowProjRelativeTexScale[0][2].y), _100, ((_dynamicShadowProjRelativeTexScale[0][2].x) * _99))) + (_dynamicShadowProjRelativeTexScale[0][2].w);
  if (_750) {
    _840 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_748)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_748)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_748)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_740))));
  } else {
    _840 = _740;
  }
  _855 = (mad((_dynamicShadowProjRelativeTexScale[0][0].z), _101, mad((_dynamicShadowProjRelativeTexScale[0][0].y), _100, ((_dynamicShadowProjRelativeTexScale[0][0].x) * _99))) + (_dynamicShadowProjRelativeTexScale[0][0].w)) + (((_dynmaicShadowSizeAndInvSize.z * 1.9669534e-07f) * ((float)((uint)((uint)(((int)((uint)((uint)(_840)) * (uint)(48271))) & 16777215))))) - (_dynmaicShadowSizeAndInvSize.z * 1.6500001f));
  _856 = (mad((_dynamicShadowProjRelativeTexScale[0][1].z), _101, mad((_dynamicShadowProjRelativeTexScale[0][1].y), _100, ((_dynamicShadowProjRelativeTexScale[0][1].x) * _99))) + (_dynamicShadowProjRelativeTexScale[0][1].w)) + (((_dynmaicShadowSizeAndInvSize.w * 1.9669534e-07f) * ((float)((uint)((uint)(((int)((uint)((uint)(_840)) * (uint)(-1964877855))) & 16777215))))) - (_dynmaicShadowSizeAndInvSize.w * 1.6500001f));
  if (!(((!(_855 >= _778)) || (!(_855 <= _779))) || (!(_856 <= _779)))) {
    _867 = (_829 >= -1.0f) && ((_829 <= 1.0f) && (_856 >= _778));
    _876 = select(_867, _855, _797);
    _877 = select(_867, _856, _798);
    _878 = select(_867, _829, _799);
    _879 = select(_867, 5e-06f, _800);
    _880 = select(_867, 1, _801);
    _881 = select(_867, 1, _801);
    _882 = select(_867, 0, _801);
  } else {
    _876 = _797;
    _877 = _798;
    _878 = _799;
    _879 = _800;
    _880 = _801;
    _881 = _801;
    _882 = _801;
  }
  _883 = (_881 == 0);
  [branch]
  if (_883) {
    _889 = _99 + _viewPos.x;
    _890 = _100 + _viewPos.y;
    _891 = _101 + _viewPos.z;
    _896 = _889 - (_staticShadowPosition[1].x);
    _897 = _890 - (_staticShadowPosition[1].y);
    _898 = _891 - (_staticShadowPosition[1].z);
    _926 = mad((_shadowProjRelativeTexScale[1][2].z), _898, mad((_shadowProjRelativeTexScale[1][2].y), _897, ((_shadowProjRelativeTexScale[1][2].x) * _896))) + (_shadowProjRelativeTexScale[1][2].w);
    if (_750) {
      _937 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_748)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_748)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_748)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_740))));
    } else {
      _937 = _740;
    }
    _938 = _shadowSizeAndInvSize.z * 2.0f;
    _939 = _shadowSizeAndInvSize.w * 2.0f;
    _946 = _shadowSizeAndInvSize.z * 2.3841858e-07f;
    _948 = _shadowSizeAndInvSize.w * 2.3841858e-07f;
    _952 = (mad((_shadowProjRelativeTexScale[1][0].z), _898, mad((_shadowProjRelativeTexScale[1][0].y), _897, ((_shadowProjRelativeTexScale[1][0].x) * _896))) + (_shadowProjRelativeTexScale[1][0].w)) + ((((float)((uint)((uint)(((int)((uint)((uint)(_937)) * (uint)(48271))) & 16777215)))) * _946) - _938);
    _953 = (mad((_shadowProjRelativeTexScale[1][1].z), _898, mad((_shadowProjRelativeTexScale[1][1].y), _897, ((_shadowProjRelativeTexScale[1][1].x) * _896))) + (_shadowProjRelativeTexScale[1][1].w)) + ((((float)((uint)((uint)(((int)((uint)((uint)(_937)) * (uint)(-1964877855))) & 16777215)))) * _948) - _939);
    _954 = 2.0f / _shadowSizeAndInvSize.y;
    _955 = 1.0f - _954;
    if (!(((!(_952 >= _954)) || (!(_952 <= _955))) || (!(_953 <= _955)))) {
      _966 = (_926 >= 0.0001f) && ((_926 <= 1.0f) && (_953 >= _954));
      _974 = select(_966, _952, _876);
      _975 = select(_966, _953, _877);
      _976 = select(_966, _926, _878);
      _977 = select(_966, 0.0002f, _879);
      _978 = select(_966, 1, _880);
      _979 = select(_966, 1, _882);
    } else {
      _974 = _876;
      _975 = _877;
      _976 = _878;
      _977 = _879;
      _978 = _880;
      _979 = _882;
    }
    _984 = _889 - (_staticShadowPosition[0].x);
    _985 = _890 - (_staticShadowPosition[0].y);
    _986 = _891 - (_staticShadowPosition[0].z);
    _1014 = mad((_shadowProjRelativeTexScale[0][2].z), _986, mad((_shadowProjRelativeTexScale[0][2].y), _985, ((_shadowProjRelativeTexScale[0][2].x) * _984))) + (_shadowProjRelativeTexScale[0][2].w);
    if (_750) {
      _1025 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_748)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_748)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_748)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_740))));
    } else {
      _1025 = _740;
    }
    _1036 = (mad((_shadowProjRelativeTexScale[0][0].z), _986, mad((_shadowProjRelativeTexScale[0][0].y), _985, ((_shadowProjRelativeTexScale[0][0].x) * _984))) + (_shadowProjRelativeTexScale[0][0].w)) + ((((float)((uint)((uint)(((int)((uint)((uint)(_1025)) * (uint)(48271))) & 16777215)))) * _946) - _938);
    _1037 = (mad((_shadowProjRelativeTexScale[0][1].z), _986, mad((_shadowProjRelativeTexScale[0][1].y), _985, ((_shadowProjRelativeTexScale[0][1].x) * _984))) + (_shadowProjRelativeTexScale[0][1].w)) + ((((float)((uint)((uint)(((int)((uint)((uint)(_1025)) * (uint)(-1964877855))) & 16777215)))) * _948) - _939);
    if (!(((!(_1036 >= _954)) || (!(_1036 <= _955))) || (!(_1037 <= _955)))) {
      _1048 = (_1014 >= 0.0001f) && ((_1014 <= 1.0f) && (_1037 >= _954));
      _1056 = select(_1048, _1036, _974);
      _1057 = select(_1048, _1037, _975);
      _1058 = select(_1048, _1014, _976);
      _1059 = select(_1048, 0.0002f, _977);
      _1060 = select(_1048, 1, _978);
      _1061 = select(_1048, 0, _979);
    } else {
      _1056 = _974;
      _1057 = _975;
      _1058 = _976;
      _1059 = _977;
      _1060 = _978;
      _1061 = _979;
    }
  } else {
    _1056 = _876;
    _1057 = _877;
    _1058 = _878;
    _1059 = _879;
    _1060 = _880;
    _1061 = _882;
  }
  [branch]
  if (!(_1060 == 0)) {
    _1064 = _1058 - _1059;
    _1065 = (float)((uint)((uint)(_1061)));
    if (_883) {
      // [sem: expr_sat]
      _1080 = saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1056, _1057, _1065), _1064)).x));
    } else {
      // [sem: expr_sat]
      _1080 = saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1056, _1057, _1065), _1064)).x));
    }
  } else {
    _1080 = 1.0f;  // [sem: expr_sat]
  }
  _1100 = mad((_terrainShadowProjRelativeTexScale[0].z), _101, mad((_terrainShadowProjRelativeTexScale[0].y), _100, ((_terrainShadowProjRelativeTexScale[0].x) * _99))) + (_terrainShadowProjRelativeTexScale[0].w);
  _1104 = mad((_terrainShadowProjRelativeTexScale[1].z), _101, mad((_terrainShadowProjRelativeTexScale[1].y), _100, ((_terrainShadowProjRelativeTexScale[1].x) * _99))) + (_terrainShadowProjRelativeTexScale[1].w);
  _1108 = mad((_terrainShadowProjRelativeTexScale[2].z), _101, mad((_terrainShadowProjRelativeTexScale[2].y), _100, ((_terrainShadowProjRelativeTexScale[2].x) * _99))) + (_terrainShadowProjRelativeTexScale[2].w);
  if (saturate(_1100) == _1100) {
    if ((_1108 >= 0.0001f) && ((_1108 <= 1.0f) && (saturate(_1104) == _1104))) {
      _1123 = frac((_1100 * 1024.0f) + -0.5f);
      _1127 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_1100, _1104));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
      _1132 = _1108 + -0.005f;
      _1137 = select((_1127.w > _1132), 1.0f, 0.0f);
      _1139 = select((_1127.x > _1132), 1.0f, 0.0f);
      _1146 = ((select((_1127.z > _1132), 1.0f, 0.0f) - _1137) * _1123) + _1137;
      // [sem: expr_sat]
      _1152 = saturate((((((select((_1127.y > _1132), 1.0f, 0.0f) - _1139) * _1123) + _1139) - _1146) * frac((_1104 * 1024.0f) + -0.5f)) + _1146);
    } else {
      _1152 = 1.0f;  // [sem: expr_sat]
    }
  } else {
    _1152 = 1.0f;  // [sem: expr_sat]
  }
  _1156 = (_sunDirection.y > 0.0f);
  if ((_1156) || ((!(_1156)) && (_sunDirection.y > _moonDirection.y))) {
    _1168 = _sunDirection.x;
    _1169 = _sunDirection.y;
    _1170 = _sunDirection.z;
  } else {
    _1168 = _moonDirection.x;
    _1169 = _moonDirection.y;
    _1170 = _moonDirection.z;
  }
  if ((_1156) || ((!(_1156)) && (_sunDirection.y > _moonDirection.y))) {
    _1190 = _precomputedAmbient7.y;
  } else {
    _1190 = ((0.5f - (dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)) * 0.5f)) * _precomputedAmbient7.w);
  }
  _1193 = _earthRadius + _107;
  _1199 = sqrt(((_108 * _108) + (_106 * _106)) + (_1193 * _1193));
  _1204 = dot(float3((_106 / _1199), (_1193 / _1199), (_108 / _1199)), float3(_1168, _1169, _1170));
  _1210 = min(max(((_1199 - _earthRadius) / _atmosphereThickness), 16.0f), (_atmosphereThickness + -16.0f));
  _1218 = max(_1210, 0.0f);
  _1225 = (-0.0f - sqrt((_1218 + (_earthRadius * 2.0f)) * _1218)) / (_1218 + _earthRadius);
  if (_1204 > _1225) {
    _1248 = ((exp2(log2(saturate((_1204 - _1225) / (1.0f - _1225))) * 0.2f) * 0.4921875f) + 0.50390625f);
  } else {
    _1248 = ((exp2(log2(saturate((_1225 - _1204) / (_1225 + 1.0f))) * 0.2f) * 0.4921875f) + 0.00390625f);
  }
  // [sem: _3__36__0__0__g_texNetDensity_sampleLod]
  _1253 = __3__36__0__0__g_texNetDensity.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((exp2(log2(saturate((_1210 + -16.0f) / (_atmosphereThickness + -32.0f))) * 0.5f) * 0.96875f) + 0.015625f), _1248), 0.0f);
  _1275 = ((_1253.y * 2e-05f) * _mieAerosolDensity) * (_mieAerosolAbsorption + 1.0f);  // [sem: _3__36__0__0__g_texNetDensity_sampleLod_derived]
  _1293 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 16) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 2.0556001e-06f)) * _1253.x) + _1275) * -1.442695f);
  _1294 = exp2(((((((float)((uint)((uint)(((uint)((uint)(_rayleighScatteringColor)) >> 8) & 255)))) * 1.9607843e-07f) + (_ozoneRatio * 4.9788005e-06f)) * _1253.x) + _1275) * -1.442695f);
  _1295 = exp2(((((_ozoneRatio * 2.1360002e-07f) + (((float)((uint)((uint)(_rayleighScatteringColor & 255)))) * 1.9607843e-07f)) * _1253.x) + _1275) * -1.442695f);
  _1314 = sqrt((_99 * _99) + (_101 * _101));
  _1321 = _cloudAltitude - (max(((_1314 * _1314) + -400000.0f), 0.0f) * 1e-06f);
  _1333 = (_cloudThickness * (0.5f - (((float)((int)((int)((int)(uint)((int)(_1169 > 0.0f))) - (int)((int)(uint)((int)(_1169 < 0.0f)))))) * 0.5f))) + _1321;
  if (_107 < _1321) {
    _1336 = dot(float3(0.0f, 1.0f, 0.0f), float3(_1168, _1169, _1170));
    _1342 = select((abs(_1336) < 1e-08f), 1e+08f, ((_1333 - dot(float3(0.0f, 1.0f, 0.0f), float3(_106, _107, _108))) / _1336));
    _1348 = ((_1342 * _1168) + _106);
    _1349 = _1333;
    _1350 = ((_1342 * _1170) + _108);
  } else {
    _1348 = _106;
    _1349 = _107;
    _1350 = _108;
  }
  _1372 = saturate(abs(_1169) * 4.0f);  // [sem: expr_sat]
  _1374 = (_1372 * _1372) * exp2(((_distanceScale * -1.442695f) * ((__3__36__0__0__g_texCloudVolumeShadow.SampleLevel(__0__4__0__0__g_staticBilinearWrapUWClampV, float3((((_1348 - _viewPos.x) * 5e-05f) + 0.5f), ((_1349 - _cloudAltitude) / _cloudThickness), (((_1350 - _viewPos.z) * 5e-05f) + 0.5f)), 0.0f)).x)) * (_cloudScatteringCoefficient / _distanceScale));
  _1381 = ((1.0f - _1374) * saturate(((_107 - _cloudAltitude) - _cloudThickness) * 0.1f)) + _1374;
  _1385 = _cubemapViewPosRelative.w * (_1190 * min(_1080, _1152));
  _1387 = (_1385 * (((_1294 * 0.33951f) + (_1293 * 0.61312f)) + (_1295 * 0.04737f))) * _1381;
  _1389 = (_1385 * (((_1294 * 0.91636f) + (_1293 * 0.0702f)) + (_1295 * 0.01345f))) * _1381;
  _1391 = (_1385 * (((_1294 * 0.10958f) + (_1293 * 0.02062f)) + (_1295 * 0.8698f))) * _1381;
  _1393 = 0;
  while(true) {
    _1395 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1393) + (int)(20)))];
    _1423 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1393) + (int)(36)))];
    _1433 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _99) * _1395.w) + _1423.x));
    _1434 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _100) * _1395.w) + _1423.y));
    _1435 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _101) * _1395.w) + _1423.z));
    if (!(((((int)_1433 >= (int)((int)(_1395.x + -63.0f))) && ((int)_1433 < (int)((int)(_1395.x + 63.0f)))) && (((int)_1434 >= (int)((int)(_1395.y + -31.0f))) && ((int)_1434 < (int)((int)(_1395.y + 31.0f))))) && (((int)_1435 >= (int)((int)(_1395.z + -63.0f))) && ((int)_1435 < (int)((int)(_1395.z + 63.0f)))))) {
      _1448 = (int)(_1393) + (int)(1);
      if ((uint)_1448 < (uint)8) {
        _1393 = _1448;
        continue;
      } else {
        _1451 = -10000;
      }
    } else {
      _1451 = _1393;
    }
    if ((uint)_1451 < (uint)3) {
      _1465 = (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.x * _99) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.x;
      _1466 = (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.y * _100) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.y;
      _1467 = (__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._invClipmapExtent.z * _101) + __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._clipmapUVRelativeOffset.z;
      _1471 = 1.0f / ((float)((uint)((uint)(1) << (_1451 & 31))));
      _1472 = _1465 * _1471;
      _1473 = _1466 * _1471;
      _1475 = frac(_1467 * _1471);
      _1484 = ((((float)((uint)((uint)((uint)(_1451)) * (uint)(66)))) + 1.0f) + ((select((_1475 < 0.0f), 1.0f, 0.0f) + _1475) * 64.0f)) * 0.003787879f;
      // [sem: _3__36__0__1__g_indirectCacheVoxels_sampleLod]
      _1487 = __3__36__0__1__g_indirectCacheVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3(_1472, _1473, _1484), 0.0f);
      // [sem: _3__36__0__1__g_indirectCacheChromaVoxels_sampleLod]
      _1493 = __3__36__0__1__g_indirectCacheChromaVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3(_1472, _1473, _1484), 0.0f);
      _1509 = (max(0.0f, ((sqrt(((_1487.y * _1487.y) + (_1487.z * _1487.z)) + (_1487.w * _1487.w)) * 1.0233277f) + (_1487.x * 0.88622755f))) * 1.3333309f) - (_1493.y * 0.5f);
      _1512 = _1509 - (_1493.x * 0.5f);
      _1514 = max(0.0f, (_1512 + _1493.x));
      _1515 = max(0.0f, (_1509 + _1493.y));
      _1516 = max(0.0f, _1512);
      [branch]
      if ((_1493.z == 0.0f) && (((_1514 == 0.0f) && (_1515 == 0.0f)) && (_1516 == 0.0f))) {
        _1526 = min((int)(3), (int)(((int)(_1451) + (int)(1))));
        if ((uint)_1526 < (uint)8) {
          _1530 = _1526;
          while(true) {
            _1532 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((uint)((uint)((uint)(_1530)) + (uint)(20)))];
            _1560 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((uint)((uint)((uint)(_1530)) + (uint)(36)))];
            _1570 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _99) * _1532.w) + _1560.x));
            _1571 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _100) * _1532.w) + _1560.y));
            _1572 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _101) * _1532.w) + _1560.z));
            if (!(((((int)_1570 >= (int)((int)(_1532.x + -63.0f))) && ((int)_1570 < (int)((int)(_1532.x + 63.0f)))) && (((int)_1571 >= (int)((int)(_1532.y + -31.0f))) && ((int)_1571 < (int)((int)(_1532.y + 31.0f))))) && (((int)_1572 >= (int)((int)(_1532.z + -63.0f))) && ((int)_1572 < (int)((int)(_1532.z + 63.0f)))))) {
              _1585 = (int)(_1530) + (int)(1);
              if ((uint)_1585 < (uint)8) {
                _1530 = _1585;
                continue;
              } else {
                _1588 = -10000;
              }
            } else {
              _1588 = _1530;
            }
            _1590 = _1588;
            break;
          }
        } else {
          _1590 = -10000;
        }
        if ((uint)_1590 < (uint)4) {
          _1596 = 1.0f / ((float)((uint)((uint)(1) << (_1590 & 31))));
          _1597 = _1596 * _1465;
          _1598 = _1596 * _1466;
          _1600 = frac(_1596 * _1467);
          _1609 = ((((float)((uint)((uint)((uint)(_1590)) * (uint)(66)))) + 1.0f) + ((select((_1600 < 0.0f), 1.0f, 0.0f) + _1600) * 64.0f)) * 0.003787879f;
          // [sem: _3__36__0__1__g_indirectCacheVoxels_sampleLod]
          _1610 = __3__36__0__1__g_indirectCacheVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3(_1597, _1598, _1609), 0.0f);
          // [sem: _3__36__0__1__g_indirectCacheChromaVoxels_sampleLod]
          _1615 = __3__36__0__1__g_indirectCacheChromaVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3(_1597, _1598, _1609), 0.0f);
          _1631 = (max(0.0f, ((sqrt(((_1610.y * _1610.y) + (_1610.z * _1610.z)) + (_1610.w * _1610.w)) * 1.0233277f) + (_1610.x * 0.88622755f))) * 1.3333309f) - (_1615.y * 0.5f);
          _1634 = _1631 - (_1615.x * 0.5f);
          _1636 = max(0.0f, (_1634 + _1615.x));
          _1637 = max(0.0f, (_1631 + _1615.y));
          _1638 = max(0.0f, _1634);
          if ((_1615.z == 0.0f) && (((_1636 == 0.0f) && (_1637 == 0.0f)) && (_1638 == 0.0f))) {
            _1648 = 3;
            while(true) {
              _1650 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1648) + (int)(20)))];
              _1678 = __3__35__0__0__VoxelGlobalIlluminationConstantBuffer_raw[((int)((int)(_1648) + (int)(36)))];
              _1688 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.x + _99) * _1650.w) + _1678.x));
              _1689 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.y + _100) * _1650.w) + _1678.y));
              _1690 = (int)(floor(((__3__35__0__0__VoxelGlobalIlluminationConstantBuffer_view._wrappedViewPos.z + _101) * _1650.w) + _1678.z));
              if (!(((((int)_1688 >= (int)((int)(_1650.x + -63.0f))) && ((int)_1688 < (int)((int)(_1650.x + 63.0f)))) && (((int)_1689 >= (int)((int)(_1650.y + -31.0f))) && ((int)_1689 < (int)((int)(_1650.y + 31.0f))))) && (((int)_1690 >= (int)((int)(_1650.z + -63.0f))) && ((int)_1690 < (int)((int)(_1650.z + 63.0f)))))) {
                _1703 = (int)(_1648) + (int)(1);
                if ((uint)_1703 < (uint)8) {
                  _1648 = _1703;
                  continue;
                } else {
                  _1706 = -10000;
                }
              } else {
                _1706 = _1648;
              }
              _1710 = 1.0f / ((float)((uint)((uint)(1) << (_1706 & 31))));
              _1711 = _1710 * _1465;
              _1712 = _1710 * _1466;
              _1714 = frac(_1710 * _1467);
              _1723 = ((((float)((uint)((uint)((uint)(_1706)) * (uint)(66)))) + 1.0f) + ((select((_1714 < 0.0f), 1.0f, 0.0f) + _1714) * 64.0f)) * 0.003787879f;
              // [sem: _3__36__0__1__g_indirectCacheVoxels_sampleLod]
              _1724 = __3__36__0__1__g_indirectCacheVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3(_1711, _1712, _1723), 0.0f);
              // [sem: _3__36__0__1__g_indirectCacheChromaVoxels_sampleLod]
              _1729 = __3__36__0__1__g_indirectCacheChromaVoxelsTexturesLikeUav.SampleLevel(__0__4__0__0__g_staticVoxelSampler, float3(_1711, _1712, _1723), 0.0f);
              _1745 = (max(0.0f, ((sqrt(((_1724.y * _1724.y) + (_1724.z * _1724.z)) + (_1724.w * _1724.w)) * 1.0233277f) + (_1724.x * 0.88622755f))) * 1.3333309f) - (_1729.y * 0.5f);
              _1748 = _1745 - (_1729.x * 0.5f);
              _1754 = max(0.0f, (_1748 + _1729.x));
              _1755 = max(0.0f, (_1745 + _1729.y));
              _1756 = max(0.0f, _1748);
              _1757 = _1729.z;
              break;
            }
          } else {
            _1754 = _1636;
            _1755 = _1637;
            _1756 = _1638;
            _1757 = _1615.z;
          }
        } else {
          _1754 = _1514;
          _1755 = _1515;
          _1756 = _1516;
          _1757 = _1493.z;
        }
      } else {
        _1754 = _1514;
        _1755 = _1515;
        _1756 = _1516;
        _1757 = _1493.z;
      }
      _1758 = max(0.01f, _1757);
      _1769 = ((_1754 / _1758) * 3.1415927f);
      _1770 = ((_1755 / _1758) * 3.1415927f);
      _1771 = ((_1756 / _1758) * 3.1415927f);
      _1772 = saturate((_303 + -64.0f) * 0.0078125f);  // [sem: expr_sat]
    } else {
      _1769 = 0.0f;
      _1770 = 0.0f;
      _1771 = 0.0f;
      _1772 = 1.0f;  // [sem: expr_sat]
    }
    _1810 = _227 * -1.0233277f;
    _1811 = _228 * 1.0233277f;
    _1812 = _226 * -1.0233277f;
    _1814 = (_226 * 0.8580852f) * _227;
    _1815 = _228 * -0.8580852f;
    _1816 = _1815 * _227;
    _1819 = ((_228 * _228) * 0.74312484f) + -0.24770829f;
    _1820 = _1815 * _226;
    _1821 = ((_226 * _226) - (_227 * _227)) * 0.4290426f;
    _1849 = _99 - (_455 + (_234 * (_515 - _455)));
    _1850 = _100 - (_456 + (_234 * (_516 - _456)));
    _1851 = _101 - (_457 + (_234 * (_517 - _457)));
    _1857 = sqrt(((_1850 * _1850) + (_1849 * _1849)) + (_1851 * _1851));
    if (_252 > 5000.0f) {
      _1875 = (((saturate(max((_252 + -5000.0f), 0.0f) * 0.001f) * 10.0f) * exp2(log2(frac(sin(dot(float2(_59, _61), float2(127.1f, 311.7f))) * 437.545f)) * 0.45454544f)) + _1857);
    } else {
      _1875 = _1857;
    }
    if (_233) {
      _1886 = ((saturate(_1875 * 10.0f) * ((_229 - _1875) + ((_1875 - _229) * ((float)((bool)(_134)))))) + _1875);
    } else {
      _1886 = _1875;
    }
    _1887 = _1886 * 2.0f;
    _1897 = -0.0f - max(1e-05f, ((_1887 * _564) / _1886));
    _1898 = -0.0f - max(1e-05f, ((_1887 * _565) / _1886));
    _1899 = -0.0f - max(1e-05f, ((_1887 * _566) / _1886));
    _1900 = _1886 * 1.442695f;
    _1914 = max(1e-05f, _1886) * -1.442695f;
    _1927 = _1168 + _254;
    _1928 = _1169 + _255;
    _1929 = _1170 + _256;
    _1931 = rsqrt(dot(float3(_1927, _1928, _1929), float3(_1927, _1928, _1929)));  // [sem: invLength]
    _1932 = _1931 * _1927;
    _1933 = _1931 * _1928;
    _1934 = _1931 * _1929;
    _1935 = dot(float3(_226, _227, _228), float3(_1168, _1169, _1170));
    _1936 = dot(float3(_226, _227, _228), float3(_1932, _1933, _1934));
    _1938 = dot(float3(_313, _314, _315), float3(_1168, _1169, _1170));
    _1940 = (_1938 * _1938) + 1.0f;
    _1941 = _1938 * 0.5f;
    _1954 = max(((_1940 / exp2(log2(1.0625f - _1941) * 1.5f)) * 0.054257367f), ((_1940 / exp2(log2(_1941 + 1.0625f) * 1.5f)) * 0.054257367f));
    _1957 = saturate(1.0f - saturate(dot(float3(_254, _255, _256), float3(_1932, _1933, _1934))));  // [sem: expr_sat]
    _1958 = _1957 * _1957;
    _1960 = (_1958 * _1958) * _1957;
    _1968 = (((dot(float3(_254, _255, _256), float3(_1168, _1169, _1170)) * 0.5f) + 0.5f) * _1886) + _1886;
    _1978 = -0.0f - max(1e-05f, ((_1968 * _564) / _1886));
    _1979 = -0.0f - max(1e-05f, ((_1968 * _565) / _1886));
    _1980 = -0.0f - max(1e-05f, ((_1968 * _566) / _1886));
    _2000 = (((_1954 * _1387) * ((exp2(_1900 * _1978) + -1.0f) / _1978)) + (((((max(0.0f, ((dot(float4(_1814, _1816, _1819, _1820), float4(_precomputedAmbient1.x, _precomputedAmbient1.y, _precomputedAmbient1.z, _precomputedAmbient1.w)) + dot(float4(0.88622755f, _1810, _1811, _1812), float4(_precomputedAmbient0.x, _precomputedAmbient0.y, _precomputedAmbient0.z, _precomputedAmbient0.w))) + (_precomputedAmbient6.x * _1821))) - _1769) * _1772) + _1769) * 0.2572201f) * ((exp2(_1900 * _1897) + -1.0f) / _1897))) * (((_550 * 0.33951f) + (_549 * 0.61312f)) + (_551 * 0.04737f));
    _2002 = (((_1954 * _1389) * ((exp2(_1900 * _1979) + -1.0f) / _1979)) + (((((max(0.0f, ((dot(float4(0.88622755f, _1810, _1811, _1812), float4(_precomputedAmbient2.x, _precomputedAmbient2.y, _precomputedAmbient2.z, _precomputedAmbient2.w)) + (_precomputedAmbient6.y * _1821)) + dot(float4(_1814, _1816, _1819, _1820), float4(_precomputedAmbient3.x, _precomputedAmbient3.y, _precomputedAmbient3.z, _precomputedAmbient3.w)))) - _1770) * _1772) + _1770) * 0.2572201f) * ((exp2(_1900 * _1898) + -1.0f) / _1898))) * (((_550 * 0.91636f) + (_549 * 0.0702f)) + (_551 * 0.01345f));
    _2004 = (((_1954 * _1391) * ((exp2(_1900 * _1980) + -1.0f) / _1980)) + (((((max(0.0f, ((dot(float4(0.88622755f, _1810, _1811, _1812), float4(_precomputedAmbient4.x, _precomputedAmbient4.y, _precomputedAmbient4.z, _precomputedAmbient4.w)) + (_precomputedAmbient6.z * _1821)) + dot(float4(_1814, _1816, _1819, _1820), float4(_precomputedAmbient5.x, _precomputedAmbient5.y, _precomputedAmbient5.z, _precomputedAmbient5.w)))) - _1771) * _1772) + _1771) * 0.2572201f) * ((exp2(_1900 * _1899) + -1.0f) / _1899))) * (((_550 * 0.10958f) + (_549 * 0.02062f)) + (_551 * 0.8698f));
    _2006 = (_257 * 0.9996f) + 0.0004f;
    _2015 = 1.0f - ((_1936 * _1936) * 0.9999998f);
    // [sem: expr_sat]
    _2022 = saturate(_1935) * max((((0.5f / ((((_1935 * 0.9996f) + 0.0004f) * _257) + (_1935 * _2006))) * (lerp(_1960, 1.0f, 0.04f))) * (5.0929575e-08f / (_2015 * _2015))), 0.0f);
    _2023 = _2022 * _1387;
    _2024 = _2022 * _1389;
    _2025 = _2022 * _1391;
    if (_232) {
      _2036 = asint(__3__37__0__0__g_structureCounterBuffer.Load(4));
      _2045 = ((int)((uint)(_tiledRadianceCacheParams.x))) & 31;
      // [sem: _3__36__0__0__g_manyLightsHitData_load]
      _2049 = __3__36__0__0__g_manyLightsHitData.Load(int3(((int)((int)(_bufferSizeAndInvSize.x * TEXCOORD.x)) >> _2045), ((int)((int)(_bufferSizeAndInvSize.y * TEXCOORD.y)) >> _2045), 0));
      _2056 = select((((int)(_2049.x) | (int)(_2049.y)) != 0), (((uint)((uint)(_2049.x)) >> 16) & 32767), 32767);
      if ((_2056 != 32767) && ((uint)_2056 < (uint)_2036)) {
        _2066 = __3__37__0__0__g_manyLightsDataBuffer[_2056]._position.x;
        _2067 = __3__37__0__0__g_manyLightsDataBuffer[_2056]._position.y;
        _2068 = __3__37__0__0__g_manyLightsDataBuffer[_2056]._position.z;
        _2070 = __3__37__0__0__g_manyLightsDataBuffer[_2056]._color.x;
        _2071 = __3__37__0__0__g_manyLightsDataBuffer[_2056]._color.y;
        _2072 = __3__37__0__0__g_manyLightsDataBuffer[_2056]._color.z;
        _2073 = __3__37__0__0__g_manyLightsDataBuffer[_2056]._color.w;
        _2075 = __3__37__0__0__g_manyLightsDataBuffer[_2056]._up.x;
        _2076 = __3__37__0__0__g_manyLightsDataBuffer[_2056]._up.y;
        _2078 = __3__37__0__0__g_manyLightsDataBuffer[_2056]._look.x;
        _2079 = __3__37__0__0__g_manyLightsDataBuffer[_2056]._look.y;
        _2080 = _2066 - _99;
        _2081 = _2067 - _100;
        _2082 = _2068 - _101;
        _2088 = sqrt(((_2080 * _2080) + (_2081 * _2081)) + (_2082 * _2082));
        _2089 = 1.0f / _2088;
        _2090 = _2089 * _2080;
        _2091 = _2089 * _2081;
        _2092 = _2089 * _2082;
        _2093 = (_2073 > 99999.0f);
        if (!_2093) {
          _2112 = min(min(512.0f, ((_cavityParams.w * 192.0f) + 128.0f)), ((((min(0.6f, ((_cavityParams.w * 0.2f) + 0.2f)) * 0.25f) / max(1e-06f, (_exposure2.x * 8.0f))) * dot(float3(_2070, _2071, _2072), float3(0.212671f, 0.71516f, 0.072169f))) + 8.0f));
        } else {
          _2112 = _2073;
        }
        _2113 = abs(_2073);
        _2114 = _2088 * _2088;
        _2119 = select((_2113 > 99999.0f), 1.0f, (1.0f / max((_2113 * _2113), _2114)));
        _2123 = _2090 - _254;
        _2124 = _2091 - _255;
        _2125 = _2092 - _256;
        _2127 = rsqrt(dot(float3(_2123, _2124, _2125), float3(_2123, _2124, _2125)));  // [sem: invLength]
        _2128 = _2127 * _2123;
        _2129 = _2127 * _2124;
        _2130 = _2127 * _2125;
        _2131 = dot(float3(_149, _150, _151), float3(_2090, _2091, _2092));
        _2133 = saturate(dot(float3(_149, _150, _151), float3(_313, _314, _315)));  // [sem: expr_sat]
        _2135 = saturate(dot(float3(_149, _150, _151), float3(_2128, _2129, _2130)));  // [sem: expr_sat]
        if (!(_2131 <= 0.0f)) {
          _2140 = saturate(1.0f - dot(float3(_313, _314, _315), float3(_2128, _2129, _2130)));  // [sem: expr_sat]
          _2141 = _2140 * _2140;
          _2143 = (_2141 * _2141) * _2140;
          _2158 = 1.0f - ((_2135 * _2135) * 0.99f);
          _2166 = (max((((0.003183099f / (_2158 * _2158)) * (0.5f / ((((_2133 * 0.99f) + 0.010000001f) * _2131) + (_2133 * ((_2131 * 0.99f) + 0.010000001f))))) * (lerp(_2143, 1.0f, 0.04f))), 0.0f) * saturate(_2131));
        } else {
          _2166 = 0.0f;
        }
        if ((_2093) || ((_2088 < _2112) && (dot(float3(((_2119 * _2070) * _2166), ((_2119 * _2071) * _2166), ((_2119 * _2072) * _2166)), float3(0.212671f, 0.71516f, 0.072169f)) > (_exposure2.x * ((saturate(dot(float3(_viewPos.x, _viewPos.y, _viewPos.z), float3(_99, _100, _101)) * 0.015625f) * 0.09f) + 0.01f))))) {
          _2184 = select(_2093, 1.0f, saturate(select(_2093, 1.0f, (1.0f / max((_2073 * _2073), _2114))))) * ((float)((bool)((((float)((uint)((uint)(_2049.x & 65535)))) * 0.01560998f) >= 1000.0f)));
          _2185 = _2184 * _2070;
          _2186 = _2184 * _2071;
          _2187 = _2184 * _2072;
          _2192 = f16tof32(((uint)(_2075 & 65535)));
          _2193 = f16tof32(((uint)((uint)((uint)(_2075)) >> 16)));
          _2194 = f16tof32(((uint)(_2076 & 65535)));
          _2195 = f16tof32(((uint)((uint)((uint)(_2076)) >> 16)));
          _2197 = rsqrt(dot(float3(_2192, _2193, _2194), float3(_2192, _2193, _2194)));  // [sem: invLength]
          _2201 = f16tof32(((uint)(_2078 & 65535)));
          _2202 = f16tof32(((uint)((uint)((uint)(_2078)) >> 16)));
          _2203 = f16tof32(((uint)(_2079 & 65535)));
          _2205 = rsqrt(dot(float3(_2201, _2202, _2203), float3(_2201, _2202, _2203)));  // [sem: invLength]
          _2206 = _2205 * _2201;
          _2207 = _2205 * _2202;
          _2208 = _2205 * _2203;
          if (!(!(_2195 >= 0.0f))) {
            _2218 = mad(_2092, (_2197 * _2194), mad(_2091, (_2197 * _2193), ((_2192 * _2090) * _2197)));
            _2221 = mad(_2092, _2208, mad(_2091, _2207, (_2206 * _2090)));
            _2229 = atan((-0.0f - _2221) / (-0.0f - _2218));
            _2232 = (_2218 > -0.0f);
            _2233 = (_2218 == -0.0f);
            _2234 = (_2221 <= -0.0f);
            _2235 = (_2221 > -0.0f);
            // [sem: _3__36__0__0__g_lightProfile_sampleLod]
            _2251 = __3__36__0__0__g_lightProfile.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((asin(dot(float3(_2090, _2091, _2092), float3(_2206, _2207, _2208))) * 0.31830987f) + 0.5f), ((abs(f16tof32(((uint)((uint)((uint)(_2079)) >> 16)))) * saturate(abs(select((_2233 && _2234), 0.5f, select((_2233 && _2235), -0.5f, (select((_2232 && _2235), (_2229 + -3.1415927f), select((_2232 && _2234), (_2229 + 3.1415927f), _2229)) * 0.31830987f)))))) + _2195)), 0.0f);
            _2257 = (_2251.x * _2185);
            _2258 = (_2251.x * _2186);
            _2259 = (_2251.x * _2187);
          } else {
            _2257 = _2185;
            _2258 = _2186;
            _2259 = _2187;
          }
          _2260 = _2090 + _254;
          _2261 = _2091 + _255;
          _2262 = _2092 + _256;
          _2264 = rsqrt(dot(float3(_2260, _2261, _2262), float3(_2260, _2261, _2262)));  // [sem: invLength]
          _2265 = _2264 * _2260;
          _2266 = _2264 * _2261;
          _2267 = _2264 * _2262;
          _2268 = dot(float3(_226, _227, _228), float3(_2090, _2091, _2092));
          _2269 = dot(float3(_226, _227, _228), float3(_2265, _2266, _2267));
          _2273 = saturate(1.0f - saturate(dot(float3(_254, _255, _256), float3(_2265, _2266, _2267))));  // [sem: expr_sat]
          _2274 = _2273 * _2273;
          _2276 = (_2274 * _2274) * _2273;
          _2288 = 1.0f - ((_2269 * _2269) * 0.9999998f);
          // [sem: expr_sat]
          _2295 = saturate(_2268) * max((((5.0929575e-08f / (_2288 * _2288)) * (0.5f / ((((_2268 * 0.9996f) + 0.0004f) * _257) + (_2268 * _2006)))) * (lerp(_2276, 1.0f, 0.04f))), 0.0f);
          _2303 = ((_2295 * _2257) + _2023);
          _2304 = ((_2295 * _2258) + _2024);
          _2305 = ((_2295 * _2259) + _2025);
        } else {
          _2303 = _2023;
          _2304 = _2024;
          _2305 = _2025;
        }
      } else {
        _2303 = _2023;
        _2304 = _2024;
        _2305 = _2025;
      }
    } else {
      _2303 = _2023;
      _2304 = _2024;
      _2305 = _2025;
    }
    _2311 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearMirror, float2(_512, _513), 0.0f);  // [sem: _3__36__0__0__g_sceneColor_sampleLod]
    _2324 = max(0.0f, (_volumeSize.z + -48.0f));
    _2325 = max(0.0f, sqrt(((_507 * _507) + (_506 * _506)) + (_508 * _508)));
    if (!(_2325 <= 128.0f)) {
      if (!(_2324 <= 0.0f)) {
        _2346 = ((log2((((_2325 + -128.0f) * 0.0078125f) * (exp2(_2324 * 0.056583475f) + -1.0f)) + 1.0f) * 17.673004f) + 48.0f);
      } else {
        _2346 = 48.0f;
      }
    } else {
      _2346 = (log2((_2325 * 0.04351966f) + 1.0f) * 17.673004f);
    }
    _2347 = max(0.0f, _252);
    if (!(_2347 <= 128.0f)) {
      if (!(_2324 <= 0.0f)) {
        _2368 = ((log2((((_2347 + -128.0f) * 0.0078125f) * (exp2(_2324 * 0.056583475f) + -1.0f)) + 1.0f) * 17.673004f) + 48.0f);
      } else {
        _2368 = 48.0f;
      }
    } else {
      _2368 = (log2((_2347 * 0.04351966f) + 1.0f) * 17.673004f);
    }
    _2370 = _2368 / _volumeSize.z;
    _2387 = min((1.0f - ((((float)((bool)((_bufferSizeAndInvSize.x - (_volumeSize.x * 4.0f)) > 0.0f))) + 0.5f) / _volumeSize.x)), _512);
    _2388 = min((1.0f - ((((float)((bool)((_bufferSizeAndInvSize.y - (_volumeSize.y * 4.0f)) > 0.0f))) + 0.5f) / _volumeSize.y)), _513);
    // [sem: _3__36__0__0__g_texFroxel_sampleLod]
    _2390 = __3__36__0__0__g_texFroxel.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_2387, _2388, (_2346 / _volumeSize.z)), 0.0f);
    // [sem: _3__36__0__0__g_texFroxel_sampleLod]
    _2395 = __3__36__0__0__g_texFroxel.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_2387, _2388, _2370), 0.0f);
    _2405 = max(0.0f, (_2390.x - _2395.x));
    _2406 = max(0.0f, (_2390.y - _2395.y));
    _2407 = max(0.0f, (_2390.z - _2395.z));
    _2408 = (1.0f / max(0.01f, _2395.w)) * _2390.w;
    if (_134) {
      _2412 = saturate((_2370 + -0.75f) * 4.0f);  // [sem: expr_sat]
      _2423 = ((_2412 * (_2000 - _2405)) + _2405);
      _2424 = ((_2412 * (_2002 - _2406)) + _2406);
      _2425 = ((_2412 * (_2004 - _2407)) + _2407);
    } else {
      _2423 = _2000;
      _2424 = _2002;
      _2425 = _2004;
    }
    // RenoDX: >>> [Patch: RefractionNightInscatterAttenuation] [Version: 1.16.00]
    // Description: _2423/_2424/_2425 are the atmospheric in-scattering terms that this refraction
    //              pass adds on top of the refracted scene colour for water, ice and other special
    //              refraction surfaces. When the night sky attenuation feature is enabled, the sky
    //              itself is darkened in a separate pass, but this in-scattering is computed from
    //              the unmodified atmosphere constants and therefore stays at daytime brightness -
    //              refracting surfaces end up glowing brighter than the sky behind them at night.
    //              This block scales the in-scattering by sun elevation: fully unattenuated while
    //              the sun is at or above the horizon, ramping to 15% once the sun is more than
    //              about 14 degrees below it, matching the separate sky darkening.
    if (NIGHT_SKY_ATTENUATION == 1.f) {
      float _nightFactor = saturate(-_sunDirection.y * 4.0f);
      float _nightAtten = lerp(1.0f, 0.15f, _nightFactor);
      _2423 *= _nightAtten;
      _2424 *= _nightAtten;
      _2425 *= _nightAtten;
    }
    // RenoDX: <<< [Patch: RefractionNightInscatterAttenuation]
    _2435 = (_118 == 24);
    _2440 = (int)((_512 * _bufferSizeAndInvSize.x) + 0.5f);
    _2441 = (int)((_513 * _bufferSizeAndInvSize.y) + 0.5f);
    [branch]
    if (_2435) {
      if (!(((((uint)(__3__36__0__0__g_sceneNormal.Load(int3(_2440, _2441, 0)))).x) & 1073741824) == 0)) {
        _2481 = exp2((saturate(_110.w) * 20.0f) + -8.0f) + -0.00390625f;  // [sem: _3__36__0__0__g_character_load_derived]
        _2482 = _2481 * select((_110.x < 0.04045f), (_110.x * 0.07739938f), exp2(log2((_110.x + 0.055f) * 0.94786733f) * 2.4f));
        _2483 = _2481 * select((_110.y < 0.04045f), (_110.y * 0.07739938f), exp2(log2((_110.y + 0.055f) * 0.94786733f) * 2.4f));
        _2484 = _2481 * select((_110.z < 0.04045f), (_110.z * 0.07739938f), exp2(log2((_110.z + 0.055f) * 0.94786733f) * 2.4f));
        _2497 = ((_2482 * 0.61312f) + (_2483 * 0.33951f)) + (_2484 * 0.04737f);
        _2498 = ((_2482 * 0.0702f) + (_2483 * 0.91636f)) + (_2484 * 0.01345f);
        _2499 = ((_2482 * 0.02062f) + (_2483 * 0.10958f)) + (_2484 * 0.8698f);
        _2500 = dot(float3(_2497, _2498, _2499), float3(0.212671f, 0.71516f, 0.072169f));
        _2503 = max(_2500, 1.0f) / max(_2500, 0.1f);
        _2508 = (_2497 * _2503);
        _2509 = (_2498 * _2503);
        _2510 = (_2499 * _2503);
        _2511 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
        _2512 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
        _2513 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
      } else {
        _2508 = 0.0f;
        _2509 = 0.0f;
        _2510 = 0.0f;
        _2511 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
        _2512 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
        _2513 = 0.0f;  // [sem: _3__36__0__0__g_character_load_derived]
      }
    } else {
      _2508 = 0.0f;
      _2509 = 0.0f;
      _2510 = 0.0f;
      _2511 = (_110.x * 4.0f);  // [sem: _3__36__0__0__g_character_load_derived]
      _2512 = (_110.y * 4.0f);  // [sem: _3__36__0__0__g_character_load_derived]
      _2513 = (_110.z * 4.0f);  // [sem: _3__36__0__0__g_character_load_derived]
    }
    // [sem: _3__36__0__0__g_texFroxelLight_sampleLod]
    _2515 = __3__36__0__0__g_texFroxelLight.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_2387, _2388, _2370), 0.0f);
    _2519 = 1.0f - _243;
    // [sem: _3__36__0__0__g_sceneSpecular_sampleLod]
    _2530 = __3__36__0__0__g_sceneSpecular.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y), 0.0f);
    _2534 = __3__36__0__0__g_baseColor.Load(int3(_2440, _2441, 0));  // [sem: _3__36__0__0__g_baseColor_load]
    _2540 = ((float)((uint)((uint)(((uint)((uint)(_2534.x)) >> 8) & 255)))) * 0.003921569f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _2543 = ((float)((uint)((uint)(_2534.x & 255)))) * 0.003921569f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _2547 = ((float)((uint)((uint)(((uint)((uint)(_2534.y)) >> 8) & 255)))) * 0.003921569f;  // [sem: _3__36__0__0__g_baseColor_load_derived]
    _2551 = saturate(_2540 * _2540);  // [sem: expr_sat]
    _2552 = saturate(_2543 * _2543);  // [sem: expr_sat]
    _2553 = saturate(_2547 * _2547);  // [sem: expr_sat]
    // [sem: _3__36__0__0__g_dlssRRNormalRoughnessOpaque_sampleLod]
    _2573 = __3__36__0__0__g_dlssRRNormalRoughnessOpaque.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_512, _513), 0.0f);
    _2579 = rsqrt(dot(float3(_2573.x, _2573.y, _2573.z), float3(_2573.x, _2573.y, _2573.z)));  // [sem: invLength]
    _2580 = _2579 * _2573.x;
    _2581 = _2579 * _2573.y;
    _2582 = _2579 * _2573.z;
    _2584 = rsqrt(dot(float3(_506, _507, _508), float3(_506, _507, _508)));  // [sem: invLength]
    _2592 = _2573.w * _2573.w;
    _2593 = abs(dot(float3(_2580, _2581, _2582), float3((-0.0f - (_506 * _2584)), (-0.0f - (_507 * _2584)), (-0.0f - (_508 * _2584)))));
    _2594 = _2593 * _2593;
    _2595 = _2594 * _2593;
    _2597 = (_2592 * _2592) * _2592;
    _2624 = mad(0.04f, max(0.0f, ((1.0f / dot(float3(mad(-1.36772f, _2595, mad(3.59685f, _2594, 1.0f)), mad(9.22949f, _2595, mad(-16.3174f, _2594, 9.04401f)), mad(-20.2123f, _2595, mad(19.7886f, _2594, 5.56589f))), float3(1.0f, _2592, _2597))) * dot(float2(mad(3.32707f, _2593, 0.0365463f), mad(-9.04756f, _2593, 9.0632f)), float2(1.0f, _2592)))), max(0.0f, ((1.0f / dot(float3(mad(59.4188f, _2595, mad(2.92338f, _2593, 1.0f)), mad(222.592f, _2595, mad(-27.0302f, _2593, 20.3225f)), mad(316.627f, _2595, mad(626.13f, _2593, 121.563f))), float3(1.0f, _2592, _2597))) * dot(float2(mad(-1.28514f, _2593, 0.99044f), mad(-0.755907f, _2593, 1.29678f)), float2(1.0f, _2592)))));
    __3__38__0__1__g_dlssRRDiffuseAlbedoUAV[int2(_53, _54)] = float4(saturate(((_2552 * 0.33951f) + (_2551 * 0.61312f)) + (_2553 * 0.04737f)), saturate(((_2552 * 0.91636f) + (_2551 * 0.0702f)) + (_2553 * 0.01345f)), saturate(((_2552 * 0.10958f) + (_2551 * 0.02062f)) + (_2553 * 0.8698f)), 1.0f);
    __3__38__0__1__g_dlssRRSpecularAlbedoUAV[int2(_53, _54)] = float4(_2624, _2624, _2624, 1.0f);
    __3__38__0__1__g_dlssRRNormalRoughnessUAV[int2(_53, _54)] = float4(_2580, _2581, _2582, _2573.w);
    _2628 = _2408 * exp2(_1914 * _564);
    _2629 = _2408 * exp2(_1914 * _565);
    _2630 = _2408 * exp2(_1914 * _566);
    [branch]
    if (_2435) {
      __3__38__0__1__g_depthOpaqueTintColorRefractedUAV[int2(_53, _54)] = int2(((int)min((uint)(16777215), (uint)(((int)((uint)((_514 * 1.6777215e+07f) + 0.499999f)))))), ((int)((int)((int)((int)((uint)((uint)(saturate(sqrt(saturate(_2628))) * 255.0f)) << 16)) | (int)(((int)((uint)((uint)(saturate(sqrt(saturate(_2629))) * 255.0f)) << 8)) & 65280)) | (int)(((int)((uint)(saturate(sqrt(saturate(_2630))) * 255.0f))) & 255)) | (int)(-16777216)));
    }
    // RenoDX: >>> [Patch: DirectLightMatrixFix] [Version: 1.16.00]
    // Description: The direct beam's transmittance is converted to working space earlier in this shader, and the lit refraction result carrying it is converted a second time here; because the matrix rows sum to one that second pass only desaturates. On uses the single conversion, so low-sun light keeps the colour of the sky it arrives through, while every other term of the output is unchanged. Off is the exact vanilla double conversion. The gate is on the whole assignment because the in-scattering terms and the froxel term are summed in a single interleaved expression, so the second matrix application is not a separable sub-expression.
    SV_Target.x = (DIRECT_LIGHT_MATRIX_FIX != 0.f) ? (((((_2423 + (min(60000.0f, _2303) * _2519)) + select(_233, (_2511 * _2515.x), 0.0f)) + _2530.x) + (_2628 * (_2508 + _2311.x)))) : ((((((((_2423 * 0.61312f) + (min(60000.0f, _2303) * _2519)) + (_2424 * 0.33951f)) + (_2425 * 0.04737f)) + select(_233, (_2511 * _2515.x), 0.0f)) + _2530.x) + (_2628 * (_2508 + _2311.x))));
    SV_Target.y = (DIRECT_LIGHT_MATRIX_FIX != 0.f) ? (((((_2424 + (min(60000.0f, _2304) * _2519)) + select(_233, (_2512 * _2515.y), 0.0f)) + _2530.y) + (_2629 * (_2509 + _2311.y)))) : ((((((((_2423 * 0.0702f) + (min(60000.0f, _2304) * _2519)) + (_2424 * 0.91636f)) + (_2425 * 0.01345f)) + select(_233, (_2512 * _2515.y), 0.0f)) + _2530.y) + (_2629 * (_2509 + _2311.y))));
    SV_Target.z = (DIRECT_LIGHT_MATRIX_FIX != 0.f) ? (((((_2425 + (min(60000.0f, _2305) * _2519)) + select(_233, (_2513 * _2515.z), 0.0f)) + _2530.z) + (_2630 * (_2510 + _2311.z)))) : ((((((((_2423 * 0.02062f) + (min(60000.0f, _2305) * _2519)) + (_2424 * 0.10958f)) + (_2425 * 0.8698f)) + select(_233, (_2513 * _2515.z), 0.0f)) + _2530.z) + (_2630 * (_2510 + _2311.z))));
    // RenoDX: <<< [Patch: DirectLightMatrixFix]
    SV_Target.w = 1.0f;
    // RenoDX: >>> [Patch: RefractionSurfaceShadowGate] [Version: 1.16.00]
    // Description: Restores visible sun/cloud shadowing on the surface of refracting materials such
    //              as water and ice. Vanilla only accounts for that shadowing inside the
    //              in-scattering integral, so a shadowed water surface still reads at full daylight
    //              brightness against shadowed terrain around it. The weight gates the effect to
    //              pixels that actually take the special refraction path (the refraction material
    //              weight, and the flag marking the special refraction/underwater path) and that
    //              have enough optical thickness, ramped in above 0.04, so thin stencil-only
    //              interior glass keeps the original blending. Where the gate passes, everything
    //              except the light transmitted straight through the surface is multiplied by the
    //              combined cascade and terrain shadow term, floored at 0.3 so shadowed water never
    //              goes fully black, and blended in by the gate weight. The transmitted component is
    //              subtracted out first and added back afterwards so light coming from behind the
    //              surface is not double-shadowed. Only active when the material improvements
    //              feature is enabled.
    float _rndx_refraction_shadow_weight = saturate(_230 * float((bool)_233) * saturate((_1886 - 0.04f) * 16.0f));
    if (MATERIAL_IMPROVEMENTS == 1.f && _rndx_refraction_shadow_weight > 0.0f) {
      float _rndx_surface_shadow = min(_1080, _1152);
      float _rndx_soft_shadow = lerp(1.0f, max(0.3f, _rndx_surface_shadow), _rndx_refraction_shadow_weight);
      float3 _rndx_scene_through = float3(
        _2628 * (_2508 + _2311.x),
        _2629 * (_2509 + _2311.y),
        _2630 * (_2510 + _2311.z)
      );
      SV_Target.xyz = (SV_Target.xyz - _rndx_scene_through) * _rndx_soft_shadow + _rndx_scene_through;
    }
    // RenoDX: <<< [Patch: RefractionSurfaceShadowGate]
    break;
  }
  return SV_Target;
}
