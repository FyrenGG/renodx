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

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t28, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

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
  float4 _42;
  int _46;
  float _54;
  int _55;
  float _63;
  float _343;
  float _344;
  float _345;
  float _359;
  float _564;
  float _565;
  float _566;
  float _659;
  float _660;
  float _661;
  float _715;
  float _716;
  float _717;
  float _736;
  float _737;
  float _738;
  float _768;
  float _769;
  float _770;
  float _784;
  float _785;
  float _786;
  int _74;
  int _82;
  float4 _89;
  float4 _96;
  float _107;
  float _108;
  float _109;
  float _110;
  float _111;
  float _113;
  bool _116;
  bool _117;
  bool _118;
  bool _119;
  float _128;
  float _132;
  int _147;
  int _155;
  float4 _162;
  float _167;
  float _170;
  float _171;
  int _190;
  int _198;
  float4 _205;
  int _207;
  int _215;
  float _218;
  float _221;
  float _223;
  float _253;
  float _259;
  float _266;
  float _267;
  float _268;
  int _269;
  int _277;
  float _280;
  float _283;
  float _285;
  float _315;
  float _320;
  float _327;
  float _328;
  float _329;
  float _332;
  uint _346;
  bool _362;
  float _368;
  float _417;
  float _418;
  float _419;
  float _421;
  float _428;
  float _429;
  float _430;
  float _449;
  float _450;
  float _451;
  float _452;
  float _453;
  float _454;
  float _455;
  float _456;
  float _457;
  float _503;
  float _504;
  float _505;
  float _506;
  float _507;
  float _508;
  float _509;
  float _526;
  float _527;
  float _528;
  float _529;
  float _535;
  float _538;
  float _545;
  float _546;
  float _547;
  float _576;
  float _601;
  float _602;
  float _603;
  float _622;
  float _623;
  float _624;
  float _630;
  float _634;
  float _635;
  float _636;
  float _637;
  float _642;
  float _667;
  float _671;
  float _672;
  float _673;
  float _674;
  float _704;
  float _726;
  float _727;
  float _731;
  float _775;
  _42 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _46 = WaveReadLaneFirst(_materialIndex);
  _54 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)(select(((uint)_46 < (uint)170000), _46, 0)) + 0u))].BindlessParameters_PostProcessWeatherBlend._blendRatio);
  _55 = WaveReadLaneFirst(_materialIndex);
  _63 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)(select(((uint)_55 < (uint)170000), _55, 0)) + 0u))].BindlessParameters_PostProcessWeatherBlend._enableBlend);
  if ((_54 >= 0.009999999776482582f) && (_63 > 0.009999999776482582f)) {
    _74 = WaveReadLaneFirst(_materialIndex);
    _82 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)(select(((uint)_74 < (uint)170000), _74, 0)) + 0u))].BindlessParameters_PostProcessWeatherBlend._noiseTex);
    _89 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_82 < (uint)65000), _82, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, ((_time.x * 0.20000000298023224f) + TEXCOORD.y)));
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _96 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _107 = ((_96.x - _42.x) * _96.w) + _42.x;
    _108 = ((_96.y - _42.y) * _96.w) + _42.y;
    _109 = ((_96.z - _42.z) * _96.w) + _42.z;
    _110 = TEXCOORD.x + -0.5f;
    _111 = TEXCOORD.y + -0.5f;
    _113 = atan(_111 / _110);
    _116 = (_110 < 0.0f);
    _117 = (_110 == 0.0f);
    _118 = (_111 >= 0.0f);
    _119 = (_111 < 0.0f);
    _128 = select((_117 && _118), 0.5f, select((_117 && _119), -0.5f, (select((_116 && _119), (_113 + -3.1415927410125732f), select((_116 && _118), (_113 + 3.1415927410125732f), _113)) * 0.31830987334251404f)));
    _132 = sqrt((_111 * _111) + (_110 * _110));
    _147 = WaveReadLaneFirst(_materialIndex);
    _155 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)(select(((uint)_147 < (uint)170000), _147, 0)) + 0u))].BindlessParameters_PostProcessWeatherBlend._noiseTex);
    _162 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_155 < (uint)65000), _155, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_time.x * -0.20000000298023224f) - ((_89.z + -0.5f) * 0.5f)) + (_128 * 15.0f)), (((_132 * 2.0f) - ((_89.w + -0.5f) * 0.5f)) - (_time.x * 1.5f))));
    _167 = (1.75f - saturate(_54 * 1.4285714626312256f)) * 0.5f;
    _170 = max((abs(_110) - _167), 0.0f);
    _171 = max((abs(_111) - _167), 0.0f);
    _190 = WaveReadLaneFirst(_materialIndex);
    _198 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)(select(((uint)_190 < (uint)170000), _190, 0)) + 0u))].BindlessParameters_PostProcessWeatherBlend._borderEdgeNoiseTexture);
    _205 = __0__7__0__0__g_bindlessTextures[((int)((uint)(select(((uint)_198 < (uint)65000), _198, 0)) + 0u))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_128 * 9.0f) + (_89.x * 0.05000000074505806f)) - (_162.x * 0.10000000149011612f)), ((_132 + (_89.y * 0.05000000074505806f)) - ((_time.x + _162.x) * 0.10000000149011612f))));
    _207 = WaveReadLaneFirst(_materialIndex);
    _215 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)(select(((uint)_207 < (uint)170000), _207, 0)) + 0u))].BindlessParameters_PostProcessWeatherBlend._berserkColor);
    _218 = (float)((uint)((uint)(((uint)(_215) >> 16) & 255)));
    _221 = (float)((uint)((uint)(((uint)(_215) >> 8) & 255)));
    _223 = (float)((uint)((uint)(_215 & 255)));
    _253 = max(0.0010000000474974513f, _exposure0.x);
    _259 = ((_205.y * _205.y) * saturate(sqrt((_171 * _171) + (_170 * _170)) * 6.666666507720947f)) * _205.y;
    _266 = (((select(((_218 * 0.003921568859368563f) < 0.040449999272823334f), (_218 * 0.0003035269910469651f), exp2(log2((_218 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) / _253) - _107) * _259) + _107;
    _267 = (((select(((_221 * 0.003921568859368563f) < 0.040449999272823334f), (_221 * 0.0003035269910469651f), exp2(log2((_221 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) / _253) - _108) * _259) + _108;
    _268 = (((select(((_223 * 0.003921568859368563f) < 0.040449999272823334f), (_223 * 0.0003035269910469651f), exp2(log2((_223 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) / _253) - _109) * _259) + _109;
    _269 = WaveReadLaneFirst(_materialIndex);
    _277 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)(select(((uint)_269 < (uint)170000), _269, 0)) + 0u))].BindlessParameters_PostProcessWeatherBlend._berserkEndColor);
    _280 = (float)((uint)((uint)(((uint)(_277) >> 16) & 255)));
    _283 = (float)((uint)((uint)(((uint)(_277) >> 8) & 255)));
    _285 = (float)((uint)((uint)(_277 & 255)));
    _315 = max(0.0010000000474974513f, _exposure0.x);
    _320 = select((_54 > 0.699999988079071f), 1.0f, 0.0f);
    _327 = (((select(((_280 * 0.003921568859368563f) < 0.040449999272823334f), (_280 * 0.0003035269910469651f), exp2(log2((_280 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) / _315) - _266) * _320) + _266;
    _328 = (((select(((_283 * 0.003921568859368563f) < 0.040449999272823334f), (_283 * 0.0003035269910469651f), exp2(log2((_283 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) / _315) - _267) * _320) + _267;
    _329 = (((select(((_285 * 0.003921568859368563f) < 0.040449999272823334f), (_285 * 0.0003035269910469651f), exp2(log2((_285 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f)) / _315) - _268) * _320) + _268;
    _332 = saturate((_54 + -0.800000011920929f) * 5.0f);  // [sem: expr_sat]
    _343 = (lerp(_327, _42.x, _332));  // [sem: blended]
    _344 = (lerp(_328, _42.y, _332));  // [sem: blended]
    _345 = (lerp(_329, _42.z, _332));  // [sem: blended]
  } else {
    _343 = _42.x;  // [sem: blended]
    _344 = _42.y;  // [sem: blended]
    _345 = _42.z;  // [sem: blended]
  }
  _346 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _359 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _346, 0)))).x) & 127)))) + 0.5f);
  } else {
    _359 = 1.0f;
  }
  _362 = (_localToneMappingParams.w > 0.0f);
  if (_362) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_343, _344, _345));
    _622 = _rndx_tonemapped_color.x;
    _623 = _rndx_tonemapped_color.y;
    _624 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _630 = 1.0f - abs(_etcParams.w);
      _634 = saturate(_etcParams.w);  // [sem: expr_sat]
      _635 = (_630 * _622) + _634;
      _636 = (_630 * _623) + _634;
      _637 = (_630 * _624) + _634;
      if (_colorGradingParams.w > 0.0f) {
        _642 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _659 = (((max(0.0f, (1.0f - _635)) - _635) * _642) + _635);
        _660 = (((max(0.0f, (1.0f - _636)) - _636) * _642) + _636);
        _661 = (((max(0.0f, (1.0f - _637)) - _637) * _642) + _637);
      } else {
        _659 = _635;
        _660 = _636;
        _661 = _637;
      }
      _667 = _userImageAdjust.y + 1.0f;
      _671 = _userImageAdjust.x + 0.5f;
      _672 = ((_659 + -0.5f) * _667) + _671;
      _673 = ((_660 + -0.5f) * _667) + _671;
      _674 = ((_661 + -0.5f) * _667) + _671;
      _704 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _715 = exp2(log2(saturate(mad(_colorBlind0.z, _674, mad(_colorBlind0.y, _673, (_colorBlind0.x * _672))))) * _704);
      _716 = exp2(log2(saturate(mad(_colorBlind1.z, _674, mad(_colorBlind1.y, _673, (_colorBlind1.x * _672))))) * _704);
      _717 = exp2(log2(saturate(mad(_colorBlind2.z, _674, mad(_colorBlind2.y, _673, (_colorBlind2.x * _672))))) * _704);
    } else {
      _715 = _622;
      _716 = _623;
      _717 = _624;
    }
  } else {
    _715 = _343;
    _716 = _344;
    _717 = _345;
  }
  if (_etcParams.y > 1.0f) {
    _726 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _727 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _731 = saturate(1.0f - (dot(float2(_726, _727), float2(_726, _727)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _736 = (_731 * _715);
    _737 = (_731 * _716);
    _738 = (_731 * _717);
  } else {
    _736 = _715;
    _737 = _716;
    _738 = _717;
  }
  if (_362 && (_etcParams.z > 0.0f)) {
    _768 = select((_736 <= 0.0031308000907301903f), (_736 * 12.920000076293945f), (((pow(_736, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _769 = select((_737 <= 0.0031308000907301903f), (_737 * 12.920000076293945f), (((pow(_737, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _770 = select((_738 <= 0.0031308000907301903f), (_738 * 12.920000076293945f), (((pow(_738, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _768 = _736;
    _769 = _737;
    _770 = _738;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _775 = (float)((uint)_346);
    if (!(_775 < _viewDir.w)) {
      if (!(_775 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _784 = _768;
        _785 = _769;
        _786 = _770;
      } else {
        _784 = 0.0f;
        _785 = 0.0f;
        _786 = 0.0f;
      }
    } else {
      _784 = 0.0f;
      _785 = 0.0f;
      _786 = 0.0f;
    }
  } else {
    _784 = _768;
    _785 = _769;
    _786 = _770;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_784, _785, _786), _sunDirection.y, _moonDirection.y);
    _784 = _rndx_final_color.x;
    _785 = _rndx_final_color.y;
    _786 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _784;
  SV_Target.y = _785;
  SV_Target.z = _786;
  SV_Target.w = _359;
  return SV_Target;
}
