struct PostProcessGhost_CDStruct {
  float _ghostFXRatio;
  uint _ghostNoiseTex;
  float _ghostNoiseIntensity;
  float _ghostFXColorInnerBrightness;
  uint _ghostFXColor1;
  uint _ghostFXColor2;
};

struct BindlessParameters_PostProcessGhost_CD {
  PostProcessGhost_CDStruct BindlessParameters_PostProcessGhost_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<uint> __3__36__0__0__g_depthOpaque : register(t64, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t39, space36);

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

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
};

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
  float4 _25;
  int _31;
  float _39;
  float _165;
  float _166;
  float _167;
  float _181;
  float _386;
  float _387;
  float _388;
  float _481;
  float _482;
  float _483;
  float _537;
  float _538;
  float _539;
  float _558;
  float _559;
  float _560;
  float _590;
  float _591;
  float _592;
  float _606;
  float _607;
  float _608;
  float _47;
  int _50;
  int _58;
  int _61;
  float _69;
  int _72;
  float _80;
  float _97;
  float _99;
  float _101;
  int _104;
  float _112;
  float _148;
  float4 _151;
  uint _168;
  bool _184;
  float _190;
  float _209;
  float _225;
  float _241;
  float _242;
  float _246;
  float _249;
  float _252;
  float _259;
  float _266;
  float _273;
  float _274;
  float _275;
  float _276;
  float _277;
  float _278;
  float _279;
  float _295;
  float _311;
  float _327;
  float _328;
  float _329;
  float _330;
  float _331;
  float _348;
  float _349;
  float _350;
  float _351;
  float _354;
  float _357;
  float _361;
  float _365;
  float _369;
  float _389;
  float _401;
  float _413;
  float _425;
  float _432;
  float _439;
  float _446;
  float _452;
  float _453;
  float _455;
  float _457;
  float _459;
  float _464;
  float _485;
  float _487;
  float _490;
  float _493;
  float _496;
  float _502;
  float _544;
  float _547;
  float _553;
  float _595;
  _25 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _31 = WaveReadLaneFirst(_materialIndex);
  _39 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_31 < (uint)170000), _31, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
  if (!(!(_39 >= 0.001f))) {
    _47 = 4.0f / (_srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y);
    _50 = WaveReadLaneFirst(_materialIndex);
    _58 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_50 < (uint)170000), _50, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostNoiseTex);
    _61 = WaveReadLaneFirst(_materialIndex);
    _69 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_61 < (uint)170000), _61, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
    _72 = WaveReadLaneFirst(_materialIndex);
    _80 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_72 < (uint)170000), _72, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostNoiseIntensity);
    _97 = (_80 * _69) * (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_58 < (uint)65000), _58, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((TEXCOORD.x * 3.0f) * _47), ((_time.x * 0.3f) + (_47 * TEXCOORD.y)))))).y);
    _99 = (_97 * 0.01f) + TEXCOORD.x;
    _101 = (_97 * 0.05f) + TEXCOORD.y;
    _104 = WaveReadLaneFirst(_materialIndex);
    _112 = WaveReadLaneFirst(BindlessParameters_PostProcessGhost_CD[((int)((uint)((uint)(select(((uint)_104 < (uint)170000), _104, 0))) + (uint)(0)))].BindlessParameters_PostProcessGhost_CD._ghostFXRatio);
    _148 = saturate(ceil(((_nearFarProj.x / max(1e-07f, (((float)((uint)((uint)((((uint)(__3__36__0__0__g_depthOpaque.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _99) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _101) + -0.5f))), 0)))).x) & 16777215)))) * 5.960465e-08f))) + 0.05f) - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _99)), ((int)(_customRenderPassSizeInvSize.y * _101)), 0)))).x))))) * _112;
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _151 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _165 = (lerp(_25.z, _151.z, _148));  // [sem: blended]
    _166 = (lerp(_25.y, _151.y, _148));  // [sem: blended]
    _167 = (lerp(_25.x, _151.x, _148));  // [sem: blended]
  } else {
    _165 = _25.z;  // [sem: blended]
    _166 = _25.y;  // [sem: blended]
    _167 = _25.x;  // [sem: blended]
  }
  _168 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _181 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _168, 0)))).x) & 127)))) + 0.5f);
  } else {
    _181 = 1.0f;
  }
  _184 = (_localToneMappingParams.w > 0.0f);
  if (_184) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_167, _166, _165));
    _432 = _rndx_tonemapped_color.x;
    _439 = _rndx_tonemapped_color.y;
    _446 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _452 = 1.0f - abs(_etcParams.w);
      _453 = saturate(_etcParams.w);  // [sem: expr_sat]
      _455 = (_452 * _432) + _453;
      _457 = (_452 * _439) + _453;
      _459 = (_452 * _446) + _453;
      if (_colorGradingParams.w > 0.0f) {
        _464 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _481 = (((max(0.0f, (1.0f - _459)) - _459) * _464) + _459);
        _482 = (((max(0.0f, (1.0f - _457)) - _457) * _464) + _457);
        _483 = (((max(0.0f, (1.0f - _455)) - _455) * _464) + _455);
      } else {
        _481 = _459;
        _482 = _457;
        _483 = _455;
      }
      _485 = _userImageAdjust.y + 1.0f;
      _487 = _userImageAdjust.x + 0.5f;
      _490 = ((_483 + -0.5f) * _485) + _487;
      _493 = ((_482 + -0.5f) * _485) + _487;
      _496 = ((_481 + -0.5f) * _485) + _487;
      _502 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _537 = exp2(log2(saturate(mad(_colorBlind2.z, _496, mad(_colorBlind2.y, _493, (_colorBlind2.x * _490))))) * _502);
      _538 = exp2(log2(saturate(mad(_colorBlind1.z, _496, mad(_colorBlind1.y, _493, (_colorBlind1.x * _490))))) * _502);
      _539 = exp2(log2(saturate(mad(_colorBlind0.z, _496, mad(_colorBlind0.y, _493, (_colorBlind0.x * _490))))) * _502);
    } else {
      _537 = _446;
      _538 = _439;
      _539 = _432;
    }
  } else {
    _537 = _165;
    _538 = _166;
    _539 = _167;
  }
  if (_etcParams.y > 1.0f) {
    _544 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _547 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _553 = saturate(1.0f - (dot(float2(_544, _547), float2(_544, _547)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _558 = (_553 * _537);
    _559 = (_553 * _538);
    _560 = (_553 * _539);
  } else {
    _558 = _537;
    _559 = _538;
    _560 = _539;
  }
  if (_184 && (_etcParams.z > 0.0f)) {
    _590 = select((_560 <= 0.0031308f), (_560 * 12.92f), (((pow(_560, 0.41666666f)) * 1.055f) + -0.055f));
    _591 = select((_559 <= 0.0031308f), (_559 * 12.92f), (((pow(_559, 0.41666666f)) * 1.055f) + -0.055f));
    _592 = select((_558 <= 0.0031308f), (_558 * 12.92f), (((pow(_558, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _590 = _560;
    _591 = _559;
    _592 = _558;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _595 = (float)((uint)((uint)(_168)));
    if (!(_595 < _viewDir.w)) {
      if (!(!(_595 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _606 = 0.0f;
        _607 = 0.0f;
        _608 = 0.0f;
      } else {
        _606 = _590;
        _607 = _591;
        _608 = _592;
      }
    } else {
      _606 = 0.0f;
      _607 = 0.0f;
      _608 = 0.0f;
    }
  } else {
    _606 = _590;
    _607 = _591;
    _608 = _592;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_606, _607, _608), _sunDirection.y, _moonDirection.y);
    _606 = _rndx_final_color.x;
    _607 = _rndx_final_color.y;
    _608 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _606;
  SV_Target.y = _607;
  SV_Target.z = _608;
  SV_Target.w = _181;
  return SV_Target;
}
