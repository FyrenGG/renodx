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
  float _35;
  float _78;
  float _79;
  float _85;
  float _87;
  float _88;
  float _124;
  float _125;
  float _127;
  float4 _138;
  float _151;
  float _152;
  float _153;
  float _155;
  float _159;
  float _165;
  float _169;
  float _170;
  float _171;
  float _172;
  float _175;
  float _177;
  float _181;
  float _403;
  float _404;
  float _405;
  float _422;
  float _627;
  float _628;
  float _629;
  float _722;
  float _723;
  float _724;
  float _778;
  float _779;
  float _780;
  float _799;
  float _800;
  float _801;
  float _831;
  float _832;
  float _833;
  float _847;
  float _848;
  float _849;
  float _200;
  float _201;
  float _202;
  float _222;
  float4 _229;
  float4 _239;
  float _246;
  float _247;
  float _248;
  float _250;
  float _251;
  float _252;
  float _253;
  float _254;
  float _255;
  float _256;
  float _257;
  float _258;
  float _259;
  float _260;
  float _262;
  int _264;
  int _272;
  int _281;
  int _289;
  int _298;
  int _306;
  float _315;
  float _317;
  int _319;
  int _327;
  int _336;
  int _344;
  int _353;
  int _361;
  float _374;
  float _390;
  float _392;
  float _406;
  float _407;
  float _408;
  uint _409;
  bool _425;
  float _431;
  float _480;
  float _481;
  float _482;
  float _484;
  float _491;
  float _492;
  float _493;
  float _512;
  float _513;
  float _514;
  float _515;
  float _516;
  float _517;
  float _518;
  float _519;
  float _520;
  float _566;
  float _567;
  float _568;
  float _569;
  float _570;
  float _571;
  float _572;
  float _589;
  float _590;
  float _591;
  float _592;
  float _598;
  float _601;
  float _608;
  float _609;
  float _610;
  float _639;
  float _664;
  float _665;
  float _666;
  float _685;
  float _686;
  float _687;
  float _693;
  float _697;
  float _698;
  float _699;
  float _700;
  float _705;
  float _730;
  float _734;
  float _735;
  float _736;
  float _737;
  float _767;
  float _789;
  float _790;
  float _794;
  float _838;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
  _31 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
  _35 = TEXCOORD.x * 1.7777777910232544f;
  _78 = min(max((((((sin(((_35 + TEXCOORD.y) * 10.0f) - (_time.x * 1.350000023841858f)) * 0.3499999940395355f) + sin((_time.x * 2.0f) + (TEXCOORD.y * 18.0f))) + (cos((TEXCOORD.y * 7.0f) - (_time.x * 1.100000023841858f)) * 0.20000000298023224f)) * 0.0010000000474974513f) + TEXCOORD.x), 0.0010000000474974513f), 0.9990000128746033f);
  _79 = min(max((((((sin((_time.x * 1.2000000476837158f) + ((_35 - TEXCOORD.y) * 9.0f)) * 0.30000001192092896f) + cos((TEXCOORD.x * 28.44444465637207f) - (_time.x * 1.75f))) + (sin((_time.x * 1.0499999523162842f) + (TEXCOORD.x * 10.666666984558105f)) * 0.18000000715255737f)) * 0.0010000000474974513f) + TEXCOORD.y), 0.0010000000474974513f), 0.9990000128746033f);
  _85 = (_78 * 2.0f) + -1.0f;
  _87 = 1.0f - (_79 * 2.0f);
  _88 = max(1.0000000116860974e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_78, _79))).x));
  _124 = mad((_invViewProj[2].w), _88, mad((_invViewProj[1].w), _87, ((_invViewProj[0].w) * _85))) + (_invViewProj[3].w);
  _125 = (mad((_invViewProj[2].x), _88, mad((_invViewProj[1].x), _87, ((_invViewProj[0].x) * _85))) + (_invViewProj[3].x)) / _124;
  _127 = (mad((_invViewProj[2].z), _88, mad((_invViewProj[1].z), _87, ((_invViewProj[0].z) * _85))) + (_invViewProj[3].z)) / _124;
  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _138 = __3__36__0__0__g_gbufferNormal.Load(int3((int)(uint((_bufferSizeAndInvSize.x * _78) + -0.5f)), (int)(uint((_bufferSizeAndInvSize.y * _79) + -0.5f)), 0));
  _151 = (saturate(_138.x * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _152 = (saturate(_138.y * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _153 = (saturate(_138.z * 1.0009784698486328f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _155 = rsqrt(dot(float3(_151, _152, _153), float3(_151, _152, _153)));  // [sem: invLength]
  _159 = dot(float3((_155 * _151), (_155 * _152), (_153 * _155)), float3(0.0f, 1.0f, 0.0f));
  _165 = saturate(_seaBaseline - _viewPos.y);  // [sem: expr_sat]
  _169 = 1.0f - (_165 * 0.5f);
  _170 = 1.0f - (_165 * 0.3999999761581421f);
  _171 = 1.0f - (_165 * 0.30000001192092896f);
  _172 = ((mad((_invViewProj[2].y), _88, mad((_invViewProj[1].y), _87, ((_invViewProj[0].y) * _85))) + (_invViewProj[3].y)) / _124) + 0.10000000149011612f;
  _175 = _125 - _viewPos.x;
  _177 = _127 - _viewPos.z;
  _181 = (_waterDepthFieldSize.x + -1.0f) * 0.5f;
  bool __branch_chain_0;
  if (!((((abs(_175) - _181) < 0.0f) && (((1.0f - _waterDepthMinMax.z) + abs(_172 - _viewPos.y)) < 0.0f)) && ((abs(_177) - _181) < 0.0f))) {
    __branch_chain_0 = true;
  } else {
    _200 = _waterDepthFieldSize.w * _177;
    _201 = (_waterDepthFieldSize.z * _175) + 0.5f;
    _202 = _200 + 0.5f;
    if ((_202 >= 1.0f) || ((_202 <= 0.0f) || ((_201 <= 0.0f) || (_201 >= 1.0f)))) {
      __branch_chain_0 = true;
    } else {
      _222 = ((_waterDepthMinMax.z + _viewPos.y) - _waterDepthMinMax.x) - (((__3__36__0__0__g_waterDepthTop.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(_201, (0.5f - _200)), 0.0f)).x) * (_waterDepthMinMax.y - _waterDepthMinMax.x));
      if ((_159 <= 0.0f) || (!(_172 < _222))) {
        __branch_chain_0 = true;
      } else {
        __branch_chain_0 = false;
      }
    }
  }
  if (__branch_chain_0) {
    _229 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
    _403 = (_229.x * _169);
    _404 = (_229.y * _170);
    _405 = (_229.z * _171);
  } else {
    _239 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_78, _79));  // [sem: _3__36__0__0__g_sceneColor_sample]
    _246 = _125 * 0.10000000149011612f;
    _247 = _127 * 0.10000000149011612f;
    _248 = (_time.x * 0.03750000149011612f) + _246;
    _250 = _127 * -0.10000000149011612f;
    _251 = (_time.x * 0.05000000074505806f) - _246;
    _252 = ddx_coarse(_248);
    _253 = ddx_coarse(_247);
    _254 = ddy_coarse(_248);
    _255 = ddy_coarse(_247);
    _256 = ddx_coarse(_251);
    _257 = ddx_coarse(_250);
    _258 = ddy_coarse(_251);
    _259 = ddy_coarse(_250);
    _260 = _248 + 0.00019999999494757503f;
    _262 = _247 + -0.00019999999494757503f;
    _264 = WaveReadLaneFirst(_materialIndex);
    _272 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_264 < (uint)170000), _264, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _281 = WaveReadLaneFirst(_materialIndex);
    _289 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_281 < (uint)170000), _281, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _298 = WaveReadLaneFirst(_materialIndex);
    _306 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_298 < (uint)170000), _298, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _315 = _251 + 0.00019999999494757503f;
    _317 = _250 + -0.00019999999494757503f;
    _319 = WaveReadLaneFirst(_materialIndex);
    _327 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_319 < (uint)170000), _319, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _336 = WaveReadLaneFirst(_materialIndex);
    _344 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_336 < (uint)170000), _336, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _353 = WaveReadLaneFirst(_materialIndex);
    _361 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)(select(((uint)_353 < (uint)170000), _353, 0)) + 0u))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _374 = abs(_172 - _222);
    _390 = 1.0f - saturate((_nearFarProj.x / _88) * 0.019999999552965164f);
    _392 = ((saturate(_374 * 2.0f) * _159) * (1.0f - saturate(_374 * 0.03333333507180214f))) * (dot(float3(_239.x, _239.y, _239.z), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f)) * 10.0f);
    _403 = (((_392 * min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_272 < (uint)65000), _272, 0)) + 0u))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_260, (_247 + 0.00019999999494757503f)), float2(_252, _253), float2(_254, _255), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_327 < (uint)65000), _327, 0)) + 0u))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_315, (_250 + 0.00019999999494757503f)), float2(_256, _257), float2(_258, _259), int2(0, 0)))).x))) * _390) + (_239.x * _169));
    _404 = (((_392 * min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_289 < (uint)65000), _289, 0)) + 0u))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_260, _262), float2(_252, _253), float2(_254, _255), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_344 < (uint)65000), _344, 0)) + 0u))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_315, _317), float2(_256, _257), float2(_258, _259), int2(0, 0)))).x))) * _390) + (_239.y * _170));
    _405 = (((_392 * min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_306 < (uint)65000), _306, 0)) + 0u))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2((_248 + -0.00019999999494757503f), _262), float2(_252, _253), float2(_254, _255), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_361 < (uint)65000), _361, 0)) + 0u))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2((_251 + -0.00019999999494757503f), _317), float2(_256, _257), float2(_258, _259), int2(0, 0)))).x))) * _390) + (_239.z * _171));
  }
  _406 = _403 + _31.x;
  _407 = _404 + _31.y;
  _408 = _405 + _31.z;
  _409 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _422 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _409, 0)))).x) & 127)))) + 0.5f);
  } else {
    _422 = 1.0f;
  }
  _425 = (_localToneMappingParams.w > 0.0f);
  if (_425) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_406, _407, _408));
    _685 = _rndx_tonemapped_color.x;
    _686 = _rndx_tonemapped_color.y;
    _687 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _693 = 1.0f - abs(_etcParams.w);
      _697 = saturate(_etcParams.w);  // [sem: expr_sat]
      _698 = (_693 * _685) + _697;
      _699 = (_693 * _686) + _697;
      _700 = (_693 * _687) + _697;
      if (_colorGradingParams.w > 0.0f) {
        _705 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _722 = (((max(0.0f, (1.0f - _698)) - _698) * _705) + _698);
        _723 = (((max(0.0f, (1.0f - _699)) - _699) * _705) + _699);
        _724 = (((max(0.0f, (1.0f - _700)) - _700) * _705) + _700);
      } else {
        _722 = _698;
        _723 = _699;
        _724 = _700;
      }
      _730 = _userImageAdjust.y + 1.0f;
      _734 = _userImageAdjust.x + 0.5f;
      _735 = ((_722 + -0.5f) * _730) + _734;
      _736 = ((_723 + -0.5f) * _730) + _734;
      _737 = ((_724 + -0.5f) * _730) + _734;
      _767 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _778 = exp2(log2(saturate(mad(_colorBlind0.z, _737, mad(_colorBlind0.y, _736, (_colorBlind0.x * _735))))) * _767);
      _779 = exp2(log2(saturate(mad(_colorBlind1.z, _737, mad(_colorBlind1.y, _736, (_colorBlind1.x * _735))))) * _767);
      _780 = exp2(log2(saturate(mad(_colorBlind2.z, _737, mad(_colorBlind2.y, _736, (_colorBlind2.x * _735))))) * _767);
    } else {
      _778 = _685;
      _779 = _686;
      _780 = _687;
    }
  } else {
    _778 = _406;
    _779 = _407;
    _780 = _408;
  }
  if (_etcParams.y > 1.0f) {
    _789 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _790 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _794 = saturate(1.0f - (dot(float2(_789, _790), float2(_789, _790)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _799 = (_794 * _778);
    _800 = (_794 * _779);
    _801 = (_794 * _780);
  } else {
    _799 = _778;
    _800 = _779;
    _801 = _780;
  }
  if (_425 && (_etcParams.z > 0.0f)) {
    _831 = select((_799 <= 0.0031308000907301903f), (_799 * 12.920000076293945f), (((pow(_799, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _832 = select((_800 <= 0.0031308000907301903f), (_800 * 12.920000076293945f), (((pow(_800, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _833 = select((_801 <= 0.0031308000907301903f), (_801 * 12.920000076293945f), (((pow(_801, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _831 = _799;
    _832 = _800;
    _833 = _801;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _838 = (float)((uint)_409);
    if (!(_838 < _viewDir.w)) {
      if (!(_838 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _847 = _831;
        _848 = _832;
        _849 = _833;
      } else {
        _847 = 0.0f;
        _848 = 0.0f;
        _849 = 0.0f;
      }
    } else {
      _847 = 0.0f;
      _848 = 0.0f;
      _849 = 0.0f;
    }
  } else {
    _847 = _831;
    _848 = _832;
    _849 = _833;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_847, _848, _849), _sunDirection.y, _moonDirection.y);
    _847 = _rndx_final_color.x;
    _848 = _rndx_final_color.y;
    _849 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _847;
  SV_Target.y = _848;
  SV_Target.z = _849;
  SV_Target.w = _422;
  return SV_Target;
}
