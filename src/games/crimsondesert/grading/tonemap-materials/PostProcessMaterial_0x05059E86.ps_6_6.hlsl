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

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

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

// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Reuses this shader's native SceneConstantBuffer time field, imports the shared tonemap declarations consumed by the material grading path, and begins suppressing the duplicate native exposure declaration.
#define RENODX_TONEMAP_EXTERNAL_SCENE_CONSTANT_BUFFER 1
#define RENODX_TONEMAP_SCENE_TIME_W _time.w
#include "../tonemap.hlsli"
#if 0 // Provided by tonemap.hlsli
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Closes suppression of the native ExposureConstantBuffer so any intervening unrelated native declarations remain live.
#endif
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Begins suppressing native GlobalPushConstants because tonemap.hlsli provides the ABI-compatible live declaration consumed by the material grading path.
#if 0 // Provided by tonemap.hlsli
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
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
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Closes suppression of native GlobalPushConstants so the following unrelated native declarations remain live.
#endif
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
};

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Begins suppressing the native ColorBlindConstantBuffer because tonemap.hlsli provides the ABI-compatible live declaration used by the material grading path.
#if 0 // Provided by tonemap.hlsli
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Closes suppression of the native ColorBlindConstantBuffer so all following native declarations compile normally.
#endif
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

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

static const float _global_0[5] = { 0.054712083f, 0.05641284f, 0.056991428f, 0.05641284f, 0.054712083f };

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
  _47 = 1.0f - (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(((float)((int)((int)(_srcTargetSizeAndInv.x * TEXCOORD.x)))) * _customRenderPassSizeInvSize.x)), ((int)(((float)((int)((int)(_srcTargetSizeAndInv.y * TEXCOORD.y)))) * _customRenderPassSizeInvSize.y)), 0)))).x);
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
      _64 = (_global_0[min((uint)(((int)(_52) + (int)(2))), 4u)]) * (_global_0[min((uint)(((int)(_57) + (int)(2))), 4u)]);
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _75 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((((_47 * _destTargetSizAndInv.z) * ((float)((int)(_52)))) + TEXCOORD.x), (((_47 * _destTargetSizAndInv.w) * ((float)((int)(_57)))) + TEXCOORD.y)));
      _82 = (_75.x * _64) + _54;
      _83 = (_75.y * _64) + _55;
      _84 = (_75.z * _64) + _56;
      _85 = (int)(_57) + (int)(1);
      if (!(_85 == 3)) {
        _54 = _82;
        _55 = _83;
        _56 = _84;
        _57 = _85;
        continue;
      }
      _88 = (int)(_52) + (int)(1);
      if (!(_88 == 3)) {
        _49 = _82;
        _50 = _83;
        _51 = _84;
        _52 = _88;
        __loop_jump_target = 48;
        break;
      }
      _101 = WaveReadLaneFirst(_materialIndex);
      _109 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_101 < (uint)170000), _101, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainUTiling);
      _111 = WaveReadLaneFirst(_materialIndex);
      _119 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_111 < (uint)170000), _111, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainVTiling);
      _121 = WaveReadLaneFirst(_materialIndex);
      _129 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_121 < (uint)170000), _121, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainMaskTexture);
      _136 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_129 < (uint)65000), _129, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_109 * TEXCOORD.x), (_119 * TEXCOORD.y)));
      _144 = (_136.y * ((_82 * 12.824511f) - _23.x)) + _23.x;
      _145 = (_136.y * ((_83 * 12.824511f) - _23.y)) + _23.y;
      _146 = (_136.y * ((_84 * 12.824511f) - _23.z)) + _23.z;
      _147 = (uint)(SV_Position.y);
      if (_etcParams.y == 1.0f) {
        _160 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _147, 0)))).x) & 127)))) + 0.5f);
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
          _505 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
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
        _569 = select((_537 <= 0.0031308f), (_537 * 12.92f), (((pow(_537, 0.41666666f)) * 1.055f) + -0.055f));
        _570 = select((_538 <= 0.0031308f), (_538 * 12.92f), (((pow(_538, 0.41666666f)) * 1.055f) + -0.055f));
        _571 = select((_539 <= 0.0031308f), (_539 * 12.92f), (((pow(_539, 0.41666666f)) * 1.055f) + -0.055f));
      } else {
        _569 = _537;
        _570 = _538;
        _571 = _539;
      }
      if (!(!(_etcParams.y >= 1.0f))) {
        _576 = (float)((uint)((uint)(_147)));
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
