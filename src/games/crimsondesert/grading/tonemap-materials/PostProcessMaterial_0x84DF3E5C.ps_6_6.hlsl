Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t38, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t39, space36);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b16, space35) {
  float4 _time : packoffset(c000.x);
  float4 _timeNoScale : packoffset(c001.x);
  uint4 _frameNumber : packoffset(c002.x);
  float4 _screenSizeAndInvSize : packoffset(c003.x);
  float4 _bufferSizeAndInvSize : packoffset(c004.x);
  float4 _hiZUVScaleAndInvScale : packoffset(c005.x);
  float4 _resolutionScale : packoffset(c006.x);
  float4 _temporalReprojectionParams : packoffset(c007.x);
  float4 _viewPos : packoffset(c008.x);
  float4 _viewDir : packoffset(c009.x);
  column_major float4x4 _viewProj : packoffset(c010.x);
  column_major float4x4 _viewProjNoJitter : packoffset(c014.x);
  column_major float4x4 _viewProjRelative : packoffset(c018.x);
  column_major float4x4 _viewProjRelativeNoJitter : packoffset(c022.x);
  column_major float4x4 _invViewProj : packoffset(c026.x);
  column_major float4x4 _invViewProjRelative : packoffset(c030.x);
  column_major float4x4 _invViewProjRelativeNoJitter : packoffset(c034.x);
  column_major float4x4 _viewProjRelativeOrtho : packoffset(c038.x);
  float4 _sunDirection : packoffset(c042.x);
  float4 _moonDirection : packoffset(c043.x);
  float4 _moonRight : packoffset(c044.x);
  float4 _moonUp : packoffset(c045.x);
  float4 _ssaoRandomDirection[16] : packoffset(c046.x);
  column_major float4x4 _view : packoffset(c062.x);
  column_major float4x4 _viewRelative : packoffset(c066.x);
  column_major float4x4 _viewRelativePrev : packoffset(c070.x);
  column_major float4x4 _proj : packoffset(c074.x);
  column_major float4x4 _projNoJitter : packoffset(c078.x);
  float4 _viewPosPrev : packoffset(c082.x);
  column_major float4x4 _viewProjNoJitterPrev : packoffset(c083.x);
  column_major float4x4 _viewProjRelativePrev : packoffset(c087.x);
  column_major float4x4 _viewProjRelativeNoJitterPrev : packoffset(c091.x);
  column_major float4x4 _invViewProjPrev : packoffset(c095.x);
  column_major float4x4 _invViewProjRelativePrev : packoffset(c099.x);
  column_major float4x4 _projToPrevProj : packoffset(c103.x);
  column_major float4x4 _projToPrevProjNoTranslation : packoffset(c107.x);
  column_major float4x4 _viewProjectionTexScale : packoffset(c111.x);
  float4 _temporalAAJitter : packoffset(c115.x);
  float4 _temporalAAJitterParams : packoffset(c116.x);
  float4 _frustumPlanes[6] : packoffset(c117.x);
  float4 _frustumPlanesPrev[6] : packoffset(c123.x);
  float4 _frustumCornerDirs[4] : packoffset(c129.x);
  float4 _screenPercentage : packoffset(c133.x);
  float4 _nearFarProj : packoffset(c134.x);
  float4 _renderingOriginPos : packoffset(c135.x);
  float4 _renderingOriginPosPrev : packoffset(c136.x);
  float4 _lodMaskRenderRate : packoffset(c137.x);
  float4 _terrainNormalParams : packoffset(c138.x);
  int4 _hiZMapInfo : packoffset(c139.x);
  int4 _hiZMapInfoCurrent : packoffset(c140.x);
  float4 _treeParams : packoffset(c141.x);
  uint4 _clusterSize : packoffset(c142.x);
  uint4 _globalLightParams : packoffset(c143.x);
  float4 _bevelParams : packoffset(c144.x);
  float4 _variableRateShadingParams : packoffset(c145.x);
  float4 _cavityParams : packoffset(c146.x);
  float4 _customRenderPassSizeInvSize : packoffset(c147.x);
  uint4 _impostorParams : packoffset(c148.x);
  float4 _clusterDecalSizeAndInvSize : packoffset(c149.x);
  uint4 _globalWindParams : packoffset(c150.x);
  float4 _windFluidVolumeParams : packoffset(c151.x);
  float4 _windFluidTextureParams : packoffset(c152.x);
  float4 _raytracingAccelerationStructureOrigin : packoffset(c153.x);
  float4 _debugBaseColor : packoffset(c154.x);
  float4 _debugNormal : packoffset(c155.x);
  float4 _debugMaterial : packoffset(c156.x);
  float4 _debugMultiplier : packoffset(c157.x);
  uint2 _debugBaseColor16 : packoffset(c158.x);
  uint2 _debugNormal16 : packoffset(c158.z);
  uint2 _debugMaterial16 : packoffset(c159.x);
  uint2 _debugMultiplier16 : packoffset(c159.z);
  float4 _debugCursorWorldPos : packoffset(c160.x);
  uint4 _debugRenderToggle01 : packoffset(c161.x);
  uint4 _debugTreeShapeVariation : packoffset(c162.x);
  float4 _positionBasedDynamicsParameter : packoffset(c163.x);
  float _effectiveMetallicForVelvet : packoffset(c164.x);
  float _debugCharacterSnowRate : packoffset(c164.y);
  uint _systemRandomSeed : packoffset(c164.z);
  uint _skinnedMeshDebugFlag : packoffset(c164.w);
  float4 _viewPosShifted : packoffset(c165.x);
  float4 _viewPosShiftedPrev : packoffset(c166.x);
  float4 _viewTileRelativePos : packoffset(c167.x);
  float4 _viewTileRelativePosPrev : packoffset(c168.x);
  int2 _viewTileIndex : packoffset(c169.x);
  int2 _viewTileIndexPrev : packoffset(c169.z);
  float4 _worldVolume : packoffset(c170.x);
  float3 _diffViewPosAccurate : packoffset(c171.x);
  uint _isPhotosensitiveMode_isAllolwBlood : packoffset(c171.w);
  float _earthRadius : packoffset(c172.x);
  float3 _sceneConstantDummy : packoffset(c172.y);
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

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

static const float _global_0[13] = { 0.0072104214f, 0.0072235432f, 0.007234297f, 0.0072426726f, 0.00724866f, 0.0072522555f, 0.0072534545f, 0.0072522555f, 0.00724866f, 0.0072426726f, 0.007234297f, 0.0072235432f, 0.0072104214f };

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _19;
  float _24;
  float _39;
  float _43;
  float _54;
  int _56;
  float _57;
  float _58;
  float _59;
  int _61;
  float _62;
  float _63;
  float _64;
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
  float _73;
  float4 _87;
  float _92;
  float _94;
  float _96;
  int _97;
  int _100;
  float _108;
  float _109;
  float _112;
  float _121;
  float _130;
  uint2 _132;
  bool _150;
  float _153;
  float _156;
  float _159;
  uint _160;
  bool _176;
  float _182;
  float _201;
  float _217;
  float _233;
  float _234;
  float _238;
  float _241;
  float _244;
  float _251;
  float _258;
  float _265;
  float _266;
  float _267;
  float _268;
  float _269;
  float _270;
  float _271;
  float _287;
  float _303;
  float _319;
  float _320;
  float _321;
  float _322;
  float _323;
  float _340;
  float _341;
  float _342;
  float _343;
  float _346;
  float _349;
  float _353;
  float _357;
  float _361;
  float _381;
  float _393;
  float _405;
  float _417;
  float _424;
  float _431;
  float _438;
  float _444;
  float _445;
  float _447;
  float _449;
  float _451;
  float _456;
  float _477;
  float _479;
  float _482;
  float _485;
  float _488;
  float _494;
  float _536;
  float _539;
  float _545;
  float _587;
  float _604;
  float _608;
  float _612;
  int __loop_jump_target = -1;
  _19 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _24 = (pow(_19.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _39 = (float)((int)((int)(_bufferSizeAndInvSize.x * TEXCOORD.x)));
  _43 = (float)((int)((int)(_bufferSizeAndInvSize.y * TEXCOORD.y)));
  _54 = 1.0f - (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_39 * _customRenderPassSizeInvSize.x)), ((int)(_43 * _customRenderPassSizeInvSize.y)), 0)))).x);
  _56 = -6;
  _57 = 0.0f;
  _58 = 0.0f;
  _59 = 0.0f;
  while(true) {
    _61 = -6;
    _62 = _57;
    _63 = _58;
    _64 = _59;
    while(true) {
      _73 = (_global_0[((int)min((uint)(((int)(_61) + (int)(6))), (uint)(12)))]) * (_global_0[((int)min((uint)(((int)(_56) + (int)(6))), (uint)(12)))]);
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _87 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((((((float)((int)(_56))) * _54) * _srcTargetSizeAndInv.z) + TEXCOORD.x), (((((float)((int)(_61))) * _54) * _srcTargetSizeAndInv.w) + TEXCOORD.y)));
      _92 = (_87.x * _73) + _64;
      _94 = (_87.y * _73) + _63;
      _96 = (_87.z * _73) + _62;
      _97 = (int)(_61) + (int)(1);
      if (!(_97 == 7)) {
        _61 = _97;
        _62 = _96;
        _63 = _94;
        _64 = _92;
        continue;
      }
      _100 = (int)(_56) + (int)(1);
      if (!(_100 == 7)) {
        _56 = _100;
        _57 = _96;
        _58 = _94;
        _59 = _92;
        __loop_jump_target = 55;
        break;
      }
      _108 = (pow(_19.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _109 = exp2(log2(max(0.0f, (_24 + -0.8359375f)) / (18.851562f - (_24 * 18.6875f))) * 6.277395f) * 10000.0f;
      _112 = (pow(_19.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _121 = exp2(log2(max(0.0f, (_112 + -0.8359375f)) / (18.851562f - (_112 * 18.6875f))) * 6.277395f) * 10000.0f;
      _130 = exp2(log2(max(0.0f, (_108 + -0.8359375f)) / (18.851562f - (_108 * 18.6875f))) * 6.277395f) * 10000.0f;
      __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_132.x, _132.y);
      _150 = (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_132.x))))))) + 0.5f) * _39)), ((int)((((float)((int)((int)((float)((int)((int)(_132.y))))))) + 0.5f) * _43)), 0)))).x) & 255) != 30);
      _153 = select(_150, (_121 + (_92 * 56493.91f)), _121);
      _156 = select(_150, ((_94 * 56493.91f) + _109), _109);
      _159 = select(_150, (_130 + (_96 * 56493.91f)), _130);
      _160 = (uint)(SV_Position.y);
      if (_etcParams.y == 1.0f) {
        _173 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _160, 0)))).x) & 127)))) + 0.5f);
      } else {
        _173 = 1.0f;
      }
      _176 = (_localToneMappingParams.w > 0.0f);
      if (_176) {
        // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
        // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
        float3 _rndx_tonemapped_color = TonemapReplacer(float3(_153, _156, _159));
        _424 = _rndx_tonemapped_color.x;
        _431 = _rndx_tonemapped_color.y;
        _438 = _rndx_tonemapped_color.z;
        // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
        if (_etcParams.z == 0.0f) {
          _444 = 1.0f - abs(_etcParams.w);
          _445 = saturate(_etcParams.w);  // [sem: expr_sat]
          _447 = (_444 * _424) + _445;
          _449 = (_444 * _431) + _445;
          _451 = (_444 * _438) + _445;
          if (_colorGradingParams.w > 0.0f) {
            _456 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
            _473 = (((max(0.0f, (1.0f - _451)) - _451) * _456) + _451);
            _474 = (((max(0.0f, (1.0f - _449)) - _449) * _456) + _449);
            _475 = (((max(0.0f, (1.0f - _447)) - _447) * _456) + _447);
          } else {
            _473 = _451;
            _474 = _449;
            _475 = _447;
          }
          _477 = _userImageAdjust.y + 1.0f;
          _479 = _userImageAdjust.x + 0.5f;
          _482 = ((_475 + -0.5f) * _477) + _479;
          _485 = ((_474 + -0.5f) * _477) + _479;
          _488 = ((_473 + -0.5f) * _477) + _479;
          _494 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
          _529 = exp2(log2(saturate(mad(_colorBlind2.z, _488, mad(_colorBlind2.y, _485, (_colorBlind2.x * _482))))) * _494);
          _530 = exp2(log2(saturate(mad(_colorBlind1.z, _488, mad(_colorBlind1.y, _485, (_colorBlind1.x * _482))))) * _494);
          _531 = exp2(log2(saturate(mad(_colorBlind0.z, _488, mad(_colorBlind0.y, _485, (_colorBlind0.x * _482))))) * _494);
        } else {
          _529 = _438;
          _530 = _431;
          _531 = _424;
        }
      } else {
        _529 = _159;
        _530 = _156;
        _531 = _153;
      }
      if (_etcParams.y > 1.0f) {
        _536 = abs((TEXCOORD.x * 2.0f) + -1.0f);
        _539 = abs((TEXCOORD.y * 2.0f) + -1.0f);
        _545 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_536, _539), float2(_536, _539))));  // [sem: expr_sat]
        _550 = (_545 * _530);
        _551 = (_545 * _531);
        _552 = (_545 * _529);
      } else {
        _550 = _530;
        _551 = _531;
        _552 = _529;
      }
      if (_176 && (_etcParams.z > 0.0f)) {
        _582 = select((_551 <= 0.0031308f), (_551 * 12.92f), (((pow(_551, 0.41666666f)) * 1.055f) + -0.055f));
        _583 = select((_550 <= 0.0031308f), (_550 * 12.92f), (((pow(_550, 0.41666666f)) * 1.055f) + -0.055f));
        _584 = select((_552 <= 0.0031308f), (_552 * 12.92f), (((pow(_552, 0.41666666f)) * 1.055f) + -0.055f));
      } else {
        _582 = _551;
        _583 = _550;
        _584 = _552;
      }
      if (!(!(_etcParams.y >= 1.0f))) {
        _587 = (float)((uint)((uint)(_160)));
        if (!(_587 < _viewDir.w)) {
          if (!(!(_587 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
            _598 = 0.0f;
            _599 = 0.0f;
            _600 = 0.0f;
          } else {
            _598 = _582;
            _599 = _583;
            _600 = _584;
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
      _604 = exp2(log2(_598 * 0.0001f) * 0.15930176f);
      _608 = exp2(log2(_599 * 0.0001f) * 0.15930176f);
      _612 = exp2(log2(_600 * 0.0001f) * 0.15930176f);
      SV_Target.x = exp2(log2((1.0f / ((_604 * 18.6875f) + 1.0f)) * ((_604 * 18.851562f) + 0.8359375f)) * 78.84375f);
      SV_Target.y = exp2(log2((1.0f / ((_608 * 18.6875f) + 1.0f)) * ((_608 * 18.851562f) + 0.8359375f)) * 78.84375f);
      SV_Target.z = exp2(log2((1.0f / ((_612 * 18.6875f) + 1.0f)) * ((_612 * 18.851562f) + 0.8359375f)) * 78.84375f);
      SV_Target.w = _173;
      break;
    }
    if (__loop_jump_target == 55) {
      __loop_jump_target = -1;
      continue;
    }
    if (__loop_jump_target != -1) {
      break;
    }
    break;
  }
  return SV_Target;
}
