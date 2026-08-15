struct PostProcessFisheye_DistortionStruct {
  float _maxPower;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

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

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
};

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

struct BindlessParameters_PostProcessFisheye_Distortion {
  PostProcessFisheye_DistortionStruct BindlessParameters_PostProcessFisheye_Distortion;
};

typedef BindlessParameters_PostProcessFisheye_Distortion BindlessParameters_PostProcessFisheye_Distortion_t;
ConstantBuffer<BindlessParameters_PostProcessFisheye_Distortion_t> BindlessParameters_PostProcessFisheye_Distortion[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float _31;
  float _32;
  float _33;
  float _34;
  float _35;
  float _36;
  float _37;
  float _38;
  int _39;
  float _47;
  bool _48;
  float _56;
  float _94;
  float _95;
  float _153;
  float _358;
  float _359;
  float _360;
  float _453;
  float _454;
  float _455;
  float _509;
  float _510;
  float _511;
  float _530;
  float _531;
  float _532;
  float _562;
  float _563;
  float _564;
  float _578;
  float _579;
  float _580;
  float _58;
  float _60;
  float _68;
  float _76;
  float _79;
  float _88;
  float4 _100;
  float _110;
  float _111;
  float _112;
  float _134;
  float _135;
  float _136;
  uint _140;
  bool _156;
  float _162;
  float _211;
  float _212;
  float _213;
  float _215;
  float _222;
  float _223;
  float _224;
  float _243;
  float _244;
  float _245;
  float _246;
  float _247;
  float _248;
  float _249;
  float _250;
  float _251;
  float _297;
  float _298;
  float _299;
  float _300;
  float _301;
  float _302;
  float _303;
  float _320;
  float _321;
  float _322;
  float _323;
  float _329;
  float _332;
  float _339;
  float _340;
  float _341;
  float _370;
  float _395;
  float _396;
  float _397;
  float _416;
  float _417;
  float _418;
  float _424;
  float _428;
  float _429;
  float _430;
  float _431;
  float _436;
  float _461;
  float _465;
  float _466;
  float _467;
  float _468;
  float _498;
  float _520;
  float _521;
  float _525;
  float _569;
  float _590;
  float _591;
  float _592;
  _31 = (_destTargetSizAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x;
  _32 = (_destTargetSizAndInv.y * (1.0f - TEXCOORD.y)) / _srcTargetSizeAndInv.x;
  _33 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _34 = 0.5f / _33;
  _35 = _31 + -0.5f;
  _36 = _32 - _34;
  _37 = dot(float2(_35, _36), float2(_35, _36));
  _38 = sqrt(_37);
  _39 = WaveReadLaneFirst(_materialIndex);
  _47 = WaveReadLaneFirst(BindlessParameters_PostProcessFisheye_Distortion[((int)((uint)((uint)(select(((uint)_39 < (uint)170000), _39, 0))) + (uint)(0)))].BindlessParameters_PostProcessFisheye_Distortion._maxPower);
  _48 = (_47 > 0.0f);
  if (_48) {
    _56 = sqrt(dot(float2(0.5f, _34), float2(0.5f, _34)));
  } else {
    if (!(_33 < 1.0f)) {
      _56 = _34;
    } else {
      _56 = 0.5f;
    }
  }
  if (_48) {
    _58 = rsqrt(_37);  // [sem: rsqrt_val]
    _60 = tan(_47 * _38);
    _68 = tan(_56 * _47);
    _94 = (((((_56 * _35) * _58) * _60) / _68) + 0.5f);
    _95 = (((((_56 * _36) * _58) * _60) / _68) + _34);
  } else {
    if (_47 < 0.0f) {
      _76 = rsqrt(_37);  // [sem: rsqrt_val]
      _79 = atan((_47 * _38) * -10.0f);
      _88 = atan((_47 * -10.0f) * _56);
      _94 = (((((_56 * _35) * _76) * _79) / _88) + 0.5f);
      _95 = (((((_56 * _36) * _76) * _79) / _88) + _34);
    } else {
      _94 = _31;
      _95 = _32;
    }
  }
  _100 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(_94, (1.0f - (_95 * _33))));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _110 = (pow(_100.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _111 = (pow(_100.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _112 = (pow(_100.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _134 = exp2(log2(max(0.0f, (_110 + -0.8359375f)) / (18.851562f - (_110 * 18.6875f))) * 6.277395f);
  _135 = exp2(log2(max(0.0f, (_111 + -0.8359375f)) / (18.851562f - (_111 * 18.6875f))) * 6.277395f);
  _136 = exp2(log2(max(0.0f, (_112 + -0.8359375f)) / (18.851562f - (_112 * 18.6875f))) * 6.277395f);
  _140 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _153 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _140, 0)))).x) & 127)))) + 0.5f);
  } else {
    _153 = 1.0f;
  }
  _156 = (_localToneMappingParams.w > 0.0f);
  if (_156) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_134, _135, _136));
    _416 = _rndx_tonemapped_color.x;
    _417 = _rndx_tonemapped_color.y;
    _418 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _424 = 1.0f - abs(_etcParams.w);
      _428 = saturate(_etcParams.w);  // [sem: expr_sat]
      _429 = (_424 * _416) + _428;
      _430 = (_424 * _417) + _428;
      _431 = (_424 * _418) + _428;
      if (_colorGradingParams.w > 0.0f) {
        _436 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _453 = (((max(0.0f, (1.0f - _429)) - _429) * _436) + _429);
        _454 = (((max(0.0f, (1.0f - _430)) - _430) * _436) + _430);
        _455 = (((max(0.0f, (1.0f - _431)) - _431) * _436) + _431);
      } else {
        _453 = _429;
        _454 = _430;
        _455 = _431;
      }
      _461 = _userImageAdjust.y + 1.0f;
      _465 = _userImageAdjust.x + 0.5f;
      _466 = ((_453 + -0.5f) * _461) + _465;
      _467 = ((_454 + -0.5f) * _461) + _465;
      _468 = ((_455 + -0.5f) * _461) + _465;
      _498 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _509 = exp2(log2(saturate(mad(_colorBlind0.z, _468, mad(_colorBlind0.y, _467, (_colorBlind0.x * _466))))) * _498);
      _510 = exp2(log2(saturate(mad(_colorBlind1.z, _468, mad(_colorBlind1.y, _467, (_colorBlind1.x * _466))))) * _498);
      _511 = exp2(log2(saturate(mad(_colorBlind2.z, _468, mad(_colorBlind2.y, _467, (_colorBlind2.x * _466))))) * _498);
    } else {
      _509 = _416;
      _510 = _417;
      _511 = _418;
    }
  } else {
    _509 = (_134 * 10000.0f);
    _510 = (_135 * 10000.0f);
    _511 = (_136 * 10000.0f);
  }
  if (_etcParams.y > 1.0f) {
    _520 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _521 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _525 = saturate(1.0f - (dot(float2(_520, _521), float2(_520, _521)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _530 = (_525 * _509);
    _531 = (_525 * _510);
    _532 = (_525 * _511);
  } else {
    _530 = _509;
    _531 = _510;
    _532 = _511;
  }
  if (_156 && (_etcParams.z > 0.0f)) {
    _562 = select((_530 <= 0.0031308f), (_530 * 12.92f), (((pow(_530, 0.41666666f)) * 1.055f) + -0.055f));
    _563 = select((_531 <= 0.0031308f), (_531 * 12.92f), (((pow(_531, 0.41666666f)) * 1.055f) + -0.055f));
    _564 = select((_532 <= 0.0031308f), (_532 * 12.92f), (((pow(_532, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _562 = _530;
    _563 = _531;
    _564 = _532;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _569 = (float)((uint)((uint)(_140)));
    if (!(_569 < _viewDir.w)) {
      if (!(_569 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _578 = _562;
        _579 = _563;
        _580 = _564;
      } else {
        _578 = 0.0f;
        _579 = 0.0f;
        _580 = 0.0f;
      }
    } else {
      _578 = 0.0f;
      _579 = 0.0f;
      _580 = 0.0f;
    }
  } else {
    _578 = _562;
    _579 = _563;
    _580 = _564;
  }
  _590 = exp2(log2(_578 * 0.0001f) * 0.15930176f);
  _591 = exp2(log2(_579 * 0.0001f) * 0.15930176f);
  _592 = exp2(log2(_580 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_590 * 18.6875f) + 1.0f)) * ((_590 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_591 * 18.6875f) + 1.0f)) * ((_591 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_592 * 18.6875f) + 1.0f)) * ((_592 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _153;
  return SV_Target;
}
