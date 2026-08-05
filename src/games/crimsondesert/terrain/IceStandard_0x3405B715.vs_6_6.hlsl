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

struct BindlessParameters_IceParameters {
  IceParametersStruct BindlessParameters_IceParameters;
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

struct BindlessParameters_MaterialOverrideParameters {
  MaterialOverrideParametersStruct BindlessParameters_MaterialOverrideParameters;
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

typedef BindlessParameters_MaterialOverrideParameters BindlessParameters_MaterialOverrideParameters_t;
ConstantBuffer<BindlessParameters_MaterialOverrideParameters_t> BindlessParameters_MaterialOverrideParameters[] : register(b0, space101);

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
  int _25;
  float _33;
  float _34;
  float _35;
  float _37;
  float _38;
  float _39;
  uint _40;
  int16_t _48;
  int16_t _49;
  int16_t _50;
  int16_t _51;
  half _53;
  half _54;
  int _56;
  int _58;
  float _63;
  float _68;
  float _73;
  float _79;
  float _85;
  float _91;
  float _96;
  float _99;
  int _100;
  int _108;
  float _286;
  float _287;
  float _288;
  float _397;
  float _398;
  float _399;
  int _109;
  int _110;
  int _116;
  float _123;
  int _124;
  float _126;
  float _128;
  float _130;
  float _132;
  float _134;
  float _136;
  float _138;
  float _140;
  float _142;
  float _144;
  float _146;
  float _148;
  float _150;
  half _154;
  float _171;
  float _187;
  float _191;
  float _205;
  half _209;
  half _213;
  half _217;
  int16_t _222;
  int16_t _224;
  int _226;
  int _235;
  int _237;
  float _240;
  float _242;
  float _243;
  float4 _259;
  float _267;
  half _269;
  float _289;
  float _290;
  float _291;
  float _295;
  uint2 _303;
  float _312;
  float4 _335;
  float _348;
  float _358;
  float _368;
  float _369;
  float _370;
  float _371;
  float _402;
  float _404;
  float _406;
  _15 = WaveReadLaneFirst(_drawIndex);
  _18 = __3__37__0__0__g_indirectDrawParametersBuffer[_15]._vertexBufferViewIndex;
  _20 = __3__37__0__0__g_indirectDrawParametersBuffer[_15]._staticMeshDataViewIndex;
  _22 = __3__37__0__0__g_indirectDrawParametersBuffer[_15]._staticMeshDataIndex;
  _24 = __3__37__0__0__g_indirectDrawParametersBuffer[_15]._baseVertexLocation;
  _25 = (int)(min16uint)(_22);
  _33 = __0__15__0__0__g_staticMeshDataBindless[((int)((uint)((uint)(select(((uint16_t)_20 < (uint16_t)40000u), ((int)(min16uint)(_20)), 0))) + (uint)(0)))][_25]._aabbMin.x;
  _34 = __0__15__0__0__g_staticMeshDataBindless[((int)((uint)((uint)(select(((uint16_t)_20 < (uint16_t)40000u), ((int)(min16uint)(_20)), 0))) + (uint)(0)))][_25]._aabbMin.y;
  _35 = __0__15__0__0__g_staticMeshDataBindless[((int)((uint)((uint)(select(((uint16_t)_20 < (uint16_t)40000u), ((int)(min16uint)(_20)), 0))) + (uint)(0)))][_25]._aabbMin.z;
  _37 = __0__15__0__0__g_staticMeshDataBindless[((int)((uint)((uint)(select(((uint16_t)_20 < (uint16_t)40000u), ((int)(min16uint)(_20)), 0))) + (uint)(0)))][_25]._aabbMax.x;
  _38 = __0__15__0__0__g_staticMeshDataBindless[((int)((uint)((uint)(select(((uint16_t)_20 < (uint16_t)40000u), ((int)(min16uint)(_20)), 0))) + (uint)(0)))][_25]._aabbMax.y;
  _39 = __0__15__0__0__g_staticMeshDataBindless[((int)((uint)((uint)(select(((uint16_t)_20 < (uint16_t)40000u), ((int)(min16uint)(_20)), 0))) + (uint)(0)))][_25]._aabbMax.z;
  _40 = (uint)((uint)(_24)) + (uint)((uint)(SV_VertexID));
  _48 = __0__103__0__0__g_bindlessVertexBuffers[((int)((uint)((uint)(select(((uint16_t)_18 < (uint16_t)50000u), ((int)(min16uint)(_18)), 0))) + (uint)(0)))][_40]._position.x;
  _49 = __0__103__0__0__g_bindlessVertexBuffers[((int)((uint)((uint)(select(((uint16_t)_18 < (uint16_t)50000u), ((int)(min16uint)(_18)), 0))) + (uint)(0)))][_40]._position.y;
  _50 = __0__103__0__0__g_bindlessVertexBuffers[((int)((uint)((uint)(select(((uint16_t)_18 < (uint16_t)50000u), ((int)(min16uint)(_18)), 0))) + (uint)(0)))][_40]._position.z;
  _51 = __0__103__0__0__g_bindlessVertexBuffers[((int)((uint)((uint)(select(((uint16_t)_18 < (uint16_t)50000u), ((int)(min16uint)(_18)), 0))) + (uint)(0)))][_40]._position.w;
  _53 = __0__103__0__0__g_bindlessVertexBuffers[((int)((uint)((uint)(select(((uint16_t)_18 < (uint16_t)50000u), ((int)(min16uint)(_18)), 0))) + (uint)(0)))][_40]._texcoord.x;
  _54 = __0__103__0__0__g_bindlessVertexBuffers[((int)((uint)((uint)(select(((uint16_t)_18 < (uint16_t)50000u), ((int)(min16uint)(_18)), 0))) + (uint)(0)))][_40]._texcoord.y;
  _56 = __0__103__0__0__g_bindlessVertexBuffers[((int)((uint)((uint)(select(((uint16_t)_18 < (uint16_t)50000u), ((int)(min16uint)(_18)), 0))) + (uint)(0)))][_40]._normal;
  _58 = __0__103__0__0__g_bindlessVertexBuffers[((int)((uint)((uint)(select(((uint16_t)_18 < (uint16_t)50000u), ((int)(min16uint)(_18)), 0))) + (uint)(0)))][_40]._color;
  _63 = _33 + ((_37 - _33) * (((float)((uint16_t)(_48))) / 65535.0f));
  _68 = _34 + ((_38 - _34) * (((float)((uint16_t)(_49))) / 65535.0f));
  _73 = _35 + ((_39 - _35) * (((float)((uint16_t)(_50))) / 65535.0f));
  _79 = min(1.0f, (((((float)((uint16_t)((int16_t)(_51 & 1023)))) / 1022.0f) * 2.0f) + -1.0f));
  _85 = min(1.0f, (((((float)((uint)((uint)(_56 & 1023)))) / 1022.0f) * 2.0f) + -1.0f));
  _91 = sqrt(max(0.0f, ((1.0f - (_79 * _79)) - (_85 * _85))));
  _96 = (((float)((uint16_t)((int16_t)(((int)((uint16_t)(_51) >> 10)) & 31)))) * 0.06451613f) + -1.0f;
  _99 = select(((int16_t)_51 > (int16_t)-1), (-0.0f - _91), _91);
  _100 = (uint)((uint)(_58)) >> 16;
  if ((int)BLENDINDICES.y < (int)0) {
    _108 = ((int)(((int)((uint)((uint)(_100)) + (uint)((uint)(BLENDINDICES.x)))) & 65535) | (int)(BLENDINDICES.x & -65536));
  } else {
    _108 = BLENDINDICES.x;
  }
  _109 = BLENDINDICES.y & 2147483647;
  _110 = _108 & 65535;
  _116 = (int)((int)(uint)((int)(_frameNumber.y != 0))) + (int)((uint)((uint)(_108)) >> 16);
  _123 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_116 < (uint)65000), _116, 0))) + (uint)(0))))][_110].worldInstancing[0].w;
  _124 = asint(_123);
  _126 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_116 < (uint)65000), _116, 0))) + (uint)(0))))][_110].worldInstancing[0].x;
  _128 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_116 < (uint)65000), _116, 0))) + (uint)(0))))][_110].worldInstancing[0].y;
  _130 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_116 < (uint)65000), _116, 0))) + (uint)(0))))][_110].worldInstancing[0].z;
  _132 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_116 < (uint)65000), _116, 0))) + (uint)(0))))][_110].worldInstancing[1].x;
  _134 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_116 < (uint)65000), _116, 0))) + (uint)(0))))][_110].worldInstancing[1].y;
  _136 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_116 < (uint)65000), _116, 0))) + (uint)(0))))][_110].worldInstancing[1].z;
  _138 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_116 < (uint)65000), _116, 0))) + (uint)(0))))][_110].worldInstancing[2].x;
  _140 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_116 < (uint)65000), _116, 0))) + (uint)(0))))][_110].worldInstancing[2].y;
  _142 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_116 < (uint)65000), _116, 0))) + (uint)(0))))][_110].worldInstancing[2].z;
  _144 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_116 < (uint)65000), _116, 0))) + (uint)(0))))][_110].worldInstancing[3].x;
  _146 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_116 < (uint)65000), _116, 0))) + (uint)(0))))][_110].worldInstancing[3].y;
  _148 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_116 < (uint)65000), _116, 0))) + (uint)(0))))][_110].worldInstancing[3].z;
  _150 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_116 < (uint)65000), _116, 0))) + (uint)(0))))][_110].worldInstancing[2].w;
  _154 = half(((float)((uint)((uint)(_100 & 255)))) * 0.003921569f);
  _171 = mad(1.0f, 0.0f, mad(_73, _138, mad(_68, _132, (_63 * _126)))) + ((_144 - _viewTileRelativePos.x) + ((float)((int)((int)(((float)((int)((int)((uint)((uint)((int)(_124) >> 16)) - (uint)((uint)(_viewTileIndex.x)))))) * 1000.0f)))));
  _187 = mad(1.0f, 0.0f, mad(_73, _142, mad(_68, _136, (_63 * _130)))) + ((_148 - _viewTileRelativePos.z) + ((float)((int)((int)(((float)((int)((int)((uint)((uint)((int)((int)((uint)((uint)(_124)) << 16)) >> 16)) - (uint)((uint)(_viewTileIndex.y)))))) * 1000.0f)))));
  _191 = sqrt((_171 * _171) + (_187 * _187));
  _205 = (((_146 - _viewTileRelativePos.y) + 0.0f) + mad(1.0f, 0.0f, mad(_73, _140, mad(_68, _134, (_63 * _128))))) - ((_191 * _191) / (_earthRadius * 2.0f));
  _209 = half(mad(_99, _138, mad(_85, _132, (_79 * _126))));
  _213 = half(mad(_99, _140, mad(_85, _134, (_79 * _128))));
  _217 = half(mad(_99, _142, mad(_85, _136, (_79 * _130))));
  _222 = __3__37__0__0__g_indirectDrawParametersBuffer[_drawIndex]._staticMeshDataViewIndex;
  _224 = __3__37__0__0__g_indirectDrawParametersBuffer[_drawIndex]._staticMeshDataIndex;
  _226 = select(((uint)_109 < (uint)170000), _109, 0);
  _235 = __0__15__0__0__g_staticMeshDataBindless[((int)((uint)((uint)(select(((uint16_t)_222 < (uint16_t)40000u), ((int)(min16uint)(_222)), 0))) + (uint)(0)))][((int)(min16uint)(_224))]._flag;
  _237 = ((uint)((uint)(_235)) >> 2) & 7;
  _240 = _171 + _viewPos.x;
  _242 = _187 + _viewPos.z;
  _243 = float(_154);
  if (_243 < 0.999f) {
    _259 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)(BindlessParameters_IceParameters[NonUniformResourceIndex(((int)((uint)((uint)(_226)) + (uint)(0))))].BindlessParameters_IceParameters._noiseTexture) < (uint)65000), (BindlessParameters_IceParameters[NonUniformResourceIndex(((int)((uint)((uint)(_226)) + (uint)(0))))].BindlessParameters_IceParameters._noiseTexture), 0))) + (uint)(0)))].SampleLevel(__0__95__0__0__g_samplerAnisotropicWrap, float2((_240 * 0.5f), (_242 * 0.5f)), 0.0f);
    _267 = (1.0f - _243) * ((saturate(_243 * 2.0f) * (_259.x + -1.0f)) + 1.0f);
    _269 = rsqrt((half)(dot(half3(_209, _213, _217), half3(_209, _213, _217))));  // [sem: invLength]
    _286 = ((_259.x * (float(_209 * _269) * _267)) * 0.15f);
    _287 = ((_259.x * (float(_213 * _269) * _267)) * 0.15f);
    _288 = ((_259.x * (float(_217 * _269) * _267)) * 0.15f);
  } else {
    _286 = 0.0f;
    _287 = 0.0f;
    _288 = 0.0f;
  }
  _289 = _171 + _286;
  _290 = _205 + _287;
  _291 = _187 + _288;
  if (!(_237 == 0)) {
    _295 = ((float)((uint)((uint)(_237)))) * 0.14285715f;
    __0__7__0__0__g_bindlessTextures[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_globalExtraRegionTintColorMapSRVIndex < (uint)65000), _globalExtraRegionTintColorMapSRVIndex, 0))) + (uint)(0))))].GetDimensions(_303.x, _303.y);
    _312 = (((float)((int)(_globalTextureOnePixelMeter))) * 0.5f) * ((float)((int)((int)((float)((int)((int)(_303.x)))))));
    _335 = __0__7__0__0__g_bindlessTextures[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_globalExtraRegionTintColorMapSRVIndex < (uint)65000), _globalExtraRegionTintColorMapSRVIndex, 0))) + (uint)(0))))].SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(saturate((((_viewPos.x + _289) / _312) * 0.5f) + 0.5f), (1.0f - saturate((((_viewPos.z + _291) / _312) * 0.5f) + 0.5f))), 0.0f);
    _348 = (select((_335.x <= 0.0031308f), (_335.x * 12.92f), (((pow(_335.x, 0.41666666f)) * 1.055f) + -0.055f)) + -1.0f) * _295;
    _358 = (select((_335.y <= 0.0031308f), (_335.y * 12.92f), (((pow(_335.y, 0.41666666f)) * 1.055f) + -0.055f)) + -1.0f) * _295;
    _368 = (select((_335.z <= 0.0031308f), (_335.z * 12.92f), (((pow(_335.z, 0.41666666f)) * 1.055f) + -0.055f)) + -1.0f) * _295;
    _369 = _348 + 1.0f;
    _370 = _358 + 1.0f;
    _371 = _368 + 1.0f;
    _397 = select((_369 < 0.04045f), (_369 * 0.07739938f), exp2(log2((_348 + 1.055f) * 0.94786733f) * 2.4f));
    _398 = select((_370 < 0.04045f), (_370 * 0.07739938f), exp2(log2((_358 + 1.055f) * 0.94786733f) * 2.4f));
    _399 = select((_371 < 0.04045f), (_371 * 0.07739938f), exp2(log2((_368 + 1.055f) * 0.94786733f) * 2.4f));
  } else {
    _397 = 1.0f;
    _398 = 1.0f;
    _399 = 1.0f;
  }
  _402 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_116 < (uint)65000), _116, 0))) + (uint)(0))))][_110].worldInstancing[0].x;
  _404 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_116 < (uint)65000), _116, 0))) + (uint)(0))))][_110].worldInstancing[0].y;
  _406 = __0__9__0__0__g_instanceDataBuffer[NonUniformResourceIndex(((int)((uint)((uint)(select(((uint)_116 < (uint)65000), _116, 0))) + (uint)(0))))][_110].worldInstancing[0].z;
  SV_Position.x = mad((_viewProjRelative[0].w), 1.0f, mad((_viewProjRelative[0].z), _291, mad((_viewProjRelative[0].y), _290, (_289 * (_viewProjRelative[0].x)))));
  SV_Position.y = mad((_viewProjRelative[1].w), 1.0f, mad((_viewProjRelative[1].z), _291, mad((_viewProjRelative[1].y), _290, (_289 * (_viewProjRelative[1].x)))));
  SV_Position.z = mad((_viewProjRelative[2].w), 1.0f, mad((_viewProjRelative[2].z), _291, mad((_viewProjRelative[2].y), _290, (_289 * (_viewProjRelative[2].x)))));
  SV_Position.w = mad((_viewProjRelative[3].w), 1.0f, mad((_viewProjRelative[3].z), _291, mad((_viewProjRelative[3].y), _290, (_289 * (_viewProjRelative[3].x)))));
  TEXCOORD.x = float(_53);
  TEXCOORD.y = float(_54);
  TEXCOORD.z = sqrt(((_404 * _404) + (_402 * _402)) + (_406 * _406));
  TEXCOORD.w = _96;
  TEXCOORD_1.x = _209;
  TEXCOORD_1.y = _213;
  TEXCOORD_1.z = _217;
  TEXCOORD_1.w = (half)(half(_96));
  TEXCOORD_2.x = 1.0f;
  TEXCOORD_2.y = 0.0f;
  TEXCOORD_2.z = 0.0f;
  TEXCOORD_2.w = 1.0f;
  COLOR.x = _154;
  COLOR.y = (half)(half(((float)((uint)((uint)(((uint)((uint)(_58)) >> 8) & 255)))) * 0.003921569f));
  COLOR.z = (half)(half(((float)((uint)((uint)(_58 & 255)))) * 0.003921569f));
  COLOR.w = (half)(half(((float)((uint)((uint)((uint)((uint)(_58)) >> 24)))) * 0.003921569f));
  TEXCOORD_3.x = (half)(half(_240));
  TEXCOORD_3.y = (half)(half(_viewPos.y + _205));
  TEXCOORD_3.z = (half)(half(_242));
  TEXCOORD_3.w = 1.0f;
  TEXCOORD_5 = (uint)(_109);
  TEXCOORD_6 = (uint)(_108);
  TEXCOORD_7.x = ((uint)((int)(((int)((uint)(1.0f - (BindlessParameters_MaterialOverrideParameters[NonUniformResourceIndex(((int)((uint)((uint)(_226)) + (uint)(0))))].BindlessParameters_MaterialOverrideParameters._terrainBlend)))) & 1) | (int)((int)((uint)((uint)((int)min((uint)(_237), (uint)(1)))) << 1))));
  TEXCOORD_7.y = ((uint)((int)((int)((int)(((int)((uint)((uint)(saturate(_397) * 255.0f)) << 16)) & 16711680) | (int)(((int)((uint)((uint)(saturate(_398) * 255.0f)) << 8)) & 65280)) | (int)(((int)((uint)(saturate(_399) * 255.0f))) & 255)) | (int)((int)((uint)((uint)(saturate(1.0f - (((float)((uint)((uint)(((uint)((uint)(asint(_150))) >> 8) & 255)))) * 0.003921569f)) * 255.0f)) << 24))));
  // RenoDX: >>> [Patch: IceNoiseTileRelativeCoords] [Version: 1.16.00]
  // Description: The wrapped ice-noise lookup uses tile-relative world coordinates so large camera positions cannot quantize the UV during motion; unrelated macro-scale ice coordinates remain native.
  float _renodxIceNoiseU = _171 + _viewTileRelativePos.x;
  float _renodxIceNoiseV = _187 + _viewTileRelativePos.z;
  TEXCOORD_10.x = (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)(BindlessParameters_IceParameters[NonUniformResourceIndex(((int)((uint)((uint)(_226)) + (uint)(0))))].BindlessParameters_IceParameters._noiseTexture) < (uint)65000), (BindlessParameters_IceParameters[NonUniformResourceIndex(((int)((uint)((uint)(_226)) + (uint)(0))))].BindlessParameters_IceParameters._noiseTexture), 0))) + (uint)(0)))].SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2((((BindlessParameters_IceParameters[NonUniformResourceIndex(((int)((uint)((uint)(_226)) + (uint)(0))))].BindlessParameters_IceParameters._iceNoiseFrequency) * _renodxIceNoiseU) + (BindlessParameters_IceParameters[NonUniformResourceIndex(((int)((uint)((uint)(_226)) + (uint)(0))))].BindlessParameters_IceParameters._iceNoiseOffset)), (((BindlessParameters_IceParameters[NonUniformResourceIndex(((int)((uint)((uint)(_226)) + (uint)(0))))].BindlessParameters_IceParameters._iceNoiseFrequency) * _renodxIceNoiseV) + (BindlessParameters_IceParameters[NonUniformResourceIndex(((int)((uint)((uint)(_226)) + (uint)(0))))].BindlessParameters_IceParameters._iceNoiseOffset))), 0.0f))).x);
  // RenoDX: <<< [Patch: IceNoiseTileRelativeCoords]
  TEXCOORD_10.y = _243;
  TEXCOORD_10.z = 0.0f;
  TEXCOORD_10.w = 0.0f;
  OutputSignature output_signature = { SV_Position, TEXCOORD, TEXCOORD_1, TEXCOORD_2, COLOR, TEXCOORD_3, TEXCOORD_5, TEXCOORD_6, TEXCOORD_7, TEXCOORD_10 };
  return output_signature;
}
