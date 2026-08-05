struct PostProcessOutlineExampleStruct {
  uint _outlineColor;
  float _outlineSize;
};

struct BindlessParameters_PostProcessOutlineExample {
  PostProcessOutlineExampleStruct BindlessParameters_PostProcessOutlineExample;
};


Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t64, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t38, space36);

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

typedef BindlessParameters_PostProcessOutlineExample BindlessParameters_PostProcessOutlineExample_t;
ConstantBuffer<BindlessParameters_PostProcessOutlineExample_t> BindlessParameters_PostProcessOutlineExample[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _23;
  uint2 _28;
  float _123;
  float _124;
  float _125;
  float _139;
  float _344;
  float _345;
  float _346;
  float _439;
  float _440;
  float _441;
  float _495;
  float _496;
  float _497;
  float _516;
  float _517;
  float _518;
  float _548;
  float _549;
  float _550;
  float _564;
  float _565;
  float _566;
  float4 _49;
  int _71;
  int _79;
  float _82;
  float _85;
  float _87;
  float _88;
  uint _126;
  bool _142;
  float _148;
  float _167;
  float _183;
  float _199;
  float _200;
  float _204;
  float _207;
  float _210;
  float _217;
  float _224;
  float _231;
  float _232;
  float _233;
  float _234;
  float _235;
  float _236;
  float _237;
  float _253;
  float _269;
  float _285;
  float _286;
  float _287;
  float _288;
  float _289;
  float _306;
  float _307;
  float _308;
  float _309;
  float _312;
  float _315;
  float _319;
  float _323;
  float _327;
  float _347;
  float _359;
  float _371;
  float _383;
  float _390;
  float _397;
  float _404;
  float _410;
  float _411;
  float _413;
  float _415;
  float _417;
  float _422;
  float _443;
  float _445;
  float _448;
  float _451;
  float _454;
  float _460;
  float _502;
  float _505;
  float _511;
  float _553;
  _23 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_28.x, _28.y);
  if (!(((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_28.x))))))) + 0.5f) * TEXCOORD.x)), ((int)((((float)((int)((int)((float)((int)((int)(_28.y))))))) + 0.5f) * TEXCOORD.y)), 0)))).x) & 255) == 30)) {
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _49 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    if (!(!((((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f))), 0)))).x) & 16777215)))) * 5.960465e-08f) <= _49.y))) {
      _71 = WaveReadLaneFirst(_materialIndex);
      _79 = WaveReadLaneFirst(BindlessParameters_PostProcessOutlineExample[((int)((uint)((uint)(select(((uint)_71 < (uint)170000), _71, 0))) + (uint)(0)))].BindlessParameters_PostProcessOutlineExample._outlineColor);
      _82 = (float)((uint)((uint)(((uint)((uint)(_79)) >> 16) & 255)));
      _85 = (float)((uint)((uint)(((uint)((uint)(_79)) >> 8) & 255)));
      _87 = (float)((uint)((uint)(_79 & 255)));
      _88 = _49.x * 100.0f;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _123 = ((select(((_87 * 0.003921569f) < 0.04045f), (_87 * 0.000303527f), exp2(log2((_87 * 0.003717127f) + 0.052132703f) * 2.4f)) * _88) + _23.z);
      _124 = ((select(((_85 * 0.003921569f) < 0.04045f), (_85 * 0.000303527f), exp2(log2((_85 * 0.003717127f) + 0.052132703f) * 2.4f)) * _88) + _23.y);
      _125 = ((select(((_82 * 0.003921569f) < 0.04045f), (_82 * 0.000303527f), exp2(log2((_82 * 0.003717127f) + 0.052132703f) * 2.4f)) * _88) + _23.x);
    } else {
      _123 = _23.z;
      _124 = _23.y;
      _125 = _23.x;
    }
  } else {
    _123 = _23.z;
    _124 = _23.y;
    _125 = _23.x;
  }
  _126 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _139 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _126, 0)))).x) & 127)))) + 0.5f);
  } else {
    _139 = 1.0f;
  }
  _142 = (_localToneMappingParams.w > 0.0f);
  if (_142) {
    _148 = _exposure0.x * _userImageAdjust.z;
    _167 = exp2(_powerParams.x * log2(max(0.0f, (((_148 * max(0.0f, (((_124 * -0.62179f) - (_123 * 0.08326f)) + (_125 * 1.70505f)))) * _slopeParams.x) + _offsetParams.x))));
    _183 = exp2(log2(max(0.0f, (((_slopeParams.y * _148) * max(0.0f, (((_124 * 1.1408f) - (_123 * 0.01055f)) - (_125 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
    _199 = exp2(log2(max(0.0f, (((_slopeParams.z * _148) * max(0.0f, (((_123 * 1.15297f) - (_124 * 0.12897f)) - (_125 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
    _200 = dot(float3(_167, _183, _199), float3(0.212671f, 0.71516f, 0.072169f));
    _204 = ((_167 - _200) * _powerParams.w) + _200;
    _207 = ((_183 - _200) * _powerParams.w) + _200;
    _210 = ((_199 - _200) * _powerParams.w) + _200;
    _217 = min(max(log2(mad(_210, 0.079223745f, mad(_207, 0.0784336f, (_204 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _224 = min(max(log2(mad(_210, 0.07916613f, mad(_207, 0.87846863f, (_204 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _231 = min(max(log2(mad(_210, 0.879143f, mad(_207, 0.0784336f, (_204 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _232 = _217 * 0.060606062f;
    _233 = _224 * 0.060606062f;
    _234 = _231 * 0.060606062f;
    _235 = _232 * _232;
    _236 = _233 * _233;
    _237 = _234 * _234;
    _253 = min(0.0f, (-0.0f - (((_217 * 0.0072181816f) + ((_235 * 0.4298f) + (((_235 * _235) * ((31.96f - (_217 * 2.4327273f)) + (_235 * 15.5f))) - ((_217 * 0.41624245f) * _235)))) + -0.00232f)));
    _269 = min(0.0f, (-0.0f - (((_224 * 0.0072181816f) + ((_236 * 0.4298f) + (((_236 * _236) * ((31.96f - (_224 * 2.4327273f)) + (_236 * 15.5f))) - ((_224 * 0.41624245f) * _236)))) + -0.00232f)));
    _285 = min(0.0f, (-0.0f - (((_231 * 0.0072181816f) + ((_237 * 0.4298f) + (((_237 * _237) * ((31.96f - (_231 * 2.4327273f)) + (_237 * 15.5f))) - ((_231 * 0.41624245f) * _237)))) + -0.00232f)));
    _286 = -0.0f - _253;
    _287 = -0.0f - _269;
    _288 = -0.0f - _285;
    _289 = dot(float3(_286, _287, _288), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _306 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _307 = -0.79999995f / _306;
      _308 = -1.2f / _306;
      _309 = 0.20000005f / _306;
      _312 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _315 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _319 = (_307 + 1.4f) + (_315 * (-0.39999998f - _307));
      _323 = (_308 + 1.6f) + (_315 * (-0.6f - _308));
      _327 = (_309 + 0.9f) + (_315 * (0.5f - _309));
      _344 = (lerp(_327, 1.4f, _312));  // [sem: blended]
      _345 = (lerp(_319, 1.0f, _312));  // [sem: blended]
      _346 = (lerp(_323, 1.2f, _312));  // [sem: blended]
    } else {
      _344 = 1.4f;  // [sem: blended]
      _345 = 1.0f;  // [sem: blended]
      _346 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _347 = 1.0f - _346;
    _359 = ((exp2(log2(((saturate((_253 * _253) * _286) * _347) + _346) * _286) * _345) - _289) * _344) + _289;
    _371 = ((exp2(log2(((saturate((_269 * _269) * _287) * _347) + _346) * _287) * _345) - _289) * _344) + _289;
    _383 = ((exp2(log2(((saturate((_285 * _285) * _288) * _347) + _346) * _288) * _345) - _289) * _344) + _289;
    _390 = saturate(exp2(log2(mad(_383, -0.09902974f, mad(_371, -0.09802088f, (_359 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _397 = saturate(exp2(log2(mad(_383, -0.098961174f, mad(_371, 1.1519032f, (_359 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _404 = saturate(exp2(log2(mad(_383, 1.1510737f, mad(_371, -0.09804345f, (_359 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _410 = 1.0f - abs(_etcParams.w);
      _411 = saturate(_etcParams.w);  // [sem: expr_sat]
      _413 = (_410 * _390) + _411;
      _415 = (_410 * _397) + _411;
      _417 = (_410 * _404) + _411;
      if (_colorGradingParams.w > 0.0f) {
        _422 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _439 = (((max(0.0f, (1.0f - _417)) - _417) * _422) + _417);
        _440 = (((max(0.0f, (1.0f - _415)) - _415) * _422) + _415);
        _441 = (((max(0.0f, (1.0f - _413)) - _413) * _422) + _413);
      } else {
        _439 = _417;
        _440 = _415;
        _441 = _413;
      }
      _443 = _userImageAdjust.y + 1.0f;
      _445 = _userImageAdjust.x + 0.5f;
      _448 = ((_441 + -0.5f) * _443) + _445;
      _451 = ((_440 + -0.5f) * _443) + _445;
      _454 = ((_439 + -0.5f) * _443) + _445;
      _460 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _495 = exp2(log2(saturate(mad(_colorBlind2.z, _454, mad(_colorBlind2.y, _451, (_colorBlind2.x * _448))))) * _460);
      _496 = exp2(log2(saturate(mad(_colorBlind1.z, _454, mad(_colorBlind1.y, _451, (_colorBlind1.x * _448))))) * _460);
      _497 = exp2(log2(saturate(mad(_colorBlind0.z, _454, mad(_colorBlind0.y, _451, (_colorBlind0.x * _448))))) * _460);
    } else {
      _495 = _404;
      _496 = _397;
      _497 = _390;
    }
  } else {
    _495 = _123;
    _496 = _124;
    _497 = _125;
  }
  if (_etcParams.y > 1.0f) {
    _502 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _505 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _511 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_502, _505), float2(_502, _505))));  // [sem: expr_sat]
    _516 = (_511 * _495);
    _517 = (_511 * _496);
    _518 = (_511 * _497);
  } else {
    _516 = _495;
    _517 = _496;
    _518 = _497;
  }
  if (_142 && (_etcParams.z > 0.0f)) {
    _548 = select((_516 <= 0.0031308f), (_516 * 12.92f), (((pow(_516, 0.41666666f)) * 1.055f) + -0.055f));
    _549 = select((_517 <= 0.0031308f), (_517 * 12.92f), (((pow(_517, 0.41666666f)) * 1.055f) + -0.055f));
    _550 = select((_518 <= 0.0031308f), (_518 * 12.92f), (((pow(_518, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _548 = _516;
    _549 = _517;
    _550 = _518;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _553 = (float)((uint)((uint)(_126)));
    if (!(_553 < _viewDir.w)) {
      if (!(!(_553 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _564 = 0.0f;
        _565 = 0.0f;
        _566 = 0.0f;
      } else {
        _564 = _550;
        _565 = _549;
        _566 = _548;
      }
    } else {
      _564 = 0.0f;
      _565 = 0.0f;
      _566 = 0.0f;
    }
  } else {
    _564 = _550;
    _565 = _549;
    _566 = _548;
  }
  SV_Target.x = _564;
  SV_Target.y = _565;
  SV_Target.z = _566;
  SV_Target.w = _139;
  return SV_Target;
}
