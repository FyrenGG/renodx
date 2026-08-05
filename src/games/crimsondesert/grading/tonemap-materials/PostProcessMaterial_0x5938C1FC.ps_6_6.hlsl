struct PostProcessOutlineStruct {
  float _outlineColorR;
  float _outlineColorG;
  float _outlineColorB;
};

struct BindlessParameters_PostProcessOutline {
  PostProcessOutlineStruct BindlessParameters_PostProcessOutline;
};


Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t38, space36);

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

typedef BindlessParameters_PostProcessOutline BindlessParameters_PostProcessOutline_t;
ConstantBuffer<BindlessParameters_PostProcessOutline_t> BindlessParameters_PostProcessOutline[] : register(b0, space100);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  uint2 _18;
  float _81;
  float _82;
  float _83;
  float _97;
  float _302;
  float _303;
  float _304;
  float _397;
  float _398;
  float _399;
  float _453;
  float _454;
  float _455;
  float _474;
  float _475;
  float _476;
  float _506;
  float _507;
  float _508;
  float _522;
  float _523;
  float _524;
  int _49;
  float _57;
  int _60;
  float _68;
  int _71;
  float _79;
  uint _84;
  bool _100;
  float _106;
  float _125;
  float _141;
  float _157;
  float _158;
  float _162;
  float _165;
  float _168;
  float _175;
  float _182;
  float _189;
  float _190;
  float _191;
  float _192;
  float _193;
  float _194;
  float _195;
  float _211;
  float _227;
  float _243;
  float _244;
  float _245;
  float _246;
  float _247;
  float _264;
  float _265;
  float _266;
  float _267;
  float _270;
  float _273;
  float _277;
  float _281;
  float _285;
  float _305;
  float _317;
  float _329;
  float _341;
  float _348;
  float _355;
  float _362;
  float _368;
  float _369;
  float _371;
  float _373;
  float _375;
  float _380;
  float _401;
  float _403;
  float _406;
  float _409;
  float _412;
  float _418;
  float _460;
  float _463;
  float _469;
  float _511;
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_18.x, _18.y);
  if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_18.x))))))) + 0.5f) * ((float)((int)((int)(_bufferSizeAndInvSize.x * TEXCOORD.x)))))), ((int)(((float)((int)((int)(_bufferSizeAndInvSize.y * TEXCOORD.y)))) * (((float)((int)((int)((float)((int)((int)(_18.y))))))) + 0.5f))), 0)))).x) & 255) == 30) {
    _49 = WaveReadLaneFirst(_materialIndex);
    _57 = WaveReadLaneFirst(BindlessParameters_PostProcessOutline[((int)((uint)((uint)(select(((uint)_49 < (uint)170000), _49, 0))) + (uint)(0)))].BindlessParameters_PostProcessOutline._outlineColorR);
    _60 = WaveReadLaneFirst(_materialIndex);
    _68 = WaveReadLaneFirst(BindlessParameters_PostProcessOutline[((int)((uint)((uint)(select(((uint)_60 < (uint)170000), _60, 0))) + (uint)(0)))].BindlessParameters_PostProcessOutline._outlineColorB);
    _71 = WaveReadLaneFirst(_materialIndex);
    _79 = WaveReadLaneFirst(BindlessParameters_PostProcessOutline[((int)((uint)((uint)(select(((uint)_71 < (uint)170000), _71, 0))) + (uint)(0)))].BindlessParameters_PostProcessOutline._outlineColorG);
    _81 = _79;
    _82 = _68;
    _83 = _57;
  } else {
    _81 = 0.0f;
    _82 = 0.0f;
    _83 = 0.0f;
  }
  _84 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _97 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _84, 0)))).x) & 127)))) + 0.5f);
  } else {
    _97 = 1.0f;
  }
  _100 = (_localToneMappingParams.w > 0.0f);
  if (_100) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_83, _82, _81));
    _348 = _rndx_tonemapped_color.x;
    _355 = _rndx_tonemapped_color.y;
    _362 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _368 = 1.0f - abs(_etcParams.w);
      _369 = saturate(_etcParams.w);  // [sem: expr_sat]
      _371 = (_368 * _348) + _369;
      _373 = (_368 * _355) + _369;
      _375 = (_368 * _362) + _369;
      if (_colorGradingParams.w > 0.0f) {
        _380 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _397 = (((max(0.0f, (1.0f - _375)) - _375) * _380) + _375);
        _398 = (((max(0.0f, (1.0f - _373)) - _373) * _380) + _373);
        _399 = (((max(0.0f, (1.0f - _371)) - _371) * _380) + _371);
      } else {
        _397 = _375;
        _398 = _373;
        _399 = _371;
      }
      _401 = _userImageAdjust.y + 1.0f;
      _403 = _userImageAdjust.x + 0.5f;
      _406 = ((_399 + -0.5f) * _401) + _403;
      _409 = ((_398 + -0.5f) * _401) + _403;
      _412 = ((_397 + -0.5f) * _401) + _403;
      _418 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _453 = exp2(log2(saturate(mad(_colorBlind2.z, _412, mad(_colorBlind2.y, _409, (_colorBlind2.x * _406))))) * _418);
      _454 = exp2(log2(saturate(mad(_colorBlind1.z, _412, mad(_colorBlind1.y, _409, (_colorBlind1.x * _406))))) * _418);
      _455 = exp2(log2(saturate(mad(_colorBlind0.z, _412, mad(_colorBlind0.y, _409, (_colorBlind0.x * _406))))) * _418);
    } else {
      _453 = _362;
      _454 = _355;
      _455 = _348;
    }
  } else {
    _453 = _81;
    _454 = _82;
    _455 = _83;
  }
  if (_etcParams.y > 1.0f) {
    _460 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _463 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _469 = saturate(1.0f - (dot(float2(_460, _463), float2(_460, _463)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _474 = (_469 * _453);
    _475 = (_469 * _454);
    _476 = (_469 * _455);
  } else {
    _474 = _453;
    _475 = _454;
    _476 = _455;
  }
  if (_100 && (_etcParams.z > 0.0f)) {
    _506 = select((_474 <= 0.0031308f), (_474 * 12.92f), (((pow(_474, 0.41666666f)) * 1.055f) + -0.055f));
    _507 = select((_475 <= 0.0031308f), (_475 * 12.92f), (((pow(_475, 0.41666666f)) * 1.055f) + -0.055f));
    _508 = select((_476 <= 0.0031308f), (_476 * 12.92f), (((pow(_476, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _506 = _474;
    _507 = _475;
    _508 = _476;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _511 = (float)((uint)((uint)(_84)));
    if (!(_511 < _viewDir.w)) {
      if (!(!(_511 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _522 = 0.0f;
        _523 = 0.0f;
        _524 = 0.0f;
      } else {
        _522 = _508;
        _523 = _507;
        _524 = _506;
      }
    } else {
      _522 = 0.0f;
      _523 = 0.0f;
      _524 = 0.0f;
    }
  } else {
    _522 = _508;
    _523 = _507;
    _524 = _506;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_522, _523, _524), _sunDirection.y, _moonDirection.y);
    _522 = _rndx_final_color.x;
    _523 = _rndx_final_color.y;
    _524 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _522;
  SV_Target.y = _523;
  SV_Target.z = _524;
  SV_Target.w = _97;
  return SV_Target;
}
