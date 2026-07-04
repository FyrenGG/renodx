struct TemplatePostProcessStruct {
  float _parameter;
};


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

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

#if 0 // Provided by tonemap.hlsli
cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};
#endif

struct BindlessParameters_TemplatePostProcess {
  TemplatePostProcessStruct BindlessParameters_TemplatePostProcess;
};

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
  uint _30;
  float _44;
  float _236;
  float _237;
  float _238;
  float _331;
  float _332;
  float _333;
  float _387;
  float _388;
  float _389;
  float _408;
  float _409;
  float _410;
  float _440;
  float _441;
  float _442;
  float _456;
  float _457;
  float _458;
  bool _47;
  float _53;
  float _89;
  float _90;
  float _91;
  float _93;
  float _100;
  float _101;
  float _102;
  float _121;
  float _122;
  float _123;
  float _124;
  float _125;
  float _126;
  float _127;
  float _128;
  float _129;
  float _175;
  float _176;
  float _177;
  float _178;
  float _179;
  float _180;
  float _181;
  float _198;
  float _199;
  float _200;
  float _201;
  float _207;
  float _210;
  float _217;
  float _218;
  float _219;
  float _248;
  float _273;
  float _274;
  float _275;
  float _294;
  float _295;
  float _296;
  float _302;
  float _306;
  float _307;
  float _308;
  float _309;
  float _314;
  float _339;
  float _343;
  float _344;
  float _345;
  float _346;
  float _376;
  float _398;
  float _399;
  float _403;
  float _447;
  _17 = WaveReadLaneFirst(_materialIndex);
  _25 = WaveReadLaneFirst(BindlessParameters_TemplatePostProcess[((int)((uint)(select(((uint)_17 < (uint)170000), _17, 0)) + 0u))].BindlessParameters_TemplatePostProcess._parameter);
  _30 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _44 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _30, 0)))).x) & 127)))) + 0.5f);
  } else {
    _44 = select(isnan(_postProcessParams.x), 0.0f, 1.0f);
  }
  _47 = (_localToneMappingParams.w > 0.0f);
  if (_47) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_25, _25, _25));
    _294 = _rndx_tonemapped_color.x;
    _295 = _rndx_tonemapped_color.y;
    _296 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _302 = 1.0f - abs(_etcParams.w);
      _306 = saturate(_etcParams.w);  // [sem: expr_sat]
      _307 = (_302 * _294) + _306;
      _308 = (_302 * _295) + _306;
      _309 = (_302 * _296) + _306;
      if (_colorGradingParams.w > 0.0f) {
        _314 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _331 = (((max(0.0f, (1.0f - _307)) - _307) * _314) + _307);
        _332 = (((max(0.0f, (1.0f - _308)) - _308) * _314) + _308);
        _333 = (((max(0.0f, (1.0f - _309)) - _309) * _314) + _309);
      } else {
        _331 = _307;
        _332 = _308;
        _333 = _309;
      }
      _339 = _userImageAdjust.y + 1.0f;
      _343 = _userImageAdjust.x + 0.5f;
      _344 = ((_331 + -0.5f) * _339) + _343;
      _345 = ((_332 + -0.5f) * _339) + _343;
      _346 = ((_333 + -0.5f) * _339) + _343;
      _376 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _387 = exp2(log2(saturate(mad(_colorBlind0.z, _346, mad(_colorBlind0.y, _345, (_colorBlind0.x * _344))))) * _376);
      _388 = exp2(log2(saturate(mad(_colorBlind1.z, _346, mad(_colorBlind1.y, _345, (_colorBlind1.x * _344))))) * _376);
      _389 = exp2(log2(saturate(mad(_colorBlind2.z, _346, mad(_colorBlind2.y, _345, (_colorBlind2.x * _344))))) * _376);
    } else {
      _387 = _294;
      _388 = _295;
      _389 = _296;
    }
  } else {
    _387 = _25;
    _388 = _25;
    _389 = _25;
  }
  if (_etcParams.y > 1.0f) {
    _398 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _399 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _403 = saturate(1.0f - (dot(float2(_398, _399), float2(_398, _399)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _408 = (_403 * _387);
    _409 = (_403 * _388);
    _410 = (_403 * _389);
  } else {
    _408 = _387;
    _409 = _388;
    _410 = _389;
  }
  if (_47 && (_etcParams.z > 0.0f)) {
    _440 = select((_408 <= 0.0031308000907301903f), (_408 * 12.920000076293945f), (((pow(_408, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _441 = select((_409 <= 0.0031308000907301903f), (_409 * 12.920000076293945f), (((pow(_409, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _442 = select((_410 <= 0.0031308000907301903f), (_410 * 12.920000076293945f), (((pow(_410, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _440 = _408;
    _441 = _409;
    _442 = _410;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _447 = (float)((uint)_30);
    if (!(_447 < _viewDir.w)) {
      if (!(_447 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _456 = _440;
        _457 = _441;
        _458 = _442;
      } else {
        _456 = 0.0f;
        _457 = 0.0f;
        _458 = 0.0f;
      }
    } else {
      _456 = 0.0f;
      _457 = 0.0f;
      _458 = 0.0f;
    }
  } else {
    _456 = _440;
    _457 = _441;
    _458 = _442;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_456, _457, _458), _sunDirection.y, _moonDirection.y);
    _456 = _rndx_final_color.x;
    _457 = _rndx_final_color.y;
    _458 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _456;
  SV_Target.y = _457;
  SV_Target.z = _458;
  SV_Target.w = _44;
  return SV_Target;
}
