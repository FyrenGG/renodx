Texture2D<uint> __3__36__0__0__g_effectTileCoords : register(t28, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t29, space36);

Texture2D<float4> __3__36__0__0__textureDistortionOffsetHalf : register(t30, space36);

Texture2D<float4> __3__36__0__0__textureDistortionOffsetQuarter : register(t31, space36);

RWTexture2D<float4> __3__38__0__1__g_sceneColorUAV : register(u8, space38);

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

cbuffer __3__1__0__0__EffectDistortionPushConstants : register(b0, space1) {
  int2 _renderTargetSize : packoffset(c000.x);
  float2 _renderTargetSizeInv : packoffset(c000.z);
  int2 _effectTileDataSize : packoffset(c001.x);
  float2 _effectTileDataSizeInv : packoffset(c001.z);
  int _isRenderEffectDistortionHalf : packoffset(c002.x);
  int _isRenderEffectDistortionQuarter : packoffset(c002.y);
  float _distortionIntensityScale : packoffset(c002.z);
};

SamplerState __3__40__0__0__g_distortionSampler : register(s8, space40);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

[numthreads(16, 16, 1)]
void main(
  uint3 SV_DispatchThreadID : SV_DispatchThreadID,
  uint3 SV_GroupID : SV_GroupID,
  uint3 SV_GroupThreadID : SV_GroupThreadID,
  uint SV_GroupIndex : SV_GroupIndex
) {
  uint _19;
  uint _30;
  uint _40;
  float _91;
  float _92;
  float _137;
  float _138;
  int _52;
  int _53;
  int _61;
  int _68;
  float4 _70;
  float4 _73;
  float4 _76;
  float4 _79;
  int _96;
  int _97;
  int _105;
  int _112;
  float4 _114;
  float4 _117;
  float4 _120;
  float4 _123;
  float _139;
  float _140;
  float _145;
  float _150;
  float4 _164;
  // [sem: _3__36__0__0__g_effectTileCoords_load]
  _19 = __3__36__0__0__g_effectTileCoords.Load(int3(((int)((uint)(SV_GroupID.x) % (uint)((uint)(_effectTileDataSize.x)))), ((int)((uint)(SV_GroupID.x) / (uint)((uint)(_effectTileDataSize.x)))), 0));
  // [sem: _3__36__0__0__g_effectTileCoords_load_derived]
  _30 = (uint)((uint)(((float)((uint)((uint)((uint)(_renderTargetSize.x)) * (uint)((uint)((uint)((uint)(_19.x)) >> 16))))) * _effectTileDataSizeInv.x)) + (uint)(SV_GroupThreadID.x);
  // [sem: _3__36__0__0__g_effectTileCoords_load_derived]
  _40 = (uint)((uint)(((float)((uint)((uint)((uint)(_renderTargetSize.y)) * (uint)((uint)(_19.x & 65535))))) * _effectTileDataSizeInv.y)) + (uint)(SV_GroupThreadID.y);
  if (((uint)_renderTargetSize.x > (uint)_30) && ((uint)_renderTargetSize.y > (uint)_40)) {
    if (!(_isRenderEffectDistortionHalf == 0)) {
      _52 = (uint)((uint)(_30)) >> 1;
      _53 = (uint)((uint)(_40)) >> 1;
      _61 = (int)min((uint)(((int)((int)((int)(_screenSizeAndInvSize.x)) >> 1) + (int)(-1))), (uint)(((uint)((uint)((uint)(_30)) + (uint)(1)) >> 1)));
      _68 = (int)min((uint)(((int)((int)((int)(_screenSizeAndInvSize.y)) >> 1) + (int)(-1))), (uint)(((uint)((uint)((uint)(_40)) + (uint)(1)) >> 1)));
      _70 = __3__36__0__0__textureDistortionOffsetHalf.Load(int3(_52, _53, 0));  // [sem: _3__36__0__0__textureDistortionOffsetHalf_load]
      _73 = __3__36__0__0__textureDistortionOffsetHalf.Load(int3(_61, _53, 0));  // [sem: _3__36__0__0__textureDistortionOffsetHalf_load]
      _76 = __3__36__0__0__textureDistortionOffsetHalf.Load(int3(_52, _68, 0));  // [sem: _3__36__0__0__textureDistortionOffsetHalf_load]
      _79 = __3__36__0__0__textureDistortionOffsetHalf.Load(int3(_61, _68, 0));  // [sem: _3__36__0__0__textureDistortionOffsetHalf_load]
      _91 = ((((_73.x + _70.x) + _76.x) + _79.x) * 0.25f);
      _92 = ((((_73.y + _70.y) + _76.y) + _79.y) * 0.25f);
    } else {
      _91 = 0.0f;
      _92 = 0.0f;
    }
    if (!(_isRenderEffectDistortionQuarter == 0)) {
      _96 = (uint)((uint)(_30)) >> 2;
      _97 = (uint)((uint)(_40)) >> 2;
      _105 = (int)min((uint)(((int)((int)((int)(_screenSizeAndInvSize.x)) >> 2) + (int)(-1))), (uint)(((uint)((uint)((uint)(_30)) + (uint)(2)) >> 2)));
      _112 = (int)min((uint)(((int)((int)((int)(_screenSizeAndInvSize.y)) >> 2) + (int)(-1))), (uint)(((uint)((uint)((uint)(_40)) + (uint)(2)) >> 2)));
      _114 = __3__36__0__0__textureDistortionOffsetQuarter.Load(int3(_96, _97, 0));  // [sem: _3__36__0__0__textureDistortionOffsetQuarter_load]
      _117 = __3__36__0__0__textureDistortionOffsetQuarter.Load(int3(_105, _97, 0));  // [sem: _3__36__0__0__textureDistortionOffsetQuarter_load]
      _120 = __3__36__0__0__textureDistortionOffsetQuarter.Load(int3(_96, _112, 0));  // [sem: _3__36__0__0__textureDistortionOffsetQuarter_load]
      _123 = __3__36__0__0__textureDistortionOffsetQuarter.Load(int3(_105, _112, 0));  // [sem: _3__36__0__0__textureDistortionOffsetQuarter_load]
      _137 = (((((_117.x + _114.x) + _120.x) + _123.x) * 0.25f) + _91);
      _138 = (((((_117.y + _114.y) + _120.y) + _123.y) * 0.25f) + _92);
    } else {
      _137 = _91;
      _138 = _92;
    }
    _139 = _137 * 10.0f;
    _140 = _138 * 10.0f;
    _145 = saturate(sqrt((_140 * _140) + (_139 * _139)));  // [sem: expr_sat]
    if (!(_145 < 0.0001f)) {
      _150 = _distortionIntensityScale * 0.1f;
      // [sem: _3__36__0__0__g_sceneColor_sample]
      _164 = __3__36__0__0__g_sceneColor.Sample(__3__40__0__0__g_distortionSampler, float2(((_150 * _137) + (_renderTargetSizeInv.x * ((float)((uint)((uint)(_30)))))), ((_renderTargetSizeInv.y * ((float)((uint)((uint)(_40))))) + (_150 * _138))));
      __3__38__0__1__g_sceneColorUAV[int2(_30, _40)] = float4(_164.x, _164.y, _164.z, _145);
    }
  }
}
