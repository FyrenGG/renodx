Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

RWTexture2D<float4> __3__38__0__1__g_textureUAV : register(u13, space38);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b16, space35) {
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

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};

cbuffer __3__1__0__0__GlobalPushConstants : register(b0, space1) {
  float4 _postProcessParams : packoffset(c000.x);
  float4 _postProcessParams1 : packoffset(c001.x);
  float4 _toneMapParams0 : packoffset(c002.x);
  float4 _toneMapParams1 : packoffset(c003.x);
  float4 _colorGradingParams : packoffset(c004.x);
  float4 _colorCorrectionParams : packoffset(c005.x);
  float4 _localToneMappingParams : packoffset(c006.x);
  float4 _etcParams : packoffset(c007.x);
  float4 _userImageAdjust : packoffset(c008.x);
  float4 _slopeParams : packoffset(c009.x);
  float4 _offsetParams : packoffset(c010.x);
  float4 _powerParams : packoffset(c011.x);
  int _nightToneParm : packoffset(c012.x);
  int3 _padding : packoffset(c012.y);
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
  float4 _11;
  float _20;
  float _69;
  float _70;
  float _71;
  float _73;
  float _80;
  float _81;
  float _82;
  float _101;
  float _102;
  float _103;
  float _104;
  float _105;
  float _106;
  float _107;
  float _108;
  float _109;
  float _155;
  float _156;
  float _157;
  float _158;
  float _159;
  float _160;
  float _161;
  float _217;
  float _218;
  float _219;
  float _179;
  float _180;
  float _181;
  float _182;
  float _188;
  float _191;
  float _198;
  float _199;
  float _200;
  float _229;
  float _254;
  float _255;
  float _256;
  float _275;
  float _276;
  float _277;
  _11 = __3__36__0__0__g_sceneColor.Load(int3((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
  _20 = _userImageAdjust.z * _exposure0.x;
  _69 = exp2(log2(max(0.0f, (((_20 * max(0.0f, (((_11.x * 1.70505f) - (_11.y * 0.62179f)) - (_11.z * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
  _70 = exp2(log2(max(0.0f, (((max(0.0f, (((_11.y * 1.1408f) - (_11.x * 0.13026f)) - (_11.z * 0.01055f))) * _20) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
  _71 = exp2(log2(max(0.0f, (((max(0.0f, (((_11.x * -0.024f) - (_11.y * 0.12897f)) + (_11.z * 1.15297f))) * _20) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
  _73 = dot(float3(_69, _70, _71), float3(0.212671f, 0.71516f, 0.072169f));
  _80 = ((_69 - _73) * _powerParams.w) + _73;
  _81 = ((_70 - _73) * _powerParams.w) + _73;
  _82 = ((_71 - _73) * _powerParams.w) + _73;
  _101 = min(max(log2(mad(_82, 0.079223745f, mad(_81, 0.0784336f, (_80 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
  _102 = min(max(log2(mad(_82, 0.07916613f, mad(_81, 0.87846863f, (_80 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
  _103 = min(max(log2(mad(_82, 0.879143f, mad(_81, 0.0784336f, (_80 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
  _104 = _101 * 0.060606062f;
  _105 = _102 * 0.060606062f;
  _106 = _103 * 0.060606062f;
  _107 = _104 * _104;
  _108 = _105 * _105;
  _109 = _106 * _106;
  _155 = min(0.0f, (-0.0f - (((_101 * 0.0072181816f) + ((_107 * 0.4298f) + (((_107 * _107) * ((31.96f - (_101 * 2.4327273f)) + (_107 * 15.5f))) - ((_101 * 0.41624245f) * _107)))) + -0.00232f)));
  _156 = min(0.0f, (-0.0f - (((_102 * 0.0072181816f) + ((_108 * 0.4298f) + (((_108 * _108) * ((31.96f - (_102 * 2.4327273f)) + (_108 * 15.5f))) - ((_102 * 0.41624245f) * _108)))) + -0.00232f)));
  _157 = min(0.0f, (-0.0f - (((_103 * 0.0072181816f) + ((_109 * 0.4298f) + (((_109 * _109) * ((31.96f - (_103 * 2.4327273f)) + (_109 * 15.5f))) - ((_103 * 0.41624245f) * _109)))) + -0.00232f)));
  _158 = -0.0f - _155;
  _159 = -0.0f - _156;
  _160 = -0.0f - _157;
  _161 = dot(float3(_158, _159, _160), float3(0.2126f, 0.7152f, 0.0722f));
  if (_nightToneParm == 1) {
    _179 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
    _180 = -0.79999995f / _179;
    _181 = -1.2f / _179;
    _182 = 0.20000005f / _179;
    _188 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
    _191 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
    _198 = (_180 + 1.4f) + (_191 * (-0.39999998f - _180));
    _199 = (_181 + 1.6f) + (_191 * (-0.6f - _181));
    _200 = (_182 + 0.9f) + (_191 * (0.5f - _182));
    _217 = (lerp(_199, 1.2f, _188));  // [sem: blended]
    _218 = (lerp(_198, 1.0f, _188));  // [sem: blended]
    _219 = (lerp(_200, 1.4f, _188));  // [sem: blended]
  } else {
    _217 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    _218 = 1.0f;  // [sem: blended]
    _219 = 1.4f;  // [sem: blended]
  }
  _229 = 1.0f - _217;
  _254 = ((exp2(log2(((saturate((_155 * _155) * _158) * _229) + _217) * _158) * _218) - _161) * _219) + _161;
  _255 = ((exp2(log2(((saturate((_156 * _156) * _159) * _229) + _217) * _159) * _218) - _161) * _219) + _161;
  _256 = ((exp2(log2(((saturate((_157 * _157) * _160) * _229) + _217) * _160) * _218) - _161) * _219) + _161;
  _275 = saturate(exp2(log2(mad(_256, -0.09902974f, mad(_255, -0.09802088f, (_254 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
  _276 = saturate(exp2(log2(mad(_256, -0.098961174f, mad(_255, 1.1519032f, (_254 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
  _277 = saturate(exp2(log2(mad(_256, 1.1510737f, mad(_255, -0.09804345f, (_254 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
  __3__38__0__1__g_textureUAV[int2((int)(SV_DispatchThreadID.x), (int)(SV_DispatchThreadID.y))] = float4(select((_275 <= 0.0031308f), (_275 * 12.92f), (((pow(_275, 0.41666666f)) * 1.055f) + -0.055f)), select((_276 <= 0.0031308f), (_276 * 12.92f), (((pow(_276, 0.41666666f)) * 1.055f) + -0.055f)), select((_277 <= 0.0031308f), (_277 * 12.92f), (((pow(_277, 0.41666666f)) * 1.055f) + -0.055f)), _11.w);
}
