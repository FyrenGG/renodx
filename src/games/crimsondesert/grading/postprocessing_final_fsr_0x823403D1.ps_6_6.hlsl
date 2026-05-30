Texture2D<float4> __3__36__0__0__g_sceneColor : register(t28, space36);

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
  float4 _13 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));
  float _36;
  float _37;
  float _81;
  float _82;
  float _83;
  float _140;
  float _141;
  float _142;
  float _225;
  float _283;
  float _284;
  float _285;
  if (_postProcessParams.w > 0.0f) {
    float4 _30 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003000000026077032f) + -0.001500000013038516f)) + TEXCOORD.x), TEXCOORD.y), 0.0f);
    float4 _33 = __3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003000000026077032f) + -0.001500000013038516f)) + TEXCOORD.y)), 0.0f);
    _36 = _30.x;
    _37 = _33.z;
  } else {
    _36 = _13.x;
    _37 = _13.z;
  }
  if (_slopeParams.w > 0.0f) {
    float _47 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    float _48 = _47 * 0.7692307829856873f;
    float _52 = frac(abs(_48));
    float _57 = _47 * 0.08130080997943878f;
    float _61 = frac(abs(_57));
    float _66 = ((select((_57 >= (-0.0f - _57)), _61, (-0.0f - _61)) * 1230.0f) + 10.0f) * ((select((_48 >= (-0.0f - _48)), _52, (-0.0f - _52)) * 13.0f) + 1.0f);
    float _70 = frac(abs(_66));
    float _76 = ((0.007500052452087402f - (select((_66 >= (-0.0f - _66)), _70, (-0.0f - _70)) * 0.15000000596046448f)) * _slopeParams.w) + 1.0f;
    _81 = (_76 * _36);
    _82 = (_76 * _13.y);
    _83 = (_76 * _37);
  } else {
    _81 = _36;
    _82 = _13.y;
    _83 = _37;
  }
  float _111 = 1.0f - abs(_etcParams.w);
  float _115 = saturate(_etcParams.w);
  float _116 = (_111 * select((_81 < 0.040449999272823334f), (_81 * 0.07739938050508499f), exp2(log2((_81 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f))) + _115;
  float _117 = (_111 * select((_82 < 0.040449999272823334f), (_82 * 0.07739938050508499f), exp2(log2((_82 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f))) + _115;
  float _118 = (_111 * select((_83 < 0.040449999272823334f), (_83 * 0.07739938050508499f), exp2(log2((_83 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f))) + _115;
  if (_colorGradingParams.w > 0.0f) {
    float _123 = saturate(_colorGradingParams.w);
    _140 = (((max(0.0f, (1.0f - _116)) - _116) * _123) + _116);
    _141 = (((max(0.0f, (1.0f - _117)) - _117) * _123) + _117);
    _142 = (((max(0.0f, (1.0f - _118)) - _118) * _123) + _118);
  } else {
    _140 = _116;
    _141 = _117;
    _142 = _118;
  }
  float _149 = (pow(_140, 0.012683313339948654f));
  float _150 = (pow(_141, 0.012683313339948654f));
  float _151 = (pow(_142, 0.012683313339948654f));
  float _177 = (TEXCOORD.x * 2.0f) + -1.0f;
  float _178 = TEXCOORD.y * 2.0f;
  float _179 = 1.0f - _178;
  float _207 = mad((_projToPrevProj[2].w), 1.0000000116860974e-07f, mad((_projToPrevProj[1].w), _179, ((_projToPrevProj[0].w) * _177))) + (_projToPrevProj[3].w);
  float _210 = ((mad((_projToPrevProj[2].x), 1.0000000116860974e-07f, mad((_projToPrevProj[1].x), _179, ((_projToPrevProj[0].x) * _177))) + (_projToPrevProj[3].x)) / _207) - _177;
  float _211 = ((mad((_projToPrevProj[2].y), 1.0000000116860974e-07f, mad((_projToPrevProj[1].y), _179, ((_projToPrevProj[0].y) * _177))) + (_projToPrevProj[3].y)) / _207) - _179;
  if (_localToneMappingParams.w > 0.0f) {
    _225 = saturate(1.0f - (sqrt((_211 * _211) + (_210 * _210)) * 2.0f));
  } else {
    _225 = 1.0f;
  }
  float _228 = abs(_177);
  float _229 = abs(_178 + -1.0f);
  float _233 = saturate(1.0f - ((_225 * _postProcessParams.x) * dot(float2(_228, _229), float2(_228, _229))));
  float _243 = exp2(log2(_233 * exp2(log2(max(0.0f, (_149 + -0.8359375f)) / (18.8515625f - (_149 * 18.6875f))) * 6.277394771575928f)) * 0.1593017578125f);
  float _244 = exp2(log2(_233 * exp2(log2(max(0.0f, (_150 + -0.8359375f)) / (18.8515625f - (_150 * 18.6875f))) * 6.277394771575928f)) * 0.1593017578125f);
  float _245 = exp2(log2(_233 * exp2(log2(max(0.0f, (_151 + -0.8359375f)) / (18.8515625f - (_151 * 18.6875f))) * 6.277394771575928f)) * 0.1593017578125f);
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _283 = exp2(log2((1.0f / ((_243 * 18.6875f) + 1.0f)) * ((_243 * 18.8515625f) + 0.8359375f)) * 78.84375f);
      _284 = exp2(log2((1.0f / ((_244 * 18.6875f) + 1.0f)) * ((_244 * 18.8515625f) + 0.8359375f)) * 78.84375f);
      _285 = exp2(log2((1.0f / ((_245 * 18.6875f) + 1.0f)) * ((_245 * 18.8515625f) + 0.8359375f)) * 78.84375f);
    } else {
      _283 = 0.0f;
      _284 = 0.0f;
      _285 = 0.0f;
    }
  } else {
    _283 = 0.0f;
    _284 = 0.0f;
    _285 = 0.0f;
  }
  SV_Target.x = _283;
  SV_Target.y = _284;
  SV_Target.z = _285;
  SV_Target.w = _13.w;
  return SV_Target;
}