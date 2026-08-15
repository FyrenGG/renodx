Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

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

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointBlackBorder : register(s11, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _16;
  float _39;
  float _40;
  float _84;
  float _85;
  float _86;
  float _169;
  float _170;
  float _171;
  float _231;
  float _232;
  float _233;
  float _336;
  float _50;
  float _51;
  float _55;
  float _60;
  float _64;
  float _69;
  float _73;
  float _79;
  uint _92;
  uint _93;
  float _95;
  float _103;
  float4 _110;
  float4 _115;
  float4 _120;
  float4 _125;
  float _136;
  float _143;
  float _146;
  float _202;
  float _206;
  float _207;
  float _208;
  float _209;
  float _214;
  float _240;
  float _244;
  float _245;
  float _246;
  float _247;
  float _277;
  float _288;
  float _289;
  float _290;
  float _318;
  float _321;
  float _322;
  float _339;
  float _340;
  float _344;
  bool _353;
  _16 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_postProcessParams.w > 0.0f) {
    _39 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003f) + -0.0015f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
    _40 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003f) + -0.0015f)) + TEXCOORD.y)), 0.0f))).z);
  } else {
    _39 = _16.x;
    _40 = _16.z;
  }
  if (_slopeParams.w > 0.0f) {
    _50 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    _51 = _50 * 0.7692308f;
    _55 = frac(abs(_51));
    _60 = _50 * 0.08130081f;
    _64 = frac(abs(_60));
    _69 = ((select((_60 >= (-0.0f - _60)), _64, (-0.0f - _64)) * 1230.0f) + 10.0f) * ((select((_51 >= (-0.0f - _51)), _55, (-0.0f - _55)) * 13.0f) + 1.0f);
    _73 = frac(abs(_69));
    _79 = ((0.0075000525f - (select((_69 >= (-0.0f - _69)), _73, (-0.0f - _73)) * 0.15f)) * _slopeParams.w) + 1.0f;
    _84 = (_79 * _39);
    _85 = (_79 * _16.y);
    _86 = (_79 * _40);
  } else {
    _84 = _39;
    _85 = _16.y;
    _86 = _40;
  }
  _92 = (uint)(_screenSizeAndInvSize.x * TEXCOORD.x);
  _93 = (uint)(_screenSizeAndInvSize.y * TEXCOORD.y);
  _95 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_95.x < 1e-07f) || (_95.x == 1.0f))) {
    _103 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _110 = __3__36__0__0__g_sceneColor.Load(int3(_92, ((int)((uint)((uint)(_93)) + (uint)(-1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _115 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_92)) + (uint)(-1))), _93, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _120 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_92)) + (uint)(1))), _93, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _125 = __3__36__0__0__g_sceneColor.Load(int3(_92, ((int)((uint)((uint)(_93)) + (uint)(1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _136 = max(max(_85, _110.y), max(max(_115.y, _120.y), _125.y));
    _143 = sqrt(saturate(min(min(min(_85, _110.y), min(min(_115.y, _120.y), _125.y)), (1.0f - _136)) * (1.0f / _136))) * (-1.0f / (((1.0f - _103) * 8.0f) + (_103 * 5.0f)));
    _146 = 1.0f / ((_143 * 4.0f) + 1.0f);
    _169 = saturate(((_143 * (((_115.x + _110.x) + _120.x) + _125.x)) + _84) * _146);  // [sem: expr_sat]
    _170 = saturate(((_143 * (((_115.y + _110.y) + _120.y) + _125.y)) + _85) * _146);  // [sem: expr_sat]
    _171 = saturate(((_143 * (((_115.z + _110.z) + _120.z) + _125.z)) + _86) * _146);  // [sem: expr_sat]
  } else {
    _169 = _84;  // [sem: expr_sat]
    _170 = _85;  // [sem: expr_sat]
    _171 = _86;  // [sem: expr_sat]
  }
  _202 = 1.0f - abs(_etcParams.w);
  _206 = saturate(_etcParams.w);  // [sem: expr_sat]
  _207 = (_202 * saturate(select((_169 < 0.04045f), (_169 * 0.07739938f), exp2(log2((_169 + 0.055f) * 0.94786733f) * 2.4f)))) + _206;
  _208 = (_202 * saturate(select((_170 < 0.04045f), (_170 * 0.07739938f), exp2(log2((_170 + 0.055f) * 0.94786733f) * 2.4f)))) + _206;
  _209 = (_202 * saturate(select((_171 < 0.04045f), (_171 * 0.07739938f), exp2(log2((_171 + 0.055f) * 0.94786733f) * 2.4f)))) + _206;
  if (_colorGradingParams.w > 0.0f) {
    _214 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _231 = (((max(0.0f, (1.0f - _207)) - _207) * _214) + _207);
    _232 = (((max(0.0f, (1.0f - _208)) - _208) * _214) + _208);
    _233 = (((max(0.0f, (1.0f - _209)) - _209) * _214) + _209);
  } else {
    _231 = _207;
    _232 = _208;
    _233 = _209;
  }
  _240 = _userImageAdjust.y + 1.0f;
  _244 = _userImageAdjust.x + 0.5f;
  _245 = (_240 * (_231 + -0.5f)) + _244;
  _246 = (_240 * (_232 + -0.5f)) + _244;
  _247 = (_240 * (_233 + -0.5f)) + _244;
  _277 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _288 = (TEXCOORD.x * 2.0f) + -1.0f;
  _289 = TEXCOORD.y * 2.0f;
  _290 = 1.0f - _289;
  _318 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _290, ((_projToPrevProj[3].x) * _288))) + (_projToPrevProj[3].w);
  _321 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _290, ((_projToPrevProj[0].x) * _288))) + (_projToPrevProj[0].w)) / _318) - _288;
  _322 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _290, ((_projToPrevProj[1].x) * _288))) + (_projToPrevProj[1].w)) / _318) - _290;
  if (_localToneMappingParams.w > 0.0f) {
    _336 = saturate(1.0f - (sqrt((_322 * _322) + (_321 * _321)) * 2.0f));  // [sem: expr_sat]
  } else {
    _336 = 1.0f;  // [sem: expr_sat]
  }
  _339 = abs(_288);
  _340 = abs(_289 + -1.0f);
  _344 = saturate(1.0f - ((_336 * _postProcessParams.x) * dot(float2(_339, _340), float2(_339, _340))));  // [sem: expr_sat]
  _353 = (!(SV_Position.y < _viewDir.w)) && (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w)));
  SV_Target.x = select(_353, (_344 * exp2(log2(saturate(mad(_colorBlind0.z, _247, mad(_colorBlind0.y, _246, (_245 * _colorBlind0.x))))) * _277)), 0.0f);
  SV_Target.y = select(_353, (_344 * exp2(log2(saturate(mad(_colorBlind1.z, _247, mad(_colorBlind1.y, _246, (_245 * _colorBlind1.x))))) * _277)), 0.0f);
  SV_Target.z = select(_353, (_344 * exp2(log2(saturate(mad(_colorBlind2.z, _247, mad(_colorBlind2.y, _246, (_245 * _colorBlind2.x))))) * _277)), 0.0f);
  SV_Target.w = _16.w;
  return SV_Target;
}
