Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

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
  column_major float4x4 _viewProj;
  column_major float4x4 _viewProjNoJitter;
  column_major float4x4 _viewProjRelative;
  column_major float4x4 _viewProjRelativeNoJitter;
  column_major float4x4 _invViewProj;
  column_major float4x4 _invViewProjRelative;
  column_major float4x4 _invViewProjRelativeNoJitter;
  column_major float4x4 _viewProjRelativeOrtho;
  float4 _sunDirection;
  float4 _moonDirection;
  float4 _moonRight;
  float4 _moonUp;
  float4 _ssaoRandomDirection[16];
  column_major float4x4 _view;
  column_major float4x4 _viewRelative;
  column_major float4x4 _viewRelativePrev;
  column_major float4x4 _proj;
  column_major float4x4 _projNoJitter;
  float4 _viewPosPrev;
  column_major float4x4 _viewProjNoJitterPrev;
  column_major float4x4 _viewProjRelativePrev;
  column_major float4x4 _viewProjRelativeNoJitterPrev;
  column_major float4x4 _invViewProjPrev;
  column_major float4x4 _invViewProjRelativePrev;
  column_major float4x4 _projToPrevProj;
  column_major float4x4 _projToPrevProjNoTranslation;
  column_major float4x4 _viewProjectionTexScale;
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
  half4 _debugBaseColor16;
  half4 _debugNormal16;
  half4 _debugMaterial16;
  half4 _debugMultiplier16;
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
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Tells tonemap.hlsli to reuse this shader's native SceneConstantBuffer instead of declaring a duplicate binding; Maps tonemap.hlsli's scene-time input to this shader's native `_time.w` carrier; Imports "../tonemap.hlsli" for the custom tonemap helpers and ABI-compatible exposure/global constant-buffer declarations used below; Begins suppression of native declarations whose ABI-compatible live definitions are supplied by tonemap.hlsli.
#define RENODX_TONEMAP_EXTERNAL_SCENE_CONSTANT_BUFFER 1
#define RENODX_TONEMAP_SCENE_TIME_W _time.w
#include "../tonemap.hlsli"
#if 0 // Provided by tonemap.hlsli
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Ends the native-declaration suppression supplied by tonemap.hlsli so following declarations compile normally; Begins suppression of native declarations whose ABI-compatible live definitions are supplied by tonemap.hlsli.
#endif
#if 0 // Provided by tonemap.hlsli
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

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
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Ends the native-declaration suppression supplied by tonemap.hlsli so following declarations compile normally; Begins suppression of native declarations whose ABI-compatible live definitions are supplied by tonemap.hlsli.
#endif
#if 0 // Provided by tonemap.hlsli
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Ends the native-declaration suppression supplied by tonemap.hlsli so following declarations compile normally.
#endif
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

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
  float4 _17;
  float _40;
  float _41;
  float _85;
  float _86;
  float _87;
  float _288;
  float _289;
  float _290;
  float _528;
  float _529;
  float _530;
  float _775;
  float _776;
  float _777;
  float _878;
  float _1056;
  float _1057;
  float _1058;
  float _1155;
  float _1156;
  float _1157;
  float _1224;
  float _1280;
  float _1281;
  float _1282;
  float _51;
  float _52;
  float _54;
  float _55;
  float _57;
  float _70;
  float _72;
  float _80;
  float _93;
  float _95;
  float _97;
  float _99;
  float _115;
  float _129;
  float _143;
  float _144;
  float _148;
  float _151;
  float _154;
  float _161;
  float _168;
  float _175;
  float _176;
  float _177;
  float _178;
  float _179;
  float _180;
  float _181;
  float _197;
  float _213;
  float _229;
  float _230;
  float _231;
  float _232;
  float _233;
  bool _236;
  float _250;
  float _251;
  float _252;
  float _253;
  float _256;
  float _259;
  float _263;
  float _267;
  float _271;
  float _291;
  float _303;
  float _315;
  float _327;
  float _334;
  float _341;
  float _348;
  float _351;
  float _352;
  float _353;
  float _365;
  float _377;
  float _389;
  float _390;
  float _393;
  float _396;
  float _399;
  float _406;
  float _413;
  float _420;
  float _421;
  float _422;
  float _423;
  float _424;
  float _425;
  float _426;
  float _442;
  float _458;
  float _474;
  float _475;
  float _476;
  float _477;
  float _478;
  float _490;
  float _491;
  float _492;
  float _493;
  float _496;
  float _499;
  float _503;
  float _507;
  float _511;
  float _531;
  float _543;
  float _555;
  float _567;
  float _592;
  float _596;
  float _598;
  float _599;
  float _600;
  float _612;
  float _624;
  float _636;
  float _637;
  float _640;
  float _643;
  float _646;
  float _653;
  float _660;
  float _667;
  float _668;
  float _669;
  float _670;
  float _671;
  float _672;
  float _673;
  float _689;
  float _705;
  float _721;
  float _722;
  float _723;
  float _724;
  float _725;
  float _737;
  float _738;
  float _739;
  float _740;
  float _743;
  float _746;
  float _750;
  float _754;
  float _758;
  float _778;
  float _790;
  float _802;
  float _814;
  float _839;
  float _840;
  float _841;
  float _842;
  float _844;
  float _847;
  float _850;
  float _853;
  float _855;
  float _860;
  float _869;
  float _879;
  float _880;
  float _881;
  float _893;
  float _905;
  float _917;
  float _918;
  float _921;
  float _924;
  float _927;
  float _934;
  float _941;
  float _948;
  float _949;
  float _950;
  float _951;
  float _952;
  float _953;
  float _954;
  float _970;
  float _986;
  float _1002;
  float _1003;
  float _1004;
  float _1005;
  float _1006;
  float _1018;
  float _1019;
  float _1020;
  float _1021;
  float _1024;
  float _1027;
  float _1031;
  float _1035;
  float _1039;
  float _1059;
  float _1071;
  float _1083;
  float _1095;
  float _1099;
  float _1100;
  float _1111;
  float _1122;
  float _1133;
  float _1138;
  float _1159;
  float _1161;
  float _1164;
  float _1167;
  float _1170;
  float _1176;
  float _1178;
  float _1179;
  float _1180;
  float _1192;
  float _1202;
  float _1212;
  float _1225;
  float _1227;
  float _1233;
  _17 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_postProcessParams.w > 0.0f) {
    _40 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003f) + -0.0015f)) + TEXCOORD.y)), 0.0f))).z);
    _41 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003f) + -0.0015f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
  } else {
    _40 = _17.z;
    _41 = _17.x;
  }
  // RenoDX: >>> [Patch: FinalChromaticAberration] [Version: 1.16.00]
  // Description: Scales only the native red/blue chromatic-aberration offsets between the unchanged center sample and native shifted samples. The effective scalar is 1 when RenoDX is Off, preserving the native offsets.
  _41 = lerp(_17.x, _41, CUSTOM_CHROMATIC_ABERRATION);
  _40 = lerp(_17.z, _40, CUSTOM_CHROMATIC_ABERRATION);
  // RenoDX: <<< [Patch: FinalChromaticAberration]
  // RenoDX: >>> [Patch: CustomFilmGrainGate] [Version: 1.16.00]
  // Description: Keeps the native film-grain branch enabled only when its native strength is positive and RenoDX custom film grain is not selected. RenoDX Off clears the custom type flag, restoring the native condition.
  bool vanilla_film_grain = (_slopeParams.w > 0.0f) && CUSTOM_FILM_GRAIN_TYPE == 0;
  if (vanilla_film_grain) {
  // RenoDX: <<< [Patch: CustomFilmGrainGate]
    _51 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    _52 = _51 * 0.7692308f;
    _54 = frac(abs(_52));
    _55 = _51 * 0.08130081f;
    _57 = frac(abs(_55));
    _70 = ((select((_55 >= (-0.0f - _55)), _57, (-0.0f - _57)) * 1230.0f) + 10.0f) * ((select((_52 >= (-0.0f - _52)), _54, (-0.0f - _54)) * 13.0f) + 1.0f);
    _72 = frac(abs(_70));
    _80 = ((0.0075000525f - (select((_70 >= (-0.0f - _70)), _72, (-0.0f - _72)) * 0.15f)) * _slopeParams.w) + 1.0f;
    _85 = (_80 * _40);
    _86 = (_80 * _17.y);
    _87 = (_80 * _41);
  } else {
    _85 = _40;
    _86 = _17.y;
    _87 = _41;
  }
  _93 = (_exposure0.x * 0.65f) * _userImageAdjust.z;
  _95 = _93 * _slopeParams.x;
  _97 = _93 * _slopeParams.y;
  _99 = _93 * _slopeParams.z;
  // RenoDX: >>> [Patch: FusedFinalTonemapReplace] [Version: 1.13.00]
  // Description: This standalone-final permutation inlines the vanilla tonemap pipeline directly in the final pass and runs it unconditionally on the raw scene color, so an unreplaced permutation renders the whole screen with the vanilla look whenever the game selects it. This block replaces everything from the color-matrix grade through the per-permutation tone curve and output transform with the shared TonemapReplacer. The vanilla screen fade that was fused with the curve output is re-emitted below so the untouched downstream suite - wash, user brightness and contrast, user gamma, color-blind matrix where present, vignette, letterbox, and the alpha passthrough - keeps running unchanged on the replaced color.
  float3 _rndx_tonemapped_color = TonemapReplacer(float3(_85, _86, _87));
  // RenoDX: <<< [Patch: FusedFinalTonemapReplace]
  // RenoDX: >>> [Patch: FusedFinalSharpening] [Version: 1.13.00]
  // Description: The standalone final pass is where RenoDX RCAS sharpening runs, but this fused permutation tonemaps inside the final pass itself, so no completed final-color texture exists to sample neighbor pixels from. Reconstruct the four RCAS neighbor taps by sampling the raw scene color one texel away in each direction and pass each tap through the same TonemapReplacer applied to the center pixel, then run the shared RCAS resolve. The fused vanilla sharpener, where this permutation carried one, was removed together with the replaced tonemap segment above.
  if (CUSTOM_SHARPENING_TYPE == 1 && CUSTOM_SHARPENING > 0.f) {
    uint _rndx_scene_w, _rndx_scene_h;
    __3__36__0__0__g_sceneColor.GetDimensions(_rndx_scene_w, _rndx_scene_h);
    float2 _rndx_texel = 1.0f / float2(_rndx_scene_w, _rndx_scene_h);
    float3 _rndx_tap_b = TonemapReplacer(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, TEXCOORD + float2(0.0f, -_rndx_texel.y), 0).rgb);
    float3 _rndx_tap_d = TonemapReplacer(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, TEXCOORD + float2(-_rndx_texel.x, 0.0f), 0).rgb);
    float3 _rndx_tap_f = TonemapReplacer(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, TEXCOORD + float2(_rndx_texel.x, 0.0f), 0).rgb);
    float3 _rndx_tap_h = TonemapReplacer(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, TEXCOORD + float2(0.0f, _rndx_texel.y), 0).rgb);
    _rndx_tonemapped_color = ApplyRCASTaps(_rndx_tonemapped_color, _rndx_tap_b, _rndx_tap_d, _rndx_tap_f, _rndx_tap_h);
  }
  // RenoDX: <<< [Patch: FusedFinalSharpening]
  // RenoDX: >>> [Patch: FusedFinalFilmGrain] [Version: 1.13.00]
  // Description: The standalone final pass is where RenoDX custom film grain runs. This fused permutation is the visible final output whenever it draws, so apply the custom film grain to the tonemapped color here, in the same pipeline position the slim standalone finals apply it. The vanilla film grain earlier in this shader stays under the CustomFilmGrainGate patch and only runs when custom grain is off.
  if (CUSTOM_FILM_GRAIN_TYPE != 0) {
    _rndx_tonemapped_color = renodx::effects::ApplyFilmGrain(_rndx_tonemapped_color, TEXCOORD, CUSTOM_RANDOM, CUSTOM_FILM_GRAIN_STRENGTH * 0.03f);
  }
  // RenoDX: <<< [Patch: FusedFinalFilmGrain]
  // RenoDX: >>> [Patch: FusedFinalFadeRestore] [Version: 1.13.00]
  // Description: Re-emits the vanilla screen-fade lines that were fused with the replaced tone curve so the downstream final-output suite consumes the replaced color through the original variables.
  _1099 = 1.0f - abs(_etcParams.w);
  _1100 = saturate(_etcParams.w);
  _1133 = (_1099 * saturate(_rndx_tonemapped_color.x)) + _1100;
  _1122 = (_1099 * saturate(_rndx_tonemapped_color.y)) + _1100;
  _1111 = (_1099 * saturate(_rndx_tonemapped_color.z)) + _1100;
  // RenoDX: <<< [Patch: FusedFinalFadeRestore]
  if (_colorGradingParams.w > 0.0f) {
    _1138 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _1155 = (((max(0.0f, (1.0f - _1133)) - _1133) * _1138) + _1133);
    _1156 = (((max(0.0f, (1.0f - _1122)) - _1122) * _1138) + _1122);
    _1157 = (((max(0.0f, (1.0f - _1111)) - _1111) * _1138) + _1111);
  } else {
    _1155 = _1133;
    _1156 = _1122;
    _1157 = _1111;
  }
  _1159 = _userImageAdjust.y + 1.0f;
  _1161 = _userImageAdjust.x + 0.5f;
  _1164 = ((_1157 + -0.5f) * _1159) + _1161;
  _1167 = ((_1156 + -0.5f) * _1159) + _1161;
  _1170 = ((_1155 + -0.5f) * _1159) + _1161;
  _1176 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _1178 = (TEXCOORD.x * 2.0f) + -1.0f;
  _1179 = TEXCOORD.y * 2.0f;
  _1180 = 1.0f - _1179;
  _1192 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _1180, ((_projToPrevProj[3].x) * _1178)));
  _1202 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _1180, ((_projToPrevProj[0].x) * _1178))) + (_projToPrevProj[0].w)) / _1192) - _1178;
  _1212 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _1180, ((_projToPrevProj[1].x) * _1178))) + (_projToPrevProj[1].w)) / _1192) - _1180;
  if (_localToneMappingParams.w > 0.0f) {
    _1224 = saturate(1.0f - (sqrt((_1212 * _1212) + (_1202 * _1202)) * 2.0f));  // [sem: expr_sat]
  } else {
    _1224 = 1.0f;  // [sem: expr_sat]
  }
  _1225 = abs(_1178);
  _1227 = abs(_1179 + -1.0f);
  // RenoDX: >>> [Patch: FinalVignetteStrength] [Version: 1.16.00]
  // Description: The native final pass derives its vignette attenuation from _postProcessParams.x and the squared screen-space radius. This block multiplies only that native coefficient by CUSTOM_VIGNETTE so the control scales the existing vignette without changing its center, falloff equation, saturation, or output routing. CUSTOM_VIGNETTE resolves to 1 when RenoDX is Off, restoring the native expression.
  _1233 = saturate(1.0f - ((_1224 * _postProcessParams.x * CUSTOM_VIGNETTE) * dot(float2(_1225, _1227), float2(_1225, _1227))));  // [sem: expr_sat]
  // RenoDX: <<< [Patch: FinalVignetteStrength]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _1280 = (exp2(log2(saturate(mad(_colorBlind0.z, _1170, mad(_colorBlind0.y, _1167, (_colorBlind0.x * _1164))))) * _1176) * _1233);
      _1281 = (exp2(log2(saturate(mad(_colorBlind1.z, _1170, mad(_colorBlind1.y, _1167, (_colorBlind1.x * _1164))))) * _1176) * _1233);
      _1282 = (exp2(log2(saturate(mad(_colorBlind2.z, _1170, mad(_colorBlind2.y, _1167, (_colorBlind2.x * _1164))))) * _1176) * _1233);
    } else {
      _1280 = 0.0f;
      _1281 = 0.0f;
      _1282 = 0.0f;
    }
  } else {
    _1280 = 0.0f;
    _1281 = 0.0f;
    _1282 = 0.0f;
  }
  SV_Target.x = _1280;
  SV_Target.y = _1281;
  SV_Target.z = _1282;
  SV_Target.w = _17.w;
  // RenoDX: >>> [Patch: FinalizePostProcessSDR] [Version: 1.13.00]
  // Description: Runs the shared SDR finalizer after the native output has been assembled so enabled RenoDX display adjustments are applied once. Its effective controls are neutral when RenoDX is Off.
  SV_Target.xyz = FinalizeSDR(SV_Target.xyz, _sunDirection.y, _moonDirection.y);
  // RenoDX: <<< [Patch: FinalizePostProcessSDR]
  return SV_Target;
}
