Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b16, space35) {
  float4 _time;
  float4 _timeNoScale;
  uint4 _frameNumber;
  float4 _screenSizeAndInvSize;
  float4 _bufferSizeAndInvSize;
  float4 _hiZUVScaleAndInvScale;
  float4 _resolutionScale;
  float4 _temporalReprojectionParams;
  float4 _viewPos;
  float4 _viewDir;
  column_major float4x4 _viewProj;
  column_major float4x4 _viewProjNoJitter;
  column_major float4x4 _viewProjRelative;
  column_major float4x4 _viewProjRelativeNoJitter;
  column_major float4x4 _invViewProj;
  column_major float4x4 _invViewProjRelative;
  column_major float4x4 _invViewProjRelativeNoJitter;
  column_major float4x4 _viewProjRelativeOrtho;
  float4 _sunDirection;
  float4 _moonDirection;
  float4 _moonRight;
  float4 _moonUp;
  float4 _ssaoRandomDirection[16];
  column_major float4x4 _view;
  column_major float4x4 _viewRelative;
  column_major float4x4 _viewRelativePrev;
  column_major float4x4 _proj;
  column_major float4x4 _projNoJitter;
  float4 _viewPosPrev;
  column_major float4x4 _viewProjNoJitterPrev;
  column_major float4x4 _viewProjRelativePrev;
  column_major float4x4 _viewProjRelativeNoJitterPrev;
  column_major float4x4 _invViewProjPrev;
  column_major float4x4 _invViewProjRelativePrev;
  column_major float4x4 _projToPrevProj;
  column_major float4x4 _projToPrevProjNoTranslation;
  column_major float4x4 _viewProjectionTexScale;
  float4 _temporalAAJitter;
  float4 _temporalAAJitterParams;
  float4 _frustumPlanes[6];
  float4 _frustumPlanesPrev[6];
  float4 _frustumCornerDirs[4];
  float4 _screenPercentage;
  float4 _nearFarProj;
  float4 _renderingOriginPos;
  float4 _renderingOriginPosPrev;
  float4 _lodMaskRenderRate;
  float4 _terrainNormalParams;
  int4 _hiZMapInfo;
  int4 _hiZMapInfoCurrent;
  float4 _treeParams;
  uint4 _clusterSize;
  uint4 _globalLightParams;
  float4 _bevelParams;
  float4 _variableRateShadingParams;
  float4 _cavityParams;
  float4 _customRenderPassSizeInvSize;
  uint4 _impostorParams;
  float4 _clusterDecalSizeAndInvSize;
  uint4 _globalWindParams;
  float4 _windFluidVolumeParams;
  float4 _windFluidTextureParams;
  float4 _raytracingAccelerationStructureOrigin;
  float4 _debugBaseColor;
  float4 _debugNormal;
  float4 _debugMaterial;
  float4 _debugMultiplier;
  half4 _debugBaseColor16;
  half4 _debugNormal16;
  half4 _debugMaterial16;
  half4 _debugMultiplier16;
  float4 _debugCursorWorldPos;
  uint4 _debugRenderToggle01;
  uint4 _debugTreeShapeVariation;
  float4 _positionBasedDynamicsParameter;
  float _effectiveMetallicForVelvet;
  float _debugCharacterSnowRate;
  uint _systemRandomSeed;
  uint _skinnedMeshDebugFlag;
  float4 _viewPosShifted;
  float4 _viewPosShiftedPrev;
  float4 _viewTileRelativePos;
  float4 _viewTileRelativePosPrev;
  int2 _viewTileIndex;
  int2 _viewTileIndexPrev;
  float4 _worldVolume;
  float3 _diffViewPosAccurate;
  uint _isPhotosensitiveMode_isAllolwBlood;
  float _earthRadius;
  float3 _sceneConstantDummy;
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
  float _315;
  float _406;
  float _407;
  float _408;
  float _509;
  float _531;
  float _532;
  float _533;
  float _51;
  float _52;
  float _56;
  float _61;
  float _65;
  float _70;
  float _74;
  float _80;
  float _93;
  float _123;
  float _125;
  float _127;
  float _141;
  float _142;
  float _143;
  float _145;
  float _155;
  float _156;
  float _157;
  float _160;
  float _161;
  float _162;
  float _196;
  float _197;
  float _198;
  float _199;
  float _215;
  float _219;
  float _221;
  float _222;
  float _223;
  float _257;
  float _258;
  float _259;
  float _260;
  float _276;
  float _277;
  float _278;
  float _279;
  float _281;
  float _288;
  float _289;
  float _290;
  float _292;
  float _304;
  float _306;
  float _316;
  float _317;
  float _318;
  float _352;
  float _353;
  float _354;
  float _355;
  float _377;
  float _381;
  float _382;
  float _383;
  float _384;
  float _389;
  float _414;
  float _418;
  float _419;
  float _420;
  float _421;
  float _451;
  float _462;
  float _463;
  float _464;
  float _492;
  float _495;
  float _496;
  float _512;
  float _513;
  float _517;
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
  _93 = (_exposure0.x * 0.65f) * _userImageAdjust.z;
  _123 = _93 * _slopeParams.x;
  _125 = _93 * _slopeParams.y;
  _127 = _93 * _slopeParams.z;
  _141 = exp2(log2(max(0.0f, (_offsetParams.x + (_123 * max(0.0f, (((_85 * 1.70505f) - (_86 * 0.62179f)) - (_87 * 0.08326f))))))) * _powerParams.x);
  _142 = exp2(log2(max(0.0f, (_offsetParams.y + (_125 * max(0.0f, (((_86 * 1.1408f) - (_85 * 0.13026f)) - (_87 * 0.01055f))))))) * _powerParams.y);
  _143 = exp2(log2(max(0.0f, ((_127 * max(0.0f, (((_85 * -0.024f) - (_86 * 0.12897f)) + (_87 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _145 = dot(float3(_141, _142, _143), float3(0.212671f, 0.71516f, 0.072169f));
  _155 = saturate(lerp(_145, _141, _powerParams.w));  // [sem: expr_sat]
  _156 = saturate(lerp(_145, _142, _powerParams.w));  // [sem: expr_sat]
  _157 = saturate(lerp(_145, _143, _powerParams.w));  // [sem: expr_sat]
  _160 = _localToneMappingParams.x * _85;
  _161 = _localToneMappingParams.x * _86;
  _162 = _localToneMappingParams.x * _87;
  _196 = exp2(log2(max(0.0f, ((_123 * max(0.0f, (((_160 * 1.70505f) - (_161 * 0.62179f)) - (_162 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _197 = exp2(log2(max(0.0f, ((_125 * max(0.0f, (((_161 * 1.1408f) - (_160 * 0.13026f)) - (_162 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _198 = exp2(log2(max(0.0f, ((_127 * max(0.0f, (((_160 * -0.024f) - (_161 * 0.12897f)) + (_162 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _199 = dot(float3(_196, _197, _198), float3(0.212671f, 0.71516f, 0.072169f));
  _215 = dot(float3(saturate(saturate(lerp(_199, _196, _powerParams.w))), saturate(saturate(lerp(_199, _197, _powerParams.w))), saturate(saturate(lerp(_199, _198, _powerParams.w)))), float3(0.1f, 0.7f, 0.2f));
  _219 = dot(float3(saturate(_155), saturate(_156), saturate(_157)), float3(0.1f, 0.7f, 0.2f));
  _221 = _localToneMappingParams.y * _85;
  _222 = _localToneMappingParams.y * _86;
  _223 = _localToneMappingParams.y * _87;
  _257 = exp2(log2(max(0.0f, ((_123 * max(0.0f, (((_221 * 1.70505f) - (_222 * 0.62179f)) - (_223 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _258 = exp2(log2(max(0.0f, ((_125 * max(0.0f, (((_222 * 1.1408f) - (_221 * 0.13026f)) - (_223 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _259 = exp2(log2(max(0.0f, ((_127 * max(0.0f, (((_221 * -0.024f) - (_222 * 0.12897f)) + (_223 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _260 = dot(float3(_257, _258, _259), float3(0.212671f, 0.71516f, 0.072169f));
  _276 = dot(float3(saturate(saturate(lerp(_260, _257, _powerParams.w))), saturate(saturate(lerp(_260, _258, _powerParams.w))), saturate(saturate(lerp(_260, _259, _powerParams.w)))), float3(0.1f, 0.7f, 0.2f));
  _277 = _215 + -0.5f;
  _278 = _219 + -0.5f;
  _279 = _276 + -0.5f;
  _281 = _localToneMappingParams.z * -0.7213475f;
  _288 = exp2((_277 * _277) * _281);
  _289 = exp2((_278 * _278) * _281);
  _290 = exp2((_279 * _279) * _281);
  _292 = dot(float3(_288, _289, _290), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _304 = dot(float3(max(_155, 0.0f), max(_156, 0.0f), max(_157, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _306 = max(dot(float3(((_288 / _292) * _215), ((_289 / _292) * _219), ((_290 / _292) * _276)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _304;
  if (!(_304 > 0.007f)) {
    _315 = ((((_304 * _304) * 20408.16f) * (_306 + -1.0f)) + 1.0f);
  } else {
    _315 = _306;
  }
  _316 = _315 * _85;
  _317 = _315 * _86;
  _318 = _315 * _87;
  _352 = exp2(log2(max(0.0f, ((_123 * max(0.0f, (((_316 * 1.70505f) - (_317 * 0.62179f)) - (_318 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _353 = exp2(log2(max(0.0f, ((_125 * max(0.0f, (((_317 * 1.1408f) - (_316 * 0.13026f)) - (_318 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _354 = exp2(log2(max(0.0f, ((_127 * max(0.0f, (((_316 * -0.024f) - (_317 * 0.12897f)) + (_318 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _355 = dot(float3(_352, _353, _354), float3(0.212671f, 0.71516f, 0.072169f));
  _377 = 1.0f - abs(_etcParams.w);
  _381 = saturate(_etcParams.w);  // [sem: expr_sat]
  _382 = (_377 * saturate(max(saturate(lerp(_355, _352, _powerParams.w)), 0.0f))) + _381;
  _383 = (_377 * saturate(max(saturate(lerp(_355, _353, _powerParams.w)), 0.0f))) + _381;
  _384 = (_377 * saturate(max(saturate(lerp(_355, _354, _powerParams.w)), 0.0f))) + _381;
  if (_colorGradingParams.w > 0.0f) {
    _389 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _406 = (((max(0.0f, (1.0f - _382)) - _382) * _389) + _382);
    _407 = (((max(0.0f, (1.0f - _383)) - _383) * _389) + _383);
    _408 = (((max(0.0f, (1.0f - _384)) - _384) * _389) + _384);
  } else {
    _406 = _382;
    _407 = _383;
    _408 = _384;
  }
  _414 = _userImageAdjust.y + 1.0f;
  _418 = _userImageAdjust.x + 0.5f;
  _419 = ((_406 + -0.5f) * _414) + _418;
  _420 = ((_407 + -0.5f) * _414) + _418;
  _421 = ((_408 + -0.5f) * _414) + _418;
  _451 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _462 = (TEXCOORD.x * 2.0f) + -1.0f;
  _463 = TEXCOORD.y * 2.0f;
  _464 = 1.0f - _463;
  _492 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _464, ((_projToPrevProj[3].x) * _462))) + (_projToPrevProj[3].w);
  _495 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _464, ((_projToPrevProj[0].x) * _462))) + (_projToPrevProj[0].w)) / _492) - _462;
  _496 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _464, ((_projToPrevProj[1].x) * _462))) + (_projToPrevProj[1].w)) / _492) - _464;
  if (_localToneMappingParams.w > 0.0f) {
    _509 = saturate(1.0f - (sqrt((_496 * _496) + (_495 * _495)) * 2.0f));  // [sem: expr_sat]
  } else {
    _509 = 1.0f;  // [sem: expr_sat]
  }
  _512 = abs(_462);
  _513 = abs(_463 + -1.0f);
  _517 = saturate(1.0f - ((_509 * _postProcessParams.x) * dot(float2(_512, _513), float2(_512, _513))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _531 = (_517 * exp2(log2(saturate(mad(_colorBlind0.z, _421, mad(_colorBlind0.y, _420, (_colorBlind0.x * _419))))) * _451));
      _532 = (_517 * exp2(log2(saturate(mad(_colorBlind1.z, _421, mad(_colorBlind1.y, _420, (_colorBlind1.x * _419))))) * _451));
      _533 = (_517 * exp2(log2(saturate(mad(_colorBlind2.z, _421, mad(_colorBlind2.y, _420, (_colorBlind2.x * _419))))) * _451));
    } else {
      _531 = 0.0f;
      _532 = 0.0f;
      _533 = 0.0f;
    }
  } else {
    _531 = 0.0f;
    _532 = 0.0f;
    _533 = 0.0f;
  }
  SV_Target.x = _531;
  SV_Target.y = _532;
  SV_Target.z = _533;
  SV_Target.w = _17.w;
  return SV_Target;
}
