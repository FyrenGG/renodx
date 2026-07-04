Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t29, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

Texture2D<uint> __3__36__0__0__g_CustomRenderPassValue : register(t45, space36);

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

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _21;
  float _31;
  float _32;
  float _33;
  float _73;
  float _74;
  uint2 _76;
  float _119;
  float _120;
  float _121;
  float _135;
  float _340;
  float _341;
  float _342;
  float _435;
  float _436;
  float _437;
  float _491;
  float _492;
  float _493;
  float _512;
  float _513;
  float _514;
  float _544;
  float _545;
  float _546;
  float _560;
  float _561;
  float _562;
  float _117;
  uint _122;
  bool _138;
  float _144;
  float _193;
  float _194;
  float _195;
  float _197;
  float _204;
  float _205;
  float _206;
  float _225;
  float _226;
  float _227;
  float _228;
  float _229;
  float _230;
  float _231;
  float _232;
  float _233;
  float _279;
  float _280;
  float _281;
  float _282;
  float _283;
  float _284;
  float _285;
  float _302;
  float _303;
  float _304;
  float _305;
  float _311;
  float _314;
  float _321;
  float _322;
  float _323;
  float _352;
  float _377;
  float _378;
  float _379;
  float _398;
  float _399;
  float _400;
  float _406;
  float _410;
  float _411;
  float _412;
  float _413;
  float _418;
  float _443;
  float _447;
  float _448;
  float _449;
  float _450;
  float _480;
  float _502;
  float _503;
  float _507;
  float _551;
  float _572;
  float _573;
  float _574;
  _21 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _31 = (pow(_21.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _32 = (pow(_21.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _33 = (pow(_21.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _73 = float((int)(int((_bufferSizeAndInvSize.x + -1.0f) * saturate(TEXCOORD.x))));
  _74 = float((int)(int((_bufferSizeAndInvSize.y + -1.0f) * saturate(TEXCOORD.y))));
  __3__36__0__0__g_CustomRenderPassValue.GetDimensions(_76.x, _76.y);
  if (!(((((uint)(__3__36__0__0__g_CustomRenderPassValue.Load(int3(int((float((int)(int(float((int)((int)(_76.x)))))) + 0.5f) * _73), int((float((int)(int(float((int)((int)(_76.y)))))) + 0.5f) * _74), 0)))).x) & 255) == 0)) {
  // [sem: expr_sat]
    _117 = saturate(ceil((0.10000000149011612f - (_nearFarProj.x / max(1.0000000116860974e-07f, (((float4)(__3__36__0__0__g_CustomRenderPassDepth.Load(int3(int(_73 * _customRenderPassSizeInvSize.x), int(_74 * _customRenderPassSizeInvSize.y), 0)))).x)))) + (_nearFarProj.x / max(1.0000000116860974e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x)))));
    _119 = _117;
    _120 = _117;
    _121 = _117;
  } else {
    _119 = (exp2(log2(max(0.0f, (_31 + -0.8359375f)) / (18.8515625f - (_31 * 18.6875f))) * 6.277394771575928f) * 10000.0f);
    _120 = (exp2(log2(max(0.0f, (_32 + -0.8359375f)) / (18.8515625f - (_32 * 18.6875f))) * 6.277394771575928f) * 10000.0f);
    _121 = (exp2(log2(max(0.0f, (_33 + -0.8359375f)) / (18.8515625f - (_33 * 18.6875f))) * 6.277394771575928f) * 10000.0f);
  }
  _122 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _135 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _122, 0)))).x) & 127)))) + 0.5f);
  } else {
    _135 = 1.0f;
  }
  _138 = (_localToneMappingParams.w > 0.0f);
  if (_138) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_119, _120, _121));
    _398 = _rndx_tonemapped_color.x;
    _399 = _rndx_tonemapped_color.y;
    _400 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _406 = 1.0f - abs(_etcParams.w);
      _410 = saturate(_etcParams.w);  // [sem: expr_sat]
      _411 = (_406 * _398) + _410;
      _412 = (_406 * _399) + _410;
      _413 = (_406 * _400) + _410;
      if (_colorGradingParams.w > 0.0f) {
        _418 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _435 = (((max(0.0f, (1.0f - _411)) - _411) * _418) + _411);
        _436 = (((max(0.0f, (1.0f - _412)) - _412) * _418) + _412);
        _437 = (((max(0.0f, (1.0f - _413)) - _413) * _418) + _413);
      } else {
        _435 = _411;
        _436 = _412;
        _437 = _413;
      }
      _443 = _userImageAdjust.y + 1.0f;
      _447 = _userImageAdjust.x + 0.5f;
      _448 = ((_435 + -0.5f) * _443) + _447;
      _449 = ((_436 + -0.5f) * _443) + _447;
      _450 = ((_437 + -0.5f) * _443) + _447;
      _480 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _491 = exp2(log2(saturate(mad(_colorBlind0.z, _450, mad(_colorBlind0.y, _449, (_colorBlind0.x * _448))))) * _480);
      _492 = exp2(log2(saturate(mad(_colorBlind1.z, _450, mad(_colorBlind1.y, _449, (_colorBlind1.x * _448))))) * _480);
      _493 = exp2(log2(saturate(mad(_colorBlind2.z, _450, mad(_colorBlind2.y, _449, (_colorBlind2.x * _448))))) * _480);
    } else {
      _491 = _398;
      _492 = _399;
      _493 = _400;
    }
  } else {
    _491 = _119;
    _492 = _120;
    _493 = _121;
  }
  if (_etcParams.y > 1.0f) {
    _502 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _503 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _507 = saturate(1.0f - (dot(float2(_502, _503), float2(_502, _503)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _512 = (_507 * _491);
    _513 = (_507 * _492);
    _514 = (_507 * _493);
  } else {
    _512 = _491;
    _513 = _492;
    _514 = _493;
  }
  if (_138 && (_etcParams.z > 0.0f)) {
    _544 = select((_512 <= 0.0031308000907301903f), (_512 * 12.920000076293945f), (((pow(_512, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _545 = select((_513 <= 0.0031308000907301903f), (_513 * 12.920000076293945f), (((pow(_513, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _546 = select((_514 <= 0.0031308000907301903f), (_514 * 12.920000076293945f), (((pow(_514, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _544 = _512;
    _545 = _513;
    _546 = _514;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _551 = (float)((uint)_122);
    if (!(_551 < _viewDir.w)) {
      if (!(_551 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _560 = _544;
        _561 = _545;
        _562 = _546;
      } else {
        _560 = 0.0f;
        _561 = 0.0f;
        _562 = 0.0f;
      }
    } else {
      _560 = 0.0f;
      _561 = 0.0f;
      _562 = 0.0f;
    }
  } else {
    _560 = _544;
    _561 = _545;
    _562 = _546;
  }
  _572 = exp2(log2(_560 * 9.999999747378752e-05f) * 0.1593017578125f);
  _573 = exp2(log2(_561 * 9.999999747378752e-05f) * 0.1593017578125f);
  _574 = exp2(log2(_562 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_572 * 18.6875f) + 1.0f)) * ((_572 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_573 * 18.6875f) + 1.0f)) * ((_573 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_574 * 18.6875f) + 1.0f)) * ((_574 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _135;
  return SV_Target;
}
