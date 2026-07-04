struct PostProcessWeatherBlendStruct {
  float _blendRatio;
  float _enableBlend;
  uint _noiseTex;
  uint _berserkColor;
  uint _berserkEndColor;
  float _borderRatio;
  float _borderWidth;
  float _borderSmoothness;
  float _borderEdgeNoiseRatio;
  float2 _borderEdgeNoiseOffset;
  float2 _borderEdgeNoiseTile;
  uint _borderColor;
  uint _borderEdgeNoiseTexture;
  float _borderFlickerSpeed;
  float _borderFlickerIntensity;
  float2 _borderFlickerOpacityMinMax;
  float _contrast;
  float3 _saturation;
  float _chromaticAberrationRatio;
  float _chromaticAberrationShiftValue;
  float2 _chromaticAberrationShiftPosition;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t29, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t33, space36);

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
  float4 _viewProj[4] : packoffset(c010.x);
  float4 _viewProjNoJitter[4] : packoffset(c014.x);
  float4 _viewProjRelative[4] : packoffset(c018.x);
  float4 _viewProjRelativeNoJitter[4] : packoffset(c022.x);
  float4 _invViewProj[4] : packoffset(c026.x);
  float4 _invViewProjRelative[4] : packoffset(c030.x);
  float4 _invViewProjRelativeNoJitter[4] : packoffset(c034.x);
  float4 _viewProjRelativeOrtho[4] : packoffset(c038.x);
  float4 _sunDirection : packoffset(c042.x);
  float4 _moonDirection : packoffset(c043.x);
  float4 _moonRight : packoffset(c044.x);
  float4 _moonUp : packoffset(c045.x);
  float4 _ssaoRandomDirection[16] : packoffset(c046.x);
  float4 _view[4] : packoffset(c062.x);
  float4 _viewRelative[4] : packoffset(c066.x);
  float4 _viewRelativePrev[4] : packoffset(c070.x);
  float4 _proj[4] : packoffset(c074.x);
  float4 _projNoJitter[4] : packoffset(c078.x);
  float4 _viewPosPrev : packoffset(c082.x);
  float4 _viewProjNoJitterPrev[4] : packoffset(c083.x);
  float4 _viewProjRelativePrev[4] : packoffset(c087.x);
  float4 _viewProjRelativeNoJitterPrev[4] : packoffset(c091.x);
  float4 _invViewProjPrev[4] : packoffset(c095.x);
  float4 _invViewProjRelativePrev[4] : packoffset(c099.x);
  float4 _projToPrevProj[4] : packoffset(c103.x);
  float4 _projToPrevProjNoTranslation[4] : packoffset(c107.x);
  float4 _viewProjectionTexScale[4] : packoffset(c111.x);
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

struct BindlessParameters_PostProcessWeatherBlend {
  PostProcessWeatherBlendStruct BindlessParameters_PostProcessWeatherBlend;
};

typedef BindlessParameters_PostProcessWeatherBlend BindlessParameters_PostProcessWeatherBlend_t;
ConstantBuffer<BindlessParameters_PostProcessWeatherBlend_t> BindlessParameters_PostProcessWeatherBlend[] : register(b0, space100);

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
  int _22;
  float _30;
  int _31;
  float _39;
  float _445;
  float _446;
  float _447;
  float _448;
  float _463;
  float _668;
  float _669;
  float _670;
  float _763;
  float _764;
  float _765;
  float _819;
  float _820;
  float _821;
  float _840;
  float _841;
  float _842;
  float _872;
  float _873;
  float _874;
  float _888;
  float _889;
  float _890;
  float _48;
  float _61;
  int _69;
  int _77;
  float4 _84;
  float _87;
  float _88;
  float _89;
  float _91;
  bool _94;
  bool _95;
  bool _96;
  bool _97;
  float _106;
  float _108;
  float _110;
  float _116;
  int _119;
  int _127;
  float4 _134;
  float _136;
  float _138;
  float _150;
  float _153;
  int _162;
  int _170;
  float4 _177;
  float _187;
  float _200;
  float _203;
  float _205;
  float4 _211;
  float _221;
  float _222;
  float _223;
  float4 _252;
  float _262;
  float _263;
  float _264;
  float4 _296;
  float _306;
  float _307;
  float _308;
  float _336;
  float _337;
  float _338;
  float _339;
  int _349;
  int _357;
  float _360;
  float _363;
  float _365;
  float _390;
  float _391;
  float _392;
  float _402;
  float _403;
  float _404;
  float _412;
  float _416;
  float _423;
  float _424;
  float _425;
  float _428;
  float _431;
  uint _450;
  bool _466;
  float _472;
  float _521;
  float _522;
  float _523;
  float _525;
  float _532;
  float _533;
  float _534;
  float _553;
  float _554;
  float _555;
  float _556;
  float _557;
  float _558;
  float _559;
  float _560;
  float _561;
  float _607;
  float _608;
  float _609;
  float _610;
  float _611;
  float _612;
  float _613;
  float _630;
  float _631;
  float _632;
  float _633;
  float _639;
  float _642;
  float _649;
  float _650;
  float _651;
  float _680;
  float _705;
  float _706;
  float _707;
  float _726;
  float _727;
  float _728;
  float _734;
  float _738;
  float _739;
  float _740;
  float _741;
  float _746;
  float _771;
  float _775;
  float _776;
  float _777;
  float _778;
  float _808;
  float _830;
  float _831;
  float _835;
  float _879;
  float _900;
  float _901;
  float _902;
  _22 = WaveReadLaneFirst(_materialIndex);
  _30 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)(select(((uint)_22 < (uint)170000), _22, 0)) + 0u))].BindlessParameters_PostProcessWeatherBlend._blendRatio);
  _31 = WaveReadLaneFirst(_materialIndex);
  _39 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)(select(((uint)_31 < (uint)170000), _31, 0)) + 0u))].BindlessParameters_PostProcessWeatherBlend._enableBlend);
  if ((_30 < 0.0010000000474974513f) && (_39 < 0.0010000000474974513f)) {
    if (true) discard;
  }
  _48 = _screenSizeAndInvSize.x / _screenSizeAndInvSize.y;
  if (_30 > 0.0f) {
    _61 = saturate(_30 * 2.0f);  // [sem: expr_sat]
    _69 = WaveReadLaneFirst(_materialIndex);
    _77 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)(select(((uint)_69 < (uint)170000), _69, 0)) + 0u))].BindlessParameters_PostProcessWeatherBlend._noiseTex);
    _84 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_77 < (uint)65000), _77, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((TEXCOORD.x * 2.0f) * _48), ((_time.x * 0.019999999552965164f) + (TEXCOORD.y * 2.0f))));
    _87 = TEXCOORD.x + -0.5f;
    _88 = TEXCOORD.y + -0.5f;
    _89 = _48 * _87;
    _91 = atan(_88 / _89);
    _94 = (_89 < 0.0f);
    _95 = (_89 == 0.0f);
    _96 = (_88 >= 0.0f);
    _97 = (_88 < 0.0f);
    _106 = select((_96 && _95), 0.5f, select((_97 && _95), -0.5f, (select((_97 && _94), (_91 + -3.1415927410125732f), select((_96 && _94), (_91 + 3.1415927410125732f), _91)) * 0.31830987334251404f)));
    _108 = _88 * _88;
    _110 = sqrt((_89 * _89) + _108);
    _116 = _time.x * 0.20000000298023224f;
    _119 = WaveReadLaneFirst(_materialIndex);
    _127 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)(select(((uint)_119 < (uint)170000), _119, 0)) + 0u))].BindlessParameters_PostProcessWeatherBlend._noiseTex);
    _134 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_127 < (uint)65000), _127, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_48 * 2.0f) * _106) - _116), ((_110 * 0.5f) - _116)));
    _136 = 1.0f - _61;
    _138 = (_61 * 2.0f) + -1.0f;
  // [sem: expr_sat]
    _150 = saturate((_110 - ((_136 * 1.5f) * ((((_134.x + -1.0f) + ((_84.w - _134.x) * saturate(_138))) * _61) + 1.0f))) / _136);
    _153 = saturate(1.5f - abs(_138));  // [sem: expr_sat]
    _162 = WaveReadLaneFirst(_materialIndex);
    _170 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)(select(((uint)_162 < (uint)170000), _162, 0)) + 0u))].BindlessParameters_PostProcessWeatherBlend._noiseTex);
    _177 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_170 < (uint)65000), _170, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_106 * _48) * 6.0f) - (_time.x * 0.20000000298023224f)), ((_110 - _time.x) * 0.5f)));
    _187 = saturate(sqrt(_108 + (_87 * _87))) * (_153 * 4.0f);  // [sem: expr_sat]
    _200 = ((saturate(1.5f - abs((_150 * 2.0f) + -1.0f)) * 4.0f) * saturate((1.0f - _150) * 5.0f)) + _153;
    _203 = (_200 + (_187 * (_177.x + -0.5f))) * _87;
    _205 = (_200 + (_187 * (_177.y + -0.5f))) * _88;
  // [sem: _3__36__0__0__g_sceneColor_sample]
    _211 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - (_203 * 0.03333333507180214f)), (TEXCOORD.y - (_205 * 0.03333333507180214f))));
    _221 = (pow(_211.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _222 = (pow(_211.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _223 = (pow(_211.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  // [sem: _3__36__0__0__g_sceneColor_sample]
    _252 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - (_203 * 0.06666667014360428f)), (TEXCOORD.y - (_205 * 0.06666667014360428f))));
    _262 = (pow(_252.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _263 = (pow(_252.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _264 = (pow(_252.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  // [sem: _3__36__0__0__g_sceneColor_sample]
    _296 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - (_203 * 0.10000000149011612f)), (TEXCOORD.y - (_205 * 0.10000000149011612f))));
    _306 = (pow(_296.x, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _307 = (pow(_296.y, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _308 = (pow(_296.z, 0.012683313339948654f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _336 = ((exp2(log2(max(0.0f, (_262 + -0.8359375f)) / (18.8515625f - (_262 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_221 + -0.8359375f)) / (18.8515625f - (_221 * 18.6875f))) * 6.277394771575928f)) + exp2(log2(max(0.0f, (_306 + -0.8359375f)) / (18.8515625f - (_306 * 18.6875f))) * 6.277394771575928f)) * 2500.0f;
    _337 = ((exp2(log2(max(0.0f, (_263 + -0.8359375f)) / (18.8515625f - (_263 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_222 + -0.8359375f)) / (18.8515625f - (_222 * 18.6875f))) * 6.277394771575928f)) + exp2(log2(max(0.0f, (_307 + -0.8359375f)) / (18.8515625f - (_307 * 18.6875f))) * 6.277394771575928f)) * 2500.0f;
    _338 = ((exp2(log2(max(0.0f, (_264 + -0.8359375f)) / (18.8515625f - (_264 * 18.6875f))) * 6.277394771575928f) + exp2(log2(max(0.0f, (_223 + -0.8359375f)) / (18.8515625f - (_223 * 18.6875f))) * 6.277394771575928f)) + exp2(log2(max(0.0f, (_308 + -0.8359375f)) / (18.8515625f - (_308 * 18.6875f))) * 6.277394771575928f)) * 2500.0f;
    _339 = dot(float3(_336, _337, _338), float3(0.2125999927520752f, 0.7152000069618225f, 0.0722000002861023f));
    _349 = WaveReadLaneFirst(_materialIndex);
    _357 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)(select(((uint)_349 < (uint)170000), _349, 0)) + 0u))].BindlessParameters_PostProcessWeatherBlend._berserkColor);
    _360 = (float)((uint)((uint)(((uint)(_357) >> 16) & 255)));
    _363 = (float)((uint)((uint)(((uint)(_357) >> 8) & 255)));
    _365 = (float)((uint)((uint)(_357 & 255)));
    _390 = select(((_360 * 0.003921568859368563f) < 0.040449999272823334f), (_360 * 0.0003035269910469651f), exp2(log2((_360 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
    _391 = select(((_363 * 0.003921568859368563f) < 0.040449999272823334f), (_363 * 0.0003035269910469651f), exp2(log2((_363 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
    _392 = select(((_365 * 0.003921568859368563f) < 0.040449999272823334f), (_365 * 0.0003035269910469651f), exp2(log2((_365 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f));
    _402 = (((_390 + -1.0f) * 0.800000011920929f) + 1.0f) * _336;
    _403 = (((_391 + -1.0f) * 0.800000011920929f) + 1.0f) * _337;
    _404 = (((_392 + -1.0f) * 0.800000011920929f) + 1.0f) * _338;
  // [sem: expr_sat]
    _412 = saturate((((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x) + (_84.z * 0.02500000037252903f)) * 12.5f);
    _416 = (_412 * _412) * (3.0f - (_412 * 2.0f));
    _423 = (_416 * ((lerp(_336, _339, 0.800000011920929f)) - _402)) + _402;
    _424 = (_416 * ((lerp(_337, _339, 0.800000011920929f)) - _403)) + _403;
    _425 = (_416 * ((lerp(_338, _339, 0.800000011920929f)) - _404)) + _404;
    _428 = saturate((_30 + -0.5f) * 2.0f);  // [sem: expr_sat]
    _431 = max(0.0010000000474974513f, _exposure0.x);
    _445 = _150;
    _446 = ((((_390 / _431) - _423) * _428) + _423);
    _447 = ((((_391 / _431) - _424) * _428) + _424);
    _448 = ((((_392 / _431) - _425) * _428) + _425);
  } else {
    _445 = 0.0f;
    _446 = 0.0f;
    _447 = 0.0f;
    _448 = 0.0f;
  }
  _450 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
  // [sem: _445_sat]
    _463 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _450, 0)))).x) & 127)))) + 0.5f);
  } else {
    _463 = saturate(_445);  // [sem: _445_sat]
  }
  _466 = (_localToneMappingParams.w > 0.0f);
  if (_466) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_446, _447, _448));
    _726 = _rndx_tonemapped_color.x;
    _727 = _rndx_tonemapped_color.y;
    _728 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _734 = 1.0f - abs(_etcParams.w);
      _738 = saturate(_etcParams.w);  // [sem: expr_sat]
      _739 = (_734 * _726) + _738;
      _740 = (_734 * _727) + _738;
      _741 = (_734 * _728) + _738;
      if (_colorGradingParams.w > 0.0f) {
        _746 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _763 = (((max(0.0f, (1.0f - _739)) - _739) * _746) + _739);
        _764 = (((max(0.0f, (1.0f - _740)) - _740) * _746) + _740);
        _765 = (((max(0.0f, (1.0f - _741)) - _741) * _746) + _741);
      } else {
        _763 = _739;
        _764 = _740;
        _765 = _741;
      }
      _771 = _userImageAdjust.y + 1.0f;
      _775 = _userImageAdjust.x + 0.5f;
      _776 = ((_763 + -0.5f) * _771) + _775;
      _777 = ((_764 + -0.5f) * _771) + _775;
      _778 = ((_765 + -0.5f) * _771) + _775;
      _808 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _819 = exp2(log2(saturate(mad(_colorBlind0.z, _778, mad(_colorBlind0.y, _777, (_colorBlind0.x * _776))))) * _808);
      _820 = exp2(log2(saturate(mad(_colorBlind1.z, _778, mad(_colorBlind1.y, _777, (_colorBlind1.x * _776))))) * _808);
      _821 = exp2(log2(saturate(mad(_colorBlind2.z, _778, mad(_colorBlind2.y, _777, (_colorBlind2.x * _776))))) * _808);
    } else {
      _819 = _726;
      _820 = _727;
      _821 = _728;
    }
  } else {
    _819 = _446;
    _820 = _447;
    _821 = _448;
  }
  if (_etcParams.y > 1.0f) {
    _830 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _831 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _835 = saturate(1.0f - (dot(float2(_830, _831), float2(_830, _831)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _840 = (_835 * _819);
    _841 = (_835 * _820);
    _842 = (_835 * _821);
  } else {
    _840 = _819;
    _841 = _820;
    _842 = _821;
  }
  if (_466 && (_etcParams.z > 0.0f)) {
    _872 = select((_840 <= 0.0031308000907301903f), (_840 * 12.920000076293945f), (((pow(_840, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _873 = select((_841 <= 0.0031308000907301903f), (_841 * 12.920000076293945f), (((pow(_841, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _874 = select((_842 <= 0.0031308000907301903f), (_842 * 12.920000076293945f), (((pow(_842, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _872 = _840;
    _873 = _841;
    _874 = _842;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _879 = (float)((uint)_450);
    if (!(_879 < _viewDir.w)) {
      if (!(_879 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _888 = _872;
        _889 = _873;
        _890 = _874;
      } else {
        _888 = 0.0f;
        _889 = 0.0f;
        _890 = 0.0f;
      }
    } else {
      _888 = 0.0f;
      _889 = 0.0f;
      _890 = 0.0f;
    }
  } else {
    _888 = _872;
    _889 = _873;
    _890 = _874;
  }
  _900 = exp2(log2(_888 * 9.999999747378752e-05f) * 0.1593017578125f);
  _901 = exp2(log2(_889 * 9.999999747378752e-05f) * 0.1593017578125f);
  _902 = exp2(log2(_890 * 9.999999747378752e-05f) * 0.1593017578125f);
  SV_Target.x = exp2(log2((1.0f / ((_900 * 18.6875f) + 1.0f)) * ((_900 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_901 * 18.6875f) + 1.0f)) * ((_901 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_902 * 18.6875f) + 1.0f)) * ((_902 * 18.8515625f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _463;
  return SV_Target;
}
