struct PostProcessFisheye_DistortionStruct {
  float _maxPower;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b16, space35) {
  float4 _time : packoffset(c000.x);
  float4 _timeNoScale : packoffset(c001.x);
  uint4 _frameNumber : packoffset(c002.x);
  float4 _screenSizeAndInvSize : packoffset(c003.x);
  float4 _bufferSizeAndInvSize : packoffset(c004.x);
  float4 _hiZUVScaleAndInvScale : packoffset(c005.x);
  float4 _resolutionScale : packoffset(c006.x);
  float4 _temporalReprojectionParams : packoffset(c007.x);
  float4 _viewPos : packoffset(c008.x);
  float4 _viewDir : packoffset(c009.x);
  column_major float4x4 _viewProj : packoffset(c010.x);
  column_major float4x4 _viewProjNoJitter : packoffset(c014.x);
  column_major float4x4 _viewProjRelative : packoffset(c018.x);
  column_major float4x4 _viewProjRelativeNoJitter : packoffset(c022.x);
  column_major float4x4 _invViewProj : packoffset(c026.x);
  column_major float4x4 _invViewProjRelative : packoffset(c030.x);
  column_major float4x4 _invViewProjRelativeNoJitter : packoffset(c034.x);
  column_major float4x4 _viewProjRelativeOrtho : packoffset(c038.x);
  float4 _sunDirection : packoffset(c042.x);
  float4 _moonDirection : packoffset(c043.x);
  float4 _moonRight : packoffset(c044.x);
  float4 _moonUp : packoffset(c045.x);
  float4 _ssaoRandomDirection[16] : packoffset(c046.x);
  column_major float4x4 _view : packoffset(c062.x);
  column_major float4x4 _viewRelative : packoffset(c066.x);
  column_major float4x4 _viewRelativePrev : packoffset(c070.x);
  column_major float4x4 _proj : packoffset(c074.x);
  column_major float4x4 _projNoJitter : packoffset(c078.x);
  float4 _viewPosPrev : packoffset(c082.x);
  column_major float4x4 _viewProjNoJitterPrev : packoffset(c083.x);
  column_major float4x4 _viewProjRelativePrev : packoffset(c087.x);
  column_major float4x4 _viewProjRelativeNoJitterPrev : packoffset(c091.x);
  column_major float4x4 _invViewProjPrev : packoffset(c095.x);
  column_major float4x4 _invViewProjRelativePrev : packoffset(c099.x);
  column_major float4x4 _projToPrevProj : packoffset(c103.x);
  column_major float4x4 _projToPrevProjNoTranslation : packoffset(c107.x);
  column_major float4x4 _viewProjectionTexScale : packoffset(c111.x);
  float4 _temporalAAJitter : packoffset(c115.x);
  float4 _temporalAAJitterParams : packoffset(c116.x);
  float4 _frustumPlanes[6] : packoffset(c117.x);
  float4 _frustumPlanesPrev[6] : packoffset(c123.x);
  float4 _frustumCornerDirs[4] : packoffset(c129.x);
  float4 _screenPercentage : packoffset(c133.x);
  float4 _nearFarProj : packoffset(c134.x);
  float4 _renderingOriginPos : packoffset(c135.x);
  float4 _renderingOriginPosPrev : packoffset(c136.x);
  float4 _lodMaskRenderRate : packoffset(c137.x);
  float4 _terrainNormalParams : packoffset(c138.x);
  int4 _hiZMapInfo : packoffset(c139.x);
  int4 _hiZMapInfoCurrent : packoffset(c140.x);
  float4 _treeParams : packoffset(c141.x);
  uint4 _clusterSize : packoffset(c142.x);
  uint4 _globalLightParams : packoffset(c143.x);
  float4 _bevelParams : packoffset(c144.x);
  float4 _variableRateShadingParams : packoffset(c145.x);
  float4 _cavityParams : packoffset(c146.x);
  float4 _customRenderPassSizeInvSize : packoffset(c147.x);
  uint4 _impostorParams : packoffset(c148.x);
  float4 _clusterDecalSizeAndInvSize : packoffset(c149.x);
  uint4 _globalWindParams : packoffset(c150.x);
  float4 _windFluidVolumeParams : packoffset(c151.x);
  float4 _windFluidTextureParams : packoffset(c152.x);
  float4 _raytracingAccelerationStructureOrigin : packoffset(c153.x);
  float4 _debugBaseColor : packoffset(c154.x);
  float4 _debugNormal : packoffset(c155.x);
  float4 _debugMaterial : packoffset(c156.x);
  float4 _debugMultiplier : packoffset(c157.x);
  uint2 _debugBaseColor16 : packoffset(c158.x);
  uint2 _debugNormal16 : packoffset(c158.z);
  uint2 _debugMaterial16 : packoffset(c159.x);
  uint2 _debugMultiplier16 : packoffset(c159.z);
  float4 _debugCursorWorldPos : packoffset(c160.x);
  uint4 _debugRenderToggle01 : packoffset(c161.x);
  uint4 _debugTreeShapeVariation : packoffset(c162.x);
  float4 _positionBasedDynamicsParameter : packoffset(c163.x);
  float _effectiveMetallicForVelvet : packoffset(c164.x);
  float _debugCharacterSnowRate : packoffset(c164.y);
  uint _systemRandomSeed : packoffset(c164.z);
  uint _skinnedMeshDebugFlag : packoffset(c164.w);
  float4 _viewPosShifted : packoffset(c165.x);
  float4 _viewPosShiftedPrev : packoffset(c166.x);
  float4 _viewTileRelativePos : packoffset(c167.x);
  float4 _viewTileRelativePosPrev : packoffset(c168.x);
  int2 _viewTileIndex : packoffset(c169.x);
  int2 _viewTileIndexPrev : packoffset(c169.z);
  float4 _worldVolume : packoffset(c170.x);
  float3 _diffViewPosAccurate : packoffset(c171.x);
  uint _isPhotosensitiveMode_isAllolwBlood : packoffset(c171.w);
  float _earthRadius : packoffset(c172.x);
  float3 _sceneConstantDummy : packoffset(c172.y);
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

struct BindlessParameters_PostProcessFisheye_Distortion {
  PostProcessFisheye_DistortionStruct BindlessParameters_PostProcessFisheye_Distortion;
};

typedef BindlessParameters_PostProcessFisheye_Distortion BindlessParameters_PostProcessFisheye_Distortion_t;
ConstantBuffer<BindlessParameters_PostProcessFisheye_Distortion_t> BindlessParameters_PostProcessFisheye_Distortion[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float _31;
  float _32;
  float _33;
  float _34;
  float _35;
  float _36;
  float _37;
  float _38;
  int _39;
  float _47;
  bool _48;
  float _56;
  float _94;
  float _95;
  float _153;
  float _358;
  float _359;
  float _360;
  float _453;
  float _454;
  float _455;
  float _509;
  float _510;
  float _511;
  float _530;
  float _531;
  float _532;
  float _562;
  float _563;
  float _564;
  float _578;
  float _579;
  float _580;
  float _58;
  float _60;
  float _68;
  float _76;
  float _79;
  float _88;
  float4 _100;
  float _110;
  float _111;
  float _112;
  float _134;
  float _135;
  float _136;
  uint _140;
  bool _156;
  float _162;
  float _211;
  float _212;
  float _213;
  float _215;
  float _222;
  float _223;
  float _224;
  float _243;
  float _244;
  float _245;
  float _246;
  float _247;
  float _248;
  float _249;
  float _250;
  float _251;
  float _297;
  float _298;
  float _299;
  float _300;
  float _301;
  float _302;
  float _303;
  float _320;
  float _321;
  float _322;
  float _323;
  float _329;
  float _332;
  float _339;
  float _340;
  float _341;
  float _370;
  float _395;
  float _396;
  float _397;
  float _416;
  float _417;
  float _418;
  float _424;
  float _428;
  float _429;
  float _430;
  float _431;
  float _436;
  float _461;
  float _465;
  float _466;
  float _467;
  float _468;
  float _498;
  float _520;
  float _521;
  float _525;
  float _569;
  float _590;
  float _591;
  float _592;
  _31 = (_destTargetSizAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x;
  _32 = (_destTargetSizAndInv.y * (1.0f - TEXCOORD.y)) / _srcTargetSizeAndInv.x;
  _33 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _34 = 0.5f / _33;
  _35 = _31 + -0.5f;
  _36 = _32 - _34;
  _37 = dot(float2(_35, _36), float2(_35, _36));
  _38 = sqrt(_37);
  _39 = WaveReadLaneFirst(_materialIndex);
  _47 = WaveReadLaneFirst(BindlessParameters_PostProcessFisheye_Distortion[((int)((uint)((uint)(select(((uint)_39 < (uint)170000), _39, 0))) + (uint)(0)))].BindlessParameters_PostProcessFisheye_Distortion._maxPower);
  _48 = (_47 > 0.0f);
  if (_48) {
    _56 = sqrt(dot(float2(0.5f, _34), float2(0.5f, _34)));
  } else {
    if (!(_33 < 1.0f)) {
      _56 = _34;
    } else {
      _56 = 0.5f;
    }
  }
  if (_48) {
    _58 = rsqrt(_37);  // [sem: rsqrt_val]
    _60 = tan(_47 * _38);
    _68 = tan(_56 * _47);
    _94 = (((((_56 * _35) * _58) * _60) / _68) + 0.5f);
    _95 = (((((_56 * _36) * _58) * _60) / _68) + _34);
  } else {
    if (_47 < 0.0f) {
      _76 = rsqrt(_37);  // [sem: rsqrt_val]
      _79 = atan((_47 * _38) * -10.0f);
      _88 = atan((_47 * -10.0f) * _56);
      _94 = (((((_56 * _35) * _76) * _79) / _88) + 0.5f);
      _95 = (((((_56 * _36) * _76) * _79) / _88) + _34);
    } else {
      _94 = _31;
      _95 = _32;
    }
  }
  _100 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(_94, (1.0f - (_95 * _33))));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _110 = (pow(_100.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _111 = (pow(_100.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _112 = (pow(_100.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _134 = exp2(log2(max(0.0f, (_110 + -0.8359375f)) / (18.851562f - (_110 * 18.6875f))) * 6.277395f);
  _135 = exp2(log2(max(0.0f, (_111 + -0.8359375f)) / (18.851562f - (_111 * 18.6875f))) * 6.277395f);
  _136 = exp2(log2(max(0.0f, (_112 + -0.8359375f)) / (18.851562f - (_112 * 18.6875f))) * 6.277395f);
  _140 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _153 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _140, 0)))).x) & 127)))) + 0.5f);
  } else {
    _153 = 1.0f;
  }
  _156 = (_localToneMappingParams.w > 0.0f);
  if (_156) {
    _162 = _userImageAdjust.z * _exposure0.x;
    _211 = exp2(log2(max(0.0f, (((_162 * max(0.0f, (((_134 * 17050.5f) - (_135 * 6217.9f)) - (_136 * 832.6f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _212 = exp2(log2(max(0.0f, (((max(0.0f, (((_135 * 11408.0f) - (_134 * 1302.6001f)) - (_136 * 105.5f))) * _162) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _213 = exp2(log2(max(0.0f, (((max(0.0f, (((_134 * -240.0f) - (_135 * 1289.7f)) + (_136 * 11529.699f))) * _162) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _215 = dot(float3(_211, _212, _213), float3(0.212671f, 0.71516f, 0.072169f));
    _222 = ((_211 - _215) * _powerParams.w) + _215;
    _223 = ((_212 - _215) * _powerParams.w) + _215;
    _224 = ((_213 - _215) * _powerParams.w) + _215;
    _243 = min(max(log2(mad(_224, 0.079223745f, mad(_223, 0.0784336f, (_222 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _244 = min(max(log2(mad(_224, 0.07916613f, mad(_223, 0.87846863f, (_222 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _245 = min(max(log2(mad(_224, 0.879143f, mad(_223, 0.0784336f, (_222 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _246 = _243 * 0.060606062f;
    _247 = _244 * 0.060606062f;
    _248 = _245 * 0.060606062f;
    _249 = _246 * _246;
    _250 = _247 * _247;
    _251 = _248 * _248;
    _297 = min(0.0f, (-0.0f - (((_243 * 0.0072181816f) + ((_249 * 0.4298f) + (((_249 * _249) * ((31.96f - (_243 * 2.4327273f)) + (_249 * 15.5f))) - ((_243 * 0.41624245f) * _249)))) + -0.00232f)));
    _298 = min(0.0f, (-0.0f - (((_244 * 0.0072181816f) + ((_250 * 0.4298f) + (((_250 * _250) * ((31.96f - (_244 * 2.4327273f)) + (_250 * 15.5f))) - ((_244 * 0.41624245f) * _250)))) + -0.00232f)));
    _299 = min(0.0f, (-0.0f - (((_245 * 0.0072181816f) + ((_251 * 0.4298f) + (((_251 * _251) * ((31.96f - (_245 * 2.4327273f)) + (_251 * 15.5f))) - ((_245 * 0.41624245f) * _251)))) + -0.00232f)));
    _300 = -0.0f - _297;
    _301 = -0.0f - _298;
    _302 = -0.0f - _299;
    _303 = dot(float3(_300, _301, _302), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _320 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _321 = -0.79999995f / _320;
      _322 = -1.2f / _320;
      _323 = 0.20000005f / _320;
      _329 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _332 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _339 = (_321 + 1.4f) + (_332 * (-0.39999998f - _321));
      _340 = (_322 + 1.6f) + (_332 * (-0.6f - _322));
      _341 = (_323 + 0.9f) + (_332 * (0.5f - _323));
      _358 = (lerp(_340, 1.2f, _329));  // [sem: blended]
      _359 = (lerp(_339, 1.0f, _329));  // [sem: blended]
      _360 = (lerp(_341, 1.4f, _329));  // [sem: blended]
    } else {
      _358 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _359 = 1.0f;  // [sem: blended]
      _360 = 1.4f;  // [sem: blended]
    }
    _370 = 1.0f - _358;
    _395 = ((exp2(log2(((saturate((_297 * _297) * _300) * _370) + _358) * _300) * _359) - _303) * _360) + _303;
    _396 = ((exp2(log2(((saturate((_298 * _298) * _301) * _370) + _358) * _301) * _359) - _303) * _360) + _303;
    _397 = ((exp2(log2(((saturate((_299 * _299) * _302) * _370) + _358) * _302) * _359) - _303) * _360) + _303;
    _416 = saturate(exp2(log2(mad(_397, -0.09902974f, mad(_396, -0.09802088f, (_395 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _417 = saturate(exp2(log2(mad(_397, -0.098961174f, mad(_396, 1.1519032f, (_395 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _418 = saturate(exp2(log2(mad(_397, 1.1510737f, mad(_396, -0.09804345f, (_395 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _424 = 1.0f - abs(_etcParams.w);
      _428 = saturate(_etcParams.w);  // [sem: expr_sat]
      _429 = (_424 * _416) + _428;
      _430 = (_424 * _417) + _428;
      _431 = (_424 * _418) + _428;
      if (_colorGradingParams.w > 0.0f) {
        _436 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _453 = (((max(0.0f, (1.0f - _429)) - _429) * _436) + _429);
        _454 = (((max(0.0f, (1.0f - _430)) - _430) * _436) + _430);
        _455 = (((max(0.0f, (1.0f - _431)) - _431) * _436) + _431);
      } else {
        _453 = _429;
        _454 = _430;
        _455 = _431;
      }
      _461 = _userImageAdjust.y + 1.0f;
      _465 = _userImageAdjust.x + 0.5f;
      _466 = ((_453 + -0.5f) * _461) + _465;
      _467 = ((_454 + -0.5f) * _461) + _465;
      _468 = ((_455 + -0.5f) * _461) + _465;
      _498 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _509 = exp2(log2(saturate(mad(_colorBlind0.z, _468, mad(_colorBlind0.y, _467, (_colorBlind0.x * _466))))) * _498);
      _510 = exp2(log2(saturate(mad(_colorBlind1.z, _468, mad(_colorBlind1.y, _467, (_colorBlind1.x * _466))))) * _498);
      _511 = exp2(log2(saturate(mad(_colorBlind2.z, _468, mad(_colorBlind2.y, _467, (_colorBlind2.x * _466))))) * _498);
    } else {
      _509 = _416;
      _510 = _417;
      _511 = _418;
    }
  } else {
    _509 = (_134 * 10000.0f);
    _510 = (_135 * 10000.0f);
    _511 = (_136 * 10000.0f);
  }
  if (_etcParams.y > 1.0f) {
    _520 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _521 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _525 = saturate(1.0f - (dot(float2(_520, _521), float2(_520, _521)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _530 = (_525 * _509);
    _531 = (_525 * _510);
    _532 = (_525 * _511);
  } else {
    _530 = _509;
    _531 = _510;
    _532 = _511;
  }
  if (_156 && (_etcParams.z > 0.0f)) {
    _562 = select((_530 <= 0.0031308f), (_530 * 12.92f), (((pow(_530, 0.41666666f)) * 1.055f) + -0.055f));
    _563 = select((_531 <= 0.0031308f), (_531 * 12.92f), (((pow(_531, 0.41666666f)) * 1.055f) + -0.055f));
    _564 = select((_532 <= 0.0031308f), (_532 * 12.92f), (((pow(_532, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _562 = _530;
    _563 = _531;
    _564 = _532;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _569 = (float)((uint)((uint)(_140)));
    if (!(_569 < _viewDir.w)) {
      if (!(_569 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _578 = _562;
        _579 = _563;
        _580 = _564;
      } else {
        _578 = 0.0f;
        _579 = 0.0f;
        _580 = 0.0f;
      }
    } else {
      _578 = 0.0f;
      _579 = 0.0f;
      _580 = 0.0f;
    }
  } else {
    _578 = _562;
    _579 = _563;
    _580 = _564;
  }
  _590 = exp2(log2(_578 * 0.0001f) * 0.15930176f);
  _591 = exp2(log2(_579 * 0.0001f) * 0.15930176f);
  _592 = exp2(log2(_580 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_590 * 18.6875f) + 1.0f)) * ((_590 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_591 * 18.6875f) + 1.0f)) * ((_591 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_592 * 18.6875f) + 1.0f)) * ((_592 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _153;
  return SV_Target;
}
