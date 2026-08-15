struct PostProcessGhost_CDStruct {
  float _ghostFXRatio;
  uint _ghostNoiseTex;
  float _ghostNoiseIntensity;
  float _ghostFXColorInnerBrightness;
  uint _ghostFXColor1;
  uint _ghostFXColor2;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t64, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t71, space36);

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

struct BindlessParameters_PostProcessGhost_CD {
  PostProcessGhost_CDStruct BindlessParameters_PostProcessGhost_CD;
};

typedef BindlessParameters_PostProcessGhost_CD BindlessParameters_PostProcessGhost_CD_t;
ConstantBuffer<BindlessParameters_PostProcessGhost_CD_t> BindlessParameters_PostProcessGhost_CD[] : register(b0, space100);

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
  float4 _32;
  float _42;
  float _43;
  float _44;
  float _66;
  float _67;
  float _68;
  float _69;
  float _70;
  float _71;
  int _72;
  float _80;
  float _227;
  float _228;
  float _229;
  float _243;
  float _448;
  float _449;
  float _450;
  float _543;
  float _544;
  float _545;
  float _599;
  float _600;
  float _601;
  float _620;
  float _621;
  float _622;
  float _652;
  float _653;
  float _654;
  float _668;
  float _669;
  float _670;
  float _84;
  int _91;
  int _99;
  int _108;
  float _116;
  int _117;
  float _125;
  float _127;
  float _130;
  float _131;
  int _167;
  float _175;
  float4 _178;
  float _188;
  float _189;
  float _190;
  float _219;
  uint _230;
  bool _246;
  float _252;
  float _301;
  float _302;
  float _303;
  float _305;
  float _312;
  float _313;
  float _314;
  float _333;
  float _334;
  float _335;
  float _336;
  float _337;
  float _338;
  float _339;
  float _340;
  float _341;
  float _387;
  float _388;
  float _389;
  float _390;
  float _391;
  float _392;
  float _393;
  float _410;
  float _411;
  float _412;
  float _413;
  float _419;
  float _422;
  float _429;
  float _430;
  float _431;
  float _460;
  float _485;
  float _486;
  float _487;
  float _506;
  float _507;
  float _508;
  float _514;
  float _518;
  float _519;
  float _520;
  float _521;
  float _526;
  float _551;
  float _555;
  float _556;
  float _557;
  float _558;
  float _588;
  float _610;
  float _611;
  float _615;
  float _659;
  float _680;
  float _681;
  float _682;
  _32 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _42 = (pow(_32.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _43 = (pow(_32.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _44 = (pow(_32.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _66 = exp2(log2(max(0.0f, (_42 + -0.8359375f)) / (18.851562f - (_42 * 18.6875f))) * 6.277395f);
  _67 = exp2(log2(max(0.0f, (_43 + -0.8359375f)) / (18.851562f - (_43 * 18.6875f))) * 6.277395f);
  _68 = exp2(log2(max(0.0f, (_44 + -0.8359375f)) / (18.851562f - (_44 * 18.6875f))) * 6.277395f);
  _69 = _66 * 10000.0f;
  _70 = _67 * 10000.0f;
  _71 = _68 * 10000.0f;
  _72 = WaveReadLaneFirst(_materialIndex);
  _80 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_72 < (uint)170000), _72, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
  if (!(!(_80 >= 0.001f))) {
    _84 = 4.0f / (_srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y);
    _91 = WaveReadLaneFirst(_materialIndex);
    _99 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_91 < (uint)170000), _91, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostNoiseTex);
    _108 = WaveReadLaneFirst(_materialIndex);
    _116 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_108 < (uint)170000), _108, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
    _117 = WaveReadLaneFirst(_materialIndex);
    _125 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_117 < (uint)170000), _117, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostNoiseIntensity);
    _127 = _125 * (_116 * (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_99 < (uint)65000), _99, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((TEXCOORD.x * 3.0f) * _84), ((_time.x * 0.3f) + (_84 * TEXCOORD.y)))))).y));
    _130 = (_127 * 0.01f) + TEXCOORD.x;
    _131 = (_127 * 0.05f) + TEXCOORD.y;
    _167 = WaveReadLaneFirst(_materialIndex);
    _175 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_167 < (uint)170000), _167, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _178 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _188 = (pow(_178.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _189 = (pow(_178.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _190 = (pow(_178.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _219 = (saturate(ceil(((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _130) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _131) + -0.5f))), 0)))).x) & 16777215)))) * 5.960465e-08f))) + 0.05f) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _130)), ((int)(_customRenderPassSizeInvSize.y * _131)), 0)))).x))))) * 10000.0f) * _175;
    _227 = (((exp2(log2(max(0.0f, (_188 + -0.8359375f)) / (18.851562f - (_188 * 18.6875f))) * 6.277395f) - _66) * _219) + _69);
    _228 = (((exp2(log2(max(0.0f, (_189 + -0.8359375f)) / (18.851562f - (_189 * 18.6875f))) * 6.277395f) - _67) * _219) + _70);
    _229 = (((exp2(log2(max(0.0f, (_190 + -0.8359375f)) / (18.851562f - (_190 * 18.6875f))) * 6.277395f) - _68) * _219) + _71);
  } else {
    _227 = _69;
    _228 = _70;
    _229 = _71;
  }
  _230 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _243 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _230, 0)))).x) & 127)))) + 0.5f);
  } else {
    _243 = 1.0f;
  }
  _246 = (_localToneMappingParams.w > 0.0f);
  if (_246) {
    _252 = _userImageAdjust.z * _exposure0.x;
    _301 = exp2(log2(max(0.0f, (((_252 * max(0.0f, (((_227 * 1.70505f) - (_228 * 0.62179f)) - (_229 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _302 = exp2(log2(max(0.0f, (((max(0.0f, (((_228 * 1.1408f) - (_227 * 0.13026f)) - (_229 * 0.01055f))) * _252) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _303 = exp2(log2(max(0.0f, (((max(0.0f, (((_227 * -0.024f) - (_228 * 0.12897f)) + (_229 * 1.15297f))) * _252) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _305 = dot(float3(_301, _302, _303), float3(0.212671f, 0.71516f, 0.072169f));
    _312 = ((_301 - _305) * _powerParams.w) + _305;
    _313 = ((_302 - _305) * _powerParams.w) + _305;
    _314 = ((_303 - _305) * _powerParams.w) + _305;
    _333 = min(max(log2(mad(_314, 0.079223745f, mad(_313, 0.0784336f, (_312 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _334 = min(max(log2(mad(_314, 0.07916613f, mad(_313, 0.87846863f, (_312 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _335 = min(max(log2(mad(_314, 0.879143f, mad(_313, 0.0784336f, (_312 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _336 = _333 * 0.060606062f;
    _337 = _334 * 0.060606062f;
    _338 = _335 * 0.060606062f;
    _339 = _336 * _336;
    _340 = _337 * _337;
    _341 = _338 * _338;
    _387 = min(0.0f, (-0.0f - (((_333 * 0.0072181816f) + ((_339 * 0.4298f) + (((_339 * _339) * ((31.96f - (_333 * 2.4327273f)) + (_339 * 15.5f))) - ((_333 * 0.41624245f) * _339)))) + -0.00232f)));
    _388 = min(0.0f, (-0.0f - (((_334 * 0.0072181816f) + ((_340 * 0.4298f) + (((_340 * _340) * ((31.96f - (_334 * 2.4327273f)) + (_340 * 15.5f))) - ((_334 * 0.41624245f) * _340)))) + -0.00232f)));
    _389 = min(0.0f, (-0.0f - (((_335 * 0.0072181816f) + ((_341 * 0.4298f) + (((_341 * _341) * ((31.96f - (_335 * 2.4327273f)) + (_341 * 15.5f))) - ((_335 * 0.41624245f) * _341)))) + -0.00232f)));
    _390 = -0.0f - _387;
    _391 = -0.0f - _388;
    _392 = -0.0f - _389;
    _393 = dot(float3(_390, _391, _392), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _410 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _411 = -0.79999995f / _410;
      _412 = -1.2f / _410;
      _413 = 0.20000005f / _410;
      _419 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _422 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _429 = (_411 + 1.4f) + (_422 * (-0.39999998f - _411));
      _430 = (_412 + 1.6f) + (_422 * (-0.6f - _412));
      _431 = (_413 + 0.9f) + (_422 * (0.5f - _413));
      _448 = (lerp(_430, 1.2f, _419));  // [sem: blended]
      _449 = (lerp(_429, 1.0f, _419));  // [sem: blended]
      _450 = (lerp(_431, 1.4f, _419));  // [sem: blended]
    } else {
      _448 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _449 = 1.0f;  // [sem: blended]
      _450 = 1.4f;  // [sem: blended]
    }
    _460 = 1.0f - _448;
    _485 = ((exp2(log2(((saturate((_387 * _387) * _390) * _460) + _448) * _390) * _449) - _393) * _450) + _393;
    _486 = ((exp2(log2(((saturate((_388 * _388) * _391) * _460) + _448) * _391) * _449) - _393) * _450) + _393;
    _487 = ((exp2(log2(((saturate((_389 * _389) * _392) * _460) + _448) * _392) * _449) - _393) * _450) + _393;
    _506 = saturate(exp2(log2(mad(_487, -0.09902974f, mad(_486, -0.09802088f, (_485 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _507 = saturate(exp2(log2(mad(_487, -0.098961174f, mad(_486, 1.1519032f, (_485 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _508 = saturate(exp2(log2(mad(_487, 1.1510737f, mad(_486, -0.09804345f, (_485 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _514 = 1.0f - abs(_etcParams.w);
      _518 = saturate(_etcParams.w);  // [sem: expr_sat]
      _519 = (_514 * _506) + _518;
      _520 = (_514 * _507) + _518;
      _521 = (_514 * _508) + _518;
      if (_colorGradingParams.w > 0.0f) {
        _526 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _543 = (((max(0.0f, (1.0f - _519)) - _519) * _526) + _519);
        _544 = (((max(0.0f, (1.0f - _520)) - _520) * _526) + _520);
        _545 = (((max(0.0f, (1.0f - _521)) - _521) * _526) + _521);
      } else {
        _543 = _519;
        _544 = _520;
        _545 = _521;
      }
      _551 = _userImageAdjust.y + 1.0f;
      _555 = _userImageAdjust.x + 0.5f;
      _556 = ((_543 + -0.5f) * _551) + _555;
      _557 = ((_544 + -0.5f) * _551) + _555;
      _558 = ((_545 + -0.5f) * _551) + _555;
      _588 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _599 = exp2(log2(saturate(mad(_colorBlind0.z, _558, mad(_colorBlind0.y, _557, (_colorBlind0.x * _556))))) * _588);
      _600 = exp2(log2(saturate(mad(_colorBlind1.z, _558, mad(_colorBlind1.y, _557, (_colorBlind1.x * _556))))) * _588);
      _601 = exp2(log2(saturate(mad(_colorBlind2.z, _558, mad(_colorBlind2.y, _557, (_colorBlind2.x * _556))))) * _588);
    } else {
      _599 = _506;
      _600 = _507;
      _601 = _508;
    }
  } else {
    _599 = _227;
    _600 = _228;
    _601 = _229;
  }
  if (_etcParams.y > 1.0f) {
    _610 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _611 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _615 = saturate(1.0f - (dot(float2(_610, _611), float2(_610, _611)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _620 = (_615 * _599);
    _621 = (_615 * _600);
    _622 = (_615 * _601);
  } else {
    _620 = _599;
    _621 = _600;
    _622 = _601;
  }
  if (_246 && (_etcParams.z > 0.0f)) {
    _652 = select((_620 <= 0.0031308f), (_620 * 12.92f), (((pow(_620, 0.41666666f)) * 1.055f) + -0.055f));
    _653 = select((_621 <= 0.0031308f), (_621 * 12.92f), (((pow(_621, 0.41666666f)) * 1.055f) + -0.055f));
    _654 = select((_622 <= 0.0031308f), (_622 * 12.92f), (((pow(_622, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _652 = _620;
    _653 = _621;
    _654 = _622;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _659 = (float)((uint)((uint)(_230)));
    if (!(_659 < _viewDir.w)) {
      if (!(_659 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _668 = _652;
        _669 = _653;
        _670 = _654;
      } else {
        _668 = 0.0f;
        _669 = 0.0f;
        _670 = 0.0f;
      }
    } else {
      _668 = 0.0f;
      _669 = 0.0f;
      _670 = 0.0f;
    }
  } else {
    _668 = _652;
    _669 = _653;
    _670 = _654;
  }
  _680 = exp2(log2(_668 * 0.0001f) * 0.15930176f);
  _681 = exp2(log2(_669 * 0.0001f) * 0.15930176f);
  _682 = exp2(log2(_670 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_680 * 18.6875f) + 1.0f)) * ((_680 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_681 * 18.6875f) + 1.0f)) * ((_681 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_682 * 18.6875f) + 1.0f)) * ((_682 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _243;
  return SV_Target;
}
