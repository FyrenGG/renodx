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
  float _493;
  float _494;
  float _495;
  float _509;
  float _714;
  float _715;
  float _716;
  float _809;
  float _810;
  float _811;
  float _865;
  float _866;
  float _867;
  float _886;
  float _887;
  float _888;
  float _918;
  float _919;
  float _920;
  float _934;
  float _935;
  float _936;
  float _237;
  float _238;
  float _239;
  float _258;
  float4 _264;
  float _274;
  float _275;
  float _276;
  float4 _307;
  float _317;
  float _318;
  float _319;
  float _344;
  float _345;
  float _346;
  float _350;
  float _351;
  float _352;
  float _354;
  float _355;
  float _356;
  float _358;
  int _360;
  int _368;
  int _377;
  int _385;
  int _394;
  int _402;
  float _411;
  float _413;
  int _415;
  int _423;
  int _432;
  int _440;
  int _449;
  int _457;
  float _480;
  float _482;
  uint _496;
  bool _512;
  float _518;
  float _567;
  float _568;
  float _569;
  float _571;
  float _578;
  float _579;
  float _580;
  float _599;
  float _600;
  float _601;
  float _602;
  float _603;
  float _604;
  float _605;
  float _606;
  float _607;
  float _653;
  float _654;
  float _655;
  float _656;
  float _657;
  float _658;
  float _659;
  float _676;
  float _677;
  float _678;
  float _679;
  float _685;
  float _688;
  float _695;
  float _696;
  float _697;
  float _726;
  float _751;
  float _752;
  float _753;
  float _772;
  float _773;
  float _774;
  float _780;
  float _784;
  float _785;
  float _786;
  float _787;
  float _792;
  float _817;
  float _821;
  float _822;
  float _823;
  float _824;
  float _854;
  float _876;
  float _877;
  float _881;
  float _925;
  float _946;
  float _947;
  float _948;
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
    _274 = (pow(_264.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _275 = (pow(_264.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _276 = (pow(_264.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _493 = (exp2(log2(max(0.0f, (_274 + -0.8359375f)) / (18.8515625f - (_274 * 18.6875f))) * 6.277394771575928f) * 10000.0f);
    _494 = (exp2(log2(max(0.0f, (_275 + -0.8359375f)) / (18.8515625f - (_275 * 18.6875f))) * 6.277394771575928f) * 10000.0f);
    _495 = (exp2(log2(max(0.0f, (_276 + -0.8359375f)) / (18.8515625f - (_276 * 18.6875f))) * 6.277394771575928f) * 10000.0f);
  } else {
    _307 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_70, _71));  // [sem: _3__36__0__0__g_sceneColor_sample]
    _317 = (pow(_307.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _318 = (pow(_307.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _319 = (pow(_307.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _344 = exp2(log2(max(0.0f, (_317 + -0.8359375f)) / (18.8515625f - (_317 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
    _345 = exp2(log2(max(0.0f, (_318 + -0.8359375f)) / (18.8515625f - (_318 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
    _346 = exp2(log2(max(0.0f, (_319 + -0.8359375f)) / (18.8515625f - (_319 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
    _350 = _117 * 0.10000000149011612f;
    _351 = _119 * 0.10000000149011612f;
    _352 = (_time.x * 0.03750000149011612f) + _350;
    _354 = _119 * -0.10000000149011612f;
    _355 = (_time.x * 0.05000000074505806f) - _350;
    _356 = _352 + 0.00019999999494757503f;
    _358 = _351 + -0.00019999999494757503f;
    _360 = WaveReadLaneFirst(_materialIndex);
    _368 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_360 < (uint)170000), _360, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _377 = WaveReadLaneFirst(_materialIndex);
    _385 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_377 < (uint)170000), _377, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _394 = WaveReadLaneFirst(_materialIndex);
    _402 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_394 < (uint)170000), _394, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _411 = _355 + 0.00019999999494757503f;
    _413 = _354 + -0.00019999999494757503f;
    _415 = WaveReadLaneFirst(_materialIndex);
    _423 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_415 < (uint)170000), _415, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _432 = WaveReadLaneFirst(_materialIndex);
    _440 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_432 < (uint)170000), _432, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _449 = WaveReadLaneFirst(_materialIndex);
    _457 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_449 < (uint)170000), _449, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _480 = 1.0f - saturate((_nearFarProj.x / _80) * 0.05000000074505806f);
    _482 = ((1.0f - saturate(abs(_207 - _258) * 0.03333333507180214f)) * _206) * (dot(float3(_344, _345, _346), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f)) * 10.0f);
    _493 = (((_482 * min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_368 < (uint)65000), _368, 0)) + 0u))].SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(_356, (_351 + 0.00019999999494757503f)), 0.0f))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_423 < (uint)65000), _423, 0)) + 0u))].SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(_411, (_354 + 0.00019999999494757503f)), 0.0f))).x))) * _480) + _344);
    _494 = (((_482 * min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_385 < (uint)65000), _385, 0)) + 0u))].SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(_356, _358), 0.0f))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_440 < (uint)65000), _440, 0)) + 0u))].SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2(_411, _413), 0.0f))).x))) * _480) + _345);
    _495 = (((_482 * min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_402 < (uint)65000), _402, 0)) + 0u))].SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2((_352 + -0.00019999999494757503f), _358), 0.0f))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_457 < (uint)65000), _457, 0)) + 0u))].SampleLevel(__0__4__0__0__g_staticBilinearWrap, float2((_355 + -0.00019999999494757503f), _413), 0.0f))).x))) * _480) + _346);
  }
  _496 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _509 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _496, 0)))).x) & 127)))) + 0.5f);
  } else {
    _509 = 1.0f;
  }
  _512 = (_localToneMappingParams.w > 0.0f);
  if (_512) {
    // RenoDX: >>> [Patch: ScreenEffectTonemapReplace] [Version: 1.12.02]
    // Description: HDR/PQ-output compile permutation (hash 0x9394B071) of the PostProcessUnderwater material, the water submersion screen effect that composites caustics and underwater refraction over the scene color. Like every member of this postprocess-material family it statically inlines the full vanilla tonemap pipeline and can own the visible final output while the player is submerged, so leaving its curve unreplaced would render the entire screen with the vanilla tonemapper (a flat/grey image versus the RenoDX look) for as long as the water effect draws. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, wash, user image adjust, colorblind matrix).
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_493, _494, _495));
    _772 = _rndx_tonemapped_color.x;
    _773 = _rndx_tonemapped_color.y;
    _774 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: ScreenEffectTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _780 = 1.0f - abs(_etcParams.w);
      _784 = saturate(_etcParams.w);  // [sem: expr_sat]
      _785 = (_780 * _772) + _784;
      _786 = (_780 * _773) + _784;
      _787 = (_780 * _774) + _784;
      if (_colorGradingParams.w > 0.0f) {
        _792 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _809 = (((max(0.0f, (1.0f - _785)) - _785) * _792) + _785);
        _810 = (((max(0.0f, (1.0f - _786)) - _786) * _792) + _786);
        _811 = (((max(0.0f, (1.0f - _787)) - _787) * _792) + _787);
      } else {
        _809 = _785;
        _810 = _786;
        _811 = _787;
      }
      _817 = _userImageAdjust.y + 1.0f;
      _821 = _userImageAdjust.x + 0.5f;
      _822 = ((_809 + -0.5f) * _817) + _821;
      _823 = ((_810 + -0.5f) * _817) + _821;
      _824 = ((_811 + -0.5f) * _817) + _821;
      _854 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _865 = exp2(log2(saturate(mad(_colorBlind0.z, _824, mad(_colorBlind0.y, _823, (_colorBlind0.x * _822))))) * _854);
      _866 = exp2(log2(saturate(mad(_colorBlind1.z, _824, mad(_colorBlind1.y, _823, (_colorBlind1.x * _822))))) * _854);
      _867 = exp2(log2(saturate(mad(_colorBlind2.z, _824, mad(_colorBlind2.y, _823, (_colorBlind2.x * _822))))) * _854);
    } else {
      _865 = _772;
      _866 = _773;
      _867 = _774;
    }
  } else {
    _865 = _493;
    _866 = _494;
    _867 = _495;
  }
  if (_etcParams.y > 1.0f) {
    _876 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _877 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _881 = saturate(1.0f - (dot(float2(_876, _877), float2(_876, _877)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _886 = (_881 * _865);
    _887 = (_881 * _866);
    _888 = (_881 * _867);
  } else {
    _886 = _865;
    _887 = _866;
    _888 = _867;
  }
  if (_512 && (_etcParams.z > 0.0f)) {
    _918 = select((_886 <= 0.0031308000907301903f), (_886 * 12.920000076293945f), (((pow(_886, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _919 = select((_887 <= 0.0031308000907301903f), (_887 * 12.920000076293945f), (((pow(_887, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _920 = select((_888 <= 0.0031308000907301903f), (_888 * 12.920000076293945f), (((pow(_888, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _918 = _886;
    _919 = _887;
    _920 = _888;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _925 = (float)((uint)_496);
    if (!(_925 < _viewDir.w)) {
      if (!(_925 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _934 = _918;
        _935 = _919;
        _936 = _920;
      } else {
        _934 = 0.0f;
        _935 = 0.0f;
        _936 = 0.0f;
      }
    } else {
      _934 = 0.0f;
      _935 = 0.0f;
      _936 = 0.0f;
    }
  } else {
    _934 = _918;
    _935 = _919;
    _936 = _920;
  }
  _946 = exp2(log2(_934 * 9.999999747378752e-05f) * 0.1593017578125f);
  _947 = exp2(log2(_935 * 9.999999747378752e-05f) * 0.1593017578125f);
  _948 = exp2(log2(_936 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_946 * 18.6875f) + 1.0f)) * ((_946 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_947 * 18.6875f) + 1.0f)) * ((_947 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_948 * 18.6875f) + 1.0f)) * ((_948 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _509;
  return SV_Target;
}
