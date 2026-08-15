struct PostProcessCameraLensRainStruct {
  float _rainSpeed;
  float _rainUTiling;
  float _rainVTiling;
  float _streakUTiling;
  float _streakVTiling;
  uint _rainNormalTexture;
  uint _rainMaskTexture;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

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

struct BindlessParameters_PostProcessCameraLensRain {
  PostProcessCameraLensRainStruct BindlessParameters_PostProcessCameraLensRain;
};

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
  int _22;
  float _30;
  float _33;
  int _34;
  float _42;
  int _43;
  float _51;
  float _52;
  float _53;
  int _60;
  int _68;
  float _80;
  float _84;
  int _85;
  int _93;
  float _105;
  int _113;
  float _121;
  int _122;
  float _130;
  float _131;
  float _132;
  int _133;
  int _141;
  int _151;
  int _159;
  float4 _166;
  float _173;
  float _187;
  float _195;
  float4 _204;
  uint _212;
  float _226;
  float _431;
  float _432;
  float _433;
  float _526;
  float _527;
  float _528;
  float _582;
  float _583;
  float _584;
  float _603;
  float _604;
  float _605;
  float _635;
  float _636;
  float _637;
  float _651;
  float _652;
  float _653;
  bool _229;
  float _235;
  float _284;
  float _285;
  float _286;
  float _288;
  float _295;
  float _296;
  float _297;
  float _316;
  float _317;
  float _318;
  float _319;
  float _320;
  float _321;
  float _322;
  float _323;
  float _324;
  float _370;
  float _371;
  float _372;
  float _373;
  float _374;
  float _375;
  float _376;
  float _393;
  float _394;
  float _395;
  float _396;
  float _402;
  float _405;
  float _412;
  float _413;
  float _414;
  float _443;
  float _468;
  float _469;
  float _470;
  float _489;
  float _490;
  float _491;
  float _497;
  float _501;
  float _502;
  float _503;
  float _504;
  float _509;
  float _534;
  float _538;
  float _539;
  float _540;
  float _541;
  float _571;
  float _593;
  float _594;
  float _598;
  float _642;
  _22 = WaveReadLaneFirst(_materialIndex);
  _30 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_22 < (uint)170000), _22, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainSpeed);
  _33 = _time.x * _30;
  _34 = WaveReadLaneFirst(_materialIndex);
  _42 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_34 < (uint)170000), _34, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._streakUTiling);
  _43 = WaveReadLaneFirst(_materialIndex);
  _51 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_43 < (uint)170000), _43, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._streakVTiling);
  _52 = _42 * TEXCOORD.x;
  _53 = _51 * TEXCOORD.y;
  _60 = WaveReadLaneFirst(_materialIndex);
  _68 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_60 < (uint)170000), _60, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainMaskTexture);
  // [sem: expr_sat]
  _80 = saturate((abs(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_68 < (uint)65000), _68, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_52, (_53 - frac(_33)))))).z) + -0.01f) * 1.1235955f);
  _84 = (_80 * _80) * (3.0f - (_80 * 2.0f));
  _85 = WaveReadLaneFirst(_materialIndex);
  _93 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_85 < (uint)170000), _85, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainMaskTexture);
  // [sem: expr_sat]
  _105 = saturate((abs(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_93 < (uint)65000), _93, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_52, ((_53 * 1.2f) - frac(_33 * 1.5f)))))).z) + -0.04f) * 50.0f);
  _113 = WaveReadLaneFirst(_materialIndex);
  _121 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_113 < (uint)170000), _113, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainUTiling);
  _122 = WaveReadLaneFirst(_materialIndex);
  _130 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_122 < (uint)170000), _122, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainVTiling);
  _131 = _121 * TEXCOORD.x;
  _132 = _130 * TEXCOORD.y;
  _133 = WaveReadLaneFirst(_materialIndex);
  _141 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_133 < (uint)170000), _133, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainMaskTexture);
  _151 = WaveReadLaneFirst(_materialIndex);
  _159 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)((uint)(select(((uint)_151 < (uint)170000), _151, 0))) + (uint)(0)))].BindlessParameters_PostProcessCameraLensRain._rainNormalTexture);
  _166 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_159 < (uint)65000), _159, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_131, (1.0f - _132)));
  _173 = saturate((2.5f - TEXCOORD.y) * 0.33333334f);  // [sem: expr_sat]
  // [sem: expr_sat]
  _187 = saturate(saturate(((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_141 < (uint)65000), _141, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_131, _132)))).y) - saturate(((((((_105 * _105) * (3.0f - (_105 * 2.0f))) - _84) * 0.5f) + _84) - saturate(exp2(log2((_173 * _173) * (3.0f - (_173 * 2.0f))) * 1.1f))) * 5.0f));
  _195 = dot(float3(_187, _187, _187), float3(1.0f, 1.0f, 1.0f)) * 0.09f;
  // [sem: _3__36__0__0__g_sceneColor_sample]
  _204 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(abs((_195 * ((_187 * ((_166.x * 2.0f) + -1.4960785f)) + 0.5f)) + TEXCOORD.x), abs(TEXCOORD.y - (_195 * ((_187 * ((_166.y * 2.0f) + -1.4960785f)) + 0.5f)))));
  _212 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _226 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _212, 0)))).x) & 127)))) + 0.5f);
  } else {
    _226 = select(isnan(_postProcessParams.x), 0.0f, _postProcessParams.x);
  }
  _229 = (_localToneMappingParams.w > 0.0f);
  if (_229) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_204.x, _204.y, _204.z));
    _489 = _rndx_tonemapped_color.x;
    _490 = _rndx_tonemapped_color.y;
    _491 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _497 = 1.0f - abs(_etcParams.w);
      _501 = saturate(_etcParams.w);  // [sem: expr_sat]
      _502 = (_497 * _489) + _501;
      _503 = (_497 * _490) + _501;
      _504 = (_497 * _491) + _501;
      if (_colorGradingParams.w > 0.0f) {
        _509 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _526 = (((max(0.0f, (1.0f - _502)) - _502) * _509) + _502);
        _527 = (((max(0.0f, (1.0f - _503)) - _503) * _509) + _503);
        _528 = (((max(0.0f, (1.0f - _504)) - _504) * _509) + _504);
      } else {
        _526 = _502;
        _527 = _503;
        _528 = _504;
      }
      _534 = _userImageAdjust.y + 1.0f;
      _538 = _userImageAdjust.x + 0.5f;
      _539 = ((_526 + -0.5f) * _534) + _538;
      _540 = ((_527 + -0.5f) * _534) + _538;
      _541 = ((_528 + -0.5f) * _534) + _538;
      _571 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _582 = exp2(log2(saturate(mad(_colorBlind0.z, _541, mad(_colorBlind0.y, _540, (_colorBlind0.x * _539))))) * _571);
      _583 = exp2(log2(saturate(mad(_colorBlind1.z, _541, mad(_colorBlind1.y, _540, (_colorBlind1.x * _539))))) * _571);
      _584 = exp2(log2(saturate(mad(_colorBlind2.z, _541, mad(_colorBlind2.y, _540, (_colorBlind2.x * _539))))) * _571);
    } else {
      _582 = _489;
      _583 = _490;
      _584 = _491;
    }
  } else {
    _582 = _204.x;
    _583 = _204.y;
    _584 = _204.z;
  }
  if (_etcParams.y > 1.0f) {
    _593 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _594 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _598 = saturate(1.0f - (dot(float2(_593, _594), float2(_593, _594)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _603 = (_598 * _582);
    _604 = (_598 * _583);
    _605 = (_598 * _584);
  } else {
    _603 = _582;
    _604 = _583;
    _605 = _584;
  }
  if (_229 && (_etcParams.z > 0.0f)) {
    _635 = select((_603 <= 0.0031308f), (_603 * 12.92f), (((pow(_603, 0.41666666f)) * 1.055f) + -0.055f));
    _636 = select((_604 <= 0.0031308f), (_604 * 12.92f), (((pow(_604, 0.41666666f)) * 1.055f) + -0.055f));
    _637 = select((_605 <= 0.0031308f), (_605 * 12.92f), (((pow(_605, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _635 = _603;
    _636 = _604;
    _637 = _605;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _642 = (float)((uint)((uint)(_212)));
    if (!(_642 < _viewDir.w)) {
      if (!(_642 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _651 = _635;
        _652 = _636;
        _653 = _637;
      } else {
        _651 = 0.0f;
        _652 = 0.0f;
        _653 = 0.0f;
      }
    } else {
      _651 = 0.0f;
      _652 = 0.0f;
      _653 = 0.0f;
    }
  } else {
    _651 = _635;
    _652 = _636;
    _653 = _637;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_651, _652, _653), _sunDirection.y, _moonDirection.y);
    _651 = _rndx_final_color.x;
    _652 = _rndx_final_color.y;
    _653 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _651;
  SV_Target.y = _652;
  SV_Target.z = _653;
  SV_Target.w = _226;
  return SV_Target;
}
