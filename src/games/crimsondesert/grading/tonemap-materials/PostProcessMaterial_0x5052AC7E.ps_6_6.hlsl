struct PostProcessDrugStruct {
  float _panningSpeed;
  float _changeSpeed;
  float _panningWidth;
  float _distortionScale;
  float _distortionSpeed;
  float _distortionDensity;
  float _blendBias;
  float3 _colorTint;
  float _drugPPIntensity;
  float _centerMaskRadius;
  float _centerMaskHardness;
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

struct BindlessParameters_PostProcessDrug {
  PostProcessDrugStruct BindlessParameters_PostProcessDrug;
};

typedef BindlessParameters_PostProcessDrug BindlessParameters_PostProcessDrug_t;
ConstantBuffer<BindlessParameters_PostProcessDrug_t> BindlessParameters_PostProcessDrug[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float _27;
  float _28;
  float _37;
  float4 _40;
  int _44;
  float _52;
  int _53;
  float _61;
  float _67;
  float _68;
  int _72;
  float _80;
  int _89;
  float _97;
  int _98;
  float _106;
  int _107;
  float _115;
  float _118;
  float _121;
  float4 _126;
  float4 _137;
  int _143;
  float _151;
  float _156;
  float _157;
  float _164;
  float _165;
  float _166;
  float4 _173;
  float _180;
  int _190;
  float _200;
  float _201;
  float _202;
  int _240;
  float _248;
  int _250;
  float _258;
  int _259;
  float _267;
  float _274;
  float _284;
  float _285;
  float _286;
  uint _287;
  float _301;
  float _506;
  float _507;
  float _508;
  float _601;
  float _602;
  float _603;
  float _657;
  float _658;
  float _659;
  float _678;
  float _679;
  float _680;
  float _710;
  float _711;
  float _712;
  float _726;
  float _727;
  float _728;
  bool _304;
  float _310;
  float _359;
  float _360;
  float _361;
  float _363;
  float _370;
  float _371;
  float _372;
  float _391;
  float _392;
  float _393;
  float _394;
  float _395;
  float _396;
  float _397;
  float _398;
  float _399;
  float _445;
  float _446;
  float _447;
  float _448;
  float _449;
  float _450;
  float _451;
  float _468;
  float _469;
  float _470;
  float _471;
  float _477;
  float _480;
  float _487;
  float _488;
  float _489;
  float _518;
  float _543;
  float _544;
  float _545;
  float _564;
  float _565;
  float _566;
  float _572;
  float _576;
  float _577;
  float _578;
  float _579;
  float _584;
  float _609;
  float _613;
  float _614;
  float _615;
  float _616;
  float _646;
  float _668;
  float _669;
  float _673;
  float _717;
  _27 = TEXCOORD.x + -0.5f;
  _28 = TEXCOORD.y + -0.5f;
  // [sem: expr_sat]
  _37 = saturate(min(((0.5f - abs(_27)) * _srcTargetSizeAndInv.x), ((0.5f - abs(_28)) * _srcTargetSizeAndInv.y)) * 0.05000000074505806f);
  _40 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _44 = WaveReadLaneFirst(_materialIndex);
  _52 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)(select(((uint)_44 < (uint)170000), _44, 0)) + 0u))].BindlessParameters_PostProcessDrug._distortionDensity);
  _53 = WaveReadLaneFirst(_materialIndex);
  _61 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)(select(((uint)_53 < (uint)170000), _53, 0)) + 0u))].BindlessParameters_PostProcessDrug._distortionScale);
  _67 = _61 * 0.009999999776482582f;
  _68 = cos(_time.x + (_52 * TEXCOORD.x)) * _67;
  _72 = WaveReadLaneFirst(_materialIndex);
  _80 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)(select(((uint)_72 < (uint)170000), _72, 0)) + 0u))].BindlessParameters_PostProcessDrug._distortionSpeed);
  _89 = WaveReadLaneFirst(_materialIndex);
  _97 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)(select(((uint)_89 < (uint)170000), _89, 0)) + 0u))].BindlessParameters_PostProcessDrug._panningWidth);
  _98 = WaveReadLaneFirst(_materialIndex);
  _106 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)(select(((uint)_98 < (uint)170000), _98, 0)) + 0u))].BindlessParameters_PostProcessDrug._blendBias);
  _107 = WaveReadLaneFirst(_materialIndex);
  _115 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)(select(((uint)_107 < (uint)170000), _107, 0)) + 0u))].BindlessParameters_PostProcessDrug._panningSpeed);
  _118 = _time.x * _115;
  _121 = _97 * -0.009999999776482582f;
  // [sem: _3__36__0__0__g_sceneColor_sample]
  _126 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((sin(_118 * 0.8975979089736938f) * _121) + TEXCOORD.y)));
  // [sem: _3__36__0__0__g_sceneColor_sample]
  _137 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (((_97 * 0.009999999776482582f) * sin(_118 * 2.094395160675049f)) + TEXCOORD.y)));
  _143 = WaveReadLaneFirst(_materialIndex);
  _151 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)(select(((uint)_143 < (uint)170000), _143, 0)) + 0u))].BindlessParameters_PostProcessDrug._changeSpeed);
  _156 = min(max((sin(_151 * _time.x) * 2.0f), 0.0f), 1.0f);
  _157 = _156 * _106;
  _164 = (_157 * (_137.x - _126.x)) + _126.x;
  _165 = (_157 * (_137.y - _126.y)) + _126.y;
  _166 = (_157 * (_137.z - _126.z)) + _126.z;
  // [sem: _3__36__0__0__g_sceneColor_sample]
  _173 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(((sin(_118 * 1.2566370964050293f) * _121) + ((_68 * _37) + TEXCOORD.x)), (((_67 * _37) * sin((_80 * _time.x) + (((TEXCOORD.y + TEXCOORD.x) + _68) * _52))) + TEXCOORD.y)));
  _180 = min(max((1.0f - _156), 0.0f), 1.0f) * _106;
  _190 = WaveReadLaneFirst(_materialIndex);
  _200 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)(select(((uint)_190 < (uint)170000), _190, 0)) + 0u))].BindlessParameters_PostProcessDrug._colorTint.x);
  _201 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)(select(((uint)_190 < (uint)170000), _190, 0)) + 0u))].BindlessParameters_PostProcessDrug._colorTint.y);
  _202 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)(select(((uint)_190 < (uint)170000), _190, 0)) + 0u))].BindlessParameters_PostProcessDrug._colorTint.z);
  _240 = WaveReadLaneFirst(_materialIndex);
  _248 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)(select(((uint)_240 < (uint)170000), _240, 0)) + 0u))].BindlessParameters_PostProcessDrug._centerMaskRadius);
  _250 = WaveReadLaneFirst(_materialIndex);
  _258 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)(select(((uint)_250 < (uint)170000), _250, 0)) + 0u))].BindlessParameters_PostProcessDrug._centerMaskHardness);
  _259 = WaveReadLaneFirst(_materialIndex);
  _267 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)(select(((uint)_259 < (uint)170000), _259, 0)) + 0u))].BindlessParameters_PostProcessDrug._centerMaskRadius);
  _274 = saturate((sqrt((_28 * _28) + (_27 * _27)) - _248) / max(0.0010000000474974513f, (saturate(_267 * 2.0f) * _258))) * _37;
  _284 = (_274 * ((select((_200 < 0.040449999272823334f), (_200 * 0.07739938050508499f), exp2(log2((_200 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)) * ((_180 * (_173.x - _164)) + _164)) - _40.x)) + _40.x;
  _285 = (_274 * ((select((_201 < 0.040449999272823334f), (_201 * 0.07739938050508499f), exp2(log2((_201 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)) * ((_180 * (_173.y - _165)) + _165)) - _40.y)) + _40.y;
  _286 = (_274 * ((select((_202 < 0.040449999272823334f), (_202 * 0.07739938050508499f), exp2(log2((_202 + 0.054999999701976776f) * 0.9478673338890076f) * 2.4000000953674316f)) * ((_180 * (_173.z - _166)) + _166)) - _40.z)) + _40.z;
  _287 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _301 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _287, 0)))).x) & 127)))) + 0.5f);
  } else {
    _301 = _postProcessParams.x;
  }
  _304 = (_localToneMappingParams.w > 0.0f);
  if (_304) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_284, _285, _286));
    _564 = _rndx_tonemapped_color.x;
    _565 = _rndx_tonemapped_color.y;
    _566 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _572 = 1.0f - abs(_etcParams.w);
      _576 = saturate(_etcParams.w);  // [sem: expr_sat]
      _577 = (_572 * _564) + _576;
      _578 = (_572 * _565) + _576;
      _579 = (_572 * _566) + _576;
      if (_colorGradingParams.w > 0.0f) {
        _584 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _601 = (((max(0.0f, (1.0f - _577)) - _577) * _584) + _577);
        _602 = (((max(0.0f, (1.0f - _578)) - _578) * _584) + _578);
        _603 = (((max(0.0f, (1.0f - _579)) - _579) * _584) + _579);
      } else {
        _601 = _577;
        _602 = _578;
        _603 = _579;
      }
      _609 = _userImageAdjust.y + 1.0f;
      _613 = _userImageAdjust.x + 0.5f;
      _614 = ((_601 + -0.5f) * _609) + _613;
      _615 = ((_602 + -0.5f) * _609) + _613;
      _616 = ((_603 + -0.5f) * _609) + _613;
      _646 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _657 = exp2(log2(saturate(mad(_colorBlind0.z, _616, mad(_colorBlind0.y, _615, (_colorBlind0.x * _614))))) * _646);
      _658 = exp2(log2(saturate(mad(_colorBlind1.z, _616, mad(_colorBlind1.y, _615, (_colorBlind1.x * _614))))) * _646);
      _659 = exp2(log2(saturate(mad(_colorBlind2.z, _616, mad(_colorBlind2.y, _615, (_colorBlind2.x * _614))))) * _646);
    } else {
      _657 = _564;
      _658 = _565;
      _659 = _566;
    }
  } else {
    _657 = _284;
    _658 = _285;
    _659 = _286;
  }
  if (_etcParams.y > 1.0f) {
    _668 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _669 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _673 = saturate(1.0f - (dot(float2(_668, _669), float2(_668, _669)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _678 = (_673 * _657);
    _679 = (_673 * _658);
    _680 = (_673 * _659);
  } else {
    _678 = _657;
    _679 = _658;
    _680 = _659;
  }
  if (_304 && (_etcParams.z > 0.0f)) {
    _710 = select((_678 <= 0.0031308000907301903f), (_678 * 12.920000076293945f), (((pow(_678, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _711 = select((_679 <= 0.0031308000907301903f), (_679 * 12.920000076293945f), (((pow(_679, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _712 = select((_680 <= 0.0031308000907301903f), (_680 * 12.920000076293945f), (((pow(_680, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _710 = _678;
    _711 = _679;
    _712 = _680;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _717 = (float)((uint)_287);
    if (!(_717 < _viewDir.w)) {
      if (!(_717 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _726 = _710;
        _727 = _711;
        _728 = _712;
      } else {
        _726 = 0.0f;
        _727 = 0.0f;
        _728 = 0.0f;
      }
    } else {
      _726 = 0.0f;
      _727 = 0.0f;
      _728 = 0.0f;
    }
  } else {
    _726 = _710;
    _727 = _711;
    _728 = _712;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_726, _727, _728), _sunDirection.y, _moonDirection.y);
    _726 = _rndx_final_color.x;
    _727 = _rndx_final_color.y;
    _728 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _726;
  SV_Target.y = _727;
  SV_Target.z = _728;
  SV_Target.w = _301;
  return SV_Target;
}
