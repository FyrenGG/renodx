struct PostProcessTransition_CDStruct {
  uint _chapterNoiseTex;
  uint _chapterCardTex;
  uint _lensDirtTex;
  float _chapterTransition;
  uint _sceneTintColor;
  uint _chapterCardColor;
  uint _chapterBackgroundColor;
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

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};

struct BindlessParameters_PostProcessTransition_CD {
  PostProcessTransition_CDStruct BindlessParameters_PostProcessTransition_CD;
};

typedef BindlessParameters_PostProcessTransition_CD BindlessParameters_PostProcessTransition_CD_t;
ConstantBuffer<BindlessParameters_PostProcessTransition_CD_t> BindlessParameters_PostProcessTransition_CD[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _20;
  float _28;
  float _38;
  float _39;
  float _40;
  float _54;
  float _259;
  float _260;
  float _261;
  float _354;
  float _355;
  float _356;
  float _410;
  float _411;
  float _412;
  float _431;
  float _432;
  float _433;
  float _463;
  float _464;
  float _465;
  float _479;
  float _480;
  float _481;
  float4 _33;
  uint _41;
  bool _57;
  float _63;
  float _112;
  float _113;
  float _114;
  float _116;
  float _123;
  float _124;
  float _125;
  float _144;
  float _145;
  float _146;
  float _147;
  float _148;
  float _149;
  float _150;
  float _151;
  float _152;
  float _198;
  float _199;
  float _200;
  float _201;
  float _202;
  float _203;
  float _204;
  float _221;
  float _222;
  float _223;
  float _224;
  float _230;
  float _233;
  float _240;
  float _241;
  float _242;
  float _271;
  float _296;
  float _297;
  float _298;
  float _317;
  float _318;
  float _319;
  float _325;
  float _329;
  float _330;
  float _331;
  float _332;
  float _337;
  float _362;
  float _366;
  float _367;
  float _368;
  float _369;
  float _399;
  float _421;
  float _422;
  float _426;
  float _470;
  _20 = WaveReadLaneFirst(_materialIndex);
  _28 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)((uint)(select(((uint)_20 < (uint)170000), _20, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition_CD._chapterTransition);
  if (_28 > 0.0f) {
    _33 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
    _38 = _33.x;  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _39 = _33.y;  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _40 = _33.z;  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  } else {
    _38 = 0.0f;  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _39 = 0.0f;  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _40 = 0.0f;  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  }
  _41 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _54 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _41, 0)))).x) & 127)))) + 0.5f);
  } else {
    _54 = 0.0f;
  }
  _57 = (_localToneMappingParams.w > 0.0f);
  if (_57) {
    _63 = _userImageAdjust.z * _exposure0.x;
    _112 = exp2(log2(max(0.0f, (((_63 * max(0.0f, (((_38 * 1.70505f) - (_39 * 0.62179f)) - (_40 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _113 = exp2(log2(max(0.0f, (((max(0.0f, (((_39 * 1.1408f) - (_38 * 0.13026f)) - (_40 * 0.01055f))) * _63) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _114 = exp2(log2(max(0.0f, (((max(0.0f, (((_38 * -0.024f) - (_39 * 0.12897f)) + (_40 * 1.15297f))) * _63) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _116 = dot(float3(_112, _113, _114), float3(0.212671f, 0.71516f, 0.072169f));
    _123 = ((_112 - _116) * _powerParams.w) + _116;
    _124 = ((_113 - _116) * _powerParams.w) + _116;
    _125 = ((_114 - _116) * _powerParams.w) + _116;
    _144 = min(max(log2(mad(_125, 0.079223745f, mad(_124, 0.0784336f, (_123 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _145 = min(max(log2(mad(_125, 0.07916613f, mad(_124, 0.87846863f, (_123 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _146 = min(max(log2(mad(_125, 0.879143f, mad(_124, 0.0784336f, (_123 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _147 = _144 * 0.060606062f;
    _148 = _145 * 0.060606062f;
    _149 = _146 * 0.060606062f;
    _150 = _147 * _147;
    _151 = _148 * _148;
    _152 = _149 * _149;
    _198 = min(0.0f, (-0.0f - (((_144 * 0.0072181816f) + ((_150 * 0.4298f) + (((_150 * _150) * ((31.96f - (_144 * 2.4327273f)) + (_150 * 15.5f))) - ((_144 * 0.41624245f) * _150)))) + -0.00232f)));
    _199 = min(0.0f, (-0.0f - (((_145 * 0.0072181816f) + ((_151 * 0.4298f) + (((_151 * _151) * ((31.96f - (_145 * 2.4327273f)) + (_151 * 15.5f))) - ((_145 * 0.41624245f) * _151)))) + -0.00232f)));
    _200 = min(0.0f, (-0.0f - (((_146 * 0.0072181816f) + ((_152 * 0.4298f) + (((_152 * _152) * ((31.96f - (_146 * 2.4327273f)) + (_152 * 15.5f))) - ((_146 * 0.41624245f) * _152)))) + -0.00232f)));
    _201 = -0.0f - _198;
    _202 = -0.0f - _199;
    _203 = -0.0f - _200;
    _204 = dot(float3(_201, _202, _203), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _221 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _222 = -0.79999995f / _221;
      _223 = -1.2f / _221;
      _224 = 0.20000005f / _221;
      _230 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _233 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _240 = (_222 + 1.4f) + (_233 * (-0.39999998f - _222));
      _241 = (_223 + 1.6f) + (_233 * (-0.6f - _223));
      _242 = (_224 + 0.9f) + (_233 * (0.5f - _224));
      _259 = (lerp(_241, 1.2f, _230));  // [sem: blended]
      _260 = (lerp(_240, 1.0f, _230));  // [sem: blended]
      _261 = (lerp(_242, 1.4f, _230));  // [sem: blended]
    } else {
      _259 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _260 = 1.0f;  // [sem: blended]
      _261 = 1.4f;  // [sem: blended]
    }
    _271 = 1.0f - _259;
    _296 = ((exp2(log2(((saturate((_198 * _198) * _201) * _271) + _259) * _201) * _260) - _204) * _261) + _204;
    _297 = ((exp2(log2(((saturate((_199 * _199) * _202) * _271) + _259) * _202) * _260) - _204) * _261) + _204;
    _298 = ((exp2(log2(((saturate((_200 * _200) * _203) * _271) + _259) * _203) * _260) - _204) * _261) + _204;
    _317 = saturate(exp2(log2(mad(_298, -0.09902974f, mad(_297, -0.09802088f, (_296 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _318 = saturate(exp2(log2(mad(_298, -0.098961174f, mad(_297, 1.1519032f, (_296 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _319 = saturate(exp2(log2(mad(_298, 1.1510737f, mad(_297, -0.09804345f, (_296 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _325 = 1.0f - abs(_etcParams.w);
      _329 = saturate(_etcParams.w);  // [sem: expr_sat]
      _330 = (_325 * _317) + _329;
      _331 = (_325 * _318) + _329;
      _332 = (_325 * _319) + _329;
      if (_colorGradingParams.w > 0.0f) {
        _337 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _354 = (((max(0.0f, (1.0f - _330)) - _330) * _337) + _330);
        _355 = (((max(0.0f, (1.0f - _331)) - _331) * _337) + _331);
        _356 = (((max(0.0f, (1.0f - _332)) - _332) * _337) + _332);
      } else {
        _354 = _330;
        _355 = _331;
        _356 = _332;
      }
      _362 = _userImageAdjust.y + 1.0f;
      _366 = _userImageAdjust.x + 0.5f;
      _367 = ((_354 + -0.5f) * _362) + _366;
      _368 = ((_355 + -0.5f) * _362) + _366;
      _369 = ((_356 + -0.5f) * _362) + _366;
      _399 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _410 = exp2(log2(saturate(mad(_colorBlind0.z, _369, mad(_colorBlind0.y, _368, (_colorBlind0.x * _367))))) * _399);
      _411 = exp2(log2(saturate(mad(_colorBlind1.z, _369, mad(_colorBlind1.y, _368, (_colorBlind1.x * _367))))) * _399);
      _412 = exp2(log2(saturate(mad(_colorBlind2.z, _369, mad(_colorBlind2.y, _368, (_colorBlind2.x * _367))))) * _399);
    } else {
      _410 = _317;
      _411 = _318;
      _412 = _319;
    }
  } else {
    _410 = _38;
    _411 = _39;
    _412 = _40;
  }
  if (_etcParams.y > 1.0f) {
    _421 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _422 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _426 = saturate(1.0f - (dot(float2(_421, _422), float2(_421, _422)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _431 = (_426 * _410);
    _432 = (_426 * _411);
    _433 = (_426 * _412);
  } else {
    _431 = _410;
    _432 = _411;
    _433 = _412;
  }
  if (_57 && (_etcParams.z > 0.0f)) {
    _463 = select((_431 <= 0.0031308f), (_431 * 12.92f), (((pow(_431, 0.41666666f)) * 1.055f) + -0.055f));
    _464 = select((_432 <= 0.0031308f), (_432 * 12.92f), (((pow(_432, 0.41666666f)) * 1.055f) + -0.055f));
    _465 = select((_433 <= 0.0031308f), (_433 * 12.92f), (((pow(_433, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _463 = _431;
    _464 = _432;
    _465 = _433;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _470 = (float)((uint)((uint)(_41)));
    if (!(_470 < _viewDir.w)) {
      if (!(_470 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _479 = _463;
        _480 = _464;
        _481 = _465;
      } else {
        _479 = 0.0f;
        _480 = 0.0f;
        _481 = 0.0f;
      }
    } else {
      _479 = 0.0f;
      _480 = 0.0f;
      _481 = 0.0f;
    }
  } else {
    _479 = _463;
    _480 = _464;
    _481 = _465;
  }
  SV_Target.x = _479;
  SV_Target.y = _480;
  SV_Target.z = _481;
  SV_Target.w = _54;
  return SV_Target;
}
