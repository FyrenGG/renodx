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


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t28, space36);

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

struct BindlessParameters_PostProcessWeatherBlend {
  PostProcessWeatherBlendStruct BindlessParameters_PostProcessWeatherBlend;
};

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
  float4 _42;
  float _52;
  float _53;
  float _54;
  float _76;
  float _77;
  float _78;
  float _79;
  float _80;
  float _81;
  int _82;
  float _90;
  int _91;
  float _99;
  float _413;
  float _414;
  float _415;
  float _429;
  float _634;
  float _635;
  float _636;
  float _729;
  float _730;
  float _731;
  float _785;
  float _786;
  float _787;
  float _806;
  float _807;
  float _808;
  float _838;
  float _839;
  float _840;
  float _854;
  float _855;
  float _856;
  int _110;
  int _118;
  float4 _125;
  float4 _132;
  float _143;
  float _144;
  float _145;
  float _173;
  float _177;
  float _178;
  float _179;
  float _180;
  float _181;
  float _183;
  bool _186;
  bool _187;
  bool _188;
  bool _189;
  float _198;
  float _202;
  int _217;
  int _225;
  float4 _232;
  float _237;
  float _240;
  float _241;
  int _260;
  int _268;
  float4 _275;
  int _277;
  int _285;
  float _288;
  float _291;
  float _293;
  float _323;
  float _329;
  float _336;
  float _337;
  float _338;
  int _339;
  int _347;
  float _350;
  float _353;
  float _355;
  float _385;
  float _390;
  float _397;
  float _398;
  float _399;
  float _402;
  uint _416;
  bool _432;
  float _438;
  float _487;
  float _488;
  float _489;
  float _491;
  float _498;
  float _499;
  float _500;
  float _519;
  float _520;
  float _521;
  float _522;
  float _523;
  float _524;
  float _525;
  float _526;
  float _527;
  float _573;
  float _574;
  float _575;
  float _576;
  float _577;
  float _578;
  float _579;
  float _596;
  float _597;
  float _598;
  float _599;
  float _605;
  float _608;
  float _615;
  float _616;
  float _617;
  float _646;
  float _671;
  float _672;
  float _673;
  float _692;
  float _693;
  float _694;
  float _700;
  float _704;
  float _705;
  float _706;
  float _707;
  float _712;
  float _737;
  float _741;
  float _742;
  float _743;
  float _744;
  float _774;
  float _796;
  float _797;
  float _801;
  float _845;
  float _866;
  float _867;
  float _868;
  _42 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _52 = (pow(_42.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _53 = (pow(_42.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _54 = (pow(_42.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _76 = exp2(log2(max(0.0f, (_52 + -0.8359375f)) / (18.8515625f - (_52 * 18.6875f))) * 6.277394771575928f);
  _77 = exp2(log2(max(0.0f, (_53 + -0.8359375f)) / (18.8515625f - (_53 * 18.6875f))) * 6.277394771575928f);
  _78 = exp2(log2(max(0.0f, (_54 + -0.8359375f)) / (18.8515625f - (_54 * 18.6875f))) * 6.277394771575928f);
  _79 = _76 * 10000.0f;
  _80 = _77 * 10000.0f;
  _81 = _78 * 10000.0f;
  _82 = WaveReadLaneFirst(_materialIndex);
  _90 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)(select(((uint)_82 < (uint)170000), _82, 0)) + 0u))].BindlessParameters_PostProcessWeatherBlend._blendRatio);
  _91 = WaveReadLaneFirst(_materialIndex);
  _99 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)(select(((uint)_91 < (uint)170000), _91, 0)) + 0u))].BindlessParameters_PostProcessWeatherBlend._enableBlend);
  if ((_90 >= 0.009999999776482582f) && (_99 > 0.009999999776482582f)) {
    _110 = WaveReadLaneFirst(_materialIndex);
    _118 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)(select(((uint)_110 < (uint)170000), _110, 0)) + 0u))].BindlessParameters_PostProcessWeatherBlend._noiseTex);
    _125 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_118 < (uint)65000), _118, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, ((_time.x * 0.20000000298023224f) + TEXCOORD.y)));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _132 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _143 = (pow(_132.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _144 = (pow(_132.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _145 = (pow(_132.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _173 = _132.w * 10000.0f;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _177 = ((exp2(log2(max(0.0f, (_143 + -0.8359375f)) / (18.8515625f - (_143 * 18.6875f))) * 6.277394771575928f) - _76) * _173) + _79;
    _178 = ((exp2(log2(max(0.0f, (_144 + -0.8359375f)) / (18.8515625f - (_144 * 18.6875f))) * 6.277394771575928f) - _77) * _173) + _80;
    _179 = ((exp2(log2(max(0.0f, (_145 + -0.8359375f)) / (18.8515625f - (_145 * 18.6875f))) * 6.277394771575928f) - _78) * _173) + _81;
    _180 = TEXCOORD.x + -0.5f;
    _181 = TEXCOORD.y + -0.5f;
    _183 = atan(_181 / _180);
    _186 = (_180 < 0.0f);
    _187 = (_180 == 0.0f);
    _188 = (_181 >= 0.0f);
    _189 = (_181 < 0.0f);
    _198 = select((_187 && _188), 0.5f, select((_187 && _189), -0.5f, (select((_186 && _189), (_183 + -3.1415927410125732f), select((_186 && _188), (_183 + 3.1415927410125732f), _183)) * 0.31830987334251404f)));
    _202 = sqrt((_181 * _181) + (_180 * _180));
    _217 = WaveReadLaneFirst(_materialIndex);
    _225 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)(select(((uint)_217 < (uint)170000), _217, 0)) + 0u))].BindlessParameters_PostProcessWeatherBlend._noiseTex);
    _232 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_225 < (uint)65000), _225, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_time.x * -0.20000000298023224f) - ((_125.z + -0.5f) * 0.5f)) + (_198 * 15.0f)), (((_202 * 2.0f) - ((_125.w + -0.5f) * 0.5f)) - (_time.x * 1.5f))));
    _237 = (1.75f - saturate(_90 * 1.4285714626312256f)) * 0.5f;
    _240 = max((abs(_180) - _237), 0.0f);
    _241 = max((abs(_181) - _237), 0.0f);
    _260 = WaveReadLaneFirst(_materialIndex);
    _268 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)(select(((uint)_260 < (uint)170000), _260, 0)) + 0u))].BindlessParameters_PostProcessWeatherBlend._borderEdgeNoiseTexture);
    _275 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_268 < (uint)65000), _268, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_198 * 9.0f) + (_125.x * 0.05000000074505806f)) - (_232.x * 0.10000000149011612f)), ((_202 + (_125.y * 0.05000000074505806f)) - ((_time.x + _232.x) * 0.10000000149011612f))));
    _277 = WaveReadLaneFirst(_materialIndex);
    _285 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)(select(((uint)_277 < (uint)170000), _277, 0)) + 0u))].BindlessParameters_PostProcessWeatherBlend._berserkColor);
    _288 = (float)((uint)((uint)(((uint)(_285) >> 16) & 255)));
    _291 = (float)((uint)((uint)(((uint)(_285) >> 8) & 255)));
    _293 = (float)((uint)((uint)(_285 & 255)));
    _323 = max(0.0010000000474974513f, _exposure0.x);
    _329 = ((_275.y * _275.y) * saturate(sqrt((_241 * _241) + (_240 * _240)) * 6.666666507720947f)) * _275.y;
    _336 = (((select(((_288 * 0.003921568859368563f) < 0.040449999272823334f), (_288 * 0.0003035269910469651f), exp2(log2((_288 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) / _323) - _177) * _329) + _177;
    _337 = (((select(((_291 * 0.003921568859368563f) < 0.040449999272823334f), (_291 * 0.0003035269910469651f), exp2(log2((_291 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) / _323) - _178) * _329) + _178;
    _338 = (((select(((_293 * 0.003921568859368563f) < 0.040449999272823334f), (_293 * 0.0003035269910469651f), exp2(log2((_293 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) / _323) - _179) * _329) + _179;
    _339 = WaveReadLaneFirst(_materialIndex);
    _347 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)(select(((uint)_339 < (uint)170000), _339, 0)) + 0u))].BindlessParameters_PostProcessWeatherBlend._berserkEndColor);
    _350 = (float)((uint)((uint)(((uint)(_347) >> 16) & 255)));
    _353 = (float)((uint)((uint)(((uint)(_347) >> 8) & 255)));
    _355 = (float)((uint)((uint)(_347 & 255)));
    _385 = max(0.0010000000474974513f, _exposure0.x);
    _390 = select((_90 > 0.699999988079071f), 1.0f, 0.0f);
    _397 = (((select(((_350 * 0.003921568859368563f) < 0.040449999272823334f), (_350 * 0.0003035269910469651f), exp2(log2((_350 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) / _385) - _336) * _390) + _336;
    _398 = (((select(((_353 * 0.003921568859368563f) < 0.040449999272823334f), (_353 * 0.0003035269910469651f), exp2(log2((_353 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) / _385) - _337) * _390) + _337;
    _399 = (((select(((_355 * 0.003921568859368563f) < 0.040449999272823334f), (_355 * 0.0003035269910469651f), exp2(log2((_355 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) / _385) - _338) * _390) + _338;
    _402 = saturate((_90 + -0.800000011920929f) * 5.0f);  // [sem: expr_sat]
    _413 = (lerp(_397, _79, _402));  // [sem: blended]
    _414 = (lerp(_398, _80, _402));  // [sem: blended]
    _415 = (lerp(_399, _81, _402));  // [sem: blended]
  } else {
    _413 = _79;  // [sem: blended]
    _414 = _80;  // [sem: blended]
    _415 = _81;  // [sem: blended]
  }
  _416 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _429 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _416, 0)))).x) & 127)))) + 0.5f);
  } else {
    _429 = 1.0f;
  }
  _432 = (_localToneMappingParams.w > 0.0f);
  if (_432) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_413, _414, _415));
    _692 = _rndx_tonemapped_color.x;
    _693 = _rndx_tonemapped_color.y;
    _694 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _700 = 1.0f - abs(_etcParams.w);
      _704 = saturate(_etcParams.w);  // [sem: expr_sat]
      _705 = (_700 * _692) + _704;
      _706 = (_700 * _693) + _704;
      _707 = (_700 * _694) + _704;
      if (_colorGradingParams.w > 0.0f) {
        _712 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _729 = (((max(0.0f, (1.0f - _705)) - _705) * _712) + _705);
        _730 = (((max(0.0f, (1.0f - _706)) - _706) * _712) + _706);
        _731 = (((max(0.0f, (1.0f - _707)) - _707) * _712) + _707);
      } else {
        _729 = _705;
        _730 = _706;
        _731 = _707;
      }
      _737 = _userImageAdjust.y + 1.0f;
      _741 = _userImageAdjust.x + 0.5f;
      _742 = ((_729 + -0.5f) * _737) + _741;
      _743 = ((_730 + -0.5f) * _737) + _741;
      _744 = ((_731 + -0.5f) * _737) + _741;
      _774 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _785 = exp2(log2(saturate(mad(_colorBlind0.z, _744, mad(_colorBlind0.y, _743, (_colorBlind0.x * _742))))) * _774);
      _786 = exp2(log2(saturate(mad(_colorBlind1.z, _744, mad(_colorBlind1.y, _743, (_colorBlind1.x * _742))))) * _774);
      _787 = exp2(log2(saturate(mad(_colorBlind2.z, _744, mad(_colorBlind2.y, _743, (_colorBlind2.x * _742))))) * _774);
    } else {
      _785 = _692;
      _786 = _693;
      _787 = _694;
    }
  } else {
    _785 = _413;
    _786 = _414;
    _787 = _415;
  }
  if (_etcParams.y > 1.0f) {
    _796 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _797 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _801 = saturate(1.0f - (dot(float2(_796, _797), float2(_796, _797)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _806 = (_801 * _785);
    _807 = (_801 * _786);
    _808 = (_801 * _787);
  } else {
    _806 = _785;
    _807 = _786;
    _808 = _787;
  }
  if (_432 && (_etcParams.z > 0.0f)) {
    _838 = select((_806 <= 0.0031308000907301903f), (_806 * 12.920000076293945f), (((pow(_806, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _839 = select((_807 <= 0.0031308000907301903f), (_807 * 12.920000076293945f), (((pow(_807, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _840 = select((_808 <= 0.0031308000907301903f), (_808 * 12.920000076293945f), (((pow(_808, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _838 = _806;
    _839 = _807;
    _840 = _808;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _845 = (float)((uint)_416);
    if (!(_845 < _viewDir.w)) {
      if (!(_845 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _854 = _838;
        _855 = _839;
        _856 = _840;
      } else {
        _854 = 0.0f;
        _855 = 0.0f;
        _856 = 0.0f;
      }
    } else {
      _854 = 0.0f;
      _855 = 0.0f;
      _856 = 0.0f;
    }
  } else {
    _854 = _838;
    _855 = _839;
    _856 = _840;
  }
  _866 = exp2(log2(_854 * 9.999999747378752e-05f) * 0.1593017578125f);
  _867 = exp2(log2(_855 * 9.999999747378752e-05f) * 0.1593017578125f);
  _868 = exp2(log2(_856 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_866 * 18.6875f) + 1.0f)) * ((_866 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_867 * 18.6875f) + 1.0f)) * ((_867 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_868 * 18.6875f) + 1.0f)) * ((_868 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _429;
  return SV_Target;
}
