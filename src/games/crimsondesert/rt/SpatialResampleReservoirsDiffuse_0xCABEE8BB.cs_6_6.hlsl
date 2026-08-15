Texture2D<uint> __3__36__0__0__g_sceneNormal : register(t24, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t79, space36);

Texture2D<uint4> __3__36__0__0__g_diffuseGIReservoirHitGeometry : register(t86, space36);

Texture2D<uint2> __3__36__0__0__g_diffuseGIReservoirRadiance : register(t88, space36);

RWTexture2D<float4> __3__38__0__1__g_raytracingHitResultUAV : register(u43, space38);

RWTexture2D<float> __3__38__0__1__g_raytracingDiffuseRayInversePDFUAV : register(u44, space38);

RWTexture2D<half4> __3__38__0__1__g_diffuseResultUAV : register(u12, space38);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b19, space35) {
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

cbuffer __3__1__0__0__RenderVoxelConstants : register(b0, space1) {
  float4 _renderParams : packoffset(c000.x);
  float4 _renderParams2 : packoffset(c001.x);
  float4 _cubemapViewPosRelative : packoffset(c002.x);
  float4 _lightingParams : packoffset(c003.x);
  float4 _tiledRadianceCacheParams : packoffset(c004.x);
  float _rtaoIntensity : packoffset(c005.x);
};

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
  float _14;
  float _15;
  uint _34;
  uint _42;
  uint _50;
  uint _58;
  uint _66;
  uint _74;
  uint _82;
  uint _90;
  uint _98;
  uint _106;
  uint _114;
  uint _122;
  uint _130;
  uint _138;
  uint _146;
  uint _154;
  int _167;
  int _322;
  float _323;
  float _324;
  float _325;
  float _326;
  float _327;
  float _328;
  int _357;
  float _358;
  float _359;
  float _360;
  float _361;
  int _362;
  float _363;
  float _364;
  int _365;
  int _603;
  float _604;
  float _605;
  float _606;
  float _607;
  int _608;
  float _609;
  float _610;
  uint _175;
  float _191;
  float _192;
  float _193;
  float _195;
  float _196;
  float _197;
  float _198;
  float _202;
  float _205;
  float _206;
  float _242;
  float _243;
  float _244;
  float _245;
  uint4 _257;
  uint2 _262;
  float _276;
  float _277;
  float _278;
  float _280;
  float _284;
  float _285;
  float _286;
  float _288;
  int _289;
  float _291;
  float _292;
  float _293;
  float _295;
  float _302;
  float _305;
  float _313;
  int _316;
  float _330;
  float _334;
  float _338;
  float _339;
  float _340;
  float _346;
  float _347;
  half _352;
  uint _371;
  int _390;
  int _391;
  uint _399;
  float _415;
  float _416;
  float _417;
  float _429;
  float _432;
  float _433;
  float _469;
  float _470;
  float _471;
  float _472;
  float _473;
  uint4 _485;
  uint2 _491;
  float _505;
  float _506;
  float _507;
  float _509;
  float _510;
  float _511;
  float _512;
  float _527;
  float _528;
  float _529;
  float _531;
  float _532;
  float _533;
  float _534;
  float _536;
  int _537;
  float _552;
  float _553;
  float _554;
  float _555;
  float _556;
  float _557;
  float _558;
  float _559;
  float _560;
  float _564;
  float _566;
  float _570;
  float _571;
  float _572;
  float _578;
  float _584;
  float _588;
  uint _589;
  float _593;
  bool _596;
  uint _611;
  int __loop_jump_target = -1;
  _14 = (float)((uint)(SV_DispatchThreadID.x));
  _15 = (float)((uint)(SV_DispatchThreadID.y));
  _34 = (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524)))) + (uint)((uint)((_bufferSizeAndInvSize.x * _15) + _14));
  _42 = (uint)((uint)((((int)((uint)((uint)((uint)(_34)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_34)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_34)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
  _50 = (uint)((uint)((((int)((uint)((uint)((uint)(_42)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_42)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_42)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_34));
  _58 = (uint)((uint)((((int)((uint)((uint)((uint)(_50)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_50)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_50)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_42));
  _66 = (uint)((uint)((((int)((uint)((uint)((uint)(_58)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_58)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_58)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_50));
  _74 = (uint)((uint)((((int)((uint)((uint)((uint)(_66)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_66)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_66)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_58));
  _82 = (uint)((uint)((((int)((uint)((uint)((uint)(_74)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_74)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_74)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_66));
  _90 = (uint)((uint)((((int)((uint)((uint)((uint)(_82)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_82)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_82)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_74));
  _98 = (uint)((uint)((((int)((uint)((uint)((uint)(_90)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_90)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_90)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_82));
  _106 = (uint)((uint)((((int)((uint)((uint)((uint)(_98)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_98)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_98)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_90));
  _114 = (uint)((uint)((((int)((uint)((uint)((uint)(_106)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_106)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_106)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_98));
  _122 = (uint)((uint)((((int)((uint)((uint)((uint)(_114)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_114)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_114)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_106));
  _130 = (uint)((uint)((((int)((uint)((uint)((uint)(_122)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_122)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_122)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_114));
  _138 = (uint)((uint)((((int)((uint)((uint)((uint)(_130)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_130)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_130)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_122));
  _146 = (uint)((uint)((((int)((uint)((uint)((uint)(_138)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_138)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_138)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_130));
  _154 = (uint)((uint)((((int)((uint)((uint)((uint)(_146)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_146)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_146)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_138));
  if ((_146 & 16777215) == 0) {
    _167 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_154)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_154)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_154)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_146))));
  } else {
    _167 = _146;
  }
  _175 = __3__36__0__0__g_sceneNormal.Load(int3((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y), 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
  _191 = min(1.0f, ((((float)((uint)((uint)(_175.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _192 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_175.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _193 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_175.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _195 = rsqrt(dot(float3(_191, _192, _193), float3(_191, _192, _193)));  // [sem: invLength]
  _196 = _195 * _191;
  _197 = _195 * _192;
  _198 = _195 * _193;
  _202 = (((_14 + 0.5f) * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f;
  _205 = 1.0f - ((_bufferSizeAndInvSize.w * 2.0f) * (_15 + 0.5f));
  _206 = max(1e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y), 0)))).x) & 16777215)))) * 5.960465e-08f));
  _242 = mad((_invViewProjRelative[3].z), _206, mad((_invViewProjRelative[3].y), _205, ((_invViewProjRelative[3].x) * _202))) + (_invViewProjRelative[3].w);
  _243 = (mad((_invViewProjRelative[0].z), _206, mad((_invViewProjRelative[0].y), _205, ((_invViewProjRelative[0].x) * _202))) + (_invViewProjRelative[0].w)) / _242;
  _244 = (mad((_invViewProjRelative[1].z), _206, mad((_invViewProjRelative[1].y), _205, ((_invViewProjRelative[1].x) * _202))) + (_invViewProjRelative[1].w)) / _242;
  _245 = (mad((_invViewProjRelative[2].z), _206, mad((_invViewProjRelative[2].y), _205, ((_invViewProjRelative[2].x) * _202))) + (_invViewProjRelative[2].w)) / _242;
  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load]
  _257 = __3__36__0__0__g_diffuseGIReservoirHitGeometry.Load(int3((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y), 0));
  // [sem: _3__36__0__0__g_diffuseGIReservoirRadiance_load]
  _262 = __3__36__0__0__g_diffuseGIReservoirRadiance.Load(int3((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y), 0));
  _276 = min(1.0f, ((((float)((uint)((uint)(((int)((uint)((_196 * 511.0f) + 511.5f))) & 1023)))) * 0.0019569471f) + -1.0f));
  _277 = min(1.0f, ((((float)((uint)((uint)(((int)((uint)((_197 * 511.0f) + 511.5f))) & 1023)))) * 0.0019569471f) + -1.0f));
  _278 = min(1.0f, ((((float)((uint)((uint)(((int)((uint)((_198 * 511.0f) + 511.5f))) & 1023)))) * 0.0019569471f) + -1.0f));
  _280 = rsqrt(dot(float3(_276, _277, _278), float3(_276, _277, _278)));  // [sem: invLength]
  _284 = asfloat(_257.x);  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
  _285 = asfloat(_257.y);  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
  _286 = asfloat(_257.z);  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
  _288 = f16tof32(((uint)((uint)((uint)(_262.x)) >> 16)));  // [sem: _3__36__0__0__g_diffuseGIReservoirRadiance_load_derived]
  _289 = _262.x & 1023;  // [sem: _3__36__0__0__g_diffuseGIReservoirRadiance_load_derived]
  _291 = _284 - _243;
  _292 = _285 - _244;
  _293 = _286 - _245;
  _295 = rsqrt(dot(float3(_291, _292, _293), float3(_291, _292, _293)));  // [sem: invLength]
  _302 = (_288 * 0.31830987f) * max(0.1f, dot(float3((_280 * _276), (_280 * _277), (_280 * _278)), float3((_295 * _291), (_295 * _292), (_295 * _293))));
  _305 = (((float)((uint)((uint)(_289)))) * asfloat(_262.y)) * _302;
  _313 = select((_renderParams.x > 0.0f), 64.0f, 8.0f);
  _316 = (int)max((uint)(8), (uint)(((int)((uint)(16) / (uint)((uint)((int)max((uint)(1), (uint)(_289))))))));
  if (!(_316 == 0)) {
    _357 = _289;
    _358 = _288;
    _359 = _284;
    _360 = _285;
    _361 = _286;
    _362 = ((int)((uint)((uint)(_167)) * (uint)(48271)));
    _363 = _302;
    _364 = _305;
    _365 = 0;
    while(true) {
      _603 = _357;
      _604 = _358;
      _605 = _359;
      _606 = _360;
      _607 = _361;
      _609 = _363;
      _610 = _364;
      _371 = (uint)((uint)(_362)) * (uint)(-1964877855);
      _390 = (int)(min(max(((float)((int)((int)((int)(((((float)((uint)((uint)(((int)((uint)((uint)(_362)) * (uint)(48271))) & 16777215)))) * 1.1920929e-07f) + -1.0f) * _313)) + (int)((int)(SV_DispatchThreadID.x))))), 0.0f), (_bufferSizeAndInvSize.x + -1.0f)));
      _391 = (int)(min(max(((float)((int)((int)((int)(((((float)((uint)((uint)(_371 & 16777215)))) * 1.1920929e-07f) + -1.0f) * _313)) + (int)((int)(SV_DispatchThreadID.y))))), 0.0f), (_bufferSizeAndInvSize.y + -1.0f)));
      _399 = __3__36__0__0__g_sceneNormal.Load(int3(_390, _391, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
      _415 = min(1.0f, ((((float)((uint)((uint)(_399.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _416 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_399.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _417 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_399.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _429 = (((((float)((int)(_390))) + 0.5f) * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f;
      _432 = 1.0f - (((((float)((int)(_391))) + 0.5f) * 2.0f) * _bufferSizeAndInvSize.w);
      _433 = max(1e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(_390, _391, 0)))).x) & 16777215)))) * 5.960465e-08f));
      _469 = mad((_invViewProjRelative[3].z), _433, mad((_invViewProjRelative[3].y), _432, (_429 * (_invViewProjRelative[3].x)))) + (_invViewProjRelative[3].w);
      _470 = (mad((_invViewProjRelative[0].z), _433, mad((_invViewProjRelative[0].y), _432, (_429 * (_invViewProjRelative[0].x)))) + (_invViewProjRelative[0].w)) / _469;
      _471 = (mad((_invViewProjRelative[1].z), _433, mad((_invViewProjRelative[1].y), _432, (_429 * (_invViewProjRelative[1].x)))) + (_invViewProjRelative[1].w)) / _469;
      _472 = (mad((_invViewProjRelative[2].z), _433, mad((_invViewProjRelative[2].y), _432, (_429 * (_invViewProjRelative[2].x)))) + (_invViewProjRelative[2].w)) / _469;
      _473 = rsqrt(dot(float3(_415, _416, _417), float3(_415, _416, _417))) * 511.0f;
      _485 = __3__36__0__0__g_diffuseGIReservoirHitGeometry.Load(int3(_390, _391, 0));  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load]
      _491 = __3__36__0__0__g_diffuseGIReservoirRadiance.Load(int3(_390, _391, 0));  // [sem: _3__36__0__0__g_diffuseGIReservoirRadiance_load]
      _505 = min(1.0f, ((((float)((uint)((uint)(((int)((uint)((_473 * _415) + 511.5f))) & 1023)))) * 0.0019569471f) + -1.0f));
      _506 = min(1.0f, ((((float)((uint)((uint)(((int)((uint)((_473 * _416) + 511.5f))) & 1023)))) * 0.0019569471f) + -1.0f));
      _507 = min(1.0f, ((((float)((uint)((uint)(((int)((uint)((_473 * _417) + 511.5f))) & 1023)))) * 0.0019569471f) + -1.0f));
      _509 = rsqrt(dot(float3(_505, _506, _507), float3(_505, _506, _507)));  // [sem: invLength]
      _510 = asfloat(_485.x);  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
      _511 = asfloat(_485.y);  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
      _512 = asfloat(_485.z);  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
      _527 = min(1.0f, ((((float)((uint)((uint)(_485.w & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
      _528 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_485.w)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
      _529 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_485.w)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
      _531 = rsqrt(dot(float3(_527, _528, _529), float3(_527, _528, _529)));  // [sem: invLength]
      _532 = _531 * _527;
      _533 = _531 * _528;
      _534 = _531 * _529;
      _536 = f16tof32(((uint)((uint)((uint)(_491.x)) >> 16)));  // [sem: _3__36__0__0__g_diffuseGIReservoirRadiance_load_derived]
      _537 = _491.x & 1023;  // [sem: _3__36__0__0__g_diffuseGIReservoirRadiance_load_derived]
      if (!(abs(dot(float3(_196, _197, _198), float3((_470 - _243), (_471 - _244), (_472 - _245)))) > max(0.5f, (_nearFarProj.x / _206)))) {
        if (!(dot(float3(_196, _197, _198), float3((_509 * _505), (_509 * _506), (_509 * _507))) < 0.0f)) {
          _552 = _510 - _470;
          _553 = _511 - _471;
          _554 = _512 - _472;
          _555 = _510 - _243;
          _556 = _511 - _244;
          _557 = _512 - _245;
          _558 = dot(float3(_555, _556, _557), float3(_555, _556, _557));
          _559 = dot(float3(_552, _553, _554), float3(_552, _553, _554));
          _560 = rsqrt(_559);  // [sem: rsqrt_val]
          _564 = rsqrt(_558);  // [sem: rsqrt_val]
          _566 = _558 * dot(float3((_560 * _552), (_560 * _553), (_560 * _554)), float3(_532, _533, _534));
          if (!(_566 >= -0.0f)) {
            _570 = _564 * _555;
            _571 = _564 * _556;
            _572 = _564 * _557;
            _578 = min(max(((-0.0f - (_559 * dot(float3(_570, _571, _572), float3(_532, _533, _534)))) / (-0.0f - _566)), 0.0f), 1.0f);
            if (!(_578 <= 0.0f)) {
              _584 = (_536 * 0.31830987f) * max(0.1f, dot(float3(_196, _197, _198), float3(_570, _571, _572)));
              _588 = ((((float)((uint)((uint)(_537)))) * asfloat(_491.y)) * _578) * _584;
              _589 = (uint)((uint)(_362)) * (uint)(-856141137);
              _593 = _588 + _364;
              _596 = (((((float)((uint)((uint)(_589 & 16777215)))) * 5.9604645e-08f) * _593) <= _588);
              _603 = ((int)((uint)((uint)(_537)) + (uint)((uint)(_357))));
              _604 = select(_596, _536, _358);
              _605 = select(_596, _510, _359);
              _606 = select(_596, _511, _360);
              _607 = select(_596, _512, _361);
              _608 = _589;
              _609 = select(_596, _584, _363);
              _610 = _593;
            } else {
              _603 = _357;
              _604 = _358;
              _605 = _359;
              _606 = _360;
              _607 = _361;
              _608 = _371;
              _609 = _363;
              _610 = _364;
            }
          } else {
            _603 = _357;
            _604 = _358;
            _605 = _359;
            _606 = _360;
            _607 = _361;
            _608 = _371;
            _609 = _363;
            _610 = _364;
          }
        } else {
          _603 = _357;
          _604 = _358;
          _605 = _359;
          _606 = _360;
          _607 = _361;
          _608 = _371;
          _609 = _363;
          _610 = _364;
        }
      } else {
        _603 = _357;
        _604 = _358;
        _605 = _359;
        _606 = _360;
        _607 = _361;
        _608 = _371;
        _609 = _363;
        _610 = _364;
      }
      _611 = (uint)((uint)(_365)) + (uint)(1);
      if (!(_611 == _316)) {
        _357 = _603;
        _358 = _604;
        _359 = _605;
        _360 = _606;
        _361 = _607;
        _362 = _608;
        _363 = _609;
        _364 = _610;
        _365 = _611;
        continue;
      }
      while(true) {
        _322 = _603;
        _323 = _604;
        _324 = _605;
        _325 = _606;
        _326 = _607;
        _327 = _609;
        _328 = _610;
        break;
      }
      break;
    }
  } else {
    _322 = _289;
    _323 = _288;
    _324 = _284;
    _325 = _285;
    _326 = _286;
    _327 = _302;
    _328 = _305;
  }
  _330 = _327 * ((float)((uint)((uint)(_322))));
  _334 = saturate(select((_330 == 0.0f), 0.0f, (_328 / _330)));  // [sem: expr_sat]
  _338 = _324 - _243;
  _339 = _325 - _244;
  _340 = _326 - _245;
  _346 = sqrt(((_339 * _339) + (_338 * _338)) + (_340 * _340));
  _347 = max(1e-06f, _346);
  _352 = -0.0h - (half)(half(min(0.0f, (-0.0f - (_323 * _334)))));
  __3__38__0__1__g_diffuseResultUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float4(_352, _352, _352, 0.0f);
  __3__38__0__1__g_raytracingHitResultUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float4((_338 / _347), (_339 / _347), (_340 / _347), _346);
  __3__38__0__1__g_raytracingDiffuseRayInversePDFUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = _334;
}
