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
  int _103;
  float _111;
  float _112;
  float _119;
  float _120;
  float _121;
  float _124;
  float _127;
  int _131;
  int _139;
  float _142;
  float _145;
  float _147;
  float _172;
  int _175;
  float _183;
  bool _189;
  float _190;
  int _194;
  int _202;
  float4 _209;
  int _214;
  int _222;
  float4 _229;
  int _233;
  float _241;
  int _242;
  float _250;
  int _251;
  float _259;
  float _261;
  float _268;
  float _269;
  float _270;
  int _271;
  float _279;
  float _280;
  float _290;
  float _291;
  float _292;
  uint _293;
  float _307;
  float _512;
  float _513;
  float _514;
  float _607;
  float _608;
  float _609;
  float _663;
  float _664;
  float _665;
  float _678;
  float _679;
  float _680;
  float _710;
  float _711;
  float _712;
  float _726;
  float _727;
  float _728;
  bool _310;
  float _316;
  float _365;
  float _366;
  float _367;
  float _369;
  float _376;
  float _377;
  float _378;
  float _397;
  float _398;
  float _399;
  float _400;
  float _401;
  float _402;
  float _403;
  float _404;
  float _405;
  float _451;
  float _452;
  float _453;
  float _454;
  float _455;
  float _456;
  float _457;
  float _474;
  float _475;
  float _476;
  float _477;
  float _483;
  float _486;
  float _493;
  float _494;
  float _495;
  float _524;
  float _549;
  float _550;
  float _551;
  float _570;
  float _571;
  float _572;
  float _578;
  float _582;
  float _583;
  float _584;
  float _585;
  float _590;
  float _615;
  float _619;
  float _620;
  float _621;
  float _622;
  float _652;
  float _673;
  float _717;
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
  _103 = WaveReadLaneFirst(_materialIndex);
  _111 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)(select(((uint)_103 < (uint)170000), _103, 0)) + 0u))].BindlessParameters_PostProcessDamage._isDead);
  _112 = dot(float3(_99.x, _99.y, _99.z), float3(0.26269999146461487f, 0.6779999732971191f, 0.059300001710653305f));
  _119 = ((_112 - _99.x) * _111) + _99.x;
  _120 = ((_112 - _99.y) * _111) + _99.y;
  _121 = ((_112 - _99.z) * _111) + _99.z;
  _124 = abs((TEXCOORD.x * 2.0f) + -1.0f);
  _127 = abs((TEXCOORD.y * 2.0f) + -1.0f);
  _131 = WaveReadLaneFirst(_materialIndex);
  _139 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)(select(((uint)_131 < (uint)170000), _131, 0)) + 0u))].BindlessParameters_PostProcessDamage._bloodColor);
  _142 = (float)((uint)((uint)(((uint)(_139) >> 16) & 255)));
  _145 = (float)((uint)((uint)(((uint)(_139) >> 8) & 255)));
  _147 = (float)((uint)((uint)(_139 & 255)));
  _172 = select(((_142 * 0.003921568859368563f) < 0.040449999272823334f), (_142 * 0.0003035269910469651f), exp2(log2((_142 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
  _175 = WaveReadLaneFirst(_materialIndex);
  _183 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)(select(((uint)_175 < (uint)170000), _175, 0)) + 0u))].BindlessParameters_PostProcessDamage._isBloodEffect);
  _189 = (_183 > 0.0010000000474974513f) && ((_isPhotosensitiveMode_isAllolwBlood & 1) == 0);
  _190 = _172 * 0.4000000059604645f;
  _194 = WaveReadLaneFirst(_materialIndex);
  _202 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)(select(((uint)_194 < (uint)170000), _194, 0)) + 0u))].BindlessParameters_PostProcessDamage._dirtTexture);
  _209 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_202 < (uint)65000), _202, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
  _214 = WaveReadLaneFirst(_materialIndex);
  _222 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)(select(((uint)_214 < (uint)170000), _214, 0)) + 0u))].BindlessParameters_PostProcessDamage._dirtMaskTexture);
  _229 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_222 < (uint)65000), _222, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
  _233 = WaveReadLaneFirst(_materialIndex);
  _241 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)(select(((uint)_233 < (uint)170000), _233, 0)) + 0u))].BindlessParameters_PostProcessDamage._dirtRatio1);
  _242 = WaveReadLaneFirst(_materialIndex);
  _250 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)(select(((uint)_242 < (uint)170000), _242, 0)) + 0u))].BindlessParameters_PostProcessDamage._dirtRatio2);
  _251 = WaveReadLaneFirst(_materialIndex);
  _259 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)(select(((uint)_251 < (uint)170000), _251, 0)) + 0u))].BindlessParameters_PostProcessDamage._dirtRatio3);
  _261 = dot(float3(_229.x, _229.y, _229.z), float3(_241, _250, _259)) * _209.w;
  _268 = (_261 * (_209.x - _119)) + _119;
  _269 = (_261 * (_209.y - _120)) + _120;
  _270 = (_261 * (_209.z - _121)) + _121;
  _271 = WaveReadLaneFirst(_materialIndex);
  _279 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)(select(((uint)_271 < (uint)170000), _271, 0)) + 0u))].BindlessParameters_PostProcessDamage._bloodRatio);
  _280 = _279 * max((_124 * _124), (_127 * _127));
  _290 = _268 - ((_268 * (1.0f - select(_189, _190, _172))) * _280);
  _291 = _269 - ((_269 * (1.0f - select(_189, _190, select(((_145 * 0.003921568859368563f) < 0.040449999272823334f), (_145 * 0.0003035269910469651f), exp2(log2((_145 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f))))) * _280);
  _292 = _270 - ((_270 * (1.0f - select(_189, _190, select(((_147 * 0.003921568859368563f) < 0.040449999272823334f), (_147 * 0.0003035269910469651f), exp2(log2((_147 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f))))) * _280);
  _293 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _307 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _293, 0)))).x) & 127)))) + 0.5f);
  } else {
    _307 = _postProcessParams.x;
  }
  _310 = (_localToneMappingParams.w > 0.0f);
  if (_310) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_290, _291, _292));
    _570 = _rndx_tonemapped_color.x;
    _571 = _rndx_tonemapped_color.y;
    _572 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _578 = 1.0f - abs(_etcParams.w);
      _582 = saturate(_etcParams.w);  // [sem: expr_sat]
      _583 = (_578 * _570) + _582;
      _584 = (_578 * _571) + _582;
      _585 = (_578 * _572) + _582;
      if (_colorGradingParams.w > 0.0f) {
        _590 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _607 = (((max(0.0f, (1.0f - _583)) - _583) * _590) + _583);
        _608 = (((max(0.0f, (1.0f - _584)) - _584) * _590) + _584);
        _609 = (((max(0.0f, (1.0f - _585)) - _585) * _590) + _585);
      } else {
        _607 = _583;
        _608 = _584;
        _609 = _585;
      }
      _615 = _userImageAdjust.y + 1.0f;
      _619 = _userImageAdjust.x + 0.5f;
      _620 = ((_607 + -0.5f) * _615) + _619;
      _621 = ((_608 + -0.5f) * _615) + _619;
      _622 = ((_609 + -0.5f) * _615) + _619;
      _652 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _663 = exp2(log2(saturate(mad(_colorBlind0.z, _622, mad(_colorBlind0.y, _621, (_colorBlind0.x * _620))))) * _652);
      _664 = exp2(log2(saturate(mad(_colorBlind1.z, _622, mad(_colorBlind1.y, _621, (_colorBlind1.x * _620))))) * _652);
      _665 = exp2(log2(saturate(mad(_colorBlind2.z, _622, mad(_colorBlind2.y, _621, (_colorBlind2.x * _620))))) * _652);
    } else {
      _663 = _570;
      _664 = _571;
      _665 = _572;
    }
  } else {
    _663 = _290;
    _664 = _291;
    _665 = _292;
  }
  if (_etcParams.y > 1.0f) {
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _673 = saturate(1.0f - (dot(float2(_124, _127), float2(_124, _127)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _678 = (_673 * _663);
    _679 = (_673 * _664);
    _680 = (_673 * _665);
  } else {
    _678 = _663;
    _679 = _664;
    _680 = _665;
  }
  if (_310 && (_etcParams.z > 0.0f)) {
    _710 = select((_678 <= 0.0031308000907301903f), (_678 * 12.920000076293945f), (((pow(_678, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _711 = select((_679 <= 0.0031308000907301903f), (_679 * 12.920000076293945f), (((pow(_679, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _712 = select((_680 <= 0.0031308000907301903f), (_680 * 12.920000076293945f), (((pow(_680, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _710 = _678;
    _711 = _679;
    _712 = _680;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _717 = (float)((uint)_293);
    if (!(_717 < _viewDir.w)) {
      if (!(_717 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _726 = _710;
        _727 = _711;
        _728 = _712;
      } else {
        _726 = 0.0f;
        _727 = 0.0f;
        _728 = 0.0f;
      }
    } else {
      _726 = 0.0f;
      _727 = 0.0f;
      _728 = 0.0f;
    }
  } else {
    _726 = _710;
    _727 = _711;
    _728 = _712;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_726, _727, _728), _sunDirection.y, _moonDirection.y);
    _726 = _rndx_final_color.x;
    _727 = _rndx_final_color.y;
    _728 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _726;
  SV_Target.y = _727;
  SV_Target.z = _728;
  SV_Target.w = _307;
  return SV_Target;
}
