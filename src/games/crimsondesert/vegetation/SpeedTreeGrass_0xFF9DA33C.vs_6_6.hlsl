// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports the exact shared option and helper declarations consumed by this shader's annotated RenoDX patches. This dependency-only prefix replaces no native executable statement; removing the block restores successor A byte-for-byte.
#include "../shared.h"
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
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

struct MassPlacementInstanceData {
  row_major float4x4 _transform;
};

struct PrimitiveBufferView {
  int4 _vertexBufferView;
  int4 _indexBufferView;
};

struct SceneCaptureTransform {
  column_major float4x4 _captureMatrix;
  column_major float4x4 _captureMatrixInv;
  column_major float4x4 _captureMatrixTexScale;
  column_major float4x4 _captureMatrixInvTexScale;
  column_major float4x4 _captureMatrixRelative;
  column_major float4x4 _captureMatrixRelativePrev;
  column_major float4x4 _captureMatrixRelativeTexScale;
  column_major float4x4 _captureMatrixRelativeInvTexScale;
  float4 _captureMatrixRelativePosition;
  float4 _captureMatrixRelativePositionPrev;
  float4 _captureFrustumPlanes[6];
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


StructuredBuffer<IndirectDrawParameters> __3__37__0__0__g_indirectDrawParametersBuffer : register(t23, space37);

Texture2D<float4> __3__36__0__0__g_textureTrailInteraction : register(t47, space36);

Texture2D<float4> __3__36__0__0__g_textureTrailInteractionPrev : register(t48, space36);

Texture2D<float2> __3__36__0__0__g_textureTrailHeight : register(t46, space36);

Texture3D<float4> __3__36__0__0__g_windFluidInteractionVelocityHistory : register(t134, space36);

Texture3D<float4> __3__36__0__0__g_windFluidInteractionVelocityHistoryPrev : register(t135, space36);

Texture2D<float> __3__36__0__0__g_topDownTerrainDepth : register(t71, space36);

Texture2D<uint4> __3__36__0__0__g_topDownTerrainNormal : register(t72, space36);

Texture2D<float> __3__36__0__0__g_topDownTerrainObjectDepth : register(t73, space36);

Texture2D<uint4> __3__36__0__0__g_topDownTerrainObjectNormal : register(t74, space36);

Texture2D<float> __3__36__0__0__g_topDownClippingSpace : register(t75, space36);

StructuredBuffer<SpeedTreeDataForBuffer> __3__37__0__0__g_treeWindDataBuffer : register(t27, space37);

StructuredBuffer<MassPlacementInstanceData> __3__37__0__0__g_massPlacementInstanceBuffer : register(t0, space37);

StructuredBuffer<StaticMeshData> __3__37__0__0__g_staticMeshData : register(t6, space37);

StructuredBuffer<VertexDataTree> __0__103__0__0__g_bindlessVertexBuffersTree[] : register(t0, space103);

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

cbuffer __3__35__0__0__TopDownCaptureConstantBuffer : register(b32, space35) {
  SceneCaptureTransform _sceneCaptureTopDown[2] : packoffset(c000.x);
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

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

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
  int _36;
  int16_t _39;
  int16_t _41;
  int _43;
  int _44;
  float _47;
  float _48;
  float _49;
  float _51;
  float _52;
  float _53;
  int _55;
  uint _56;
  int16_t _64;
  int16_t _65;
  int16_t _66;
  int16_t _67;
  int _69;
  half _71;
  half _72;
  half _73;
  half _74;
  half _76;
  half _77;
  half _78;
  half _79;
  half _81;
  half _82;
  float _87;
  float _92;
  float _97;
  float _98;
  float _99;
  float _100;
  float _101;
  float _102;
  float _103;
  float _104;
  float _105;
  int _108;
  int _111;
  float _114;
  float _116;
  float _118;
  float _120;
  float _122;
  float _124;
  float _126;
  float _128;
  float _130;
  float _132;
  float _134;
  float _136;
  int _137;
  int _138;
  float _141;
  float _143;
  float _144;
  float _146;
  float _149;
  float _151;
  float _153;
  float _157;
  float _162;
  float _167;
  float _170;
  float _173;
  float _176;
  float _178;
  float _180;
  float _182;
  float _184;
  float _188;
  float _190;
  float _288;
  float _460;
  float _461;
  float _462;
  float _463;
  float _511;
  float _512;
  float _513;
  float _514;
  float _552;
  float _553;
  float _554;
  float _555;
  float _556;
  float _557;
  float _558;
  float _559;
  float _690;
  float _691;
  float _692;
  float _1082;
  float _1083;
  float _1084;
  float _1085;
  float _1086;
  float _1087;
  float _1479;
  float _1480;
  float _1481;
  float _1513;
  float _1514;
  float _1515;
  float _1516;
  float _1517;
  float _1518;
  float _1519;
  float _1520;
  float _1521;
  float _1690;
  bool _1739;
  int _1813;
  int _1846;
  int _1849;
  float _1967;
  float _1968;
  float _1969;
  int _2008;
  int _2041;
  int _2044;
  float _2162;
  float _2163;
  float _2164;
  float _2178;
  float _2179;
  float _2180;
  float _2181;
  float _2182;
  float _2183;
  float _2393;
  bool _2442;
  int _2516;
  int _2549;
  int _2552;
  float _2670;
  float _2671;
  float _2672;
  int _2711;
  int _2744;
  int _2747;
  float _2865;
  float _2866;
  float _2867;
  float _2881;
  float _2882;
  float _2883;
  float _2884;
  float _2885;
  float _2886;
  float _3034;
  bool _3083;
  int _3157;
  int _3190;
  int _3193;
  float _3311;
  float _3312;
  float _3313;
  int _3352;
  int _3385;
  int _3388;
  float _3507;
  float _3508;
  float _3509;
  float _3523;
  float _3524;
  float _3525;
  float _3526;
  float _3527;
  float _3528;
  float _3676;
  bool _3725;
  int _3799;
  int _3832;
  int _3835;
  float _3953;
  float _3954;
  float _3955;
  int _3994;
  int _4027;
  int _4030;
  float _4149;
  float _4150;
  float _4151;
  float _4165;
  float _4166;
  float _4167;
  float _4168;
  float _4169;
  float _4170;
  int _4430;
  int _4464;
  float _4634;
  float _4635;
  float _4636;
  int _4848;
  int _4882;
  float _5049;
  float _5050;
  float _5051;
  float _5065;
  float _5066;
  float _5067;
  float _5068;
  float _5069;
  float _5070;
  float _5323;
  float _5324;
  float _5325;
  float _5326;
  int _5327;
  float _5328;
  int _5329;
  half _5330;
  half _5331;
  half _5332;
  half _5333;
  float _5334;
  float _5335;
  float _5336;
  float _5337;
  float _5338;
  float _200;
  float _207;
  float _214;
  float _226;
  float _234;
  uint2 _236;
  float _254;
  float _284;
  float _293;
  float _299;
  int _305;
  float _314;
  float _315;
  float _316;
  float _317;
  float _319;
  float _320;
  float _321;
  float _323;
  float _324;
  float _325;
  float _326;
  float _328;
  float _329;
  float _330;
  float _332;
  float _333;
  float _335;
  float _336;
  float _337;
  float _339;
  float _340;
  float _341;
  float _342;
  float _344;
  float _345;
  float _346;
  float _347;
  float _349;
  float _350;
  float _352;
  float _353;
  float _354;
  float _356;
  float _357;
  float _358;
  float _359;
  float _361;
  float _362;
  float _363;
  float _365;
  float _366;
  float _367;
  float _368;
  float _370;
  float _371;
  float _372;
  float _374;
  float _375;
  float _377;
  float _378;
  float _379;
  float _381;
  float _382;
  float _383;
  float _384;
  float _386;
  float _387;
  float _388;
  float _389;
  float _391;
  float _392;
  float _394;
  float _395;
  float _396;
  float _405;
  float _409;
  float _413;
  float _415;
  float _419;
  float _423;
  float _427;
  float4 _442;
  float _447;
  float _453;
  float _468;
  float _473;
  float _478;
  float4 _493;
  float _498;
  float _504;
  float _515;
  float _518;
  float _521;
  float _524;
  float _526;
  float _527;
  float _530;
  float _533;
  float _536;
  float _538;
  float _562;
  float _565;
  float _568;
  float _570;
  float _571;
  float _572;
  float _573;
  float _574;
  float _575;
  float _580;
  float _586;
  float _592;
  float _593;
  float _596;
  float _623;
  float _624;
  float _625;
  float _626;
  float _627;
  float _629;
  float _630;
  float _631;
  float _632;
  float _634;
  float _635;
  float _636;
  float _637;
  float _638;
  float _643;
  float _646;
  float _649;
  float _652;
  float _655;
  float _656;
  float _657;
  float _658;
  float _659;
  float _660;
  float _661;
  float _662;
  float _663;
  float _664;
  float _665;
  float _666;
  float _696;
  float _699;
  float _703;
  float _704;
  float _705;
  float _706;
  float _711;
  float _716;
  float _722;
  float _734;
  bool _735;
  float _736;
  float _738;
  float _741;
  float _745;
  float _746;
  float _766;
  float _767;
  float _768;
  bool _770;
  float _778;
  float _785;
  float _789;
  float _792;
  float _796;
  float _811;
  float _815;
  float _818;
  float _822;
  float _824;
  float _825;
  float _826;
  float _827;
  float _828;
  float _833;
  float _840;
  float _846;
  float _852;
  float _853;
  float _854;
  float _855;
  float _856;
  float _863;
  float _864;
  float _865;
  float _866;
  float _867;
  float _868;
  float _871;
  float _874;
  float _877;
  float _881;
  float _883;
  float _890;
  float _896;
  float _902;
  float _945;
  float _946;
  float _950;
  float _951;
  float _952;
  float _953;
  float _960;
  float _967;
  float _974;
  float _977;
  float _978;
  float _979;
  float _980;
  float _985;
  float _990;
  float _995;
  float _997;
  float _1002;
  float _1007;
  float _1012;
  float _1014;
  float _1021;
  float _1028;
  float _1035;
  float _1044;
  float _1090;
  float _1093;
  float _1096;
  float _1098;
  float _1099;
  float _1100;
  float _1101;
  float _1106;
  float _1112;
  float _1118;
  float _1119;
  float _1122;
  float _1149;
  float _1150;
  float _1151;
  float _1156;
  float _1161;
  float _1167;
  float _1179;
  bool _1180;
  float _1181;
  float _1183;
  float _1186;
  float _1206;
  float _1214;
  float _1221;
  float _1225;
  float _1228;
  float _1232;
  float _1246;
  float _1250;
  float _1253;
  float _1257;
  float _1259;
  float _1260;
  float _1261;
  float _1262;
  float _1263;
  float _1268;
  float _1275;
  float _1281;
  float _1287;
  float _1288;
  float _1289;
  float _1290;
  float _1291;
  float _1298;
  float _1299;
  float _1300;
  float _1301;
  float _1302;
  float _1303;
  float _1306;
  float _1309;
  float _1312;
  float _1316;
  float _1318;
  float _1325;
  float _1331;
  float _1337;
  float _1380;
  float _1381;
  float _1385;
  float _1386;
  float _1387;
  float _1388;
  float _1395;
  float _1402;
  float _1409;
  float _1412;
  float _1413;
  float _1414;
  float _1415;
  float _1420;
  float _1425;
  float _1430;
  float _1432;
  float _1439;
  float _1446;
  float _1453;
  float _1462;
  float _1524;
  float _1527;
  float _1530;
  float _1532;
  float _1534;
  float _1536;
  float _1539;
  float _1544;
  float _1546;
  float _1551;
  float _1554;
  float _1557;
  float _1560;
  float _1569;
  float _1572;
  float _1575;
  float _1577;
  float _1579;
  float _1581;
  float _1588;
  float _1591;
  float _1600;
  float _1606;
  uint2 _1610;
  float _1615;
  float _1618;
  float _1655;
  float _1664;
  float _1668;
  int _1674;
  float _1698;
  float _1701;
  float _1705;
  float _1707;
  float _1708;
  float _1709;
  float _1710;
  float _1713;
  float _1716;
  float _1719;
  float _1721;
  float _1722;
  float _1723;
  float _1724;
  float _1729;
  int _1740;
  float _1745;
  float _1748;
  float _1752;
  float _1764;
  float _1772;
  bool _1774;
  float2 _1781;
  float _1855;
  float _1858;
  float _1861;
  float _1873;
  float _1881;
  float4 _1890;
  float _1895;
  float _1897;
  float _1899;
  float _1900;
  float _1901;
  float _1902;
  float _1908;
  float _1910;
  float _1913;
  float _1914;
  float _1916;
  float _1917;
  float _1918;
  float _1919;
  float _1924;
  float _1930;
  float _1932;
  float _1934;
  float _1936;
  float _1937;
  float _1938;
  float _1939;
  float _1940;
  float _1941;
  float2 _1976;
  float _2050;
  float _2053;
  float _2056;
  float _2068;
  float _2076;
  float4 _2085;
  float _2090;
  float _2092;
  float _2094;
  float _2095;
  float _2096;
  float _2097;
  float _2103;
  float _2105;
  float _2108;
  float _2109;
  float _2111;
  float _2112;
  float _2113;
  float _2114;
  float _2119;
  float _2125;
  float _2127;
  float _2129;
  float _2131;
  float _2132;
  float _2133;
  float _2134;
  float _2135;
  float _2136;
  float _2195;
  float _2203;
  float _2211;
  float _2219;
  float _2231;
  float _2239;
  float _2247;
  float _2255;
  float _2257;
  half _2259;
  half _2261;
  half _2263;
  half _2269;
  int _2272;
  int _2276;
  int _2291;
  uint2 _2313;
  float _2318;
  float _2321;
  float _2358;
  float _2367;
  float _2371;
  int _2377;
  float _2401;
  float _2404;
  float _2408;
  float _2410;
  float _2411;
  float _2412;
  float _2413;
  float _2416;
  float _2419;
  float _2422;
  float _2424;
  float _2425;
  float _2426;
  float _2427;
  float _2432;
  int _2443;
  float _2448;
  float _2451;
  float _2455;
  float _2467;
  float _2475;
  bool _2477;
  float2 _2484;
  float _2558;
  float _2561;
  float _2564;
  float _2576;
  float _2584;
  float4 _2593;
  float _2598;
  float _2600;
  float _2602;
  float _2603;
  float _2604;
  float _2605;
  float _2611;
  float _2613;
  float _2616;
  float _2617;
  float _2619;
  float _2620;
  float _2621;
  float _2622;
  float _2627;
  float _2633;
  float _2635;
  float _2637;
  float _2639;
  float _2640;
  float _2641;
  float _2642;
  float _2643;
  float _2644;
  float2 _2679;
  float _2753;
  float _2756;
  float _2759;
  float _2771;
  float _2779;
  float4 _2788;
  float _2793;
  float _2795;
  float _2797;
  float _2798;
  float _2799;
  float _2800;
  float _2806;
  float _2808;
  float _2811;
  float _2812;
  float _2814;
  float _2815;
  float _2816;
  float _2817;
  float _2822;
  float _2828;
  float _2830;
  float _2832;
  float _2834;
  float _2835;
  float _2836;
  float _2837;
  float _2838;
  float _2839;
  float _2898;
  float _2906;
  float _2914;
  float _2922;
  float _2934;
  float _2942;
  float _2950;
  float _2958;
  float _2960;
  half _2962;
  half _2964;
  half _2966;
  half _2972;
  int _2975;
  int _2979;
  int _2994;
  int _3018;
  float _3042;
  float _3045;
  float _3049;
  float _3051;
  float _3052;
  float _3053;
  float _3054;
  float _3057;
  float _3060;
  float _3063;
  float _3065;
  float _3066;
  float _3067;
  float _3068;
  float _3073;
  int _3084;
  float _3089;
  float _3092;
  float _3096;
  float _3108;
  float _3116;
  bool _3118;
  float2 _3125;
  float _3199;
  float _3202;
  float _3205;
  float _3217;
  float _3225;
  float4 _3234;
  float _3239;
  float _3241;
  float _3243;
  float _3244;
  float _3245;
  float _3246;
  float _3252;
  float _3254;
  float _3257;
  float _3258;
  float _3260;
  float _3261;
  float _3262;
  float _3263;
  float _3268;
  float _3274;
  float _3276;
  float _3278;
  float _3280;
  float _3281;
  float _3282;
  float _3283;
  float _3284;
  float _3285;
  float2 _3320;
  float _3394;
  float _3397;
  float _3400;
  float _3412;
  float _3420;
  float4 _3429;
  float _3434;
  float _3436;
  float _3438;
  float _3439;
  float _3440;
  float _3441;
  float _3447;
  float _3449;
  float _3452;
  float _3453;
  float _3455;
  float _3456;
  float _3457;
  float _3458;
  float _3463;
  float _3470;
  float _3472;
  float _3474;
  float _3476;
  float _3477;
  float _3478;
  float _3479;
  float _3480;
  float _3481;
  float _3540;
  float _3548;
  float _3556;
  float _3564;
  float _3576;
  float _3584;
  float _3592;
  float _3600;
  float _3602;
  half _3604;
  half _3606;
  half _3608;
  half _3614;
  int _3617;
  int _3621;
  int _3636;
  int _3660;
  float _3684;
  float _3687;
  float _3691;
  float _3693;
  float _3694;
  float _3695;
  float _3696;
  float _3699;
  float _3702;
  float _3705;
  float _3707;
  float _3708;
  float _3709;
  float _3710;
  float _3715;
  int _3726;
  float _3731;
  float _3734;
  float _3738;
  float _3750;
  float _3758;
  bool _3760;
  float2 _3767;
  float _3841;
  float _3844;
  float _3847;
  float _3859;
  float _3867;
  float4 _3876;
  float _3881;
  float _3883;
  float _3885;
  float _3886;
  float _3887;
  float _3888;
  float _3894;
  float _3896;
  float _3899;
  float _3900;
  float _3902;
  float _3903;
  float _3904;
  float _3905;
  float _3910;
  float _3916;
  float _3918;
  float _3920;
  float _3922;
  float _3923;
  float _3924;
  float _3925;
  float _3926;
  float _3927;
  float2 _3962;
  float _4036;
  float _4039;
  float _4042;
  float _4054;
  float _4062;
  float4 _4071;
  float _4076;
  float _4078;
  float _4080;
  float _4081;
  float _4082;
  float _4083;
  float _4089;
  float _4091;
  float _4094;
  float _4095;
  float _4097;
  float _4098;
  float _4099;
  float _4100;
  float _4105;
  float _4112;
  float _4114;
  float _4116;
  float _4118;
  float _4119;
  float _4120;
  float _4121;
  float _4122;
  float _4123;
  float _4172;
  float _4173;
  float _4174;
  float _4175;
  float _4181;
  float _4185;
  float _4189;
  float _4201;
  float _4209;
  uint2 _4211;
  bool _4215;
  float _4231;
  float _4234;
  float _4237;
  float _4249;
  float _4257;
  float4 _4266;
  float _4271;
  float _4273;
  float _4275;
  float _4276;
  float _4277;
  float _4278;
  float _4282;
  float _4286;
  float _4288;
  float _4291;
  float _4292;
  float _4294;
  float _4295;
  float _4296;
  float _4297;
  float _4318;
  float _4321;
  float _4323;
  float _4325;
  float _4327;
  float _4328;
  float _4329;
  float _4330;
  float _4331;
  float _4332;
  float _4334;
  float _4339;
  float _4343;
  float _4346;
  float _4350;
  float _4354;
  float _4359;
  float _4360;
  float2 _4397;
  float _4470;
  float _4473;
  float _4476;
  float _4488;
  float _4496;
  float4 _4504;
  float _4509;
  float _4511;
  float _4513;
  float _4514;
  float _4515;
  float _4516;
  float _4520;
  float _4524;
  float _4526;
  float _4529;
  float _4530;
  float _4532;
  float _4533;
  float _4534;
  float _4535;
  float _4556;
  float _4559;
  float _4561;
  float _4563;
  float _4565;
  float _4566;
  float _4567;
  float _4568;
  float _4569;
  float _4570;
  float _4572;
  float _4577;
  float _4581;
  float _4584;
  float _4588;
  float _4592;
  float _4597;
  float _4598;
  float _4652;
  float _4655;
  float _4658;
  float _4670;
  float _4678;
  float4 _4687;
  float _4692;
  float _4694;
  float _4696;
  float _4697;
  float _4698;
  float _4699;
  float _4703;
  float _4707;
  float _4709;
  float _4712;
  float _4713;
  float _4715;
  float _4716;
  float _4717;
  float _4718;
  float _4739;
  float _4742;
  float _4744;
  float _4746;
  float _4748;
  float _4749;
  float _4750;
  float _4751;
  float _4752;
  float _4753;
  float _4755;
  float _4764;
  float _4767;
  float _4771;
  float _4790;
  float2 _4815;
  float _4888;
  float _4891;
  float _4894;
  float _4906;
  float _4914;
  float4 _4922;
  float _4927;
  float _4929;
  float _4931;
  float _4932;
  float _4933;
  float _4934;
  float _4938;
  float _4942;
  float _4944;
  float _4947;
  float _4948;
  float _4950;
  float _4951;
  float _4952;
  float _4953;
  float _4974;
  float _4977;
  float _4979;
  float _4981;
  float _4983;
  float _4984;
  float _4985;
  float _4986;
  float _4987;
  float _4988;
  float _4990;
  float _4999;
  float _5002;
  float _5006;
  float _5025;
  float _5082;
  float _5090;
  float _5098;
  float _5106;
  float _5118;
  float _5126;
  float _5134;
  float _5142;
  float _5144;
  half _5146;
  half _5148;
  half _5150;
  half _5156;
  int _5159;
  int _5163;
  int _5178;
  float _5208;
  float _5216;
  float _5224;
  float _5232;
  float _5244;
  float _5252;
  float _5260;
  float _5268;
  float _5270;
  half _5272;
  half _5274;
  half _5276;
  half _5282;
  int _5285;
  int _5289;
  int _5304;
  _36 = WaveReadLaneFirst(_drawIndex);
  _39 = __3__37__0__0__g_indirectDrawParametersBuffer[_36]._vertexBufferViewIndex;
  _41 = __3__37__0__0__g_indirectDrawParametersBuffer[_36]._staticMeshDataIndex;
  _43 = __3__37__0__0__g_indirectDrawParametersBuffer[_36]._baseVertexLocation;
  _44 = (int)(min16uint)(_41);
  _47 = __3__37__0__0__g_staticMeshData[_44]._aabbMin.x;
  _48 = __3__37__0__0__g_staticMeshData[_44]._aabbMin.y;
  _49 = __3__37__0__0__g_staticMeshData[_44]._aabbMin.z;
  _51 = __3__37__0__0__g_staticMeshData[_44]._aabbMax.x;
  _52 = __3__37__0__0__g_staticMeshData[_44]._aabbMax.y;
  _53 = __3__37__0__0__g_staticMeshData[_44]._aabbMax.z;
  _55 = __3__37__0__0__g_staticMeshData[_44]._flag;
  _56 = (uint)((uint)(_43)) + (uint)((uint)(SV_VertexID));
  _64 = __0__103__0__0__g_bindlessVertexBuffersTree[((int)((uint)((uint)(select(((uint16_t)_39 < (uint16_t)50000u), ((int)(min16uint)(_39)), 0))) + (uint)(0)))][_56]._position.x;
  _65 = __0__103__0__0__g_bindlessVertexBuffersTree[((int)((uint)((uint)(select(((uint16_t)_39 < (uint16_t)50000u), ((int)(min16uint)(_39)), 0))) + (uint)(0)))][_56]._position.y;
  _66 = __0__103__0__0__g_bindlessVertexBuffersTree[((int)((uint)((uint)(select(((uint16_t)_39 < (uint16_t)50000u), ((int)(min16uint)(_39)), 0))) + (uint)(0)))][_56]._position.z;
  _67 = __0__103__0__0__g_bindlessVertexBuffersTree[((int)((uint)((uint)(select(((uint16_t)_39 < (uint16_t)50000u), ((int)(min16uint)(_39)), 0))) + (uint)(0)))][_56]._position.w;
  _69 = __0__103__0__0__g_bindlessVertexBuffersTree[((int)((uint)((uint)(select(((uint16_t)_39 < (uint16_t)50000u), ((int)(min16uint)(_39)), 0))) + (uint)(0)))][_56]._normal;
  _71 = __0__103__0__0__g_bindlessVertexBuffersTree[((int)((uint)((uint)(select(((uint16_t)_39 < (uint16_t)50000u), ((int)(min16uint)(_39)), 0))) + (uint)(0)))][_56]._diffuseTex.x;
  _72 = __0__103__0__0__g_bindlessVertexBuffersTree[((int)((uint)((uint)(select(((uint16_t)_39 < (uint16_t)50000u), ((int)(min16uint)(_39)), 0))) + (uint)(0)))][_56]._diffuseTex.y;
  _73 = __0__103__0__0__g_bindlessVertexBuffersTree[((int)((uint)((uint)(select(((uint16_t)_39 < (uint16_t)50000u), ((int)(min16uint)(_39)), 0))) + (uint)(0)))][_56]._diffuseTex.z;
  _74 = __0__103__0__0__g_bindlessVertexBuffersTree[((int)((uint)((uint)(select(((uint16_t)_39 < (uint16_t)50000u), ((int)(min16uint)(_39)), 0))) + (uint)(0)))][_56]._diffuseTex.w;
  _76 = __0__103__0__0__g_bindlessVertexBuffersTree[((int)((uint)((uint)(select(((uint16_t)_39 < (uint16_t)50000u), ((int)(min16uint)(_39)), 0))) + (uint)(0)))][_56]._windNonBranch.x;
  _77 = __0__103__0__0__g_bindlessVertexBuffersTree[((int)((uint)((uint)(select(((uint16_t)_39 < (uint16_t)50000u), ((int)(min16uint)(_39)), 0))) + (uint)(0)))][_56]._windNonBranch.y;
  _78 = __0__103__0__0__g_bindlessVertexBuffersTree[((int)((uint)((uint)(select(((uint16_t)_39 < (uint16_t)50000u), ((int)(min16uint)(_39)), 0))) + (uint)(0)))][_56]._windNonBranch.z;
  _79 = __0__103__0__0__g_bindlessVertexBuffersTree[((int)((uint)((uint)(select(((uint16_t)_39 < (uint16_t)50000u), ((int)(min16uint)(_39)), 0))) + (uint)(0)))][_56]._windNonBranch.w;
  _81 = __0__103__0__0__g_bindlessVertexBuffersTree[((int)((uint)((uint)(select(((uint16_t)_39 < (uint16_t)50000u), ((int)(min16uint)(_39)), 0))) + (uint)(0)))][_56]._windBranch.x;
  _82 = __0__103__0__0__g_bindlessVertexBuffersTree[((int)((uint)((uint)(select(((uint16_t)_39 < (uint16_t)50000u), ((int)(min16uint)(_39)), 0))) + (uint)(0)))][_56]._windBranch.y;
  _87 = _47 + (((_51 - _47) * 1.5259022e-05f) * ((float)((uint16_t)(_64))));
  _92 = _49 + (((_53 - _49) * 1.5259022e-05f) * ((float)((uint16_t)(_65))));
  _97 = _48 + (((_52 - _48) * 1.5259022e-05f) * ((float)((uint16_t)(_66))));
  _98 = float(_73);
  _99 = float(_74);
  _100 = float(_76);
  _101 = float(_77);
  _102 = float(_78);
  _103 = float(_79);
  _104 = float(_81);
  _105 = float(_82);
  _108 = WaveReadLaneFirst(_drawIndex);
  _111 = __3__37__0__0__g_indirectDrawParametersBuffer[_108]._windParams;
  _114 = __3__37__0__0__g_massPlacementInstanceBuffer[BLENDINDICES]._transform[0].x;
  _116 = __3__37__0__0__g_massPlacementInstanceBuffer[BLENDINDICES]._transform[0].y;
  _118 = __3__37__0__0__g_massPlacementInstanceBuffer[BLENDINDICES]._transform[0].z;
  _120 = __3__37__0__0__g_massPlacementInstanceBuffer[BLENDINDICES]._transform[1].x;
  _122 = __3__37__0__0__g_massPlacementInstanceBuffer[BLENDINDICES]._transform[1].y;
  _124 = __3__37__0__0__g_massPlacementInstanceBuffer[BLENDINDICES]._transform[1].z;
  _126 = __3__37__0__0__g_massPlacementInstanceBuffer[BLENDINDICES]._transform[2].x;
  _128 = __3__37__0__0__g_massPlacementInstanceBuffer[BLENDINDICES]._transform[2].z;
  _130 = __3__37__0__0__g_massPlacementInstanceBuffer[BLENDINDICES]._transform[3].x;
  _132 = __3__37__0__0__g_massPlacementInstanceBuffer[BLENDINDICES]._transform[3].y;
  _134 = __3__37__0__0__g_massPlacementInstanceBuffer[BLENDINDICES]._transform[3].z;
  _136 = __3__37__0__0__g_massPlacementInstanceBuffer[BLENDINDICES]._transform[3].w;
  _137 = asint(_128);
  _138 = (uint)((uint)(_137)) >> 30;
  _141 = -0.0f - _viewPos.y;
  _143 = _130 - _viewPos.x;
  _144 = _132 - _viewPos.y;
  _146 = _134 - _viewPos.z;
  _149 = _130 - _viewPosPrev.x;
  _151 = _132 - _viewPosPrev.y;
  _153 = _134 - _viewPosPrev.z;
  _157 = (((float)((uint)((uint)(_69 & 255)))) * 0.00784312f) + -1.0f;
  _162 = (((float)((uint)((uint)(((uint)((uint)(_69)) >> 16) & 255)))) * 0.00784312f) + -1.0f;
  _167 = (((float)((uint)((uint)(((uint)((uint)(_69)) >> 8) & 255)))) * 0.00784312f) + -1.0f;
  _170 = (_118 * _122) - (_116 * _124);
  _173 = (_114 * _124) - (_118 * _120);
  _176 = (_116 * _120) - (_114 * _122);
  _178 = rsqrt(dot(float3(_170, _173, _176), float3(_170, _173, _176)));  // [sem: invLength]
  _180 = -0.0f - (_170 * _178);
  _182 = -0.0f - (_173 * _178);
  _184 = -0.0f - (_176 * _178);
  _188 = max((_136 * f16tof32(((uint)((uint)((uint)(_111)) >> 16)))), 0.01f);
  _190 = saturate(1.0f / _188);  // [sem: expr_sat]
  if ((int)_55 > (int)-1) {
    _200 = ((mad(_180, _99, mad(_120, _103, (_114 * _98))) * _136) + _130) - _clippingSpaceMatrixRelativePosition.x;
    _207 = (_132 - _clippingSpaceMatrixRelativePosition.y) + (mad(_182, _99, mad(_122, _103, (_116 * _98))) * _136);
    _214 = (_134 - _clippingSpaceMatrixRelativePosition.z) + (mad(_184, _99, mad(_124, _103, (_118 * _98))) * _136);
    _226 = (_clippingSpaceMatrixRelativeTexScale[0].w) + mad((_clippingSpaceMatrixRelativeTexScale[0].z), _214, mad((_clippingSpaceMatrixRelativeTexScale[0].y), _207, ((_clippingSpaceMatrixRelativeTexScale[0].x) * _200)));
    _234 = mad((_clippingSpaceMatrixRelativeTexScale[1].z), _214, mad((_clippingSpaceMatrixRelativeTexScale[1].y), _207, ((_clippingSpaceMatrixRelativeTexScale[1].x) * _200))) + (_clippingSpaceMatrixRelativeTexScale[1].w);
    __3__36__0__0__g_topDownClippingSpace.GetDimensions(_236.x, _236.y);
    if (saturate(_226) == _226) {
      if (saturate(_234) == _234) {
        if (_226 > (1.0f / ((float)((int)((int)(_236.x)))))) {
          if (_234 > (1.0f / ((float)((int)((int)(_236.y)))))) {
            // [sem: _3__36__0__0__g_topDownClippingSpace_sampleLod]
            _254 = __3__36__0__0__g_topDownClippingSpace.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_226, _234), 0.0f);
            if (_254.x > 0.0f) {
              _284 = (max(((_clippingSpaceMatrixRelativePosition.y - _132) + (((_clippingSpaceMatrixRelativeInvTexScale[1].w) + mad((_clippingSpaceMatrixRelativeInvTexScale[1].z), _254.x, mad((_clippingSpaceMatrixRelativeInvTexScale[1].y), _234, ((_clippingSpaceMatrixRelativeInvTexScale[1].x) * _226)))) / (mad((_clippingSpaceMatrixRelativeInvTexScale[3].z), _254.x, mad((_clippingSpaceMatrixRelativeInvTexScale[3].y), _234, ((_clippingSpaceMatrixRelativeInvTexScale[3].x) * _226))) + (_clippingSpaceMatrixRelativeInvTexScale[3].w)))), 0.0f) - (_136 * _97)) + 0.35f;
              _288 = select((_284 < -5.0f), 1.0f, _284);
            } else {
              _288 = 1.0f;
            }
          } else {
            _288 = 1.0f;
          }
        } else {
          _288 = 1.0f;
        }
      } else {
        _288 = 1.0f;
      }
    } else {
      _288 = 1.0f;
    }
  } else {
    _288 = 1.0f;
  }
  _293 = dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_143, _144, _146));
  _299 = 1.0f - saturate(((_190 * 12.0f) + -15.0f) + (_293 * 0.0625f));
  if (_293 < (256.0f - (_190 * 192.0f))) {
    _305 = ((uint)((uint)(_111)) >> 4) & 4095;
    if (!(_305 == 4095)) {
      if (_treeParams.x > 0.0f) {
        _314 = __3__37__0__0__g_treeWindDataBuffer[_305]._curr._windVector.x;
        _315 = __3__37__0__0__g_treeWindDataBuffer[_305]._curr._windVector.y;
        _316 = __3__37__0__0__g_treeWindDataBuffer[_305]._curr._windVector.z;
        _317 = __3__37__0__0__g_treeWindDataBuffer[_305]._curr._windVector.w;
        _319 = __3__37__0__0__g_treeWindDataBuffer[_305]._curr._windGlobal.x;
        _320 = __3__37__0__0__g_treeWindDataBuffer[_305]._curr._windGlobal.z;
        _321 = __3__37__0__0__g_treeWindDataBuffer[_305]._curr._windGlobal.w;
        _323 = __3__37__0__0__g_treeWindDataBuffer[_305]._curr._windGlobalData0.x;
        _324 = __3__37__0__0__g_treeWindDataBuffer[_305]._curr._windGlobalData0.y;
        _325 = __3__37__0__0__g_treeWindDataBuffer[_305]._curr._windGlobalData0.z;
        _326 = __3__37__0__0__g_treeWindDataBuffer[_305]._curr._windGlobalData0.w;
        _328 = __3__37__0__0__g_treeWindDataBuffer[_305]._curr._windBranchAndTwitch.x;
        _329 = __3__37__0__0__g_treeWindDataBuffer[_305]._curr._windBranchAndTwitch.z;
        _330 = __3__37__0__0__g_treeWindDataBuffer[_305]._curr._windBranchAndTwitch.w;
        _332 = __3__37__0__0__g_treeWindDataBuffer[_305]._curr._windBranchData0.x;
        _333 = __3__37__0__0__g_treeWindDataBuffer[_305]._curr._windBranchData0.y;
        _335 = __3__37__0__0__g_treeWindDataBuffer[_305]._curr._windLeaf1Data0.x;
        _336 = __3__37__0__0__g_treeWindDataBuffer[_305]._curr._windLeaf1Data0.z;
        _337 = __3__37__0__0__g_treeWindDataBuffer[_305]._curr._windLeaf1Data0.w;
        _339 = __3__37__0__0__g_treeWindDataBuffer[_305]._curr._windLeaf1Data1.x;
        _340 = __3__37__0__0__g_treeWindDataBuffer[_305]._curr._windLeaf1Data1.y;
        _341 = __3__37__0__0__g_treeWindDataBuffer[_305]._curr._windLeaf1Data1.z;
        _342 = __3__37__0__0__g_treeWindDataBuffer[_305]._curr._windLeaf1Data1.w;
        _344 = __3__37__0__0__g_treeWindDataBuffer[_305]._curr._windLeaf1Data2.x;
        _345 = __3__37__0__0__g_treeWindDataBuffer[_305]._curr._windLeaf1Data2.y;
        _346 = __3__37__0__0__g_treeWindDataBuffer[_305]._curr._windLeaf1Data2.z;
        _347 = __3__37__0__0__g_treeWindDataBuffer[_305]._curr._windLeaf1Data2.w;
        _349 = __3__37__0__0__g_treeWindDataBuffer[_305]._curr._windLeaf1Data3.x;
        _350 = __3__37__0__0__g_treeWindDataBuffer[_305]._curr._windLeaf1Data3.y;
        _352 = __3__37__0__0__g_treeWindDataBuffer[_305]._curr._windLeaf1Data4.x;
        _353 = __3__37__0__0__g_treeWindDataBuffer[_305]._curr._windLeaf1Data4.y;
        _354 = __3__37__0__0__g_treeWindDataBuffer[_305]._curr._windLeaf1Data4.z;
        _356 = __3__37__0__0__g_treeWindDataBuffer[_305]._prev._windVector.x;
        _357 = __3__37__0__0__g_treeWindDataBuffer[_305]._prev._windVector.y;
        _358 = __3__37__0__0__g_treeWindDataBuffer[_305]._prev._windVector.z;
        _359 = __3__37__0__0__g_treeWindDataBuffer[_305]._prev._windVector.w;
        _361 = __3__37__0__0__g_treeWindDataBuffer[_305]._prev._windGlobal.x;
        _362 = __3__37__0__0__g_treeWindDataBuffer[_305]._prev._windGlobal.z;
        _363 = __3__37__0__0__g_treeWindDataBuffer[_305]._prev._windGlobal.w;
        _365 = __3__37__0__0__g_treeWindDataBuffer[_305]._prev._windGlobalData0.x;
        _366 = __3__37__0__0__g_treeWindDataBuffer[_305]._prev._windGlobalData0.y;
        _367 = __3__37__0__0__g_treeWindDataBuffer[_305]._prev._windGlobalData0.z;
        _368 = __3__37__0__0__g_treeWindDataBuffer[_305]._prev._windGlobalData0.w;
        _370 = __3__37__0__0__g_treeWindDataBuffer[_305]._prev._windBranchAndTwitch.x;
        _371 = __3__37__0__0__g_treeWindDataBuffer[_305]._prev._windBranchAndTwitch.z;
        _372 = __3__37__0__0__g_treeWindDataBuffer[_305]._prev._windBranchAndTwitch.w;
        _374 = __3__37__0__0__g_treeWindDataBuffer[_305]._prev._windBranchData0.x;
        _375 = __3__37__0__0__g_treeWindDataBuffer[_305]._prev._windBranchData0.y;
        _377 = __3__37__0__0__g_treeWindDataBuffer[_305]._prev._windLeaf1Data0.x;
        _378 = __3__37__0__0__g_treeWindDataBuffer[_305]._prev._windLeaf1Data0.z;
        _379 = __3__37__0__0__g_treeWindDataBuffer[_305]._prev._windLeaf1Data0.w;
        _381 = __3__37__0__0__g_treeWindDataBuffer[_305]._prev._windLeaf1Data1.x;
        _382 = __3__37__0__0__g_treeWindDataBuffer[_305]._prev._windLeaf1Data1.y;
        _383 = __3__37__0__0__g_treeWindDataBuffer[_305]._prev._windLeaf1Data1.z;
        _384 = __3__37__0__0__g_treeWindDataBuffer[_305]._prev._windLeaf1Data1.w;
        _386 = __3__37__0__0__g_treeWindDataBuffer[_305]._prev._windLeaf1Data2.x;
        _387 = __3__37__0__0__g_treeWindDataBuffer[_305]._prev._windLeaf1Data2.y;
        _388 = __3__37__0__0__g_treeWindDataBuffer[_305]._prev._windLeaf1Data2.z;
        _389 = __3__37__0__0__g_treeWindDataBuffer[_305]._prev._windLeaf1Data2.w;
        _391 = __3__37__0__0__g_treeWindDataBuffer[_305]._prev._windLeaf1Data3.x;
        _392 = __3__37__0__0__g_treeWindDataBuffer[_305]._prev._windLeaf1Data3.y;
        _394 = __3__37__0__0__g_treeWindDataBuffer[_305]._prev._windLeaf1Data4.x;
        _395 = __3__37__0__0__g_treeWindDataBuffer[_305]._prev._windLeaf1Data4.y;
        _396 = __3__37__0__0__g_treeWindDataBuffer[_305]._prev._windLeaf1Data4.z;
        if (_293 < 64.0f) {
          _405 = _windFluidVolumeParams.y * (floor(_viewPos.x * _windFluidVolumeParams.z) + 0.5f);
          _409 = _windFluidVolumeParams.y * (floor(_viewPos.y * _windFluidVolumeParams.z) + 0.5f);
          _413 = _windFluidVolumeParams.y * (floor(_viewPos.z * _windFluidVolumeParams.z) + 0.5f);
          _415 = _windFluidVolumeParams.x * 0.5f;
          _419 = (_415 + (_windFluidVolumeParams.z * (_130 - _405))) / _windFluidVolumeParams.x;
          _423 = (_415 + (_windFluidVolumeParams.z * (_132 - _409))) / _windFluidVolumeParams.x;
          _427 = (_415 + (_windFluidVolumeParams.z * (_134 - _413))) / _windFluidVolumeParams.x;
          if (!((_427 > 1.0f) || ((_423 > 1.0f) || ((_419 > 1.0f) || (((_419 < 0.0f) || (_423 < 0.0f)) || (_427 < 0.0f)))))) {
            // [sem: _3__36__0__0__g_windFluidInteractionVelocityHistory_sampleLod]
            _442 = __3__36__0__0__g_windFluidInteractionVelocityHistory.SampleLevel(__0__95__0__0__g_samplerAnisotropicWrap, float3(_419, _423, _427), 0.0f);
            _447 = rsqrt(dot(float3(_442.x, _442.y, _442.z), float3(_442.x, _442.y, _442.z)));  // [sem: invLength]
            _453 = sqrt((_442.z * _442.z) + ((_442.x * _442.x) + (_442.y * _442.y)));
            if (!(_453 < 0.001f)) {
              _460 = _453;
              _461 = (_442.z * _447);
              _462 = (_442.y * _447);
              _463 = (_442.x * _447);
            } else {
              _460 = 0.0f;
              _461 = 0.0f;
              _462 = 0.0f;
              _463 = 0.0f;
            }
          } else {
            _460 = 0.0f;
            _461 = 0.0f;
            _462 = 0.0f;
            _463 = 0.0f;
          }
          _468 = ((((_149 + _viewPos.x) - _405) * _windFluidVolumeParams.z) + _415) / _windFluidVolumeParams.x;
          _473 = ((((_151 + _viewPos.y) - _409) * _windFluidVolumeParams.z) + _415) / _windFluidVolumeParams.x;
          _478 = ((((_153 + _viewPos.z) - _413) * _windFluidVolumeParams.z) + _415) / _windFluidVolumeParams.x;
          if (!((_478 > 1.0f) || ((_473 > 1.0f) || ((_468 > 1.0f) || (((_468 < 0.0f) || (_473 < 0.0f)) || (_478 < 0.0f)))))) {
            // [sem: _3__36__0__0__g_windFluidInteractionVelocityHistoryPrev_sampleLod]
            _493 = __3__36__0__0__g_windFluidInteractionVelocityHistoryPrev.SampleLevel(__0__95__0__0__g_samplerAnisotropicWrap, float3(_468, _473, _478), 0.0f);
            _498 = rsqrt(dot(float3(_493.x, _493.y, _493.z), float3(_493.x, _493.y, _493.z)));  // [sem: invLength]
            _504 = sqrt(((_493.x * _493.x) + (_493.y * _493.y)) + (_493.z * _493.z));
            if (!(_504 < 0.001f)) {
              _511 = _504;
              _512 = (_498 * _493.z);
              _513 = (_498 * _493.y);
              _514 = (_498 * _493.x);
            } else {
              _511 = 0.0f;
              _512 = 0.0f;
              _513 = 0.0f;
              _514 = 0.0f;
            }
          } else {
            _511 = 0.0f;
            _512 = 0.0f;
            _513 = 0.0f;
            _514 = 0.0f;
          }
          _515 = saturate(_460);  // [sem: _460_sat]
          _518 = _314 + ((_463 - _314) * _515);
          _521 = _315 + ((_462 - _315) * _515);
          _524 = _316 + ((_461 - _316) * _515);
          _526 = rsqrt(dot(float3(_518, _521, _524), float3(_518, _521, _524)));  // [sem: invLength]
          _527 = saturate(_511);  // [sem: _511_sat]
          _530 = (_527 * (_514 - _356)) + _356;
          _533 = (_527 * (_513 - _357)) + _357;
          _536 = (_527 * (_512 - _358)) + _358;
          _538 = rsqrt(dot(float3(_530, _533, _536), float3(_530, _533, _536)));  // [sem: invLength]
          _552 = (_317 + ((1.0f - _317) * _515));
          _553 = (_524 * _526);
          _554 = (_521 * _526);
          _555 = (_518 * _526);
          _556 = ((_527 * (1.0f - _359)) + _359);
          _557 = (_536 * _538);
          _558 = (_533 * _538);
          _559 = (_530 * _538);
        } else {
          _552 = _317;
          _553 = _316;
          _554 = _315;
          _555 = _314;
          _556 = _359;
          _557 = _358;
          _558 = _357;
          _559 = _356;
        }
        _562 = mad(_118, _553, mad(_116, _554, (_114 * _555)));
        _565 = mad(_124, _553, mad(_122, _554, (_120 * _555)));
        _568 = mad(_184, _553, mad(_182, _554, (_555 * _180)));
        _570 = rsqrt(dot(float3(_562, _565, _568), float3(_562, _565, _568)));  // [sem: invLength]
        _571 = _562 * _570;
        _572 = _565 * _570;
        _573 = _568 * _570;
        _574 = _130 + 0.5f;
        _575 = _132 + 0.5f;
        _580 = abs((frac(_574 + _319) * 2.0f) + -1.0f);
        _586 = abs((frac(_575 + (_319 * 0.8f)) * 2.0f) + -1.0f);
        _592 = (((_586 * _586) * (3.0f - (_586 * 2.0f))) + -0.5f) * 2.0f;
        _593 = saturate(_552);  // [sem: _552_sat]
        _596 = _325 + ((_326 - _325) * _593);
        _623 = (exp2(_321 * log2(saturate((_320 * 100.0f) * max((_97 - (0.0025f / _320)), 0.0f)))) * 0.01f) * (((_323 + ((_324 - _323) * _593)) * (((((_580 * _580) * (3.0f - (_580 * 2.0f))) + -0.5f) * 2.0f) + (_592 * _592))) + select((!(_320 == 0.0f)), (_596 / _320), _596));
        _624 = _571 * _623;
        _625 = _573 * _623;
        _626 = _624 + _87;
        _627 = _625 + _92;
        _629 = rsqrt(dot(float3(_87, _97, _92), float3(_87, _97, _92)));  // [sem: invLength]
        _630 = _629 * _87;
        _631 = _629 * _97;
        _632 = _629 * _92;
        _634 = rsqrt(dot(float3(_626, _97, _627), float3(_626, _97, _627)));  // [sem: invLength]
        _635 = _626 * _634;
        _636 = _634 * _97;
        _637 = _627 * _634;
        _638 = dot(float3(_635, _636, _637), float3(_630, _631, _632));
        _643 = ((-0.87266463f - ((_638 * _638) * 0.6981317f)) * _638) + 1.5707964f;
        if (_643 > 0.01f) {
          _646 = _643 * 3.0f;
          _649 = (_636 * _632) - (_637 * _631);
          _652 = (_637 * _630) - (_635 * _632);
          _655 = (_635 * _631) - (_636 * _630);
          _656 = sin(_646);
          _657 = cos(_646);
          _658 = 1.0f - _657;
          _659 = _658 * _649;
          _660 = _659 * _652;
          _661 = _656 * _655;
          _662 = _658 * _655;
          _663 = _662 * _649;
          _664 = _656 * _652;
          _665 = _662 * _652;
          _666 = _656 * _649;
          _690 = mad(_167, ((_662 * _655) + _657), mad(_162, (_665 - _666), ((_663 + _664) * _157)));
          _691 = mad(_167, (_665 + _666), mad(_162, (((_652 * _652) * _658) + _657), ((_660 - _661) * _157)));
          _692 = mad(_167, (_663 - _664), mad(_162, (_660 + _661), (((_659 * _649) + _657) * _157)));
        } else {
          _690 = _167;
          _691 = _162;
          _692 = _157;
        }
        _696 = (frac(_105 * 0.0625f) * 2.0f) + -1.0f;
        _699 = (frac(_105) * 2.0f) + -1.0f;
        _703 = (frac(_105 * 16.0f) * 2.0f) + -1.0f;
        _704 = _105 + _130;
        _705 = _704 + _328;
        _706 = _330 * _705;
        _711 = abs((frac(_705 + 0.5f) * 2.0f) + -1.0f);
        _716 = abs((frac(_706 + 0.5f) * 2.0f) + -1.0f);
        _722 = abs((frac((_706 * 0.5f) + 0.5f) * 2.0f) + -1.0f);
        _734 = ((((_716 * _716) * (3.0f - (_716 * 2.0f))) + -0.5f) * 4.0f) * (((_722 * _722) * (3.0f - (_722 * 2.0f))) + -0.5f);
        _735 = (_734 < 0.0f);
        _736 = select(_735, -1.0f, 1.0f);
        _738 = select(_735, (-0.0f - _734), _734);
        _741 = _734 + (_738 * (_736 - _734));
        _745 = (_104 * 0.01f) * rsqrt(dot(float3(_696, _699, _703), float3(_696, _699, _703)));
        _746 = _696 * _745;
        _766 = max((_332 + ((_333 - _332) * _593)), 1.0f) * ((((1.0f - _329) * 2.0f) * (((_711 * _711) * (3.0f - (_711 * 2.0f))) + -0.5f)) + ((_329 * (1.0f - _552)) * (_741 + (_738 * (_736 - _741)))));
        _767 = _703 * _745;
        _768 = _699 * _745;
        _770 = ((_111 & 14) == 2);
        if (_770) {
          _778 = dot(float3((_98 + (_130 * 0.01f)), (_103 + (_132 * 0.01f)), (_99 + (_134 * 0.01f))), float3(10.0f, 10.0f, 10.0f));
          _785 = abs((frac((_335 + 0.5f) + dot(float3(_87, _97, _92), float3(10.0f, 10.0f, 10.0f))) * 2.0f) + -1.0f);
          _789 = (frac(_102 * 0.0625f) * 2.0f) + -1.0f;
          _792 = (frac(_102) * 2.0f) + -1.0f;
          _796 = (frac(_102 * 16.0f) * 2.0f) + -1.0f;
          _811 = (_100 * 0.01f) * ((((_339 + ((_340 - _339) * _552)) * 2.0f) * (((_785 * _785) * (3.0f - (_785 * 2.0f))) + -0.5f)) * rsqrt(dot(float3(_789, _792, _796), float3(_789, _792, _796))));
          _815 = (frac(_101 * 0.0625f) * 2.0f) + -1.0f;
          _818 = (frac(_101) * 2.0f) + -1.0f;
          _822 = (frac(_101 * 16.0f) * 2.0f) + -1.0f;
          _824 = rsqrt(dot(float3(_815, _818, _822), float3(_815, _818, _822)));  // [sem: invLength]
          _825 = _815 * _824;
          _826 = _818 * _824;
          _827 = _822 * _824;
          _828 = _778 + 0.5f;
          _833 = abs((frac(_336 + _828) * 2.0f) + -1.0f);
          _840 = abs((frac(((_336 * 0.75f) + 0.5f) - _778) * 2.0f) + -1.0f);
          _846 = (((_833 * _833) * (3.0f - (_833 * 2.0f))) + -0.5f) * 2.0f;
          _852 = (((_840 * _840) * (3.0f - (_840 * 2.0f))) + -0.5f) * 2.0f;
          _853 = _87 - _98;
          _854 = _97 - _103;
          _855 = _92 - _99;
          _856 = _100 * 0.5f;
          _863 = (_856 * (_344 + ((_345 - _344) * _552))) * (_846 + (_852 * _852));
          _864 = sin(_863);
          _865 = cos(_863);
          _866 = _825 * _864;
          _867 = _827 * _864;
          _868 = _826 * _864;
          _871 = (_573 * _827) - (_572 * _826);
          _874 = (_572 * _825) - (_571 * _827);
          _877 = min(max(dot(float3(_571, _572, _573), float3(_825, _827, _826)), -1.0f), 1.0f);
          _881 = ((_571 * _826) - (_573 * _825)) + _877;
          _883 = (_337 * 0.01f) + _778;
          _890 = abs((frac(_883 + ((_778 * _778) + 0.5f)) * 2.0f) + -1.0f);
          _896 = abs((frac(_828 + (_883 * 0.87f)) * 2.0f) + -1.0f);
          _902 = (((_896 * _896) * (3.0f - (_896 * 2.0f))) + -0.5f) * 2.0f;
          _945 = _856 * ((((_341 + ((_342 - _341) * _552)) * (_852 - (_846 * _846))) + ((_346 + ((_347 - _346) * _552)) * ((_877 * (-0.87266463f - ((_877 * _877) * 0.6981317f))) + 1.5707964f))) + (((_349 + ((_350 - _349) * _552)) * 0.01f) * exp2(((_354 * 0.099999994f) * (1.0f / (_352 + ((_353 - _352) * _552)))) * log2(saturate(((((((_890 * _890) * (3.0f - (_890 * 2.0f))) + -0.5f) * 2.0f) * (_902 * _902)) + 1.0f) * 0.5f)))));
          _946 = cos(_945);
          _950 = sin(_945) * rsqrt(dot(float3(_871, _881, _874), float3(_871, _881, _874)));
          _951 = _871 * _950;
          _952 = _881 * _950;
          _953 = _874 * _950;
          _960 = (_865 * _951) + ((_867 * _953) + ((_866 * _946) - (_868 * _952)));
          _967 = (_865 * _952) + ((_868 * _951) + ((_867 * _946) - (_866 * _953)));
          _974 = (_865 * _953) + ((_866 * _952) + ((_868 * _946) - (_867 * _951)));
          _977 = (_865 * _946) - dot(float3(_866, _867, _868), float3(_951, _952, _953));
          _978 = -0.0f - _960;
          _979 = -0.0f - _967;
          _980 = -0.0f - _974;
          _985 = ((_691 * _980) - (_690 * _979)) + (_977 * _692);
          _990 = ((_690 * _978) - (_692 * _980)) + (_977 * _691);
          _995 = ((_692 * _979) - (_691 * _978)) + (_977 * _690);
          _997 = -0.0f - dot(float3(_692, _691, _690), float3(_978, _979, _980));
          _1002 = (_853 * _977) + ((_854 * _980) - (_855 * _979));
          _1007 = (_854 * _977) + ((_855 * _978) - (_853 * _980));
          _1012 = (_855 * _977) + ((_853 * _979) - (_854 * _978));
          _1014 = -0.0f - dot(float3(_853, _854, _855), float3(_978, _979, _980));
          _1021 = ((_960 * _1014) + (_977 * _1002)) + ((_967 * _1012) - (_974 * _1007));
          _1028 = ((_967 * _1014) + (_977 * _1007)) + ((_974 * _1002) - (_960 * _1012));
          _1035 = ((_974 * _1014) + (_977 * _1012)) + ((_960 * _1007) - (_967 * _1002));
          // [sem: invLength]
          _1044 = rsqrt(dot(float3(_1021, _1028, _1035), float3(_1021, _1028, _1035))) * sqrt(((_853 * _853) + (_855 * _855)) + (_854 * _854));
          _1082 = ((((_995 * _977) + (_974 * _997)) - (_985 * _967)) + (_990 * _960));
          _1083 = ((((_990 * _977) + (_967 * _997)) - (_995 * _960)) + (_985 * _974));
          _1084 = ((((_985 * _977) + (_960 * _997)) - (_990 * _974)) + (_995 * _967));
          _1085 = (((_99 - _92) + (_792 * _811)) + (_1044 * _1035));
          _1086 = (((_103 - _97) + (_796 * _811)) + (_1044 * _1028));
          _1087 = (((_98 - _87) + (_789 * _811)) + (_1044 * _1021));
        } else {
          _1082 = _690;
          _1083 = _691;
          _1084 = _692;
          _1085 = 0.0f;
          _1086 = 0.0f;
          _1087 = 0.0f;
        }
        _1090 = mad(_118, _557, mad(_116, _558, (_559 * _114)));
        _1093 = mad(_124, _557, mad(_122, _558, (_559 * _120)));
        _1096 = mad(_184, _557, mad(_182, _558, (_559 * _180)));
        _1098 = rsqrt(dot(float3(_1090, _1093, _1096), float3(_1090, _1093, _1096)));  // [sem: invLength]
        _1099 = _1098 * _1090;
        _1100 = _1098 * _1093;
        _1101 = _1098 * _1096;
        _1106 = abs((frac(_361 + _574) * 2.0f) + -1.0f);
        _1112 = abs((frac((_361 * 0.8f) + _575) * 2.0f) + -1.0f);
        _1118 = (((_1112 * _1112) * (3.0f - (_1112 * 2.0f))) + -0.5f) * 2.0f;
        _1119 = saturate(_556);  // [sem: _556_sat]
        _1122 = (_1119 * (_368 - _367)) + _367;
        _1149 = (exp2(log2(saturate((_362 * 100.0f) * max((_97 - (0.0025f / _362)), 0.0f))) * _363) * 0.01f) * ((((_1118 * _1118) + ((((_1106 * _1106) * (3.0f - (_1106 * 2.0f))) + -0.5f) * 2.0f)) * ((_1119 * (_366 - _365)) + _365)) + select((!(_362 == 0.0f)), (_1122 / _362), _1122));
        _1150 = _370 + _704;
        _1151 = _1150 * _372;
        _1156 = abs((frac(_1150 + 0.5f) * 2.0f) + -1.0f);
        _1161 = abs((frac(_1151 + 0.5f) * 2.0f) + -1.0f);
        _1167 = abs((frac((_1151 * 0.5f) + 0.5f) * 2.0f) + -1.0f);
        _1179 = ((((_1161 * _1161) * (3.0f - (_1161 * 2.0f))) + -0.5f) * 4.0f) * (((_1167 * _1167) * (3.0f - (_1167 * 2.0f))) + -0.5f);
        _1180 = (_1179 < 0.0f);
        _1181 = select(_1180, -1.0f, 1.0f);
        _1183 = select(_1180, (-0.0f - _1179), _1179);
        _1186 = ((_1181 - _1179) * _1183) + _1179;
        _1206 = ((((1.0f - _556) * _371) * (lerp(_1186, _1181, _1183))) + (((1.0f - _371) * 2.0f) * (((_1156 * _1156) * (3.0f - (_1156 * 2.0f))) + -0.5f))) * max(((_1119 * (_375 - _374)) + _374), 1.0f);
        if (_770) {
          _1214 = dot(float3(((_130 * 0.01f) + _98), ((_132 * 0.01f) + _103), ((_134 * 0.01f) + _99)), float3(10.0f, 10.0f, 10.0f));
          _1221 = abs((frac((_377 + 0.5f) + dot(float3(_87, _97, _92), float3(10.0f, 10.0f, 10.0f))) * 2.0f) + -1.0f);
          _1225 = (frac(_102 * 0.0625f) * 2.0f) + -1.0f;
          _1228 = (frac(_102) * 2.0f) + -1.0f;
          _1232 = (frac(_102 * 16.0f) * 2.0f) + -1.0f;
          _1246 = (((_100 * 0.02f) * ((_556 * (_382 - _381)) + _381)) * (((_1221 * _1221) * (3.0f - (_1221 * 2.0f))) + -0.5f)) * rsqrt(dot(float3(_1225, _1228, _1232), float3(_1225, _1228, _1232)));
          _1250 = (frac(_101 * 0.0625f) * 2.0f) + -1.0f;
          _1253 = (frac(_101) * 2.0f) + -1.0f;
          _1257 = (frac(_101 * 16.0f) * 2.0f) + -1.0f;
          _1259 = rsqrt(dot(float3(_1250, _1253, _1257), float3(_1250, _1253, _1257)));  // [sem: invLength]
          _1260 = _1259 * _1250;
          _1261 = _1259 * _1253;
          _1262 = _1257 * _1259;
          _1263 = _1214 + 0.5f;
          _1268 = abs((frac(_1263 + _378) * 2.0f) + -1.0f);
          _1275 = abs((frac(((_378 * 0.75f) + 0.5f) - _1214) * 2.0f) + -1.0f);
          _1281 = (((_1268 * _1268) * (3.0f - (_1268 * 2.0f))) + -0.5f) * 2.0f;
          _1287 = (((_1275 * _1275) * (3.0f - (_1275 * 2.0f))) + -0.5f) * 2.0f;
          _1288 = _87 - _98;
          _1289 = _97 - _103;
          _1290 = _92 - _99;
          _1291 = _100 * 0.5f;
          _1298 = (((_556 * (_387 - _386)) + _386) * _1291) * ((_1287 * _1287) + _1281);
          _1299 = sin(_1298);
          _1300 = cos(_1298);
          _1301 = _1299 * _1260;
          _1302 = _1299 * _1262;
          _1303 = _1299 * _1261;
          _1306 = (_1262 * _1101) - (_1261 * _1100);
          _1309 = (_1260 * _1100) - (_1262 * _1099);
          _1312 = min(max(dot(float3(_1099, _1100, _1101), float3(_1260, _1262, _1261)), -1.0f), 1.0f);
          _1316 = _1312 + ((_1261 * _1099) - (_1260 * _1101));
          _1318 = _1214 + (_379 * 0.01f);
          _1325 = abs((frac(((_1214 * _1214) + 0.5f) + _1318) * 2.0f) + -1.0f);
          _1331 = abs((frac((_1318 * 0.87f) + _1263) * 2.0f) + -1.0f);
          _1337 = (((_1331 * _1331) * (3.0f - (_1331 * 2.0f))) + -0.5f) * 2.0f;
          _1380 = ((((((-0.87266463f - ((_1312 * _1312) * 0.6981317f)) * _1312) + 1.5707964f) * ((_556 * (_389 - _388)) + _388)) + ((_1287 - (_1281 * _1281)) * ((_556 * (_384 - _383)) + _383))) + ((((_556 * (_392 - _391)) + _391) * 0.01f) * exp2(((_396 * 0.099999994f) * (1.0f / ((_556 * (_395 - _394)) + _394))) * log2(saturate((((_1337 * _1337) * ((((_1325 * _1325) * (3.0f - (_1325 * 2.0f))) + -0.5f) * 2.0f)) + 1.0f) * 0.5f))))) * _1291;
          _1381 = cos(_1380);
          _1385 = rsqrt(dot(float3(_1306, _1316, _1309), float3(_1306, _1316, _1309))) * sin(_1380);  // [sem: invLength]
          _1386 = _1385 * _1306;
          _1387 = _1385 * _1316;
          _1388 = _1385 * _1309;
          _1395 = (((_1381 * _1301) - (_1387 * _1303)) + (_1388 * _1302)) + (_1386 * _1300);
          _1402 = (((_1381 * _1302) - (_1388 * _1301)) + (_1386 * _1303)) + (_1387 * _1300);
          _1409 = (((_1381 * _1303) - (_1386 * _1302)) + (_1387 * _1301)) + (_1388 * _1300);
          _1412 = (_1381 * _1300) - dot(float3(_1301, _1302, _1303), float3(_1386, _1387, _1388));
          _1413 = -0.0f - _1395;
          _1414 = -0.0f - _1402;
          _1415 = -0.0f - _1409;
          _1420 = ((_1289 * _1415) - (_1290 * _1414)) + (_1412 * _1288);
          _1425 = ((_1290 * _1413) - (_1288 * _1415)) + (_1412 * _1289);
          _1430 = ((_1288 * _1414) - (_1289 * _1413)) + (_1412 * _1290);
          _1432 = -0.0f - dot(float3(_1288, _1289, _1290), float3(_1413, _1414, _1415));
          _1439 = ((_1420 * _1412) + (_1395 * _1432)) + ((_1430 * _1402) - (_1425 * _1409));
          _1446 = ((_1425 * _1412) + (_1402 * _1432)) + ((_1420 * _1409) - (_1430 * _1395));
          _1453 = ((_1430 * _1412) + (_1409 * _1432)) + ((_1425 * _1395) - (_1420 * _1402));
          _1462 = sqrt(((_1290 * _1290) + (_1288 * _1288)) + (_1289 * _1289)) * rsqrt(dot(float3(_1439, _1446, _1453), float3(_1439, _1446, _1453)));
          _1479 = (((_99 - _92) + (_1246 * _1228)) + (_1453 * _1462));
          _1480 = (((_103 - _97) + (_1246 * _1232)) + (_1446 * _1462));
          _1481 = (((_98 - _87) + (_1246 * _1225)) + (_1439 * _1462));
        } else {
          _1479 = 0.0f;
          _1480 = 0.0f;
          _1481 = 0.0f;
        }
        _1513 = _1082;
        _1514 = _1083;
        _1515 = _1084;
        _1516 = (((((_1206 * _768) + (_1149 * _1101)) + _1479) * _299) + _92);
        _1517 = (((_1480 + (_1206 * _767)) * _299) + _97);
        _1518 = (((((_1206 * _746) + (_1149 * _1099)) + _1481) * _299) + _87);
        _1519 = (_92 + (_299 * ((_625 + (_768 * _766)) + _1085)));
        _1520 = (_97 + (_299 * ((_767 * _766) + _1086)));
        _1521 = (_87 + (_299 * ((_624 + (_746 * _766)) + _1087)));
      } else {
        _1513 = _167;
        _1514 = _162;
        _1515 = _157;
        _1516 = _92;
        _1517 = _97;
        _1518 = _87;
        _1519 = _92;
        _1520 = _97;
        _1521 = _87;
      }
    } else {
      _1513 = _167;
      _1514 = _162;
      _1515 = _157;
      _1516 = _92;
      _1517 = _97;
      _1518 = _87;
      _1519 = _92;
      _1520 = _97;
      _1521 = _87;
    }
  } else {
    _1513 = _167;
    _1514 = _162;
    _1515 = _157;
    _1516 = _92;
    _1517 = _97;
    _1518 = _87;
    _1519 = _92;
    _1520 = _97;
    _1521 = _87;
  }
  // RenoDX: >>> [Patch: FoliageSpeedTreeWindCoherence] [Version: 1.16.00]
  // Description: Rejects a wind result when current and previous SpeedTree positions diverge by one unit or become non-finite, then restores the native unbent position and normal. A disabled feature performs no writes.
  if (FOLIAGE_SPEEDTREE_WIND_COHERENCE == 1.f) {
    const float3 _renodxSpeedTreeBasePosition = float3(_87, _97, _92);
    const float3 _renodxSpeedTreeBaseNormal = float3(_157, _162, _167);
    const float3 _renodxSpeedTreeCurrentPosition = float3(_1521, _1520, _1519);
    const float3 _renodxSpeedTreePreviousPosition = float3(_1518, _1517, _1516);
    const float3 _renodxSpeedTreeWindDelta = _renodxSpeedTreeCurrentPosition - _renodxSpeedTreePreviousPosition;
    const bool _renodxSpeedTreeWindCoherent = dot(_renodxSpeedTreeWindDelta, _renodxSpeedTreeWindDelta) < 1.0f;
    if (!_renodxSpeedTreeWindCoherent) {
      _1521 = _renodxSpeedTreeBasePosition.x;
      _1520 = _renodxSpeedTreeBasePosition.y;
      _1519 = _renodxSpeedTreeBasePosition.z;
      _1518 = _renodxSpeedTreeBasePosition.x;
      _1517 = _renodxSpeedTreeBasePosition.y;
      _1516 = _renodxSpeedTreeBasePosition.z;
      _1515 = _renodxSpeedTreeBaseNormal.x;
      _1514 = _renodxSpeedTreeBaseNormal.y;
      _1513 = _renodxSpeedTreeBaseNormal.z;
    }
  }
  // RenoDX: <<< [Patch: FoliageSpeedTreeWindCoherence]
  _1524 = mad(_180, _1519, mad(_120, _1520, (_114 * _1521)));
  _1527 = mad(_182, _1519, mad(_122, _1520, (_116 * _1521)));
  _1530 = mad(_184, _1519, mad(_124, _1520, (_118 * _1521)));
  _1532 = _143 + (_136 * _1524);
  _1534 = _144 + (_136 * _1527);
  _1536 = _146 + (_136 * _1530);
  _1539 = mad(_182, _1516, mad(_122, _1517, (_1518 * _116)));
  _1544 = (mad(_180, _1516, mad(_120, _1517, (_1518 * _114))) * _136) + _149;
  _1546 = (_1539 * _136) + _151;
  _1551 = (mad(_184, _1516, mad(_124, _1517, (_1518 * _118))) * _136) + _153;
  _1554 = mad(_180, _1513, mad(_120, _1514, (_1515 * _114)));
  _1557 = mad(_182, _1513, mad(_122, _1514, (_1515 * _116)));
  _1560 = mad(_184, _1513, mad(_124, _1514, (_1515 * _118)));
  if (!(_293 < 64.0f) || ((_293 < 64.0f) && (!(_treeParams.z > 0.0f)))) {
    _5208 = (_viewProjRelativePrev[0].w) + mad((_viewProjRelativePrev[0].z), _1551, mad((_viewProjRelativePrev[0].y), _1546, ((_viewProjRelativePrev[0].x) * _1544)));
    _5216 = mad((_viewProjRelativePrev[1].z), _1551, mad((_viewProjRelativePrev[1].y), _1546, ((_viewProjRelativePrev[1].x) * _1544))) + (_viewProjRelativePrev[1].w);
    _5224 = mad((_viewProjRelativePrev[2].z), _1551, mad((_viewProjRelativePrev[2].y), _1546, ((_viewProjRelativePrev[2].x) * _1544))) + (_viewProjRelativePrev[2].w);
    _5232 = mad((_viewProjRelativePrev[3].z), _1551, mad((_viewProjRelativePrev[3].y), _1546, ((_viewProjRelativePrev[3].x) * _1544))) + (_viewProjRelativePrev[3].w);
    _5244 = mad((_viewProjRelative[0].z), _1536, mad((_viewProjRelative[0].y), _1534, (_1532 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w);
    _5252 = (_viewProjRelative[1].w) + mad((_viewProjRelative[1].z), _1536, mad((_viewProjRelative[1].y), _1534, (_1532 * (_viewProjRelative[1].x))));
    _5260 = (_viewProjRelative[2].w) + mad((_viewProjRelative[2].z), _1536, mad((_viewProjRelative[2].y), _1534, (_1532 * (_viewProjRelative[2].x))));
    _5268 = (_viewProjRelative[3].w) + mad((_viewProjRelative[3].z), _1536, mad((_viewProjRelative[3].y), _1534, (_1532 * (_viewProjRelative[3].x))));
    _5270 = rsqrt(dot(float3(_1554, _1557, _1560), float3(_1554, _1557, _1560)));  // [sem: invLength]
    _5272 = half(_5270 * _1554);
    _5274 = half(_5270 * _1557);
    _5276 = half(_5270 * _1560);
    _5282 = half((((float)((uint16_t)((int16_t)(_67 & 255)))) * 0.003921569f) * min(2.0f, _136));
    _5285 = (int)(_drawIndex) | (int)(-16777216);
    _5289 = select((_variableRateShadingParams.x > 0.0f), 5, 0);
    if ((SV_VertexID != 0) && (((int)((uint)((uint)(SV_VertexID)) % (uint)(40))) == 0)) {
      if (sqrt(((_1534 * _1534) + (_1532 * _1532)) + (_1536 * _1536)) < 4.0f) {
        __3__39__0__1__g_treeSurfacePositionsCounterBufferUAV.InterlockedAdd(0, 1, _5304);
        if ((uint)_5304 < (uint)1024) {
          TreeSurfacePositionData __struct_store_0;
          __struct_store_0._worldPos = float4((_viewPos.x + _1532), (_viewPos.y + _1534), (_viewPos.z + _1536), 1.0f);
          __struct_store_0._worldPosPrev = float4((_viewPosPrev.x + _1544), (_viewPosPrev.y + _1546), (_viewPosPrev.z + _1551), 1.0f);
          __3__39__0__1__g_treeSurfacePositionsBufferUAV[_5304] = __struct_store_0;
          _5323 = _5268;
          _5324 = _5260;
          _5325 = _5252;
          _5326 = _5244;
          _5327 = _5289;
          _5328 = _288;
          _5329 = _5285;
          _5330 = _5282;
          _5331 = _5276;
          _5332 = _5274;
          _5333 = _5272;
          _5334 = _5232;
          _5335 = _5224;
          _5336 = _5216;
          _5337 = _5208;
          _5338 = _97;
        } else {
          _5323 = _5268;
          _5324 = _5260;
          _5325 = _5252;
          _5326 = _5244;
          _5327 = _5289;
          _5328 = _288;
          _5329 = _5285;
          _5330 = _5282;
          _5331 = _5276;
          _5332 = _5274;
          _5333 = _5272;
          _5334 = _5232;
          _5335 = _5224;
          _5336 = _5216;
          _5337 = _5208;
          _5338 = _97;
        }
      } else {
        _5323 = _5268;
        _5324 = _5260;
        _5325 = _5252;
        _5326 = _5244;
        _5327 = _5289;
        _5328 = _288;
        _5329 = _5285;
        _5330 = _5282;
        _5331 = _5276;
        _5332 = _5274;
        _5333 = _5272;
        _5334 = _5232;
        _5335 = _5224;
        _5336 = _5216;
        _5337 = _5208;
        _5338 = _97;
      }
    } else {
      _5323 = _5268;
      _5324 = _5260;
      _5325 = _5252;
      _5326 = _5244;
      _5327 = _5289;
      _5328 = _288;
      _5329 = _5285;
      _5330 = _5282;
      _5331 = _5276;
      _5332 = _5274;
      _5333 = _5272;
      _5334 = _5232;
      _5335 = _5224;
      _5336 = _5216;
      _5337 = _5208;
      _5338 = _97;
    }
  } else {
    _1569 = mad(_180, _99, mad(_120, _103, (_98 * _114)));
    _1572 = mad(_182, _99, mad(_122, _103, (_98 * _116)));
    _1575 = mad(_184, _99, mad(_124, _103, (_98 * _118)));
    _1577 = _143 + (_136 * _1569);
    _1579 = _144 + (_136 * _1572);
    _1581 = _146 + (_136 * _1575);
    if ((_137 & 1) == 0) {
      if (_293 < 48.0f) {
        _3660 = __3__37__0__0__g_indirectDrawParametersBuffer[_drawIndex]._bindlessMaterialParametersViewIndex;
        if (!(((BindlessParameters_MaterialOverrideParametersTree[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_3660 < (uint)170000), _3660, 0))) + (uint)(0))))].BindlessParameters_MaterialOverrideParametersTree._materialInfo) & 512) == 0)) {
          _3676 = (saturate(_treeParams.y) * 0.9424779f);
        } else {
          _3676 = 0.9424779f;
        }
        if ((uint)((int)(_111 & 15) + (int)(-1)) < (uint)2) {
          _3684 = (frac(_101 * 0.0625f) * 2.0f) + -1.0f;
          _3687 = (frac(_101) * 2.0f) + -1.0f;
          _3691 = (frac(_101 * 16.0f) * 2.0f) + -1.0f;
          _3693 = rsqrt(dot(float3(_3684, _3687, _3691), float3(_3684, _3687, _3691)));  // [sem: invLength]
          _3694 = _3684 * _3693;
          _3695 = _3687 * _3693;
          _3696 = _3691 * _3693;
          _3699 = mad(_180, _3695, mad(_120, _3696, (_114 * _3694)));
          _3702 = mad(_182, _3695, mad(_122, _3696, (_116 * _3694)));
          _3705 = mad(_184, _3695, mad(_124, _3696, (_118 * _3694)));
          _3707 = rsqrt(dot(float3(_3699, _3702, _3705), float3(_3699, _3702, _3705)));  // [sem: invLength]
          _3708 = _3699 * _3707;
          _3709 = _3702 * _3707;
          _3710 = _3705 * _3707;
          _3715 = _renderingOriginPos.y - _viewPos.y;
          if (((_3715 + -2.0f) < _1579) && (_renderingOriginPos.w == 0.0f)) {
            _3725 = ((_3715 + 1.0f) > _1579);
          } else {
            _3725 = false;
          }
          _3726 = (int)(uint)(_3725);
          _3731 = _1577 + (_viewPos.x - _currSceneTrailHeight._trailUpdatedPosition.x);
          _3734 = _1579 + (_viewPos.y - _currSceneTrailHeight._trailUpdatedPosition.y);
          _3738 = _1581 + (_viewPos.z - _currSceneTrailHeight._trailUpdatedPosition.z);
          _3750 = mad((_currSceneTrailHeight._trailViewProjTexScale[0].z), _3738, mad((_currSceneTrailHeight._trailViewProjTexScale[0].y), _3734, ((_currSceneTrailHeight._trailViewProjTexScale[0].x) * _3731))) + (_currSceneTrailHeight._trailViewProjTexScale[0].w);
          _3758 = (_currSceneTrailHeight._trailViewProjTexScale[1].w) + mad((_currSceneTrailHeight._trailViewProjTexScale[1].z), _3738, mad((_currSceneTrailHeight._trailViewProjTexScale[1].y), _3734, ((_currSceneTrailHeight._trailViewProjTexScale[1].x) * _3731)));
          _3760 = (saturate(_3750) == _3750);
          if (_3760) {
            [branch]
            if (saturate(_3758) == _3758) {
              // [sem: _3__36__0__0__g_textureTrailHeight_sampleLod]
              _3767 = __3__36__0__0__g_textureTrailHeight.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_3750, _3758), 0.0f);
              if (_3767.x < 1.0f) {
                _3799 = ((int)(uint)((int)((((_currSceneTrailHeight._trailUpdatedPosition.y + -1.0f) - _viewPos.y) + ((mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].z), _3767.x, mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].y), _3758, (_3750 * (_currSceneTrailHeight._trailInvViewProjTexScale[1].x)))) + (_currSceneTrailHeight._trailInvViewProjTexScale[1].w)) / ((_currSceneTrailHeight._trailInvViewProjTexScale[3].w) + mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].z), _3767.x, mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].y), _3758, (_3750 * (_currSceneTrailHeight._trailInvViewProjTexScale[3].x))))))) < _1579)));
              } else {
                _3799 = 0;
              }
              if ((_3767.y < 1.0f) && (_3767.y > 0.0f)) {
                _3832 = (((int)(uint)((int)((((_currSceneTrailHeight._trailUpdatedPosition.y + 0.2f) - _viewPos.y) + ((mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].z), _3767.y, mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].y), _3758, (_3750 * (_currSceneTrailHeight._trailInvViewProjTexScale[1].x)))) + (_currSceneTrailHeight._trailInvViewProjTexScale[1].w)) / ((_currSceneTrailHeight._trailInvViewProjTexScale[3].w) + mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].z), _3767.y, mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].y), _3758, (_3750 * (_currSceneTrailHeight._trailInvViewProjTexScale[3].x))))))) > _1579))) & _3799);
              } else {
                _3832 = 0;
              }
              _3835 = ((int)(_3832) | (int)(_3726));
            } else {
              _3835 = _3726;
            }
          } else {
            _3835 = _3726;
          }
          if (!(_3835 == 0)) {
            _3841 = (_1577 + _viewPos.x) - _currSceneTrailInteraction._trailUpdatedPosition.x;
            _3844 = (_1579 + _viewPos.y) - _currSceneTrailInteraction._trailUpdatedPosition.y;
            _3847 = (_1581 + _viewPos.z) - _currSceneTrailInteraction._trailUpdatedPosition.z;
            _3859 = mad((_currSceneTrailInteraction._trailViewProjTexScale[0].z), _3847, mad((_currSceneTrailInteraction._trailViewProjTexScale[0].y), _3844, (_3841 * (_currSceneTrailInteraction._trailViewProjTexScale[0].x)))) + (_currSceneTrailInteraction._trailViewProjTexScale[0].w);
            _3867 = (_currSceneTrailInteraction._trailViewProjTexScale[1].w) + mad((_currSceneTrailInteraction._trailViewProjTexScale[1].z), _3847, mad((_currSceneTrailInteraction._trailViewProjTexScale[1].y), _3844, (_3841 * (_currSceneTrailInteraction._trailViewProjTexScale[1].x))));
            if (saturate(_3859) == _3859) {
              [branch]
              if (saturate(_3867) == _3867) {
                // [sem: _3__36__0__0__g_textureTrailInteraction_sampleLod]
                _3876 = __3__36__0__0__g_textureTrailInteraction.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_3859, _3867), 0.0f);
                _3881 = (_3876.x * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteraction_sampleLod_derived]
                _3883 = (_3876.y * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteraction_sampleLod_derived]
                _3885 = rsqrt(dot(float2(_3881, _3883), float2(_3881, _3883)));  // [sem: invLength]
                _3886 = _3885 * _3881;
                _3887 = _3885 * _3883;
                _3888 = saturate(_3876.w);  // [sem: expr_sat]
                if (_3888 > 0.0f) {
                  _3894 = sin(_time.x * 7.0f);
                  _3896 = -0.0f - (_3709 * _3887);
                  _3899 = (_3708 * _3887) - (_3710 * _3886);
                  _3900 = _3709 * _3886;
                  _3902 = rsqrt(dot(float3(_3896, _3899, _3900), float3(_3896, _3899, _3900)));  // [sem: invLength]
                  _3903 = _3902 * _3896;
                  _3904 = _3899 * _3902;
                  _3905 = _3900 * _3902;
                  _3910 = (_3676 * _3888) * (_3894 + (_3888 * (1.0f - _3894)));
                  _3916 = dot(float3(_3903, _3904, _3905), float3((_136 * (_1524 - _1569)), (_1534 - _1579), (_136 * (_1530 - _1575))));
                  _3918 = _1577 + (_3903 * _3916);
                  _3920 = _1579 + (_3904 * _3916);
                  _3922 = _1581 + (_3905 * _3916);
                  _3923 = _1532 - _3918;
                  _3924 = _1534 - _3920;
                  _3925 = _1536 - _3922;
                  _3926 = sin(_3910);
                  _3927 = cos(_3910);
                  _3953 = (((_3922 - _1536) + (_3927 * _3925)) + (_3926 * ((_3904 * _3923) - (_3903 * _3924))));
                  _3954 = (((_3920 - _1534) + (_3927 * _3924)) + (_3926 * ((_3903 * _3925) - (_3905 * _3923))));
                  _3955 = (((_3918 - _1532) + (_3927 * _3923)) + (_3926 * ((_3905 * _3924) - (_3904 * _3925))));
                } else {
                  _3953 = 0.0f;
                  _3954 = 0.0f;
                  _3955 = 0.0f;
                }
              } else {
                _3953 = 0.0f;
                _3954 = 0.0f;
                _3955 = 0.0f;
              }
            } else {
              _3953 = 0.0f;
              _3954 = 0.0f;
              _3955 = 0.0f;
            }
          } else {
            _3953 = 0.0f;
            _3954 = 0.0f;
            _3955 = 0.0f;
          }
          if (_3760) {
            [branch]
            if (saturate(_3758) == _3758) {
              // [sem: _3__36__0__0__g_textureTrailHeight_sampleLod]
              _3962 = __3__36__0__0__g_textureTrailHeight.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_3750, _3758), 0.0f);
              if (_3962.x < 1.0f) {
                _3994 = ((int)(uint)((int)((((-1.0f - _viewPos.y) + _currSceneTrailHeight._trailUpdatedPosition.y) + (((_currSceneTrailHeight._trailInvViewProjTexScale[1].w) + mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].z), _3962.x, mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].y), _3758, ((_currSceneTrailHeight._trailInvViewProjTexScale[1].x) * _3750)))) / (mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].z), _3962.x, mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].y), _3758, ((_currSceneTrailHeight._trailInvViewProjTexScale[3].x) * _3750))) + (_currSceneTrailHeight._trailInvViewProjTexScale[3].w)))) < _1579)));
              } else {
                _3994 = 0;
              }
              if ((_3962.y < 1.0f) && (_3962.y > 0.0f)) {
                _4027 = (((int)(uint)((int)((((0.2f - _viewPos.y) + _currSceneTrailHeight._trailUpdatedPosition.y) + (((_currSceneTrailHeight._trailInvViewProjTexScale[1].w) + mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].z), _3962.y, mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].y), _3758, ((_currSceneTrailHeight._trailInvViewProjTexScale[1].x) * _3750)))) / (mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].z), _3962.y, mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].y), _3758, ((_currSceneTrailHeight._trailInvViewProjTexScale[3].x) * _3750))) + (_currSceneTrailHeight._trailInvViewProjTexScale[3].w)))) > _1579))) & _3994);
              } else {
                _4027 = 0;
              }
              _4030 = ((int)(_4027) | (int)(_3726));
            } else {
              _4030 = _3726;
            }
          } else {
            _4030 = _3726;
          }
          if (!(_4030 == 0)) {
            _4036 = (_viewPos.x + _1577) - _prevSceneTrailInteraction._trailUpdatedPosition.x;
            _4039 = (_viewPos.y + _1579) - _prevSceneTrailInteraction._trailUpdatedPosition.y;
            _4042 = (_viewPos.z + _1581) - _prevSceneTrailInteraction._trailUpdatedPosition.z;
            _4054 = (_prevSceneTrailInteraction._trailViewProjTexScale[0].w) + mad((_prevSceneTrailInteraction._trailViewProjTexScale[0].z), _4042, mad((_prevSceneTrailInteraction._trailViewProjTexScale[0].y), _4039, ((_prevSceneTrailInteraction._trailViewProjTexScale[0].x) * _4036)));
            _4062 = mad((_prevSceneTrailInteraction._trailViewProjTexScale[1].z), _4042, mad((_prevSceneTrailInteraction._trailViewProjTexScale[1].y), _4039, ((_prevSceneTrailInteraction._trailViewProjTexScale[1].x) * _4036))) + (_prevSceneTrailInteraction._trailViewProjTexScale[1].w);
            if (saturate(_4054) == _4054) {
              [branch]
              if (saturate(_4062) == _4062) {
                // [sem: _3__36__0__0__g_textureTrailInteractionPrev_sampleLod]
                _4071 = __3__36__0__0__g_textureTrailInteractionPrev.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_4054, _4062), 0.0f);
                _4076 = (_4071.x * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteractionPrev_sampleLod_derived]
                _4078 = (_4071.y * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteractionPrev_sampleLod_derived]
                _4080 = rsqrt(dot(float2(_4076, _4078), float2(_4076, _4078)));  // [sem: invLength]
                _4081 = _4076 * _4080;
                _4082 = _4078 * _4080;
                _4083 = saturate(_4071.w);  // [sem: expr_sat]
                if (_4083 > 0.0f) {
                  _4089 = sin(_time.y * 7.0f);
                  _4091 = -0.0f - (_3709 * _4082);
                  _4094 = (_4082 * _3708) - (_4081 * _3710);
                  _4095 = _4081 * _3709;
                  _4097 = rsqrt(dot(float3(_4091, _4094, _4095), float3(_4091, _4094, _4095)));  // [sem: invLength]
                  _4098 = _4097 * _4091;
                  _4099 = _4097 * _4094;
                  _4100 = _4097 * _4095;
                  _4105 = (_4083 * _3676) * (lerp(_4089, 1.0f, _4083));
                  _4112 = dot(float3(_4098, _4099, _4100), float3(((_1524 - _1569) * _136), ((_1527 - _1572) * _136), ((_1530 - _1575) * _136)));
                  _4114 = (_4098 * _4112) + _1577;
                  _4116 = (_4099 * _4112) + _1579;
                  _4118 = (_4100 * _4112) + _1581;
                  _4119 = _1532 - _4114;
                  _4120 = _1534 - _4116;
                  _4121 = _1536 - _4118;
                  _4122 = sin(_4105);
                  _4123 = cos(_4105);
                  _4149 = (((_4118 - _1536) + (_4121 * _4123)) + (((_4119 * _4099) - (_4120 * _4098)) * _4122));
                  _4150 = (((_4116 - _1534) + (_4120 * _4123)) + (((_4121 * _4098) - (_4119 * _4100)) * _4122));
                  _4151 = (((_4114 - _1532) + (_4119 * _4123)) + (((_4120 * _4100) - (_4121 * _4099)) * _4122));
                } else {
                  _4149 = 0.0f;
                  _4150 = 0.0f;
                  _4151 = 0.0f;
                }
              } else {
                _4149 = 0.0f;
                _4150 = 0.0f;
                _4151 = 0.0f;
              }
            } else {
              _4149 = 0.0f;
              _4150 = 0.0f;
              _4151 = 0.0f;
            }
          } else {
            _4149 = 0.0f;
            _4150 = 0.0f;
            _4151 = 0.0f;
          }
          _4165 = (_1536 + (_299 * _3953));
          _4166 = (_1534 + (_299 * _3954));
          _4167 = (_1532 + (_299 * _3955));
          _4168 = ((_4149 * _299) + _1551);
          _4169 = ((_4150 * _299) + _1546);
          _4170 = ((_4151 * _299) + _1544);
        } else {
          _4165 = _1536;
          _4166 = _1534;
          _4167 = _1532;
          _4168 = _1551;
          _4169 = _1546;
          _4170 = _1544;
        }
        _4172 = rsqrt(dot(float3(_120, _122, _124), float3(_120, _122, _124)));  // [sem: invLength]
        _4173 = _120 * _4172;
        _4174 = _122 * _4172;
        _4175 = _124 * _4172;
        _4181 = _143 + (_viewPos.x - _currSceneTrailHeight._trailUpdatedPosition.x);
        _4185 = _144 + (_viewPos.y - _currSceneTrailHeight._trailUpdatedPosition.y);
        _4189 = _146 + (_viewPos.z - _currSceneTrailHeight._trailUpdatedPosition.z);
        _4201 = mad((_currSceneTrailHeight._trailViewProjTexScale[0].z), _4189, mad((_currSceneTrailHeight._trailViewProjTexScale[0].y), _4185, ((_currSceneTrailHeight._trailViewProjTexScale[0].x) * _4181))) + (_currSceneTrailHeight._trailViewProjTexScale[0].w);
        _4209 = (_currSceneTrailHeight._trailViewProjTexScale[1].w) + mad((_currSceneTrailHeight._trailViewProjTexScale[1].z), _4189, mad((_currSceneTrailHeight._trailViewProjTexScale[1].y), _4185, ((_currSceneTrailHeight._trailViewProjTexScale[1].x) * _4181)));
        __3__36__0__0__g_textureTrailHeight.GetDimensions(_4211.x, _4211.y);
        _4215 = (saturate(_4201) == _4201);
        if (!(_4215) || ((_4215) && (!(saturate(_4209) == _4209))) || (((_4215) && (saturate(_4209) == _4209)) && (!(_4201 > (1.0f / ((float)((int)((int)(_4211.x)))))))) || ((((_4215) && (saturate(_4209) == _4209)) && (_4201 > (1.0f / ((float)((int)((int)(_4211.x))))))) && (!(_4209 > (1.0f / ((float)((int)((int)(_4211.y))))))))) {
          _4231 = (_143 + _viewPos.x) - _currSceneTrailInteraction._trailUpdatedPosition.x;
          _4234 = (_144 + _viewPos.y) - _currSceneTrailInteraction._trailUpdatedPosition.y;
          _4237 = (_146 + _viewPos.z) - _currSceneTrailInteraction._trailUpdatedPosition.z;
          _4249 = mad((_currSceneTrailInteraction._trailViewProjTexScale[0].z), _4237, mad((_currSceneTrailInteraction._trailViewProjTexScale[0].y), _4234, (_4231 * (_currSceneTrailInteraction._trailViewProjTexScale[0].x)))) + (_currSceneTrailInteraction._trailViewProjTexScale[0].w);
          _4257 = (_currSceneTrailInteraction._trailViewProjTexScale[1].w) + mad((_currSceneTrailInteraction._trailViewProjTexScale[1].z), _4237, mad((_currSceneTrailInteraction._trailViewProjTexScale[1].y), _4234, (_4231 * (_currSceneTrailInteraction._trailViewProjTexScale[1].x))));
          if (saturate(_4249) == _4249) {
            [branch]
            if (saturate(_4257) == _4257) {
              // [sem: _3__36__0__0__g_textureTrailInteraction_sampleLod]
              _4266 = __3__36__0__0__g_textureTrailInteraction.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_4249, _4257), 0.0f);
              _4271 = (_4266.x * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteraction_sampleLod_derived]
              _4273 = (_4266.y * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteraction_sampleLod_derived]
              _4275 = rsqrt(dot(float2(_4271, _4273), float2(_4271, _4273)));  // [sem: invLength]
              _4276 = _4275 * _4271;
              _4277 = _4275 * _4273;
              _4278 = saturate(_4266.w);  // [sem: expr_sat]
              if (_4278 > 0.0f) {
                _4282 = _4166 - _144;
                _4286 = sin(_time.x * 7.0f);
                _4288 = -0.0f - (_4174 * _4277);
                _4291 = (_4173 * _4277) - (_4175 * _4276);
                _4292 = _4174 * _4276;
                _4294 = rsqrt(dot(float3(_4288, _4291, _4292), float3(_4288, _4291, _4292)));  // [sem: invLength]
                _4295 = _4294 * _4288;
                _4296 = _4291 * _4294;
                _4297 = _4292 * _4294;
                _4318 = (_4286 + (_4278 * (1.0f - _4286))) * ((((_4278 * 0.9424779f) * (1.0f / exp2(log2(max((_188 + -1.5f), 1.0f)) * 1.8f))) * max((_4266.z * 2.0f), 1.0f)) * saturate((abs(_4282) * 0.25f) - (_188 * 0.03f)));
                _4321 = dot(float3(_4295, _4296, _4297), float3((_4167 - _143), _4282, (_4165 - _146)));
                _4323 = _143 + (_4295 * _4321);
                _4325 = _144 + (_4296 * _4321);
                _4327 = _146 + (_4297 * _4321);
                _4328 = _4167 - _4323;
                _4329 = _4166 - _4325;
                _4330 = _4165 - _4327;
                _4331 = sin(_4318);
                _4332 = cos(_4318);
                _4334 = cos(_time.x * 10.0f);
                _4339 = _4334 + (_4278 * (cos(_time.x * 2.0f) - _4334));
                _4343 = (frac(_105 * 0.0625f) * 2.0f) + -1.0f;
                _4346 = (frac(_105) * 2.0f) + -1.0f;
                _4350 = (frac(_105 * 16.0f) * 2.0f) + -1.0f;
                _4354 = (_104 * _4278) * (0.6f - (_4278 * 0.40000004f));
                _4359 = saturate(2.0f / _188) * rsqrt(dot(float3(_4343, _4346, _4350), float3(_4343, _4346, _4350)));  // [sem: expr_sat]
                _4360 = _4354 * _4339;
                _4634 = ((((_4327 - _4165) + (_4332 * _4330)) + (_4331 * ((_4296 * _4328) - (_4295 * _4329)))) + (_4360 * (_4346 * _4359)));
                _4635 = ((((_4325 - _4166) + (_4332 * _4329)) + (_4331 * ((_4295 * _4330) - (_4297 * _4328)))) + (_4350 * (_4360 * _4359)));
                _4636 = ((((_4323 - _4167) + (_4332 * _4328)) + (_4331 * ((_4297 * _4329) - (_4296 * _4330)))) + (_4339 * (_4343 * (_4354 * _4359))));
              } else {
                _4634 = 0.0f;
                _4635 = 0.0f;
                _4636 = 0.0f;
              }
            } else {
              _4634 = 0.0f;
              _4635 = 0.0f;
              _4636 = 0.0f;
            }
          } else {
            _4634 = 0.0f;
            _4635 = 0.0f;
            _4636 = 0.0f;
          }
        } else {
          // [sem: _3__36__0__0__g_textureTrailHeight_sampleLod]
          _4397 = __3__36__0__0__g_textureTrailHeight.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_4201, _4209), 0.0f);
          if (_4397.x < 1.0f) {
            _4430 = ((int)(uint)((int)((((_currSceneTrailHeight._trailUpdatedPosition.y + -1.0f) - _viewPos.y) + ((mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].z), _4397.x, mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].y), _4209, (_4201 * (_currSceneTrailHeight._trailInvViewProjTexScale[1].x)))) + (_currSceneTrailHeight._trailInvViewProjTexScale[1].w)) / ((_currSceneTrailHeight._trailInvViewProjTexScale[3].w) + mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].z), _4397.x, mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].y), _4209, (_4201 * (_currSceneTrailHeight._trailInvViewProjTexScale[3].x))))))) < (_144 + 1.0f))));
          } else {
            _4430 = 1;
          }
          if ((_4397.y < 1.0f) && (_4397.y > 0.0f)) {
            _4464 = (((int)(uint)((int)((((_currSceneTrailHeight._trailUpdatedPosition.y + 0.2f) - _viewPos.y) + ((mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].z), _4397.y, mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].y), _4209, (_4201 * (_currSceneTrailHeight._trailInvViewProjTexScale[1].x)))) + (_currSceneTrailHeight._trailInvViewProjTexScale[1].w)) / ((_currSceneTrailHeight._trailInvViewProjTexScale[3].w) + mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].z), _4397.y, mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].y), _4209, (_4201 * (_currSceneTrailHeight._trailInvViewProjTexScale[3].x))))))) > (_144 + 1.0f)))) & _4430);
          } else {
            _4464 = _4430;
          }
          if (!(_4464 == 0)) {
            _4470 = (_143 + _viewPos.x) - _currSceneTrailInteraction._trailUpdatedPosition.x;
            _4473 = (_144 + _viewPos.y) - _currSceneTrailInteraction._trailUpdatedPosition.y;
            _4476 = (_146 + _viewPos.z) - _currSceneTrailInteraction._trailUpdatedPosition.z;
            _4488 = mad((_currSceneTrailInteraction._trailViewProjTexScale[0].z), _4476, mad((_currSceneTrailInteraction._trailViewProjTexScale[0].y), _4473, (_4470 * (_currSceneTrailInteraction._trailViewProjTexScale[0].x)))) + (_currSceneTrailInteraction._trailViewProjTexScale[0].w);
            _4496 = (_currSceneTrailInteraction._trailViewProjTexScale[1].w) + mad((_currSceneTrailInteraction._trailViewProjTexScale[1].z), _4476, mad((_currSceneTrailInteraction._trailViewProjTexScale[1].y), _4473, (_4470 * (_currSceneTrailInteraction._trailViewProjTexScale[1].x))));
            if (saturate(_4488) == _4488) {
              [branch]
              if (saturate(_4496) == _4496) {
                // [sem: _3__36__0__0__g_textureTrailInteraction_sampleLod]
                _4504 = __3__36__0__0__g_textureTrailInteraction.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_4488, _4496), 0.0f);
                _4509 = (_4504.x * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteraction_sampleLod_derived]
                _4511 = (_4504.y * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteraction_sampleLod_derived]
                _4513 = rsqrt(dot(float2(_4509, _4511), float2(_4509, _4511)));  // [sem: invLength]
                _4514 = _4513 * _4509;
                _4515 = _4513 * _4511;
                _4516 = saturate(_4504.w);  // [sem: expr_sat]
                if (_4516 > 0.0f) {
                  _4520 = _4166 - _144;
                  _4524 = sin(_time.x * 7.0f);
                  _4526 = -0.0f - (_4174 * _4515);
                  _4529 = (_4173 * _4515) - (_4175 * _4514);
                  _4530 = _4174 * _4514;
                  _4532 = rsqrt(dot(float3(_4526, _4529, _4530), float3(_4526, _4529, _4530)));  // [sem: invLength]
                  _4533 = _4532 * _4526;
                  _4534 = _4529 * _4532;
                  _4535 = _4530 * _4532;
                  _4556 = (_4524 + (_4516 * (1.0f - _4524))) * ((((_4516 * 0.9424779f) * (1.0f / exp2(log2(max((_188 + -1.5f), 1.0f)) * 1.8f))) * max((_4504.z * 2.0f), 1.0f)) * saturate((abs(_4520) * 0.25f) - (_188 * 0.03f)));
                  _4559 = dot(float3(_4533, _4534, _4535), float3((_4167 - _143), _4520, (_4165 - _146)));
                  _4561 = _143 + (_4533 * _4559);
                  _4563 = _144 + (_4534 * _4559);
                  _4565 = _146 + (_4535 * _4559);
                  _4566 = _4167 - _4561;
                  _4567 = _4166 - _4563;
                  _4568 = _4165 - _4565;
                  _4569 = sin(_4556);
                  _4570 = cos(_4556);
                  _4572 = cos(_time.x * 10.0f);
                  _4577 = _4572 + (_4516 * (cos(_time.x * 2.0f) - _4572));
                  _4581 = (frac(_105 * 0.0625f) * 2.0f) + -1.0f;
                  _4584 = (frac(_105) * 2.0f) + -1.0f;
                  _4588 = (frac(_105 * 16.0f) * 2.0f) + -1.0f;
                  _4592 = (_104 * _4516) * (0.6f - (_4516 * 0.40000004f));
                  _4597 = saturate(2.0f / _188) * rsqrt(dot(float3(_4581, _4584, _4588), float3(_4581, _4584, _4588)));  // [sem: expr_sat]
                  _4598 = _4592 * _4577;
                  _4634 = ((((_4565 - _4165) + (_4570 * _4568)) + (_4569 * ((_4534 * _4566) - (_4533 * _4567)))) + (_4598 * (_4584 * _4597)));
                  _4635 = ((((_4563 - _4166) + (_4570 * _4567)) + (_4569 * ((_4533 * _4568) - (_4535 * _4566)))) + (_4588 * (_4598 * _4597)));
                  _4636 = ((((_4561 - _4167) + (_4570 * _4566)) + (_4569 * ((_4535 * _4567) - (_4534 * _4568)))) + (_4577 * (_4581 * (_4592 * _4597))));
                } else {
                  _4634 = 0.0f;
                  _4635 = 0.0f;
                  _4636 = 0.0f;
                }
              } else {
                _4634 = 0.0f;
                _4635 = 0.0f;
                _4636 = 0.0f;
              }
            } else {
              _4634 = 0.0f;
              _4635 = 0.0f;
              _4636 = 0.0f;
            }
          } else {
            _4634 = 0.0f;
            _4635 = 0.0f;
            _4636 = 0.0f;
          }
        }
        if (!(_4215) || ((_4215) && (!(saturate(_4209) == _4209))) || (((_4215) && (saturate(_4209) == _4209)) && (!(_4201 > (1.0f / ((float)((int)((int)(_4211.x)))))))) || ((((_4215) && (saturate(_4209) == _4209)) && (_4201 > (1.0f / ((float)((int)((int)(_4211.x))))))) && (!(_4209 > (1.0f / ((float)((int)((int)(_4211.y))))))))) {
          _4652 = (_viewPos.x + _143) - _prevSceneTrailInteraction._trailUpdatedPosition.x;
          _4655 = (_viewPos.y + _144) - _prevSceneTrailInteraction._trailUpdatedPosition.y;
          _4658 = (_viewPos.z + _146) - _prevSceneTrailInteraction._trailUpdatedPosition.z;
          _4670 = (_prevSceneTrailInteraction._trailViewProjTexScale[0].w) + mad((_prevSceneTrailInteraction._trailViewProjTexScale[0].z), _4658, mad((_prevSceneTrailInteraction._trailViewProjTexScale[0].y), _4655, ((_prevSceneTrailInteraction._trailViewProjTexScale[0].x) * _4652)));
          _4678 = mad((_prevSceneTrailInteraction._trailViewProjTexScale[1].z), _4658, mad((_prevSceneTrailInteraction._trailViewProjTexScale[1].y), _4655, ((_prevSceneTrailInteraction._trailViewProjTexScale[1].x) * _4652))) + (_prevSceneTrailInteraction._trailViewProjTexScale[1].w);
          if (saturate(_4670) == _4670) {
            [branch]
            if (saturate(_4678) == _4678) {
              // [sem: _3__36__0__0__g_textureTrailInteractionPrev_sampleLod]
              _4687 = __3__36__0__0__g_textureTrailInteractionPrev.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_4670, _4678), 0.0f);
              _4692 = (_4687.x * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteractionPrev_sampleLod_derived]
              _4694 = (_4687.y * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteractionPrev_sampleLod_derived]
              _4696 = rsqrt(dot(float2(_4692, _4694), float2(_4692, _4694)));  // [sem: invLength]
              _4697 = _4692 * _4696;
              _4698 = _4694 * _4696;
              _4699 = saturate(_4687.w);  // [sem: expr_sat]
              if (_4699 > 0.0f) {
                _4703 = _4166 - _144;
                _4707 = sin(_time.y * 7.0f);
                _4709 = -0.0f - (_4174 * _4698);
                _4712 = (_4698 * _4173) - (_4697 * _4175);
                _4713 = _4697 * _4174;
                _4715 = rsqrt(dot(float3(_4709, _4712, _4713), float3(_4709, _4712, _4713)));  // [sem: invLength]
                _4716 = _4715 * _4709;
                _4717 = _4715 * _4712;
                _4718 = _4715 * _4713;
                _4739 = ((((_4699 * 0.9424779f) * (lerp(_4707, 1.0f, _4699))) * (1.0f / exp2(log2(max((_188 + -1.5f), 1.0f)) * 1.8f))) * max((_4687.z * 2.0f), 1.0f)) * saturate((abs(_4703) * 0.25f) - (_188 * 0.03f));
                _4742 = dot(float3(_4716, _4717, _4718), float3((_4167 - _143), _4703, (_4165 - _146)));
                _4744 = (_4742 * _4716) + _143;
                _4746 = (_4742 * _4717) + _144;
                _4748 = (_4742 * _4718) + _146;
                _4749 = _4167 - _4744;
                _4750 = _4166 - _4746;
                _4751 = _4165 - _4748;
                _4752 = sin(_4739);
                _4753 = cos(_4739);
                _4755 = cos(_time.y * 10.0f);
                _4764 = (frac(_105 * 0.0625f) * 2.0f) + -1.0f;
                _4767 = (frac(_105) * 2.0f) + -1.0f;
                _4771 = (frac(_105 * 16.0f) * 2.0f) + -1.0f;
                _4790 = (rsqrt(dot(float3(_4764, _4767, _4771), float3(_4764, _4767, _4771))) * saturate(2.0f / _188)) * (((_4699 * _104) * (0.6f - (_4699 * 0.40000004f))) * (((cos(_time.y * 2.0f) - _4755) * _4699) + _4755));
                _5049 = ((((_4748 - _4165) + (_4751 * _4753)) + (((_4749 * _4717) - (_4750 * _4716)) * _4752)) + (_4790 * _4767));
                _5050 = ((((_4746 - _4166) + (_4750 * _4753)) + (((_4751 * _4716) - (_4749 * _4718)) * _4752)) + (_4790 * _4771));
                _5051 = ((((_4744 - _4167) + (_4749 * _4753)) + (((_4750 * _4718) - (_4751 * _4717)) * _4752)) + (_4790 * _4764));
              } else {
                _5049 = 0.0f;
                _5050 = 0.0f;
                _5051 = 0.0f;
              }
            } else {
              _5049 = 0.0f;
              _5050 = 0.0f;
              _5051 = 0.0f;
            }
          } else {
            _5049 = 0.0f;
            _5050 = 0.0f;
            _5051 = 0.0f;
          }
        } else {
          // [sem: _3__36__0__0__g_textureTrailHeight_sampleLod]
          _4815 = __3__36__0__0__g_textureTrailHeight.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_4201, _4209), 0.0f);
          if (_4815.x < 1.0f) {
            _4848 = ((int)(uint)((int)((((-1.0f - _viewPos.y) + _currSceneTrailHeight._trailUpdatedPosition.y) + (((_currSceneTrailHeight._trailInvViewProjTexScale[1].w) + mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].z), _4815.x, mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].y), _4209, ((_currSceneTrailHeight._trailInvViewProjTexScale[1].x) * _4201)))) / (mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].z), _4815.x, mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].y), _4209, ((_currSceneTrailHeight._trailInvViewProjTexScale[3].x) * _4201))) + (_currSceneTrailHeight._trailInvViewProjTexScale[3].w)))) < (_144 + 1.0f))));
          } else {
            _4848 = 1;
          }
          if ((_4815.y < 1.0f) && (_4815.y > 0.0f)) {
            _4882 = (((int)(uint)((int)((((0.2f - _viewPos.y) + _currSceneTrailHeight._trailUpdatedPosition.y) + (((_currSceneTrailHeight._trailInvViewProjTexScale[1].w) + mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].z), _4815.y, mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].y), _4209, ((_currSceneTrailHeight._trailInvViewProjTexScale[1].x) * _4201)))) / (mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].z), _4815.y, mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].y), _4209, ((_currSceneTrailHeight._trailInvViewProjTexScale[3].x) * _4201))) + (_currSceneTrailHeight._trailInvViewProjTexScale[3].w)))) > (_144 + 1.0f)))) & _4848);
          } else {
            _4882 = _4848;
          }
          if (!(_4882 == 0)) {
            _4888 = (_viewPos.x + _143) - _prevSceneTrailInteraction._trailUpdatedPosition.x;
            _4891 = (_viewPos.y + _144) - _prevSceneTrailInteraction._trailUpdatedPosition.y;
            _4894 = (_viewPos.z + _146) - _prevSceneTrailInteraction._trailUpdatedPosition.z;
            _4906 = (_prevSceneTrailInteraction._trailViewProjTexScale[0].w) + mad((_prevSceneTrailInteraction._trailViewProjTexScale[0].z), _4894, mad((_prevSceneTrailInteraction._trailViewProjTexScale[0].y), _4891, ((_prevSceneTrailInteraction._trailViewProjTexScale[0].x) * _4888)));
            _4914 = mad((_prevSceneTrailInteraction._trailViewProjTexScale[1].z), _4894, mad((_prevSceneTrailInteraction._trailViewProjTexScale[1].y), _4891, ((_prevSceneTrailInteraction._trailViewProjTexScale[1].x) * _4888))) + (_prevSceneTrailInteraction._trailViewProjTexScale[1].w);
            if (saturate(_4906) == _4906) {
              [branch]
              if (saturate(_4914) == _4914) {
                // [sem: _3__36__0__0__g_textureTrailInteractionPrev_sampleLod]
                _4922 = __3__36__0__0__g_textureTrailInteractionPrev.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_4906, _4914), 0.0f);
                _4927 = (_4922.x * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteractionPrev_sampleLod_derived]
                _4929 = (_4922.y * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteractionPrev_sampleLod_derived]
                _4931 = rsqrt(dot(float2(_4927, _4929), float2(_4927, _4929)));  // [sem: invLength]
                _4932 = _4927 * _4931;
                _4933 = _4929 * _4931;
                _4934 = saturate(_4922.w);  // [sem: expr_sat]
                if (_4934 > 0.0f) {
                  _4938 = _4166 - _144;
                  _4942 = sin(_time.y * 7.0f);
                  _4944 = -0.0f - (_4174 * _4933);
                  _4947 = (_4933 * _4173) - (_4932 * _4175);
                  _4948 = _4932 * _4174;
                  _4950 = rsqrt(dot(float3(_4944, _4947, _4948), float3(_4944, _4947, _4948)));  // [sem: invLength]
                  _4951 = _4950 * _4944;
                  _4952 = _4950 * _4947;
                  _4953 = _4950 * _4948;
                  _4974 = ((((_4934 * 0.9424779f) * (lerp(_4942, 1.0f, _4934))) * (1.0f / exp2(log2(max((_188 + -1.5f), 1.0f)) * 1.8f))) * max((_4922.z * 2.0f), 1.0f)) * saturate((abs(_4938) * 0.25f) - (_188 * 0.03f));
                  _4977 = dot(float3(_4951, _4952, _4953), float3((_4167 - _143), _4938, (_4165 - _146)));
                  _4979 = (_4977 * _4951) + _143;
                  _4981 = (_4977 * _4952) + _144;
                  _4983 = (_4977 * _4953) + _146;
                  _4984 = _4167 - _4979;
                  _4985 = _4166 - _4981;
                  _4986 = _4165 - _4983;
                  _4987 = sin(_4974);
                  _4988 = cos(_4974);
                  _4990 = cos(_time.y * 10.0f);
                  _4999 = (frac(_105 * 0.0625f) * 2.0f) + -1.0f;
                  _5002 = (frac(_105) * 2.0f) + -1.0f;
                  _5006 = (frac(_105 * 16.0f) * 2.0f) + -1.0f;
                  _5025 = (rsqrt(dot(float3(_4999, _5002, _5006), float3(_4999, _5002, _5006))) * saturate(2.0f / _188)) * (((_4934 * _104) * (0.6f - (_4934 * 0.40000004f))) * (((cos(_time.y * 2.0f) - _4990) * _4934) + _4990));
                  _5049 = ((((_4983 - _4165) + (_4986 * _4988)) + (((_4984 * _4952) - (_4985 * _4951)) * _4987)) + (_5025 * _5002));
                  _5050 = ((((_4981 - _4166) + (_4985 * _4988)) + (((_4986 * _4951) - (_4984 * _4953)) * _4987)) + (_5025 * _5006));
                  _5051 = ((((_4979 - _4167) + (_4984 * _4988)) + (((_4985 * _4953) - (_4986 * _4952)) * _4987)) + (_5025 * _4999));
                } else {
                  _5049 = 0.0f;
                  _5050 = 0.0f;
                  _5051 = 0.0f;
                }
              } else {
                _5049 = 0.0f;
                _5050 = 0.0f;
                _5051 = 0.0f;
              }
            } else {
              _5049 = 0.0f;
              _5050 = 0.0f;
              _5051 = 0.0f;
            }
          } else {
            _5049 = 0.0f;
            _5050 = 0.0f;
            _5051 = 0.0f;
          }
        }
        _5065 = ((_5049 * _299) + _4168);
        _5066 = ((_5050 * _299) + _4169);
        _5067 = ((_5051 * _299) + _4170);
        _5068 = (_4165 + (_299 * _4634));
        _5069 = (_4166 + (_299 * _4635));
        _5070 = (_4167 + (_299 * _4636));
      } else {
        _5065 = _1551;
        _5066 = _1546;
        _5067 = _1544;
        _5068 = _1536;
        _5069 = _1534;
        _5070 = _1532;
      }
      _5082 = (_viewProjRelativePrev[0].w) + mad((_viewProjRelativePrev[0].z), _5065, mad((_viewProjRelativePrev[0].y), _5066, ((_viewProjRelativePrev[0].x) * _5067)));
      _5090 = mad((_viewProjRelativePrev[1].z), _5065, mad((_viewProjRelativePrev[1].y), _5066, ((_viewProjRelativePrev[1].x) * _5067))) + (_viewProjRelativePrev[1].w);
      _5098 = mad((_viewProjRelativePrev[2].z), _5065, mad((_viewProjRelativePrev[2].y), _5066, ((_viewProjRelativePrev[2].x) * _5067))) + (_viewProjRelativePrev[2].w);
      _5106 = mad((_viewProjRelativePrev[3].z), _5065, mad((_viewProjRelativePrev[3].y), _5066, ((_viewProjRelativePrev[3].x) * _5067))) + (_viewProjRelativePrev[3].w);
      _5118 = mad((_viewProjRelative[0].z), _5068, mad((_viewProjRelative[0].y), _5069, (_5070 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w);
      _5126 = (_viewProjRelative[1].w) + mad((_viewProjRelative[1].z), _5068, mad((_viewProjRelative[1].y), _5069, (_5070 * (_viewProjRelative[1].x))));
      _5134 = (_viewProjRelative[2].w) + mad((_viewProjRelative[2].z), _5068, mad((_viewProjRelative[2].y), _5069, (_5070 * (_viewProjRelative[2].x))));
      _5142 = (_viewProjRelative[3].w) + mad((_viewProjRelative[3].z), _5068, mad((_viewProjRelative[3].y), _5069, (_5070 * (_viewProjRelative[3].x))));
      _5144 = rsqrt(dot(float3(_1554, _1557, _1560), float3(_1554, _1557, _1560)));  // [sem: invLength]
      _5146 = half(_5144 * _1554);
      _5148 = half(_5144 * _1557);
      _5150 = half(_5144 * _1560);
      _5156 = half((((float)((uint16_t)((int16_t)(_67 & 255)))) * 0.003921569f) * min(2.0f, _136));
      _5159 = (int)(_drawIndex) | (int)(-16777216);
      _5163 = select((_variableRateShadingParams.x > 0.0f), 5, 0);
      if ((SV_VertexID != 0) && (((int)((uint)((uint)(SV_VertexID)) % (uint)(40))) == 0)) {
        if (sqrt(((_5069 * _5069) + (_5068 * _5068)) + (_5070 * _5070)) < 4.0f) {
          __3__39__0__1__g_treeSurfacePositionsCounterBufferUAV.InterlockedAdd(0, 1, _5178);
          if ((uint)_5178 < (uint)1024) {
            TreeSurfacePositionData __struct_store_1;
            __struct_store_1._worldPos = float4((_viewPos.x + _5070), (_viewPos.y + _5069), (_viewPos.z + _5068), 1.0f);
            __struct_store_1._worldPosPrev = float4((_viewPosPrev.x + _5067), (_viewPosPrev.y + _5066), (_viewPosPrev.z + _5065), 1.0f);
            __3__39__0__1__g_treeSurfacePositionsBufferUAV[_5178] = __struct_store_1;
            _5323 = _5142;
            _5324 = _5134;
            _5325 = _5126;
            _5326 = _5118;
            _5327 = _5163;
            _5328 = _288;
            _5329 = _5159;
            _5330 = _5156;
            _5331 = _5150;
            _5332 = _5148;
            _5333 = _5146;
            _5334 = _5106;
            _5335 = _5098;
            _5336 = _5090;
            _5337 = _5082;
            _5338 = _97;
          } else {
            _5323 = _5142;
            _5324 = _5134;
            _5325 = _5126;
            _5326 = _5118;
            _5327 = _5163;
            _5328 = _288;
            _5329 = _5159;
            _5330 = _5156;
            _5331 = _5150;
            _5332 = _5148;
            _5333 = _5146;
            _5334 = _5106;
            _5335 = _5098;
            _5336 = _5090;
            _5337 = _5082;
            _5338 = _97;
          }
        } else {
          _5323 = _5142;
          _5324 = _5134;
          _5325 = _5126;
          _5326 = _5118;
          _5327 = _5163;
          _5328 = _288;
          _5329 = _5159;
          _5330 = _5156;
          _5331 = _5150;
          _5332 = _5148;
          _5333 = _5146;
          _5334 = _5106;
          _5335 = _5098;
          _5336 = _5090;
          _5337 = _5082;
          _5338 = _97;
        }
      } else {
        _5323 = _5142;
        _5324 = _5134;
        _5325 = _5126;
        _5326 = _5118;
        _5327 = _5163;
        _5328 = _288;
        _5329 = _5159;
        _5330 = _5156;
        _5331 = _5150;
        _5332 = _5148;
        _5333 = _5146;
        _5334 = _5106;
        _5335 = _5098;
        _5336 = _5090;
        _5337 = _5082;
        _5338 = _97;
      }
    } else {
      _1588 = _1577 + (_viewPos.x - (_sceneCaptureTopDown[0]._captureMatrixRelativePosition.x));
      _1591 = _1581 + (_viewPos.z - (_sceneCaptureTopDown[0]._captureMatrixRelativePosition.z));
      _1600 = (_sceneCaptureTopDown[0]._captureMatrixRelativeTexScale[0].w) + mad((_sceneCaptureTopDown[0]._captureMatrixRelativeTexScale[0].z), _1591, (_1588 * (_sceneCaptureTopDown[0]._captureMatrixRelativeTexScale[0].x)));
      _1606 = (_sceneCaptureTopDown[0]._captureMatrixRelativeTexScale[1].w) + mad((_sceneCaptureTopDown[0]._captureMatrixRelativeTexScale[1].z), _1591, (_1588 * (_sceneCaptureTopDown[0]._captureMatrixRelativeTexScale[1].x)));
      if (_138 == 0) {
        __3__36__0__0__g_topDownTerrainNormal.GetDimensions(_1610.x, _1610.y);
        _1615 = (float)((int)((int)((float)((int)((int)(_1610.x))))));
        _1618 = (float)((int)((int)((float)((int)((int)(_1610.y))))));
        if (!(((((uint4)(__3__36__0__0__g_topDownTerrainNormal.Load(int3(((int)(_1600 * _1615)), ((int)(_1606 * _1618)), 0)))).z) & 1023) == 0) || !(saturate(_1600) == _1600) || !(((saturate(_1606) == _1606) && (_1600 > (1.0f / _1615))) && (_1606 > (1.0f / _1618)))) {
          _1655 = mad((_sceneCaptureTopDown[0]._captureMatrixInv[1].z), ((__3__36__0__0__g_topDownTerrainDepth.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_1600, _1606), 0.0f)).x), mad((_sceneCaptureTopDown[0]._captureMatrixInv[1].y), _1606, (_1600 * (_sceneCaptureTopDown[0]._captureMatrixInv[1].x)))) + (_sceneCaptureTopDown[0]._captureMatrixInv[1].w);
          if (!(abs((_141 - _1579) + _1655) > 1.0f)) {
            _1664 = ((_136 * (_1527 - _1572)) - _viewPos.y) + _1655;
            _1668 = _1655 + (((_1539 - _1572) * _136) - _viewPosPrev.y);
            if (_293 < 48.0f) {
              _1674 = __3__37__0__0__g_indirectDrawParametersBuffer[_drawIndex]._bindlessMaterialParametersViewIndex;
              if (!(((BindlessParameters_MaterialOverrideParametersTree[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_1674 < (uint)170000), _1674, 0))) + (uint)(0))))].BindlessParameters_MaterialOverrideParametersTree._materialInfo) & 512) == 0)) {
                _1690 = (saturate(_treeParams.y) * 0.9424779f);
              } else {
                _1690 = 0.9424779f;
              }
              if ((uint)((int)(_111 & 15) + (int)(-1)) < (uint)2) {
                _1698 = (frac(_101 * 0.0625f) * 2.0f) + -1.0f;
                _1701 = (frac(_101) * 2.0f) + -1.0f;
                _1705 = (frac(_101 * 16.0f) * 2.0f) + -1.0f;
                _1707 = rsqrt(dot(float3(_1698, _1701, _1705), float3(_1698, _1701, _1705)));  // [sem: invLength]
                _1708 = _1698 * _1707;
                _1709 = _1701 * _1707;
                _1710 = _1705 * _1707;
                _1713 = mad(_180, _1709, mad(_120, _1710, (_114 * _1708)));
                _1716 = mad(_182, _1709, mad(_122, _1710, (_116 * _1708)));
                _1719 = mad(_184, _1709, mad(_124, _1710, (_118 * _1708)));
                _1721 = rsqrt(dot(float3(_1713, _1716, _1719), float3(_1713, _1716, _1719)));  // [sem: invLength]
                _1722 = _1713 * _1721;
                _1723 = _1716 * _1721;
                _1724 = _1719 * _1721;
                _1729 = _renderingOriginPos.y - _viewPos.y;
                if (((_1729 + -2.0f) < _1579) && (_renderingOriginPos.w == 0.0f)) {
                  _1739 = ((_1729 + 1.0f) > _1579);
                } else {
                  _1739 = false;
                }
                _1740 = (int)(uint)(_1739);
                _1745 = _1577 + (_viewPos.x - _currSceneTrailHeight._trailUpdatedPosition.x);
                _1748 = _1579 + (_viewPos.y - _currSceneTrailHeight._trailUpdatedPosition.y);
                _1752 = _1581 + (_viewPos.z - _currSceneTrailHeight._trailUpdatedPosition.z);
                _1764 = mad((_currSceneTrailHeight._trailViewProjTexScale[0].z), _1752, mad((_currSceneTrailHeight._trailViewProjTexScale[0].y), _1748, ((_currSceneTrailHeight._trailViewProjTexScale[0].x) * _1745))) + (_currSceneTrailHeight._trailViewProjTexScale[0].w);
                _1772 = (_currSceneTrailHeight._trailViewProjTexScale[1].w) + mad((_currSceneTrailHeight._trailViewProjTexScale[1].z), _1752, mad((_currSceneTrailHeight._trailViewProjTexScale[1].y), _1748, ((_currSceneTrailHeight._trailViewProjTexScale[1].x) * _1745)));
                _1774 = (saturate(_1764) == _1764);
                if (_1774) {
                  [branch]
                  if (saturate(_1772) == _1772) {
                    // [sem: _3__36__0__0__g_textureTrailHeight_sampleLod]
                    _1781 = __3__36__0__0__g_textureTrailHeight.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_1764, _1772), 0.0f);
                    if (_1781.x < 1.0f) {
                      _1813 = ((int)(uint)((int)((((_currSceneTrailHeight._trailUpdatedPosition.y + -1.0f) - _viewPos.y) + ((mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].z), _1781.x, mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].y), _1772, (_1764 * (_currSceneTrailHeight._trailInvViewProjTexScale[1].x)))) + (_currSceneTrailHeight._trailInvViewProjTexScale[1].w)) / ((_currSceneTrailHeight._trailInvViewProjTexScale[3].w) + mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].z), _1781.x, mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].y), _1772, (_1764 * (_currSceneTrailHeight._trailInvViewProjTexScale[3].x))))))) < _1579)));
                    } else {
                      _1813 = 0;
                    }
                    if ((_1781.y < 1.0f) && (_1781.y > 0.0f)) {
                      _1846 = (((int)(uint)((int)((((_currSceneTrailHeight._trailUpdatedPosition.y + 0.2f) - _viewPos.y) + ((mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].z), _1781.y, mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].y), _1772, (_1764 * (_currSceneTrailHeight._trailInvViewProjTexScale[1].x)))) + (_currSceneTrailHeight._trailInvViewProjTexScale[1].w)) / ((_currSceneTrailHeight._trailInvViewProjTexScale[3].w) + mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].z), _1781.y, mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].y), _1772, (_1764 * (_currSceneTrailHeight._trailInvViewProjTexScale[3].x))))))) > _1579))) & _1813);
                    } else {
                      _1846 = 0;
                    }
                    _1849 = ((int)(_1846) | (int)(_1740));
                  } else {
                    _1849 = _1740;
                  }
                } else {
                  _1849 = _1740;
                }
                if (!(_1849 == 0)) {
                  _1855 = (_1577 + _viewPos.x) - _currSceneTrailInteraction._trailUpdatedPosition.x;
                  _1858 = (_1579 + _viewPos.y) - _currSceneTrailInteraction._trailUpdatedPosition.y;
                  _1861 = (_1581 + _viewPos.z) - _currSceneTrailInteraction._trailUpdatedPosition.z;
                  _1873 = mad((_currSceneTrailInteraction._trailViewProjTexScale[0].z), _1861, mad((_currSceneTrailInteraction._trailViewProjTexScale[0].y), _1858, (_1855 * (_currSceneTrailInteraction._trailViewProjTexScale[0].x)))) + (_currSceneTrailInteraction._trailViewProjTexScale[0].w);
                  _1881 = (_currSceneTrailInteraction._trailViewProjTexScale[1].w) + mad((_currSceneTrailInteraction._trailViewProjTexScale[1].z), _1861, mad((_currSceneTrailInteraction._trailViewProjTexScale[1].y), _1858, (_1855 * (_currSceneTrailInteraction._trailViewProjTexScale[1].x))));
                  if (saturate(_1873) == _1873) {
                    [branch]
                    if (saturate(_1881) == _1881) {
                      // [sem: _3__36__0__0__g_textureTrailInteraction_sampleLod]
                      _1890 = __3__36__0__0__g_textureTrailInteraction.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_1873, _1881), 0.0f);
                      _1895 = (_1890.x * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteraction_sampleLod_derived]
                      _1897 = (_1890.y * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteraction_sampleLod_derived]
                      _1899 = rsqrt(dot(float2(_1895, _1897), float2(_1895, _1897)));  // [sem: invLength]
                      _1900 = _1899 * _1895;
                      _1901 = _1899 * _1897;
                      _1902 = saturate(_1890.w);  // [sem: expr_sat]
                      if (_1902 > 0.0f) {
                        _1908 = sin(_time.x * 7.0f);
                        _1910 = -0.0f - (_1723 * _1901);
                        _1913 = (_1722 * _1901) - (_1724 * _1900);
                        _1914 = _1723 * _1900;
                        _1916 = rsqrt(dot(float3(_1910, _1913, _1914), float3(_1910, _1913, _1914)));  // [sem: invLength]
                        _1917 = _1916 * _1910;
                        _1918 = _1913 * _1916;
                        _1919 = _1914 * _1916;
                        _1924 = (_1690 * _1902) * (_1908 + (_1902 * (1.0f - _1908)));
                        _1930 = dot(float3(_1917, _1918, _1919), float3((_136 * (_1524 - _1569)), (_1664 - _1579), (_136 * (_1530 - _1575))));
                        _1932 = _1577 + (_1917 * _1930);
                        _1934 = _1579 + (_1918 * _1930);
                        _1936 = _1581 + (_1919 * _1930);
                        _1937 = _1532 - _1932;
                        _1938 = _1664 - _1934;
                        _1939 = _1536 - _1936;
                        _1940 = sin(_1924);
                        _1941 = cos(_1924);
                        _1967 = (((_1936 - _1536) + (_1941 * _1939)) + (_1940 * ((_1918 * _1937) - (_1917 * _1938))));
                        _1968 = (((_1934 - _1664) + (_1941 * _1938)) + (_1940 * ((_1917 * _1939) - (_1919 * _1937))));
                        _1969 = (((_1932 - _1532) + (_1941 * _1937)) + (_1940 * ((_1919 * _1938) - (_1918 * _1939))));
                      } else {
                        _1967 = 0.0f;
                        _1968 = 0.0f;
                        _1969 = 0.0f;
                      }
                    } else {
                      _1967 = 0.0f;
                      _1968 = 0.0f;
                      _1969 = 0.0f;
                    }
                  } else {
                    _1967 = 0.0f;
                    _1968 = 0.0f;
                    _1969 = 0.0f;
                  }
                } else {
                  _1967 = 0.0f;
                  _1968 = 0.0f;
                  _1969 = 0.0f;
                }
                if (_1774) {
                  [branch]
                  if (saturate(_1772) == _1772) {
                    // [sem: _3__36__0__0__g_textureTrailHeight_sampleLod]
                    _1976 = __3__36__0__0__g_textureTrailHeight.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_1764, _1772), 0.0f);
                    if (_1976.x < 1.0f) {
                      _2008 = ((int)(uint)((int)((((-1.0f - _viewPos.y) + _currSceneTrailHeight._trailUpdatedPosition.y) + (((_currSceneTrailHeight._trailInvViewProjTexScale[1].w) + mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].z), _1976.x, mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].y), _1772, ((_currSceneTrailHeight._trailInvViewProjTexScale[1].x) * _1764)))) / (mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].z), _1976.x, mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].y), _1772, ((_currSceneTrailHeight._trailInvViewProjTexScale[3].x) * _1764))) + (_currSceneTrailHeight._trailInvViewProjTexScale[3].w)))) < _1579)));
                    } else {
                      _2008 = 0;
                    }
                    if ((_1976.y < 1.0f) && (_1976.y > 0.0f)) {
                      _2041 = (((int)(uint)((int)((((0.2f - _viewPos.y) + _currSceneTrailHeight._trailUpdatedPosition.y) + (((_currSceneTrailHeight._trailInvViewProjTexScale[1].w) + mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].z), _1976.y, mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].y), _1772, ((_currSceneTrailHeight._trailInvViewProjTexScale[1].x) * _1764)))) / (mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].z), _1976.y, mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].y), _1772, ((_currSceneTrailHeight._trailInvViewProjTexScale[3].x) * _1764))) + (_currSceneTrailHeight._trailInvViewProjTexScale[3].w)))) > _1579))) & _2008);
                    } else {
                      _2041 = 0;
                    }
                    _2044 = ((int)(_2041) | (int)(_1740));
                  } else {
                    _2044 = _1740;
                  }
                } else {
                  _2044 = _1740;
                }
                if (!(_2044 == 0)) {
                  _2050 = (_viewPos.x + _1577) - _prevSceneTrailInteraction._trailUpdatedPosition.x;
                  _2053 = (_viewPos.y + _1579) - _prevSceneTrailInteraction._trailUpdatedPosition.y;
                  _2056 = (_viewPos.z + _1581) - _prevSceneTrailInteraction._trailUpdatedPosition.z;
                  _2068 = (_prevSceneTrailInteraction._trailViewProjTexScale[0].w) + mad((_prevSceneTrailInteraction._trailViewProjTexScale[0].z), _2056, mad((_prevSceneTrailInteraction._trailViewProjTexScale[0].y), _2053, ((_prevSceneTrailInteraction._trailViewProjTexScale[0].x) * _2050)));
                  _2076 = mad((_prevSceneTrailInteraction._trailViewProjTexScale[1].z), _2056, mad((_prevSceneTrailInteraction._trailViewProjTexScale[1].y), _2053, ((_prevSceneTrailInteraction._trailViewProjTexScale[1].x) * _2050))) + (_prevSceneTrailInteraction._trailViewProjTexScale[1].w);
                  if (saturate(_2068) == _2068) {
                    [branch]
                    if (saturate(_2076) == _2076) {
                      // [sem: _3__36__0__0__g_textureTrailInteractionPrev_sampleLod]
                      _2085 = __3__36__0__0__g_textureTrailInteractionPrev.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_2068, _2076), 0.0f);
                      _2090 = (_2085.x * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteractionPrev_sampleLod_derived]
                      _2092 = (_2085.y * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteractionPrev_sampleLod_derived]
                      _2094 = rsqrt(dot(float2(_2090, _2092), float2(_2090, _2092)));  // [sem: invLength]
                      _2095 = _2090 * _2094;
                      _2096 = _2092 * _2094;
                      _2097 = saturate(_2085.w);  // [sem: expr_sat]
                      if (_2097 > 0.0f) {
                        _2103 = sin(_time.y * 7.0f);
                        _2105 = -0.0f - (_1723 * _2096);
                        _2108 = (_2096 * _1722) - (_2095 * _1724);
                        _2109 = _2095 * _1723;
                        _2111 = rsqrt(dot(float3(_2105, _2108, _2109), float3(_2105, _2108, _2109)));  // [sem: invLength]
                        _2112 = _2111 * _2105;
                        _2113 = _2111 * _2108;
                        _2114 = _2111 * _2109;
                        _2119 = (_2097 * _1690) * (lerp(_2103, 1.0f, _2097));
                        _2125 = dot(float3(_2112, _2113, _2114), float3(((_1524 - _1569) * _136), (_1664 - _1579), ((_1530 - _1575) * _136)));
                        _2127 = (_2112 * _2125) + _1577;
                        _2129 = (_2113 * _2125) + _1579;
                        _2131 = (_2114 * _2125) + _1581;
                        _2132 = _1532 - _2127;
                        _2133 = _1664 - _2129;
                        _2134 = _1536 - _2131;
                        _2135 = sin(_2119);
                        _2136 = cos(_2119);
                        _2162 = (((_2131 - _1536) + (_2134 * _2136)) + (((_2132 * _2113) - (_2133 * _2112)) * _2135));
                        _2163 = (((_2129 - _1664) + (_2133 * _2136)) + (((_2134 * _2112) - (_2132 * _2114)) * _2135));
                        _2164 = (((_2127 - _1532) + (_2132 * _2136)) + (((_2133 * _2114) - (_2134 * _2113)) * _2135));
                      } else {
                        _2162 = 0.0f;
                        _2163 = 0.0f;
                        _2164 = 0.0f;
                      }
                    } else {
                      _2162 = 0.0f;
                      _2163 = 0.0f;
                      _2164 = 0.0f;
                    }
                  } else {
                    _2162 = 0.0f;
                    _2163 = 0.0f;
                    _2164 = 0.0f;
                  }
                } else {
                  _2162 = 0.0f;
                  _2163 = 0.0f;
                  _2164 = 0.0f;
                }
                _2178 = ((_2162 * _299) + _1551);
                _2179 = ((_2163 * _299) + _1668);
                _2180 = ((_2164 * _299) + _1544);
                _2181 = (_1536 + (_299 * _1967));
                _2182 = (_1664 + (_299 * _1968));
                _2183 = (_1532 + (_299 * _1969));
              } else {
                _2178 = _1551;
                _2179 = _1668;
                _2180 = _1544;
                _2181 = _1536;
                _2182 = _1664;
                _2183 = _1532;
              }
            } else {
              _2178 = _1551;
              _2179 = _1668;
              _2180 = _1544;
              _2181 = _1536;
              _2182 = _1664;
              _2183 = _1532;
            }
            _2195 = (_viewProjRelativePrev[0].w) + mad((_viewProjRelativePrev[0].z), _2178, mad((_viewProjRelativePrev[0].y), _2179, ((_viewProjRelativePrev[0].x) * _2180)));
            _2203 = mad((_viewProjRelativePrev[1].z), _2178, mad((_viewProjRelativePrev[1].y), _2179, ((_viewProjRelativePrev[1].x) * _2180))) + (_viewProjRelativePrev[1].w);
            _2211 = mad((_viewProjRelativePrev[2].z), _2178, mad((_viewProjRelativePrev[2].y), _2179, ((_viewProjRelativePrev[2].x) * _2180))) + (_viewProjRelativePrev[2].w);
            _2219 = mad((_viewProjRelativePrev[3].z), _2178, mad((_viewProjRelativePrev[3].y), _2179, ((_viewProjRelativePrev[3].x) * _2180))) + (_viewProjRelativePrev[3].w);
            _2231 = mad((_viewProjRelative[0].z), _2181, mad((_viewProjRelative[0].y), _2182, (_2183 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w);
            _2239 = (_viewProjRelative[1].w) + mad((_viewProjRelative[1].z), _2181, mad((_viewProjRelative[1].y), _2182, (_2183 * (_viewProjRelative[1].x))));
            _2247 = (_viewProjRelative[2].w) + mad((_viewProjRelative[2].z), _2181, mad((_viewProjRelative[2].y), _2182, (_2183 * (_viewProjRelative[2].x))));
            _2255 = (_viewProjRelative[3].w) + mad((_viewProjRelative[3].z), _2181, mad((_viewProjRelative[3].y), _2182, (_2183 * (_viewProjRelative[3].x))));
            _2257 = rsqrt(dot(float3(_1554, _1557, _1560), float3(_1554, _1557, _1560)));  // [sem: invLength]
            _2259 = half(_2257 * _1554);
            _2261 = half(_2257 * _1557);
            _2263 = half(_2257 * _1560);
            _2269 = half((((float)((uint16_t)((int16_t)(_67 & 255)))) * 0.003921569f) * min(2.0f, _136));
            _2272 = (int)(_drawIndex) | (int)(-16777216);
            _2276 = select((_variableRateShadingParams.x > 0.0f), 5, 0);
            if ((SV_VertexID != 0) && (((int)((uint)((uint)(SV_VertexID)) % (uint)(40))) == 0)) {
              if (sqrt(((_2182 * _2182) + (_2181 * _2181)) + (_2183 * _2183)) < 4.0f) {
                __3__39__0__1__g_treeSurfacePositionsCounterBufferUAV.InterlockedAdd(0, 1, _2291);
                if ((uint)_2291 < (uint)1024) {
                  TreeSurfacePositionData __struct_store_2;
                  __struct_store_2._worldPos = float4((_viewPos.x + _2183), (_viewPos.y + _2182), (_viewPos.z + _2181), 1.0f);
                  __struct_store_2._worldPosPrev = float4((_viewPosPrev.x + _2180), (_viewPosPrev.y + _2179), (_viewPosPrev.z + _2178), 1.0f);
                  __3__39__0__1__g_treeSurfacePositionsBufferUAV[_2291] = __struct_store_2;
                  _5323 = _2255;
                  _5324 = _2247;
                  _5325 = _2239;
                  _5326 = _2231;
                  _5327 = _2276;
                  _5328 = _288;
                  _5329 = _2272;
                  _5330 = _2269;
                  _5331 = _2263;
                  _5332 = _2261;
                  _5333 = _2259;
                  _5334 = _2219;
                  _5335 = _2211;
                  _5336 = _2203;
                  _5337 = _2195;
                  _5338 = _97;
                } else {
                  _5323 = _2255;
                  _5324 = _2247;
                  _5325 = _2239;
                  _5326 = _2231;
                  _5327 = _2276;
                  _5328 = _288;
                  _5329 = _2272;
                  _5330 = _2269;
                  _5331 = _2263;
                  _5332 = _2261;
                  _5333 = _2259;
                  _5334 = _2219;
                  _5335 = _2211;
                  _5336 = _2203;
                  _5337 = _2195;
                  _5338 = _97;
                }
              } else {
                _5323 = _2255;
                _5324 = _2247;
                _5325 = _2239;
                _5326 = _2231;
                _5327 = _2276;
                _5328 = _288;
                _5329 = _2272;
                _5330 = _2269;
                _5331 = _2263;
                _5332 = _2261;
                _5333 = _2259;
                _5334 = _2219;
                _5335 = _2211;
                _5336 = _2203;
                _5337 = _2195;
                _5338 = _97;
              }
            } else {
              _5323 = _2255;
              _5324 = _2247;
              _5325 = _2239;
              _5326 = _2231;
              _5327 = _2276;
              _5328 = _288;
              _5329 = _2272;
              _5330 = _2269;
              _5331 = _2263;
              _5332 = _2261;
              _5333 = _2259;
              _5334 = _2219;
              _5335 = _2211;
              _5336 = _2203;
              _5337 = _2195;
              _5338 = _97;
            }
          } else {
            _5323 = +1.#INF;
            _5324 = +1.#INF;
            _5325 = +1.#INF;
            _5326 = +1.#INF;
            _5327 = 0;
            _5328 = 0.0f;
            _5329 = 0;
            _5330 = 0.0h;
            _5331 = 0.0h;
            _5332 = 0.0h;
            _5333 = 0.0h;
            _5334 = 0.0f;
            _5335 = 0.0f;
            _5336 = 0.0f;
            _5337 = 0.0f;
            _5338 = 0.0f;
          }
        } else {
          _5323 = +1.#INF;
          _5324 = +1.#INF;
          _5325 = +1.#INF;
          _5326 = +1.#INF;
          _5327 = 0;
          _5328 = 0.0f;
          _5329 = 0;
          _5330 = 0.0h;
          _5331 = 0.0h;
          _5332 = 0.0h;
          _5333 = 0.0h;
          _5334 = 0.0f;
          _5335 = 0.0f;
          _5336 = 0.0f;
          _5337 = 0.0f;
          _5338 = 0.0f;
        }
      } else {
        if (_138 == 1) {
          __3__36__0__0__g_topDownTerrainObjectNormal.GetDimensions(_2313.x, _2313.y);
          _2318 = (float)((int)((int)((float)((int)((int)(_2313.x))))));
          _2321 = (float)((int)((int)((float)((int)((int)(_2313.y))))));
          if (!(((((uint4)(__3__36__0__0__g_topDownTerrainObjectNormal.Load(int3(((int)(_1600 * _2318)), ((int)(_1606 * _2321)), 0)))).z) & 1023) == 0) || !(saturate(_1600) == _1600) || !(((saturate(_1606) == _1606) && (_1600 > (1.0f / _2318))) && (_1606 > (1.0f / _2321)))) {
            _2358 = mad((_sceneCaptureTopDown[0]._captureMatrixInv[1].z), ((__3__36__0__0__g_topDownTerrainObjectDepth.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_1600, _1606), 0.0f)).x), mad((_sceneCaptureTopDown[0]._captureMatrixInv[1].y), _1606, (_1600 * (_sceneCaptureTopDown[0]._captureMatrixInv[1].x)))) + (_sceneCaptureTopDown[0]._captureMatrixInv[1].w);
            if (!(abs((_141 - _1579) + _2358) > 1.0f)) {
              _2367 = ((_136 * (_1527 - _1572)) - _viewPos.y) + _2358;
              _2371 = _2358 + (((_1539 - _1572) * _136) - _viewPosPrev.y);
              if (_293 < 48.0f) {
                _2377 = __3__37__0__0__g_indirectDrawParametersBuffer[_drawIndex]._bindlessMaterialParametersViewIndex;
                if (!(((BindlessParameters_MaterialOverrideParametersTree[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_2377 < (uint)170000), _2377, 0))) + (uint)(0))))].BindlessParameters_MaterialOverrideParametersTree._materialInfo) & 512) == 0)) {
                  _2393 = (saturate(_treeParams.y) * 0.9424779f);
                } else {
                  _2393 = 0.9424779f;
                }
                if ((uint)((int)(_111 & 15) + (int)(-1)) < (uint)2) {
                  _2401 = (frac(_101 * 0.0625f) * 2.0f) + -1.0f;
                  _2404 = (frac(_101) * 2.0f) + -1.0f;
                  _2408 = (frac(_101 * 16.0f) * 2.0f) + -1.0f;
                  _2410 = rsqrt(dot(float3(_2401, _2404, _2408), float3(_2401, _2404, _2408)));  // [sem: invLength]
                  _2411 = _2401 * _2410;
                  _2412 = _2404 * _2410;
                  _2413 = _2408 * _2410;
                  _2416 = mad(_180, _2412, mad(_120, _2413, (_114 * _2411)));
                  _2419 = mad(_182, _2412, mad(_122, _2413, (_116 * _2411)));
                  _2422 = mad(_184, _2412, mad(_124, _2413, (_118 * _2411)));
                  _2424 = rsqrt(dot(float3(_2416, _2419, _2422), float3(_2416, _2419, _2422)));  // [sem: invLength]
                  _2425 = _2416 * _2424;
                  _2426 = _2419 * _2424;
                  _2427 = _2422 * _2424;
                  _2432 = _renderingOriginPos.y - _viewPos.y;
                  if (((_2432 + -2.0f) < _1579) && (_renderingOriginPos.w == 0.0f)) {
                    _2442 = ((_2432 + 1.0f) > _1579);
                  } else {
                    _2442 = false;
                  }
                  _2443 = (int)(uint)(_2442);
                  _2448 = _1577 + (_viewPos.x - _currSceneTrailHeight._trailUpdatedPosition.x);
                  _2451 = _1579 + (_viewPos.y - _currSceneTrailHeight._trailUpdatedPosition.y);
                  _2455 = _1581 + (_viewPos.z - _currSceneTrailHeight._trailUpdatedPosition.z);
                  _2467 = mad((_currSceneTrailHeight._trailViewProjTexScale[0].z), _2455, mad((_currSceneTrailHeight._trailViewProjTexScale[0].y), _2451, ((_currSceneTrailHeight._trailViewProjTexScale[0].x) * _2448))) + (_currSceneTrailHeight._trailViewProjTexScale[0].w);
                  _2475 = (_currSceneTrailHeight._trailViewProjTexScale[1].w) + mad((_currSceneTrailHeight._trailViewProjTexScale[1].z), _2455, mad((_currSceneTrailHeight._trailViewProjTexScale[1].y), _2451, ((_currSceneTrailHeight._trailViewProjTexScale[1].x) * _2448)));
                  _2477 = (saturate(_2467) == _2467);
                  if (_2477) {
                    [branch]
                    if (saturate(_2475) == _2475) {
                      // [sem: _3__36__0__0__g_textureTrailHeight_sampleLod]
                      _2484 = __3__36__0__0__g_textureTrailHeight.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_2467, _2475), 0.0f);
                      if (_2484.x < 1.0f) {
                        _2516 = ((int)(uint)((int)((((_currSceneTrailHeight._trailUpdatedPosition.y + -1.0f) - _viewPos.y) + ((mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].z), _2484.x, mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].y), _2475, (_2467 * (_currSceneTrailHeight._trailInvViewProjTexScale[1].x)))) + (_currSceneTrailHeight._trailInvViewProjTexScale[1].w)) / ((_currSceneTrailHeight._trailInvViewProjTexScale[3].w) + mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].z), _2484.x, mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].y), _2475, (_2467 * (_currSceneTrailHeight._trailInvViewProjTexScale[3].x))))))) < _1579)));
                      } else {
                        _2516 = 0;
                      }
                      if ((_2484.y < 1.0f) && (_2484.y > 0.0f)) {
                        _2549 = (((int)(uint)((int)((((_currSceneTrailHeight._trailUpdatedPosition.y + 0.2f) - _viewPos.y) + ((mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].z), _2484.y, mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].y), _2475, (_2467 * (_currSceneTrailHeight._trailInvViewProjTexScale[1].x)))) + (_currSceneTrailHeight._trailInvViewProjTexScale[1].w)) / ((_currSceneTrailHeight._trailInvViewProjTexScale[3].w) + mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].z), _2484.y, mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].y), _2475, (_2467 * (_currSceneTrailHeight._trailInvViewProjTexScale[3].x))))))) > _1579))) & _2516);
                      } else {
                        _2549 = 0;
                      }
                      _2552 = ((int)(_2549) | (int)(_2443));
                    } else {
                      _2552 = _2443;
                    }
                  } else {
                    _2552 = _2443;
                  }
                  if (!(_2552 == 0)) {
                    _2558 = (_1577 + _viewPos.x) - _currSceneTrailInteraction._trailUpdatedPosition.x;
                    _2561 = (_1579 + _viewPos.y) - _currSceneTrailInteraction._trailUpdatedPosition.y;
                    _2564 = (_1581 + _viewPos.z) - _currSceneTrailInteraction._trailUpdatedPosition.z;
                    _2576 = mad((_currSceneTrailInteraction._trailViewProjTexScale[0].z), _2564, mad((_currSceneTrailInteraction._trailViewProjTexScale[0].y), _2561, (_2558 * (_currSceneTrailInteraction._trailViewProjTexScale[0].x)))) + (_currSceneTrailInteraction._trailViewProjTexScale[0].w);
                    _2584 = (_currSceneTrailInteraction._trailViewProjTexScale[1].w) + mad((_currSceneTrailInteraction._trailViewProjTexScale[1].z), _2564, mad((_currSceneTrailInteraction._trailViewProjTexScale[1].y), _2561, (_2558 * (_currSceneTrailInteraction._trailViewProjTexScale[1].x))));
                    if (saturate(_2576) == _2576) {
                      [branch]
                      if (saturate(_2584) == _2584) {
                        // [sem: _3__36__0__0__g_textureTrailInteraction_sampleLod]
                        _2593 = __3__36__0__0__g_textureTrailInteraction.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_2576, _2584), 0.0f);
                        _2598 = (_2593.x * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteraction_sampleLod_derived]
                        _2600 = (_2593.y * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteraction_sampleLod_derived]
                        _2602 = rsqrt(dot(float2(_2598, _2600), float2(_2598, _2600)));  // [sem: invLength]
                        _2603 = _2602 * _2598;
                        _2604 = _2602 * _2600;
                        _2605 = saturate(_2593.w);  // [sem: expr_sat]
                        if (_2605 > 0.0f) {
                          _2611 = sin(_time.x * 7.0f);
                          _2613 = -0.0f - (_2426 * _2604);
                          _2616 = (_2425 * _2604) - (_2427 * _2603);
                          _2617 = _2426 * _2603;
                          _2619 = rsqrt(dot(float3(_2613, _2616, _2617), float3(_2613, _2616, _2617)));  // [sem: invLength]
                          _2620 = _2619 * _2613;
                          _2621 = _2616 * _2619;
                          _2622 = _2617 * _2619;
                          _2627 = (_2393 * _2605) * (_2611 + (_2605 * (1.0f - _2611)));
                          _2633 = dot(float3(_2620, _2621, _2622), float3((_136 * (_1524 - _1569)), (_2367 - _1579), (_136 * (_1530 - _1575))));
                          _2635 = _1577 + (_2620 * _2633);
                          _2637 = _1579 + (_2621 * _2633);
                          _2639 = _1581 + (_2622 * _2633);
                          _2640 = _1532 - _2635;
                          _2641 = _2367 - _2637;
                          _2642 = _1536 - _2639;
                          _2643 = sin(_2627);
                          _2644 = cos(_2627);
                          _2670 = (((_2639 - _1536) + (_2644 * _2642)) + (_2643 * ((_2621 * _2640) - (_2620 * _2641))));
                          _2671 = (((_2637 - _2367) + (_2644 * _2641)) + (_2643 * ((_2620 * _2642) - (_2622 * _2640))));
                          _2672 = (((_2635 - _1532) + (_2644 * _2640)) + (_2643 * ((_2622 * _2641) - (_2621 * _2642))));
                        } else {
                          _2670 = 0.0f;
                          _2671 = 0.0f;
                          _2672 = 0.0f;
                        }
                      } else {
                        _2670 = 0.0f;
                        _2671 = 0.0f;
                        _2672 = 0.0f;
                      }
                    } else {
                      _2670 = 0.0f;
                      _2671 = 0.0f;
                      _2672 = 0.0f;
                    }
                  } else {
                    _2670 = 0.0f;
                    _2671 = 0.0f;
                    _2672 = 0.0f;
                  }
                  if (_2477) {
                    [branch]
                    if (saturate(_2475) == _2475) {
                      // [sem: _3__36__0__0__g_textureTrailHeight_sampleLod]
                      _2679 = __3__36__0__0__g_textureTrailHeight.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_2467, _2475), 0.0f);
                      if (_2679.x < 1.0f) {
                        _2711 = ((int)(uint)((int)((((-1.0f - _viewPos.y) + _currSceneTrailHeight._trailUpdatedPosition.y) + (((_currSceneTrailHeight._trailInvViewProjTexScale[1].w) + mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].z), _2679.x, mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].y), _2475, ((_currSceneTrailHeight._trailInvViewProjTexScale[1].x) * _2467)))) / (mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].z), _2679.x, mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].y), _2475, ((_currSceneTrailHeight._trailInvViewProjTexScale[3].x) * _2467))) + (_currSceneTrailHeight._trailInvViewProjTexScale[3].w)))) < _1579)));
                      } else {
                        _2711 = 0;
                      }
                      if ((_2679.y < 1.0f) && (_2679.y > 0.0f)) {
                        _2744 = (((int)(uint)((int)((((0.2f - _viewPos.y) + _currSceneTrailHeight._trailUpdatedPosition.y) + (((_currSceneTrailHeight._trailInvViewProjTexScale[1].w) + mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].z), _2679.y, mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].y), _2475, ((_currSceneTrailHeight._trailInvViewProjTexScale[1].x) * _2467)))) / (mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].z), _2679.y, mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].y), _2475, ((_currSceneTrailHeight._trailInvViewProjTexScale[3].x) * _2467))) + (_currSceneTrailHeight._trailInvViewProjTexScale[3].w)))) > _1579))) & _2711);
                      } else {
                        _2744 = 0;
                      }
                      _2747 = ((int)(_2744) | (int)(_2443));
                    } else {
                      _2747 = _2443;
                    }
                  } else {
                    _2747 = _2443;
                  }
                  if (!(_2747 == 0)) {
                    _2753 = (_viewPos.x + _1577) - _prevSceneTrailInteraction._trailUpdatedPosition.x;
                    _2756 = (_viewPos.y + _1579) - _prevSceneTrailInteraction._trailUpdatedPosition.y;
                    _2759 = (_viewPos.z + _1581) - _prevSceneTrailInteraction._trailUpdatedPosition.z;
                    _2771 = (_prevSceneTrailInteraction._trailViewProjTexScale[0].w) + mad((_prevSceneTrailInteraction._trailViewProjTexScale[0].z), _2759, mad((_prevSceneTrailInteraction._trailViewProjTexScale[0].y), _2756, ((_prevSceneTrailInteraction._trailViewProjTexScale[0].x) * _2753)));
                    _2779 = mad((_prevSceneTrailInteraction._trailViewProjTexScale[1].z), _2759, mad((_prevSceneTrailInteraction._trailViewProjTexScale[1].y), _2756, ((_prevSceneTrailInteraction._trailViewProjTexScale[1].x) * _2753))) + (_prevSceneTrailInteraction._trailViewProjTexScale[1].w);
                    if (saturate(_2771) == _2771) {
                      [branch]
                      if (saturate(_2779) == _2779) {
                        // [sem: _3__36__0__0__g_textureTrailInteractionPrev_sampleLod]
                        _2788 = __3__36__0__0__g_textureTrailInteractionPrev.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_2771, _2779), 0.0f);
                        _2793 = (_2788.x * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteractionPrev_sampleLod_derived]
                        _2795 = (_2788.y * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteractionPrev_sampleLod_derived]
                        _2797 = rsqrt(dot(float2(_2793, _2795), float2(_2793, _2795)));  // [sem: invLength]
                        _2798 = _2793 * _2797;
                        _2799 = _2795 * _2797;
                        _2800 = saturate(_2788.w);  // [sem: expr_sat]
                        if (_2800 > 0.0f) {
                          _2806 = sin(_time.y * 7.0f);
                          _2808 = -0.0f - (_2426 * _2799);
                          _2811 = (_2799 * _2425) - (_2798 * _2427);
                          _2812 = _2798 * _2426;
                          _2814 = rsqrt(dot(float3(_2808, _2811, _2812), float3(_2808, _2811, _2812)));  // [sem: invLength]
                          _2815 = _2814 * _2808;
                          _2816 = _2814 * _2811;
                          _2817 = _2814 * _2812;
                          _2822 = (_2800 * _2393) * (lerp(_2806, 1.0f, _2800));
                          _2828 = dot(float3(_2815, _2816, _2817), float3(((_1524 - _1569) * _136), (_2367 - _1579), ((_1530 - _1575) * _136)));
                          _2830 = (_2815 * _2828) + _1577;
                          _2832 = (_2816 * _2828) + _1579;
                          _2834 = (_2817 * _2828) + _1581;
                          _2835 = _1532 - _2830;
                          _2836 = _2367 - _2832;
                          _2837 = _1536 - _2834;
                          _2838 = sin(_2822);
                          _2839 = cos(_2822);
                          _2865 = (((_2834 - _1536) + (_2837 * _2839)) + (((_2835 * _2816) - (_2836 * _2815)) * _2838));
                          _2866 = (((_2832 - _2367) + (_2836 * _2839)) + (((_2837 * _2815) - (_2835 * _2817)) * _2838));
                          _2867 = (((_2830 - _1532) + (_2835 * _2839)) + (((_2836 * _2817) - (_2837 * _2816)) * _2838));
                        } else {
                          _2865 = 0.0f;
                          _2866 = 0.0f;
                          _2867 = 0.0f;
                        }
                      } else {
                        _2865 = 0.0f;
                        _2866 = 0.0f;
                        _2867 = 0.0f;
                      }
                    } else {
                      _2865 = 0.0f;
                      _2866 = 0.0f;
                      _2867 = 0.0f;
                    }
                  } else {
                    _2865 = 0.0f;
                    _2866 = 0.0f;
                    _2867 = 0.0f;
                  }
                  _2881 = ((_2865 * _299) + _1551);
                  _2882 = ((_2866 * _299) + _2371);
                  _2883 = ((_2867 * _299) + _1544);
                  _2884 = (_1536 + (_299 * _2670));
                  _2885 = (_2367 + (_299 * _2671));
                  _2886 = (_1532 + (_299 * _2672));
                } else {
                  _2881 = _1551;
                  _2882 = _2371;
                  _2883 = _1544;
                  _2884 = _1536;
                  _2885 = _2367;
                  _2886 = _1532;
                }
              } else {
                _2881 = _1551;
                _2882 = _2371;
                _2883 = _1544;
                _2884 = _1536;
                _2885 = _2367;
                _2886 = _1532;
              }
              _2898 = (_viewProjRelativePrev[0].w) + mad((_viewProjRelativePrev[0].z), _2881, mad((_viewProjRelativePrev[0].y), _2882, ((_viewProjRelativePrev[0].x) * _2883)));
              _2906 = mad((_viewProjRelativePrev[1].z), _2881, mad((_viewProjRelativePrev[1].y), _2882, ((_viewProjRelativePrev[1].x) * _2883))) + (_viewProjRelativePrev[1].w);
              _2914 = mad((_viewProjRelativePrev[2].z), _2881, mad((_viewProjRelativePrev[2].y), _2882, ((_viewProjRelativePrev[2].x) * _2883))) + (_viewProjRelativePrev[2].w);
              _2922 = mad((_viewProjRelativePrev[3].z), _2881, mad((_viewProjRelativePrev[3].y), _2882, ((_viewProjRelativePrev[3].x) * _2883))) + (_viewProjRelativePrev[3].w);
              _2934 = mad((_viewProjRelative[0].z), _2884, mad((_viewProjRelative[0].y), _2885, (_2886 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w);
              _2942 = (_viewProjRelative[1].w) + mad((_viewProjRelative[1].z), _2884, mad((_viewProjRelative[1].y), _2885, (_2886 * (_viewProjRelative[1].x))));
              _2950 = (_viewProjRelative[2].w) + mad((_viewProjRelative[2].z), _2884, mad((_viewProjRelative[2].y), _2885, (_2886 * (_viewProjRelative[2].x))));
              _2958 = (_viewProjRelative[3].w) + mad((_viewProjRelative[3].z), _2884, mad((_viewProjRelative[3].y), _2885, (_2886 * (_viewProjRelative[3].x))));
              _2960 = rsqrt(dot(float3(_1554, _1557, _1560), float3(_1554, _1557, _1560)));  // [sem: invLength]
              _2962 = half(_2960 * _1554);
              _2964 = half(_2960 * _1557);
              _2966 = half(_2960 * _1560);
              _2972 = half((((float)((uint16_t)((int16_t)(_67 & 255)))) * 0.003921569f) * min(2.0f, _136));
              _2975 = (int)(_drawIndex) | (int)(-16777216);
              _2979 = select((_variableRateShadingParams.x > 0.0f), 5, 0);
              if ((SV_VertexID != 0) && (((int)((uint)((uint)(SV_VertexID)) % (uint)(40))) == 0)) {
                if (sqrt(((_2885 * _2885) + (_2884 * _2884)) + (_2886 * _2886)) < 4.0f) {
                  __3__39__0__1__g_treeSurfacePositionsCounterBufferUAV.InterlockedAdd(0, 1, _2994);
                  if ((uint)_2994 < (uint)1024) {
                    TreeSurfacePositionData __struct_store_3;
                    __struct_store_3._worldPos = float4((_viewPos.x + _2886), (_viewPos.y + _2885), (_viewPos.z + _2884), 1.0f);
                    __struct_store_3._worldPosPrev = float4((_viewPosPrev.x + _2883), (_viewPosPrev.y + _2882), (_viewPosPrev.z + _2881), 1.0f);
                    __3__39__0__1__g_treeSurfacePositionsBufferUAV[_2994] = __struct_store_3;
                    _5323 = _2958;
                    _5324 = _2950;
                    _5325 = _2942;
                    _5326 = _2934;
                    _5327 = _2979;
                    _5328 = _288;
                    _5329 = _2975;
                    _5330 = _2972;
                    _5331 = _2966;
                    _5332 = _2964;
                    _5333 = _2962;
                    _5334 = _2922;
                    _5335 = _2914;
                    _5336 = _2906;
                    _5337 = _2898;
                    _5338 = _97;
                  } else {
                    _5323 = _2958;
                    _5324 = _2950;
                    _5325 = _2942;
                    _5326 = _2934;
                    _5327 = _2979;
                    _5328 = _288;
                    _5329 = _2975;
                    _5330 = _2972;
                    _5331 = _2966;
                    _5332 = _2964;
                    _5333 = _2962;
                    _5334 = _2922;
                    _5335 = _2914;
                    _5336 = _2906;
                    _5337 = _2898;
                    _5338 = _97;
                  }
                } else {
                  _5323 = _2958;
                  _5324 = _2950;
                  _5325 = _2942;
                  _5326 = _2934;
                  _5327 = _2979;
                  _5328 = _288;
                  _5329 = _2975;
                  _5330 = _2972;
                  _5331 = _2966;
                  _5332 = _2964;
                  _5333 = _2962;
                  _5334 = _2922;
                  _5335 = _2914;
                  _5336 = _2906;
                  _5337 = _2898;
                  _5338 = _97;
                }
              } else {
                _5323 = _2958;
                _5324 = _2950;
                _5325 = _2942;
                _5326 = _2934;
                _5327 = _2979;
                _5328 = _288;
                _5329 = _2975;
                _5330 = _2972;
                _5331 = _2966;
                _5332 = _2964;
                _5333 = _2962;
                _5334 = _2922;
                _5335 = _2914;
                _5336 = _2906;
                _5337 = _2898;
                _5338 = _97;
              }
            } else {
              _5323 = +1.#INF;
              _5324 = +1.#INF;
              _5325 = +1.#INF;
              _5326 = +1.#INF;
              _5327 = 0;
              _5328 = 0.0f;
              _5329 = 0;
              _5330 = 0.0h;
              _5331 = 0.0h;
              _5332 = 0.0h;
              _5333 = 0.0h;
              _5334 = 0.0f;
              _5335 = 0.0f;
              _5336 = 0.0f;
              _5337 = 0.0f;
              _5338 = 0.0f;
            }
          } else {
            _5323 = +1.#INF;
            _5324 = +1.#INF;
            _5325 = +1.#INF;
            _5326 = +1.#INF;
            _5327 = 0;
            _5328 = 0.0f;
            _5329 = 0;
            _5330 = 0.0h;
            _5331 = 0.0h;
            _5332 = 0.0h;
            _5333 = 0.0h;
            _5334 = 0.0f;
            _5335 = 0.0f;
            _5336 = 0.0f;
            _5337 = 0.0f;
            _5338 = 0.0f;
          }
        } else {
          if (_293 < 48.0f) {
            _3018 = __3__37__0__0__g_indirectDrawParametersBuffer[_drawIndex]._bindlessMaterialParametersViewIndex;
            if (!(((BindlessParameters_MaterialOverrideParametersTree[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_3018 < (uint)170000), _3018, 0))) + (uint)(0))))].BindlessParameters_MaterialOverrideParametersTree._materialInfo) & 512) == 0)) {
              _3034 = (saturate(_treeParams.y) * 0.9424779f);
            } else {
              _3034 = 0.9424779f;
            }
            if ((uint)((int)(_111 & 15) + (int)(-1)) < (uint)2) {
              _3042 = (frac(_101 * 0.0625f) * 2.0f) + -1.0f;
              _3045 = (frac(_101) * 2.0f) + -1.0f;
              _3049 = (frac(_101 * 16.0f) * 2.0f) + -1.0f;
              _3051 = rsqrt(dot(float3(_3042, _3045, _3049), float3(_3042, _3045, _3049)));  // [sem: invLength]
              _3052 = _3042 * _3051;
              _3053 = _3045 * _3051;
              _3054 = _3049 * _3051;
              _3057 = mad(_180, _3053, mad(_120, _3054, (_114 * _3052)));
              _3060 = mad(_182, _3053, mad(_122, _3054, (_116 * _3052)));
              _3063 = mad(_184, _3053, mad(_124, _3054, (_118 * _3052)));
              _3065 = rsqrt(dot(float3(_3057, _3060, _3063), float3(_3057, _3060, _3063)));  // [sem: invLength]
              _3066 = _3057 * _3065;
              _3067 = _3060 * _3065;
              _3068 = _3063 * _3065;
              _3073 = _renderingOriginPos.y - _viewPos.y;
              if (((_3073 + -2.0f) < _1579) && (_renderingOriginPos.w == 0.0f)) {
                _3083 = ((_3073 + 1.0f) > _1579);
              } else {
                _3083 = false;
              }
              _3084 = (int)(uint)(_3083);
              _3089 = _1577 + (_viewPos.x - _currSceneTrailHeight._trailUpdatedPosition.x);
              _3092 = _1579 + (_viewPos.y - _currSceneTrailHeight._trailUpdatedPosition.y);
              _3096 = _1581 + (_viewPos.z - _currSceneTrailHeight._trailUpdatedPosition.z);
              _3108 = mad((_currSceneTrailHeight._trailViewProjTexScale[0].z), _3096, mad((_currSceneTrailHeight._trailViewProjTexScale[0].y), _3092, ((_currSceneTrailHeight._trailViewProjTexScale[0].x) * _3089))) + (_currSceneTrailHeight._trailViewProjTexScale[0].w);
              _3116 = (_currSceneTrailHeight._trailViewProjTexScale[1].w) + mad((_currSceneTrailHeight._trailViewProjTexScale[1].z), _3096, mad((_currSceneTrailHeight._trailViewProjTexScale[1].y), _3092, ((_currSceneTrailHeight._trailViewProjTexScale[1].x) * _3089)));
              _3118 = (saturate(_3108) == _3108);
              if (_3118) {
                [branch]
                if (saturate(_3116) == _3116) {
                  // [sem: _3__36__0__0__g_textureTrailHeight_sampleLod]
                  _3125 = __3__36__0__0__g_textureTrailHeight.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_3108, _3116), 0.0f);
                  if (_3125.x < 1.0f) {
                    _3157 = ((int)(uint)((int)((((_currSceneTrailHeight._trailUpdatedPosition.y + -1.0f) - _viewPos.y) + ((mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].z), _3125.x, mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].y), _3116, (_3108 * (_currSceneTrailHeight._trailInvViewProjTexScale[1].x)))) + (_currSceneTrailHeight._trailInvViewProjTexScale[1].w)) / ((_currSceneTrailHeight._trailInvViewProjTexScale[3].w) + mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].z), _3125.x, mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].y), _3116, (_3108 * (_currSceneTrailHeight._trailInvViewProjTexScale[3].x))))))) < _1579)));
                  } else {
                    _3157 = 0;
                  }
                  if ((_3125.y < 1.0f) && (_3125.y > 0.0f)) {
                    _3190 = (((int)(uint)((int)((((_currSceneTrailHeight._trailUpdatedPosition.y + 0.2f) - _viewPos.y) + ((mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].z), _3125.y, mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].y), _3116, (_3108 * (_currSceneTrailHeight._trailInvViewProjTexScale[1].x)))) + (_currSceneTrailHeight._trailInvViewProjTexScale[1].w)) / ((_currSceneTrailHeight._trailInvViewProjTexScale[3].w) + mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].z), _3125.y, mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].y), _3116, (_3108 * (_currSceneTrailHeight._trailInvViewProjTexScale[3].x))))))) > _1579))) & _3157);
                  } else {
                    _3190 = 0;
                  }
                  _3193 = ((int)(_3190) | (int)(_3084));
                } else {
                  _3193 = _3084;
                }
              } else {
                _3193 = _3084;
              }
              if (!(_3193 == 0)) {
                _3199 = (_1577 + _viewPos.x) - _currSceneTrailInteraction._trailUpdatedPosition.x;
                _3202 = (_1579 + _viewPos.y) - _currSceneTrailInteraction._trailUpdatedPosition.y;
                _3205 = (_1581 + _viewPos.z) - _currSceneTrailInteraction._trailUpdatedPosition.z;
                _3217 = mad((_currSceneTrailInteraction._trailViewProjTexScale[0].z), _3205, mad((_currSceneTrailInteraction._trailViewProjTexScale[0].y), _3202, (_3199 * (_currSceneTrailInteraction._trailViewProjTexScale[0].x)))) + (_currSceneTrailInteraction._trailViewProjTexScale[0].w);
                _3225 = (_currSceneTrailInteraction._trailViewProjTexScale[1].w) + mad((_currSceneTrailInteraction._trailViewProjTexScale[1].z), _3205, mad((_currSceneTrailInteraction._trailViewProjTexScale[1].y), _3202, (_3199 * (_currSceneTrailInteraction._trailViewProjTexScale[1].x))));
                if (saturate(_3217) == _3217) {
                  [branch]
                  if (saturate(_3225) == _3225) {
                    // [sem: _3__36__0__0__g_textureTrailInteraction_sampleLod]
                    _3234 = __3__36__0__0__g_textureTrailInteraction.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_3217, _3225), 0.0f);
                    _3239 = (_3234.x * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteraction_sampleLod_derived]
                    _3241 = (_3234.y * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteraction_sampleLod_derived]
                    _3243 = rsqrt(dot(float2(_3239, _3241), float2(_3239, _3241)));  // [sem: invLength]
                    _3244 = _3243 * _3239;
                    _3245 = _3243 * _3241;
                    _3246 = saturate(_3234.w);  // [sem: expr_sat]
                    if (_3246 > 0.0f) {
                      _3252 = sin(_time.x * 7.0f);
                      _3254 = -0.0f - (_3067 * _3245);
                      _3257 = (_3066 * _3245) - (_3068 * _3244);
                      _3258 = _3067 * _3244;
                      _3260 = rsqrt(dot(float3(_3254, _3257, _3258), float3(_3254, _3257, _3258)));  // [sem: invLength]
                      _3261 = _3260 * _3254;
                      _3262 = _3257 * _3260;
                      _3263 = _3258 * _3260;
                      _3268 = (_3034 * _3246) * (_3252 + (_3246 * (1.0f - _3252)));
                      _3274 = dot(float3(_3261, _3262, _3263), float3((_136 * (_1524 - _1569)), (_1534 - _1579), (_136 * (_1530 - _1575))));
                      _3276 = _1577 + (_3261 * _3274);
                      _3278 = _1579 + (_3262 * _3274);
                      _3280 = _1581 + (_3263 * _3274);
                      _3281 = _1532 - _3276;
                      _3282 = _1534 - _3278;
                      _3283 = _1536 - _3280;
                      _3284 = sin(_3268);
                      _3285 = cos(_3268);
                      _3311 = (((_3280 - _1536) + (_3285 * _3283)) + (_3284 * ((_3262 * _3281) - (_3261 * _3282))));
                      _3312 = (((_3278 - _1534) + (_3285 * _3282)) + (_3284 * ((_3261 * _3283) - (_3263 * _3281))));
                      _3313 = (((_3276 - _1532) + (_3285 * _3281)) + (_3284 * ((_3263 * _3282) - (_3262 * _3283))));
                    } else {
                      _3311 = 0.0f;
                      _3312 = 0.0f;
                      _3313 = 0.0f;
                    }
                  } else {
                    _3311 = 0.0f;
                    _3312 = 0.0f;
                    _3313 = 0.0f;
                  }
                } else {
                  _3311 = 0.0f;
                  _3312 = 0.0f;
                  _3313 = 0.0f;
                }
              } else {
                _3311 = 0.0f;
                _3312 = 0.0f;
                _3313 = 0.0f;
              }
              if (_3118) {
                [branch]
                if (saturate(_3116) == _3116) {
                  // [sem: _3__36__0__0__g_textureTrailHeight_sampleLod]
                  _3320 = __3__36__0__0__g_textureTrailHeight.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_3108, _3116), 0.0f);
                  if (_3320.x < 1.0f) {
                    _3352 = ((int)(uint)((int)((((-1.0f - _viewPos.y) + _currSceneTrailHeight._trailUpdatedPosition.y) + (((_currSceneTrailHeight._trailInvViewProjTexScale[1].w) + mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].z), _3320.x, mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].y), _3116, ((_currSceneTrailHeight._trailInvViewProjTexScale[1].x) * _3108)))) / (mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].z), _3320.x, mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].y), _3116, ((_currSceneTrailHeight._trailInvViewProjTexScale[3].x) * _3108))) + (_currSceneTrailHeight._trailInvViewProjTexScale[3].w)))) < _1579)));
                  } else {
                    _3352 = 0;
                  }
                  if ((_3320.y < 1.0f) && (_3320.y > 0.0f)) {
                    _3385 = (((int)(uint)((int)((((0.2f - _viewPos.y) + _currSceneTrailHeight._trailUpdatedPosition.y) + (((_currSceneTrailHeight._trailInvViewProjTexScale[1].w) + mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].z), _3320.y, mad((_currSceneTrailHeight._trailInvViewProjTexScale[1].y), _3116, ((_currSceneTrailHeight._trailInvViewProjTexScale[1].x) * _3108)))) / (mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].z), _3320.y, mad((_currSceneTrailHeight._trailInvViewProjTexScale[3].y), _3116, ((_currSceneTrailHeight._trailInvViewProjTexScale[3].x) * _3108))) + (_currSceneTrailHeight._trailInvViewProjTexScale[3].w)))) > _1579))) & _3352);
                  } else {
                    _3385 = 0;
                  }
                  _3388 = ((int)(_3385) | (int)(_3084));
                } else {
                  _3388 = _3084;
                }
              } else {
                _3388 = _3084;
              }
              if (!(_3388 == 0)) {
                _3394 = (_viewPos.x + _1577) - _prevSceneTrailInteraction._trailUpdatedPosition.x;
                _3397 = (_viewPos.y + _1579) - _prevSceneTrailInteraction._trailUpdatedPosition.y;
                _3400 = (_viewPos.z + _1581) - _prevSceneTrailInteraction._trailUpdatedPosition.z;
                _3412 = (_prevSceneTrailInteraction._trailViewProjTexScale[0].w) + mad((_prevSceneTrailInteraction._trailViewProjTexScale[0].z), _3400, mad((_prevSceneTrailInteraction._trailViewProjTexScale[0].y), _3397, ((_prevSceneTrailInteraction._trailViewProjTexScale[0].x) * _3394)));
                _3420 = mad((_prevSceneTrailInteraction._trailViewProjTexScale[1].z), _3400, mad((_prevSceneTrailInteraction._trailViewProjTexScale[1].y), _3397, ((_prevSceneTrailInteraction._trailViewProjTexScale[1].x) * _3394))) + (_prevSceneTrailInteraction._trailViewProjTexScale[1].w);
                if (saturate(_3412) == _3412) {
                  [branch]
                  if (saturate(_3420) == _3420) {
                    // [sem: _3__36__0__0__g_textureTrailInteractionPrev_sampleLod]
                    _3429 = __3__36__0__0__g_textureTrailInteractionPrev.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_3412, _3420), 0.0f);
                    _3434 = (_3429.x * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteractionPrev_sampleLod_derived]
                    _3436 = (_3429.y * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_textureTrailInteractionPrev_sampleLod_derived]
                    _3438 = rsqrt(dot(float2(_3434, _3436), float2(_3434, _3436)));  // [sem: invLength]
                    _3439 = _3434 * _3438;
                    _3440 = _3436 * _3438;
                    _3441 = saturate(_3429.w);  // [sem: expr_sat]
                    if (_3441 > 0.0f) {
                      _3447 = sin(_time.y * 7.0f);
                      _3449 = -0.0f - (_3067 * _3440);
                      _3452 = (_3440 * _3066) - (_3439 * _3068);
                      _3453 = _3439 * _3067;
                      _3455 = rsqrt(dot(float3(_3449, _3452, _3453), float3(_3449, _3452, _3453)));  // [sem: invLength]
                      _3456 = _3455 * _3449;
                      _3457 = _3455 * _3452;
                      _3458 = _3455 * _3453;
                      _3463 = (_3441 * _3034) * (lerp(_3447, 1.0f, _3441));
                      _3470 = dot(float3(_3456, _3457, _3458), float3(((_1524 - _1569) * _136), ((_1527 - _1572) * _136), ((_1530 - _1575) * _136)));
                      _3472 = (_3456 * _3470) + _1577;
                      _3474 = (_3457 * _3470) + _1579;
                      _3476 = (_3458 * _3470) + _1581;
                      _3477 = _1532 - _3472;
                      _3478 = _1534 - _3474;
                      _3479 = _1536 - _3476;
                      _3480 = sin(_3463);
                      _3481 = cos(_3463);
                      _3507 = (((_3476 - _1536) + (_3479 * _3481)) + (((_3477 * _3457) - (_3478 * _3456)) * _3480));
                      _3508 = (((_3474 - _1534) + (_3478 * _3481)) + (((_3479 * _3456) - (_3477 * _3458)) * _3480));
                      _3509 = (((_3472 - _1532) + (_3477 * _3481)) + (((_3478 * _3458) - (_3479 * _3457)) * _3480));
                    } else {
                      _3507 = 0.0f;
                      _3508 = 0.0f;
                      _3509 = 0.0f;
                    }
                  } else {
                    _3507 = 0.0f;
                    _3508 = 0.0f;
                    _3509 = 0.0f;
                  }
                } else {
                  _3507 = 0.0f;
                  _3508 = 0.0f;
                  _3509 = 0.0f;
                }
              } else {
                _3507 = 0.0f;
                _3508 = 0.0f;
                _3509 = 0.0f;
              }
              _3523 = ((_3507 * _299) + _1551);
              _3524 = ((_3508 * _299) + _1546);
              _3525 = ((_3509 * _299) + _1544);
              _3526 = (_1536 + (_299 * _3311));
              _3527 = (_1534 + (_299 * _3312));
              _3528 = (_1532 + (_299 * _3313));
            } else {
              _3523 = _1551;
              _3524 = _1546;
              _3525 = _1544;
              _3526 = _1536;
              _3527 = _1534;
              _3528 = _1532;
            }
          } else {
            _3523 = _1551;
            _3524 = _1546;
            _3525 = _1544;
            _3526 = _1536;
            _3527 = _1534;
            _3528 = _1532;
          }
          _3540 = (_viewProjRelativePrev[0].w) + mad((_viewProjRelativePrev[0].z), _3523, mad((_viewProjRelativePrev[0].y), _3524, ((_viewProjRelativePrev[0].x) * _3525)));
          _3548 = mad((_viewProjRelativePrev[1].z), _3523, mad((_viewProjRelativePrev[1].y), _3524, ((_viewProjRelativePrev[1].x) * _3525))) + (_viewProjRelativePrev[1].w);
          _3556 = mad((_viewProjRelativePrev[2].z), _3523, mad((_viewProjRelativePrev[2].y), _3524, ((_viewProjRelativePrev[2].x) * _3525))) + (_viewProjRelativePrev[2].w);
          _3564 = mad((_viewProjRelativePrev[3].z), _3523, mad((_viewProjRelativePrev[3].y), _3524, ((_viewProjRelativePrev[3].x) * _3525))) + (_viewProjRelativePrev[3].w);
          _3576 = mad((_viewProjRelative[0].z), _3526, mad((_viewProjRelative[0].y), _3527, (_3528 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w);
          _3584 = (_viewProjRelative[1].w) + mad((_viewProjRelative[1].z), _3526, mad((_viewProjRelative[1].y), _3527, (_3528 * (_viewProjRelative[1].x))));
          _3592 = (_viewProjRelative[2].w) + mad((_viewProjRelative[2].z), _3526, mad((_viewProjRelative[2].y), _3527, (_3528 * (_viewProjRelative[2].x))));
          _3600 = (_viewProjRelative[3].w) + mad((_viewProjRelative[3].z), _3526, mad((_viewProjRelative[3].y), _3527, (_3528 * (_viewProjRelative[3].x))));
          _3602 = rsqrt(dot(float3(_1554, _1557, _1560), float3(_1554, _1557, _1560)));  // [sem: invLength]
          _3604 = half(_3602 * _1554);
          _3606 = half(_3602 * _1557);
          _3608 = half(_3602 * _1560);
          _3614 = half((((float)((uint16_t)((int16_t)(_67 & 255)))) * 0.003921569f) * min(2.0f, _136));
          _3617 = (int)(_drawIndex) | (int)(-16777216);
          _3621 = select((_variableRateShadingParams.x > 0.0f), 5, 0);
          if ((SV_VertexID != 0) && (((int)((uint)((uint)(SV_VertexID)) % (uint)(40))) == 0)) {
            if (sqrt(((_3527 * _3527) + (_3526 * _3526)) + (_3528 * _3528)) < 4.0f) {
              __3__39__0__1__g_treeSurfacePositionsCounterBufferUAV.InterlockedAdd(0, 1, _3636);
              if ((uint)_3636 < (uint)1024) {
                TreeSurfacePositionData __struct_store_4;
                __struct_store_4._worldPos = float4((_viewPos.x + _3528), (_viewPos.y + _3527), (_viewPos.z + _3526), 1.0f);
                __struct_store_4._worldPosPrev = float4((_viewPosPrev.x + _3525), (_viewPosPrev.y + _3524), (_viewPosPrev.z + _3523), 1.0f);
                __3__39__0__1__g_treeSurfacePositionsBufferUAV[_3636] = __struct_store_4;
                _5323 = _3600;
                _5324 = _3592;
                _5325 = _3584;
                _5326 = _3576;
                _5327 = _3621;
                _5328 = _288;
                _5329 = _3617;
                _5330 = _3614;
                _5331 = _3608;
                _5332 = _3606;
                _5333 = _3604;
                _5334 = _3564;
                _5335 = _3556;
                _5336 = _3548;
                _5337 = _3540;
                _5338 = _97;
              } else {
                _5323 = _3600;
                _5324 = _3592;
                _5325 = _3584;
                _5326 = _3576;
                _5327 = _3621;
                _5328 = _288;
                _5329 = _3617;
                _5330 = _3614;
                _5331 = _3608;
                _5332 = _3606;
                _5333 = _3604;
                _5334 = _3564;
                _5335 = _3556;
                _5336 = _3548;
                _5337 = _3540;
                _5338 = _97;
              }
            } else {
              _5323 = _3600;
              _5324 = _3592;
              _5325 = _3584;
              _5326 = _3576;
              _5327 = _3621;
              _5328 = _288;
              _5329 = _3617;
              _5330 = _3614;
              _5331 = _3608;
              _5332 = _3606;
              _5333 = _3604;
              _5334 = _3564;
              _5335 = _3556;
              _5336 = _3548;
              _5337 = _3540;
              _5338 = _97;
            }
          } else {
            _5323 = _3600;
            _5324 = _3592;
            _5325 = _3584;
            _5326 = _3576;
            _5327 = _3621;
            _5328 = _288;
            _5329 = _3617;
            _5330 = _3614;
            _5331 = _3608;
            _5332 = _3606;
            _5333 = _3604;
            _5334 = _3564;
            _5335 = _3556;
            _5336 = _3548;
            _5337 = _3540;
            _5338 = _97;
          }
        }
      }
    }
  }
  SV_Position.x = _5326;
  SV_Position.y = _5325;
  SV_Position.z = _5324;
  SV_Position.w = _5323;
  TEXCOORD.x = float(_71);
  TEXCOORD.y = float(_72);
  TEXCOORD.z = _5338;
  TEXCOORD.w = 0.0f;
  TEXCOORD_1.x = _5337;
  TEXCOORD_1.y = _5336;
  TEXCOORD_1.z = _5335;
  TEXCOORD_1.w = _5334;
  NORMAL.x = _5333;
  NORMAL.y = _5332;
  NORMAL.z = _5331;
  NORMAL.w = _5330;
  TEXCOORD_2.x = (uint)(_5329);
  TEXCOORD_2.y = (uint)(asint(_126));
  SV_ClipDistance = _5328;
  SV_ShadingRate = (uint)(_5327);
  OutputSignature output_signature = { SV_Position, TEXCOORD, TEXCOORD_1, NORMAL, TEXCOORD_2, SV_ClipDistance, SV_ShadingRate };
  return output_signature;
}
