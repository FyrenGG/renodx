struct PostProcessOutlineExampleStruct {
  uint _outlineColor;
  float _outlineSize;
};

struct BindlessParameters_PostProcessOutlineExample {
  PostProcessOutlineExampleStruct BindlessParameters_PostProcessOutlineExample;
};


Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t64, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t38, space36);

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

typedef BindlessParameters_PostProcessOutlineExample BindlessParameters_PostProcessOutlineExample_t;
ConstantBuffer<BindlessParameters_PostProcessOutlineExample_t> BindlessParameters_PostProcessOutlineExample[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _23;
  uint2 _28;
  float _123;
  float _124;
  float _125;
  float _139;
  float _344;
  float _345;
  float _346;
  float _439;
  float _440;
  float _441;
  float _495;
  float _496;
  float _497;
  float _516;
  float _517;
  float _518;
  float _548;
  float _549;
  float _550;
  float _564;
  float _565;
  float _566;
  float4 _49;
  int _71;
  int _79;
  float _82;
  float _85;
  float _87;
  float _88;
  uint _126;
  bool _142;
  float _148;
  float _167;
  float _183;
  float _199;
  float _200;
  float _204;
  float _207;
  float _210;
  float _217;
  float _224;
  float _231;
  float _232;
  float _233;
  float _234;
  float _235;
  float _236;
  float _237;
  float _253;
  float _269;
  float _285;
  float _286;
  float _287;
  float _288;
  float _289;
  float _306;
  float _307;
  float _308;
  float _309;
  float _312;
  float _315;
  float _319;
  float _323;
  float _327;
  float _347;
  float _359;
  float _371;
  float _383;
  float _390;
  float _397;
  float _404;
  float _410;
  float _411;
  float _413;
  float _415;
  float _417;
  float _422;
  float _443;
  float _445;
  float _448;
  float _451;
  float _454;
  float _460;
  float _502;
  float _505;
  float _511;
  float _553;
  _23 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_28.x, _28.y);
  if (!(((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_28.x))))))) + 0.5f) * TEXCOORD.x)), ((int)((((float)((int)((int)((float)((int)((int)(_28.y))))))) + 0.5f) * TEXCOORD.y)), 0)))).x) & 255) == 30)) {
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _49 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    if (!(!((((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f))), 0)))).x) & 16777215)))) * 5.960465e-08f) <= _49.y))) {
      _71 = WaveReadLaneFirst(_materialIndex);
      _79 = WaveReadLaneFirst(BindlessParameters_PostProcessOutlineExample[((int)((uint)((uint)(select(((uint)_71 < (uint)170000), _71, 0))) + (uint)(0)))].BindlessParameters_PostProcessOutlineExample._outlineColor);
      _82 = (float)((uint)((uint)(((uint)((uint)(_79)) >> 16) & 255)));
      _85 = (float)((uint)((uint)(((uint)((uint)(_79)) >> 8) & 255)));
      _87 = (float)((uint)((uint)(_79 & 255)));
      _88 = _49.x * 100.0f;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _123 = ((select(((_87 * 0.003921569f) < 0.04045f), (_87 * 0.000303527f), exp2(log2((_87 * 0.003717127f) + 0.052132703f) * 2.4f)) * _88) + _23.z);
      _124 = ((select(((_85 * 0.003921569f) < 0.04045f), (_85 * 0.000303527f), exp2(log2((_85 * 0.003717127f) + 0.052132703f) * 2.4f)) * _88) + _23.y);
      _125 = ((select(((_82 * 0.003921569f) < 0.04045f), (_82 * 0.000303527f), exp2(log2((_82 * 0.003717127f) + 0.052132703f) * 2.4f)) * _88) + _23.x);
    } else {
      _123 = _23.z;
      _124 = _23.y;
      _125 = _23.x;
    }
  } else {
    _123 = _23.z;
    _124 = _23.y;
    _125 = _23.x;
  }
  _126 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _139 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _126, 0)))).x) & 127)))) + 0.5f);
  } else {
    _139 = 1.0f;
  }
  _142 = (_localToneMappingParams.w > 0.0f);
  if (_142) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_125, _124, _123));
    _390 = _rndx_tonemapped_color.x;
    _397 = _rndx_tonemapped_color.y;
    _404 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _410 = 1.0f - abs(_etcParams.w);
      _411 = saturate(_etcParams.w);  // [sem: expr_sat]
      _413 = (_410 * _390) + _411;
      _415 = (_410 * _397) + _411;
      _417 = (_410 * _404) + _411;
      if (_colorGradingParams.w > 0.0f) {
        _422 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _439 = (((max(0.0f, (1.0f - _417)) - _417) * _422) + _417);
        _440 = (((max(0.0f, (1.0f - _415)) - _415) * _422) + _415);
        _441 = (((max(0.0f, (1.0f - _413)) - _413) * _422) + _413);
      } else {
        _439 = _417;
        _440 = _415;
        _441 = _413;
      }
      _443 = _userImageAdjust.y + 1.0f;
      _445 = _userImageAdjust.x + 0.5f;
      _448 = ((_441 + -0.5f) * _443) + _445;
      _451 = ((_440 + -0.5f) * _443) + _445;
      _454 = ((_439 + -0.5f) * _443) + _445;
      _460 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _495 = exp2(log2(saturate(mad(_colorBlind2.z, _454, mad(_colorBlind2.y, _451, (_colorBlind2.x * _448))))) * _460);
      _496 = exp2(log2(saturate(mad(_colorBlind1.z, _454, mad(_colorBlind1.y, _451, (_colorBlind1.x * _448))))) * _460);
      _497 = exp2(log2(saturate(mad(_colorBlind0.z, _454, mad(_colorBlind0.y, _451, (_colorBlind0.x * _448))))) * _460);
    } else {
      _495 = _404;
      _496 = _397;
      _497 = _390;
    }
  } else {
    _495 = _123;
    _496 = _124;
    _497 = _125;
  }
  if (_etcParams.y > 1.0f) {
    _502 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _505 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _511 = saturate(1.0f - (dot(float2(_502, _505), float2(_502, _505)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _516 = (_511 * _495);
    _517 = (_511 * _496);
    _518 = (_511 * _497);
  } else {
    _516 = _495;
    _517 = _496;
    _518 = _497;
  }
  if (_142 && (_etcParams.z > 0.0f)) {
    _548 = select((_516 <= 0.0031308f), (_516 * 12.92f), (((pow(_516, 0.41666666f)) * 1.055f) + -0.055f));
    _549 = select((_517 <= 0.0031308f), (_517 * 12.92f), (((pow(_517, 0.41666666f)) * 1.055f) + -0.055f));
    _550 = select((_518 <= 0.0031308f), (_518 * 12.92f), (((pow(_518, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _548 = _516;
    _549 = _517;
    _550 = _518;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _553 = (float)((uint)((uint)(_126)));
    if (!(_553 < _viewDir.w)) {
      if (!(!(_553 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _564 = 0.0f;
        _565 = 0.0f;
        _566 = 0.0f;
      } else {
        _564 = _550;
        _565 = _549;
        _566 = _548;
      }
    } else {
      _564 = 0.0f;
      _565 = 0.0f;
      _566 = 0.0f;
    }
  } else {
    _564 = _550;
    _565 = _549;
    _566 = _548;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_564, _565, _566), _sunDirection.y, _moonDirection.y);
    _564 = _rndx_final_color.x;
    _565 = _rndx_final_color.y;
    _566 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _564;
  SV_Target.y = _565;
  SV_Target.z = _566;
  SV_Target.w = _139;
  return SV_Target;
}
