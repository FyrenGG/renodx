Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t70, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t71, space36);

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

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

static const float _global_0[13] = { 0.0072104214f, 0.0072235432f, 0.007234297f, 0.0072426726f, 0.00724866f, 0.0072522555f, 0.0072534545f, 0.0072522555f, 0.00724866f, 0.0072426726f, 0.007234297f, 0.0072235432f, 0.0072104214f };

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _19;
  float _28;
  float _29;
  float _43;
  float _45;
  float _46;
  float _47;
  int _48;
  float _50;
  float _51;
  float _52;
  int _53;
  float _135;
  float _340;
  float _341;
  float _342;
  float _435;
  float _436;
  float _437;
  float _491;
  float _492;
  float _493;
  float _512;
  float _513;
  float _514;
  float _544;
  float _545;
  float _546;
  float _560;
  float _561;
  float _562;
  float _60;
  float4 _71;
  float _78;
  float _79;
  float _80;
  int _81;
  int _84;
  uint2 _97;
  bool _115;
  float _119;
  float _120;
  float _121;
  uint _122;
  bool _138;
  float _144;
  float _193;
  float _194;
  float _195;
  float _197;
  float _204;
  float _205;
  float _206;
  float _225;
  float _226;
  float _227;
  float _228;
  float _229;
  float _230;
  float _231;
  float _232;
  float _233;
  float _279;
  float _280;
  float _281;
  float _282;
  float _283;
  float _284;
  float _285;
  float _302;
  float _303;
  float _304;
  float _305;
  float _311;
  float _314;
  float _321;
  float _322;
  float _323;
  float _352;
  float _377;
  float _378;
  float _379;
  float _398;
  float _399;
  float _400;
  float _406;
  float _410;
  float _411;
  float _412;
  float _413;
  float _418;
  float _443;
  float _447;
  float _448;
  float _449;
  float _450;
  float _480;
  float _502;
  float _503;
  float _507;
  float _551;
  int __loop_jump_target = -1;
  _19 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _28 = (float)((int)((int)(_bufferSizeAndInvSize.x * TEXCOORD.x)));
  _29 = (float)((int)((int)(_bufferSizeAndInvSize.y * TEXCOORD.y)));
  _43 = 1.0f - (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_28 * _customRenderPassSizeInvSize.x)), ((int)(_29 * _customRenderPassSizeInvSize.y)), 0)))).x);
  _45 = 0.0f;
  _46 = 0.0f;
  _47 = 0.0f;
  _48 = -6;
  while(true) {
    _50 = _45;
    _51 = _46;
    _52 = _47;
    _53 = -6;
    while(true) {
      _60 = (_global_0[min((uint)(((int)(_48) + (int)(6))), 12u)]) * (_global_0[min((uint)(((int)(_53) + (int)(6))), 12u)]);
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _71 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((((_43 * _srcTargetSizeAndInv.z) * ((float)((int)(_48)))) + TEXCOORD.x), (((_43 * _srcTargetSizeAndInv.w) * ((float)((int)(_53)))) + TEXCOORD.y)));
      _78 = (_71.x * _60) + _50;
      _79 = (_71.y * _60) + _51;
      _80 = (_71.z * _60) + _52;
      _81 = (int)(_53) + (int)(1);
      if (!(_81 == 7)) {
        _50 = _78;
        _51 = _79;
        _52 = _80;
        _53 = _81;
        continue;
      }
      _84 = (int)(_48) + (int)(1);
      if (!(_84 == 7)) {
        _45 = _78;
        _46 = _79;
        _47 = _80;
        _48 = _84;
        __loop_jump_target = 44;
        break;
      }
      __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_97.x, _97.y);
      _115 = (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_97.x))))))) + 0.5f) * _28)), ((int)((((float)((int)((int)((float)((int)((int)(_97.y))))))) + 0.5f) * _29)), 0)))).x) & 255) != 30);
      _119 = select(_115, ((_78 * 56493.91f) + _19.x), _19.x);
      _120 = select(_115, ((_79 * 56493.91f) + _19.y), _19.y);
      _121 = select(_115, ((_80 * 56493.91f) + _19.z), _19.z);
      _122 = (uint)(SV_Position.y);
      if (_etcParams.y == 1.0f) {
        _135 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _122, 0)))).x) & 127)))) + 0.5f);
      } else {
        _135 = 1.0f;
      }
      _138 = (_localToneMappingParams.w > 0.0f);
      if (_138) {
        _144 = _userImageAdjust.z * _exposure0.x;
        _193 = exp2(log2(max(0.0f, (((_144 * max(0.0f, (((_119 * 1.70505f) - (_120 * 0.62179f)) - (_121 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
        _194 = exp2(log2(max(0.0f, (((max(0.0f, (((_120 * 1.1408f) - (_119 * 0.13026f)) - (_121 * 0.01055f))) * _144) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
        _195 = exp2(log2(max(0.0f, (((max(0.0f, (((_119 * -0.024f) - (_120 * 0.12897f)) + (_121 * 1.15297f))) * _144) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
        _197 = dot(float3(_193, _194, _195), float3(0.212671f, 0.71516f, 0.072169f));
        _204 = ((_193 - _197) * _powerParams.w) + _197;
        _205 = ((_194 - _197) * _powerParams.w) + _197;
        _206 = ((_195 - _197) * _powerParams.w) + _197;
        _225 = min(max(log2(mad(_206, 0.079223745f, mad(_205, 0.0784336f, (_204 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
        _226 = min(max(log2(mad(_206, 0.07916613f, mad(_205, 0.87846863f, (_204 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
        _227 = min(max(log2(mad(_206, 0.879143f, mad(_205, 0.0784336f, (_204 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
        _228 = _225 * 0.060606062f;
        _229 = _226 * 0.060606062f;
        _230 = _227 * 0.060606062f;
        _231 = _228 * _228;
        _232 = _229 * _229;
        _233 = _230 * _230;
        _279 = min(0.0f, (-0.0f - (((_225 * 0.0072181816f) + ((_231 * 0.4298f) + (((_231 * _231) * ((31.96f - (_225 * 2.4327273f)) + (_231 * 15.5f))) - ((_225 * 0.41624245f) * _231)))) + -0.00232f)));
        _280 = min(0.0f, (-0.0f - (((_226 * 0.0072181816f) + ((_232 * 0.4298f) + (((_232 * _232) * ((31.96f - (_226 * 2.4327273f)) + (_232 * 15.5f))) - ((_226 * 0.41624245f) * _232)))) + -0.00232f)));
        _281 = min(0.0f, (-0.0f - (((_227 * 0.0072181816f) + ((_233 * 0.4298f) + (((_233 * _233) * ((31.96f - (_227 * 2.4327273f)) + (_233 * 15.5f))) - ((_227 * 0.41624245f) * _233)))) + -0.00232f)));
        _282 = -0.0f - _279;
        _283 = -0.0f - _280;
        _284 = -0.0f - _281;
        _285 = dot(float3(_282, _283, _284), float3(0.2126f, 0.7152f, 0.0722f));
        if (_nightToneParm == 1) {
          _302 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
          _303 = -0.79999995f / _302;
          _304 = -1.2f / _302;
          _305 = 0.20000005f / _302;
          _311 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
          _314 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
          _321 = (_303 + 1.4f) + (_314 * (-0.39999998f - _303));
          _322 = (_304 + 1.6f) + (_314 * (-0.6f - _304));
          _323 = (_305 + 0.9f) + (_314 * (0.5f - _305));
          _340 = (lerp(_322, 1.2f, _311));  // [sem: blended]
          _341 = (lerp(_321, 1.0f, _311));  // [sem: blended]
          _342 = (lerp(_323, 1.4f, _311));  // [sem: blended]
        } else {
          _340 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
          _341 = 1.0f;  // [sem: blended]
          _342 = 1.4f;  // [sem: blended]
        }
        _352 = 1.0f - _340;
        _377 = ((exp2(log2(((saturate((_279 * _279) * _282) * _352) + _340) * _282) * _341) - _285) * _342) + _285;
        _378 = ((exp2(log2(((saturate((_280 * _280) * _283) * _352) + _340) * _283) * _341) - _285) * _342) + _285;
        _379 = ((exp2(log2(((saturate((_281 * _281) * _284) * _352) + _340) * _284) * _341) - _285) * _342) + _285;
        _398 = saturate(exp2(log2(mad(_379, -0.09902974f, mad(_378, -0.09802088f, (_377 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
        _399 = saturate(exp2(log2(mad(_379, -0.098961174f, mad(_378, 1.1519032f, (_377 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
        _400 = saturate(exp2(log2(mad(_379, 1.1510737f, mad(_378, -0.09804345f, (_377 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
        if (_etcParams.z == 0.0f) {
          _406 = 1.0f - abs(_etcParams.w);
          _410 = saturate(_etcParams.w);  // [sem: expr_sat]
          _411 = (_406 * _398) + _410;
          _412 = (_406 * _399) + _410;
          _413 = (_406 * _400) + _410;
          if (_colorGradingParams.w > 0.0f) {
            _418 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
            _435 = (((max(0.0f, (1.0f - _411)) - _411) * _418) + _411);
            _436 = (((max(0.0f, (1.0f - _412)) - _412) * _418) + _412);
            _437 = (((max(0.0f, (1.0f - _413)) - _413) * _418) + _413);
          } else {
            _435 = _411;
            _436 = _412;
            _437 = _413;
          }
          _443 = _userImageAdjust.y + 1.0f;
          _447 = _userImageAdjust.x + 0.5f;
          _448 = ((_435 + -0.5f) * _443) + _447;
          _449 = ((_436 + -0.5f) * _443) + _447;
          _450 = ((_437 + -0.5f) * _443) + _447;
          _480 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
          _491 = exp2(log2(saturate(mad(_colorBlind0.z, _450, mad(_colorBlind0.y, _449, (_colorBlind0.x * _448))))) * _480);
          _492 = exp2(log2(saturate(mad(_colorBlind1.z, _450, mad(_colorBlind1.y, _449, (_colorBlind1.x * _448))))) * _480);
          _493 = exp2(log2(saturate(mad(_colorBlind2.z, _450, mad(_colorBlind2.y, _449, (_colorBlind2.x * _448))))) * _480);
        } else {
          _491 = _398;
          _492 = _399;
          _493 = _400;
        }
      } else {
        _491 = _119;
        _492 = _120;
        _493 = _121;
      }
      if (_etcParams.y > 1.0f) {
        _502 = abs((TEXCOORD.x * 2.0f) + -1.0f);
        _503 = abs((TEXCOORD.y * 2.0f) + -1.0f);
        _507 = saturate(1.0f - (dot(float2(_502, _503), float2(_502, _503)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
        _512 = (_507 * _491);
        _513 = (_507 * _492);
        _514 = (_507 * _493);
      } else {
        _512 = _491;
        _513 = _492;
        _514 = _493;
      }
      if (_138 && (_etcParams.z > 0.0f)) {
        _544 = select((_512 <= 0.0031308f), (_512 * 12.92f), (((pow(_512, 0.41666666f)) * 1.055f) + -0.055f));
        _545 = select((_513 <= 0.0031308f), (_513 * 12.92f), (((pow(_513, 0.41666666f)) * 1.055f) + -0.055f));
        _546 = select((_514 <= 0.0031308f), (_514 * 12.92f), (((pow(_514, 0.41666666f)) * 1.055f) + -0.055f));
      } else {
        _544 = _512;
        _545 = _513;
        _546 = _514;
      }
      if (!(!(_etcParams.y >= 1.0f))) {
        _551 = (float)((uint)((uint)(_122)));
        if (!(_551 < _viewDir.w)) {
          if (!(_551 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
            _560 = _544;
            _561 = _545;
            _562 = _546;
          } else {
            _560 = 0.0f;
            _561 = 0.0f;
            _562 = 0.0f;
          }
        } else {
          _560 = 0.0f;
          _561 = 0.0f;
          _562 = 0.0f;
        }
      } else {
        _560 = _544;
        _561 = _545;
        _562 = _546;
      }
      SV_Target.x = _560;
      SV_Target.y = _561;
      SV_Target.z = _562;
      SV_Target.w = _135;
      break;
    }
    if (__loop_jump_target == 44) {
      __loop_jump_target = -1;
      continue;
    }
    if (__loop_jump_target != -1) {
      break;
    }
    break;
  }
  return SV_Target;
}
