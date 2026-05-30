Texture2D<float4> __3__36__0__0__g_sceneColor : register(t28, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t37, space36);

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
  float4 _viewProj[4] : packoffset(c010.x);
  float4 _viewProjNoJitter[4] : packoffset(c014.x);
  float4 _viewProjRelative[4] : packoffset(c018.x);
  float4 _viewProjRelativeNoJitter[4] : packoffset(c022.x);
  float4 _invViewProj[4] : packoffset(c026.x);
  float4 _invViewProjRelative[4] : packoffset(c030.x);
  float4 _invViewProjRelativeNoJitter[4] : packoffset(c034.x);
  float4 _viewProjRelativeOrtho[4] : packoffset(c038.x);
  float4 _sunDirection : packoffset(c042.x);
  float4 _moonDirection : packoffset(c043.x);
  float4 _moonRight : packoffset(c044.x);
  float4 _moonUp : packoffset(c045.x);
  float4 _ssaoRandomDirection[16] : packoffset(c046.x);
  float4 _view[4] : packoffset(c062.x);
  float4 _viewRelative[4] : packoffset(c066.x);
  float4 _viewRelativePrev[4] : packoffset(c070.x);
  float4 _proj[4] : packoffset(c074.x);
  float4 _projNoJitter[4] : packoffset(c078.x);
  float4 _viewPosPrev : packoffset(c082.x);
  float4 _viewProjNoJitterPrev[4] : packoffset(c083.x);
  float4 _viewProjRelativePrev[4] : packoffset(c087.x);
  float4 _viewProjRelativeNoJitterPrev[4] : packoffset(c091.x);
  float4 _invViewProjPrev[4] : packoffset(c095.x);
  float4 _invViewProjRelativePrev[4] : packoffset(c099.x);
  float4 _projToPrevProj[4] : packoffset(c103.x);
  float4 _projToPrevProjNoTranslation[4] : packoffset(c107.x);
  float4 _viewProjectionTexScale[4] : packoffset(c111.x);
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
  int _colorBlindParam : packoffset(c012.x);
  int _nightToneParm : packoffset(c012.y);
  int2 _padding : packoffset(c012.z);
};

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointBlackBorder : register(s11, space4);

float4 main(
  noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _14 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));
  float _37;
  float _38;
  float _82;
  float _83;
  float _84;
  float _184;
  float _185;
  float _186;
  float _243;
  float _244;
  float _245;
  float _328;
  if (_postProcessParams.w > 0.0f) {
    float4 _31 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003000000026077032f) + -0.001500000013038516f)) + TEXCOORD.x), TEXCOORD.y), 0.0f);
    float4 _34 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003000000026077032f) + -0.001500000013038516f)) + TEXCOORD.y)), 0.0f);
    _37 = _31.x;
    _38 = _34.z;
  } else {
    _37 = _14.x;
    _38 = _14.z;
  }
  if (_slopeParams.w > 0.0f) {
    float _48 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    float _49 = _48 * 0.7692307829856873f;
    float _53 = frac(abs(_49));
    float _58 = _48 * 0.08130080997943878f;
    float _62 = frac(abs(_58));
    float _67 = ((select((_58 >= (-0.0f - _58)), _62, (-0.0f - _62)) * 1230.0f) + 10.0f) * ((select((_49 >= (-0.0f - _49)), _53, (-0.0f - _53)) * 13.0f) + 1.0f);
    float _71 = frac(abs(_67));
    float _77 = ((0.007500052452087402f - (select((_67 >= (-0.0f - _67)), _71, (-0.0f - _71)) * 0.15000000596046448f)) * _slopeParams.w) + 1.0f;
    _82 = (_77 * _37);
    _83 = (_77 * _14.y);
    _84 = (_77 * _38);
  } else {
    _82 = _37;
    _83 = _14.y;
    _84 = _38;
  }
  uint _90 = uint(_screenSizeAndInvSize.x * TEXCOORD.x);
  uint _91 = uint(_screenSizeAndInvSize.y * TEXCOORD.y);
  float _93 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));
  if (!(((_93.x < 1.0000000116860974e-07f)) || ((_93.x == 1.0f)))) {
    float _101 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    float4 _108 = __3__36__0__0__g_sceneColor.Load(int3((int)(_90), ((int)(_91 + (uint)(-1))), 0));
    float4 _113 = __3__36__0__0__g_sceneColor.Load(int3(((int)(_90 + (uint)(-1))), (int)(_91), 0));
    float4 _118 = __3__36__0__0__g_sceneColor.Load(int3(((int)(_90 + 1u)), (int)(_91), 0));
    float4 _123 = __3__36__0__0__g_sceneColor.Load(int3((int)(_90), ((int)(_91 + 1u)), 0));
    float _134 = max(max(_83, _108.y), max(max(_113.y, _118.y), _123.y));
    float _141 = sqrt(saturate(min(min(min(_83, _108.y), min(min(_113.y, _118.y), _123.y)), (1.0f - _134)) * (1.0f / _134))) * (-1.0f / (((1.0f - _101) * 8.0f) + (_101 * 5.0f)));
    float _144 = 1.0f / ((_141 * 4.0f) + 1.0f);
    float _166 = saturate(((_141 * (((_113.x + _108.x) + _118.x) + _123.x)) + _82) * _144) - _82;
    float _167 = saturate(((_141 * (((_113.y + _108.y) + _118.y) + _123.y)) + _83) * _144) - _83;
    float _168 = saturate(((_141 * (((_113.z + _108.z) + _118.z) + _123.z)) + _84) * _144) - _84;
    float _173 = 1.0f - dot(float3(abs(_166), abs(_167), abs(_168)), float3(0.21267099678516388f, 0.7151600122451782f, 0.0721689984202385f));
    float _174 = _173 * _173;
    float _175 = _174 * _174;
    float _176 = _175 * _175;
    _184 = ((_176 * _166) + _82);
    _185 = ((_176 * _167) + _83);
    _186 = ((_176 * _168) + _84);
  } else {
    _184 = _82;
    _185 = _83;
    _186 = _84;
  }
  float _214 = 1.0f - abs(_etcParams.w);
  float _218 = saturate(_etcParams.w);
  float _219 = (_214 * select((_184 < 0.040449999272823334f), (_184 * 0.07739938050508499f), exp2(log2((_184 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f))) + _218;
  float _220 = (_214 * select((_185 < 0.040449999272823334f), (_185 * 0.07739938050508499f), exp2(log2((_185 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f))) + _218;
  float _221 = (_214 * select((_186 < 0.040449999272823334f), (_186 * 0.07739938050508499f), exp2(log2((_186 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f))) + _218;
  if (_colorGradingParams.w > 0.0f) {
    float _226 = saturate(_colorGradingParams.w);
    _243 = (((max(0.0f, (1.0f - _219)) - _219) * _226) + _219);
    _244 = (((max(0.0f, (1.0f - _220)) - _220) * _226) + _220);
    _245 = (((max(0.0f, (1.0f - _221)) - _221) * _226) + _221);
  } else {
    _243 = _219;
    _244 = _220;
    _245 = _221;
  }
  float _252 = (pow(_243, 0.012683313339948654f));
  float _253 = (pow(_244, 0.012683313339948654f));
  float _254 = (pow(_245, 0.012683313339948654f));
  float _280 = (TEXCOORD.x * 2.0f) + -1.0f;
  float _281 = TEXCOORD.y * 2.0f;
  float _282 = 1.0f - _281;
  float _310 = mad((_projToPrevProj[2].w), 1.0000000116860974e-07f, mad((_projToPrevProj[1].w), _282, ((_projToPrevProj[0].w) * _280))) + (_projToPrevProj[3].w);
  float _313 = ((mad((_projToPrevProj[2].x), 1.0000000116860974e-07f, mad((_projToPrevProj[1].x), _282, ((_projToPrevProj[0].x) * _280))) + (_projToPrevProj[3].x)) / _310) - _280;
  float _314 = ((mad((_projToPrevProj[2].y), 1.0000000116860974e-07f, mad((_projToPrevProj[1].y), _282, ((_projToPrevProj[0].y) * _280))) + (_projToPrevProj[3].y)) / _310) - _282;
  if (_localToneMappingParams.w > 0.0f) {
    _328 = saturate(1.0f - (sqrt((_314 * _314) + (_313 * _313)) * 2.0f));
  } else {
    _328 = 1.0f;
  }
  float _331 = abs(_280);
  float _332 = abs(_281 + -1.0f);
  float _336 = saturate(1.0f - ((_328 * _postProcessParams.x) * dot(float2(_331, _332), float2(_331, _332))));
  float _346 = exp2(log2(_336 * exp2(log2(max(0.0f, (_252 + -0.8359375f)) / (18.8515625f - (_252 * 18.6875f))) * 6.277394771575928f)) * 0.1593017578125f);
  float _347 = exp2(log2(_336 * exp2(log2(max(0.0f, (_253 + -0.8359375f)) / (18.8515625f - (_253 * 18.6875f))) * 6.277394771575928f)) * 0.1593017578125f);
  float _348 = exp2(log2(_336 * exp2(log2(max(0.0f, (_254 + -0.8359375f)) / (18.8515625f - (_254 * 18.6875f))) * 6.277394771575928f)) * 0.1593017578125f);
  bool _381 = ((!(SV_Position.y < _viewDir.w))) && ((!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))));
  SV_Target.x = select(_381, exp2(log2((1.0f / ((_346 * 18.6875f) + 1.0f)) * ((_346 * 18.8515625f) + 0.8359375f)) * 78.84375f), 0.0f);
  SV_Target.y = select(_381, exp2(log2((1.0f / ((_347 * 18.6875f) + 1.0f)) * ((_347 * 18.8515625f) + 0.8359375f)) * 78.84375f), 0.0f);
  SV_Target.z = select(_381, exp2(log2((1.0f / ((_348 * 18.6875f) + 1.0f)) * ((_348 * 18.8515625f) + 0.8359375f)) * 78.84375f), 0.0f);
  SV_Target.w = _14.w;
  return SV_Target;
}