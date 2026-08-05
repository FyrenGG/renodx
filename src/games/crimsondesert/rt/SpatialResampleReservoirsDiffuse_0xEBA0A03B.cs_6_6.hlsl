Texture2D<uint> __3__36__0__0__g_sceneNormal : register(t50, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t63, space36);

Texture2D<uint4> __3__36__0__0__g_diffuseGIReservoirHitGeometry : register(t71, space36);

Texture2D<uint2> __3__36__0__0__g_diffuseGIReservoirRadiance : register(t73, space36);

RWTexture2D<float4> __3__38__0__1__g_raytracingHitResultUAV : register(u39, space38);

RWTexture2D<float> __3__38__0__1__g_raytracingDiffuseRayInversePDFUAV : register(u44, space38);

RWTexture2D<half4> __3__38__0__1__g_diffuseResultUAV : register(u11, space38);

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
  uint _30;
  uint _38;
  uint _46;
  uint _54;
  uint _62;
  uint _70;
  uint _78;
  uint _86;
  uint _94;
  uint _102;
  uint _110;
  uint _118;
  uint _126;
  uint _134;
  uint _142;
  uint _150;
  int _163;
  int _316;
  float _317;
  float _318;
  float _319;
  float _320;
  int _321;
  float _322;
  float _323;
  int _324;
  int _568;
  float _569;
  float _570;
  float _571;
  float _572;
  int _573;
  float _574;
  float _575;
  float _580;
  float _581;
  float _582;
  float _583;
  int _584;
  float _585;
  float _586;
  uint _165;
  float _171;
  float _177;
  float _183;
  float _185;
  float _186;
  float _187;
  float _188;
  float _193;
  float _198;
  float _205;
  float _217;
  float _226;
  float _235;
  float _244;
  uint4 _246;
  uint2 _251;
  float _261;
  float _269;
  float _277;
  float _279;
  float _280;
  float _281;
  float _282;
  float _284;
  int _285;
  float _286;
  float _287;
  float _288;
  float _290;
  float _300;
  float _304;
  float _308;
  int _311;
  uint _325;
  int _340;
  int _353;
  uint _355;
  float _361;
  float _367;
  float _373;
  float _379;
  float _385;
  float _392;
  float _404;
  float _413;
  float _422;
  float _431;
  float _434;
  uint4 _436;
  uint2 _442;
  float _452;
  float _460;
  float _468;
  float _470;
  float _471;
  float _472;
  float _473;
  float _478;
  float _484;
  float _490;
  float _492;
  float _493;
  float _494;
  float _495;
  float _497;
  int _498;
  float _516;
  float _517;
  float _518;
  float _519;
  float _520;
  float _521;
  float _522;
  float _523;
  float _524;
  float _525;
  float _530;
  float _533;
  float _534;
  float _535;
  float _542;
  float _548;
  float _553;
  uint _554;
  float _555;
  bool _560;
  uint _576;
  float _588;
  float _592;
  float _593;
  float _594;
  float _595;
  float _601;
  float _602;
  half _607;
  int __loop_jump_target = -1;
  _14 = (float)((uint)(SV_DispatchThreadID.x));
  _15 = (float)((uint)(SV_DispatchThreadID.y));
  _30 = (uint)((uint)((_bufferSizeAndInvSize.x * _15) + _14)) + (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524))));
  _38 = (uint)((uint)((((int)((uint)((uint)((uint)(_30)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_30)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_30)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
  _46 = (uint)((uint)((((int)((uint)((uint)((uint)(_38)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_38)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_38)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_30));
  _54 = (uint)((uint)((((int)((uint)((uint)((uint)(_46)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_46)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_46)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_38));
  _62 = (uint)((uint)((((int)((uint)((uint)((uint)(_54)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_54)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_54)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_46));
  _70 = (uint)((uint)((((int)((uint)((uint)((uint)(_62)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_62)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_62)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_54));
  _78 = (uint)((uint)((((int)((uint)((uint)((uint)(_70)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_70)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_70)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_62));
  _86 = (uint)((uint)((((int)((uint)((uint)((uint)(_78)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_78)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_78)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_70));
  _94 = (uint)((uint)((((int)((uint)((uint)((uint)(_86)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_86)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_86)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_78));
  _102 = (uint)((uint)((((int)((uint)((uint)((uint)(_94)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_94)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_94)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_86));
  _110 = (uint)((uint)((((int)((uint)((uint)((uint)(_102)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_102)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_102)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_94));
  _118 = (uint)((uint)((((int)((uint)((uint)((uint)(_110)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_110)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_110)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_102));
  _126 = (uint)((uint)((((int)((uint)((uint)((uint)(_118)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_118)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_118)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_110));
  _134 = (uint)((uint)((((int)((uint)((uint)((uint)(_126)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_126)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_126)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_118));
  _142 = (uint)((uint)((((int)((uint)((uint)((uint)(_134)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_134)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_134)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_126));
  _150 = (uint)((uint)((((int)((uint)((uint)((uint)(_142)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_142)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_142)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_134));
  if ((_142 & 16777215) == 0) {
    _163 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_150)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_150)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_150)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_142))));
  } else {
    _163 = _142;
  }
  _165 = __3__36__0__0__g_sceneNormal.Load(int3((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y), 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
  _171 = min(1.0f, ((((float)((uint)((uint)(_165.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _177 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_165.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _183 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_165.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _185 = rsqrt(dot(float3(_171, _177, _183), float3(_171, _177, _183)));  // [sem: invLength]
  _186 = _185 * _171;
  _187 = _185 * _177;
  _188 = _185 * _183;
  _193 = (((_14 + 0.5f) * 2.0f) * _bufferSizeAndInvSize.z) + -1.0f;
  _198 = 1.0f - (((_15 + 0.5f) * 2.0f) * _bufferSizeAndInvSize.w);
  _205 = max(1e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y), 0)))).x) & 16777215)))) * 5.960465e-08f));
  _217 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _205, mad((_invViewProjRelative[3].y), _198, ((_invViewProjRelative[3].x) * _193)));
  _226 = (mad((_invViewProjRelative[0].z), _205, mad((_invViewProjRelative[0].y), _198, ((_invViewProjRelative[0].x) * _193))) + (_invViewProjRelative[0].w)) / _217;
  _235 = (mad((_invViewProjRelative[1].z), _205, mad((_invViewProjRelative[1].y), _198, ((_invViewProjRelative[1].x) * _193))) + (_invViewProjRelative[1].w)) / _217;
  _244 = (mad((_invViewProjRelative[2].z), _205, mad((_invViewProjRelative[2].y), _198, ((_invViewProjRelative[2].x) * _193))) + (_invViewProjRelative[2].w)) / _217;
  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load]
  _246 = __3__36__0__0__g_diffuseGIReservoirHitGeometry.Load(int3((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y), 0));
  // [sem: _3__36__0__0__g_diffuseGIReservoirRadiance_load]
  _251 = __3__36__0__0__g_diffuseGIReservoirRadiance.Load(int3((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y), 0));
  _261 = min(1.0f, ((((float)((uint)((uint)(((int)((uint)((_186 * 511.0f) + 511.5f))) & 1023)))) * 0.0019569471f) + -1.0f));
  _269 = min(1.0f, ((((float)((uint)((uint)(((int)((uint)((_187 * 511.0f) + 511.5f))) & 1023)))) * 0.0019569471f) + -1.0f));
  _277 = min(1.0f, ((((float)((uint)((uint)(((int)((uint)((_188 * 511.0f) + 511.5f))) & 1023)))) * 0.0019569471f) + -1.0f));
  _279 = rsqrt(dot(float3(_261, _269, _277), float3(_261, _269, _277)));  // [sem: invLength]
  _280 = asfloat(_246.x);  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
  _281 = asfloat(_246.y);  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
  _282 = asfloat(_246.z);  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
  _284 = f16tof32(((uint)((uint)((uint)(_251.x)) >> 16)));  // [sem: _3__36__0__0__g_diffuseGIReservoirRadiance_load_derived]
  _285 = _251.x & 1023;  // [sem: _3__36__0__0__g_diffuseGIReservoirRadiance_load_derived]
  _286 = _280 - _226;
  _287 = _281 - _235;
  _288 = _282 - _244;
  _290 = rsqrt(dot(float3(_286, _287, _288), float3(_286, _287, _288)));  // [sem: invLength]
  _300 = (_284 * 0.31830987f) * max(0.1f, dot(float3((_279 * _261), (_279 * _269), (_279 * _277)), float3((_290 * _286), (_290 * _287), (_290 * _288))));
  _304 = (((float)((uint)((uint)(_285)))) * asfloat(_251.y)) * _300;
  _308 = select((_renderParams.x > 0.0f), 64.0f, 8.0f);
  _311 = (int)max((uint)(8), (uint)(((int)((uint)(16) / (uint)((uint)((int)max((uint)(1), (uint)(_285))))))));
  if (!(_311 == 0)) {
    _316 = _285;
    _317 = _284;
    _318 = _280;
    _319 = _281;
    _320 = _282;
    _321 = ((int)((uint)((uint)(_163)) * (uint)(48271)));
    _322 = _300;
    _323 = _304;
    _324 = 0;
    while(true) {
      _568 = _316;
      _569 = _317;
      _570 = _318;
      _571 = _319;
      _572 = _320;
      _574 = _322;
      _575 = _323;
      _325 = (uint)((uint)(_321)) * (uint)(-1964877855);
      _340 = (int)(min(max(((float)((int)((int)((int)(((((float)((uint)((uint)(((int)((uint)((uint)(_321)) * (uint)(48271))) & 16777215)))) * 1.1920929e-07f) + -1.0f) * _308)) + (int)((int)(SV_DispatchThreadID.x))))), 0.0f), (_bufferSizeAndInvSize.x + -1.0f)));
      _353 = (int)(min(max(((float)((int)((int)((int)(((((float)((uint)((uint)(_325 & 16777215)))) * 1.1920929e-07f) + -1.0f) * _308)) + (int)((int)(SV_DispatchThreadID.y))))), 0.0f), (_bufferSizeAndInvSize.y + -1.0f)));
      _355 = __3__36__0__0__g_sceneNormal.Load(int3(_340, _353, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
      _361 = min(1.0f, ((((float)((uint)((uint)(_355.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _367 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_355.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _373 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_355.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
      _379 = ((_bufferSizeAndInvSize.z * 2.0f) * (((float)((int)(_340))) + 0.5f)) + -1.0f;
      _385 = 1.0f - ((_bufferSizeAndInvSize.w * 2.0f) * (((float)((int)(_353))) + 0.5f));
      _392 = max(1e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(_340, _353, 0)))).x) & 16777215)))) * 5.960465e-08f));
      _404 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _392, mad((_invViewProjRelative[3].y), _385, ((_invViewProjRelative[3].x) * _379)));
      _413 = (mad((_invViewProjRelative[0].z), _392, mad((_invViewProjRelative[0].y), _385, ((_invViewProjRelative[0].x) * _379))) + (_invViewProjRelative[0].w)) / _404;
      _422 = (mad((_invViewProjRelative[1].z), _392, mad((_invViewProjRelative[1].y), _385, ((_invViewProjRelative[1].x) * _379))) + (_invViewProjRelative[1].w)) / _404;
      _431 = (mad((_invViewProjRelative[2].z), _392, mad((_invViewProjRelative[2].y), _385, ((_invViewProjRelative[2].x) * _379))) + (_invViewProjRelative[2].w)) / _404;
      _434 = rsqrt(dot(float3(_361, _367, _373), float3(_361, _367, _373))) * 511.0f;
      _436 = __3__36__0__0__g_diffuseGIReservoirHitGeometry.Load(int3(_340, _353, 0));  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load]
      _442 = __3__36__0__0__g_diffuseGIReservoirRadiance.Load(int3(_340, _353, 0));  // [sem: _3__36__0__0__g_diffuseGIReservoirRadiance_load]
      _452 = min(1.0f, ((((float)((uint)((uint)(((int)((uint)((_434 * _361) + 511.5f))) & 1023)))) * 0.0019569471f) + -1.0f));
      _460 = min(1.0f, ((((float)((uint)((uint)(((int)((uint)((_434 * _367) + 511.5f))) & 1023)))) * 0.0019569471f) + -1.0f));
      _468 = min(1.0f, ((((float)((uint)((uint)(((int)((uint)((_434 * _373) + 511.5f))) & 1023)))) * 0.0019569471f) + -1.0f));
      _470 = rsqrt(dot(float3(_452, _460, _468), float3(_452, _460, _468)));  // [sem: invLength]
      _471 = asfloat(_436.x);  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
      _472 = asfloat(_436.y);  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
      _473 = asfloat(_436.z);  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
      _478 = min(1.0f, ((((float)((uint)((uint)(_436.w & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
      _484 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_436.w)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
      _490 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_436.w)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_diffuseGIReservoirHitGeometry_load_derived]
      _492 = rsqrt(dot(float3(_478, _484, _490), float3(_478, _484, _490)));  // [sem: invLength]
      _493 = _492 * _478;
      _494 = _492 * _484;
      _495 = _492 * _490;
      _497 = f16tof32(((uint)((uint)((uint)(_442.x)) >> 16)));  // [sem: _3__36__0__0__g_diffuseGIReservoirRadiance_load_derived]
      _498 = _442.x & 1023;  // [sem: _3__36__0__0__g_diffuseGIReservoirRadiance_load_derived]
      if (!(abs(dot(float3(_186, _187, _188), float3((_413 - _226), (_422 - _235), (_431 - _244)))) > max(0.5f, (_nearFarProj.x / _205)))) {
        if (!(dot(float3(_186, _187, _188), float3((_470 * _452), (_470 * _460), (_470 * _468))) < 0.0f)) {
          _516 = _471 - _413;
          _517 = _472 - _422;
          _518 = _473 - _431;
          _519 = _471 - _226;
          _520 = _472 - _235;
          _521 = _473 - _244;
          _522 = dot(float3(_519, _520, _521), float3(_519, _520, _521));
          _523 = dot(float3(_516, _517, _518), float3(_516, _517, _518));
          _524 = rsqrt(_523);  // [sem: rsqrt_val]
          _525 = rsqrt(_522);  // [sem: rsqrt_val]
          _530 = dot(float3((_524 * _516), (_524 * _517), (_524 * _518)), float3(_493, _494, _495)) * _522;
          if (!(_530 >= -0.0f)) {
            _533 = _525 * _519;
            _534 = _525 * _520;
            _535 = _525 * _521;
            _542 = min(max(((-0.0f - (_523 * dot(float3(_533, _534, _535), float3(_493, _494, _495)))) / (-0.0f - _530)), 0.0f), 1.0f);
            if (!(_542 <= 0.0f)) {
              _548 = (_497 * 0.31830987f) * max(0.1f, dot(float3(_186, _187, _188), float3(_533, _534, _535)));
              _553 = ((((float)((uint)((uint)(_498)))) * asfloat(_442.y)) * _542) * _548;
              _554 = (uint)((uint)(_321)) * (uint)(-856141137);
              _555 = _553 + _323;
              _560 = (((((float)((uint)((uint)(_554 & 16777215)))) * 5.9604645e-08f) * _555) <= _553);
              _568 = ((int)((uint)((uint)(_498)) + (uint)((uint)(_316))));
              _569 = select(_560, _497, _317);
              _570 = select(_560, _471, _318);
              _571 = select(_560, _472, _319);
              _572 = select(_560, _473, _320);
              _573 = _554;
              _574 = select(_560, _548, _322);
              _575 = _555;
            } else {
              _568 = _316;
              _569 = _317;
              _570 = _318;
              _571 = _319;
              _572 = _320;
              _573 = _325;
              _574 = _322;
              _575 = _323;
            }
          } else {
            _568 = _316;
            _569 = _317;
            _570 = _318;
            _571 = _319;
            _572 = _320;
            _573 = _325;
            _574 = _322;
            _575 = _323;
          }
        } else {
          _568 = _316;
          _569 = _317;
          _570 = _318;
          _571 = _319;
          _572 = _320;
          _573 = _325;
          _574 = _322;
          _575 = _323;
        }
      } else {
        _568 = _316;
        _569 = _317;
        _570 = _318;
        _571 = _319;
        _572 = _320;
        _573 = _325;
        _574 = _322;
        _575 = _323;
      }
      _576 = (uint)((uint)(_324)) + (uint)(1);
      if (!(_576 == _311)) {
        _316 = _568;
        _317 = _569;
        _318 = _570;
        _319 = _571;
        _320 = _572;
        _321 = _573;
        _322 = _574;
        _323 = _575;
        _324 = _576;
        continue;
      }
      _580 = _572;
      _581 = _571;
      _582 = _570;
      _583 = _569;
      _584 = _568;
      _585 = _574;
      _586 = _575;
      break;
    }
  } else {
    _580 = _282;
    _581 = _281;
    _582 = _280;
    _583 = _284;
    _584 = _285;
    _585 = _300;
    _586 = _304;
  }
  _588 = _585 * ((float)((uint)((uint)(_584))));
  _592 = saturate(select((_588 == 0.0f), 0.0f, (_586 / _588)));  // [sem: expr_sat]
  _593 = _582 - _226;
  _594 = _581 - _235;
  _595 = _580 - _244;
  _601 = sqrt(((_594 * _594) + (_595 * _595)) + (_593 * _593));
  _602 = max(1e-06f, _601);
  _607 = -0.0h - (half)(half(min(0.0f, (-0.0f - (_583 * _592)))));
  __3__38__0__1__g_diffuseResultUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float4(_607, _607, _607, 0.0f);
  __3__38__0__1__g_raytracingHitResultUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float4((_593 / _602), (_594 / _602), (_595 / _602), _601);
  __3__38__0__1__g_raytracingDiffuseRayInversePDFUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = _592;
}
