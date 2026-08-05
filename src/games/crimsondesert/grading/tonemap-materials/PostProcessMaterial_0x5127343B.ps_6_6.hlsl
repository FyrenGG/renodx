struct PostProcessDirectionalBlurStruct {
  float _intensity;
  float _noiseStrength;
  float _direction;
  float _noiseScale;
  uint _noiseTexture;
};

struct BindlessParameters_PostProcessDirectionalBlur {
  PostProcessDirectionalBlurStruct BindlessParameters_PostProcessDirectionalBlur;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

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
  int _16;
  float _24;
  int _27;
  int _35;
  int _38;
  float _46;
  int _49;
  float _57;
  int _60;
  float _68;
  int _70;
  float _71;
  float _72;
  float _73;
  float _140;
  float _345;
  float _346;
  float _347;
  float _440;
  float _441;
  float _442;
  float _500;
  float _501;
  float _502;
  float _521;
  float _522;
  float _523;
  float _553;
  float _554;
  float _555;
  float _569;
  float _570;
  float _571;
  float _76;
  float _87;
  float _90;
  float _93;
  float4 _98;
  float4 _106;
  float _111;
  float _113;
  float _115;
  int _116;
  uint _124;
  bool _143;
  float _149;
  float _168;
  float _184;
  float _200;
  float _201;
  float _205;
  float _208;
  float _211;
  float _218;
  float _225;
  float _232;
  float _233;
  float _234;
  float _235;
  float _236;
  float _237;
  float _238;
  float _254;
  float _270;
  float _286;
  float _287;
  float _288;
  float _289;
  float _290;
  float _307;
  float _308;
  float _309;
  float _310;
  float _313;
  float _316;
  float _320;
  float _324;
  float _328;
  float _348;
  float _360;
  float _372;
  float _384;
  float _391;
  float _398;
  float _405;
  float _411;
  float _412;
  float _414;
  float _416;
  float _418;
  float _423;
  float _444;
  float _446;
  float _449;
  float _452;
  float _455;
  float _461;
  float _507;
  float _510;
  float _516;
  float _558;
  int __loop_jump_target = -1;
  _16 = WaveReadLaneFirst(_materialIndex);
  _24 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)((uint)(select(((uint)_16 < (uint)170000), _16, 0))) + (uint)(0)))].BindlessParameters_PostProcessDirectionalBlur._noiseScale);
  _27 = WaveReadLaneFirst(_materialIndex);
  _35 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)((uint)(select(((uint)_27 < (uint)170000), _27, 0))) + (uint)(0)))].BindlessParameters_PostProcessDirectionalBlur._noiseTexture);
  _38 = WaveReadLaneFirst(_materialIndex);
  _46 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)((uint)(select(((uint)_38 < (uint)170000), _38, 0))) + (uint)(0)))].BindlessParameters_PostProcessDirectionalBlur._direction);
  _49 = WaveReadLaneFirst(_materialIndex);
  _57 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)((uint)(select(((uint)_49 < (uint)170000), _49, 0))) + (uint)(0)))].BindlessParameters_PostProcessDirectionalBlur._intensity);
  _60 = WaveReadLaneFirst(_materialIndex);
  _68 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)((uint)(select(((uint)_60 < (uint)170000), _60, 0))) + (uint)(0)))].BindlessParameters_PostProcessDirectionalBlur._noiseStrength);
  _70 = 1;
  _71 = 0.0f;
  _72 = 0.0f;
  _73 = 0.0f;
  while(true) {
    _76 = (_57 * 0.03125f) * ((float)((int)(_70)));
    _87 = (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_35 < (uint)65000), _35, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_24 * TEXCOORD.x), (_24 * TEXCOORD.y))))).x) * _68;
    _90 = (_87 - sin(_46)) * _76;
    _93 = (_87 + cos(_46)) * _76;
    // [sem: _3__36__0__0__g_sceneColor_sample]
    _98 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2((_90 + TEXCOORD.x), (_93 + TEXCOORD.y)));
    // [sem: _3__36__0__0__g_sceneColor_sample]
    _106 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2((TEXCOORD.x - _90), (TEXCOORD.y - _93)));
    _111 = (_98.x + _73) + _106.x;
    _113 = (_98.y + _72) + _106.y;
    _115 = (_98.z + _71) + _106.z;
    _116 = (int)(_70) + (int)(1);
    if (!(_116 == 33)) {
      _70 = _116;
      _71 = _115;
      _72 = _113;
      _73 = _111;
      continue;
    }
    _124 = (uint)(SV_Position.y);
    if (_etcParams.y == 1.0f) {
      _140 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _124, 0)))).x) & 127)))) + 0.5f);
    } else {
      _140 = _postProcessParams.x;
    }
    _143 = (_localToneMappingParams.w > 0.0f);
    if (_143) {
      _149 = _exposure0.x * _userImageAdjust.z;
      _168 = exp2(_powerParams.x * log2(max(0.0f, (((_149 * max(0.0f, (((_111 * 0.026641406f) - (_113 * 0.009715469f)) - (_115 * 0.0013009375f)))) * _slopeParams.x) + _offsetParams.x))));
      _184 = exp2(log2(max(0.0f, (((_slopeParams.y * _149) * max(0.0f, (((_113 * 0.017825f) - (_111 * 0.0020353126f)) - (_115 * 0.00016484375f)))) + _offsetParams.y))) * _powerParams.y);
      _200 = exp2(log2(max(0.0f, (((_slopeParams.z * _149) * max(0.0f, (((_111 * -0.000375f) - (_113 * 0.0020151562f)) + (_115 * 0.018015156f)))) + _offsetParams.z))) * _powerParams.z);
      _201 = dot(float3(_168, _184, _200), float3(0.212671f, 0.71516f, 0.072169f));
      _205 = ((_168 - _201) * _powerParams.w) + _201;
      _208 = ((_184 - _201) * _powerParams.w) + _201;
      _211 = ((_200 - _201) * _powerParams.w) + _201;
      _218 = min(max(log2(mad(_211, 0.079223745f, mad(_208, 0.0784336f, (_205 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
      _225 = min(max(log2(mad(_211, 0.07916613f, mad(_208, 0.87846863f, (_205 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
      _232 = min(max(log2(mad(_211, 0.879143f, mad(_208, 0.0784336f, (_205 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
      _233 = _218 * 0.060606062f;
      _234 = _225 * 0.060606062f;
      _235 = _232 * 0.060606062f;
      _236 = _233 * _233;
      _237 = _234 * _234;
      _238 = _235 * _235;
      _254 = min(0.0f, (-0.0f - (((_218 * 0.0072181816f) + ((_236 * 0.4298f) + (((_236 * _236) * ((31.96f - (_218 * 2.4327273f)) + (_236 * 15.5f))) - ((_218 * 0.41624245f) * _236)))) + -0.00232f)));
      _270 = min(0.0f, (-0.0f - (((_225 * 0.0072181816f) + ((_237 * 0.4298f) + (((_237 * _237) * ((31.96f - (_225 * 2.4327273f)) + (_237 * 15.5f))) - ((_225 * 0.41624245f) * _237)))) + -0.00232f)));
      _286 = min(0.0f, (-0.0f - (((_232 * 0.0072181816f) + ((_238 * 0.4298f) + (((_238 * _238) * ((31.96f - (_232 * 2.4327273f)) + (_238 * 15.5f))) - ((_232 * 0.41624245f) * _238)))) + -0.00232f)));
      _287 = -0.0f - _254;
      _288 = -0.0f - _270;
      _289 = -0.0f - _286;
      _290 = dot(float3(_287, _288, _289), float3(0.2126f, 0.7152f, 0.0722f));
      if (_nightToneParm == 1) {
        _307 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
        _308 = -0.79999995f / _307;
        _309 = -1.2f / _307;
        _310 = 0.20000005f / _307;
        _313 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
        _316 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
        _320 = (_308 + 1.4f) + (_316 * (-0.39999998f - _308));
        _324 = (_309 + 1.6f) + (_316 * (-0.6f - _309));
        _328 = (_310 + 0.9f) + (_316 * (0.5f - _310));
        _345 = (lerp(_328, 1.4f, _313));  // [sem: blended]
        _346 = (lerp(_320, 1.0f, _313));  // [sem: blended]
        _347 = (lerp(_324, 1.2f, _313));  // [sem: blended]
      } else {
        _345 = 1.4f;  // [sem: blended]
        _346 = 1.0f;  // [sem: blended]
        _347 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      }
      _348 = 1.0f - _347;
      _360 = ((exp2(log2(((saturate((_254 * _254) * _287) * _348) + _347) * _287) * _346) - _290) * _345) + _290;
      _372 = ((exp2(log2(((saturate((_270 * _270) * _288) * _348) + _347) * _288) * _346) - _290) * _345) + _290;
      _384 = ((exp2(log2(((saturate((_286 * _286) * _289) * _348) + _347) * _289) * _346) - _290) * _345) + _290;
      _391 = saturate(exp2(log2(mad(_384, -0.09902974f, mad(_372, -0.09802088f, (_360 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
      _398 = saturate(exp2(log2(mad(_384, -0.098961174f, mad(_372, 1.1519032f, (_360 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
      _405 = saturate(exp2(log2(mad(_384, 1.1510737f, mad(_372, -0.09804345f, (_360 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
      if (_etcParams.z == 0.0f) {
        _411 = 1.0f - abs(_etcParams.w);
        _412 = saturate(_etcParams.w);  // [sem: expr_sat]
        _414 = (_411 * _391) + _412;
        _416 = (_411 * _398) + _412;
        _418 = (_411 * _405) + _412;
        if (_colorGradingParams.w > 0.0f) {
          _423 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
          _440 = (((max(0.0f, (1.0f - _418)) - _418) * _423) + _418);
          _441 = (((max(0.0f, (1.0f - _416)) - _416) * _423) + _416);
          _442 = (((max(0.0f, (1.0f - _414)) - _414) * _423) + _414);
        } else {
          _440 = _418;
          _441 = _416;
          _442 = _414;
        }
        _444 = _userImageAdjust.y + 1.0f;
        _446 = _userImageAdjust.x + 0.5f;
        _449 = ((_442 + -0.5f) * _444) + _446;
        _452 = ((_441 + -0.5f) * _444) + _446;
        _455 = ((_440 + -0.5f) * _444) + _446;
        _461 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
        _500 = exp2(log2(saturate(mad(_colorBlind0.z, _455, mad(_colorBlind0.y, _452, (_colorBlind0.x * _449))))) * _461);
        _501 = exp2(log2(saturate(mad(_colorBlind1.z, _455, mad(_colorBlind1.y, _452, (_colorBlind1.x * _449))))) * _461);
        _502 = exp2(log2(saturate(mad(_colorBlind2.z, _455, mad(_colorBlind2.y, _452, (_colorBlind2.x * _449))))) * _461);
      } else {
        _500 = _391;
        _501 = _398;
        _502 = _405;
      }
    } else {
      _500 = (_111 * 0.015625f);
      _501 = (_113 * 0.015625f);
      _502 = (_115 * 0.015625f);
    }
    if (_etcParams.y > 1.0f) {
      _507 = abs((TEXCOORD.x * 2.0f) + -1.0f);
      _510 = abs((TEXCOORD.y * 2.0f) + -1.0f);
      _516 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_507, _510), float2(_507, _510))));  // [sem: expr_sat]
      _521 = (_516 * _500);
      _522 = (_516 * _501);
      _523 = (_516 * _502);
    } else {
      _521 = _500;
      _522 = _501;
      _523 = _502;
    }
    if (_143 && (_etcParams.z > 0.0f)) {
      _553 = select((_521 <= 0.0031308f), (_521 * 12.92f), (((pow(_521, 0.41666666f)) * 1.055f) + -0.055f));
      _554 = select((_522 <= 0.0031308f), (_522 * 12.92f), (((pow(_522, 0.41666666f)) * 1.055f) + -0.055f));
      _555 = select((_523 <= 0.0031308f), (_523 * 12.92f), (((pow(_523, 0.41666666f)) * 1.055f) + -0.055f));
    } else {
      _553 = _521;
      _554 = _522;
      _555 = _523;
    }
    if (!(!(_etcParams.y >= 1.0f))) {
      _558 = (float)((uint)((uint)(_124)));
      if (!(_558 < _viewDir.w)) {
        if (!(!(_558 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
          _569 = 0.0f;
          _570 = 0.0f;
          _571 = 0.0f;
        } else {
          _569 = _553;
          _570 = _554;
          _571 = _555;
        }
      } else {
        _569 = 0.0f;
        _570 = 0.0f;
        _571 = 0.0f;
      }
    } else {
      _569 = _553;
      _570 = _554;
      _571 = _555;
    }
    SV_Target.x = _569;
    SV_Target.y = _570;
    SV_Target.z = _571;
    SV_Target.w = _140;
    break;
  }
  return SV_Target;
}
