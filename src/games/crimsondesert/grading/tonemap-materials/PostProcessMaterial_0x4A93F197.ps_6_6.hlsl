struct PostProcessCameraLensRainStruct {
  float _rainSpeed;
  float _rainUTiling;
  float _rainVTiling;
  float _streakUTiling;
  float _streakVTiling;
  uint _rainNormalTexture;
  uint _rainMaskTexture;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t28, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t87, space36);

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
  float4 _viewProj[4] : packoffset(c010.x);
  float4 _viewProjNoJitter[4] : packoffset(c014.x);
  float4 _viewProjRelative[4] : packoffset(c018.x);
  float4 _viewProjRelativeNoJitter[4] : packoffset(c022.x);
  float4 _invViewProj[4] : packoffset(c026.x);
  float4 _invViewProjRelative[4] : packoffset(c030.x);
  float4 _invViewProjRelativeNoJitter[4] : packoffset(c034.x);
  float4 _viewProjRelativeOrtho[4] : packoffset(c038.x);
  float4 _sunDirection : packoffset(c042.x);
  float4 _moonDirection : packoffset(c043.x);
  float4 _moonRight : packoffset(c044.x);
  float4 _moonUp : packoffset(c045.x);
  float4 _ssaoRandomDirection[16] : packoffset(c046.x);
  float4 _view[4] : packoffset(c062.x);
  float4 _viewRelative[4] : packoffset(c066.x);
  float4 _viewRelativePrev[4] : packoffset(c070.x);
  float4 _proj[4] : packoffset(c074.x);
  float4 _projNoJitter[4] : packoffset(c078.x);
  float4 _viewPosPrev : packoffset(c082.x);
  float4 _viewProjNoJitterPrev[4] : packoffset(c083.x);
  float4 _viewProjRelativePrev[4] : packoffset(c087.x);
  float4 _viewProjRelativeNoJitterPrev[4] : packoffset(c091.x);
  float4 _invViewProjPrev[4] : packoffset(c095.x);
  float4 _invViewProjRelativePrev[4] : packoffset(c099.x);
  float4 _projToPrevProj[4] : packoffset(c103.x);
  float4 _projToPrevProjNoTranslation[4] : packoffset(c107.x);
  float4 _viewProjectionTexScale[4] : packoffset(c111.x);
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

#define RENODX_TONEMAP_EXTERNAL_SCENE_CONSTANT_BUFFER 1
#define RENODX_TONEMAP_SCENE_TIME_W _time.w
#include "../tonemap.hlsli"



#if 0 // Provided by tonemap.hlsli
cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
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
cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};
#endif

struct BindlessParameters_PostProcessCameraLensRain {
  PostProcessCameraLensRainStruct BindlessParameters_PostProcessCameraLensRain;
};

typedef BindlessParameters_PostProcessCameraLensRain BindlessParameters_PostProcessCameraLensRain_t;
ConstantBuffer<BindlessParameters_PostProcessCameraLensRain_t> BindlessParameters_PostProcessCameraLensRain[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

static const float _global_0[5] = { 0.05471208319067955f, 0.05641283839941025f, 0.05699142813682556f, 0.05641283839941025f, 0.05471208319067955f };

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _23;
  float _47;
  float _49;
  float _50;
  float _51;
  int _52;
  float _54;
  float _55;
  float _56;
  int _57;
  float _160;
  float _365;
  float _366;
  float _367;
  float _460;
  float _461;
  float _462;
  float _516;
  float _517;
  float _518;
  float _537;
  float _538;
  float _539;
  float _569;
  float _570;
  float _571;
  float _585;
  float _586;
  float _587;
  float _64;
  float4 _75;
  float _82;
  float _83;
  float _84;
  int _85;
  int _88;
  int _101;
  float _109;
  int _111;
  float _119;
  int _121;
  int _129;
  float4 _136;
  float _144;
  float _145;
  float _146;
  uint _147;
  bool _163;
  float _169;
  float _218;
  float _219;
  float _220;
  float _222;
  float _229;
  float _230;
  float _231;
  float _250;
  float _251;
  float _252;
  float _253;
  float _254;
  float _255;
  float _256;
  float _257;
  float _258;
  float _304;
  float _305;
  float _306;
  float _307;
  float _308;
  float _309;
  float _310;
  float _327;
  float _328;
  float _329;
  float _330;
  float _336;
  float _339;
  float _346;
  float _347;
  float _348;
  float _377;
  float _402;
  float _403;
  float _404;
  float _423;
  float _424;
  float _425;
  float _431;
  float _435;
  float _436;
  float _437;
  float _438;
  float _443;
  float _468;
  float _472;
  float _473;
  float _474;
  float _475;
  float _505;
  float _527;
  float _528;
  float _532;
  float _576;
  int __loop_jump_target = -1;
  _23 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _47 = 1.0f - (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(int(float((int)(int(_srcTargetSizeAndInv.x * TEXCOORD.x))) * _customRenderPassSizeInvSize.x), int(float((int)(int(_srcTargetSizeAndInv.y * TEXCOORD.y))) * _customRenderPassSizeInvSize.y), 0)))).x);
  _49 = 0.0f;
  _50 = 0.0f;
  _51 = 0.0f;
  _52 = -2;
  while(true) {
    _54 = _49;
    _55 = _50;
    _56 = _51;
    _57 = -2;
    while(true) {
      _64 = (_global_0[min((uint)((_52 + 2)), 4u)]) * (_global_0[min((uint)((_57 + 2)), 4u)]);
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _75 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((((_47 * _destTargetSizAndInv.z) * float((int)(_52))) + TEXCOORD.x), (((_47 * _destTargetSizAndInv.w) * float((int)(_57))) + TEXCOORD.y)));
      _82 = (_75.x * _64) + _54;
      _83 = (_75.y * _64) + _55;
      _84 = (_75.z * _64) + _56;
      _85 = _57 + 1;
      if (!(_85 == 3)) {
        _54 = _82;
        _55 = _83;
        _56 = _84;
        _57 = _85;
        continue;
      }
      _88 = _52 + 1;
      if (!(_88 == 3)) {
        _49 = _82;
        _50 = _83;
        _51 = _84;
        _52 = _88;
        __loop_jump_target = 48;
        break;
      }
      _101 = WaveReadLaneFirst(_materialIndex);
      _109 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)(select(((uint)_101 < (uint)170000), _101, 0)) + 0u))].BindlessParameters_PostProcessCameraLensRain._rainUTiling);
      _111 = WaveReadLaneFirst(_materialIndex);
      _119 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)(select(((uint)_111 < (uint)170000), _111, 0)) + 0u))].BindlessParameters_PostProcessCameraLensRain._rainVTiling);
      _121 = WaveReadLaneFirst(_materialIndex);
      _129 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)(select(((uint)_121 < (uint)170000), _121, 0)) + 0u))].BindlessParameters_PostProcessCameraLensRain._rainMaskTexture);
      _136 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_129 < (uint)65000), _129, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_109 * TEXCOORD.x), (_119 * TEXCOORD.y)));
      _144 = (_136.y * ((_82 * 12.82451057434082f) - _23.x)) + _23.x;
      _145 = (_136.y * ((_83 * 12.82451057434082f) - _23.y)) + _23.y;
      _146 = (_136.y * ((_84 * 12.82451057434082f) - _23.z)) + _23.z;
      _147 = uint(SV_Position.y);
      if (_etcParams.y == 1.0f) {
        _160 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _147, 0)))).x) & 127)))) + 0.5f);
      } else {
        _160 = 1.0f;
      }
      _163 = (_localToneMappingParams.w > 0.0f);
      if (_163) {
        // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
        // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
        float3 _rndx_tonemapped_color = TonemapReplacer(float3(_144, _145, _146));
        _423 = _rndx_tonemapped_color.x;
        _424 = _rndx_tonemapped_color.y;
        _425 = _rndx_tonemapped_color.z;
        // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
        if (_etcParams.z == 0.0f) {
          _431 = 1.0f - abs(_etcParams.w);
          _435 = saturate(_etcParams.w);  // [sem: expr_sat]
          _436 = (_431 * _423) + _435;
          _437 = (_431 * _424) + _435;
          _438 = (_431 * _425) + _435;
          if (_colorGradingParams.w > 0.0f) {
            _443 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
            _460 = (((max(0.0f, (1.0f - _436)) - _436) * _443) + _436);
            _461 = (((max(0.0f, (1.0f - _437)) - _437) * _443) + _437);
            _462 = (((max(0.0f, (1.0f - _438)) - _438) * _443) + _438);
          } else {
            _460 = _436;
            _461 = _437;
            _462 = _438;
          }
          _468 = _userImageAdjust.y + 1.0f;
          _472 = _userImageAdjust.x + 0.5f;
          _473 = ((_460 + -0.5f) * _468) + _472;
          _474 = ((_461 + -0.5f) * _468) + _472;
          _475 = ((_462 + -0.5f) * _468) + _472;
          _505 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
          _516 = exp2(log2(saturate(mad(_colorBlind0.z, _475, mad(_colorBlind0.y, _474, (_colorBlind0.x * _473))))) * _505);
          _517 = exp2(log2(saturate(mad(_colorBlind1.z, _475, mad(_colorBlind1.y, _474, (_colorBlind1.x * _473))))) * _505);
          _518 = exp2(log2(saturate(mad(_colorBlind2.z, _475, mad(_colorBlind2.y, _474, (_colorBlind2.x * _473))))) * _505);
        } else {
          _516 = _423;
          _517 = _424;
          _518 = _425;
        }
      } else {
        _516 = _144;
        _517 = _145;
        _518 = _146;
      }
      if (_etcParams.y > 1.0f) {
        _527 = abs((TEXCOORD.x * 2.0f) + -1.0f);
        _528 = abs((TEXCOORD.y * 2.0f) + -1.0f);
        // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
        // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
        float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
        if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
          _rndx_vignette_strength *= CUSTOM_VIGNETTE;
        }
        _532 = saturate(1.0f - (dot(float2(_527, _528), float2(_527, _528)) * _rndx_vignette_strength));  // [sem: expr_sat]
        // RenoDX: <<< [Patch: PostProcessMaterialVignette]
        _537 = (_532 * _516);
        _538 = (_532 * _517);
        _539 = (_532 * _518);
      } else {
        _537 = _516;
        _538 = _517;
        _539 = _518;
      }
      if (_163 && (_etcParams.z > 0.0f)) {
        _569 = select((_537 <= 0.0031308000907301903f), (_537 * 12.920000076293945f), (((pow(_537, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
        _570 = select((_538 <= 0.0031308000907301903f), (_538 * 12.920000076293945f), (((pow(_538, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
        _571 = select((_539 <= 0.0031308000907301903f), (_539 * 12.920000076293945f), (((pow(_539, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
      } else {
        _569 = _537;
        _570 = _538;
        _571 = _539;
      }
      if (!(!(_etcParams.y >= 1.0f))) {
        _576 = (float)((uint)_147);
        if (!(_576 < _viewDir.w)) {
          if (!(_576 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
            _585 = _569;
            _586 = _570;
            _587 = _571;
          } else {
            _585 = 0.0f;
            _586 = 0.0f;
            _587 = 0.0f;
          }
        } else {
          _585 = 0.0f;
          _586 = 0.0f;
          _587 = 0.0f;
        }
      } else {
        _585 = _569;
        _586 = _570;
        _587 = _571;
      }
      // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
      // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
      if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
        float3 _rndx_final_color = FinalizeSDR(float3(_585, _586, _587), _sunDirection.y, _moonDirection.y);
        _585 = _rndx_final_color.x;
        _586 = _rndx_final_color.y;
        _587 = _rndx_final_color.z;
      }
      // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
      SV_Target.x = _585;
      SV_Target.y = _586;
      SV_Target.z = _587;
      SV_Target.w = _160;
      break;
    }
    if (__loop_jump_target == 48) {
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
