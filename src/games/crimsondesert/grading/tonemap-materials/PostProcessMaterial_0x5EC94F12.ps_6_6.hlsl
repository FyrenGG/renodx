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
  float _51;
  int _53;
  float _54;
  float _55;
  float _56;
  int _57;
  int _93;
  float _94;
  float _95;
  float _96;
  int _97;
  float _170;
  float _375;
  float _376;
  float _377;
  float _470;
  float _471;
  float _472;
  float _526;
  float _527;
  float _528;
  float _547;
  float _548;
  float _549;
  float _579;
  float _580;
  float _581;
  float _595;
  float _596;
  float _597;
  float _66;
  float4 _80;
  float _85;
  float _87;
  float _89;
  int _90;
  int _99;
  int _104;
  float _112;
  int _115;
  float _123;
  int _126;
  int _134;
  float4 _143;
  float _148;
  float _152;
  float _156;
  uint _157;
  bool _173;
  float _179;
  float _198;
  float _214;
  float _230;
  float _231;
  float _235;
  float _238;
  float _241;
  float _248;
  float _255;
  float _262;
  float _263;
  float _264;
  float _265;
  float _266;
  float _267;
  float _268;
  float _284;
  float _300;
  float _316;
  float _317;
  float _318;
  float _319;
  float _320;
  float _337;
  float _338;
  float _339;
  float _340;
  float _343;
  float _346;
  float _350;
  float _354;
  float _358;
  float _378;
  float _390;
  float _402;
  float _414;
  float _421;
  float _428;
  float _435;
  float _441;
  float _442;
  float _444;
  float _446;
  float _448;
  float _453;
  float _474;
  float _476;
  float _479;
  float _482;
  float _485;
  float _491;
  float _533;
  float _536;
  float _542;
  float _584;
  int __loop_jump_target = -1;
  _28 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _51 = 1.0f - (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(((float)((int)((int)(_srcTargetSizeAndInv.x * TEXCOORD.x)))) * _customRenderPassSizeInvSize.x)), ((int)(((float)((int)((int)(_srcTargetSizeAndInv.y * TEXCOORD.y)))) * _customRenderPassSizeInvSize.y)), 0)))).x);
  _53 = -2;
  _54 = 0.0f;
  _55 = 0.0f;
  _56 = 0.0f;
  _57 = -2;
  while(true) {
    _97 = _57;
    _66 = (_global_0[((int)min((uint)(((int)(_53) + (int)(2))), (uint)(4)))]) * (_global_0[((int)min((uint)(((int)(_57) + (int)(2))), (uint)(4)))]);
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _80 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((((((float)((int)(_57))) * _51) * _destTargetSizAndInv.z) + TEXCOORD.x), (((((float)((int)(_53))) * _51) * _destTargetSizAndInv.w) + TEXCOORD.y)));
    _85 = (_80.x * _66) + _56;
    _87 = (_80.y * _66) + _55;
    _89 = (_80.z * _66) + _54;
    _90 = (int)(_53) + (int)(1);
    if (!(_90 == 3)) {
      _93 = _90;
      _94 = _89;
      _95 = _87;
      _96 = _85;
      _97 = _57;
      while(true) {
        _53 = _93;
        _54 = _94;
        _55 = _95;
        _56 = _96;
        _57 = _97;
        __loop_jump_target = 52;
        break;
        break;
      }
      if (__loop_jump_target == 52) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
    }
    _99 = (int)(_57) + (int)(1);
    if (!(_99 == 3)) {
      _93 = -2;
      _94 = _89;
      _95 = _87;
      _96 = _85;
      _97 = _99;
      while(true) {
        _53 = _93;
        _54 = _94;
        _55 = _95;
        _56 = _96;
        _57 = _97;
        __loop_jump_target = 52;
        break;
        break;
      }
      if (__loop_jump_target == 52) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
    }
    _104 = WaveReadLaneFirst(_materialIndex);
    _112 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_104 < (uint)170000), _104, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainUTiling);
    _115 = WaveReadLaneFirst(_materialIndex);
    _123 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_115 < (uint)170000), _115, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainVTiling);
    _126 = WaveReadLaneFirst(_materialIndex);
    _134 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_126 < (uint)170000), _126, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainMaskTexture);
    _143 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_134 < (uint)65000), _134, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_112 * TEXCOORD.x), (_123 * TEXCOORD.y)));
    _148 = (_143.y * ((_85 * 12.824511f) - _28.x)) + _28.x;
    _152 = (_143.y * ((_87 * 12.824511f) - _28.y)) + _28.y;
    _156 = (_143.y * ((_89 * 12.824511f) - _28.z)) + _28.z;
    _157 = (uint)(SV_Position.y);
    if (_etcParams.y == 1.0f) {
      _170 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _157, 0)))).x) & 127)))) + 0.5f);
    } else {
      _170 = 1.0f;
    }
    _173 = (_localToneMappingParams.w > 0.0f);
    if (_173) {
      _179 = _exposure0.x * _userImageAdjust.z;
      _198 = exp2(_powerParams.x * log2(max(0.0f, (((_179 * max(0.0f, (((_148 * 1.70505f) - (_152 * 0.62179f)) - (_156 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))));
      _214 = exp2(log2(max(0.0f, (((_slopeParams.y * _179) * max(0.0f, (((_152 * 1.1408f) - (_148 * 0.13026f)) - (_156 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
      _230 = exp2(log2(max(0.0f, (((_slopeParams.z * _179) * max(0.0f, (((_148 * -0.024f) - (_152 * 0.12897f)) + (_156 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
      _231 = dot(float3(_198, _214, _230), float3(0.212671f, 0.71516f, 0.072169f));
      _235 = ((_198 - _231) * _powerParams.w) + _231;
      _238 = ((_214 - _231) * _powerParams.w) + _231;
      _241 = ((_230 - _231) * _powerParams.w) + _231;
      _248 = min(max(log2(mad(_241, 0.079223745f, mad(_238, 0.0784336f, (_235 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
      _255 = min(max(log2(mad(_241, 0.07916613f, mad(_238, 0.87846863f, (_235 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
      _262 = min(max(log2(mad(_241, 0.879143f, mad(_238, 0.0784336f, (_235 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
      _263 = _248 * 0.060606062f;
      _264 = _255 * 0.060606062f;
      _265 = _262 * 0.060606062f;
      _266 = _263 * _263;
      _267 = _264 * _264;
      _268 = _265 * _265;
      _284 = min(0.0f, (-0.0f - (((_248 * 0.0072181816f) + ((_266 * 0.4298f) + (((_266 * _266) * ((31.96f - (_248 * 2.4327273f)) + (_266 * 15.5f))) - ((_248 * 0.41624245f) * _266)))) + -0.00232f)));
      _300 = min(0.0f, (-0.0f - (((_255 * 0.0072181816f) + ((_267 * 0.4298f) + (((_267 * _267) * ((31.96f - (_255 * 2.4327273f)) + (_267 * 15.5f))) - ((_255 * 0.41624245f) * _267)))) + -0.00232f)));
      _316 = min(0.0f, (-0.0f - (((_262 * 0.0072181816f) + ((_268 * 0.4298f) + (((_268 * _268) * ((31.96f - (_262 * 2.4327273f)) + (_268 * 15.5f))) - ((_262 * 0.41624245f) * _268)))) + -0.00232f)));
      _317 = -0.0f - _284;
      _318 = -0.0f - _300;
      _319 = -0.0f - _316;
      _320 = dot(float3(_317, _318, _319), float3(0.2126f, 0.7152f, 0.0722f));
      if (_nightToneParm == 1) {
        _337 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
        _338 = -0.79999995f / _337;
        _339 = -1.2f / _337;
        _340 = 0.20000005f / _337;
        _343 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
        _346 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
        _350 = (_338 + 1.4f) + (_346 * (-0.39999998f - _338));
        _354 = (_339 + 1.6f) + (_346 * (-0.6f - _339));
        _358 = (_340 + 0.9f) + (_346 * (0.5f - _340));
        _375 = (lerp(_358, 1.4f, _343));  // [sem: blended]
        _376 = (lerp(_350, 1.0f, _343));  // [sem: blended]
        _377 = (lerp(_354, 1.2f, _343));  // [sem: blended]
      } else {
        _375 = 1.4f;  // [sem: blended]
        _376 = 1.0f;  // [sem: blended]
        _377 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      }
      _378 = 1.0f - _377;
      _390 = ((exp2(log2(((saturate((_284 * _284) * _317) * _378) + _377) * _317) * _376) - _320) * _375) + _320;
      _402 = ((exp2(log2(((saturate((_300 * _300) * _318) * _378) + _377) * _318) * _376) - _320) * _375) + _320;
      _414 = ((exp2(log2(((saturate((_316 * _316) * _319) * _378) + _377) * _319) * _376) - _320) * _375) + _320;
      _421 = saturate(exp2(log2(mad(_414, -0.09902974f, mad(_402, -0.09802088f, (_390 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
      _428 = saturate(exp2(log2(mad(_414, -0.098961174f, mad(_402, 1.1519032f, (_390 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
      _435 = saturate(exp2(log2(mad(_414, 1.1510737f, mad(_402, -0.09804345f, (_390 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
      if (_etcParams.z == 0.0f) {
        _441 = 1.0f - abs(_etcParams.w);
        _442 = saturate(_etcParams.w);  // [sem: expr_sat]
        _444 = (_441 * _421) + _442;
        _446 = (_441 * _428) + _442;
        _448 = (_441 * _435) + _442;
        if (_colorGradingParams.w > 0.0f) {
          _453 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
          _470 = (((max(0.0f, (1.0f - _448)) - _448) * _453) + _448);
          _471 = (((max(0.0f, (1.0f - _446)) - _446) * _453) + _446);
          _472 = (((max(0.0f, (1.0f - _444)) - _444) * _453) + _444);
        } else {
          _470 = _448;
          _471 = _446;
          _472 = _444;
        }
        _474 = _userImageAdjust.y + 1.0f;
        _476 = _userImageAdjust.x + 0.5f;
        _479 = ((_472 + -0.5f) * _474) + _476;
        _482 = ((_471 + -0.5f) * _474) + _476;
        _485 = ((_470 + -0.5f) * _474) + _476;
        _491 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
        _526 = exp2(log2(saturate(mad(_colorBlind2.z, _485, mad(_colorBlind2.y, _482, (_colorBlind2.x * _479))))) * _491);
        _527 = exp2(log2(saturate(mad(_colorBlind1.z, _485, mad(_colorBlind1.y, _482, (_colorBlind1.x * _479))))) * _491);
        _528 = exp2(log2(saturate(mad(_colorBlind0.z, _485, mad(_colorBlind0.y, _482, (_colorBlind0.x * _479))))) * _491);
      } else {
        _526 = _435;
        _527 = _428;
        _528 = _421;
      }
    } else {
      _526 = _156;
      _527 = _152;
      _528 = _148;
    }
    if (_etcParams.y > 1.0f) {
      _533 = abs((TEXCOORD.x * 2.0f) + -1.0f);
      _536 = abs((TEXCOORD.y * 2.0f) + -1.0f);
      _542 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_533, _536), float2(_533, _536))));  // [sem: expr_sat]
      _547 = (_542 * _526);
      _548 = (_542 * _527);
      _549 = (_542 * _528);
    } else {
      _547 = _526;
      _548 = _527;
      _549 = _528;
    }
    if (_173 && (_etcParams.z > 0.0f)) {
      _579 = select((_547 <= 0.0031308f), (_547 * 12.92f), (((pow(_547, 0.41666666f)) * 1.055f) + -0.055f));
      _580 = select((_548 <= 0.0031308f), (_548 * 12.92f), (((pow(_548, 0.41666666f)) * 1.055f) + -0.055f));
      _581 = select((_549 <= 0.0031308f), (_549 * 12.92f), (((pow(_549, 0.41666666f)) * 1.055f) + -0.055f));
    } else {
      _579 = _547;
      _580 = _548;
      _581 = _549;
    }
    if (!(!(_etcParams.y >= 1.0f))) {
      _584 = (float)((uint)((uint)(_157)));
      if (!(_584 < _viewDir.w)) {
        if (!(!(_584 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
          _595 = 0.0f;
          _596 = 0.0f;
          _597 = 0.0f;
        } else {
          _595 = _581;
          _596 = _580;
          _597 = _579;
        }
      } else {
        _595 = 0.0f;
        _596 = 0.0f;
        _597 = 0.0f;
      }
    } else {
      _595 = _581;
      _596 = _580;
      _597 = _579;
    }
    if (!((_global_1[0]) == 0)) {
      _93 = _53;
      _94 = _54;
      _95 = _55;
      _96 = _56;
      _97 = _57;
      while(true) {
        _53 = _93;
        _54 = _94;
        _55 = _95;
        _56 = _96;
        _57 = _97;
        __loop_jump_target = 52;
        break;
        break;
      }
      if (__loop_jump_target == 52) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
    }
    SV_Target.x = _595;
    SV_Target.y = _596;
    SV_Target.z = _597;
    SV_Target.w = _170;
    break;
  }
  return SV_Target;
}
