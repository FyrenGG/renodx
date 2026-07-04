struct PostProcessOutlineExampleStruct {
  uint _outlineColor;
  float _outlineSize;
};


Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t28, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t30, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t45, space36);

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

struct BindlessParameters_PostProcessOutlineExample {
  PostProcessOutlineExampleStruct BindlessParameters_PostProcessOutlineExample;
};

typedef BindlessParameters_PostProcessOutlineExample BindlessParameters_PostProcessOutlineExample_t;
ConstantBuffer<BindlessParameters_PostProcessOutlineExample_t> BindlessParameters_PostProcessOutlineExample[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _25;
  uint2 _30;
  float _123;
  float _124;
  float _125;
  float _139;
  float _344;
  float _345;
  float _346;
  float _439;
  float _440;
  float _441;
  float _495;
  float _496;
  float _497;
  float _516;
  float _517;
  float _518;
  float _548;
  float _549;
  float _550;
  float _564;
  float _565;
  float _566;
  float4 _66;
  int _71;
  int _79;
  float _82;
  float _85;
  float _87;
  float _115;
  uint _126;
  bool _142;
  float _148;
  float _197;
  float _198;
  float _199;
  float _201;
  float _208;
  float _209;
  float _210;
  float _229;
  float _230;
  float _231;
  float _232;
  float _233;
  float _234;
  float _235;
  float _236;
  float _237;
  float _283;
  float _284;
  float _285;
  float _286;
  float _287;
  float _288;
  float _289;
  float _306;
  float _307;
  float _308;
  float _309;
  float _315;
  float _318;
  float _325;
  float _326;
  float _327;
  float _356;
  float _381;
  float _382;
  float _383;
  float _402;
  float _403;
  float _404;
  float _410;
  float _414;
  float _415;
  float _416;
  float _417;
  float _422;
  float _447;
  float _451;
  float _452;
  float _453;
  float _454;
  float _484;
  float _506;
  float _507;
  float _511;
  float _555;
  _25 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_30.x, _30.y);
  if (!(((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(int((float((int)(int(float((int)((int)(_30.x)))))) + 0.5f) * TEXCOORD.x), int((float((int)(int(float((int)((int)(_30.y)))))) + 0.5f) * TEXCOORD.y), 0)))).x) & 255) == 30)) {
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _66 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    if (!(!((((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3((int)(uint((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f)), (int)(uint((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f)), 0)))).x) & 16777215)))) * 5.960465188081798e-08f) <= _66.y))) {
      _71 = WaveReadLaneFirst(_materialIndex);
      _79 = WaveReadLaneFirst(BindlessParameters_PostProcessOutlineExample[((int)((uint)(select(((uint)_71 < (uint)170000), _71, 0)) + 0u))].BindlessParameters_PostProcessOutlineExample._outlineColor);
      _82 = (float)((uint)((uint)(((uint)(_79) >> 16) & 255)));
      _85 = (float)((uint)((uint)(((uint)(_79) >> 8) & 255)));
      _87 = (float)((uint)((uint)(_79 & 255)));
      _115 = _66.x * 100.0f;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _123 = ((select(((_82 * 0.003921568859368563f) < 0.040449999272823334f), (_82 * 0.0003035269910469651f), exp2(log2((_82 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) * _115) + _25.x);
      _124 = ((select(((_85 * 0.003921568859368563f) < 0.040449999272823334f), (_85 * 0.0003035269910469651f), exp2(log2((_85 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) * _115) + _25.y);
      _125 = ((select(((_87 * 0.003921568859368563f) < 0.040449999272823334f), (_87 * 0.0003035269910469651f), exp2(log2((_87 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) * _115) + _25.z);
    } else {
      _123 = _25.x;
      _124 = _25.y;
      _125 = _25.z;
    }
  } else {
    _123 = _25.x;
    _124 = _25.y;
    _125 = _25.z;
  }
  _126 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _139 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _126, 0)))).x) & 127)))) + 0.5f);
  } else {
    _139 = 1.0f;
  }
  _142 = (_localToneMappingParams.w > 0.0f);
  if (_142) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_123, _124, _125));
    _402 = _rndx_tonemapped_color.x;
    _403 = _rndx_tonemapped_color.y;
    _404 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _410 = 1.0f - abs(_etcParams.w);
      _414 = saturate(_etcParams.w);  // [sem: expr_sat]
      _415 = (_410 * _402) + _414;
      _416 = (_410 * _403) + _414;
      _417 = (_410 * _404) + _414;
      if (_colorGradingParams.w > 0.0f) {
        _422 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _439 = (((max(0.0f, (1.0f - _415)) - _415) * _422) + _415);
        _440 = (((max(0.0f, (1.0f - _416)) - _416) * _422) + _416);
        _441 = (((max(0.0f, (1.0f - _417)) - _417) * _422) + _417);
      } else {
        _439 = _415;
        _440 = _416;
        _441 = _417;
      }
      _447 = _userImageAdjust.y + 1.0f;
      _451 = _userImageAdjust.x + 0.5f;
      _452 = ((_439 + -0.5f) * _447) + _451;
      _453 = ((_440 + -0.5f) * _447) + _451;
      _454 = ((_441 + -0.5f) * _447) + _451;
      _484 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _495 = exp2(log2(saturate(mad(_colorBlind0.z, _454, mad(_colorBlind0.y, _453, (_colorBlind0.x * _452))))) * _484);
      _496 = exp2(log2(saturate(mad(_colorBlind1.z, _454, mad(_colorBlind1.y, _453, (_colorBlind1.x * _452))))) * _484);
      _497 = exp2(log2(saturate(mad(_colorBlind2.z, _454, mad(_colorBlind2.y, _453, (_colorBlind2.x * _452))))) * _484);
    } else {
      _495 = _402;
      _496 = _403;
      _497 = _404;
    }
  } else {
    _495 = _123;
    _496 = _124;
    _497 = _125;
  }
  if (_etcParams.y > 1.0f) {
    _506 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _507 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _511 = saturate(1.0f - (dot(float2(_506, _507), float2(_506, _507)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _516 = (_511 * _495);
    _517 = (_511 * _496);
    _518 = (_511 * _497);
  } else {
    _516 = _495;
    _517 = _496;
    _518 = _497;
  }
  if (_142 && (_etcParams.z > 0.0f)) {
    _548 = select((_516 <= 0.0031308000907301903f), (_516 * 12.920000076293945f), (((pow(_516, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _549 = select((_517 <= 0.0031308000907301903f), (_517 * 12.920000076293945f), (((pow(_517, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _550 = select((_518 <= 0.0031308000907301903f), (_518 * 12.920000076293945f), (((pow(_518, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _548 = _516;
    _549 = _517;
    _550 = _518;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _555 = (float)((uint)_126);
    if (!(_555 < _viewDir.w)) {
      if (!(_555 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _564 = _548;
        _565 = _549;
        _566 = _550;
      } else {
        _564 = 0.0f;
        _565 = 0.0f;
        _566 = 0.0f;
      }
    } else {
      _564 = 0.0f;
      _565 = 0.0f;
      _566 = 0.0f;
    }
  } else {
    _564 = _548;
    _565 = _549;
    _566 = _550;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_564, _565, _566), _sunDirection.y, _moonDirection.y);
    _564 = _rndx_final_color.x;
    _565 = _rndx_final_color.y;
    _566 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _564;
  SV_Target.y = _565;
  SV_Target.z = _566;
  SV_Target.w = _139;
  return SV_Target;
}
