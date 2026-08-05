struct PostProcessAbyssEnterGlid_CDStruct {
  float _startYPos;
  float _endYPos;
  float _cubeScale;
  float _cameraSpeed;
  float _cameraSinIntensity;
  float3 _screenFadeColor;
  float _screenFadeRatio;
  float3 _fogColor;
  float3 _ambientColor;
  float3 _globalColor;
  float3 _lightColor;
  float3 _centerGlowColor;
  float _centerGlowRadius;
  float _stardustIntensity;
  float _particleIntensity;
  float _particleEmissionWidth;
  float _anamorphicIntensity;
  float _anamorphicWidth;
  float _largeHalo;
  float _largeHaloIntensity;
  float _middleHaloIntensity;
  float _blubIntensity;
  float _streakGlowIntensity;
  float _centerpoint;
  float _tunnelTotal;
  float _cameraFov;
  float _cubeDistance;
  uint _screenWarpTex;
  float _screenWarpRatio;
};

struct BindlessParameters_PostProcessAbyssEnterGlid_CD {
  PostProcessAbyssEnterGlid_CDStruct BindlessParameters_PostProcessAbyssEnterGlid_CD;
};


Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

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

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};

typedef BindlessParameters_PostProcessAbyssEnterGlid_CD BindlessParameters_PostProcessAbyssEnterGlid_CD_t;
ConstantBuffer<BindlessParameters_PostProcessAbyssEnterGlid_CD_t> BindlessParameters_PostProcessAbyssEnterGlid_CD[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _21;
  float _29;
  int _32;
  float _40;
  float4 _43;
  float4 _50;
  float _67;
  float _68;
  float _69;
  float _70;
  float _73;
  float _76;
  float _79;
  uint _80;
  float _94;
  float _299;
  float _300;
  float _301;
  float _394;
  float _395;
  float _396;
  float _450;
  float _451;
  float _452;
  float _471;
  float _472;
  float _473;
  float _503;
  float _504;
  float _505;
  float _519;
  float _520;
  float _521;
  bool _97;
  float _103;
  float _122;
  float _138;
  float _154;
  float _155;
  float _159;
  float _162;
  float _165;
  float _172;
  float _179;
  float _186;
  float _187;
  float _188;
  float _189;
  float _190;
  float _191;
  float _192;
  float _208;
  float _224;
  float _240;
  float _241;
  float _242;
  float _243;
  float _244;
  float _261;
  float _262;
  float _263;
  float _264;
  float _267;
  float _270;
  float _274;
  float _278;
  float _282;
  float _302;
  float _314;
  float _326;
  float _338;
  float _345;
  float _352;
  float _359;
  float _365;
  float _366;
  float _368;
  float _370;
  float _372;
  float _377;
  float _398;
  float _400;
  float _403;
  float _406;
  float _409;
  float _415;
  float _457;
  float _460;
  float _466;
  float _508;
  _21 = WaveReadLaneFirst(_materialIndex);
  _29 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_21 < (uint)170000), _21, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._startYPos);
  _32 = WaveReadLaneFirst(_materialIndex);
  _40 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_32 < (uint)170000), _32, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._endYPos);
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
  _43 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));
  _50 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _67 = 1.0f - (saturate(exp2(log2(1.0f - saturate((_viewPos.y - _40) / (_29 - _40))) * 2.2f) * 7.0f) * 0.995f);
  _68 = _67 * _50.x;
  _69 = _67 * _50.y;
  _70 = _67 * _50.z;
  _73 = ((_43.x - _68) * _43.w) + _68;
  _76 = ((_43.y - _69) * _43.w) + _69;
  _79 = ((_43.z - _70) * _43.w) + _70;
  _80 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _94 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _80, 0)))).x) & 127)))) + 0.5f);
  } else {
    _94 = 1.0f;
  }
  _97 = (_localToneMappingParams.w > 0.0f);
  if (_97) {
    _103 = _exposure0.x * _userImageAdjust.z;
    _122 = exp2(_powerParams.x * log2(max(0.0f, (((_103 * max(0.0f, (((_73 * 1.70505f) - (_76 * 0.62179f)) - (_79 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
    _138 = exp2(log2(max(0.0f, (((_slopeParams.y * _103) * max(0.0f, (((_76 * 1.1408f) - (_73 * 0.13026f)) - (_79 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _154 = exp2(log2(max(0.0f, (((_slopeParams.z * _103) * max(0.0f, (((_73 * -0.024f) - (_76 * 0.12897f)) + (_79 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _155 = dot(float3(_122, _138, _154), float3(0.212671f, 0.71516f, 0.072169f));
    _159 = ((_122 - _155) * _powerParams.w) + _155;
    _162 = ((_138 - _155) * _powerParams.w) + _155;
    _165 = ((_154 - _155) * _powerParams.w) + _155;
    _172 = min(max(log2(mad(_165, 0.079223745f, mad(_162, 0.0784336f, (_159 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _179 = min(max(log2(mad(_165, 0.07916613f, mad(_162, 0.87846863f, (_159 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _186 = min(max(log2(mad(_165, 0.879143f, mad(_162, 0.0784336f, (_159 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _187 = _172 * 0.060606062f;
    _188 = _179 * 0.060606062f;
    _189 = _186 * 0.060606062f;
    _190 = _187 * _187;
    _191 = _188 * _188;
    _192 = _189 * _189;
    _208 = min(0.0f, (-0.0f - (((_172 * 0.0072181816f) + ((_190 * 0.4298f) + (((_190 * _190) * ((31.96f - (_172 * 2.4327273f)) + (_190 * 15.5f))) - ((_172 * 0.41624245f) * _190)))) + -0.00232f)));
    _224 = min(0.0f, (-0.0f - (((_179 * 0.0072181816f) + ((_191 * 0.4298f) + (((_191 * _191) * ((31.96f - (_179 * 2.4327273f)) + (_191 * 15.5f))) - ((_179 * 0.41624245f) * _191)))) + -0.00232f)));
    _240 = min(0.0f, (-0.0f - (((_186 * 0.0072181816f) + ((_192 * 0.4298f) + (((_192 * _192) * ((31.96f - (_186 * 2.4327273f)) + (_192 * 15.5f))) - ((_186 * 0.41624245f) * _192)))) + -0.00232f)));
    _241 = -0.0f - _208;
    _242 = -0.0f - _224;
    _243 = -0.0f - _240;
    _244 = dot(float3(_241, _242, _243), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _261 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _262 = -0.79999995f / _261;
      _263 = -1.2f / _261;
      _264 = 0.20000005f / _261;
      _267 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _270 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _274 = (_262 + 1.4f) + (_270 * (-0.39999998f - _262));
      _278 = (_263 + 1.6f) + (_270 * (-0.6f - _263));
      _282 = (_264 + 0.9f) + (_270 * (0.5f - _264));
      _299 = (lerp(_274, 1.0f, _267));  // [sem: blended]
      _300 = (lerp(_278, 1.2f, _267));  // [sem: blended]
      _301 = (lerp(_282, 1.4f, _267));  // [sem: blended]
    } else {
      _299 = 1.0f;  // [sem: blended]
      _300 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _301 = 1.4f;  // [sem: blended]
    }
    _302 = 1.0f - _300;
    _314 = ((exp2(log2(((saturate((_208 * _208) * _241) * _302) + _300) * _241) * _299) - _244) * _301) + _244;
    _326 = ((exp2(log2(((saturate((_224 * _224) * _242) * _302) + _300) * _242) * _299) - _244) * _301) + _244;
    _338 = ((exp2(log2(((saturate((_240 * _240) * _243) * _302) + _300) * _243) * _299) - _244) * _301) + _244;
    _345 = saturate(exp2(log2(mad(_338, -0.09902974f, mad(_326, -0.09802088f, (_314 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _352 = saturate(exp2(log2(mad(_338, -0.098961174f, mad(_326, 1.1519032f, (_314 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _359 = saturate(exp2(log2(mad(_338, 1.1510737f, mad(_326, -0.09804345f, (_314 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _365 = 1.0f - abs(_etcParams.w);
      _366 = saturate(_etcParams.w);  // [sem: expr_sat]
      _368 = (_365 * _345) + _366;
      _370 = (_365 * _352) + _366;
      _372 = (_365 * _359) + _366;
      if (_colorGradingParams.w > 0.0f) {
        _377 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _394 = (((max(0.0f, (1.0f - _368)) - _368) * _377) + _368);
        _395 = (((max(0.0f, (1.0f - _370)) - _370) * _377) + _370);
        _396 = (((max(0.0f, (1.0f - _372)) - _372) * _377) + _372);
      } else {
        _394 = _368;
        _395 = _370;
        _396 = _372;
      }
      _398 = _userImageAdjust.y + 1.0f;
      _400 = _userImageAdjust.x + 0.5f;
      _403 = ((_394 + -0.5f) * _398) + _400;
      _406 = ((_395 + -0.5f) * _398) + _400;
      _409 = ((_396 + -0.5f) * _398) + _400;
      _415 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _450 = exp2(log2(saturate(mad(_colorBlind0.z, _409, mad(_colorBlind0.y, _406, (_colorBlind0.x * _403))))) * _415);
      _451 = exp2(log2(saturate(mad(_colorBlind1.z, _409, mad(_colorBlind1.y, _406, (_colorBlind1.x * _403))))) * _415);
      _452 = exp2(log2(saturate(mad(_colorBlind2.z, _409, mad(_colorBlind2.y, _406, (_colorBlind2.x * _403))))) * _415);
    } else {
      _450 = _345;
      _451 = _352;
      _452 = _359;
    }
  } else {
    _450 = _73;
    _451 = _76;
    _452 = _79;
  }
  if (_etcParams.y > 1.0f) {
    _457 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _460 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _466 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_457, _460), float2(_457, _460))));  // [sem: expr_sat]
    _471 = (_466 * _450);
    _472 = (_466 * _451);
    _473 = (_466 * _452);
  } else {
    _471 = _450;
    _472 = _451;
    _473 = _452;
  }
  if (_97 && (_etcParams.z > 0.0f)) {
    _503 = select((_471 <= 0.0031308f), (_471 * 12.92f), (((pow(_471, 0.41666666f)) * 1.055f) + -0.055f));
    _504 = select((_472 <= 0.0031308f), (_472 * 12.92f), (((pow(_472, 0.41666666f)) * 1.055f) + -0.055f));
    _505 = select((_473 <= 0.0031308f), (_473 * 12.92f), (((pow(_473, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _503 = _471;
    _504 = _472;
    _505 = _473;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _508 = (float)((uint)((uint)(_80)));
    if (!(_508 < _viewDir.w)) {
      if (!(!(_508 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _519 = 0.0f;
        _520 = 0.0f;
        _521 = 0.0f;
      } else {
        _519 = _503;
        _520 = _504;
        _521 = _505;
      }
    } else {
      _519 = 0.0f;
      _520 = 0.0f;
      _521 = 0.0f;
    }
  } else {
    _519 = _503;
    _520 = _504;
    _521 = _505;
  }
  SV_Target.x = _519;
  SV_Target.y = _520;
  SV_Target.z = _521;
  SV_Target.w = _94;
  return SV_Target;
}
