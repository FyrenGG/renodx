struct PostProcessActionStruct {
  float _contrast;
  float3 _saturation;
  float _gaussianBlurIntensity;
  float2 _gaussianBlurPosition;
  float _gaussianBlurClampInnerRadius;
  float _gaussianBlurClampHardness;
  float2 _radialBlurPosition;
  float _radialBlurIntensity;
  float _radialBlurClampInnerRadius;
  float _radialBlurClampHardness;
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
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

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

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
};

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

struct BindlessParameters_PostProcessAction {
  PostProcessActionStruct BindlessParameters_PostProcessAction;
};

typedef BindlessParameters_PostProcessAction BindlessParameters_PostProcessAction_t;
ConstantBuffer<BindlessParameters_PostProcessAction_t> BindlessParameters_PostProcessAction[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

static const float _global_0[11] = { 0.048393867909908295f, 0.05793797969818115f, 0.06664453446865082f, 0.07365360110998154f, 0.0782080888748169f, 0.07978799939155579f, 0.0782080888748169f, 0.07365360110998154f, 0.06664453446865082f, 0.05793797969818115f, 0.048393867909908295f };

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _23;
  float _31;
  int _32;
  float _40;
  int _41;
  float _49;
  float _57;
  float _58;
  float _59;
  int _60;
  float _62;
  float _63;
  float _64;
  int _65;
  float _181;
  float _182;
  float _183;
  float _307;
  float _325;
  float _339;
  float _544;
  float _545;
  float _546;
  float _639;
  float _640;
  float _641;
  float _695;
  float _696;
  float _697;
  float _716;
  float _717;
  float _718;
  float _748;
  float _749;
  float _750;
  float _764;
  float _765;
  float _766;
  float4 _86;
  float _96;
  float _97;
  float _98;
  float _123;
  float _127;
  float _128;
  float _129;
  int _130;
  int _133;
  float4 _140;
  float _150;
  float _151;
  float _152;
  int _186;
  float _195;
  float _196;
  int _199;
  float _208;
  float _209;
  int _212;
  int _220;
  int _229;
  float _237;
  int _238;
  float _246;
  float _252;
  float _255;
  float _256;
  float _265;
  int _266;
  float _274;
  int _277;
  float _286;
  float _287;
  int _295;
  float _303;
  int _309;
  float _317;
  uint _326;
  bool _342;
  float _348;
  float _397;
  float _398;
  float _399;
  float _401;
  float _408;
  float _409;
  float _410;
  float _429;
  float _430;
  float _431;
  float _432;
  float _433;
  float _434;
  float _435;
  float _436;
  float _437;
  float _483;
  float _484;
  float _485;
  float _486;
  float _487;
  float _488;
  float _489;
  float _506;
  float _507;
  float _508;
  float _509;
  float _515;
  float _518;
  float _525;
  float _526;
  float _527;
  float _556;
  float _581;
  float _582;
  float _583;
  float _602;
  float _603;
  float _604;
  float _610;
  float _614;
  float _615;
  float _616;
  float _617;
  float _622;
  float _647;
  float _651;
  float _652;
  float _653;
  float _654;
  float _684;
  float _706;
  float _707;
  float _711;
  float _755;
  float _776;
  float _777;
  float _778;
  int __loop_jump_target = -1;
  _23 = WaveReadLaneFirst(_materialIndex);
  _31 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)(select(((uint)_23 < (uint)170000), _23, 0)) + 0u))].BindlessParameters_PostProcessAction._gaussianBlurIntensity);
  _32 = WaveReadLaneFirst(_materialIndex);
  _40 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)(select(((uint)_32 < (uint)170000), _32, 0)) + 0u))].BindlessParameters_PostProcessAction._radialBlurIntensity);
  _41 = WaveReadLaneFirst(_materialIndex);
  _49 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)(select(((uint)_41 < (uint)170000), _41, 0)) + 0u))].BindlessParameters_PostProcessAction._borderRatio);
  if (_31 > 0.0f) {
    _57 = 0.0f;
    _58 = 0.0f;
    _59 = 0.0f;
    _60 = -5;
    while(true) {
      _62 = _57;
      _63 = _58;
      _64 = _59;
      _65 = -5;
      while(true) {
  // [sem: _3__36__0__0__g_sceneColor_sample]
        _86 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((((float((int)(_60)) * _31) * _srcTargetSizeAndInv.z) + TEXCOORD.x), (((float((int)(_65)) * _31) * _srcTargetSizeAndInv.w) + TEXCOORD.y)));
        _96 = (pow(_86.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _97 = (pow(_86.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _98 = (pow(_86.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _123 = ((_global_0[min((uint)((_60 + 5)), 10u)]) * (_global_0[min((uint)((_65 + 5)), 10u)])) * 10000.0f;
        _127 = (exp2(log2(max(0.0f, (_96 + -0.8359375f)) / (18.8515625f - (_96 * 18.6875f))) * 6.277394771575928f) * _123) + _62;
        _128 = (exp2(log2(max(0.0f, (_97 + -0.8359375f)) / (18.8515625f - (_97 * 18.6875f))) * 6.277394771575928f) * _123) + _63;
        _129 = (exp2(log2(max(0.0f, (_98 + -0.8359375f)) / (18.8515625f - (_98 * 18.6875f))) * 6.277394771575928f) * _123) + _64;
        _130 = _65 + 1;
        if (!(_130 == 6)) {
          _62 = _127;
          _63 = _128;
          _64 = _129;
          _65 = _130;
          continue;
        }
        _133 = _60 + 1;
        if (!(_133 == 6)) {
          _57 = _127;
          _58 = _128;
          _59 = _129;
          _60 = _133;
          __loop_jump_target = 56;
          break;
        }
        while(true) {
          _181 = (_127 * 1.8792827129364014f);
          _182 = (_128 * 1.8792827129364014f);
          _183 = (_129 * 1.8792827129364014f);
          break;
        }
        break;
      }
      if (__loop_jump_target == 56) {
        __loop_jump_target = -1;
        continue;
      }
      if (__loop_jump_target != -1) {
        break;
      }
      break;
    }
  } else {
    if (_40 > 0.0f) {
      _140 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
      _150 = (pow(_140.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _151 = (pow(_140.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _152 = (pow(_140.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _181 = (exp2(log2(max(0.0f, (_150 + -0.8359375f)) / (18.8515625f - (_150 * 18.6875f))) * 6.277394771575928f) * 10000.0f);
      _182 = (exp2(log2(max(0.0f, (_151 + -0.8359375f)) / (18.8515625f - (_151 * 18.6875f))) * 6.277394771575928f) * 10000.0f);
      _183 = (exp2(log2(max(0.0f, (_152 + -0.8359375f)) / (18.8515625f - (_152 * 18.6875f))) * 6.277394771575928f) * 10000.0f);
    } else {
      _181 = 0.0f;
      _182 = 0.0f;
      _183 = 0.0f;
    }
  }
  if (_49 > 0.0f) {
    _186 = WaveReadLaneFirst(_materialIndex);
    _195 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)(select(((uint)_186 < (uint)170000), _186, 0)) + 0u))].BindlessParameters_PostProcessAction._borderEdgeNoiseTile.x);
    _196 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)(select(((uint)_186 < (uint)170000), _186, 0)) + 0u))].BindlessParameters_PostProcessAction._borderEdgeNoiseTile.y);
    _199 = WaveReadLaneFirst(_materialIndex);
    _208 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)(select(((uint)_199 < (uint)170000), _199, 0)) + 0u))].BindlessParameters_PostProcessAction._borderEdgeNoiseOffset.x);
    _209 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)(select(((uint)_199 < (uint)170000), _199, 0)) + 0u))].BindlessParameters_PostProcessAction._borderEdgeNoiseOffset.y);
    _212 = WaveReadLaneFirst(_materialIndex);
    _220 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)(select(((uint)_212 < (uint)170000), _212, 0)) + 0u))].BindlessParameters_PostProcessAction._borderEdgeNoiseTexture);
    _229 = WaveReadLaneFirst(_materialIndex);
    _237 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)(select(((uint)_229 < (uint)170000), _229, 0)) + 0u))].BindlessParameters_PostProcessAction._borderSmoothness);
    _238 = WaveReadLaneFirst(_materialIndex);
    _246 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)(select(((uint)_238 < (uint)170000), _238, 0)) + 0u))].BindlessParameters_PostProcessAction._borderWidth);
    _252 = (1.0f - _246) * 0.5f;
    _255 = max((abs(TEXCOORD.x + -0.5f) - _252), 0.0f);
    _256 = max((abs(TEXCOORD.y + -0.5f) - _252), 0.0f);
    _265 = 1.0f - ((1.0f - saturate(sqrt((_256 * _256) + (_255 * _255)) / _237)) * 2.0f);
    _266 = WaveReadLaneFirst(_materialIndex);
    _274 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)(select(((uint)_266 < (uint)170000), _266, 0)) + 0u))].BindlessParameters_PostProcessAction._borderFlickerSpeed);
    if (_274 > 0.0f) {
      _277 = WaveReadLaneFirst(_materialIndex);
      _286 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)(select(((uint)_277 < (uint)170000), _277, 0)) + 0u))].BindlessParameters_PostProcessAction._borderFlickerOpacityMinMax.x);
      _287 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)(select(((uint)_277 < (uint)170000), _277, 0)) + 0u))].BindlessParameters_PostProcessAction._borderFlickerOpacityMinMax.y);
      _295 = WaveReadLaneFirst(_materialIndex);
      _303 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)(select(((uint)_295 < (uint)170000), _295, 0)) + 0u))].BindlessParameters_PostProcessAction._borderFlickerIntensity);
      _307 = ((min(max(sin((_274 * 3.1415927410125732f) * _time.x), _286), _287) * _265) * _303);
    } else {
      _307 = _265;
    }
    _309 = WaveReadLaneFirst(_materialIndex);
    _317 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)(select(((uint)_309 < (uint)170000), _309, 0)) + 0u))].BindlessParameters_PostProcessAction._borderEdgeNoiseRatio);
    _325 = (min(max(_49, 0.0f), 1.0f) * saturate(saturate(_307) - (_317 * (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_220 < (uint)65000), _220, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_208 + (_195 * TEXCOORD.x)), (_209 + (_196 * TEXCOORD.y)))))).x))));
  } else {
    _325 = 1.0f;
  }
  _326 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _339 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _326, 0)))).x) & 127)))) + 0.5f);
  } else {
    _339 = _325;
  }
  _342 = (_localToneMappingParams.w > 0.0f);
  if (_342) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_181, _182, _183));
    _602 = _rndx_tonemapped_color.x;
    _603 = _rndx_tonemapped_color.y;
    _604 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _610 = 1.0f - abs(_etcParams.w);
      _614 = saturate(_etcParams.w);  // [sem: expr_sat]
      _615 = (_610 * _602) + _614;
      _616 = (_610 * _603) + _614;
      _617 = (_610 * _604) + _614;
      if (_colorGradingParams.w > 0.0f) {
        _622 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _639 = (((max(0.0f, (1.0f - _615)) - _615) * _622) + _615);
        _640 = (((max(0.0f, (1.0f - _616)) - _616) * _622) + _616);
        _641 = (((max(0.0f, (1.0f - _617)) - _617) * _622) + _617);
      } else {
        _639 = _615;
        _640 = _616;
        _641 = _617;
      }
      _647 = _userImageAdjust.y + 1.0f;
      _651 = _userImageAdjust.x + 0.5f;
      _652 = ((_639 + -0.5f) * _647) + _651;
      _653 = ((_640 + -0.5f) * _647) + _651;
      _654 = ((_641 + -0.5f) * _647) + _651;
      _684 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _695 = exp2(log2(saturate(mad(_colorBlind0.z, _654, mad(_colorBlind0.y, _653, (_colorBlind0.x * _652))))) * _684);
      _696 = exp2(log2(saturate(mad(_colorBlind1.z, _654, mad(_colorBlind1.y, _653, (_colorBlind1.x * _652))))) * _684);
      _697 = exp2(log2(saturate(mad(_colorBlind2.z, _654, mad(_colorBlind2.y, _653, (_colorBlind2.x * _652))))) * _684);
    } else {
      _695 = _602;
      _696 = _603;
      _697 = _604;
    }
  } else {
    _695 = _181;
    _696 = _182;
    _697 = _183;
  }
  if (_etcParams.y > 1.0f) {
    _706 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _707 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _711 = saturate(1.0f - (dot(float2(_706, _707), float2(_706, _707)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _716 = (_711 * _695);
    _717 = (_711 * _696);
    _718 = (_711 * _697);
  } else {
    _716 = _695;
    _717 = _696;
    _718 = _697;
  }
  if (_342 && (_etcParams.z > 0.0f)) {
    _748 = select((_716 <= 0.0031308000907301903f), (_716 * 12.920000076293945f), (((pow(_716, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _749 = select((_717 <= 0.0031308000907301903f), (_717 * 12.920000076293945f), (((pow(_717, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _750 = select((_718 <= 0.0031308000907301903f), (_718 * 12.920000076293945f), (((pow(_718, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _748 = _716;
    _749 = _717;
    _750 = _718;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _755 = (float)((uint)_326);
    if (!(_755 < _viewDir.w)) {
      if (!(_755 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _764 = _748;
        _765 = _749;
        _766 = _750;
      } else {
        _764 = 0.0f;
        _765 = 0.0f;
        _766 = 0.0f;
      }
    } else {
      _764 = 0.0f;
      _765 = 0.0f;
      _766 = 0.0f;
    }
  } else {
    _764 = _748;
    _765 = _749;
    _766 = _750;
  }
  _776 = exp2(log2(_764 * 9.999999747378752e-05f) * 0.1593017578125f);
  _777 = exp2(log2(_765 * 9.999999747378752e-05f) * 0.1593017578125f);
  _778 = exp2(log2(_766 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_776 * 18.6875f) + 1.0f)) * ((_776 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_777 * 18.6875f) + 1.0f)) * ((_777 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_778 * 18.6875f) + 1.0f)) * ((_778 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _339;
  return SV_Target;
}
