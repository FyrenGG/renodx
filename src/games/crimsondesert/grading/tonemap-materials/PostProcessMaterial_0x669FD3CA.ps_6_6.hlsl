struct PostProcessFisheye_DistortionStruct {
  float _maxPower;
};

struct BindlessParameters_PostProcessFisheye_Distortion {
  PostProcessFisheye_DistortionStruct BindlessParameters_PostProcessFisheye_Distortion;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

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

typedef BindlessParameters_PostProcessFisheye_Distortion BindlessParameters_PostProcessFisheye_Distortion_t;
ConstantBuffer<BindlessParameters_PostProcessFisheye_Distortion_t> BindlessParameters_PostProcessFisheye_Distortion[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float _25;
  float _29;
  float _31;
  float _32;
  float _33;
  float _34;
  float _35;
  float _36;
  int _39;
  float _47;
  float _86;
  float _87;
  float _109;
  float _314;
  float _315;
  float _316;
  float _409;
  float _410;
  float _411;
  float _465;
  float _466;
  float _467;
  float _486;
  float _487;
  float _488;
  float _518;
  float _519;
  float _520;
  float _534;
  float _535;
  float _536;
  float _51;
  float _55;
  float _60;
  float _62;
  float _76;
  float _78;
  float4 _92;
  uint _96;
  bool _112;
  float _118;
  float _137;
  float _153;
  float _169;
  float _170;
  float _174;
  float _177;
  float _180;
  float _187;
  float _194;
  float _201;
  float _202;
  float _203;
  float _204;
  float _205;
  float _206;
  float _207;
  float _223;
  float _239;
  float _255;
  float _256;
  float _257;
  float _258;
  float _259;
  float _276;
  float _277;
  float _278;
  float _279;
  float _282;
  float _285;
  float _289;
  float _293;
  float _297;
  float _317;
  float _329;
  float _341;
  float _353;
  float _360;
  float _367;
  float _374;
  float _380;
  float _381;
  float _383;
  float _385;
  float _387;
  float _392;
  float _413;
  float _415;
  float _418;
  float _421;
  float _424;
  float _430;
  float _472;
  float _475;
  float _481;
  float _523;
  _25 = (_destTargetSizAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x;
  _29 = (_destTargetSizAndInv.y * (1.0f - TEXCOORD.y)) / _srcTargetSizeAndInv.x;
  _31 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _32 = 0.5f / _31;
  _33 = _25 + -0.5f;
  _34 = _29 - _32;
  _35 = dot(float2(_33, _34), float2(_33, _34));
  _36 = sqrt(_35);
  _39 = WaveReadLaneFirst(_materialIndex);
  _47 = WaveReadLaneFirst(BindlessParameters_PostProcessFisheye_Distortion[((int)((uint)((uint)(select(((uint)_39 < (uint)170000), _39, 0))) + (uint)(0)))].BindlessParameters_PostProcessFisheye_Distortion._maxPower);
  if (_47 > 0.0f) {
    _55 = sqrt(dot(float2(0.5f, _32), float2(0.5f, _32)));
    _60 = tan(_55 * _47);
    _62 = tan(_47 * _36) * (rsqrt(_35) * _55);
    _86 = (((_62 * _34) / _60) + _32);
    _87 = (((_62 * _33) / _60) + 0.5f);
  } else {
    _51 = select((_31 < 1.0f), 0.5f, _32);
    if (_47 < 0.0f) {
      _76 = atan((_47 * -10.0f) * _51);
      _78 = atan((_47 * _36) * -10.0f) * (rsqrt(_35) * _51);
      _86 = (((_78 * _34) / _76) + _32);
      _87 = (((_78 * _33) / _76) + 0.5f);
    } else {
      _86 = _29;
      _87 = _25;
    }
  }
  _92 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(_87, (1.0f - (_86 * _31))));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _96 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _109 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _96, 0)))).x) & 127)))) + 0.5f);
  } else {
    _109 = 1.0f;
  }
  _112 = (_localToneMappingParams.w > 0.0f);
  if (_112) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_92.x, _92.y, _92.z));
    _360 = _rndx_tonemapped_color.x;
    _367 = _rndx_tonemapped_color.y;
    _374 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _380 = 1.0f - abs(_etcParams.w);
      _381 = saturate(_etcParams.w);  // [sem: expr_sat]
      _383 = (_380 * _360) + _381;
      _385 = (_380 * _367) + _381;
      _387 = (_380 * _374) + _381;
      if (_colorGradingParams.w > 0.0f) {
        _392 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _409 = (((max(0.0f, (1.0f - _385)) - _385) * _392) + _385);
        _410 = (((max(0.0f, (1.0f - _383)) - _383) * _392) + _383);
        _411 = (((max(0.0f, (1.0f - _387)) - _387) * _392) + _387);
      } else {
        _409 = _385;
        _410 = _383;
        _411 = _387;
      }
      _413 = _userImageAdjust.y + 1.0f;
      _415 = _userImageAdjust.x + 0.5f;
      _418 = ((_410 + -0.5f) * _413) + _415;
      _421 = ((_409 + -0.5f) * _413) + _415;
      _424 = ((_411 + -0.5f) * _413) + _415;
      _430 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _465 = exp2(log2(saturate(mad(_colorBlind0.z, _424, mad(_colorBlind0.y, _421, (_colorBlind0.x * _418))))) * _430);
      _466 = exp2(log2(saturate(mad(_colorBlind1.z, _424, mad(_colorBlind1.y, _421, (_colorBlind1.x * _418))))) * _430);
      _467 = exp2(log2(saturate(mad(_colorBlind2.z, _424, mad(_colorBlind2.y, _421, (_colorBlind2.x * _418))))) * _430);
    } else {
      _465 = _360;
      _466 = _367;
      _467 = _374;
    }
  } else {
    _465 = _92.x;
    _466 = _92.y;
    _467 = _92.z;
  }
  if (_etcParams.y > 1.0f) {
    _472 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _475 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _481 = saturate(1.0f - (dot(float2(_472, _475), float2(_472, _475)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _486 = (_481 * _465);
    _487 = (_481 * _466);
    _488 = (_481 * _467);
  } else {
    _486 = _465;
    _487 = _466;
    _488 = _467;
  }
  if (_112 && (_etcParams.z > 0.0f)) {
    _518 = select((_486 <= 0.0031308f), (_486 * 12.92f), (((pow(_486, 0.41666666f)) * 1.055f) + -0.055f));
    _519 = select((_487 <= 0.0031308f), (_487 * 12.92f), (((pow(_487, 0.41666666f)) * 1.055f) + -0.055f));
    _520 = select((_488 <= 0.0031308f), (_488 * 12.92f), (((pow(_488, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _518 = _486;
    _519 = _487;
    _520 = _488;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _523 = (float)((uint)((uint)(_96)));
    if (!(_523 < _viewDir.w)) {
      if (!(!(_523 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _534 = 0.0f;
        _535 = 0.0f;
        _536 = 0.0f;
      } else {
        _534 = _518;
        _535 = _519;
        _536 = _520;
      }
    } else {
      _534 = 0.0f;
      _535 = 0.0f;
      _536 = 0.0f;
    }
  } else {
    _534 = _518;
    _535 = _519;
    _536 = _520;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_534, _535, _536), _sunDirection.y, _moonDirection.y);
    _534 = _rndx_final_color.x;
    _535 = _rndx_final_color.y;
    _536 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _534;
  SV_Target.y = _535;
  SV_Target.z = _536;
  SV_Target.w = _109;
  return SV_Target;
}
