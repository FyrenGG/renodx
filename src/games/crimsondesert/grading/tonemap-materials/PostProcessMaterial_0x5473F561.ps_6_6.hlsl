struct PostProcessAbyssEnter_CDStruct {
  float _scanRadius;
  float _startFade;
  uint _noiseTex;
  uint _noiseTex2;
  uint _effectType;
  float _ppAbyssEnterRatio;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

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

struct BindlessParameters_PostProcessAbyssEnter_CD {
  PostProcessAbyssEnter_CDStruct BindlessParameters_PostProcessAbyssEnter_CD;
};

typedef BindlessParameters_PostProcessAbyssEnter_CD BindlessParameters_PostProcessAbyssEnter_CD_t;
ConstantBuffer<BindlessParameters_PostProcessAbyssEnter_CD_t> BindlessParameters_PostProcessAbyssEnter_CD[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _38;
  int _46;
  float _83;
  float _84;
  float _85;
  float _86;
  float _114;
  float _115;
  float _116;
  float _117;
  float _118;
  float _119;
  float _232;
  float _233;
  float _234;
  float _235;
  float _236;
  float _237;
  float _284;
  float _285;
  float _286;
  float _300;
  float _505;
  float _506;
  float _507;
  float _600;
  float _601;
  float _602;
  float _656;
  float _657;
  float _658;
  float _677;
  float _678;
  float _679;
  float _709;
  float _710;
  float _711;
  float _725;
  float _726;
  float _727;
  float _49;
  int _58;
  int _66;
  float4 _73;
  float _76;
  float _78;
  float _79;
  float _80;
  float _81;
  float _98;
  float _102;
  float4 _107;
  float _124;
  float _125;
  float _126;
  float _127;
  float _136;
  float _137;
  float _139;
  float _154;
  float _155;
  float _156;
  float _162;
  float _167;
  int _174;
  float _182;
  float _183;
  int _191;
  int _199;
  float4 _204;
  float _206;
  float _210;
  float _211;
  float _225;
  float _230;
  float _242;
  float _243;
  float _244;
  float _245;
  float _254;
  float _255;
  float _257;
  float _275;
  float _276;
  float _277;
  float _280;
  uint _287;
  bool _303;
  float _309;
  float _358;
  float _359;
  float _360;
  float _362;
  float _369;
  float _370;
  float _371;
  float _390;
  float _391;
  float _392;
  float _393;
  float _394;
  float _395;
  float _396;
  float _397;
  float _398;
  float _444;
  float _445;
  float _446;
  float _447;
  float _448;
  float _449;
  float _450;
  float _467;
  float _468;
  float _469;
  float _470;
  float _476;
  float _479;
  float _486;
  float _487;
  float _488;
  float _517;
  float _542;
  float _543;
  float _544;
  float _563;
  float _564;
  float _565;
  float _571;
  float _575;
  float _576;
  float _577;
  float _578;
  float _583;
  float _608;
  float _612;
  float _613;
  float _614;
  float _615;
  float _645;
  float _667;
  float _668;
  float _672;
  float _716;
  int __loop_jump_target = -1;
  _38 = WaveReadLaneFirst(_materialIndex);
  _46 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnter_CD[((int)((uint)((uint)(select(((uint)_38 < (uint)170000), _38, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnter_CD._effectType);
  if (_46 == 0) {
    _49 = 4.0f / (_srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y);
    _58 = WaveReadLaneFirst(_materialIndex);
    _66 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnter_CD[((int)((uint)((uint)(select(((uint)_58 < (uint)170000), _58, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnter_CD._noiseTex);
    _73 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_66 < (uint)65000), _66, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_49 * TEXCOORD.x) - (_time.x * 0.22f)), ((_49 * TEXCOORD.y) - (_time.x * 0.18f))));
    _76 = _73.x + -0.3f;
    _78 = ((_73.x + -0.4f) * 10.471975f) + -1.5707964f;
    _79 = sin(_78);
    _80 = cos(_78);
    _81 = _76 * 0.03f;
    _83 = _81;
    _84 = _81;
    _85 = 0.0f;
    _86 = -1.0f;
    while(true) {
      _98 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - ((_83 * _79) * _86)), (TEXCOORD.y - ((_84 * _80) * _86)))))).w) * 0.2f) + _85;
      _102 = _86 + 0.2f;
      if (!(!(_102 <= 1.0f))) {
        _83 = (_83 * 1.01f);
        _84 = (_84 * 1.01f);
        _85 = (_98 * 0.9f);
        _86 = _102;
        continue;
      }
      _107 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
      if ((_98 * 0.54f) > 0.0f) {
        _114 = _81;
        _115 = _81;
        _116 = 0.0f;
        _117 = 0.0f;
        _118 = 0.0f;
        _119 = -1.0f;
        while(true) {
          _124 = TEXCOORD.x - ((_114 * _79) * _119);
          _125 = TEXCOORD.y - ((_115 * _80) * _119);
          _126 = _124 + -0.5f;
          _127 = _125 + -0.5f;
          // [sem: invLength]
          _136 = rsqrt(dot(float2(_126, _127), float2(_126, _127))) * ((_76 * 0.06f) * sqrt((_126 * _126) + (_127 * _127)));
          _137 = _136 * _126;
          _139 = _136 * _127;
          _154 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_124 - _137), (_125 - _139))))).x) * 0.2f) + _116;
          _155 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_124, _125)))).y) * 0.2f) + _117;
          _156 = ((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_137 + _124), (_139 + _125))))).z) * 0.2f) + _118;
          _162 = _119 + 0.2f;
          if (!(!(_162 <= 1.0f))) {
            _114 = (_114 * 1.01f);
            _115 = (_115 * 1.01f);
            _116 = (_154 * 0.9f);
            _117 = (_155 * 0.9f);
            _118 = (_156 * 0.9f);
            _119 = _162;
            continue;
          }
          _167 = 0.54f / max(0.001f, _exposure0.x);
          _174 = WaveReadLaneFirst(_materialIndex);
          _182 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnter_CD[((int)((uint)((uint)(select(((uint)_174 < (uint)170000), _174, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnter_CD._ppAbyssEnterRatio);
          _183 = _182 * saturate(_98 * 1.08f);
          _284 = ((_183 * ((_154 * _167) - _107.x)) + _107.x);
          _285 = ((_183 * ((_155 * _167) - _107.y)) + _107.y);
          _286 = ((_183 * ((_156 * _167) - _107.z)) + _107.z);
          break;
        }
      } else {
        _284 = _107.x;
        _285 = _107.y;
        _286 = _107.z;
      }
      break;
    }
  } else {
    _191 = WaveReadLaneFirst(_materialIndex);
    _199 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnter_CD[((int)((uint)((uint)(select(((uint)_191 < (uint)170000), _191, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnter_CD._effectType);
    if (_199 == 1) {
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _204 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));
      _206 = _204.w + -0.4f;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _210 = (float)((uint)((uint)(_srcTargetSizeAndInv.x * TEXCOORD.x)));
      _211 = (float)((uint)((uint)(_srcTargetSizeAndInv.y * TEXCOORD.y)));
      _225 = min(max(((_206 * 6.666667f) + -1.0f), -1.0f), 1.0f);
      _230 = (_206 * 0.020000001f) + -0.003f;
      _232 = _230;
      _233 = _230;
      _234 = 0.0f;
      _235 = 0.0f;
      _236 = 0.0f;
      _237 = -1.0f;
      while(true) {
        _242 = TEXCOORD.x - ((_232 * ((frac(frac(dot(float2(_210, _211), float2(0.06711056f, 0.00583715f))) * 52.982918f) + -0.5f) - (_225 * 8.742278e-08f))) * _237);
        _243 = TEXCOORD.y - ((_233 * ((frac(frac(dot(float2((_210 + 32.665f), (_211 + 11.815f)), float2(0.06711056f, 0.00583715f))) * 52.982918f) + -0.5f) - _225)) * _237);
        _244 = _242 + -0.5f;
        _245 = _243 + -0.5f;
        // [sem: invLength]
        _254 = rsqrt(dot(float2(_244, _245), float2(_244, _245))) * (((_204.w + -0.3f) * 0.001f) * sqrt((_244 * _244) + (_245 * _245)));
        _255 = _254 * _244;
        _257 = _254 * _245;
        _275 = (((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_242 - _255), (_243 - _257))))).x) * 0.2f) + _234) * 0.5f;
        _276 = (((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_242, _243)))).y) * 0.2f) + _235) * 0.5f;
        _277 = (((((float4)(__3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_255 + _242), (_257 + _243))))).z) * 0.2f) + _236) * 0.5f;
        _280 = _237 + 0.2f;
        if (!(!(_280 <= 1.0f))) {
          _232 = (_232 * 0.2f);
          _233 = (_233 * 0.2f);
          _234 = _275;
          _235 = _276;
          _236 = _277;
          _237 = _280;
          continue;
        }
        _284 = _275;
        _285 = _276;
        _286 = _277;
        break;
      }
    } else {
      _284 = 0.0f;
      _285 = 0.0f;
      _286 = 0.0f;
    }
  }
  _287 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _300 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _287, 0)))).x) & 127)))) + 0.5f);
  } else {
    _300 = 1.0f;
  }
  _303 = (_localToneMappingParams.w > 0.0f);
  if (_303) {
    _309 = _userImageAdjust.z * _exposure0.x;
    _358 = exp2(log2(max(0.0f, (((_309 * max(0.0f, (((_284 * 1.70505f) - (_285 * 0.62179f)) - (_286 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _359 = exp2(log2(max(0.0f, (((max(0.0f, (((_285 * 1.1408f) - (_284 * 0.13026f)) - (_286 * 0.01055f))) * _309) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _360 = exp2(log2(max(0.0f, (((max(0.0f, (((_284 * -0.024f) - (_285 * 0.12897f)) + (_286 * 1.15297f))) * _309) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _362 = dot(float3(_358, _359, _360), float3(0.212671f, 0.71516f, 0.072169f));
    _369 = ((_358 - _362) * _powerParams.w) + _362;
    _370 = ((_359 - _362) * _powerParams.w) + _362;
    _371 = ((_360 - _362) * _powerParams.w) + _362;
    _390 = min(max(log2(mad(_371, 0.079223745f, mad(_370, 0.0784336f, (_369 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _391 = min(max(log2(mad(_371, 0.07916613f, mad(_370, 0.87846863f, (_369 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _392 = min(max(log2(mad(_371, 0.879143f, mad(_370, 0.0784336f, (_369 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _393 = _390 * 0.060606062f;
    _394 = _391 * 0.060606062f;
    _395 = _392 * 0.060606062f;
    _396 = _393 * _393;
    _397 = _394 * _394;
    _398 = _395 * _395;
    _444 = min(0.0f, (-0.0f - (((_390 * 0.0072181816f) + ((_396 * 0.4298f) + (((_396 * _396) * ((31.96f - (_390 * 2.4327273f)) + (_396 * 15.5f))) - ((_390 * 0.41624245f) * _396)))) + -0.00232f)));
    _445 = min(0.0f, (-0.0f - (((_391 * 0.0072181816f) + ((_397 * 0.4298f) + (((_397 * _397) * ((31.96f - (_391 * 2.4327273f)) + (_397 * 15.5f))) - ((_391 * 0.41624245f) * _397)))) + -0.00232f)));
    _446 = min(0.0f, (-0.0f - (((_392 * 0.0072181816f) + ((_398 * 0.4298f) + (((_398 * _398) * ((31.96f - (_392 * 2.4327273f)) + (_398 * 15.5f))) - ((_392 * 0.41624245f) * _398)))) + -0.00232f)));
    _447 = -0.0f - _444;
    _448 = -0.0f - _445;
    _449 = -0.0f - _446;
    _450 = dot(float3(_447, _448, _449), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _467 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _468 = -0.79999995f / _467;
      _469 = -1.2f / _467;
      _470 = 0.20000005f / _467;
      _476 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _479 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _486 = (_468 + 1.4f) + (_479 * (-0.39999998f - _468));
      _487 = (_469 + 1.6f) + (_479 * (-0.6f - _469));
      _488 = (_470 + 0.9f) + (_479 * (0.5f - _470));
      _505 = (lerp(_487, 1.2f, _476));  // [sem: blended]
      _506 = (lerp(_486, 1.0f, _476));  // [sem: blended]
      _507 = (lerp(_488, 1.4f, _476));  // [sem: blended]
    } else {
      _505 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _506 = 1.0f;  // [sem: blended]
      _507 = 1.4f;  // [sem: blended]
    }
    _517 = 1.0f - _505;
    _542 = ((exp2(log2(((saturate((_444 * _444) * _447) * _517) + _505) * _447) * _506) - _450) * _507) + _450;
    _543 = ((exp2(log2(((saturate((_445 * _445) * _448) * _517) + _505) * _448) * _506) - _450) * _507) + _450;
    _544 = ((exp2(log2(((saturate((_446 * _446) * _449) * _517) + _505) * _449) * _506) - _450) * _507) + _450;
    _563 = saturate(exp2(log2(mad(_544, -0.09902974f, mad(_543, -0.09802088f, (_542 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _564 = saturate(exp2(log2(mad(_544, -0.098961174f, mad(_543, 1.1519032f, (_542 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _565 = saturate(exp2(log2(mad(_544, 1.1510737f, mad(_543, -0.09804345f, (_542 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
    if (_etcParams.z == 0.0f) {
      _571 = 1.0f - abs(_etcParams.w);
      _575 = saturate(_etcParams.w);  // [sem: expr_sat]
      _576 = (_571 * _563) + _575;
      _577 = (_571 * _564) + _575;
      _578 = (_571 * _565) + _575;
      if (_colorGradingParams.w > 0.0f) {
        _583 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _600 = (((max(0.0f, (1.0f - _576)) - _576) * _583) + _576);
        _601 = (((max(0.0f, (1.0f - _577)) - _577) * _583) + _577);
        _602 = (((max(0.0f, (1.0f - _578)) - _578) * _583) + _578);
      } else {
        _600 = _576;
        _601 = _577;
        _602 = _578;
      }
      _608 = _userImageAdjust.y + 1.0f;
      _612 = _userImageAdjust.x + 0.5f;
      _613 = ((_600 + -0.5f) * _608) + _612;
      _614 = ((_601 + -0.5f) * _608) + _612;
      _615 = ((_602 + -0.5f) * _608) + _612;
      _645 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _656 = exp2(log2(saturate(mad(_colorBlind0.z, _615, mad(_colorBlind0.y, _614, (_colorBlind0.x * _613))))) * _645);
      _657 = exp2(log2(saturate(mad(_colorBlind1.z, _615, mad(_colorBlind1.y, _614, (_colorBlind1.x * _613))))) * _645);
      _658 = exp2(log2(saturate(mad(_colorBlind2.z, _615, mad(_colorBlind2.y, _614, (_colorBlind2.x * _613))))) * _645);
    } else {
      _656 = _563;
      _657 = _564;
      _658 = _565;
    }
  } else {
    _656 = _284;
    _657 = _285;
    _658 = _286;
  }
  if (_etcParams.y > 1.0f) {
    _667 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _668 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _672 = saturate(1.0f - (dot(float2(_667, _668), float2(_667, _668)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _677 = (_672 * _656);
    _678 = (_672 * _657);
    _679 = (_672 * _658);
  } else {
    _677 = _656;
    _678 = _657;
    _679 = _658;
  }
  if (_303 && (_etcParams.z > 0.0f)) {
    _709 = select((_677 <= 0.0031308f), (_677 * 12.92f), (((pow(_677, 0.41666666f)) * 1.055f) + -0.055f));
    _710 = select((_678 <= 0.0031308f), (_678 * 12.92f), (((pow(_678, 0.41666666f)) * 1.055f) + -0.055f));
    _711 = select((_679 <= 0.0031308f), (_679 * 12.92f), (((pow(_679, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _709 = _677;
    _710 = _678;
    _711 = _679;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _716 = (float)((uint)((uint)(_287)));
    if (!(_716 < _viewDir.w)) {
      if (!(_716 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _725 = _709;
        _726 = _710;
        _727 = _711;
      } else {
        _725 = 0.0f;
        _726 = 0.0f;
        _727 = 0.0f;
      }
    } else {
      _725 = 0.0f;
      _726 = 0.0f;
      _727 = 0.0f;
    }
  } else {
    _725 = _709;
    _726 = _710;
    _727 = _711;
  }
  SV_Target.x = _725;
  SV_Target.y = _726;
  SV_Target.z = _727;
  SV_Target.w = _300;
  return SV_Target;
}
