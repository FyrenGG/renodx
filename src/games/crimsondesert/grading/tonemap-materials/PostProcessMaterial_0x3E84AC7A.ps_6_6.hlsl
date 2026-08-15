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


Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

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

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
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

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
};

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};

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
  int _274;
  float _282;
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
  _41 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_33 < (uint)170000), _33, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._gaussianBlurIntensity);
  _42 = WaveReadLaneFirst(_materialIndex);
  _50 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_42 < (uint)170000), _42, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._gaussianBlurClampInnerRadius);
  _51 = WaveReadLaneFirst(_materialIndex);
  _59 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_51 < (uint)170000), _51, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderRatio);
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
    _85 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_77 < (uint)170000), _77, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._gaussianBlurClampHardness);
    _86 = WaveReadLaneFirst(_materialIndex);
    _95 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_86 < (uint)170000), _86, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._gaussianBlurPosition.x);
    _96 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_86 < (uint)170000), _86, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._gaussianBlurPosition.y);
    _98 = (TEXCOORD.x - _95) * _32;
    _99 = TEXCOORD.y - _96;
    // [sem: expr_sat]
    _110 = saturate((1.0f - ((1.0f / max(1e-05f, _50)) * sqrt(dot(float2(_98, _99), float2(_98, _99))))) * (1.0f / max((1.0f - _85), 1e-05f)));
    _121 = ((_110 * (_25.x - _72)) + _72);
    _122 = ((_110 * (_25.y - _73)) + _73);
    _123 = ((_110 * (_25.z - _74)) + _74);
  } else {
    _121 = _25.x;
    _122 = _25.y;
    _123 = _25.z;
  }
  _129 = WaveReadLaneFirst(_materialIndex);
  _137 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_129 < (uint)170000), _129, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._radialBlurIntensity);
  if (_137 > 0.0f) {
    _140 = WaveReadLaneFirst(_materialIndex);
    _149 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_140 < (uint)170000), _140, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._radialBlurPosition.x);
    _150 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_140 < (uint)170000), _140, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._radialBlurPosition.y);
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
      _222 = _215 + (((_149 - _154) / _164) * 0.1f);
      _223 = _216 + (((_150 - _155) / _164) * 0.1f);
      _226 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_222, _223));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _230 = _220 * 0.9f;
      _234 = (_226.x * _230) + _217;
      _235 = (_226.y * _230) + _218;
      _236 = (_226.z * _230) + _219;
      _238 = (int)(_221) + (int)(1);
      if (!(_238 == 10)) {
        _215 = _222;
        _216 = _223;
        _217 = _234;
        _218 = _235;
        _219 = _236;
        _220 = (_220 * 0.99f);
        _221 = _238;
        continue;
      }
      while(true) {
        _170 = _234 * 0.1f;
        _171 = _235 * 0.1f;
        _172 = _236 * 0.1f;
        _173 = WaveReadLaneFirst(_materialIndex);
        _181 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_173 < (uint)170000), _173, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._radialBlurClampInnerRadius);
        _182 = WaveReadLaneFirst(_materialIndex);
        _190 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_182 < (uint)170000), _182, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._radialBlurClampHardness);
        _192 = (TEXCOORD.x - _149) * _32;
        _193 = TEXCOORD.y - _150;
        // [sem: expr_sat]
        _204 = saturate((1.0f - ((1.0f / max(1e-05f, _181)) * sqrt(dot(float2(_192, _193), float2(_192, _193))))) * (1.0f / max((1.0f - _190), 1e-05f)));
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
  _254 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_244 < (uint)170000), _244, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._saturation.x);
  _255 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_244 < (uint)170000), _244, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._saturation.y);
  _256 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_244 < (uint)170000), _244, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._saturation.z);
  _260 = (1.0f - _254) * 0.3086f;
  _262 = (1.0f - _255) * 0.6094f;
  _264 = (1.0f - _256) * 0.082f;
  _269 = _260 * _241;
  _274 = WaveReadLaneFirst(_materialIndex);
  _282 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_274 < (uint)170000), _274, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._contrast);
  _286 = WaveReadLaneFirst(_materialIndex);
  _294 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_286 < (uint)170000), _286, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._contrast);
  _295 = max(_294, 0.0f);
  _302 = max(0.0f, ((_295 * (mad(_243, _264, mad(_242, _262, ((_260 + _254) * _241))) + -0.5f)) + 0.5f));
  _303 = max(0.0f, ((_295 * (mad(_243, _264, mad(_242, (_262 + _255), _269)) + -0.5f)) + 0.5f));
  _304 = max(0.0f, ((_295 * (mad(_243, (_264 + _256), mad(_242, _262, _269)) + -0.5f)) + 0.5f));
  if (_61) {
    _306 = WaveReadLaneFirst(_materialIndex);
    _314 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_306 < (uint)170000), _306, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderColor);
    _317 = (float)((uint)((uint)(((uint)((uint)(_314)) >> 16) & 255)));
    _320 = (float)((uint)((uint)(((uint)((uint)(_314)) >> 8) & 255)));
    _322 = (float)((uint)((uint)(_314 & 255)));
    _353 = 1.0f / max(0.001f, _exposure0.x);
    _367 = ((((_353 * select(((_317 * 0.003921569f) < 0.04045f), (_317 * 0.000303527f), exp2(log2((_317 * 0.003717127f) + 0.052132703f) * 2.4f))) - _302) * _75) + _302);
    _368 = ((((_353 * select(((_320 * 0.003921569f) < 0.04045f), (_320 * 0.000303527f), exp2(log2((_320 * 0.003717127f) + 0.052132703f) * 2.4f))) - _303) * _75) + _303);
    _369 = ((((_353 * select(((_322 * 0.003921569f) < 0.04045f), (_322 * 0.000303527f), exp2(log2((_322 * 0.003717127f) + 0.052132703f) * 2.4f))) - _304) * _75) + _304);
  } else {
    _367 = _302;
    _368 = _303;
    _369 = _304;
  }
  _370 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _383 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _370, 0)))).x) & 127)))) + 0.5f);
  } else {
    _383 = 1.0f;
  }
  _386 = (_localToneMappingParams.w > 0.0f);
  if (_386) {
    _392 = _userImageAdjust.z * _exposure0.x;
    _441 = exp2(log2(max(0.0f, (((_392 * max(0.0f, (((_367 * 1.70505f) - (_368 * 0.62179f)) - (_369 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
    _442 = exp2(log2(max(0.0f, (((max(0.0f, (((_368 * 1.1408f) - (_367 * 0.13026f)) - (_369 * 0.01055f))) * _392) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
    _443 = exp2(log2(max(0.0f, (((max(0.0f, (((_367 * -0.024f) - (_368 * 0.12897f)) + (_369 * 1.15297f))) * _392) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
    _445 = dot(float3(_441, _442, _443), float3(0.212671f, 0.71516f, 0.072169f));
    _452 = ((_441 - _445) * _powerParams.w) + _445;
    _453 = ((_442 - _445) * _powerParams.w) + _445;
    _454 = ((_443 - _445) * _powerParams.w) + _445;
    _473 = min(max(log2(mad(_454, 0.079223745f, mad(_453, 0.0784336f, (_452 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _474 = min(max(log2(mad(_454, 0.07916613f, mad(_453, 0.87846863f, (_452 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _475 = min(max(log2(mad(_454, 0.879143f, mad(_453, 0.0784336f, (_452 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _476 = _473 * 0.060606062f;
    _477 = _474 * 0.060606062f;
    _478 = _475 * 0.060606062f;
    _479 = _476 * _476;
    _480 = _477 * _477;
    _481 = _478 * _478;
    _527 = min(0.0f, (-0.0f - (((_473 * 0.0072181816f) + ((_479 * 0.4298f) + (((_479 * _479) * ((31.96f - (_473 * 2.4327273f)) + (_479 * 15.5f))) - ((_473 * 0.41624245f) * _479)))) + -0.00232f)));
    _528 = min(0.0f, (-0.0f - (((_474 * 0.0072181816f) + ((_480 * 0.4298f) + (((_480 * _480) * ((31.96f - (_474 * 2.4327273f)) + (_480 * 15.5f))) - ((_474 * 0.41624245f) * _480)))) + -0.00232f)));
    _529 = min(0.0f, (-0.0f - (((_475 * 0.0072181816f) + ((_481 * 0.4298f) + (((_481 * _481) * ((31.96f - (_475 * 2.4327273f)) + (_481 * 15.5f))) - ((_475 * 0.41624245f) * _481)))) + -0.00232f)));
    _530 = -0.0f - _527;
    _531 = -0.0f - _528;
    _532 = -0.0f - _529;
    _533 = dot(float3(_530, _531, _532), float3(0.2126f, 0.7152f, 0.0722f));
    if (_nightToneParm == 1) {
      _550 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _551 = -0.79999995f / _550;
      _552 = -1.2f / _550;
      _553 = 0.20000005f / _550;
      _559 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _562 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _569 = (_551 + 1.4f) + (_562 * (-0.39999998f - _551));
      _570 = (_552 + 1.6f) + (_562 * (-0.6f - _552));
      _571 = (_553 + 0.9f) + (_562 * (0.5f - _553));
      _588 = (lerp(_570, 1.2f, _559));  // [sem: blended]
      _589 = (lerp(_569, 1.0f, _559));  // [sem: blended]
      _590 = (lerp(_571, 1.4f, _559));  // [sem: blended]
    } else {
      _588 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _589 = 1.0f;  // [sem: blended]
      _590 = 1.4f;  // [sem: blended]
    }
    _600 = 1.0f - _588;
    _625 = ((exp2(log2(((saturate((_527 * _527) * _530) * _600) + _588) * _530) * _589) - _533) * _590) + _533;
    _626 = ((exp2(log2(((saturate((_528 * _528) * _531) * _600) + _588) * _531) * _589) - _533) * _590) + _533;
    _627 = ((exp2(log2(((saturate((_529 * _529) * _532) * _600) + _588) * _532) * _589) - _533) * _590) + _533;
    _646 = saturate(exp2(log2(mad(_627, -0.09902974f, mad(_626, -0.09802088f, (_625 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
    _647 = saturate(exp2(log2(mad(_627, -0.098961174f, mad(_626, 1.1519032f, (_625 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _648 = saturate(exp2(log2(mad(_627, 1.1510737f, mad(_626, -0.09804345f, (_625 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
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
      _728 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
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
    _755 = saturate(1.0f - (dot(float2(_750, _751), float2(_750, _751)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _760 = (_755 * _739);
    _761 = (_755 * _740);
    _762 = (_755 * _741);
  } else {
    _760 = _739;
    _761 = _740;
    _762 = _741;
  }
  if (_386 && (_etcParams.z > 0.0f)) {
    _792 = select((_760 <= 0.0031308f), (_760 * 12.92f), (((pow(_760, 0.41666666f)) * 1.055f) + -0.055f));
    _793 = select((_761 <= 0.0031308f), (_761 * 12.92f), (((pow(_761, 0.41666666f)) * 1.055f) + -0.055f));
    _794 = select((_762 <= 0.0031308f), (_762 * 12.92f), (((pow(_762, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _792 = _760;
    _793 = _761;
    _794 = _762;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _799 = (float)((uint)((uint)(_370)));
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
  SV_Target.x = _808;
  SV_Target.y = _809;
  SV_Target.z = _810;
  SV_Target.w = _383;
  return SV_Target;
}
