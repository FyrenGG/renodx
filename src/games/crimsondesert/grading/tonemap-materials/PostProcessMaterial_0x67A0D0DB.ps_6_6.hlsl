struct PostProcessDamageTestStruct {
  uint _bloodTexture;
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
  float3 _mulColor;
  float _vignettFalloff;
  float _maxPower;
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

struct BindlessParameters_PostProcessDamageTest {
  PostProcessDamageTestStruct BindlessParameters_PostProcessDamageTest;
};

typedef BindlessParameters_PostProcessDamageTest BindlessParameters_PostProcessDamageTest_t;
ConstantBuffer<BindlessParameters_PostProcessDamageTest_t> BindlessParameters_PostProcessDamageTest[] : register(b0, space100);

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
  float _51;
  float _52;
  float _53;
  float _54;
  float _55;
  float _56;
  float _57;
  float _58;
  float _59;
  float _60;
  int _61;
  float _69;
  bool _70;
  float _78;
  float _116;
  float _117;
  float _327;
  float _532;
  float _533;
  float _534;
  float _627;
  float _628;
  float _629;
  float _683;
  float _684;
  float _685;
  float _704;
  float _705;
  float _706;
  float _736;
  float _737;
  float _738;
  float _752;
  float _753;
  float _754;
  float _80;
  float _82;
  float _90;
  float _98;
  float _101;
  float _110;
  float _119;
  float4 _124;
  int _128;
  float _136;
  float _137;
  int _147;
  int _155;
  float4 _162;
  int _167;
  int _175;
  float4 _182;
  int _187;
  int _195;
  float4 _202;
  float _216;
  int _223;
  float _231;
  float _234;
  float _235;
  float _236;
  float _237;
  int _238;
  float _246;
  int _247;
  float _255;
  int _256;
  float _264;
  float _266;
  float _273;
  float _274;
  float _275;
  int _276;
  float _284;
  float _285;
  int _298;
  float _308;
  float _309;
  float _310;
  float _311;
  float _312;
  float _313;
  uint _314;
  bool _330;
  float _336;
  float _385;
  float _386;
  float _387;
  float _389;
  float _396;
  float _397;
  float _398;
  float _417;
  float _418;
  float _419;
  float _420;
  float _421;
  float _422;
  float _423;
  float _424;
  float _425;
  float _471;
  float _472;
  float _473;
  float _474;
  float _475;
  float _476;
  float _477;
  float _494;
  float _495;
  float _496;
  float _497;
  float _503;
  float _506;
  float _513;
  float _514;
  float _515;
  float _544;
  float _569;
  float _570;
  float _571;
  float _590;
  float _591;
  float _592;
  float _598;
  float _602;
  float _603;
  float _604;
  float _605;
  float _610;
  float _635;
  float _639;
  float _640;
  float _641;
  float _642;
  float _672;
  float _694;
  float _695;
  float _699;
  float _743;
  _51 = _destTargetSizAndInv.y * (1.0f - TEXCOORD.y);
  _52 = (_destTargetSizAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x;
  _53 = _51 / _srcTargetSizeAndInv.y;
  _54 = _51 / _srcTargetSizeAndInv.x;
  _55 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _56 = 0.5f / _55;
  _57 = _52 + -0.5f;
  _58 = _54 - _56;
  _59 = dot(float2(_57, _58), float2(_57, _58));
  _60 = sqrt(_59);
  _61 = WaveReadLaneFirst(_materialIndex);
  _69 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)(select(((uint)_61 < (uint)170000), _61, 0)) + 0u))].BindlessParameters_PostProcessDamageTest._maxPower);
  _70 = (_69 > 0.0f);
  if (_70) {
    _78 = sqrt(dot(float2(0.5f, _56), float2(0.5f, _56)));
  } else {
    if (!(_55 < 1.0f)) {
      _78 = _56;
    } else {
      _78 = 0.5f;
    }
  }
  if (_70) {
    _80 = rsqrt(_59);  // [sem: rsqrt_val]
    _82 = tan(_69 * _60);
    _90 = tan(_78 * _69);
    _116 = (((((_78 * _57) * _80) * _82) / _90) + 0.5f);
    _117 = (((((_78 * _58) * _80) * _82) / _90) + _56);
  } else {
    if (_69 < 0.0f) {
      _98 = rsqrt(_59);  // [sem: rsqrt_val]
      _101 = atan((_69 * _60) * -10.0f);
      _110 = atan((_69 * -10.0f) * _78);
      _116 = (((((_78 * _57) * _98) * _101) / _110) + 0.5f);
      _117 = (((((_78 * _58) * _98) * _101) / _110) + _56);
    } else {
      _116 = _52;
      _117 = _54;
    }
  }
  _119 = 1.0f - (_117 * _55);
  _124 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(abs(_116), abs(_119)));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _128 = WaveReadLaneFirst(_materialIndex);
  _136 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)(select(((uint)_128 < (uint)170000), _128, 0)) + 0u))].BindlessParameters_PostProcessDamageTest._isDead);
  _137 = dot(float3(_124.x, _124.y, _124.z), float3(0.26269999146461487f, 0.6779999732971191f, 0.059300001710653305f));
  _147 = WaveReadLaneFirst(_materialIndex);
  _155 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)(select(((uint)_147 < (uint)170000), _147, 0)) + 0u))].BindlessParameters_PostProcessDamageTest._bloodTexture);
  _162 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_155 < (uint)65000), _155, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(_116, _119));
  _167 = WaveReadLaneFirst(_materialIndex);
  _175 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)(select(((uint)_167 < (uint)170000), _167, 0)) + 0u))].BindlessParameters_PostProcessDamageTest._dirtTexture);
  _182 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_175 < (uint)65000), _175, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(_116, _119));
  _187 = WaveReadLaneFirst(_materialIndex);
  _195 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)(select(((uint)_187 < (uint)170000), _187, 0)) + 0u))].BindlessParameters_PostProcessDamageTest._dirtMaskTexture);
  _202 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_195 < (uint)65000), _195, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(_116, _119));
  _216 = (dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 25.0f) + 25.0f;
  _223 = WaveReadLaneFirst(_materialIndex);
  _231 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)(select(((uint)_223 < (uint)170000), _223, 0)) + 0u))].BindlessParameters_PostProcessDamageTest._vignettFalloff);
  _234 = exp2(log2((((_52 * 15.0f) * (1.0f - _52)) * _53) * (1.0f - _53)) * _231);
  _235 = _234 * (lerp(_124.x, _137, _136));
  _236 = _234 * (lerp(_124.y, _137, _136));
  _237 = _234 * (lerp(_124.z, _137, _136));
  _238 = WaveReadLaneFirst(_materialIndex);
  _246 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)(select(((uint)_238 < (uint)170000), _238, 0)) + 0u))].BindlessParameters_PostProcessDamageTest._dirtRatio1);
  _247 = WaveReadLaneFirst(_materialIndex);
  _255 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)(select(((uint)_247 < (uint)170000), _247, 0)) + 0u))].BindlessParameters_PostProcessDamageTest._dirtRatio2);
  _256 = WaveReadLaneFirst(_materialIndex);
  _264 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)(select(((uint)_256 < (uint)170000), _256, 0)) + 0u))].BindlessParameters_PostProcessDamageTest._dirtRatio3);
  _266 = dot(float3(_202.x, _202.y, _202.z), float3(_246, _255, _264)) * _182.w;
  _273 = (_266 * (_182.x - _235)) + _235;
  _274 = (_266 * (_182.y - _236)) + _236;
  _275 = (_266 * (_182.z - _237)) + _237;
  _276 = WaveReadLaneFirst(_materialIndex);
  _284 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)(select(((uint)_276 < (uint)170000), _276, 0)) + 0u))].BindlessParameters_PostProcessDamageTest._bloodRatio);
  _285 = _284 * _162.w;
  _298 = WaveReadLaneFirst(_materialIndex);
  _308 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)(select(((uint)_298 < (uint)170000), _298, 0)) + 0u))].BindlessParameters_PostProcessDamageTest._mulColor.x);
  _309 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)(select(((uint)_298 < (uint)170000), _298, 0)) + 0u))].BindlessParameters_PostProcessDamageTest._mulColor.y);
  _310 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)(select(((uint)_298 < (uint)170000), _298, 0)) + 0u))].BindlessParameters_PostProcessDamageTest._mulColor.z);
  _311 = _308 * ((_285 * ((_216 * _162.x) - _273)) + _273);
  _312 = _309 * ((_285 * ((_216 * _162.y) - _274)) + _274);
  _313 = _310 * ((_285 * ((_216 * _162.z) - _275)) + _275);
  _314 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _327 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _314, 0)))).x) & 127)))) + 0.5f);
  } else {
    _327 = _postProcessParams.x;
  }
  _330 = (_localToneMappingParams.w > 0.0f);
  if (_330) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_311, _312, _313));
    _590 = _rndx_tonemapped_color.x;
    _591 = _rndx_tonemapped_color.y;
    _592 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _598 = 1.0f - abs(_etcParams.w);
      _602 = saturate(_etcParams.w);  // [sem: expr_sat]
      _603 = (_598 * _590) + _602;
      _604 = (_598 * _591) + _602;
      _605 = (_598 * _592) + _602;
      if (_colorGradingParams.w > 0.0f) {
        _610 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _627 = (((max(0.0f, (1.0f - _603)) - _603) * _610) + _603);
        _628 = (((max(0.0f, (1.0f - _604)) - _604) * _610) + _604);
        _629 = (((max(0.0f, (1.0f - _605)) - _605) * _610) + _605);
      } else {
        _627 = _603;
        _628 = _604;
        _629 = _605;
      }
      _635 = _userImageAdjust.y + 1.0f;
      _639 = _userImageAdjust.x + 0.5f;
      _640 = ((_627 + -0.5f) * _635) + _639;
      _641 = ((_628 + -0.5f) * _635) + _639;
      _642 = ((_629 + -0.5f) * _635) + _639;
      _672 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _683 = exp2(log2(saturate(mad(_colorBlind0.z, _642, mad(_colorBlind0.y, _641, (_colorBlind0.x * _640))))) * _672);
      _684 = exp2(log2(saturate(mad(_colorBlind1.z, _642, mad(_colorBlind1.y, _641, (_colorBlind1.x * _640))))) * _672);
      _685 = exp2(log2(saturate(mad(_colorBlind2.z, _642, mad(_colorBlind2.y, _641, (_colorBlind2.x * _640))))) * _672);
    } else {
      _683 = _590;
      _684 = _591;
      _685 = _592;
    }
  } else {
    _683 = _311;
    _684 = _312;
    _685 = _313;
  }
  if (_etcParams.y > 1.0f) {
    _694 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _695 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _699 = saturate(1.0f - (dot(float2(_694, _695), float2(_694, _695)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _704 = (_699 * _683);
    _705 = (_699 * _684);
    _706 = (_699 * _685);
  } else {
    _704 = _683;
    _705 = _684;
    _706 = _685;
  }
  if (_330 && (_etcParams.z > 0.0f)) {
    _736 = select((_704 <= 0.0031308000907301903f), (_704 * 12.920000076293945f), (((pow(_704, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _737 = select((_705 <= 0.0031308000907301903f), (_705 * 12.920000076293945f), (((pow(_705, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _738 = select((_706 <= 0.0031308000907301903f), (_706 * 12.920000076293945f), (((pow(_706, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _736 = _704;
    _737 = _705;
    _738 = _706;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _743 = (float)((uint)_314);
    if (!(_743 < _viewDir.w)) {
      if (!(_743 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _752 = _736;
        _753 = _737;
        _754 = _738;
      } else {
        _752 = 0.0f;
        _753 = 0.0f;
        _754 = 0.0f;
      }
    } else {
      _752 = 0.0f;
      _753 = 0.0f;
      _754 = 0.0f;
    }
  } else {
    _752 = _736;
    _753 = _737;
    _754 = _738;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_752, _753, _754), _sunDirection.y, _moonDirection.y);
    _752 = _rndx_final_color.x;
    _753 = _rndx_final_color.y;
    _754 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _752;
  SV_Target.y = _753;
  SV_Target.z = _754;
  SV_Target.w = _327;
  return SV_Target;
}
