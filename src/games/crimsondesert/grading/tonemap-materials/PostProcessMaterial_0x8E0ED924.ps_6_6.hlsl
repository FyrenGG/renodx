struct PostProcessWeatherBlendStruct {
  float _blendRatio;
  float _enableBlend;
  uint _noiseTex;
  uint _berserkColor;
  uint _berserkEndColor;
  float _borderRatio;
  float _borderWidth;
  float _borderSmoothness;
  float _borderEdgeNoiseRatio;
  float2 _borderEdgeNoiseOffset;
  float2 _borderEdgeNoiseTile;
  uint _borderColor;
  uint _borderEdgeNoiseTexture;
  float _borderFlickerSpeed;
  float _borderFlickerIntensity;
  float2 _borderFlickerOpacityMinMax;
  float _contrast;
  float3 _saturation;
  float _chromaticAberrationRatio;
  float _chromaticAberrationShiftValue;
  float2 _chromaticAberrationShiftPosition;
};

struct BindlessParameters_PostProcessWeatherBlend {
  PostProcessWeatherBlendStruct BindlessParameters_PostProcessWeatherBlend;
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

typedef BindlessParameters_PostProcessWeatherBlend BindlessParameters_PostProcessWeatherBlend_t;
ConstantBuffer<BindlessParameters_PostProcessWeatherBlend_t> BindlessParameters_PostProcessWeatherBlend[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _22;
  float _30;
  int _33;
  float _41;
  float _358;
  float _359;
  float _360;
  float _361;
  float _377;
  float _582;
  float _583;
  float _584;
  float _677;
  float _678;
  float _679;
  float _733;
  float _734;
  float _735;
  float _754;
  float _755;
  float _756;
  float _786;
  float _787;
  float _788;
  float _802;
  float _803;
  float _804;
  float _50;
  int _53;
  int _61;
  float _65;
  int _68;
  int _76;
  float4 _90;
  float _93;
  float _94;
  float _95;
  float _97;
  bool _98;
  bool _99;
  bool _100;
  bool _101;
  float _112;
  float _113;
  float _116;
  float _119;
  int _122;
  int _130;
  float4 _142;
  float _144;
  float _146;
  float _158;
  float _161;
  int _164;
  int _172;
  float4 _187;
  float _195;
  float _206;
  float _210;
  float _214;
  float4 _221;
  float4 _229;
  float4 _237;
  float _243;
  float _246;
  float _249;
  float _250;
  int _253;
  int _261;
  float _264;
  float _267;
  float _269;
  float _278;
  float _287;
  float _296;
  float _300;
  float _304;
  float _308;
  float _316;
  float _320;
  float _326;
  float _332;
  float _338;
  float _341;
  float _344;
  uint _362;
  bool _380;
  float _386;
  float _405;
  float _421;
  float _437;
  float _438;
  float _442;
  float _445;
  float _448;
  float _455;
  float _462;
  float _469;
  float _470;
  float _471;
  float _472;
  float _473;
  float _474;
  float _475;
  float _491;
  float _507;
  float _523;
  float _524;
  float _525;
  float _526;
  float _527;
  float _544;
  float _545;
  float _546;
  float _547;
  float _550;
  float _553;
  float _557;
  float _561;
  float _565;
  float _585;
  float _597;
  float _609;
  float _621;
  float _628;
  float _635;
  float _642;
  float _648;
  float _649;
  float _651;
  float _653;
  float _655;
  float _660;
  float _681;
  float _683;
  float _686;
  float _689;
  float _692;
  float _698;
  float _740;
  float _743;
  float _749;
  float _791;
  _22 = WaveReadLaneFirst(_materialIndex);
  _30 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_22 < (uint)170000), _22, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._blendRatio);
  _33 = WaveReadLaneFirst(_materialIndex);
  _41 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_33 < (uint)170000), _33, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._enableBlend);
  if ((_30 < 0.001f) && (_41 < 0.001f)) {
    if (true) discard;
  }
  _50 = _screenSizeAndInvSize.x / _screenSizeAndInvSize.y;
  _53 = WaveReadLaneFirst(_materialIndex);
  _61 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_53 < (uint)170000), _53, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._noiseTex);
  if (_30 > 0.0f) {
    _65 = saturate(_30 * 2.0f);  // [sem: expr_sat]
    _68 = WaveReadLaneFirst(_materialIndex);
    _76 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_68 < (uint)170000), _68, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._noiseTex);
    _90 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_76 < (uint)65000), _76, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((TEXCOORD.x * 2.0f) * _50), ((_time.x * 0.02f) + (TEXCOORD.y * 2.0f))));
    _93 = TEXCOORD.x + -0.5f;
    _94 = TEXCOORD.y + -0.5f;
    _95 = _50 * _93;
    _97 = atan(_94 / _95);
    _98 = (_95 < 0.0f);
    _99 = (_95 == 0.0f);
    _100 = (_94 >= 0.0f);
    _101 = (_94 < 0.0f);
    _112 = select((_100 && _99), 0.5f, select((_101 && _99), -0.5f, (select((_101 && _98), (_97 + -3.1415927f), select((_100 && _98), (_97 + 3.1415927f), _97)) * 0.31830987f)));
    _113 = _94 * _94;
    _116 = sqrt((_95 * _95) + _113);
    _119 = _time.x * 0.2f;
    _122 = WaveReadLaneFirst(_materialIndex);
    _130 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_122 < (uint)170000), _122, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._noiseTex);
    _142 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_130 < (uint)65000), _130, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_50 * 2.0f) * _112) - _119), ((_116 * 0.5f) - _119)));
    _144 = 1.0f - _65;
    _146 = (_65 * 2.0f) + -1.0f;
    // [sem: expr_sat]
    _158 = saturate((_116 - ((_144 * 1.5f) * ((((_142.x + -1.0f) + ((_90.w - _142.x) * saturate(_146))) * _65) + 1.0f))) / _144);
    _161 = saturate(1.5f - abs(_146));  // [sem: expr_sat]
    _164 = WaveReadLaneFirst(_materialIndex);
    _172 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_164 < (uint)170000), _164, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._noiseTex);
    _187 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_172 < (uint)65000), _172, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_112 * _50) * 6.0f) - (_time.x * 0.2f)), ((_116 - _time.x) * 0.5f)));
    _195 = (_161 * 4.0f) * saturate(sqrt(_113 + (_93 * _93)));
    _206 = ((saturate(1.5f - abs((_158 * 2.0f) + -1.0f)) * 4.0f) * saturate((1.0f - _158) * 5.0f)) + _161;
    _210 = (_206 + (_195 * (_187.x + -0.5f))) * _93;
    _214 = (_206 + (_195 * (_187.y + -0.5f))) * _94;
    // [sem: _3__36__0__0__g_sceneColor_sample]
    _221 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - (_210 * 0.033333335f)), (TEXCOORD.y - (_214 * 0.033333335f))));
    // [sem: _3__36__0__0__g_sceneColor_sample]
    _229 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - (_210 * 0.06666667f)), (TEXCOORD.y - (_214 * 0.06666667f))));
    // [sem: _3__36__0__0__g_sceneColor_sample]
    _237 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - (_210 * 0.1f)), (TEXCOORD.y - (_214 * 0.1f))));
    _243 = ((_229.x + _221.x) + _237.x) * 0.25f;
    _246 = ((_229.y + _221.y) + _237.y) * 0.25f;
    _249 = ((_229.z + _221.z) + _237.z) * 0.25f;
    _250 = dot(float3(_243, _246, _249), float3(0.2126f, 0.7152f, 0.0722f));
    _253 = WaveReadLaneFirst(_materialIndex);
    _261 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_253 < (uint)170000), _253, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._berserkColor);
    _264 = (float)((uint)((uint)(((uint)((uint)(_261)) >> 16) & 255)));
    _267 = (float)((uint)((uint)(((uint)((uint)(_261)) >> 8) & 255)));
    _269 = (float)((uint)((uint)(_261 & 255)));
    _278 = select(((_264 * 0.003921569f) < 0.04045f), (_264 * 0.000303527f), exp2(log2((_264 * 0.003717127f) + 0.052132703f) * 2.4f));
    _287 = select(((_267 * 0.003921569f) < 0.04045f), (_267 * 0.000303527f), exp2(log2((_267 * 0.003717127f) + 0.052132703f) * 2.4f));
    _296 = select(((_269 * 0.003921569f) < 0.04045f), (_269 * 0.000303527f), exp2(log2((_269 * 0.003717127f) + 0.052132703f) * 2.4f));
    _300 = (((_278 + -1.0f) * 0.8f) + 1.0f) * _243;
    _304 = (((_287 + -1.0f) * 0.8f) + 1.0f) * _246;
    _308 = (((_296 + -1.0f) * 0.8f) + 1.0f) * _249;
    // [sem: expr_sat]
    _316 = saturate((((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x) + (_90.z * 0.025f)) * 12.5f);
    _320 = (_316 * _316) * (3.0f - (_316 * 2.0f));
    _326 = (_320 * ((lerp(_243, _250, 0.8f)) - _300)) + _300;
    _332 = (_320 * ((lerp(_246, _250, 0.8f)) - _304)) + _304;
    _338 = (_320 * ((lerp(_249, _250, 0.8f)) - _308)) + _308;
    _341 = saturate((_30 + -0.5f) * 2.0f);  // [sem: expr_sat]
    _344 = max(0.001f, _exposure0.x);
    _358 = ((((_296 / _344) - _338) * _341) + _338);
    _359 = ((((_287 / _344) - _332) * _341) + _332);
    _360 = ((((_278 / _344) - _326) * _341) + _326);
    _361 = _158;
  } else {
    _358 = 0.0f;
    _359 = 0.0f;
    _360 = 0.0f;
    _361 = 0.0f;
  }
  _362 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    // [sem: _361_sat]
    _377 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _362, 0)))).x) & 127)))) + 0.5f);
  } else {
    _377 = saturate(_361);  // [sem: _361_sat]
  }
  _380 = (_localToneMappingParams.w > 0.0f);
  if (_380) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_360, _359, _358));
    _628 = _rndx_tonemapped_color.x;
    _635 = _rndx_tonemapped_color.y;
    _642 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _648 = 1.0f - abs(_etcParams.w);
      _649 = saturate(_etcParams.w);  // [sem: expr_sat]
      _651 = (_648 * _628) + _649;
      _653 = (_648 * _635) + _649;
      _655 = (_648 * _642) + _649;
      if (_colorGradingParams.w > 0.0f) {
        _660 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _677 = (((max(0.0f, (1.0f - _655)) - _655) * _660) + _655);
        _678 = (((max(0.0f, (1.0f - _653)) - _653) * _660) + _653);
        _679 = (((max(0.0f, (1.0f - _651)) - _651) * _660) + _651);
      } else {
        _677 = _655;
        _678 = _653;
        _679 = _651;
      }
      _681 = _userImageAdjust.y + 1.0f;
      _683 = _userImageAdjust.x + 0.5f;
      _686 = ((_679 + -0.5f) * _681) + _683;
      _689 = ((_678 + -0.5f) * _681) + _683;
      _692 = ((_677 + -0.5f) * _681) + _683;
      _698 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _733 = exp2(log2(saturate(mad(_colorBlind2.z, _692, mad(_colorBlind2.y, _689, (_colorBlind2.x * _686))))) * _698);
      _734 = exp2(log2(saturate(mad(_colorBlind1.z, _692, mad(_colorBlind1.y, _689, (_colorBlind1.x * _686))))) * _698);
      _735 = exp2(log2(saturate(mad(_colorBlind0.z, _692, mad(_colorBlind0.y, _689, (_colorBlind0.x * _686))))) * _698);
    } else {
      _733 = _642;
      _734 = _635;
      _735 = _628;
    }
  } else {
    _733 = _358;
    _734 = _359;
    _735 = _360;
  }
  if (_etcParams.y > 1.0f) {
    _740 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _743 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _749 = saturate(1.0f - (dot(float2(_740, _743), float2(_740, _743)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _754 = (_749 * _733);
    _755 = (_749 * _734);
    _756 = (_749 * _735);
  } else {
    _754 = _733;
    _755 = _734;
    _756 = _735;
  }
  if (_380 && (_etcParams.z > 0.0f)) {
    _786 = select((_756 <= 0.0031308f), (_756 * 12.92f), (((pow(_756, 0.41666666f)) * 1.055f) + -0.055f));
    _787 = select((_755 <= 0.0031308f), (_755 * 12.92f), (((pow(_755, 0.41666666f)) * 1.055f) + -0.055f));
    _788 = select((_754 <= 0.0031308f), (_754 * 12.92f), (((pow(_754, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _786 = _756;
    _787 = _755;
    _788 = _754;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _791 = (float)((uint)((uint)(_362)));
    if (!(_791 < _viewDir.w)) {
      if (!(!(_791 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _802 = 0.0f;
        _803 = 0.0f;
        _804 = 0.0f;
      } else {
        _802 = _786;
        _803 = _787;
        _804 = _788;
      }
    } else {
      _802 = 0.0f;
      _803 = 0.0f;
      _804 = 0.0f;
    }
  } else {
    _802 = _786;
    _803 = _787;
    _804 = _788;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_802, _803, _804), _sunDirection.y, _moonDirection.y);
    _802 = _rndx_final_color.x;
    _803 = _rndx_final_color.y;
    _804 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _802;
  SV_Target.y = _803;
  SV_Target.z = _804;
  SV_Target.w = _377;
  return SV_Target;
}
