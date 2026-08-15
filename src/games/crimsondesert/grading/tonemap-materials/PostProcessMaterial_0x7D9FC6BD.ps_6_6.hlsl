struct PostProcessMirrorStruct {
  float _ratio;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

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

struct BindlessParameters_PostProcessMirror {
  PostProcessMirrorStruct BindlessParameters_PostProcessMirror;
};

typedef BindlessParameters_PostProcessMirror BindlessParameters_PostProcessMirror_t;
ConstantBuffer<BindlessParameters_PostProcessMirror_t> BindlessParameters_PostProcessMirror[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _21;
  float _29;
  float4 _35;
  uint _39;
  float _53;
  float _258;
  float _259;
  float _260;
  float _353;
  float _354;
  float _355;
  float _409;
  float _410;
  float _411;
  float _430;
  float _431;
  float _432;
  float _462;
  float _463;
  float _464;
  float _478;
  float _479;
  float _480;
  bool _56;
  float _62;
  float _111;
  float _112;
  float _113;
  float _115;
  float _122;
  float _123;
  float _124;
  float _143;
  float _144;
  float _145;
  float _146;
  float _147;
  float _148;
  float _149;
  float _150;
  float _151;
  float _197;
  float _198;
  float _199;
  float _200;
  float _201;
  float _202;
  float _203;
  float _220;
  float _221;
  float _222;
  float _223;
  float _229;
  float _232;
  float _239;
  float _240;
  float _241;
  float _270;
  float _295;
  float _296;
  float _297;
  float _316;
  float _317;
  float _318;
  float _324;
  float _328;
  float _329;
  float _330;
  float _331;
  float _336;
  float _361;
  float _365;
  float _366;
  float _367;
  float _368;
  float _398;
  float _420;
  float _421;
  float _425;
  float _469;
  _21 = WaveReadLaneFirst(_materialIndex);
  _29 = WaveReadLaneFirst(BindlessParameters_PostProcessMirror[((int)((uint)((uint)(select(((uint)_21 < (uint)170000), _21, 0))) + (uint)(0)))].BindlessParameters_PostProcessMirror._ratio);
  // [sem: _3__36__0__0__g_sceneColor_sample]
  _35 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(select((_29 > 0.5f), (1.0f - TEXCOORD.x), TEXCOORD.x), TEXCOORD.y));
  _39 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _53 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _39, 0)))).x) & 127)))) + 0.5f);
  } else {
    _53 = _postProcessParams.x;
  }
  _56 = (_localToneMappingParams.w > 0.0f);
  if (_56) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_35.x, _35.y, _35.z));
    _316 = _rndx_tonemapped_color.x;
    _317 = _rndx_tonemapped_color.y;
    _318 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _324 = 1.0f - abs(_etcParams.w);
      _328 = saturate(_etcParams.w);  // [sem: expr_sat]
      _329 = (_324 * _316) + _328;
      _330 = (_324 * _317) + _328;
      _331 = (_324 * _318) + _328;
      if (_colorGradingParams.w > 0.0f) {
        _336 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _353 = (((max(0.0f, (1.0f - _329)) - _329) * _336) + _329);
        _354 = (((max(0.0f, (1.0f - _330)) - _330) * _336) + _330);
        _355 = (((max(0.0f, (1.0f - _331)) - _331) * _336) + _331);
      } else {
        _353 = _329;
        _354 = _330;
        _355 = _331;
      }
      _361 = _userImageAdjust.y + 1.0f;
      _365 = _userImageAdjust.x + 0.5f;
      _366 = ((_353 + -0.5f) * _361) + _365;
      _367 = ((_354 + -0.5f) * _361) + _365;
      _368 = ((_355 + -0.5f) * _361) + _365;
      _398 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _409 = exp2(log2(saturate(mad(_colorBlind0.z, _368, mad(_colorBlind0.y, _367, (_colorBlind0.x * _366))))) * _398);
      _410 = exp2(log2(saturate(mad(_colorBlind1.z, _368, mad(_colorBlind1.y, _367, (_colorBlind1.x * _366))))) * _398);
      _411 = exp2(log2(saturate(mad(_colorBlind2.z, _368, mad(_colorBlind2.y, _367, (_colorBlind2.x * _366))))) * _398);
    } else {
      _409 = _316;
      _410 = _317;
      _411 = _318;
    }
  } else {
    _409 = _35.x;
    _410 = _35.y;
    _411 = _35.z;
  }
  if (_etcParams.y > 1.0f) {
    _420 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _421 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _425 = saturate(1.0f - (dot(float2(_420, _421), float2(_420, _421)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _430 = (_425 * _409);
    _431 = (_425 * _410);
    _432 = (_425 * _411);
  } else {
    _430 = _409;
    _431 = _410;
    _432 = _411;
  }
  if (_56 && (_etcParams.z > 0.0f)) {
    _462 = select((_430 <= 0.0031308f), (_430 * 12.92f), (((pow(_430, 0.41666666f)) * 1.055f) + -0.055f));
    _463 = select((_431 <= 0.0031308f), (_431 * 12.92f), (((pow(_431, 0.41666666f)) * 1.055f) + -0.055f));
    _464 = select((_432 <= 0.0031308f), (_432 * 12.92f), (((pow(_432, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _462 = _430;
    _463 = _431;
    _464 = _432;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _469 = (float)((uint)((uint)(_39)));
    if (!(_469 < _viewDir.w)) {
      if (!(_469 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _478 = _462;
        _479 = _463;
        _480 = _464;
      } else {
        _478 = 0.0f;
        _479 = 0.0f;
        _480 = 0.0f;
      }
    } else {
      _478 = 0.0f;
      _479 = 0.0f;
      _480 = 0.0f;
    }
  } else {
    _478 = _462;
    _479 = _463;
    _480 = _464;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_478, _479, _480), _sunDirection.y, _moonDirection.y);
    _478 = _rndx_final_color.x;
    _479 = _rndx_final_color.y;
    _480 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _478;
  SV_Target.y = _479;
  SV_Target.z = _480;
  SV_Target.w = _53;
  return SV_Target;
}
