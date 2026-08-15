struct PostProcessHousingStruct {
  float _ratio;
  float3 _pivotPosition;
  float4 _rectMinMax;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

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

struct BindlessParameters_PostProcessHousing {
  PostProcessHousingStruct BindlessParameters_PostProcessHousing;
};

typedef BindlessParameters_PostProcessHousing BindlessParameters_PostProcessHousing_t;
ConstantBuffer<BindlessParameters_PostProcessHousing_t> BindlessParameters_PostProcessHousing[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _26;
  float _35;
  float _36;
  float _37;
  float _38;
  float _66;
  float _67;
  float _68;
  float _69;
  float _71;
  float _72;
  float _74;
  int _75;
  float _85;
  float _86;
  float _87;
  int _88;
  float _99;
  float _100;
  float _101;
  float _102;
  float _134;
  float _135;
  float _136;
  float _150;
  float _355;
  float _356;
  float _357;
  float _450;
  float _451;
  float _452;
  float _506;
  float _507;
  float _508;
  float _524;
  float _525;
  float _526;
  float _556;
  float _557;
  float _558;
  float _572;
  float _573;
  float _574;
  bool _129;
  uint _137;
  bool _153;
  float _159;
  float _208;
  float _209;
  float _210;
  float _212;
  float _219;
  float _220;
  float _221;
  float _240;
  float _241;
  float _242;
  float _243;
  float _244;
  float _245;
  float _246;
  float _247;
  float _248;
  float _294;
  float _295;
  float _296;
  float _297;
  float _298;
  float _299;
  float _300;
  float _317;
  float _318;
  float _319;
  float _320;
  float _326;
  float _329;
  float _336;
  float _337;
  float _338;
  float _367;
  float _392;
  float _393;
  float _394;
  float _413;
  float _414;
  float _415;
  float _421;
  float _425;
  float _426;
  float _427;
  float _428;
  float _433;
  float _458;
  float _462;
  float _463;
  float _464;
  float _465;
  float _495;
  float _514;
  float _515;
  float _519;
  float _563;
  _26 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _35 = (TEXCOORD.x * 2.0f) + -1.0f;
  _36 = TEXCOORD.y * 2.0f;
  _37 = 1.0f - _36;
  _38 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
  _66 = mad((_invViewProj[3].z), _38, mad((_invViewProj[3].y), _37, ((_invViewProj[3].x) * _35))) + (_invViewProj[3].w);
  _67 = (mad((_invViewProj[0].z), _38, mad((_invViewProj[0].y), _37, ((_invViewProj[0].x) * _35))) + (_invViewProj[0].w)) / _66;
  _68 = (mad((_invViewProj[2].z), _38, mad((_invViewProj[2].y), _37, ((_invViewProj[2].x) * _35))) + (_invViewProj[2].w)) / _66;
  _69 = abs(_67);
  _71 = frac(abs(_69));
  _72 = abs(_68);
  _74 = frac(abs(_72));
  _75 = WaveReadLaneFirst(_materialIndex);
  _85 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing[((int)((uint)((uint)(select(((uint)_75 < (uint)170000), _75, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing._pivotPosition.x);
  _86 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing[((int)((uint)((uint)(select(((uint)_75 < (uint)170000), _75, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing._pivotPosition.y);
  _87 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing[((int)((uint)((uint)(select(((uint)_75 < (uint)170000), _75, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing._pivotPosition.z);
  _88 = WaveReadLaneFirst(_materialIndex);
  _99 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing[((int)((uint)((uint)(select(((uint)_88 < (uint)170000), _88, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing._rectMinMax.x);
  _100 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing[((int)((uint)((uint)(select(((uint)_88 < (uint)170000), _88, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing._rectMinMax.y);
  _101 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing[((int)((uint)((uint)(select(((uint)_88 < (uint)170000), _88, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing._rectMinMax.z);
  _102 = WaveReadLaneFirst(BindlessParameters_PostProcessHousing[((int)((uint)((uint)(select(((uint)_88 < (uint)170000), _88, 0))) + (uint)(0)))].BindlessParameters_PostProcessHousing._rectMinMax.w);
  if (((_67 > (_99 + _85)) && (_68 > (_100 + _87))) && (_67 < (_101 + _85))) {
    _129 = (_68 < (_102 + _87)) && ((abs(1.0f - select((_72 >= (-0.0f - _72)), _74, (-0.0f - _74))) < 0.03125f) || (abs(1.0f - select((_69 >= (-0.0f - _69)), _71, (-0.0f - _71))) < 0.03125f));
    _134 = select(_129, 256.0f, _26.x);
    _135 = select(_129, 256.0f, _26.y);
    _136 = select(_129, 256.0f, _26.z);
  } else {
    _134 = _26.x;
    _135 = _26.y;
    _136 = _26.z;
  }
  _137 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _150 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _137, 0)))).x) & 127)))) + 0.5f);
  } else {
    _150 = _postProcessParams.x;
  }
  _153 = (_localToneMappingParams.w > 0.0f);
  if (_153) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_134, _135, _136));
    _413 = _rndx_tonemapped_color.x;
    _414 = _rndx_tonemapped_color.y;
    _415 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _421 = 1.0f - abs(_etcParams.w);
      _425 = saturate(_etcParams.w);  // [sem: expr_sat]
      _426 = (_421 * _413) + _425;
      _427 = (_421 * _414) + _425;
      _428 = (_421 * _415) + _425;
      if (_colorGradingParams.w > 0.0f) {
        _433 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _450 = (((max(0.0f, (1.0f - _426)) - _426) * _433) + _426);
        _451 = (((max(0.0f, (1.0f - _427)) - _427) * _433) + _427);
        _452 = (((max(0.0f, (1.0f - _428)) - _428) * _433) + _428);
      } else {
        _450 = _426;
        _451 = _427;
        _452 = _428;
      }
      _458 = _userImageAdjust.y + 1.0f;
      _462 = _userImageAdjust.x + 0.5f;
      _463 = ((_450 + -0.5f) * _458) + _462;
      _464 = ((_451 + -0.5f) * _458) + _462;
      _465 = ((_452 + -0.5f) * _458) + _462;
      _495 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _506 = exp2(log2(saturate(mad(_colorBlind0.z, _465, mad(_colorBlind0.y, _464, (_colorBlind0.x * _463))))) * _495);
      _507 = exp2(log2(saturate(mad(_colorBlind1.z, _465, mad(_colorBlind1.y, _464, (_colorBlind1.x * _463))))) * _495);
      _508 = exp2(log2(saturate(mad(_colorBlind2.z, _465, mad(_colorBlind2.y, _464, (_colorBlind2.x * _463))))) * _495);
    } else {
      _506 = _413;
      _507 = _414;
      _508 = _415;
    }
  } else {
    _506 = _134;
    _507 = _135;
    _508 = _136;
  }
  if (_etcParams.y > 1.0f) {
    _514 = abs(_35);
    _515 = abs(_36 + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _519 = saturate(1.0f - (dot(float2(_514, _515), float2(_514, _515)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _524 = (_519 * _506);
    _525 = (_519 * _507);
    _526 = (_519 * _508);
  } else {
    _524 = _506;
    _525 = _507;
    _526 = _508;
  }
  if (_153 && (_etcParams.z > 0.0f)) {
    _556 = select((_524 <= 0.0031308f), (_524 * 12.92f), (((pow(_524, 0.41666666f)) * 1.055f) + -0.055f));
    _557 = select((_525 <= 0.0031308f), (_525 * 12.92f), (((pow(_525, 0.41666666f)) * 1.055f) + -0.055f));
    _558 = select((_526 <= 0.0031308f), (_526 * 12.92f), (((pow(_526, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _556 = _524;
    _557 = _525;
    _558 = _526;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _563 = (float)((uint)((uint)(_137)));
    if (!(_563 < _viewDir.w)) {
      if (!(_563 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _572 = _556;
        _573 = _557;
        _574 = _558;
      } else {
        _572 = 0.0f;
        _573 = 0.0f;
        _574 = 0.0f;
      }
    } else {
      _572 = 0.0f;
      _573 = 0.0f;
      _574 = 0.0f;
    }
  } else {
    _572 = _556;
    _573 = _557;
    _574 = _558;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_572, _573, _574), _sunDirection.y, _moonDirection.y);
    _572 = _rndx_final_color.x;
    _573 = _rndx_final_color.y;
    _574 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _572;
  SV_Target.y = _573;
  SV_Target.z = _574;
  SV_Target.w = _150;
  return SV_Target;
}
