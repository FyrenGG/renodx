struct PostProcessUnderwaterStruct {
  uint _causticsTexture;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float> __3__36__0__0__g_waterDepthTop : register(t54, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t32, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t40, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

Texture2D<uint4> __3__36__0__0__g_gbufferBaseColor : register(t77, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t78, space36);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b15, space35) {
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
};

#define RENODX_TONEMAP_EXTERNAL_SCENE_CONSTANT_BUFFER 1
#define RENODX_TONEMAP_SCENE_TIME_W _time.w
#include "../tonemap.hlsli"

#if 0 // Provided by tonemap.hlsli
cbuffer __3__35__0__0__ExposureConstantBuffer : register(b30, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};
#endif

cbuffer __3__35__0__0__WaterConstantBuffer : register(b1, space35) {
  float4 _waterDepthFieldSize : packoffset(c000.x);
  float4 _waterDepthFieldTextureSize : packoffset(c001.x);
  float4 _waterDepthMinMax : packoffset(c002.x);
  row_major float4x4 _waterDepthViewProjRelative : packoffset(c003.x);
  row_major float4x4 _waterDepthViewProjRelativeInv : packoffset(c007.x);
  float4 _waterDepthFrustumPlanes[6] : packoffset(c011.x);
  float4 _waterReadbackTextureSize : packoffset(c017.x);
  row_major float4x4 _waterReadbackViewProjRelative : packoffset(c018.x);
  row_major float4x4 _waterReadbackViewProjRelativeInv : packoffset(c022.x);
  float4 _ripplePivot : packoffset(c026.x);
  float4 _rippleFieldSize : packoffset(c027.x);
  float4 _rippleFieldTextureSize : packoffset(c028.x);
  float4 _shallowWaterPivot : packoffset(c029.x);
  float4 _shallowWaterFieldSize : packoffset(c030.x);
  float4 _shallowWaterFieldTextureSize : packoffset(c031.x);
};

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
cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b46, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};
#endif

struct BindlessParameters_PostProcessUnderwater {
  PostProcessUnderwaterStruct BindlessParameters_PostProcessUnderwater;
};

typedef BindlessParameters_PostProcessUnderwater BindlessParameters_PostProcessUnderwater_t;
ConstantBuffer<BindlessParameters_PostProcessUnderwater_t> BindlessParameters_PostProcessUnderwater[] : register(b0, space100);

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
  float _27;
  float _70;
  float _71;
  float _77;
  float _79;
  float _80;
  float _116;
  float _117;
  float _119;
  uint _125;
  uint _126;
  uint4 _128;
  float4 _131;
  float _149;
  float _150;
  float _151;
  float _153;
  float _154;
  float _155;
  float _156;
  float _159;
  float _160;
  float _163;
  float _164;
  float _168;
  float _170;
  float _171;
  float _172;
  float _173;
  float _175;
  float _178;
  float _179;
  float _180;
  float _181;
  float _190;
  float _194;
  float _198;
  float _200;
  float _206;
  float _207;
  float _212;
  float _214;
  float _218;
  float _421;
  float _422;
  float _423;
  float _437;
  float _642;
  float _643;
  float _644;
  float _737;
  float _738;
  float _739;
  float _793;
  float _794;
  float _795;
  float _814;
  float _815;
  float _816;
  float _846;
  float _847;
  float _848;
  float _862;
  float _863;
  float _864;
  float _237;
  float _238;
  float _239;
  float _258;
  float4 _264;
  float4 _271;
  float _278;
  float _279;
  float _280;
  float _282;
  float _283;
  float _284;
  float _286;
  int _288;
  int _296;
  int _305;
  int _313;
  int _322;
  int _330;
  float _339;
  float _341;
  int _343;
  int _351;
  int _360;
  int _368;
  int _377;
  int _385;
  float _408;
  float _410;
  uint _424;
  bool _440;
  float _446;
  float _495;
  float _496;
  float _497;
  float _499;
  float _506;
  float _507;
  float _508;
  float _527;
  float _528;
  float _529;
  float _530;
  float _531;
  float _532;
  float _533;
  float _534;
  float _535;
  float _581;
  float _582;
  float _583;
  float _584;
  float _585;
  float _586;
  float _587;
  float _604;
  float _605;
  float _606;
  float _607;
  float _613;
  float _616;
  float _623;
  float _624;
  float _625;
  float _654;
  float _679;
  float _680;
  float _681;
  float _700;
  float _701;
  float _702;
  float _708;
  float _712;
  float _713;
  float _714;
  float _715;
  float _720;
  float _745;
  float _749;
  float _750;
  float _751;
  float _752;
  float _782;
  float _804;
  float _805;
  float _809;
  float _853;
  _27 = TEXCOORD.x * 1.7777777910232544f;
  _70 = min(max((((((sin(((_27 + TEXCOORD.y) * 10.0f) - (_time.x * 1.350000023841858f)) * 0.3499999940395355f) + sin((_time.x * 2.0f) + (TEXCOORD.y * 18.0f))) + (cos((TEXCOORD.y * 7.0f) - (_time.x * 1.100000023841858f)) * 0.20000000298023224f)) * 0.0010000000474974513f) + TEXCOORD.x), 0.0010000000474974513f), 0.9990000128746033f);
  _71 = min(max((((((sin((_time.x * 1.2000000476837158f) + ((_27 - TEXCOORD.y) * 9.0f)) * 0.30000001192092896f) + cos((TEXCOORD.x * 28.44444465637207f) - (_time.x * 1.75f))) + (sin((_time.x * 1.0499999523162842f) + (TEXCOORD.x * 10.666666984558105f)) * 0.18000000715255737f)) * 0.0010000000474974513f) + TEXCOORD.y), 0.0010000000474974513f), 0.9990000128746033f);
  _77 = (_70 * 2.0f) + -1.0f;
  _79 = 1.0f - (_71 * 2.0f);
  _80 = max(1.0000000116860974e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_70, _71))).x));
  _116 = mad((_invViewProj[2].w), _80, mad((_invViewProj[1].w), _79, ((_invViewProj[0].w) * _77))) + (_invViewProj[3].w);
  _117 = (mad((_invViewProj[2].x), _80, mad((_invViewProj[1].x), _79, ((_invViewProj[0].x) * _77))) + (_invViewProj[3].x)) / _116;
  _119 = (mad((_invViewProj[2].z), _80, mad((_invViewProj[1].z), _79, ((_invViewProj[0].z) * _77))) + (_invViewProj[3].z)) / _116;
  _125 = uint(_bufferSizeAndInvSize.x * _70);
  _126 = uint(_bufferSizeAndInvSize.y * _71);
  _128 = __3__36__0__0__g_gbufferBaseColor.Load(int3(_125, _126, 0));  // [sem: _3__36__0__0__g_gbufferBaseColor_load]
  _131 = __3__36__0__0__g_gbufferNormal.Load(int3(_125, _126, 0));  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _149 = (saturate(_131.x * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _150 = (saturate(_131.y * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _151 = (saturate(_131.z * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _153 = rsqrt(dot(float3(_149, _150, _151), float3(_149, _150, _151)));  // [sem: invLength]
  _154 = _153 * _149;
  _155 = _153 * _150;
  _156 = _151 * _153;
  _159 = (((float)((uint)((uint)(((uint)((uint)(_128.w)) >> 8) & 255)))) * 0.007843137718737125f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _160 = (((float)((uint)((uint)(_128.w & 255)))) * 0.007843137718737125f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferBaseColor_load_derived]
  _163 = (_159 + _160) * 0.5f;
  _164 = (_159 - _160) * 0.5f;
  _168 = (1.0f - abs(_163)) - abs(_164);
  _170 = rsqrt(dot(float3(_163, _164, _168), float3(_163, _164, _168)));  // [sem: invLength]
  _171 = _170 * _163;
  _172 = _170 * _164;
  _173 = _170 * _168;
  _175 = select((_156 >= 0.0f), 1.0f, -1.0f);
  _178 = -0.0f - (1.0f / (_175 + _156));
  _179 = _155 * _178;
  _180 = _179 * _154;
  _181 = _175 * _154;
  _190 = mad(_173, _154, mad(_172, _180, ((((_181 * _154) * _178) + 1.0f) * _171)));
  _194 = mad(_173, _155, mad(_172, (_175 + (_179 * _155)), ((_171 * _175) * _180)));
  _198 = mad(_173, _156, mad(_172, (-0.0f - _155), (-0.0f - (_181 * _171))));
  _200 = rsqrt(dot(float3(_190, _194, _198), float3(_190, _194, _198)));  // [sem: invLength]
  _206 = (dot(float3((_200 * _190), (_200 * _194), (_200 * _198)), float3(0.0f, 1.0f, 0.0f)) * 0.5f) + 0.5f;
  _207 = ((mad((_invViewProj[2].y), _80, mad((_invViewProj[1].y), _79, ((_invViewProj[0].y) * _77))) + (_invViewProj[3].y)) / _116) + 0.10000000149011612f;
  _212 = _117 - _viewPos.x;
  _214 = _119 - _viewPos.z;
  _218 = (_waterDepthFieldSize.x + -1.0f) * 0.5f;
  bool __branch_chain_0;
  if (!((((abs(_212) - _218) < 0.0f) && (((1.0f - _waterDepthMinMax.z) + abs(_207 - _viewPos.y)) < 0.0f)) && ((abs(_214) - _218) < 0.0f))) {
    __branch_chain_0 = true;
  } else {
    _237 = _waterDepthFieldSize.w * _214;
    _238 = (_waterDepthFieldSize.z * _212) + 0.5f;
    _239 = _237 + 0.5f;
    if ((_239 >= 1.0f) || ((_239 <= 0.0f) || ((_238 <= 0.0f) || (_238 >= 1.0f)))) {
      __branch_chain_0 = true;
    } else {
      _258 = ((_waterDepthMinMax.z + _viewPos.y) - _waterDepthMinMax.x) - (((__3__36__0__0__g_waterDepthTop.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_238, (0.5f - _237)), 0.0f)).x) * (_waterDepthMinMax.y - _waterDepthMinMax.x));
      if ((_206 <= 0.0f) || (!(_207 < _258))) {
        __branch_chain_0 = true;
      } else {
        __branch_chain_0 = false;
      }
    }
  }
  if (__branch_chain_0) {
    _264 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
    _421 = _264.x;
    _422 = _264.y;
    _423 = _264.z;
  } else {
    _271 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_70, _71));  // [sem: _3__36__0__0__g_sceneColor_sample]
    _278 = _117 * 0.10000000149011612f;
    _279 = _119 * 0.10000000149011612f;
    _280 = (_time.x * 0.03750000149011612f) + _278;
    _282 = _119 * -0.10000000149011612f;
    _283 = (_time.x * 0.05000000074505806f) - _278;
    _284 = _280 + 0.00019999999494757503f;
    _286 = _279 + -0.00019999999494757503f;
    _288 = WaveReadLaneFirst(_materialIndex);
    _296 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_288 < (uint)170000), _288, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _305 = WaveReadLaneFirst(_materialIndex);
    _313 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_305 < (uint)170000), _305, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _322 = WaveReadLaneFirst(_materialIndex);
    _330 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_322 < (uint)170000), _322, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _339 = _283 + 0.00019999999494757503f;
    _341 = _282 + -0.00019999999494757503f;
    _343 = WaveReadLaneFirst(_materialIndex);
    _351 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_343 < (uint)170000), _343, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _360 = WaveReadLaneFirst(_materialIndex);
    _368 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_360 < (uint)170000), _360, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _377 = WaveReadLaneFirst(_materialIndex);
    _385 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_377 < (uint)170000), _377, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _408 = 1.0f - saturate((_nearFarProj.x / _80) * 0.05000000074505806f);
    _410 = ((1.0f - saturate(abs(_207 - _258) * 0.03333333507180214f)) * _206) * (dot(float3(_271.x, _271.y, _271.z), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f)) * 10.0f);
    _421 = (((_410 * min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_296 < (uint)65000), _296, 0)) + 0u))].SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(_284, (_279 + 0.00019999999494757503f)), 0.0f))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_351 < (uint)65000), _351, 0)) + 0u))].SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(_339, (_282 + 0.00019999999494757503f)), 0.0f))).x))) * _408) + _271.x);
    _422 = (((_410 * min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_313 < (uint)65000), _313, 0)) + 0u))].SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(_284, _286), 0.0f))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_368 < (uint)65000), _368, 0)) + 0u))].SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(_339, _341), 0.0f))).x))) * _408) + _271.y);
    _423 = (((_410 * min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_330 < (uint)65000), _330, 0)) + 0u))].SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2((_280 + -0.00019999999494757503f), _286), 0.0f))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_385 < (uint)65000), _385, 0)) + 0u))].SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2((_283 + -0.00019999999494757503f), _341), 0.0f))).x))) * _408) + _271.z);
  }
  _424 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _437 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _424, 0)))).x) & 127)))) + 0.5f);
  } else {
    _437 = 1.0f;
  }
  _440 = (_localToneMappingParams.w > 0.0f);
  if (_440) {
    // RenoDX: >>> [Patch: ScreenEffectTonemapReplace] [Version: 1.12.02]
    // Description: This is SDR permutation 0x7246F312 of the water submersion (underwater) screen effect (PostProcessUnderwater: it samples g_waterDepthTop with WaterConstantBuffer to detect the submerged surface, refracts the scene color with animated wave UVs, and layers bindless caustics onto it). Like every PostProcessMaterial family member it statically inlines the full vanilla tonemap pipeline and can own the visible final output while the camera is underwater, so an unreplaced curve renders the entire screen with vanilla colors (flat/grey versus the RenoDX look) for the duration of the submersion. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite (screen fade, wash, user image adjust, color-blind matrix) below.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_421, _422, _423));
    _700 = _rndx_tonemapped_color.x;
    _701 = _rndx_tonemapped_color.y;
    _702 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: ScreenEffectTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _708 = 1.0f - abs(_etcParams.w);
      _712 = saturate(_etcParams.w);  // [sem: expr_sat]
      _713 = (_708 * _700) + _712;
      _714 = (_708 * _701) + _712;
      _715 = (_708 * _702) + _712;
      if (_colorGradingParams.w > 0.0f) {
        _720 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _737 = (((max(0.0f, (1.0f - _713)) - _713) * _720) + _713);
        _738 = (((max(0.0f, (1.0f - _714)) - _714) * _720) + _714);
        _739 = (((max(0.0f, (1.0f - _715)) - _715) * _720) + _715);
      } else {
        _737 = _713;
        _738 = _714;
        _739 = _715;
      }
      _745 = _userImageAdjust.y + 1.0f;
      _749 = _userImageAdjust.x + 0.5f;
      _750 = ((_737 + -0.5f) * _745) + _749;
      _751 = ((_738 + -0.5f) * _745) + _749;
      _752 = ((_739 + -0.5f) * _745) + _749;
      _782 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _793 = exp2(log2(saturate(mad(_colorBlind0.z, _752, mad(_colorBlind0.y, _751, (_colorBlind0.x * _750))))) * _782);
      _794 = exp2(log2(saturate(mad(_colorBlind1.z, _752, mad(_colorBlind1.y, _751, (_colorBlind1.x * _750))))) * _782);
      _795 = exp2(log2(saturate(mad(_colorBlind2.z, _752, mad(_colorBlind2.y, _751, (_colorBlind2.x * _750))))) * _782);
    } else {
      _793 = _700;
      _794 = _701;
      _795 = _702;
    }
  } else {
    _793 = _421;
    _794 = _422;
    _795 = _423;
  }
  if (_etcParams.y > 1.0f) {
    _804 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _805 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: ScreenEffectVignette] [Version: 1.12.02]
    // Description: When this water submersion (underwater) SDR variant is the visible final output while the camera is submerged, scale its native vignette by the RenoDX Vignette setting so the vignette strength stays consistent with the main composite's behavior underwater instead of snapping to full native strength. Mirrors the BasicPostProcessVignette patch in PostProcessMaterial_0x21212A93.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _809 = saturate(1.0f - (dot(float2(_804, _805), float2(_804, _805)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: ScreenEffectVignette]
    _814 = (_809 * _793);
    _815 = (_809 * _794);
    _816 = (_809 * _795);
  } else {
    _814 = _793;
    _815 = _794;
    _816 = _795;
  }
  if (_440 && (_etcParams.z > 0.0f)) {
    _846 = select((_814 <= 0.0031308000907301903f), (_814 * 12.920000076293945f), (((pow(_814, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _847 = select((_815 <= 0.0031308000907301903f), (_815 * 12.920000076293945f), (((pow(_815, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _848 = select((_816 <= 0.0031308000907301903f), (_816 * 12.920000076293945f), (((pow(_816, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _846 = _814;
    _847 = _815;
    _848 = _816;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _853 = (float)((uint)_424);
    if (!(_853 < _viewDir.w)) {
      if (!(_853 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _862 = _846;
        _863 = _847;
        _864 = _848;
      } else {
        _862 = 0.0f;
        _863 = 0.0f;
        _864 = 0.0f;
      }
    } else {
      _862 = 0.0f;
      _863 = 0.0f;
      _864 = 0.0f;
    }
  } else {
    _862 = _846;
    _863 = _847;
    _864 = _848;
  }
  // RenoDX: >>> [Patch: ScreenEffectFinalizeSDR] [Version: 1.12.02]
  // Description: On the SDR lane this water submersion (underwater) screen-effect variant can be the visible final output while the camera is submerged (it writes the display target with _etcParams.z == 0 during the effect). Without this block the RenoDX SDR finalization (white point/color temperature, Purkinje gating, and the SDR Gamma setting) drops out for the duration of the underwater effect and snaps back on surfacing. Mirrors the BasicPostProcessFinalizeSDR patch in PostProcessMaterial_0x21212A93.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_862, _863, _864), _sunDirection.y, _moonDirection.y);
    _862 = _rndx_final_color.x;
    _863 = _rndx_final_color.y;
    _864 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: ScreenEffectFinalizeSDR]
  SV_Target.x = _862;
  SV_Target.y = _863;
  SV_Target.z = _864;
  SV_Target.w = _437;
  return SV_Target;
}
