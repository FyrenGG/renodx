Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t70, space36);

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

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _21;
  float _37;
  float _38;
  uint2 _40;
  float _83;
  float _84;
  float _85;
  float _99;
  float _304;
  float _305;
  float _306;
  float _399;
  float _400;
  float _401;
  float _455;
  float _456;
  float _457;
  float _476;
  float _477;
  float _478;
  float _508;
  float _509;
  float _510;
  float _524;
  float _525;
  float _526;
  float _81;
  uint _86;
  bool _102;
  float _108;
  float _157;
  float _158;
  float _159;
  float _161;
  float _168;
  float _169;
  float _170;
  float _189;
  float _190;
  float _191;
  float _192;
  float _193;
  float _194;
  float _195;
  float _196;
  float _197;
  float _243;
  float _244;
  float _245;
  float _246;
  float _247;
  float _248;
  float _249;
  float _266;
  float _267;
  float _268;
  float _269;
  float _275;
  float _278;
  float _285;
  float _286;
  float _287;
  float _316;
  float _341;
  float _342;
  float _343;
  float _362;
  float _363;
  float _364;
  float _370;
  float _374;
  float _375;
  float _376;
  float _377;
  float _382;
  float _407;
  float _411;
  float _412;
  float _413;
  float _414;
  float _444;
  float _466;
  float _467;
  float _471;
  float _515;
  _21 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _37 = (float)((int)((int)((_bufferSizeAndInvSize.x + -1.0f) * saturate(TEXCOORD.x))));
  _38 = (float)((int)((int)((_bufferSizeAndInvSize.y + -1.0f) * saturate(TEXCOORD.y))));
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_40.x, _40.y);
  if (!(((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_40.x))))))) + 0.5f) * _37)), ((int)((((float)((int)((int)((float)((int)((int)(_40.y))))))) + 0.5f) * _38)), 0)))).x) & 255) == 0)) {
    // [sem: expr_sat]
    _81 = saturate(ceil((0.1f - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_37 * _customRenderPassSizeInvSize.x)), ((int)(_38 * _customRenderPassSizeInvSize.y)), 0)))).x)))) + (_nearFarProj.x / max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x)))));
    _83 = _81;
    _84 = _81;
    _85 = _81;
  } else {
    _83 = _21.x;
    _84 = _21.y;
    _85 = _21.z;
  }
  _86 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _99 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _86, 0)))).x) & 127)))) + 0.5f);
  } else {
    _99 = 1.0f;
  }
  _102 = (_localToneMappingParams.w > 0.0f);
  if (_102) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_83, _84, _85));
    _362 = _rndx_tonemapped_color.x;
    _363 = _rndx_tonemapped_color.y;
    _364 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _370 = 1.0f - abs(_etcParams.w);
      _374 = saturate(_etcParams.w);  // [sem: expr_sat]
      _375 = (_370 * _362) + _374;
      _376 = (_370 * _363) + _374;
      _377 = (_370 * _364) + _374;
      if (_colorGradingParams.w > 0.0f) {
        _382 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _399 = (((max(0.0f, (1.0f - _375)) - _375) * _382) + _375);
        _400 = (((max(0.0f, (1.0f - _376)) - _376) * _382) + _376);
        _401 = (((max(0.0f, (1.0f - _377)) - _377) * _382) + _377);
      } else {
        _399 = _375;
        _400 = _376;
        _401 = _377;
      }
      _407 = _userImageAdjust.y + 1.0f;
      _411 = _userImageAdjust.x + 0.5f;
      _412 = ((_399 + -0.5f) * _407) + _411;
      _413 = ((_400 + -0.5f) * _407) + _411;
      _414 = ((_401 + -0.5f) * _407) + _411;
      _444 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _455 = exp2(log2(saturate(mad(_colorBlind0.z, _414, mad(_colorBlind0.y, _413, (_colorBlind0.x * _412))))) * _444);
      _456 = exp2(log2(saturate(mad(_colorBlind1.z, _414, mad(_colorBlind1.y, _413, (_colorBlind1.x * _412))))) * _444);
      _457 = exp2(log2(saturate(mad(_colorBlind2.z, _414, mad(_colorBlind2.y, _413, (_colorBlind2.x * _412))))) * _444);
    } else {
      _455 = _362;
      _456 = _363;
      _457 = _364;
    }
  } else {
    _455 = _83;
    _456 = _84;
    _457 = _85;
  }
  if (_etcParams.y > 1.0f) {
    _466 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _467 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _471 = saturate(1.0f - (dot(float2(_466, _467), float2(_466, _467)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _476 = (_471 * _455);
    _477 = (_471 * _456);
    _478 = (_471 * _457);
  } else {
    _476 = _455;
    _477 = _456;
    _478 = _457;
  }
  if (_102 && (_etcParams.z > 0.0f)) {
    _508 = select((_476 <= 0.0031308f), (_476 * 12.92f), (((pow(_476, 0.41666666f)) * 1.055f) + -0.055f));
    _509 = select((_477 <= 0.0031308f), (_477 * 12.92f), (((pow(_477, 0.41666666f)) * 1.055f) + -0.055f));
    _510 = select((_478 <= 0.0031308f), (_478 * 12.92f), (((pow(_478, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _508 = _476;
    _509 = _477;
    _510 = _478;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _515 = (float)((uint)((uint)(_86)));
    if (!(_515 < _viewDir.w)) {
      if (!(_515 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _524 = _508;
        _525 = _509;
        _526 = _510;
      } else {
        _524 = 0.0f;
        _525 = 0.0f;
        _526 = 0.0f;
      }
    } else {
      _524 = 0.0f;
      _525 = 0.0f;
      _526 = 0.0f;
    }
  } else {
    _524 = _508;
    _525 = _509;
    _526 = _510;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_524, _525, _526), _sunDirection.y, _moonDirection.y);
    _524 = _rndx_final_color.x;
    _525 = _rndx_final_color.y;
    _526 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _524;
  SV_Target.y = _525;
  SV_Target.z = _526;
  SV_Target.w = _99;
  return SV_Target;
}
