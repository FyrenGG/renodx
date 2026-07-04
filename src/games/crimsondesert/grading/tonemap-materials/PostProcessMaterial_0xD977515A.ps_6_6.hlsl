struct PostProcessDirectionalBlurStruct {
  float _intensity;
  float _noiseStrength;
  float _direction;
  float _noiseScale;
  uint _noiseTexture;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

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

struct BindlessParameters_PostProcessDirectionalBlur {
  PostProcessDirectionalBlurStruct BindlessParameters_PostProcessDirectionalBlur;
};

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
  int _18;
  float _26;
  int _29;
  int _37;
  int _46;
  float _54;
  int _58;
  float _66;
  int _67;
  float _75;
  float _77;
  float _78;
  float _79;
  int _80;
  float _133;
  float _338;
  float _339;
  float _340;
  float _433;
  float _434;
  float _435;
  float _489;
  float _490;
  float _491;
  float _510;
  float _511;
  float _512;
  float _542;
  float _543;
  float _544;
  float _558;
  float _559;
  float _560;
  float _83;
  float _84;
  float _87;
  float _88;
  float4 _93;
  float4 _102;
  float _106;
  float _107;
  float _108;
  int _109;
  uint _120;
  bool _136;
  float _142;
  float _191;
  float _192;
  float _193;
  float _195;
  float _202;
  float _203;
  float _204;
  float _223;
  float _224;
  float _225;
  float _226;
  float _227;
  float _228;
  float _229;
  float _230;
  float _231;
  float _277;
  float _278;
  float _279;
  float _280;
  float _281;
  float _282;
  float _283;
  float _300;
  float _301;
  float _302;
  float _303;
  float _309;
  float _312;
  float _319;
  float _320;
  float _321;
  float _350;
  float _375;
  float _376;
  float _377;
  float _396;
  float _397;
  float _398;
  float _404;
  float _408;
  float _409;
  float _410;
  float _411;
  float _416;
  float _441;
  float _445;
  float _446;
  float _447;
  float _448;
  float _478;
  float _500;
  float _501;
  float _505;
  float _549;
  int __loop_jump_target = -1;
  _18 = WaveReadLaneFirst(_materialIndex);
  _26 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)(select(((uint)_18 < (uint)170000), _18, 0)) + 0u))].BindlessParameters_PostProcessDirectionalBlur._noiseScale);
  _29 = WaveReadLaneFirst(_materialIndex);
  _37 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)(select(((uint)_29 < (uint)170000), _29, 0)) + 0u))].BindlessParameters_PostProcessDirectionalBlur._noiseTexture);
  _46 = WaveReadLaneFirst(_materialIndex);
  _54 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)(select(((uint)_46 < (uint)170000), _46, 0)) + 0u))].BindlessParameters_PostProcessDirectionalBlur._direction);
  _58 = WaveReadLaneFirst(_materialIndex);
  _66 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)(select(((uint)_58 < (uint)170000), _58, 0)) + 0u))].BindlessParameters_PostProcessDirectionalBlur._intensity);
  _67 = WaveReadLaneFirst(_materialIndex);
  _75 = WaveReadLaneFirst(BindlessParameters_PostProcessDirectionalBlur[((int)((uint)(select(((uint)_67 < (uint)170000), _67, 0)) + 0u))].BindlessParameters_PostProcessDirectionalBlur._noiseStrength);
  _77 = 0.0f;
  _78 = 0.0f;
  _79 = 0.0f;
  _80 = 1;
  while(true) {
    _83 = (_66 * 0.03125f) * float((int)(_80));
    _84 = _75 * (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_37 < (uint)65000), _37, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_26 * TEXCOORD.x), (_26 * TEXCOORD.y))))).x);
    _87 = _83 * (_84 + (-0.0f - sin(_54)));
    _88 = _83 * (_84 + cos(_54));
  // [sem: _3__36__0__0__g_sceneColor_sample]
    _93 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2((_87 + TEXCOORD.x), (_88 + TEXCOORD.y)));
  // [sem: _3__36__0__0__g_sceneColor_sample]
    _102 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2((TEXCOORD.x - _87), (TEXCOORD.y - _88)));
    _106 = (_93.x + _77) + _102.x;
    _107 = (_93.y + _78) + _102.y;
    _108 = (_93.z + _79) + _102.z;
    _109 = _80 + 1;
    if (!(_109 == 33)) {
      _77 = _106;
      _78 = _107;
      _79 = _108;
      _80 = _109;
      continue;
    }
    _120 = uint(SV_Position.y);
    if (_etcParams.y == 1.0f) {
      _133 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _120, 0)))).x) & 127)))) + 0.5f);
    } else {
      _133 = _postProcessParams.x;
    }
    _136 = (_localToneMappingParams.w > 0.0f);
    if (_136) {
      // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
      // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
      float3 _rndx_tonemapped_color = TonemapReplacer(float3(_106, _107, _108));
      _396 = _rndx_tonemapped_color.x;
      _397 = _rndx_tonemapped_color.y;
      _398 = _rndx_tonemapped_color.z;
      // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
      if (_etcParams.z == 0.0f) {
        _404 = 1.0f - abs(_etcParams.w);
        _408 = saturate(_etcParams.w);  // [sem: expr_sat]
        _409 = (_404 * _396) + _408;
        _410 = (_404 * _397) + _408;
        _411 = (_404 * _398) + _408;
        if (_colorGradingParams.w > 0.0f) {
          _416 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
          _433 = (((max(0.0f, (1.0f - _409)) - _409) * _416) + _409);
          _434 = (((max(0.0f, (1.0f - _410)) - _410) * _416) + _410);
          _435 = (((max(0.0f, (1.0f - _411)) - _411) * _416) + _411);
        } else {
          _433 = _409;
          _434 = _410;
          _435 = _411;
        }
        _441 = _userImageAdjust.y + 1.0f;
        _445 = _userImageAdjust.x + 0.5f;
        _446 = ((_433 + -0.5f) * _441) + _445;
        _447 = ((_434 + -0.5f) * _441) + _445;
        _448 = ((_435 + -0.5f) * _441) + _445;
        _478 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
        _489 = exp2(log2(saturate(mad(_colorBlind0.z, _448, mad(_colorBlind0.y, _447, (_colorBlind0.x * _446))))) * _478);
        _490 = exp2(log2(saturate(mad(_colorBlind1.z, _448, mad(_colorBlind1.y, _447, (_colorBlind1.x * _446))))) * _478);
        _491 = exp2(log2(saturate(mad(_colorBlind2.z, _448, mad(_colorBlind2.y, _447, (_colorBlind2.x * _446))))) * _478);
      } else {
        _489 = _396;
        _490 = _397;
        _491 = _398;
      }
    } else {
      _489 = (_106 * 0.015625f);
      _490 = (_107 * 0.015625f);
      _491 = (_108 * 0.015625f);
    }
    if (_etcParams.y > 1.0f) {
      _500 = abs((TEXCOORD.x * 2.0f) + -1.0f);
      _501 = abs((TEXCOORD.y * 2.0f) + -1.0f);
      // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
      // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
      float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
      if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
        _rndx_vignette_strength *= CUSTOM_VIGNETTE;
      }
      _505 = saturate(1.0f - (dot(float2(_500, _501), float2(_500, _501)) * _rndx_vignette_strength));  // [sem: expr_sat]
      // RenoDX: <<< [Patch: PostProcessMaterialVignette]
      _510 = (_505 * _489);
      _511 = (_505 * _490);
      _512 = (_505 * _491);
    } else {
      _510 = _489;
      _511 = _490;
      _512 = _491;
    }
    if (_136 && (_etcParams.z > 0.0f)) {
      _542 = select((_510 <= 0.0031308000907301903f), (_510 * 12.920000076293945f), (((pow(_510, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
      _543 = select((_511 <= 0.0031308000907301903f), (_511 * 12.920000076293945f), (((pow(_511, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
      _544 = select((_512 <= 0.0031308000907301903f), (_512 * 12.920000076293945f), (((pow(_512, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    } else {
      _542 = _510;
      _543 = _511;
      _544 = _512;
    }
    if (!(!(_etcParams.y >= 1.0f))) {
      _549 = (float)((uint)_120);
      if (!(_549 < _viewDir.w)) {
        if (!(_549 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
          _558 = _542;
          _559 = _543;
          _560 = _544;
        } else {
          _558 = 0.0f;
          _559 = 0.0f;
          _560 = 0.0f;
        }
      } else {
        _558 = 0.0f;
        _559 = 0.0f;
        _560 = 0.0f;
      }
    } else {
      _558 = _542;
      _559 = _543;
      _560 = _544;
    }
    // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
    // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      float3 _rndx_final_color = FinalizeSDR(float3(_558, _559, _560), _sunDirection.y, _moonDirection.y);
      _558 = _rndx_final_color.x;
      _559 = _rndx_final_color.y;
      _560 = _rndx_final_color.z;
    }
    // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
    SV_Target.x = _558;
    SV_Target.y = _559;
    SV_Target.z = _560;
    SV_Target.w = _133;
    break;
  }
  return SV_Target;
}
