struct PostProcessTransitionStruct {
  uint _sceneSampleType;
  uint _sceneDistortTex;
  float2 _sceneDistortTexScale;
  float2 _sceneDistortIntensity;
  float _scenePolarDistort;
  float2 _scenePolarDistortCenter;
  float _topVignetteRatio;
  float _topVignetteRadius;
  float _topVignettePower;
  uint _topVignetteColor;
  float _sideVignetteRatio;
  float _sideVignetteRadius;
  float _sideVignettePower;
  uint _sideVignetteColor;
  float _bottomVignetteRatio;
  float _bottomVignetteRadius;
  float _bottomVignettePower;
  uint _bottomVignetteColor;
  float _impactFrame;
  float _impactFrameFresnel;
  float _impactFrameFresnelIntensity;
  float _impactFrameInverse;
  uint _chapterTransitionTex;
  uint _chapterTransitionNoiseTex;
  float _chapterTransition;
  float _chapterTransitionUseDivide;
};


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

struct BindlessParameters_PostProcessTransition {
  PostProcessTransitionStruct BindlessParameters_PostProcessTransition;
};

typedef BindlessParameters_PostProcessTransition BindlessParameters_PostProcessTransition_t;
ConstantBuffer<BindlessParameters_PostProcessTransition_t> BindlessParameters_PostProcessTransition[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

static const float _global_0[4] = { -1.0f, -1.0f, 0.0f, 0.0f };
static const float _global_1[4] = { -1.0f, 0.0f, -1.0f, 0.0f };

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _23;
  float _31;
  float _36;
  float _78;
  float _79;
  float _80;
  float _81;
  float _82;
  float _83;
  float _84;
  float _85;
  int _86;
  float _114;
  float _115;
  float _116;
  float _117;
  float _118;
  float _119;
  int _120;
  float _161;
  float _162;
  float _163;
  float _164;
  int _165;
  float _198;
  float _199;
  float _200;
  float _201;
  float _224;
  float _429;
  float _430;
  float _431;
  float _524;
  float _525;
  float _526;
  float _580;
  float _581;
  float _582;
  float _601;
  float _602;
  float _603;
  float _633;
  float _634;
  float _635;
  float _649;
  float _650;
  float _651;
  float4 _73;
  int _94;
  float _98;
  float _100;
  float _102;
  float _104;
  float _106;
  float _108;
  float _110;
  float _112;
  float _125;
  float4 _129;
  float4 _145;
  float _149;
  float _150;
  float _151;
  float _155;
  float _156;
  float _157;
  int _158;
  float _172;
  float _173;
  float _174;
  float _190;
  float _191;
  float _192;
  float _194;
  int _202;
  float _205;
  float _206;
  float _207;
  uint _211;
  bool _227;
  float _233;
  float _282;
  float _283;
  float _284;
  float _286;
  float _293;
  float _294;
  float _295;
  float _314;
  float _315;
  float _316;
  float _317;
  float _318;
  float _319;
  float _320;
  float _321;
  float _322;
  float _368;
  float _369;
  float _370;
  float _371;
  float _372;
  float _373;
  float _374;
  float _391;
  float _392;
  float _393;
  float _394;
  float _400;
  float _403;
  float _410;
  float _411;
  float _412;
  float _441;
  float _466;
  float _467;
  float _468;
  float _487;
  float _488;
  float _489;
  float _495;
  float _499;
  float _500;
  float _501;
  float _502;
  float _507;
  float _532;
  float _536;
  float _537;
  float _538;
  float _539;
  float _569;
  float _591;
  float _592;
  float _596;
  float _640;
  float _661;
  float _662;
  float _663;
  int __loop_jump_target = -1;
  float _15[4];
  float _16[4];
  float _17[4];
  float _18[4];
  float _19[4];
  float _20[4];
  _23 = WaveReadLaneFirst(_materialIndex);
  _31 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition[((int)((uint)((uint)(select(((uint)_23 < (uint)170000), _23, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition._chapterTransition);
  _36 = 1.0f / _srcTargetSizeAndInv.y;
  _18[0] = 0.0f;
  _19[0] = 0.0f;
  _20[0] = 0.0f;
  _18[1] = 0.0f;
  _19[1] = 0.0f;
  _20[1] = 0.0f;
  _18[2] = 0.0f;
  _19[2] = 0.0f;
  _20[2] = 0.0f;
  _18[3] = 0.0f;
  _19[3] = 0.0f;
  _20[3] = 0.0f;
  _15[0] = 0.0f;
  _16[0] = 0.0f;
  _17[0] = 0.0f;
  _15[1] = 0.0f;
  _16[1] = 0.0f;
  _17[1] = 0.0f;
  _15[2] = 0.0f;
  _16[2] = 0.0f;
  _17[2] = 0.0f;
  _15[3] = 0.0f;
  _16[3] = 0.0f;
  _17[3] = 0.0f;
  _78 = 0.0f;
  _79 = 0.0f;
  _80 = 0.0f;
  _81 = 0.0f;
  _82 = 0.0f;
  _83 = 0.0f;
  _84 = -1.0f;
  _85 = -1.0f;
  _86 = 0;
  while(true) {
    _114 = _78;
    _115 = _79;
    _116 = _80;
    _117 = _81;
    _118 = _82;
    _119 = _83;
    _120 = 0;
    while(true) {
      _125 = ((((float)((int)(_120))) + _85) * (1.0f / _srcTargetSizeAndInv.x)) + TEXCOORD.x;
      // [sem: _3__36__0__0__g_sceneColor_sample]
      _129 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_125, ((_84 * _36) + TEXCOORD.y)));
      // [sem: _3__36__0__0__g_sceneColor_sample]
      _145 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(_125, (((_84 + 1.0f) * _36) + TEXCOORD.y)));
      _149 = (_129.x + _119) + _145.x;
      _150 = (_129.y + _118) + _145.y;
      _151 = (_129.z + _117) + _145.z;
      _18[min((uint)(_86), 3u)] = _149;
      _19[min((uint)(_86), 3u)] = _150;
      _20[min((uint)(_86), 3u)] = _151;
      _155 = ((_129.x * _129.x) + _116) + (_145.x * _145.x);
      _156 = ((_129.y * _129.y) + _115) + (_145.y * _145.y);
      _157 = ((_129.z * _129.z) + _114) + (_145.z * _145.z);
      _15[min((uint)(_86), 3u)] = _155;
      _16[min((uint)(_86), 3u)] = _156;
      _17[min((uint)(_86), 3u)] = _157;
      _158 = (int)(_120) + (int)(1);
      if (!(_158 == 2)) {
        _114 = _157;
        _115 = _156;
        _116 = _155;
        _117 = _151;
        _118 = _150;
        _119 = _149;
        _120 = _158;
        continue;
      }
      while(true) {
        _94 = (int)(_86) + (int)(1);
        if (!(_94 == 4)) {
          _98 = _global_0[min((uint)(_94), 3u)];
          _100 = _global_1[min((uint)(_94), 3u)];
          _102 = _18[min((uint)(_94), 3u)];
          _104 = _19[min((uint)(_94), 3u)];
          _106 = _20[min((uint)(_94), 3u)];
          _108 = _15[min((uint)(_94), 3u)];
          _110 = _16[min((uint)(_94), 3u)];
          _112 = _17[min((uint)(_94), 3u)];
          _78 = _112;
          _79 = _110;
          _80 = _108;
          _81 = _106;
          _82 = _104;
          _83 = _102;
          _84 = _100;
          _85 = _98;
          _86 = _94;
          __loop_jump_target = 77;
          break;
        }
        while(true) {
          _73 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
          _161 = _73.x;
          _162 = _73.y;
          _163 = _73.z;
          _164 = 10000.0f;
          _165 = 0;
          while(true) {
            _201 = _164;
            _172 = (_18[min((uint)(_165), 3u)]) * 0.25f;
            _173 = (_19[min((uint)(_165), 3u)]) * 0.25f;
            _174 = (_20[min((uint)(_165), 3u)]) * 0.25f;
            _18[min((uint)(_165), 3u)] = _172;
            _19[min((uint)(_165), 3u)] = _173;
            _20[min((uint)(_165), 3u)] = _174;
            _190 = abs(((_15[min((uint)(_165), 3u)]) * 0.25f) - (_172 * _172));
            _191 = abs(((_16[min((uint)(_165), 3u)]) * 0.25f) - (_173 * _173));
            _192 = abs(((_17[min((uint)(_165), 3u)]) * 0.25f) - (_174 * _174));
            _15[min((uint)(_165), 3u)] = _190;
            _16[min((uint)(_165), 3u)] = _191;
            _17[min((uint)(_165), 3u)] = _192;
            _194 = (_191 + _190) + _192;
            if (_194 < _164) {
              _198 = _172;
              _199 = _173;
              _200 = _174;
              _201 = _194;
            } else {
              _198 = _161;
              _199 = _162;
              _200 = _163;
              _201 = _164;
            }
            _202 = (int)(_165) + (int)(1);
            if (!(_202 == 4)) {
              _161 = _198;
              _162 = _199;
              _163 = _200;
              _164 = _201;
              _165 = _202;
              continue;
            }
            _205 = dot(float3(_198, _199, _200), float3(0.393f, 0.769f, 0.189f));
            _206 = dot(float3(_198, _199, _200), float3(0.349f, 0.686f, 0.158f));
            _207 = dot(float3(_198, _199, _200), float3(0.272f, 0.534f, 0.131f));
            _211 = (uint)(SV_Position.y);
            if (_etcParams.y == 1.0f) {
              _224 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _211, 0)))).x) & 127)))) + 0.5f);
            } else {
              _224 = 0.0f;
            }
            _227 = (_localToneMappingParams.w > 0.0f);
            if (_227) {
              _233 = _userImageAdjust.z * _exposure0.x;
              _282 = exp2(log2(max(0.0f, (((_233 * max(0.0f, (((_205 * 0.511515f) - (_206 * 0.186537f)) - (_207 * 0.024978f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
              _283 = exp2(log2(max(0.0f, (((max(0.0f, (((_206 * 0.34224f) - (_205 * 0.039078005f)) - (_207 * 0.0031650001f))) * _233) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
              _284 = exp2(log2(max(0.0f, (((max(0.0f, (((_205 * -0.0072000003f) - (_206 * 0.038691f)) + (_207 * 0.345891f))) * _233) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
              _286 = dot(float3(_282, _283, _284), float3(0.212671f, 0.71516f, 0.072169f));
              _293 = ((_282 - _286) * _powerParams.w) + _286;
              _294 = ((_283 - _286) * _powerParams.w) + _286;
              _295 = ((_284 - _286) * _powerParams.w) + _286;
              _314 = min(max(log2(mad(_295, 0.079223745f, mad(_294, 0.0784336f, (_293 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
              _315 = min(max(log2(mad(_295, 0.07916613f, mad(_294, 0.87846863f, (_293 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
              _316 = min(max(log2(mad(_295, 0.879143f, mad(_294, 0.0784336f, (_293 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
              _317 = _314 * 0.060606062f;
              _318 = _315 * 0.060606062f;
              _319 = _316 * 0.060606062f;
              _320 = _317 * _317;
              _321 = _318 * _318;
              _322 = _319 * _319;
              _368 = min(0.0f, (-0.0f - (((_314 * 0.0072181816f) + ((_320 * 0.4298f) + (((_320 * _320) * ((31.96f - (_314 * 2.4327273f)) + (_320 * 15.5f))) - ((_314 * 0.41624245f) * _320)))) + -0.00232f)));
              _369 = min(0.0f, (-0.0f - (((_315 * 0.0072181816f) + ((_321 * 0.4298f) + (((_321 * _321) * ((31.96f - (_315 * 2.4327273f)) + (_321 * 15.5f))) - ((_315 * 0.41624245f) * _321)))) + -0.00232f)));
              _370 = min(0.0f, (-0.0f - (((_316 * 0.0072181816f) + ((_322 * 0.4298f) + (((_322 * _322) * ((31.96f - (_316 * 2.4327273f)) + (_322 * 15.5f))) - ((_316 * 0.41624245f) * _322)))) + -0.00232f)));
              _371 = -0.0f - _368;
              _372 = -0.0f - _369;
              _373 = -0.0f - _370;
              _374 = dot(float3(_371, _372, _373), float3(0.2126f, 0.7152f, 0.0722f));
              if (_nightToneParm == 1) {
                _391 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
                _392 = -0.79999995f / _391;
                _393 = -1.2f / _391;
                _394 = 0.20000005f / _391;
                _400 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
                _403 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
                _410 = (_392 + 1.4f) + (_403 * (-0.39999998f - _392));
                _411 = (_393 + 1.6f) + (_403 * (-0.6f - _393));
                _412 = (_394 + 0.9f) + (_403 * (0.5f - _394));
                _429 = (lerp(_411, 1.2f, _400));  // [sem: blended]
                _430 = (lerp(_410, 1.0f, _400));  // [sem: blended]
                _431 = (lerp(_412, 1.4f, _400));  // [sem: blended]
              } else {
                _429 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
                _430 = 1.0f;  // [sem: blended]
                _431 = 1.4f;  // [sem: blended]
              }
              _441 = 1.0f - _429;
              _466 = ((exp2(log2(((saturate((_368 * _368) * _371) * _441) + _429) * _371) * _430) - _374) * _431) + _374;
              _467 = ((exp2(log2(((saturate((_369 * _369) * _372) * _441) + _429) * _372) * _430) - _374) * _431) + _374;
              _468 = ((exp2(log2(((saturate((_370 * _370) * _373) * _441) + _429) * _373) * _430) - _374) * _431) + _374;
              _487 = saturate(exp2(log2(mad(_468, -0.09902974f, mad(_467, -0.09802088f, (_466 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
              // [sem: expr_sat]
              _488 = saturate(exp2(log2(mad(_468, -0.098961174f, mad(_467, 1.1519032f, (_466 * -0.052896854f)))) * 2.2f));
              // [sem: expr_sat]
              _489 = saturate(exp2(log2(mad(_468, 1.1510737f, mad(_467, -0.09804345f, (_466 * -0.052971635f)))) * 2.2f));
              if (_etcParams.z == 0.0f) {
                _495 = 1.0f - abs(_etcParams.w);
                _499 = saturate(_etcParams.w);  // [sem: expr_sat]
                _500 = (_495 * _487) + _499;
                _501 = (_495 * _488) + _499;
                _502 = (_495 * _489) + _499;
                if (_colorGradingParams.w > 0.0f) {
                  _507 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
                  _524 = (((max(0.0f, (1.0f - _500)) - _500) * _507) + _500);
                  _525 = (((max(0.0f, (1.0f - _501)) - _501) * _507) + _501);
                  _526 = (((max(0.0f, (1.0f - _502)) - _502) * _507) + _502);
                } else {
                  _524 = _500;
                  _525 = _501;
                  _526 = _502;
                }
                _532 = _userImageAdjust.y + 1.0f;
                _536 = _userImageAdjust.x + 0.5f;
                _537 = ((_524 + -0.5f) * _532) + _536;
                _538 = ((_525 + -0.5f) * _532) + _536;
                _539 = ((_526 + -0.5f) * _532) + _536;
                _569 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
                _580 = exp2(log2(saturate(mad(_colorBlind0.z, _539, mad(_colorBlind0.y, _538, (_colorBlind0.x * _537))))) * _569);
                _581 = exp2(log2(saturate(mad(_colorBlind1.z, _539, mad(_colorBlind1.y, _538, (_colorBlind1.x * _537))))) * _569);
                _582 = exp2(log2(saturate(mad(_colorBlind2.z, _539, mad(_colorBlind2.y, _538, (_colorBlind2.x * _537))))) * _569);
              } else {
                _580 = _487;
                _581 = _488;
                _582 = _489;
              }
            } else {
              _580 = (_205 * 0.3f);
              _581 = (_206 * 0.3f);
              _582 = (_207 * 0.3f);
            }
            if (_etcParams.y > 1.0f) {
              _591 = abs((TEXCOORD.x * 2.0f) + -1.0f);
              _592 = abs((TEXCOORD.y * 2.0f) + -1.0f);
              _596 = saturate(1.0f - (dot(float2(_591, _592), float2(_591, _592)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
              _601 = (_596 * _580);
              _602 = (_596 * _581);
              _603 = (_596 * _582);
            } else {
              _601 = _580;
              _602 = _581;
              _603 = _582;
            }
            if (_227 && (_etcParams.z > 0.0f)) {
              _633 = select((_601 <= 0.0031308f), (_601 * 12.92f), (((pow(_601, 0.41666666f)) * 1.055f) + -0.055f));
              _634 = select((_602 <= 0.0031308f), (_602 * 12.92f), (((pow(_602, 0.41666666f)) * 1.055f) + -0.055f));
              _635 = select((_603 <= 0.0031308f), (_603 * 12.92f), (((pow(_603, 0.41666666f)) * 1.055f) + -0.055f));
            } else {
              _633 = _601;
              _634 = _602;
              _635 = _603;
            }
            if (!(!(_etcParams.y >= 1.0f))) {
              _640 = (float)((uint)((uint)(_211)));
              if (!(_640 < _viewDir.w)) {
                if (!(_640 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
                  _649 = _633;
                  _650 = _634;
                  _651 = _635;
                } else {
                  _649 = 0.0f;
                  _650 = 0.0f;
                  _651 = 0.0f;
                }
              } else {
                _649 = 0.0f;
                _650 = 0.0f;
                _651 = 0.0f;
              }
            } else {
              _649 = _633;
              _650 = _634;
              _651 = _635;
            }
            _661 = exp2(log2(_649 * 0.0001f) * 0.15930176f);
            _662 = exp2(log2(_650 * 0.0001f) * 0.15930176f);
            _663 = exp2(log2(_651 * 0.0001f) * 0.15930176f);
            SV_Target.x = exp2(log2((1.0f / ((_661 * 18.6875f) + 1.0f)) * ((_661 * 18.851562f) + 0.8359375f)) * 78.84375f);
            SV_Target.y = exp2(log2((1.0f / ((_662 * 18.6875f) + 1.0f)) * ((_662 * 18.851562f) + 0.8359375f)) * 78.84375f);
            SV_Target.z = exp2(log2((1.0f / ((_663 * 18.6875f) + 1.0f)) * ((_663 * 18.851562f) + 0.8359375f)) * 78.84375f);
            SV_Target.w = _224;
            break;
          }
          break;
        }
        break;
      }
      if (__loop_jump_target != -1) {
        break;
      }
      break;
    }
    if (__loop_jump_target == 77) {
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
