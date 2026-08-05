Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

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

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _21;
  float _27;
  float _30;
  float _33;
  float _40;
  float _46;
  uint2 _48;
  float _120;
  float _121;
  float _122;
  float _136;
  float _341;
  float _342;
  float _343;
  float _436;
  float _437;
  float _438;
  float _492;
  float _493;
  float _494;
  float _513;
  float _514;
  float _515;
  float _545;
  float _546;
  float _547;
  float _561;
  float _562;
  float _563;
  float _90;
  uint _123;
  bool _139;
  float _145;
  float _164;
  float _180;
  float _196;
  float _197;
  float _201;
  float _204;
  float _207;
  float _214;
  float _221;
  float _228;
  float _229;
  float _230;
  float _231;
  float _232;
  float _233;
  float _234;
  float _250;
  float _266;
  float _282;
  float _283;
  float _284;
  float _285;
  float _286;
  float _303;
  float _304;
  float _305;
  float _306;
  float _309;
  float _312;
  float _316;
  float _320;
  float _324;
  float _344;
  float _356;
  float _368;
  float _380;
  float _387;
  float _394;
  float _401;
  float _407;
  float _408;
  float _410;
  float _412;
  float _414;
  float _419;
  float _440;
  float _442;
  float _445;
  float _448;
  float _451;
  float _457;
  float _499;
  float _502;
  float _508;
  float _550;
  float _567;
  float _571;
  float _575;
  _21 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _27 = (pow(_21.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _30 = (pow(_21.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _33 = (pow(_21.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _40 = (float)((int)((int)((_bufferSizeAndInvSize.x + -1.0f) * saturate(TEXCOORD.x))));
  _46 = (float)((int)((int)((_bufferSizeAndInvSize.y + -1.0f) * saturate(TEXCOORD.y))));
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_48.x, _48.y);
  if (((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(((int)((((float)((int)((int)((float)((int)((int)(_48.x))))))) + 0.5f) * _40)), ((int)((((float)((int)((int)((float)((int)((int)(_48.y))))))) + 0.5f) * _46)), 0)))).x) & 255) == 0) {
    _120 = (exp2(log2(max(0.0f, (_33 + -0.8359375f)) / (18.851562f - (_33 * 18.6875f))) * 6.277395f) * 10000.0f);
    _121 = (exp2(log2(max(0.0f, (_30 + -0.8359375f)) / (18.851562f - (_30 * 18.6875f))) * 6.277395f) * 10000.0f);
    _122 = (exp2(log2(max(0.0f, (_27 + -0.8359375f)) / (18.851562f - (_27 * 18.6875f))) * 6.277395f) * 10000.0f);
  } else {
    // [sem: expr_sat]
    _90 = saturate(ceil((0.1f - (_nearFarProj.x / max(1e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_customRenderPassSizeInvSize.x * _40)), ((int)(_customRenderPassSizeInvSize.y * _46)), 0)))).x)))) + (_nearFarProj.x / max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x)))));
    _120 = _90;
    _121 = _90;
    _122 = _90;
  }
  _123 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _136 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _123, 0)))).x) & 127)))) + 0.5f);
  } else {
    _136 = 1.0f;
  }
  _139 = (_localToneMappingParams.w > 0.0f);
  if (_139) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_122, _121, _120));
    _387 = _rndx_tonemapped_color.x;
    _394 = _rndx_tonemapped_color.y;
    _401 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _407 = 1.0f - abs(_etcParams.w);
      _408 = saturate(_etcParams.w);  // [sem: expr_sat]
      _410 = (_407 * _387) + _408;
      _412 = (_407 * _394) + _408;
      _414 = (_407 * _401) + _408;
      if (_colorGradingParams.w > 0.0f) {
        _419 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _436 = (((max(0.0f, (1.0f - _414)) - _414) * _419) + _414);
        _437 = (((max(0.0f, (1.0f - _412)) - _412) * _419) + _412);
        _438 = (((max(0.0f, (1.0f - _410)) - _410) * _419) + _410);
      } else {
        _436 = _414;
        _437 = _412;
        _438 = _410;
      }
      _440 = _userImageAdjust.y + 1.0f;
      _442 = _userImageAdjust.x + 0.5f;
      _445 = ((_438 + -0.5f) * _440) + _442;
      _448 = ((_437 + -0.5f) * _440) + _442;
      _451 = ((_436 + -0.5f) * _440) + _442;
      _457 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _492 = exp2(log2(saturate(mad(_colorBlind2.z, _451, mad(_colorBlind2.y, _448, (_colorBlind2.x * _445))))) * _457);
      _493 = exp2(log2(saturate(mad(_colorBlind1.z, _451, mad(_colorBlind1.y, _448, (_colorBlind1.x * _445))))) * _457);
      _494 = exp2(log2(saturate(mad(_colorBlind0.z, _451, mad(_colorBlind0.y, _448, (_colorBlind0.x * _445))))) * _457);
    } else {
      _492 = _401;
      _493 = _394;
      _494 = _387;
    }
  } else {
    _492 = _120;
    _493 = _121;
    _494 = _122;
  }
  if (_etcParams.y > 1.0f) {
    _499 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _502 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _508 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_499, _502), float2(_499, _502))));  // [sem: expr_sat]
    _513 = (_508 * _494);
    _514 = (_508 * _493);
    _515 = (_508 * _492);
  } else {
    _513 = _494;
    _514 = _493;
    _515 = _492;
  }
  if (_139 && (_etcParams.z > 0.0f)) {
    _545 = select((_513 <= 0.0031308f), (_513 * 12.92f), (((pow(_513, 0.41666666f)) * 1.055f) + -0.055f));
    _546 = select((_514 <= 0.0031308f), (_514 * 12.92f), (((pow(_514, 0.41666666f)) * 1.055f) + -0.055f));
    _547 = select((_515 <= 0.0031308f), (_515 * 12.92f), (((pow(_515, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _545 = _513;
    _546 = _514;
    _547 = _515;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _550 = (float)((uint)((uint)(_123)));
    if (!(_550 < _viewDir.w)) {
      if (!(!(_550 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _561 = 0.0f;
        _562 = 0.0f;
        _563 = 0.0f;
      } else {
        _561 = _545;
        _562 = _546;
        _563 = _547;
      }
    } else {
      _561 = 0.0f;
      _562 = 0.0f;
      _563 = 0.0f;
    }
  } else {
    _561 = _545;
    _562 = _546;
    _563 = _547;
  }
  _567 = exp2(log2(_561 * 0.0001f) * 0.15930176f);
  _571 = exp2(log2(_562 * 0.0001f) * 0.15930176f);
  _575 = exp2(log2(_563 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_567 * 18.6875f) + 1.0f)) * ((_567 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_571 * 18.6875f) + 1.0f)) * ((_571 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_575 * 18.6875f) + 1.0f)) * ((_575 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _136;
  return SV_Target;
}
