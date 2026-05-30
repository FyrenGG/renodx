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
  float _11[36];
  float4 _14 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));
  float _37;
  float _38;
  float _82;
  float _83;
  float _84;
  float _144;
  float _145;
  float _146;
  float _316;
  float _338;
  float _339;
  float _340;
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
  float _115 = 1.0f - abs(_etcParams.w);
  float _119 = saturate(_etcParams.w);
  float _120 = (_115 * saturate(select((_82 < 0.040449999272823334f), (_82 * 0.07739938050508499f), exp2(log2((_82 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)))) + _119;
  float _121 = (_115 * saturate(select((_83 < 0.040449999272823334f), (_83 * 0.07739938050508499f), exp2(log2((_83 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)))) + _119;
  float _122 = (_115 * saturate(select((_84 < 0.040449999272823334f), (_84 * 0.07739938050508499f), exp2(log2((_84 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)))) + _119;
  if (_colorGradingParams.w > 0.0f) {
    float _127 = saturate(_colorGradingParams.w);
    _144 = (((max(0.0f, (1.0f - _120)) - _120) * _127) + _120);
    _145 = (((max(0.0f, (1.0f - _121)) - _121) * _127) + _121);
    _146 = (((max(0.0f, (1.0f - _122)) - _122) * _127) + _122);
  } else {
    _144 = _120;
    _145 = _121;
    _146 = _122;
  }
  float _153 = _userImageAdjust.y + 1.0f;
  float _157 = _userImageAdjust.x + 0.5f;
  float _158 = (_153 * (_144 + -0.5f)) + _157;
  float _159 = (_153 * (_145 + -0.5f)) + _157;
  float _160 = (_153 * (_146 + -0.5f)) + _157;
  _11[0] = 1.0f;
  _11[1] = 0.0f;
  _11[2] = 0.0f;
  _11[3] = 0.0f;
  _11[4] = 1.0f;
  _11[5] = 0.0f;
  _11[6] = 0.0f;
  _11[7] = 0.0f;
  _11[8] = 1.0f;
  _11[9] = 0.800000011920929f;
  _11[10] = 0.25832998752593994f;
  _11[11] = 0.0f;
  _11[12] = 0.20000000298023224f;
  _11[13] = 0.7416700124740601f;
  _11[14] = 0.14167000353336334f;
  _11[15] = 0.0f;
  _11[16] = 0.0f;
  _11[17] = 0.8583300113677979f;
  _11[18] = 0.8166700005531311f;
  _11[19] = 0.3333300054073334f;
  _11[20] = 0.0f;
  _11[21] = 0.1833299994468689f;
  _11[22] = 0.666670024394989f;
  _11[23] = 0.125f;
  _11[24] = 0.0f;
  _11[25] = 0.0f;
  _11[26] = 0.875f;
  _11[27] = 0.9666699767112732f;
  _11[28] = 0.0f;
  _11[29] = 0.0f;
  _11[30] = 0.033330000936985016f;
  _11[31] = 0.7333300113677979f;
  _11[32] = 0.1833299994468689f;
  _11[33] = 0.0f;
  _11[34] = 0.26666998863220215f;
  _11[35] = 0.8166700005531311f;
  int _201 = min(max(_colorBlindParam, 0), 3);
  float _256 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
  float _267 = (TEXCOORD.x * 2.0f) + -1.0f;
  float _268 = TEXCOORD.y * 2.0f;
  float _269 = 1.0f - _268;
  float _297 = mad((_projToPrevProj[2].w), 1.0000000116860974e-07f, mad((_projToPrevProj[1].w), _269, ((_projToPrevProj[0].w) * _267))) + (_projToPrevProj[3].w);
  float _300 = ((mad((_projToPrevProj[2].x), 1.0000000116860974e-07f, mad((_projToPrevProj[1].x), _269, ((_projToPrevProj[0].x) * _267))) + (_projToPrevProj[3].x)) / _297) - _267;
  float _301 = ((mad((_projToPrevProj[2].y), 1.0000000116860974e-07f, mad((_projToPrevProj[1].y), _269, ((_projToPrevProj[0].y) * _267))) + (_projToPrevProj[3].y)) / _297) - _269;
  if (_localToneMappingParams.w > 0.0f) {
    _316 = saturate(1.0f - (sqrt((_301 * _301) + (_300 * _300)) * 2.0f));
  } else {
    _316 = 1.0f;
  }
  float _319 = abs(_267);
  float _320 = abs(_268 + -1.0f);
  float _324 = saturate(1.0f - ((_316 * _postProcessParams.x) * dot(float2(_319, _320), float2(_319, _320))));
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _338 = (_324 * exp2(log2(saturate(mad((_11[((int)(6u + (_201 * 9)))]), _160, mad((_11[((int)(3u + (_201 * 9)))]), _159, ((_11[((int)(0u + (_201 * 9)))]) * _158))))) * _256));
      _339 = (_324 * exp2(log2(saturate(mad((_11[((int)(7u + (_201 * 9)))]), _160, mad((_11[((int)(4u + (_201 * 9)))]), _159, ((_11[((int)(1u + (_201 * 9)))]) * _158))))) * _256));
      _340 = (_324 * exp2(log2(saturate(mad((_11[((int)(8u + (_201 * 9)))]), _160, mad((_11[((int)(5u + (_201 * 9)))]), _159, ((_11[((int)(2u + (_201 * 9)))]) * _158))))) * _256));
    } else {
      _338 = 0.0f;
      _339 = 0.0f;
      _340 = 0.0f;
    }
  } else {
    _338 = 0.0f;
    _339 = 0.0f;
    _340 = 0.0f;
  }
  SV_Target.x = _338;
  SV_Target.y = _339;
  SV_Target.z = _340;
  SV_Target.w = _14.w;
  return SV_Target;
}