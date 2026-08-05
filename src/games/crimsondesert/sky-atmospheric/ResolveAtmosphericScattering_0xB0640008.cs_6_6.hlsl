Texture2D<float4> __3__36__0__0__g_texSkyInscatter : register(t37, space36);

Texture2D<float4> __3__36__0__0__g_texSkyExtinction : register(t38, space36);

RWTexture2D<float4> __3__38__0__1__g_resultUAV : register(u0, space38);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b2, space35) {
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
  float _13;
  float _17;
  float4 _20;
  float4 _25;
  float _31;
  float _32;
  float _33;
  float _34;
  _13 = _bufferSizeAndInvSize.z * (((float)((uint)(SV_DispatchThreadID.x))) + 0.5f);
  _17 = _bufferSizeAndInvSize.w * (((float)((uint)(SV_DispatchThreadID.y))) + 0.5f);
  _20 = __3__36__0__0__g_texSkyInscatter.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_13, _17), 0.0f);  // [sem: _3__36__0__0__g_texSkyInscatter_sampleLod]
  _25 = __3__36__0__0__g_texSkyExtinction.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_13, _17), 0.0f);  // [sem: _3__36__0__0__g_texSkyExtinction_sampleLod]
  _31 = __3__38__0__1__g_resultUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))].x;
  _32 = __3__38__0__1__g_resultUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))].y;
  _33 = __3__38__0__1__g_resultUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))].z;
  _34 = __3__38__0__1__g_resultUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))].w;
  __3__38__0__1__g_resultUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float4(((_31 * _25.x) + _20.x), ((_32 * _25.y) + _20.y), ((_33 * _25.z) + _20.z), _34);
}
