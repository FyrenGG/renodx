struct PostProcessCameraLensRainStruct {
  float _rainSpeed;
  float _rainUTiling;
  float _rainVTiling;
  float _streakUTiling;
  float _streakVTiling;
  uint _rainNormalTexture;
  uint _rainMaskTexture;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t28, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t87, space36);

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
  float4 _viewProj[4] : packoffset(c010.x);
  float4 _viewProjNoJitter[4] : packoffset(c014.x);
  float4 _viewProjRelative[4] : packoffset(c018.x);
  float4 _viewProjRelativeNoJitter[4] : packoffset(c022.x);
  float4 _invViewProj[4] : packoffset(c026.x);
  float4 _invViewProjRelative[4] : packoffset(c030.x);
  float4 _invViewProjRelativeNoJitter[4] : packoffset(c034.x);
  float4 _viewProjRelativeOrtho[4] : packoffset(c038.x);
  float4 _sunDirection : packoffset(c042.x);
  float4 _moonDirection : packoffset(c043.x);
  float4 _moonRight : packoffset(c044.x);
  float4 _moonUp : packoffset(c045.x);
  float4 _ssaoRandomDirection[16] : packoffset(c046.x);
  float4 _view[4] : packoffset(c062.x);
  float4 _viewRelative[4] : packoffset(c066.x);
  float4 _viewRelativePrev[4] : packoffset(c070.x);
  float4 _proj[4] : packoffset(c074.x);
  float4 _projNoJitter[4] : packoffset(c078.x);
  float4 _viewPosPrev : packoffset(c082.x);
  float4 _viewProjNoJitterPrev[4] : packoffset(c083.x);
  float4 _viewProjRelativePrev[4] : packoffset(c087.x);
  float4 _viewProjRelativeNoJitterPrev[4] : packoffset(c091.x);
  float4 _invViewProjPrev[4] : packoffset(c095.x);
  float4 _invViewProjRelativePrev[4] : packoffset(c099.x);
  float4 _projToPrevProj[4] : packoffset(c103.x);
  float4 _projToPrevProjNoTranslation[4] : packoffset(c107.x);
  float4 _viewProjectionTexScale[4] : packoffset(c111.x);
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

struct BindlessParameters_PostProcessCameraLensRain {
  PostProcessCameraLensRainStruct BindlessParameters_PostProcessCameraLensRain;
};

typedef BindlessParameters_PostProcessCameraLensRain BindlessParameters_PostProcessCameraLensRain_t;
ConstantBuffer<BindlessParameters_PostProcessCameraLensRain_t> BindlessParameters_PostProcessCameraLensRain[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

static const float _global_0[5] = { 0.05471208319067955f, 0.05641283839941025f, 0.05699142813682556f, 0.05641283839941025f, 0.05471208319067955f };

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _23;
  float _30;
  float _31;
  float _48;
  float _71;
  float _73;
  float _74;
  float _75;
  int _76;
  float _78;
  float _79;
  float _80;
  int _81;
  float _196;
  float _401;
  float _402;
  float _403;
  float _496;
  float _497;
  float _498;
  float _552;
  float _553;
  float _554;
  float _573;
  float _574;
  float _575;
  float _605;
  float _606;
  float _607;
  float _621;
  float _622;
  float _623;
  float _88;
  float4 _99;
  float _106;
  float _107;
  float _108;
  int _109;
  int _112;
  float _123;
  float _132;
  float _133;
  int _137;
  float _145;
  int _147;
  float _155;
  int _157;
  int _165;
  float4 _172;
  float _180;
  float _181;
  float _182;
  uint _183;
  bool _199;
  float _205;
  float _254;
  float _255;
  float _256;
  float _258;
  float _265;
  float _266;
  float _267;
  float _286;
  float _287;
  float _288;
  float _289;
  float _290;
  float _291;
  float _292;
  float _293;
  float _294;
  float _340;
  float _341;
  float _342;
  float _343;
  float _344;
  float _345;
  float _346;
  float _363;
  float _364;
  float _365;
  float _366;
  float _372;
  float _375;
  float _382;
  float _383;
  float _384;
  float _413;
  float _438;
  float _439;
  float _440;
  float _459;
  float _460;
  float _461;
  float _467;
  float _471;
  float _472;
  float _473;
  float _474;
  float _479;
  float _504;
  float _508;
  float _509;
  float _510;
  float _511;
  float _541;
  float _563;
  float _564;
  float _568;
  float _612;
  float _633;
  float _634;
  float _635;
  int __loop_jump_target = -1;
  _23 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _30 = (pow(_23.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _31 = (pow(_23.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _48 = exp2(log2(max(0.0f, (_30 + -0.8359375f)) / (18.8515625f - (_30 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _71 = 1.0f - (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(int(float((int)(int(_srcTargetSizeAndInv.x * TEXCOORD.x))) * _customRenderPassSizeInvSize.x), int(float((int)(int(_srcTargetSizeAndInv.y * TEXCOORD.y))) * _customRenderPassSizeInvSize.y), 0)))).x);
  _73 = 0.0f;
  _74 = 0.0f;
  _75 = 0.0f;
  _76 = -2;
  while(true) {
    _78 = _73;
    _79 = _74;
    _80 = _75;
    _81 = -2;
    while(true) {
      _88 = (_global_0[min((uint)((_76 + 2)), 4u)]) * (_global_0[min((uint)((_81 + 2)), 4u)]);
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _99 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((((_71 * _destTargetSizAndInv.z) * float((int)(_76))) + TEXCOORD.x), (((_71 * _destTargetSizAndInv.w) * float((int)(_81))) + TEXCOORD.y)));
      _106 = (_99.x * _88) + _78;
      _107 = (_99.y * _88) + _79;
      _108 = (_99.z * _88) + _80;
      _109 = _81 + 1;
      if (!(_109 == 3)) {
        _78 = _106;
        _79 = _107;
        _80 = _108;
        _81 = _109;
        continue;
      }
      _112 = _76 + 1;
      if (!(_112 == 3)) {
        _73 = _106;
        _74 = _107;
        _75 = _108;
        _76 = _112;
        __loop_jump_target = 72;
        break;
      }
      _123 = (pow(_23.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _132 = exp2(log2(max(0.0f, (_123 + -0.8359375f)) / (18.8515625f - (_123 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
      _133 = exp2(log2(max(0.0f, (_31 + -0.8359375f)) / (18.8515625f - (_31 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
      _137 = WaveReadLaneFirst(_materialIndex);
      _145 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)(select(((uint)_137 < (uint)170000), _137, 0)) + 0u))].BindlessParameters_PostProcessCameraLensRain._rainUTiling);
      _147 = WaveReadLaneFirst(_materialIndex);
      _155 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)(select(((uint)_147 < (uint)170000), _147, 0)) + 0u))].BindlessParameters_PostProcessCameraLensRain._rainVTiling);
      _157 = WaveReadLaneFirst(_materialIndex);
      _165 = WaveReadLaneFirst(BindlessParameters_PostProcessCameraLensRain[((int)((uint)(select(((uint)_157 < (uint)170000), _157, 0)) + 0u))].BindlessParameters_PostProcessCameraLensRain._rainMaskTexture);
      _172 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_165 < (uint)65000), _165, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_145 * TEXCOORD.x), (_155 * TEXCOORD.y)));
      _180 = (_172.y * ((_106 * 12.82451057434082f) - _132)) + _132;
      _181 = (_172.y * ((_107 * 12.82451057434082f) - _48)) + _48;
      _182 = (_172.y * ((_108 * 12.82451057434082f) - _133)) + _133;
      _183 = uint(SV_Position.y);
      if (_etcParams.y == 1.0f) {
        _196 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _183, 0)))).x) & 127)))) + 0.5f);
      } else {
        _196 = 1.0f;
      }
      _199 = (_localToneMappingParams.w > 0.0f);
      if (_199) {
        // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
        // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
        float3 _rndx_tonemapped_color = TonemapReplacer(float3(_180, _181, _182));
        _459 = _rndx_tonemapped_color.x;
        _460 = _rndx_tonemapped_color.y;
        _461 = _rndx_tonemapped_color.z;
        // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
        if (_etcParams.z == 0.0f) {
          _467 = 1.0f - abs(_etcParams.w);
          _471 = saturate(_etcParams.w);  // [sem: expr_sat]
          _472 = (_467 * _459) + _471;
          _473 = (_467 * _460) + _471;
          _474 = (_467 * _461) + _471;
          if (_colorGradingParams.w > 0.0f) {
            _479 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
            _496 = (((max(0.0f, (1.0f - _472)) - _472) * _479) + _472);
            _497 = (((max(0.0f, (1.0f - _473)) - _473) * _479) + _473);
            _498 = (((max(0.0f, (1.0f - _474)) - _474) * _479) + _474);
          } else {
            _496 = _472;
            _497 = _473;
            _498 = _474;
          }
          _504 = _userImageAdjust.y + 1.0f;
          _508 = _userImageAdjust.x + 0.5f;
          _509 = ((_496 + -0.5f) * _504) + _508;
          _510 = ((_497 + -0.5f) * _504) + _508;
          _511 = ((_498 + -0.5f) * _504) + _508;
          _541 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
          _552 = exp2(log2(saturate(mad(_colorBlind0.z, _511, mad(_colorBlind0.y, _510, (_colorBlind0.x * _509))))) * _541);
          _553 = exp2(log2(saturate(mad(_colorBlind1.z, _511, mad(_colorBlind1.y, _510, (_colorBlind1.x * _509))))) * _541);
          _554 = exp2(log2(saturate(mad(_colorBlind2.z, _511, mad(_colorBlind2.y, _510, (_colorBlind2.x * _509))))) * _541);
        } else {
          _552 = _459;
          _553 = _460;
          _554 = _461;
        }
      } else {
        _552 = _180;
        _553 = _181;
        _554 = _182;
      }
      if (_etcParams.y > 1.0f) {
        _563 = abs((TEXCOORD.x * 2.0f) + -1.0f);
        _564 = abs((TEXCOORD.y * 2.0f) + -1.0f);
        _568 = saturate(1.0f - (dot(float2(_563, _564), float2(_563, _564)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
        _573 = (_568 * _552);
        _574 = (_568 * _553);
        _575 = (_568 * _554);
      } else {
        _573 = _552;
        _574 = _553;
        _575 = _554;
      }
      if (_199 && (_etcParams.z > 0.0f)) {
        _605 = select((_573 <= 0.0031308000907301903f), (_573 * 12.920000076293945f), (((pow(_573, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
        _606 = select((_574 <= 0.0031308000907301903f), (_574 * 12.920000076293945f), (((pow(_574, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
        _607 = select((_575 <= 0.0031308000907301903f), (_575 * 12.920000076293945f), (((pow(_575, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
      } else {
        _605 = _573;
        _606 = _574;
        _607 = _575;
      }
      if (!(!(_etcParams.y >= 1.0f))) {
        _612 = (float)((uint)_183);
        if (!(_612 < _viewDir.w)) {
          if (!(_612 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
            _621 = _605;
            _622 = _606;
            _623 = _607;
          } else {
            _621 = 0.0f;
            _622 = 0.0f;
            _623 = 0.0f;
          }
        } else {
          _621 = 0.0f;
          _622 = 0.0f;
          _623 = 0.0f;
        }
      } else {
        _621 = _605;
        _622 = _606;
        _623 = _607;
      }
      _633 = exp2(log2(_621 * 9.999999747378752e-05f) * 0.1593017578125f);
      _634 = exp2(log2(_622 * 9.999999747378752e-05f) * 0.1593017578125f);
      _635 = exp2(log2(_623 * 9.999999747378752e-05f) * 0.1593017578125f);
      SV_Target.x = exp2(log2((1.0f / ((_633 * 18.6875f) + 1.0f)) * ((_633 * 18.8515625f) + 0.8359375f)) * 78.84375f);
      SV_Target.y = exp2(log2((1.0f / ((_634 * 18.6875f) + 1.0f)) * ((_634 * 18.8515625f) + 0.8359375f)) * 78.84375f);
      SV_Target.z = exp2(log2((1.0f / ((_635 * 18.6875f) + 1.0f)) * ((_635 * 18.8515625f) + 0.8359375f)) * 78.84375f);
      SV_Target.w = _196;
      break;
    }
    if (__loop_jump_target == 72) {
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
