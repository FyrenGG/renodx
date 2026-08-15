struct PostProcessDirectionalBlurStruct {
  float _intensity;
  float _noiseStrength;
  float _direction;
  float _noiseScale;
  uint _noiseTexture;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

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

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};

struct BindlessParameters_PostProcessDirectionalBlur {
  PostProcessDirectionalBlurStruct BindlessParameters_PostProcessDirectionalBlur;
};

typedef BindlessParameters_PostProcessDirectionalBlur BindlessParameters_PostProcessDirectionalBlur_t;
ConstantBuffer<BindlessParameters_PostProcessDirectionalBlur_t> BindlessParameters_PostProcessDirectionalBlur[] : register(b0, space100);

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
  int _18;
  float _26;
  int _29;
  int _37;
  int _46;
  float _54;
  int _58;
  float _66;
  int _67;
  float _75;
  float _77;
  float _78;
  float _79;
  int _80;
  float _202;
  float _407;
  float _408;
  float _409;
  float _502;
  float _503;
  float _504;
  float _558;
  float _559;
  float _560;
  float _579;
  float _580;
  float _581;
  float _611;
  float _612;
  float _613;
  float _627;
  float _628;
  float _629;
  float _83;
  float _84;
  float _87;
  float _88;
  float4 _93;
  float _103;
  float _104;
  float _105;
  float4 _132;
  float _142;
  float _143;
  float _144;
  float _171;
  float _174;
  float _177;
  int _178;
  uint _189;
  bool _205;
  float _211;
  float _260;
  float _261;
  float _262;
  float _264;
  float _271;
  float _272;
  float _273;
  float _292;
  float _293;
  float _294;
  float _295;
  float _296;
  float _297;
  float _298;
  float _299;
  float _300;
  float _346;
  float _347;
  float _348;
  float _349;
  float _350;
  float _351;
  float _352;
  float _369;
  float _370;
  float _371;
  float _372;
  float _378;
  float _381;
  float _388;
  float _389;
  float _390;
  float _419;
  float _444;
  float _445;
  float _446;
  float _465;
  float _466;
  float _467;
  float _473;
  float _477;
  float _478;
  float _479;
  float _480;
  float _485;
  float _510;
  float _514;
  float _515;
  float _516;
  float _517;
  float _547;
  float _569;
  float _570;
  float _574;
  float _618;
  float _639;
  float _640;
  float _641;
  int __loop_jump_target = -1;
  _18 = WaveReadLaneFirst(_materialIndex);
  _26 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)((uint)(select(((uint)_18 < (uint)170000), _18, 0))) + (uint)(0)))].BindlessParameters_PostProcessDirectionalBlur._noiseScale);
  _29 = WaveReadLaneFirst(_materialIndex);
  _37 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)((uint)(select(((uint)_29 < (uint)170000), _29, 0))) + (uint)(0)))].BindlessParameters_PostProcessDirectionalBlur._noiseTexture);
  _46 = WaveReadLaneFirst(_materialIndex);
  _54 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)((uint)(select(((uint)_46 < (uint)170000), _46, 0))) + (uint)(0)))].BindlessParameters_PostProcessDirectionalBlur._direction);
  _58 = WaveReadLaneFirst(_materialIndex);
  _66 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)((uint)(select(((uint)_58 < (uint)170000), _58, 0))) + (uint)(0)))].BindlessParameters_PostProcessDirectionalBlur._intensity);
  _67 = WaveReadLaneFirst(_materialIndex);
  _75 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)((uint)(select(((uint)_67 < (uint)170000), _67, 0))) + (uint)(0)))].BindlessParameters_PostProcessDirectionalBlur._noiseStrength);
  _77 = 0.0f;
  _78 = 0.0f;
  _79 = 0.0f;
  _80 = 1;
  while(true) {
    _83 = (_66 * 0.03125f) * ((float)((int)(_80)));
    _84 = _75 * (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_37 < (uint)65000), _37, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_26 * TEXCOORD.x), (_26 * TEXCOORD.y))))).x);
    _87 = _83 * (_84 + (-0.0f - sin(_54)));
    _88 = _83 * (_84 + cos(_54));
    // [sem: _3__36__0__0__g_sceneColor_sample]
    _93 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2((_87 + TEXCOORD.x), (_88 + TEXCOORD.y)));
    _103 = (pow(_93.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _104 = (pow(_93.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _105 = (pow(_93.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    // [sem: _3__36__0__0__g_sceneColor_sample]
    _132 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2((TEXCOORD.x - _87), (TEXCOORD.y - _88)));
    _142 = (pow(_132.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _143 = (pow(_132.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _144 = (pow(_132.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _171 = ((exp2(log2(max(0.0f, (_142 + -0.8359375f)) / (18.851562f - (_142 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_103 + -0.8359375f)) / (18.851562f - (_103 * 18.6875f))) * 6.277395f)) * 10000.0f) + _77;
    _174 = ((exp2(log2(max(0.0f, (_143 + -0.8359375f)) / (18.851562f - (_143 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_104 + -0.8359375f)) / (18.851562f - (_104 * 18.6875f))) * 6.277395f)) * 10000.0f) + _78;
    _177 = ((exp2(log2(max(0.0f, (_144 + -0.8359375f)) / (18.851562f - (_144 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_105 + -0.8359375f)) / (18.851562f - (_105 * 18.6875f))) * 6.277395f)) * 10000.0f) + _79;
    _178 = (int)(_80) + (int)(1);
    if (!(_178 == 33)) {
      _77 = _171;
      _78 = _174;
      _79 = _177;
      _80 = _178;
      continue;
    }
    _189 = (uint)(SV_Position.y);
    if (_etcParams.y == 1.0f) {
      _202 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _189, 0)))).x) & 127)))) + 0.5f);
    } else {
      _202 = _postProcessParams.x;
    }
    _205 = (_localToneMappingParams.w > 0.0f);
    if (_205) {
      _211 = _userImageAdjust.z * _exposure0.x;
      _260 = exp2(log2(max(0.0f, (((_211 * max(0.0f, (((_171 * 0.026641406f) - (_174 * 0.009715469f)) - (_177 * 0.0013009375f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
      _261 = exp2(log2(max(0.0f, (((max(0.0f, (((_174 * 0.017825f) - (_171 * 0.0020353126f)) - (_177 * 0.00016484375f))) * _211) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
      _262 = exp2(log2(max(0.0f, (((max(0.0f, (((_171 * -0.000375f) - (_174 * 0.0020151562f)) + (_177 * 0.018015156f))) * _211) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
      _264 = dot(float3(_260, _261, _262), float3(0.212671f, 0.71516f, 0.072169f));
      _271 = ((_260 - _264) * _powerParams.w) + _264;
      _272 = ((_261 - _264) * _powerParams.w) + _264;
      _273 = ((_262 - _264) * _powerParams.w) + _264;
      _292 = min(max(log2(mad(_273, 0.079223745f, mad(_272, 0.0784336f, (_271 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
      _293 = min(max(log2(mad(_273, 0.07916613f, mad(_272, 0.87846863f, (_271 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
      _294 = min(max(log2(mad(_273, 0.879143f, mad(_272, 0.0784336f, (_271 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
      _295 = _292 * 0.060606062f;
      _296 = _293 * 0.060606062f;
      _297 = _294 * 0.060606062f;
      _298 = _295 * _295;
      _299 = _296 * _296;
      _300 = _297 * _297;
      _346 = min(0.0f, (-0.0f - (((_292 * 0.0072181816f) + ((_298 * 0.4298f) + (((_298 * _298) * ((31.96f - (_292 * 2.4327273f)) + (_298 * 15.5f))) - ((_292 * 0.41624245f) * _298)))) + -0.00232f)));
      _347 = min(0.0f, (-0.0f - (((_293 * 0.0072181816f) + ((_299 * 0.4298f) + (((_299 * _299) * ((31.96f - (_293 * 2.4327273f)) + (_299 * 15.5f))) - ((_293 * 0.41624245f) * _299)))) + -0.00232f)));
      _348 = min(0.0f, (-0.0f - (((_294 * 0.0072181816f) + ((_300 * 0.4298f) + (((_300 * _300) * ((31.96f - (_294 * 2.4327273f)) + (_300 * 15.5f))) - ((_294 * 0.41624245f) * _300)))) + -0.00232f)));
      _349 = -0.0f - _346;
      _350 = -0.0f - _347;
      _351 = -0.0f - _348;
      _352 = dot(float3(_349, _350, _351), float3(0.2126f, 0.7152f, 0.0722f));
      if (_nightToneParm == 1) {
        _369 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
        _370 = -0.79999995f / _369;
        _371 = -1.2f / _369;
        _372 = 0.20000005f / _369;
        _378 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
        _381 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
        _388 = (_370 + 1.4f) + (_381 * (-0.39999998f - _370));
        _389 = (_371 + 1.6f) + (_381 * (-0.6f - _371));
        _390 = (_372 + 0.9f) + (_381 * (0.5f - _372));
        _407 = (lerp(_389, 1.2f, _378));  // [sem: blended]
        _408 = (lerp(_388, 1.0f, _378));  // [sem: blended]
        _409 = (lerp(_390, 1.4f, _378));  // [sem: blended]
      } else {
        _407 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
        _408 = 1.0f;  // [sem: blended]
        _409 = 1.4f;  // [sem: blended]
      }
      _419 = 1.0f - _407;
      _444 = ((exp2(log2(((saturate((_346 * _346) * _349) * _419) + _407) * _349) * _408) - _352) * _409) + _352;
      _445 = ((exp2(log2(((saturate((_347 * _347) * _350) * _419) + _407) * _350) * _408) - _352) * _409) + _352;
      _446 = ((exp2(log2(((saturate((_348 * _348) * _351) * _419) + _407) * _351) * _408) - _352) * _409) + _352;
      _465 = saturate(exp2(log2(mad(_446, -0.09902974f, mad(_445, -0.09802088f, (_444 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
      _466 = saturate(exp2(log2(mad(_446, -0.098961174f, mad(_445, 1.1519032f, (_444 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
      _467 = saturate(exp2(log2(mad(_446, 1.1510737f, mad(_445, -0.09804345f, (_444 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
      if (_etcParams.z == 0.0f) {
        _473 = 1.0f - abs(_etcParams.w);
        _477 = saturate(_etcParams.w);  // [sem: expr_sat]
        _478 = (_473 * _465) + _477;
        _479 = (_473 * _466) + _477;
        _480 = (_473 * _467) + _477;
        if (_colorGradingParams.w > 0.0f) {
          _485 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
          _502 = (((max(0.0f, (1.0f - _478)) - _478) * _485) + _478);
          _503 = (((max(0.0f, (1.0f - _479)) - _479) * _485) + _479);
          _504 = (((max(0.0f, (1.0f - _480)) - _480) * _485) + _480);
        } else {
          _502 = _478;
          _503 = _479;
          _504 = _480;
        }
        _510 = _userImageAdjust.y + 1.0f;
        _514 = _userImageAdjust.x + 0.5f;
        _515 = ((_502 + -0.5f) * _510) + _514;
        _516 = ((_503 + -0.5f) * _510) + _514;
        _517 = ((_504 + -0.5f) * _510) + _514;
        _547 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
        _558 = exp2(log2(saturate(mad(_colorBlind0.z, _517, mad(_colorBlind0.y, _516, (_colorBlind0.x * _515))))) * _547);
        _559 = exp2(log2(saturate(mad(_colorBlind1.z, _517, mad(_colorBlind1.y, _516, (_colorBlind1.x * _515))))) * _547);
        _560 = exp2(log2(saturate(mad(_colorBlind2.z, _517, mad(_colorBlind2.y, _516, (_colorBlind2.x * _515))))) * _547);
      } else {
        _558 = _465;
        _559 = _466;
        _560 = _467;
      }
    } else {
      _558 = (_171 * 0.015625f);
      _559 = (_174 * 0.015625f);
      _560 = (_177 * 0.015625f);
    }
    if (_etcParams.y > 1.0f) {
      _569 = abs((TEXCOORD.x * 2.0f) + -1.0f);
      _570 = abs((TEXCOORD.y * 2.0f) + -1.0f);
      _574 = saturate(1.0f - (dot(float2(_569, _570), float2(_569, _570)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
      _579 = (_574 * _558);
      _580 = (_574 * _559);
      _581 = (_574 * _560);
    } else {
      _579 = _558;
      _580 = _559;
      _581 = _560;
    }
    if (_205 && (_etcParams.z > 0.0f)) {
      _611 = select((_579 <= 0.0031308f), (_579 * 12.92f), (((pow(_579, 0.41666666f)) * 1.055f) + -0.055f));
      _612 = select((_580 <= 0.0031308f), (_580 * 12.92f), (((pow(_580, 0.41666666f)) * 1.055f) + -0.055f));
      _613 = select((_581 <= 0.0031308f), (_581 * 12.92f), (((pow(_581, 0.41666666f)) * 1.055f) + -0.055f));
    } else {
      _611 = _579;
      _612 = _580;
      _613 = _581;
    }
    if (!(!(_etcParams.y >= 1.0f))) {
      _618 = (float)((uint)((uint)(_189)));
      if (!(_618 < _viewDir.w)) {
        if (!(_618 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
          _627 = _611;
          _628 = _612;
          _629 = _613;
        } else {
          _627 = 0.0f;
          _628 = 0.0f;
          _629 = 0.0f;
        }
      } else {
        _627 = 0.0f;
        _628 = 0.0f;
        _629 = 0.0f;
      }
    } else {
      _627 = _611;
      _628 = _612;
      _629 = _613;
    }
    _639 = exp2(log2(_627 * 0.0001f) * 0.15930176f);
    _640 = exp2(log2(_628 * 0.0001f) * 0.15930176f);
    _641 = exp2(log2(_629 * 0.0001f) * 0.15930176f);
    SV_Target.x = exp2(log2((1.0f / ((_639 * 18.6875f) + 1.0f)) * ((_639 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.y = exp2(log2((1.0f / ((_640 * 18.6875f) + 1.0f)) * ((_640 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.z = exp2(log2((1.0f / ((_641 * 18.6875f) + 1.0f)) * ((_641 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.w = _202;
    break;
  }
  return SV_Target;
}
