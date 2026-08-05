struct TemplatePostProcessStruct {
  float _parameter;
};

struct BindlessParameters_TemplatePostProcess {
  TemplatePostProcessStruct BindlessParameters_TemplatePostProcess;
};


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

typedef BindlessParameters_TemplatePostProcess BindlessParameters_TemplatePostProcess_t;
ConstantBuffer<BindlessParameters_TemplatePostProcess_t> BindlessParameters_TemplatePostProcess[] : register(b0, space100);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _17;
  float _25;
  uint _26;
  float _45;
  float _237;
  float _238;
  float _239;
  float _332;
  float _333;
  float _334;
  float _388;
  float _389;
  float _390;
  float _409;
  float _410;
  float _411;
  float _441;
  float _442;
  float _443;
  float _457;
  float _458;
  float _459;
  bool _48;
  float _54;
  float _68;
  float _80;
  float _92;
  float _93;
  float _97;
  float _100;
  float _103;
  float _110;
  float _117;
  float _124;
  float _125;
  float _126;
  float _127;
  float _128;
  float _129;
  float _130;
  float _146;
  float _162;
  float _178;
  float _179;
  float _180;
  float _181;
  float _182;
  float _199;
  float _200;
  float _201;
  float _202;
  float _205;
  float _208;
  float _212;
  float _216;
  float _220;
  float _240;
  float _252;
  float _264;
  float _276;
  float _283;
  float _290;
  float _297;
  float _303;
  float _304;
  float _306;
  float _308;
  float _310;
  float _315;
  float _336;
  float _338;
  float _341;
  float _344;
  float _347;
  float _353;
  float _395;
  float _398;
  float _404;
  float _446;
  float _463;
  float _467;
  float _471;
  _17 = WaveReadLaneFirst(_materialIndex);
  _25 = WaveReadLaneFirst(BindlessParameters_TemplatePostProcess[((int)((uint)((uint)(select(((uint)_17 < (uint)170000), _17, 0))) + (uint)(0)))].BindlessParameters_TemplatePostProcess._parameter);
  _26 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _45 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _26, 0)))).x) & 127)))) + 0.5f);
  } else {
    _45 = select(isnan(_postProcessParams.x), 0.0f, 1.0f);
  }
  _48 = (_localToneMappingParams.w > 0.0f);
  if (_48) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_25, _25, _25));
    _283 = _rndx_tonemapped_color.x;
    _290 = _rndx_tonemapped_color.y;
    _297 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _303 = 1.0f - abs(_etcParams.w);
      _304 = saturate(_etcParams.w);  // [sem: expr_sat]
      _306 = (_303 * _283) + _304;
      _308 = (_303 * _290) + _304;
      _310 = (_303 * _297) + _304;
      if (_colorGradingParams.w > 0.0f) {
        _315 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _332 = (((max(0.0f, (1.0f - _310)) - _310) * _315) + _310);
        _333 = (((max(0.0f, (1.0f - _308)) - _308) * _315) + _308);
        _334 = (((max(0.0f, (1.0f - _306)) - _306) * _315) + _306);
      } else {
        _332 = _310;
        _333 = _308;
        _334 = _306;
      }
      _336 = _userImageAdjust.y + 1.0f;
      _338 = _userImageAdjust.x + 0.5f;
      _341 = ((_334 + -0.5f) * _336) + _338;
      _344 = ((_333 + -0.5f) * _336) + _338;
      _347 = ((_332 + -0.5f) * _336) + _338;
      _353 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _388 = exp2(log2(saturate(mad(_colorBlind2.z, _347, mad(_colorBlind2.y, _344, (_colorBlind2.x * _341))))) * _353);
      _389 = exp2(log2(saturate(mad(_colorBlind1.z, _347, mad(_colorBlind1.y, _344, (_colorBlind1.x * _341))))) * _353);
      _390 = exp2(log2(saturate(mad(_colorBlind0.z, _347, mad(_colorBlind0.y, _344, (_colorBlind0.x * _341))))) * _353);
    } else {
      _388 = _297;
      _389 = _290;
      _390 = _283;
    }
  } else {
    _388 = _25;
    _389 = _25;
    _390 = _25;
  }
  if (_etcParams.y > 1.0f) {
    _395 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _398 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _404 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_395, _398), float2(_395, _398))));  // [sem: expr_sat]
    _409 = (_404 * _388);
    _410 = (_404 * _389);
    _411 = (_404 * _390);
  } else {
    _409 = _388;
    _410 = _389;
    _411 = _390;
  }
  if (_48 && (_etcParams.z > 0.0f)) {
    _441 = select((_411 <= 0.0031308f), (_411 * 12.92f), (((pow(_411, 0.41666666f)) * 1.055f) + -0.055f));
    _442 = select((_410 <= 0.0031308f), (_410 * 12.92f), (((pow(_410, 0.41666666f)) * 1.055f) + -0.055f));
    _443 = select((_409 <= 0.0031308f), (_409 * 12.92f), (((pow(_409, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _441 = _411;
    _442 = _410;
    _443 = _409;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _446 = (float)((uint)((uint)(_26)));
    if (!(_446 < _viewDir.w)) {
      if (!(!(_446 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _457 = 0.0f;
        _458 = 0.0f;
        _459 = 0.0f;
      } else {
        _457 = _441;
        _458 = _442;
        _459 = _443;
      }
    } else {
      _457 = 0.0f;
      _458 = 0.0f;
      _459 = 0.0f;
    }
  } else {
    _457 = _441;
    _458 = _442;
    _459 = _443;
  }
  _463 = exp2(log2(_457 * 0.0001f) * 0.15930176f);
  _467 = exp2(log2(_458 * 0.0001f) * 0.15930176f);
  _471 = exp2(log2(_459 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_463 * 18.6875f) + 1.0f)) * ((_463 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_467 * 18.6875f) + 1.0f)) * ((_467 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_471 * 18.6875f) + 1.0f)) * ((_471 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _45;
  return SV_Target;
}
