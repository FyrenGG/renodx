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
        // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
        // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
        float3 _rndx_tonemapped_color = TonemapReplacer(float3(_148, _152, _156));
        _421 = _rndx_tonemapped_color.x;
        _428 = _rndx_tonemapped_color.y;
        _435 = _rndx_tonemapped_color.z;
        // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
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
        // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
        // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
        float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
        if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
          _rndx_vignette_strength *= CUSTOM_VIGNETTE;
        }
        _542 = saturate(1.0f - (dot(float2(_533, _536), float2(_533, _536)) * _rndx_vignette_strength));  // [sem: expr_sat]
        // RenoDX: <<< [Patch: PostProcessMaterialVignette]
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
      // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
      // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
      if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
        float3 _rndx_final_color = FinalizeSDR(float3(_595, _596, _597), _sunDirection.y, _moonDirection.y);
        _595 = _rndx_final_color.x;
        _596 = _rndx_final_color.y;
        _597 = _rndx_final_color.z;
      }
      // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
    SV_Target.x = _595;
    SV_Target.y = _596;
    SV_Target.z = _597;
    SV_Target.w = _170;
    break;
  }
  return SV_Target;
}
