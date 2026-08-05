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

struct BindlessParameters_PostProcessAbyssEnterGlid_CD {
  PostProcessAbyssEnterGlid_CDStruct BindlessParameters_PostProcessAbyssEnterGlid_CD;
};


Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

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
  int _32;
  float _40;
  float4 _43;
  float _50;
  float _53;
  float _56;
  float4 _59;
  float _65;
  float _68;
  float _71;
  float _85;
  float _94;
  float _103;
  float _112;
  float _124;
  float _136;
  float _148;
  uint _149;
  float _163;
  float _368;
  float _369;
  float _370;
  float _463;
  float _464;
  float _465;
  float _519;
  float _520;
  float _521;
  float _540;
  float _541;
  float _542;
  float _572;
  float _573;
  float _574;
  float _588;
  float _589;
  float _590;
  bool _166;
  float _172;
  float _191;
  float _207;
  float _223;
  float _224;
  float _228;
  float _231;
  float _234;
  float _241;
  float _248;
  float _255;
  float _256;
  float _257;
  float _258;
  float _259;
  float _260;
  float _261;
  float _277;
  float _293;
  float _309;
  float _310;
  float _311;
  float _312;
  float _313;
  float _330;
  float _331;
  float _332;
  float _333;
  float _336;
  float _339;
  float _343;
  float _347;
  float _351;
  float _371;
  float _383;
  float _395;
  float _407;
  float _414;
  float _421;
  float _428;
  float _434;
  float _435;
  float _437;
  float _439;
  float _441;
  float _446;
  float _467;
  float _469;
  float _472;
  float _475;
  float _478;
  float _484;
  float _526;
  float _529;
  float _535;
  float _577;
  float _594;
  float _598;
  float _602;
  _21 = WaveReadLaneFirst(_materialIndex);
  _29 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_21 < (uint)170000), _21, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._startYPos);
  _32 = WaveReadLaneFirst(_materialIndex);
  _40 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterGlid_CD[((int)((uint)((uint)(select(((uint)_32 < (uint)170000), _32, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterGlid_CD._endYPos);
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
  _43 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));
  _50 = (pow(_43.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  _53 = (pow(_43.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  _56 = (pow(_43.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  _59 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _65 = (pow(_59.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _68 = (pow(_59.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _71 = (pow(_59.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _85 = 10000.0f - (saturate(exp2(log2(1.0f - saturate((_viewPos.y - _40) / (_29 - _40))) * 2.2f) * 7.0f) * 9950.0f);
  _94 = exp2(log2(max(0.0f, (_65 + -0.8359375f)) / (18.851562f - (_65 * 18.6875f))) * 6.277395f) * _85;
  _103 = exp2(log2(max(0.0f, (_68 + -0.8359375f)) / (18.851562f - (_68 * 18.6875f))) * 6.277395f) * _85;
  _112 = exp2(log2(max(0.0f, (_71 + -0.8359375f)) / (18.851562f - (_71 * 18.6875f))) * 6.277395f) * _85;
  _124 = (((exp2(log2(max(0.0f, (_50 + -0.8359375f)) / (18.851562f - (_50 * 18.6875f))) * 6.277395f) * 10000.0f) - _94) * _43.w) + _94;
  _136 = (((exp2(log2(max(0.0f, (_53 + -0.8359375f)) / (18.851562f - (_53 * 18.6875f))) * 6.277395f) * 10000.0f) - _103) * _43.w) + _103;
  _148 = (((exp2(log2(max(0.0f, (_56 + -0.8359375f)) / (18.851562f - (_56 * 18.6875f))) * 6.277395f) * 10000.0f) - _112) * _43.w) + _112;
  _149 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _163 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _149, 0)))).x) & 127)))) + 0.5f);
  } else {
    _163 = 1.0f;
  }
  _166 = (_localToneMappingParams.w > 0.0f);
  if (_166) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_124, _136, _148));
    _414 = _rndx_tonemapped_color.x;
    _421 = _rndx_tonemapped_color.y;
    _428 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _434 = 1.0f - abs(_etcParams.w);
      _435 = saturate(_etcParams.w);  // [sem: expr_sat]
      _437 = (_434 * _414) + _435;
      _439 = (_434 * _421) + _435;
      _441 = (_434 * _428) + _435;
      if (_colorGradingParams.w > 0.0f) {
        _446 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _463 = (((max(0.0f, (1.0f - _437)) - _437) * _446) + _437);
        _464 = (((max(0.0f, (1.0f - _439)) - _439) * _446) + _439);
        _465 = (((max(0.0f, (1.0f - _441)) - _441) * _446) + _441);
      } else {
        _463 = _437;
        _464 = _439;
        _465 = _441;
      }
      _467 = _userImageAdjust.y + 1.0f;
      _469 = _userImageAdjust.x + 0.5f;
      _472 = ((_463 + -0.5f) * _467) + _469;
      _475 = ((_464 + -0.5f) * _467) + _469;
      _478 = ((_465 + -0.5f) * _467) + _469;
      _484 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _519 = exp2(log2(saturate(mad(_colorBlind0.z, _478, mad(_colorBlind0.y, _475, (_colorBlind0.x * _472))))) * _484);
      _520 = exp2(log2(saturate(mad(_colorBlind1.z, _478, mad(_colorBlind1.y, _475, (_colorBlind1.x * _472))))) * _484);
      _521 = exp2(log2(saturate(mad(_colorBlind2.z, _478, mad(_colorBlind2.y, _475, (_colorBlind2.x * _472))))) * _484);
    } else {
      _519 = _414;
      _520 = _421;
      _521 = _428;
    }
  } else {
    _519 = _124;
    _520 = _136;
    _521 = _148;
  }
  if (_etcParams.y > 1.0f) {
    _526 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _529 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _535 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_526, _529), float2(_526, _529))));  // [sem: expr_sat]
    _540 = (_535 * _519);
    _541 = (_535 * _520);
    _542 = (_535 * _521);
  } else {
    _540 = _519;
    _541 = _520;
    _542 = _521;
  }
  if (_166 && (_etcParams.z > 0.0f)) {
    _572 = select((_540 <= 0.0031308f), (_540 * 12.92f), (((pow(_540, 0.41666666f)) * 1.055f) + -0.055f));
    _573 = select((_541 <= 0.0031308f), (_541 * 12.92f), (((pow(_541, 0.41666666f)) * 1.055f) + -0.055f));
    _574 = select((_542 <= 0.0031308f), (_542 * 12.92f), (((pow(_542, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _572 = _540;
    _573 = _541;
    _574 = _542;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _577 = (float)((uint)((uint)(_149)));
    if (!(_577 < _viewDir.w)) {
      if (!(!(_577 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _588 = 0.0f;
        _589 = 0.0f;
        _590 = 0.0f;
      } else {
        _588 = _572;
        _589 = _573;
        _590 = _574;
      }
    } else {
      _588 = 0.0f;
      _589 = 0.0f;
      _590 = 0.0f;
    }
  } else {
    _588 = _572;
    _589 = _573;
    _590 = _574;
  }
  _594 = exp2(log2(_588 * 0.0001f) * 0.15930176f);
  _598 = exp2(log2(_589 * 0.0001f) * 0.15930176f);
  _602 = exp2(log2(_590 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_594 * 18.6875f) + 1.0f)) * ((_594 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_598 * 18.6875f) + 1.0f)) * ((_598 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_602 * 18.6875f) + 1.0f)) * ((_602 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _163;
  return SV_Target;
}
