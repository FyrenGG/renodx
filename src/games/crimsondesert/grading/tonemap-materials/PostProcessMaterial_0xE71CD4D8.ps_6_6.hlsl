struct PostProcessCameraLensRainStruct {
  float _rainSpeed;
  float _rainUTiling;
  float _rainVTiling;
  float _streakUTiling;
  float _streakVTiling;
  uint _rainNormalTexture;
  uint _rainMaskTexture;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t71, space36);

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

struct BindlessParameters_PostProcessCameraLensRain {
  PostProcessCameraLensRainStruct BindlessParameters_PostProcessCameraLensRain;
};

typedef BindlessParameters_PostProcessCameraLensRain BindlessParameters_PostProcessCameraLensRain_t;
ConstantBuffer<BindlessParameters_PostProcessCameraLensRain_t> BindlessParameters_PostProcessCameraLensRain[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

static const float _global_0[5] = { 0.054712083f, 0.05641284f, 0.056991428f, 0.05641284f, 0.054712083f };

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _23;
  float _30;
  float _31;
  float _48;
  float _71;
  float _73;
  float _74;
  float _75;
  int _76;
  float _78;
  float _79;
  float _80;
  int _81;
  float _196;
  float _401;
  float _402;
  float _403;
  float _496;
  float _497;
  float _498;
  float _552;
  float _553;
  float _554;
  float _573;
  float _574;
  float _575;
  float _605;
  float _606;
  float _607;
  float _621;
  float _622;
  float _623;
  float _88;
  float4 _99;
  float _106;
  float _107;
  float _108;
  int _109;
  int _112;
  float _123;
  float _132;
  float _133;
  int _137;
  float _145;
  int _147;
  float _155;
  int _157;
  int _165;
  float4 _172;
  float _180;
  float _181;
  float _182;
  uint _183;
  bool _199;
  float _205;
  float _254;
  float _255;
  float _256;
  float _258;
  float _265;
  float _266;
  float _267;
  float _286;
  float _287;
  float _288;
  float _289;
  float _290;
  float _291;
  float _292;
  float _293;
  float _294;
  float _340;
  float _341;
  float _342;
  float _343;
  float _344;
  float _345;
  float _346;
  float _363;
  float _364;
  float _365;
  float _366;
  float _372;
  float _375;
  float _382;
  float _383;
  float _384;
  float _413;
  float _438;
  float _439;
  float _440;
  float _459;
  float _460;
  float _461;
  float _467;
  float _471;
  float _472;
  float _473;
  float _474;
  float _479;
  float _504;
  float _508;
  float _509;
  float _510;
  float _511;
  float _541;
  float _563;
  float _564;
  float _568;
  float _612;
  float _633;
  float _634;
  float _635;
  int __loop_jump_target = -1;
  _23 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _30 = (pow(_23.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _31 = (pow(_23.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _48 = exp2(log2(max(0.0f, (_30 + -0.8359375f)) / (18.851562f - (_30 * 18.6875f))) * 6.277395f) * 10000.0f;
  _71 = 1.0f - (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(((float)((int)((int)(_srcTargetSizeAndInv.x * TEXCOORD.x)))) * _customRenderPassSizeInvSize.x)), ((int)(((float)((int)((int)(_srcTargetSizeAndInv.y * TEXCOORD.y)))) * _customRenderPassSizeInvSize.y)), 0)))).x);
  _73 = 0.0f;
  _74 = 0.0f;
  _75 = 0.0f;
  _76 = -2;
  while(true) {
    _78 = _73;
    _79 = _74;
    _80 = _75;
    _81 = -2;
    while(true) {
      _88 = (_global_0[min((uint)(((int)(_76) + (int)(2))), 4u)]) * (_global_0[min((uint)(((int)(_81) + (int)(2))), 4u)]);
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _99 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((((_71 * _destTargetSizAndInv.z) * ((float)((int)(_76)))) + TEXCOORD.x), (((_71 * _destTargetSizAndInv.w) * ((float)((int)(_81)))) + TEXCOORD.y)));
      _106 = (_99.x * _88) + _78;
      _107 = (_99.y * _88) + _79;
      _108 = (_99.z * _88) + _80;
      _109 = (int)(_81) + (int)(1);
      if (!(_109 == 3)) {
        _78 = _106;
        _79 = _107;
        _80 = _108;
        _81 = _109;
        continue;
      }
      _112 = (int)(_76) + (int)(1);
      if (!(_112 == 3)) {
        _73 = _106;
        _74 = _107;
        _75 = _108;
        _76 = _112;
        __loop_jump_target = 72;
        break;
      }
      _123 = (pow(_23.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _132 = exp2(log2(max(0.0f, (_123 + -0.8359375f)) / (18.851562f - (_123 * 18.6875f))) * 6.277395f) * 10000.0f;
      _133 = exp2(log2(max(0.0f, (_31 + -0.8359375f)) / (18.851562f - (_31 * 18.6875f))) * 6.277395f) * 10000.0f;
      _137 = WaveReadLaneFirst(_materialIndex);
      _145 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_137 < (uint)170000), _137, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainUTiling);
      _147 = WaveReadLaneFirst(_materialIndex);
      _155 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_147 < (uint)170000), _147, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainVTiling);
      _157 = WaveReadLaneFirst(_materialIndex);
      _165 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_157 < (uint)170000), _157, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainMaskTexture);
      _172 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_165 < (uint)65000), _165, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_145 * TEXCOORD.x), (_155 * TEXCOORD.y)));
      _180 = (_172.y * ((_106 * 12.824511f) - _132)) + _132;
      _181 = (_172.y * ((_107 * 12.824511f) - _48)) + _48;
      _182 = (_172.y * ((_108 * 12.824511f) - _133)) + _133;
      _183 = (uint)(SV_Position.y);
      if (_etcParams.y == 1.0f) {
        _196 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _183, 0)))).x) & 127)))) + 0.5f);
      } else {
        _196 = 1.0f;
      }
      _199 = (_localToneMappingParams.w > 0.0f);
      if (_199) {
        _205 = _userImageAdjust.z * _exposure0.x;
        _254 = exp2(log2(max(0.0f, (((_205 * max(0.0f, (((_180 * 1.70505f) - (_181 * 0.62179f)) - (_182 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
        _255 = exp2(log2(max(0.0f, (((max(0.0f, (((_181 * 1.1408f) - (_180 * 0.13026f)) - (_182 * 0.01055f))) * _205) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
        _256 = exp2(log2(max(0.0f, (((max(0.0f, (((_180 * -0.024f) - (_181 * 0.12897f)) + (_182 * 1.15297f))) * _205) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
        _258 = dot(float3(_254, _255, _256), float3(0.212671f, 0.71516f, 0.072169f));
        _265 = ((_254 - _258) * _powerParams.w) + _258;
        _266 = ((_255 - _258) * _powerParams.w) + _258;
        _267 = ((_256 - _258) * _powerParams.w) + _258;
        _286 = min(max(log2(mad(_267, 0.079223745f, mad(_266, 0.0784336f, (_265 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
        _287 = min(max(log2(mad(_267, 0.07916613f, mad(_266, 0.87846863f, (_265 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
        _288 = min(max(log2(mad(_267, 0.879143f, mad(_266, 0.0784336f, (_265 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
        _289 = _286 * 0.060606062f;
        _290 = _287 * 0.060606062f;
        _291 = _288 * 0.060606062f;
        _292 = _289 * _289;
        _293 = _290 * _290;
        _294 = _291 * _291;
        _340 = min(0.0f, (-0.0f - (((_286 * 0.0072181816f) + ((_292 * 0.4298f) + (((_292 * _292) * ((31.96f - (_286 * 2.4327273f)) + (_292 * 15.5f))) - ((_286 * 0.41624245f) * _292)))) + -0.00232f)));
        _341 = min(0.0f, (-0.0f - (((_287 * 0.0072181816f) + ((_293 * 0.4298f) + (((_293 * _293) * ((31.96f - (_287 * 2.4327273f)) + (_293 * 15.5f))) - ((_287 * 0.41624245f) * _293)))) + -0.00232f)));
        _342 = min(0.0f, (-0.0f - (((_288 * 0.0072181816f) + ((_294 * 0.4298f) + (((_294 * _294) * ((31.96f - (_288 * 2.4327273f)) + (_294 * 15.5f))) - ((_288 * 0.41624245f) * _294)))) + -0.00232f)));
        _343 = -0.0f - _340;
        _344 = -0.0f - _341;
        _345 = -0.0f - _342;
        _346 = dot(float3(_343, _344, _345), float3(0.2126f, 0.7152f, 0.0722f));
        if (_nightToneParm == 1) {
          _363 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
          _364 = -0.79999995f / _363;
          _365 = -1.2f / _363;
          _366 = 0.20000005f / _363;
          _372 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
          _375 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
          _382 = (_364 + 1.4f) + (_375 * (-0.39999998f - _364));
          _383 = (_365 + 1.6f) + (_375 * (-0.6f - _365));
          _384 = (_366 + 0.9f) + (_375 * (0.5f - _366));
          _401 = (lerp(_383, 1.2f, _372));  // [sem: blended]
          _402 = (lerp(_382, 1.0f, _372));  // [sem: blended]
          _403 = (lerp(_384, 1.4f, _372));  // [sem: blended]
        } else {
          _401 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
          _402 = 1.0f;  // [sem: blended]
          _403 = 1.4f;  // [sem: blended]
        }
        _413 = 1.0f - _401;
        _438 = ((exp2(log2(((saturate((_340 * _340) * _343) * _413) + _401) * _343) * _402) - _346) * _403) + _346;
        _439 = ((exp2(log2(((saturate((_341 * _341) * _344) * _413) + _401) * _344) * _402) - _346) * _403) + _346;
        _440 = ((exp2(log2(((saturate((_342 * _342) * _345) * _413) + _401) * _345) * _402) - _346) * _403) + _346;
        _459 = saturate(exp2(log2(mad(_440, -0.09902974f, mad(_439, -0.09802088f, (_438 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
        _460 = saturate(exp2(log2(mad(_440, -0.098961174f, mad(_439, 1.1519032f, (_438 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
        _461 = saturate(exp2(log2(mad(_440, 1.1510737f, mad(_439, -0.09804345f, (_438 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
        if (_etcParams.z == 0.0f) {
          _467 = 1.0f - abs(_etcParams.w);
          _471 = saturate(_etcParams.w);  // [sem: expr_sat]
          _472 = (_467 * _459) + _471;
          _473 = (_467 * _460) + _471;
          _474 = (_467 * _461) + _471;
          if (_colorGradingParams.w > 0.0f) {
            _479 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
            _496 = (((max(0.0f, (1.0f - _472)) - _472) * _479) + _472);
            _497 = (((max(0.0f, (1.0f - _473)) - _473) * _479) + _473);
            _498 = (((max(0.0f, (1.0f - _474)) - _474) * _479) + _474);
          } else {
            _496 = _472;
            _497 = _473;
            _498 = _474;
          }
          _504 = _userImageAdjust.y + 1.0f;
          _508 = _userImageAdjust.x + 0.5f;
          _509 = ((_496 + -0.5f) * _504) + _508;
          _510 = ((_497 + -0.5f) * _504) + _508;
          _511 = ((_498 + -0.5f) * _504) + _508;
          _541 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
          _552 = exp2(log2(saturate(mad(_colorBlind0.z, _511, mad(_colorBlind0.y, _510, (_colorBlind0.x * _509))))) * _541);
          _553 = exp2(log2(saturate(mad(_colorBlind1.z, _511, mad(_colorBlind1.y, _510, (_colorBlind1.x * _509))))) * _541);
          _554 = exp2(log2(saturate(mad(_colorBlind2.z, _511, mad(_colorBlind2.y, _510, (_colorBlind2.x * _509))))) * _541);
        } else {
          _552 = _459;
          _553 = _460;
          _554 = _461;
        }
      } else {
        _552 = _180;
        _553 = _181;
        _554 = _182;
      }
      if (_etcParams.y > 1.0f) {
        _563 = abs((TEXCOORD.x * 2.0f) + -1.0f);
        _564 = abs((TEXCOORD.y * 2.0f) + -1.0f);
        _568 = saturate(1.0f - (dot(float2(_563, _564), float2(_563, _564)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
        _573 = (_568 * _552);
        _574 = (_568 * _553);
        _575 = (_568 * _554);
      } else {
        _573 = _552;
        _574 = _553;
        _575 = _554;
      }
      if (_199 && (_etcParams.z > 0.0f)) {
        _605 = select((_573 <= 0.0031308f), (_573 * 12.92f), (((pow(_573, 0.41666666f)) * 1.055f) + -0.055f));
        _606 = select((_574 <= 0.0031308f), (_574 * 12.92f), (((pow(_574, 0.41666666f)) * 1.055f) + -0.055f));
        _607 = select((_575 <= 0.0031308f), (_575 * 12.92f), (((pow(_575, 0.41666666f)) * 1.055f) + -0.055f));
      } else {
        _605 = _573;
        _606 = _574;
        _607 = _575;
      }
      if (!(!(_etcParams.y >= 1.0f))) {
        _612 = (float)((uint)((uint)(_183)));
        if (!(_612 < _viewDir.w)) {
          if (!(_612 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
            _621 = _605;
            _622 = _606;
            _623 = _607;
          } else {
            _621 = 0.0f;
            _622 = 0.0f;
            _623 = 0.0f;
          }
        } else {
          _621 = 0.0f;
          _622 = 0.0f;
          _623 = 0.0f;
        }
      } else {
        _621 = _605;
        _622 = _606;
        _623 = _607;
      }
      _633 = exp2(log2(_621 * 0.0001f) * 0.15930176f);
      _634 = exp2(log2(_622 * 0.0001f) * 0.15930176f);
      _635 = exp2(log2(_623 * 0.0001f) * 0.15930176f);
      SV_Target.x = exp2(log2((1.0f / ((_633 * 18.6875f) + 1.0f)) * ((_633 * 18.851562f) + 0.8359375f)) * 78.84375f);
      SV_Target.y = exp2(log2((1.0f / ((_634 * 18.6875f) + 1.0f)) * ((_634 * 18.851562f) + 0.8359375f)) * 78.84375f);
      SV_Target.z = exp2(log2((1.0f / ((_635 * 18.6875f) + 1.0f)) * ((_635 * 18.851562f) + 0.8359375f)) * 78.84375f);
      SV_Target.w = _196;
      break;
    }
    if (__loop_jump_target == 72) {
      __loop_jump_target = -1;
      continue;
    }
    if (__loop_jump_target != -1) {
      break;
    }
    break;
  }
  return SV_Target;
}
