struct PostProcessOutlineExampleStruct {
  uint _outlineColor;
  float _outlineSize;
};


Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t64, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t70, space36);

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

struct BindlessParameters_PostProcessOutlineExample {
  PostProcessOutlineExampleStruct BindlessParameters_PostProcessOutlineExample;
};

typedef BindlessParameters_PostProcessOutlineExample BindlessParameters_PostProcessOutlineExample_t;
ConstantBuffer<BindlessParameters_PostProcessOutlineExample_t> BindlessParameters_PostProcessOutlineExample[] : register(b0, space100);

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
  uint2 _30;
  float _123;
  float _124;
  float _125;
  float _139;
  float _344;
  float _345;
  float _346;
  float _439;
  float _440;
  float _441;
  float _495;
  float _496;
  float _497;
  float _516;
  float _517;
  float _518;
  float _548;
  float _549;
  float _550;
  float _564;
  float _565;
  float _566;
  float4 _66;
  int _71;
  int _79;
  float _82;
  float _85;
  float _87;
  float _115;
  uint _126;
  bool _142;
  float _148;
  float _197;
  float _198;
  float _199;
  float _201;
  float _208;
  float _209;
  float _210;
  float _229;
  float _230;
  float _231;
  float _232;
  float _233;
  float _234;
  float _235;
  float _236;
  float _237;
  float _283;
  float _284;
  float _285;
  float _286;
  float _287;
  float _288;
  float _289;
  float _306;
  float _307;
  float _308;
  float _309;
  float _315;
  float _318;
  float _325;
  float _326;
  float _327;
  float _356;
  float _381;
  float _382;
  float _383;
  float _402;
  float _403;
  float _404;
  float _410;
  float _414;
  float _415;
  float _416;
  float _417;
  float _422;
  float _447;
  float _451;
  float _452;
  float _453;
  float _454;
  float _484;
  float _506;
  float _507;
  float _511;
  float _555;
  _25 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_30.x, _30.y);
  if (!(((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_30.x))))))) + 0.5f) * TEXCOORD.x)), ((int)((((float)((int)((int)((float)((int)((int)(_30.y))))))) + 0.5f) * TEXCOORD.y)), 0)))).x) & 255) == 30)) {
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _66 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    if (!(!((((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f))), 0)))).x) & 16777215)))) * 5.960465e-08f) <= _66.y))) {
      _71 = WaveReadLaneFirst(_materialIndex);
      _79 = WaveReadLaneFirst(BindlessParameters_PostProcessOutlineExample[((int)((uint)((uint)(select(((uint)_71 < (uint)170000), _71, 0))) + (uint)(0)))].BindlessParameters_PostProcessOutlineExample._outlineColor);
      _82 = (float)((uint)((uint)(((uint)((uint)(_79)) >> 16) & 255)));
      _85 = (float)((uint)((uint)(((uint)((uint)(_79)) >> 8) & 255)));
      _87 = (float)((uint)((uint)(_79 & 255)));
      _115 = _66.x * 100.0f;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _123 = ((select(((_82 * 0.003921569f) < 0.04045f), (_82 * 0.000303527f), exp2(log2((_82 * 0.003717127f) + 0.052132703f) * 2.4f)) * _115) + _25.x);
      _124 = ((select(((_85 * 0.003921569f) < 0.04045f), (_85 * 0.000303527f), exp2(log2((_85 * 0.003717127f) + 0.052132703f) * 2.4f)) * _115) + _25.y);
      _125 = ((select(((_87 * 0.003921569f) < 0.04045f), (_87 * 0.000303527f), exp2(log2((_87 * 0.003717127f) + 0.052132703f) * 2.4f)) * _115) + _25.z);
    } else {
      _123 = _25.x;
      _124 = _25.y;
      _125 = _25.z;
    }
  } else {
    _123 = _25.x;
    _124 = _25.y;
    _125 = _25.z;
  }
  _126 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _139 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _126, 0)))).x) & 127)))) + 0.5f);
  } else {
    _139 = 1.0f;
  }
  _142 = (_localToneMappingParams.w > 0.0f);
  if (_142) {
    _148 = _userImageAdjust.z * _exposure0.x;
    _197 = exp2(log2(max(0.0f, (((_148 * max(0.0f, (((_123 * 1.70505f) - (_124 * 0.62179f)) - (_125 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _198 = exp2(log2(max(0.0f, (((max(0.0f, (((_124 * 1.1408f) - (_123 * 0.13026f)) - (_125 * 0.01055f))) * _148) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _199 = exp2(log2(max(0.0f, (((max(0.0f, (((_123 * -0.024f) - (_124 * 0.12897f)) + (_125 * 1.15297f))) * _148) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _201 = dot(float3(_197, _198, _199), float3(0.212671f, 0.71516f, 0.072169f));
    _208 = ((_197 - _201) * _powerParams.w) + _201;
    _209 = ((_198 - _201) * _powerParams.w) + _201;
    _210 = ((_199 - _201) * _powerParams.w) + _201;
    _229 = min(max(log2(mad(_210, 0.079223745f, mad(_209, 0.0784336f, (_208 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _230 = min(max(log2(mad(_210, 0.07916613f, mad(_209, 0.87846863f, (_208 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _231 = min(max(log2(mad(_210, 0.879143f, mad(_209, 0.0784336f, (_208 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _232 = _229 * 0.060606062f;
    _233 = _230 * 0.060606062f;
    _234 = _231 * 0.060606062f;
    _235 = _232 * _232;
    _236 = _233 * _233;
    _237 = _234 * _234;
    _283 = min(0.0f, (-0.0f - (((_229 * 0.0072181816f) + ((_235 * 0.4298f) + (((_235 * _235) * ((31.96f - (_229 * 2.4327273f)) + (_235 * 15.5f))) - ((_229 * 0.41624245f) * _235)))) + -0.00232f)));
    _284 = min(0.0f, (-0.0f - (((_230 * 0.0072181816f) + ((_236 * 0.4298f) + (((_236 * _236) * ((31.96f - (_230 * 2.4327273f)) + (_236 * 15.5f))) - ((_230 * 0.41624245f) * _236)))) + -0.00232f)));
    _285 = min(0.0f, (-0.0f - (((_231 * 0.0072181816f) + ((_237 * 0.4298f) + (((_237 * _237) * ((31.96f - (_231 * 2.4327273f)) + (_237 * 15.5f))) - ((_231 * 0.41624245f) * _237)))) + -0.00232f)));
    _286 = -0.0f - _283;
    _287 = -0.0f - _284;
    _288 = -0.0f - _285;
    _289 = dot(float3(_286, _287, _288), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _306 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _307 = -0.79999995f / _306;
      _308 = -1.2f / _306;
      _309 = 0.20000005f / _306;
      _315 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _318 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _325 = (_307 + 1.4f) + (_318 * (-0.39999998f - _307));
      _326 = (_308 + 1.6f) + (_318 * (-0.6f - _308));
      _327 = (_309 + 0.9f) + (_318 * (0.5f - _309));
      _344 = (lerp(_326, 1.2f, _315));  // [sem: blended]
      _345 = (lerp(_325, 1.0f, _315));  // [sem: blended]
      _346 = (lerp(_327, 1.4f, _315));  // [sem: blended]
    } else {
      _344 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _345 = 1.0f;  // [sem: blended]
      _346 = 1.4f;  // [sem: blended]
    }
    _356 = 1.0f - _344;
    _381 = ((exp2(log2(((saturate((_283 * _283) * _286) * _356) + _344) * _286) * _345) - _289) * _346) + _289;
    _382 = ((exp2(log2(((saturate((_284 * _284) * _287) * _356) + _344) * _287) * _345) - _289) * _346) + _289;
    _383 = ((exp2(log2(((saturate((_285 * _285) * _288) * _356) + _344) * _288) * _345) - _289) * _346) + _289;
    _402 = saturate(exp2(log2(mad(_383, -0.09902974f, mad(_382, -0.09802088f, (_381 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _403 = saturate(exp2(log2(mad(_383, -0.098961174f, mad(_382, 1.1519032f, (_381 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _404 = saturate(exp2(log2(mad(_383, 1.1510737f, mad(_382, -0.09804345f, (_381 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _410 = 1.0f - abs(_etcParams.w);
      _414 = saturate(_etcParams.w);  // [sem: expr_sat]
      _415 = (_410 * _402) + _414;
      _416 = (_410 * _403) + _414;
      _417 = (_410 * _404) + _414;
      if (_colorGradingParams.w > 0.0f) {
        _422 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _439 = (((max(0.0f, (1.0f - _415)) - _415) * _422) + _415);
        _440 = (((max(0.0f, (1.0f - _416)) - _416) * _422) + _416);
        _441 = (((max(0.0f, (1.0f - _417)) - _417) * _422) + _417);
      } else {
        _439 = _415;
        _440 = _416;
        _441 = _417;
      }
      _447 = _userImageAdjust.y + 1.0f;
      _451 = _userImageAdjust.x + 0.5f;
      _452 = ((_439 + -0.5f) * _447) + _451;
      _453 = ((_440 + -0.5f) * _447) + _451;
      _454 = ((_441 + -0.5f) * _447) + _451;
      _484 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _495 = exp2(log2(saturate(mad(_colorBlind0.z, _454, mad(_colorBlind0.y, _453, (_colorBlind0.x * _452))))) * _484);
      _496 = exp2(log2(saturate(mad(_colorBlind1.z, _454, mad(_colorBlind1.y, _453, (_colorBlind1.x * _452))))) * _484);
      _497 = exp2(log2(saturate(mad(_colorBlind2.z, _454, mad(_colorBlind2.y, _453, (_colorBlind2.x * _452))))) * _484);
    } else {
      _495 = _402;
      _496 = _403;
      _497 = _404;
    }
  } else {
    _495 = _123;
    _496 = _124;
    _497 = _125;
  }
  if (_etcParams.y > 1.0f) {
    _506 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _507 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _511 = saturate(1.0f - (dot(float2(_506, _507), float2(_506, _507)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _516 = (_511 * _495);
    _517 = (_511 * _496);
    _518 = (_511 * _497);
  } else {
    _516 = _495;
    _517 = _496;
    _518 = _497;
  }
  if (_142 && (_etcParams.z > 0.0f)) {
    _548 = select((_516 <= 0.0031308f), (_516 * 12.92f), (((pow(_516, 0.41666666f)) * 1.055f) + -0.055f));
    _549 = select((_517 <= 0.0031308f), (_517 * 12.92f), (((pow(_517, 0.41666666f)) * 1.055f) + -0.055f));
    _550 = select((_518 <= 0.0031308f), (_518 * 12.92f), (((pow(_518, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _548 = _516;
    _549 = _517;
    _550 = _518;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _555 = (float)((uint)((uint)(_126)));
    if (!(_555 < _viewDir.w)) {
      if (!(_555 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _564 = _548;
        _565 = _549;
        _566 = _550;
      } else {
        _564 = 0.0f;
        _565 = 0.0f;
        _566 = 0.0f;
      }
    } else {
      _564 = 0.0f;
      _565 = 0.0f;
      _566 = 0.0f;
    }
  } else {
    _564 = _548;
    _565 = _549;
    _566 = _550;
  }
  SV_Target.x = _564;
  SV_Target.y = _565;
  SV_Target.z = _566;
  SV_Target.w = _139;
  return SV_Target;
}
