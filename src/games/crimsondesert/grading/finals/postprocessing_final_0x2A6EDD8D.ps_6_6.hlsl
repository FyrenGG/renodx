Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

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
  float _172;
  float _173;
  float _174;
  float _234;
  float _235;
  float _236;
  float _305;
  bool _325;
  float _50;
  float _51;
  float _53;
  float _54;
  float _56;
  float _69;
  float _71;
  float _79;
  uint _90;
  uint _93;
  float _96;
  float _105;
  float4 _108;
  float4 _113;
  float4 _118;
  float4 _123;
  float _130;
  float _146;
  float _149;
  float _178;
  float _179;
  float _190;
  float _201;
  float _212;
  float _217;
  float _239;
  float _241;
  float _244;
  float _247;
  float _250;
  float _256;
  float _258;
  float _259;
  float _260;
  float _272;
  float _282;
  float _292;
  float _306;
  float _308;
  float _315;
  _16 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_postProcessParams.w > 0.0f) {
    _39 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003f) + -0.0015f)) + TEXCOORD.y)), 0.0f))).z);
    _40 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003f) + -0.0015f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
  } else {
    _39 = _16.z;
    _40 = _16.x;
  }
  if (_slopeParams.w > 0.0f) {
    _50 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    _51 = _50 * 0.7692308f;
    _53 = frac(abs(_51));
    _54 = _50 * 0.08130081f;
    _56 = frac(abs(_54));
    _69 = ((select((_54 >= (-0.0f - _54)), _56, (-0.0f - _56)) * 1230.0f) + 10.0f) * ((select((_51 >= (-0.0f - _51)), _53, (-0.0f - _53)) * 13.0f) + 1.0f);
    _71 = frac(abs(_69));
    _79 = ((0.0075000525f - (select((_69 >= (-0.0f - _69)), _71, (-0.0f - _71)) * 0.15f)) * _slopeParams.w) + 1.0f;
    _84 = (_79 * _39);
    _85 = (_79 * _16.y);
    _86 = (_79 * _40);
  } else {
    _84 = _39;
    _85 = _16.y;
    _86 = _40;
  }
  _90 = (uint)(_screenSizeAndInvSize.x * TEXCOORD.x);
  _93 = (uint)(_screenSizeAndInvSize.y * TEXCOORD.y);
  _96 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_96.x < 1e-07f) || (_96.x == 1.0f))) {
    _105 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _108 = __3__36__0__0__g_sceneColor.Load(int3(_90, ((int)((uint)((uint)(_93)) + (uint)(-1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _113 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_90)) + (uint)(-1))), _93, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _118 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_90)) + (uint)(1))), _93, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _123 = __3__36__0__0__g_sceneColor.Load(int3(_90, ((int)((uint)((uint)(_93)) + (uint)(1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _130 = max(max(_85, _108.y), max(max(_113.y, _118.y), _123.y));
    _146 = (-1.0f / (((1.0f - _105) * 8.0f) + (_105 * 5.0f))) * sqrt(saturate((1.0f / _130) * min(min(min(_85, _108.y), min(min(_113.y, _118.y), _123.y)), (1.0f - _130))));
    _149 = 1.0f / ((_146 * 4.0f) + 1.0f);
    _172 = saturate(((_146 * (((_113.z + _108.z) + _118.z) + _123.z)) + _84) * _149);  // [sem: expr_sat]
    _173 = saturate(((_146 * (((_113.y + _108.y) + _118.y) + _123.y)) + _85) * _149);  // [sem: expr_sat]
    _174 = saturate(((_146 * (((_113.x + _108.x) + _118.x) + _123.x)) + _86) * _149);  // [sem: expr_sat]
  } else {
    _172 = _84;  // [sem: expr_sat]
    _173 = _85;  // [sem: expr_sat]
    _174 = _86;  // [sem: expr_sat]
  }
  _178 = 1.0f - abs(_etcParams.w);
  _179 = saturate(_etcParams.w);  // [sem: expr_sat]
  _190 = (saturate(select((_174 < 0.04045f), (_174 * 0.07739938f), exp2(log2((_174 + 0.055f) * 0.94786733f) * 2.4f))) * _178) + _179;
  _201 = (saturate(select((_173 < 0.04045f), (_173 * 0.07739938f), exp2(log2((_173 + 0.055f) * 0.94786733f) * 2.4f))) * _178) + _179;
  _212 = (saturate(select((_172 < 0.04045f), (_172 * 0.07739938f), exp2(log2((_172 + 0.055f) * 0.94786733f) * 2.4f))) * _178) + _179;
  if (_colorGradingParams.w > 0.0f) {
    _217 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _234 = (((max(0.0f, (1.0f - _190)) - _190) * _217) + _190);
    _235 = (((max(0.0f, (1.0f - _201)) - _201) * _217) + _201);
    _236 = (((max(0.0f, (1.0f - _212)) - _212) * _217) + _212);
  } else {
    _234 = _190;
    _235 = _201;
    _236 = _212;
  }
  _239 = _userImageAdjust.y + 1.0f;
  _241 = _userImageAdjust.x + 0.5f;
  _244 = (_239 * (_234 + -0.5f)) + _241;
  _247 = (_239 * (_235 + -0.5f)) + _241;
  _250 = (_239 * (_236 + -0.5f)) + _241;
  _256 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _258 = (TEXCOORD.x * 2.0f) + -1.0f;
  _259 = TEXCOORD.y * 2.0f;
  _260 = 1.0f - _259;
  _272 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _260, ((_projToPrevProj[3].x) * _258)));
  _282 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _260, ((_projToPrevProj[0].x) * _258))) + (_projToPrevProj[0].w)) / _272) - _258;
  _292 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _260, ((_projToPrevProj[1].x) * _258))) + (_projToPrevProj[1].w)) / _272) - _260;
  if (_localToneMappingParams.w > 0.0f) {
    _305 = saturate(1.0f - (sqrt((_292 * _292) + (_282 * _282)) * 2.0f));  // [sem: expr_sat]
  } else {
    _305 = 1.0f;  // [sem: expr_sat]
  }
  _306 = abs(_258);
  _308 = abs(_259 + -1.0f);
  _315 = saturate(1.0f - ((_postProcessParams.x * _305) * dot(float2(_306, _308), float2(_306, _308))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    _325 = (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w)));
  } else {
    _325 = false;
  }
  SV_Target.x = select(_325, (exp2(log2(saturate(mad(_colorBlind0.z, _250, mad(_colorBlind0.y, _247, (_colorBlind0.x * _244))))) * _256) * _315), 0.0f);
  SV_Target.y = select(_325, (exp2(log2(saturate(mad(_colorBlind1.z, _250, mad(_colorBlind1.y, _247, (_colorBlind1.x * _244))))) * _256) * _315), 0.0f);
  SV_Target.z = select(_325, (exp2(log2(saturate(mad(_colorBlind2.z, _250, mad(_colorBlind2.y, _247, (_colorBlind2.x * _244))))) * _256) * _315), 0.0f);
  SV_Target.w = _16.w;
  return SV_Target;
}
