Texture2D<uint> __3__36__0__0__g_effectTileCoords : register(t30, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t31, space36);

Texture2D<float4> __3__36__0__0__textureDistortionOffsetHalf : register(t32, space36);

Texture2D<float4> __3__36__0__0__textureDistortionOffsetQuarter : register(t33, space36);

RWTexture2D<float4> __3__38__0__1__g_sceneColorUAV : register(u8, space38);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b5, space35) {
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
  uint _37;
  uint _38;
  float _96;
  float _97;
  float _142;
  float _143;
  int _57;
  int _58;
  int _72;
  int _73;
  float4 _75;
  float4 _78;
  float4 _81;
  float4 _84;
  int _101;
  int _102;
  int _116;
  int _117;
  float4 _119;
  float4 _122;
  float4 _125;
  float4 _128;
  float _144;
  float _145;
  float _150;
  float _155;
  float4 _162;
  // [sem: _3__36__0__0__g_effectTileCoords_load]
  _19 = __3__36__0__0__g_effectTileCoords.Load(int3(((int)((uint)(SV_GroupID.x) % (uint)((uint)(_effectTileDataSize.x)))), ((int)((uint)(SV_GroupID.x) / (uint)((uint)(_effectTileDataSize.x)))), 0));
  // [sem: _3__36__0__0__g_effectTileCoords_load_derived]
  _37 = (uint)((uint)(((float)((uint)((uint)((uint)(_renderTargetSize.x)) * (uint)((uint)((uint)((uint)(_19.x)) >> 16))))) * _effectTileDataSizeInv.x)) + (uint)(SV_GroupThreadID.x);
  // [sem: _3__36__0__0__g_effectTileCoords_load_derived]
  _38 = (uint)((uint)(((float)((uint)((uint)((uint)(_19.x & 65535)) * (uint)((uint)(_renderTargetSize.y))))) * _effectTileDataSizeInv.y)) + (uint)(SV_GroupThreadID.y);
  if (((uint)_renderTargetSize.x > (uint)_37) && ((uint)_renderTargetSize.y > (uint)_38)) {
    if (!(_isRenderEffectDistortionHalf == 0)) {
      _57 = (uint)((uint)(_37)) >> 1;
      _58 = (uint)((uint)(_38)) >> 1;
      _72 = (int)min((uint)(((int)((int)((int)(_screenSizeAndInvSize.x)) >> 1) + (int)(-1))), (uint)(((uint)((uint)((uint)(_37)) + (uint)(1)) >> 1)));
      _73 = (int)min((uint)(((int)((int)((int)(_screenSizeAndInvSize.y)) >> 1) + (int)(-1))), (uint)(((uint)((uint)((uint)(_38)) + (uint)(1)) >> 1)));
      _75 = __3__36__0__0__textureDistortionOffsetHalf.Load(int3(_57, _58, 0));  // [sem: _3__36__0__0__textureDistortionOffsetHalf_load]
      _78 = __3__36__0__0__textureDistortionOffsetHalf.Load(int3(_72, _58, 0));  // [sem: _3__36__0__0__textureDistortionOffsetHalf_load]
      _81 = __3__36__0__0__textureDistortionOffsetHalf.Load(int3(_57, _73, 0));  // [sem: _3__36__0__0__textureDistortionOffsetHalf_load]
      _84 = __3__36__0__0__textureDistortionOffsetHalf.Load(int3(_72, _73, 0));  // [sem: _3__36__0__0__textureDistortionOffsetHalf_load]
      _96 = ((((_78.x + _75.x) + _81.x) + _84.x) * 0.25f);
      _97 = ((((_78.y + _75.y) + _81.y) + _84.y) * 0.25f);
    } else {
      _96 = 0.0f;
      _97 = 0.0f;
    }
    if (!(_isRenderEffectDistortionQuarter == 0)) {
      _101 = (uint)((uint)(_37)) >> 2;
      _102 = (uint)((uint)(_38)) >> 2;
      _116 = (int)min((uint)(((int)((int)((int)(_screenSizeAndInvSize.x)) >> 2) + (int)(-1))), (uint)(((uint)((uint)((uint)(_37)) + (uint)(2)) >> 2)));
      _117 = (int)min((uint)(((int)((int)((int)(_screenSizeAndInvSize.y)) >> 2) + (int)(-1))), (uint)(((uint)((uint)((uint)(_38)) + (uint)(2)) >> 2)));
      _119 = __3__36__0__0__textureDistortionOffsetQuarter.Load(int3(_101, _102, 0));  // [sem: _3__36__0__0__textureDistortionOffsetQuarter_load]
      _122 = __3__36__0__0__textureDistortionOffsetQuarter.Load(int3(_116, _102, 0));  // [sem: _3__36__0__0__textureDistortionOffsetQuarter_load]
      _125 = __3__36__0__0__textureDistortionOffsetQuarter.Load(int3(_101, _117, 0));  // [sem: _3__36__0__0__textureDistortionOffsetQuarter_load]
      _128 = __3__36__0__0__textureDistortionOffsetQuarter.Load(int3(_116, _117, 0));  // [sem: _3__36__0__0__textureDistortionOffsetQuarter_load]
      _142 = (((((_122.x + _119.x) + _125.x) + _128.x) * 0.25f) + _96);
      _143 = (((((_122.y + _119.y) + _125.y) + _128.y) * 0.25f) + _97);
    } else {
      _142 = _96;
      _143 = _97;
    }
    _144 = _142 * 10.0f;
    _145 = _143 * 10.0f;
    _150 = saturate(sqrt((_145 * _145) + (_144 * _144)));  // [sem: expr_sat]
    if (!(_150 < 0.0001f)) {
      _155 = _distortionIntensityScale * 0.1f;
      // [sem: _3__36__0__0__g_sceneColor_sample]
      _162 = __3__36__0__0__g_sceneColor.Sample(__3__40__0__0__g_distortionSampler, float2(((_155 * _142) + (_renderTargetSizeInv.x * ((float)((uint)((uint)(_37)))))), ((_155 * _143) + (_renderTargetSizeInv.y * ((float)((uint)((uint)(_38))))))));
      __3__38__0__1__g_sceneColorUAV[int2(_37, _38)] = float4(_162.x, _162.y, _162.z, _150);
    }
  }
}
