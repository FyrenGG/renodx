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

struct BindlessParameters_PostProcessAction {
  PostProcessActionStruct BindlessParameters_PostProcessAction;
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
  int _34;
  float _42;
  int _45;
  float _53;
  int _57;
  float _58;
  float _59;
  float _60;
  int _61;
  int _97;
  int _98;
  float _116;
  float _117;
  float _118;
  float _252;
  float _284;
  float _298;
  float _503;
  float _504;
  float _505;
  float _598;
  float _599;
  float _600;
  float _654;
  float _655;
  float _656;
  float _675;
  float _676;
  float _677;
  float _707;
  float _708;
  float _709;
  float _723;
  float _724;
  float _725;
  float _70;
  float4 _84;
  float _89;
  float _91;
  float _93;
  int _94;
  int _100;
  float4 _111;
  int _123;
  float _131;
  float _135;
  int _138;
  float _146;
  float _150;
  int _153;
  int _161;
  int _164;
  float _172;
  int _175;
  float _183;
  float _185;
  float _189;
  float _193;
  float _202;
  int _205;
  float _213;
  int _218;
  float _226;
  float _230;
  int _233;
  float _241;
  int _255;
  float _263;
  uint _285;
  bool _301;
  float _307;
  float _326;
  float _342;
  float _358;
  float _359;
  float _363;
  float _366;
  float _369;
  float _376;
  float _383;
  float _390;
  float _391;
  float _392;
  float _393;
  float _394;
  float _395;
  float _396;
  float _412;
  float _428;
  float _444;
  float _445;
  float _446;
  float _447;
  float _448;
  float _465;
  float _466;
  float _467;
  float _468;
  float _471;
  float _474;
  float _478;
  float _482;
  float _486;
  float _506;
  float _518;
  float _530;
  float _542;
  float _549;
  float _556;
  float _563;
  float _569;
  float _570;
  float _572;
  float _574;
  float _576;
  float _581;
  float _602;
  float _604;
  float _607;
  float _610;
  float _613;
  float _619;
  float _661;
  float _664;
  float _670;
  float _712;
  int __loop_jump_target = -1;
  _23 = WaveReadLaneFirst(_materialIndex);
  _31 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_23 < (uint)170000), _23, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._gaussianBlurIntensity);
  _34 = WaveReadLaneFirst(_materialIndex);
  _42 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_34 < (uint)170000), _34, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._radialBlurIntensity);
  _45 = WaveReadLaneFirst(_materialIndex);
  _53 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_45 < (uint)170000), _45, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderRatio);
  if (_31 > 0.0f) {
    _57 = -5;
    _58 = 0.0f;
    _59 = 0.0f;
    _60 = 0.0f;
    _61 = -5;
    while(true) {
      _98 = _61;
      _70 = (_global_0[((int)min((uint)(((int)(_57) + (int)(5))), (uint)(10)))]) * (_global_0[((int)min((uint)(((int)(_61) + (int)(5))), (uint)(10)))]);
      // [sem: _3__36__0__0__g_sceneColor_sample]
      _84 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((((((float)((int)(_61))) * _31) * _srcTargetSizeAndInv.z) + TEXCOORD.x), (((((float)((int)(_57))) * _31) * _srcTargetSizeAndInv.w) + TEXCOORD.y)));
      _89 = (_84.x * _70) + _60;
      _91 = (_84.y * _70) + _59;
      _93 = (_84.z * _70) + _58;
      _94 = (int)(_57) + (int)(1);
      if (!(_94 == 6)) {
        _97 = _94;
        _98 = _61;
        while(true) {
          _57 = _97;
          _58 = _93;
          _59 = _91;
          _60 = _89;
          _61 = _98;
          __loop_jump_target = 56;
          break;
          break;
        }
        if (__loop_jump_target == 56) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
      }
      _100 = (int)(_61) + (int)(1);
      if (!(_100 == 6)) {
        _97 = -5;
        _98 = _100;
        while(true) {
          _57 = _97;
          _58 = _93;
          _59 = _91;
          _60 = _89;
          _61 = _98;
          __loop_jump_target = 56;
          break;
          break;
        }
        if (__loop_jump_target == 56) {
          __loop_jump_target = -1;
          continue;
        }
        if (__loop_jump_target != -1) {
          break;
        }
      }
      _116 = (_93 * 1.8792827f);
      _117 = (_91 * 1.8792827f);
      _118 = (_89 * 1.8792827f);
      break;
    }
  } else {
    if (_42 > 0.0f) {
      _111 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
      _116 = _111.z;
      _117 = _111.y;
      _118 = _111.x;
    } else {
      _116 = 0.0f;
      _117 = 0.0f;
      _118 = 0.0f;
    }
  }
  if (_53 > 0.0f) {
    _123 = WaveReadLaneFirst(_materialIndex);
    _131 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_123 < (uint)170000), _123, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderEdgeNoiseTile.x);
    _135 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_123 < (uint)170000), _123, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderEdgeNoiseTile.y);
    _138 = WaveReadLaneFirst(_materialIndex);
    _146 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_138 < (uint)170000), _138, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderEdgeNoiseOffset.x);
    _150 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_138 < (uint)170000), _138, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderEdgeNoiseOffset.y);
    _153 = WaveReadLaneFirst(_materialIndex);
    _161 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_153 < (uint)170000), _153, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderEdgeNoiseTexture);
    _164 = WaveReadLaneFirst(_materialIndex);
    _172 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_164 < (uint)170000), _164, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderSmoothness);
    _175 = WaveReadLaneFirst(_materialIndex);
    _183 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_175 < (uint)170000), _175, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderWidth);
    _185 = (1.0f - _183) * 0.5f;
    _189 = max((abs(TEXCOORD.x + -0.5f) - _185), 0.0f);
    _193 = max((abs(TEXCOORD.y + -0.5f) - _185), 0.0f);
    _202 = 1.0f - ((1.0f - saturate(sqrt((_193 * _193) + (_189 * _189)) / _172)) * 2.0f);
    _205 = WaveReadLaneFirst(_materialIndex);
    _213 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_205 < (uint)170000), _205, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderFlickerSpeed);
    if (_213 > 0.0f) {
      _218 = WaveReadLaneFirst(_materialIndex);
      _226 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_218 < (uint)170000), _218, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderFlickerOpacityMinMax.x);
      _230 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_218 < (uint)170000), _218, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderFlickerOpacityMinMax.y);
      _233 = WaveReadLaneFirst(_materialIndex);
      _241 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_233 < (uint)170000), _233, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderFlickerIntensity);
      _252 = ((_241 * _202) * min(max(sin((_213 * 3.1415927f) * _time.x), _226), _230));
    } else {
      _252 = _202;
    }
    _255 = WaveReadLaneFirst(_materialIndex);
    _263 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_255 < (uint)170000), _255, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderEdgeNoiseRatio);
    _284 = (saturate(saturate(_252) - ((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_161 < (uint)65000), _161, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_146 + (_131 * TEXCOORD.x)), (_150 + (_135 * TEXCOORD.y)))))).x) * _263)) * min(max(_53, 0.0f), 1.0f));
  } else {
    _284 = 1.0f;
  }
  _285 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _298 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _285, 0)))).x) & 127)))) + 0.5f);
  } else {
    _298 = _284;
  }
  _301 = (_localToneMappingParams.w > 0.0f);
  if (_301) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_118, _117, _116));
    _549 = _rndx_tonemapped_color.x;
    _556 = _rndx_tonemapped_color.y;
    _563 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _569 = 1.0f - abs(_etcParams.w);
      _570 = saturate(_etcParams.w);  // [sem: expr_sat]
      _572 = (_569 * _549) + _570;
      _574 = (_569 * _556) + _570;
      _576 = (_569 * _563) + _570;
      if (_colorGradingParams.w > 0.0f) {
        _581 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _598 = (((max(0.0f, (1.0f - _576)) - _576) * _581) + _576);
        _599 = (((max(0.0f, (1.0f - _574)) - _574) * _581) + _574);
        _600 = (((max(0.0f, (1.0f - _572)) - _572) * _581) + _572);
      } else {
        _598 = _576;
        _599 = _574;
        _600 = _572;
      }
      _602 = _userImageAdjust.y + 1.0f;
      _604 = _userImageAdjust.x + 0.5f;
      _607 = ((_600 + -0.5f) * _602) + _604;
      _610 = ((_599 + -0.5f) * _602) + _604;
      _613 = ((_598 + -0.5f) * _602) + _604;
      _619 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _654 = exp2(log2(saturate(mad(_colorBlind2.z, _613, mad(_colorBlind2.y, _610, (_colorBlind2.x * _607))))) * _619);
      _655 = exp2(log2(saturate(mad(_colorBlind1.z, _613, mad(_colorBlind1.y, _610, (_colorBlind1.x * _607))))) * _619);
      _656 = exp2(log2(saturate(mad(_colorBlind0.z, _613, mad(_colorBlind0.y, _610, (_colorBlind0.x * _607))))) * _619);
    } else {
      _654 = _563;
      _655 = _556;
      _656 = _549;
    }
  } else {
    _654 = _116;
    _655 = _117;
    _656 = _118;
  }
  if (_etcParams.y > 1.0f) {
    _661 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _664 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _670 = saturate(1.0f - (dot(float2(_661, _664), float2(_661, _664)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _675 = (_670 * _655);
    _676 = (_670 * _656);
    _677 = (_670 * _654);
  } else {
    _675 = _655;
    _676 = _656;
    _677 = _654;
  }
  if (_301 && (_etcParams.z > 0.0f)) {
    _707 = select((_676 <= 0.0031308f), (_676 * 12.92f), (((pow(_676, 0.41666666f)) * 1.055f) + -0.055f));
    _708 = select((_675 <= 0.0031308f), (_675 * 12.92f), (((pow(_675, 0.41666666f)) * 1.055f) + -0.055f));
    _709 = select((_677 <= 0.0031308f), (_677 * 12.92f), (((pow(_677, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _707 = _676;
    _708 = _675;
    _709 = _677;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _712 = (float)((uint)((uint)(_285)));
    if (!(_712 < _viewDir.w)) {
      if (!(!(_712 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _723 = 0.0f;
        _724 = 0.0f;
        _725 = 0.0f;
      } else {
        _723 = _707;
        _724 = _708;
        _725 = _709;
      }
    } else {
      _723 = 0.0f;
      _724 = 0.0f;
      _725 = 0.0f;
    }
  } else {
    _723 = _707;
    _724 = _708;
    _725 = _709;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_723, _724, _725), _sunDirection.y, _moonDirection.y);
    _723 = _rndx_final_color.x;
    _724 = _rndx_final_color.y;
    _725 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _723;
  SV_Target.y = _724;
  SV_Target.z = _725;
  SV_Target.w = _298;
  return SV_Target;
}
