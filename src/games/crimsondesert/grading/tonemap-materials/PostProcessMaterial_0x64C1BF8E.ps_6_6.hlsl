struct PostProcessActionStruct {
  float _contrast;
  float3 _saturation;
  float _gaussianBlurIntensity;
  float2 _gaussianBlurPosition;
  float _gaussianBlurClampInnerRadius;
  float _gaussianBlurClampHardness;
  float2 _radialBlurPosition;
  float _radialBlurIntensity;
  float _radialBlurClampInnerRadius;
  float _radialBlurClampHardness;
  float _borderRatio;
  float _borderWidth;
  float _borderSmoothness;
  float _borderEdgeNoiseRatio;
  float2 _borderEdgeNoiseOffset;
  float2 _borderEdgeNoiseTile;
  uint _borderColor;
  uint _borderEdgeNoiseTexture;
  float _borderFlickerSpeed;
  float _borderFlickerIntensity;
  float2 _borderFlickerOpacityMinMax;
};

struct BindlessParameters_PostProcessAction {
  PostProcessActionStruct BindlessParameters_PostProcessAction;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

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

typedef BindlessParameters_PostProcessAction BindlessParameters_PostProcessAction_t;
ConstantBuffer<BindlessParameters_PostProcessAction_t> BindlessParameters_PostProcessAction[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

static const float _global_0[11] = { 0.048393868f, 0.05793798f, 0.066644534f, 0.0736536f, 0.07820809f, 0.079788f, 0.07820809f, 0.0736536f, 0.066644534f, 0.05793798f, 0.048393868f };

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _23;
  float _31;
  int _34;
  float _42;
  int _45;
  float _53;
  int _57;
  float _58;
  float _59;
  float _60;
  int _61;
  int _97;
  int _98;
  float _116;
  float _117;
  float _118;
  float _252;
  float _284;
  float _298;
  float _503;
  float _504;
  float _505;
  float _598;
  float _599;
  float _600;
  float _654;
  float _655;
  float _656;
  float _675;
  float _676;
  float _677;
  float _707;
  float _708;
  float _709;
  float _723;
  float _724;
  float _725;
  float _70;
  float4 _84;
  float _89;
  float _91;
  float _93;
  int _94;
  int _100;
  float4 _111;
  int _123;
  float _131;
  float _135;
  int _138;
  float _146;
  float _150;
  int _153;
  int _161;
  int _164;
  float _172;
  int _175;
  float _183;
  float _185;
  float _189;
  float _193;
  float _202;
  int _205;
  float _213;
  int _218;
  float _226;
  float _230;
  int _233;
  float _241;
  int _255;
  float _263;
  uint _285;
  bool _301;
  float _307;
  float _326;
  float _342;
  float _358;
  float _359;
  float _363;
  float _366;
  float _369;
  float _376;
  float _383;
  float _390;
  float _391;
  float _392;
  float _393;
  float _394;
  float _395;
  float _396;
  float _412;
  float _428;
  float _444;
  float _445;
  float _446;
  float _447;
  float _448;
  float _465;
  float _466;
  float _467;
  float _468;
  float _471;
  float _474;
  float _478;
  float _482;
  float _486;
  float _506;
  float _518;
  float _530;
  float _542;
  float _549;
  float _556;
  float _563;
  float _569;
  float _570;
  float _572;
  float _574;
  float _576;
  float _581;
  float _602;
  float _604;
  float _607;
  float _610;
  float _613;
  float _619;
  float _661;
  float _664;
  float _670;
  float _712;
  int __loop_jump_target = -1;
  _23 = WaveReadLaneFirst(_materialIndex);
  _31 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_23 < (uint)170000), _23, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._gaussianBlurIntensity);
  _34 = WaveReadLaneFirst(_materialIndex);
  _42 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_34 < (uint)170000), _34, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._radialBlurIntensity);
  _45 = WaveReadLaneFirst(_materialIndex);
  _53 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_45 < (uint)170000), _45, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderRatio);
  if (_31 > 0.0f) {
    _57 = -5;
    _58 = 0.0f;
    _59 = 0.0f;
    _60 = 0.0f;
    _61 = -5;
    while(true) {
      _98 = _61;
      _70 = (_global_0[((int)min((uint)(((int)(_57) + (int)(5))), (uint)(10)))]) * (_global_0[((int)min((uint)(((int)(_61) + (int)(5))), (uint)(10)))]);
      // [sem: _3__36__0__0__g_sceneColor_sample]
      _84 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((((((float)((int)(_61))) * _31) * _srcTargetSizeAndInv.z) + TEXCOORD.x), (((((float)((int)(_57))) * _31) * _srcTargetSizeAndInv.w) + TEXCOORD.y)));
      _89 = (_84.x * _70) + _60;
      _91 = (_84.y * _70) + _59;
      _93 = (_84.z * _70) + _58;
      _94 = (int)(_57) + (int)(1);
      if (!(_94 == 6)) {
        _97 = _94;
        _98 = _61;
        while(true) {
          _57 = _97;
          _58 = _93;
          _59 = _91;
          _60 = _89;
          _61 = _98;
          __loop_jump_target = 56;
          break;
          break;
        }
        if (__loop_jump_target == 56) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
      }
      _100 = (int)(_61) + (int)(1);
      if (!(_100 == 6)) {
        _97 = -5;
        _98 = _100;
        while(true) {
          _57 = _97;
          _58 = _93;
          _59 = _91;
          _60 = _89;
          _61 = _98;
          __loop_jump_target = 56;
          break;
          break;
        }
        if (__loop_jump_target == 56) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
      }
      _116 = (_93 * 1.8792827f);
      _117 = (_91 * 1.8792827f);
      _118 = (_89 * 1.8792827f);
      break;
    }
  } else {
    if (_42 > 0.0f) {
      _111 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
      _116 = _111.z;
      _117 = _111.y;
      _118 = _111.x;
    } else {
      _116 = 0.0f;
      _117 = 0.0f;
      _118 = 0.0f;
    }
  }
  if (_53 > 0.0f) {
    _123 = WaveReadLaneFirst(_materialIndex);
    _131 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_123 < (uint)170000), _123, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderEdgeNoiseTile.x);
    _135 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_123 < (uint)170000), _123, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderEdgeNoiseTile.y);
    _138 = WaveReadLaneFirst(_materialIndex);
    _146 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_138 < (uint)170000), _138, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderEdgeNoiseOffset.x);
    _150 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_138 < (uint)170000), _138, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderEdgeNoiseOffset.y);
    _153 = WaveReadLaneFirst(_materialIndex);
    _161 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_153 < (uint)170000), _153, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderEdgeNoiseTexture);
    _164 = WaveReadLaneFirst(_materialIndex);
    _172 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_164 < (uint)170000), _164, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderSmoothness);
    _175 = WaveReadLaneFirst(_materialIndex);
    _183 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_175 < (uint)170000), _175, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderWidth);
    _185 = (1.0f - _183) * 0.5f;
    _189 = max((abs(TEXCOORD.x + -0.5f) - _185), 0.0f);
    _193 = max((abs(TEXCOORD.y + -0.5f) - _185), 0.0f);
    _202 = 1.0f - ((1.0f - saturate(sqrt((_193 * _193) + (_189 * _189)) / _172)) * 2.0f);
    _205 = WaveReadLaneFirst(_materialIndex);
    _213 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_205 < (uint)170000), _205, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderFlickerSpeed);
    if (_213 > 0.0f) {
      _218 = WaveReadLaneFirst(_materialIndex);
      _226 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_218 < (uint)170000), _218, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderFlickerOpacityMinMax.x);
      _230 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_218 < (uint)170000), _218, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderFlickerOpacityMinMax.y);
      _233 = WaveReadLaneFirst(_materialIndex);
      _241 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_233 < (uint)170000), _233, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderFlickerIntensity);
      _252 = ((_241 * _202) * min(max(sin((_213 * 3.1415927f) * _time.x), _226), _230));
    } else {
      _252 = _202;
    }
    _255 = WaveReadLaneFirst(_materialIndex);
    _263 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_255 < (uint)170000), _255, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderEdgeNoiseRatio);
    _284 = (saturate(saturate(_252) - ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_161 < (uint)65000), _161, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_146 + (_131 * TEXCOORD.x)), (_150 + (_135 * TEXCOORD.y)))))).x) * _263)) * min(max(_53, 0.0f), 1.0f));
  } else {
    _284 = 1.0f;
  }
  _285 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _298 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _285, 0)))).x) & 127)))) + 0.5f);
  } else {
    _298 = _284;
  }
  _301 = (_localToneMappingParams.w > 0.0f);
  if (_301) {
    _307 = _exposure0.x * _userImageAdjust.z;
    _326 = exp2(_powerParams.x * log2(max(0.0f, (((_307 * max(0.0f, (((_117 * -0.62179f) - (_116 * 0.08326f)) + (_118 * 1.70505f)))) * _slopeParams.x) + _offsetParams.x))));
    _342 = exp2(log2(max(0.0f, (((_slopeParams.y * _307) * max(0.0f, (((_117 * 1.1408f) - (_116 * 0.01055f)) - (_118 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
    _358 = exp2(log2(max(0.0f, (((_slopeParams.z * _307) * max(0.0f, (((_116 * 1.15297f) - (_117 * 0.12897f)) - (_118 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
    _359 = dot(float3(_326, _342, _358), float3(0.212671f, 0.71516f, 0.072169f));
    _363 = ((_326 - _359) * _powerParams.w) + _359;
    _366 = ((_342 - _359) * _powerParams.w) + _359;
    _369 = ((_358 - _359) * _powerParams.w) + _359;
    _376 = min(max(log2(mad(_369, 0.079223745f, mad(_366, 0.0784336f, (_363 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _383 = min(max(log2(mad(_369, 0.07916613f, mad(_366, 0.87846863f, (_363 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _390 = min(max(log2(mad(_369, 0.879143f, mad(_366, 0.0784336f, (_363 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _391 = _376 * 0.060606062f;
    _392 = _383 * 0.060606062f;
    _393 = _390 * 0.060606062f;
    _394 = _391 * _391;
    _395 = _392 * _392;
    _396 = _393 * _393;
    _412 = min(0.0f, (-0.0f - (((_376 * 0.0072181816f) + ((_394 * 0.4298f) + (((_394 * _394) * ((31.96f - (_376 * 2.4327273f)) + (_394 * 15.5f))) - ((_376 * 0.41624245f) * _394)))) + -0.00232f)));
    _428 = min(0.0f, (-0.0f - (((_383 * 0.0072181816f) + ((_395 * 0.4298f) + (((_395 * _395) * ((31.96f - (_383 * 2.4327273f)) + (_395 * 15.5f))) - ((_383 * 0.41624245f) * _395)))) + -0.00232f)));
    _444 = min(0.0f, (-0.0f - (((_390 * 0.0072181816f) + ((_396 * 0.4298f) + (((_396 * _396) * ((31.96f - (_390 * 2.4327273f)) + (_396 * 15.5f))) - ((_390 * 0.41624245f) * _396)))) + -0.00232f)));
    _445 = -0.0f - _412;
    _446 = -0.0f - _428;
    _447 = -0.0f - _444;
    _448 = dot(float3(_445, _446, _447), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _465 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _466 = -0.79999995f / _465;
      _467 = -1.2f / _465;
      _468 = 0.20000005f / _465;
      _471 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _474 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _478 = (_466 + 1.4f) + (_474 * (-0.39999998f - _466));
      _482 = (_467 + 1.6f) + (_474 * (-0.6f - _467));
      _486 = (_468 + 0.9f) + (_474 * (0.5f - _468));
      _503 = (lerp(_486, 1.4f, _471));  // [sem: blended]
      _504 = (lerp(_478, 1.0f, _471));  // [sem: blended]
      _505 = (lerp(_482, 1.2f, _471));  // [sem: blended]
    } else {
      _503 = 1.4f;  // [sem: blended]
      _504 = 1.0f;  // [sem: blended]
      _505 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _506 = 1.0f - _505;
    _518 = ((exp2(log2(((saturate((_412 * _412) * _445) * _506) + _505) * _445) * _504) - _448) * _503) + _448;
    _530 = ((exp2(log2(((saturate((_428 * _428) * _446) * _506) + _505) * _446) * _504) - _448) * _503) + _448;
    _542 = ((exp2(log2(((saturate((_444 * _444) * _447) * _506) + _505) * _447) * _504) - _448) * _503) + _448;
    _549 = saturate(exp2(log2(mad(_542, -0.09902974f, mad(_530, -0.09802088f, (_518 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _556 = saturate(exp2(log2(mad(_542, -0.098961174f, mad(_530, 1.1519032f, (_518 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _563 = saturate(exp2(log2(mad(_542, 1.1510737f, mad(_530, -0.09804345f, (_518 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _569 = 1.0f - abs(_etcParams.w);
      _570 = saturate(_etcParams.w);  // [sem: expr_sat]
      _572 = (_569 * _549) + _570;
      _574 = (_569 * _556) + _570;
      _576 = (_569 * _563) + _570;
      if (_colorGradingParams.w > 0.0f) {
        _581 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _598 = (((max(0.0f, (1.0f - _576)) - _576) * _581) + _576);
        _599 = (((max(0.0f, (1.0f - _574)) - _574) * _581) + _574);
        _600 = (((max(0.0f, (1.0f - _572)) - _572) * _581) + _572);
      } else {
        _598 = _576;
        _599 = _574;
        _600 = _572;
      }
      _602 = _userImageAdjust.y + 1.0f;
      _604 = _userImageAdjust.x + 0.5f;
      _607 = ((_600 + -0.5f) * _602) + _604;
      _610 = ((_599 + -0.5f) * _602) + _604;
      _613 = ((_598 + -0.5f) * _602) + _604;
      _619 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _654 = exp2(log2(saturate(mad(_colorBlind2.z, _613, mad(_colorBlind2.y, _610, (_colorBlind2.x * _607))))) * _619);
      _655 = exp2(log2(saturate(mad(_colorBlind1.z, _613, mad(_colorBlind1.y, _610, (_colorBlind1.x * _607))))) * _619);
      _656 = exp2(log2(saturate(mad(_colorBlind0.z, _613, mad(_colorBlind0.y, _610, (_colorBlind0.x * _607))))) * _619);
    } else {
      _654 = _563;
      _655 = _556;
      _656 = _549;
    }
  } else {
    _654 = _116;
    _655 = _117;
    _656 = _118;
  }
  if (_etcParams.y > 1.0f) {
    _661 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _664 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _670 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_661, _664), float2(_661, _664))));  // [sem: expr_sat]
    _675 = (_670 * _655);
    _676 = (_670 * _656);
    _677 = (_670 * _654);
  } else {
    _675 = _655;
    _676 = _656;
    _677 = _654;
  }
  if (_301 && (_etcParams.z > 0.0f)) {
    _707 = select((_676 <= 0.0031308f), (_676 * 12.92f), (((pow(_676, 0.41666666f)) * 1.055f) + -0.055f));
    _708 = select((_675 <= 0.0031308f), (_675 * 12.92f), (((pow(_675, 0.41666666f)) * 1.055f) + -0.055f));
    _709 = select((_677 <= 0.0031308f), (_677 * 12.92f), (((pow(_677, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _707 = _676;
    _708 = _675;
    _709 = _677;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _712 = (float)((uint)((uint)(_285)));
    if (!(_712 < _viewDir.w)) {
      if (!(!(_712 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _723 = 0.0f;
        _724 = 0.0f;
        _725 = 0.0f;
      } else {
        _723 = _707;
        _724 = _708;
        _725 = _709;
      }
    } else {
      _723 = 0.0f;
      _724 = 0.0f;
      _725 = 0.0f;
    }
  } else {
    _723 = _707;
    _724 = _708;
    _725 = _709;
  }
  SV_Target.x = _723;
  SV_Target.y = _724;
  SV_Target.z = _725;
  SV_Target.w = _298;
  return SV_Target;
}
