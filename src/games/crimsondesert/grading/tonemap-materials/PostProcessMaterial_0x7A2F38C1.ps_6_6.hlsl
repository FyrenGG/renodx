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


Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

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

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};

struct BindlessParameters_PostProcessFlashback {
  PostProcessFlashbackStruct BindlessParameters_PostProcessFlashback;
};

typedef BindlessParameters_PostProcessFlashback BindlessParameters_PostProcessFlashback_t;
ConstantBuffer<BindlessParameters_PostProcessFlashback_t> BindlessParameters_PostProcessFlashback[] : register(b0, space100);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _18;
  float _26;
  float _27;
  int _28;
  float _36;
  float _37;
  int _38;
  float _46;
  float _47;
  int _48;
  float _56;
  float _57;
  float _134;
  float _177;
  float _207;
  float _208;
  float _209;
  float _223;
  float _428;
  float _429;
  float _430;
  float _523;
  float _524;
  float _525;
  float _579;
  float _580;
  float _581;
  float _600;
  float _601;
  float _602;
  float _632;
  float _633;
  float _634;
  float _648;
  float _649;
  float _650;
  float _77;
  float _78;
  float _80;
  float _88;
  float _97;
  float _98;
  float _100;
  float _108;
  float _119;
  float _120;
  float _127;
  int _137;
  float _145;
  int _147;
  float _155;
  float _165;
  float _168;
  float _169;
  float _187;
  float _194;
  float _197;
  float _198;
  float _204;
  uint _210;
  bool _226;
  float _232;
  float _281;
  float _282;
  float _283;
  float _285;
  float _292;
  float _293;
  float _294;
  float _313;
  float _314;
  float _315;
  float _316;
  float _317;
  float _318;
  float _319;
  float _320;
  float _321;
  float _367;
  float _368;
  float _369;
  float _370;
  float _371;
  float _372;
  float _373;
  float _390;
  float _391;
  float _392;
  float _393;
  float _399;
  float _402;
  float _409;
  float _410;
  float _411;
  float _440;
  float _465;
  float _466;
  float _467;
  float _486;
  float _487;
  float _488;
  float _494;
  float _498;
  float _499;
  float _500;
  float _501;
  float _506;
  float _531;
  float _535;
  float _536;
  float _537;
  float _538;
  float _568;
  float _590;
  float _591;
  float _595;
  float _639;
  _18 = WaveReadLaneFirst(_materialIndex);
  _26 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_18 < (uint)170000), _18, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._blendingRatio);
  _27 = saturate(_26);  // [sem: _26_sat]
  _28 = WaveReadLaneFirst(_materialIndex);
  _36 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_28 < (uint)170000), _28, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._flickeringIntensity);
  _37 = saturate(_36);  // [sem: _36_sat]
  _38 = WaveReadLaneFirst(_materialIndex);
  _46 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_38 < (uint)170000), _38, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._vignetteRatio);
  _47 = saturate(_46);  // [sem: _46_sat]
  _48 = WaveReadLaneFirst(_materialIndex);
  _56 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_48 < (uint)170000), _48, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._lensDirtIntensity);
  _57 = saturate(_56);  // [sem: _56_sat]
  if (!((((_27 < 0.0001f) && (_37 < 0.0001f)) && (_47 < 0.0001f)) && (_57 < 0.0001f))) {
    [branch]
    if (!(!(_37 >= 0.001f))) {
      _77 = (frac(sin(dot(float2(floor(_time.x * 0.37f), 41.0f), float2(127.1f, 311.7f))) * 437.545f) + 3.0f) * _time.x;
      _78 = floor(_77);
      _80 = frac(_77);
      _88 = frac(sin(dot(float2(53.0f, _78), float2(127.1f, 311.7f))) * 437.545f);
      _97 = (((((_80 * _80) * (3.0f - (_80 * 2.0f))) * (frac(sin(dot(float2(53.0f, (_78 + 1.0f)), float2(127.1f, 311.7f))) * 437.545f) - _88)) + _88) * 3.17f) + _77;
      _98 = floor(_97);
      _100 = frac(_97);
      _108 = frac(sin(dot(float2(97.0f, _98), float2(127.1f, 311.7f))) * 437.545f);
      _119 = TEXCOORD.x + -0.5f;
      _120 = TEXCOORD.y + -0.5f;
      _127 = saturate((sqrt((_120 * _120) + (_119 * _119)) + -0.075f) * 2.0f);  // [sem: expr_sat]
      _134 = (((_127 * _127) * saturate(((_108 + -0.3f) + (((_100 * _100) * (3.0f - (_100 * 2.0f))) * (frac(sin(dot(float2(97.0f, (_98 + 1.0f)), float2(127.1f, 311.7f))) * 437.545f) - _108))) * 1.4285715f)) * (3.0f - (_127 * 2.0f)));
    } else {
      _134 = 0.0f;
    }
    [branch]
    if (!(!(_47 >= 0.001f))) {
      _137 = WaveReadLaneFirst(_materialIndex);
      _145 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_137 < (uint)170000), _137, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._vignetteShape);
      _147 = WaveReadLaneFirst(_materialIndex);
      _155 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_147 < (uint)170000), _147, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._vignetteWidth);
      _165 = (5.0f - ((_155 + 4.0f) * _27)) * 0.5f;
      _168 = max((abs(TEXCOORD.x + -0.5f) - _165), 0.0f);
      _169 = max((abs((TEXCOORD.y + -0.5f) / max(0.0001f, (_145 * 3.1415927f))) - _165), 0.0f);
      _177 = saturate(sqrt((_169 * _169) + (_168 * _168)) * 0.5f);  // [sem: expr_sat]
    } else {
      _177 = 0.0f;  // [sem: expr_sat]
    }
    [branch]
    if (!(!(_57 >= 0.0001f))) {
      _187 = saturate(1.0f / max(0.001f, abs(_exposure0.x)));  // [sem: expr_sat]
      _194 = -0.25f - (_187 * 0.25f);
      _197 = max((abs(TEXCOORD.x + -0.5f) - _194), 0.0f);
      _198 = max((abs((TEXCOORD.y + -0.5f) * 1.5303359f) - _194), 0.0f);
      _204 = saturate(sqrt((_198 * _198) + (_197 * _197)) / ((_187 * 0.70000005f) + 1.3f));  // [sem: expr_sat]
      _207 = _134;
      _208 = _177;
      _209 = (_204 * _204);
    } else {
      _207 = _134;
      _208 = _177;
      _209 = 0.0f;
    }
  } else {
    _207 = 0.0f;
    _208 = 0.0f;
    _209 = 0.0f;
  }
  _210 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _223 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _210, 0)))).x) & 127)))) + 0.5f);
  } else {
    _223 = 1.0f;
  }
  _226 = (_localToneMappingParams.w > 0.0f);
  if (_226) {
    _232 = _userImageAdjust.z * _exposure0.x;
    _281 = exp2(log2(max(0.0f, (((_232 * max(0.0f, (((_207 * 1.70505f) - (_208 * 0.62179f)) - (_209 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _282 = exp2(log2(max(0.0f, (((max(0.0f, (((_208 * 1.1408f) - (_207 * 0.13026f)) - (_209 * 0.01055f))) * _232) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _283 = exp2(log2(max(0.0f, (((max(0.0f, (((_207 * -0.024f) - (_208 * 0.12897f)) + (_209 * 1.15297f))) * _232) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _285 = dot(float3(_281, _282, _283), float3(0.212671f, 0.71516f, 0.072169f));
    _292 = ((_281 - _285) * _powerParams.w) + _285;
    _293 = ((_282 - _285) * _powerParams.w) + _285;
    _294 = ((_283 - _285) * _powerParams.w) + _285;
    _313 = min(max(log2(mad(_294, 0.079223745f, mad(_293, 0.0784336f, (_292 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _314 = min(max(log2(mad(_294, 0.07916613f, mad(_293, 0.87846863f, (_292 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _315 = min(max(log2(mad(_294, 0.879143f, mad(_293, 0.0784336f, (_292 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _316 = _313 * 0.060606062f;
    _317 = _314 * 0.060606062f;
    _318 = _315 * 0.060606062f;
    _319 = _316 * _316;
    _320 = _317 * _317;
    _321 = _318 * _318;
    _367 = min(0.0f, (-0.0f - (((_313 * 0.0072181816f) + ((_319 * 0.4298f) + (((_319 * _319) * ((31.96f - (_313 * 2.4327273f)) + (_319 * 15.5f))) - ((_313 * 0.41624245f) * _319)))) + -0.00232f)));
    _368 = min(0.0f, (-0.0f - (((_314 * 0.0072181816f) + ((_320 * 0.4298f) + (((_320 * _320) * ((31.96f - (_314 * 2.4327273f)) + (_320 * 15.5f))) - ((_314 * 0.41624245f) * _320)))) + -0.00232f)));
    _369 = min(0.0f, (-0.0f - (((_315 * 0.0072181816f) + ((_321 * 0.4298f) + (((_321 * _321) * ((31.96f - (_315 * 2.4327273f)) + (_321 * 15.5f))) - ((_315 * 0.41624245f) * _321)))) + -0.00232f)));
    _370 = -0.0f - _367;
    _371 = -0.0f - _368;
    _372 = -0.0f - _369;
    _373 = dot(float3(_370, _371, _372), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _390 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _391 = -0.79999995f / _390;
      _392 = -1.2f / _390;
      _393 = 0.20000005f / _390;
      _399 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _402 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _409 = (_391 + 1.4f) + (_402 * (-0.39999998f - _391));
      _410 = (_392 + 1.6f) + (_402 * (-0.6f - _392));
      _411 = (_393 + 0.9f) + (_402 * (0.5f - _393));
      _428 = (lerp(_410, 1.2f, _399));  // [sem: blended]
      _429 = (lerp(_409, 1.0f, _399));  // [sem: blended]
      _430 = (lerp(_411, 1.4f, _399));  // [sem: blended]
    } else {
      _428 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _429 = 1.0f;  // [sem: blended]
      _430 = 1.4f;  // [sem: blended]
    }
    _440 = 1.0f - _428;
    _465 = ((exp2(log2(((saturate((_367 * _367) * _370) * _440) + _428) * _370) * _429) - _373) * _430) + _373;
    _466 = ((exp2(log2(((saturate((_368 * _368) * _371) * _440) + _428) * _371) * _429) - _373) * _430) + _373;
    _467 = ((exp2(log2(((saturate((_369 * _369) * _372) * _440) + _428) * _372) * _429) - _373) * _430) + _373;
    _486 = saturate(exp2(log2(mad(_467, -0.09902974f, mad(_466, -0.09802088f, (_465 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _487 = saturate(exp2(log2(mad(_467, -0.098961174f, mad(_466, 1.1519032f, (_465 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _488 = saturate(exp2(log2(mad(_467, 1.1510737f, mad(_466, -0.09804345f, (_465 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _494 = 1.0f - abs(_etcParams.w);
      _498 = saturate(_etcParams.w);  // [sem: expr_sat]
      _499 = (_494 * _486) + _498;
      _500 = (_494 * _487) + _498;
      _501 = (_494 * _488) + _498;
      if (_colorGradingParams.w > 0.0f) {
        _506 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _523 = (((max(0.0f, (1.0f - _499)) - _499) * _506) + _499);
        _524 = (((max(0.0f, (1.0f - _500)) - _500) * _506) + _500);
        _525 = (((max(0.0f, (1.0f - _501)) - _501) * _506) + _501);
      } else {
        _523 = _499;
        _524 = _500;
        _525 = _501;
      }
      _531 = _userImageAdjust.y + 1.0f;
      _535 = _userImageAdjust.x + 0.5f;
      _536 = ((_523 + -0.5f) * _531) + _535;
      _537 = ((_524 + -0.5f) * _531) + _535;
      _538 = ((_525 + -0.5f) * _531) + _535;
      _568 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _579 = exp2(log2(saturate(mad(_colorBlind0.z, _538, mad(_colorBlind0.y, _537, (_colorBlind0.x * _536))))) * _568);
      _580 = exp2(log2(saturate(mad(_colorBlind1.z, _538, mad(_colorBlind1.y, _537, (_colorBlind1.x * _536))))) * _568);
      _581 = exp2(log2(saturate(mad(_colorBlind2.z, _538, mad(_colorBlind2.y, _537, (_colorBlind2.x * _536))))) * _568);
    } else {
      _579 = _486;
      _580 = _487;
      _581 = _488;
    }
  } else {
    _579 = _207;
    _580 = _208;
    _581 = _209;
  }
  if (_etcParams.y > 1.0f) {
    _590 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _591 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _595 = saturate(1.0f - (dot(float2(_590, _591), float2(_590, _591)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _600 = (_595 * _579);
    _601 = (_595 * _580);
    _602 = (_595 * _581);
  } else {
    _600 = _579;
    _601 = _580;
    _602 = _581;
  }
  if (_226 && (_etcParams.z > 0.0f)) {
    _632 = select((_600 <= 0.0031308f), (_600 * 12.92f), (((pow(_600, 0.41666666f)) * 1.055f) + -0.055f));
    _633 = select((_601 <= 0.0031308f), (_601 * 12.92f), (((pow(_601, 0.41666666f)) * 1.055f) + -0.055f));
    _634 = select((_602 <= 0.0031308f), (_602 * 12.92f), (((pow(_602, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _632 = _600;
    _633 = _601;
    _634 = _602;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _639 = (float)((uint)((uint)(_210)));
    if (!(_639 < _viewDir.w)) {
      if (!(_639 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _648 = _632;
        _649 = _633;
        _650 = _634;
      } else {
        _648 = 0.0f;
        _649 = 0.0f;
        _650 = 0.0f;
      }
    } else {
      _648 = 0.0f;
      _649 = 0.0f;
      _650 = 0.0f;
    }
  } else {
    _648 = _632;
    _649 = _633;
    _650 = _634;
  }
  SV_Target.x = _648;
  SV_Target.y = _649;
  SV_Target.z = _650;
  SV_Target.w = _223;
  return SV_Target;
}
