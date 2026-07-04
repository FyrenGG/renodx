struct PostProcessTransition_CDStruct {
  uint _chapterNoiseTex;
  uint _chapterCardTex;
  uint _lensDirtTex;
  float _chapterTransition;
  uint _sceneTintColor;
  uint _chapterCardColor;
  uint _chapterBackgroundColor;
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

struct BindlessParameters_PostProcessTransition_CD {
  PostProcessTransition_CDStruct BindlessParameters_PostProcessTransition_CD;
};

typedef BindlessParameters_PostProcessTransition_CD BindlessParameters_PostProcessTransition_CD_t;
ConstantBuffer<BindlessParameters_PostProcessTransition_CD_t> BindlessParameters_PostProcessTransition_CD[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _20;
  float _28;
  float _74;
  float _75;
  float _76;
  float _90;
  float _295;
  float _296;
  float _297;
  float _390;
  float _391;
  float _392;
  float _446;
  float _447;
  float _448;
  float _467;
  float _468;
  float _469;
  float _499;
  float _500;
  float _501;
  float _515;
  float _516;
  float _517;
  float4 _33;
  float _43;
  float _44;
  float _45;
  uint _77;
  bool _93;
  float _99;
  float _148;
  float _149;
  float _150;
  float _152;
  float _159;
  float _160;
  float _161;
  float _180;
  float _181;
  float _182;
  float _183;
  float _184;
  float _185;
  float _186;
  float _187;
  float _188;
  float _234;
  float _235;
  float _236;
  float _237;
  float _238;
  float _239;
  float _240;
  float _257;
  float _258;
  float _259;
  float _260;
  float _266;
  float _269;
  float _276;
  float _277;
  float _278;
  float _307;
  float _332;
  float _333;
  float _334;
  float _353;
  float _354;
  float _355;
  float _361;
  float _365;
  float _366;
  float _367;
  float _368;
  float _373;
  float _398;
  float _402;
  float _403;
  float _404;
  float _405;
  float _435;
  float _457;
  float _458;
  float _462;
  float _506;
  float _527;
  float _528;
  float _529;
  _20 = WaveReadLaneFirst(_materialIndex);
  _28 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)(select(((uint)_20 < (uint)170000), _20, 0)) + 0u))].BindlessParameters_PostProcessTransition_CD._chapterTransition);
  if (_28 > 0.0f) {
    _33 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
    _43 = (pow(_33.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _44 = (pow(_33.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _45 = (pow(_33.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _74 = (exp2(log2(max(0.0f, (_43 + -0.8359375f)) / (18.8515625f - (_43 * 18.6875f))) * 6.277394771575928f) * 10000.0f);
    _75 = (exp2(log2(max(0.0f, (_44 + -0.8359375f)) / (18.8515625f - (_44 * 18.6875f))) * 6.277394771575928f) * 10000.0f);
    _76 = (exp2(log2(max(0.0f, (_45 + -0.8359375f)) / (18.8515625f - (_45 * 18.6875f))) * 6.277394771575928f) * 10000.0f);
  } else {
    _74 = 0.0f;
    _75 = 0.0f;
    _76 = 0.0f;
  }
  _77 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _90 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _77, 0)))).x) & 127)))) + 0.5f);
  } else {
    _90 = 0.0f;
  }
  _93 = (_localToneMappingParams.w > 0.0f);
  if (_93) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_74, _75, _76));
    _353 = _rndx_tonemapped_color.x;
    _354 = _rndx_tonemapped_color.y;
    _355 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _361 = 1.0f - abs(_etcParams.w);
      _365 = saturate(_etcParams.w);  // [sem: expr_sat]
      _366 = (_361 * _353) + _365;
      _367 = (_361 * _354) + _365;
      _368 = (_361 * _355) + _365;
      if (_colorGradingParams.w > 0.0f) {
        _373 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _390 = (((max(0.0f, (1.0f - _366)) - _366) * _373) + _366);
        _391 = (((max(0.0f, (1.0f - _367)) - _367) * _373) + _367);
        _392 = (((max(0.0f, (1.0f - _368)) - _368) * _373) + _368);
      } else {
        _390 = _366;
        _391 = _367;
        _392 = _368;
      }
      _398 = _userImageAdjust.y + 1.0f;
      _402 = _userImageAdjust.x + 0.5f;
      _403 = ((_390 + -0.5f) * _398) + _402;
      _404 = ((_391 + -0.5f) * _398) + _402;
      _405 = ((_392 + -0.5f) * _398) + _402;
      _435 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _446 = exp2(log2(saturate(mad(_colorBlind0.z, _405, mad(_colorBlind0.y, _404, (_colorBlind0.x * _403))))) * _435);
      _447 = exp2(log2(saturate(mad(_colorBlind1.z, _405, mad(_colorBlind1.y, _404, (_colorBlind1.x * _403))))) * _435);
      _448 = exp2(log2(saturate(mad(_colorBlind2.z, _405, mad(_colorBlind2.y, _404, (_colorBlind2.x * _403))))) * _435);
    } else {
      _446 = _353;
      _447 = _354;
      _448 = _355;
    }
  } else {
    _446 = _74;
    _447 = _75;
    _448 = _76;
  }
  if (_etcParams.y > 1.0f) {
    _457 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _458 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _462 = saturate(1.0f - (dot(float2(_457, _458), float2(_457, _458)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _467 = (_462 * _446);
    _468 = (_462 * _447);
    _469 = (_462 * _448);
  } else {
    _467 = _446;
    _468 = _447;
    _469 = _448;
  }
  if (_93 && (_etcParams.z > 0.0f)) {
    _499 = select((_467 <= 0.0031308000907301903f), (_467 * 12.920000076293945f), (((pow(_467, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _500 = select((_468 <= 0.0031308000907301903f), (_468 * 12.920000076293945f), (((pow(_468, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _501 = select((_469 <= 0.0031308000907301903f), (_469 * 12.920000076293945f), (((pow(_469, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _499 = _467;
    _500 = _468;
    _501 = _469;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _506 = (float)((uint)_77);
    if (!(_506 < _viewDir.w)) {
      if (!(_506 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _515 = _499;
        _516 = _500;
        _517 = _501;
      } else {
        _515 = 0.0f;
        _516 = 0.0f;
        _517 = 0.0f;
      }
    } else {
      _515 = 0.0f;
      _516 = 0.0f;
      _517 = 0.0f;
    }
  } else {
    _515 = _499;
    _516 = _500;
    _517 = _501;
  }
  _527 = exp2(log2(_515 * 9.999999747378752e-05f) * 0.1593017578125f);
  _528 = exp2(log2(_516 * 9.999999747378752e-05f) * 0.1593017578125f);
  _529 = exp2(log2(_517 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_527 * 18.6875f) + 1.0f)) * ((_527 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_528 * 18.6875f) + 1.0f)) * ((_528 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_529 * 18.6875f) + 1.0f)) * ((_529 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _90;
  return SV_Target;
}
