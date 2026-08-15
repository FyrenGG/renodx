Texture2D<float4> __3__36__0__0__g_inputSceneColor : register(t3, space36);

Texture2D<float> __3__36__0__0__g_sceneDepth : register(t4, space36);

Texture2D<float> __3__36__0__0__g_atmosphericScatteringDepth : register(t5, space36);

Texture2D<float4> __3__36__0__0__g_offScreenParticleAlphaBlend : register(t6, space36);

Texture2D<float2> __3__36__0__0__g_offscreenParticleDepth : register(t8, space36);

Texture2D<float2> __3__36__0__0__g_offscreenParticleDepthQuarter : register(t9, space36);

Texture2D<uint> __3__36__0__0__g_effectTileCoords : register(t11, space36);

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
  uint _30;
  uint _31;
  float _67;
  int _68;
  float _69;
  float _70;
  float _71;
  float _72;
  float _73;
  float _177;
  bool _207;
  bool _237;
  float _238;
  float _239;
  float _240;
  float _241;
  float _46;
  float _47;
  float _55;
  float _56;
  float _57;
  float _77;
  float _85;
  float _86;
  float _87;
  float _94;
  bool _95;
  float _96;
  float _100;
  float _104;
  float _105;
  float _106;
  float _111;
  float _113;
  bool _114;
  float _116;
  float _118;
  int _119;
  float4 _124;
  float4 _129;
  float2 _135;
  float2 _137;
  float2 _140;
  float _178;
  float _187;
  float _188;
  float _189;
  float _190;
  float _208;
  float _209;
  float _210;
  float _211;
  float4 _224;
  float _233;
  float _234;
  float _235;
  int _260;
  int _268;
  int __loop_jump_target = -1;
  // [sem: _3__36__0__0__g_effectTileCoords_load]
  _24 = __3__36__0__0__g_effectTileCoords.Load(int3(((int)((uint)(SV_GroupID.x) % (uint)((uint)(_effectTileDataSize.x)))), ((int)((uint)(SV_GroupID.x) / (uint)((uint)(_effectTileDataSize.x)))), 0));
  _30 = (uint)((uint)((int)((uint)((uint)(_24.x)) >> 16) << 4)) + (uint)(SV_GroupThreadID.x);  // [sem: _3__36__0__0__g_effectTileCoords_load_derived]
  _31 = (uint)((uint)(((int)((uint)((uint)(_24.x)) << 4)) & 1048560)) + (uint)(SV_GroupThreadID.y);  // [sem: _3__36__0__0__g_effectTileCoords_load_derived]
  if ((uint)_renderTargetSize.x > (uint)_30) {
    if ((uint)_renderTargetSize.y > (uint)_31) {
      _46 = _renderTargetSizeInv.x * (((float)((uint)((uint)(_30)))) + 0.5f);
      _47 = _renderTargetSizeInv.y * (((float)((uint)((uint)(_31)))) + 0.5f);
      _55 = _nearFarProj.x / max(1e-07f, ((__3__36__0__0__g_sceneDepth.Sample(__0__4__0__0__g_staticPointClamp, float2(_46, _47))).x));
      _56 = (float)((int)(_renderTargetSize.x));
      _57 = (float)((int)(_renderTargetSize.y));
      _67 = _55;
      _68 = 0;
      _69 = _55;
      _70 = _55;
      _71 = 0.0f;
      _72 = _46;
      _73 = _47;
      while(true) {
        _77 = (((float)((int)((int)(_68) * (int)((int)((int)((int)(_31) % (int)(2)) << 1) + (int)(-1))))) * (2.0f / _57)) + _47;
        _85 = _nearFarProj.x / max(1e-07f, ((__3__36__0__0__g_atmosphericScatteringDepth.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_46, _77), 0.0f)).x));
        _86 = min(_69, _85);
        _87 = max(_70, _85);
        _94 = abs(_85 - _55);
        _95 = (_94 < _67);
        _96 = select(_95, _94, _67);
        _100 = (((float)((int)((int)((int)((int)(_30) % (int)(2)) << 1) + (int)(-1)))) * (2.0f / _56)) + _46;
        _104 = _nearFarProj.x / max(1e-07f, ((__3__36__0__0__g_atmosphericScatteringDepth.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_100, _77), 0.0f)).x));
        _105 = min(_86, _104);
        _106 = max(_87, _104);
        _111 = max(max(_71, select((_87 > 0.0f), ((_87 - _86) / _87), 0.0f)), select((_106 > 0.0f), ((_106 - _105) / _106), 0.0f));
        _113 = abs(_104 - _55);
        _114 = (_113 < _96);
        _116 = select(_114, _100, select(_95, _46, _72));
        _118 = select((_114 || _95), _77, _73);
        _119 = (int)(_68) + (int)(1);
        if (!(_119 == 2)) {
          _67 = select(_114, _113, _96);
          _68 = _119;
          _69 = _105;
          _70 = _106;
          _71 = _111;
          _72 = _116;
          _73 = _118;
          continue;
        }
        // [sem: _3__36__0__0__g_offScreenParticleAlphaBlend_sampleLod]
        _124 = __3__36__0__0__g_offScreenParticleAlphaBlend.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_46, _47), 0.0f);
        // [sem: _3__36__0__0__g_offScreenParticleAlphaBlend_sampleLod]
        _129 = __3__36__0__0__g_offScreenParticleAlphaBlend.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_116, _118), 0.0f);
        // [sem: _3__36__0__0__g_offscreenParticleDepth_sampleLod]
        _135 = __3__36__0__0__g_offscreenParticleDepth.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_46, _47), 0.0f);
        // [sem: _3__36__0__0__g_offscreenParticleDepth_sampleLod]
        _137 = __3__36__0__0__g_offscreenParticleDepth.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_116, _118), 0.0f);
        // [sem: _3__36__0__0__g_offscreenParticleDepthQuarter_sampleLod]
        _140 = __3__36__0__0__g_offscreenParticleDepthQuarter.SampleLevel(__0__4__0__0__g_staticPointClamp, float2(_46, _47), 0.0f);
        if (((_nearFarProj.x * 1e+07f) <= _106) || (_105 < (_nearFarProj.x / max(1e-07f, max((((float2)(__3__36__0__0__g_offscreenParticleDepth.Load(int3(_30, _31, 0)))).x), (((float2)(__3__36__0__0__g_offscreenParticleDepthQuarter.Load(int3(((int)((_56 * 0.5f) * _116)), ((int)((_57 * 0.5f) * _118)), 0)))).x)))))) {
          _177 = (_111 * 100.0f);
        } else {
          _177 = ((exp2(log2(abs(_124.w - _129.w) * _111) * 0.5f) * 4.0f) * saturate((1.0f - _129.w) + saturate(exp2(_106 * -0.014426949f))));
        }
        _178 = saturate(_177);  // [sem: _177_sat]
        _187 = (_178 * (_129.x - _124.x)) + _124.x;
        _188 = (_178 * (_129.y - _124.y)) + _124.y;
        _189 = (_178 * (_129.z - _124.z)) + _124.z;
        _190 = (_178 * (_129.w - _124.w)) + _124.w;
        if ((!(_190 == 1.0f)) || ((!(_189 == 0.0f)) || ((!(_187 == 0.0f)) || (!(_188 == 0.0f))))) {
          _207 = ((!(_129.w == 1.0f)) || ((!(_129.z == 0.0f)) || ((!(_129.x == 0.0f)) || (!(_129.y == 0.0f)))));
        } else {
          _207 = false;
        }
        _208 = select(_207, _187, 0.0f);
        _209 = select(_207, _188, 0.0f);
        _210 = select(_207, _189, 0.0f);
        _211 = select(_207, _190, 1.0f);
        _224 = __3__36__0__0__g_inputSceneColor.Load(int3(_30, _31, 0));  // [sem: _3__36__0__0__g_inputSceneColor_load]
        if (_224.w == 0.0f) {
          _233 = __3__38__0__1__g_sceneColorUAV[int2(_30, _31)].x;
          _234 = __3__38__0__1__g_sceneColorUAV[int2(_30, _31)].y;
          _235 = __3__38__0__1__g_sceneColorUAV[int2(_30, _31)].z;
          _237 = _207;
          _238 = _233;
          _239 = _234;
          _240 = _235;
          _241 = 0.0f;  // [sem: _3__36__0__0__g_inputSceneColor_load_derived]
        } else {
          _237 = true;
          _238 = _224.x;
          _239 = _224.y;
          _240 = _224.z;
          _241 = _224.w;  // [sem: _3__36__0__0__g_inputSceneColor_load_derived]
        }
        __3__38__0__1__g_sceneColorUAV[int2(_30, _31)] = float4(((_238 * _211) + _208), ((_239 * _211) + _209), ((_240 * _211) + _210), (min(_211, saturate(1.0f - (dot(float3(_208, _209, _210), float3(0.212671f, 0.71516f, 0.072169f)) * 0.1f))) * saturate(1.0f - _241)));
        if (_237) {
          _260 = select(((_135.y == 0.0f) && (_140.y == 0.0f)), 0, select((((_135.y == 28.0f) || (_137.y == 28.0f)) || (_140.y == 28.0f)), 28, select(((_135.y == 27.0f) || (_137.y == 27.0f)), 27, 26)));
          if (!((_260 != 26) && ((uint)((int)(_260) + (int)(-27)) > (uint)1))) {
            _268 = __3__38__0__1__g_materialIdUAV[int2(_30, _31)];
            __3__38__0__1__g_materialIdUAV[int2(_30, _31)] = ((int)(_268 & 128) | (int)(_260));
          }
        }
        break;
      }
    }
  }
}
