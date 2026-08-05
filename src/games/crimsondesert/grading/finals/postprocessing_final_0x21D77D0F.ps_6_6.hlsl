// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports "../../common.hlsl" for the common RenoDX color and shader-injection declarations used below.
#include "../../common.hlsl"
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b16, space35) {
  float4 _time : packoffset(c000.x);
  float4 _timeNoScale : packoffset(c001.x);
  uint4 _frameNumber : packoffset(c002.x);
  float4 _screenSizeAndInvSize : packoffset(c003.x);
  float4 _bufferSizeAndInvSize : packoffset(c004.x);
  float4 _hiZUVScaleAndInvScale : packoffset(c005.x);
  float4 _resolutionScale : packoffset(c006.x);
  float4 _temporalReprojectionParams : packoffset(c007.x);
  float4 _viewPos : packoffset(c008.x);
  float4 _viewDir : packoffset(c009.x);
  column_major float4x4 _viewProj : packoffset(c010.x);
  column_major float4x4 _viewProjNoJitter : packoffset(c014.x);
  column_major float4x4 _viewProjRelative : packoffset(c018.x);
  column_major float4x4 _viewProjRelativeNoJitter : packoffset(c022.x);
  column_major float4x4 _invViewProj : packoffset(c026.x);
  column_major float4x4 _invViewProjRelative : packoffset(c030.x);
  column_major float4x4 _invViewProjRelativeNoJitter : packoffset(c034.x);
  column_major float4x4 _viewProjRelativeOrtho : packoffset(c038.x);
  float4 _sunDirection : packoffset(c042.x);
  float4 _moonDirection : packoffset(c043.x);
  float4 _moonRight : packoffset(c044.x);
  float4 _moonUp : packoffset(c045.x);
  float4 _ssaoRandomDirection[16] : packoffset(c046.x);
  column_major float4x4 _view : packoffset(c062.x);
  column_major float4x4 _viewRelative : packoffset(c066.x);
  column_major float4x4 _viewRelativePrev : packoffset(c070.x);
  column_major float4x4 _proj : packoffset(c074.x);
  column_major float4x4 _projNoJitter : packoffset(c078.x);
  float4 _viewPosPrev : packoffset(c082.x);
  column_major float4x4 _viewProjNoJitterPrev : packoffset(c083.x);
  column_major float4x4 _viewProjRelativePrev : packoffset(c087.x);
  column_major float4x4 _viewProjRelativeNoJitterPrev : packoffset(c091.x);
  column_major float4x4 _invViewProjPrev : packoffset(c095.x);
  column_major float4x4 _invViewProjRelativePrev : packoffset(c099.x);
  column_major float4x4 _projToPrevProj : packoffset(c103.x);
  column_major float4x4 _projToPrevProjNoTranslation : packoffset(c107.x);
  column_major float4x4 _viewProjectionTexScale : packoffset(c111.x);
  float4 _temporalAAJitter : packoffset(c115.x);
  float4 _temporalAAJitterParams : packoffset(c116.x);
  float4 _frustumPlanes[6] : packoffset(c117.x);
  float4 _frustumPlanesPrev[6] : packoffset(c123.x);
  float4 _frustumCornerDirs[4] : packoffset(c129.x);
  float4 _screenPercentage : packoffset(c133.x);
  float4 _nearFarProj : packoffset(c134.x);
  float4 _renderingOriginPos : packoffset(c135.x);
  float4 _renderingOriginPosPrev : packoffset(c136.x);
  float4 _lodMaskRenderRate : packoffset(c137.x);
  float4 _terrainNormalParams : packoffset(c138.x);
  int4 _hiZMapInfo : packoffset(c139.x);
  int4 _hiZMapInfoCurrent : packoffset(c140.x);
  float4 _treeParams : packoffset(c141.x);
  uint4 _clusterSize : packoffset(c142.x);
  uint4 _globalLightParams : packoffset(c143.x);
  float4 _bevelParams : packoffset(c144.x);
  float4 _variableRateShadingParams : packoffset(c145.x);
  float4 _cavityParams : packoffset(c146.x);
  float4 _customRenderPassSizeInvSize : packoffset(c147.x);
  uint4 _impostorParams : packoffset(c148.x);
  float4 _clusterDecalSizeAndInvSize : packoffset(c149.x);
  uint4 _globalWindParams : packoffset(c150.x);
  float4 _windFluidVolumeParams : packoffset(c151.x);
  float4 _windFluidTextureParams : packoffset(c152.x);
  float4 _raytracingAccelerationStructureOrigin : packoffset(c153.x);
  float4 _debugBaseColor : packoffset(c154.x);
  float4 _debugNormal : packoffset(c155.x);
  float4 _debugMaterial : packoffset(c156.x);
  float4 _debugMultiplier : packoffset(c157.x);
  uint2 _debugBaseColor16 : packoffset(c158.x);
  uint2 _debugNormal16 : packoffset(c158.z);
  uint2 _debugMaterial16 : packoffset(c159.x);
  uint2 _debugMultiplier16 : packoffset(c159.z);
  float4 _debugCursorWorldPos : packoffset(c160.x);
  uint4 _debugRenderToggle01 : packoffset(c161.x);
  uint4 _debugTreeShapeVariation : packoffset(c162.x);
  float4 _positionBasedDynamicsParameter : packoffset(c163.x);
  float _effectiveMetallicForVelvet : packoffset(c164.x);
  float _debugCharacterSnowRate : packoffset(c164.y);
  uint _systemRandomSeed : packoffset(c164.z);
  uint _skinnedMeshDebugFlag : packoffset(c164.w);
  float4 _viewPosShifted : packoffset(c165.x);
  float4 _viewPosShiftedPrev : packoffset(c166.x);
  float4 _viewTileRelativePos : packoffset(c167.x);
  float4 _viewTileRelativePosPrev : packoffset(c168.x);
  int2 _viewTileIndex : packoffset(c169.x);
  int2 _viewTileIndexPrev : packoffset(c169.z);
  float4 _worldVolume : packoffset(c170.x);
  float3 _diffViewPosAccurate : packoffset(c171.x);
  uint _isPhotosensitiveMode_isAllolwBlood : packoffset(c171.w);
  float _earthRadius : packoffset(c172.x);
  float3 _sceneConstantDummy : packoffset(c172.y);
};

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

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointBlackBorder : register(s11, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _16;
  float _39;
  float _40;
  float _84;
  float _85;
  float _86;
  float _172;
  float _173;
  float _174;
  float _234;
  float _235;
  float _236;
  float _305;
  bool _325;
  float _50;
  float _51;
  float _53;
  float _54;
  float _56;
  float _69;
  float _71;
  float _79;
  uint _90;
  uint _93;
  float _96;
  float _105;
  float4 _108;
  float4 _113;
  float4 _118;
  float4 _123;
  float _130;
  float _146;
  float _149;
  float _178;
  float _179;
  float _190;
  float _201;
  float _212;
  float _217;
  float _239;
  float _241;
  float _244;
  float _247;
  float _250;
  float _256;
  float _258;
  float _259;
  float _260;
  float _272;
  float _282;
  float _292;
  float _306;
  float _308;
  float _315;
  _16 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_postProcessParams.w > 0.0f) {
    _39 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003f) + -0.0015f)) + TEXCOORD.y)), 0.0f))).z);
    _40 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003f) + -0.0015f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
  } else {
    _39 = _16.z;
    _40 = _16.x;
  }
  // RenoDX: >>> [Patch: FinalChromaticAberration] [Version: 1.16.00]
  // Description: Scales only the native red/blue chromatic-aberration offsets between the unchanged center sample and native shifted samples. The effective scalar is 1 when RenoDX is Off, preserving the native offsets.
  _40 = lerp(_16.x, _40, CUSTOM_CHROMATIC_ABERRATION);
  _39 = lerp(_16.z, _39, CUSTOM_CHROMATIC_ABERRATION);
  // RenoDX: <<< [Patch: FinalChromaticAberration]
  // RenoDX: >>> [Patch: CustomFilmGrainGate] [Version: 1.16.00]
  // Description: Keeps the native film-grain branch enabled only when its native strength is positive and RenoDX custom film grain is not selected. RenoDX Off clears the custom type flag, restoring the native condition.
  bool vanilla_film_grain = (_slopeParams.w > 0.0f) && CUSTOM_FILM_GRAIN_TYPE == 0;
  if (vanilla_film_grain) {
  // RenoDX: <<< [Patch: CustomFilmGrainGate]
    _50 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    _51 = _50 * 0.7692308f;
    _53 = frac(abs(_51));
    _54 = _50 * 0.08130081f;
    _56 = frac(abs(_54));
    _69 = ((select((_54 >= (-0.0f - _54)), _56, (-0.0f - _56)) * 1230.0f) + 10.0f) * ((select((_51 >= (-0.0f - _51)), _53, (-0.0f - _53)) * 13.0f) + 1.0f);
    _71 = frac(abs(_69));
    _79 = ((0.0075000525f - (select((_69 >= (-0.0f - _69)), _71, (-0.0f - _71)) * 0.15f)) * _slopeParams.w) + 1.0f;
    _84 = (_79 * _39);
    _85 = (_79 * _16.y);
    _86 = (_79 * _40);
  } else {
    _84 = _39;
    _85 = _16.y;
    _86 = _40;
  }
  // RenoDX: >>> [Patch: FinalCustomPostProcessingSDR] [Version: 1.16.00]
  // Description: When custom film grain or sharpening is selected, decodes the native sRGB-domain color, applies the shared post-process once, and restores the native sRGB storage encoding. RenoDX Off clears both type flags, so this block does not execute.
  if (CUSTOM_FILM_GRAIN_TYPE != 0 || CUSTOM_SHARPENING_TYPE != 0) {
    float3 color_bt709 = renodx::color::srgb::Decode(float3(_86, _85, _84));
    color_bt709 = CustomPostProcessing(color_bt709, TEXCOORD, __3__36__0__0__g_sceneColor, __0__4__0__0__g_staticBilinearClamp, 1);
    color_bt709 = renodx::color::srgb::Encode(color_bt709);
    _86 = color_bt709.x;
    _85 = color_bt709.y;
    _84 = color_bt709.z;
  }
  // RenoDX: <<< [Patch: FinalCustomPostProcessingSDR]
  _90 = (uint)(_screenSizeAndInvSize.x * TEXCOORD.x);
  _93 = (uint)(_screenSizeAndInvSize.y * TEXCOORD.y);
  _96 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  // RenoDX: >>> [Patch: FinalVanillaSharpeningGate] [Version: 1.16.00]
  // Description: The native depth-qualified sharpener would otherwise run before the RenoDX custom sharpening pass and apply two sharpeners to the same pixel. This block adds CUSTOM_SHARPENING_TYPE == 0 to the unchanged native depth condition so the native path runs only when custom sharpening is not selected. CUSTOM_SHARPENING_TYPE resolves to 0 when RenoDX is Off, restoring the native condition.
  if (CUSTOM_SHARPENING_TYPE == 0 && !((_96.x < 1e-07f) || (_96.x == 1.0f))) {
  // RenoDX: <<< [Patch: FinalVanillaSharpeningGate]
    _105 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _108 = __3__36__0__0__g_sceneColor.Load(int3(_90, ((int)((uint)((uint)(_93)) + (uint)(-1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _113 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_90)) + (uint)(-1))), _93, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _118 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_90)) + (uint)(1))), _93, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _123 = __3__36__0__0__g_sceneColor.Load(int3(_90, ((int)((uint)((uint)(_93)) + (uint)(1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _130 = max(max(_85, _108.y), max(max(_113.y, _118.y), _123.y));
    _146 = (-1.0f / (((1.0f - _105) * 8.0f) + (_105 * 5.0f))) * sqrt(saturate((1.0f / _130) * min(min(min(_85, _108.y), min(min(_113.y, _118.y), _123.y)), (1.0f - _130))));
    _149 = 1.0f / ((_146 * 4.0f) + 1.0f);
    _172 = saturate(((_146 * (((_113.z + _108.z) + _118.z) + _123.z)) + _84) * _149);  // [sem: expr_sat]
    _173 = saturate(((_146 * (((_113.y + _108.y) + _118.y) + _123.y)) + _85) * _149);  // [sem: expr_sat]
    _174 = saturate(((_146 * (((_113.x + _108.x) + _118.x) + _123.x)) + _86) * _149);  // [sem: expr_sat]
    // RenoDX: >>> [Patch: FinalSharpeningStrength] [Version: 1.16.00]
    // Description: Scales only the native per-channel sharpening deltas before they are added back to the unchanged center color. The effective strength is 1 when RenoDX is Off, restoring the native equations.
    _174 = lerp(_86, _174, CUSTOM_SHARPENING);
    _173 = lerp(_85, _173, CUSTOM_SHARPENING);
    _172 = lerp(_84, _172, CUSTOM_SHARPENING);
    // RenoDX: <<< [Patch: FinalSharpeningStrength]
  } else {
    _172 = _84;  // [sem: expr_sat]
    _173 = _85;  // [sem: expr_sat]
    _174 = _86;  // [sem: expr_sat]
  }
  _178 = 1.0f - abs(_etcParams.w);
  _179 = saturate(_etcParams.w);  // [sem: expr_sat]
  _190 = (saturate(select((_174 < 0.04045f), (_174 * 0.07739938f), exp2(log2((_174 + 0.055f) * 0.94786733f) * 2.4f))) * _178) + _179;
  _201 = (saturate(select((_173 < 0.04045f), (_173 * 0.07739938f), exp2(log2((_173 + 0.055f) * 0.94786733f) * 2.4f))) * _178) + _179;
  _212 = (saturate(select((_172 < 0.04045f), (_172 * 0.07739938f), exp2(log2((_172 + 0.055f) * 0.94786733f) * 2.4f))) * _178) + _179;
  if (_colorGradingParams.w > 0.0f) {
    _217 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _234 = (((max(0.0f, (1.0f - _190)) - _190) * _217) + _190);
    _235 = (((max(0.0f, (1.0f - _201)) - _201) * _217) + _201);
    _236 = (((max(0.0f, (1.0f - _212)) - _212) * _217) + _212);
  } else {
    _234 = _190;
    _235 = _201;
    _236 = _212;
  }
  _239 = _userImageAdjust.y + 1.0f;
  _241 = _userImageAdjust.x + 0.5f;
  _244 = (_239 * (_234 + -0.5f)) + _241;
  _247 = (_239 * (_235 + -0.5f)) + _241;
  _250 = (_239 * (_236 + -0.5f)) + _241;
  _256 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _258 = (TEXCOORD.x * 2.0f) + -1.0f;
  _259 = TEXCOORD.y * 2.0f;
  _260 = 1.0f - _259;
  _272 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _260, ((_projToPrevProj[3].x) * _258)));
  _282 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _260, ((_projToPrevProj[0].x) * _258))) + (_projToPrevProj[0].w)) / _272) - _258;
  _292 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _260, ((_projToPrevProj[1].x) * _258))) + (_projToPrevProj[1].w)) / _272) - _260;
  if (_localToneMappingParams.w > 0.0f) {
    _305 = saturate(1.0f - (sqrt((_292 * _292) + (_282 * _282)) * 2.0f));  // [sem: expr_sat]
  } else {
    _305 = 1.0f;  // [sem: expr_sat]
  }
  _306 = abs(_258);
  _308 = abs(_259 + -1.0f);
  // RenoDX: >>> [Patch: FinalVignetteStrength] [Version: 1.16.00]
  // Description: The native final pass derives its vignette attenuation from _postProcessParams.x and the squared screen-space radius. This block multiplies only that native coefficient by CUSTOM_VIGNETTE so the control scales the existing vignette without changing its center, falloff equation, saturation, or output routing. CUSTOM_VIGNETTE resolves to 1 when RenoDX is Off, restoring the native expression.
  _315 = saturate(1.0f - ((_postProcessParams.x * CUSTOM_VIGNETTE * _305) * dot(float2(_306, _308), float2(_306, _308))));  // [sem: expr_sat]
  // RenoDX: <<< [Patch: FinalVignetteStrength]
  if (!(SV_Position.y < _viewDir.w)) {
    _325 = (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w)));
  } else {
    _325 = false;
  }
  SV_Target.x = select(_325, (exp2(log2(saturate(mad(_colorBlind0.z, _250, mad(_colorBlind0.y, _247, (_colorBlind0.x * _244))))) * _256) * _315), 0.0f);
  SV_Target.y = select(_325, (exp2(log2(saturate(mad(_colorBlind1.z, _250, mad(_colorBlind1.y, _247, (_colorBlind1.x * _244))))) * _256) * _315), 0.0f);
  SV_Target.z = select(_325, (exp2(log2(saturate(mad(_colorBlind2.z, _250, mad(_colorBlind2.y, _247, (_colorBlind2.x * _244))))) * _256) * _315), 0.0f);
  SV_Target.w = _16.w;
  // RenoDX: >>> [Patch: FinalizePostProcessSDR] [Version: 1.16.00]
  // Description: Runs the shared SDR finalizer after the native output has been assembled so enabled RenoDX display adjustments are applied once. Its effective controls are neutral when RenoDX is Off.
  SV_Target.xyz = FinalizeSDR(SV_Target.xyz, _sunDirection.y, _moonDirection.y);
  // RenoDX: <<< [Patch: FinalizePostProcessSDR]
  return SV_Target;
}
