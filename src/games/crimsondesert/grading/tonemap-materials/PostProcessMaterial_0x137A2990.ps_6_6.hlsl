struct PostProcessGrayscaleStruct {
  float _ratio;
};

struct BindlessParameters_PostProcessGrayscale {
  PostProcessGrayscaleStruct BindlessParameters_PostProcessGrayscale;
};


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

typedef BindlessParameters_PostProcessGrayscale BindlessParameters_PostProcessGrayscale_t;
ConstantBuffer<BindlessParameters_PostProcessGrayscale_t> BindlessParameters_PostProcessGrayscale[] : register(b0, space100);

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
  int _25;
  float _33;
  float _34;
  float _37;
  float _40;
  float _43;
  uint _44;
  float _61;
  float _266;
  float _267;
  float _268;
  float _361;
  float _362;
  float _363;
  float _417;
  float _418;
  float _419;
  float _438;
  float _439;
  float _440;
  float _470;
  float _471;
  float _472;
  float _486;
  float _487;
  float _488;
  bool _64;
  float _70;
  float _89;
  float _105;
  float _121;
  float _122;
  float _126;
  float _129;
  float _132;
  float _139;
  float _146;
  float _153;
  float _154;
  float _155;
  float _156;
  float _157;
  float _158;
  float _159;
  float _175;
  float _191;
  float _207;
  float _208;
  float _209;
  float _210;
  float _211;
  float _228;
  float _229;
  float _230;
  float _231;
  float _234;
  float _237;
  float _241;
  float _245;
  float _249;
  float _269;
  float _281;
  float _293;
  float _305;
  float _312;
  float _319;
  float _326;
  float _332;
  float _333;
  float _335;
  float _337;
  float _339;
  float _344;
  float _365;
  float _367;
  float _370;
  float _373;
  float _376;
  float _382;
  float _424;
  float _427;
  float _433;
  float _475;
  _19 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _25 = WaveReadLaneFirst(_materialIndex);
  _33 = WaveReadLaneFirst(BindlessParameters_PostProcessGrayscale[((int)((uint)((uint)(select(((uint)_25 < (uint)170000), _25, 0))) + (uint)(0)))].BindlessParameters_PostProcessGrayscale._ratio);
  _34 = dot(float3(_19.x, _19.y, _19.z), float3(0.2627f, 0.678f, 0.0593f));
  _37 = ((_34 - _19.x) * _33) + _19.x;
  _40 = ((_34 - _19.y) * _33) + _19.y;
  _43 = ((_34 - _19.z) * _33) + _19.z;
  _44 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _61 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _44, 0)))).x) & 127)))) + 0.5f);
  } else {
    _61 = _postProcessParams.x;
  }
  _64 = (_localToneMappingParams.w > 0.0f);
  if (_64) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_37, _40, _43));
    _312 = _rndx_tonemapped_color.x;
    _319 = _rndx_tonemapped_color.y;
    _326 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _332 = 1.0f - abs(_etcParams.w);
      _333 = saturate(_etcParams.w);  // [sem: expr_sat]
      _335 = (_332 * _312) + _333;
      _337 = (_332 * _319) + _333;
      _339 = (_332 * _326) + _333;
      if (_colorGradingParams.w > 0.0f) {
        _344 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _361 = (((max(0.0f, (1.0f - _339)) - _339) * _344) + _339);
        _362 = (((max(0.0f, (1.0f - _337)) - _337) * _344) + _337);
        _363 = (((max(0.0f, (1.0f - _335)) - _335) * _344) + _335);
      } else {
        _361 = _339;
        _362 = _337;
        _363 = _335;
      }
      _365 = _userImageAdjust.y + 1.0f;
      _367 = _userImageAdjust.x + 0.5f;
      _370 = ((_363 + -0.5f) * _365) + _367;
      _373 = ((_362 + -0.5f) * _365) + _367;
      _376 = ((_361 + -0.5f) * _365) + _367;
      _382 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _417 = exp2(log2(saturate(mad(_colorBlind1.z, _376, mad(_colorBlind1.y, _373, (_colorBlind1.x * _370))))) * _382);
      _418 = exp2(log2(saturate(mad(_colorBlind0.z, _376, mad(_colorBlind0.y, _373, (_colorBlind0.x * _370))))) * _382);
      _419 = exp2(log2(saturate(mad(_colorBlind2.z, _376, mad(_colorBlind2.y, _373, (_colorBlind2.x * _370))))) * _382);
    } else {
      _417 = _319;
      _418 = _312;
      _419 = _326;
    }
  } else {
    _417 = _40;
    _418 = _37;
    _419 = _43;
  }
  if (_etcParams.y > 1.0f) {
    _424 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _427 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _433 = saturate(1.0f - (dot(float2(_424, _427), float2(_424, _427)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _438 = (_433 * _418);
    _439 = (_433 * _417);
    _440 = (_433 * _419);
  } else {
    _438 = _418;
    _439 = _417;
    _440 = _419;
  }
  if (_64 && (_etcParams.z > 0.0f)) {
    _470 = select((_438 <= 0.0031308f), (_438 * 12.92f), (((pow(_438, 0.41666666f)) * 1.055f) + -0.055f));
    _471 = select((_439 <= 0.0031308f), (_439 * 12.92f), (((pow(_439, 0.41666666f)) * 1.055f) + -0.055f));
    _472 = select((_440 <= 0.0031308f), (_440 * 12.92f), (((pow(_440, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _470 = _438;
    _471 = _439;
    _472 = _440;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _475 = (float)((uint)((uint)(_44)));
    if (!(_475 < _viewDir.w)) {
      if (!(!(_475 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _486 = 0.0f;
        _487 = 0.0f;
        _488 = 0.0f;
      } else {
        _486 = _470;
        _487 = _471;
        _488 = _472;
      }
    } else {
      _486 = 0.0f;
      _487 = 0.0f;
      _488 = 0.0f;
    }
  } else {
    _486 = _470;
    _487 = _471;
    _488 = _472;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_486, _487, _488), _sunDirection.y, _moonDirection.y);
    _486 = _rndx_final_color.x;
    _487 = _rndx_final_color.y;
    _488 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _486;
  SV_Target.y = _487;
  SV_Target.z = _488;
  SV_Target.w = _61;
  return SV_Target;
}
