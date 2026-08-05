struct PostProcessTransition_CDStruct {
  uint _chapterNoiseTex;
  uint _chapterCardTex;
  uint _lensDirtTex;
  float _chapterTransition;
  uint _sceneTintColor;
  uint _chapterCardColor;
  uint _chapterBackgroundColor;
};

struct BindlessParameters_PostProcessTransition_CD {
  PostProcessTransition_CDStruct BindlessParameters_PostProcessTransition_CD;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

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
  float _39;
  float _42;
  float _45;
  uint _77;
  bool _93;
  float _99;
  float _118;
  float _134;
  float _150;
  float _151;
  float _155;
  float _158;
  float _161;
  float _168;
  float _175;
  float _182;
  float _183;
  float _184;
  float _185;
  float _186;
  float _187;
  float _188;
  float _204;
  float _220;
  float _236;
  float _237;
  float _238;
  float _239;
  float _240;
  float _257;
  float _258;
  float _259;
  float _260;
  float _263;
  float _266;
  float _270;
  float _274;
  float _278;
  float _298;
  float _310;
  float _322;
  float _334;
  float _341;
  float _348;
  float _355;
  float _361;
  float _362;
  float _364;
  float _366;
  float _368;
  float _373;
  float _394;
  float _396;
  float _399;
  float _402;
  float _405;
  float _411;
  float _453;
  float _456;
  float _462;
  float _504;
  float _521;
  float _525;
  float _529;
  _20 = WaveReadLaneFirst(_materialIndex);
  _28 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)((uint)(select(((uint)_20 < (uint)170000), _20, 0))) + (uint)(0)))].BindlessParameters_PostProcessTransition_CD._chapterTransition);
  if (_28 > 0.0f) {
    _33 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
    _39 = (pow(_33.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _42 = (pow(_33.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _45 = (pow(_33.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _74 = (exp2(log2(max(0.0f, (_45 + -0.8359375f)) / (18.851562f - (_45 * 18.6875f))) * 6.277395f) * 10000.0f);
    _75 = (exp2(log2(max(0.0f, (_42 + -0.8359375f)) / (18.851562f - (_42 * 18.6875f))) * 6.277395f) * 10000.0f);
    _76 = (exp2(log2(max(0.0f, (_39 + -0.8359375f)) / (18.851562f - (_39 * 18.6875f))) * 6.277395f) * 10000.0f);
  } else {
    _74 = 0.0f;
    _75 = 0.0f;
    _76 = 0.0f;
  }
  _77 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _90 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _77, 0)))).x) & 127)))) + 0.5f);
  } else {
    _90 = 0.0f;
  }
  _93 = (_localToneMappingParams.w > 0.0f);
  if (_93) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_76, _75, _74));
    _341 = _rndx_tonemapped_color.x;
    _348 = _rndx_tonemapped_color.y;
    _355 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _361 = 1.0f - abs(_etcParams.w);
      _362 = saturate(_etcParams.w);  // [sem: expr_sat]
      _364 = (_361 * _341) + _362;
      _366 = (_361 * _348) + _362;
      _368 = (_361 * _355) + _362;
      if (_colorGradingParams.w > 0.0f) {
        _373 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _390 = (((max(0.0f, (1.0f - _368)) - _368) * _373) + _368);
        _391 = (((max(0.0f, (1.0f - _366)) - _366) * _373) + _366);
        _392 = (((max(0.0f, (1.0f - _364)) - _364) * _373) + _364);
      } else {
        _390 = _368;
        _391 = _366;
        _392 = _364;
      }
      _394 = _userImageAdjust.y + 1.0f;
      _396 = _userImageAdjust.x + 0.5f;
      _399 = ((_392 + -0.5f) * _394) + _396;
      _402 = ((_391 + -0.5f) * _394) + _396;
      _405 = ((_390 + -0.5f) * _394) + _396;
      _411 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _446 = exp2(log2(saturate(mad(_colorBlind2.z, _405, mad(_colorBlind2.y, _402, (_colorBlind2.x * _399))))) * _411);
      _447 = exp2(log2(saturate(mad(_colorBlind1.z, _405, mad(_colorBlind1.y, _402, (_colorBlind1.x * _399))))) * _411);
      _448 = exp2(log2(saturate(mad(_colorBlind0.z, _405, mad(_colorBlind0.y, _402, (_colorBlind0.x * _399))))) * _411);
    } else {
      _446 = _355;
      _447 = _348;
      _448 = _341;
    }
  } else {
    _446 = _74;
    _447 = _75;
    _448 = _76;
  }
  if (_etcParams.y > 1.0f) {
    _453 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _456 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _462 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_453, _456), float2(_453, _456))));  // [sem: expr_sat]
    _467 = (_462 * _446);
    _468 = (_462 * _447);
    _469 = (_462 * _448);
  } else {
    _467 = _446;
    _468 = _447;
    _469 = _448;
  }
  if (_93 && (_etcParams.z > 0.0f)) {
    _499 = select((_468 <= 0.0031308f), (_468 * 12.92f), (((pow(_468, 0.41666666f)) * 1.055f) + -0.055f));
    _500 = select((_469 <= 0.0031308f), (_469 * 12.92f), (((pow(_469, 0.41666666f)) * 1.055f) + -0.055f));
    _501 = select((_467 <= 0.0031308f), (_467 * 12.92f), (((pow(_467, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _499 = _468;
    _500 = _469;
    _501 = _467;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _504 = (float)((uint)((uint)(_77)));
    if (!(_504 < _viewDir.w)) {
      if (!(!(_504 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _515 = 0.0f;
        _516 = 0.0f;
        _517 = 0.0f;
      } else {
        _515 = _500;
        _516 = _499;
        _517 = _501;
      }
    } else {
      _515 = 0.0f;
      _516 = 0.0f;
      _517 = 0.0f;
    }
  } else {
    _515 = _500;
    _516 = _499;
    _517 = _501;
  }
  _521 = exp2(log2(_515 * 0.0001f) * 0.15930176f);
  _525 = exp2(log2(_516 * 0.0001f) * 0.15930176f);
  _529 = exp2(log2(_517 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_521 * 18.6875f) + 1.0f)) * ((_521 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_525 * 18.6875f) + 1.0f)) * ((_525 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_529 * 18.6875f) + 1.0f)) * ((_529 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _90;
  return SV_Target;
}
