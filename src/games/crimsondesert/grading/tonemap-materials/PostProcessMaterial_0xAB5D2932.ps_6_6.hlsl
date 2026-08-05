struct PostProcessDirectionalBlurStruct {
  float _intensity;
  float _noiseStrength;
  float _direction;
  float _noiseScale;
  uint _noiseTexture;
};

struct BindlessParameters_PostProcessDirectionalBlur {
  PostProcessDirectionalBlurStruct BindlessParameters_PostProcessDirectionalBlur;
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

typedef BindlessParameters_PostProcessDirectionalBlur BindlessParameters_PostProcessDirectionalBlur_t;
ConstantBuffer<BindlessParameters_PostProcessDirectionalBlur_t> BindlessParameters_PostProcessDirectionalBlur[] : register(b0, space100);

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
  int _16;
  float _24;
  int _27;
  int _35;
  int _38;
  float _46;
  int _49;
  float _57;
  int _60;
  float _68;
  int _70;
  float _71;
  float _72;
  float _73;
  float _140;
  float _345;
  float _346;
  float _347;
  float _440;
  float _441;
  float _442;
  float _500;
  float _501;
  float _502;
  float _521;
  float _522;
  float _523;
  float _553;
  float _554;
  float _555;
  float _569;
  float _570;
  float _571;
  float _76;
  float _87;
  float _90;
  float _93;
  float4 _98;
  float4 _106;
  float _111;
  float _113;
  float _115;
  int _116;
  uint _124;
  bool _143;
  float _149;
  float _168;
  float _184;
  float _200;
  float _201;
  float _205;
  float _208;
  float _211;
  float _218;
  float _225;
  float _232;
  float _233;
  float _234;
  float _235;
  float _236;
  float _237;
  float _238;
  float _254;
  float _270;
  float _286;
  float _287;
  float _288;
  float _289;
  float _290;
  float _307;
  float _308;
  float _309;
  float _310;
  float _313;
  float _316;
  float _320;
  float _324;
  float _328;
  float _348;
  float _360;
  float _372;
  float _384;
  float _391;
  float _398;
  float _405;
  float _411;
  float _412;
  float _414;
  float _416;
  float _418;
  float _423;
  float _444;
  float _446;
  float _449;
  float _452;
  float _455;
  float _461;
  float _507;
  float _510;
  float _516;
  float _558;
  int __loop_jump_target = -1;
  _16 = WaveReadLaneFirst(_materialIndex);
  _24 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)((uint)(select(((uint)_16 < (uint)170000), _16, 0))) + (uint)(0)))].BindlessParameters_PostProcessDirectionalBlur._noiseScale);
  _27 = WaveReadLaneFirst(_materialIndex);
  _35 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)((uint)(select(((uint)_27 < (uint)170000), _27, 0))) + (uint)(0)))].BindlessParameters_PostProcessDirectionalBlur._noiseTexture);
  _38 = WaveReadLaneFirst(_materialIndex);
  _46 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)((uint)(select(((uint)_38 < (uint)170000), _38, 0))) + (uint)(0)))].BindlessParameters_PostProcessDirectionalBlur._direction);
  _49 = WaveReadLaneFirst(_materialIndex);
  _57 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)((uint)(select(((uint)_49 < (uint)170000), _49, 0))) + (uint)(0)))].BindlessParameters_PostProcessDirectionalBlur._intensity);
  _60 = WaveReadLaneFirst(_materialIndex);
  _68 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)((uint)(select(((uint)_60 < (uint)170000), _60, 0))) + (uint)(0)))].BindlessParameters_PostProcessDirectionalBlur._noiseStrength);
  _70 = 1;
  _71 = 0.0f;
  _72 = 0.0f;
  _73 = 0.0f;
  while(true) {
    _76 = (_57 * 0.03125f) * ((float)((int)(_70)));
    _87 = (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_35 < (uint)65000), _35, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_24 * TEXCOORD.x), (_24 * TEXCOORD.y))))).x) * _68;
    _90 = (_87 - sin(_46)) * _76;
    _93 = (_87 + cos(_46)) * _76;
    // [sem: _3__36__0__0__g_sceneColor_sample]
    _98 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2((_90 + TEXCOORD.x), (_93 + TEXCOORD.y)));
    // [sem: _3__36__0__0__g_sceneColor_sample]
    _106 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2((TEXCOORD.x - _90), (TEXCOORD.y - _93)));
    _111 = (_98.x + _73) + _106.x;
    _113 = (_98.y + _72) + _106.y;
    _115 = (_98.z + _71) + _106.z;
    _116 = (int)(_70) + (int)(1);
    if (!(_116 == 33)) {
      _70 = _116;
      _71 = _115;
      _72 = _113;
      _73 = _111;
      continue;
    }
    _124 = (uint)(SV_Position.y);
    if (_etcParams.y == 1.0f) {
      _140 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _124, 0)))).x) & 127)))) + 0.5f);
    } else {
      _140 = _postProcessParams.x;
    }
    _143 = (_localToneMappingParams.w > 0.0f);
    if (_143) {
      // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
      // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
      float3 _rndx_tonemapped_color = TonemapReplacer(float3(_111, _113, _115));
      _391 = _rndx_tonemapped_color.x;
      _398 = _rndx_tonemapped_color.y;
      _405 = _rndx_tonemapped_color.z;
      // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
      if (_etcParams.z == 0.0f) {
        _411 = 1.0f - abs(_etcParams.w);
        _412 = saturate(_etcParams.w);  // [sem: expr_sat]
        _414 = (_411 * _391) + _412;
        _416 = (_411 * _398) + _412;
        _418 = (_411 * _405) + _412;
        if (_colorGradingParams.w > 0.0f) {
          _423 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
          _440 = (((max(0.0f, (1.0f - _418)) - _418) * _423) + _418);
          _441 = (((max(0.0f, (1.0f - _416)) - _416) * _423) + _416);
          _442 = (((max(0.0f, (1.0f - _414)) - _414) * _423) + _414);
        } else {
          _440 = _418;
          _441 = _416;
          _442 = _414;
        }
        _444 = _userImageAdjust.y + 1.0f;
        _446 = _userImageAdjust.x + 0.5f;
        _449 = ((_442 + -0.5f) * _444) + _446;
        _452 = ((_441 + -0.5f) * _444) + _446;
        _455 = ((_440 + -0.5f) * _444) + _446;
        _461 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
        _500 = exp2(log2(saturate(mad(_colorBlind0.z, _455, mad(_colorBlind0.y, _452, (_colorBlind0.x * _449))))) * _461);
        _501 = exp2(log2(saturate(mad(_colorBlind1.z, _455, mad(_colorBlind1.y, _452, (_colorBlind1.x * _449))))) * _461);
        _502 = exp2(log2(saturate(mad(_colorBlind2.z, _455, mad(_colorBlind2.y, _452, (_colorBlind2.x * _449))))) * _461);
      } else {
        _500 = _391;
        _501 = _398;
        _502 = _405;
      }
    } else {
      _500 = (_111 * 0.015625f);
      _501 = (_113 * 0.015625f);
      _502 = (_115 * 0.015625f);
    }
    if (_etcParams.y > 1.0f) {
      _507 = abs((TEXCOORD.x * 2.0f) + -1.0f);
      _510 = abs((TEXCOORD.y * 2.0f) + -1.0f);
      // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
      // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
      float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
      if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
        _rndx_vignette_strength *= CUSTOM_VIGNETTE;
      }
      _516 = saturate(1.0f - (dot(float2(_507, _510), float2(_507, _510)) * _rndx_vignette_strength));  // [sem: expr_sat]
      // RenoDX: <<< [Patch: PostProcessMaterialVignette]
      _521 = (_516 * _500);
      _522 = (_516 * _501);
      _523 = (_516 * _502);
    } else {
      _521 = _500;
      _522 = _501;
      _523 = _502;
    }
    if (_143 && (_etcParams.z > 0.0f)) {
      _553 = select((_521 <= 0.0031308f), (_521 * 12.92f), (((pow(_521, 0.41666666f)) * 1.055f) + -0.055f));
      _554 = select((_522 <= 0.0031308f), (_522 * 12.92f), (((pow(_522, 0.41666666f)) * 1.055f) + -0.055f));
      _555 = select((_523 <= 0.0031308f), (_523 * 12.92f), (((pow(_523, 0.41666666f)) * 1.055f) + -0.055f));
    } else {
      _553 = _521;
      _554 = _522;
      _555 = _523;
    }
    if (!(!(_etcParams.y >= 1.0f))) {
      _558 = (float)((uint)((uint)(_124)));
      if (!(_558 < _viewDir.w)) {
        if (!(!(_558 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
          _569 = 0.0f;
          _570 = 0.0f;
          _571 = 0.0f;
        } else {
          _569 = _553;
          _570 = _554;
          _571 = _555;
        }
      } else {
        _569 = 0.0f;
        _570 = 0.0f;
        _571 = 0.0f;
      }
    } else {
      _569 = _553;
      _570 = _554;
      _571 = _555;
    }
    // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
    // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      float3 _rndx_final_color = FinalizeSDR(float3(_569, _570, _571), _sunDirection.y, _moonDirection.y);
      _569 = _rndx_final_color.x;
      _570 = _rndx_final_color.y;
      _571 = _rndx_final_color.z;
    }
    // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
    SV_Target.x = _569;
    SV_Target.y = _570;
    SV_Target.z = _571;
    SV_Target.w = _140;
    break;
  }
  return SV_Target;
}
