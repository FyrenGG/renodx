struct PostProcessMirrorStruct {
  float _ratio;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

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

struct BindlessParameters_PostProcessMirror {
  PostProcessMirrorStruct BindlessParameters_PostProcessMirror;
};

typedef BindlessParameters_PostProcessMirror BindlessParameters_PostProcessMirror_t;
ConstantBuffer<BindlessParameters_PostProcessMirror_t> BindlessParameters_PostProcessMirror[] : register(b0, space100);

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
  float4 _35;
  float _45;
  float _46;
  float _47;
  float _69;
  float _70;
  float _71;
  uint _75;
  float _89;
  float _294;
  float _295;
  float _296;
  float _389;
  float _390;
  float _391;
  float _445;
  float _446;
  float _447;
  float _466;
  float _467;
  float _468;
  float _498;
  float _499;
  float _500;
  float _514;
  float _515;
  float _516;
  bool _92;
  float _98;
  float _147;
  float _148;
  float _149;
  float _151;
  float _158;
  float _159;
  float _160;
  float _179;
  float _180;
  float _181;
  float _182;
  float _183;
  float _184;
  float _185;
  float _186;
  float _187;
  float _233;
  float _234;
  float _235;
  float _236;
  float _237;
  float _238;
  float _239;
  float _256;
  float _257;
  float _258;
  float _259;
  float _265;
  float _268;
  float _275;
  float _276;
  float _277;
  float _306;
  float _331;
  float _332;
  float _333;
  float _352;
  float _353;
  float _354;
  float _360;
  float _364;
  float _365;
  float _366;
  float _367;
  float _372;
  float _397;
  float _401;
  float _402;
  float _403;
  float _404;
  float _434;
  float _456;
  float _457;
  float _461;
  float _505;
  float _526;
  float _527;
  float _528;
  _21 = WaveReadLaneFirst(_materialIndex);
  _29 = WaveReadLaneFirst(BindlessParameters_PostProcessMirror[((int)((uint)((uint)(select(((uint)_21 < (uint)170000), _21, 0))) + (uint)(0)))].BindlessParameters_PostProcessMirror._ratio);
  // [sem: _3__36__0__0__g_sceneColor_sample]
  _35 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(select((_29 > 0.5f), (1.0f - TEXCOORD.x), TEXCOORD.x), TEXCOORD.y));
  _45 = (pow(_35.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _46 = (pow(_35.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _47 = (pow(_35.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _69 = exp2(log2(max(0.0f, (_45 + -0.8359375f)) / (18.851562f - (_45 * 18.6875f))) * 6.277395f);
  _70 = exp2(log2(max(0.0f, (_46 + -0.8359375f)) / (18.851562f - (_46 * 18.6875f))) * 6.277395f);
  _71 = exp2(log2(max(0.0f, (_47 + -0.8359375f)) / (18.851562f - (_47 * 18.6875f))) * 6.277395f);
  _75 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _89 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _75, 0)))).x) & 127)))) + 0.5f);
  } else {
    _89 = _postProcessParams.x;
  }
  _92 = (_localToneMappingParams.w > 0.0f);
  if (_92) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_69, _70, _71));
    _352 = _rndx_tonemapped_color.x;
    _353 = _rndx_tonemapped_color.y;
    _354 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _360 = 1.0f - abs(_etcParams.w);
      _364 = saturate(_etcParams.w);  // [sem: expr_sat]
      _365 = (_360 * _352) + _364;
      _366 = (_360 * _353) + _364;
      _367 = (_360 * _354) + _364;
      if (_colorGradingParams.w > 0.0f) {
        _372 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _389 = (((max(0.0f, (1.0f - _365)) - _365) * _372) + _365);
        _390 = (((max(0.0f, (1.0f - _366)) - _366) * _372) + _366);
        _391 = (((max(0.0f, (1.0f - _367)) - _367) * _372) + _367);
      } else {
        _389 = _365;
        _390 = _366;
        _391 = _367;
      }
      _397 = _userImageAdjust.y + 1.0f;
      _401 = _userImageAdjust.x + 0.5f;
      _402 = ((_389 + -0.5f) * _397) + _401;
      _403 = ((_390 + -0.5f) * _397) + _401;
      _404 = ((_391 + -0.5f) * _397) + _401;
      _434 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _445 = exp2(log2(saturate(mad(_colorBlind0.z, _404, mad(_colorBlind0.y, _403, (_colorBlind0.x * _402))))) * _434);
      _446 = exp2(log2(saturate(mad(_colorBlind1.z, _404, mad(_colorBlind1.y, _403, (_colorBlind1.x * _402))))) * _434);
      _447 = exp2(log2(saturate(mad(_colorBlind2.z, _404, mad(_colorBlind2.y, _403, (_colorBlind2.x * _402))))) * _434);
    } else {
      _445 = _352;
      _446 = _353;
      _447 = _354;
    }
  } else {
    _445 = (_69 * 10000.0f);
    _446 = (_70 * 10000.0f);
    _447 = (_71 * 10000.0f);
  }
  if (_etcParams.y > 1.0f) {
    _456 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _457 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _461 = saturate(1.0f - (dot(float2(_456, _457), float2(_456, _457)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _466 = (_461 * _445);
    _467 = (_461 * _446);
    _468 = (_461 * _447);
  } else {
    _466 = _445;
    _467 = _446;
    _468 = _447;
  }
  if (_92 && (_etcParams.z > 0.0f)) {
    _498 = select((_466 <= 0.0031308f), (_466 * 12.92f), (((pow(_466, 0.41666666f)) * 1.055f) + -0.055f));
    _499 = select((_467 <= 0.0031308f), (_467 * 12.92f), (((pow(_467, 0.41666666f)) * 1.055f) + -0.055f));
    _500 = select((_468 <= 0.0031308f), (_468 * 12.92f), (((pow(_468, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _498 = _466;
    _499 = _467;
    _500 = _468;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _505 = (float)((uint)((uint)(_75)));
    if (!(_505 < _viewDir.w)) {
      if (!(_505 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _514 = _498;
        _515 = _499;
        _516 = _500;
      } else {
        _514 = 0.0f;
        _515 = 0.0f;
        _516 = 0.0f;
      }
    } else {
      _514 = 0.0f;
      _515 = 0.0f;
      _516 = 0.0f;
    }
  } else {
    _514 = _498;
    _515 = _499;
    _516 = _500;
  }
  _526 = exp2(log2(_514 * 0.0001f) * 0.15930176f);
  _527 = exp2(log2(_515 * 0.0001f) * 0.15930176f);
  _528 = exp2(log2(_516 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_526 * 18.6875f) + 1.0f)) * ((_526 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_527 * 18.6875f) + 1.0f)) * ((_527 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_528 * 18.6875f) + 1.0f)) * ((_528 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _89;
  return SV_Target;
}
