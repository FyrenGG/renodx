struct PostProcessTransition_CDStruct {
  uint _chapterNoiseTex;
  uint _chapterCardTex;
  uint _lensDirtTex;
  float _chapterTransition;
  uint _sceneTintColor;
  uint _chapterCardColor;
  uint _chapterBackgroundColor;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

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

struct BindlessParameters_PostProcessTransition_CD {
  PostProcessTransition_CDStruct BindlessParameters_PostProcessTransition_CD;
};

typedef BindlessParameters_PostProcessTransition_CD BindlessParameters_PostProcessTransition_CD_t;
ConstantBuffer<BindlessParameters_PostProcessTransition_CD_t> BindlessParameters_PostProcessTransition_CD[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _20;
  float _28;
  float _38;
  float _39;
  float _40;
  float _54;
  float _259;
  float _260;
  float _261;
  float _354;
  float _355;
  float _356;
  float _410;
  float _411;
  float _412;
  float _431;
  float _432;
  float _433;
  float _463;
  float _464;
  float _465;
  float _479;
  float _480;
  float _481;
  float4 _33;
  uint _41;
  bool _57;
  float _63;
  float _112;
  float _113;
  float _114;
  float _116;
  float _123;
  float _124;
  float _125;
  float _144;
  float _145;
  float _146;
  float _147;
  float _148;
  float _149;
  float _150;
  float _151;
  float _152;
  float _198;
  float _199;
  float _200;
  float _201;
  float _202;
  float _203;
  float _204;
  float _221;
  float _222;
  float _223;
  float _224;
  float _230;
  float _233;
  float _240;
  float _241;
  float _242;
  float _271;
  float _296;
  float _297;
  float _298;
  float _317;
  float _318;
  float _319;
  float _325;
  float _329;
  float _330;
  float _331;
  float _332;
  float _337;
  float _362;
  float _366;
  float _367;
  float _368;
  float _369;
  float _399;
  float _421;
  float _422;
  float _426;
  float _470;
  _20 = WaveReadLaneFirst(_materialIndex);
  _28 = WaveReadLaneFirst(BindlessParameters_PostProcessTransition_CD[((int)((uint)(select(((uint)_20 < (uint)170000), _20, 0)) + 0u))].BindlessParameters_PostProcessTransition_CD._chapterTransition);
  if (_28 > 0.0f) {
    _33 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
    _38 = _33.x;  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _39 = _33.y;  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _40 = _33.z;  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  } else {
    _38 = 0.0f;  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _39 = 0.0f;  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _40 = 0.0f;  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  }
  _41 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _54 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _41, 0)))).x) & 127)))) + 0.5f);
  } else {
    _54 = 0.0f;
  }
  _57 = (_localToneMappingParams.w > 0.0f);
  if (_57) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_38, _39, _40));
    _317 = _rndx_tonemapped_color.x;
    _318 = _rndx_tonemapped_color.y;
    _319 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _325 = 1.0f - abs(_etcParams.w);
      _329 = saturate(_etcParams.w);  // [sem: expr_sat]
      _330 = (_325 * _317) + _329;
      _331 = (_325 * _318) + _329;
      _332 = (_325 * _319) + _329;
      if (_colorGradingParams.w > 0.0f) {
        _337 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _354 = (((max(0.0f, (1.0f - _330)) - _330) * _337) + _330);
        _355 = (((max(0.0f, (1.0f - _331)) - _331) * _337) + _331);
        _356 = (((max(0.0f, (1.0f - _332)) - _332) * _337) + _332);
      } else {
        _354 = _330;
        _355 = _331;
        _356 = _332;
      }
      _362 = _userImageAdjust.y + 1.0f;
      _366 = _userImageAdjust.x + 0.5f;
      _367 = ((_354 + -0.5f) * _362) + _366;
      _368 = ((_355 + -0.5f) * _362) + _366;
      _369 = ((_356 + -0.5f) * _362) + _366;
      _399 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _410 = exp2(log2(saturate(mad(_colorBlind0.z, _369, mad(_colorBlind0.y, _368, (_colorBlind0.x * _367))))) * _399);
      _411 = exp2(log2(saturate(mad(_colorBlind1.z, _369, mad(_colorBlind1.y, _368, (_colorBlind1.x * _367))))) * _399);
      _412 = exp2(log2(saturate(mad(_colorBlind2.z, _369, mad(_colorBlind2.y, _368, (_colorBlind2.x * _367))))) * _399);
    } else {
      _410 = _317;
      _411 = _318;
      _412 = _319;
    }
  } else {
    _410 = _38;
    _411 = _39;
    _412 = _40;
  }
  if (_etcParams.y > 1.0f) {
    _421 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _422 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _426 = saturate(1.0f - (dot(float2(_421, _422), float2(_421, _422)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _431 = (_426 * _410);
    _432 = (_426 * _411);
    _433 = (_426 * _412);
  } else {
    _431 = _410;
    _432 = _411;
    _433 = _412;
  }
  if (_57 && (_etcParams.z > 0.0f)) {
    _463 = select((_431 <= 0.0031308000907301903f), (_431 * 12.920000076293945f), (((pow(_431, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _464 = select((_432 <= 0.0031308000907301903f), (_432 * 12.920000076293945f), (((pow(_432, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _465 = select((_433 <= 0.0031308000907301903f), (_433 * 12.920000076293945f), (((pow(_433, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _463 = _431;
    _464 = _432;
    _465 = _433;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _470 = (float)((uint)_41);
    if (!(_470 < _viewDir.w)) {
      if (!(_470 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _479 = _463;
        _480 = _464;
        _481 = _465;
      } else {
        _479 = 0.0f;
        _480 = 0.0f;
        _481 = 0.0f;
      }
    } else {
      _479 = 0.0f;
      _480 = 0.0f;
      _481 = 0.0f;
    }
  } else {
    _479 = _463;
    _480 = _464;
    _481 = _465;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_479, _480, _481), _sunDirection.y, _moonDirection.y);
    _479 = _rndx_final_color.x;
    _480 = _rndx_final_color.y;
    _481 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _479;
  SV_Target.y = _480;
  SV_Target.z = _481;
  SV_Target.w = _54;
  return SV_Target;
}
