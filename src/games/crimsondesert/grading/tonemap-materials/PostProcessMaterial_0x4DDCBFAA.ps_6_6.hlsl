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
  float _59;
  float _60;
  float _61;
  float4 _91;
  float _101;
  float _102;
  float _103;
  float _134;
  float _135;
  float _136;
  float _137;
  float _144;
  float _145;
  float _146;
  uint _147;
  float _161;
  float _366;
  float _367;
  float _368;
  float _461;
  float _462;
  float _463;
  float _517;
  float _518;
  float _519;
  float _538;
  float _539;
  float _540;
  float _570;
  float _571;
  float _572;
  float _586;
  float _587;
  float _588;
  bool _164;
  float _170;
  float _219;
  float _220;
  float _221;
  float _223;
  float _230;
  float _231;
  float _232;
  float _251;
  float _252;
  float _253;
  float _254;
  float _255;
  float _256;
  float _257;
  float _258;
  float _259;
  float _305;
  float _306;
  float _307;
  float _308;
  float _309;
  float _310;
  float _311;
  float _328;
  float _329;
  float _330;
  float _331;
  float _337;
  float _340;
  float _347;
  float _348;
  float _349;
  float _378;
  float _403;
  float _404;
  float _405;
  float _424;
  float _425;
  float _426;
  float _432;
  float _436;
  float _437;
  float _438;
  float _439;
  float _444;
  float _469;
  float _473;
  float _474;
  float _475;
  float _476;
  float _506;
  float _528;
  float _529;
  float _533;
  float _577;
  float _598;
  float _599;
  float _600;
  _21 = WaveReadLaneFirst(_materialIndex);
  _29 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)(select(((uint)_21 < (uint)170000), _21, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnterGlid_CD._startYPos);
  _30 = WaveReadLaneFirst(_materialIndex);
  _38 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)(select(((uint)_30 < (uint)170000), _30, 0)) + 0u))].BindlessParameters_PostProcessAbyssEnterGlid_CD._endYPos);
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
  _48 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));
  _59 = (pow(_48.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  _60 = (pow(_48.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  _61 = (pow(_48.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  _91 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _101 = (pow(_91.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _102 = (pow(_91.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _103 = (pow(_91.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _134 = 10000.0f - (saturate(exp2(log2(1.0f - saturate((_viewPos.y - _38) / (_29 - _38))) * 2.200000047683716f) * 7.0f) * 9950.0f);
  _135 = _134 * exp2(log2(max(0.0f, (_101 + -0.8359375f)) / (18.8515625f - (_101 * 18.6875f))) * 6.277394771575928f);
  _136 = _134 * exp2(log2(max(0.0f, (_102 + -0.8359375f)) / (18.8515625f - (_102 * 18.6875f))) * 6.277394771575928f);
  _137 = _134 * exp2(log2(max(0.0f, (_103 + -0.8359375f)) / (18.8515625f - (_103 * 18.6875f))) * 6.277394771575928f);
  _144 = (((exp2(log2(max(0.0f, (_59 + -0.8359375f)) / (18.8515625f - (_59 * 18.6875f))) * 6.277394771575928f) * 10000.0f) - _135) * _48.w) + _135;
  _145 = (((exp2(log2(max(0.0f, (_60 + -0.8359375f)) / (18.8515625f - (_60 * 18.6875f))) * 6.277394771575928f) * 10000.0f) - _136) * _48.w) + _136;
  _146 = (((exp2(log2(max(0.0f, (_61 + -0.8359375f)) / (18.8515625f - (_61 * 18.6875f))) * 6.277394771575928f) * 10000.0f) - _137) * _48.w) + _137;
  _147 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _161 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _147, 0)))).x) & 127)))) + 0.5f);
  } else {
    _161 = 1.0f;
  }
  _164 = (_localToneMappingParams.w > 0.0f);
  if (_164) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_144, _145, _146));
    _424 = _rndx_tonemapped_color.x;
    _425 = _rndx_tonemapped_color.y;
    _426 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _432 = 1.0f - abs(_etcParams.w);
      _436 = saturate(_etcParams.w);  // [sem: expr_sat]
      _437 = (_432 * _424) + _436;
      _438 = (_432 * _425) + _436;
      _439 = (_432 * _426) + _436;
      if (_colorGradingParams.w > 0.0f) {
        _444 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _461 = (((max(0.0f, (1.0f - _437)) - _437) * _444) + _437);
        _462 = (((max(0.0f, (1.0f - _438)) - _438) * _444) + _438);
        _463 = (((max(0.0f, (1.0f - _439)) - _439) * _444) + _439);
      } else {
        _461 = _437;
        _462 = _438;
        _463 = _439;
      }
      _469 = _userImageAdjust.y + 1.0f;
      _473 = _userImageAdjust.x + 0.5f;
      _474 = ((_461 + -0.5f) * _469) + _473;
      _475 = ((_462 + -0.5f) * _469) + _473;
      _476 = ((_463 + -0.5f) * _469) + _473;
      _506 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _517 = exp2(log2(saturate(mad(_colorBlind0.z, _476, mad(_colorBlind0.y, _475, (_colorBlind0.x * _474))))) * _506);
      _518 = exp2(log2(saturate(mad(_colorBlind1.z, _476, mad(_colorBlind1.y, _475, (_colorBlind1.x * _474))))) * _506);
      _519 = exp2(log2(saturate(mad(_colorBlind2.z, _476, mad(_colorBlind2.y, _475, (_colorBlind2.x * _474))))) * _506);
    } else {
      _517 = _424;
      _518 = _425;
      _519 = _426;
    }
  } else {
    _517 = _144;
    _518 = _145;
    _519 = _146;
  }
  if (_etcParams.y > 1.0f) {
    _528 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _529 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _533 = saturate(1.0f - (dot(float2(_528, _529), float2(_528, _529)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _538 = (_533 * _517);
    _539 = (_533 * _518);
    _540 = (_533 * _519);
  } else {
    _538 = _517;
    _539 = _518;
    _540 = _519;
  }
  if (_164 && (_etcParams.z > 0.0f)) {
    _570 = select((_538 <= 0.0031308000907301903f), (_538 * 12.920000076293945f), (((pow(_538, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _571 = select((_539 <= 0.0031308000907301903f), (_539 * 12.920000076293945f), (((pow(_539, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _572 = select((_540 <= 0.0031308000907301903f), (_540 * 12.920000076293945f), (((pow(_540, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _570 = _538;
    _571 = _539;
    _572 = _540;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _577 = (float)((uint)_147);
    if (!(_577 < _viewDir.w)) {
      if (!(_577 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _586 = _570;
        _587 = _571;
        _588 = _572;
      } else {
        _586 = 0.0f;
        _587 = 0.0f;
        _588 = 0.0f;
      }
    } else {
      _586 = 0.0f;
      _587 = 0.0f;
      _588 = 0.0f;
    }
  } else {
    _586 = _570;
    _587 = _571;
    _588 = _572;
  }
  _598 = exp2(log2(_586 * 9.999999747378752e-05f) * 0.1593017578125f);
  _599 = exp2(log2(_587 * 9.999999747378752e-05f) * 0.1593017578125f);
  _600 = exp2(log2(_588 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_598 * 18.6875f) + 1.0f)) * ((_598 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_599 * 18.6875f) + 1.0f)) * ((_599 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_600 * 18.6875f) + 1.0f)) * ((_600 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _161;
  return SV_Target;
}
