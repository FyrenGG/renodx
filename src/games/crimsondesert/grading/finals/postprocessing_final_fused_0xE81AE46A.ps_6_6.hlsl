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
  float _352;
  float _374;
  float _375;
  float _376;
  float _51;
  float _52;
  float _56;
  float _61;
  float _65;
  float _70;
  float _74;
  float _80;
  float _92;
  float _140;
  float _141;
  float _142;
  float _144;
  float _164;
  float _165;
  float _168;
  float _172;
  float _175;
  float _176;
  float _177;
  float _178;
  float _179;
  float _180;
  float _181;
  float _182;
  float _219;
  float _223;
  float _224;
  float _225;
  float _226;
  float _231;
  float _256;
  float _260;
  float _261;
  float _262;
  float _263;
  float _293;
  float _304;
  float _305;
  float _306;
  float _334;
  float _337;
  float _338;
  float _355;
  float _356;
  float _360;
  _17 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_postProcessParams.w > 0.0f) {
    _40 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003f) + -0.0015f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
    _41 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003f) + -0.0015f)) + TEXCOORD.y)), 0.0f))).z);
  } else {
    _40 = _17.x;
    _41 = _17.z;
  }
  if (_slopeParams.w > 0.0f) {
    _51 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    _52 = _51 * 0.7692308f;
    _56 = frac(abs(_52));
    _61 = _51 * 0.08130081f;
    _65 = frac(abs(_61));
    _70 = ((select((_61 >= (-0.0f - _61)), _65, (-0.0f - _65)) * 1230.0f) + 10.0f) * ((select((_52 >= (-0.0f - _52)), _56, (-0.0f - _56)) * 13.0f) + 1.0f);
    _74 = frac(abs(_70));
    _80 = ((0.0075000525f - (select((_70 >= (-0.0f - _70)), _74, (-0.0f - _74)) * 0.15f)) * _slopeParams.w) + 1.0f;
    _85 = (_80 * _40);
    _86 = (_80 * _17.y);
    _87 = (_80 * _41);
  } else {
    _85 = _40;
    _86 = _17.y;
    _87 = _41;
  }
  _92 = _userImageAdjust.z * _exposure0.x;
  _140 = exp2(log2(max(0.0f, (_offsetParams.x + ((max(0.0f, (((_85 * 1.70505f) - (_86 * 0.62179f)) - (_87 * 0.08326f))) * _slopeParams.x) * _92)))) * _powerParams.x);
  _141 = exp2(log2(max(0.0f, (_offsetParams.y + ((_92 * _slopeParams.y) * max(0.0f, (((_86 * 1.1408f) - (_85 * 0.13026f)) - (_87 * 0.01055f))))))) * _powerParams.y);
  _142 = exp2(log2(max(0.0f, (((_92 * _slopeParams.z) * max(0.0f, (((_85 * -0.024f) - (_86 * 0.12897f)) + (_87 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _144 = dot(float3(_140, _141, _142), float3(0.212671f, 0.71516f, 0.072169f));
  _164 = _toneMapParams0.x * _toneMapParams1.z;
  _165 = _toneMapParams0.y * _toneMapParams0.z;
  _168 = _toneMapParams0.w * _toneMapParams1.x;
  _172 = _toneMapParams0.w * _toneMapParams1.y;
  _175 = _toneMapParams1.x / _toneMapParams1.y;
  _176 = ((((_164 + _165) * _toneMapParams1.z) + _168) / (((_164 + _toneMapParams0.y) * _toneMapParams1.z) + _172)) - _175;
  _177 = (lerp(_144, _140, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _178 = (lerp(_144, _141, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _179 = (lerp(_144, _142, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _180 = _177 * _toneMapParams0.x;
  _181 = _178 * _toneMapParams0.x;
  _182 = _179 * _toneMapParams0.x;
  _219 = 1.0f - abs(_etcParams.w);
  _223 = saturate(_etcParams.w);  // [sem: expr_sat]
  _224 = (_219 * saturate(saturate((((((_180 + _165) * _177) + _168) / (((_180 + _toneMapParams0.y) * _177) + _172)) - _175) / _176))) + _223;
  _225 = (_219 * saturate(saturate((((((_181 + _165) * _178) + _168) / (((_181 + _toneMapParams0.y) * _178) + _172)) - _175) / _176))) + _223;
  _226 = (_219 * saturate(saturate((((((_182 + _165) * _179) + _168) / (((_182 + _toneMapParams0.y) * _179) + _172)) - _175) / _176))) + _223;
  if (_colorGradingParams.w > 0.0f) {
    _231 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _248 = (((max(0.0f, (1.0f - _224)) - _224) * _231) + _224);
    _249 = (((max(0.0f, (1.0f - _225)) - _225) * _231) + _225);
    _250 = (((max(0.0f, (1.0f - _226)) - _226) * _231) + _226);
  } else {
    _248 = _224;
    _249 = _225;
    _250 = _226;
  }
  _256 = _userImageAdjust.y + 1.0f;
  _260 = _userImageAdjust.x + 0.5f;
  _261 = ((_248 + -0.5f) * _256) + _260;
  _262 = ((_249 + -0.5f) * _256) + _260;
  _263 = ((_250 + -0.5f) * _256) + _260;
  _293 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _304 = (TEXCOORD.x * 2.0f) + -1.0f;
  _305 = TEXCOORD.y * 2.0f;
  _306 = 1.0f - _305;
  _334 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _306, ((_projToPrevProj[3].x) * _304))) + (_projToPrevProj[3].w);
  _337 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _306, ((_projToPrevProj[0].x) * _304))) + (_projToPrevProj[0].w)) / _334) - _304;
  _338 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _306, ((_projToPrevProj[1].x) * _304))) + (_projToPrevProj[1].w)) / _334) - _306;
  if (_localToneMappingParams.w > 0.0f) {
    _352 = saturate(1.0f - (sqrt((_338 * _338) + (_337 * _337)) * 2.0f));  // [sem: expr_sat]
  } else {
    _352 = 1.0f;  // [sem: expr_sat]
  }
  _355 = abs(_304);
  _356 = abs(_305 + -1.0f);
  _360 = saturate(1.0f - ((_352 * _postProcessParams.x) * dot(float2(_355, _356), float2(_355, _356))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _374 = (_360 * exp2(log2(saturate(mad(_colorBlind0.z, _263, mad(_colorBlind0.y, _262, (_colorBlind0.x * _261))))) * _293));
      _375 = (_360 * exp2(log2(saturate(mad(_colorBlind1.z, _263, mad(_colorBlind1.y, _262, (_colorBlind1.x * _261))))) * _293));
      _376 = (_360 * exp2(log2(saturate(mad(_colorBlind2.z, _263, mad(_colorBlind2.y, _262, (_colorBlind2.x * _261))))) * _293));
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
