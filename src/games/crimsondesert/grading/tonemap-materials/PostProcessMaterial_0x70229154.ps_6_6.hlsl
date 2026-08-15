struct PostProcessZoneStruct {
  float3 _mainPosition;
  float _radius;
  float _ratio;
  float _progress;
  float _edgeSmoothness;
  float _edgeWidth;
  uint _maskColor;
  uint _noiseTex;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

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

struct BindlessParameters_PostProcessZone {
  PostProcessZoneStruct BindlessParameters_PostProcessZone;
};

typedef BindlessParameters_PostProcessZone BindlessParameters_PostProcessZone_t;
ConstantBuffer<BindlessParameters_PostProcessZone_t> BindlessParameters_PostProcessZone[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _19;
  float _26;
  float _27;
  float _47;
  float _48;
  float _49;
  float _50;
  float _86;
  int _90;
  float _100;
  float _101;
  float _102;
  float _103;
  float _105;
  float _106;
  int _109;
  float _117;
  int _118;
  float _126;
  int _129;
  float _137;
  int _145;
  float _153;
  float _194;
  float _398;
  float _399;
  float _400;
  float _493;
  float _494;
  float _495;
  float _549;
  float _550;
  float _551;
  float _567;
  float _568;
  float _569;
  float _599;
  float _600;
  float _601;
  float _615;
  float _616;
  float _617;
  float _165;
  float _177;
  float _178;
  float _179;
  float _180;
  uint _181;
  bool _197;
  float _203;
  float _252;
  float _253;
  float _254;
  float _256;
  float _263;
  float _264;
  float _265;
  float _284;
  float _285;
  float _286;
  float _287;
  float _288;
  float _289;
  float _290;
  float _291;
  float _292;
  float _338;
  float _339;
  float _340;
  float _341;
  float _342;
  float _343;
  float _344;
  float _360;
  float _361;
  float _362;
  float _363;
  float _369;
  float _372;
  float _379;
  float _380;
  float _381;
  float _410;
  float _435;
  float _436;
  float _437;
  float _456;
  float _457;
  float _458;
  float _464;
  float _468;
  float _469;
  float _470;
  float _471;
  float _476;
  float _501;
  float _505;
  float _506;
  float _507;
  float _508;
  float _538;
  float _557;
  float _558;
  float _562;
  float _606;
  float _627;
  float _628;
  float _629;
  _19 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _26 = (pow(_19.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _27 = (pow(_19.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _47 = (TEXCOORD.x * 2.0f) + -1.0f;
  _48 = TEXCOORD.y * 2.0f;
  _49 = 1.0f - _48;
  _50 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
  _86 = mad((_invViewProj[3].z), _50, mad((_invViewProj[3].y), _49, ((_invViewProj[3].x) * _47))) + (_invViewProj[3].w);
  _90 = WaveReadLaneFirst(_materialIndex);
  _100 = WaveReadLaneFirst(BindlessParameters_PostProcessZone[((int)((uint)((uint)(select(((uint)_90 < (uint)170000), _90, 0))) + (uint)(0)))].BindlessParameters_PostProcessZone._mainPosition.x);
  _101 = WaveReadLaneFirst(BindlessParameters_PostProcessZone[((int)((uint)((uint)(select(((uint)_90 < (uint)170000), _90, 0))) + (uint)(0)))].BindlessParameters_PostProcessZone._mainPosition.y);
  _102 = WaveReadLaneFirst(BindlessParameters_PostProcessZone[((int)((uint)((uint)(select(((uint)_90 < (uint)170000), _90, 0))) + (uint)(0)))].BindlessParameters_PostProcessZone._mainPosition.z);
  _103 = _100 - ((mad((_invViewProj[0].z), _50, mad((_invViewProj[0].y), _49, ((_invViewProj[0].x) * _47))) + (_invViewProj[0].w)) / _86);
  _105 = _102 - ((mad((_invViewProj[2].z), _50, mad((_invViewProj[2].y), _49, ((_invViewProj[2].x) * _47))) + (_invViewProj[2].w)) / _86);
  _106 = (_101 - ((mad((_invViewProj[1].z), _50, mad((_invViewProj[1].y), _49, ((_invViewProj[1].x) * _47))) + (_invViewProj[1].w)) / _86)) + 1.6f;
  _109 = WaveReadLaneFirst(_materialIndex);
  _117 = WaveReadLaneFirst(BindlessParameters_PostProcessZone[((int)((uint)((uint)(select(((uint)_109 < (uint)170000), _109, 0))) + (uint)(0)))].BindlessParameters_PostProcessZone._radius);
  _118 = WaveReadLaneFirst(_materialIndex);
  _126 = WaveReadLaneFirst(BindlessParameters_PostProcessZone[((int)((uint)((uint)(select(((uint)_118 < (uint)170000), _118, 0))) + (uint)(0)))].BindlessParameters_PostProcessZone._progress);
  _129 = WaveReadLaneFirst(_materialIndex);
  _137 = WaveReadLaneFirst(BindlessParameters_PostProcessZone[((int)((uint)((uint)(select(((uint)_129 < (uint)170000), _129, 0))) + (uint)(0)))].BindlessParameters_PostProcessZone._edgeSmoothness);
  _145 = WaveReadLaneFirst(_materialIndex);
  _153 = WaveReadLaneFirst(BindlessParameters_PostProcessZone[((int)((uint)((uint)(select(((uint)_145 < (uint)170000), _145, 0))) + (uint)(0)))].BindlessParameters_PostProcessZone._ratio);
  _165 = (pow(_19.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _177 = saturate((_153 * (min(max((1.0f - saturate(exp2(log2(sqrt(dot(float3(_103, _106, _105), float3(_103, _106, _105))) - (_126 * _117)) * _137))), 0.0f), 1.0f) + -1.0f)) + 1.0f) * 10000.0f;
  _178 = _177 * exp2(log2(max(0.0f, (_165 + -0.8359375f)) / (18.851562f - (_165 * 18.6875f))) * 6.277395f);
  _179 = _177 * exp2(log2(max(0.0f, (_26 + -0.8359375f)) / (18.851562f - (_26 * 18.6875f))) * 6.277395f);
  _180 = _177 * exp2(log2(max(0.0f, (_27 + -0.8359375f)) / (18.851562f - (_27 * 18.6875f))) * 6.277395f);
  _181 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _194 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _181, 0)))).x) & 127)))) + 0.5f);
  } else {
    _194 = 1.0f;
  }
  _197 = (_localToneMappingParams.w > 0.0f);
  if (_197) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_178, _179, _180));
    _456 = _rndx_tonemapped_color.x;
    _457 = _rndx_tonemapped_color.y;
    _458 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _464 = 1.0f - abs(_etcParams.w);
      _468 = saturate(_etcParams.w);  // [sem: expr_sat]
      _469 = (_464 * _456) + _468;
      _470 = (_464 * _457) + _468;
      _471 = (_464 * _458) + _468;
      if (_colorGradingParams.w > 0.0f) {
        _476 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _493 = (((max(0.0f, (1.0f - _469)) - _469) * _476) + _469);
        _494 = (((max(0.0f, (1.0f - _470)) - _470) * _476) + _470);
        _495 = (((max(0.0f, (1.0f - _471)) - _471) * _476) + _471);
      } else {
        _493 = _469;
        _494 = _470;
        _495 = _471;
      }
      _501 = _userImageAdjust.y + 1.0f;
      _505 = _userImageAdjust.x + 0.5f;
      _506 = ((_493 + -0.5f) * _501) + _505;
      _507 = ((_494 + -0.5f) * _501) + _505;
      _508 = ((_495 + -0.5f) * _501) + _505;
      _538 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _549 = exp2(log2(saturate(mad(_colorBlind0.z, _508, mad(_colorBlind0.y, _507, (_colorBlind0.x * _506))))) * _538);
      _550 = exp2(log2(saturate(mad(_colorBlind1.z, _508, mad(_colorBlind1.y, _507, (_colorBlind1.x * _506))))) * _538);
      _551 = exp2(log2(saturate(mad(_colorBlind2.z, _508, mad(_colorBlind2.y, _507, (_colorBlind2.x * _506))))) * _538);
    } else {
      _549 = _456;
      _550 = _457;
      _551 = _458;
    }
  } else {
    _549 = _178;
    _550 = _179;
    _551 = _180;
  }
  if (_etcParams.y > 1.0f) {
    _557 = abs(_47);
    _558 = abs(_48 + -1.0f);
    _562 = saturate(1.0f - (dot(float2(_557, _558), float2(_557, _558)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _567 = (_562 * _549);
    _568 = (_562 * _550);
    _569 = (_562 * _551);
  } else {
    _567 = _549;
    _568 = _550;
    _569 = _551;
  }
  if (_197 && (_etcParams.z > 0.0f)) {
    _599 = select((_567 <= 0.0031308f), (_567 * 12.92f), (((pow(_567, 0.41666666f)) * 1.055f) + -0.055f));
    _600 = select((_568 <= 0.0031308f), (_568 * 12.92f), (((pow(_568, 0.41666666f)) * 1.055f) + -0.055f));
    _601 = select((_569 <= 0.0031308f), (_569 * 12.92f), (((pow(_569, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _599 = _567;
    _600 = _568;
    _601 = _569;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _606 = (float)((uint)((uint)(_181)));
    if (!(_606 < _viewDir.w)) {
      if (!(_606 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _615 = _599;
        _616 = _600;
        _617 = _601;
      } else {
        _615 = 0.0f;
        _616 = 0.0f;
        _617 = 0.0f;
      }
    } else {
      _615 = 0.0f;
      _616 = 0.0f;
      _617 = 0.0f;
    }
  } else {
    _615 = _599;
    _616 = _600;
    _617 = _601;
  }
  _627 = exp2(log2(_615 * 0.0001f) * 0.15930176f);
  _628 = exp2(log2(_616 * 0.0001f) * 0.15930176f);
  _629 = exp2(log2(_617 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_627 * 18.6875f) + 1.0f)) * ((_627 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_628 * 18.6875f) + 1.0f)) * ((_628 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_629 * 18.6875f) + 1.0f)) * ((_629 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _194;
  return SV_Target;
}
