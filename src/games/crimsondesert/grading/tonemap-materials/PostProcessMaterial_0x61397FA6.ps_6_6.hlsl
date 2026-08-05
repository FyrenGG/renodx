struct PostProcessZoneStruct {
  float3 _mainPosition;
  float _radius;
  float _ratio;
  float _progress;
  float _edgeSmoothness;
  float _edgeWidth;
  uint _maskColor;
  uint _noiseTex;
};

struct BindlessParameters_PostProcessZone {
  PostProcessZoneStruct BindlessParameters_PostProcessZone;
};


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

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};

typedef BindlessParameters_PostProcessZone BindlessParameters_PostProcessZone_t;
ConstantBuffer<BindlessParameters_PostProcessZone_t> BindlessParameters_PostProcessZone[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _20;
  float _26;
  float _29;
  float _31;
  float _32;
  float _33;
  float _38;
  float _50;
  int _53;
  float _61;
  float _65;
  float _69;
  float _83;
  float _93;
  float _104;
  int _107;
  float _115;
  int _118;
  float _126;
  int _129;
  float _137;
  int _140;
  float _148;
  float _151;
  float _167;
  float _176;
  float _185;
  float _194;
  uint _195;
  float _209;
  float _414;
  float _415;
  float _416;
  float _509;
  float _510;
  float _511;
  float _565;
  float _566;
  float _567;
  float _583;
  float _584;
  float _585;
  float _615;
  float _616;
  float _617;
  float _631;
  float _632;
  float _633;
  bool _212;
  float _218;
  float _237;
  float _253;
  float _269;
  float _270;
  float _274;
  float _277;
  float _280;
  float _287;
  float _294;
  float _301;
  float _302;
  float _303;
  float _304;
  float _305;
  float _306;
  float _307;
  float _323;
  float _339;
  float _355;
  float _356;
  float _357;
  float _358;
  float _359;
  float _376;
  float _377;
  float _378;
  float _379;
  float _382;
  float _385;
  float _389;
  float _393;
  float _397;
  float _417;
  float _429;
  float _441;
  float _453;
  float _460;
  float _467;
  float _474;
  float _480;
  float _481;
  float _483;
  float _485;
  float _487;
  float _492;
  float _513;
  float _515;
  float _518;
  float _521;
  float _524;
  float _530;
  float _570;
  float _572;
  float _578;
  float _620;
  float _637;
  float _641;
  float _645;
  _20 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _26 = (pow(_20.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _29 = (pow(_20.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _31 = (TEXCOORD.x * 2.0f) + -1.0f;
  _32 = TEXCOORD.y * 2.0f;
  _33 = 1.0f - _32;
  _38 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
  _50 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _38, mad((_invViewProj[3].y), _33, ((_invViewProj[3].x) * _31)));
  _53 = WaveReadLaneFirst(_materialIndex);
  _61 = WaveReadLaneFirst(BindlessParameters_PostProcessZone[((int)((uint)((uint)(select(((uint)_53 < (uint)170000), _53, 0))) + (uint)(0)))].BindlessParameters_PostProcessZone._mainPosition.x);
  _65 = WaveReadLaneFirst(BindlessParameters_PostProcessZone[((int)((uint)((uint)(select(((uint)_53 < (uint)170000), _53, 0))) + (uint)(0)))].BindlessParameters_PostProcessZone._mainPosition.y);
  _69 = WaveReadLaneFirst(BindlessParameters_PostProcessZone[((int)((uint)((uint)(select(((uint)_53 < (uint)170000), _53, 0))) + (uint)(0)))].BindlessParameters_PostProcessZone._mainPosition.z);
  _83 = _61 - (((_invViewProj[0].w) + mad((_invViewProj[0].z), _38, mad((_invViewProj[0].y), _33, ((_invViewProj[0].x) * _31)))) / _50);
  _93 = _69 - ((mad((_invViewProj[2].z), _38, mad((_invViewProj[2].y), _33, ((_invViewProj[2].x) * _31))) + (_invViewProj[2].w)) / _50);
  _104 = (_65 - ((mad((_invViewProj[1].z), _38, mad((_invViewProj[1].y), _33, ((_invViewProj[1].x) * _31))) + (_invViewProj[1].w)) / _50)) + 1.6f;
  _107 = WaveReadLaneFirst(_materialIndex);
  _115 = WaveReadLaneFirst(BindlessParameters_PostProcessZone[((int)((uint)((uint)(select(((uint)_107 < (uint)170000), _107, 0))) + (uint)(0)))].BindlessParameters_PostProcessZone._radius);
  _118 = WaveReadLaneFirst(_materialIndex);
  _126 = WaveReadLaneFirst(BindlessParameters_PostProcessZone[((int)((uint)((uint)(select(((uint)_118 < (uint)170000), _118, 0))) + (uint)(0)))].BindlessParameters_PostProcessZone._progress);
  _129 = WaveReadLaneFirst(_materialIndex);
  _137 = WaveReadLaneFirst(BindlessParameters_PostProcessZone[((int)((uint)((uint)(select(((uint)_129 < (uint)170000), _129, 0))) + (uint)(0)))].BindlessParameters_PostProcessZone._edgeSmoothness);
  _140 = WaveReadLaneFirst(_materialIndex);
  _148 = WaveReadLaneFirst(BindlessParameters_PostProcessZone[((int)((uint)((uint)(select(((uint)_140 < (uint)170000), _140, 0))) + (uint)(0)))].BindlessParameters_PostProcessZone._ratio);
  _151 = (pow(_20.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _167 = saturate(((min(max((1.0f - saturate(exp2(log2(sqrt(dot(float3(_83, _104, _93), float3(_83, _104, _93))) - (_126 * _115)) * _137))), 0.0f), 1.0f) + -1.0f) * _148) + 1.0f) * 10000.0f;
  _176 = exp2(log2(max(0.0f, (_151 + -0.8359375f)) / (18.851562f - (_151 * 18.6875f))) * 6.277395f) * _167;
  _185 = exp2(log2(max(0.0f, (_26 + -0.8359375f)) / (18.851562f - (_26 * 18.6875f))) * 6.277395f) * _167;
  _194 = exp2(log2(max(0.0f, (_29 + -0.8359375f)) / (18.851562f - (_29 * 18.6875f))) * 6.277395f) * _167;
  _195 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _209 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _195, 0)))).x) & 127)))) + 0.5f);
  } else {
    _209 = 1.0f;
  }
  _212 = (_localToneMappingParams.w > 0.0f);
  if (_212) {
    _218 = _exposure0.x * _userImageAdjust.z;
    _237 = exp2(_powerParams.x * log2(max(0.0f, (((_218 * max(0.0f, (((_176 * 1.70505f) - (_185 * 0.62179f)) - (_194 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
    _253 = exp2(log2(max(0.0f, (((_slopeParams.y * _218) * max(0.0f, (((_185 * 1.1408f) - (_176 * 0.13026f)) - (_194 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _269 = exp2(log2(max(0.0f, (((_slopeParams.z * _218) * max(0.0f, (((_176 * -0.024f) - (_185 * 0.12897f)) + (_194 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _270 = dot(float3(_237, _253, _269), float3(0.212671f, 0.71516f, 0.072169f));
    _274 = ((_237 - _270) * _powerParams.w) + _270;
    _277 = ((_253 - _270) * _powerParams.w) + _270;
    _280 = ((_269 - _270) * _powerParams.w) + _270;
    _287 = min(max(log2(mad(_280, 0.079223745f, mad(_277, 0.0784336f, (_274 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _294 = min(max(log2(mad(_280, 0.07916613f, mad(_277, 0.87846863f, (_274 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _301 = min(max(log2(mad(_280, 0.879143f, mad(_277, 0.0784336f, (_274 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _302 = _287 * 0.060606062f;
    _303 = _294 * 0.060606062f;
    _304 = _301 * 0.060606062f;
    _305 = _302 * _302;
    _306 = _303 * _303;
    _307 = _304 * _304;
    _323 = min(0.0f, (-0.0f - (((_287 * 0.0072181816f) + ((_305 * 0.4298f) + (((_305 * _305) * ((31.96f - (_287 * 2.4327273f)) + (_305 * 15.5f))) - ((_287 * 0.41624245f) * _305)))) + -0.00232f)));
    _339 = min(0.0f, (-0.0f - (((_294 * 0.0072181816f) + ((_306 * 0.4298f) + (((_306 * _306) * ((31.96f - (_294 * 2.4327273f)) + (_306 * 15.5f))) - ((_294 * 0.41624245f) * _306)))) + -0.00232f)));
    _355 = min(0.0f, (-0.0f - (((_301 * 0.0072181816f) + ((_307 * 0.4298f) + (((_307 * _307) * ((31.96f - (_301 * 2.4327273f)) + (_307 * 15.5f))) - ((_301 * 0.41624245f) * _307)))) + -0.00232f)));
    _356 = -0.0f - _323;
    _357 = -0.0f - _339;
    _358 = -0.0f - _355;
    _359 = dot(float3(_356, _357, _358), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _376 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _377 = -0.79999995f / _376;
      _378 = -1.2f / _376;
      _379 = 0.20000005f / _376;
      _382 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _385 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _389 = (_377 + 1.4f) + (_385 * (-0.39999998f - _377));
      _393 = (_378 + 1.6f) + (_385 * (-0.6f - _378));
      _397 = (_379 + 0.9f) + (_385 * (0.5f - _379));
      _414 = (lerp(_393, 1.2f, _382));  // [sem: blended]
      _415 = (lerp(_389, 1.0f, _382));  // [sem: blended]
      _416 = (lerp(_397, 1.4f, _382));  // [sem: blended]
    } else {
      _414 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _415 = 1.0f;  // [sem: blended]
      _416 = 1.4f;  // [sem: blended]
    }
    _417 = 1.0f - _414;
    _429 = ((exp2(log2(((saturate((_323 * _323) * _356) * _417) + _414) * _356) * _415) - _359) * _416) + _359;
    _441 = ((exp2(log2(((saturate((_339 * _339) * _357) * _417) + _414) * _357) * _415) - _359) * _416) + _359;
    _453 = ((exp2(log2(((saturate((_355 * _355) * _358) * _417) + _414) * _358) * _415) - _359) * _416) + _359;
    _460 = saturate(exp2(log2(mad(_453, -0.09902974f, mad(_441, -0.09802088f, (_429 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _467 = saturate(exp2(log2(mad(_453, -0.098961174f, mad(_441, 1.1519032f, (_429 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _474 = saturate(exp2(log2(mad(_453, 1.1510737f, mad(_441, -0.09804345f, (_429 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _480 = 1.0f - abs(_etcParams.w);
      _481 = saturate(_etcParams.w);  // [sem: expr_sat]
      _483 = (_480 * _460) + _481;
      _485 = (_480 * _467) + _481;
      _487 = (_480 * _474) + _481;
      if (_colorGradingParams.w > 0.0f) {
        _492 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _509 = (((max(0.0f, (1.0f - _483)) - _483) * _492) + _483);
        _510 = (((max(0.0f, (1.0f - _485)) - _485) * _492) + _485);
        _511 = (((max(0.0f, (1.0f - _487)) - _487) * _492) + _487);
      } else {
        _509 = _483;
        _510 = _485;
        _511 = _487;
      }
      _513 = _userImageAdjust.y + 1.0f;
      _515 = _userImageAdjust.x + 0.5f;
      _518 = ((_509 + -0.5f) * _513) + _515;
      _521 = ((_510 + -0.5f) * _513) + _515;
      _524 = ((_511 + -0.5f) * _513) + _515;
      _530 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _565 = exp2(log2(saturate(mad(_colorBlind0.z, _524, mad(_colorBlind0.y, _521, (_colorBlind0.x * _518))))) * _530);
      _566 = exp2(log2(saturate(mad(_colorBlind1.z, _524, mad(_colorBlind1.y, _521, (_colorBlind1.x * _518))))) * _530);
      _567 = exp2(log2(saturate(mad(_colorBlind2.z, _524, mad(_colorBlind2.y, _521, (_colorBlind2.x * _518))))) * _530);
    } else {
      _565 = _460;
      _566 = _467;
      _567 = _474;
    }
  } else {
    _565 = _176;
    _566 = _185;
    _567 = _194;
  }
  if (_etcParams.y > 1.0f) {
    _570 = abs(_31);
    _572 = abs(_32 + -1.0f);
    _578 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_570, _572), float2(_570, _572))));  // [sem: expr_sat]
    _583 = (_578 * _565);
    _584 = (_578 * _566);
    _585 = (_578 * _567);
  } else {
    _583 = _565;
    _584 = _566;
    _585 = _567;
  }
  if (_212 && (_etcParams.z > 0.0f)) {
    _615 = select((_583 <= 0.0031308f), (_583 * 12.92f), (((pow(_583, 0.41666666f)) * 1.055f) + -0.055f));
    _616 = select((_584 <= 0.0031308f), (_584 * 12.92f), (((pow(_584, 0.41666666f)) * 1.055f) + -0.055f));
    _617 = select((_585 <= 0.0031308f), (_585 * 12.92f), (((pow(_585, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _615 = _583;
    _616 = _584;
    _617 = _585;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _620 = (float)((uint)((uint)(_195)));
    if (!(_620 < _viewDir.w)) {
      if (!(!(_620 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _631 = 0.0f;
        _632 = 0.0f;
        _633 = 0.0f;
      } else {
        _631 = _615;
        _632 = _616;
        _633 = _617;
      }
    } else {
      _631 = 0.0f;
      _632 = 0.0f;
      _633 = 0.0f;
    }
  } else {
    _631 = _615;
    _632 = _616;
    _633 = _617;
  }
  _637 = exp2(log2(_631 * 0.0001f) * 0.15930176f);
  _641 = exp2(log2(_632 * 0.0001f) * 0.15930176f);
  _645 = exp2(log2(_633 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_637 * 18.6875f) + 1.0f)) * ((_637 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_641 * 18.6875f) + 1.0f)) * ((_641 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_645 * 18.6875f) + 1.0f)) * ((_645 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _209;
  return SV_Target;
}
