struct PostProcessZoneStruct {
  float3 _mainPosition;
  float _radius;
  float _ratio;
  float _progress;
  float _edgeSmoothness;
  float _edgeWidth;
  uint _maskColor;
  uint _noiseTex;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

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

struct BindlessParameters_PostProcessZone {
  PostProcessZoneStruct BindlessParameters_PostProcessZone;
};

typedef BindlessParameters_PostProcessZone BindlessParameters_PostProcessZone_t;
ConstantBuffer<BindlessParameters_PostProcessZone_t> BindlessParameters_PostProcessZone[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _19;
  float _25;
  float _26;
  float _27;
  float _28;
  float _64;
  int _68;
  float _78;
  float _79;
  float _80;
  float _81;
  float _83;
  float _84;
  int _87;
  float _95;
  int _96;
  float _104;
  int _107;
  float _115;
  int _123;
  float _131;
  float _160;
  float _364;
  float _365;
  float _366;
  float _459;
  float _460;
  float _461;
  float _515;
  float _516;
  float _517;
  float _533;
  float _534;
  float _535;
  float _565;
  float _566;
  float _567;
  float _581;
  float _582;
  float _583;
  float _143;
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
  float _326;
  float _327;
  float _328;
  float _329;
  float _335;
  float _338;
  float _345;
  float _346;
  float _347;
  float _376;
  float _401;
  float _402;
  float _403;
  float _422;
  float _423;
  float _424;
  float _430;
  float _434;
  float _435;
  float _436;
  float _437;
  float _442;
  float _467;
  float _471;
  float _472;
  float _473;
  float _474;
  float _504;
  float _523;
  float _524;
  float _528;
  float _572;
  _19 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _25 = (TEXCOORD.x * 2.0f) + -1.0f;
  _26 = TEXCOORD.y * 2.0f;
  _27 = 1.0f - _26;
  _28 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
  _64 = mad((_invViewProj[3].z), _28, mad((_invViewProj[3].y), _27, ((_invViewProj[3].x) * _25))) + (_invViewProj[3].w);
  _68 = WaveReadLaneFirst(_materialIndex);
  _78 = WaveReadLaneFirst(BindlessParameters_PostProcessZone[((int)((uint)((uint)(select(((uint)_68 < (uint)170000), _68, 0))) + (uint)(0)))].BindlessParameters_PostProcessZone._mainPosition.x);
  _79 = WaveReadLaneFirst(BindlessParameters_PostProcessZone[((int)((uint)((uint)(select(((uint)_68 < (uint)170000), _68, 0))) + (uint)(0)))].BindlessParameters_PostProcessZone._mainPosition.y);
  _80 = WaveReadLaneFirst(BindlessParameters_PostProcessZone[((int)((uint)((uint)(select(((uint)_68 < (uint)170000), _68, 0))) + (uint)(0)))].BindlessParameters_PostProcessZone._mainPosition.z);
  _81 = _78 - ((mad((_invViewProj[0].z), _28, mad((_invViewProj[0].y), _27, ((_invViewProj[0].x) * _25))) + (_invViewProj[0].w)) / _64);
  _83 = _80 - ((mad((_invViewProj[2].z), _28, mad((_invViewProj[2].y), _27, ((_invViewProj[2].x) * _25))) + (_invViewProj[2].w)) / _64);
  _84 = (_79 - ((mad((_invViewProj[1].z), _28, mad((_invViewProj[1].y), _27, ((_invViewProj[1].x) * _25))) + (_invViewProj[1].w)) / _64)) + 1.6f;
  _87 = WaveReadLaneFirst(_materialIndex);
  _95 = WaveReadLaneFirst(BindlessParameters_PostProcessZone[((int)((uint)((uint)(select(((uint)_87 < (uint)170000), _87, 0))) + (uint)(0)))].BindlessParameters_PostProcessZone._radius);
  _96 = WaveReadLaneFirst(_materialIndex);
  _104 = WaveReadLaneFirst(BindlessParameters_PostProcessZone[((int)((uint)((uint)(select(((uint)_96 < (uint)170000), _96, 0))) + (uint)(0)))].BindlessParameters_PostProcessZone._progress);
  _107 = WaveReadLaneFirst(_materialIndex);
  _115 = WaveReadLaneFirst(BindlessParameters_PostProcessZone[((int)((uint)((uint)(select(((uint)_107 < (uint)170000), _107, 0))) + (uint)(0)))].BindlessParameters_PostProcessZone._edgeSmoothness);
  _123 = WaveReadLaneFirst(_materialIndex);
  _131 = WaveReadLaneFirst(BindlessParameters_PostProcessZone[((int)((uint)((uint)(select(((uint)_123 < (uint)170000), _123, 0))) + (uint)(0)))].BindlessParameters_PostProcessZone._ratio);
  // [sem: expr_sat]
  _143 = saturate((_131 * (min(max((1.0f - saturate(exp2(log2(sqrt(dot(float3(_81, _84, _83), float3(_81, _84, _83))) - (_104 * _95)) * _115))), 0.0f), 1.0f) + -1.0f)) + 1.0f);
  _144 = _143 * _19.x;
  _145 = _143 * _19.y;
  _146 = _143 * _19.z;
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
    _422 = _rndx_tonemapped_color.x;
    _423 = _rndx_tonemapped_color.y;
    _424 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _430 = 1.0f - abs(_etcParams.w);
      _434 = saturate(_etcParams.w);  // [sem: expr_sat]
      _435 = (_430 * _422) + _434;
      _436 = (_430 * _423) + _434;
      _437 = (_430 * _424) + _434;
      if (_colorGradingParams.w > 0.0f) {
        _442 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _459 = (((max(0.0f, (1.0f - _435)) - _435) * _442) + _435);
        _460 = (((max(0.0f, (1.0f - _436)) - _436) * _442) + _436);
        _461 = (((max(0.0f, (1.0f - _437)) - _437) * _442) + _437);
      } else {
        _459 = _435;
        _460 = _436;
        _461 = _437;
      }
      _467 = _userImageAdjust.y + 1.0f;
      _471 = _userImageAdjust.x + 0.5f;
      _472 = ((_459 + -0.5f) * _467) + _471;
      _473 = ((_460 + -0.5f) * _467) + _471;
      _474 = ((_461 + -0.5f) * _467) + _471;
      _504 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _515 = exp2(log2(saturate(mad(_colorBlind0.z, _474, mad(_colorBlind0.y, _473, (_colorBlind0.x * _472))))) * _504);
      _516 = exp2(log2(saturate(mad(_colorBlind1.z, _474, mad(_colorBlind1.y, _473, (_colorBlind1.x * _472))))) * _504);
      _517 = exp2(log2(saturate(mad(_colorBlind2.z, _474, mad(_colorBlind2.y, _473, (_colorBlind2.x * _472))))) * _504);
    } else {
      _515 = _422;
      _516 = _423;
      _517 = _424;
    }
  } else {
    _515 = _144;
    _516 = _145;
    _517 = _146;
  }
  if (_etcParams.y > 1.0f) {
    _523 = abs(_25);
    _524 = abs(_26 + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _528 = saturate(1.0f - (dot(float2(_523, _524), float2(_523, _524)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _533 = (_528 * _515);
    _534 = (_528 * _516);
    _535 = (_528 * _517);
  } else {
    _533 = _515;
    _534 = _516;
    _535 = _517;
  }
  if (_163 && (_etcParams.z > 0.0f)) {
    _565 = select((_533 <= 0.0031308f), (_533 * 12.92f), (((pow(_533, 0.41666666f)) * 1.055f) + -0.055f));
    _566 = select((_534 <= 0.0031308f), (_534 * 12.92f), (((pow(_534, 0.41666666f)) * 1.055f) + -0.055f));
    _567 = select((_535 <= 0.0031308f), (_535 * 12.92f), (((pow(_535, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _565 = _533;
    _566 = _534;
    _567 = _535;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _572 = (float)((uint)((uint)(_147)));
    if (!(_572 < _viewDir.w)) {
      if (!(_572 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _581 = _565;
        _582 = _566;
        _583 = _567;
      } else {
        _581 = 0.0f;
        _582 = 0.0f;
        _583 = 0.0f;
      }
    } else {
      _581 = 0.0f;
      _582 = 0.0f;
      _583 = 0.0f;
    }
  } else {
    _581 = _565;
    _582 = _566;
    _583 = _567;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_581, _582, _583), _sunDirection.y, _moonDirection.y);
    _581 = _rndx_final_color.x;
    _582 = _rndx_final_color.y;
    _583 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _581;
  SV_Target.y = _582;
  SV_Target.z = _583;
  SV_Target.w = _160;
  return SV_Target;
}
