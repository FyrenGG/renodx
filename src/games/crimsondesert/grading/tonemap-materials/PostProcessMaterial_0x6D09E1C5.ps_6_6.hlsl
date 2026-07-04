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


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t29, space36);

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

struct BindlessParameters_PostProcessBerserk_CD {
  PostProcessBerserk_CDStruct BindlessParameters_PostProcessBerserk_CD;
};

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
  float4 _41;
  float _51;
  float _52;
  float _53;
  float _94;
  float _95;
  float _96;
  float _97;
  float _101;
  float _102;
  float _109;
  float _112;
  float _115;
  float _123;
  float _209;
  float _408;
  float _409;
  float _410;
  float _503;
  float _504;
  float _505;
  float _559;
  float _560;
  float _561;
  float _580;
  float _581;
  float _582;
  float _612;
  float _613;
  float _614;
  float _628;
  float _629;
  float _630;
  float _135;
  int _136;
  int _144;
  float _147;
  float _150;
  float _151;
  float _152;
  float _195;
  uint _196;
  bool _212;
  float _218;
  float _261;
  float _262;
  float _263;
  float _265;
  float _272;
  float _273;
  float _274;
  float _293;
  float _294;
  float _295;
  float _296;
  float _297;
  float _298;
  float _299;
  float _300;
  float _301;
  float _347;
  float _348;
  float _349;
  float _350;
  float _351;
  float _352;
  float _353;
  float _370;
  float _371;
  float _372;
  float _373;
  float _379;
  float _382;
  float _389;
  float _390;
  float _391;
  float _420;
  float _445;
  float _446;
  float _447;
  float _466;
  float _467;
  float _468;
  float _474;
  float _478;
  float _479;
  float _480;
  float _481;
  float _486;
  float _511;
  float _515;
  float _516;
  float _517;
  float _518;
  float _548;
  float _570;
  float _571;
  float _575;
  float _619;
  float _640;
  float _641;
  float _642;
  _41 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _51 = (pow(_41.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _52 = (pow(_41.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _53 = (pow(_41.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _94 = TEXCOORD.x + -0.5f;
  _95 = TEXCOORD.y + -0.5f;
  _96 = abs(_94);
  _97 = abs(_95);
  _101 = min(_96, _97) / max(max(_96, _97), 9.99999993922529e-09f);
  _102 = _101 * _101;
  _109 = ((_102 * _101) * (((0.15931421518325806f - (_102 * 0.046496473252773285f)) * _102) + -0.32762277126312256f)) + _101;
  _112 = select((_97 > _96), (1.5707963705062866f - _109), _109);
  _115 = select((_94 < 0.0f), (3.1415927410125732f - _112), _112);
  _123 = select((_95 < 0.0f), (-0.0f - _115), _115) * 0.9549295902252197f;
  _135 = select(((uint)(((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f)), (int)(uint((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f)), 0)))).x) & 127) + -53) < (uint)15), 0.0f, (saturate(1.0f - saturate(exp2(log2((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x) * 0.5f) * 6.5f)) * (1.0f / max(9.999999747378752e-05f, _exposure0.x))));
  _136 = WaveReadLaneFirst(_materialIndex);
  _144 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)(select(((uint)_136 < (uint)170000), _136, 0)) + 0u))].BindlessParameters_PostProcessBerserk_CD._noiseTex2);
  _147 = (sqrt((_95 * _95) + (_94 * _94)) * 2.0f) - (_time.x * 0.699999988079071f);
  _150 = _time.x * 0.030000001192092896f;
  _151 = _150 + _123;
  _152 = _150 + _147;
  _195 = dot(float3((exp2(log2(max(0.0f, (_51 + -0.8359375f)) / (18.8515625f - (_51 * 18.6875f))) * 6.277394771575928f) * 10000.0f), (exp2(log2(max(0.0f, (_52 + -0.8359375f)) / (18.8515625f - (_52 * 18.6875f))) * 6.277394771575928f) * 10000.0f), (exp2(log2(max(0.0f, (_53 + -0.8359375f)) / (18.8515625f - (_53 * 18.6875f))) * 6.277394771575928f) * 10000.0f)), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  _196 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
  // [sem: expr_sat]
    _209 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _196, 0)))).x) & 127)))) + 0.5f);
  } else {
  // [sem: expr_sat]
    _209 = saturate((((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_144 < (uint)65000), _144, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(frac((_123 + 0.4180000126361847f) - _150), frac((_147 + 0.35499998927116394f) - _150))))).w) + (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_144 < (uint)65000), _144, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(frac(_151), frac(_152))))).w)) + (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_144 < (uint)65000), _144, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(frac((_123 + 0.8550000190734863f) - _150), frac(_152 + 0.14800000190734863f))))).w)) + (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_144 < (uint)65000), _144, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(frac(_151 + 0.6510000228881836f), frac((_147 + 0.7519999742507935f) - _150))))).w));
  }
  _212 = (_localToneMappingParams.w > 0.0f);
  if (_212) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_135, _195, 0.0f));
    _466 = _rndx_tonemapped_color.x;
    _467 = _rndx_tonemapped_color.y;
    _468 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _474 = 1.0f - abs(_etcParams.w);
      _478 = saturate(_etcParams.w);  // [sem: expr_sat]
      _479 = (_474 * _466) + _478;
      _480 = (_474 * _467) + _478;
      _481 = (_474 * _468) + _478;
      if (_colorGradingParams.w > 0.0f) {
        _486 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _503 = (((max(0.0f, (1.0f - _479)) - _479) * _486) + _479);
        _504 = (((max(0.0f, (1.0f - _480)) - _480) * _486) + _480);
        _505 = (((max(0.0f, (1.0f - _481)) - _481) * _486) + _481);
      } else {
        _503 = _479;
        _504 = _480;
        _505 = _481;
      }
      _511 = _userImageAdjust.y + 1.0f;
      _515 = _userImageAdjust.x + 0.5f;
      _516 = ((_503 + -0.5f) * _511) + _515;
      _517 = ((_504 + -0.5f) * _511) + _515;
      _518 = ((_505 + -0.5f) * _511) + _515;
      _548 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _559 = exp2(log2(saturate(mad(_colorBlind0.z, _518, mad(_colorBlind0.y, _517, (_colorBlind0.x * _516))))) * _548);
      _560 = exp2(log2(saturate(mad(_colorBlind1.z, _518, mad(_colorBlind1.y, _517, (_colorBlind1.x * _516))))) * _548);
      _561 = exp2(log2(saturate(mad(_colorBlind2.z, _518, mad(_colorBlind2.y, _517, (_colorBlind2.x * _516))))) * _548);
    } else {
      _559 = _466;
      _560 = _467;
      _561 = _468;
    }
  } else {
    _559 = _135;
    _560 = _195;
    _561 = 0.0f;
  }
  if (_etcParams.y > 1.0f) {
    _570 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _571 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _575 = saturate(1.0f - (dot(float2(_570, _571), float2(_570, _571)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _580 = (_575 * _559);
    _581 = (_575 * _560);
    _582 = (_575 * _561);
  } else {
    _580 = _559;
    _581 = _560;
    _582 = _561;
  }
  if (_212 && (_etcParams.z > 0.0f)) {
    _612 = select((_580 <= 0.0031308000907301903f), (_580 * 12.920000076293945f), (((pow(_580, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _613 = select((_581 <= 0.0031308000907301903f), (_581 * 12.920000076293945f), (((pow(_581, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _614 = select((_582 <= 0.0031308000907301903f), (_582 * 12.920000076293945f), (((pow(_582, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _612 = _580;
    _613 = _581;
    _614 = _582;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _619 = (float)((uint)_196);
    if (!(_619 < _viewDir.w)) {
      if (!(_619 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _628 = _612;
        _629 = _613;
        _630 = _614;
      } else {
        _628 = 0.0f;
        _629 = 0.0f;
        _630 = 0.0f;
      }
    } else {
      _628 = 0.0f;
      _629 = 0.0f;
      _630 = 0.0f;
    }
  } else {
    _628 = _612;
    _629 = _613;
    _630 = _614;
  }
  _640 = exp2(log2(_628 * 9.999999747378752e-05f) * 0.1593017578125f);
  _641 = exp2(log2(_629 * 9.999999747378752e-05f) * 0.1593017578125f);
  _642 = exp2(log2(_630 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_640 * 18.6875f) + 1.0f)) * ((_640 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_641 * 18.6875f) + 1.0f)) * ((_641 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_642 * 18.6875f) + 1.0f)) * ((_642 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _209;
  return SV_Target;
}
