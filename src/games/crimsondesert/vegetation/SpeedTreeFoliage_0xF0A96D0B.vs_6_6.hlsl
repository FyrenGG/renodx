struct MaterialOverrideParametersTreeStruct {
  uint _baseColorTexture;
  uint _normalTexture;
  uint _materialTexture;
  uint _heightTexture;
  uint _materialInfo;
};

struct BindlessParameters_MaterialOverrideParametersTree {
  MaterialOverrideParametersTreeStruct BindlessParameters_MaterialOverrideParametersTree;
};

struct IndirectDrawParameters {
  uint16_t _vertexBufferViewIndex;
  uint16_t _staticMeshDataViewIndex;
  uint16_t _staticMeshDataIndex;
  uint16_t _lodData;
  uint _baseVertexLocation;
  uint _bindlessMaterialParametersViewIndex;
  uint _windParams;
};

struct InstanceData {
  float4 intancingInfo;
  float4 intancingInfo1;
  float4 intancingInfo2;
  float4 intancingInfo3;
};

struct PrimitiveBufferView {
  int4 _vertexBufferView;
  int4 _indexBufferView;
};

struct SceneTrailTransforms {
  column_major float4x4 _trailViewProj;
  column_major float4x4 _trailInvViewProjTexScale;
  column_major float4x4 _trailViewProjTexScale;
  float4 _trailUpdatedPosition;
};

struct SpeedTreeData {
  float4 _windVector;
  float4 _windGlobal;
  float4 _windGlobalData0;
  float4 _windBranchAndTwitch;
  float4 _windBranchData0;
  float4 _windLeaf1Data0;
  float4 _windLeaf1Data1;
  float4 _windLeaf1Data2;
  float4 _windLeaf1Data3;
  float4 _windLeaf1Data4;
  float4 _windLeaf2Data0;
  float4 _windLeaf2Data1;
  float4 _windLeaf2Data2;
  float4 _windLeaf2Data3;
  float4 _windLeaf2Data4;
};

struct SpeedTreeDataForBuffer {
  SpeedTreeData _curr;
  SpeedTreeData _prev;
};

struct pa_uint16_array_10_ {
  uint16_t _16[10];
};

struct StaticMeshData {
  PrimitiveBufferView _primitiveBufferView[11];
  uint _vertexBufferViewIndices[11];
  uint _indexBufferPoolEntryIndices[11];
  uint _indexBufferViewStartOffsets[11];
  float3 _aabbMin;
  float3 _aabbMax;
  uint _meshNodeDataStartIndex;
  uint _numPrimitives;
  uint _indexCount;
  uint _vertexCount;
  uint _windParams;
  int _minLodIndex;
  int _maxLodIndex;
  uint _maxNumLodMeshNodes;
  pa_uint16_array_10_ _meshNodeDataOffsetsForLods;
  pa_uint16_array_10_ _numMeshNodesForLods;
  pa_uint16_array_10_ _primitiveEndIndicesForLods;
  float _maxDeviationsForLods[10];
  uint _meshDataId;
  uint _impostorPrimitiveId;
  uint _isImpostorForLods;
  uint _flag;
  uint4 _treeShapeVariationParams;
};

struct TerrainHeightFieldRegionInfo {
  uint _regionIndex;
  uint _subLayerTextureSRVIndex;
  float _subLayerTileScale;
  uint _applyTerrainRulesOnObjects;
  uint4 _detailTextureIndex;
  uint4 _detailTextureDiffuseSRVIndex;
  uint4 _detailTextureNormalSRVIndex;
  uint4 _detailTextureMaterialSRVIndex;
  uint4 _detailTextureHeightSRVIndex;
  uint4 _physicsMaterialID;
  uint4 _physicsRepresentColor;
  uint4 _largeScalePlacementId;
  uint4 _smallScalePlacementId;
  float4 _detailHeightCut;
  float4 _detailHeightScale;
  float4 _detailColorLayerHeight;
  float4 _detailColorLayerHeightMin;
  float4 _useExtraRegionTintLayer;
  uint4 _detailTintColor;
  float4 _submaskLayerTextureDisplace;
  float4 _maskLayerTextureDisplace;
  float _deformedAmount;
  float _maskLerpRatio;
  float _baseColorDisplace;
};

struct TerrainLayerTexture {
  uint _heightTerrainTextureLayerSRVIndex;
  uint _normalTerrainTextureLayerSRVIndex;
  uint _regionTerrainTextureLayerSRVIndex;
  uint _maskTerrainTextureLayerSRVIndex;
  float _heightTerrainTextureLayerRange;
  float _heightTerrainTextureLayerOffset;
  uint _extraRegionTerrainTextureLayerSRVIndex;
  uint _padding;
};

struct TreeSurfacePositionData {
  float4 _worldPos;
  float4 _worldPosPrev;
};

struct VertexDataTree {
  uint16_t4 _position;
  uint _normal;
  half4 _diffuseTex;
  half4 _windNonBranch;
  half2 _windBranch;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

StructuredBuffer<TerrainHeightFieldRegionInfo> __3__37__0__0___terrainHeightFieldRegionInfo : register(t7, space37);

StructuredBuffer<StaticMeshData> __0__15__0__0__g_staticMeshDataBindless[] : register(t0, space15);

StructuredBuffer<IndirectDrawParameters> __3__37__0__0__g_indirectDrawParametersBuffer : register(t23, space37);

Texture2D<float4> __3__36__0__0__g_textureTrailInteraction : register(t47, space36);

Texture2D<float4> __3__36__0__0__g_textureTrailInteractionPrev : register(t48, space36);

Texture2D<float2> __3__36__0__0__g_textureTrailHeight : register(t46, space36);

Texture3D<float4> __3__36__0__0__g_windFluidInteractionVelocityHistory : register(t134, space36);

Texture3D<float4> __3__36__0__0__g_windFluidInteractionVelocityHistoryPrev : register(t135, space36);

Texture2D<float> __3__36__0__0__g_topDownClippingSpace : register(t75, space36);

StructuredBuffer<SpeedTreeDataForBuffer> __3__37__0__0__g_treeWindDataBuffer : register(t27, space37);

StructuredBuffer<VertexDataTree> __0__103__0__0__g_bindlessVertexBuffersTree[] : register(t0, space103);

StructuredBuffer<InstanceData> __0__9__0__0__g_instanceDataBuffer[] : register(t0, space9);

RWByteAddressBuffer __3__39__0__1__g_treeSurfacePositionsCounterBufferUAV : register(u3, space39);

RWStructuredBuffer<TreeSurfacePositionData> __3__39__0__1__g_treeSurfacePositionsBufferUAV : register(u14, space39);

cbuffer __3__1__0__0__IndirectCommandConstants : register(b2, space1) {
  uint _drawIndex : packoffset(c000.x);
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

cbuffer __3__35__0__0__TerrainLayerTextureConstBuffer : register(b5, space35) {
  TerrainLayerTexture _terrainLayerTextures[40][40] : packoffset(c000.x);

  // Raw views preserve dynamic cbufferLoadLegacy.f32/i32 access.
  float4 __3__35__0__0__TerrainLayerTextureConstBuffer_raw[3200] : packoffset(c0);
  uint4 __3__35__0__0__TerrainLayerTextureConstBuffer_raw_uint[3200] : packoffset(c0);
};

cbuffer __3__35__0__0__TerrainCommonConstantBuffer : register(b7, space35) {
  float _regionLayerResolution : packoffset(c000.x);
  float _heightLayerResolution : packoffset(c000.y);
  int _globalWorldRadius : packoffset(c000.z);
  int _globalTextureOnePixelMeter : packoffset(c000.w);
  int _globalRegionMapOnePixelMeter : packoffset(c001.x);
  uint _globalColorMapSRVIndex : packoffset(c001.y);
  uint _globalExtraRegionTintColorMapSRVIndex : packoffset(c001.z);
  uint _globalRegionMapSRVIndex : packoffset(c001.w);
  uint _globalExtraRegionMapSRVIndex : packoffset(c002.x);
  uint _globalSmallScaleGroupMapSRVIndex : packoffset(c002.y);
  float _terrainTopLayerContrast : packoffset(c002.z);
  uint _useSSDM : packoffset(c002.w);
};

typedef BindlessParameters_MaterialOverrideParametersTree BindlessParameters_MaterialOverrideParametersTree_t;
ConstantBuffer<BindlessParameters_MaterialOverrideParametersTree_t> BindlessParameters_MaterialOverrideParametersTree[] : register(b0, space101);

cbuffer __3__35__0__0__SceneTrailHeightConstantBuffer : register(b2, space35) {
  SceneTrailTransforms _currSceneTrailHeight : packoffset(c000.x);
  SceneTrailTransforms _prevSceneTrailHeight : packoffset(c013.x);
  float4 _trailHeightTextureSizeAndInvSize : packoffset(c026.x);
};

cbuffer __3__35__0__0__SceneTrailInteractionConstantBuffer : register(b9, space35) {
  SceneTrailTransforms _currSceneTrailInteraction : packoffset(c000.x);
  SceneTrailTransforms _prevSceneTrailInteraction : packoffset(c013.x);
  float4 _trailInteractionTextureSizeAndInvSize : packoffset(c026.x);
};

cbuffer __3__35__0__0__ClippingSpaceCaptureConstantBuffer : register(b33, space35) {
  column_major float4x4 _clippingSpaceMatrixRelative : packoffset(c000.x);
  column_major float4x4 _clippingSpaceMatrixRelativePrev : packoffset(c004.x);
  column_major float4x4 _clippingSpaceMatrixRelativeTexScale : packoffset(c008.x);
  column_major float4x4 _clippingSpaceMatrixRelativeTexScalePrev : packoffset(c012.x);
  column_major float4x4 _clippingSpaceMatrixRelativeInvTexScale : packoffset(c016.x);
  column_major float4x4 _clippingSpaceMatrixRelativeInvTexScalePrev : packoffset(c020.x);
  float4 _clippingSpaceMatrixRelativePosition : packoffset(c024.x);
  float4 _clippingSpaceMatrixRelativePositionPrev : packoffset(c025.x);
};

SamplerState __0__95__0__0__g_samplerAnisotropicWrap : register(s8, space95);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

struct OutputSignature {
  precise noperspective float4 SV_Position : SV_Position;
  linear float4 TEXCOORD : TEXCOORD;
  linear float4 TEXCOORD_1 : TEXCOORD1;
  linear half4 NORMAL : NORMAL;
  nointerpolation uint2 TEXCOORD_2 : TEXCOORD2;
  linear float SV_ClipDistance : SV_ClipDistance;
  nointerpolation uint SV_ShadingRate : SV_ShadingRate;
};

OutputSignature main(
  uint BLENDINDICES : BLENDINDICES,
  uint SV_VertexID : SV_VertexID
) {
  float4 SV_Position;
  float4 TEXCOORD;
  float4 TEXCOORD_1;
  half4 NORMAL;
  uint2 TEXCOORD_2;
  float SV_ClipDistance;
  uint SV_ShadingRate;
  int _33;
  int16_t _36;
  int16_t _38;
  int16_t _40;
  int _42;
  int _43;
  float _51;
  float _52;
  float _53;
  float _55;
  float _56;
  float _57;
  int _59;
  int _61;
  int _62;
  int _63;
  int _64;
  uint _65;
  int16_t _73;
  int16_t _74;
  int16_t _75;
  int16_t _76;
  int _78;
  half _80;
  half _81;
  half _82;
  half _83;
  half _85;
  half _86;
  half _87;
  half _88;
  half _90;
  half _91;
  float _96;
  float _101;
  float _106;
  float _107;
  float _108;
  float _109;
  float _110;
  float _111;
  float _112;
  float _113;
  float _114;
  int _117;
  int _120;
  bool _122;
  int _123;
  int _124;
  int _129;
  float _136;
  float _137;
  float _138;
  float _139;
  float _141;
  float _142;
  float _143;
  float _144;
  float _146;
  float _148;
  float _149;
  float _150;
  float _151;
  int _152;
  int _157;
  float _164;
  float _165;
  float _166;
  float _167;
  float _169;
  float _170;
  float _171;
  float _173;
  float _175;
  float _176;
  float _177;
  float _178;
  bool _180;
  int _187;
  int _188;
  float _275;
  float _276;
  float _277;
  float _358;
  float _544;
  float _545;
  float _546;
  float _547;
  float _616;
  float _617;
  float _618;
  float _619;
  float _657;
  float _658;
  float _659;
  float _660;
  float _661;
  float _662;
  float _663;
  float _664;
  float _805;
  float _806;
  float _807;
  float _1197;
  float _1198;
  float _1199;
  float _1200;
  float _1201;
  float _1202;
  float _1595;
  float _1596;
  float _1597;
  float _1629;
  float _1630;
  float _1631;
  float _1632;
  float _1633;
  float _1634;
  float _1635;
  float _1636;
  float _1637;
  int _1648;
  int _1649;
  int _1650;
  int _1784;
  int _1785;
  float _1880;
  bool _1937;
  int _2011;
  int _2044;
  int _2047;
  float _2167;
  float _2168;
  float _2169;
  int _2208;
  int _2241;
  int _2244;
  float _2364;
  float _2365;
  float _2366;
  float _2380;
  float _2381;
  float _2382;
  float _2383;
  float _2384;
  float _2385;
  int _2649;
  int _2683;
  float _2854;
  float _2855;
  float _2856;
  int _3069;
  int _3103;
  float _3271;
  float _3272;
  float _3273;
  float _3287;
  float _3288;
  float _3289;
  float _3290;
  float _3291;
  float _3292;
  float _3437;
  float _3438;
  float _3439;
  float _3440;
  float _3441;
  float _3442;
  float _3488;
  float _3489;
  float _3571;
  float _3620;
  float _3621;
  float _3622;
  float _3623;
  int _182;
  float _191;
  float _201;
  float _210;
  float _213;
  float _216;
  float _220;
  float _225;
  float _230;
  float _233;
  float _236;
  float _239;
  float _241;
  float _243;
  float _245;
  float _247;
  float _249;
  float _251;
  float _253;
  float _280;
  float _282;
  float _284;
  float _296;
  float _304;
  uint2 _306;
  float _324;
  float _354;
  float _364;
  float _370;
  int _371;
  bool _378;
  int _380;
  float _389;
  float _390;
  float _391;
  float _392;
  float _394;
  float _395;
  float _396;
  float _398;
  float _399;
  float _400;
  float _401;
  float _403;
  float _404;
  float _405;
  float _407;
  float _408;
  float _410;
  float _411;
  float _412;
  float _414;
  float _415;
  float _416;
  float _417;
  float _419;
  float _420;
  float _421;
  float _422;
  float _424;
  float _425;
  float _427;
  float _428;
  float _429;
  float _431;
  float _432;
  float _433;
  float _434;
  float _436;
  float _437;
  float _438;
  float _440;
  float _441;
  float _442;
  float _443;
  float _445;
  float _446;
  float _447;
  float _449;
  float _450;
  float _452;
  float _453;
  float _454;
  float _456;
  float _457;
  float _458;
  float _459;
  float _461;
  float _462;
  float _463;
  float _464;
  float _466;
  float _467;
  float _469;
  float _470;
  float _471;
  float _472;
  float _473;
  float _484;
  float _489;
  float _494;
  float _496;
  float _501;
  float _506;
  float _511;
  float4 _526;
  float _531;
  float _537;
  float _562;
  float _569;
  float _583;
  float4 _598;
  float _603;
  float _609;
  float _620;
  float _623;
  float _626;
  float _629;
  float _631;
  float _632;
  float _635;
  float _638;
  float _641;
  float _643;
  float _673;
  float _676;
  float _679;
  float _682;
  float _684;
  float _685;
  float _686;
  float _687;
  float _688;
  float _689;
  float _694;
  float _700;
  float _706;
  float _708;
  float _711;
  float _738;
  float _739;
  float _740;
  float _741;
  float _742;
  float _744;
  float _745;
  float _746;
  float _747;
  float _749;
  float _750;
  float _751;
  float _752;
  float _753;
  float _758;
  float _761;
  float _764;
  float _767;
  float _770;
  float _771;
  float _772;
  float _773;
  float _774;
  float _775;
  float _776;
  float _777;
  float _778;
  float _779;
  float _780;
  float _781;
  float _811;
  float _814;
  float _818;
  float _819;
  float _820;
  float _821;
  float _826;
  float _831;
  float _837;
  float _849;
  bool _850;
  float _851;
  float _853;
  float _856;
  float _860;
  float _861;
  float _881;
  float _882;
  float _883;
  bool _885;
  float _893;
  float _900;
  float _904;
  float _907;
  float _911;
  float _926;
  float _930;
  float _933;
  float _937;
  float _939;
  float _940;
  float _941;
  float _942;
  float _943;
  float _948;
  float _955;
  float _961;
  float _967;
  float _968;
  float _969;
  float _970;
  float _971;
  float _978;
  float _979;
  float _980;
  float _981;
  float _982;
  float _983;
  float _986;
  float _989;
  float _992;
  float _996;
  float _998;
  float _1005;
  float _1011;
  float _1017;
  float _1060;
  float _1061;
  float _1065;
  float _1066;
  float _1067;
  float _1068;
  float _1075;
  float _1082;
  float _1089;
  float _1092;
  float _1093;
  float _1094;
  float _1095;
  float _1100;
  float _1105;
  float _1110;
  float _1112;
  float _1117;
  float _1122;
  float _1127;
  float _1129;
  float _1136;
  float _1143;
  float _1150;
  float _1159;
  float _1205;
  float _1208;
  float _1211;
  float _1213;
  float _1214;
  float _1215;
  float _1216;
  float _1221;
  float _1227;
  float _1233;
  float _1235;
  float _1238;
  float _1265;
  float _1266;
  float _1267;
  float _1272;
  float _1277;
  float _1283;
  float _1295;
  bool _1296;
  float _1297;
  float _1299;
  float _1302;
  float _1322;
  float _1330;
  float _1337;
  float _1341;
  float _1344;
  float _1348;
  float _1362;
  float _1366;
  float _1369;
  float _1373;
  float _1375;
  float _1376;
  float _1377;
  float _1378;
  float _1379;
  float _1384;
  float _1391;
  float _1397;
  float _1403;
  float _1404;
  float _1405;
  float _1406;
  float _1407;
  float _1414;
  float _1415;
  float _1416;
  float _1417;
  float _1418;
  float _1419;
  float _1422;
  float _1425;
  float _1428;
  float _1432;
  float _1434;
  float _1441;
  float _1447;
  float _1453;
  float _1496;
  float _1497;
  float _1501;
  float _1502;
  float _1503;
  float _1504;
  float _1511;
  float _1518;
  float _1525;
  float _1528;
  float _1529;
  float _1530;
  float _1531;
  float _1536;
  float _1541;
  float _1546;
  float _1548;
  float _1555;
  float _1562;
  float _1569;
  float _1578;
  float _1639;
  float _1652;
  float _1654;
  float _1657;
  float _1665;
  float _1670;
  float _1675;
  float _1677;
  float _1678;
  float _1680;
  float _1682;
  float _1683;
  float _1684;
  float _1705;
  float _1706;
  float _1707;
  float _1708;
  float _1709;
  float _1710;
  float _1711;
  float _1712;
  float _1713;
  float _1719;
  float _1723;
  float _1727;
  float _1728;
  float _1729;
  float _1730;
  float _1731;
  float _1732;
  float _1733;
  float _1739;
  float _1743;
  float _1747;
  float _1750;
  float _1753;
  float _1756;
  float _1758;
  float _1760;
  float _1762;
  float _1765;
  float _1768;
  float _1771;
  float _1773;
  int _1776;
  int _1779;
  float _1802;
  float _1811;
  float _1827;
  float _1830;
  float _1833;
  float _1836;
  float _1846;
  float _1849;
  float _1852;
  float _1854;
  float _1856;
  float _1858;
  int _1865;
  float _1883;
  float _1885;
  float _1896;
  float _1899;
  float _1903;
  float _1905;
  float _1906;
  float _1907;
  float _1908;
  float _1911;
  float _1914;
  float _1917;
  float _1919;
  float _1920;
  float _1921;
  float _1922;
  float _1927;
  int _1938;
  float _1943;
  float _1946;
  float _1950;
  float _1962;
  float _1970;
  bool _1972;
  float2 _1979;
  float _2053;
  float _2056;
  float _2059;
  float _2071;
  float _2079;
  float4 _2088;
  float _2093;
  float _2095;
  float _2097;
  float _2098;
  float _2099;
  float _2100;
  float _2106;
  float _2108;
  float _2111;
  float _2112;
  float _2114;
  float _2115;
  float _2116;
  float _2117;
  float _2123;
  float _2130;
  float _2132;
  float _2134;
  float _2136;
  float _2137;
  float _2138;
  float _2139;
  float _2140;
  float _2141;
  float2 _2176;
  float _2250;
  float _2253;
  float _2256;
  float _2268;
  float _2276;
  float4 _2285;
  float _2290;
  float _2292;
  float _2294;
  float _2295;
  float _2296;
  float _2297;
  float _2303;
  float _2305;
  float _2308;
  float _2309;
  float _2311;
  float _2312;
  float _2313;
  float _2314;
  float _2320;
  float _2327;
  float _2329;
  float _2331;
  float _2333;
  float _2334;
  float _2335;
  float _2336;
  float _2337;
  float _2338;
  float _2390;
  float _2391;
  float _2392;
  float _2393;
  float _2399;
  float _2403;
  float _2407;
  float _2419;
  float _2427;
  uint2 _2429;
  bool _2433;
  float _2449;
  float _2452;
  float _2455;
  float _2467;
  float _2475;
  float4 _2484;
  float _2489;
  float _2491;
  float _2493;
  float _2494;
  float _2495;
  float _2496;
  float _2500;
  float _2504;
  float _2506;
  float _2509;
  float _2510;
  float _2512;
  float _2513;
  float _2514;
  float _2515;
  float _2537;
  float _2540;
  float _2542;
  float _2544;
  float _2546;
  float _2547;
  float _2548;
  float _2549;
  float _2550;
  float _2551;
  float _2553;
  float _2558;
  float _2562;
  float _2565;
  float _2569;
  float _2573;
  float _2578;
  float _2579;
  float2 _2616;
  float _2689;
  float _2692;
  float _2695;
  float _2707;
  float _2715;
  float4 _2723;
  float _2728;
  float _2730;
  float _2732;
  float _2733;
  float _2734;
  float _2735;
  float _2739;
  float _2743;
  float _2745;
  float _2748;
  float _2749;
  float _2751;
  float _2752;
  float _2753;
  float _2754;
  float _2776;
  float _2779;
  float _2781;
  float _2783;
  float _2785;
  float _2786;
  float _2787;
  float _2788;
  float _2789;
  float _2790;
  float _2792;
  float _2797;
  float _2801;
  float _2804;
  float _2808;
  float _2812;
  float _2817;
  float _2818;
  float _2872;
  float _2875;
  float _2878;
  float _2890;
  float _2898;
  float4 _2907;
  float _2912;
  float _2914;
  float _2916;
  float _2917;
  float _2918;
  float _2919;
  float _2923;
  float _2927;
  float _2929;
  float _2932;
  float _2933;
  float _2935;
  float _2936;
  float _2937;
  float _2938;
  float _2960;
  float _2963;
  float _2965;
  float _2967;
  float _2969;
  float _2970;
  float _2971;
  float _2972;
  float _2973;
  float _2974;
  float _2976;
  float _2985;
  float _2988;
  float _2992;
  float _3011;
  float2 _3036;
  float _3109;
  float _3112;
  float _3115;
  float _3127;
  float _3135;
  float4 _3143;
  float _3148;
  float _3150;
  float _3152;
  float _3153;
  float _3154;
  float _3155;
  float _3159;
  float _3163;
  float _3165;
  float _3168;
  float _3169;
  float _3171;
  float _3172;
  float _3173;
  float _3174;
  float _3196;
  float _3199;
  float _3201;
  float _3203;
  float _3205;
  float _3206;
  float _3207;
  float _3208;
  float _3209;
  float _3210;
  float _3212;
  float _3221;
  float _3224;
  float _3228;
  float _3247;
  int _3294;
  int _3297;
  float _3301;
  float _3306;
  float _3310;
  float _3315;
  float _3317;
  float _3318;
  float _3319;
  float _3320;
  float _3321;
  float _3323;
  float _3326;
  float _3327;
  float _3329;
  float _3330;
  float _3331;
  float _3332;
  float _3340;
  float _3345;
  float _3346;
  float _3347;
  float _3348;
  float _3350;
  float _3352;
  float _3354;
  float _3355;
  float _3356;
  float _3357;
  float _3358;
  float _3359;
  float _3361;
  float _3364;
  float _3365;
  float _3367;
  float _3368;
  float _3369;
  float _3370;
  float _3375;
  float _3376;
  float _3378;
  float _3380;
  float _3382;
  float _3383;
  float _3384;
  float _3385;
  float _3386;
  float _3387;
  float _3444;
  int _3459;
  int _3479;
  float _3490;
  float _3491;
  float _3496;
  float _3497;
  float _3501;
  int4 _3513;
  uint2 _3525;
  float _3534;
  int _3577;
  uint2 _3588;
  float _3597;
  float4 _3615;
  _33 = WaveReadLaneFirst(_drawIndex);
  _36 = __3__37__0__0__g_indirectDrawParametersBuffer[_33]._vertexBufferViewIndex;
  _38 = __3__37__0__0__g_indirectDrawParametersBuffer[_33]._staticMeshDataViewIndex;
  _40 = __3__37__0__0__g_indirectDrawParametersBuffer[_33]._staticMeshDataIndex;
  _42 = __3__37__0__0__g_indirectDrawParametersBuffer[_33]._baseVertexLocation;
  _43 = (int)(min16uint)(_40);
  _51 = __0__15__0__0__g_staticMeshDataBindless[((int)((uint)((uint)(select(((uint16_t)_38 < (uint16_t)40000u), ((int)(min16uint)(_38)), 0))) + (uint)(0)))][_43]._aabbMin.x;
  _52 = __0__15__0__0__g_staticMeshDataBindless[((int)((uint)((uint)(select(((uint16_t)_38 < (uint16_t)40000u), ((int)(min16uint)(_38)), 0))) + (uint)(0)))][_43]._aabbMin.y;
  _53 = __0__15__0__0__g_staticMeshDataBindless[((int)((uint)((uint)(select(((uint16_t)_38 < (uint16_t)40000u), ((int)(min16uint)(_38)), 0))) + (uint)(0)))][_43]._aabbMin.z;
  _55 = __0__15__0__0__g_staticMeshDataBindless[((int)((uint)((uint)(select(((uint16_t)_38 < (uint16_t)40000u), ((int)(min16uint)(_38)), 0))) + (uint)(0)))][_43]._aabbMax.x;
  _56 = __0__15__0__0__g_staticMeshDataBindless[((int)((uint)((uint)(select(((uint16_t)_38 < (uint16_t)40000u), ((int)(min16uint)(_38)), 0))) + (uint)(0)))][_43]._aabbMax.y;
  _57 = __0__15__0__0__g_staticMeshDataBindless[((int)((uint)((uint)(select(((uint16_t)_38 < (uint16_t)40000u), ((int)(min16uint)(_38)), 0))) + (uint)(0)))][_43]._aabbMax.z;
  _59 = __0__15__0__0__g_staticMeshDataBindless[((int)((uint)((uint)(select(((uint16_t)_38 < (uint16_t)40000u), ((int)(min16uint)(_38)), 0))) + (uint)(0)))][_43]._flag;
  _61 = __0__15__0__0__g_staticMeshDataBindless[((int)((uint)((uint)(select(((uint16_t)_38 < (uint16_t)40000u), ((int)(min16uint)(_38)), 0))) + (uint)(0)))][_43]._treeShapeVariationParams.x;
  _62 = __0__15__0__0__g_staticMeshDataBindless[((int)((uint)((uint)(select(((uint16_t)_38 < (uint16_t)40000u), ((int)(min16uint)(_38)), 0))) + (uint)(0)))][_43]._treeShapeVariationParams.y;
  _63 = __0__15__0__0__g_staticMeshDataBindless[((int)((uint)((uint)(select(((uint16_t)_38 < (uint16_t)40000u), ((int)(min16uint)(_38)), 0))) + (uint)(0)))][_43]._treeShapeVariationParams.z;
  _64 = __0__15__0__0__g_staticMeshDataBindless[((int)((uint)((uint)(select(((uint16_t)_38 < (uint16_t)40000u), ((int)(min16uint)(_38)), 0))) + (uint)(0)))][_43]._treeShapeVariationParams.w;
  _65 = (uint)((uint)(_42)) + (uint)((uint)(SV_VertexID));
  _73 = __0__103__0__0__g_bindlessVertexBuffersTree[((int)((uint)((uint)(select(((uint16_t)_36 < (uint16_t)50000u), ((int)(min16uint)(_36)), 0))) + (uint)(0)))][_65]._position.x;
  _74 = __0__103__0__0__g_bindlessVertexBuffersTree[((int)((uint)((uint)(select(((uint16_t)_36 < (uint16_t)50000u), ((int)(min16uint)(_36)), 0))) + (uint)(0)))][_65]._position.y;
  _75 = __0__103__0__0__g_bindlessVertexBuffersTree[((int)((uint)((uint)(select(((uint16_t)_36 < (uint16_t)50000u), ((int)(min16uint)(_36)), 0))) + (uint)(0)))][_65]._position.z;
  _76 = __0__103__0__0__g_bindlessVertexBuffersTree[((int)((uint)((uint)(select(((uint16_t)_36 < (uint16_t)50000u), ((int)(min16uint)(_36)), 0))) + (uint)(0)))][_65]._position.w;
  _78 = __0__103__0__0__g_bindlessVertexBuffersTree[((int)((uint)((uint)(select(((uint16_t)_36 < (uint16_t)50000u), ((int)(min16uint)(_36)), 0))) + (uint)(0)))][_65]._normal;
  _80 = __0__103__0__0__g_bindlessVertexBuffersTree[((int)((uint)((uint)(select(((uint16_t)_36 < (uint16_t)50000u), ((int)(min16uint)(_36)), 0))) + (uint)(0)))][_65]._diffuseTex.x;
  _81 = __0__103__0__0__g_bindlessVertexBuffersTree[((int)((uint)((uint)(select(((uint16_t)_36 < (uint16_t)50000u), ((int)(min16uint)(_36)), 0))) + (uint)(0)))][_65]._diffuseTex.y;
  _82 = __0__103__0__0__g_bindlessVertexBuffersTree[((int)((uint)((uint)(select(((uint16_t)_36 < (uint16_t)50000u), ((int)(min16uint)(_36)), 0))) + (uint)(0)))][_65]._diffuseTex.z;
  _83 = __0__103__0__0__g_bindlessVertexBuffersTree[((int)((uint)((uint)(select(((uint16_t)_36 < (uint16_t)50000u), ((int)(min16uint)(_36)), 0))) + (uint)(0)))][_65]._diffuseTex.w;
  _85 = __0__103__0__0__g_bindlessVertexBuffersTree[((int)((uint)((uint)(select(((uint16_t)_36 < (uint16_t)50000u), ((int)(min16uint)(_36)), 0))) + (uint)(0)))][_65]._windNonBranch.x;
  _86 = __0__103__0__0__g_bindlessVertexBuffersTree[((int)((uint)((uint)(select(((uint16_t)_36 < (uint16_t)50000u), ((int)(min16uint)(_36)), 0))) + (uint)(0)))][_65]._windNonBranch.y;
  _87 = __0__103__0__0__g_bindlessVertexBuffersTree[((int)((uint)((uint)(select(((uint16_t)_36 < (uint16_t)50000u), ((int)(min16uint)(_36)), 0))) + (uint)(0)))][_65]._windNonBranch.z;
  _88 = __0__103__0__0__g_bindlessVertexBuffersTree[((int)((uint)((uint)(select(((uint16_t)_36 < (uint16_t)50000u), ((int)(min16uint)(_36)), 0))) + (uint)(0)))][_65]._windNonBranch.w;
  _90 = __0__103__0__0__g_bindlessVertexBuffersTree[((int)((uint)((uint)(select(((uint16_t)_36 < (uint16_t)50000u), ((int)(min16uint)(_36)), 0))) + (uint)(0)))][_65]._windBranch.x;
  _91 = __0__103__0__0__g_bindlessVertexBuffersTree[((int)((uint)((uint)(select(((uint16_t)_36 < (uint16_t)50000u), ((int)(min16uint)(_36)), 0))) + (uint)(0)))][_65]._windBranch.y;
  _96 = _51 + (((_55 - _51) * 1.5259022e-05f) * ((float)((uint16_t)(_73))));
  _101 = _53 + (((_57 - _53) * 1.5259022e-05f) * ((float)((uint16_t)(_74))));
  _106 = _52 + (((_56 - _52) * 1.5259022e-05f) * ((float)((uint16_t)(_75))));
  _107 = float(_82);
  _108 = float(_83);
  _109 = float(_85);
  _110 = float(_86);
  _111 = float(_87);
  _112 = float(_88);
  _113 = float(_90);
  _114 = float(_91);
  _117 = WaveReadLaneFirst(_drawIndex);
  _120 = __3__37__0__0__g_indirectDrawParametersBuffer[_117]._windParams;
  _122 = ((_59 & 536870912) == 0);
  _123 = (uint)((uint)(BLENDINDICES)) >> 16;
  _124 = BLENDINDICES & 65535;
  _129 = (int)((int)(uint)((int)(_frameNumber.y != 0))) + (int)(_123);
  _136 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_129 < (uint)65000), _129, 0))) + (uint)(0))))][_124].intancingInfo.x;
  _137 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_129 < (uint)65000), _129, 0))) + (uint)(0))))][_124].intancingInfo.y;
  _138 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_129 < (uint)65000), _129, 0))) + (uint)(0))))][_124].intancingInfo.z;
  _139 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_129 < (uint)65000), _129, 0))) + (uint)(0))))][_124].intancingInfo.w;
  _141 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_129 < (uint)65000), _129, 0))) + (uint)(0))))][_124].intancingInfo1.x;
  _142 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_129 < (uint)65000), _129, 0))) + (uint)(0))))][_124].intancingInfo1.y;
  _143 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_129 < (uint)65000), _129, 0))) + (uint)(0))))][_124].intancingInfo1.z;
  _144 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_129 < (uint)65000), _129, 0))) + (uint)(0))))][_124].intancingInfo1.w;
  _146 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_129 < (uint)65000), _129, 0))) + (uint)(0))))][_124].intancingInfo2.w;
  _148 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_129 < (uint)65000), _129, 0))) + (uint)(0))))][_124].intancingInfo3.x;
  _149 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_129 < (uint)65000), _129, 0))) + (uint)(0))))][_124].intancingInfo3.y;
  _150 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_129 < (uint)65000), _129, 0))) + (uint)(0))))][_124].intancingInfo3.z;
  _151 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_129 < (uint)65000), _129, 0))) + (uint)(0))))][_124].intancingInfo3.w;
  _152 = asint(_146);
  _157 = (int)((int)(uint)((int)(_frameNumber.y == 0))) + (int)(_123);
  _164 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_157 < (uint)65000), _157, 0))) + (uint)(0))))][_124].intancingInfo.x;
  _165 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_157 < (uint)65000), _157, 0))) + (uint)(0))))][_124].intancingInfo.y;
  _166 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_157 < (uint)65000), _157, 0))) + (uint)(0))))][_124].intancingInfo.z;
  _167 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_157 < (uint)65000), _157, 0))) + (uint)(0))))][_124].intancingInfo.w;
  _169 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_157 < (uint)65000), _157, 0))) + (uint)(0))))][_124].intancingInfo1.x;
  _170 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_157 < (uint)65000), _157, 0))) + (uint)(0))))][_124].intancingInfo1.y;
  _171 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_157 < (uint)65000), _157, 0))) + (uint)(0))))][_124].intancingInfo1.z;
  _173 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_157 < (uint)65000), _157, 0))) + (uint)(0))))][_124].intancingInfo2.w;
  _175 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_157 < (uint)65000), _157, 0))) + (uint)(0))))][_124].intancingInfo3.x;
  _176 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_157 < (uint)65000), _157, 0))) + (uint)(0))))][_124].intancingInfo3.y;
  _177 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_157 < (uint)65000), _157, 0))) + (uint)(0))))][_124].intancingInfo3.z;
  _178 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_157 < (uint)65000), _157, 0))) + (uint)(0))))][_124].intancingInfo3.w;
  _180 = ((_152 & 8) == 0);
  if (_180) {
    _182 = asint(_139);
    _187 = ((int)((int)((uint)((uint)(_182)) << 16)) >> 16);
    _188 = ((int)(_182) >> 16);
  } else {
    _187 = 0;
    _188 = 0;
  }
  _191 = _149 - _viewTileRelativePos.y;
  _201 = (_148 - _viewTileRelativePos.x) + ((float)((int)((int)(((float)((int)((int)((uint)((uint)(_188)) - (uint)((uint)(_viewTileIndex.x)))))) * 1000.0f))));
  _210 = (_150 - _viewTileRelativePos.z) + ((float)((int)((int)(((float)((int)((int)((uint)((uint)(_187)) - (uint)((uint)(_viewTileIndex.y)))))) * 1000.0f))));
  _213 = _148 + (((float)((int)(_188))) * 1000.0f);
  _216 = _150 + (((float)((int)(_187))) * 1000.0f);
  _220 = (((float)((uint)((uint)(_78 & 255)))) * 0.00784312f) + -1.0f;
  _225 = (((float)((uint)((uint)(((uint)((uint)(_78)) >> 16) & 255)))) * 0.00784312f) + -1.0f;
  _230 = (((float)((uint)((uint)(((uint)((uint)(_78)) >> 8) & 255)))) * 0.00784312f) + -1.0f;
  _233 = (_138 * _142) - (_137 * _143);
  _236 = (_136 * _143) - (_138 * _141);
  _239 = (_137 * _141) - (_136 * _142);
  _241 = rsqrt(dot(float3(_233, _236, _239), float3(_233, _236, _239)));  // [sem: invLength]
  _243 = -0.0f - (_233 * _241);
  _245 = -0.0f - (_236 * _241);
  _247 = -0.0f - (_239 * _241);
  _249 = f16tof32(((uint)((uint)((uint)(_120)) >> 16)));
  _251 = max((_151 * _249), 0.01f);
  _253 = saturate(1.0f / _251);  // [sem: expr_sat]
  if ((int)_59 > (int)-1) {
    if ((_64 & 16777216) == 0) {
      _275 = ((mad(_247, _108, mad(_143, _112, (_138 * _107))) * _151) + _216);
      _276 = ((mad(_245, _108, mad(_142, _112, (_137 * _107))) * _151) + _149);
      _277 = ((mad(_243, _108, mad(_141, _112, (_136 * _107))) * _151) + _213);
    } else {
      _275 = _216;
      _276 = _149;
      _277 = _213;
    }
    _280 = _277 - _clippingSpaceMatrixRelativePosition.x;
    _282 = _276 - _clippingSpaceMatrixRelativePosition.y;
    _284 = _275 - _clippingSpaceMatrixRelativePosition.z;
    _296 = (_clippingSpaceMatrixRelativeTexScale[0].w) + mad((_clippingSpaceMatrixRelativeTexScale[0].z), _284, mad((_clippingSpaceMatrixRelativeTexScale[0].y), _282, ((_clippingSpaceMatrixRelativeTexScale[0].x) * _280)));
    _304 = mad((_clippingSpaceMatrixRelativeTexScale[1].z), _284, mad((_clippingSpaceMatrixRelativeTexScale[1].y), _282, ((_clippingSpaceMatrixRelativeTexScale[1].x) * _280))) + (_clippingSpaceMatrixRelativeTexScale[1].w);
    __3__36__0__0__g_topDownClippingSpace.GetDimensions(_306.x, _306.y);
    if (saturate(_296) == _296) {
      if (saturate(_304) == _304) {
        if (_296 > (1.0f / ((float)((int)((int)(_306.x)))))) {
          if (_304 > (1.0f / ((float)((int)((int)(_306.y)))))) {
            // [sem: _3__36__0__0__g_topDownClippingSpace_sampleLod]
            _324 = __3__36__0__0__g_topDownClippingSpace.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_296, _304), 0.0f);
            if (_324.x > 0.0f) {
              _354 = (max(((_clippingSpaceMatrixRelativePosition.y - _149) + (((_clippingSpaceMatrixRelativeInvTexScale[1].w) + mad((_clippingSpaceMatrixRelativeInvTexScale[1].z), _324.x, mad((_clippingSpaceMatrixRelativeInvTexScale[1].y), _304, ((_clippingSpaceMatrixRelativeInvTexScale[1].x) * _296)))) / (mad((_clippingSpaceMatrixRelativeInvTexScale[3].z), _324.x, mad((_clippingSpaceMatrixRelativeInvTexScale[3].y), _304, ((_clippingSpaceMatrixRelativeInvTexScale[3].x) * _296))) + (_clippingSpaceMatrixRelativeInvTexScale[3].w)))), 0.0f) - (_151 * _106)) + 0.35f;
              _358 = select((_354 < -5.0f), 1.0f, _354);
            } else {
              _358 = 1.0f;
            }
          } else {
            _358 = 1.0f;
          }
        } else {
          _358 = 1.0f;
        }
      } else {
        _358 = 1.0f;
      }
    } else {
      _358 = 1.0f;
    }
  } else {
    _358 = 1.0f;
  }
  _364 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_201, (_191 + 0.0f), _210));
  _370 = 1.0f - saturate(((_253 * 12.0f) + -15.0f) + (_364 * 0.0625f));
  _371 = asint(_144);
  if (_122) {
    if (_364 < (256.0f - (_253 * 192.0f))) {
      _378 = ((_371 & 16777216) != 0);
      _380 = ((uint)((uint)(_120)) >> 4) & 4095;
      if (!(_380 == 4095)) {
        if (_treeParams.x > 0.0f) {
          _389 = __3__37__0__0__g_treeWindDataBuffer[_380]._curr._windVector.x;
          _390 = __3__37__0__0__g_treeWindDataBuffer[_380]._curr._windVector.y;
          _391 = __3__37__0__0__g_treeWindDataBuffer[_380]._curr._windVector.z;
          _392 = __3__37__0__0__g_treeWindDataBuffer[_380]._curr._windVector.w;
          _394 = __3__37__0__0__g_treeWindDataBuffer[_380]._curr._windGlobal.x;
          _395 = __3__37__0__0__g_treeWindDataBuffer[_380]._curr._windGlobal.z;
          _396 = __3__37__0__0__g_treeWindDataBuffer[_380]._curr._windGlobal.w;
          _398 = __3__37__0__0__g_treeWindDataBuffer[_380]._curr._windGlobalData0.x;
          _399 = __3__37__0__0__g_treeWindDataBuffer[_380]._curr._windGlobalData0.y;
          _400 = __3__37__0__0__g_treeWindDataBuffer[_380]._curr._windGlobalData0.z;
          _401 = __3__37__0__0__g_treeWindDataBuffer[_380]._curr._windGlobalData0.w;
          _403 = __3__37__0__0__g_treeWindDataBuffer[_380]._curr._windBranchAndTwitch.x;
          _404 = __3__37__0__0__g_treeWindDataBuffer[_380]._curr._windBranchAndTwitch.z;
          _405 = __3__37__0__0__g_treeWindDataBuffer[_380]._curr._windBranchAndTwitch.w;
          _407 = __3__37__0__0__g_treeWindDataBuffer[_380]._curr._windBranchData0.x;
          _408 = __3__37__0__0__g_treeWindDataBuffer[_380]._curr._windBranchData0.y;
          _410 = __3__37__0__0__g_treeWindDataBuffer[_380]._curr._windLeaf1Data0.x;
          _411 = __3__37__0__0__g_treeWindDataBuffer[_380]._curr._windLeaf1Data0.z;
          _412 = __3__37__0__0__g_treeWindDataBuffer[_380]._curr._windLeaf1Data0.w;
          _414 = __3__37__0__0__g_treeWindDataBuffer[_380]._curr._windLeaf1Data1.x;
          _415 = __3__37__0__0__g_treeWindDataBuffer[_380]._curr._windLeaf1Data1.y;
          _416 = __3__37__0__0__g_treeWindDataBuffer[_380]._curr._windLeaf1Data1.z;
          _417 = __3__37__0__0__g_treeWindDataBuffer[_380]._curr._windLeaf1Data1.w;
          _419 = __3__37__0__0__g_treeWindDataBuffer[_380]._curr._windLeaf1Data2.x;
          _420 = __3__37__0__0__g_treeWindDataBuffer[_380]._curr._windLeaf1Data2.y;
          _421 = __3__37__0__0__g_treeWindDataBuffer[_380]._curr._windLeaf1Data2.z;
          _422 = __3__37__0__0__g_treeWindDataBuffer[_380]._curr._windLeaf1Data2.w;
          _424 = __3__37__0__0__g_treeWindDataBuffer[_380]._curr._windLeaf1Data3.x;
          _425 = __3__37__0__0__g_treeWindDataBuffer[_380]._curr._windLeaf1Data3.y;
          _427 = __3__37__0__0__g_treeWindDataBuffer[_380]._curr._windLeaf1Data4.x;
          _428 = __3__37__0__0__g_treeWindDataBuffer[_380]._curr._windLeaf1Data4.y;
          _429 = __3__37__0__0__g_treeWindDataBuffer[_380]._curr._windLeaf1Data4.z;
          _431 = __3__37__0__0__g_treeWindDataBuffer[_380]._prev._windVector.x;
          _432 = __3__37__0__0__g_treeWindDataBuffer[_380]._prev._windVector.y;
          _433 = __3__37__0__0__g_treeWindDataBuffer[_380]._prev._windVector.z;
          _434 = __3__37__0__0__g_treeWindDataBuffer[_380]._prev._windVector.w;
          _436 = __3__37__0__0__g_treeWindDataBuffer[_380]._prev._windGlobal.x;
          _437 = __3__37__0__0__g_treeWindDataBuffer[_380]._prev._windGlobal.z;
          _438 = __3__37__0__0__g_treeWindDataBuffer[_380]._prev._windGlobal.w;
          _440 = __3__37__0__0__g_treeWindDataBuffer[_380]._prev._windGlobalData0.x;
          _441 = __3__37__0__0__g_treeWindDataBuffer[_380]._prev._windGlobalData0.y;
          _442 = __3__37__0__0__g_treeWindDataBuffer[_380]._prev._windGlobalData0.z;
          _443 = __3__37__0__0__g_treeWindDataBuffer[_380]._prev._windGlobalData0.w;
          _445 = __3__37__0__0__g_treeWindDataBuffer[_380]._prev._windBranchAndTwitch.x;
          _446 = __3__37__0__0__g_treeWindDataBuffer[_380]._prev._windBranchAndTwitch.z;
          _447 = __3__37__0__0__g_treeWindDataBuffer[_380]._prev._windBranchAndTwitch.w;
          _449 = __3__37__0__0__g_treeWindDataBuffer[_380]._prev._windBranchData0.x;
          _450 = __3__37__0__0__g_treeWindDataBuffer[_380]._prev._windBranchData0.y;
          _452 = __3__37__0__0__g_treeWindDataBuffer[_380]._prev._windLeaf1Data0.x;
          _453 = __3__37__0__0__g_treeWindDataBuffer[_380]._prev._windLeaf1Data0.z;
          _454 = __3__37__0__0__g_treeWindDataBuffer[_380]._prev._windLeaf1Data0.w;
          _456 = __3__37__0__0__g_treeWindDataBuffer[_380]._prev._windLeaf1Data1.x;
          _457 = __3__37__0__0__g_treeWindDataBuffer[_380]._prev._windLeaf1Data1.y;
          _458 = __3__37__0__0__g_treeWindDataBuffer[_380]._prev._windLeaf1Data1.z;
          _459 = __3__37__0__0__g_treeWindDataBuffer[_380]._prev._windLeaf1Data1.w;
          _461 = __3__37__0__0__g_treeWindDataBuffer[_380]._prev._windLeaf1Data2.x;
          _462 = __3__37__0__0__g_treeWindDataBuffer[_380]._prev._windLeaf1Data2.y;
          _463 = __3__37__0__0__g_treeWindDataBuffer[_380]._prev._windLeaf1Data2.z;
          _464 = __3__37__0__0__g_treeWindDataBuffer[_380]._prev._windLeaf1Data2.w;
          _466 = __3__37__0__0__g_treeWindDataBuffer[_380]._prev._windLeaf1Data3.x;
          _467 = __3__37__0__0__g_treeWindDataBuffer[_380]._prev._windLeaf1Data3.y;
          _469 = __3__37__0__0__g_treeWindDataBuffer[_380]._prev._windLeaf1Data4.x;
          _470 = __3__37__0__0__g_treeWindDataBuffer[_380]._prev._windLeaf1Data4.y;
          _471 = __3__37__0__0__g_treeWindDataBuffer[_380]._prev._windLeaf1Data4.z;
          _472 = select(_378, 0.02f, _392);
          _473 = select(_378, 0.02f, _434);
          if (_364 < 64.0f) {
            _484 = _windFluidVolumeParams.y * (floor(_windFluidVolumeParams.z * _viewPos.x) + 0.5f);
            _489 = _windFluidVolumeParams.y * (floor(_windFluidVolumeParams.z * _viewPos.y) + 0.5f);
            _494 = _windFluidVolumeParams.y * (floor(_windFluidVolumeParams.z * _viewPos.z) + 0.5f);
            _496 = _windFluidVolumeParams.x * 0.5f;
            _501 = (_496 + (_windFluidVolumeParams.z * ((_201 + _viewPos.x) - _484))) / _windFluidVolumeParams.x;
            _506 = (_496 + (_windFluidVolumeParams.z * ((_191 + _viewPos.y) - _489))) / _windFluidVolumeParams.x;
            _511 = (_496 + (_windFluidVolumeParams.z * ((_210 + _viewPos.z) - _494))) / _windFluidVolumeParams.x;
            if (!((_511 > 1.0f) || ((_506 > 1.0f) || ((_501 > 1.0f) || (((_501 < 0.0f) || (_506 < 0.0f)) || (_511 < 0.0f)))))) {
              // [sem: _3__36__0__0__g_windFluidInteractionVelocityHistory_sampleLod]
              _526 = __3__36__0__0__g_windFluidInteractionVelocityHistory.SampleLevel(__0__95__0__0__g_samplerAnisotropicWrap, float3(_501, _506, _511), 0.0f);
              _531 = rsqrt(dot(float3(_526.x, _526.y, _526.z), float3(_526.x, _526.y, _526.z)));  // [sem: invLength]
              _537 = sqrt((_526.z * _526.z) + ((_526.x * _526.x) + (_526.y * _526.y)));
              if (!(_537 < 0.001f)) {
                _544 = _537;
                _545 = (_526.z * _531);
                _546 = (_526.y * _531);
                _547 = (_526.x * _531);
              } else {
                _544 = 0.0f;
                _545 = 0.0f;
                _546 = 0.0f;
                _547 = 0.0f;
              }
            } else {
              _544 = 0.0f;
              _545 = 0.0f;
              _546 = 0.0f;
              _547 = 0.0f;
            }
            _562 = ((((((((float)((int)((int)(((float)((int)((int)((uint)((uint)(_188)) - (uint)((uint)(_viewTileIndexPrev.x)))))) * 1000.0f)))) + _148) + _viewPos.x) - _484) - _viewTileRelativePosPrev.x) * _windFluidVolumeParams.z) + _496) / _windFluidVolumeParams.x;
            _569 = (((((_viewPos.y + _149) - _489) - _viewTileRelativePosPrev.y) * _windFluidVolumeParams.z) + _496) / _windFluidVolumeParams.x;
            _583 = ((((((((float)((int)((int)(((float)((int)((int)((uint)((uint)(_187)) - (uint)((uint)(_viewTileIndexPrev.y)))))) * 1000.0f)))) + _150) + _viewPos.z) - _494) - _viewTileRelativePosPrev.z) * _windFluidVolumeParams.z) + _496) / _windFluidVolumeParams.x;
            if (!((_583 > 1.0f) || ((_569 > 1.0f) || ((_562 > 1.0f) || (((_562 < 0.0f) || (_569 < 0.0f)) || (_583 < 0.0f)))))) {
              // [sem: _3__36__0__0__g_windFluidInteractionVelocityHistoryPrev_sampleLod]
              _598 = __3__36__0__0__g_windFluidInteractionVelocityHistoryPrev.SampleLevel(__0__95__0__0__g_samplerAnisotropicWrap, float3(_562, _569, _583), 0.0f);
              _603 = rsqrt(dot(float3(_598.x, _598.y, _598.z), float3(_598.x, _598.y, _598.z)));  // [sem: invLength]
              _609 = sqrt(((_598.x * _598.x) + (_598.y * _598.y)) + (_598.z * _598.z));
              if (!(_609 < 0.001f)) {
                _616 = _609;
                _617 = (_603 * _598.z);
                _618 = (_603 * _598.y);
                _619 = (_603 * _598.x);
              } else {
                _616 = 0.0f;
                _617 = 0.0f;
                _618 = 0.0f;
                _619 = 0.0f;
              }
            } else {
              _616 = 0.0f;
              _617 = 0.0f;
              _618 = 0.0f;
              _619 = 0.0f;
            }
            _620 = saturate(_544);  // [sem: _544_sat]
            _623 = _389 + ((_547 - _389) * _620);
            _626 = _390 + ((_546 - _390) * _620);
            _629 = _391 + ((_545 - _391) * _620);
            _631 = rsqrt(dot(float3(_623, _626, _629), float3(_623, _626, _629)));  // [sem: invLength]
            _632 = saturate(_616);  // [sem: _616_sat]
            _635 = (_632 * (_619 - _431)) + _431;
            _638 = (_632 * (_618 - _432)) + _432;
            _641 = (_632 * (_617 - _433)) + _433;
            _643 = rsqrt(dot(float3(_635, _638, _641), float3(_635, _638, _641)));  // [sem: invLength]
            _657 = (_472 + ((1.0f - _472) * _620));
            _658 = (_629 * _631);
            _659 = (_626 * _631);
            _660 = (_623 * _631);
            _661 = ((_632 * (1.0f - _473)) + _473);
            _662 = (_641 * _643);
            _663 = (_638 * _643);
            _664 = (_635 * _643);
          } else {
            _657 = _392;
            _658 = _391;
            _659 = _390;
            _660 = _389;
            _661 = _434;
            _662 = _433;
            _663 = _432;
            _664 = _431;
          }
          _673 = select((((_152 & 4) != 0) && (_364 < 48.0f)), (((float)((uint)((uint)(((uint)((uint)(_152)) >> 16) & 255)))) * 0.003921569f), 0.0f);
          _676 = mad(_138, _658, mad(_137, _659, (_136 * _660)));
          _679 = mad(_143, _658, mad(_142, _659, (_141 * _660)));
          _682 = mad(_247, _658, mad(_245, _659, (_660 * _243)));
          _684 = rsqrt(dot(float3(_676, _679, _682), float3(_676, _679, _682)));  // [sem: invLength]
          _685 = _676 * _684;
          _686 = _679 * _684;
          _687 = _682 * _684;
          _688 = _213 + 0.5f;
          _689 = _149 + 0.5f;
          _694 = abs((frac(_688 + _394) * 2.0f) + -1.0f);
          _700 = abs((frac(_689 + (_394 * 0.8f)) * 2.0f) + -1.0f);
          _706 = (((_700 * _700) * (3.0f - (_700 * 2.0f))) + -0.5f) * 2.0f;
          _708 = saturate(_673 + _657);  // [sem: expr_sat]
          _711 = _400 + ((_401 - _400) * _708);
          _738 = (exp2(_396 * log2(saturate((_395 * 100.0f) * max((_106 - (0.0025f / _395)), 0.0f)))) * 0.01f) * (((_398 + ((_399 - _398) * _708)) * (((((_694 * _694) * (3.0f - (_694 * 2.0f))) + -0.5f) * 2.0f) + (_706 * _706))) + select((!(_395 == 0.0f)), (_711 / _395), _711));
          _739 = _685 * _738;
          _740 = _687 * _738;
          _741 = _739 + _96;
          _742 = _740 + _101;
          _744 = rsqrt(dot(float3(_96, _106, _101), float3(_96, _106, _101)));  // [sem: invLength]
          _745 = _744 * _96;
          _746 = _744 * _106;
          _747 = _744 * _101;
          _749 = rsqrt(dot(float3(_741, _106, _742), float3(_741, _106, _742)));  // [sem: invLength]
          _750 = _741 * _749;
          _751 = _749 * _106;
          _752 = _742 * _749;
          _753 = dot(float3(_750, _751, _752), float3(_745, _746, _747));
          _758 = ((-0.87266463f - ((_753 * _753) * 0.6981317f)) * _753) + 1.5707964f;
          if (_758 > 0.01f) {
            _761 = _758 * 3.0f;
            _764 = (_751 * _747) - (_752 * _746);
            _767 = (_752 * _745) - (_750 * _747);
            _770 = (_750 * _746) - (_751 * _745);
            _771 = sin(_761);
            _772 = cos(_761);
            _773 = 1.0f - _772;
            _774 = _773 * _764;
            _775 = _774 * _767;
            _776 = _771 * _770;
            _777 = _773 * _770;
            _778 = _777 * _764;
            _779 = _771 * _767;
            _780 = _777 * _767;
            _781 = _771 * _764;
            _805 = mad(_230, ((_777 * _770) + _772), mad(_225, (_780 - _781), ((_778 + _779) * _220)));
            _806 = mad(_230, (_780 + _781), mad(_225, (((_767 * _767) * _773) + _772), ((_775 - _776) * _220)));
            _807 = mad(_230, (_778 - _779), mad(_225, (_775 + _776), (((_774 * _764) + _772) * _220)));
          } else {
            _805 = _230;
            _806 = _225;
            _807 = _220;
          }
          _811 = (frac(_114 * 0.0625f) * 2.0f) + -1.0f;
          _814 = (frac(_114) * 2.0f) + -1.0f;
          _818 = (frac(_114 * 16.0f) * 2.0f) + -1.0f;
          _819 = _114 + _213;
          _820 = _819 + _403;
          _821 = _405 * _820;
          _826 = abs((frac(_820 + 0.5f) * 2.0f) + -1.0f);
          _831 = abs((frac(_821 + 0.5f) * 2.0f) + -1.0f);
          _837 = abs((frac((_821 * 0.5f) + 0.5f) * 2.0f) + -1.0f);
          _849 = ((((_831 * _831) * (3.0f - (_831 * 2.0f))) + -0.5f) * 4.0f) * (((_837 * _837) * (3.0f - (_837 * 2.0f))) + -0.5f);
          _850 = (_849 < 0.0f);
          _851 = select(_850, -1.0f, 1.0f);
          _853 = select(_850, (-0.0f - _849), _849);
          _856 = _849 + (_853 * (_851 - _849));
          _860 = (_113 * 0.01f) * rsqrt(dot(float3(_811, _814, _818), float3(_811, _814, _818)));
          _861 = _811 * _860;
          _881 = max((_407 + ((_408 - _407) * _708)), 1.0f) * ((((1.0f - _404) * 2.0f) * (((_826 * _826) * (3.0f - (_826 * 2.0f))) + -0.5f)) + ((_404 * (1.0f - _657)) * (_856 + (_853 * (_851 - _856)))));
          _882 = _818 * _860;
          _883 = _814 * _860;
          _885 = ((_120 & 14) == 2);
          if (_885) {
            _893 = dot(float3((_107 + (_213 * 0.01f)), (_112 + (_149 * 0.01f)), (_108 + (_216 * 0.01f))), float3(10.0f, 10.0f, 10.0f));
            _900 = abs((frac((_410 + 0.5f) + dot(float3(_96, _106, _101), float3(10.0f, 10.0f, 10.0f))) * 2.0f) + -1.0f);
            _904 = (frac(_111 * 0.0625f) * 2.0f) + -1.0f;
            _907 = (frac(_111) * 2.0f) + -1.0f;
            _911 = (frac(_111 * 16.0f) * 2.0f) + -1.0f;
            _926 = (_109 * 0.01f) * ((((_414 + ((_415 - _414) * _657)) * 2.0f) * (((_900 * _900) * (3.0f - (_900 * 2.0f))) + -0.5f)) * rsqrt(dot(float3(_904, _907, _911), float3(_904, _907, _911))));
            _930 = (frac(_110 * 0.0625f) * 2.0f) + -1.0f;
            _933 = (frac(_110) * 2.0f) + -1.0f;
            _937 = (frac(_110 * 16.0f) * 2.0f) + -1.0f;
            _939 = rsqrt(dot(float3(_930, _933, _937), float3(_930, _933, _937)));  // [sem: invLength]
            _940 = _930 * _939;
            _941 = _933 * _939;
            _942 = _937 * _939;
            _943 = _893 + 0.5f;
            _948 = abs((frac(_411 + _943) * 2.0f) + -1.0f);
            _955 = abs((frac(((_411 * 0.75f) + 0.5f) - _893) * 2.0f) + -1.0f);
            _961 = (((_948 * _948) * (3.0f - (_948 * 2.0f))) + -0.5f) * 2.0f;
            _967 = (((_955 * _955) * (3.0f - (_955 * 2.0f))) + -0.5f) * 2.0f;
            _968 = _96 - _107;
            _969 = _106 - _112;
            _970 = _101 - _108;
            _971 = _109 * 0.5f;
            _978 = (_971 * (_419 + ((_420 - _419) * _657))) * (_961 + (_967 * _967));
            _979 = sin(_978);
            _980 = cos(_978);
            _981 = _940 * _979;
            _982 = _942 * _979;
            _983 = _941 * _979;
            _986 = (_687 * _942) - (_686 * _941);
            _989 = (_686 * _940) - (_685 * _942);
            _992 = min(max(dot(float3(_685, _686, _687), float3(_940, _942, _941)), -1.0f), 1.0f);
            _996 = ((_685 * _941) - (_687 * _940)) + _992;
            _998 = (_412 * 0.01f) + _893;
            _1005 = abs((frac(_998 + ((_893 * _893) + 0.5f)) * 2.0f) + -1.0f);
            _1011 = abs((frac(_943 + (_998 * 0.87f)) * 2.0f) + -1.0f);
            _1017 = (((_1011 * _1011) * (3.0f - (_1011 * 2.0f))) + -0.5f) * 2.0f;
            _1060 = _971 * ((((_416 + ((_417 - _416) * _657)) * (_967 - (_961 * _961))) + ((_421 + ((_422 - _421) * _657)) * ((_992 * (-0.87266463f - ((_992 * _992) * 0.6981317f))) + 1.5707964f))) + (((_424 + ((_425 - _424) * _657)) * 0.01f) * exp2(((_429 * 0.099999994f) * (1.0f / (_427 + ((_428 - _427) * _657)))) * log2(saturate(((((((_1005 * _1005) * (3.0f - (_1005 * 2.0f))) + -0.5f) * 2.0f) * (_1017 * _1017)) + 1.0f) * 0.5f)))));
            _1061 = cos(_1060);
            _1065 = sin(_1060) * rsqrt(dot(float3(_986, _996, _989), float3(_986, _996, _989)));
            _1066 = _986 * _1065;
            _1067 = _996 * _1065;
            _1068 = _989 * _1065;
            _1075 = (_980 * _1066) + ((_982 * _1068) + ((_981 * _1061) - (_983 * _1067)));
            _1082 = (_980 * _1067) + ((_983 * _1066) + ((_982 * _1061) - (_981 * _1068)));
            _1089 = (_980 * _1068) + ((_981 * _1067) + ((_983 * _1061) - (_982 * _1066)));
            _1092 = (_980 * _1061) - dot(float3(_981, _982, _983), float3(_1066, _1067, _1068));
            _1093 = -0.0f - _1075;
            _1094 = -0.0f - _1082;
            _1095 = -0.0f - _1089;
            _1100 = ((_806 * _1095) - (_805 * _1094)) + (_1092 * _807);
            _1105 = ((_805 * _1093) - (_807 * _1095)) + (_1092 * _806);
            _1110 = ((_807 * _1094) - (_806 * _1093)) + (_1092 * _805);
            _1112 = -0.0f - dot(float3(_807, _806, _805), float3(_1093, _1094, _1095));
            _1117 = (_968 * _1092) + ((_969 * _1095) - (_970 * _1094));
            _1122 = (_969 * _1092) + ((_970 * _1093) - (_968 * _1095));
            _1127 = (_970 * _1092) + ((_968 * _1094) - (_969 * _1093));
            _1129 = -0.0f - dot(float3(_968, _969, _970), float3(_1093, _1094, _1095));
            _1136 = ((_1075 * _1129) + (_1092 * _1117)) + ((_1082 * _1127) - (_1089 * _1122));
            _1143 = ((_1082 * _1129) + (_1092 * _1122)) + ((_1089 * _1117) - (_1075 * _1127));
            _1150 = ((_1089 * _1129) + (_1092 * _1127)) + ((_1075 * _1122) - (_1082 * _1117));
            // [sem: invLength]
            _1159 = rsqrt(dot(float3(_1136, _1143, _1150), float3(_1136, _1143, _1150))) * sqrt(((_968 * _968) + (_970 * _970)) + (_969 * _969));
            _1197 = ((((_1110 * _1092) + (_1089 * _1112)) - (_1100 * _1082)) + (_1105 * _1075));
            _1198 = ((((_1105 * _1092) + (_1082 * _1112)) - (_1110 * _1075)) + (_1100 * _1089));
            _1199 = ((((_1100 * _1092) + (_1075 * _1112)) - (_1105 * _1089)) + (_1110 * _1082));
            _1200 = (((_108 - _101) + (_907 * _926)) + (_1159 * _1150));
            _1201 = (((_112 - _106) + (_911 * _926)) + (_1159 * _1143));
            _1202 = (((_107 - _96) + (_904 * _926)) + (_1159 * _1136));
          } else {
            _1197 = _805;
            _1198 = _806;
            _1199 = _807;
            _1200 = 0.0f;
            _1201 = 0.0f;
            _1202 = 0.0f;
          }
          _1205 = mad(_138, _662, mad(_137, _663, (_664 * _136)));
          _1208 = mad(_143, _662, mad(_142, _663, (_664 * _141)));
          _1211 = mad(_247, _662, mad(_245, _663, (_664 * _243)));
          _1213 = rsqrt(dot(float3(_1205, _1208, _1211), float3(_1205, _1208, _1211)));  // [sem: invLength]
          _1214 = _1213 * _1205;
          _1215 = _1213 * _1208;
          _1216 = _1213 * _1211;
          _1221 = abs((frac(_436 + _688) * 2.0f) + -1.0f);
          _1227 = abs((frac((_436 * 0.8f) + _689) * 2.0f) + -1.0f);
          _1233 = (((_1227 * _1227) * (3.0f - (_1227 * 2.0f))) + -0.5f) * 2.0f;
          _1235 = saturate(_661 + _673);  // [sem: expr_sat]
          _1238 = (_1235 * (_443 - _442)) + _442;
          _1265 = (exp2(log2(saturate((_437 * 100.0f) * max((_106 - (0.0025f / _437)), 0.0f))) * _438) * 0.01f) * ((((_1233 * _1233) + ((((_1221 * _1221) * (3.0f - (_1221 * 2.0f))) + -0.5f) * 2.0f)) * ((_1235 * (_441 - _440)) + _440)) + select((!(_437 == 0.0f)), (_1238 / _437), _1238));
          _1266 = _445 + _819;
          _1267 = _1266 * _447;
          _1272 = abs((frac(_1266 + 0.5f) * 2.0f) + -1.0f);
          _1277 = abs((frac(_1267 + 0.5f) * 2.0f) + -1.0f);
          _1283 = abs((frac((_1267 * 0.5f) + 0.5f) * 2.0f) + -1.0f);
          _1295 = ((((_1277 * _1277) * (3.0f - (_1277 * 2.0f))) + -0.5f) * 4.0f) * (((_1283 * _1283) * (3.0f - (_1283 * 2.0f))) + -0.5f);
          _1296 = (_1295 < 0.0f);
          _1297 = select(_1296, -1.0f, 1.0f);
          _1299 = select(_1296, (-0.0f - _1295), _1295);
          _1302 = ((_1297 - _1295) * _1299) + _1295;
          _1322 = ((((1.0f - _661) * _446) * (lerp(_1302, _1297, _1299))) + (((1.0f - _446) * 2.0f) * (((_1272 * _1272) * (3.0f - (_1272 * 2.0f))) + -0.5f))) * max(((_1235 * (_450 - _449)) + _449), 1.0f);
          if (_885) {
            _1330 = dot(float3(((_213 * 0.01f) + _107), ((_149 * 0.01f) + _112), ((_216 * 0.01f) + _108)), float3(10.0f, 10.0f, 10.0f));
            _1337 = abs((frac((_452 + 0.5f) + dot(float3(_96, _106, _101), float3(10.0f, 10.0f, 10.0f))) * 2.0f) + -1.0f);
            _1341 = (frac(_111 * 0.0625f) * 2.0f) + -1.0f;
            _1344 = (frac(_111) * 2.0f) + -1.0f;
            _1348 = (frac(_111 * 16.0f) * 2.0f) + -1.0f;
            _1362 = (((_109 * 0.02f) * ((_661 * (_457 - _456)) + _456)) * (((_1337 * _1337) * (3.0f - (_1337 * 2.0f))) + -0.5f)) * rsqrt(dot(float3(_1341, _1344, _1348), float3(_1341, _1344, _1348)));
            _1366 = (frac(_110 * 0.0625f) * 2.0f) + -1.0f;
            _1369 = (frac(_110) * 2.0f) + -1.0f;
            _1373 = (frac(_110 * 16.0f) * 2.0f) + -1.0f;
            _1375 = rsqrt(dot(float3(_1366, _1369, _1373), float3(_1366, _1369, _1373)));  // [sem: invLength]
            _1376 = _1375 * _1366;
            _1377 = _1375 * _1369;
            _1378 = _1373 * _1375;
            _1379 = _1330 + 0.5f;
            _1384 = abs((frac(_1379 + _453) * 2.0f) + -1.0f);
            _1391 = abs((frac(((_453 * 0.75f) + 0.5f) - _1330) * 2.0f) + -1.0f);
            _1397 = (((_1384 * _1384) * (3.0f - (_1384 * 2.0f))) + -0.5f) * 2.0f;
            _1403 = (((_1391 * _1391) * (3.0f - (_1391 * 2.0f))) + -0.5f) * 2.0f;
            _1404 = _96 - _107;
            _1405 = _106 - _112;
            _1406 = _101 - _108;
            _1407 = _109 * 0.5f;
            _1414 = (((_661 * (_462 - _461)) + _461) * _1407) * ((_1403 * _1403) + _1397);
            _1415 = sin(_1414);
            _1416 = cos(_1414);
            _1417 = _1415 * _1376;
            _1418 = _1415 * _1378;
            _1419 = _1415 * _1377;
            _1422 = (_1378 * _1216) - (_1377 * _1215);
            _1425 = (_1376 * _1215) - (_1378 * _1214);
            _1428 = min(max(dot(float3(_1214, _1215, _1216), float3(_1376, _1378, _1377)), -1.0f), 1.0f);
            _1432 = _1428 + ((_1377 * _1214) - (_1376 * _1216));
            _1434 = _1330 + (_454 * 0.01f);
            _1441 = abs((frac(((_1330 * _1330) + 0.5f) + _1434) * 2.0f) + -1.0f);
            _1447 = abs((frac((_1434 * 0.87f) + _1379) * 2.0f) + -1.0f);
            _1453 = (((_1447 * _1447) * (3.0f - (_1447 * 2.0f))) + -0.5f) * 2.0f;
            _1496 = ((((((-0.87266463f - ((_1428 * _1428) * 0.6981317f)) * _1428) + 1.5707964f) * ((_661 * (_464 - _463)) + _463)) + ((_1403 - (_1397 * _1397)) * ((_661 * (_459 - _458)) + _458))) + ((((_661 * (_467 - _466)) + _466) * 0.01f) * exp2(((_471 * 0.099999994f) * (1.0f / ((_661 * (_470 - _469)) + _469))) * log2(saturate((((_1453 * _1453) * ((((_1441 * _1441) * (3.0f - (_1441 * 2.0f))) + -0.5f) * 2.0f)) + 1.0f) * 0.5f))))) * _1407;
            _1497 = cos(_1496);
            _1501 = rsqrt(dot(float3(_1422, _1432, _1425), float3(_1422, _1432, _1425))) * sin(_1496);  // [sem: invLength]
            _1502 = _1501 * _1422;
            _1503 = _1501 * _1432;
            _1504 = _1501 * _1425;
            _1511 = (((_1497 * _1417) - (_1503 * _1419)) + (_1504 * _1418)) + (_1502 * _1416);
            _1518 = (((_1497 * _1418) - (_1504 * _1417)) + (_1502 * _1419)) + (_1503 * _1416);
            _1525 = (((_1497 * _1419) - (_1502 * _1418)) + (_1503 * _1417)) + (_1504 * _1416);
            _1528 = (_1497 * _1416) - dot(float3(_1417, _1418, _1419), float3(_1502, _1503, _1504));
            _1529 = -0.0f - _1511;
            _1530 = -0.0f - _1518;
            _1531 = -0.0f - _1525;
            _1536 = ((_1405 * _1531) - (_1406 * _1530)) + (_1528 * _1404);
            _1541 = ((_1406 * _1529) - (_1404 * _1531)) + (_1528 * _1405);
            _1546 = ((_1404 * _1530) - (_1405 * _1529)) + (_1528 * _1406);
            _1548 = -0.0f - dot(float3(_1404, _1405, _1406), float3(_1529, _1530, _1531));
            _1555 = ((_1536 * _1528) + (_1511 * _1548)) + ((_1546 * _1518) - (_1541 * _1525));
            _1562 = ((_1541 * _1528) + (_1518 * _1548)) + ((_1536 * _1525) - (_1546 * _1511));
            _1569 = ((_1546 * _1528) + (_1525 * _1548)) + ((_1541 * _1511) - (_1536 * _1518));
            _1578 = sqrt(((_1406 * _1406) + (_1404 * _1404)) + (_1405 * _1405)) * rsqrt(dot(float3(_1555, _1562, _1569), float3(_1555, _1562, _1569)));
            _1595 = (((_108 - _101) + (_1362 * _1344)) + (_1569 * _1578));
            _1596 = (((_112 - _106) + (_1362 * _1348)) + (_1562 * _1578));
            _1597 = (((_107 - _96) + (_1362 * _1341)) + (_1555 * _1578));
          } else {
            _1595 = 0.0f;
            _1596 = 0.0f;
            _1597 = 0.0f;
          }
          _1629 = _1197;
          _1630 = _1198;
          _1631 = _1199;
          _1632 = (((((_1322 * _883) + (_1265 * _1216)) + _1595) * _370) + _101);
          _1633 = (((_1596 + (_1322 * _882)) * _370) + _106);
          _1634 = (((((_1322 * _861) + (_1265 * _1214)) + _1597) * _370) + _96);
          _1635 = (_101 + (_370 * ((_740 + (_883 * _881)) + _1200)));
          _1636 = (_106 + (_370 * ((_882 * _881) + _1201)));
          _1637 = (_96 + (_370 * ((_739 + (_861 * _881)) + _1202)));
        } else {
          _1629 = _230;
          _1630 = _225;
          _1631 = _220;
          _1632 = _101;
          _1633 = _106;
          _1634 = _96;
          _1635 = _101;
          _1636 = _106;
          _1637 = _96;
        }
      } else {
        _1629 = _230;
        _1630 = _225;
        _1631 = _220;
        _1632 = _101;
        _1633 = _106;
        _1634 = _96;
        _1635 = _101;
        _1636 = _106;
        _1637 = _96;
      }
    } else {
      _1629 = _230;
      _1630 = _225;
      _1631 = _220;
      _1632 = _101;
      _1633 = _106;
      _1634 = _96;
      _1635 = _101;
      _1636 = _106;
      _1637 = _96;
    }
  } else {
    _1629 = _230;
    _1630 = _225;
    _1631 = _220;
    _1632 = _101;
    _1633 = _106;
    _1634 = _96;
    _1635 = _101;
    _1636 = _106;
    _1637 = _96;
  }
  _1639 = (float)((uint)((uint)(_371 & 65535)));
  if (!(_debugTreeShapeVariation.w == 0)) {
    _1648 = _debugTreeShapeVariation.z;
    _1649 = _debugTreeShapeVariation.y;
    _1650 = _debugTreeShapeVariation.x;
  } else {
    _1648 = _63;
    _1649 = _62;
    _1650 = _61;
  }
  _1652 = f16tof32(((uint)((uint)((uint)(_1649)) >> 16)));
  _1654 = f16tof32(((uint)((uint)((uint)(_1648)) >> 16)));
  _1657 = frac((_1639 * 9.430594e-06f) + 1.118034f);
  _1665 = max((_1636 - (_249 * ((_1657 * (f16tof32(((uint)(_1650 & 65535))) + -0.01f)) + 0.01f))), 0.0f);
  _1670 = (frac((_1639 * 1.1518694e-05f) + 1.2548776f) * 2.0f) + -1.0f;
  _1675 = (frac((_1639 * 8.695205e-06f) + 1.0698402f) * 2.0f) + -1.0f;
  _1677 = rsqrt(dot(float3(_1670, -1.0f, _1675), float3(_1670, -1.0f, _1675)));  // [sem: invLength]
  _1678 = _1670 * _1677;
  _1680 = -0.0f - (_1675 * _1677);
  _1682 = rsqrt(dot(float3(_1680, 0.0f, _1678), float3(_1680, 0.0f, _1678)));  // [sem: invLength]
  _1683 = _1682 * _1680;
  _1684 = _1678 * _1682;
  _1705 = ((_1657 * 3.1415927f) * max(f16tof32(((uint)((uint)((uint)(_1650)) >> 16))), 0.0f)) * sin((_1665 * (_1652 + (_1657 * (f16tof32(((uint)(_1649 & 65535))) - _1652)))) / ((_1665 * 0.2f) + (_1654 + (_1657 * (f16tof32(((uint)(_1648 & 65535))) - _1654)))));
  _1706 = dot(float3(_1683, 0.0f, _1684), float3(_1637, _1636, _1635));
  _1707 = _1683 * _1706;
  _1708 = _1684 * _1706;
  _1709 = _1637 - _1707;
  _1710 = _1635 - _1708;
  _1711 = sin(_1705);
  _1712 = cos(_1705);
  _1713 = _1636 * _1711;
  _1719 = (_1636 * _1712) + (_1711 * ((_1683 * _1710) - (_1684 * _1709)));
  _1723 = (_1709 * _1712) + (_1707 + (_1684 * _1713));
  _1727 = _1708 + ((_1710 * _1712) - (_1683 * _1713));
  _1728 = dot(float3(_1683, 0.0f, _1684), float3(_1634, _1633, _1632));
  _1729 = _1728 * _1683;
  _1730 = _1728 * _1684;
  _1731 = _1634 - _1729;
  _1732 = _1632 - _1730;
  _1733 = _1711 * _1633;
  _1739 = (((_1732 * _1683) - (_1731 * _1684)) * _1711) + (_1712 * _1633);
  _1743 = (_1729 + (_1733 * _1684)) + (_1731 * _1712);
  _1747 = ((_1732 * _1712) - (_1733 * _1683)) + _1730;
  _1750 = mad(_243, _1727, mad(_141, _1719, (_136 * _1723)));
  _1753 = mad(_245, _1727, mad(_142, _1719, (_137 * _1723)));
  _1756 = mad(_247, _1727, mad(_143, _1719, (_138 * _1723)));
  _1758 = _201 + (_151 * _1750);
  _1760 = _191 + (_151 * _1753);
  _1762 = _210 + (_151 * _1756);
  _1765 = (_170 * _166) - (_171 * _165);
  _1768 = (_171 * _164) - (_169 * _166);
  _1771 = (_169 * _165) - (_170 * _164);
  _1773 = rsqrt(dot(float3(_1765, _1768, _1771), float3(_1765, _1768, _1771)));  // [sem: invLength]
  _1776 = ((uint)((uint)(asint(_173))) >> 3) & 1;
  if (_1776 == 0) {
    _1779 = asint(_167);
    _1784 = ((int)((int)((uint)((uint)(_1779)) << 16)) >> 16);
    _1785 = ((int)(_1779) >> 16);
  } else {
    _1784 = 0;
    _1785 = 0;
  }
  _1802 = ((_175 - _viewTileRelativePosPrev.x) + (mad((-0.0f - (_1765 * _1773)), _1747, mad(_169, _1739, (_1743 * _164))) * _178)) + ((float)((int)((int)(((float)((int)((int)((uint)((uint)(_1785)) - (uint)((uint)(_viewTileIndexPrev.x)))))) * 1000.0f))));
  _1811 = (mad((-0.0f - (_1768 * _1773)), _1747, mad(_170, _1739, (_1743 * _165))) * _178) + (_176 - _viewTileRelativePosPrev.y);
  _1827 = ((_177 - _viewTileRelativePosPrev.z) + ((float)((int)((int)(((float)((int)((int)((uint)((uint)(_1784)) - (uint)((uint)(_viewTileIndexPrev.y)))))) * 1000.0f))))) + (mad((-0.0f - (_1771 * _1773)), _1747, mad(_171, _1739, (_1743 * _166))) * _178);
  _1830 = mad(_243, _1629, mad(_141, _1630, (_1631 * _136)));
  _1833 = mad(_245, _1629, mad(_142, _1630, (_1631 * _137)));
  _1836 = mad(_247, _1629, mad(_143, _1630, (_1631 * _138)));
  if (_122 && (_364 < 64.0f)) {
    if (_treeParams.z > 0.0f) {
      _1846 = mad(_243, _108, mad(_141, _112, (_107 * _136)));
      _1849 = mad(_245, _108, mad(_142, _112, (_107 * _137)));
      _1852 = mad(_247, _108, mad(_143, _112, (_107 * _138)));
      _1854 = _201 + (_151 * _1846);
      _1856 = _191 + (_151 * _1849);
      _1858 = _210 + (_151 * _1852);
      if (_364 < 48.0f) {
        _1865 = __3__37__0__0__g_indirectDrawParametersBuffer[_drawIndex]._bindlessMaterialParametersViewIndex;
        if (!(((BindlessParameters_MaterialOverrideParametersTree[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_1865 < (uint)170000), _1865, 0))) + (uint)(0))))].BindlessParameters_MaterialOverrideParametersTree._materialInfo) & 512) == 0)) {
          _1880 = saturate(_treeParams.y);  // [sem: expr_sat]
        } else {
          _1880 = 1.0f;  // [sem: expr_sat]
        }
        _1883 = select(((_64 & 16711680) == 65536), 2.0f, _1880);
        _1885 = f16tof32(((uint)(_64 & 65535)));
        if ((_152 & 2) == 0) {
          if ((uint)((int)(_120 & 15) + (int)(-1)) < (uint)2) {
            _1896 = (frac(_110 * 0.0625f) * 2.0f) + -1.0f;
            _1899 = (frac(_110) * 2.0f) + -1.0f;
            _1903 = (frac(_110 * 16.0f) * 2.0f) + -1.0f;
            _1905 = rsqrt(dot(float3(_1896, _1899, _1903), float3(_1896, _1899, _1903)));  // [sem: invLength]
            _1906 = _1896 * _1905;
            _1907 = _1899 * _1905;
            _1908 = _1903 * _1905;
            _1911 = mad(_243, _1907, mad(_141, _1908, (_136 * _1906)));
            _1914 = mad(_245, _1907, mad(_142, _1908, (_137 * _1906)));
            _1917 = mad(_247, _1907, mad(_143, _1908, (_138 * _1906)));
            _1919 = rsqrt(dot(float3(_1911, _1914, _1917), float3(_1911, _1914, _1917)));  // [sem: invLength]
            _1920 = _1911 * _1919;
            _1921 = _1914 * _1919;
            _1922 = _1917 * _1919;
            _1927 = _renderingOriginPos.y - _viewPos.y;
            if (((_1927 + -2.0f) < _1856) && (_renderingOriginPos.w == 0.0f)) {
              _1937 = ((_1927 + 1.0f) > _1856);
            } else {
              _1937 = false;
            }
            _1938 = (int)(uint)(_1937);
            _1943 = _1854 + (_viewPos.x - _currSceneTrailHeight._trailUpdatedPosition.x);
            _1946 = _1856 + (_viewPos.y - _currSceneTrailHeight._trailUpdatedPosition.y);
            _1950 = _1858 + (_viewPos.z - _currSceneTrailHeight._trailUpdatedPosition.z);
            _1962 = mad((_currSceneTrailHeight._trailViewProjTexScale[0].z), _1950, mad((_currSceneTrailHeight._trailViewProjTexScale[0].y), _1946, ((_currSceneTrailHeight._trailViewProjTexScale[0].x) * _1943))) + (_currSceneTrailHeight._trailViewProjTexScale[0].w);
            _1970 = (_currSceneTrailHeight._trailViewProjTexScale[1].w) + mad((_currSceneTrailHeight._trailViewProjTexScale[1].z), _1950, mad((_currSceneTrailHeight._trailViewProjTexScale[1].y), _1946, ((_currSceneTrailHeight._trailViewProjTexScale[1].x) * _1943)));
            _1972 = (saturate(_1962) == _1962);
            if (_1972) {
              [branch]
              if (saturate(_1970) == _1970) {
                // [sem: _3__36__0__0__g_textureTrailHeight_sampleLod]
                _1979 = __3__36__0__0__g_textureTrailHeight.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_1962, _1970), 0.0f);
                if (_1979.x < 1.0f) {
                  _2011 = ((int)(uint)((int)((((_currSceneTrailHeight._trailUpdatedPosition.y + -1.0f) - _viewPos.y) + ((mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].z), _1979.x, mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].y), _1970, (_1962 * (_currSceneTrailHeight._trailInvViewProjTexScale[1].x)))) + (_currSceneTrailHeight._trailInvViewProjTexScale[1].w)) / ((_currSceneTrailHeight._trailInvViewProjTexScale[3].w) + mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].z), _1979.x, mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].y), _1970, (_1962 * (_currSceneTrailHeight._trailInvViewProjTexScale[3].x))))))) < _1856)));
                } else {
                  _2011 = 0;
                }
                if ((_1979.y < 1.0f) && (_1979.y > 0.0f)) {
                  _2044 = (((int)(uint)((int)((((_currSceneTrailHeight._trailUpdatedPosition.y + 0.2f) - _viewPos.y) + ((mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].z), _1979.y, mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].y), _1970, (_1962 * (_currSceneTrailHeight._trailInvViewProjTexScale[1].x)))) + (_currSceneTrailHeight._trailInvViewProjTexScale[1].w)) / ((_currSceneTrailHeight._trailInvViewProjTexScale[3].w) + mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].z), _1979.y, mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].y), _1970, (_1962 * (_currSceneTrailHeight._trailInvViewProjTexScale[3].x))))))) > _1856))) & _2011);
                } else {
                  _2044 = 0;
                }
                _2047 = ((int)(_2044) | (int)(_1938));
              } else {
                _2047 = _1938;
              }
            } else {
              _2047 = _1938;
            }
            if (!(_2047 == 0)) {
              _2053 = (_1854 + _viewPos.x) - _currSceneTrailInteraction._trailUpdatedPosition.x;
              _2056 = (_1856 + _viewPos.y) - _currSceneTrailInteraction._trailUpdatedPosition.y;
              _2059 = (_1858 + _viewPos.z) - _currSceneTrailInteraction._trailUpdatedPosition.z;
              _2071 = mad((_currSceneTrailInteraction._trailViewProjTexScale[0].z), _2059, mad((_currSceneTrailInteraction._trailViewProjTexScale[0].y), _2056, (_2053 * (_currSceneTrailInteraction._trailViewProjTexScale[0].x)))) + (_currSceneTrailInteraction._trailViewProjTexScale[0].w);
              _2079 = (_currSceneTrailInteraction._trailViewProjTexScale[1].w) + mad((_currSceneTrailInteraction._trailViewProjTexScale[1].z), _2059, mad((_currSceneTrailInteraction._trailViewProjTexScale[1].y), _2056, (_2053 * (_currSceneTrailInteraction._trailViewProjTexScale[1].x))));
              if (saturate(_2071) == _2071) {
                [branch]
                if (saturate(_2079) == _2079) {
                  // [sem: _3__36__0__0__g_textureTrailInteraction_sampleLod]
                  _2088 = __3__36__0__0__g_textureTrailInteraction.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_2071, _2079), 0.0f);
                  _2093 = (_2088.x * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteraction_sampleLod_derived]
                  _2095 = (_2088.y * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteraction_sampleLod_derived]
                  _2097 = rsqrt(dot(float2(_2093, _2095), float2(_2093, _2095)));  // [sem: invLength]
                  _2098 = _2097 * _2093;
                  _2099 = _2097 * _2095;
                  _2100 = saturate(_2088.w);  // [sem: expr_sat]
                  if (_2100 > 0.0f) {
                    _2106 = sin(_time.x * 7.0f);
                    _2108 = -0.0f - (_1921 * _2099);
                    _2111 = (_1920 * _2099) - (_1922 * _2098);
                    _2112 = _1921 * _2098;
                    _2114 = rsqrt(dot(float3(_2108, _2111, _2112), float3(_2108, _2111, _2112)));  // [sem: invLength]
                    _2115 = _2114 * _2108;
                    _2116 = _2111 * _2114;
                    _2117 = _2112 * _2114;
                    _2123 = ((_1883 * 0.9424779f) * _2100) * (_2106 + (_2100 * (1.0f - _2106)));
                    _2130 = dot(float3(_2115, _2116, _2117), float3((_151 * (_1750 - _1846)), (_151 * (_1753 - _1849)), (_151 * (_1756 - _1852))));
                    _2132 = _1854 + (_2115 * _2130);
                    _2134 = _1856 + (_2116 * _2130);
                    _2136 = _1858 + (_2117 * _2130);
                    _2137 = _1758 - _2132;
                    _2138 = _1760 - _2134;
                    _2139 = _1762 - _2136;
                    _2140 = sin(_2123);
                    _2141 = cos(_2123);
                    _2167 = (((_2136 - _1762) + (_2141 * _2139)) + (_2140 * ((_2116 * _2137) - (_2115 * _2138))));
                    _2168 = (((_2134 - _1760) + (_2141 * _2138)) + (_2140 * ((_2115 * _2139) - (_2117 * _2137))));
                    _2169 = (((_2132 - _1758) + (_2141 * _2137)) + (_2140 * ((_2117 * _2138) - (_2116 * _2139))));
                  } else {
                    _2167 = 0.0f;
                    _2168 = 0.0f;
                    _2169 = 0.0f;
                  }
                } else {
                  _2167 = 0.0f;
                  _2168 = 0.0f;
                  _2169 = 0.0f;
                }
              } else {
                _2167 = 0.0f;
                _2168 = 0.0f;
                _2169 = 0.0f;
              }
            } else {
              _2167 = 0.0f;
              _2168 = 0.0f;
              _2169 = 0.0f;
            }
            if (_1972) {
              [branch]
              if (saturate(_1970) == _1970) {
                // [sem: _3__36__0__0__g_textureTrailHeight_sampleLod]
                _2176 = __3__36__0__0__g_textureTrailHeight.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_1962, _1970), 0.0f);
                if (_2176.x < 1.0f) {
                  _2208 = ((int)(uint)((int)((((-1.0f - _viewPos.y) + _currSceneTrailHeight._trailUpdatedPosition.y) + (((_currSceneTrailHeight._trailInvViewProjTexScale[1].w) + mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].z), _2176.x, mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].y), _1970, ((_currSceneTrailHeight._trailInvViewProjTexScale[1].x) * _1962)))) / (mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].z), _2176.x, mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].y), _1970, ((_currSceneTrailHeight._trailInvViewProjTexScale[3].x) * _1962))) + (_currSceneTrailHeight._trailInvViewProjTexScale[3].w)))) < _1856)));
                } else {
                  _2208 = 0;
                }
                if ((_2176.y < 1.0f) && (_2176.y > 0.0f)) {
                  _2241 = (((int)(uint)((int)((((0.2f - _viewPos.y) + _currSceneTrailHeight._trailUpdatedPosition.y) + (((_currSceneTrailHeight._trailInvViewProjTexScale[1].w) + mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].z), _2176.y, mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].y), _1970, ((_currSceneTrailHeight._trailInvViewProjTexScale[1].x) * _1962)))) / (mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].z), _2176.y, mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].y), _1970, ((_currSceneTrailHeight._trailInvViewProjTexScale[3].x) * _1962))) + (_currSceneTrailHeight._trailInvViewProjTexScale[3].w)))) > _1856))) & _2208);
                } else {
                  _2241 = 0;
                }
                _2244 = ((int)(_2241) | (int)(_1938));
              } else {
                _2244 = _1938;
              }
            } else {
              _2244 = _1938;
            }
            if (!(_2244 == 0)) {
              _2250 = (_viewPos.x + _1854) - _prevSceneTrailInteraction._trailUpdatedPosition.x;
              _2253 = (_viewPos.y + _1856) - _prevSceneTrailInteraction._trailUpdatedPosition.y;
              _2256 = (_viewPos.z + _1858) - _prevSceneTrailInteraction._trailUpdatedPosition.z;
              _2268 = (_prevSceneTrailInteraction._trailViewProjTexScale[0].w) + mad((_prevSceneTrailInteraction._trailViewProjTexScale[0].z), _2256, mad((_prevSceneTrailInteraction._trailViewProjTexScale[0].y), _2253, ((_prevSceneTrailInteraction._trailViewProjTexScale[0].x) * _2250)));
              _2276 = mad((_prevSceneTrailInteraction._trailViewProjTexScale[1].z), _2256, mad((_prevSceneTrailInteraction._trailViewProjTexScale[1].y), _2253, ((_prevSceneTrailInteraction._trailViewProjTexScale[1].x) * _2250))) + (_prevSceneTrailInteraction._trailViewProjTexScale[1].w);
              if (saturate(_2268) == _2268) {
                [branch]
                if (saturate(_2276) == _2276) {
                  // [sem: _3__36__0__0__g_textureTrailInteractionPrev_sampleLod]
                  _2285 = __3__36__0__0__g_textureTrailInteractionPrev.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_2268, _2276), 0.0f);
                  _2290 = (_2285.x * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteractionPrev_sampleLod_derived]
                  _2292 = (_2285.y * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteractionPrev_sampleLod_derived]
                  _2294 = rsqrt(dot(float2(_2290, _2292), float2(_2290, _2292)));  // [sem: invLength]
                  _2295 = _2290 * _2294;
                  _2296 = _2292 * _2294;
                  _2297 = saturate(_2285.w);  // [sem: expr_sat]
                  if (_2297 > 0.0f) {
                    _2303 = sin(_time.y * 7.0f);
                    _2305 = -0.0f - (_1921 * _2296);
                    _2308 = (_2296 * _1920) - (_2295 * _1922);
                    _2309 = _2295 * _1921;
                    _2311 = rsqrt(dot(float3(_2305, _2308, _2309), float3(_2305, _2308, _2309)));  // [sem: invLength]
                    _2312 = _2311 * _2305;
                    _2313 = _2311 * _2308;
                    _2314 = _2311 * _2309;
                    _2320 = ((_1883 * 0.9424779f) * _2297) * (lerp(_2303, 1.0f, _2297));
                    _2327 = dot(float3(_2312, _2313, _2314), float3(((_1750 - _1846) * _151), ((_1753 - _1849) * _151), ((_1756 - _1852) * _151)));
                    _2329 = (_2312 * _2327) + _1854;
                    _2331 = (_2313 * _2327) + _1856;
                    _2333 = (_2314 * _2327) + _1858;
                    _2334 = _1758 - _2329;
                    _2335 = _1760 - _2331;
                    _2336 = _1762 - _2333;
                    _2337 = sin(_2320);
                    _2338 = cos(_2320);
                    _2364 = (((_2333 - _1762) + (_2336 * _2338)) + (((_2334 * _2313) - (_2335 * _2312)) * _2337));
                    _2365 = (((_2331 - _1760) + (_2335 * _2338)) + (((_2336 * _2312) - (_2334 * _2314)) * _2337));
                    _2366 = (((_2329 - _1758) + (_2334 * _2338)) + (((_2335 * _2314) - (_2336 * _2313)) * _2337));
                  } else {
                    _2364 = 0.0f;
                    _2365 = 0.0f;
                    _2366 = 0.0f;
                  }
                } else {
                  _2364 = 0.0f;
                  _2365 = 0.0f;
                  _2366 = 0.0f;
                }
              } else {
                _2364 = 0.0f;
                _2365 = 0.0f;
                _2366 = 0.0f;
              }
            } else {
              _2364 = 0.0f;
              _2365 = 0.0f;
              _2366 = 0.0f;
            }
            _2380 = (_1762 + (_370 * _2167));
            _2381 = (_1760 + (_370 * _2168));
            _2382 = (_1758 + (_370 * _2169));
            _2383 = ((_2364 * _370) + _1827);
            _2384 = ((_2365 * _370) + _1811);
            _2385 = ((_2366 * _370) + _1802);
          } else {
            _2380 = _1762;
            _2381 = _1760;
            _2382 = _1758;
            _2383 = _1827;
            _2384 = _1811;
            _2385 = _1802;
          }
          if ((_152 & 5) == 0) {
            _2390 = rsqrt(dot(float3(_141, _142, _143), float3(_141, _142, _143)));  // [sem: invLength]
            _2391 = _141 * _2390;
            _2392 = _142 * _2390;
            _2393 = _143 * _2390;
            _2399 = _201 + (_viewPos.x - _currSceneTrailHeight._trailUpdatedPosition.x);
            _2403 = _191 + (_viewPos.y - _currSceneTrailHeight._trailUpdatedPosition.y);
            _2407 = _210 + (_viewPos.z - _currSceneTrailHeight._trailUpdatedPosition.z);
            _2419 = mad((_currSceneTrailHeight._trailViewProjTexScale[0].z), _2407, mad((_currSceneTrailHeight._trailViewProjTexScale[0].y), _2403, ((_currSceneTrailHeight._trailViewProjTexScale[0].x) * _2399))) + (_currSceneTrailHeight._trailViewProjTexScale[0].w);
            _2427 = (_currSceneTrailHeight._trailViewProjTexScale[1].w) + mad((_currSceneTrailHeight._trailViewProjTexScale[1].z), _2407, mad((_currSceneTrailHeight._trailViewProjTexScale[1].y), _2403, ((_currSceneTrailHeight._trailViewProjTexScale[1].x) * _2399)));
            __3__36__0__0__g_textureTrailHeight.GetDimensions(_2429.x, _2429.y);
            _2433 = (saturate(_2419) == _2419);
            if (!(_2433) || ((_2433) && (!(saturate(_2427) == _2427))) || (((_2433) && (saturate(_2427) == _2427)) && (!(_2419 > (1.0f / ((float)((int)((int)(_2429.x)))))))) || ((((_2433) && (saturate(_2427) == _2427)) && (_2419 > (1.0f / ((float)((int)((int)(_2429.x))))))) && (!(_2427 > (1.0f / ((float)((int)((int)(_2429.y))))))))) {
              _2449 = (_201 + _viewPos.x) - _currSceneTrailInteraction._trailUpdatedPosition.x;
              _2452 = (_191 + _viewPos.y) - _currSceneTrailInteraction._trailUpdatedPosition.y;
              _2455 = (_210 + _viewPos.z) - _currSceneTrailInteraction._trailUpdatedPosition.z;
              _2467 = mad((_currSceneTrailInteraction._trailViewProjTexScale[0].z), _2455, mad((_currSceneTrailInteraction._trailViewProjTexScale[0].y), _2452, (_2449 * (_currSceneTrailInteraction._trailViewProjTexScale[0].x)))) + (_currSceneTrailInteraction._trailViewProjTexScale[0].w);
              _2475 = (_currSceneTrailInteraction._trailViewProjTexScale[1].w) + mad((_currSceneTrailInteraction._trailViewProjTexScale[1].z), _2455, mad((_currSceneTrailInteraction._trailViewProjTexScale[1].y), _2452, (_2449 * (_currSceneTrailInteraction._trailViewProjTexScale[1].x))));
              if (saturate(_2467) == _2467) {
                [branch]
                if (saturate(_2475) == _2475) {
                  // [sem: _3__36__0__0__g_textureTrailInteraction_sampleLod]
                  _2484 = __3__36__0__0__g_textureTrailInteraction.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_2467, _2475), 0.0f);
                  _2489 = (_2484.x * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteraction_sampleLod_derived]
                  _2491 = (_2484.y * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteraction_sampleLod_derived]
                  _2493 = rsqrt(dot(float2(_2489, _2491), float2(_2489, _2491)));  // [sem: invLength]
                  _2494 = _2493 * _2489;
                  _2495 = _2493 * _2491;
                  _2496 = saturate(_2484.w);  // [sem: expr_sat]
                  if (_2496 > 0.0f) {
                    _2500 = _2381 - _191;
                    _2504 = sin(_time.x * 7.0f);
                    _2506 = -0.0f - (_2392 * _2495);
                    _2509 = (_2391 * _2495) - (_2393 * _2494);
                    _2510 = _2392 * _2494;
                    _2512 = rsqrt(dot(float3(_2506, _2509, _2510), float3(_2506, _2509, _2510)));  // [sem: invLength]
                    _2513 = _2512 * _2506;
                    _2514 = _2509 * _2512;
                    _2515 = _2510 * _2512;
                    _2537 = (_2504 + (_2496 * (1.0f - _2504))) * (((((_1885 * 0.9424779f) * _2496) * (1.0f / exp2(log2(max((_251 + -1.5f), 1.0f)) * 1.8f))) * max((_2484.z * 2.0f), 1.0f)) * saturate((abs(_2500) * 0.25f) - (_251 * 0.03f)));
                    _2540 = dot(float3(_2513, _2514, _2515), float3((_2382 - _201), _2500, (_2380 - _210)));
                    _2542 = _201 + (_2513 * _2540);
                    _2544 = _191 + (_2514 * _2540);
                    _2546 = _210 + (_2515 * _2540);
                    _2547 = _2382 - _2542;
                    _2548 = _2381 - _2544;
                    _2549 = _2380 - _2546;
                    _2550 = sin(_2537);
                    _2551 = cos(_2537);
                    _2553 = cos(_time.x * 10.0f);
                    _2558 = _2553 + (_2496 * (cos(_time.x * 2.0f) - _2553));
                    _2562 = (frac(_114 * 0.0625f) * 2.0f) + -1.0f;
                    _2565 = (frac(_114) * 2.0f) + -1.0f;
                    _2569 = (frac(_114 * 16.0f) * 2.0f) + -1.0f;
                    _2573 = (_113 * _2496) * (0.6f - (_2496 * 0.40000004f));
                    // [sem: expr_sat]
                    _2578 = saturate(2.0f / _251) * rsqrt(dot(float3(_2562, _2565, _2569), float3(_2562, _2565, _2569)));
                    _2579 = _2573 * _2558;
                    _2854 = ((((_2546 - _2380) + (_2551 * _2549)) + (_2550 * ((_2514 * _2547) - (_2513 * _2548)))) + (_2579 * (_2565 * _2578)));
                    _2855 = ((((_2544 - _2381) + (_2551 * _2548)) + (_2550 * ((_2513 * _2549) - (_2515 * _2547)))) + (_2569 * (_2579 * _2578)));
                    _2856 = ((((_2542 - _2382) + (_2551 * _2547)) + (_2550 * ((_2515 * _2548) - (_2514 * _2549)))) + (_2558 * (_2562 * (_2573 * _2578))));
                  } else {
                    _2854 = 0.0f;
                    _2855 = 0.0f;
                    _2856 = 0.0f;
                  }
                } else {
                  _2854 = 0.0f;
                  _2855 = 0.0f;
                  _2856 = 0.0f;
                }
              } else {
                _2854 = 0.0f;
                _2855 = 0.0f;
                _2856 = 0.0f;
              }
            } else {
              // [sem: _3__36__0__0__g_textureTrailHeight_sampleLod]
              _2616 = __3__36__0__0__g_textureTrailHeight.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_2419, _2427), 0.0f);
              if (_2616.x < 1.0f) {
                _2649 = ((int)(uint)((int)((((_currSceneTrailHeight._trailUpdatedPosition.y + -1.0f) - _viewPos.y) + ((mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].z), _2616.x, mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].y), _2427, (_2419 * (_currSceneTrailHeight._trailInvViewProjTexScale[1].x)))) + (_currSceneTrailHeight._trailInvViewProjTexScale[1].w)) / ((_currSceneTrailHeight._trailInvViewProjTexScale[3].w) + mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].z), _2616.x, mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].y), _2427, (_2419 * (_currSceneTrailHeight._trailInvViewProjTexScale[3].x))))))) < (_191 + 1.0f))));
              } else {
                _2649 = 1;
              }
              if ((_2616.y < 1.0f) && (_2616.y > 0.0f)) {
                _2683 = (((int)(uint)((int)((((_currSceneTrailHeight._trailUpdatedPosition.y + 0.2f) - _viewPos.y) + ((mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].z), _2616.y, mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].y), _2427, (_2419 * (_currSceneTrailHeight._trailInvViewProjTexScale[1].x)))) + (_currSceneTrailHeight._trailInvViewProjTexScale[1].w)) / ((_currSceneTrailHeight._trailInvViewProjTexScale[3].w) + mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].z), _2616.y, mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].y), _2427, (_2419 * (_currSceneTrailHeight._trailInvViewProjTexScale[3].x))))))) > (_191 + 1.0f)))) & _2649);
              } else {
                _2683 = _2649;
              }
              if (!(_2683 == 0)) {
                _2689 = (_201 + _viewPos.x) - _currSceneTrailInteraction._trailUpdatedPosition.x;
                _2692 = (_191 + _viewPos.y) - _currSceneTrailInteraction._trailUpdatedPosition.y;
                _2695 = (_210 + _viewPos.z) - _currSceneTrailInteraction._trailUpdatedPosition.z;
                _2707 = mad((_currSceneTrailInteraction._trailViewProjTexScale[0].z), _2695, mad((_currSceneTrailInteraction._trailViewProjTexScale[0].y), _2692, (_2689 * (_currSceneTrailInteraction._trailViewProjTexScale[0].x)))) + (_currSceneTrailInteraction._trailViewProjTexScale[0].w);
                _2715 = (_currSceneTrailInteraction._trailViewProjTexScale[1].w) + mad((_currSceneTrailInteraction._trailViewProjTexScale[1].z), _2695, mad((_currSceneTrailInteraction._trailViewProjTexScale[1].y), _2692, (_2689 * (_currSceneTrailInteraction._trailViewProjTexScale[1].x))));
                if (saturate(_2707) == _2707) {
                  [branch]
                  if (saturate(_2715) == _2715) {
                    // [sem: _3__36__0__0__g_textureTrailInteraction_sampleLod]
                    _2723 = __3__36__0__0__g_textureTrailInteraction.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_2707, _2715), 0.0f);
                    _2728 = (_2723.x * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteraction_sampleLod_derived]
                    _2730 = (_2723.y * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteraction_sampleLod_derived]
                    _2732 = rsqrt(dot(float2(_2728, _2730), float2(_2728, _2730)));  // [sem: invLength]
                    _2733 = _2732 * _2728;
                    _2734 = _2732 * _2730;
                    _2735 = saturate(_2723.w);  // [sem: expr_sat]
                    if (_2735 > 0.0f) {
                      _2739 = _2381 - _191;
                      _2743 = sin(_time.x * 7.0f);
                      _2745 = -0.0f - (_2392 * _2734);
                      _2748 = (_2391 * _2734) - (_2393 * _2733);
                      _2749 = _2392 * _2733;
                      _2751 = rsqrt(dot(float3(_2745, _2748, _2749), float3(_2745, _2748, _2749)));  // [sem: invLength]
                      _2752 = _2751 * _2745;
                      _2753 = _2748 * _2751;
                      _2754 = _2749 * _2751;
                      _2776 = (_2743 + (_2735 * (1.0f - _2743))) * (((((_1885 * 0.9424779f) * _2735) * (1.0f / exp2(log2(max((_251 + -1.5f), 1.0f)) * 1.8f))) * max((_2723.z * 2.0f), 1.0f)) * saturate((abs(_2739) * 0.25f) - (_251 * 0.03f)));
                      _2779 = dot(float3(_2752, _2753, _2754), float3((_2382 - _201), _2739, (_2380 - _210)));
                      _2781 = _201 + (_2752 * _2779);
                      _2783 = _191 + (_2753 * _2779);
                      _2785 = _210 + (_2754 * _2779);
                      _2786 = _2382 - _2781;
                      _2787 = _2381 - _2783;
                      _2788 = _2380 - _2785;
                      _2789 = sin(_2776);
                      _2790 = cos(_2776);
                      _2792 = cos(_time.x * 10.0f);
                      _2797 = _2792 + (_2735 * (cos(_time.x * 2.0f) - _2792));
                      _2801 = (frac(_114 * 0.0625f) * 2.0f) + -1.0f;
                      _2804 = (frac(_114) * 2.0f) + -1.0f;
                      _2808 = (frac(_114 * 16.0f) * 2.0f) + -1.0f;
                      _2812 = (_113 * _2735) * (0.6f - (_2735 * 0.40000004f));
                      // [sem: expr_sat]
                      _2817 = saturate(2.0f / _251) * rsqrt(dot(float3(_2801, _2804, _2808), float3(_2801, _2804, _2808)));
                      _2818 = _2812 * _2797;
                      _2854 = ((((_2785 - _2380) + (_2790 * _2788)) + (_2789 * ((_2753 * _2786) - (_2752 * _2787)))) + (_2818 * (_2804 * _2817)));
                      _2855 = ((((_2783 - _2381) + (_2790 * _2787)) + (_2789 * ((_2752 * _2788) - (_2754 * _2786)))) + (_2808 * (_2818 * _2817)));
                      _2856 = ((((_2781 - _2382) + (_2790 * _2786)) + (_2789 * ((_2754 * _2787) - (_2753 * _2788)))) + (_2797 * (_2801 * (_2812 * _2817))));
                    } else {
                      _2854 = 0.0f;
                      _2855 = 0.0f;
                      _2856 = 0.0f;
                    }
                  } else {
                    _2854 = 0.0f;
                    _2855 = 0.0f;
                    _2856 = 0.0f;
                  }
                } else {
                  _2854 = 0.0f;
                  _2855 = 0.0f;
                  _2856 = 0.0f;
                }
              } else {
                _2854 = 0.0f;
                _2855 = 0.0f;
                _2856 = 0.0f;
              }
            }
            if (!(_2433) || ((_2433) && (!(saturate(_2427) == _2427))) || (((_2433) && (saturate(_2427) == _2427)) && (!(_2419 > (1.0f / ((float)((int)((int)(_2429.x)))))))) || ((((_2433) && (saturate(_2427) == _2427)) && (_2419 > (1.0f / ((float)((int)((int)(_2429.x))))))) && (!(_2427 > (1.0f / ((float)((int)((int)(_2429.y))))))))) {
              _2872 = (_viewPos.x + _201) - _prevSceneTrailInteraction._trailUpdatedPosition.x;
              _2875 = (_viewPos.y + _191) - _prevSceneTrailInteraction._trailUpdatedPosition.y;
              _2878 = (_viewPos.z + _210) - _prevSceneTrailInteraction._trailUpdatedPosition.z;
              _2890 = (_prevSceneTrailInteraction._trailViewProjTexScale[0].w) + mad((_prevSceneTrailInteraction._trailViewProjTexScale[0].z), _2878, mad((_prevSceneTrailInteraction._trailViewProjTexScale[0].y), _2875, ((_prevSceneTrailInteraction._trailViewProjTexScale[0].x) * _2872)));
              _2898 = mad((_prevSceneTrailInteraction._trailViewProjTexScale[1].z), _2878, mad((_prevSceneTrailInteraction._trailViewProjTexScale[1].y), _2875, ((_prevSceneTrailInteraction._trailViewProjTexScale[1].x) * _2872))) + (_prevSceneTrailInteraction._trailViewProjTexScale[1].w);
              if (saturate(_2890) == _2890) {
                [branch]
                if (saturate(_2898) == _2898) {
                  // [sem: _3__36__0__0__g_textureTrailInteractionPrev_sampleLod]
                  _2907 = __3__36__0__0__g_textureTrailInteractionPrev.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_2890, _2898), 0.0f);
                  _2912 = (_2907.x * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteractionPrev_sampleLod_derived]
                  _2914 = (_2907.y * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteractionPrev_sampleLod_derived]
                  _2916 = rsqrt(dot(float2(_2912, _2914), float2(_2912, _2914)));  // [sem: invLength]
                  _2917 = _2912 * _2916;
                  _2918 = _2914 * _2916;
                  _2919 = saturate(_2907.w);  // [sem: expr_sat]
                  if (_2919 > 0.0f) {
                    _2923 = _2381 - _191;
                    _2927 = sin(_time.y * 7.0f);
                    _2929 = -0.0f - (_2392 * _2918);
                    _2932 = (_2918 * _2391) - (_2917 * _2393);
                    _2933 = _2917 * _2392;
                    _2935 = rsqrt(dot(float3(_2929, _2932, _2933), float3(_2929, _2932, _2933)));  // [sem: invLength]
                    _2936 = _2935 * _2929;
                    _2937 = _2935 * _2932;
                    _2938 = _2935 * _2933;
                    _2960 = (((((_1885 * 0.9424779f) * _2919) * (lerp(_2927, 1.0f, _2919))) * (1.0f / exp2(log2(max((_251 + -1.5f), 1.0f)) * 1.8f))) * max((_2907.z * 2.0f), 1.0f)) * saturate((abs(_2923) * 0.25f) - (_251 * 0.03f));
                    _2963 = dot(float3(_2936, _2937, _2938), float3((_2382 - _201), _2923, (_2380 - _210)));
                    _2965 = (_2963 * _2936) + _201;
                    _2967 = (_2963 * _2937) + _191;
                    _2969 = (_2963 * _2938) + _210;
                    _2970 = _2382 - _2965;
                    _2971 = _2381 - _2967;
                    _2972 = _2380 - _2969;
                    _2973 = sin(_2960);
                    _2974 = cos(_2960);
                    _2976 = cos(_time.y * 10.0f);
                    _2985 = (frac(_114 * 0.0625f) * 2.0f) + -1.0f;
                    _2988 = (frac(_114) * 2.0f) + -1.0f;
                    _2992 = (frac(_114 * 16.0f) * 2.0f) + -1.0f;
                    _3011 = (rsqrt(dot(float3(_2985, _2988, _2992), float3(_2985, _2988, _2992))) * saturate(2.0f / _251)) * (((_2919 * _113) * (0.6f - (_2919 * 0.40000004f))) * (((cos(_time.y * 2.0f) - _2976) * _2919) + _2976));
                    _3271 = ((((_2969 - _2380) + (_2972 * _2974)) + (((_2970 * _2937) - (_2971 * _2936)) * _2973)) + (_3011 * _2988));
                    _3272 = ((((_2967 - _2381) + (_2971 * _2974)) + (((_2972 * _2936) - (_2970 * _2938)) * _2973)) + (_3011 * _2992));
                    _3273 = ((((_2965 - _2382) + (_2970 * _2974)) + (((_2971 * _2938) - (_2972 * _2937)) * _2973)) + (_3011 * _2985));
                  } else {
                    _3271 = 0.0f;
                    _3272 = 0.0f;
                    _3273 = 0.0f;
                  }
                } else {
                  _3271 = 0.0f;
                  _3272 = 0.0f;
                  _3273 = 0.0f;
                }
              } else {
                _3271 = 0.0f;
                _3272 = 0.0f;
                _3273 = 0.0f;
              }
            } else {
              // [sem: _3__36__0__0__g_textureTrailHeight_sampleLod]
              _3036 = __3__36__0__0__g_textureTrailHeight.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_2419, _2427), 0.0f);
              if (_3036.x < 1.0f) {
                _3069 = ((int)(uint)((int)((((-1.0f - _viewPos.y) + _currSceneTrailHeight._trailUpdatedPosition.y) + (((_currSceneTrailHeight._trailInvViewProjTexScale[1].w) + mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].z), _3036.x, mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].y), _2427, ((_currSceneTrailHeight._trailInvViewProjTexScale[1].x) * _2419)))) / (mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].z), _3036.x, mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].y), _2427, ((_currSceneTrailHeight._trailInvViewProjTexScale[3].x) * _2419))) + (_currSceneTrailHeight._trailInvViewProjTexScale[3].w)))) < (_191 + 1.0f))));
              } else {
                _3069 = 1;
              }
              if ((_3036.y < 1.0f) && (_3036.y > 0.0f)) {
                _3103 = (((int)(uint)((int)((((0.2f - _viewPos.y) + _currSceneTrailHeight._trailUpdatedPosition.y) + (((_currSceneTrailHeight._trailInvViewProjTexScale[1].w) + mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].z), _3036.y, mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].y), _2427, ((_currSceneTrailHeight._trailInvViewProjTexScale[1].x) * _2419)))) / (mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].z), _3036.y, mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].y), _2427, ((_currSceneTrailHeight._trailInvViewProjTexScale[3].x) * _2419))) + (_currSceneTrailHeight._trailInvViewProjTexScale[3].w)))) > (_191 + 1.0f)))) & _3069);
              } else {
                _3103 = _3069;
              }
              if (!(_3103 == 0)) {
                _3109 = (_viewPos.x + _201) - _prevSceneTrailInteraction._trailUpdatedPosition.x;
                _3112 = (_viewPos.y + _191) - _prevSceneTrailInteraction._trailUpdatedPosition.y;
                _3115 = (_viewPos.z + _210) - _prevSceneTrailInteraction._trailUpdatedPosition.z;
                _3127 = (_prevSceneTrailInteraction._trailViewProjTexScale[0].w) + mad((_prevSceneTrailInteraction._trailViewProjTexScale[0].z), _3115, mad((_prevSceneTrailInteraction._trailViewProjTexScale[0].y), _3112, ((_prevSceneTrailInteraction._trailViewProjTexScale[0].x) * _3109)));
                _3135 = mad((_prevSceneTrailInteraction._trailViewProjTexScale[1].z), _3115, mad((_prevSceneTrailInteraction._trailViewProjTexScale[1].y), _3112, ((_prevSceneTrailInteraction._trailViewProjTexScale[1].x) * _3109))) + (_prevSceneTrailInteraction._trailViewProjTexScale[1].w);
                if (saturate(_3127) == _3127) {
                  [branch]
                  if (saturate(_3135) == _3135) {
                    // [sem: _3__36__0__0__g_textureTrailInteractionPrev_sampleLod]
                    _3143 = __3__36__0__0__g_textureTrailInteractionPrev.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_3127, _3135), 0.0f);
                    _3148 = (_3143.x * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteractionPrev_sampleLod_derived]
                    _3150 = (_3143.y * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteractionPrev_sampleLod_derived]
                    _3152 = rsqrt(dot(float2(_3148, _3150), float2(_3148, _3150)));  // [sem: invLength]
                    _3153 = _3148 * _3152;
                    _3154 = _3150 * _3152;
                    _3155 = saturate(_3143.w);  // [sem: expr_sat]
                    if (_3155 > 0.0f) {
                      _3159 = _2381 - _191;
                      _3163 = sin(_time.y * 7.0f);
                      _3165 = -0.0f - (_2392 * _3154);
                      _3168 = (_3154 * _2391) - (_3153 * _2393);
                      _3169 = _3153 * _2392;
                      _3171 = rsqrt(dot(float3(_3165, _3168, _3169), float3(_3165, _3168, _3169)));  // [sem: invLength]
                      _3172 = _3171 * _3165;
                      _3173 = _3171 * _3168;
                      _3174 = _3171 * _3169;
                      _3196 = (((((_1885 * 0.9424779f) * _3155) * (lerp(_3163, 1.0f, _3155))) * (1.0f / exp2(log2(max((_251 + -1.5f), 1.0f)) * 1.8f))) * max((_3143.z * 2.0f), 1.0f)) * saturate((abs(_3159) * 0.25f) - (_251 * 0.03f));
                      _3199 = dot(float3(_3172, _3173, _3174), float3((_2382 - _201), _3159, (_2380 - _210)));
                      _3201 = (_3199 * _3172) + _201;
                      _3203 = (_3199 * _3173) + _191;
                      _3205 = (_3199 * _3174) + _210;
                      _3206 = _2382 - _3201;
                      _3207 = _2381 - _3203;
                      _3208 = _2380 - _3205;
                      _3209 = sin(_3196);
                      _3210 = cos(_3196);
                      _3212 = cos(_time.y * 10.0f);
                      _3221 = (frac(_114 * 0.0625f) * 2.0f) + -1.0f;
                      _3224 = (frac(_114) * 2.0f) + -1.0f;
                      _3228 = (frac(_114 * 16.0f) * 2.0f) + -1.0f;
                      _3247 = (rsqrt(dot(float3(_3221, _3224, _3228), float3(_3221, _3224, _3228))) * saturate(2.0f / _251)) * (((_3155 * _113) * (0.6f - (_3155 * 0.40000004f))) * (((cos(_time.y * 2.0f) - _3212) * _3155) + _3212));
                      _3271 = ((((_3205 - _2380) + (_3208 * _3210)) + (((_3206 * _3173) - (_3207 * _3172)) * _3209)) + (_3247 * _3224));
                      _3272 = ((((_3203 - _2381) + (_3207 * _3210)) + (((_3208 * _3172) - (_3206 * _3174)) * _3209)) + (_3247 * _3228));
                      _3273 = ((((_3201 - _2382) + (_3206 * _3210)) + (((_3207 * _3174) - (_3208 * _3173)) * _3209)) + (_3247 * _3221));
                    } else {
                      _3271 = 0.0f;
                      _3272 = 0.0f;
                      _3273 = 0.0f;
                    }
                  } else {
                    _3271 = 0.0f;
                    _3272 = 0.0f;
                    _3273 = 0.0f;
                  }
                } else {
                  _3271 = 0.0f;
                  _3272 = 0.0f;
                  _3273 = 0.0f;
                }
              } else {
                _3271 = 0.0f;
                _3272 = 0.0f;
                _3273 = 0.0f;
              }
            }
            _3287 = ((_3271 * _370) + _2383);
            _3288 = ((_3272 * _370) + _2384);
            _3289 = ((_3273 * _370) + _2385);
            _3290 = (_2380 + (_370 * _2854));
            _3291 = (_2381 + (_370 * _2855));
            _3292 = (_2382 + (_370 * _2856));
          } else {
            _3287 = _2383;
            _3288 = _2384;
            _3289 = _2385;
            _3290 = _2380;
            _3291 = _2381;
            _3292 = _2382;
          }
        } else {
          _3287 = _1827;
          _3288 = _1811;
          _3289 = _1802;
          _3290 = _1762;
          _3291 = _1760;
          _3292 = _1758;
        }
      } else {
        _3287 = _1827;
        _3288 = _1811;
        _3289 = _1802;
        _3290 = _1762;
        _3291 = _1760;
        _3292 = _1758;
      }
    } else {
      _3287 = _1827;
      _3288 = _1811;
      _3289 = _1802;
      _3290 = _1762;
      _3291 = _1760;
      _3292 = _1758;
    }
  } else {
    _3287 = _1827;
    _3288 = _1811;
    _3289 = _1802;
    _3290 = _1762;
    _3291 = _1760;
    _3292 = _1758;
  }
  if (!_180) {
    _3294 = asint(_139);
    _3297 = select((_1776 != 0), asint(_167), _3294);
    _3301 = (((float)((uint)((uint)((uint)((uint)(_3294)) >> 24)))) * 0.007843138f) + -1.0f;
    _3306 = (((float)((uint)((uint)(((uint)((uint)(_3294)) >> 16) & 255)))) * 0.007843138f) + -1.0f;
    _3310 = (((float)((uint)((uint)((uint)((uint)(_3297)) >> 24)))) * 0.007843138f) + -1.0f;
    _3315 = (((float)((uint)((uint)(((uint)((uint)(_3297)) >> 16) & 255)))) * 0.007843138f) + -1.0f;
    _3317 = rsqrt(dot(float3(_141, _142, _143), float3(_141, _142, _143)));  // [sem: invLength]
    _3318 = _141 * _3317;
    _3319 = _142 * _3317;
    _3320 = _143 * _3317;
    _3321 = _3291 - _191;
    _3323 = -0.0f - (_3306 * _3319);
    _3326 = (_3306 * _3318) - (_3301 * _3320);
    _3327 = _3301 * _3319;
    _3329 = rsqrt(dot(float3(_3323, _3326, _3327), float3(_3323, _3326, _3327)));  // [sem: invLength]
    _3330 = _3329 * _3323;
    _3331 = _3329 * _3326;
    _3332 = _3329 * _3327;
    _3340 = max(exp2(log2(max(_3321, 0.0f)) * 0.5f), 0.0f) * _windFluidVolumeParams.w;
    _3345 = ((((float)((uint)((uint)(_3294 & 65535)))) * 9.5875264e-05f) + -3.1415927f) * _3340;
    _3346 = _3292 - _201;
    _3347 = _3290 - _210;
    _3348 = dot(float3(_3330, _3331, _3332), float3(_3346, _3321, _3347));
    _3350 = _201 + (_3330 * _3348);
    _3352 = _191 + (_3331 * _3348);
    _3354 = _210 + (_3332 * _3348);
    _3355 = _3292 - _3350;
    _3356 = _3291 - _3352;
    _3357 = _3290 - _3354;
    _3358 = sin(_3345);
    _3359 = cos(_3345);
    _3361 = -0.0f - (_3315 * _3319);
    _3364 = (_3318 * _3315) - (_3320 * _3310);
    _3365 = _3319 * _3310;
    _3367 = rsqrt(dot(float3(_3361, _3364, _3365), float3(_3361, _3364, _3365)));  // [sem: invLength]
    _3368 = _3367 * _3361;
    _3369 = _3367 * _3364;
    _3370 = _3367 * _3365;
    _3375 = _3340 * ((((float)((uint)((uint)(_3297 & 65535)))) * 9.5875264e-05f) + -3.1415927f);
    _3376 = dot(float3(_3368, _3369, _3370), float3(_3346, _3321, _3347));
    _3378 = (_3368 * _3376) + _201;
    _3380 = (_3369 * _3376) + _191;
    _3382 = (_3370 * _3376) + _210;
    _3383 = _3292 - _3378;
    _3384 = _3291 - _3380;
    _3385 = _3290 - _3382;
    _3386 = sin(_3375);
    _3387 = cos(_3375);
    _3437 = ((((_3288 - _3291) + _3380) + (_3384 * _3387)) + (((_3385 * _3368) - (_3383 * _3370)) * _3386));
    _3438 = ((((_3289 - _3292) + _3378) + (_3383 * _3387)) + (((_3384 * _3370) - (_3385 * _3369)) * _3386));
    _3439 = ((_3354 + (_3359 * _3357)) + (_3358 * ((_3331 * _3355) - (_3330 * _3356))));
    _3440 = ((_3352 + (_3359 * _3356)) + (_3358 * ((_3330 * _3357) - (_3332 * _3355))));
    _3441 = ((_3350 + (_3359 * _3355)) + (_3358 * ((_3332 * _3356) - (_3331 * _3357))));
    _3442 = ((((_3287 - _3290) + _3382) + (_3385 * _3387)) + (((_3383 * _3369) - (_3384 * _3368)) * _3386));
  } else {
    _3437 = _3288;
    _3438 = _3289;
    _3439 = _3290;
    _3440 = _3291;
    _3441 = _3292;
    _3442 = _3287;
  }
  _3444 = rsqrt(dot(float3(_1830, _1833, _1836), float3(_1830, _1833, _1836)));  // [sem: invLength]
  if ((SV_VertexID != 0) && (((int)((uint)((uint)(SV_VertexID)) % (uint)(40))) == 0)) {
    if (sqrt(((_3440 * _3440) + (_3439 * _3439)) + (_3441 * _3441)) < 4.0f) {
      __3__39__0__1__g_treeSurfacePositionsCounterBufferUAV.InterlockedAdd(0, 1, _3459);
      if ((uint)_3459 < (uint)1024) {
        TreeSurfacePositionData __struct_store_0;
        __struct_store_0._worldPos = float4((_viewPos.x + _3441), (_viewPos.y + _3440), (_viewPos.z + _3439), 1.0f);
        __struct_store_0._worldPosPrev = float4((_viewPosPrev.x + _3438), (_viewPosPrev.y + _3437), (_viewPosPrev.z + _3442), 1.0f);
        __3__39__0__1__g_treeSurfacePositionsBufferUAV[_3459] = __struct_store_0;
      }
    }
  }
  if (_180) {
    _3479 = asint(_139);
    _3488 = (((float)((int)((int)(_3479) >> 16))) * 1000.0f);
    _3489 = (((float)((int)((int)((int)((uint)((uint)(_3479)) << 16)) >> 16))) * 1000.0f);
  } else {
    _3488 = 0.0f;
    _3489 = 0.0f;
  }
  _3490 = _3488 + _148;
  _3491 = _3489 + _150;
  if (_treeParams.w > 0.5f) {
    _3496 = _3490 * 0.0009765625f;
    _3497 = _3491 * 0.0009765625f;
    _3501 = (0.5f / _regionLayerResolution) + 20.0f;
    _3513 = asint(__3__35__0__0__TerrainLayerTextureConstBuffer_raw_uint[((uint)((uint)((uint)((uint)((int)min((uint)(((int)((uint)(floor(_3496) + _3501)))), (uint)(39)))) * (uint)(80)) + (uint)((uint)((uint)((int)min((uint)(((int)((uint)(_3501 + floor(_3497))))), (uint)(39)))) << 1)))]);
    if (_3513.z == 0) {
      __0__7__0__0__g_bindlessTextures[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_globalRegionMapSRVIndex < (uint)65000), _globalRegionMapSRVIndex, 0))) + (uint)(0))))].GetDimensions(_3525.x, _3525.y);
      _3534 = (((float)((int)(_globalRegionMapOnePixelMeter))) * 0.5f) * ((float)((int)((int)((float)((int)((int)(_3525.x)))))));
      _3571 = (((float4)(__0__7__0__0__g_bindlessTextures[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_globalRegionMapSRVIndex < (uint)65000), _globalRegionMapSRVIndex, 0))) + (uint)(0))))].SampleLevel(__0__4__0__0__g_staticPointClamp, float2(saturate(((_3490 / _3534) * 0.5f) + 0.5f), saturate(((_3491 / _3534) * 0.5f) + 0.5f)), 0.0f))).x);
    } else {
      _3571 = (((float4)(__0__7__0__0__g_bindlessTextures[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_3513.z < (uint)65000), _3513.z, 0))) + (uint)(0))))].SampleLevel(__0__4__0__0__g_staticPointClamp, float2(((floor(frac(_3496) * _regionLayerResolution) + 0.5f) / _regionLayerResolution), (1.0f - ((floor(frac(_3497) * _regionLayerResolution) + 0.5f) / _regionLayerResolution))), 0.0f))).x);
    }
    _3577 = __3__37__0__0___terrainHeightFieldRegionInfo[((int)((uint)((_3571 * 255.0f) + 0.5f)))]._applyTerrainRulesOnObjects;
    if (!((_3577 & 2) == 0)) {
      __0__7__0__0__g_bindlessTextures[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_globalColorMapSRVIndex < (uint)65000), _globalColorMapSRVIndex, 0))) + (uint)(0))))].GetDimensions(_3588.x, _3588.y);
      _3597 = (((float)((int)(_globalTextureOnePixelMeter))) * 0.5f) * ((float)((int)((int)((float)((int)((int)(_3588.x)))))));
      _3615 = __0__7__0__0__g_bindlessTextures[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_globalColorMapSRVIndex < (uint)65000), _globalColorMapSRVIndex, 0))) + (uint)(0))))].SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(saturate(((_3490 / _3597) * 0.5f) + 0.5f), (1.0f - saturate(((_3491 / _3597) * 0.5f) + 0.5f))), 0.0f);
      _3620 = _3615.x;
      _3621 = _3615.y;
      _3622 = _3615.z;
      _3623 = 1.0f;
    } else {
      _3620 = 1.0f;
      _3621 = 1.0f;
      _3622 = 1.0f;
      _3623 = 0.0f;
    }
  } else {
    _3620 = 1.0f;
    _3621 = 1.0f;
    _3622 = 1.0f;
    _3623 = 0.0f;
  }
  SV_Position.x = (mad((_viewProjRelative[0].z), _3439, mad((_viewProjRelative[0].y), _3440, (_3441 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w));
  SV_Position.y = ((_viewProjRelative[1].w) + mad((_viewProjRelative[1].z), _3439, mad((_viewProjRelative[1].y), _3440, (_3441 * (_viewProjRelative[1].x)))));
  SV_Position.z = ((_viewProjRelative[2].w) + mad((_viewProjRelative[2].z), _3439, mad((_viewProjRelative[2].y), _3440, (_3441 * (_viewProjRelative[2].x)))));
  SV_Position.w = ((_viewProjRelative[3].w) + mad((_viewProjRelative[3].z), _3439, mad((_viewProjRelative[3].y), _3440, (_3441 * (_viewProjRelative[3].x)))));
  TEXCOORD.x = float(_80);
  TEXCOORD.y = float(_81);
  TEXCOORD.z = _106;
  TEXCOORD.w = 0.0f;
  TEXCOORD_1.x = ((_viewProjRelativePrev[0].w) + mad((_viewProjRelativePrev[0].z), _3442, mad((_viewProjRelativePrev[0].y), _3437, ((_viewProjRelativePrev[0].x) * _3438))));
  TEXCOORD_1.y = (mad((_viewProjRelativePrev[1].z), _3442, mad((_viewProjRelativePrev[1].y), _3437, ((_viewProjRelativePrev[1].x) * _3438))) + (_viewProjRelativePrev[1].w));
  TEXCOORD_1.z = (mad((_viewProjRelativePrev[2].z), _3442, mad((_viewProjRelativePrev[2].y), _3437, ((_viewProjRelativePrev[2].x) * _3438))) + (_viewProjRelativePrev[2].w));
  TEXCOORD_1.w = (mad((_viewProjRelativePrev[3].z), _3442, mad((_viewProjRelativePrev[3].y), _3437, ((_viewProjRelativePrev[3].x) * _3438))) + (_viewProjRelativePrev[3].w));
  NORMAL.x = (half)(half(_3444 * _1830));
  NORMAL.y = (half)(half(_3444 * _1833));
  NORMAL.z = (half)(half(_3444 * _1836));
  NORMAL.w = (half)(half((((float)((uint16_t)((int16_t)(_76 & 255)))) * 0.003921569f) * min(2.0f, _151)));
  TEXCOORD_2.x = ((uint)((int)(_drawIndex & 16777215) | (int)((int)((uint)((uint)((int)min((uint)(255), (uint)(((int)((uint)(round((float)((uint)((uint)(((uint)((uint)(_152)) >> 8) & 255))))))))))) << 24))));
  TEXCOORD_2.y = ((uint)((int)((int)((int)(((int)((uint)((uint)(saturate(_3620) * 255.0f)) << 16)) & 16711680) | (int)(((int)((uint)((uint)(saturate(_3621) * 255.0f)) << 8)) & 65280)) | (int)(((int)((uint)(saturate(_3622) * 255.0f))) & 255)) | (int)((int)((uint)((uint)(saturate(_3623) * 255.0f)) << 24))));
  SV_ClipDistance = _358;
  SV_ShadingRate = (uint)(select((_variableRateShadingParams.x > 0.0f), 5, 0));
  OutputSignature output_signature = { SV_Position, TEXCOORD, TEXCOORD_1, NORMAL, TEXCOORD_2, SV_ClipDistance, SV_ShadingRate };
  return output_signature;
}
