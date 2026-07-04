struct PostProcessActionStruct {
  float _contrast;
  float3 _saturation;
  float _gaussianBlurIntensity;
  float2 _gaussianBlurPosition;
  float _gaussianBlurClampInnerRadius;
  float _gaussianBlurClampHardness;
  float2 _radialBlurPosition;
  float _radialBlurIntensity;
  float _radialBlurClampInnerRadius;
  float _radialBlurClampHardness;
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
};


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

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
};

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

struct BindlessParameters_PostProcessAction {
  PostProcessActionStruct BindlessParameters_PostProcessAction;
};

typedef BindlessParameters_PostProcessAction BindlessParameters_PostProcessAction_t;
ConstantBuffer<BindlessParameters_PostProcessAction_t> BindlessParameters_PostProcessAction[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _25;
  float _32;
  int _33;
  float _41;
  int _42;
  float _50;
  int _51;
  float _59;
  bool _60;
  bool _61;
  float _72;
  float _73;
  float _74;
  float _75;
  float _121;
  float _122;
  float _123;
  float _215;
  float _216;
  float _217;
  float _218;
  float _219;
  float _220;
  int _221;
  float _241;
  float _242;
  float _243;
  float _367;
  float _368;
  float _369;
  float _383;
  float _588;
  float _589;
  float _590;
  float _683;
  float _684;
  float _685;
  float _739;
  float _740;
  float _741;
  float _760;
  float _761;
  float _762;
  float _792;
  float _793;
  float _794;
  float _808;
  float _809;
  float _810;
  float4 _66;
  int _77;
  float _85;
  int _86;
  float _95;
  float _96;
  float _98;
  float _99;
  float _110;
  int _129;
  float _137;
  int _140;
  float _149;
  float _150;
  float _154;
  float _155;
  float4 _158;
  float _164;
  float _170;
  float _171;
  float _172;
  int _173;
  float _181;
  int _182;
  float _190;
  float _192;
  float _193;
  float _204;
  float _222;
  float _223;
  float4 _226;
  float _230;
  float _234;
  float _235;
  float _236;
  int _238;
  int _244;
  float _254;
  float _255;
  float _256;
  float _260;
  float _262;
  float _264;
  float _269;
  int _286;
  float _294;
  float _295;
  float _302;
  float _303;
  float _304;
  int _306;
  int _314;
  float _317;
  float _320;
  float _322;
  float _353;
  uint _370;
  bool _386;
  float _392;
  float _441;
  float _442;
  float _443;
  float _445;
  float _452;
  float _453;
  float _454;
  float _473;
  float _474;
  float _475;
  float _476;
  float _477;
  float _478;
  float _479;
  float _480;
  float _481;
  float _527;
  float _528;
  float _529;
  float _530;
  float _531;
  float _532;
  float _533;
  float _550;
  float _551;
  float _552;
  float _553;
  float _559;
  float _562;
  float _569;
  float _570;
  float _571;
  float _600;
  float _625;
  float _626;
  float _627;
  float _646;
  float _647;
  float _648;
  float _654;
  float _658;
  float _659;
  float _660;
  float _661;
  float _666;
  float _691;
  float _695;
  float _696;
  float _697;
  float _698;
  float _728;
  float _750;
  float _751;
  float _755;
  float _799;
  int __loop_jump_target = -1;
  _25 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _32 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _33 = WaveReadLaneFirst(_materialIndex);
  _41 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)(select(((uint)_33 < (uint)170000), _33, 0)) + 0u))].BindlessParameters_PostProcessAction._gaussianBlurIntensity);
  _42 = WaveReadLaneFirst(_materialIndex);
  _50 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)(select(((uint)_42 < (uint)170000), _42, 0)) + 0u))].BindlessParameters_PostProcessAction._gaussianBlurClampInnerRadius);
  _51 = WaveReadLaneFirst(_materialIndex);
  _59 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)(select(((uint)_51 < (uint)170000), _51, 0)) + 0u))].BindlessParameters_PostProcessAction._borderRatio);
  _60 = (_41 > 0.0f);
  _61 = (_59 > 0.0f);
  if (_60 || _61) {
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _66 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _72 = _66.x;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _73 = _66.y;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _74 = _66.z;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _75 = _66.w;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  } else {
    _72 = 0.0f;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _73 = 0.0f;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _74 = 0.0f;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _75 = 0.0f;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  }
  if (_60) {
    _77 = WaveReadLaneFirst(_materialIndex);
    _85 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)(select(((uint)_77 < (uint)170000), _77, 0)) + 0u))].BindlessParameters_PostProcessAction._gaussianBlurClampHardness);
    _86 = WaveReadLaneFirst(_materialIndex);
    _95 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)(select(((uint)_86 < (uint)170000), _86, 0)) + 0u))].BindlessParameters_PostProcessAction._gaussianBlurPosition.x);
    _96 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)(select(((uint)_86 < (uint)170000), _86, 0)) + 0u))].BindlessParameters_PostProcessAction._gaussianBlurPosition.y);
    _98 = (TEXCOORD.x - _95) * _32;
    _99 = TEXCOORD.y - _96;
  // [sem: expr_sat]
    _110 = saturate((1.0f - ((1.0f / max(9.999999747378752e-06f, _50)) * sqrt(dot(float2(_98, _99), float2(_98, _99))))) * (1.0f / max((1.0f - _85), 9.999999747378752e-06f)));
    _121 = ((_110 * (_25.x - _72)) + _72);
    _122 = ((_110 * (_25.y - _73)) + _73);
    _123 = ((_110 * (_25.z - _74)) + _74);
  } else {
    _121 = _25.x;
    _122 = _25.y;
    _123 = _25.z;
  }
  _129 = WaveReadLaneFirst(_materialIndex);
  _137 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)(select(((uint)_129 < (uint)170000), _129, 0)) + 0u))].BindlessParameters_PostProcessAction._radialBlurIntensity);
  if (_137 > 0.0f) {
    _140 = WaveReadLaneFirst(_materialIndex);
    _149 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)(select(((uint)_140 < (uint)170000), _140, 0)) + 0u))].BindlessParameters_PostProcessAction._radialBlurPosition.x);
    _150 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)(select(((uint)_140 < (uint)170000), _140, 0)) + 0u))].BindlessParameters_PostProcessAction._radialBlurPosition.y);
    _154 = (_srcTargetSizeAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x;
    _155 = (_srcTargetSizeAndInv.y * TEXCOORD.y) / _srcTargetSizeAndInv.y;
    _158 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_154, _155));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _164 = 32.0f / _137;
    _215 = _154;
    _216 = _155;
    _217 = _158.x;
    _218 = _158.y;
    _219 = _158.z;
    _220 = 1.0f;
    _221 = 0;
    while(true) {
      _222 = _215 + (((_149 - _154) / _164) * 0.10000000149011612f);
      _223 = _216 + (((_150 - _155) / _164) * 0.10000000149011612f);
      _226 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_222, _223));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _230 = _220 * 0.8999999761581421f;
      _234 = (_226.x * _230) + _217;
      _235 = (_226.y * _230) + _218;
      _236 = (_226.z * _230) + _219;
      _238 = _221 + 1;
      if (!(_238 == 10)) {
        _215 = _222;
        _216 = _223;
        _217 = _234;
        _218 = _235;
        _219 = _236;
        _220 = (_220 * 0.9900000095367432f);
        _221 = _238;
        continue;
      }
      while(true) {
        _170 = _234 * 0.10000000149011612f;
        _171 = _235 * 0.10000000149011612f;
        _172 = _236 * 0.10000000149011612f;
        _173 = WaveReadLaneFirst(_materialIndex);
        _181 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)(select(((uint)_173 < (uint)170000), _173, 0)) + 0u))].BindlessParameters_PostProcessAction._radialBlurClampInnerRadius);
        _182 = WaveReadLaneFirst(_materialIndex);
        _190 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)(select(((uint)_182 < (uint)170000), _182, 0)) + 0u))].BindlessParameters_PostProcessAction._radialBlurClampHardness);
        _192 = (TEXCOORD.x - _149) * _32;
        _193 = TEXCOORD.y - _150;
  // [sem: expr_sat]
        _204 = saturate((1.0f - ((1.0f / max(9.999999747378752e-06f, _181)) * sqrt(dot(float2(_192, _193), float2(_192, _193))))) * (1.0f / max((1.0f - _190), 9.999999747378752e-06f)));
        _241 = ((_204 * (_121 - _170)) + _170);
        _242 = ((_204 * (_122 - _171)) + _171);
        _243 = ((_204 * (_123 - _172)) + _172);
        break;
      }
      break;
    }
  } else {
    _241 = _121;
    _242 = _122;
    _243 = _123;
  }
  _244 = WaveReadLaneFirst(_materialIndex);
  _254 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)(select(((uint)_244 < (uint)170000), _244, 0)) + 0u))].BindlessParameters_PostProcessAction._saturation.x);
  _255 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)(select(((uint)_244 < (uint)170000), _244, 0)) + 0u))].BindlessParameters_PostProcessAction._saturation.y);
  _256 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)(select(((uint)_244 < (uint)170000), _244, 0)) + 0u))].BindlessParameters_PostProcessAction._saturation.z);
  _260 = (1.0f - _254) * 0.3086000084877014f;
  _262 = (1.0f - _255) * 0.6093999743461609f;
  _264 = (1.0f - _256) * 0.0820000022649765f;
  _269 = _260 * _241;
  _286 = WaveReadLaneFirst(_materialIndex);
  _294 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)(select(((uint)_286 < (uint)170000), _286, 0)) + 0u))].BindlessParameters_PostProcessAction._contrast);
  _295 = max(_294, 0.0f);
  _302 = max(0.0f, ((_295 * (mad(_243, _264, mad(_242, _262, ((_260 + _254) * _241))) + -0.5f)) + 0.5f));
  _303 = max(0.0f, ((_295 * (mad(_243, _264, mad(_242, (_262 + _255), _269)) + -0.5f)) + 0.5f));
  _304 = max(0.0f, ((_295 * (mad(_243, (_264 + _256), mad(_242, _262, _269)) + -0.5f)) + 0.5f));
  if (_61) {
    _306 = WaveReadLaneFirst(_materialIndex);
    _314 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)(select(((uint)_306 < (uint)170000), _306, 0)) + 0u))].BindlessParameters_PostProcessAction._borderColor);
    _317 = (float)((uint)((uint)(((uint)(_314) >> 16) & 255)));
    _320 = (float)((uint)((uint)(((uint)(_314) >> 8) & 255)));
    _322 = (float)((uint)((uint)(_314 & 255)));
    _353 = 1.0f / max(0.0010000000474974513f, _exposure0.x);
    _367 = ((((_353 * select(((_317 * 0.003921568859368563f) < 0.040449999272823334f), (_317 * 0.0003035269910469651f), exp2(log2((_317 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f))) - _302) * _75) + _302);
    _368 = ((((_353 * select(((_320 * 0.003921568859368563f) < 0.040449999272823334f), (_320 * 0.0003035269910469651f), exp2(log2((_320 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f))) - _303) * _75) + _303);
    _369 = ((((_353 * select(((_322 * 0.003921568859368563f) < 0.040449999272823334f), (_322 * 0.0003035269910469651f), exp2(log2((_322 * 0.0037171270232647657f) + 0.052132703363895416f) * 2.4000000953674316f))) - _304) * _75) + _304);
  } else {
    _367 = _302;
    _368 = _303;
    _369 = _304;
  }
  _370 = uint(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _383 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3((int)(uint(SV_Position.x)), _370, 0)))).x) & 127)))) + 0.5f);
  } else {
    _383 = 1.0f;
  }
  _386 = (_localToneMappingParams.w > 0.0f);
  if (_386) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_367, _368, _369));
    _646 = _rndx_tonemapped_color.x;
    _647 = _rndx_tonemapped_color.y;
    _648 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _654 = 1.0f - abs(_etcParams.w);
      _658 = saturate(_etcParams.w);  // [sem: expr_sat]
      _659 = (_654 * _646) + _658;
      _660 = (_654 * _647) + _658;
      _661 = (_654 * _648) + _658;
      if (_colorGradingParams.w > 0.0f) {
        _666 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _683 = (((max(0.0f, (1.0f - _659)) - _659) * _666) + _659);
        _684 = (((max(0.0f, (1.0f - _660)) - _660) * _666) + _660);
        _685 = (((max(0.0f, (1.0f - _661)) - _661) * _666) + _661);
      } else {
        _683 = _659;
        _684 = _660;
        _685 = _661;
      }
      _691 = _userImageAdjust.y + 1.0f;
      _695 = _userImageAdjust.x + 0.5f;
      _696 = ((_683 + -0.5f) * _691) + _695;
      _697 = ((_684 + -0.5f) * _691) + _695;
      _698 = ((_685 + -0.5f) * _691) + _695;
      _728 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
      _739 = exp2(log2(saturate(mad(_colorBlind0.z, _698, mad(_colorBlind0.y, _697, (_colorBlind0.x * _696))))) * _728);
      _740 = exp2(log2(saturate(mad(_colorBlind1.z, _698, mad(_colorBlind1.y, _697, (_colorBlind1.x * _696))))) * _728);
      _741 = exp2(log2(saturate(mad(_colorBlind2.z, _698, mad(_colorBlind2.y, _697, (_colorBlind2.x * _696))))) * _728);
    } else {
      _739 = _646;
      _740 = _647;
      _741 = _648;
    }
  } else {
    _739 = _367;
    _740 = _368;
    _741 = _369;
  }
  if (_etcParams.y > 1.0f) {
    _750 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _751 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _755 = saturate(1.0f - (dot(float2(_750, _751), float2(_750, _751)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _760 = (_755 * _739);
    _761 = (_755 * _740);
    _762 = (_755 * _741);
  } else {
    _760 = _739;
    _761 = _740;
    _762 = _741;
  }
  if (_386 && (_etcParams.z > 0.0f)) {
    _792 = select((_760 <= 0.0031308000907301903f), (_760 * 12.920000076293945f), (((pow(_760, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _793 = select((_761 <= 0.0031308000907301903f), (_761 * 12.920000076293945f), (((pow(_761, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
    _794 = select((_762 <= 0.0031308000907301903f), (_762 * 12.920000076293945f), (((pow(_762, 0.4166666567325592f)) * 1.0549999475479126f) + -0.054999999701976776f));
  } else {
    _792 = _760;
    _793 = _761;
    _794 = _762;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _799 = (float)((uint)_370);
    if (!(_799 < _viewDir.w)) {
      if (!(_799 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _808 = _792;
        _809 = _793;
        _810 = _794;
      } else {
        _808 = 0.0f;
        _809 = 0.0f;
        _810 = 0.0f;
      }
    } else {
      _808 = 0.0f;
      _809 = 0.0f;
      _810 = 0.0f;
    }
  } else {
    _808 = _792;
    _809 = _793;
    _810 = _794;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_808, _809, _810), _sunDirection.y, _moonDirection.y);
    _808 = _rndx_final_color.x;
    _809 = _rndx_final_color.y;
    _810 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _808;
  SV_Target.y = _809;
  SV_Target.z = _810;
  SV_Target.w = _383;
  return SV_Target;
}
