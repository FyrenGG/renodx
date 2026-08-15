struct PostProcessMirrorStruct {
  float _ratio;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

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

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};

struct BindlessParameters_PostProcessMirror {
  PostProcessMirrorStruct BindlessParameters_PostProcessMirror;
};

typedef BindlessParameters_PostProcessMirror BindlessParameters_PostProcessMirror_t;
ConstantBuffer<BindlessParameters_PostProcessMirror_t> BindlessParameters_PostProcessMirror[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _21;
  float _29;
  float4 _35;
  float _45;
  float _46;
  float _47;
  float _69;
  float _70;
  float _71;
  uint _75;
  float _89;
  float _294;
  float _295;
  float _296;
  float _389;
  float _390;
  float _391;
  float _445;
  float _446;
  float _447;
  float _466;
  float _467;
  float _468;
  float _498;
  float _499;
  float _500;
  float _514;
  float _515;
  float _516;
  bool _92;
  float _98;
  float _147;
  float _148;
  float _149;
  float _151;
  float _158;
  float _159;
  float _160;
  float _179;
  float _180;
  float _181;
  float _182;
  float _183;
  float _184;
  float _185;
  float _186;
  float _187;
  float _233;
  float _234;
  float _235;
  float _236;
  float _237;
  float _238;
  float _239;
  float _256;
  float _257;
  float _258;
  float _259;
  float _265;
  float _268;
  float _275;
  float _276;
  float _277;
  float _306;
  float _331;
  float _332;
  float _333;
  float _352;
  float _353;
  float _354;
  float _360;
  float _364;
  float _365;
  float _366;
  float _367;
  float _372;
  float _397;
  float _401;
  float _402;
  float _403;
  float _404;
  float _434;
  float _456;
  float _457;
  float _461;
  float _505;
  float _526;
  float _527;
  float _528;
  _21 = WaveReadLaneFirst(_materialIndex);
  _29 = WaveReadLaneFirst(BindlessParameters_PostProcessMirror[((int)((uint)((uint)(select(((uint)_21 < (uint)170000), _21, 0))) + (uint)(0)))].BindlessParameters_PostProcessMirror._ratio);
  // [sem: _3__36__0__0__g_sceneColor_sample]
  _35 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(select((_29 > 0.5f), (1.0f - TEXCOORD.x), TEXCOORD.x), TEXCOORD.y));
  _45 = (pow(_35.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _46 = (pow(_35.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _47 = (pow(_35.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _69 = exp2(log2(max(0.0f, (_45 + -0.8359375f)) / (18.851562f - (_45 * 18.6875f))) * 6.277395f);
  _70 = exp2(log2(max(0.0f, (_46 + -0.8359375f)) / (18.851562f - (_46 * 18.6875f))) * 6.277395f);
  _71 = exp2(log2(max(0.0f, (_47 + -0.8359375f)) / (18.851562f - (_47 * 18.6875f))) * 6.277395f);
  _75 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _89 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _75, 0)))).x) & 127)))) + 0.5f);
  } else {
    _89 = _postProcessParams.x;
  }
  _92 = (_localToneMappingParams.w > 0.0f);
  if (_92) {
    _98 = _userImageAdjust.z * _exposure0.x;
    _147 = exp2(log2(max(0.0f, (((_98 * max(0.0f, (((_69 * 17050.5f) - (_70 * 6217.9f)) - (_71 * 832.6f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _148 = exp2(log2(max(0.0f, (((max(0.0f, (((_70 * 11408.0f) - (_69 * 1302.6001f)) - (_71 * 105.5f))) * _98) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _149 = exp2(log2(max(0.0f, (((max(0.0f, (((_69 * -240.0f) - (_70 * 1289.7f)) + (_71 * 11529.699f))) * _98) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _151 = dot(float3(_147, _148, _149), float3(0.212671f, 0.71516f, 0.072169f));
    _158 = ((_147 - _151) * _powerParams.w) + _151;
    _159 = ((_148 - _151) * _powerParams.w) + _151;
    _160 = ((_149 - _151) * _powerParams.w) + _151;
    _179 = min(max(log2(mad(_160, 0.079223745f, mad(_159, 0.0784336f, (_158 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _180 = min(max(log2(mad(_160, 0.07916613f, mad(_159, 0.87846863f, (_158 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _181 = min(max(log2(mad(_160, 0.879143f, mad(_159, 0.0784336f, (_158 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _182 = _179 * 0.060606062f;
    _183 = _180 * 0.060606062f;
    _184 = _181 * 0.060606062f;
    _185 = _182 * _182;
    _186 = _183 * _183;
    _187 = _184 * _184;
    _233 = min(0.0f, (-0.0f - (((_179 * 0.0072181816f) + ((_185 * 0.4298f) + (((_185 * _185) * ((31.96f - (_179 * 2.4327273f)) + (_185 * 15.5f))) - ((_179 * 0.41624245f) * _185)))) + -0.00232f)));
    _234 = min(0.0f, (-0.0f - (((_180 * 0.0072181816f) + ((_186 * 0.4298f) + (((_186 * _186) * ((31.96f - (_180 * 2.4327273f)) + (_186 * 15.5f))) - ((_180 * 0.41624245f) * _186)))) + -0.00232f)));
    _235 = min(0.0f, (-0.0f - (((_181 * 0.0072181816f) + ((_187 * 0.4298f) + (((_187 * _187) * ((31.96f - (_181 * 2.4327273f)) + (_187 * 15.5f))) - ((_181 * 0.41624245f) * _187)))) + -0.00232f)));
    _236 = -0.0f - _233;
    _237 = -0.0f - _234;
    _238 = -0.0f - _235;
    _239 = dot(float3(_236, _237, _238), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _256 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _257 = -0.79999995f / _256;
      _258 = -1.2f / _256;
      _259 = 0.20000005f / _256;
      _265 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _268 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _275 = (_257 + 1.4f) + (_268 * (-0.39999998f - _257));
      _276 = (_258 + 1.6f) + (_268 * (-0.6f - _258));
      _277 = (_259 + 0.9f) + (_268 * (0.5f - _259));
      _294 = (lerp(_276, 1.2f, _265));  // [sem: blended]
      _295 = (lerp(_275, 1.0f, _265));  // [sem: blended]
      _296 = (lerp(_277, 1.4f, _265));  // [sem: blended]
    } else {
      _294 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _295 = 1.0f;  // [sem: blended]
      _296 = 1.4f;  // [sem: blended]
    }
    _306 = 1.0f - _294;
    _331 = ((exp2(log2(((saturate((_233 * _233) * _236) * _306) + _294) * _236) * _295) - _239) * _296) + _239;
    _332 = ((exp2(log2(((saturate((_234 * _234) * _237) * _306) + _294) * _237) * _295) - _239) * _296) + _239;
    _333 = ((exp2(log2(((saturate((_235 * _235) * _238) * _306) + _294) * _238) * _295) - _239) * _296) + _239;
    _352 = saturate(exp2(log2(mad(_333, -0.09902974f, mad(_332, -0.09802088f, (_331 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _353 = saturate(exp2(log2(mad(_333, -0.098961174f, mad(_332, 1.1519032f, (_331 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _354 = saturate(exp2(log2(mad(_333, 1.1510737f, mad(_332, -0.09804345f, (_331 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _360 = 1.0f - abs(_etcParams.w);
      _364 = saturate(_etcParams.w);  // [sem: expr_sat]
      _365 = (_360 * _352) + _364;
      _366 = (_360 * _353) + _364;
      _367 = (_360 * _354) + _364;
      if (_colorGradingParams.w > 0.0f) {
        _372 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _389 = (((max(0.0f, (1.0f - _365)) - _365) * _372) + _365);
        _390 = (((max(0.0f, (1.0f - _366)) - _366) * _372) + _366);
        _391 = (((max(0.0f, (1.0f - _367)) - _367) * _372) + _367);
      } else {
        _389 = _365;
        _390 = _366;
        _391 = _367;
      }
      _397 = _userImageAdjust.y + 1.0f;
      _401 = _userImageAdjust.x + 0.5f;
      _402 = ((_389 + -0.5f) * _397) + _401;
      _403 = ((_390 + -0.5f) * _397) + _401;
      _404 = ((_391 + -0.5f) * _397) + _401;
      _434 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _445 = exp2(log2(saturate(mad(_colorBlind0.z, _404, mad(_colorBlind0.y, _403, (_colorBlind0.x * _402))))) * _434);
      _446 = exp2(log2(saturate(mad(_colorBlind1.z, _404, mad(_colorBlind1.y, _403, (_colorBlind1.x * _402))))) * _434);
      _447 = exp2(log2(saturate(mad(_colorBlind2.z, _404, mad(_colorBlind2.y, _403, (_colorBlind2.x * _402))))) * _434);
    } else {
      _445 = _352;
      _446 = _353;
      _447 = _354;
    }
  } else {
    _445 = (_69 * 10000.0f);
    _446 = (_70 * 10000.0f);
    _447 = (_71 * 10000.0f);
  }
  if (_etcParams.y > 1.0f) {
    _456 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _457 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _461 = saturate(1.0f - (dot(float2(_456, _457), float2(_456, _457)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _466 = (_461 * _445);
    _467 = (_461 * _446);
    _468 = (_461 * _447);
  } else {
    _466 = _445;
    _467 = _446;
    _468 = _447;
  }
  if (_92 && (_etcParams.z > 0.0f)) {
    _498 = select((_466 <= 0.0031308f), (_466 * 12.92f), (((pow(_466, 0.41666666f)) * 1.055f) + -0.055f));
    _499 = select((_467 <= 0.0031308f), (_467 * 12.92f), (((pow(_467, 0.41666666f)) * 1.055f) + -0.055f));
    _500 = select((_468 <= 0.0031308f), (_468 * 12.92f), (((pow(_468, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _498 = _466;
    _499 = _467;
    _500 = _468;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _505 = (float)((uint)((uint)(_75)));
    if (!(_505 < _viewDir.w)) {
      if (!(_505 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _514 = _498;
        _515 = _499;
        _516 = _500;
      } else {
        _514 = 0.0f;
        _515 = 0.0f;
        _516 = 0.0f;
      }
    } else {
      _514 = 0.0f;
      _515 = 0.0f;
      _516 = 0.0f;
    }
  } else {
    _514 = _498;
    _515 = _499;
    _516 = _500;
  }
  _526 = exp2(log2(_514 * 0.0001f) * 0.15930176f);
  _527 = exp2(log2(_515 * 0.0001f) * 0.15930176f);
  _528 = exp2(log2(_516 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_526 * 18.6875f) + 1.0f)) * ((_526 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_527 * 18.6875f) + 1.0f)) * ((_527 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_528 * 18.6875f) + 1.0f)) * ((_528 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _89;
  return SV_Target;
}
