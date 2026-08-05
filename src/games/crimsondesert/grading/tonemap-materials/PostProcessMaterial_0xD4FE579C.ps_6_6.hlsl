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

struct BindlessParameters_PostProcessAction {
  PostProcessActionStruct BindlessParameters_PostProcessAction;
};


Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

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
  column_major float4x4 _viewProj : packoffset(c010.x);
  column_major float4x4 _viewProjNoJitter : packoffset(c014.x);
  column_major float4x4 _viewProjRelative : packoffset(c018.x);
  column_major float4x4 _viewProjRelativeNoJitter : packoffset(c022.x);
  column_major float4x4 _invViewProj : packoffset(c026.x);
  column_major float4x4 _invViewProjRelative : packoffset(c030.x);
  column_major float4x4 _invViewProjRelativeNoJitter : packoffset(c034.x);
  column_major float4x4 _viewProjRelativeOrtho : packoffset(c038.x);
  float4 _sunDirection : packoffset(c042.x);
  float4 _moonDirection : packoffset(c043.x);
  float4 _moonRight : packoffset(c044.x);
  float4 _moonUp : packoffset(c045.x);
  float4 _ssaoRandomDirection[16] : packoffset(c046.x);
  column_major float4x4 _view : packoffset(c062.x);
  column_major float4x4 _viewRelative : packoffset(c066.x);
  column_major float4x4 _viewRelativePrev : packoffset(c070.x);
  column_major float4x4 _proj : packoffset(c074.x);
  column_major float4x4 _projNoJitter : packoffset(c078.x);
  float4 _viewPosPrev : packoffset(c082.x);
  column_major float4x4 _viewProjNoJitterPrev : packoffset(c083.x);
  column_major float4x4 _viewProjRelativePrev : packoffset(c087.x);
  column_major float4x4 _viewProjRelativeNoJitterPrev : packoffset(c091.x);
  column_major float4x4 _invViewProjPrev : packoffset(c095.x);
  column_major float4x4 _invViewProjRelativePrev : packoffset(c099.x);
  column_major float4x4 _projToPrevProj : packoffset(c103.x);
  column_major float4x4 _projToPrevProjNoTranslation : packoffset(c107.x);
  column_major float4x4 _viewProjectionTexScale : packoffset(c111.x);
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
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Reuses this shader's native SceneConstantBuffer time field, imports the shared tonemap declarations consumed by its PostProcessMaterial patches, and begins suppressing the duplicate native exposure declaration.
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

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
};

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

typedef BindlessParameters_PostProcessAction BindlessParameters_PostProcessAction_t;
ConstantBuffer<BindlessParameters_PostProcessAction_t> BindlessParameters_PostProcessAction[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

static const int _global_0[1];

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _25;
  float _31;
  float _34;
  float _37;
  float _46;
  float _55;
  float _64;
  float _68;
  int _71;
  float _79;
  int _82;
  float _90;
  int _93;
  float _101;
  bool _102;
  bool _103;
  float _150;
  float _151;
  float _152;
  float _153;
  float _205;
  float _206;
  float _207;
  int _287;
  float _288;
  float _289;
  float _290;
  float _291;
  float _292;
  float _293;
  float _404;
  float _405;
  float _406;
  float _542;
  float _543;
  float _544;
  float _558;
  float _763;
  float _764;
  float _765;
  float _858;
  float _859;
  float _860;
  float _914;
  float _915;
  float _916;
  float _935;
  float _936;
  float _937;
  float _967;
  float _968;
  float _969;
  float _983;
  float _984;
  float _985;
  float4 _108;
  float _115;
  float _118;
  float _121;
  int _157;
  float _165;
  int _168;
  float _176;
  float _180;
  float _182;
  float _183;
  float _194;
  int _210;
  float _218;
  int _223;
  float _231;
  float _235;
  float _239;
  float _242;
  float4 _245;
  float _251;
  float _254;
  float _257;
  float _258;
  float _297;
  float _301;
  float4 _304;
  float _310;
  float _313;
  float _316;
  float _317;
  float _327;
  float _337;
  float _347;
  int _348;
  float _352;
  float _353;
  float _354;
  int _357;
  float _365;
  int _368;
  float _376;
  float _378;
  float _379;
  float _390;
  float _392;
  int _409;
  float _417;
  float _421;
  float _425;
  float _427;
  float _429;
  float _431;
  float _432;
  int _435;
  float _443;
  int _446;
  float _454;
  float _455;
  float _463;
  float _470;
  float _477;
  int _481;
  int _489;
  float _492;
  float _495;
  float _497;
  float _501;
  uint _545;
  bool _561;
  float _567;
  float _586;
  float _602;
  float _618;
  float _619;
  float _623;
  float _626;
  float _629;
  float _636;
  float _643;
  float _650;
  float _651;
  float _652;
  float _653;
  float _654;
  float _655;
  float _656;
  float _672;
  float _688;
  float _704;
  float _705;
  float _706;
  float _707;
  float _708;
  float _725;
  float _726;
  float _727;
  float _728;
  float _731;
  float _734;
  float _738;
  float _742;
  float _746;
  float _766;
  float _778;
  float _790;
  float _802;
  float _809;
  float _816;
  float _823;
  float _829;
  float _830;
  float _832;
  float _834;
  float _836;
  float _841;
  float _862;
  float _864;
  float _867;
  float _870;
  float _873;
  float _879;
  float _921;
  float _924;
  float _930;
  float _972;
  float _989;
  float _993;
  float _997;
  int __loop_jump_target = -1;
  _25 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _31 = (pow(_25.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _34 = (pow(_25.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _37 = (pow(_25.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _46 = exp2(log2(max(0.0f, (_31 + -0.8359375f)) / (18.851562f - (_31 * 18.6875f))) * 6.277395f) * 10000.0f;
  _55 = exp2(log2(max(0.0f, (_34 + -0.8359375f)) / (18.851562f - (_34 * 18.6875f))) * 6.277395f) * 10000.0f;
  _64 = exp2(log2(max(0.0f, (_37 + -0.8359375f)) / (18.851562f - (_37 * 18.6875f))) * 6.277395f) * 10000.0f;
  _68 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _71 = WaveReadLaneFirst(_materialIndex);
  _79 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_71 < (uint)170000), _71, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._gaussianBlurIntensity);
  _82 = WaveReadLaneFirst(_materialIndex);
  _90 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_82 < (uint)170000), _82, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._gaussianBlurClampInnerRadius);
  _93 = WaveReadLaneFirst(_materialIndex);
  _101 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_93 < (uint)170000), _93, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderRatio);
  _102 = (_79 > 0.0f);
  _103 = (_101 > 0.0f);
  if (_102 || _103) {
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _108 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _115 = (pow(_108.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _118 = (pow(_108.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _121 = (pow(_108.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _150 = _108.w;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _151 = (exp2(log2(max(0.0f, (_121 + -0.8359375f)) / (18.851562f - (_121 * 18.6875f))) * 6.277395f) * 10000.0f);
    _152 = (exp2(log2(max(0.0f, (_118 + -0.8359375f)) / (18.851562f - (_118 * 18.6875f))) * 6.277395f) * 10000.0f);
    _153 = (exp2(log2(max(0.0f, (_115 + -0.8359375f)) / (18.851562f - (_115 * 18.6875f))) * 6.277395f) * 10000.0f);
  } else {
    _150 = 0.0f;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _151 = 0.0f;
    _152 = 0.0f;
    _153 = 0.0f;
  }
  if (_102) {
    _157 = WaveReadLaneFirst(_materialIndex);
    _165 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_157 < (uint)170000), _157, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._gaussianBlurClampHardness);
    _168 = WaveReadLaneFirst(_materialIndex);
    _176 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_168 < (uint)170000), _168, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._gaussianBlurPosition.x);
    _180 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_168 < (uint)170000), _168, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._gaussianBlurPosition.y);
    _182 = (TEXCOORD.x - _176) * _68;
    _183 = TEXCOORD.y - _180;
    // [sem: expr_sat]
    _194 = saturate((1.0f - (sqrt(dot(float2(_182, _183), float2(_182, _183))) * (1.0f / max(1e-05f, _90)))) * (1.0f / max((1.0f - _165), 1e-05f)));
    _205 = ((_194 * (_64 - _151)) + _151);
    _206 = ((_194 * (_55 - _152)) + _152);
    _207 = ((_194 * (_46 - _153)) + _153);
  } else {
    _205 = _64;
    _206 = _55;
    _207 = _46;
  }
  _210 = WaveReadLaneFirst(_materialIndex);
  _218 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_210 < (uint)170000), _210, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._radialBlurIntensity);
  if (_218 > 0.0f) {
    _223 = WaveReadLaneFirst(_materialIndex);
    _231 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_223 < (uint)170000), _223, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._radialBlurPosition.x);
    _235 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_223 < (uint)170000), _223, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._radialBlurPosition.y);
    _239 = (_srcTargetSizeAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x;
    _242 = (_srcTargetSizeAndInv.y * TEXCOORD.y) / _srcTargetSizeAndInv.y;
    _245 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_239, _242));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _251 = (pow(_245.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _254 = (pow(_245.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _257 = (pow(_245.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _258 = 32.0f / _218;
    _287 = 0;
    _288 = 1.0f;
    _289 = (exp2(log2(max(0.0f, (_257 + -0.8359375f)) / (18.851562f - (_257 * 18.6875f))) * 6.277395f) * 10000.0f);
    _290 = (exp2(log2(max(0.0f, (_254 + -0.8359375f)) / (18.851562f - (_254 * 18.6875f))) * 6.277395f) * 10000.0f);
    _291 = (exp2(log2(max(0.0f, (_251 + -0.8359375f)) / (18.851562f - (_251 * 18.6875f))) * 6.277395f) * 10000.0f);
    _292 = _242;
    _293 = _239;
    while(true) {
      _297 = (((_231 - _239) / _258) * 0.1f) + _293;
      _301 = (((_235 - _242) / _258) * 0.1f) + _292;
      _304 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_297, _301));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _310 = (pow(_304.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _313 = (pow(_304.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _316 = (pow(_304.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _317 = _288 * 9000.0f;
      _327 = (exp2(log2(max(0.0f, (_310 + -0.8359375f)) / (18.851562f - (_310 * 18.6875f))) * 6.277395f) * _317) + _291;
      _337 = (exp2(log2(max(0.0f, (_313 + -0.8359375f)) / (18.851562f - (_313 * 18.6875f))) * 6.277395f) * _317) + _290;
      _347 = (exp2(log2(max(0.0f, (_316 + -0.8359375f)) / (18.851562f - (_316 * 18.6875f))) * 6.277395f) * _317) + _289;
      _348 = (int)(_287) + (int)(1);
      if (!(_348 == 10)) {
        _392 = _288 * 0.99f;
        _287 = _348;
        _288 = _392;
        _289 = _347;
        _290 = _337;
        _291 = _327;
        _292 = _301;
        _293 = _297;
        continue;
      }
      while(true) {
        _352 = _327 * 0.1f;
        _353 = _337 * 0.1f;
        _354 = _347 * 0.1f;
        _357 = WaveReadLaneFirst(_materialIndex);
        _365 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_357 < (uint)170000), _357, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._radialBlurClampInnerRadius);
        _368 = WaveReadLaneFirst(_materialIndex);
        _376 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_368 < (uint)170000), _368, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._radialBlurClampHardness);
        _378 = (TEXCOORD.x - _231) * _68;
        _379 = TEXCOORD.y - _235;
        // [sem: expr_sat]
        _390 = saturate((1.0f - (sqrt(dot(float2(_378, _379), float2(_378, _379))) * (1.0f / max(1e-05f, _365)))) * (1.0f / max((1.0f - _376), 1e-05f)));
        if (!((_global_0[0]) == 0)) {
          continue;
        }
        _404 = ((_390 * (_205 - _354)) + _354);
        _405 = ((_390 * (_206 - _353)) + _353);
        _406 = ((_390 * (_207 - _352)) + _352);
        break;
      }
      break;
    }
  } else {
    _404 = _205;
    _405 = _206;
    _406 = _207;
  }
  _409 = WaveReadLaneFirst(_materialIndex);
  _417 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_409 < (uint)170000), _409, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._saturation.x);
  _421 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_409 < (uint)170000), _409, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._saturation.y);
  _425 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_409 < (uint)170000), _409, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._saturation.z);
  _427 = (1.0f - _417) * 0.3086f;
  _429 = (1.0f - _421) * 0.6094f;
  _431 = (1.0f - _425) * 0.082f;
  _432 = _427 * _406;
  _435 = WaveReadLaneFirst(_materialIndex);
  _443 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_435 < (uint)170000), _435, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._contrast);
  _446 = WaveReadLaneFirst(_materialIndex);
  _454 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_446 < (uint)170000), _446, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._contrast);
  _455 = max(_454, 0.0f);
  _463 = max(0.0f, (((mad(_404, _431, mad(_405, _429, ((_427 + _417) * _406))) + -0.5f) * _455) + 0.5f));
  _470 = max(0.0f, (((mad(_404, _431, mad(_405, (_429 + _421), _432)) + -0.5f) * _455) + 0.5f));
  _477 = max(0.0f, (((mad(_404, (_431 + _425), mad(_405, _429, _432)) + -0.5f) * _455) + 0.5f));
  if (_103) {
    _481 = WaveReadLaneFirst(_materialIndex);
    _489 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_481 < (uint)170000), _481, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderColor);
    _492 = (float)((uint)((uint)(((uint)((uint)(_489)) >> 16) & 255)));
    _495 = (float)((uint)((uint)(((uint)((uint)(_489)) >> 8) & 255)));
    _497 = (float)((uint)((uint)(_489 & 255)));
    _501 = 1.0f / max(0.001f, _exposure0.x);
    _542 = ((((select(((_497 * 0.003921569f) < 0.04045f), (_497 * 0.000303527f), exp2(log2((_497 * 0.003717127f) + 0.052132703f) * 2.4f)) * _501) - _477) * _150) + _477);
    _543 = ((((select(((_495 * 0.003921569f) < 0.04045f), (_495 * 0.000303527f), exp2(log2((_495 * 0.003717127f) + 0.052132703f) * 2.4f)) * _501) - _470) * _150) + _470);
    _544 = ((((select(((_492 * 0.003921569f) < 0.04045f), (_492 * 0.000303527f), exp2(log2((_492 * 0.003717127f) + 0.052132703f) * 2.4f)) * _501) - _463) * _150) + _463);
  } else {
    _542 = _477;
    _543 = _470;
    _544 = _463;
  }
  _545 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _558 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _545, 0)))).x) & 127)))) + 0.5f);
  } else {
    _558 = 1.0f;
  }
  _561 = (_localToneMappingParams.w > 0.0f);
  if (_561) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_544, _543, _542));
    _809 = _rndx_tonemapped_color.x;
    _816 = _rndx_tonemapped_color.y;
    _823 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _829 = 1.0f - abs(_etcParams.w);
      _830 = saturate(_etcParams.w);  // [sem: expr_sat]
      _832 = (_829 * _809) + _830;
      _834 = (_829 * _816) + _830;
      _836 = (_829 * _823) + _830;
      if (_colorGradingParams.w > 0.0f) {
        _841 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _858 = (((max(0.0f, (1.0f - _832)) - _832) * _841) + _832);
        _859 = (((max(0.0f, (1.0f - _834)) - _834) * _841) + _834);
        _860 = (((max(0.0f, (1.0f - _836)) - _836) * _841) + _836);
      } else {
        _858 = _832;
        _859 = _834;
        _860 = _836;
      }
      _862 = _userImageAdjust.y + 1.0f;
      _864 = _userImageAdjust.x + 0.5f;
      _867 = ((_858 + -0.5f) * _862) + _864;
      _870 = ((_859 + -0.5f) * _862) + _864;
      _873 = ((_860 + -0.5f) * _862) + _864;
      _879 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _914 = exp2(log2(saturate(mad(_colorBlind0.z, _873, mad(_colorBlind0.y, _870, (_colorBlind0.x * _867))))) * _879);
      _915 = exp2(log2(saturate(mad(_colorBlind1.z, _873, mad(_colorBlind1.y, _870, (_colorBlind1.x * _867))))) * _879);
      _916 = exp2(log2(saturate(mad(_colorBlind2.z, _873, mad(_colorBlind2.y, _870, (_colorBlind2.x * _867))))) * _879);
    } else {
      _914 = _809;
      _915 = _816;
      _916 = _823;
    }
  } else {
    _914 = _544;
    _915 = _543;
    _916 = _542;
  }
  if (_etcParams.y > 1.0f) {
    _921 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _924 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _930 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_921, _924), float2(_921, _924))));  // [sem: expr_sat]
    _935 = (_930 * _914);
    _936 = (_930 * _915);
    _937 = (_930 * _916);
  } else {
    _935 = _914;
    _936 = _915;
    _937 = _916;
  }
  if (_561 && (_etcParams.z > 0.0f)) {
    _967 = select((_935 <= 0.0031308f), (_935 * 12.92f), (((pow(_935, 0.41666666f)) * 1.055f) + -0.055f));
    _968 = select((_936 <= 0.0031308f), (_936 * 12.92f), (((pow(_936, 0.41666666f)) * 1.055f) + -0.055f));
    _969 = select((_937 <= 0.0031308f), (_937 * 12.92f), (((pow(_937, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _967 = _935;
    _968 = _936;
    _969 = _937;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _972 = (float)((uint)((uint)(_545)));
    if (!(_972 < _viewDir.w)) {
      if (!(!(_972 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _983 = 0.0f;
        _984 = 0.0f;
        _985 = 0.0f;
      } else {
        _983 = _967;
        _984 = _968;
        _985 = _969;
      }
    } else {
      _983 = 0.0f;
      _984 = 0.0f;
      _985 = 0.0f;
    }
  } else {
    _983 = _967;
    _984 = _968;
    _985 = _969;
  }
  _989 = exp2(log2(_983 * 0.0001f) * 0.15930176f);
  _993 = exp2(log2(_984 * 0.0001f) * 0.15930176f);
  _997 = exp2(log2(_985 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_989 * 18.6875f) + 1.0f)) * ((_989 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_993 * 18.6875f) + 1.0f)) * ((_993 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_997 * 18.6875f) + 1.0f)) * ((_997 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _558;
  return SV_Target;
}
