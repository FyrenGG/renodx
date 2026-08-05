Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t38, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t39, space36);

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

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _21;
  float _27;
  float _30;
  float _33;
  float _40;
  float _46;
  uint2 _48;
  float _120;
  float _121;
  float _122;
  float _136;
  float _341;
  float _342;
  float _343;
  float _436;
  float _437;
  float _438;
  float _492;
  float _493;
  float _494;
  float _513;
  float _514;
  float _515;
  float _545;
  float _546;
  float _547;
  float _561;
  float _562;
  float _563;
  float _90;
  uint _123;
  bool _139;
  float _145;
  float _164;
  float _180;
  float _196;
  float _197;
  float _201;
  float _204;
  float _207;
  float _214;
  float _221;
  float _228;
  float _229;
  float _230;
  float _231;
  float _232;
  float _233;
  float _234;
  float _250;
  float _266;
  float _282;
  float _283;
  float _284;
  float _285;
  float _286;
  float _303;
  float _304;
  float _305;
  float _306;
  float _309;
  float _312;
  float _316;
  float _320;
  float _324;
  float _344;
  float _356;
  float _368;
  float _380;
  float _387;
  float _394;
  float _401;
  float _407;
  float _408;
  float _410;
  float _412;
  float _414;
  float _419;
  float _440;
  float _442;
  float _445;
  float _448;
  float _451;
  float _457;
  float _499;
  float _502;
  float _508;
  float _550;
  float _567;
  float _571;
  float _575;
  _21 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _27 = (pow(_21.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _30 = (pow(_21.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _33 = (pow(_21.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _40 = (float)((int)((int)((_bufferSizeAndInvSize.x + -1.0f) * saturate(TEXCOORD.x))));
  _46 = (float)((int)((int)((_bufferSizeAndInvSize.y + -1.0f) * saturate(TEXCOORD.y))));
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_48.x, _48.y);
  if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_48.x))))))) + 0.5f) * _40)), ((int)((((float)((int)((int)((float)((int)((int)(_48.y))))))) + 0.5f) * _46)), 0)))).x) & 255) == 0) {
    _120 = (exp2(log2(max(0.0f, (_33 + -0.8359375f)) / (18.851562f - (_33 * 18.6875f))) * 6.277395f) * 10000.0f);
    _121 = (exp2(log2(max(0.0f, (_30 + -0.8359375f)) / (18.851562f - (_30 * 18.6875f))) * 6.277395f) * 10000.0f);
    _122 = (exp2(log2(max(0.0f, (_27 + -0.8359375f)) / (18.851562f - (_27 * 18.6875f))) * 6.277395f) * 10000.0f);
  } else {
    // [sem: expr_sat]
    _90 = saturate(ceil((0.1f - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _40)), ((int)(_customRenderPassSizeInvSize.y * _46)), 0)))).x)))) + (_nearFarProj.x / max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x)))));
    _120 = _90;
    _121 = _90;
    _122 = _90;
  }
  _123 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _136 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _123, 0)))).x) & 127)))) + 0.5f);
  } else {
    _136 = 1.0f;
  }
  _139 = (_localToneMappingParams.w > 0.0f);
  if (_139) {
    _145 = _exposure0.x * _userImageAdjust.z;
    _164 = exp2(_powerParams.x * log2(max(0.0f, (((_145 * max(0.0f, (((_121 * -0.62179f) - (_120 * 0.08326f)) + (_122 * 1.70505f)))) * _slopeParams.x) + _offsetParams.x))));
    _180 = exp2(log2(max(0.0f, (((_slopeParams.y * _145) * max(0.0f, (((_121 * 1.1408f) - (_120 * 0.01055f)) - (_122 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
    _196 = exp2(log2(max(0.0f, (((_slopeParams.z * _145) * max(0.0f, (((_120 * 1.15297f) - (_121 * 0.12897f)) - (_122 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
    _197 = dot(float3(_164, _180, _196), float3(0.212671f, 0.71516f, 0.072169f));
    _201 = ((_164 - _197) * _powerParams.w) + _197;
    _204 = ((_180 - _197) * _powerParams.w) + _197;
    _207 = ((_196 - _197) * _powerParams.w) + _197;
    _214 = min(max(log2(mad(_207, 0.079223745f, mad(_204, 0.0784336f, (_201 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _221 = min(max(log2(mad(_207, 0.07916613f, mad(_204, 0.87846863f, (_201 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _228 = min(max(log2(mad(_207, 0.879143f, mad(_204, 0.0784336f, (_201 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _229 = _214 * 0.060606062f;
    _230 = _221 * 0.060606062f;
    _231 = _228 * 0.060606062f;
    _232 = _229 * _229;
    _233 = _230 * _230;
    _234 = _231 * _231;
    _250 = min(0.0f, (-0.0f - (((_214 * 0.0072181816f) + ((_232 * 0.4298f) + (((_232 * _232) * ((31.96f - (_214 * 2.4327273f)) + (_232 * 15.5f))) - ((_214 * 0.41624245f) * _232)))) + -0.00232f)));
    _266 = min(0.0f, (-0.0f - (((_221 * 0.0072181816f) + ((_233 * 0.4298f) + (((_233 * _233) * ((31.96f - (_221 * 2.4327273f)) + (_233 * 15.5f))) - ((_221 * 0.41624245f) * _233)))) + -0.00232f)));
    _282 = min(0.0f, (-0.0f - (((_228 * 0.0072181816f) + ((_234 * 0.4298f) + (((_234 * _234) * ((31.96f - (_228 * 2.4327273f)) + (_234 * 15.5f))) - ((_228 * 0.41624245f) * _234)))) + -0.00232f)));
    _283 = -0.0f - _250;
    _284 = -0.0f - _266;
    _285 = -0.0f - _282;
    _286 = dot(float3(_283, _284, _285), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _303 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _304 = -0.79999995f / _303;
      _305 = -1.2f / _303;
      _306 = 0.20000005f / _303;
      _309 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _312 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _316 = (_304 + 1.4f) + (_312 * (-0.39999998f - _304));
      _320 = (_305 + 1.6f) + (_312 * (-0.6f - _305));
      _324 = (_306 + 0.9f) + (_312 * (0.5f - _306));
      _341 = (lerp(_324, 1.4f, _309));  // [sem: blended]
      _342 = (lerp(_316, 1.0f, _309));  // [sem: blended]
      _343 = (lerp(_320, 1.2f, _309));  // [sem: blended]
    } else {
      _341 = 1.4f;  // [sem: blended]
      _342 = 1.0f;  // [sem: blended]
      _343 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _344 = 1.0f - _343;
    _356 = ((exp2(log2(((saturate((_250 * _250) * _283) * _344) + _343) * _283) * _342) - _286) * _341) + _286;
    _368 = ((exp2(log2(((saturate((_266 * _266) * _284) * _344) + _343) * _284) * _342) - _286) * _341) + _286;
    _380 = ((exp2(log2(((saturate((_282 * _282) * _285) * _344) + _343) * _285) * _342) - _286) * _341) + _286;
    _387 = saturate(exp2(log2(mad(_380, -0.09902974f, mad(_368, -0.09802088f, (_356 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _394 = saturate(exp2(log2(mad(_380, -0.098961174f, mad(_368, 1.1519032f, (_356 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _401 = saturate(exp2(log2(mad(_380, 1.1510737f, mad(_368, -0.09804345f, (_356 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _407 = 1.0f - abs(_etcParams.w);
      _408 = saturate(_etcParams.w);  // [sem: expr_sat]
      _410 = (_407 * _387) + _408;
      _412 = (_407 * _394) + _408;
      _414 = (_407 * _401) + _408;
      if (_colorGradingParams.w > 0.0f) {
        _419 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _436 = (((max(0.0f, (1.0f - _414)) - _414) * _419) + _414);
        _437 = (((max(0.0f, (1.0f - _412)) - _412) * _419) + _412);
        _438 = (((max(0.0f, (1.0f - _410)) - _410) * _419) + _410);
      } else {
        _436 = _414;
        _437 = _412;
        _438 = _410;
      }
      _440 = _userImageAdjust.y + 1.0f;
      _442 = _userImageAdjust.x + 0.5f;
      _445 = ((_438 + -0.5f) * _440) + _442;
      _448 = ((_437 + -0.5f) * _440) + _442;
      _451 = ((_436 + -0.5f) * _440) + _442;
      _457 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _492 = exp2(log2(saturate(mad(_colorBlind2.z, _451, mad(_colorBlind2.y, _448, (_colorBlind2.x * _445))))) * _457);
      _493 = exp2(log2(saturate(mad(_colorBlind1.z, _451, mad(_colorBlind1.y, _448, (_colorBlind1.x * _445))))) * _457);
      _494 = exp2(log2(saturate(mad(_colorBlind0.z, _451, mad(_colorBlind0.y, _448, (_colorBlind0.x * _445))))) * _457);
    } else {
      _492 = _401;
      _493 = _394;
      _494 = _387;
    }
  } else {
    _492 = _120;
    _493 = _121;
    _494 = _122;
  }
  if (_etcParams.y > 1.0f) {
    _499 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _502 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _508 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_499, _502), float2(_499, _502))));  // [sem: expr_sat]
    _513 = (_508 * _494);
    _514 = (_508 * _493);
    _515 = (_508 * _492);
  } else {
    _513 = _494;
    _514 = _493;
    _515 = _492;
  }
  if (_139 && (_etcParams.z > 0.0f)) {
    _545 = select((_513 <= 0.0031308f), (_513 * 12.92f), (((pow(_513, 0.41666666f)) * 1.055f) + -0.055f));
    _546 = select((_514 <= 0.0031308f), (_514 * 12.92f), (((pow(_514, 0.41666666f)) * 1.055f) + -0.055f));
    _547 = select((_515 <= 0.0031308f), (_515 * 12.92f), (((pow(_515, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _545 = _513;
    _546 = _514;
    _547 = _515;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _550 = (float)((uint)((uint)(_123)));
    if (!(_550 < _viewDir.w)) {
      if (!(!(_550 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _561 = 0.0f;
        _562 = 0.0f;
        _563 = 0.0f;
      } else {
        _561 = _545;
        _562 = _546;
        _563 = _547;
      }
    } else {
      _561 = 0.0f;
      _562 = 0.0f;
      _563 = 0.0f;
    }
  } else {
    _561 = _545;
    _562 = _546;
    _563 = _547;
  }
  _567 = exp2(log2(_561 * 0.0001f) * 0.15930176f);
  _571 = exp2(log2(_562 * 0.0001f) * 0.15930176f);
  _575 = exp2(log2(_563 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_567 * 18.6875f) + 1.0f)) * ((_567 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_571 * 18.6875f) + 1.0f)) * ((_571 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_575 * 18.6875f) + 1.0f)) * ((_575 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _136;
  return SV_Target;
}
