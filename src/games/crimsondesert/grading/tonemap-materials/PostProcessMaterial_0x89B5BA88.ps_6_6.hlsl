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
  float _363;
  float _568;
  float _569;
  float _570;
  float _663;
  float _664;
  float _665;
  float _719;
  float _720;
  float _721;
  float _740;
  float _741;
  float _742;
  float _772;
  float _773;
  float _774;
  float _788;
  float _789;
  float _790;
  float _80;
  float _82;
  float _90;
  float _98;
  float _101;
  float _110;
  float _119;
  float4 _124;
  float _134;
  float _135;
  float _136;
  float _161;
  float _162;
  float _163;
  int _164;
  float _172;
  float _173;
  int _183;
  int _191;
  float4 _198;
  int _203;
  int _211;
  float4 _218;
  int _223;
  int _231;
  float4 _238;
  float _252;
  int _259;
  float _267;
  float _270;
  float _271;
  float _272;
  float _273;
  int _274;
  float _282;
  int _283;
  float _291;
  int _292;
  float _300;
  float _302;
  float _309;
  float _310;
  float _311;
  int _312;
  float _320;
  float _321;
  int _334;
  float _344;
  float _345;
  float _346;
  float _347;
  float _348;
  float _349;
  uint _350;
  bool _366;
  float _372;
  float _421;
  float _422;
  float _423;
  float _425;
  float _432;
  float _433;
  float _434;
  float _453;
  float _454;
  float _455;
  float _456;
  float _457;
  float _458;
  float _459;
  float _460;
  float _461;
  float _507;
  float _508;
  float _509;
  float _510;
  float _511;
  float _512;
  float _513;
  float _530;
  float _531;
  float _532;
  float _533;
  float _539;
  float _542;
  float _549;
  float _550;
  float _551;
  float _580;
  float _605;
  float _606;
  float _607;
  float _626;
  float _627;
  float _628;
  float _634;
  float _638;
  float _639;
  float _640;
  float _641;
  float _646;
  float _671;
  float _675;
  float _676;
  float _677;
  float _678;
  float _708;
  float _730;
  float _731;
  float _735;
  float _779;
  float _800;
  float _801;
  float _802;
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
  _134 = (pow(_124.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _135 = (pow(_124.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _136 = (pow(_124.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _161 = exp2(log2(max(0.0f, (_134 + -0.8359375f)) / (18.8515625f - (_134 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _162 = exp2(log2(max(0.0f, (_135 + -0.8359375f)) / (18.8515625f - (_135 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _163 = exp2(log2(max(0.0f, (_136 + -0.8359375f)) / (18.8515625f - (_136 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
  _164 = WaveReadLaneFirst(_materialIndex);
  _172 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)(select(((uint)_164 < (uint)170000), _164, 0)) + 0u))].BindlessParameters_PostProcessDamageTest._isDead);
  _173 = dot(float3(_161, _162, _163), float3(0.26269999146461487f, 0.6779999732971191f, 0.059300001710653305f));
  _183 = WaveReadLaneFirst(_materialIndex);
  _191 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)(select(((uint)_183 < (uint)170000), _183, 0)) + 0u))].BindlessParameters_PostProcessDamageTest._bloodTexture);
  _198 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_191 < (uint)65000), _191, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(_116, _119));
  _203 = WaveReadLaneFirst(_materialIndex);
  _211 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)(select(((uint)_203 < (uint)170000), _203, 0)) + 0u))].BindlessParameters_PostProcessDamageTest._dirtTexture);
  _218 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_211 < (uint)65000), _211, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(_116, _119));
  _223 = WaveReadLaneFirst(_materialIndex);
  _231 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)(select(((uint)_223 < (uint)170000), _223, 0)) + 0u))].BindlessParameters_PostProcessDamageTest._dirtMaskTexture);
  _238 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_231 < (uint)65000), _231, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(_116, _119));
  _252 = (dot(float3(_viewDir.x, _viewDir.y, _viewDir.z), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)) * 25.0f) + 25.0f;
  _259 = WaveReadLaneFirst(_materialIndex);
  _267 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)(select(((uint)_259 < (uint)170000), _259, 0)) + 0u))].BindlessParameters_PostProcessDamageTest._vignettFalloff);
  _270 = exp2(log2((((_52 * 15.0f) * (1.0f - _52)) * _53) * (1.0f - _53)) * _267);
  _271 = _270 * (lerp(_161, _173, _172));
  _272 = _270 * (lerp(_162, _173, _172));
  _273 = _270 * (lerp(_163, _173, _172));
  _274 = WaveReadLaneFirst(_materialIndex);
  _282 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)(select(((uint)_274 < (uint)170000), _274, 0)) + 0u))].BindlessParameters_PostProcessDamageTest._dirtRatio1);
  _283 = WaveReadLaneFirst(_materialIndex);
  _291 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)(select(((uint)_283 < (uint)170000), _283, 0)) + 0u))].BindlessParameters_PostProcessDamageTest._dirtRatio2);
  _292 = WaveReadLaneFirst(_materialIndex);
  _300 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)(select(((uint)_292 < (uint)170000), _292, 0)) + 0u))].BindlessParameters_PostProcessDamageTest._dirtRatio3);
  _302 = dot(float3(_238.x, _238.y, _238.z), float3(_282, _291, _300)) * _218.w;
  _309 = (_302 * (_218.x - _271)) + _271;
  _310 = (_302 * (_218.y - _272)) + _272;
  _311 = (_302 * (_218.z - _273)) + _273;
  _312 = WaveReadLaneFirst(_materialIndex);
  _320 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)(select(((uint)_312 < (uint)170000), _312, 0)) + 0u))].BindlessParameters_PostProcessDamageTest._bloodRatio);
  _321 = _320 * _198.w;
  _334 = WaveReadLaneFirst(_materialIndex);
  _344 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)(select(((uint)_334 < (uint)170000), _334, 0)) + 0u))].BindlessParameters_PostProcessDamageTest._mulColor.x);
  _345 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)(select(((uint)_334 < (uint)170000), _334, 0)) + 0u))].BindlessParameters_PostProcessDamageTest._mulColor.y);
  _346 = WaveReadLaneFirst(BindlessParameters_PostProcessDamageTest[((int)((uint)(select(((uint)_334 < (uint)170000), _334, 0)) + 0u))].BindlessParameters_PostProcessDamageTest._mulColor.z);
  _347 = _344 * ((_321 * ((_252 * _198.x) - _309)) + _309);
  _348 = _345 * ((_321 * ((_252 * _198.y) - _310)) + _310);
  _349 = _346 * ((_321 * ((_252 * _198.z) - _311)) + _311);
  _350 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _363 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _350, 0)))).x) & 127)))) + 0.5f);
  } else {
    _363 = _postProcessParams.x;
  }
  _366 = (_localToneMappingParams.w > 0.0f);
  if (_366) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_347, _348, _349));
    _626 = _rndx_tonemapped_color.x;
    _627 = _rndx_tonemapped_color.y;
    _628 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _634 = 1.0f - abs(_etcParams.w);
      _638 = saturate(_etcParams.w);  // [sem: expr_sat]
      _639 = (_634 * _626) + _638;
      _640 = (_634 * _627) + _638;
      _641 = (_634 * _628) + _638;
      if (_colorGradingParams.w > 0.0f) {
        _646 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _663 = (((max(0.0f, (1.0f - _639)) - _639) * _646) + _639);
        _664 = (((max(0.0f, (1.0f - _640)) - _640) * _646) + _640);
        _665 = (((max(0.0f, (1.0f - _641)) - _641) * _646) + _641);
      } else {
        _663 = _639;
        _664 = _640;
        _665 = _641;
      }
      _671 = _userImageAdjust.y + 1.0f;
      _675 = _userImageAdjust.x + 0.5f;
      _676 = ((_663 + -0.5f) * _671) + _675;
      _677 = ((_664 + -0.5f) * _671) + _675;
      _678 = ((_665 + -0.5f) * _671) + _675;
      _708 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _719 = exp2(log2(saturate(mad(_colorBlind0.z, _678, mad(_colorBlind0.y, _677, (_colorBlind0.x * _676))))) * _708);
      _720 = exp2(log2(saturate(mad(_colorBlind1.z, _678, mad(_colorBlind1.y, _677, (_colorBlind1.x * _676))))) * _708);
      _721 = exp2(log2(saturate(mad(_colorBlind2.z, _678, mad(_colorBlind2.y, _677, (_colorBlind2.x * _676))))) * _708);
    } else {
      _719 = _626;
      _720 = _627;
      _721 = _628;
    }
  } else {
    _719 = _347;
    _720 = _348;
    _721 = _349;
  }
  if (_etcParams.y > 1.0f) {
    _730 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _731 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _735 = saturate(1.0f - (dot(float2(_730, _731), float2(_730, _731)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _740 = (_735 * _719);
    _741 = (_735 * _720);
    _742 = (_735 * _721);
  } else {
    _740 = _719;
    _741 = _720;
    _742 = _721;
  }
  if (_366 && (_etcParams.z > 0.0f)) {
    _772 = select((_740 <= 0.0031308000907301903f), (_740 * 12.920000076293945f), (((pow(_740, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _773 = select((_741 <= 0.0031308000907301903f), (_741 * 12.920000076293945f), (((pow(_741, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _774 = select((_742 <= 0.0031308000907301903f), (_742 * 12.920000076293945f), (((pow(_742, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _772 = _740;
    _773 = _741;
    _774 = _742;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _779 = (float)((uint)_350);
    if (!(_779 < _viewDir.w)) {
      if (!(_779 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _788 = _772;
        _789 = _773;
        _790 = _774;
      } else {
        _788 = 0.0f;
        _789 = 0.0f;
        _790 = 0.0f;
      }
    } else {
      _788 = 0.0f;
      _789 = 0.0f;
      _790 = 0.0f;
    }
  } else {
    _788 = _772;
    _789 = _773;
    _790 = _774;
  }
  _800 = exp2(log2(_788 * 9.999999747378752e-05f) * 0.1593017578125f);
  _801 = exp2(log2(_789 * 9.999999747378752e-05f) * 0.1593017578125f);
  _802 = exp2(log2(_790 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_800 * 18.6875f) + 1.0f)) * ((_800 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_801 * 18.6875f) + 1.0f)) * ((_801 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_802 * 18.6875f) + 1.0f)) * ((_802 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _363;
  return SV_Target;
}
