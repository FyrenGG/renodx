Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t38, space36);

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
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Reuses this shader's native SceneConstantBuffer time field, imports the shared tonemap declarations consumed by its PostProcessMaterial patches, and begins suppressing the duplicate native exposure declaration.
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
  float _25;
  float _29;
  float _40;
  int _42;
  float _43;
  float _44;
  float _45;
  int _47;
  float _48;
  float _49;
  float _50;
  float _137;
  float _342;
  float _343;
  float _344;
  float _437;
  float _438;
  float _439;
  float _493;
  float _494;
  float _495;
  float _514;
  float _515;
  float _516;
  float _546;
  float _547;
  float _548;
  float _562;
  float _563;
  float _564;
  float _59;
  float4 _73;
  float _78;
  float _80;
  float _82;
  int _83;
  int _86;
  uint2 _96;
  bool _114;
  float _117;
  float _120;
  float _123;
  uint _124;
  bool _140;
  float _146;
  float _165;
  float _181;
  float _197;
  float _198;
  float _202;
  float _205;
  float _208;
  float _215;
  float _222;
  float _229;
  float _230;
  float _231;
  float _232;
  float _233;
  float _234;
  float _235;
  float _251;
  float _267;
  float _283;
  float _284;
  float _285;
  float _286;
  float _287;
  float _304;
  float _305;
  float _306;
  float _307;
  float _310;
  float _313;
  float _317;
  float _321;
  float _325;
  float _345;
  float _357;
  float _369;
  float _381;
  float _388;
  float _395;
  float _402;
  float _408;
  float _409;
  float _411;
  float _413;
  float _415;
  float _420;
  float _441;
  float _443;
  float _446;
  float _449;
  float _452;
  float _458;
  float _500;
  float _503;
  float _509;
  float _551;
  int __loop_jump_target = -1;
  _19 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _25 = (float)((int)((int)(_bufferSizeAndInvSize.x * TEXCOORD.x)));
  _29 = (float)((int)((int)(_bufferSizeAndInvSize.y * TEXCOORD.y)));
  _40 = 1.0f - (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_25 * _customRenderPassSizeInvSize.x)), ((int)(_29 * _customRenderPassSizeInvSize.y)), 0)))).x);
  _42 = -6;
  _43 = 0.0f;
  _44 = 0.0f;
  _45 = 0.0f;
  while(true) {
    _47 = -6;
    _48 = _43;
    _49 = _44;
    _50 = _45;
    while(true) {
      _59 = (_global_0[((int)min((uint)(((int)(_47) + (int)(6))), (uint)(12)))]) * (_global_0[((int)min((uint)(((int)(_42) + (int)(6))), (uint)(12)))]);
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _73 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((((((float)((int)(_42))) * _40) * _srcTargetSizeAndInv.z) + TEXCOORD.x), (((((float)((int)(_47))) * _40) * _srcTargetSizeAndInv.w) + TEXCOORD.y)));
      _78 = (_73.x * _59) + _50;
      _80 = (_73.y * _59) + _49;
      _82 = (_73.z * _59) + _48;
      _83 = (int)(_47) + (int)(1);
      if (!(_83 == 7)) {
        _47 = _83;
        _48 = _82;
        _49 = _80;
        _50 = _78;
        continue;
      }
      _86 = (int)(_42) + (int)(1);
      if (!(_86 == 7)) {
        _42 = _86;
        _43 = _82;
        _44 = _80;
        _45 = _78;
        __loop_jump_target = 41;
        break;
      }
      __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_96.x, _96.y);
      _114 = (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_96.x))))))) + 0.5f) * _25)), ((int)((((float)((int)((int)((float)((int)((int)(_96.y))))))) + 0.5f) * _29)), 0)))).x) & 255) != 30);
      _117 = select(_114, ((_78 * 56493.91f) + _19.x), _19.x);
      _120 = select(_114, ((_80 * 56493.91f) + _19.y), _19.y);
      _123 = select(_114, ((_82 * 56493.91f) + _19.z), _19.z);
      _124 = (uint)(SV_Position.y);
      if (_etcParams.y == 1.0f) {
        _137 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _124, 0)))).x) & 127)))) + 0.5f);
      } else {
        _137 = 1.0f;
      }
      _140 = (_localToneMappingParams.w > 0.0f);
      if (_140) {
        // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
        // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
        float3 _rndx_tonemapped_color = TonemapReplacer(float3(_117, _120, _123));
        _388 = _rndx_tonemapped_color.x;
        _395 = _rndx_tonemapped_color.y;
        _402 = _rndx_tonemapped_color.z;
        // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
        if (_etcParams.z == 0.0f) {
          _408 = 1.0f - abs(_etcParams.w);
          _409 = saturate(_etcParams.w);  // [sem: expr_sat]
          _411 = (_408 * _388) + _409;
          _413 = (_408 * _395) + _409;
          _415 = (_408 * _402) + _409;
          if (_colorGradingParams.w > 0.0f) {
            _420 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
            _437 = (((max(0.0f, (1.0f - _415)) - _415) * _420) + _415);
            _438 = (((max(0.0f, (1.0f - _413)) - _413) * _420) + _413);
            _439 = (((max(0.0f, (1.0f - _411)) - _411) * _420) + _411);
          } else {
            _437 = _415;
            _438 = _413;
            _439 = _411;
          }
          _441 = _userImageAdjust.y + 1.0f;
          _443 = _userImageAdjust.x + 0.5f;
          _446 = ((_439 + -0.5f) * _441) + _443;
          _449 = ((_438 + -0.5f) * _441) + _443;
          _452 = ((_437 + -0.5f) * _441) + _443;
          _458 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
          _493 = exp2(log2(saturate(mad(_colorBlind2.z, _452, mad(_colorBlind2.y, _449, (_colorBlind2.x * _446))))) * _458);
          _494 = exp2(log2(saturate(mad(_colorBlind1.z, _452, mad(_colorBlind1.y, _449, (_colorBlind1.x * _446))))) * _458);
          _495 = exp2(log2(saturate(mad(_colorBlind0.z, _452, mad(_colorBlind0.y, _449, (_colorBlind0.x * _446))))) * _458);
        } else {
          _493 = _402;
          _494 = _395;
          _495 = _388;
        }
      } else {
        _493 = _123;
        _494 = _120;
        _495 = _117;
      }
      if (_etcParams.y > 1.0f) {
        _500 = abs((TEXCOORD.x * 2.0f) + -1.0f);
        _503 = abs((TEXCOORD.y * 2.0f) + -1.0f);
        // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
        // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
        float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
        if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
          _rndx_vignette_strength *= CUSTOM_VIGNETTE;
        }
        _509 = saturate(1.0f - (dot(float2(_500, _503), float2(_500, _503)) * _rndx_vignette_strength));  // [sem: expr_sat]
        // RenoDX: <<< [Patch: PostProcessMaterialVignette]
        _514 = (_509 * _493);
        _515 = (_509 * _494);
        _516 = (_509 * _495);
      } else {
        _514 = _493;
        _515 = _494;
        _516 = _495;
      }
      if (_140 && (_etcParams.z > 0.0f)) {
        _546 = select((_515 <= 0.0031308f), (_515 * 12.92f), (((pow(_515, 0.41666666f)) * 1.055f) + -0.055f));
        _547 = select((_516 <= 0.0031308f), (_516 * 12.92f), (((pow(_516, 0.41666666f)) * 1.055f) + -0.055f));
        _548 = select((_514 <= 0.0031308f), (_514 * 12.92f), (((pow(_514, 0.41666666f)) * 1.055f) + -0.055f));
      } else {
        _546 = _515;
        _547 = _516;
        _548 = _514;
      }
      if (!(!(_etcParams.y >= 1.0f))) {
        _551 = (float)((uint)((uint)(_124)));
        if (!(_551 < _viewDir.w)) {
          if (!(!(_551 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
            _562 = 0.0f;
            _563 = 0.0f;
            _564 = 0.0f;
          } else {
            _562 = _547;
            _563 = _546;
            _564 = _548;
          }
        } else {
          _562 = 0.0f;
          _563 = 0.0f;
          _564 = 0.0f;
        }
      } else {
        _562 = _547;
        _563 = _546;
        _564 = _548;
      }
      // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
      // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
      if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
        float3 _rndx_final_color = FinalizeSDR(float3(_562, _563, _564), _sunDirection.y, _moonDirection.y);
        _562 = _rndx_final_color.x;
        _563 = _rndx_final_color.y;
        _564 = _rndx_final_color.z;
      }
      // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
      SV_Target.x = _562;
      SV_Target.y = _563;
      SV_Target.z = _564;
      SV_Target.w = _137;
      break;
    }
    if (__loop_jump_target == 41) {
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
