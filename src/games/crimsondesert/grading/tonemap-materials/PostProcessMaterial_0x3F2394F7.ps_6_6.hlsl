struct PostProcessFlashbackStruct {
  float _blendingRatio;
  float _flickeringIntensity;
  float _contrastRatio;
  float _depthFadingContrast;
  float _depthFadingDistance;
  float _vignetteRatio;
  float _vignetteWidth;
  float _vignetteShape;
  float _lensDirtIntensity;
  float _lensDirtTexScale;
  uint _lensDirtTex;
};

struct BindlessParameters_PostProcessFlashback {
  PostProcessFlashbackStruct BindlessParameters_PostProcessFlashback;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

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

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
};

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};

typedef BindlessParameters_PostProcessFlashback BindlessParameters_PostProcessFlashback_t;
ConstantBuffer<BindlessParameters_PostProcessFlashback_t> BindlessParameters_PostProcessFlashback[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _25;
  int _31;
  float _39;
  float _40;
  float _64;
  float _65;
  float _66;
  float _96;
  float _97;
  float _98;
  float _169;
  float _170;
  float _171;
  float _199;
  float _200;
  float _201;
  float _383;
  float _384;
  float _385;
  float _409;
  float _410;
  float _411;
  float _425;
  float _630;
  float _631;
  float _632;
  float _725;
  float _726;
  float _727;
  float _781;
  float _782;
  float _783;
  float _802;
  float _803;
  float _804;
  float _834;
  float _835;
  float _836;
  float _850;
  float _851;
  float _852;
  float _47;
  float _50;
  float _51;
  float _56;
  int _69;
  float _77;
  bool _78;
  float _85;
  int _101;
  float _109;
  int _115;
  float _123;
  float _124;
  float _140;
  float _144;
  float _150;
  float _152;
  float4 _174;
  int _179;
  float _187;
  float _194;
  int _204;
  float _212;
  float _219;
  float _223;
  float _227;
  float _233;
  float _234;
  float _235;
  float _236;
  float _240;
  float _244;
  float _248;
  float _250;
  float _252;
  float _255;
  float _267;
  float _276;
  float _285;
  float _294;
  float _296;
  float _306;
  float _318;
  int _321;
  float _329;
  int _332;
  int _340;
  float4 _355;
  float _359;
  float _366;
  int _388;
  float _396;
  float _397;
  float _401;
  uint _412;
  bool _428;
  float _434;
  float _453;
  float _469;
  float _485;
  float _486;
  float _490;
  float _493;
  float _496;
  float _503;
  float _510;
  float _517;
  float _518;
  float _519;
  float _520;
  float _521;
  float _522;
  float _523;
  float _539;
  float _555;
  float _571;
  float _572;
  float _573;
  float _574;
  float _575;
  float _592;
  float _593;
  float _594;
  float _595;
  float _598;
  float _601;
  float _605;
  float _609;
  float _613;
  float _633;
  float _645;
  float _657;
  float _669;
  float _676;
  float _683;
  float _690;
  float _696;
  float _697;
  float _699;
  float _701;
  float _703;
  float _708;
  float _729;
  float _731;
  float _734;
  float _737;
  float _740;
  float _746;
  float _788;
  float _791;
  float _797;
  float _839;
  _25 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _31 = WaveReadLaneFirst(_materialIndex);
  _39 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_31 < (uint)170000), _31, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._blendingRatio);
  _40 = saturate(_39);  // [sem: _39_sat]
  [branch]
  if (!(_40 < 0.0001f)) {
    _47 = 1.0f / max(0.001f, abs(_exposure0.x));
    _50 = _exposure2.x * _47;
    _51 = _47 * 0.5f;
    [branch]
    if (!(!(_40 >= 0.001f))) {
      _56 = (1.0f - saturate(_50)) * _40;
      _64 = ((_56 * _25.z) + _25.z);
      _65 = ((_56 * _25.y) + _25.y);
      _66 = ((_56 * _25.x) + _25.x);
    } else {
      _64 = _25.z;
      _65 = _25.y;
      _66 = _25.x;
    }
    _69 = WaveReadLaneFirst(_materialIndex);
    _77 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_69 < (uint)170000), _69, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._contrastRatio);
    _78 = (_40 >= 0.001f);
    if (!((_77 == 1.0f) || (!_78))) {
      _85 = ((_77 + -1.0f) * _40) + 1.0f;
      _96 = ((_85 * (_64 - _51)) + _51);
      _97 = ((_85 * (_65 - _51)) + _51);
      _98 = ((_85 * (_66 - _51)) + _51);
    } else {
      _96 = _64;
      _97 = _65;
      _98 = _66;
    }
    _101 = WaveReadLaneFirst(_materialIndex);
    _109 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_101 < (uint)170000), _101, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._depthFadingContrast);
    if (_78 && (_109 < 1.0f)) {
      _115 = WaveReadLaneFirst(_materialIndex);
      _123 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_115 < (uint)170000), _115, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._depthFadingDistance);
      _124 = max(0.0001f, _123);
      // [sem: expr_sat]
      _140 = saturate((1.0f - saturate(_nearFarProj.x / (max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x)) * _124))) / (1.0f - saturate(1.5f / _124)));
      _144 = (_140 * _140) * (3.0f - (_140 * 2.0f));
      _150 = (((1.0f - saturate(_50)) * 0.3f) * (1.0f - _144)) + _144;
      _152 = (1.0f - _109) * _40;
      _169 = ((((_150 * (_96 - _51)) + _51) * _152) + _96);
      _170 = ((((_150 * (_97 - _51)) + _51) * _152) + _97);
      _171 = ((((_150 * (_98 - _51)) + _51) * _152) + _98);
    } else {
      _169 = _96;
      _170 = _97;
      _171 = _98;
    }
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _174 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _179 = WaveReadLaneFirst(_materialIndex);
    _187 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_179 < (uint)170000), _179, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._flickeringIntensity);
    [branch]
    if (!(!(_187 >= 0.001f))) {
      _194 = 1.0f - (((_40 * 0.6f) * _174.x) * _187);
      _199 = (_194 * _169);
      _200 = (_194 * _170);
      _201 = (_194 * _171);
    } else {
      _199 = _169;
      _200 = _170;
      _201 = _171;
    }
    _204 = WaveReadLaneFirst(_materialIndex);
    _212 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_204 < (uint)170000), _204, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._lensDirtIntensity);
    [branch]
    if (!(!(_212 >= 0.0001f))) {
      _219 = saturate((_sunDirection.y + 0.1f) * 5.0f);  // [sem: expr_sat]
      _223 = (_219 * _219) * (3.0f - (_219 * 2.0f));
      // [sem: invLength]
      _227 = rsqrt(dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)));
      // [sem: invLength]
      _233 = rsqrt(dot(float3(_moonDirection.x, _moonDirection.y, _moonDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)));
      _234 = _233 * _moonDirection.x;
      _235 = _233 * _moonDirection.y;
      _236 = _233 * _moonDirection.z;
      _240 = (((_227 * _sunDirection.x) - _234) * _223) + _234;
      _244 = (((_227 * _sunDirection.y) - _235) * _223) + _235;
      _248 = (((_227 * _sunDirection.z) - _236) * _223) + _236;
      _250 = rsqrt(dot(float3(_240, _244, _248), float3(_240, _244, _248)));  // [sem: invLength]
      _252 = (TEXCOORD.x * 2.0f) + -1.0f;
      _255 = ((1.0f - TEXCOORD.y) * 2.0f) + -1.0f;
      _267 = ((_invViewProjRelative[3].z) + (_invViewProjRelative[3].w)) + mad((_invViewProjRelative[3].y), _255, ((_invViewProjRelative[3].x) * _252));
      _276 = (((_invViewProjRelative[0].z) + (_invViewProjRelative[0].w)) + mad((_invViewProjRelative[0].y), _255, ((_invViewProjRelative[0].x) * _252))) / _267;
      _285 = (((_invViewProjRelative[1].z) + (_invViewProjRelative[1].w)) + mad((_invViewProjRelative[1].y), _255, ((_invViewProjRelative[1].x) * _252))) / _267;
      _294 = (((_invViewProjRelative[2].z) + (_invViewProjRelative[2].w)) + mad((_invViewProjRelative[2].y), _255, ((_invViewProjRelative[2].x) * _252))) / _267;
      _296 = rsqrt(dot(float3(_276, _285, _294), float3(_276, _285, _294)));  // [sem: invLength]
      // [sem: expr_sat]
      _306 = saturate((dot(float3((_296 * _276), (_296 * _285), (_296 * _294)), float3((_240 * _250), (_244 * _250), (_248 * _250))) + -0.5f) * 2.0f);
      _318 = (((_223 * 4.0f) + 3.0f) * _174.z) * saturate(exp2(log2((_306 * _306) * (3.0f - (_306 * 2.0f))) * 3.0f));
      _321 = WaveReadLaneFirst(_materialIndex);
      _329 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_321 < (uint)170000), _321, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._lensDirtTexScale);
      _332 = WaveReadLaneFirst(_materialIndex);
      _340 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_332 < (uint)170000), _332, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._lensDirtTex);
      _355 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_340 < (uint)65000), _340, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_329 * TEXCOORD.x) * (1.0f / _srcTargetSizeAndInv.y)) * _srcTargetSizeAndInv.x), (_329 * TEXCOORD.y)));
      _359 = dot(float3(0.3f, 0.59f, 0.11f), float3(_355.x, _355.y, _355.z));
      _366 = (((_47 * _40) * _212) * (6.0f - (_223 * 2.0f))) * (_318 + _174.z);
      _383 = (((lerp(_359, _355.z, _318)) * _366) + _199);
      _384 = (((lerp(_359, _355.y, _318)) * _366) + _200);
      _385 = (((lerp(_359, _355.x, _318)) * _366) + _201);
    } else {
      _383 = _199;
      _384 = _200;
      _385 = _201;
    }
    _388 = WaveReadLaneFirst(_materialIndex);
    _396 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_388 < (uint)170000), _388, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._vignetteRatio);
    _397 = saturate(_396);  // [sem: _396_sat]
    [branch]
    if (!(!(_397 >= 0.001f))) {
      _401 = (_174.y * _40) * _397;
      _409 = (_383 - (_401 * _383));
      _410 = (_384 - (_401 * _384));
      _411 = (_385 - (_401 * _385));
    } else {
      _409 = _383;
      _410 = _384;
      _411 = _385;
    }
  } else {
    _409 = _25.z;
    _410 = _25.y;
    _411 = _25.x;
  }
  _412 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _425 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _412, 0)))).x) & 127)))) + 0.5f);
  } else {
    _425 = 1.0f;
  }
  _428 = (_localToneMappingParams.w > 0.0f);
  if (_428) {
    _434 = _exposure0.x * _userImageAdjust.z;
    _453 = exp2(_powerParams.x * log2(max(0.0f, (((_434 * max(0.0f, (((_410 * -0.62179f) - (_409 * 0.08326f)) + (_411 * 1.70505f)))) * _slopeParams.x) + _offsetParams.x))));
    _469 = exp2(log2(max(0.0f, (((_slopeParams.y * _434) * max(0.0f, (((_410 * 1.1408f) - (_409 * 0.01055f)) - (_411 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
    _485 = exp2(log2(max(0.0f, (((_slopeParams.z * _434) * max(0.0f, (((_409 * 1.15297f) - (_410 * 0.12897f)) - (_411 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
    _486 = dot(float3(_453, _469, _485), float3(0.212671f, 0.71516f, 0.072169f));
    _490 = ((_453 - _486) * _powerParams.w) + _486;
    _493 = ((_469 - _486) * _powerParams.w) + _486;
    _496 = ((_485 - _486) * _powerParams.w) + _486;
    _503 = min(max(log2(mad(_496, 0.079223745f, mad(_493, 0.0784336f, (_490 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _510 = min(max(log2(mad(_496, 0.07916613f, mad(_493, 0.87846863f, (_490 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _517 = min(max(log2(mad(_496, 0.879143f, mad(_493, 0.0784336f, (_490 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _518 = _503 * 0.060606062f;
    _519 = _510 * 0.060606062f;
    _520 = _517 * 0.060606062f;
    _521 = _518 * _518;
    _522 = _519 * _519;
    _523 = _520 * _520;
    _539 = min(0.0f, (-0.0f - (((_503 * 0.0072181816f) + ((_521 * 0.4298f) + (((_521 * _521) * ((31.96f - (_503 * 2.4327273f)) + (_521 * 15.5f))) - ((_503 * 0.41624245f) * _521)))) + -0.00232f)));
    _555 = min(0.0f, (-0.0f - (((_510 * 0.0072181816f) + ((_522 * 0.4298f) + (((_522 * _522) * ((31.96f - (_510 * 2.4327273f)) + (_522 * 15.5f))) - ((_510 * 0.41624245f) * _522)))) + -0.00232f)));
    _571 = min(0.0f, (-0.0f - (((_517 * 0.0072181816f) + ((_523 * 0.4298f) + (((_523 * _523) * ((31.96f - (_517 * 2.4327273f)) + (_523 * 15.5f))) - ((_517 * 0.41624245f) * _523)))) + -0.00232f)));
    _572 = -0.0f - _539;
    _573 = -0.0f - _555;
    _574 = -0.0f - _571;
    _575 = dot(float3(_572, _573, _574), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _592 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _593 = -0.79999995f / _592;
      _594 = -1.2f / _592;
      _595 = 0.20000005f / _592;
      _598 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _601 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _605 = (_593 + 1.4f) + (_601 * (-0.39999998f - _593));
      _609 = (_594 + 1.6f) + (_601 * (-0.6f - _594));
      _613 = (_595 + 0.9f) + (_601 * (0.5f - _595));
      _630 = (lerp(_613, 1.4f, _598));  // [sem: blended]
      _631 = (lerp(_605, 1.0f, _598));  // [sem: blended]
      _632 = (lerp(_609, 1.2f, _598));  // [sem: blended]
    } else {
      _630 = 1.4f;  // [sem: blended]
      _631 = 1.0f;  // [sem: blended]
      _632 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _633 = 1.0f - _632;
    _645 = ((exp2(log2(((saturate((_539 * _539) * _572) * _633) + _632) * _572) * _631) - _575) * _630) + _575;
    _657 = ((exp2(log2(((saturate((_555 * _555) * _573) * _633) + _632) * _573) * _631) - _575) * _630) + _575;
    _669 = ((exp2(log2(((saturate((_571 * _571) * _574) * _633) + _632) * _574) * _631) - _575) * _630) + _575;
    _676 = saturate(exp2(log2(mad(_669, -0.09902974f, mad(_657, -0.09802088f, (_645 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _683 = saturate(exp2(log2(mad(_669, -0.098961174f, mad(_657, 1.1519032f, (_645 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _690 = saturate(exp2(log2(mad(_669, 1.1510737f, mad(_657, -0.09804345f, (_645 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _696 = 1.0f - abs(_etcParams.w);
      _697 = saturate(_etcParams.w);  // [sem: expr_sat]
      _699 = (_696 * _676) + _697;
      _701 = (_696 * _683) + _697;
      _703 = (_696 * _690) + _697;
      if (_colorGradingParams.w > 0.0f) {
        _708 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _725 = (((max(0.0f, (1.0f - _703)) - _703) * _708) + _703);
        _726 = (((max(0.0f, (1.0f - _701)) - _701) * _708) + _701);
        _727 = (((max(0.0f, (1.0f - _699)) - _699) * _708) + _699);
      } else {
        _725 = _703;
        _726 = _701;
        _727 = _699;
      }
      _729 = _userImageAdjust.y + 1.0f;
      _731 = _userImageAdjust.x + 0.5f;
      _734 = ((_727 + -0.5f) * _729) + _731;
      _737 = ((_726 + -0.5f) * _729) + _731;
      _740 = ((_725 + -0.5f) * _729) + _731;
      _746 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _781 = exp2(log2(saturate(mad(_colorBlind2.z, _740, mad(_colorBlind2.y, _737, (_colorBlind2.x * _734))))) * _746);
      _782 = exp2(log2(saturate(mad(_colorBlind1.z, _740, mad(_colorBlind1.y, _737, (_colorBlind1.x * _734))))) * _746);
      _783 = exp2(log2(saturate(mad(_colorBlind0.z, _740, mad(_colorBlind0.y, _737, (_colorBlind0.x * _734))))) * _746);
    } else {
      _781 = _690;
      _782 = _683;
      _783 = _676;
    }
  } else {
    _781 = _409;
    _782 = _410;
    _783 = _411;
  }
  if (_etcParams.y > 1.0f) {
    _788 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _791 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _797 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_788, _791), float2(_788, _791))));  // [sem: expr_sat]
    _802 = (_797 * _781);
    _803 = (_797 * _782);
    _804 = (_797 * _783);
  } else {
    _802 = _781;
    _803 = _782;
    _804 = _783;
  }
  if (_428 && (_etcParams.z > 0.0f)) {
    _834 = select((_804 <= 0.0031308f), (_804 * 12.92f), (((pow(_804, 0.41666666f)) * 1.055f) + -0.055f));
    _835 = select((_803 <= 0.0031308f), (_803 * 12.92f), (((pow(_803, 0.41666666f)) * 1.055f) + -0.055f));
    _836 = select((_802 <= 0.0031308f), (_802 * 12.92f), (((pow(_802, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _834 = _804;
    _835 = _803;
    _836 = _802;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _839 = (float)((uint)((uint)(_412)));
    if (!(_839 < _viewDir.w)) {
      if (!(!(_839 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _850 = 0.0f;
        _851 = 0.0f;
        _852 = 0.0f;
      } else {
        _850 = _834;
        _851 = _835;
        _852 = _836;
      }
    } else {
      _850 = 0.0f;
      _851 = 0.0f;
      _852 = 0.0f;
    }
  } else {
    _850 = _834;
    _851 = _835;
    _852 = _836;
  }
  SV_Target.x = _850;
  SV_Target.y = _851;
  SV_Target.z = _852;
  SV_Target.w = _425;
  return SV_Target;
}
