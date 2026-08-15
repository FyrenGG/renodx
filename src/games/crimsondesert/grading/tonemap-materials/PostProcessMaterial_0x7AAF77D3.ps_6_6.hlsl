struct PostProcessAbyssCommon_CDStruct {
  float _fogDepth;
  float _chromaticShiftValue;
  uint _noiseTex;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<float4> __3__36__0__0__g_CustomRenderPassDepth : register(t71, space36);

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
// Description: Reuses this shader's native SceneConstantBuffer time field, imports the shared tonemap declarations consumed by the material grading path, and begins suppressing the duplicate native exposure declaration.
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
// Description: Closes suppression of the native ExposureConstantBuffer so any intervening unrelated native declarations remain live.
#endif
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Begins suppressing native GlobalPushConstants because tonemap.hlsli provides the ABI-compatible live declaration consumed by the material grading path.
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
// Description: Closes suppression of native GlobalPushConstants so the following unrelated native declarations remain live.
#endif
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Begins suppressing the native ColorBlindConstantBuffer because tonemap.hlsli provides the ABI-compatible live declaration used by the material grading path.
#if 0 // Provided by tonemap.hlsli
// RenoDX: <<< [Patch: RenoDXDependencyBindings]
cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Closes suppression of the native ColorBlindConstantBuffer so all following native declarations compile normally.
#endif
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

struct BindlessParameters_PostProcessAbyssCommon_CD {
  PostProcessAbyssCommon_CDStruct BindlessParameters_PostProcessAbyssCommon_CD;
};

typedef BindlessParameters_PostProcessAbyssCommon_CD BindlessParameters_PostProcessAbyssCommon_CD_t;
ConstantBuffer<BindlessParameters_PostProcessAbyssCommon_CD_t> BindlessParameters_PostProcessAbyssCommon_CD[] : register(b0, space100);

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
  float _21;
  float _22;
  float _23;
  float _26;
  float _28;
  float _64;
  float _68;
  float _69;
  float _70;
  float _72;
  float _73;
  float _74;
  float _75;
  int _76;
  int _84;
  float4 _91;
  int _98;
  int _106;
  float4 _113;
  int _122;
  int _130;
  float4 _137;
  float _140;
  float _141;
  int _146;
  int _154;
  float4 _161;
  int _170;
  int _178;
  float4 _185;
  float _191;
  float _193;
  float _198;
  float _199;
  float _204;
  float _205;
  float _207;
  int _214;
  int _222;
  float4 _229;
  float _236;
  float4 _246;
  float _253;
  float _254;
  float _283;
  float _284;
  float4 _293;
  float _322;
  float _337;
  float _341;
  float _344;
  float _354;
  float _355;
  float _356;
  float _357;
  float _358;
  int _359;
  float _426;
  float _631;
  float _632;
  float _633;
  float _726;
  float _727;
  float _728;
  float _782;
  float _783;
  float _784;
  float _800;
  float _801;
  float _802;
  float _832;
  float _833;
  float _834;
  float _848;
  float _849;
  float _850;
  float _360;
  float4 _369;
  float _376;
  float _377;
  float _378;
  int _381;
  float _391;
  float _403;
  float _410;
  float _411;
  float _412;
  uint _413;
  bool _429;
  float _435;
  float _484;
  float _485;
  float _486;
  float _488;
  float _495;
  float _496;
  float _497;
  float _516;
  float _517;
  float _518;
  float _519;
  float _520;
  float _521;
  float _522;
  float _523;
  float _524;
  float _570;
  float _571;
  float _572;
  float _573;
  float _574;
  float _575;
  float _576;
  float _593;
  float _594;
  float _595;
  float _596;
  float _602;
  float _605;
  float _612;
  float _613;
  float _614;
  float _643;
  float _668;
  float _669;
  float _670;
  float _689;
  float _690;
  float _691;
  float _697;
  float _701;
  float _702;
  float _703;
  float _704;
  float _709;
  float _734;
  float _738;
  float _739;
  float _740;
  float _741;
  float _771;
  float _790;
  float _791;
  float _795;
  float _839;
  float _860;
  float _861;
  float _862;
  int __loop_jump_target = -1;
  _21 = (TEXCOORD.x * 2.0f) + -1.0f;
  _22 = TEXCOORD.y * 2.0f;
  _23 = 1.0f - _22;
  _26 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  _28 = max(1e-07f, _26.x);  // [sem: _3__36__0__0__g_depth_sample_derived]
  _64 = mad((_invViewProjRelative[3].z), _28, mad((_invViewProjRelative[3].y), _23, ((_invViewProjRelative[3].x) * _21))) + (_invViewProjRelative[3].w);
  _68 = -0.0f - ((mad((_invViewProjRelative[0].z), _28, mad((_invViewProjRelative[0].y), _23, ((_invViewProjRelative[0].x) * _21))) + (_invViewProjRelative[0].w)) / _64);
  _69 = -0.0f - ((mad((_invViewProjRelative[1].z), _28, mad((_invViewProjRelative[1].y), _23, ((_invViewProjRelative[1].x) * _21))) + (_invViewProjRelative[1].w)) / _64);
  _70 = -0.0f - ((mad((_invViewProjRelative[2].z), _28, mad((_invViewProjRelative[2].y), _23, ((_invViewProjRelative[2].x) * _21))) + (_invViewProjRelative[2].w)) / _64);
  _72 = rsqrt(dot(float3(_68, _69, _70), float3(_68, _69, _70)));  // [sem: invLength]
  _73 = _72 * _68;
  _74 = _72 * _69;
  _75 = _72 * _70;
  _76 = WaveReadLaneFirst(_materialIndex);
  _84 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_76 < (uint)170000), _76, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _91 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_84 < (uint)65000), _84, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_75, _73));
  _98 = WaveReadLaneFirst(_materialIndex);
  _106 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_98 < (uint)170000), _98, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _113 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_106 < (uint)65000), _106, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(_75, ((_time.x * 0.05f) + _74)));
  _122 = WaveReadLaneFirst(_materialIndex);
  _130 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_122 < (uint)170000), _122, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _137 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_130 < (uint)65000), _130, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((_75 * 2.0f), ((_74 - (_time.x * 0.1f)) * 2.0f)));
  _140 = _137.x + _113.x;
  _141 = _137.y + _113.y;
  _146 = WaveReadLaneFirst(_materialIndex);
  _154 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_146 < (uint)170000), _146, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _161 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_154 < (uint)65000), _154, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_time.x * 0.13f) + _74), _73));
  _170 = WaveReadLaneFirst(_materialIndex);
  _178 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_170 < (uint)170000), _170, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _185 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_178 < (uint)65000), _178, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_time.x * 0.1f) + _74) * 2.0f), (_73 * 2.0f)));
  _191 = abs(dot(float3(_73, _74, _75), float3(0.0f, 1.0f, 0.0f)));
  _193 = abs(dot(float3(_73, _74, _75), float3(0.0f, 0.0f, 1.0f)));
  _198 = (_191 * (_91.x - _140)) + _140;
  _199 = (_191 * (_91.y - _141)) + _141;
  _204 = (((_185.x + _161.x) - _198) * _193) + _198;
  _205 = (((_185.y + _161.y) - _199) * _193) + _199;
  _207 = saturate(_26.x * 35.0f);  // [sem: expr_sat]
  _214 = WaveReadLaneFirst(_materialIndex);
  _222 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssCommon_CD[((int)((uint)((uint)(select(((uint)_214 < (uint)170000), _214, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssCommon_CD._noiseTex);
  _229 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_222 < (uint)65000), _222, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((TEXCOORD.x - (_time.x * 0.01f)), ((_time.x * 0.1f) + TEXCOORD.y)));
  _236 = ((_229.x - _204) * _207) + _204;
  // [sem: _3__36__0__0__g_sceneColor_sample]
  _246 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(((TEXCOORD.x + -0.001992157f) + (_236 * 0.004f)), ((TEXCOORD.y + -0.001992157f) + ((lerp(_205, _229.y, _207)) * 0.004f))));
  _253 = (pow(_246.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _254 = (pow(_246.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _283 = (float)((int)((int)((_bufferSizeAndInvSize.x + -1.0f) * saturate(TEXCOORD.x))));
  _284 = (float)((int)((int)((_bufferSizeAndInvSize.y + -1.0f) * saturate(TEXCOORD.y))));
  // [sem: _3__36__0__0__g_CustomRenderPassDepth_load]
  _293 = __3__36__0__0__g_CustomRenderPassDepth.Load(int3(((int)(_283 * _customRenderPassSizeInvSize.x)), ((int)(_284 * _customRenderPassSizeInvSize.y)), 0));
  _322 = mad((_projToPrevProj[3].z), _293.x, mad((_projToPrevProj[3].y), _23, ((_projToPrevProj[3].x) * _21))) + (_projToPrevProj[3].w);
  _337 = _236 + -0.4f;
  _341 = min(max(((_337 * 6.666667f) + -1.0f), -1.0f), 1.0f);
  _344 = (_337 * 0.020000001f) + -0.003f;
  _354 = _344;
  _355 = _344;
  _356 = 0.0f;
  _357 = 0.0f;
  _358 = 0.0f;
  _359 = 1;
  while(true) {
    _360 = (float)((int)(_359));
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _369 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - ((_354 * (((((((mad((_projToPrevProj[0].z), _293.x, mad((_projToPrevProj[0].y), _23, ((_projToPrevProj[0].x) * _21))) + (_projToPrevProj[0].w)) / _322) - _21) * 2.5f) + -0.5f) + frac(frac(dot(float2(_283, _284), float2(0.06711056f, 0.00583715f))) * 52.982918f)) - (_341 * 8.742278e-08f))) * _360)), (TEXCOORD.y - ((_355 * (((((((mad((_projToPrevProj[1].z), _293.x, mad((_projToPrevProj[1].y), _23, ((_projToPrevProj[1].x) * _21))) + (_projToPrevProj[1].w)) / _322) - _23) * 2.5f) + -0.5f) + frac(frac(dot(float2((_283 + 32.665f), (_284 + 11.815f)), float2(0.06711056f, 0.00583715f))) * 52.982918f)) - _341)) * _360))));
    _376 = (_369.x * 0.125f) + _356;
    _377 = (_369.y * 0.125f) + _357;
    _378 = (_369.z * 0.125f) + _358;
    _381 = (int)(_359) + (int)(1);
    if (!(_381 == 8)) {
      _354 = (_354 * 0.9f);
      _355 = (_355 * 0.9f);
      _356 = _376;
      _357 = _377;
      _358 = _378;
      _359 = _381;
      continue;
    }
    _391 = (pow(_246.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _403 = dot(float3((exp2(log2(max(0.0f, (_391 + -0.8359375f)) / (18.851562f - (_391 * 18.6875f))) * 6.277395f) * 10000.0f), (exp2(log2(max(0.0f, (_253 + -0.8359375f)) / (18.851562f - (_253 * 18.6875f))) * 6.277395f) * 10000.0f), (exp2(log2(max(0.0f, (_254 + -0.8359375f)) / (18.851562f - (_254 * 18.6875f))) * 6.277395f) * 10000.0f)), float3(0.2126f, 0.7152f, 0.0722f)) * 0.3f;
    _410 = ((_403 - _376) * 0.2f) + _376;
    _411 = ((_403 - _377) * 0.2f) + _377;
    _412 = ((_403 - _378) * 0.2f) + _378;
    _413 = (uint)(SV_Position.y);
    if (_etcParams.y == 1.0f) {
      _426 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _413, 0)))).x) & 127)))) + 0.5f);
    } else {
      _426 = 0.0f;
    }
    _429 = (_localToneMappingParams.w > 0.0f);
    if (_429) {
      // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
      // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
      float3 _rndx_tonemapped_color = TonemapReplacer(float3(_410, _411, _412));
      _689 = _rndx_tonemapped_color.x;
      _690 = _rndx_tonemapped_color.y;
      _691 = _rndx_tonemapped_color.z;
      // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
      if (_etcParams.z == 0.0f) {
        _697 = 1.0f - abs(_etcParams.w);
        _701 = saturate(_etcParams.w);  // [sem: expr_sat]
        _702 = (_697 * _689) + _701;
        _703 = (_697 * _690) + _701;
        _704 = (_697 * _691) + _701;
        if (_colorGradingParams.w > 0.0f) {
          _709 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
          _726 = (((max(0.0f, (1.0f - _702)) - _702) * _709) + _702);
          _727 = (((max(0.0f, (1.0f - _703)) - _703) * _709) + _703);
          _728 = (((max(0.0f, (1.0f - _704)) - _704) * _709) + _704);
        } else {
          _726 = _702;
          _727 = _703;
          _728 = _704;
        }
        _734 = _userImageAdjust.y + 1.0f;
        _738 = _userImageAdjust.x + 0.5f;
        _739 = ((_726 + -0.5f) * _734) + _738;
        _740 = ((_727 + -0.5f) * _734) + _738;
        _741 = ((_728 + -0.5f) * _734) + _738;
        _771 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
        _782 = exp2(log2(saturate(mad(_colorBlind0.z, _741, mad(_colorBlind0.y, _740, (_colorBlind0.x * _739))))) * _771);
        _783 = exp2(log2(saturate(mad(_colorBlind1.z, _741, mad(_colorBlind1.y, _740, (_colorBlind1.x * _739))))) * _771);
        _784 = exp2(log2(saturate(mad(_colorBlind2.z, _741, mad(_colorBlind2.y, _740, (_colorBlind2.x * _739))))) * _771);
      } else {
        _782 = _689;
        _783 = _690;
        _784 = _691;
      }
    } else {
      _782 = _410;
      _783 = _411;
      _784 = _412;
    }
    if (_etcParams.y > 1.0f) {
      _790 = abs(_21);
      _791 = abs(_22 + -1.0f);
      _795 = saturate(1.0f - (dot(float2(_790, _791), float2(_790, _791)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
      _800 = (_795 * _782);
      _801 = (_795 * _783);
      _802 = (_795 * _784);
    } else {
      _800 = _782;
      _801 = _783;
      _802 = _784;
    }
    if (_429 && (_etcParams.z > 0.0f)) {
      _832 = select((_800 <= 0.0031308f), (_800 * 12.92f), (((pow(_800, 0.41666666f)) * 1.055f) + -0.055f));
      _833 = select((_801 <= 0.0031308f), (_801 * 12.92f), (((pow(_801, 0.41666666f)) * 1.055f) + -0.055f));
      _834 = select((_802 <= 0.0031308f), (_802 * 12.92f), (((pow(_802, 0.41666666f)) * 1.055f) + -0.055f));
    } else {
      _832 = _800;
      _833 = _801;
      _834 = _802;
    }
    if (!(!(_etcParams.y >= 1.0f))) {
      _839 = (float)((uint)((uint)(_413)));
      if (!(_839 < _viewDir.w)) {
        if (!(_839 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
          _848 = _832;
          _849 = _833;
          _850 = _834;
        } else {
          _848 = 0.0f;
          _849 = 0.0f;
          _850 = 0.0f;
        }
      } else {
        _848 = 0.0f;
        _849 = 0.0f;
        _850 = 0.0f;
      }
    } else {
      _848 = _832;
      _849 = _833;
      _850 = _834;
    }
    _860 = exp2(log2(_848 * 0.0001f) * 0.15930176f);
    _861 = exp2(log2(_849 * 0.0001f) * 0.15930176f);
    _862 = exp2(log2(_850 * 0.0001f) * 0.15930176f);
    SV_Target.x = exp2(log2((1.0f / ((_860 * 18.6875f) + 1.0f)) * ((_860 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.y = exp2(log2((1.0f / ((_861 * 18.6875f) + 1.0f)) * ((_861 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.z = exp2(log2((1.0f / ((_862 * 18.6875f) + 1.0f)) * ((_862 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.w = _426;
    break;
  }
  return SV_Target;
}
