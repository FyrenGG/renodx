struct PostProcessBerserk_CDStruct {
  float _scanRadius;
  float _fishEyeIntensity;
  float _bloodLineIntensity;
  float _auraIntensity;
  float _centerMaskWidth;
  float _fireIntensity;
  float _sphereMaskRatio;
  float _fogIntensity;
  float _scanRadiusEnd;
  float _ringMaskRadius;
  float _ringMaskIntensity;
  float _radialBlurIntensity;
  uint _noiseTex;
  uint _noiseTex2;
  uint _distortionTex;
  uint _marbleCrackTex;
  float _sphereMaskEndRatio;
  float _sphereMaskEndNoiseIntensity;
  float _sceneColorDistortionIntensity;
  float _characterMaskIntensity;
  uint _enemyGradientTex;
  uint _enemyMaskColor;
  float _flashRatio;
  uint _paperTex;
};

struct BindlessParameters_PostProcessBerserk_CD {
  PostProcessBerserk_CDStruct BindlessParameters_PostProcessBerserk_CD;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

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

typedef BindlessParameters_PostProcessBerserk_CD BindlessParameters_PostProcessBerserk_CD_t;
ConstantBuffer<BindlessParameters_PostProcessBerserk_CD_t> BindlessParameters_PostProcessBerserk_CD[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _20;
  int _28;
  float4 _31;
  float _37;
  float _40;
  float _43;
  float _44;
  float _45;
  float _46;
  float _47;
  float _51;
  float _52;
  float _59;
  float _62;
  float _65;
  float _69;
  float _101;
  int _104;
  int _112;
  float _121;
  float _124;
  float _125;
  float _126;
  float _154;
  uint _155;
  float _206;
  float _405;
  float _406;
  float _407;
  float _501;
  float _502;
  float _503;
  float _557;
  float _558;
  float _559;
  float _580;
  float _581;
  float _582;
  float _612;
  float _613;
  float _614;
  float _628;
  float _629;
  float _630;
  bool _209;
  float _215;
  float _232;
  float _246;
  float _260;
  float _261;
  float _265;
  float _268;
  float _271;
  float _278;
  float _285;
  float _292;
  float _293;
  float _294;
  float _295;
  float _296;
  float _297;
  float _298;
  float _314;
  float _330;
  float _346;
  float _347;
  float _348;
  float _349;
  float _350;
  float _367;
  float _368;
  float _369;
  float _370;
  float _373;
  float _376;
  float _380;
  float _384;
  float _388;
  float _408;
  float _420;
  float _432;
  float _444;
  float _451;
  float _458;
  float _465;
  float _472;
  float _473;
  float _475;
  float _477;
  float _479;
  float _484;
  float _505;
  float _507;
  float _510;
  float _513;
  float _516;
  float _522;
  float _566;
  float _569;
  float _575;
  float _617;
  float _634;
  float _638;
  float _642;
  _20 = WaveReadLaneFirst(_materialIndex);
  _28 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_20 < (uint)170000), _20, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._noiseTex);
  _31 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _37 = (pow(_31.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _40 = (pow(_31.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _43 = (pow(_31.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _44 = TEXCOORD.x + -0.5f;
  _45 = TEXCOORD.y + -0.5f;
  _46 = abs(_44);
  _47 = abs(_45);
  _51 = min(_46, _47) / max(max(_46, _47), 1e-08f);
  _52 = _51 * _51;
  _59 = ((_52 * _51) * (((0.15931422f - (_52 * 0.046496473f)) * _52) + -0.32762277f)) + _51;
  _62 = select((_47 > _46), (1.5707964f - _59), _59);
  _65 = select((_44 < 0.0f), (3.1415927f - _62), _62);
  _69 = select((_45 < 0.0f), (-0.0f - _65), _65) * 0.9549296f;
  _101 = select(((uint)((int)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f))), 0)))).x) & 127) + (int)(-52)) < (uint)16), 0.0f, ((1.0f / max(0.0001f, _exposure0.x)) * saturate(1.0f - saturate(exp2(log2((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x) * 0.5f) * 6.5f))));
  _104 = WaveReadLaneFirst(_materialIndex);
  _112 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_104 < (uint)170000), _104, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._noiseTex2);
  _121 = (sqrt((_45 * _45) + (_44 * _44)) * 2.0f) - (_time.x * 0.7f);
  _124 = _time.x * 0.030000001f;
  _125 = _124 + _69;
  _126 = _124 + _121;
  _154 = dot(float3((exp2(log2(max(0.0f, (_37 + -0.8359375f)) / (18.851562f - (_37 * 18.6875f))) * 6.277395f) * 10000.0f), (exp2(log2(max(0.0f, (_40 + -0.8359375f)) / (18.851562f - (_40 * 18.6875f))) * 6.277395f) * 10000.0f), (exp2(log2(max(0.0f, (_43 + -0.8359375f)) / (18.851562f - (_43 * 18.6875f))) * 6.277395f) * 10000.0f)), float3(0.2126f, 0.7152f, 0.0722f));
  _155 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    // [sem: expr_sat]
    _206 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _155, 0)))).x) & 127)))) + 0.5f);
  } else {
    // [sem: expr_sat]
    _206 = saturate((((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_112 < (uint)65000), _112, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(frac(_125), frac(_126))))).w) + (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_112 < (uint)65000), _112, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(frac((_69 + 0.418f) - _124), frac((_121 + 0.355f) - _124))))).w)) + (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_112 < (uint)65000), _112, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(frac((_69 + 0.855f) - _124), frac(_126 + 0.148f))))).w)) + (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_112 < (uint)65000), _112, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(frac(_125 + 0.651f), frac((_121 + 0.752f) - _124))))).w));
  }
  _209 = (_localToneMappingParams.w > 0.0f);
  if (_209) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_101, _154, 0.0f));
    _451 = _rndx_tonemapped_color.x;
    _458 = _rndx_tonemapped_color.y;
    _465 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _472 = 1.0f - abs(_etcParams.w);
      _473 = saturate(_etcParams.w);  // [sem: expr_sat]
      _475 = (_472 * _451) + _473;
      _477 = (_472 * _458) + _473;
      _479 = (_472 * _465) + _473;
      if (_colorGradingParams.w > 0.0f) {
        _484 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _501 = (((max(0.0f, (1.0f - _475)) - _475) * _484) + _475);
        _502 = (((max(0.0f, (1.0f - _477)) - _477) * _484) + _477);
        _503 = (((max(0.0f, (1.0f - _479)) - _479) * _484) + _479);
      } else {
        _501 = _475;
        _502 = _477;
        _503 = _479;
      }
      _505 = _userImageAdjust.y + 1.0f;
      _507 = _userImageAdjust.x + 0.5f;
      _510 = ((_501 + -0.5f) * _505) + _507;
      _513 = ((_502 + -0.5f) * _505) + _507;
      _516 = ((_503 + -0.5f) * _505) + _507;
      _522 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _557 = exp2(log2(saturate(mad(_colorBlind0.z, _516, mad(_colorBlind0.y, _513, (_colorBlind0.x * _510))))) * _522);
      _558 = exp2(log2(saturate(mad(_colorBlind1.z, _516, mad(_colorBlind1.y, _513, (_colorBlind1.x * _510))))) * _522);
      _559 = exp2(log2(saturate(mad(_colorBlind2.z, _516, mad(_colorBlind2.y, _513, (_colorBlind2.x * _510))))) * _522);
    } else {
      _557 = _451;
      _558 = _458;
      _559 = _465;
    }
  } else {
    _557 = _101;
    _558 = _154;
    _559 = 0.0f;
  }
  if (_etcParams.y > 1.0f) {
    _566 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _569 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _575 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_566, _569), float2(_566, _569))));  // [sem: expr_sat]
    _580 = (_575 * _557);
    _581 = (_575 * _558);
    _582 = (_575 * _559);
  } else {
    _580 = _557;
    _581 = _558;
    _582 = _559;
  }
  if (_209 && (_etcParams.z > 0.0f)) {
    _612 = select((_580 <= 0.0031308f), (_580 * 12.92f), (((pow(_580, 0.41666666f)) * 1.055f) + -0.055f));
    _613 = select((_581 <= 0.0031308f), (_581 * 12.92f), (((pow(_581, 0.41666666f)) * 1.055f) + -0.055f));
    _614 = select((_582 <= 0.0031308f), (_582 * 12.92f), (((pow(_582, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _612 = _580;
    _613 = _581;
    _614 = _582;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _617 = (float)((uint)((uint)(_155)));
    if (!(_617 < _viewDir.w)) {
      if (!(!(_617 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _628 = 0.0f;
        _629 = 0.0f;
        _630 = 0.0f;
      } else {
        _628 = _612;
        _629 = _613;
        _630 = _614;
      }
    } else {
      _628 = 0.0f;
      _629 = 0.0f;
      _630 = 0.0f;
    }
  } else {
    _628 = _612;
    _629 = _613;
    _630 = _614;
  }
  _634 = exp2(log2(_628 * 0.0001f) * 0.15930176f);
  _638 = exp2(log2(_629 * 0.0001f) * 0.15930176f);
  _642 = exp2(log2(_630 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_634 * 18.6875f) + 1.0f)) * ((_634 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_638 * 18.6875f) + 1.0f)) * ((_638 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_642 * 18.6875f) + 1.0f)) * ((_642 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _206;
  return SV_Target;
}
