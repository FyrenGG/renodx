struct PostProcessFisheye_DistortionStruct {
  float _maxPower;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

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
  row_major float4x4 _viewProj;
  row_major float4x4 _viewProjNoJitter;
  row_major float4x4 _viewProjRelative;
  row_major float4x4 _viewProjRelativeNoJitter;
  row_major float4x4 _invViewProj;
  row_major float4x4 _invViewProjRelative;
  row_major float4x4 _invViewProjRelativeNoJitter;
  row_major float4x4 _viewProjRelativeOrtho;
  float4 _sunDirection;
  float4 _moonDirection;
  float4 _moonRight;
  float4 _moonUp;
  float4 _ssaoRandomDirection[16];
  row_major float4x4 _view;
  row_major float4x4 _viewRelative;
  row_major float4x4 _viewRelativePrev;
  row_major float4x4 _proj;
  row_major float4x4 _projNoJitter;
  float4 _viewPosPrev;
  row_major float4x4 _viewProjNoJitterPrev;
  row_major float4x4 _viewProjRelativePrev;
  row_major float4x4 _viewProjRelativeNoJitterPrev;
  row_major float4x4 _invViewProjPrev;
  row_major float4x4 _invViewProjRelativePrev;
  row_major float4x4 _projToPrevProj;
  row_major float4x4 _projToPrevProjNoTranslation;
  row_major float4x4 _viewProjectionTexScale;
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
  min16float4 _debugBaseColor16;
  min16float4 _debugNormal16;
  min16float4 _debugMaterial16;
  min16float4 _debugMultiplier16;
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

#define RENODX_TONEMAP_EXTERNAL_SCENE_CONSTANT_BUFFER 1
#define RENODX_TONEMAP_SCENE_TIME_W _time.w
#include "../tonemap.hlsli"



#if 0 // Provided by tonemap.hlsli
cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};
#endif

#if 0 // Provided by tonemap.hlsli
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
#endif

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
};

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

#if 0 // Provided by tonemap.hlsli
cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};
#endif

struct BindlessParameters_PostProcessFisheye_Distortion {
  PostProcessFisheye_DistortionStruct BindlessParameters_PostProcessFisheye_Distortion;
};

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
  float _31;
  float _32;
  float _33;
  float _34;
  float _35;
  float _36;
  float _37;
  float _38;
  int _39;
  float _47;
  bool _48;
  float _56;
  float _94;
  float _95;
  float _117;
  float _322;
  float _323;
  float _324;
  float _417;
  float _418;
  float _419;
  float _473;
  float _474;
  float _475;
  float _494;
  float _495;
  float _496;
  float _526;
  float _527;
  float _528;
  float _542;
  float _543;
  float _544;
  float _58;
  float _60;
  float _68;
  float _76;
  float _79;
  float _88;
  float4 _100;
  uint _104;
  bool _120;
  float _126;
  float _175;
  float _176;
  float _177;
  float _179;
  float _186;
  float _187;
  float _188;
  float _207;
  float _208;
  float _209;
  float _210;
  float _211;
  float _212;
  float _213;
  float _214;
  float _215;
  float _261;
  float _262;
  float _263;
  float _264;
  float _265;
  float _266;
  float _267;
  float _284;
  float _285;
  float _286;
  float _287;
  float _293;
  float _296;
  float _303;
  float _304;
  float _305;
  float _334;
  float _359;
  float _360;
  float _361;
  float _380;
  float _381;
  float _382;
  float _388;
  float _392;
  float _393;
  float _394;
  float _395;
  float _400;
  float _425;
  float _429;
  float _430;
  float _431;
  float _432;
  float _462;
  float _484;
  float _485;
  float _489;
  float _533;
  _31 = (_destTargetSizAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x;
  _32 = (_destTargetSizAndInv.y * (1.0f - TEXCOORD.y)) / _srcTargetSizeAndInv.x;
  _33 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _34 = 0.5f / _33;
  _35 = _31 + -0.5f;
  _36 = _32 - _34;
  _37 = dot(float2(_35, _36), float2(_35, _36));
  _38 = sqrt(_37);
  _39 = WaveReadLaneFirst(_materialIndex);
  _47 = WaveReadLaneFirst(BindlessParameters_PostProcessFisheye_Distortion[((int)((uint)(select(((uint)_39 < (uint)170000), _39, 0)) + 0u))].BindlessParameters_PostProcessFisheye_Distortion._maxPower);
  _48 = (_47 > 0.0f);
  if (_48) {
    _56 = sqrt(dot(float2(0.5f, _34), float2(0.5f, _34)));
  } else {
    if (!(_33 < 1.0f)) {
      _56 = _34;
    } else {
      _56 = 0.5f;
    }
  }
  if (_48) {
    _58 = rsqrt(_37);  // [sem: rsqrt_val]
    _60 = tan(_47 * _38);
    _68 = tan(_56 * _47);
    _94 = (((((_56 * _35) * _58) * _60) / _68) + 0.5f);
    _95 = (((((_56 * _36) * _58) * _60) / _68) + _34);
  } else {
    if (_47 < 0.0f) {
      _76 = rsqrt(_37);  // [sem: rsqrt_val]
      _79 = atan((_47 * _38) * -10.0f);
      _88 = atan((_47 * -10.0f) * _56);
      _94 = (((((_56 * _35) * _76) * _79) / _88) + 0.5f);
      _95 = (((((_56 * _36) * _76) * _79) / _88) + _34);
    } else {
      _94 = _31;
      _95 = _32;
    }
  }
  _100 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(_94, (1.0f - (_95 * _33))));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _104 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _117 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _104, 0)))).x) & 127)))) + 0.5f);
  } else {
    _117 = 1.0f;
  }
  _120 = (_localToneMappingParams.w > 0.0f);
  if (_120) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_100.x, _100.y, _100.z));
    _380 = _rndx_tonemapped_color.x;
    _381 = _rndx_tonemapped_color.y;
    _382 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _388 = 1.0f - abs(_etcParams.w);
      _392 = saturate(_etcParams.w);  // [sem: expr_sat]
      _393 = (_388 * _380) + _392;
      _394 = (_388 * _381) + _392;
      _395 = (_388 * _382) + _392;
      if (_colorGradingParams.w > 0.0f) {
        _400 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _417 = (((max(0.0f, (1.0f - _393)) - _393) * _400) + _393);
        _418 = (((max(0.0f, (1.0f - _394)) - _394) * _400) + _394);
        _419 = (((max(0.0f, (1.0f - _395)) - _395) * _400) + _395);
      } else {
        _417 = _393;
        _418 = _394;
        _419 = _395;
      }
      _425 = _userImageAdjust.y + 1.0f;
      _429 = _userImageAdjust.x + 0.5f;
      _430 = ((_417 + -0.5f) * _425) + _429;
      _431 = ((_418 + -0.5f) * _425) + _429;
      _432 = ((_419 + -0.5f) * _425) + _429;
      _462 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _473 = exp2(log2(saturate(mad(_colorBlind0.z, _432, mad(_colorBlind0.y, _431, (_colorBlind0.x * _430))))) * _462);
      _474 = exp2(log2(saturate(mad(_colorBlind1.z, _432, mad(_colorBlind1.y, _431, (_colorBlind1.x * _430))))) * _462);
      _475 = exp2(log2(saturate(mad(_colorBlind2.z, _432, mad(_colorBlind2.y, _431, (_colorBlind2.x * _430))))) * _462);
    } else {
      _473 = _380;
      _474 = _381;
      _475 = _382;
    }
  } else {
    _473 = _100.x;
    _474 = _100.y;
    _475 = _100.z;
  }
  if (_etcParams.y > 1.0f) {
    _484 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _485 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _489 = saturate(1.0f - (dot(float2(_484, _485), float2(_484, _485)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _494 = (_489 * _473);
    _495 = (_489 * _474);
    _496 = (_489 * _475);
  } else {
    _494 = _473;
    _495 = _474;
    _496 = _475;
  }
  if (_120 && (_etcParams.z > 0.0f)) {
    _526 = select((_494 <= 0.0031308000907301903f), (_494 * 12.920000076293945f), (((pow(_494, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _527 = select((_495 <= 0.0031308000907301903f), (_495 * 12.920000076293945f), (((pow(_495, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _528 = select((_496 <= 0.0031308000907301903f), (_496 * 12.920000076293945f), (((pow(_496, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _526 = _494;
    _527 = _495;
    _528 = _496;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _533 = (float)((uint)_104);
    if (!(_533 < _viewDir.w)) {
      if (!(_533 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _542 = _526;
        _543 = _527;
        _544 = _528;
      } else {
        _542 = 0.0f;
        _543 = 0.0f;
        _544 = 0.0f;
      }
    } else {
      _542 = 0.0f;
      _543 = 0.0f;
      _544 = 0.0f;
    }
  } else {
    _542 = _526;
    _543 = _527;
    _544 = _528;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_542, _543, _544), _sunDirection.y, _moonDirection.y);
    _542 = _rndx_final_color.x;
    _543 = _rndx_final_color.y;
    _544 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _542;
  SV_Target.y = _543;
  SV_Target.z = _544;
  SV_Target.w = _117;
  return SV_Target;
}
