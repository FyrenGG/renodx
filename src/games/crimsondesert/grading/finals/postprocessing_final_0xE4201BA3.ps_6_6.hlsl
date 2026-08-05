Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

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
  float4 _14;
  float _37;
  float _38;
  float _82;
  float _83;
  float _84;
  float _187;
  float _188;
  float _189;
  float _246;
  float _247;
  float _248;
  float _306;
  bool _362;
  float _48;
  float _49;
  float _51;
  float _52;
  float _54;
  float _67;
  float _69;
  float _77;
  uint _88;
  uint _91;
  float _94;
  float _103;
  float4 _106;
  float4 _111;
  float4 _116;
  float4 _121;
  float _128;
  float _144;
  float _147;
  float _155;
  float _163;
  float _171;
  float _176;
  float _177;
  float _178;
  float _179;
  float _193;
  float _194;
  float _204;
  float _214;
  float _224;
  float _229;
  float _251;
  float _254;
  float _257;
  float _259;
  float _260;
  float _261;
  float _273;
  float _283;
  float _293;
  float _307;
  float _309;
  float _316;
  float _328;
  float _340;
  float _352;
  _14 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_postProcessParams.w > 0.0f) {
    _37 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003f) + -0.0015f)) + TEXCOORD.y)), 0.0f))).z);
    _38 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003f) + -0.0015f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
  } else {
    _37 = _14.z;
    _38 = _14.x;
  }
  if (_slopeParams.w > 0.0f) {
    _48 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    _49 = _48 * 0.7692308f;
    _51 = frac(abs(_49));
    _52 = _48 * 0.08130081f;
    _54 = frac(abs(_52));
    _67 = ((select((_52 >= (-0.0f - _52)), _54, (-0.0f - _54)) * 1230.0f) + 10.0f) * ((select((_49 >= (-0.0f - _49)), _51, (-0.0f - _51)) * 13.0f) + 1.0f);
    _69 = frac(abs(_67));
    _77 = ((0.0075000525f - (select((_67 >= (-0.0f - _67)), _69, (-0.0f - _69)) * 0.15f)) * _slopeParams.w) + 1.0f;
    _82 = (_77 * _37);
    _83 = (_77 * _14.y);
    _84 = (_77 * _38);
  } else {
    _82 = _37;
    _83 = _14.y;
    _84 = _38;
  }
  _88 = (uint)(_screenSizeAndInvSize.x * TEXCOORD.x);
  _91 = (uint)(_screenSizeAndInvSize.y * TEXCOORD.y);
  _94 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_94.x < 1e-07f) || (_94.x == 1.0f))) {
    _103 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _106 = __3__36__0__0__g_sceneColor.Load(int3(_88, ((int)((uint)((uint)(_91)) + (uint)(-1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _111 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_88)) + (uint)(-1))), _91, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _116 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_88)) + (uint)(1))), _91, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _121 = __3__36__0__0__g_sceneColor.Load(int3(_88, ((int)((uint)((uint)(_91)) + (uint)(1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _128 = max(max(_83, _106.y), max(max(_111.y, _116.y), _121.y));
    _144 = (-1.0f / (((1.0f - _103) * 8.0f) + (_103 * 5.0f))) * sqrt(saturate((1.0f / _128) * min(min(min(_83, _106.y), min(min(_111.y, _116.y), _121.y)), (1.0f - _128))));
    _147 = 1.0f / ((_144 * 4.0f) + 1.0f);
    _155 = saturate(((_144 * (((_111.x + _106.x) + _116.x) + _121.x)) + _84) * _147) - _84;
    _163 = saturate(((_144 * (((_111.y + _106.y) + _116.y) + _121.y)) + _83) * _147) - _83;
    _171 = saturate(((_144 * (((_111.z + _106.z) + _116.z) + _121.z)) + _82) * _147) - _82;
    _176 = 1.0f - dot(float3(abs(_155), abs(_163), abs(_171)), float3(0.212671f, 0.71516f, 0.072169f));
    _177 = _176 * _176;
    _178 = _177 * _177;
    _179 = _178 * _178;
    _187 = ((_179 * _171) + _82);
    _188 = ((_179 * _163) + _83);
    _189 = ((_179 * _155) + _84);
  } else {
    _187 = _82;
    _188 = _83;
    _189 = _84;
  }
  _193 = 1.0f - abs(_etcParams.w);
  _194 = saturate(_etcParams.w);  // [sem: expr_sat]
  _204 = (select((_189 < 0.04045f), (_189 * 0.07739938f), exp2(log2((_189 + 0.055f) * 0.94786733f) * 2.4f)) * _193) + _194;
  _214 = (select((_188 < 0.04045f), (_188 * 0.07739938f), exp2(log2((_188 + 0.055f) * 0.94786733f) * 2.4f)) * _193) + _194;
  _224 = (select((_187 < 0.04045f), (_187 * 0.07739938f), exp2(log2((_187 + 0.055f) * 0.94786733f) * 2.4f)) * _193) + _194;
  if (_colorGradingParams.w > 0.0f) {
    _229 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _246 = (((max(0.0f, (1.0f - _204)) - _204) * _229) + _204);
    _247 = (((max(0.0f, (1.0f - _214)) - _214) * _229) + _214);
    _248 = (((max(0.0f, (1.0f - _224)) - _224) * _229) + _224);
  } else {
    _246 = _204;
    _247 = _214;
    _248 = _224;
  }
  _251 = (pow(_246, 0.012683313f));
  _254 = (pow(_247, 0.012683313f));
  _257 = (pow(_248, 0.012683313f));
  _259 = (TEXCOORD.x * 2.0f) + -1.0f;
  _260 = TEXCOORD.y * 2.0f;
  _261 = 1.0f - _260;
  _273 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _261, ((_projToPrevProj[3].x) * _259)));
  _283 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _261, ((_projToPrevProj[0].x) * _259))) + (_projToPrevProj[0].w)) / _273) - _259;
  _293 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _261, ((_projToPrevProj[1].x) * _259))) + (_projToPrevProj[1].w)) / _273) - _261;
  if (_localToneMappingParams.w > 0.0f) {
    _306 = saturate(1.0f - (sqrt((_293 * _293) + (_283 * _283)) * 2.0f));  // [sem: expr_sat]
  } else {
    _306 = 1.0f;  // [sem: expr_sat]
  }
  _307 = abs(_259);
  _309 = abs(_260 + -1.0f);
  _316 = saturate(1.0f - ((_postProcessParams.x * _306) * dot(float2(_307, _309), float2(_307, _309))));  // [sem: expr_sat]
  _328 = exp2(log2(exp2(log2(max(0.0f, (_251 + -0.8359375f)) / (18.851562f - (_251 * 18.6875f))) * 6.277395f) * _316) * 0.15930176f);
  _340 = exp2(log2(exp2(log2(max(0.0f, (_254 + -0.8359375f)) / (18.851562f - (_254 * 18.6875f))) * 6.277395f) * _316) * 0.15930176f);
  _352 = exp2(log2(exp2(log2(max(0.0f, (_257 + -0.8359375f)) / (18.851562f - (_257 * 18.6875f))) * 6.277395f) * _316) * 0.15930176f);
  if (!(SV_Position.y < _viewDir.w)) {
    _362 = (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w)));
  } else {
    _362 = false;
  }
  SV_Target.x = select(_362, exp2(log2((1.0f / ((_328 * 18.6875f) + 1.0f)) * ((_328 * 18.851562f) + 0.8359375f)) * 78.84375f), 0.0f);
  SV_Target.y = select(_362, exp2(log2((1.0f / ((_340 * 18.6875f) + 1.0f)) * ((_340 * 18.851562f) + 0.8359375f)) * 78.84375f), 0.0f);
  SV_Target.z = select(_362, exp2(log2((1.0f / ((_352 * 18.6875f) + 1.0f)) * ((_352 * 18.851562f) + 0.8359375f)) * 78.84375f), 0.0f);
  SV_Target.w = _14.w;
  return SV_Target;
}
