Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t70, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t71, space36);

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
  float _28;
  float _29;
  float _43;
  float _45;
  float _46;
  float _47;
  int _48;
  float _50;
  float _51;
  float _52;
  int _53;
  float _135;
  float _340;
  float _341;
  float _342;
  float _435;
  float _436;
  float _437;
  float _491;
  float _492;
  float _493;
  float _512;
  float _513;
  float _514;
  float _544;
  float _545;
  float _546;
  float _560;
  float _561;
  float _562;
  float _60;
  float4 _71;
  float _78;
  float _79;
  float _80;
  int _81;
  int _84;
  uint2 _97;
  bool _115;
  float _119;
  float _120;
  float _121;
  uint _122;
  bool _138;
  float _144;
  float _193;
  float _194;
  float _195;
  float _197;
  float _204;
  float _205;
  float _206;
  float _225;
  float _226;
  float _227;
  float _228;
  float _229;
  float _230;
  float _231;
  float _232;
  float _233;
  float _279;
  float _280;
  float _281;
  float _282;
  float _283;
  float _284;
  float _285;
  float _302;
  float _303;
  float _304;
  float _305;
  float _311;
  float _314;
  float _321;
  float _322;
  float _323;
  float _352;
  float _377;
  float _378;
  float _379;
  float _398;
  float _399;
  float _400;
  float _406;
  float _410;
  float _411;
  float _412;
  float _413;
  float _418;
  float _443;
  float _447;
  float _448;
  float _449;
  float _450;
  float _480;
  float _502;
  float _503;
  float _507;
  float _551;
  int __loop_jump_target = -1;
  _19 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _28 = (float)((int)((int)(_bufferSizeAndInvSize.x * TEXCOORD.x)));
  _29 = (float)((int)((int)(_bufferSizeAndInvSize.y * TEXCOORD.y)));
  _43 = 1.0f - (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_28 * _customRenderPassSizeInvSize.x)), ((int)(_29 * _customRenderPassSizeInvSize.y)), 0)))).x);
  _45 = 0.0f;
  _46 = 0.0f;
  _47 = 0.0f;
  _48 = -6;
  while(true) {
    _50 = _45;
    _51 = _46;
    _52 = _47;
    _53 = -6;
    while(true) {
      _60 = (_global_0[min((uint)(((int)(_48) + (int)(6))), 12u)]) * (_global_0[min((uint)(((int)(_53) + (int)(6))), 12u)]);
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _71 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((((_43 * _srcTargetSizeAndInv.z) * ((float)((int)(_48)))) + TEXCOORD.x), (((_43 * _srcTargetSizeAndInv.w) * ((float)((int)(_53)))) + TEXCOORD.y)));
      _78 = (_71.x * _60) + _50;
      _79 = (_71.y * _60) + _51;
      _80 = (_71.z * _60) + _52;
      _81 = (int)(_53) + (int)(1);
      if (!(_81 == 7)) {
        _50 = _78;
        _51 = _79;
        _52 = _80;
        _53 = _81;
        continue;
      }
      _84 = (int)(_48) + (int)(1);
      if (!(_84 == 7)) {
        _45 = _78;
        _46 = _79;
        _47 = _80;
        _48 = _84;
        __loop_jump_target = 44;
        break;
      }
      __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_97.x, _97.y);
      _115 = (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_97.x))))))) + 0.5f) * _28)), ((int)((((float)((int)((int)((float)((int)((int)(_97.y))))))) + 0.5f) * _29)), 0)))).x) & 255) != 30);
      _119 = select(_115, ((_78 * 56493.91f) + _19.x), _19.x);
      _120 = select(_115, ((_79 * 56493.91f) + _19.y), _19.y);
      _121 = select(_115, ((_80 * 56493.91f) + _19.z), _19.z);
      _122 = (uint)(SV_Position.y);
      if (_etcParams.y == 1.0f) {
        _135 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _122, 0)))).x) & 127)))) + 0.5f);
      } else {
        _135 = 1.0f;
      }
      _138 = (_localToneMappingParams.w > 0.0f);
      if (_138) {
        // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
        // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
        float3 _rndx_tonemapped_color = TonemapReplacer(float3(_119, _120, _121));
        _398 = _rndx_tonemapped_color.x;
        _399 = _rndx_tonemapped_color.y;
        _400 = _rndx_tonemapped_color.z;
        // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
        if (_etcParams.z == 0.0f) {
          _406 = 1.0f - abs(_etcParams.w);
          _410 = saturate(_etcParams.w);  // [sem: expr_sat]
          _411 = (_406 * _398) + _410;
          _412 = (_406 * _399) + _410;
          _413 = (_406 * _400) + _410;
          if (_colorGradingParams.w > 0.0f) {
            _418 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
            _435 = (((max(0.0f, (1.0f - _411)) - _411) * _418) + _411);
            _436 = (((max(0.0f, (1.0f - _412)) - _412) * _418) + _412);
            _437 = (((max(0.0f, (1.0f - _413)) - _413) * _418) + _413);
          } else {
            _435 = _411;
            _436 = _412;
            _437 = _413;
          }
          _443 = _userImageAdjust.y + 1.0f;
          _447 = _userImageAdjust.x + 0.5f;
          _448 = ((_435 + -0.5f) * _443) + _447;
          _449 = ((_436 + -0.5f) * _443) + _447;
          _450 = ((_437 + -0.5f) * _443) + _447;
          _480 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
          _491 = exp2(log2(saturate(mad(_colorBlind0.z, _450, mad(_colorBlind0.y, _449, (_colorBlind0.x * _448))))) * _480);
          _492 = exp2(log2(saturate(mad(_colorBlind1.z, _450, mad(_colorBlind1.y, _449, (_colorBlind1.x * _448))))) * _480);
          _493 = exp2(log2(saturate(mad(_colorBlind2.z, _450, mad(_colorBlind2.y, _449, (_colorBlind2.x * _448))))) * _480);
        } else {
          _491 = _398;
          _492 = _399;
          _493 = _400;
        }
      } else {
        _491 = _119;
        _492 = _120;
        _493 = _121;
      }
      if (_etcParams.y > 1.0f) {
        _502 = abs((TEXCOORD.x * 2.0f) + -1.0f);
        _503 = abs((TEXCOORD.y * 2.0f) + -1.0f);
        // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
        // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
        float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
        if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
          _rndx_vignette_strength *= CUSTOM_VIGNETTE;
        }
        _507 = saturate(1.0f - (dot(float2(_502, _503), float2(_502, _503)) * _rndx_vignette_strength));  // [sem: expr_sat]
        // RenoDX: <<< [Patch: PostProcessMaterialVignette]
        _512 = (_507 * _491);
        _513 = (_507 * _492);
        _514 = (_507 * _493);
      } else {
        _512 = _491;
        _513 = _492;
        _514 = _493;
      }
      if (_138 && (_etcParams.z > 0.0f)) {
        _544 = select((_512 <= 0.0031308f), (_512 * 12.92f), (((pow(_512, 0.41666666f)) * 1.055f) + -0.055f));
        _545 = select((_513 <= 0.0031308f), (_513 * 12.92f), (((pow(_513, 0.41666666f)) * 1.055f) + -0.055f));
        _546 = select((_514 <= 0.0031308f), (_514 * 12.92f), (((pow(_514, 0.41666666f)) * 1.055f) + -0.055f));
      } else {
        _544 = _512;
        _545 = _513;
        _546 = _514;
      }
      if (!(!(_etcParams.y >= 1.0f))) {
        _551 = (float)((uint)((uint)(_122)));
        if (!(_551 < _viewDir.w)) {
          if (!(_551 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
            _560 = _544;
            _561 = _545;
            _562 = _546;
          } else {
            _560 = 0.0f;
            _561 = 0.0f;
            _562 = 0.0f;
          }
        } else {
          _560 = 0.0f;
          _561 = 0.0f;
          _562 = 0.0f;
        }
      } else {
        _560 = _544;
        _561 = _545;
        _562 = _546;
      }
      // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
      // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
      if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
        float3 _rndx_final_color = FinalizeSDR(float3(_560, _561, _562), _sunDirection.y, _moonDirection.y);
        _560 = _rndx_final_color.x;
        _561 = _rndx_final_color.y;
        _562 = _rndx_final_color.z;
      }
      // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
      SV_Target.x = _560;
      SV_Target.y = _561;
      SV_Target.z = _562;
      SV_Target.w = _135;
      break;
    }
    if (__loop_jump_target == 44) {
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
