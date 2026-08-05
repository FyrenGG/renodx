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
  float _35;
  float _36;
  float _37;
  float _38;
  float _42;
  float _43;
  float _50;
  float _53;
  float _56;
  float _60;
  float _92;
  int _95;
  int _103;
  float _112;
  float _115;
  float _116;
  float _117;
  float _118;
  uint _119;
  float _170;
  float _369;
  float _370;
  float _371;
  float _465;
  float _466;
  float _467;
  float _521;
  float _522;
  float _523;
  float _544;
  float _545;
  float _546;
  float _576;
  float _577;
  float _578;
  float _592;
  float _593;
  float _594;
  bool _173;
  float _179;
  float _196;
  float _210;
  float _224;
  float _225;
  float _229;
  float _232;
  float _235;
  float _242;
  float _249;
  float _256;
  float _257;
  float _258;
  float _259;
  float _260;
  float _261;
  float _262;
  float _278;
  float _294;
  float _310;
  float _311;
  float _312;
  float _313;
  float _314;
  float _331;
  float _332;
  float _333;
  float _334;
  float _337;
  float _340;
  float _344;
  float _348;
  float _352;
  float _372;
  float _384;
  float _396;
  float _408;
  float _415;
  float _422;
  float _429;
  float _436;
  float _437;
  float _439;
  float _441;
  float _443;
  float _448;
  float _469;
  float _471;
  float _474;
  float _477;
  float _480;
  float _486;
  float _530;
  float _533;
  float _539;
  float _581;
  _20 = WaveReadLaneFirst(_materialIndex);
  _28 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_20 < (uint)170000), _20, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._noiseTex);
  _31 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _35 = TEXCOORD.x + -0.5f;
  _36 = TEXCOORD.y + -0.5f;
  _37 = abs(_35);
  _38 = abs(_36);
  _42 = min(_37, _38) / max(max(_37, _38), 1e-08f);
  _43 = _42 * _42;
  _50 = ((_43 * _42) * (((0.15931422f - (_43 * 0.046496473f)) * _43) + -0.32762277f)) + _42;
  _53 = select((_38 > _37), (1.5707964f - _50), _50);
  _56 = select((_35 < 0.0f), (3.1415927f - _53), _53);
  _60 = select((_36 < 0.0f), (-0.0f - _56), _56) * 0.9549296f;
  _92 = select(((uint)((int)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f))), 0)))).x) & 127) + (int)(-52)) < (uint)16), 0.0f, ((1.0f / max(0.0001f, _exposure0.x)) * saturate(1.0f - saturate(exp2(log2((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x) * 0.5f) * 6.5f))));
  _95 = WaveReadLaneFirst(_materialIndex);
  _103 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)((uint)(select(((uint)_95 < (uint)170000), _95, 0))) + (uint)(0)))].BindlessParameters_PostProcessBerserk_CD._noiseTex2);
  _112 = (sqrt((_36 * _36) + (_35 * _35)) * 2.0f) - (_time.x * 0.7f);
  _115 = _time.x * 0.030000001f;
  _116 = _115 + _60;
  _117 = _115 + _112;
  _118 = dot(float3(_31.x, _31.y, _31.z), float3(0.2126f, 0.7152f, 0.0722f));
  _119 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    // [sem: expr_sat]
    _170 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _119, 0)))).x) & 127)))) + 0.5f);
  } else {
    // [sem: expr_sat]
    _170 = saturate((((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_103 < (uint)65000), _103, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(frac(_116), frac(_117))))).w) + (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_103 < (uint)65000), _103, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(frac((_60 + 0.418f) - _115), frac((_112 + 0.355f) - _115))))).w)) + (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_103 < (uint)65000), _103, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(frac((_60 + 0.855f) - _115), frac(_117 + 0.148f))))).w)) + (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_103 < (uint)65000), _103, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(frac(_116 + 0.651f), frac((_112 + 0.752f) - _115))))).w));
  }
  _173 = (_localToneMappingParams.w > 0.0f);
  if (_173) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_92, _118, 0.0f));
    _415 = _rndx_tonemapped_color.x;
    _422 = _rndx_tonemapped_color.y;
    _429 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _436 = 1.0f - abs(_etcParams.w);
      _437 = saturate(_etcParams.w);  // [sem: expr_sat]
      _439 = (_436 * _415) + _437;
      _441 = (_436 * _422) + _437;
      _443 = (_436 * _429) + _437;
      if (_colorGradingParams.w > 0.0f) {
        _448 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _465 = (((max(0.0f, (1.0f - _439)) - _439) * _448) + _439);
        _466 = (((max(0.0f, (1.0f - _441)) - _441) * _448) + _441);
        _467 = (((max(0.0f, (1.0f - _443)) - _443) * _448) + _443);
      } else {
        _465 = _439;
        _466 = _441;
        _467 = _443;
      }
      _469 = _userImageAdjust.y + 1.0f;
      _471 = _userImageAdjust.x + 0.5f;
      _474 = ((_465 + -0.5f) * _469) + _471;
      _477 = ((_466 + -0.5f) * _469) + _471;
      _480 = ((_467 + -0.5f) * _469) + _471;
      _486 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _521 = exp2(log2(saturate(mad(_colorBlind0.z, _480, mad(_colorBlind0.y, _477, (_colorBlind0.x * _474))))) * _486);
      _522 = exp2(log2(saturate(mad(_colorBlind1.z, _480, mad(_colorBlind1.y, _477, (_colorBlind1.x * _474))))) * _486);
      _523 = exp2(log2(saturate(mad(_colorBlind2.z, _480, mad(_colorBlind2.y, _477, (_colorBlind2.x * _474))))) * _486);
    } else {
      _521 = _415;
      _522 = _422;
      _523 = _429;
    }
  } else {
    _521 = _92;
    _522 = _118;
    _523 = 0.0f;
  }
  if (_etcParams.y > 1.0f) {
    _530 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _533 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _539 = saturate(1.0f - (dot(float2(_530, _533), float2(_530, _533)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _544 = (_539 * _521);
    _545 = (_539 * _522);
    _546 = (_539 * _523);
  } else {
    _544 = _521;
    _545 = _522;
    _546 = _523;
  }
  if (_173 && (_etcParams.z > 0.0f)) {
    _576 = select((_544 <= 0.0031308f), (_544 * 12.92f), (((pow(_544, 0.41666666f)) * 1.055f) + -0.055f));
    _577 = select((_545 <= 0.0031308f), (_545 * 12.92f), (((pow(_545, 0.41666666f)) * 1.055f) + -0.055f));
    _578 = select((_546 <= 0.0031308f), (_546 * 12.92f), (((pow(_546, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _576 = _544;
    _577 = _545;
    _578 = _546;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _581 = (float)((uint)((uint)(_119)));
    if (!(_581 < _viewDir.w)) {
      if (!(!(_581 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _592 = 0.0f;
        _593 = 0.0f;
        _594 = 0.0f;
      } else {
        _592 = _576;
        _593 = _577;
        _594 = _578;
      }
    } else {
      _592 = 0.0f;
      _593 = 0.0f;
      _594 = 0.0f;
    }
  } else {
    _592 = _576;
    _593 = _577;
    _594 = _578;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_592, _593, _594), _sunDirection.y, _moonDirection.y);
    _592 = _rndx_final_color.x;
    _593 = _rndx_final_color.y;
    _594 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _592;
  SV_Target.y = _593;
  SV_Target.z = _594;
  SV_Target.w = _170;
  return SV_Target;
}
