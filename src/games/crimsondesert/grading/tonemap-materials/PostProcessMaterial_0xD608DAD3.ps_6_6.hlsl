struct PostProcessFisheye_DistortionStruct {
  float _maxPower;
};

struct BindlessParameters_PostProcessFisheye_Distortion {
  PostProcessFisheye_DistortionStruct BindlessParameters_PostProcessFisheye_Distortion;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

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

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
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

typedef BindlessParameters_PostProcessFisheye_Distortion BindlessParameters_PostProcessFisheye_Distortion_t;
ConstantBuffer<BindlessParameters_PostProcessFisheye_Distortion_t> BindlessParameters_PostProcessFisheye_Distortion[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float _25;
  float _29;
  float _31;
  float _32;
  float _33;
  float _34;
  float _35;
  float _36;
  int _39;
  float _47;
  float _86;
  float _87;
  float _142;
  float _347;
  float _348;
  float _349;
  float _442;
  float _443;
  float _444;
  float _502;
  float _503;
  float _504;
  float _523;
  float _524;
  float _525;
  float _555;
  float _556;
  float _557;
  float _571;
  float _572;
  float _573;
  float _51;
  float _55;
  float _60;
  float _62;
  float _76;
  float _78;
  float4 _92;
  float _98;
  float _101;
  float _104;
  float _112;
  float _120;
  float _128;
  uint _129;
  bool _145;
  float _151;
  float _170;
  float _186;
  float _202;
  float _203;
  float _207;
  float _210;
  float _213;
  float _220;
  float _227;
  float _234;
  float _235;
  float _236;
  float _237;
  float _238;
  float _239;
  float _240;
  float _256;
  float _272;
  float _288;
  float _289;
  float _290;
  float _291;
  float _292;
  float _309;
  float _310;
  float _311;
  float _312;
  float _315;
  float _318;
  float _322;
  float _326;
  float _330;
  float _350;
  float _362;
  float _374;
  float _386;
  float _393;
  float _400;
  float _407;
  float _413;
  float _414;
  float _416;
  float _418;
  float _420;
  float _425;
  float _446;
  float _448;
  float _451;
  float _454;
  float _457;
  float _463;
  float _509;
  float _512;
  float _518;
  float _560;
  float _577;
  float _581;
  float _585;
  _25 = (_destTargetSizAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x;
  _29 = (_destTargetSizAndInv.y * (1.0f - TEXCOORD.y)) / _srcTargetSizeAndInv.x;
  _31 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _32 = 0.5f / _31;
  _33 = _25 + -0.5f;
  _34 = _29 - _32;
  _35 = dot(float2(_33, _34), float2(_33, _34));
  _36 = sqrt(_35);
  _39 = WaveReadLaneFirst(_materialIndex);
  _47 = WaveReadLaneFirst(BindlessParameters_PostProcessFisheye_Distortion[((int)((uint)((uint)(select(((uint)_39 < (uint)170000), _39, 0))) + (uint)(0)))].BindlessParameters_PostProcessFisheye_Distortion._maxPower);
  if (_47 > 0.0f) {
    _55 = sqrt(dot(float2(0.5f, _32), float2(0.5f, _32)));
    _60 = tan(_55 * _47);
    _62 = tan(_47 * _36) * (rsqrt(_35) * _55);
    _86 = (((_62 * _34) / _60) + _32);
    _87 = (((_62 * _33) / _60) + 0.5f);
  } else {
    _51 = select((_31 < 1.0f), 0.5f, _32);
    if (_47 < 0.0f) {
      _76 = atan((_47 * -10.0f) * _51);
      _78 = atan((_47 * _36) * -10.0f) * (rsqrt(_35) * _51);
      _86 = (((_78 * _34) / _76) + _32);
      _87 = (((_78 * _33) / _76) + 0.5f);
    } else {
      _86 = _29;
      _87 = _25;
    }
  }
  _92 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(_87, (1.0f - (_86 * _31))));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _98 = (pow(_92.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _101 = (pow(_92.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _104 = (pow(_92.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _112 = exp2(log2(max(0.0f, (_98 + -0.8359375f)) / (18.851562f - (_98 * 18.6875f))) * 6.277395f);
  _120 = exp2(log2(max(0.0f, (_101 + -0.8359375f)) / (18.851562f - (_101 * 18.6875f))) * 6.277395f);
  _128 = exp2(log2(max(0.0f, (_104 + -0.8359375f)) / (18.851562f - (_104 * 18.6875f))) * 6.277395f);
  _129 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _142 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _129, 0)))).x) & 127)))) + 0.5f);
  } else {
    _142 = 1.0f;
  }
  _145 = (_localToneMappingParams.w > 0.0f);
  if (_145) {
    _151 = _exposure0.x * _userImageAdjust.z;
    _170 = exp2(_powerParams.x * log2(max(0.0f, (((_151 * max(0.0f, (((_112 * 17050.5f) - (_120 * 6217.9f)) - (_128 * 832.6f)))) * _slopeParams.x) + _offsetParams.x))));
    _186 = exp2(log2(max(0.0f, (((_slopeParams.y * _151) * max(0.0f, (((_120 * 11408.0f) - (_112 * 1302.6001f)) - (_128 * 105.5f)))) + _offsetParams.y))) * _powerParams.y);
    _202 = exp2(log2(max(0.0f, (((_slopeParams.z * _151) * max(0.0f, (((_112 * -240.0f) - (_120 * 1289.7f)) + (_128 * 11529.699f)))) + _offsetParams.z))) * _powerParams.z);
    _203 = dot(float3(_170, _186, _202), float3(0.212671f, 0.71516f, 0.072169f));
    _207 = ((_170 - _203) * _powerParams.w) + _203;
    _210 = ((_186 - _203) * _powerParams.w) + _203;
    _213 = ((_202 - _203) * _powerParams.w) + _203;
    _220 = min(max(log2(mad(_213, 0.079223745f, mad(_210, 0.0784336f, (_207 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _227 = min(max(log2(mad(_213, 0.07916613f, mad(_210, 0.87846863f, (_207 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _234 = min(max(log2(mad(_213, 0.879143f, mad(_210, 0.0784336f, (_207 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _235 = _220 * 0.060606062f;
    _236 = _227 * 0.060606062f;
    _237 = _234 * 0.060606062f;
    _238 = _235 * _235;
    _239 = _236 * _236;
    _240 = _237 * _237;
    _256 = min(0.0f, (-0.0f - (((_220 * 0.0072181816f) + ((_238 * 0.4298f) + (((_238 * _238) * ((31.96f - (_220 * 2.4327273f)) + (_238 * 15.5f))) - ((_220 * 0.41624245f) * _238)))) + -0.00232f)));
    _272 = min(0.0f, (-0.0f - (((_227 * 0.0072181816f) + ((_239 * 0.4298f) + (((_239 * _239) * ((31.96f - (_227 * 2.4327273f)) + (_239 * 15.5f))) - ((_227 * 0.41624245f) * _239)))) + -0.00232f)));
    _288 = min(0.0f, (-0.0f - (((_234 * 0.0072181816f) + ((_240 * 0.4298f) + (((_240 * _240) * ((31.96f - (_234 * 2.4327273f)) + (_240 * 15.5f))) - ((_234 * 0.41624245f) * _240)))) + -0.00232f)));
    _289 = -0.0f - _256;
    _290 = -0.0f - _272;
    _291 = -0.0f - _288;
    _292 = dot(float3(_289, _290, _291), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _309 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _310 = -0.79999995f / _309;
      _311 = -1.2f / _309;
      _312 = 0.20000005f / _309;
      _315 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _318 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _322 = (_310 + 1.4f) + (_318 * (-0.39999998f - _310));
      _326 = (_311 + 1.6f) + (_318 * (-0.6f - _311));
      _330 = (_312 + 0.9f) + (_318 * (0.5f - _312));
      _347 = (lerp(_330, 1.4f, _315));  // [sem: blended]
      _348 = (lerp(_322, 1.0f, _315));  // [sem: blended]
      _349 = (lerp(_326, 1.2f, _315));  // [sem: blended]
    } else {
      _347 = 1.4f;  // [sem: blended]
      _348 = 1.0f;  // [sem: blended]
      _349 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _350 = 1.0f - _349;
    _362 = ((exp2(log2(((saturate((_256 * _256) * _289) * _350) + _349) * _289) * _348) - _292) * _347) + _292;
    _374 = ((exp2(log2(((saturate((_272 * _272) * _290) * _350) + _349) * _290) * _348) - _292) * _347) + _292;
    _386 = ((exp2(log2(((saturate((_288 * _288) * _291) * _350) + _349) * _291) * _348) - _292) * _347) + _292;
    _393 = saturate(exp2(log2(mad(_386, -0.09902974f, mad(_374, -0.09802088f, (_362 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _400 = saturate(exp2(log2(mad(_386, -0.098961174f, mad(_374, 1.1519032f, (_362 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _407 = saturate(exp2(log2(mad(_386, 1.1510737f, mad(_374, -0.09804345f, (_362 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _413 = 1.0f - abs(_etcParams.w);
      _414 = saturate(_etcParams.w);  // [sem: expr_sat]
      _416 = (_413 * _393) + _414;
      _418 = (_413 * _400) + _414;
      _420 = (_413 * _407) + _414;
      if (_colorGradingParams.w > 0.0f) {
        _425 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _442 = (((max(0.0f, (1.0f - _418)) - _418) * _425) + _418);
        _443 = (((max(0.0f, (1.0f - _416)) - _416) * _425) + _416);
        _444 = (((max(0.0f, (1.0f - _420)) - _420) * _425) + _420);
      } else {
        _442 = _418;
        _443 = _416;
        _444 = _420;
      }
      _446 = _userImageAdjust.y + 1.0f;
      _448 = _userImageAdjust.x + 0.5f;
      _451 = ((_443 + -0.5f) * _446) + _448;
      _454 = ((_442 + -0.5f) * _446) + _448;
      _457 = ((_444 + -0.5f) * _446) + _448;
      _463 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _502 = exp2(log2(saturate(mad(_colorBlind0.z, _457, mad(_colorBlind0.y, _454, (_colorBlind0.x * _451))))) * _463);
      _503 = exp2(log2(saturate(mad(_colorBlind1.z, _457, mad(_colorBlind1.y, _454, (_colorBlind1.x * _451))))) * _463);
      _504 = exp2(log2(saturate(mad(_colorBlind2.z, _457, mad(_colorBlind2.y, _454, (_colorBlind2.x * _451))))) * _463);
    } else {
      _502 = _393;
      _503 = _400;
      _504 = _407;
    }
  } else {
    _502 = (_112 * 10000.0f);
    _503 = (_120 * 10000.0f);
    _504 = (_128 * 10000.0f);
  }
  if (_etcParams.y > 1.0f) {
    _509 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _512 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _518 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_509, _512), float2(_509, _512))));  // [sem: expr_sat]
    _523 = (_518 * _502);
    _524 = (_518 * _503);
    _525 = (_518 * _504);
  } else {
    _523 = _502;
    _524 = _503;
    _525 = _504;
  }
  if (_145 && (_etcParams.z > 0.0f)) {
    _555 = select((_523 <= 0.0031308f), (_523 * 12.92f), (((pow(_523, 0.41666666f)) * 1.055f) + -0.055f));
    _556 = select((_524 <= 0.0031308f), (_524 * 12.92f), (((pow(_524, 0.41666666f)) * 1.055f) + -0.055f));
    _557 = select((_525 <= 0.0031308f), (_525 * 12.92f), (((pow(_525, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _555 = _523;
    _556 = _524;
    _557 = _525;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _560 = (float)((uint)((uint)(_129)));
    if (!(_560 < _viewDir.w)) {
      if (!(!(_560 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _571 = 0.0f;
        _572 = 0.0f;
        _573 = 0.0f;
      } else {
        _571 = _555;
        _572 = _556;
        _573 = _557;
      }
    } else {
      _571 = 0.0f;
      _572 = 0.0f;
      _573 = 0.0f;
    }
  } else {
    _571 = _555;
    _572 = _556;
    _573 = _557;
  }
  _577 = exp2(log2(_571 * 0.0001f) * 0.15930176f);
  _581 = exp2(log2(_572 * 0.0001f) * 0.15930176f);
  _585 = exp2(log2(_573 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_577 * 18.6875f) + 1.0f)) * ((_577 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_581 * 18.6875f) + 1.0f)) * ((_581 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_585 * 18.6875f) + 1.0f)) * ((_585 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _142;
  return SV_Target;
}
