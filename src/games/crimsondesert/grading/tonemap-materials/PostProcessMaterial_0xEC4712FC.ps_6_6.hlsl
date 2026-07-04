struct PostProcessGrayscaleStruct {
  float _ratio;
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

struct BindlessParameters_PostProcessGrayscale {
  PostProcessGrayscaleStruct BindlessParameters_PostProcessGrayscale;
};

typedef BindlessParameters_PostProcessGrayscale BindlessParameters_PostProcessGrayscale_t;
ConstantBuffer<BindlessParameters_PostProcessGrayscale_t> BindlessParameters_PostProcessGrayscale[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _23;
  float _33;
  float _34;
  float _35;
  float _60;
  float _61;
  float _62;
  int _63;
  float _71;
  float _72;
  float _79;
  float _80;
  float _81;
  uint _82;
  float _96;
  float _301;
  float _302;
  float _303;
  float _396;
  float _397;
  float _398;
  float _452;
  float _453;
  float _454;
  float _473;
  float _474;
  float _475;
  float _505;
  float _506;
  float _507;
  float _521;
  float _522;
  float _523;
  bool _99;
  float _105;
  float _154;
  float _155;
  float _156;
  float _158;
  float _165;
  float _166;
  float _167;
  float _186;
  float _187;
  float _188;
  float _189;
  float _190;
  float _191;
  float _192;
  float _193;
  float _194;
  float _240;
  float _241;
  float _242;
  float _243;
  float _244;
  float _245;
  float _246;
  float _263;
  float _264;
  float _265;
  float _266;
  float _272;
  float _275;
  float _282;
  float _283;
  float _284;
  float _313;
  float _338;
  float _339;
  float _340;
  float _359;
  float _360;
  float _361;
  float _367;
  float _371;
  float _372;
  float _373;
  float _374;
  float _379;
  float _404;
  float _408;
  float _409;
  float _410;
  float _411;
  float _441;
  float _463;
  float _464;
  float _468;
  float _512;
  float _533;
  float _534;
  float _535;
  _23 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _33 = (pow(_23.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _34 = (pow(_23.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _35 = (pow(_23.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _60 = exp2(log2(max(0.0f, (_33 + -0.8359375f)) / (18.8515625f - (_33 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _61 = exp2(log2(max(0.0f, (_34 + -0.8359375f)) / (18.8515625f - (_34 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _62 = exp2(log2(max(0.0f, (_35 + -0.8359375f)) / (18.8515625f - (_35 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _63 = WaveReadLaneFirst(_materialIndex);
  _71 = WaveReadLaneFirst(BindlessParameters_PostProcessGrayscale[((int)((uint)(select(((uint)_63 < (uint)170000), _63, 0)) + 0u))].BindlessParameters_PostProcessGrayscale._ratio);
  _72 = dot(float3(_60, _61, _62), float3(0.26269999146461487f, 0.6779999732971191f, 0.059300001710653305f));
  _79 = ((_72 - _60) * _71) + _60;
  _80 = ((_72 - _61) * _71) + _61;
  _81 = ((_72 - _62) * _71) + _62;
  _82 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _96 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _82, 0)))).x) & 127)))) + 0.5f);
  } else {
    _96 = _postProcessParams.x;
  }
  _99 = (_localToneMappingParams.w > 0.0f);
  if (_99) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_79, _80, _81));
    _359 = _rndx_tonemapped_color.x;
    _360 = _rndx_tonemapped_color.y;
    _361 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _367 = 1.0f - abs(_etcParams.w);
      _371 = saturate(_etcParams.w);  // [sem: expr_sat]
      _372 = (_367 * _359) + _371;
      _373 = (_367 * _360) + _371;
      _374 = (_367 * _361) + _371;
      if (_colorGradingParams.w > 0.0f) {
        _379 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _396 = (((max(0.0f, (1.0f - _372)) - _372) * _379) + _372);
        _397 = (((max(0.0f, (1.0f - _373)) - _373) * _379) + _373);
        _398 = (((max(0.0f, (1.0f - _374)) - _374) * _379) + _374);
      } else {
        _396 = _372;
        _397 = _373;
        _398 = _374;
      }
      _404 = _userImageAdjust.y + 1.0f;
      _408 = _userImageAdjust.x + 0.5f;
      _409 = ((_396 + -0.5f) * _404) + _408;
      _410 = ((_397 + -0.5f) * _404) + _408;
      _411 = ((_398 + -0.5f) * _404) + _408;
      _441 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _452 = exp2(log2(saturate(mad(_colorBlind0.z, _411, mad(_colorBlind0.y, _410, (_colorBlind0.x * _409))))) * _441);
      _453 = exp2(log2(saturate(mad(_colorBlind1.z, _411, mad(_colorBlind1.y, _410, (_colorBlind1.x * _409))))) * _441);
      _454 = exp2(log2(saturate(mad(_colorBlind2.z, _411, mad(_colorBlind2.y, _410, (_colorBlind2.x * _409))))) * _441);
    } else {
      _452 = _359;
      _453 = _360;
      _454 = _361;
    }
  } else {
    _452 = _79;
    _453 = _80;
    _454 = _81;
  }
  if (_etcParams.y > 1.0f) {
    _463 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _464 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _468 = saturate(1.0f - (dot(float2(_463, _464), float2(_463, _464)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _473 = (_468 * _452);
    _474 = (_468 * _453);
    _475 = (_468 * _454);
  } else {
    _473 = _452;
    _474 = _453;
    _475 = _454;
  }
  if (_99 && (_etcParams.z > 0.0f)) {
    _505 = select((_473 <= 0.0031308000907301903f), (_473 * 12.920000076293945f), (((pow(_473, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _506 = select((_474 <= 0.0031308000907301903f), (_474 * 12.920000076293945f), (((pow(_474, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _507 = select((_475 <= 0.0031308000907301903f), (_475 * 12.920000076293945f), (((pow(_475, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _505 = _473;
    _506 = _474;
    _507 = _475;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _512 = (float)((uint)_82);
    if (!(_512 < _viewDir.w)) {
      if (!(_512 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _521 = _505;
        _522 = _506;
        _523 = _507;
      } else {
        _521 = 0.0f;
        _522 = 0.0f;
        _523 = 0.0f;
      }
    } else {
      _521 = 0.0f;
      _522 = 0.0f;
      _523 = 0.0f;
    }
  } else {
    _521 = _505;
    _522 = _506;
    _523 = _507;
  }
  _533 = exp2(log2(_521 * 9.999999747378752e-05f) * 0.1593017578125f);
  _534 = exp2(log2(_522 * 9.999999747378752e-05f) * 0.1593017578125f);
  _535 = exp2(log2(_523 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_533 * 18.6875f) + 1.0f)) * ((_533 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_534 * 18.6875f) + 1.0f)) * ((_534 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_535 * 18.6875f) + 1.0f)) * ((_535 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _96;
  return SV_Target;
}
