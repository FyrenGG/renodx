struct PostProcessCameraLensRainStruct {
  float _rainSpeed;
  float _rainUTiling;
  float _rainVTiling;
  float _streakUTiling;
  float _streakVTiling;
  uint _rainNormalTexture;
  uint _rainMaskTexture;
};

struct BindlessParameters_PostProcessCameraLensRain {
  PostProcessCameraLensRainStruct BindlessParameters_PostProcessCameraLensRain;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

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

typedef BindlessParameters_PostProcessCameraLensRain BindlessParameters_PostProcessCameraLensRain_t;
ConstantBuffer<BindlessParameters_PostProcessCameraLensRain_t> BindlessParameters_PostProcessCameraLensRain[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

static const float _global_0[5] = { 0.054712083f, 0.05641284f, 0.056991428f, 0.05641284f, 0.054712083f };
static const int _global_1[1];

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _28;
  float _34;
  float _37;
  float _46;
  float _66;
  int _68;
  float _69;
  float _70;
  float _71;
  int _72;
  int _108;
  float _109;
  float _110;
  float _111;
  int _112;
  float _206;
  float _411;
  float _412;
  float _413;
  float _506;
  float _507;
  float _508;
  float _562;
  float _563;
  float _564;
  float _583;
  float _584;
  float _585;
  float _615;
  float _616;
  float _617;
  float _631;
  float _632;
  float _633;
  float _81;
  float4 _95;
  float _100;
  float _102;
  float _104;
  int _105;
  int _114;
  float _119;
  float _128;
  float _137;
  int _140;
  float _148;
  int _151;
  float _159;
  int _162;
  int _170;
  float4 _179;
  float _184;
  float _188;
  float _192;
  uint _193;
  bool _209;
  float _215;
  float _234;
  float _250;
  float _266;
  float _267;
  float _271;
  float _274;
  float _277;
  float _284;
  float _291;
  float _298;
  float _299;
  float _300;
  float _301;
  float _302;
  float _303;
  float _304;
  float _320;
  float _336;
  float _352;
  float _353;
  float _354;
  float _355;
  float _356;
  float _373;
  float _374;
  float _375;
  float _376;
  float _379;
  float _382;
  float _386;
  float _390;
  float _394;
  float _414;
  float _426;
  float _438;
  float _450;
  float _457;
  float _464;
  float _471;
  float _477;
  float _478;
  float _480;
  float _482;
  float _484;
  float _489;
  float _510;
  float _512;
  float _515;
  float _518;
  float _521;
  float _527;
  float _569;
  float _572;
  float _578;
  float _620;
  float _637;
  float _641;
  float _645;
  int __loop_jump_target = -1;
  _28 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _34 = (pow(_28.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _37 = (pow(_28.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _46 = exp2(log2(max(0.0f, (_34 + -0.8359375f)) / (18.851562f - (_34 * 18.6875f))) * 6.277395f) * 10000.0f;
  _66 = 1.0f - (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(((float)((int)((int)(_srcTargetSizeAndInv.x * TEXCOORD.x)))) * _customRenderPassSizeInvSize.x)), ((int)(((float)((int)((int)(_srcTargetSizeAndInv.y * TEXCOORD.y)))) * _customRenderPassSizeInvSize.y)), 0)))).x);
  _68 = -2;
  _69 = 0.0f;
  _70 = 0.0f;
  _71 = 0.0f;
  _72 = -2;
  while(true) {
    _112 = _72;
    _81 = (_global_0[((int)min((uint)(((int)(_68) + (int)(2))), (uint)(4)))]) * (_global_0[((int)min((uint)(((int)(_72) + (int)(2))), (uint)(4)))]);
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _95 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((((((float)((int)(_72))) * _66) * _destTargetSizAndInv.z) + TEXCOORD.x), (((((float)((int)(_68))) * _66) * _destTargetSizAndInv.w) + TEXCOORD.y)));
    _100 = (_95.x * _81) + _71;
    _102 = (_95.y * _81) + _70;
    _104 = (_95.z * _81) + _69;
    _105 = (int)(_68) + (int)(1);
    if (!(_105 == 3)) {
      _108 = _105;
      _109 = _104;
      _110 = _102;
      _111 = _100;
      _112 = _72;
      while(true) {
        _68 = _108;
        _69 = _109;
        _70 = _110;
        _71 = _111;
        _72 = _112;
        __loop_jump_target = 67;
        break;
        break;
      }
      if (__loop_jump_target == 67) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
    }
    _114 = (int)(_72) + (int)(1);
    if (!(_114 == 3)) {
      _108 = -2;
      _109 = _104;
      _110 = _102;
      _111 = _100;
      _112 = _114;
      while(true) {
        _68 = _108;
        _69 = _109;
        _70 = _110;
        _71 = _111;
        _72 = _112;
        __loop_jump_target = 67;
        break;
        break;
      }
      if (__loop_jump_target == 67) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
    }
    _119 = (pow(_28.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _128 = exp2(log2(max(0.0f, (_119 + -0.8359375f)) / (18.851562f - (_119 * 18.6875f))) * 6.277395f) * 10000.0f;
    _137 = exp2(log2(max(0.0f, (_37 + -0.8359375f)) / (18.851562f - (_37 * 18.6875f))) * 6.277395f) * 10000.0f;
    _140 = WaveReadLaneFirst(_materialIndex);
    _148 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_140 < (uint)170000), _140, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainUTiling);
    _151 = WaveReadLaneFirst(_materialIndex);
    _159 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_151 < (uint)170000), _151, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainVTiling);
    _162 = WaveReadLaneFirst(_materialIndex);
    _170 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_162 < (uint)170000), _162, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainMaskTexture);
    _179 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_170 < (uint)65000), _170, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_148 * TEXCOORD.x), (_159 * TEXCOORD.y)));
    _184 = (_179.y * ((_100 * 12.824511f) - _128)) + _128;
    _188 = (_179.y * ((_102 * 12.824511f) - _46)) + _46;
    _192 = (_179.y * ((_104 * 12.824511f) - _137)) + _137;
    _193 = (uint)(SV_Position.y);
    if (_etcParams.y == 1.0f) {
      _206 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _193, 0)))).x) & 127)))) + 0.5f);
    } else {
      _206 = 1.0f;
    }
    _209 = (_localToneMappingParams.w > 0.0f);
    if (_209) {
      _215 = _exposure0.x * _userImageAdjust.z;
      _234 = exp2(_powerParams.x * log2(max(0.0f, (((_215 * max(0.0f, (((_184 * 1.70505f) - (_188 * 0.62179f)) - (_192 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
      _250 = exp2(log2(max(0.0f, (((_slopeParams.y * _215) * max(0.0f, (((_188 * 1.1408f) - (_184 * 0.13026f)) - (_192 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
      _266 = exp2(log2(max(0.0f, (((_slopeParams.z * _215) * max(0.0f, (((_184 * -0.024f) - (_188 * 0.12897f)) + (_192 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
      _267 = dot(float3(_234, _250, _266), float3(0.212671f, 0.71516f, 0.072169f));
      _271 = ((_234 - _267) * _powerParams.w) + _267;
      _274 = ((_250 - _267) * _powerParams.w) + _267;
      _277 = ((_266 - _267) * _powerParams.w) + _267;
      _284 = min(max(log2(mad(_277, 0.079223745f, mad(_274, 0.0784336f, (_271 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
      _291 = min(max(log2(mad(_277, 0.07916613f, mad(_274, 0.87846863f, (_271 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
      _298 = min(max(log2(mad(_277, 0.879143f, mad(_274, 0.0784336f, (_271 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
      _299 = _284 * 0.060606062f;
      _300 = _291 * 0.060606062f;
      _301 = _298 * 0.060606062f;
      _302 = _299 * _299;
      _303 = _300 * _300;
      _304 = _301 * _301;
      _320 = min(0.0f, (-0.0f - (((_284 * 0.0072181816f) + ((_302 * 0.4298f) + (((_302 * _302) * ((31.96f - (_284 * 2.4327273f)) + (_302 * 15.5f))) - ((_284 * 0.41624245f) * _302)))) + -0.00232f)));
      _336 = min(0.0f, (-0.0f - (((_291 * 0.0072181816f) + ((_303 * 0.4298f) + (((_303 * _303) * ((31.96f - (_291 * 2.4327273f)) + (_303 * 15.5f))) - ((_291 * 0.41624245f) * _303)))) + -0.00232f)));
      _352 = min(0.0f, (-0.0f - (((_298 * 0.0072181816f) + ((_304 * 0.4298f) + (((_304 * _304) * ((31.96f - (_298 * 2.4327273f)) + (_304 * 15.5f))) - ((_298 * 0.41624245f) * _304)))) + -0.00232f)));
      _353 = -0.0f - _320;
      _354 = -0.0f - _336;
      _355 = -0.0f - _352;
      _356 = dot(float3(_353, _354, _355), float3(0.2126f, 0.7152f, 0.0722f));
      if (_nightToneParm == 1) {
        _373 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
        _374 = -0.79999995f / _373;
        _375 = -1.2f / _373;
        _376 = 0.20000005f / _373;
        _379 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
        _382 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
        _386 = (_374 + 1.4f) + (_382 * (-0.39999998f - _374));
        _390 = (_375 + 1.6f) + (_382 * (-0.6f - _375));
        _394 = (_376 + 0.9f) + (_382 * (0.5f - _376));
        _411 = (lerp(_394, 1.4f, _379));  // [sem: blended]
        _412 = (lerp(_386, 1.0f, _379));  // [sem: blended]
        _413 = (lerp(_390, 1.2f, _379));  // [sem: blended]
      } else {
        _411 = 1.4f;  // [sem: blended]
        _412 = 1.0f;  // [sem: blended]
        _413 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      }
      _414 = 1.0f - _413;
      _426 = ((exp2(log2(((saturate((_320 * _320) * _353) * _414) + _413) * _353) * _412) - _356) * _411) + _356;
      _438 = ((exp2(log2(((saturate((_336 * _336) * _354) * _414) + _413) * _354) * _412) - _356) * _411) + _356;
      _450 = ((exp2(log2(((saturate((_352 * _352) * _355) * _414) + _413) * _355) * _412) - _356) * _411) + _356;
      _457 = saturate(exp2(log2(mad(_450, -0.09902974f, mad(_438, -0.09802088f, (_426 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
      _464 = saturate(exp2(log2(mad(_450, -0.098961174f, mad(_438, 1.1519032f, (_426 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
      _471 = saturate(exp2(log2(mad(_450, 1.1510737f, mad(_438, -0.09804345f, (_426 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
      if (_etcParams.z == 0.0f) {
        _477 = 1.0f - abs(_etcParams.w);
        _478 = saturate(_etcParams.w);  // [sem: expr_sat]
        _480 = (_477 * _457) + _478;
        _482 = (_477 * _464) + _478;
        _484 = (_477 * _471) + _478;
        if (_colorGradingParams.w > 0.0f) {
          _489 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
          _506 = (((max(0.0f, (1.0f - _484)) - _484) * _489) + _484);
          _507 = (((max(0.0f, (1.0f - _482)) - _482) * _489) + _482);
          _508 = (((max(0.0f, (1.0f - _480)) - _480) * _489) + _480);
        } else {
          _506 = _484;
          _507 = _482;
          _508 = _480;
        }
        _510 = _userImageAdjust.y + 1.0f;
        _512 = _userImageAdjust.x + 0.5f;
        _515 = ((_508 + -0.5f) * _510) + _512;
        _518 = ((_507 + -0.5f) * _510) + _512;
        _521 = ((_506 + -0.5f) * _510) + _512;
        _527 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
        _562 = exp2(log2(saturate(mad(_colorBlind2.z, _521, mad(_colorBlind2.y, _518, (_colorBlind2.x * _515))))) * _527);
        _563 = exp2(log2(saturate(mad(_colorBlind1.z, _521, mad(_colorBlind1.y, _518, (_colorBlind1.x * _515))))) * _527);
        _564 = exp2(log2(saturate(mad(_colorBlind0.z, _521, mad(_colorBlind0.y, _518, (_colorBlind0.x * _515))))) * _527);
      } else {
        _562 = _471;
        _563 = _464;
        _564 = _457;
      }
    } else {
      _562 = _192;
      _563 = _188;
      _564 = _184;
    }
    if (_etcParams.y > 1.0f) {
      _569 = abs((TEXCOORD.x * 2.0f) + -1.0f);
      _572 = abs((TEXCOORD.y * 2.0f) + -1.0f);
      _578 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_569, _572), float2(_569, _572))));  // [sem: expr_sat]
      _583 = (_578 * _562);
      _584 = (_578 * _563);
      _585 = (_578 * _564);
    } else {
      _583 = _562;
      _584 = _563;
      _585 = _564;
    }
    if (_209 && (_etcParams.z > 0.0f)) {
      _615 = select((_585 <= 0.0031308f), (_585 * 12.92f), (((pow(_585, 0.41666666f)) * 1.055f) + -0.055f));
      _616 = select((_584 <= 0.0031308f), (_584 * 12.92f), (((pow(_584, 0.41666666f)) * 1.055f) + -0.055f));
      _617 = select((_583 <= 0.0031308f), (_583 * 12.92f), (((pow(_583, 0.41666666f)) * 1.055f) + -0.055f));
    } else {
      _615 = _585;
      _616 = _584;
      _617 = _583;
    }
    if (!(!(_etcParams.y >= 1.0f))) {
      _620 = (float)((uint)((uint)(_193)));
      if (!(_620 < _viewDir.w)) {
        if (!(!(_620 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
          _631 = 0.0f;
          _632 = 0.0f;
          _633 = 0.0f;
        } else {
          _631 = _615;
          _632 = _616;
          _633 = _617;
        }
      } else {
        _631 = 0.0f;
        _632 = 0.0f;
        _633 = 0.0f;
      }
    } else {
      _631 = _615;
      _632 = _616;
      _633 = _617;
    }
    _637 = exp2(log2(_631 * 0.0001f) * 0.15930176f);
    _641 = exp2(log2(_632 * 0.0001f) * 0.15930176f);
    _645 = exp2(log2(_633 * 0.0001f) * 0.15930176f);
    if (!((_global_1[0]) == 0)) {
      _108 = _68;
      _109 = _69;
      _110 = _70;
      _111 = _71;
      _112 = _72;
      while(true) {
        _68 = _108;
        _69 = _109;
        _70 = _110;
        _71 = _111;
        _72 = _112;
        __loop_jump_target = 67;
        break;
        break;
      }
      if (__loop_jump_target == 67) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
    }
    SV_Target.x = exp2(log2((1.0f / ((_637 * 18.6875f) + 1.0f)) * ((_637 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.y = exp2(log2((1.0f / ((_641 * 18.6875f) + 1.0f)) * ((_641 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.z = exp2(log2((1.0f / ((_645 * 18.6875f) + 1.0f)) * ((_645 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.w = _206;
    break;
  }
  return SV_Target;
}
