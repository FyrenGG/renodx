struct PostProcessAbyssEnter_CDStruct {
  float _scanRadius;
  float _startFade;
  uint _noiseTex;
  uint _noiseTex2;
  uint _effectType;
  float _ppAbyssEnterRatio;
};

struct BindlessParameters_PostProcessAbyssEnter_CD {
  PostProcessAbyssEnter_CDStruct BindlessParameters_PostProcessAbyssEnter_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

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

typedef BindlessParameters_PostProcessAbyssEnter_CD BindlessParameters_PostProcessAbyssEnter_CD_t;
ConstantBuffer<BindlessParameters_PostProcessAbyssEnter_CD_t> BindlessParameters_PostProcessAbyssEnter_CD[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

static const int _global_0[1];

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  bool _2;
  int _26;
  int _34;
  float _77;
  float _78;
  float _79;
  float _80;
  float _145;
  float _146;
  float _147;
  float _148;
  float _149;
  float _150;
  float _216;
  float _217;
  float _218;
  float _219;
  float _220;
  float _221;
  float _236;
  float _237;
  float _238;
  float _240;
  float _241;
  float _242;
  float _243;
  float _277;
  float _278;
  float _279;
  float _280;
  float _281;
  float _282;
  float _347;
  float _348;
  float _349;
  float _363;
  float _568;
  float _569;
  float _570;
  float _663;
  float _664;
  float _665;
  float _719;
  float _720;
  float _721;
  float _740;
  float _741;
  float _742;
  float _772;
  float _773;
  float _774;
  float _788;
  float _789;
  float _790;
  float _43;
  int _44;
  int _52;
  float4 _67;
  float _69;
  float _72;
  float _73;
  float _74;
  float _75;
  float _92;
  float _93;
  float4 _101;
  float _107;
  float _110;
  float _113;
  float _122;
  float _131;
  float _140;
  float _153;
  float _156;
  float _157;
  float _158;
  float _167;
  float _168;
  float _169;
  float _177;
  float _181;
  float _187;
  float _188;
  float _200;
  int _203;
  float _211;
  float _214;
  int _245;
  int _253;
  float4 _258;
  float _260;
  float _265;
  float _269;
  float _273;
  float _275;
  float _292;
  float _303;
  float _304;
  float _305;
  float _315;
  float _316;
  float _317;
  float _326;
  float _331;
  float _338;
  float _339;
  float _342;
  float _343;
  uint _350;
  bool _366;
  float _372;
  float _391;
  float _407;
  float _423;
  float _424;
  float _428;
  float _431;
  float _434;
  float _441;
  float _448;
  float _455;
  float _456;
  float _457;
  float _458;
  float _459;
  float _460;
  float _461;
  float _477;
  float _493;
  float _509;
  float _510;
  float _511;
  float _512;
  float _513;
  float _530;
  float _531;
  float _532;
  float _533;
  float _536;
  float _539;
  float _543;
  float _547;
  float _551;
  float _571;
  float _583;
  float _595;
  float _607;
  float _614;
  float _621;
  float _628;
  float _634;
  float _635;
  float _637;
  float _639;
  float _641;
  float _646;
  float _667;
  float _669;
  float _672;
  float _675;
  float _678;
  float _684;
  float _726;
  float _729;
  float _735;
  float _777;
  float _794;
  float _798;
  float _802;
  int __loop_jump_target = -1;
  _2 = ((_global_0[0]) == 0);
  _26 = WaveReadLaneFirst(_materialIndex);
  _34 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnter_CD[((int)((uint)((uint)(select(((uint)_26 < (uint)170000), _26, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnter_CD._effectType);
  if (_34 == 0) {
    _43 = 4.0f / (_srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y);
    _44 = WaveReadLaneFirst(_materialIndex);
    _52 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnter_CD[((int)((uint)((uint)(select(((uint)_44 < (uint)170000), _44, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnter_CD._noiseTex);
    _67 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_52 < (uint)65000), _52, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_43 * TEXCOORD.x) - (_time.x * 0.22f)), ((_43 * TEXCOORD.y) - (_time.x * 0.18f))));
    _69 = _67.x + -0.3f;
    _72 = ((_67.x + -0.4f) * 10.471975f) + -1.5707964f;
    _73 = sin(_72);
    _74 = cos(_72);
    _75 = _69 * 0.03f;
    _77 = -1.0f;
    _78 = 0.0f;
    _79 = _75;
    _80 = _75;
    while(true) {
      _92 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - ((_77 * _73) * _80)), (TEXCOORD.y - ((_77 * _74) * _79)))))).w) * 0.2f) + _78;
      _93 = _77 + 0.2f;
      if (!(!(_93 <= 1.0f))) {
        _240 = _93;
        _241 = (_92 * 0.9f);
        _242 = (_79 * 1.01f);
        _243 = (_80 * 1.01f);
        _77 = _240;
        _78 = _241;
        _79 = _242;
        _80 = _243;
        continue;
      }
      _101 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
      _107 = (pow(_101.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _110 = (pow(_101.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _113 = (pow(_101.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _122 = exp2(log2(max(0.0f, (_107 + -0.8359375f)) / (18.851562f - (_107 * 18.6875f))) * 6.277395f) * 10000.0f;
      _131 = exp2(log2(max(0.0f, (_110 + -0.8359375f)) / (18.851562f - (_110 * 18.6875f))) * 6.277395f) * 10000.0f;
      _140 = exp2(log2(max(0.0f, (_113 + -0.8359375f)) / (18.851562f - (_113 * 18.6875f))) * 6.277395f) * 10000.0f;
      if ((_92 * 0.54f) > 0.0f) {
        _145 = -1.0f;
        _146 = 0.0f;
        _147 = 0.0f;
        _148 = 0.0f;
        _149 = _75;
        _150 = _75;
        while(true) {
          _153 = TEXCOORD.x - ((_145 * _73) * _150);
          _156 = TEXCOORD.y - ((_145 * _74) * _149);
          _157 = _153 + -0.5f;
          _158 = _156 + -0.5f;
          _167 = ((_69 * 0.06f) * rsqrt(dot(float2(_157, _158), float2(_157, _158)))) * sqrt((_157 * _157) + (_158 * _158));
          _168 = _167 * _157;
          _169 = _167 * _158;
          _177 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_153 - _168), (_156 - _169))))).x) * 0.2f) + _148;
          _181 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_153, _156)))).y) * 0.2f) + _147;
          _187 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_168 + _153), (_169 + _156))))).z) * 0.2f) + _146;
          _188 = _145 + 0.2f;
          if (!(!(_188 <= 1.0f))) {
            _216 = _188;
            _217 = (_187 * 0.9f);
            _218 = (_181 * 0.9f);
            _219 = (_177 * 0.9f);
            _220 = (_149 * 1.01f);
            _221 = (_150 * 1.01f);
            _145 = _216;
            _146 = _217;
            _147 = _218;
            _148 = _219;
            _149 = _220;
            _150 = _221;
            continue;
          }
          _200 = 0.54f / max(0.001f, _exposure0.x);
          _203 = WaveReadLaneFirst(_materialIndex);
          _211 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnter_CD[((int)((uint)((uint)(select(((uint)_203 < (uint)170000), _203, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnter_CD._ppAbyssEnterRatio);
          _214 = saturate(_92 * 1.08f) * _211;
          if (!_2) {
            _216 = _145;
            _217 = _146;
            _218 = _147;
            _219 = _148;
            _220 = _149;
            _221 = _150;
            _145 = _216;
            _146 = _217;
            _147 = _218;
            _148 = _219;
            _149 = _220;
            _150 = _221;
            continue;
          }
          _236 = ((_214 * ((_200 * _187) - _140)) + _140);
          _237 = ((_214 * ((_200 * _181) - _131)) + _131);
          _238 = ((_214 * ((_200 * _177) - _122)) + _122);
          break;
        }
      } else {
        _236 = _140;
        _237 = _131;
        _238 = _122;
      }
      if (!_2) {
        _240 = _77;
        _241 = _78;
        _242 = _79;
        _243 = _80;
        _77 = _240;
        _78 = _241;
        _79 = _242;
        _80 = _243;
        continue;
      }
      _347 = _236;
      _348 = _237;
      _349 = _238;
      break;
    }
  } else {
    _245 = WaveReadLaneFirst(_materialIndex);
    _253 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnter_CD[((int)((uint)((uint)(select(((uint)_245 < (uint)170000), _245, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnter_CD._effectType);
    if (_253 == 1) {
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _258 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));
      _260 = _258.w + -0.4f;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _265 = (float)((uint)((uint)(_srcTargetSizeAndInv.x * TEXCOORD.x)));
      _269 = (float)((uint)((uint)(_srcTargetSizeAndInv.y * TEXCOORD.y)));
      _273 = min(max(((_260 * 6.666667f) + -1.0f), -1.0f), 1.0f);
      _275 = (_260 * 0.020000001f) + -0.003f;
      _277 = -1.0f;
      _278 = 0.0f;
      _279 = 0.0f;
      _280 = 0.0f;
      _281 = _275;
      _282 = _275;
      while(true) {
        _292 = TEXCOORD.x - ((_282 * _277) * ((-0.5f - (_273 * 8.742278e-08f)) + frac(frac(dot(float2(_265, _269), float2(0.06711056f, 0.00583715f))) * 52.982918f)));
        _303 = TEXCOORD.y - ((_281 * _277) * ((-0.5f - _273) + frac(frac(dot(float2((_265 + 32.665f), (_269 + 11.815f)), float2(0.06711056f, 0.00583715f))) * 52.982918f)));
        _304 = _292 + -0.5f;
        _305 = _303 + -0.5f;
        _315 = (((_258.w + -0.3f) * 0.001f) * rsqrt(dot(float2(_304, _305), float2(_304, _305)))) * sqrt((_305 * _305) + (_304 * _304));
        _316 = _315 * _304;
        _317 = _315 * _305;
        _326 = (((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_292 - _316), (_303 - _317))))).x) * 0.2f) + _280) * 0.5f;
        _331 = (((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_292, _303)))).y) * 0.2f) + _279) * 0.5f;
        _338 = (((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_316 + _292), (_317 + _303))))).z) * 0.2f) + _278) * 0.5f;
        _339 = _277 + 0.2f;
        if (!(!(_339 <= 1.0f))) {
          _342 = _282 * 0.2f;
          _343 = _281 * 0.2f;
          _277 = _339;
          _278 = _338;
          _279 = _331;
          _280 = _326;
          _281 = _343;
          _282 = _342;
          continue;
        }
        _347 = _338;
        _348 = _331;
        _349 = _326;
        break;
      }
    } else {
      _347 = 0.0f;
      _348 = 0.0f;
      _349 = 0.0f;
    }
  }
  _350 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _363 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _350, 0)))).x) & 127)))) + 0.5f);
  } else {
    _363 = 1.0f;
  }
  _366 = (_localToneMappingParams.w > 0.0f);
  if (_366) {
    _372 = _exposure0.x * _userImageAdjust.z;
    _391 = exp2(_powerParams.x * log2(max(0.0f, (((_372 * max(0.0f, (((_348 * -0.62179f) - (_347 * 0.08326f)) + (_349 * 1.70505f)))) * _slopeParams.x) + _offsetParams.x))));
    _407 = exp2(log2(max(0.0f, (((_slopeParams.y * _372) * max(0.0f, (((_348 * 1.1408f) - (_347 * 0.01055f)) - (_349 * 0.13026f)))) + _offsetParams.y))) * _powerParams.y);
    _423 = exp2(log2(max(0.0f, (((_slopeParams.z * _372) * max(0.0f, (((_347 * 1.15297f) - (_348 * 0.12897f)) - (_349 * 0.024f)))) + _offsetParams.z))) * _powerParams.z);
    _424 = dot(float3(_391, _407, _423), float3(0.212671f, 0.71516f, 0.072169f));
    _428 = ((_391 - _424) * _powerParams.w) + _424;
    _431 = ((_407 - _424) * _powerParams.w) + _424;
    _434 = ((_423 - _424) * _powerParams.w) + _424;
    _441 = min(max(log2(mad(_434, 0.079223745f, mad(_431, 0.0784336f, (_428 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _448 = min(max(log2(mad(_434, 0.07916613f, mad(_431, 0.87846863f, (_428 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _455 = min(max(log2(mad(_434, 0.879143f, mad(_431, 0.0784336f, (_428 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _456 = _441 * 0.060606062f;
    _457 = _448 * 0.060606062f;
    _458 = _455 * 0.060606062f;
    _459 = _456 * _456;
    _460 = _457 * _457;
    _461 = _458 * _458;
    _477 = min(0.0f, (-0.0f - (((_441 * 0.0072181816f) + ((_459 * 0.4298f) + (((_459 * _459) * ((31.96f - (_441 * 2.4327273f)) + (_459 * 15.5f))) - ((_441 * 0.41624245f) * _459)))) + -0.00232f)));
    _493 = min(0.0f, (-0.0f - (((_448 * 0.0072181816f) + ((_460 * 0.4298f) + (((_460 * _460) * ((31.96f - (_448 * 2.4327273f)) + (_460 * 15.5f))) - ((_448 * 0.41624245f) * _460)))) + -0.00232f)));
    _509 = min(0.0f, (-0.0f - (((_455 * 0.0072181816f) + ((_461 * 0.4298f) + (((_461 * _461) * ((31.96f - (_455 * 2.4327273f)) + (_461 * 15.5f))) - ((_455 * 0.41624245f) * _461)))) + -0.00232f)));
    _510 = -0.0f - _477;
    _511 = -0.0f - _493;
    _512 = -0.0f - _509;
    _513 = dot(float3(_510, _511, _512), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _530 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _531 = -0.79999995f / _530;
      _532 = -1.2f / _530;
      _533 = 0.20000005f / _530;
      _536 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _539 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _543 = (_531 + 1.4f) + (_539 * (-0.39999998f - _531));
      _547 = (_532 + 1.6f) + (_539 * (-0.6f - _532));
      _551 = (_533 + 0.9f) + (_539 * (0.5f - _533));
      _568 = (lerp(_551, 1.4f, _536));  // [sem: blended]
      _569 = (lerp(_543, 1.0f, _536));  // [sem: blended]
      _570 = (lerp(_547, 1.2f, _536));  // [sem: blended]
    } else {
      _568 = 1.4f;  // [sem: blended]
      _569 = 1.0f;  // [sem: blended]
      _570 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _571 = 1.0f - _570;
    _583 = ((exp2(log2(((saturate((_477 * _477) * _510) * _571) + _570) * _510) * _569) - _513) * _568) + _513;
    _595 = ((exp2(log2(((saturate((_493 * _493) * _511) * _571) + _570) * _511) * _569) - _513) * _568) + _513;
    _607 = ((exp2(log2(((saturate((_509 * _509) * _512) * _571) + _570) * _512) * _569) - _513) * _568) + _513;
    _614 = saturate(exp2(log2(mad(_607, -0.09902974f, mad(_595, -0.09802088f, (_583 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _621 = saturate(exp2(log2(mad(_607, -0.098961174f, mad(_595, 1.1519032f, (_583 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _628 = saturate(exp2(log2(mad(_607, 1.1510737f, mad(_595, -0.09804345f, (_583 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _634 = 1.0f - abs(_etcParams.w);
      _635 = saturate(_etcParams.w);  // [sem: expr_sat]
      _637 = (_634 * _614) + _635;
      _639 = (_634 * _621) + _635;
      _641 = (_634 * _628) + _635;
      if (_colorGradingParams.w > 0.0f) {
        _646 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _663 = (((max(0.0f, (1.0f - _641)) - _641) * _646) + _641);
        _664 = (((max(0.0f, (1.0f - _639)) - _639) * _646) + _639);
        _665 = (((max(0.0f, (1.0f - _637)) - _637) * _646) + _637);
      } else {
        _663 = _641;
        _664 = _639;
        _665 = _637;
      }
      _667 = _userImageAdjust.y + 1.0f;
      _669 = _userImageAdjust.x + 0.5f;
      _672 = ((_665 + -0.5f) * _667) + _669;
      _675 = ((_664 + -0.5f) * _667) + _669;
      _678 = ((_663 + -0.5f) * _667) + _669;
      _684 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _719 = exp2(log2(saturate(mad(_colorBlind2.z, _678, mad(_colorBlind2.y, _675, (_colorBlind2.x * _672))))) * _684);
      _720 = exp2(log2(saturate(mad(_colorBlind1.z, _678, mad(_colorBlind1.y, _675, (_colorBlind1.x * _672))))) * _684);
      _721 = exp2(log2(saturate(mad(_colorBlind0.z, _678, mad(_colorBlind0.y, _675, (_colorBlind0.x * _672))))) * _684);
    } else {
      _719 = _628;
      _720 = _621;
      _721 = _614;
    }
  } else {
    _719 = _347;
    _720 = _348;
    _721 = _349;
  }
  if (_etcParams.y > 1.0f) {
    _726 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _729 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _735 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_726, _729), float2(_726, _729))));  // [sem: expr_sat]
    _740 = (_735 * _719);
    _741 = (_735 * _720);
    _742 = (_735 * _721);
  } else {
    _740 = _719;
    _741 = _720;
    _742 = _721;
  }
  if (_366 && (_etcParams.z > 0.0f)) {
    _772 = select((_741 <= 0.0031308f), (_741 * 12.92f), (((pow(_741, 0.41666666f)) * 1.055f) + -0.055f));
    _773 = select((_742 <= 0.0031308f), (_742 * 12.92f), (((pow(_742, 0.41666666f)) * 1.055f) + -0.055f));
    _774 = select((_740 <= 0.0031308f), (_740 * 12.92f), (((pow(_740, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _772 = _741;
    _773 = _742;
    _774 = _740;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _777 = (float)((uint)((uint)(_350)));
    if (!(_777 < _viewDir.w)) {
      if (!(!(_777 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _788 = 0.0f;
        _789 = 0.0f;
        _790 = 0.0f;
      } else {
        _788 = _773;
        _789 = _772;
        _790 = _774;
      }
    } else {
      _788 = 0.0f;
      _789 = 0.0f;
      _790 = 0.0f;
    }
  } else {
    _788 = _773;
    _789 = _772;
    _790 = _774;
  }
  _794 = exp2(log2(_788 * 0.0001f) * 0.15930176f);
  _798 = exp2(log2(_789 * 0.0001f) * 0.15930176f);
  _802 = exp2(log2(_790 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_794 * 18.6875f) + 1.0f)) * ((_794 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_798 * 18.6875f) + 1.0f)) * ((_798 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_802 * 18.6875f) + 1.0f)) * ((_802 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _363;
  return SV_Target;
}
