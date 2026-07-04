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


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t32, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b15, space35) {
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
  row_major float4x4 _viewProj;
  row_major float4x4 _viewProjNoJitter;
  row_major float4x4 _viewProjRelative;
  row_major float4x4 _viewProjRelativeNoJitter;
  row_major float4x4 _invViewProj;
  row_major float4x4 _invViewProjRelative;
  row_major float4x4 _invViewProjRelativeNoJitter;
  row_major float4x4 _viewProjRelativeOrtho;
  float4 _sunDirection;
  float4 _moonDirection;
  float4 _moonRight;
  float4 _moonUp;
  float4 _ssaoRandomDirection[16];
  row_major float4x4 _view;
  row_major float4x4 _viewRelative;
  row_major float4x4 _viewRelativePrev;
  row_major float4x4 _proj;
  row_major float4x4 _projNoJitter;
  float4 _viewPosPrev;
  row_major float4x4 _viewProjNoJitterPrev;
  row_major float4x4 _viewProjRelativePrev;
  row_major float4x4 _viewProjRelativeNoJitterPrev;
  row_major float4x4 _invViewProjPrev;
  row_major float4x4 _invViewProjRelativePrev;
  row_major float4x4 _projToPrevProj;
  row_major float4x4 _projToPrevProjNoTranslation;
  row_major float4x4 _viewProjectionTexScale;
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
  min16float4 _debugBaseColor16;
  min16float4 _debugNormal16;
  min16float4 _debugMaterial16;
  min16float4 _debugMultiplier16;
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
};

#define RENODX_TONEMAP_EXTERNAL_SCENE_CONSTANT_BUFFER 1
#define RENODX_TONEMAP_SCENE_TIME_W _time.w
#include "../tonemap.hlsli"

#if 0 // Provided by tonemap.hlsli
cbuffer __3__35__0__0__ExposureConstantBuffer : register(b30, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};
#endif

#if 0 // Provided by tonemap.hlsli
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
#endif

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
};

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

#if 0 // Provided by tonemap.hlsli
cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b46, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};
#endif

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
      _125 = ((float((int)(_120)) + _85) * (1.0f / _srcTargetSizeAndInv.x)) + TEXCOORD.x;
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
      _158 = _120 + 1;
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
        _94 = _86 + 1;
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
            _202 = _165 + 1;
            if (!(_202 == 4)) {
              _161 = _198;
              _162 = _199;
              _163 = _200;
              _164 = _201;
              _165 = _202;
              continue;
            }
            _205 = dot(float3(_198, _199, _200), float3(0.3930000066757202f, 0.7689999938011169f, 0.1889999955892563f));
            _206 = dot(float3(_198, _199, _200), float3(0.3490000069141388f, 0.6859999895095825f, 0.15800000727176666f));
            _207 = dot(float3(_198, _199, _200), float3(0.2720000147819519f, 0.5339999794960022f, 0.13099999725818634f));
            _211 = uint(SV_Position.y);
            if (_etcParams.y == 1.0f) {
              _224 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _211, 0)))).x) & 127)))) + 0.5f);
            } else {
              _224 = 0.0f;
            }
            _227 = (_localToneMappingParams.w > 0.0f);
            if (_227) {
              // RenoDX: >>> [Patch: ScreenEffectTonemapReplace] [Version: 1.12.02]
              // Description: Screen-effect composite PostProcessMaterial variant 0x70006722, HDR/PQ output permutation (effect purpose unidentified; it region-filters g_sceneColor, converts the result through a sepia-style color matrix, and applies a uniform 0.3 gain before grading). Like every member of this family it statically inlines the vanilla tonemap and can own the visible final output while its screen effect plays, so an unreplaced curve renders the whole screen with vanilla colors (flat/grey versus the RenoDX look) for the effect's duration. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below. Note: in this compile the effect's uniform 0.3 gain was constant-folded into the tonemap input matrix (the matrix constants are exactly 0.3x the family's canonical 1.705049991607666f/1.1407999992370605f/1.1529699563980103f trio), so the 0.3 scale is applied explicitly to the TonemapReplacer input to keep the effective tonemap input identical to vanilla.
              float3 _rndx_tonemapped_color = TonemapReplacer(float3(_205, _206, _207) * 0.30000001192092896f);
              _487 = _rndx_tonemapped_color.x;
              _488 = _rndx_tonemapped_color.y;
              _489 = _rndx_tonemapped_color.z;
              // RenoDX: <<< [Patch: ScreenEffectTonemapReplace]
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
                _569 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
                _580 = exp2(log2(saturate(mad(_colorBlind0.z, _539, mad(_colorBlind0.y, _538, (_colorBlind0.x * _537))))) * _569);
                _581 = exp2(log2(saturate(mad(_colorBlind1.z, _539, mad(_colorBlind1.y, _538, (_colorBlind1.x * _537))))) * _569);
                _582 = exp2(log2(saturate(mad(_colorBlind2.z, _539, mad(_colorBlind2.y, _538, (_colorBlind2.x * _537))))) * _569);
              } else {
                _580 = _487;
                _581 = _488;
                _582 = _489;
              }
            } else {
              _580 = (_205 * 0.30000001192092896f);
              _581 = (_206 * 0.30000001192092896f);
              _582 = (_207 * 0.30000001192092896f);
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
              _633 = select((_601 <= 0.0031308000907301903f), (_601 * 12.920000076293945f), (((pow(_601, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
              _634 = select((_602 <= 0.0031308000907301903f), (_602 * 12.920000076293945f), (((pow(_602, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
              _635 = select((_603 <= 0.0031308000907301903f), (_603 * 12.920000076293945f), (((pow(_603, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
            } else {
              _633 = _601;
              _634 = _602;
              _635 = _603;
            }
            if (!(!(_etcParams.y >= 1.0f))) {
              _640 = (float)((uint)_211);
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
            _661 = exp2(log2(_649 * 9.999999747378752e-05f) * 0.1593017578125f);
            _662 = exp2(log2(_650 * 9.999999747378752e-05f) * 0.1593017578125f);
            _663 = exp2(log2(_651 * 9.999999747378752e-05f) * 0.1593017578125f);
            SV_Target.x = exp2(log2((1.0f / ((_661 * 18.6875f) + 1.0f)) * ((_661 * 18.8515625f) + 0.8359375f)) * 78.84375f);
            SV_Target.y = exp2(log2((1.0f / ((_662 * 18.6875f) + 1.0f)) * ((_662 * 18.8515625f) + 0.8359375f)) * 78.84375f);
            SV_Target.z = exp2(log2((1.0f / ((_663 * 18.6875f) + 1.0f)) * ((_663 * 18.8515625f) + 0.8359375f)) * 78.84375f);
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
