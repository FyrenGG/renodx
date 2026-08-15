Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

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
  float4 _15;
  float _38;
  float _39;
  float _83;
  float _84;
  float _85;
  float _184;
  float _185;
  float _186;
  float _269;
  float _327;
  float _328;
  float _329;
  float _49;
  float _50;
  float _54;
  float _59;
  float _63;
  float _68;
  float _72;
  float _78;
  float _90;
  float _138;
  float _139;
  float _140;
  float _142;
  float _155;
  float _159;
  float _160;
  float _161;
  float _162;
  float _167;
  float _193;
  float _194;
  float _195;
  float _221;
  float _222;
  float _223;
  float _251;
  float _254;
  float _255;
  float _272;
  float _273;
  float _277;
  float _287;
  float _288;
  float _289;
  _15 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_postProcessParams.w > 0.0f) {
    _38 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003f) + -0.0015f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
    _39 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003f) + -0.0015f)) + TEXCOORD.y)), 0.0f))).z);
  } else {
    _38 = _15.x;
    _39 = _15.z;
  }
  if (_slopeParams.w > 0.0f) {
    _49 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    _50 = _49 * 0.7692308f;
    _54 = frac(abs(_50));
    _59 = _49 * 0.08130081f;
    _63 = frac(abs(_59));
    _68 = ((select((_59 >= (-0.0f - _59)), _63, (-0.0f - _63)) * 1230.0f) + 10.0f) * ((select((_50 >= (-0.0f - _50)), _54, (-0.0f - _54)) * 13.0f) + 1.0f);
    _72 = frac(abs(_68));
    _78 = ((0.0075000525f - (select((_68 >= (-0.0f - _68)), _72, (-0.0f - _72)) * 0.15f)) * _slopeParams.w) + 1.0f;
    _83 = (_78 * _38);
    _84 = (_78 * _15.y);
    _85 = (_78 * _39);
  } else {
    _83 = _38;
    _84 = _15.y;
    _85 = _39;
  }
  _90 = _userImageAdjust.z * _exposure0.x;
  _138 = exp2(log2(max(0.0f, (_offsetParams.x + ((max(0.0f, (((_83 * 1.70505f) - (_84 * 0.62179f)) - (_85 * 0.08326f))) * _slopeParams.x) * _90)))) * _powerParams.x);
  _139 = exp2(log2(max(0.0f, (_offsetParams.y + ((_90 * _slopeParams.y) * max(0.0f, (((_84 * 1.1408f) - (_83 * 0.13026f)) - (_85 * 0.01055f))))))) * _powerParams.y);
  _140 = exp2(log2(max(0.0f, (((_90 * _slopeParams.z) * max(0.0f, (((_83 * -0.024f) - (_84 * 0.12897f)) + (_85 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _142 = dot(float3(_138, _139, _140), float3(0.212671f, 0.71516f, 0.072169f));
  _155 = 1.0f - abs(_etcParams.w);
  _159 = saturate(_etcParams.w);  // [sem: expr_sat]
  _160 = ((lerp(_142, _138, _powerParams.w)) * _155) + _159;
  _161 = ((lerp(_142, _139, _powerParams.w)) * _155) + _159;
  _162 = ((lerp(_142, _140, _powerParams.w)) * _155) + _159;
  if (_colorGradingParams.w > 0.0f) {
    _167 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _184 = (((max(0.0f, (1.0f - _160)) - _160) * _167) + _160);
    _185 = (((max(0.0f, (1.0f - _161)) - _161) * _167) + _161);
    _186 = (((max(0.0f, (1.0f - _162)) - _162) * _167) + _162);
  } else {
    _184 = _160;
    _185 = _161;
    _186 = _162;
  }
  _193 = (pow(_184, 0.012683313f));
  _194 = (pow(_185, 0.012683313f));
  _195 = (pow(_186, 0.012683313f));
  _221 = (TEXCOORD.x * 2.0f) + -1.0f;
  _222 = TEXCOORD.y * 2.0f;
  _223 = 1.0f - _222;
  _251 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _223, ((_projToPrevProj[3].x) * _221))) + (_projToPrevProj[3].w);
  _254 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _223, ((_projToPrevProj[0].x) * _221))) + (_projToPrevProj[0].w)) / _251) - _221;
  _255 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _223, ((_projToPrevProj[1].x) * _221))) + (_projToPrevProj[1].w)) / _251) - _223;
  if (_localToneMappingParams.w > 0.0f) {
    _269 = saturate(1.0f - (sqrt((_255 * _255) + (_254 * _254)) * 2.0f));  // [sem: expr_sat]
  } else {
    _269 = 1.0f;  // [sem: expr_sat]
  }
  _272 = abs(_221);
  _273 = abs(_222 + -1.0f);
  _277 = saturate(1.0f - ((_269 * _postProcessParams.x) * dot(float2(_272, _273), float2(_272, _273))));  // [sem: expr_sat]
  _287 = exp2(log2(_277 * exp2(log2(max(0.0f, (_193 + -0.8359375f)) / (18.851562f - (_193 * 18.6875f))) * 6.277395f)) * 0.15930176f);
  _288 = exp2(log2(_277 * exp2(log2(max(0.0f, (_194 + -0.8359375f)) / (18.851562f - (_194 * 18.6875f))) * 6.277395f)) * 0.15930176f);
  _289 = exp2(log2(_277 * exp2(log2(max(0.0f, (_195 + -0.8359375f)) / (18.851562f - (_195 * 18.6875f))) * 6.277395f)) * 0.15930176f);
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _327 = exp2(log2((1.0f / ((_287 * 18.6875f) + 1.0f)) * ((_287 * 18.851562f) + 0.8359375f)) * 78.84375f);
      _328 = exp2(log2((1.0f / ((_288 * 18.6875f) + 1.0f)) * ((_288 * 18.851562f) + 0.8359375f)) * 78.84375f);
      _329 = exp2(log2((1.0f / ((_289 * 18.6875f) + 1.0f)) * ((_289 * 18.851562f) + 0.8359375f)) * 78.84375f);
    } else {
      _327 = 0.0f;
      _328 = 0.0f;
      _329 = 0.0f;
    }
  } else {
    _327 = 0.0f;
    _328 = 0.0f;
    _329 = 0.0f;
  }
  SV_Target.x = _327;
  SV_Target.y = _328;
  SV_Target.z = _329;
  SV_Target.w = _15.w;
  return SV_Target;
}
