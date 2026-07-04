struct PostProcessDamageStruct {
  uint _bloodColor;
  float _bloodRatio;
  uint _dirtTexture;
  uint _dirtMaskTexture;
  float _dirtRatio1;
  float _dirtRatio2;
  float _dirtRatio3;
  uint _waterNormalTexture;
  uint _waterMaskTexture;
  float _waterRatio1;
  float _waterRatio2;
  float _waterRatio3;
  float _isDead;
  float _isBloodEffect;
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

struct BindlessParameters_PostProcessDamage {
  PostProcessDamageStruct BindlessParameters_PostProcessDamage;
};

typedef BindlessParameters_PostProcessDamage BindlessParameters_PostProcessDamage_t;
ConstantBuffer<BindlessParameters_PostProcessDamage_t> BindlessParameters_PostProcessDamage[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  int _22;
  int _30;
  float4 _37;
  int _40;
  int _48;
  float4 _55;
  int _59;
  float _67;
  int _68;
  float _76;
  int _77;
  float _85;
  float _86;
  float4 _99;
  float _109;
  float _110;
  float _111;
  float _136;
  float _137;
  float _138;
  int _139;
  float _147;
  float _148;
  float _155;
  float _156;
  float _157;
  float _160;
  float _163;
  int _167;
  int _175;
  float _178;
  float _181;
  float _183;
  float _208;
  int _211;
  float _219;
  bool _225;
  float _226;
  int _230;
  int _238;
  float4 _245;
  int _250;
  int _258;
  float4 _265;
  int _269;
  float _277;
  int _278;
  float _286;
  int _287;
  float _295;
  float _297;
  float _304;
  float _305;
  float _306;
  int _307;
  float _315;
  float _316;
  float _326;
  float _327;
  float _328;
  uint _329;
  float _343;
  float _548;
  float _549;
  float _550;
  float _643;
  float _644;
  float _645;
  float _699;
  float _700;
  float _701;
  float _714;
  float _715;
  float _716;
  float _746;
  float _747;
  float _748;
  float _762;
  float _763;
  float _764;
  bool _346;
  float _352;
  float _401;
  float _402;
  float _403;
  float _405;
  float _412;
  float _413;
  float _414;
  float _433;
  float _434;
  float _435;
  float _436;
  float _437;
  float _438;
  float _439;
  float _440;
  float _441;
  float _487;
  float _488;
  float _489;
  float _490;
  float _491;
  float _492;
  float _493;
  float _510;
  float _511;
  float _512;
  float _513;
  float _519;
  float _522;
  float _529;
  float _530;
  float _531;
  float _560;
  float _585;
  float _586;
  float _587;
  float _606;
  float _607;
  float _608;
  float _614;
  float _618;
  float _619;
  float _620;
  float _621;
  float _626;
  float _651;
  float _655;
  float _656;
  float _657;
  float _658;
  float _688;
  float _709;
  float _753;
  float _774;
  float _775;
  float _776;
  _22 = WaveReadLaneFirst(_materialIndex);
  _30 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)(select(((uint)_22 < (uint)170000), _22, 0)) + 0u))].BindlessParameters_PostProcessDamage._waterNormalTexture);
  _37 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_30 < (uint)65000), _30, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
  _40 = WaveReadLaneFirst(_materialIndex);
  _48 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)(select(((uint)_40 < (uint)170000), _40, 0)) + 0u))].BindlessParameters_PostProcessDamage._waterMaskTexture);
  _55 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_48 < (uint)65000), _48, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
  _59 = WaveReadLaneFirst(_materialIndex);
  _67 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)(select(((uint)_59 < (uint)170000), _59, 0)) + 0u))].BindlessParameters_PostProcessDamage._waterRatio1);
  _68 = WaveReadLaneFirst(_materialIndex);
  _76 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)(select(((uint)_68 < (uint)170000), _68, 0)) + 0u))].BindlessParameters_PostProcessDamage._waterRatio2);
  _77 = WaveReadLaneFirst(_materialIndex);
  _85 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)(select(((uint)_77 < (uint)170000), _77, 0)) + 0u))].BindlessParameters_PostProcessDamage._waterRatio3);
  _86 = dot(float3(_55.x, _55.y, _55.z), float3(_67, _76, _85));
  // [sem: _3__36__0__0__g_sceneColor_sample]
  _99 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(abs((_86 * ((_37.x * 0.20000000298023224f) + -0.09960784763097763f)) + TEXCOORD.x), abs(TEXCOORD.y - (_86 * ((_37.y * 0.20000000298023224f) + -0.09960784763097763f)))));
  _109 = (pow(_99.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _110 = (pow(_99.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _111 = (pow(_99.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _136 = exp2(log2(max(0.0f, (_109 + -0.8359375f)) / (18.8515625f - (_109 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _137 = exp2(log2(max(0.0f, (_110 + -0.8359375f)) / (18.8515625f - (_110 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _138 = exp2(log2(max(0.0f, (_111 + -0.8359375f)) / (18.8515625f - (_111 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _139 = WaveReadLaneFirst(_materialIndex);
  _147 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)(select(((uint)_139 < (uint)170000), _139, 0)) + 0u))].BindlessParameters_PostProcessDamage._isDead);
  _148 = dot(float3(_136, _137, _138), float3(0.26269999146461487f, 0.6779999732971191f, 0.059300001710653305f));
  _155 = ((_148 - _136) * _147) + _136;
  _156 = ((_148 - _137) * _147) + _137;
  _157 = ((_148 - _138) * _147) + _138;
  _160 = abs((TEXCOORD.x * 2.0f) + -1.0f);
  _163 = abs((TEXCOORD.y * 2.0f) + -1.0f);
  _167 = WaveReadLaneFirst(_materialIndex);
  _175 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)(select(((uint)_167 < (uint)170000), _167, 0)) + 0u))].BindlessParameters_PostProcessDamage._bloodColor);
  _178 = (float)((uint)((uint)(((uint)(_175) >> 16) & 255)));
  _181 = (float)((uint)((uint)(((uint)(_175) >> 8) & 255)));
  _183 = (float)((uint)((uint)(_175 & 255)));
  _208 = select(((_178 * 0.003921568859368563f) < 0.040449999272823334f), (_178 * 0.0003035269910469651f), exp2(log2((_178 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
  _211 = WaveReadLaneFirst(_materialIndex);
  _219 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)(select(((uint)_211 < (uint)170000), _211, 0)) + 0u))].BindlessParameters_PostProcessDamage._isBloodEffect);
  _225 = (_219 > 0.0010000000474974513f) && ((_isPhotosensitiveMode_isAllolwBlood & 1) == 0);
  _226 = _208 * 0.4000000059604645f;
  _230 = WaveReadLaneFirst(_materialIndex);
  _238 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)(select(((uint)_230 < (uint)170000), _230, 0)) + 0u))].BindlessParameters_PostProcessDamage._dirtTexture);
  _245 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_238 < (uint)65000), _238, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
  _250 = WaveReadLaneFirst(_materialIndex);
  _258 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)(select(((uint)_250 < (uint)170000), _250, 0)) + 0u))].BindlessParameters_PostProcessDamage._dirtMaskTexture);
  _265 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_258 < (uint)65000), _258, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
  _269 = WaveReadLaneFirst(_materialIndex);
  _277 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)(select(((uint)_269 < (uint)170000), _269, 0)) + 0u))].BindlessParameters_PostProcessDamage._dirtRatio1);
  _278 = WaveReadLaneFirst(_materialIndex);
  _286 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)(select(((uint)_278 < (uint)170000), _278, 0)) + 0u))].BindlessParameters_PostProcessDamage._dirtRatio2);
  _287 = WaveReadLaneFirst(_materialIndex);
  _295 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)(select(((uint)_287 < (uint)170000), _287, 0)) + 0u))].BindlessParameters_PostProcessDamage._dirtRatio3);
  _297 = dot(float3(_265.x, _265.y, _265.z), float3(_277, _286, _295)) * _245.w;
  _304 = (_297 * (_245.x - _155)) + _155;
  _305 = (_297 * (_245.y - _156)) + _156;
  _306 = (_297 * (_245.z - _157)) + _157;
  _307 = WaveReadLaneFirst(_materialIndex);
  _315 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)(select(((uint)_307 < (uint)170000), _307, 0)) + 0u))].BindlessParameters_PostProcessDamage._bloodRatio);
  _316 = _315 * max((_160 * _160), (_163 * _163));
  _326 = _304 - ((_304 * (1.0f - select(_225, _226, _208))) * _316);
  _327 = _305 - ((_305 * (1.0f - select(_225, _226, select(((_181 * 0.003921568859368563f) < 0.040449999272823334f), (_181 * 0.0003035269910469651f), exp2(log2((_181 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f))))) * _316);
  _328 = _306 - ((_306 * (1.0f - select(_225, _226, select(((_183 * 0.003921568859368563f) < 0.040449999272823334f), (_183 * 0.0003035269910469651f), exp2(log2((_183 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f))))) * _316);
  _329 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _343 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _329, 0)))).x) & 127)))) + 0.5f);
  } else {
    _343 = _postProcessParams.x;
  }
  _346 = (_localToneMappingParams.w > 0.0f);
  if (_346) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_326, _327, _328));
    _606 = _rndx_tonemapped_color.x;
    _607 = _rndx_tonemapped_color.y;
    _608 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _614 = 1.0f - abs(_etcParams.w);
      _618 = saturate(_etcParams.w);  // [sem: expr_sat]
      _619 = (_614 * _606) + _618;
      _620 = (_614 * _607) + _618;
      _621 = (_614 * _608) + _618;
      if (_colorGradingParams.w > 0.0f) {
        _626 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _643 = (((max(0.0f, (1.0f - _619)) - _619) * _626) + _619);
        _644 = (((max(0.0f, (1.0f - _620)) - _620) * _626) + _620);
        _645 = (((max(0.0f, (1.0f - _621)) - _621) * _626) + _621);
      } else {
        _643 = _619;
        _644 = _620;
        _645 = _621;
      }
      _651 = _userImageAdjust.y + 1.0f;
      _655 = _userImageAdjust.x + 0.5f;
      _656 = ((_643 + -0.5f) * _651) + _655;
      _657 = ((_644 + -0.5f) * _651) + _655;
      _658 = ((_645 + -0.5f) * _651) + _655;
      _688 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _699 = exp2(log2(saturate(mad(_colorBlind0.z, _658, mad(_colorBlind0.y, _657, (_colorBlind0.x * _656))))) * _688);
      _700 = exp2(log2(saturate(mad(_colorBlind1.z, _658, mad(_colorBlind1.y, _657, (_colorBlind1.x * _656))))) * _688);
      _701 = exp2(log2(saturate(mad(_colorBlind2.z, _658, mad(_colorBlind2.y, _657, (_colorBlind2.x * _656))))) * _688);
    } else {
      _699 = _606;
      _700 = _607;
      _701 = _608;
    }
  } else {
    _699 = _326;
    _700 = _327;
    _701 = _328;
  }
  if (_etcParams.y > 1.0f) {
    _709 = saturate(1.0f - (dot(float2(_160, _163), float2(_160, _163)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _714 = (_709 * _699);
    _715 = (_709 * _700);
    _716 = (_709 * _701);
  } else {
    _714 = _699;
    _715 = _700;
    _716 = _701;
  }
  if (_346 && (_etcParams.z > 0.0f)) {
    _746 = select((_714 <= 0.0031308000907301903f), (_714 * 12.920000076293945f), (((pow(_714, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _747 = select((_715 <= 0.0031308000907301903f), (_715 * 12.920000076293945f), (((pow(_715, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _748 = select((_716 <= 0.0031308000907301903f), (_716 * 12.920000076293945f), (((pow(_716, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _746 = _714;
    _747 = _715;
    _748 = _716;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _753 = (float)((uint)_329);
    if (!(_753 < _viewDir.w)) {
      if (!(_753 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _762 = _746;
        _763 = _747;
        _764 = _748;
      } else {
        _762 = 0.0f;
        _763 = 0.0f;
        _764 = 0.0f;
      }
    } else {
      _762 = 0.0f;
      _763 = 0.0f;
      _764 = 0.0f;
    }
  } else {
    _762 = _746;
    _763 = _747;
    _764 = _748;
  }
  _774 = exp2(log2(_762 * 9.999999747378752e-05f) * 0.1593017578125f);
  _775 = exp2(log2(_763 * 9.999999747378752e-05f) * 0.1593017578125f);
  _776 = exp2(log2(_764 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_774 * 18.6875f) + 1.0f)) * ((_774 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_775 * 18.6875f) + 1.0f)) * ((_775 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_776 * 18.6875f) + 1.0f)) * ((_776 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _343;
  return SV_Target;
}
