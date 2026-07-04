Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t28, space36);

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
  float4 _17;
  float _27;
  float _28;
  float _29;
  float _51;
  float _52;
  float _53;
  uint _57;
  float _71;
  float _276;
  float _277;
  float _278;
  float _371;
  float _372;
  float _373;
  float _427;
  float _428;
  float _429;
  float _448;
  float _449;
  float _450;
  float _480;
  float _481;
  float _482;
  float _496;
  float _497;
  float _498;
  bool _74;
  float _80;
  float _129;
  float _130;
  float _131;
  float _133;
  float _140;
  float _141;
  float _142;
  float _161;
  float _162;
  float _163;
  float _164;
  float _165;
  float _166;
  float _167;
  float _168;
  float _169;
  float _215;
  float _216;
  float _217;
  float _218;
  float _219;
  float _220;
  float _221;
  float _238;
  float _239;
  float _240;
  float _241;
  float _247;
  float _250;
  float _257;
  float _258;
  float _259;
  float _288;
  float _313;
  float _314;
  float _315;
  float _334;
  float _335;
  float _336;
  float _342;
  float _346;
  float _347;
  float _348;
  float _349;
  float _354;
  float _379;
  float _383;
  float _384;
  float _385;
  float _386;
  float _416;
  float _438;
  float _439;
  float _443;
  float _487;
  float _508;
  float _509;
  float _510;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
  _17 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
  _27 = (pow(_17.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  _28 = (pow(_17.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  _29 = (pow(_17.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  _51 = exp2(log2(max(0.0f, (_27 + -0.8359375f)) / (18.8515625f - (_27 * 18.6875f))) * 6.277394771575928f);
  _52 = exp2(log2(max(0.0f, (_28 + -0.8359375f)) / (18.8515625f - (_28 * 18.6875f))) * 6.277394771575928f);
  _53 = exp2(log2(max(0.0f, (_29 + -0.8359375f)) / (18.8515625f - (_29 * 18.6875f))) * 6.277394771575928f);
  _57 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _71 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _57, 0)))).x) & 127)))) + 0.5f);
  } else {
    _71 = 1.0f;
  }
  _74 = (_localToneMappingParams.w > 0.0f);
  if (_74) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_51, _52, _53));
    _334 = _rndx_tonemapped_color.x;
    _335 = _rndx_tonemapped_color.y;
    _336 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _342 = 1.0f - abs(_etcParams.w);
      _346 = saturate(_etcParams.w);  // [sem: expr_sat]
      _347 = (_342 * _334) + _346;
      _348 = (_342 * _335) + _346;
      _349 = (_342 * _336) + _346;
      if (_colorGradingParams.w > 0.0f) {
        _354 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _371 = (((max(0.0f, (1.0f - _347)) - _347) * _354) + _347);
        _372 = (((max(0.0f, (1.0f - _348)) - _348) * _354) + _348);
        _373 = (((max(0.0f, (1.0f - _349)) - _349) * _354) + _349);
      } else {
        _371 = _347;
        _372 = _348;
        _373 = _349;
      }
      _379 = _userImageAdjust.y + 1.0f;
      _383 = _userImageAdjust.x + 0.5f;
      _384 = ((_371 + -0.5f) * _379) + _383;
      _385 = ((_372 + -0.5f) * _379) + _383;
      _386 = ((_373 + -0.5f) * _379) + _383;
      _416 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _427 = exp2(log2(saturate(mad(_colorBlind0.z, _386, mad(_colorBlind0.y, _385, (_colorBlind0.x * _384))))) * _416);
      _428 = exp2(log2(saturate(mad(_colorBlind1.z, _386, mad(_colorBlind1.y, _385, (_colorBlind1.x * _384))))) * _416);
      _429 = exp2(log2(saturate(mad(_colorBlind2.z, _386, mad(_colorBlind2.y, _385, (_colorBlind2.x * _384))))) * _416);
    } else {
      _427 = _334;
      _428 = _335;
      _429 = _336;
    }
  } else {
    _427 = (_51 * 10000.0f);
    _428 = (_52 * 10000.0f);
    _429 = (_53 * 10000.0f);
  }
  if (_etcParams.y > 1.0f) {
    _438 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _439 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _443 = saturate(1.0f - (dot(float2(_438, _439), float2(_438, _439)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _448 = (_443 * _427);
    _449 = (_443 * _428);
    _450 = (_443 * _429);
  } else {
    _448 = _427;
    _449 = _428;
    _450 = _429;
  }
  if (_74 && (_etcParams.z > 0.0f)) {
    _480 = select((_448 <= 0.0031308000907301903f), (_448 * 12.920000076293945f), (((pow(_448, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _481 = select((_449 <= 0.0031308000907301903f), (_449 * 12.920000076293945f), (((pow(_449, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _482 = select((_450 <= 0.0031308000907301903f), (_450 * 12.920000076293945f), (((pow(_450, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _480 = _448;
    _481 = _449;
    _482 = _450;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _487 = (float)((uint)_57);
    if (!(_487 < _viewDir.w)) {
      if (!(_487 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _496 = _480;
        _497 = _481;
        _498 = _482;
      } else {
        _496 = 0.0f;
        _497 = 0.0f;
        _498 = 0.0f;
      }
    } else {
      _496 = 0.0f;
      _497 = 0.0f;
      _498 = 0.0f;
    }
  } else {
    _496 = _480;
    _497 = _481;
    _498 = _482;
  }
  _508 = exp2(log2(_496 * 9.999999747378752e-05f) * 0.1593017578125f);
  _509 = exp2(log2(_497 * 9.999999747378752e-05f) * 0.1593017578125f);
  _510 = exp2(log2(_498 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_508 * 18.6875f) + 1.0f)) * ((_508 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_509 * 18.6875f) + 1.0f)) * ((_509 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_510 * 18.6875f) + 1.0f)) * ((_510 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _71;
  return SV_Target;
}
