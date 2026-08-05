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

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _20;
  float _28;
  float _31;
  int _34;
  float _42;
  int _45;
  float _53;
  float _54;
  float _55;
  int _58;
  int _66;
  float _80;
  float _84;
  int _87;
  int _95;
  float _111;
  int _114;
  float _122;
  int _125;
  float _133;
  float _134;
  float _135;
  int _138;
  int _146;
  int _149;
  int _157;
  float4 _165;
  float _170;
  float _199;
  float _201;
  float4 _218;
  uint _222;
  float _241;
  float _446;
  float _447;
  float _448;
  float _541;
  float _542;
  float _543;
  float _597;
  float _598;
  float _599;
  float _618;
  float _619;
  float _620;
  float _650;
  float _651;
  float _652;
  float _666;
  float _667;
  float _668;
  bool _244;
  float _250;
  float _269;
  float _285;
  float _301;
  float _302;
  float _306;
  float _309;
  float _312;
  float _319;
  float _326;
  float _333;
  float _334;
  float _335;
  float _336;
  float _337;
  float _338;
  float _339;
  float _355;
  float _371;
  float _387;
  float _388;
  float _389;
  float _390;
  float _391;
  float _408;
  float _409;
  float _410;
  float _411;
  float _414;
  float _417;
  float _421;
  float _425;
  float _429;
  float _449;
  float _461;
  float _473;
  float _485;
  float _492;
  float _499;
  float _506;
  float _512;
  float _513;
  float _515;
  float _517;
  float _519;
  float _524;
  float _545;
  float _547;
  float _550;
  float _553;
  float _556;
  float _562;
  float _604;
  float _607;
  float _613;
  float _655;
  _20 = WaveReadLaneFirst(_materialIndex);
  _28 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_20 < (uint)170000), _20, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainSpeed);
  _31 = _time.x * _28;
  _34 = WaveReadLaneFirst(_materialIndex);
  _42 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_34 < (uint)170000), _34, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._streakUTiling);
  _45 = WaveReadLaneFirst(_materialIndex);
  _53 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_45 < (uint)170000), _45, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._streakVTiling);
  _54 = _42 * TEXCOORD.x;
  _55 = _53 * TEXCOORD.y;
  _58 = WaveReadLaneFirst(_materialIndex);
  _66 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_58 < (uint)170000), _58, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainMaskTexture);
  // [sem: expr_sat]
  _80 = saturate((abs(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_66 < (uint)65000), _66, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_54, (_55 - frac(_31)))))).z) + -0.01f) * 1.1235955f);
  _84 = (_80 * _80) * (3.0f - (_80 * 2.0f));
  _87 = WaveReadLaneFirst(_materialIndex);
  _95 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_87 < (uint)170000), _87, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainMaskTexture);
  // [sem: expr_sat]
  _111 = saturate((abs(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_95 < (uint)65000), _95, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_54, ((_55 * 1.2f) - frac(_31 * 1.5f)))))).z) + -0.04f) * 50.0f);
  _114 = WaveReadLaneFirst(_materialIndex);
  _122 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_114 < (uint)170000), _114, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainUTiling);
  _125 = WaveReadLaneFirst(_materialIndex);
  _133 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_125 < (uint)170000), _125, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainVTiling);
  _134 = _122 * TEXCOORD.x;
  _135 = _133 * TEXCOORD.y;
  _138 = WaveReadLaneFirst(_materialIndex);
  _146 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_138 < (uint)170000), _138, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainMaskTexture);
  _149 = WaveReadLaneFirst(_materialIndex);
  _157 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_149 < (uint)170000), _149, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainNormalTexture);
  _165 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_157 < (uint)65000), _157, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_134, (1.0f - _135)));
  _170 = saturate((2.5f - TEXCOORD.y) * 0.33333334f);  // [sem: expr_sat]
  // [sem: expr_sat]
  _199 = saturate(saturate(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_146 < (uint)65000), _146, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_134, _135)))).y) - saturate(((((((_111 * _111) * (3.0f - (_111 * 2.0f))) - _84) * 0.5f) + _84) - saturate(exp2(log2((_170 * _170) * (3.0f - (_170 * 2.0f))) * 1.1f))) * 5.0f));
  _201 = dot(float3(_199, _199, _199), float3(1.0f, 1.0f, 1.0f)) * 0.09f;
  // [sem: _3__36__0__0__g_sceneColor_sample]
  _218 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(abs((_201 * ((_199 * ((_165.x * 2.0f) + -1.4960785f)) + 0.5f)) + TEXCOORD.x), abs(TEXCOORD.y - (_201 * ((_199 * ((_165.y * 2.0f) + -1.4960785f)) + 0.5f)))));
  _222 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _241 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _222, 0)))).x) & 127)))) + 0.5f);
  } else {
    _241 = select(isnan(_postProcessParams.x), 0.0f, _postProcessParams.x);
  }
  _244 = (_localToneMappingParams.w > 0.0f);
  if (_244) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_218.x, _218.y, _218.z));
    _492 = _rndx_tonemapped_color.x;
    _499 = _rndx_tonemapped_color.y;
    _506 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _512 = 1.0f - abs(_etcParams.w);
      _513 = saturate(_etcParams.w);  // [sem: expr_sat]
      _515 = (_512 * _492) + _513;
      _517 = (_512 * _499) + _513;
      _519 = (_512 * _506) + _513;
      if (_colorGradingParams.w > 0.0f) {
        _524 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _541 = (((max(0.0f, (1.0f - _515)) - _515) * _524) + _515);
        _542 = (((max(0.0f, (1.0f - _517)) - _517) * _524) + _517);
        _543 = (((max(0.0f, (1.0f - _519)) - _519) * _524) + _519);
      } else {
        _541 = _515;
        _542 = _517;
        _543 = _519;
      }
      _545 = _userImageAdjust.y + 1.0f;
      _547 = _userImageAdjust.x + 0.5f;
      _550 = ((_541 + -0.5f) * _545) + _547;
      _553 = ((_542 + -0.5f) * _545) + _547;
      _556 = ((_543 + -0.5f) * _545) + _547;
      _562 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _597 = exp2(log2(saturate(mad(_colorBlind0.z, _556, mad(_colorBlind0.y, _553, (_colorBlind0.x * _550))))) * _562);
      _598 = exp2(log2(saturate(mad(_colorBlind1.z, _556, mad(_colorBlind1.y, _553, (_colorBlind1.x * _550))))) * _562);
      _599 = exp2(log2(saturate(mad(_colorBlind2.z, _556, mad(_colorBlind2.y, _553, (_colorBlind2.x * _550))))) * _562);
    } else {
      _597 = _492;
      _598 = _499;
      _599 = _506;
    }
  } else {
    _597 = _218.x;
    _598 = _218.y;
    _599 = _218.z;
  }
  if (_etcParams.y > 1.0f) {
    _604 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _607 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _613 = saturate(1.0f - (dot(float2(_604, _607), float2(_604, _607)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _618 = (_613 * _597);
    _619 = (_613 * _598);
    _620 = (_613 * _599);
  } else {
    _618 = _597;
    _619 = _598;
    _620 = _599;
  }
  if (_244 && (_etcParams.z > 0.0f)) {
    _650 = select((_618 <= 0.0031308f), (_618 * 12.92f), (((pow(_618, 0.41666666f)) * 1.055f) + -0.055f));
    _651 = select((_619 <= 0.0031308f), (_619 * 12.92f), (((pow(_619, 0.41666666f)) * 1.055f) + -0.055f));
    _652 = select((_620 <= 0.0031308f), (_620 * 12.92f), (((pow(_620, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _650 = _618;
    _651 = _619;
    _652 = _620;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _655 = (float)((uint)((uint)(_222)));
    if (!(_655 < _viewDir.w)) {
      if (!(!(_655 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _666 = 0.0f;
        _667 = 0.0f;
        _668 = 0.0f;
      } else {
        _666 = _650;
        _667 = _651;
        _668 = _652;
      }
    } else {
      _666 = 0.0f;
      _667 = 0.0f;
      _668 = 0.0f;
    }
  } else {
    _666 = _650;
    _667 = _651;
    _668 = _652;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_666, _667, _668), _sunDirection.y, _moonDirection.y);
    _666 = _rndx_final_color.x;
    _667 = _rndx_final_color.y;
    _668 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _666;
  SV_Target.y = _667;
  SV_Target.z = _668;
  SV_Target.w = _241;
  return SV_Target;
}
