// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports "../shared.h" for the effective RenoDX option gates and injected constants used below.
#include "../shared.h"
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
struct IceParametersStruct {
  uint _iceCrackTexture;
  uint _iceCrackNormalTexture;
  uint _iceCrackColor;
  uint _edgeColor;
  uint _edgeRockTexture;
  uint _edgeRockNormalTexture;
  uint _snowHeightTexture;
  uint _snowColor;
  float _snowNoiseFrequency;
  float _snowNoiseOffset;
  float _snowAmount;
  uint _bubbleBaseColorTexture;
  uint _noiseTexture;
  uint _surfaceIceCrackNormalMap;
  float _iceNoiseFrequency;
  float _iceNoiseOffset;
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
  row_major float4x4 worldInstancing;
};

struct MaterialOverrideParametersStruct {
  uint _baseColorTexture;
  uint _normalTexture;
  uint _materialTexture;
  uint _heightTexture;
  float _brightness;
  uint _tintColor;
  uint _impostorTintColor;
  uint _emissiveTexture;
  uint _emissiveIntensityTexture;
  int _placementId;
  float _terrainBlend;
  uint _excludeWeatherShadeOnlyDynamic;
  uint _materialInfo;
  float _opticalOpacity;
  float _audioObstruction;
  uint _ignoreRaytracing;
  uint _useSpawnOnOwner;
};

struct PrimitiveBufferView {
  int4 _vertexBufferView;
  int4 _indexBufferView;
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

struct VertexData {
  uint16_t4 _position;
  half2 _texcoord;
  uint _normal;
  uint _color;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

StructuredBuffer<StaticMeshData> __0__15__0__0__g_staticMeshDataBindless[] : register(t0, space15);

StructuredBuffer<IndirectDrawParameters> __3__37__0__0__g_indirectDrawParametersBuffer : register(t1052, space37);

StructuredBuffer<VertexData> __0__103__0__0__g_bindlessVertexBuffers[] : register(t0, space103);

StructuredBuffer<InstanceData> __0__9__0__0__g_instanceDataBuffer[] : register(t0, space9);

cbuffer __3__1__0__0__IndirectCommandConstants : register(b2, space1) {
  uint _drawIndex : packoffset(c000.x);
};

cbuffer __3__35__0__0__SceneConstantBuffer : register(b18, space35) {
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

cbuffer __3__35__0__0__TerrainCommonConstantBuffer : register(b8, space35) {
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

struct BindlessParameters_MaterialOverrideParameters {
  MaterialOverrideParametersStruct BindlessParameters_MaterialOverrideParameters;
};

typedef BindlessParameters_MaterialOverrideParameters BindlessParameters_MaterialOverrideParameters_t;
ConstantBuffer<BindlessParameters_MaterialOverrideParameters_t> BindlessParameters_MaterialOverrideParameters[] : register(b0, space101);

struct BindlessParameters_IceParameters {
  IceParametersStruct BindlessParameters_IceParameters;
};

typedef BindlessParameters_IceParameters BindlessParameters_IceParameters_t;
ConstantBuffer<BindlessParameters_IceParameters_t> BindlessParameters_IceParameters[] : register(b0, space100);

SamplerState __0__95__0__0__g_samplerAnisotropicWrap : register(s8, space95);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

struct OutputSignature {
  precise noperspective float4 SV_Position : SV_Position;
  linear float4 TEXCOORD : TEXCOORD;
  linear half4 TEXCOORD_1 : TEXCOORD1;
  linear half4 TEXCOORD_2 : TEXCOORD2;
  linear half4 COLOR : COLOR;
  linear half4 TEXCOORD_3 : TEXCOORD3;
  nointerpolation uint TEXCOORD_5 : TEXCOORD5;
  nointerpolation uint TEXCOORD_6 : TEXCOORD6;
  nointerpolation uint2 TEXCOORD_7 : TEXCOORD7;
  linear float4 TEXCOORD_10 : TEXCOORD10;
};

OutputSignature main(
  uint2 BLENDINDICES : BLENDINDICES,
  uint SV_VertexID : SV_VertexID
) {
  float4 SV_Position;
  float4 TEXCOORD;
  half4 TEXCOORD_1;
  half4 TEXCOORD_2;
  half4 COLOR;
  half4 TEXCOORD_3;
  uint TEXCOORD_5;
  uint TEXCOORD_6;
  uint2 TEXCOORD_7;
  float4 TEXCOORD_10;
  int _15;
  int16_t _18;
  int16_t _20;
  int16_t _22;
  int _24;
  int _28;
  float _33;
  float _34;
  float _35;
  float _37;
  float _38;
  float _39;
  uint _43;
  int16_t _51;
  int16_t _52;
  int16_t _53;
  int16_t _54;
  half _56;
  half _57;
  int _59;
  int _61;
  float _71;
  float _72;
  float _73;
  float _79;
  float _85;
  float _91;
  float _96;
  float _99;
  int _102;
  int _123;
  float _331;
  float _332;
  float _333;
  float _442;
  float _443;
  float _444;
  int _124;
  int _128;
  int _133;
  float _140;
  int _141;
  float _146;
  float _147;
  float _148;
  float _150;
  float _151;
  float _152;
  float _154;
  float _155;
  float _156;
  float _158;
  float _159;
  float _160;
  float _162;
  half _169;
  float _208;
  float _210;
  float _214;
  float _220;
  half _230;
  half _231;
  half _232;
  int16_t _236;
  int16_t _238;
  int _240;
  int _257;
  int _259;
  float _267;
  float _269;
  float _290;
  float4 _304;
  float _312;
  half _314;
  float _334;
  float _335;
  float _336;
  float _345;
  uint2 _356;
  float _362;
  float4 _380;
  float _411;
  float _412;
  float _413;
  float _414;
  float _415;
  float _416;
  float _446;
  float _448;
  float _450;
  _15 = WaveReadLaneFirst(_drawIndex);
  _18 = __3__37__0__0__g_indirectDrawParametersBuffer[_15]._vertexBufferViewIndex;
  _20 = __3__37__0__0__g_indirectDrawParametersBuffer[_15]._staticMeshDataViewIndex;
  _22 = __3__37__0__0__g_indirectDrawParametersBuffer[_15]._staticMeshDataIndex;
  _24 = __3__37__0__0__g_indirectDrawParametersBuffer[_15]._baseVertexLocation;
  _28 = (int)(min16uint)(_22);
  _33 = __0__15__0__0__g_staticMeshDataBindless[((int)((uint)((uint)(select(((uint16_t)_20 < (uint16_t)40000u), ((int)(min16uint)(_20)), 0))) + (uint)(0)))][_28]._aabbMin.x;
  _34 = __0__15__0__0__g_staticMeshDataBindless[((int)((uint)((uint)(select(((uint16_t)_20 < (uint16_t)40000u), ((int)(min16uint)(_20)), 0))) + (uint)(0)))][_28]._aabbMin.y;
  _35 = __0__15__0__0__g_staticMeshDataBindless[((int)((uint)((uint)(select(((uint16_t)_20 < (uint16_t)40000u), ((int)(min16uint)(_20)), 0))) + (uint)(0)))][_28]._aabbMin.z;
  _37 = __0__15__0__0__g_staticMeshDataBindless[((int)((uint)((uint)(select(((uint16_t)_20 < (uint16_t)40000u), ((int)(min16uint)(_20)), 0))) + (uint)(0)))][_28]._aabbMax.x;
  _38 = __0__15__0__0__g_staticMeshDataBindless[((int)((uint)((uint)(select(((uint16_t)_20 < (uint16_t)40000u), ((int)(min16uint)(_20)), 0))) + (uint)(0)))][_28]._aabbMax.y;
  _39 = __0__15__0__0__g_staticMeshDataBindless[((int)((uint)((uint)(select(((uint16_t)_20 < (uint16_t)40000u), ((int)(min16uint)(_20)), 0))) + (uint)(0)))][_28]._aabbMax.z;
  _43 = (uint)((uint)(_24)) + (uint)((uint)(SV_VertexID));
  _51 = __0__103__0__0__g_bindlessVertexBuffers[((int)((uint)((uint)(select(((uint16_t)_18 < (uint16_t)50000u), ((int)(min16uint)(_18)), 0))) + (uint)(0)))][_43]._position.x;
  _52 = __0__103__0__0__g_bindlessVertexBuffers[((int)((uint)((uint)(select(((uint16_t)_18 < (uint16_t)50000u), ((int)(min16uint)(_18)), 0))) + (uint)(0)))][_43]._position.y;
  _53 = __0__103__0__0__g_bindlessVertexBuffers[((int)((uint)((uint)(select(((uint16_t)_18 < (uint16_t)50000u), ((int)(min16uint)(_18)), 0))) + (uint)(0)))][_43]._position.z;
  _54 = __0__103__0__0__g_bindlessVertexBuffers[((int)((uint)((uint)(select(((uint16_t)_18 < (uint16_t)50000u), ((int)(min16uint)(_18)), 0))) + (uint)(0)))][_43]._position.w;
  _56 = __0__103__0__0__g_bindlessVertexBuffers[((int)((uint)((uint)(select(((uint16_t)_18 < (uint16_t)50000u), ((int)(min16uint)(_18)), 0))) + (uint)(0)))][_43]._texcoord.x;
  _57 = __0__103__0__0__g_bindlessVertexBuffers[((int)((uint)((uint)(select(((uint16_t)_18 < (uint16_t)50000u), ((int)(min16uint)(_18)), 0))) + (uint)(0)))][_43]._texcoord.y;
  _59 = __0__103__0__0__g_bindlessVertexBuffers[((int)((uint)((uint)(select(((uint16_t)_18 < (uint16_t)50000u), ((int)(min16uint)(_18)), 0))) + (uint)(0)))][_43]._normal;
  _61 = __0__103__0__0__g_bindlessVertexBuffers[((int)((uint)((uint)(select(((uint16_t)_18 < (uint16_t)50000u), ((int)(min16uint)(_18)), 0))) + (uint)(0)))][_43]._color;
  _71 = _33 + ((_37 - _33) * (((float)((uint16_t)(_51))) / 65535.0f));
  _72 = _34 + ((_38 - _34) * (((float)((uint16_t)(_52))) / 65535.0f));
  _73 = _35 + ((_39 - _35) * (((float)((uint16_t)(_53))) / 65535.0f));
  _79 = min(1.0f, (((((float)((uint16_t)((int16_t)(_54 & 1023)))) / 1022.0f) * 2.0f) + -1.0f));
  _85 = min(1.0f, (((((float)((uint)((uint)(_59 & 1023)))) / 1022.0f) * 2.0f) + -1.0f));
  _91 = sqrt(max(0.0f, ((1.0f - (_79 * _79)) - (_85 * _85))));
  _96 = (((float)((uint16_t)((int16_t)(((int)((uint16_t)(_54) >> 10)) & 31)))) * 0.06451613f) + -1.0f;
  _99 = select(((int16_t)_54 > (int16_t)-1), (-0.0f - _91), _91);
  _102 = (uint)((uint)(_61)) >> 16;
  if ((int)BLENDINDICES.y < (int)0) {
    _123 = ((int)(((int)((uint)((uint)(_102)) + (uint)((uint)(BLENDINDICES.x)))) & 65535) | (int)(BLENDINDICES.x & -65536));
  } else {
    _123 = BLENDINDICES.x;
  }
  _124 = BLENDINDICES.y & 2147483647;
  _128 = _123 & 65535;
  _133 = (int)((int)(uint)((int)(_frameNumber.y != 0))) + (int)((uint)((uint)(_123)) >> 16);
  _140 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_133 < (uint)65000), _133, 0))) + (uint)(0))))][_128].worldInstancing[0].w;
  _141 = asint(_140);
  _146 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_133 < (uint)65000), _133, 0))) + (uint)(0))))][_128].worldInstancing[0].x;
  _147 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_133 < (uint)65000), _133, 0))) + (uint)(0))))][_128].worldInstancing[0].y;
  _148 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_133 < (uint)65000), _133, 0))) + (uint)(0))))][_128].worldInstancing[0].z;
  _150 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_133 < (uint)65000), _133, 0))) + (uint)(0))))][_128].worldInstancing[1].x;
  _151 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_133 < (uint)65000), _133, 0))) + (uint)(0))))][_128].worldInstancing[1].y;
  _152 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_133 < (uint)65000), _133, 0))) + (uint)(0))))][_128].worldInstancing[1].z;
  _154 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_133 < (uint)65000), _133, 0))) + (uint)(0))))][_128].worldInstancing[2].x;
  _155 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_133 < (uint)65000), _133, 0))) + (uint)(0))))][_128].worldInstancing[2].y;
  _156 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_133 < (uint)65000), _133, 0))) + (uint)(0))))][_128].worldInstancing[2].z;
  _158 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_133 < (uint)65000), _133, 0))) + (uint)(0))))][_128].worldInstancing[3].x;
  _159 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_133 < (uint)65000), _133, 0))) + (uint)(0))))][_128].worldInstancing[3].y;
  _160 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_133 < (uint)65000), _133, 0))) + (uint)(0))))][_128].worldInstancing[3].z;
  _162 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_133 < (uint)65000), _133, 0))) + (uint)(0))))][_128].worldInstancing[2].w;
  _169 = half(((float)((uint)((uint)(_102 & 255)))) * 0.003921569f);
  _208 = mad(1.0f, 0.0f, mad(_73, _154, mad(_72, _150, (_71 * _146)))) + ((_158 - _viewTileRelativePos.x) + ((float)((int)((int)(((float)((int)((int)((uint)((uint)((int)(_141) >> 16)) - (uint)((uint)(_viewTileIndex.x)))))) * 1000.0f)))));
  _210 = ((_160 - _viewTileRelativePos.z) + ((float)((int)((int)(((float)((int)((int)((uint)((uint)((int)((int)((uint)((uint)(_141)) << 16)) >> 16)) - (uint)((uint)(_viewTileIndex.y)))))) * 1000.0f))))) + mad(1.0f, 0.0f, mad(_73, _156, mad(_72, _152, (_71 * _148))));
  _214 = sqrt((_208 * _208) + (_210 * _210));
  _220 = (((_159 - _viewTileRelativePos.y) + 0.0f) + mad(1.0f, 0.0f, mad(_73, _155, mad(_72, _151, (_71 * _147))))) - ((_214 * _214) / (_earthRadius * 2.0f));
  _230 = half(mad(_99, _154, mad(_85, _150, (_79 * _146))));
  _231 = half(mad(_99, _155, mad(_85, _151, (_79 * _147))));
  _232 = half(mad(_99, _156, mad(_85, _152, (_79 * _148))));
  _236 = __3__37__0__0__g_indirectDrawParametersBuffer[_drawIndex]._staticMeshDataViewIndex;
  _238 = __3__37__0__0__g_indirectDrawParametersBuffer[_drawIndex]._staticMeshDataIndex;
  _240 = select(((uint)_124 < (uint)170000), _124, 0);
  _257 = __0__15__0__0__g_staticMeshDataBindless[((int)((uint)((uint)(select(((uint16_t)_236 < (uint16_t)40000u), ((int)(min16uint)(_236)), 0))) + (uint)(0)))][((int)(min16uint)(_238))]._flag;
  _259 = ((uint)((uint)(_257)) >> 2) & 7;
  _267 = _208 + _viewPos.x;
  _269 = _210 + _viewPos.z;
  _290 = float(_169);
  if (_290 < 0.999f) {
    _304 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)(BindlessParameters_IceParameters[NonUniformResourceIndex(((int)((uint)((uint)(_240)) + (uint)(0))))].BindlessParameters_IceParameters._noiseTexture) < (uint)65000), (BindlessParameters_IceParameters[NonUniformResourceIndex(((int)((uint)((uint)(_240)) + (uint)(0))))].BindlessParameters_IceParameters._noiseTexture), 0))) + (uint)(0)))].SampleLevel(__0__95__0__0__g_samplerAnisotropicWrap, float2((_267 * 0.5f), (_269 * 0.5f)), 0.0f);
    _312 = (1.0f - _290) * ((saturate(_290 * 2.0f) * (_304.x + -1.0f)) + 1.0f);
    _314 = rsqrt((half)(dot(half3(_230, _231, _232), half3(_230, _231, _232))));  // [sem: invLength]
    _331 = ((_304.x * (float(_230 * _314) * _312)) * 0.15f);
    _332 = ((_304.x * (float(_231 * _314) * _312)) * 0.15f);
    _333 = ((_304.x * (float(_232 * _314) * _312)) * 0.15f);
  } else {
    _331 = 0.0f;
    _332 = 0.0f;
    _333 = 0.0f;
  }
  _334 = _208 + _331;
  _335 = _220 + _332;
  _336 = _210 + _333;
  if (!(_259 == 0)) {
    _345 = ((float)((uint)((uint)(_259)))) * 0.14285715f;
    __0__7__0__0__g_bindlessTextures[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_globalExtraRegionTintColorMapSRVIndex < (uint)65000), _globalExtraRegionTintColorMapSRVIndex, 0))) + (uint)(0))))].GetDimensions(_356.x, _356.y);
    _362 = (((float)((int)(_globalTextureOnePixelMeter))) * 0.5f) * ((float)((int)((int)((float)((int)((int)(_356.x)))))));
    _380 = __0__7__0__0__g_bindlessTextures[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_globalExtraRegionTintColorMapSRVIndex < (uint)65000), _globalExtraRegionTintColorMapSRVIndex, 0))) + (uint)(0))))].SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(saturate((((_viewPos.x + _334) / _362) * 0.5f) + 0.5f), (1.0f - saturate((((_viewPos.z + _336) / _362) * 0.5f) + 0.5f))), 0.0f);
    _411 = (select((_380.x <= 0.0031308f), (_380.x * 12.92f), (((pow(_380.x, 0.41666666f)) * 1.055f) + -0.055f)) + -1.0f) * _345;
    _412 = (select((_380.y <= 0.0031308f), (_380.y * 12.92f), (((pow(_380.y, 0.41666666f)) * 1.055f) + -0.055f)) + -1.0f) * _345;
    _413 = (select((_380.z <= 0.0031308f), (_380.z * 12.92f), (((pow(_380.z, 0.41666666f)) * 1.055f) + -0.055f)) + -1.0f) * _345;
    _414 = _411 + 1.0f;
    _415 = _412 + 1.0f;
    _416 = _413 + 1.0f;
    _442 = select((_414 < 0.04045f), (_414 * 0.07739938f), exp2(log2((_411 + 1.055f) * 0.94786733f) * 2.4f));
    _443 = select((_415 < 0.04045f), (_415 * 0.07739938f), exp2(log2((_412 + 1.055f) * 0.94786733f) * 2.4f));
    _444 = select((_416 < 0.04045f), (_416 * 0.07739938f), exp2(log2((_413 + 1.055f) * 0.94786733f) * 2.4f));
  } else {
    _442 = 1.0f;
    _443 = 1.0f;
    _444 = 1.0f;
  }
  _446 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_133 < (uint)65000), _133, 0))) + (uint)(0))))][_128].worldInstancing[0].x;
  _448 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_133 < (uint)65000), _133, 0))) + (uint)(0))))][_128].worldInstancing[0].y;
  _450 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_133 < (uint)65000), _133, 0))) + (uint)(0))))][_128].worldInstancing[0].z;
  SV_Position.x = mad((_viewProjRelative[0].w), 1.0f, mad((_viewProjRelative[0].z), _336, mad((_viewProjRelative[0].y), _335, (_334 * (_viewProjRelative[0].x)))));
  SV_Position.y = mad((_viewProjRelative[1].w), 1.0f, mad((_viewProjRelative[1].z), _336, mad((_viewProjRelative[1].y), _335, (_334 * (_viewProjRelative[1].x)))));
  SV_Position.z = mad((_viewProjRelative[2].w), 1.0f, mad((_viewProjRelative[2].z), _336, mad((_viewProjRelative[2].y), _335, (_334 * (_viewProjRelative[2].x)))));
  SV_Position.w = mad((_viewProjRelative[3].w), 1.0f, mad((_viewProjRelative[3].z), _336, mad((_viewProjRelative[3].y), _335, (_334 * (_viewProjRelative[3].x)))));
  TEXCOORD.x = float(_56);
  TEXCOORD.y = float(_57);
  TEXCOORD.z = sqrt(((_448 * _448) + (_446 * _446)) + (_450 * _450));
  TEXCOORD.w = _96;
  TEXCOORD_1.x = _230;
  TEXCOORD_1.y = _231;
  TEXCOORD_1.z = _232;
  TEXCOORD_1.w = (half)(half(_96));
  TEXCOORD_2.x = 1.0f;
  TEXCOORD_2.y = 0.0f;
  TEXCOORD_2.z = 0.0f;
  TEXCOORD_2.w = 1.0f;
  COLOR.x = _169;
  COLOR.y = (half)(half(((float)((uint)((uint)(((uint)((uint)(_61)) >> 8) & 255)))) * 0.003921569f));
  COLOR.z = (half)(half(((float)((uint)((uint)(_61 & 255)))) * 0.003921569f));
  COLOR.w = (half)(half(((float)((uint)((uint)((uint)((uint)(_61)) >> 24)))) * 0.003921569f));
  TEXCOORD_3.x = (half)(half(_267));
  TEXCOORD_3.y = (half)(half(_220 + _viewPos.y));
  TEXCOORD_3.z = (half)(half(_269));
  TEXCOORD_3.w = 1.0f;
  TEXCOORD_5 = (uint)(_124);
  TEXCOORD_6 = (uint)(_123);
  TEXCOORD_7.x = ((uint)((int)((int)((uint)((uint)((int)min((uint)(_259), (uint)(1)))) << 1)) | (int)(((int)((uint)(1.0f - (BindlessParameters_MaterialOverrideParameters[NonUniformResourceIndex(((int)((uint)((uint)(_240)) + (uint)(0))))].BindlessParameters_MaterialOverrideParameters._terrainBlend)))) & 1)));
  TEXCOORD_7.y = ((uint)((int)((int)((int)(((int)((uint)((uint)(saturate(_443) * 255.0f)) << 8)) & 65280) | (int)(((int)((uint)((uint)(saturate(_442) * 255.0f)) << 16)) & 16711680)) | (int)(((int)((uint)(saturate(_444) * 255.0f))) & 255)) | (int)((int)((uint)((uint)(saturate(1.0f - (((float)((uint)((uint)(((uint)((uint)(asint(_162))) >> 8) & 255)))) * 0.003921569f)) * 255.0f)) << 24))));
  // RenoDX: >>> [Patch: IceNoiseTileRelativeCoords] [Version: 1.16.00]
  // Description: The wrapped ice-noise lookup uses tile-relative world coordinates so large camera positions cannot quantize the UV during motion; unrelated macro-scale ice coordinates remain native.
  float _renodxIceNoiseU = _208 + _viewTileRelativePos.x;
  float _renodxIceNoiseV = _210 + _viewTileRelativePos.z;
  TEXCOORD_10.x = (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)(BindlessParameters_IceParameters[NonUniformResourceIndex(((int)((uint)((uint)(_240)) + (uint)(0))))].BindlessParameters_IceParameters._noiseTexture) < (uint)65000), (BindlessParameters_IceParameters[NonUniformResourceIndex(((int)((uint)((uint)(_240)) + (uint)(0))))].BindlessParameters_IceParameters._noiseTexture), 0))) + (uint)(0)))].SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2((((BindlessParameters_IceParameters[NonUniformResourceIndex(((int)((uint)((uint)(_240)) + (uint)(0))))].BindlessParameters_IceParameters._iceNoiseFrequency) * _renodxIceNoiseU) + (BindlessParameters_IceParameters[NonUniformResourceIndex(((int)((uint)((uint)(_240)) + (uint)(0))))].BindlessParameters_IceParameters._iceNoiseOffset)), (((BindlessParameters_IceParameters[NonUniformResourceIndex(((int)((uint)((uint)(_240)) + (uint)(0))))].BindlessParameters_IceParameters._iceNoiseFrequency) * _renodxIceNoiseV) + (BindlessParameters_IceParameters[NonUniformResourceIndex(((int)((uint)((uint)(_240)) + (uint)(0))))].BindlessParameters_IceParameters._iceNoiseOffset))), 0.0f))).x);
  // RenoDX: <<< [Patch: IceNoiseTileRelativeCoords]
  TEXCOORD_10.y = _290;
  TEXCOORD_10.z = 0.0f;
  TEXCOORD_10.w = 0.0f;
  OutputSignature output_signature = { SV_Position, TEXCOORD, TEXCOORD_1, TEXCOORD_2, COLOR, TEXCOORD_3, TEXCOORD_5, TEXCOORD_6, TEXCOORD_7, TEXCOORD_10 };
  return output_signature;
}
