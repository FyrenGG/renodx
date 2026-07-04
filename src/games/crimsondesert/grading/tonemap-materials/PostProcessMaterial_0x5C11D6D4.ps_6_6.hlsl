struct PostProcessUnderwaterStruct {
  uint _causticsTexture;
  float _lightThreshHold;
  float _shaftStretchLength;
  float _shaftIntensity;
  float _shaftDecay;
  float _blurStrength;
  float _blurDecay;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float> __3__36__0__0__g_waterDepthTop : register(t117, space36);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t28, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t29, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t97, space36);

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

cbuffer __3__35__0__0__WaterConstantBuffer : register(b2, space35) {
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

cbuffer __3__35__0__0__SeaConstantBuffer : register(b0, space35) {
  float _seaBaseline : packoffset(c000.x);
  float2 _seedPoint : packoffset(c000.y);
  float _dirDependency : packoffset(c000.w);
  float _choppyScale : packoffset(c001.x);
  float _cascadeSize1 : packoffset(c001.y);
  float _cascadeSize2 : packoffset(c001.z);
  float _cascadeSize3 : packoffset(c001.w);
  float _cascadeSize4 : packoffset(c002.x);
  float _cascadeAmplitude1 : packoffset(c002.y);
  float _cascadeAmplitude2 : packoffset(c002.z);
  float _cascadeAmplitude3 : packoffset(c002.w);
  float _cascadeAmplitude4 : packoffset(c003.x);
  float _seaExtinctionCoefficient : packoffset(c003.y);
  uint _scatteringAlbedo : packoffset(c003.z);
  float _underWaterMossRate : packoffset(c003.w);
  float _underWaterMossScale : packoffset(c004.x);
  float _waterRatio : packoffset(c004.y);
  float2 _seaPadding : packoffset(c004.z);
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
cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
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
  float4 _31;
  float _41;
  float _42;
  float _43;
  float _71;
  float _114;
  float _115;
  float _121;
  float _123;
  float _124;
  float _160;
  float _161;
  float _163;
  float4 _174;
  float _187;
  float _188;
  float _189;
  float _191;
  float _195;
  float _201;
  float _208;
  float _211;
  float _213;
  float _217;
  float _514;
  float _515;
  float _516;
  float _533;
  float _738;
  float _739;
  float _740;
  float _833;
  float _834;
  float _835;
  float _889;
  float _890;
  float _891;
  float _910;
  float _911;
  float _912;
  float _942;
  float _943;
  float _944;
  float _958;
  float _959;
  float _960;
  float _236;
  float _237;
  float _238;
  float _258;
  float4 _265;
  float _275;
  float _276;
  float _277;
  float4 _314;
  float _324;
  float _325;
  float _326;
  float _351;
  float _352;
  float _353;
  float _357;
  float _358;
  float _359;
  float _361;
  float _362;
  float _363;
  float _364;
  float _365;
  float _366;
  float _367;
  float _368;
  float _369;
  float _370;
  float _371;
  float _373;
  int _375;
  int _383;
  int _392;
  int _400;
  int _409;
  int _417;
  float _426;
  float _428;
  int _430;
  int _438;
  int _447;
  int _455;
  int _464;
  int _472;
  float _485;
  float _501;
  float _503;
  float _517;
  float _518;
  float _519;
  uint _520;
  bool _536;
  float _542;
  float _591;
  float _592;
  float _593;
  float _595;
  float _602;
  float _603;
  float _604;
  float _623;
  float _624;
  float _625;
  float _626;
  float _627;
  float _628;
  float _629;
  float _630;
  float _631;
  float _677;
  float _678;
  float _679;
  float _680;
  float _681;
  float _682;
  float _683;
  float _700;
  float _701;
  float _702;
  float _703;
  float _709;
  float _712;
  float _719;
  float _720;
  float _721;
  float _750;
  float _775;
  float _776;
  float _777;
  float _796;
  float _797;
  float _798;
  float _804;
  float _808;
  float _809;
  float _810;
  float _811;
  float _816;
  float _841;
  float _845;
  float _846;
  float _847;
  float _848;
  float _878;
  float _900;
  float _901;
  float _905;
  float _949;
  float _970;
  float _971;
  float _972;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
  _31 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
  _41 = (pow(_31.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  _42 = (pow(_31.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  _43 = (pow(_31.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  _71 = TEXCOORD.x * 1.7777777910232544f;
  _114 = min(max((((((sin(((_71 + TEXCOORD.y) * 10.0f) - (_time.x * 1.350000023841858f)) * 0.3499999940395355f) + sin((_time.x * 2.0f) + (TEXCOORD.y * 18.0f))) + (cos((TEXCOORD.y * 7.0f) - (_time.x * 1.100000023841858f)) * 0.20000000298023224f)) * 0.0010000000474974513f) + TEXCOORD.x), 0.0010000000474974513f), 0.9990000128746033f);
  _115 = min(max((((((sin((_time.x * 1.2000000476837158f) + ((_71 - TEXCOORD.y) * 9.0f)) * 0.30000001192092896f) + cos((TEXCOORD.x * 28.44444465637207f) - (_time.x * 1.75f))) + (sin((_time.x * 1.0499999523162842f) + (TEXCOORD.x * 10.666666984558105f)) * 0.18000000715255737f)) * 0.0010000000474974513f) + TEXCOORD.y), 0.0010000000474974513f), 0.9990000128746033f);
  _121 = (_114 * 2.0f) + -1.0f;
  _123 = 1.0f - (_115 * 2.0f);
  _124 = max(1.0000000116860974e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_114, _115))).x));
  _160 = mad((_invViewProj[2].w), _124, mad((_invViewProj[1].w), _123, ((_invViewProj[0].w) * _121))) + (_invViewProj[3].w);
  _161 = (mad((_invViewProj[2].x), _124, mad((_invViewProj[1].x), _123, ((_invViewProj[0].x) * _121))) + (_invViewProj[3].x)) / _160;
  _163 = (mad((_invViewProj[2].z), _124, mad((_invViewProj[1].z), _123, ((_invViewProj[0].z) * _121))) + (_invViewProj[3].z)) / _160;
  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _174 = __3__36__0__0__g_gbufferNormal.Load(int3((int)(uint((_bufferSizeAndInvSize.x * _114) + -0.5f)), (int)(uint((_bufferSizeAndInvSize.y * _115) + -0.5f)), 0));
  _187 = (saturate(_174.x * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _188 = (saturate(_174.y * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _189 = (saturate(_174.z * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _191 = rsqrt(dot(float3(_187, _188, _189), float3(_187, _188, _189)));  // [sem: invLength]
  _195 = dot(float3((_191 * _187), (_191 * _188), (_189 * _191)), float3(0.0f, 1.0f, 0.0f));
  _201 = saturate(_seaBaseline - _viewPos.y);  // [sem: expr_sat]
  _208 = ((mad((_invViewProj[2].y), _124, mad((_invViewProj[1].y), _123, ((_invViewProj[0].y) * _121))) + (_invViewProj[3].y)) / _160) + 0.10000000149011612f;
  _211 = _161 - _viewPos.x;
  _213 = _163 - _viewPos.z;
  _217 = (_waterDepthFieldSize.x + -1.0f) * 0.5f;
  bool __branch_chain_0;
  if (!((((abs(_211) - _217) < 0.0f) && (((1.0f - _waterDepthMinMax.z) + abs(_208 - _viewPos.y)) < 0.0f)) && ((abs(_213) - _217) < 0.0f))) {
    __branch_chain_0 = true;
  } else {
    _236 = _waterDepthFieldSize.w * _213;
    _237 = (_waterDepthFieldSize.z * _211) + 0.5f;
    _238 = _236 + 0.5f;
    if ((_238 >= 1.0f) || ((_238 <= 0.0f) || ((_237 <= 0.0f) || (_237 >= 1.0f)))) {
      __branch_chain_0 = true;
    } else {
      _258 = ((_waterDepthMinMax.z + _viewPos.y) - _waterDepthMinMax.x) - (((__3__36__0__0__g_waterDepthTop.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_237, (0.5f - _236)), 0.0f)).x) * (_waterDepthMinMax.y - _waterDepthMinMax.x));
      if ((_195 <= 0.0f) || (!(_208 < _258))) {
        __branch_chain_0 = true;
      } else {
        __branch_chain_0 = false;
      }
    }
  }
  if (__branch_chain_0) {
    _265 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
    _275 = (pow(_265.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _276 = (pow(_265.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _277 = (pow(_265.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _514 = (exp2(log2(max(0.0f, (_275 + -0.8359375f)) / (18.8515625f - (_275 * 18.6875f))) * 6.277394771575928f) * (10000.0f - (_201 * 5000.0f)));
    _515 = (exp2(log2(max(0.0f, (_276 + -0.8359375f)) / (18.8515625f - (_276 * 18.6875f))) * 6.277394771575928f) * (10000.0f - (_201 * 3999.999755859375f)));
    _516 = (exp2(log2(max(0.0f, (_277 + -0.8359375f)) / (18.8515625f - (_277 * 18.6875f))) * 6.277394771575928f) * (10000.0f - (_201 * 3000.0f)));
  } else {
    _314 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_114, _115));  // [sem: _3__36__0__0__g_sceneColor_sample]
    _324 = (pow(_314.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _325 = (pow(_314.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _326 = (pow(_314.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _351 = exp2(log2(max(0.0f, (_324 + -0.8359375f)) / (18.8515625f - (_324 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
    _352 = exp2(log2(max(0.0f, (_325 + -0.8359375f)) / (18.8515625f - (_325 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
    _353 = exp2(log2(max(0.0f, (_326 + -0.8359375f)) / (18.8515625f - (_326 * 18.6875f))) * 6.277394771575928f) * 10000.0f;
    _357 = _161 * 0.10000000149011612f;
    _358 = _163 * 0.10000000149011612f;
    _359 = (_time.x * 0.03750000149011612f) + _357;
    _361 = _163 * -0.10000000149011612f;
    _362 = (_time.x * 0.05000000074505806f) - _357;
    _363 = ddx_coarse(_359);
    _364 = ddx_coarse(_358);
    _365 = ddy_coarse(_359);
    _366 = ddy_coarse(_358);
    _367 = ddx_coarse(_362);
    _368 = ddx_coarse(_361);
    _369 = ddy_coarse(_362);
    _370 = ddy_coarse(_361);
    _371 = _359 + 0.00019999999494757503f;
    _373 = _358 + -0.00019999999494757503f;
    _375 = WaveReadLaneFirst(_materialIndex);
    _383 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_375 < (uint)170000), _375, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _392 = WaveReadLaneFirst(_materialIndex);
    _400 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_392 < (uint)170000), _392, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _409 = WaveReadLaneFirst(_materialIndex);
    _417 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_409 < (uint)170000), _409, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _426 = _362 + 0.00019999999494757503f;
    _428 = _361 + -0.00019999999494757503f;
    _430 = WaveReadLaneFirst(_materialIndex);
    _438 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_430 < (uint)170000), _430, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _447 = WaveReadLaneFirst(_materialIndex);
    _455 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_447 < (uint)170000), _447, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _464 = WaveReadLaneFirst(_materialIndex);
    _472 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_464 < (uint)170000), _464, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _485 = abs(_208 - _258);
    _501 = 1.0f - saturate((_nearFarProj.x / _124) * 0.019999999552965164f);
    _503 = ((saturate(_485 * 2.0f) * _195) * (1.0f - saturate(_485 * 0.03333333507180214f))) * (dot(float3(_351, _352, _353), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f)) * 10.0f);
    _514 = (((_503 * min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_383 < (uint)65000), _383, 0)) + 0u))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_371, (_358 + 0.00019999999494757503f)), float2(_363, _364), float2(_365, _366), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_438 < (uint)65000), _438, 0)) + 0u))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_426, (_361 + 0.00019999999494757503f)), float2(_367, _368), float2(_369, _370), int2(0, 0)))).x))) * _501) + (_351 * (1.0f - (_201 * 0.5f))));
    _515 = (((_503 * min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_400 < (uint)65000), _400, 0)) + 0u))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_371, _373), float2(_363, _364), float2(_365, _366), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_455 < (uint)65000), _455, 0)) + 0u))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_426, _428), float2(_367, _368), float2(_369, _370), int2(0, 0)))).x))) * _501) + (_352 * (1.0f - (_201 * 0.3999999761581421f))));
    _516 = (((_503 * min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_417 < (uint)65000), _417, 0)) + 0u))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2((_359 + -0.00019999999494757503f), _373), float2(_363, _364), float2(_365, _366), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_472 < (uint)65000), _472, 0)) + 0u))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2((_362 + -0.00019999999494757503f), _428), float2(_367, _368), float2(_369, _370), int2(0, 0)))).x))) * _501) + (_353 * (1.0f - (_201 * 0.30000001192092896f))));
  }
  _517 = _514 + (exp2(log2(max(0.0f, (_41 + -0.8359375f)) / (18.8515625f - (_41 * 18.6875f))) * 6.277394771575928f) * 10000.0f);
  _518 = _515 + (exp2(log2(max(0.0f, (_42 + -0.8359375f)) / (18.8515625f - (_42 * 18.6875f))) * 6.277394771575928f) * 10000.0f);
  _519 = _516 + (exp2(log2(max(0.0f, (_43 + -0.8359375f)) / (18.8515625f - (_43 * 18.6875f))) * 6.277394771575928f) * 10000.0f);
  _520 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _533 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _520, 0)))).x) & 127)))) + 0.5f);
  } else {
    _533 = 1.0f;
  }
  _536 = (_localToneMappingParams.w > 0.0f);
  if (_536) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_517, _518, _519));
    _796 = _rndx_tonemapped_color.x;
    _797 = _rndx_tonemapped_color.y;
    _798 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _804 = 1.0f - abs(_etcParams.w);
      _808 = saturate(_etcParams.w);  // [sem: expr_sat]
      _809 = (_804 * _796) + _808;
      _810 = (_804 * _797) + _808;
      _811 = (_804 * _798) + _808;
      if (_colorGradingParams.w > 0.0f) {
        _816 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _833 = (((max(0.0f, (1.0f - _809)) - _809) * _816) + _809);
        _834 = (((max(0.0f, (1.0f - _810)) - _810) * _816) + _810);
        _835 = (((max(0.0f, (1.0f - _811)) - _811) * _816) + _811);
      } else {
        _833 = _809;
        _834 = _810;
        _835 = _811;
      }
      _841 = _userImageAdjust.y + 1.0f;
      _845 = _userImageAdjust.x + 0.5f;
      _846 = ((_833 + -0.5f) * _841) + _845;
      _847 = ((_834 + -0.5f) * _841) + _845;
      _848 = ((_835 + -0.5f) * _841) + _845;
      _878 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _889 = exp2(log2(saturate(mad(_colorBlind0.z, _848, mad(_colorBlind0.y, _847, (_colorBlind0.x * _846))))) * _878);
      _890 = exp2(log2(saturate(mad(_colorBlind1.z, _848, mad(_colorBlind1.y, _847, (_colorBlind1.x * _846))))) * _878);
      _891 = exp2(log2(saturate(mad(_colorBlind2.z, _848, mad(_colorBlind2.y, _847, (_colorBlind2.x * _846))))) * _878);
    } else {
      _889 = _796;
      _890 = _797;
      _891 = _798;
    }
  } else {
    _889 = _517;
    _890 = _518;
    _891 = _519;
  }
  if (_etcParams.y > 1.0f) {
    _900 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _901 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _905 = saturate(1.0f - (dot(float2(_900, _901), float2(_900, _901)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _910 = (_905 * _889);
    _911 = (_905 * _890);
    _912 = (_905 * _891);
  } else {
    _910 = _889;
    _911 = _890;
    _912 = _891;
  }
  if (_536 && (_etcParams.z > 0.0f)) {
    _942 = select((_910 <= 0.0031308000907301903f), (_910 * 12.920000076293945f), (((pow(_910, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _943 = select((_911 <= 0.0031308000907301903f), (_911 * 12.920000076293945f), (((pow(_911, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _944 = select((_912 <= 0.0031308000907301903f), (_912 * 12.920000076293945f), (((pow(_912, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _942 = _910;
    _943 = _911;
    _944 = _912;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _949 = (float)((uint)_520);
    if (!(_949 < _viewDir.w)) {
      if (!(_949 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _958 = _942;
        _959 = _943;
        _960 = _944;
      } else {
        _958 = 0.0f;
        _959 = 0.0f;
        _960 = 0.0f;
      }
    } else {
      _958 = 0.0f;
      _959 = 0.0f;
      _960 = 0.0f;
    }
  } else {
    _958 = _942;
    _959 = _943;
    _960 = _944;
  }
  _970 = exp2(log2(_958 * 9.999999747378752e-05f) * 0.1593017578125f);
  _971 = exp2(log2(_959 * 9.999999747378752e-05f) * 0.1593017578125f);
  _972 = exp2(log2(_960 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_970 * 18.6875f) + 1.0f)) * ((_970 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_971 * 18.6875f) + 1.0f)) * ((_971 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_972 * 18.6875f) + 1.0f)) * ((_972 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _533;
  return SV_Target;
}
