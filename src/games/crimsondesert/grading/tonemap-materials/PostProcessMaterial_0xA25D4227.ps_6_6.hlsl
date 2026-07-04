struct PostProcessGhost_CDStruct {
  float _ghostFXRatio;
  uint _ghostNoiseTex;
  float _ghostNoiseIntensity;
  float _ghostFXColorInnerBrightness;
  uint _ghostFXColor1;
  uint _ghostFXColor2;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t28, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t30, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t87, space36);

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

struct BindlessParameters_PostProcessGhost_CD {
  PostProcessGhost_CDStruct BindlessParameters_PostProcessGhost_CD;
};

typedef BindlessParameters_PostProcessGhost_CD BindlessParameters_PostProcessGhost_CD_t;
ConstantBuffer<BindlessParameters_PostProcessGhost_CD_t> BindlessParameters_PostProcessGhost_CD[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _32;
  int _36;
  float _44;
  float _157;
  float _158;
  float _159;
  float _173;
  float _378;
  float _379;
  float _380;
  float _473;
  float _474;
  float _475;
  float _529;
  float _530;
  float _531;
  float _550;
  float _551;
  float _552;
  float _582;
  float _583;
  float _584;
  float _598;
  float _599;
  float _600;
  float _48;
  int _55;
  int _63;
  int _72;
  float _80;
  int _81;
  float _89;
  float _91;
  float _94;
  float _95;
  int _131;
  float _139;
  float _140;
  float4 _143;
  uint _160;
  bool _176;
  float _182;
  float _231;
  float _232;
  float _233;
  float _235;
  float _242;
  float _243;
  float _244;
  float _263;
  float _264;
  float _265;
  float _266;
  float _267;
  float _268;
  float _269;
  float _270;
  float _271;
  float _317;
  float _318;
  float _319;
  float _320;
  float _321;
  float _322;
  float _323;
  float _340;
  float _341;
  float _342;
  float _343;
  float _349;
  float _352;
  float _359;
  float _360;
  float _361;
  float _390;
  float _415;
  float _416;
  float _417;
  float _436;
  float _437;
  float _438;
  float _444;
  float _448;
  float _449;
  float _450;
  float _451;
  float _456;
  float _481;
  float _485;
  float _486;
  float _487;
  float _488;
  float _518;
  float _540;
  float _541;
  float _545;
  float _589;
  _32 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _36 = WaveReadLaneFirst(_materialIndex);
  _44 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)(select(((uint)_36 < (uint)170000), _36, 0)) + 0u))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
  if (!(!(_44 >= 0.0010000000474974513f))) {
    _48 = 4.0f / (_srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y);
    _55 = WaveReadLaneFirst(_materialIndex);
    _63 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)(select(((uint)_55 < (uint)170000), _55, 0)) + 0u))].BindlessParameters_PostProcessGhost_CD._ghostNoiseTex);
    _72 = WaveReadLaneFirst(_materialIndex);
    _80 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)(select(((uint)_72 < (uint)170000), _72, 0)) + 0u))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
    _81 = WaveReadLaneFirst(_materialIndex);
    _89 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)(select(((uint)_81 < (uint)170000), _81, 0)) + 0u))].BindlessParameters_PostProcessGhost_CD._ghostNoiseIntensity);
    _91 = _89 * (_80 * (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_63 < (uint)65000), _63, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((TEXCOORD.x * 3.0f) * _48), ((_time.x * 0.30000001192092896f) + (_48 * TEXCOORD.y)))))).y));
    _94 = (_91 * 0.009999999776482582f) + TEXCOORD.x;
    _95 = (_91 * 0.05000000074505806f) + TEXCOORD.y;
    _131 = WaveReadLaneFirst(_materialIndex);
    _139 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)(select(((uint)_131 < (uint)170000), _131, 0)) + 0u))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
    _140 = _139 * saturate(ceil(((_nearFarProj.x / max(1.0000000116860974e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3((int)(uint((_bufferSizeAndInvSize.x * _94) + -0.5f)), (int)(uint((_bufferSizeAndInvSize.y * _95) + -0.5f)), 0)))).x) & 16777215)))) * 5.960465188081798e-08f))) + 0.05000000074505806f) - (_nearFarProj.x / max(1.0000000116860974e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(int(_customRenderPassSizeInvSize.x * _94), int(_customRenderPassSizeInvSize.y * _95), 0)))).x)))));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _143 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _157 = (lerp(_32.x, _143.x, _140));  // [sem: blended]
    _158 = (lerp(_32.y, _143.y, _140));  // [sem: blended]
    _159 = (lerp(_32.z, _143.z, _140));  // [sem: blended]
  } else {
    _157 = _32.x;  // [sem: blended]
    _158 = _32.y;  // [sem: blended]
    _159 = _32.z;  // [sem: blended]
  }
  _160 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _173 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _160, 0)))).x) & 127)))) + 0.5f);
  } else {
    _173 = 1.0f;
  }
  _176 = (_localToneMappingParams.w > 0.0f);
  if (_176) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_157, _158, _159));
    _436 = _rndx_tonemapped_color.x;
    _437 = _rndx_tonemapped_color.y;
    _438 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _444 = 1.0f - abs(_etcParams.w);
      _448 = saturate(_etcParams.w);  // [sem: expr_sat]
      _449 = (_444 * _436) + _448;
      _450 = (_444 * _437) + _448;
      _451 = (_444 * _438) + _448;
      if (_colorGradingParams.w > 0.0f) {
        _456 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _473 = (((max(0.0f, (1.0f - _449)) - _449) * _456) + _449);
        _474 = (((max(0.0f, (1.0f - _450)) - _450) * _456) + _450);
        _475 = (((max(0.0f, (1.0f - _451)) - _451) * _456) + _451);
      } else {
        _473 = _449;
        _474 = _450;
        _475 = _451;
      }
      _481 = _userImageAdjust.y + 1.0f;
      _485 = _userImageAdjust.x + 0.5f;
      _486 = ((_473 + -0.5f) * _481) + _485;
      _487 = ((_474 + -0.5f) * _481) + _485;
      _488 = ((_475 + -0.5f) * _481) + _485;
      _518 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _529 = exp2(log2(saturate(mad(_colorBlind0.z, _488, mad(_colorBlind0.y, _487, (_colorBlind0.x * _486))))) * _518);
      _530 = exp2(log2(saturate(mad(_colorBlind1.z, _488, mad(_colorBlind1.y, _487, (_colorBlind1.x * _486))))) * _518);
      _531 = exp2(log2(saturate(mad(_colorBlind2.z, _488, mad(_colorBlind2.y, _487, (_colorBlind2.x * _486))))) * _518);
    } else {
      _529 = _436;
      _530 = _437;
      _531 = _438;
    }
  } else {
    _529 = _157;
    _530 = _158;
    _531 = _159;
  }
  if (_etcParams.y > 1.0f) {
    _540 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _541 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _545 = saturate(1.0f - (dot(float2(_540, _541), float2(_540, _541)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _550 = (_545 * _529);
    _551 = (_545 * _530);
    _552 = (_545 * _531);
  } else {
    _550 = _529;
    _551 = _530;
    _552 = _531;
  }
  if (_176 && (_etcParams.z > 0.0f)) {
    _582 = select((_550 <= 0.0031308000907301903f), (_550 * 12.920000076293945f), (((pow(_550, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _583 = select((_551 <= 0.0031308000907301903f), (_551 * 12.920000076293945f), (((pow(_551, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _584 = select((_552 <= 0.0031308000907301903f), (_552 * 12.920000076293945f), (((pow(_552, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _582 = _550;
    _583 = _551;
    _584 = _552;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _589 = (float)((uint)_160);
    if (!(_589 < _viewDir.w)) {
      if (!(_589 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _598 = _582;
        _599 = _583;
        _600 = _584;
      } else {
        _598 = 0.0f;
        _599 = 0.0f;
        _600 = 0.0f;
      }
    } else {
      _598 = 0.0f;
      _599 = 0.0f;
      _600 = 0.0f;
    }
  } else {
    _598 = _582;
    _599 = _583;
    _600 = _584;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_598, _599, _600), _sunDirection.y, _moonDirection.y);
    _598 = _rndx_final_color.x;
    _599 = _rndx_final_color.y;
    _600 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _598;
  SV_Target.y = _599;
  SV_Target.z = _600;
  SV_Target.w = _173;
  return SV_Target;
}
