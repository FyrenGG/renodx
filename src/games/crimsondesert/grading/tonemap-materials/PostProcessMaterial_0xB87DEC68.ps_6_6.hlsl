Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t28, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t45, space36);

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

#if 0 // Provided by tonemap.hlsli
cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};
#endif

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

static const float _global_0[13] = { 0.007210421375930309f, 0.007223543245345354f, 0.007234297227114439f, 0.007242672611027956f, 0.007248660083860159f, 0.007252255454659462f, 0.007253454532474279f, 0.007252255454659462f, 0.007248660083860159f, 0.007242672611027956f, 0.007234297227114439f, 0.007223543245345354f, 0.007210421375930309f };

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _19;
  float _26;
  float _27;
  float _44;
  float _52;
  float _53;
  float _67;
  float _69;
  float _70;
  float _71;
  int _72;
  float _74;
  float _75;
  float _76;
  int _77;
  float _171;
  float _376;
  float _377;
  float _378;
  float _471;
  float _472;
  float _473;
  float _527;
  float _528;
  float _529;
  float _548;
  float _549;
  float _550;
  float _580;
  float _581;
  float _582;
  float _596;
  float _597;
  float _598;
  float _84;
  float4 _95;
  float _102;
  float _103;
  float _104;
  int _105;
  int _108;
  float _118;
  float _127;
  float _128;
  uint2 _133;
  bool _151;
  float _155;
  float _156;
  float _157;
  uint _158;
  bool _174;
  float _180;
  float _229;
  float _230;
  float _231;
  float _233;
  float _240;
  float _241;
  float _242;
  float _261;
  float _262;
  float _263;
  float _264;
  float _265;
  float _266;
  float _267;
  float _268;
  float _269;
  float _315;
  float _316;
  float _317;
  float _318;
  float _319;
  float _320;
  float _321;
  float _338;
  float _339;
  float _340;
  float _341;
  float _347;
  float _350;
  float _357;
  float _358;
  float _359;
  float _388;
  float _413;
  float _414;
  float _415;
  float _434;
  float _435;
  float _436;
  float _442;
  float _446;
  float _447;
  float _448;
  float _449;
  float _454;
  float _479;
  float _483;
  float _484;
  float _485;
  float _486;
  float _516;
  float _538;
  float _539;
  float _543;
  float _587;
  float _608;
  float _609;
  float _610;
  int __loop_jump_target = -1;
  _19 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _26 = (pow(_19.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _27 = (pow(_19.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _44 = exp2(log2(max(0.0f, (_26 + -0.8359375f)) / (18.8515625f - (_26 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _52 = float((int)(int(_bufferSizeAndInvSize.x * TEXCOORD.x)));
  _53 = float((int)(int(_bufferSizeAndInvSize.y * TEXCOORD.y)));
  _67 = 1.0f - (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(int(_52 * _customRenderPassSizeInvSize.x), int(_53 * _customRenderPassSizeInvSize.y), 0)))).x);
  _69 = 0.0f;
  _70 = 0.0f;
  _71 = 0.0f;
  _72 = -6;
  while(true) {
    _74 = _69;
    _75 = _70;
    _76 = _71;
    _77 = -6;
    while(true) {
      _84 = (_global_0[min((uint)((_72 + 6)), 12u)]) * (_global_0[min((uint)((_77 + 6)), 12u)]);
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _95 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((((_67 * _srcTargetSizeAndInv.z) * float((int)(_72))) + TEXCOORD.x), (((_67 * _srcTargetSizeAndInv.w) * float((int)(_77))) + TEXCOORD.y)));
      _102 = (_95.x * _84) + _74;
      _103 = (_95.y * _84) + _75;
      _104 = (_95.z * _84) + _76;
      _105 = _77 + 1;
      if (!(_105 == 7)) {
        _74 = _102;
        _75 = _103;
        _76 = _104;
        _77 = _105;
        continue;
      }
      _108 = _72 + 1;
      if (!(_108 == 7)) {
        _69 = _102;
        _70 = _103;
        _71 = _104;
        _72 = _108;
        __loop_jump_target = 68;
        break;
      }
      _118 = (pow(_19.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _127 = exp2(log2(max(0.0f, (_118 + -0.8359375f)) / (18.8515625f - (_118 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
      _128 = exp2(log2(max(0.0f, (_27 + -0.8359375f)) / (18.8515625f - (_27 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
      __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_133.x, _133.y);
      _151 = (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(int((float((int)(int(float((int)((int)(_133.x)))))) + 0.5f) * _52), int((float((int)(int(float((int)((int)(_133.y)))))) + 0.5f) * _53), 0)))).x) & 255) != 30);
      _155 = select(_151, ((_102 * 56493.91015625f) + _127), _127);
      _156 = select(_151, ((_103 * 56493.91015625f) + _44), _44);
      _157 = select(_151, ((_104 * 56493.91015625f) + _128), _128);
      _158 = uint(SV_Position.y);
      if (_etcParams.y == 1.0f) {
        _171 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _158, 0)))).x) & 127)))) + 0.5f);
      } else {
        _171 = 1.0f;
      }
      _174 = (_localToneMappingParams.w > 0.0f);
      if (_174) {
        // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
        // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
        float3 _rndx_tonemapped_color = TonemapReplacer(float3(_155, _156, _157));
        _434 = _rndx_tonemapped_color.x;
        _435 = _rndx_tonemapped_color.y;
        _436 = _rndx_tonemapped_color.z;
        // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
        if (_etcParams.z == 0.0f) {
          _442 = 1.0f - abs(_etcParams.w);
          _446 = saturate(_etcParams.w);  // [sem: expr_sat]
          _447 = (_442 * _434) + _446;
          _448 = (_442 * _435) + _446;
          _449 = (_442 * _436) + _446;
          if (_colorGradingParams.w > 0.0f) {
            _454 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
            _471 = (((max(0.0f, (1.0f - _447)) - _447) * _454) + _447);
            _472 = (((max(0.0f, (1.0f - _448)) - _448) * _454) + _448);
            _473 = (((max(0.0f, (1.0f - _449)) - _449) * _454) + _449);
          } else {
            _471 = _447;
            _472 = _448;
            _473 = _449;
          }
          _479 = _userImageAdjust.y + 1.0f;
          _483 = _userImageAdjust.x + 0.5f;
          _484 = ((_471 + -0.5f) * _479) + _483;
          _485 = ((_472 + -0.5f) * _479) + _483;
          _486 = ((_473 + -0.5f) * _479) + _483;
          _516 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
          _527 = exp2(log2(saturate(mad(_colorBlind0.z, _486, mad(_colorBlind0.y, _485, (_colorBlind0.x * _484))))) * _516);
          _528 = exp2(log2(saturate(mad(_colorBlind1.z, _486, mad(_colorBlind1.y, _485, (_colorBlind1.x * _484))))) * _516);
          _529 = exp2(log2(saturate(mad(_colorBlind2.z, _486, mad(_colorBlind2.y, _485, (_colorBlind2.x * _484))))) * _516);
        } else {
          _527 = _434;
          _528 = _435;
          _529 = _436;
        }
      } else {
        _527 = _155;
        _528 = _156;
        _529 = _157;
      }
      if (_etcParams.y > 1.0f) {
        _538 = abs((TEXCOORD.x * 2.0f) + -1.0f);
        _539 = abs((TEXCOORD.y * 2.0f) + -1.0f);
        _543 = saturate(1.0f - (dot(float2(_538, _539), float2(_538, _539)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
        _548 = (_543 * _527);
        _549 = (_543 * _528);
        _550 = (_543 * _529);
      } else {
        _548 = _527;
        _549 = _528;
        _550 = _529;
      }
      if (_174 && (_etcParams.z > 0.0f)) {
        _580 = select((_548 <= 0.0031308000907301903f), (_548 * 12.920000076293945f), (((pow(_548, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
        _581 = select((_549 <= 0.0031308000907301903f), (_549 * 12.920000076293945f), (((pow(_549, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
        _582 = select((_550 <= 0.0031308000907301903f), (_550 * 12.920000076293945f), (((pow(_550, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
      } else {
        _580 = _548;
        _581 = _549;
        _582 = _550;
      }
      if (!(!(_etcParams.y >= 1.0f))) {
        _587 = (float)((uint)_158);
        if (!(_587 < _viewDir.w)) {
          if (!(_587 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
            _596 = _580;
            _597 = _581;
            _598 = _582;
          } else {
            _596 = 0.0f;
            _597 = 0.0f;
            _598 = 0.0f;
          }
        } else {
          _596 = 0.0f;
          _597 = 0.0f;
          _598 = 0.0f;
        }
      } else {
        _596 = _580;
        _597 = _581;
        _598 = _582;
      }
      _608 = exp2(log2(_596 * 9.999999747378752e-05f) * 0.1593017578125f);
      _609 = exp2(log2(_597 * 9.999999747378752e-05f) * 0.1593017578125f);
      _610 = exp2(log2(_598 * 9.999999747378752e-05f) * 0.1593017578125f);
      SV_Target.x = exp2(log2((1.0f / ((_608 * 18.6875f) + 1.0f)) * ((_608 * 18.8515625f) + 0.8359375f)) * 78.84375f);
      SV_Target.y = exp2(log2((1.0f / ((_609 * 18.6875f) + 1.0f)) * ((_609 * 18.8515625f) + 0.8359375f)) * 78.84375f);
      SV_Target.z = exp2(log2((1.0f / ((_610 * 18.6875f) + 1.0f)) * ((_610 * 18.8515625f) + 0.8359375f)) * 78.84375f);
      SV_Target.w = _171;
      break;
    }
    if (__loop_jump_target == 68) {
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
