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
  float _58;
  float _59;
  float _60;
  float _61;
  float _65;
  float _66;
  float _73;
  float _76;
  float _79;
  float _87;
  float _173;
  float _372;
  float _373;
  float _374;
  float _467;
  float _468;
  float _469;
  float _523;
  float _524;
  float _525;
  float _544;
  float _545;
  float _546;
  float _576;
  float _577;
  float _578;
  float _592;
  float _593;
  float _594;
  float _99;
  int _100;
  int _108;
  float _111;
  float _114;
  float _115;
  float _116;
  float _159;
  uint _160;
  bool _176;
  float _182;
  float _225;
  float _226;
  float _227;
  float _229;
  float _236;
  float _237;
  float _238;
  float _257;
  float _258;
  float _259;
  float _260;
  float _261;
  float _262;
  float _263;
  float _264;
  float _265;
  float _311;
  float _312;
  float _313;
  float _314;
  float _315;
  float _316;
  float _317;
  float _334;
  float _335;
  float _336;
  float _337;
  float _343;
  float _346;
  float _353;
  float _354;
  float _355;
  float _384;
  float _409;
  float _410;
  float _411;
  float _430;
  float _431;
  float _432;
  float _438;
  float _442;
  float _443;
  float _444;
  float _445;
  float _450;
  float _475;
  float _479;
  float _480;
  float _481;
  float _482;
  float _512;
  float _534;
  float _535;
  float _539;
  float _583;
  _41 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _58 = TEXCOORD.x + -0.5f;
  _59 = TEXCOORD.y + -0.5f;
  _60 = abs(_58);
  _61 = abs(_59);
  _65 = min(_60, _61) / max(max(_60, _61), 9.99999993922529e-09f);
  _66 = _65 * _65;
  _73 = ((_66 * _65) * (((0.15931421518325806f - (_66 * 0.046496473252773285f)) * _66) + -0.32762277126312256f)) + _65;
  _76 = select((_61 > _60), (1.5707963705062866f - _73), _73);
  _79 = select((_58 < 0.0f), (3.1415927410125732f - _76), _76);
  _87 = select((_59 < 0.0f), (-0.0f - _79), _79) * 0.9549295902252197f;
  _99 = select(((uint)(((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f)), (int)(uint((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f)), 0)))).x) & 127) + -53) < (uint)15), 0.0f, (saturate(1.0f - saturate(exp2(log2((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x) * 0.5f) * 6.5f)) * (1.0f / max(9.999999747378752e-05f, _exposure0.x))));
  _100 = WaveReadLaneFirst(_materialIndex);
  _108 = WaveReadLaneFirst(BindlessParameters_PostProcessBerserk_CD[((int)((uint)(select(((uint)_100 < (uint)170000), _100, 0)) + 0u))].BindlessParameters_PostProcessBerserk_CD._noiseTex2);
  _111 = (sqrt((_59 * _59) + (_58 * _58)) * 2.0f) - (_time.x * 0.699999988079071f);
  _114 = _time.x * 0.030000001192092896f;
  _115 = _114 + _87;
  _116 = _114 + _111;
  _159 = dot(float3(_41.x, _41.y, _41.z), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
  _160 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
  // [sem: expr_sat]
    _173 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _160, 0)))).x) & 127)))) + 0.5f);
  } else {
  // [sem: expr_sat]
    _173 = saturate((((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_108 < (uint)65000), _108, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(frac((_87 + 0.4180000126361847f) - _114), frac((_111 + 0.35499998927116394f) - _114))))).w) + (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_108 < (uint)65000), _108, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(frac(_115), frac(_116))))).w)) + (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_108 < (uint)65000), _108, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(frac((_87 + 0.8550000190734863f) - _114), frac(_116 + 0.14800000190734863f))))).w)) + (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_108 < (uint)65000), _108, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(frac(_115 + 0.6510000228881836f), frac((_111 + 0.7519999742507935f) - _114))))).w));
  }
  _176 = (_localToneMappingParams.w > 0.0f);
  if (_176) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_99, _159, 0.0f));
    _430 = _rndx_tonemapped_color.x;
    _431 = _rndx_tonemapped_color.y;
    _432 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _438 = 1.0f - abs(_etcParams.w);
      _442 = saturate(_etcParams.w);  // [sem: expr_sat]
      _443 = (_438 * _430) + _442;
      _444 = (_438 * _431) + _442;
      _445 = (_438 * _432) + _442;
      if (_colorGradingParams.w > 0.0f) {
        _450 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _467 = (((max(0.0f, (1.0f - _443)) - _443) * _450) + _443);
        _468 = (((max(0.0f, (1.0f - _444)) - _444) * _450) + _444);
        _469 = (((max(0.0f, (1.0f - _445)) - _445) * _450) + _445);
      } else {
        _467 = _443;
        _468 = _444;
        _469 = _445;
      }
      _475 = _userImageAdjust.y + 1.0f;
      _479 = _userImageAdjust.x + 0.5f;
      _480 = ((_467 + -0.5f) * _475) + _479;
      _481 = ((_468 + -0.5f) * _475) + _479;
      _482 = ((_469 + -0.5f) * _475) + _479;
      _512 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _523 = exp2(log2(saturate(mad(_colorBlind0.z, _482, mad(_colorBlind0.y, _481, (_colorBlind0.x * _480))))) * _512);
      _524 = exp2(log2(saturate(mad(_colorBlind1.z, _482, mad(_colorBlind1.y, _481, (_colorBlind1.x * _480))))) * _512);
      _525 = exp2(log2(saturate(mad(_colorBlind2.z, _482, mad(_colorBlind2.y, _481, (_colorBlind2.x * _480))))) * _512);
    } else {
      _523 = _430;
      _524 = _431;
      _525 = _432;
    }
  } else {
    _523 = _99;
    _524 = _159;
    _525 = 0.0f;
  }
  if (_etcParams.y > 1.0f) {
    _534 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _535 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _539 = saturate(1.0f - (dot(float2(_534, _535), float2(_534, _535)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _544 = (_539 * _523);
    _545 = (_539 * _524);
    _546 = (_539 * _525);
  } else {
    _544 = _523;
    _545 = _524;
    _546 = _525;
  }
  if (_176 && (_etcParams.z > 0.0f)) {
    _576 = select((_544 <= 0.0031308000907301903f), (_544 * 12.920000076293945f), (((pow(_544, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _577 = select((_545 <= 0.0031308000907301903f), (_545 * 12.920000076293945f), (((pow(_545, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _578 = select((_546 <= 0.0031308000907301903f), (_546 * 12.920000076293945f), (((pow(_546, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _576 = _544;
    _577 = _545;
    _578 = _546;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _583 = (float)((uint)_160);
    if (!(_583 < _viewDir.w)) {
      if (!(_583 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _592 = _576;
        _593 = _577;
        _594 = _578;
      } else {
        _592 = 0.0f;
        _593 = 0.0f;
        _594 = 0.0f;
      }
    } else {
      _592 = 0.0f;
      _593 = 0.0f;
      _594 = 0.0f;
    }
  } else {
    _592 = _576;
    _593 = _577;
    _594 = _578;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_592, _593, _594), _sunDirection.y, _moonDirection.y);
    _592 = _rndx_final_color.x;
    _593 = _rndx_final_color.y;
    _594 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _592;
  SV_Target.y = _593;
  SV_Target.z = _594;
  SV_Target.w = _173;
  return SV_Target;
}
