struct LightDataEncoded {
  float4 _position;
  float4 _color;
  uint2 _up;
  uint2 _look;
  int4 _shadowParam;
};

struct ManyLightsData {
  float4 _position;
  float4 _color;
  uint2 _up;
  uint2 _look;
};

struct anon {
  float4 _lightProfileInfos[4096];
};


StructuredBuffer<LightDataEncoded> __3__37__0__0__g_globalLightDataBuffer : register(t5, space37);

StructuredBuffer<LightDataEncoded> __3__37__0__0__g_lightInjectDataBuffer : register(t13, space37);

RWByteAddressBuffer __3__39__0__1__g_structureCounterBufferUAV : register(u2, space39);

RWStructuredBuffer<ManyLightsData> __3__39__0__1__g_manyLightsDataBufferUAV : register(u12, space39);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b4, space35) {
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

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b21, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};

cbuffer __3__35__0__0__LightProfileConstantBuffer : register(b3, space35) {
  struct {
    float4 _lightProfileInfos[4096];
  } __3__35__0__0__LightProfileConstantBuffer_view : packoffset(c000.x);

  // Raw views preserve dynamic cbufferLoadLegacy.f32/i32 access.
  float4 __3__35__0__0__LightProfileConstantBuffer_raw[4096] : packoffset(c0);
  uint4 __3__35__0__0__LightProfileConstantBuffer_raw_uint[4096] : packoffset(c0);
};

cbuffer __3__1__0__0__GenerateVoxelConstants : register(b0, space1) {
  int4 _srcStartIndex : packoffset(c000.x);
  int4 _dstStartIndex : packoffset(c001.x);
  int4 _customParams : packoffset(c002.x);
  float4 _clearColor : packoffset(c003.x);
  float4 _generateParams : packoffset(c004.x);
  float4 _generateParams2 : packoffset(c005.x);
  column_major float4x4 _viewProjRelativeMainView : packoffset(c006.x);
  uint4 _lightGroupParams : packoffset(c010.x);
  uint _clearVoxelFlag : packoffset(c011.x);
};

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

[numthreads(256, 1, 1)]
void main(
  uint3 SV_DispatchThreadID : SV_DispatchThreadID,
  uint3 SV_GroupID : SV_GroupID,
  uint3 SV_GroupThreadID : SV_GroupThreadID,
  uint SV_GroupIndex : SV_GroupIndex
) {
  uint _33;
  int _93;
  float _94;
  float _95;
  float _96;
  float _97;
  float _98;
  int _99;
  int _100;
  int _101;
  int _102;
  int _103;
  float _104;
  float _105;
  float _131;
  float _132;
  float _151;
  float _168;
  bool _50;
  float _54;
  float _55;
  float _56;
  float _58;
  float _59;
  float _60;
  float _61;
  int _63;
  int _64;
  int _66;
  int _67;
  int _69;
  int _70;
  uint _72;
  float _75;
  float _76;
  float _77;
  float _79;
  float _80;
  float _81;
  float _82;
  int _84;
  int _85;
  int _87;
  int _88;
  int _90;
  int _91;
  float _114;
  float _116;
  float _118;
  int _133;
  float4 _135;
  float _155;
  float _169;
  float _171;
  float _176;
  float _14[4];
  int _15[11];
  _15[0] = ((int)((uint)((uint)(_srcStartIndex.y)) + (uint)((uint)(_srcStartIndex.z))));
  _15[1] = _srcStartIndex.z;
  _15[2] = _srcStartIndex.z;
  _15[3] = -1;
  _15[4] = -1;
  _15[5] = -1;
  _15[6] = 0;
  _15[7] = 0;
  _15[8] = 0;
  _15[9] = 0;
  _15[10] = 0;
  _33 = (uint)(SV_DispatchThreadID.x) << 2;
  if ((uint)_33 < (uint)41) {
    __3__39__0__1__g_structureCounterBufferUAV.Store(_33, asuint((_15[((int)min((uint)((int)(SV_DispatchThreadID.x)), (uint)(10)))])));
  } else {
    if ((uint)_33 < (uint)297) {
      __3__39__0__1__g_structureCounterBufferUAV.Store(_33, asuint(0));
    }
  }
  if ((uint)(int)(SV_DispatchThreadID.x) < (uint)_srcStartIndex.x) {
    _50 = ((uint)(int)(SV_DispatchThreadID.x) < (uint)_srcStartIndex.z);
    [branch]
    if (_50) {
      _54 = __3__37__0__0__g_globalLightDataBuffer[(int)(SV_DispatchThreadID.x)]._position.x;
      _55 = __3__37__0__0__g_globalLightDataBuffer[(int)(SV_DispatchThreadID.x)]._position.y;
      _56 = __3__37__0__0__g_globalLightDataBuffer[(int)(SV_DispatchThreadID.x)]._position.z;
      _58 = __3__37__0__0__g_globalLightDataBuffer[(int)(SV_DispatchThreadID.x)]._color.x;
      _59 = __3__37__0__0__g_globalLightDataBuffer[(int)(SV_DispatchThreadID.x)]._color.y;
      _60 = __3__37__0__0__g_globalLightDataBuffer[(int)(SV_DispatchThreadID.x)]._color.z;
      _61 = __3__37__0__0__g_globalLightDataBuffer[(int)(SV_DispatchThreadID.x)]._color.w;
      _63 = __3__37__0__0__g_globalLightDataBuffer[(int)(SV_DispatchThreadID.x)]._up.x;
      _64 = __3__37__0__0__g_globalLightDataBuffer[(int)(SV_DispatchThreadID.x)]._up.y;
      _66 = __3__37__0__0__g_globalLightDataBuffer[(int)(SV_DispatchThreadID.x)]._look.x;
      _67 = __3__37__0__0__g_globalLightDataBuffer[(int)(SV_DispatchThreadID.x)]._look.y;
      _69 = __3__37__0__0__g_globalLightDataBuffer[(int)(SV_DispatchThreadID.x)]._shadowParam.y;
      _70 = __3__37__0__0__g_globalLightDataBuffer[(int)(SV_DispatchThreadID.x)]._shadowParam.w;
      _93 = _70;
      _94 = _54;
      _95 = _61;
      _96 = _60;
      _97 = _59;
      _98 = _58;
      _99 = _64;
      _100 = _63;
      _101 = _67;
      _102 = _66;
      _103 = _69;
      _104 = _55;
      _105 = _56;
    } else {
      _72 = (uint)(SV_DispatchThreadID.x) - (uint)((uint)(_srcStartIndex.z));
      _75 = __3__37__0__0__g_lightInjectDataBuffer[_72]._position.x;
      _76 = __3__37__0__0__g_lightInjectDataBuffer[_72]._position.y;
      _77 = __3__37__0__0__g_lightInjectDataBuffer[_72]._position.z;
      _79 = __3__37__0__0__g_lightInjectDataBuffer[_72]._color.x;
      _80 = __3__37__0__0__g_lightInjectDataBuffer[_72]._color.y;
      _81 = __3__37__0__0__g_lightInjectDataBuffer[_72]._color.z;
      _82 = __3__37__0__0__g_lightInjectDataBuffer[_72]._color.w;
      _84 = __3__37__0__0__g_lightInjectDataBuffer[_72]._up.x;
      _85 = __3__37__0__0__g_lightInjectDataBuffer[_72]._up.y;
      _87 = __3__37__0__0__g_lightInjectDataBuffer[_72]._look.x;
      _88 = __3__37__0__0__g_lightInjectDataBuffer[_72]._look.y;
      _90 = __3__37__0__0__g_lightInjectDataBuffer[_72]._shadowParam.y;
      _91 = __3__37__0__0__g_lightInjectDataBuffer[_72]._shadowParam.w;
      _93 = _91;
      _94 = _75;
      _95 = _82;
      _96 = _81;
      _97 = _80;
      _98 = _79;
      _99 = _85;
      _100 = _84;
      _101 = _88;
      _102 = _87;
      _103 = _90;
      _104 = _76;
      _105 = _77;
    }
    if ((_96 < 0.0f) || ((_97 < 0.0f) || (_98 < 0.0f))) {
      _114 = _94 - _viewPos.x;
      _116 = _104 - _viewPos.y;
      _118 = _105 - _viewPos.z;
      _131 = dot(float3((_view[0].x), (_view[0].y), (_view[0].z)), float3(_114, _116, _118));
      _132 = dot(float3((_view[1].x), (_view[1].y), (_view[1].z)), float3(_114, _116, _118));
    } else {
      _131 = _94;
      _132 = _104;
    }
    _133 = (int)(_93) >> 1;
    _135 = __3__35__0__0__LightProfileConstantBuffer_raw[((int)((uint)((uint)(_103)) >> 2))];
    _14[0] = _135.x;
    _14[1] = _135.y;
    _14[2] = _135.z;
    _14[3] = _135.w;
    if (!(_103 == -1)) {
      _151 = min(3.1415927f, (_14[(_103 & 3)]));
    } else {
      _151 = 3.1415927f;
    }
    _155 = 1.0f / max(0.0001f, _exposure0.x);
    if (_133 == 1) {
      _168 = min(((saturate(_155 * 0.01f) * 9.9f) + 0.1f), max(0.01f, _155));
    } else {
      _168 = min(max(_155, 0.05f), 150.0f);
    }
    _169 = select(_50, 1e+06f, _95);
    _171 = saturate((float)((uint)((uint)(_133))));  // [sem: expr_sat]
    _176 = select(((_isPhotosensitiveMode_isAllolwBlood & 2) != 0), 0.1f, 1.0f);
    ManyLightsData __struct_store_0;
    __struct_store_0._position = float4(_131, _132, _105, _151);
    __struct_store_0._color = float4((_176 * ((((_168 * _98) - _98) * _171) + _98)), (_176 * ((((_168 * _97) - _97) * _171) + _97)), (_176 * ((((_168 * _96) - _96) * _171) + _96)), select(((_93 & 1) != 0), (-0.0f - _169), _169));
    __struct_store_0._up = int2(_100, _99);
    __struct_store_0._look = int2(_102, _101);
    __3__39__0__1__g_manyLightsDataBufferUAV[(int)(SV_DispatchThreadID.x)] = __struct_store_0;
  }
}
