struct PostProcessActionStruct {
  float _contrast;
  float3 _saturation;
  float _gaussianBlurIntensity;
  float2 _gaussianBlurPosition;
  float _gaussianBlurClampInnerRadius;
  float _gaussianBlurClampHardness;
  float2 _radialBlurPosition;
  float _radialBlurIntensity;
  float _radialBlurClampInnerRadius;
  float _radialBlurClampHardness;
  float _borderRatio;
  float _borderWidth;
  float _borderSmoothness;
  float _borderEdgeNoiseRatio;
  float2 _borderEdgeNoiseOffset;
  float2 _borderEdgeNoiseTile;
  uint _borderColor;
  uint _borderEdgeNoiseTexture;
  float _borderFlickerSpeed;
  float _borderFlickerIntensity;
  float2 _borderFlickerOpacityMinMax;
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

struct BindlessParameters_PostProcessAction {
  PostProcessActionStruct BindlessParameters_PostProcessAction;
};

typedef BindlessParameters_PostProcessAction BindlessParameters_PostProcessAction_t;
ConstantBuffer<BindlessParameters_PostProcessAction_t> BindlessParameters_PostProcessAction[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

static const float _global_0[11] = { 0.048393868f, 0.05793798f, 0.066644534f, 0.0736536f, 0.07820809f, 0.079788f, 0.07820809f, 0.0736536f, 0.066644534f, 0.05793798f, 0.048393868f };

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _23;
  float _31;
  int _32;
  float _40;
  int _41;
  float _49;
  float _57;
  float _58;
  float _59;
  int _60;
  float _62;
  float _63;
  float _64;
  int _65;
  float _111;
  float _112;
  float _113;
  float _237;
  float _255;
  float _269;
  float _474;
  float _475;
  float _476;
  float _569;
  float _570;
  float _571;
  float _625;
  float _626;
  float _627;
  float _646;
  float _647;
  float _648;
  float _678;
  float _679;
  float _680;
  float _694;
  float _695;
  float _696;
  float _72;
  float4 _86;
  float _93;
  float _94;
  float _95;
  int _96;
  int _99;
  float4 _106;
  int _116;
  float _125;
  float _126;
  int _129;
  float _138;
  float _139;
  int _142;
  int _150;
  int _159;
  float _167;
  int _168;
  float _176;
  float _182;
  float _185;
  float _186;
  float _195;
  int _196;
  float _204;
  int _207;
  float _216;
  float _217;
  int _225;
  float _233;
  int _239;
  float _247;
  uint _256;
  bool _272;
  float _278;
  float _327;
  float _328;
  float _329;
  float _331;
  float _338;
  float _339;
  float _340;
  float _359;
  float _360;
  float _361;
  float _362;
  float _363;
  float _364;
  float _365;
  float _366;
  float _367;
  float _413;
  float _414;
  float _415;
  float _416;
  float _417;
  float _418;
  float _419;
  float _436;
  float _437;
  float _438;
  float _439;
  float _445;
  float _448;
  float _455;
  float _456;
  float _457;
  float _486;
  float _511;
  float _512;
  float _513;
  float _532;
  float _533;
  float _534;
  float _540;
  float _544;
  float _545;
  float _546;
  float _547;
  float _552;
  float _577;
  float _581;
  float _582;
  float _583;
  float _584;
  float _614;
  float _636;
  float _637;
  float _641;
  float _685;
  int __loop_jump_target = -1;
  _23 = WaveReadLaneFirst(_materialIndex);
  _31 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_23 < (uint)170000), _23, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._gaussianBlurIntensity);
  _32 = WaveReadLaneFirst(_materialIndex);
  _40 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_32 < (uint)170000), _32, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._radialBlurIntensity);
  _41 = WaveReadLaneFirst(_materialIndex);
  _49 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_41 < (uint)170000), _41, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderRatio);
  if (_31 > 0.0f) {
    _57 = 0.0f;
    _58 = 0.0f;
    _59 = 0.0f;
    _60 = -5;
    while(true) {
      _62 = _57;
      _63 = _58;
      _64 = _59;
      _65 = -5;
      while(true) {
        _72 = (_global_0[min((uint)(((int)(_60) + (int)(5))), 10u)]) * (_global_0[min((uint)(((int)(_65) + (int)(5))), 10u)]);
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _86 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((((((float)((int)(_60))) * _31) * _srcTargetSizeAndInv.z) + TEXCOORD.x), (((((float)((int)(_65))) * _31) * _srcTargetSizeAndInv.w) + TEXCOORD.y)));
        _93 = (_86.x * _72) + _62;
        _94 = (_86.y * _72) + _63;
        _95 = (_86.z * _72) + _64;
        _96 = (int)(_65) + (int)(1);
        if (!(_96 == 6)) {
          _62 = _93;
          _63 = _94;
          _64 = _95;
          _65 = _96;
          continue;
        }
        _99 = (int)(_60) + (int)(1);
        if (!(_99 == 6)) {
          _57 = _93;
          _58 = _94;
          _59 = _95;
          _60 = _99;
          __loop_jump_target = 56;
          break;
        }
        while(true) {
          _111 = (_93 * 1.8792827f);
          _112 = (_94 * 1.8792827f);
          _113 = (_95 * 1.8792827f);
          break;
        }
        break;
      }
      if (__loop_jump_target == 56) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
      break;
    }
  } else {
    if (_40 > 0.0f) {
      _106 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
      _111 = _106.x;
      _112 = _106.y;
      _113 = _106.z;
    } else {
      _111 = 0.0f;
      _112 = 0.0f;
      _113 = 0.0f;
    }
  }
  if (_49 > 0.0f) {
    _116 = WaveReadLaneFirst(_materialIndex);
    _125 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_116 < (uint)170000), _116, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderEdgeNoiseTile.x);
    _126 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_116 < (uint)170000), _116, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderEdgeNoiseTile.y);
    _129 = WaveReadLaneFirst(_materialIndex);
    _138 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_129 < (uint)170000), _129, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderEdgeNoiseOffset.x);
    _139 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_129 < (uint)170000), _129, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderEdgeNoiseOffset.y);
    _142 = WaveReadLaneFirst(_materialIndex);
    _150 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_142 < (uint)170000), _142, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderEdgeNoiseTexture);
    _159 = WaveReadLaneFirst(_materialIndex);
    _167 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_159 < (uint)170000), _159, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderSmoothness);
    _168 = WaveReadLaneFirst(_materialIndex);
    _176 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_168 < (uint)170000), _168, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderWidth);
    _182 = (1.0f - _176) * 0.5f;
    _185 = max((abs(TEXCOORD.x + -0.5f) - _182), 0.0f);
    _186 = max((abs(TEXCOORD.y + -0.5f) - _182), 0.0f);
    _195 = 1.0f - ((1.0f - saturate(sqrt((_186 * _186) + (_185 * _185)) / _167)) * 2.0f);
    _196 = WaveReadLaneFirst(_materialIndex);
    _204 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_196 < (uint)170000), _196, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderFlickerSpeed);
    if (_204 > 0.0f) {
      _207 = WaveReadLaneFirst(_materialIndex);
      _216 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_207 < (uint)170000), _207, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderFlickerOpacityMinMax.x);
      _217 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_207 < (uint)170000), _207, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderFlickerOpacityMinMax.y);
      _225 = WaveReadLaneFirst(_materialIndex);
      _233 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_225 < (uint)170000), _225, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderFlickerIntensity);
      _237 = ((min(max(sin((_204 * 3.1415927f) * _time.x), _216), _217) * _195) * _233);
    } else {
      _237 = _195;
    }
    _239 = WaveReadLaneFirst(_materialIndex);
    _247 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_239 < (uint)170000), _239, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderEdgeNoiseRatio);
    _255 = (min(max(_49, 0.0f), 1.0f) * saturate(saturate(_237) - (_247 * (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_150 < (uint)65000), _150, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_138 + (_125 * TEXCOORD.x)), (_139 + (_126 * TEXCOORD.y)))))).x))));
  } else {
    _255 = 1.0f;
  }
  _256 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _269 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _256, 0)))).x) & 127)))) + 0.5f);
  } else {
    _269 = _255;
  }
  _272 = (_localToneMappingParams.w > 0.0f);
  if (_272) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_111, _112, _113));
    _532 = _rndx_tonemapped_color.x;
    _533 = _rndx_tonemapped_color.y;
    _534 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _540 = 1.0f - abs(_etcParams.w);
      _544 = saturate(_etcParams.w);  // [sem: expr_sat]
      _545 = (_540 * _532) + _544;
      _546 = (_540 * _533) + _544;
      _547 = (_540 * _534) + _544;
      if (_colorGradingParams.w > 0.0f) {
        _552 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _569 = (((max(0.0f, (1.0f - _545)) - _545) * _552) + _545);
        _570 = (((max(0.0f, (1.0f - _546)) - _546) * _552) + _546);
        _571 = (((max(0.0f, (1.0f - _547)) - _547) * _552) + _547);
      } else {
        _569 = _545;
        _570 = _546;
        _571 = _547;
      }
      _577 = _userImageAdjust.y + 1.0f;
      _581 = _userImageAdjust.x + 0.5f;
      _582 = ((_569 + -0.5f) * _577) + _581;
      _583 = ((_570 + -0.5f) * _577) + _581;
      _584 = ((_571 + -0.5f) * _577) + _581;
      _614 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _625 = exp2(log2(saturate(mad(_colorBlind0.z, _584, mad(_colorBlind0.y, _583, (_colorBlind0.x * _582))))) * _614);
      _626 = exp2(log2(saturate(mad(_colorBlind1.z, _584, mad(_colorBlind1.y, _583, (_colorBlind1.x * _582))))) * _614);
      _627 = exp2(log2(saturate(mad(_colorBlind2.z, _584, mad(_colorBlind2.y, _583, (_colorBlind2.x * _582))))) * _614);
    } else {
      _625 = _532;
      _626 = _533;
      _627 = _534;
    }
  } else {
    _625 = _111;
    _626 = _112;
    _627 = _113;
  }
  if (_etcParams.y > 1.0f) {
    _636 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _637 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _641 = saturate(1.0f - (dot(float2(_636, _637), float2(_636, _637)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _646 = (_641 * _625);
    _647 = (_641 * _626);
    _648 = (_641 * _627);
  } else {
    _646 = _625;
    _647 = _626;
    _648 = _627;
  }
  if (_272 && (_etcParams.z > 0.0f)) {
    _678 = select((_646 <= 0.0031308f), (_646 * 12.92f), (((pow(_646, 0.41666666f)) * 1.055f) + -0.055f));
    _679 = select((_647 <= 0.0031308f), (_647 * 12.92f), (((pow(_647, 0.41666666f)) * 1.055f) + -0.055f));
    _680 = select((_648 <= 0.0031308f), (_648 * 12.92f), (((pow(_648, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _678 = _646;
    _679 = _647;
    _680 = _648;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _685 = (float)((uint)((uint)(_256)));
    if (!(_685 < _viewDir.w)) {
      if (!(_685 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _694 = _678;
        _695 = _679;
        _696 = _680;
      } else {
        _694 = 0.0f;
        _695 = 0.0f;
        _696 = 0.0f;
      }
    } else {
      _694 = 0.0f;
      _695 = 0.0f;
      _696 = 0.0f;
    }
  } else {
    _694 = _678;
    _695 = _679;
    _696 = _680;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_694, _695, _696), _sunDirection.y, _moonDirection.y);
    _694 = _rndx_final_color.x;
    _695 = _rndx_final_color.y;
    _696 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _694;
  SV_Target.y = _695;
  SV_Target.z = _696;
  SV_Target.w = _269;
  return SV_Target;
}
