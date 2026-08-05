Texture2D<float4> __3__36__0__0__g_inputSceneColor : register(t2, space36);

Texture2D<float> __3__36__0__0__g_sceneDepth : register(t3, space36);

Texture2D<float> __3__36__0__0__g_atmosphericScatteringDepth : register(t4, space36);

Texture2D<float4> __3__36__0__0__g_offScreenParticleAlphaBlend : register(t5, space36);

Texture2D<float2> __3__36__0__0__g_offscreenParticleDepth : register(t10, space36);

Texture2D<float2> __3__36__0__0__g_offscreenParticleDepthQuarter : register(t11, space36);

Texture2D<uint> __3__36__0__0__g_effectTileCoords : register(t7, space36);

RWTexture2D<float4> __3__38__0__1__g_sceneColorUAV : register(u0, space38);

RWTexture2D<uint> __3__38__0__1__g_materialIdUAV : register(u10, space38);

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

cbuffer __3__1__0__0__EffectOffScreenParticleConstants : register(b0, space1) {
  int2 _effectTileDataSize : packoffset(c000.x);
  float2 _effectTileDataSizeInv : packoffset(c000.z);
  int2 _renderTargetSize : packoffset(c001.x);
  float2 _renderTargetSizeInv : packoffset(c001.z);
  int2 _inputTextureSizeForTileData : packoffset(c002.x);
  int _isRenderedOffscreenParticlesHalf : packoffset(c002.z);
  int _isRenderedOffscreenParticlesQuarter : packoffset(c002.w);
  float _compositeAlphaRangeMax : packoffset(c003.x);
};

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

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
  uint _24;
  uint _28;
  uint _31;
  float _59;
  float _60;
  float _61;
  float _62;
  float _63;
  int _64;
  float _65;
  float _178;
  bool _209;
  bool _228;
  float _229;
  float _230;
  float _231;
  float _232;
  float _43;
  float _47;
  float _55;
  float _56;
  float _57;
  float _73;
  float _81;
  float _82;
  float _83;
  float _85;
  bool _86;
  float _87;
  float _94;
  float _98;
  float _99;
  float _100;
  float _110;
  float _112;
  bool _113;
  float _115;
  float _117;
  int _118;
  float _121;
  float4 _125;
  float4 _130;
  float2 _136;
  float2 _138;
  float2 _141;
  float _179;
  float _182;
  float _185;
  float _188;
  float _191;
  float _210;
  float _211;
  float _212;
  float _213;
  float4 _215;
  float _224;
  float _225;
  float _226;
  int _262;
  int _270;
  int __loop_jump_target = -1;
  // [sem: _3__36__0__0__g_effectTileCoords_load]
  _24 = __3__36__0__0__g_effectTileCoords.Load(int3(((int)((uint)(SV_GroupID.x) % (uint)((uint)(_effectTileDataSize.x)))), ((int)((uint)(SV_GroupID.x) / (uint)((uint)(_effectTileDataSize.x)))), 0));
  _28 = (uint)((uint)((int)((uint)((uint)(_24.x)) >> 16) << 4)) + (uint)(SV_GroupThreadID.x);  // [sem: _3__36__0__0__g_effectTileCoords_load_derived]
  _31 = (uint)((uint)(((int)((uint)((uint)(_24.x)) << 4)) & 1048560)) + (uint)(SV_GroupThreadID.y);  // [sem: _3__36__0__0__g_effectTileCoords_load_derived]
  if ((uint)_renderTargetSize.x > (uint)_28) {
    if ((uint)_renderTargetSize.y > (uint)_31) {
      _43 = _renderTargetSizeInv.x * (((float)((uint)((uint)(_28)))) + 0.5f);
      _47 = _renderTargetSizeInv.y * (((float)((uint)((uint)(_31)))) + 0.5f);
      _55 = _nearFarProj.x / max(1e-07f, ((__3__36__0__0__g_sceneDepth.Sample(__0__4__0__0__g_staticPointClamp, float2(_43, _47))).x));
      _56 = (float)((int)(_renderTargetSize.x));
      _57 = (float)((int)(_renderTargetSize.y));
      _59 = _47;
      _60 = _43;
      _61 = 0.0f;
      _62 = _55;
      _63 = _55;
      _64 = 0;
      _65 = _55;
      while(true) {
        _73 = (((float)((int)((int)((int)((int)((int)(_31) % (int)(2)) << 1) + (int)(-1)) * (int)(_64)))) * (2.0f / _57)) + _47;
        _81 = _nearFarProj.x / max(1e-07f, ((__3__36__0__0__g_atmosphericScatteringDepth.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_43, _73), 0.0f)).x));
        _82 = min(_63, _81);
        _83 = max(_62, _81);
        _85 = abs(_81 - _55);
        _86 = (_85 < _65);
        _87 = select(_86, _85, _65);
        _94 = (((float)((int)((int)((int)((int)(_28) % (int)(2)) << 1) + (int)(-1)))) * (2.0f / _56)) + _43;
        _98 = _nearFarProj.x / max(1e-07f, ((__3__36__0__0__g_atmosphericScatteringDepth.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_94, _73), 0.0f)).x));
        _99 = min(_82, _98);
        _100 = max(_83, _98);
        _110 = max(max(_61, select((_83 > 0.0f), ((_83 - _82) / _83), 0.0f)), select((_100 > 0.0f), ((_100 - _99) / _100), 0.0f));
        _112 = abs(_98 - _55);
        _113 = (_112 < _87);
        _115 = select(_113, _94, select(_86, _43, _60));
        _117 = select((_86 || _113), _73, _59);
        _118 = (int)(_64) + (int)(1);
        if (!(_118 == 2)) {
          _121 = select(_113, _112, _87);
          _59 = _117;
          _60 = _115;
          _61 = _110;
          _62 = _100;
          _63 = _99;
          _64 = _118;
          _65 = _121;
          continue;
        }
        // [sem: _3__36__0__0__g_offScreenParticleAlphaBlend_sampleLod]
        _125 = __3__36__0__0__g_offScreenParticleAlphaBlend.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_43, _47), 0.0f);
        // [sem: _3__36__0__0__g_offScreenParticleAlphaBlend_sampleLod]
        _130 = __3__36__0__0__g_offScreenParticleAlphaBlend.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_115, _117), 0.0f);
        // [sem: _3__36__0__0__g_offscreenParticleDepth_sampleLod]
        _136 = __3__36__0__0__g_offscreenParticleDepth.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_43, _47), 0.0f);
        // [sem: _3__36__0__0__g_offscreenParticleDepth_sampleLod]
        _138 = __3__36__0__0__g_offscreenParticleDepth.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_115, _117), 0.0f);
        // [sem: _3__36__0__0__g_offscreenParticleDepthQuarter_sampleLod]
        _141 = __3__36__0__0__g_offscreenParticleDepthQuarter.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_43, _47), 0.0f);
        if (!(!((_nearFarProj.x * 1e+07f) <= _100)) || ((!((_nearFarProj.x * 1e+07f) <= _100)) && (_99 < (_nearFarProj.x / max(1e-07f, max((((float2)(__3__36__0__0__g_offscreenParticleDepth.Load(int3(_28, _31, 0)))).x), (((float2)(__3__36__0__0__g_offscreenParticleDepthQuarter.Load(int3(((int)((_56 * 0.5f) * _115)), ((int)((_57 * 0.5f) * _117)), 0)))).x))))))) {
          _178 = (_110 * 100.0f);
        } else {
          _178 = ((exp2(log2(abs(_125.w - _130.w) * _110) * 0.5f) * 4.0f) * saturate((1.0f - _130.w) + saturate(exp2(_100 * -0.014426949f))));
        }
        _179 = saturate(_178);  // [sem: _178_sat]
        _182 = (_179 * (_130.x - _125.x)) + _125.x;
        _185 = (_179 * (_130.y - _125.y)) + _125.y;
        _188 = (_179 * (_130.z - _125.z)) + _125.z;
        _191 = (_179 * (_130.w - _125.w)) + _125.w;
        if (!((_185 == 0.0f) && ((_182 == 0.0f) && ((_191 == 1.0f) && (_188 == 0.0f))))) {
          _209 = ((!(_130.y == 0.0f)) || (!((_130.x == 0.0f) && ((_130.w == 1.0f) && (_130.z == 0.0f)))));
        } else {
          _209 = false;
        }
        _210 = select(_209, _182, 0.0f);
        _211 = select(_209, _185, 0.0f);
        _212 = select(_209, _188, 0.0f);
        _213 = select(_209, _191, 1.0f);
        _215 = __3__36__0__0__g_inputSceneColor.Load(int3(_28, _31, 0));  // [sem: _3__36__0__0__g_inputSceneColor_load]
        if (_215.w == 0.0f) {
          _224 = __3__38__0__1__g_sceneColorUAV[int2(_28, _31)].x;
          _225 = __3__38__0__1__g_sceneColorUAV[int2(_28, _31)].y;
          _226 = __3__38__0__1__g_sceneColorUAV[int2(_28, _31)].z;
          _228 = _209;
          _229 = _224;
          _230 = _225;
          _231 = _226;
          _232 = 0.0f;  // [sem: _3__36__0__0__g_inputSceneColor_load_derived]
        } else {
          _228 = true;
          _229 = _215.x;
          _230 = _215.y;
          _231 = _215.z;
          _232 = _215.w;  // [sem: _3__36__0__0__g_inputSceneColor_load_derived]
        }
        __3__38__0__1__g_sceneColorUAV[int2(_28, _31)] = float4(((_229 * _213) + _210), ((_230 * _213) + _211), ((_231 * _213) + _212), (saturate(1.0f - _232) * min(_213, saturate(1.0f - (dot(float3(_210, _211, _212), float3(0.212671f, 0.71516f, 0.072169f)) * 0.1f)))));
        if (_228) {
          _262 = select(((_136.y == 0.0f) && (_141.y == 0.0f)), 0, select((((_136.y == 28.0f) || (_138.y == 28.0f)) || (_141.y == 28.0f)), 28, select(((_136.y == 27.0f) || (_138.y == 27.0f)), 27, 26)));
          if (!((_262 != 26) && ((uint)((int)(_262) + (int)(-27)) > (uint)1))) {
            _270 = __3__38__0__1__g_materialIdUAV[int2(_28, _31)];
            __3__38__0__1__g_materialIdUAV[int2(_28, _31)] = ((int)(_270 & 128) | (int)(_262));
          }
        }
        break;
      }
    }
  }
}
