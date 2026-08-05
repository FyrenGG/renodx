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
  float _295;
  float _296;
  float _297;
  float _365;
  float _421;
  float _422;
  float _423;
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
  float _147;
  float _150;
  float _153;
  float _157;
  float _161;
  float _163;
  float _164;
  float _165;
  float _166;
  float _167;
  float _168;
  float _169;
  float _173;
  float _177;
  float _181;
  float _182;
  float _184;
  float _186;
  float _188;
  float _189;
  float _190;
  float _191;
  float _196;
  float _200;
  float _201;
  float _227;
  float _250;
  float _273;
  float _278;
  float _299;
  float _301;
  float _304;
  float _307;
  float _310;
  float _316;
  float _318;
  float _319;
  float _320;
  float _332;
  float _342;
  float _352;
  float _366;
  float _368;
  float _374;
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
  _147 = ((_110 - _143) * _powerParams.w) + _143;
  _150 = ((_126 - _143) * _powerParams.w) + _143;
  _153 = ((_142 - _143) * _powerParams.w) + _143;
  _157 = _toneMapParams0.x - _toneMapParams0.z;
  _161 = (_157 * _toneMapParams0.w) / _toneMapParams0.y;
  _163 = _157 - (_toneMapParams0.y * _161);
  _164 = _147 / _toneMapParams0.z;
  _165 = _150 / _toneMapParams0.z;
  _166 = _153 / _toneMapParams0.z;
  _167 = saturate(_164);  // [sem: _164_sat]
  _168 = saturate(_165);  // [sem: _165_sat]
  _169 = saturate(_166);  // [sem: _166_sat]
  _173 = (_167 * _167) * (3.0f - (_167 * 2.0f));
  _177 = (_168 * _168) * (3.0f - (_168 * 2.0f));
  _181 = (_169 * _169) * (3.0f - (_169 * 2.0f));
  _182 = _toneMapParams0.z + _161;
  _184 = select((_147 < _182), 0.0f, 1.0f);
  _186 = select((_150 < _182), 0.0f, 1.0f);
  _188 = select((_153 < _182), 0.0f, 1.0f);
  _189 = _147 - _toneMapParams0.z;
  _190 = _150 - _toneMapParams0.z;
  _191 = _153 - _toneMapParams0.z;
  _196 = ((-0.0f - ((_toneMapParams0.y * _toneMapParams0.x) / _163)) / _toneMapParams0.x) * 1.442695f;
  _200 = 1.0f - abs(_etcParams.w);
  _201 = saturate(_etcParams.w);  // [sem: expr_sat]
  _227 = (saturate(saturate((((((pow(_164, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _173)) + ((_173 - _184) * ((_189 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_196 * (_189 - _161)) * _163)) * _184))) * _200) + _201;
  _250 = (saturate(saturate((((((pow(_165, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _177)) + ((_177 - _186) * ((_190 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_196 * (_190 - _161)) * _163)) * _186))) * _200) + _201;
  _273 = (saturate(saturate((((((pow(_166, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _181)) + ((_181 - _188) * ((_191 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_196 * (_191 - _161)) * _163)) * _188))) * _200) + _201;
  if (_colorGradingParams.w > 0.0f) {
    _278 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _295 = (((max(0.0f, (1.0f - _273)) - _273) * _278) + _273);
    _296 = (((max(0.0f, (1.0f - _250)) - _250) * _278) + _250);
    _297 = (((max(0.0f, (1.0f - _227)) - _227) * _278) + _227);
  } else {
    _295 = _273;
    _296 = _250;
    _297 = _227;
  }
  _299 = _userImageAdjust.y + 1.0f;
  _301 = _userImageAdjust.x + 0.5f;
  _304 = ((_297 + -0.5f) * _299) + _301;
  _307 = ((_296 + -0.5f) * _299) + _301;
  _310 = ((_295 + -0.5f) * _299) + _301;
  _316 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _318 = (TEXCOORD.x * 2.0f) + -1.0f;
  _319 = TEXCOORD.y * 2.0f;
  _320 = 1.0f - _319;
  _332 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _320, ((_projToPrevProj[3].x) * _318)));
  _342 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _320, ((_projToPrevProj[0].x) * _318))) + (_projToPrevProj[0].w)) / _332) - _318;
  _352 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _320, ((_projToPrevProj[1].x) * _318))) + (_projToPrevProj[1].w)) / _332) - _320;
  if (_localToneMappingParams.w > 0.0f) {
    _365 = saturate(1.0f - (sqrt((_352 * _352) + (_342 * _342)) * 2.0f));  // [sem: expr_sat]
  } else {
    _365 = 1.0f;  // [sem: expr_sat]
  }
  _366 = abs(_318);
  _368 = abs(_319 + -1.0f);
  _374 = saturate(1.0f - ((_365 * _postProcessParams.x) * dot(float2(_366, _368), float2(_366, _368))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _421 = (exp2(log2(saturate(mad(_colorBlind0.z, _310, mad(_colorBlind0.y, _307, (_colorBlind0.x * _304))))) * _316) * _374);
      _422 = (exp2(log2(saturate(mad(_colorBlind1.z, _310, mad(_colorBlind1.y, _307, (_colorBlind1.x * _304))))) * _316) * _374);
      _423 = (exp2(log2(saturate(mad(_colorBlind2.z, _310, mad(_colorBlind2.y, _307, (_colorBlind2.x * _304))))) * _316) * _374);
    } else {
      _421 = 0.0f;
      _422 = 0.0f;
      _423 = 0.0f;
    }
  } else {
    _421 = 0.0f;
    _422 = 0.0f;
    _423 = 0.0f;
  }
  SV_Target.x = _421;
  SV_Target.y = _422;
  SV_Target.z = _423;
  SV_Target.w = _17.w;
  return SV_Target;
}
