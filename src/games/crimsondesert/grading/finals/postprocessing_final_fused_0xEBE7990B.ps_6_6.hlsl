Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

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
  float4 _17;
  float _40;
  float _41;
  float _85;
  float _86;
  float _87;
  float _248;
  float _249;
  float _250;
  float _318;
  float _374;
  float _375;
  float _376;
  float _51;
  float _52;
  float _54;
  float _55;
  float _57;
  float _70;
  float _72;
  float _80;
  float _92;
  float _110;
  float _126;
  float _142;
  float _143;
  float _148;
  float _151;
  float _154;
  float _156;
  float _157;
  float _165;
  float _171;
  float _175;
  float _179;
  float _180;
  float _181;
  float _182;
  float _186;
  float _187;
  float _200;
  float _213;
  float _226;
  float _231;
  float _252;
  float _254;
  float _257;
  float _260;
  float _263;
  float _269;
  float _271;
  float _272;
  float _273;
  float _285;
  float _295;
  float _305;
  float _319;
  float _321;
  float _327;
  _17 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_postProcessParams.w > 0.0f) {
    _40 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003f) + -0.0015f)) + TEXCOORD.y)), 0.0f))).z);
    _41 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003f) + -0.0015f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
  } else {
    _40 = _17.z;
    _41 = _17.x;
  }
  if (_slopeParams.w > 0.0f) {
    _51 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    _52 = _51 * 0.7692308f;
    _54 = frac(abs(_52));
    _55 = _51 * 0.08130081f;
    _57 = frac(abs(_55));
    _70 = ((select((_55 >= (-0.0f - _55)), _57, (-0.0f - _57)) * 1230.0f) + 10.0f) * ((select((_52 >= (-0.0f - _52)), _54, (-0.0f - _54)) * 13.0f) + 1.0f);
    _72 = frac(abs(_70));
    _80 = ((0.0075000525f - (select((_70 >= (-0.0f - _70)), _72, (-0.0f - _72)) * 0.15f)) * _slopeParams.w) + 1.0f;
    _85 = (_80 * _40);
    _86 = (_80 * _17.y);
    _87 = (_80 * _41);
  } else {
    _85 = _40;
    _86 = _17.y;
    _87 = _41;
  }
  _92 = _exposure0.x * _userImageAdjust.z;
  _110 = exp2(_powerParams.x * log2(max(0.0f, (((max(0.0f, (((_86 * -0.62179f) - (_85 * 0.08326f)) + (_87 * 1.70505f))) * _slopeParams.x) * _92) + _offsetParams.x))));
  _126 = exp2(log2(max(0.0f, (((_92 * _slopeParams.y) * max(0.0f, (((_86 * 1.1408f) - (_85 * 0.01055f)) - (_87 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
  _142 = exp2(log2(max(0.0f, (((_92 * _slopeParams.z) * max(0.0f, (((_85 * 1.15297f) - (_86 * 0.12897f)) - (_87 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
  _143 = dot(float3(_110, _126, _142), float3(0.212671f, 0.71516f, 0.072169f));
  _148 = _toneMapParams1.z * _toneMapParams0.x;
  _151 = _toneMapParams0.z * _toneMapParams0.y;
  _154 = _toneMapParams1.x * _toneMapParams0.w;
  _156 = _toneMapParams1.y * _toneMapParams0.w;
  _157 = _toneMapParams1.x / _toneMapParams1.y;
  _165 = ((((_148 + _151) * _toneMapParams1.z) + _154) / (((_148 + _toneMapParams0.y) * _toneMapParams1.z) + _156)) - _157;
  _171 = (lerp(_143, _110, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _175 = (lerp(_143, _126, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _179 = (lerp(_143, _142, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _180 = _171 * _toneMapParams0.x;
  _181 = _175 * _toneMapParams0.x;
  _182 = _179 * _toneMapParams0.x;
  _186 = 1.0f - abs(_etcParams.w);
  _187 = saturate(_etcParams.w);  // [sem: expr_sat]
  _200 = (saturate(saturate((((((_180 + _151) * _171) + _154) / (((_180 + _toneMapParams0.y) * _171) + _156)) - _157) / _165)) * _186) + _187;
  _213 = (saturate(saturate((((((_181 + _151) * _175) + _154) / (((_181 + _toneMapParams0.y) * _175) + _156)) - _157) / _165)) * _186) + _187;
  _226 = (saturate(saturate((((((_182 + _151) * _179) + _154) / (((_182 + _toneMapParams0.y) * _179) + _156)) - _157) / _165)) * _186) + _187;
  if (_colorGradingParams.w > 0.0f) {
    _231 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _248 = (((max(0.0f, (1.0f - _226)) - _226) * _231) + _226);
    _249 = (((max(0.0f, (1.0f - _213)) - _213) * _231) + _213);
    _250 = (((max(0.0f, (1.0f - _200)) - _200) * _231) + _200);
  } else {
    _248 = _226;
    _249 = _213;
    _250 = _200;
  }
  _252 = _userImageAdjust.y + 1.0f;
  _254 = _userImageAdjust.x + 0.5f;
  _257 = ((_250 + -0.5f) * _252) + _254;
  _260 = ((_249 + -0.5f) * _252) + _254;
  _263 = ((_248 + -0.5f) * _252) + _254;
  _269 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _271 = (TEXCOORD.x * 2.0f) + -1.0f;
  _272 = TEXCOORD.y * 2.0f;
  _273 = 1.0f - _272;
  _285 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _273, ((_projToPrevProj[3].x) * _271)));
  _295 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _273, ((_projToPrevProj[0].x) * _271))) + (_projToPrevProj[0].w)) / _285) - _271;
  _305 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _273, ((_projToPrevProj[1].x) * _271))) + (_projToPrevProj[1].w)) / _285) - _273;
  if (_localToneMappingParams.w > 0.0f) {
    _318 = saturate(1.0f - (sqrt((_305 * _305) + (_295 * _295)) * 2.0f));  // [sem: expr_sat]
  } else {
    _318 = 1.0f;  // [sem: expr_sat]
  }
  _319 = abs(_271);
  _321 = abs(_272 + -1.0f);
  _327 = saturate(1.0f - ((_318 * _postProcessParams.x) * dot(float2(_319, _321), float2(_319, _321))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _374 = (exp2(log2(saturate(mad(_colorBlind0.z, _263, mad(_colorBlind0.y, _260, (_colorBlind0.x * _257))))) * _269) * _327);
      _375 = (exp2(log2(saturate(mad(_colorBlind1.z, _263, mad(_colorBlind1.y, _260, (_colorBlind1.x * _257))))) * _269) * _327);
      _376 = (exp2(log2(saturate(mad(_colorBlind2.z, _263, mad(_colorBlind2.y, _260, (_colorBlind2.x * _257))))) * _269) * _327);
    } else {
      _374 = 0.0f;
      _375 = 0.0f;
      _376 = 0.0f;
    }
  } else {
    _374 = 0.0f;
    _375 = 0.0f;
    _376 = 0.0f;
  }
  SV_Target.x = _374;
  SV_Target.y = _375;
  SV_Target.z = _376;
  SV_Target.w = _17.w;
  return SV_Target;
}
