struct PostProcessAbyssEnterGlid_CDStruct {
  float _startYPos;
  float _endYPos;
  float _cubeScale;
  float _cameraSpeed;
  float _cameraSinIntensity;
  float3 _screenFadeColor;
  float _screenFadeRatio;
  float3 _fogColor;
  float3 _ambientColor;
  float3 _globalColor;
  float3 _lightColor;
  float3 _centerGlowColor;
  float _centerGlowRadius;
  float _stardustIntensity;
  float _particleIntensity;
  float _particleEmissionWidth;
  float _anamorphicIntensity;
  float _anamorphicWidth;
  float _largeHalo;
  float _largeHaloIntensity;
  float _middleHaloIntensity;
  float _blubIntensity;
  float _streakGlowIntensity;
  float _centerpoint;
  float _tunnelTotal;
  float _cameraFov;
  float _cubeDistance;
  uint _screenWarpTex;
  float _screenWarpRatio;
};


Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t28, space36);

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

struct BindlessParameters_PostProcessAbyssEnterGlid_CD {
  PostProcessAbyssEnterGlid_CDStruct BindlessParameters_PostProcessAbyssEnterGlid_CD;
};

typedef BindlessParameters_PostProcessAbyssEnterGlid_CD BindlessParameters_PostProcessAbyssEnterGlid_CD_t;
ConstantBuffer<BindlessParameters_PostProcessAbyssEnterGlid_CD_t> BindlessParameters_PostProcessAbyssEnterGlid_CD[] : register(b0, space100);

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
  int _21;
  float _29;
  int _30;
  float _38;
  float4 _48;
  float4 _55;
  float _65;
  float _66;
  float _67;
  float _68;
  float _75;
  float _76;
  float _77;
  uint _78;
  float _92;
  float _297;
  float _298;
  float _299;
  float _392;
  float _393;
  float _394;
  float _448;
  float _449;
  float _450;
  float _469;
  float _470;
  float _471;
  float _501;
  float _502;
  float _503;
  float _517;
  float _518;
  float _519;
  bool _95;
  float _101;
  float _150;
  float _151;
  float _152;
  float _154;
  float _161;
  float _162;
  float _163;
  float _182;
  float _183;
  float _184;
  float _185;
  float _186;
  float _187;
  float _188;
  float _189;
  float _190;
  float _236;
  float _237;
  float _238;
  float _239;
  float _240;
  float _241;
  float _242;
  float _259;
  float _260;
  float _261;
  float _262;
  float _268;
  float _271;
  float _278;
  float _279;
  float _280;
  float _309;
  float _334;
  float _335;
  float _336;
  float _355;
  float _356;
  float _357;
  float _363;
  float _367;
  float _368;
  float _369;
  float _370;
  float _375;
  float _400;
  float _404;
  float _405;
  float _406;
  float _407;
  float _437;
  float _459;
  float _460;
  float _464;
  float _508;
  _21 = WaveReadLaneFirst(_materialIndex);
  _29 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)(select(((uint)_21 < (uint)170000), _21, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnterGlid_CD._startYPos);
  _30 = WaveReadLaneFirst(_materialIndex);
  _38 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)(select(((uint)_30 < (uint)170000), _30, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnterGlid_CD._endYPos);
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
  _48 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));
  _55 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _65 = 1.0f - (saturate(exp2(log2(1.0f - saturate((_viewPos.y - _38) / (_29 - _38))) * 2.200000047683716f) * 7.0f) * 0.9950000047683716f);
  _66 = _65 * _55.x;
  _67 = _65 * _55.y;
  _68 = _65 * _55.z;
  _75 = ((_48.x - _66) * _48.w) + _66;
  _76 = ((_48.y - _67) * _48.w) + _67;
  _77 = ((_48.z - _68) * _48.w) + _68;
  _78 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _92 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _78, 0)))).x) & 127)))) + 0.5f);
  } else {
    _92 = 1.0f;
  }
  _95 = (_localToneMappingParams.w > 0.0f);
  if (_95) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_75, _76, _77));
    _355 = _rndx_tonemapped_color.x;
    _356 = _rndx_tonemapped_color.y;
    _357 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _363 = 1.0f - abs(_etcParams.w);
      _367 = saturate(_etcParams.w);  // [sem: expr_sat]
      _368 = (_363 * _355) + _367;
      _369 = (_363 * _356) + _367;
      _370 = (_363 * _357) + _367;
      if (_colorGradingParams.w > 0.0f) {
        _375 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _392 = (((max(0.0f, (1.0f - _368)) - _368) * _375) + _368);
        _393 = (((max(0.0f, (1.0f - _369)) - _369) * _375) + _369);
        _394 = (((max(0.0f, (1.0f - _370)) - _370) * _375) + _370);
      } else {
        _392 = _368;
        _393 = _369;
        _394 = _370;
      }
      _400 = _userImageAdjust.y + 1.0f;
      _404 = _userImageAdjust.x + 0.5f;
      _405 = ((_392 + -0.5f) * _400) + _404;
      _406 = ((_393 + -0.5f) * _400) + _404;
      _407 = ((_394 + -0.5f) * _400) + _404;
      _437 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _448 = exp2(log2(saturate(mad(_colorBlind0.z, _407, mad(_colorBlind0.y, _406, (_colorBlind0.x * _405))))) * _437);
      _449 = exp2(log2(saturate(mad(_colorBlind1.z, _407, mad(_colorBlind1.y, _406, (_colorBlind1.x * _405))))) * _437);
      _450 = exp2(log2(saturate(mad(_colorBlind2.z, _407, mad(_colorBlind2.y, _406, (_colorBlind2.x * _405))))) * _437);
    } else {
      _448 = _355;
      _449 = _356;
      _450 = _357;
    }
  } else {
    _448 = _75;
    _449 = _76;
    _450 = _77;
  }
  if (_etcParams.y > 1.0f) {
    _459 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _460 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _464 = saturate(1.0f - (dot(float2(_459, _460), float2(_459, _460)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _469 = (_464 * _448);
    _470 = (_464 * _449);
    _471 = (_464 * _450);
  } else {
    _469 = _448;
    _470 = _449;
    _471 = _450;
  }
  if (_95 && (_etcParams.z > 0.0f)) {
    _501 = select((_469 <= 0.0031308000907301903f), (_469 * 12.920000076293945f), (((pow(_469, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _502 = select((_470 <= 0.0031308000907301903f), (_470 * 12.920000076293945f), (((pow(_470, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _503 = select((_471 <= 0.0031308000907301903f), (_471 * 12.920000076293945f), (((pow(_471, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _501 = _469;
    _502 = _470;
    _503 = _471;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _508 = (float)((uint)_78);
    if (!(_508 < _viewDir.w)) {
      if (!(_508 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _517 = _501;
        _518 = _502;
        _519 = _503;
      } else {
        _517 = 0.0f;
        _518 = 0.0f;
        _519 = 0.0f;
      }
    } else {
      _517 = 0.0f;
      _518 = 0.0f;
      _519 = 0.0f;
    }
  } else {
    _517 = _501;
    _518 = _502;
    _519 = _503;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_517, _518, _519), _sunDirection.y, _moonDirection.y);
    _517 = _rndx_final_color.x;
    _518 = _rndx_final_color.y;
    _519 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _517;
  SV_Target.y = _518;
  SV_Target.z = _519;
  SV_Target.w = _92;
  return SV_Target;
}
