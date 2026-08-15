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
  float _35;
  float _36;
  float _37;
  float _62;
  float _63;
  float _64;
  float _68;
  int _69;
  float _77;
  int _78;
  float _86;
  int _87;
  float _95;
  bool _96;
  bool _97;
  float _144;
  float _145;
  float _146;
  float _147;
  float _193;
  float _194;
  float _195;
  float _323;
  float _324;
  float _325;
  float _326;
  float _327;
  float _328;
  int _329;
  float _382;
  float _383;
  float _384;
  float _508;
  float _509;
  float _510;
  float _524;
  float _729;
  float _730;
  float _731;
  float _824;
  float _825;
  float _826;
  float _880;
  float _881;
  float _882;
  float _901;
  float _902;
  float _903;
  float _933;
  float _934;
  float _935;
  float _949;
  float _950;
  float _951;
  float4 _102;
  float _113;
  float _114;
  float _115;
  int _149;
  float _157;
  int _158;
  float _167;
  float _168;
  float _170;
  float _171;
  float _182;
  int _201;
  float _209;
  int _212;
  float _221;
  float _222;
  float _226;
  float _227;
  float4 _230;
  float _240;
  float _241;
  float _242;
  float _272;
  float _278;
  float _279;
  float _280;
  int _281;
  float _289;
  int _290;
  float _298;
  float _300;
  float _301;
  float _312;
  float _330;
  float _331;
  float4 _334;
  float _344;
  float _345;
  float _346;
  float _371;
  float _375;
  float _376;
  float _377;
  int _379;
  int _385;
  float _395;
  float _396;
  float _397;
  float _401;
  float _403;
  float _405;
  float _410;
  int _415;
  float _423;
  int _427;
  float _435;
  float _436;
  float _443;
  float _444;
  float _445;
  int _447;
  int _455;
  float _458;
  float _461;
  float _463;
  float _494;
  uint _511;
  bool _527;
  float _533;
  float _582;
  float _583;
  float _584;
  float _586;
  float _593;
  float _594;
  float _595;
  float _614;
  float _615;
  float _616;
  float _617;
  float _618;
  float _619;
  float _620;
  float _621;
  float _622;
  float _668;
  float _669;
  float _670;
  float _671;
  float _672;
  float _673;
  float _674;
  float _691;
  float _692;
  float _693;
  float _694;
  float _700;
  float _703;
  float _710;
  float _711;
  float _712;
  float _741;
  float _766;
  float _767;
  float _768;
  float _787;
  float _788;
  float _789;
  float _795;
  float _799;
  float _800;
  float _801;
  float _802;
  float _807;
  float _832;
  float _836;
  float _837;
  float _838;
  float _839;
  float _869;
  float _891;
  float _892;
  float _896;
  float _940;
  float _961;
  float _962;
  float _963;
  int __loop_jump_target = -1;
  _25 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _35 = (pow(_25.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _36 = (pow(_25.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _37 = (pow(_25.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _62 = exp2(log2(max(0.0f, (_35 + -0.8359375f)) / (18.851562f - (_35 * 18.6875f))) * 6.277395f) * 10000.0f;
  _63 = exp2(log2(max(0.0f, (_36 + -0.8359375f)) / (18.851562f - (_36 * 18.6875f))) * 6.277395f) * 10000.0f;
  _64 = exp2(log2(max(0.0f, (_37 + -0.8359375f)) / (18.851562f - (_37 * 18.6875f))) * 6.277395f) * 10000.0f;
  _68 = _srcTargetSizeAndInv.x / _srcTargetSizeAndInv.y;
  _69 = WaveReadLaneFirst(_materialIndex);
  _77 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_69 < (uint)170000), _69, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._gaussianBlurIntensity);
  _78 = WaveReadLaneFirst(_materialIndex);
  _86 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_78 < (uint)170000), _78, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._gaussianBlurClampInnerRadius);
  _87 = WaveReadLaneFirst(_materialIndex);
  _95 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_87 < (uint)170000), _87, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderRatio);
  _96 = (_77 > 0.0f);
  _97 = (_95 > 0.0f);
  if (_96 || _97) {
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _102 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _113 = (pow(_102.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _114 = (pow(_102.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _115 = (pow(_102.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _144 = (exp2(log2(max(0.0f, (_113 + -0.8359375f)) / (18.851562f - (_113 * 18.6875f))) * 6.277395f) * 10000.0f);
    _145 = (exp2(log2(max(0.0f, (_114 + -0.8359375f)) / (18.851562f - (_114 * 18.6875f))) * 6.277395f) * 10000.0f);
    _146 = (exp2(log2(max(0.0f, (_115 + -0.8359375f)) / (18.851562f - (_115 * 18.6875f))) * 6.277395f) * 10000.0f);
    _147 = _102.w;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  } else {
    _144 = 0.0f;
    _145 = 0.0f;
    _146 = 0.0f;
    _147 = 0.0f;  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  }
  if (_96) {
    _149 = WaveReadLaneFirst(_materialIndex);
    _157 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_149 < (uint)170000), _149, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._gaussianBlurClampHardness);
    _158 = WaveReadLaneFirst(_materialIndex);
    _167 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_158 < (uint)170000), _158, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._gaussianBlurPosition.x);
    _168 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_158 < (uint)170000), _158, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._gaussianBlurPosition.y);
    _170 = (TEXCOORD.x - _167) * _68;
    _171 = TEXCOORD.y - _168;
    // [sem: expr_sat]
    _182 = saturate((1.0f - ((1.0f / max(1e-05f, _86)) * sqrt(dot(float2(_170, _171), float2(_170, _171))))) * (1.0f / max((1.0f - _157), 1e-05f)));
    _193 = ((_182 * (_62 - _144)) + _144);
    _194 = ((_182 * (_63 - _145)) + _145);
    _195 = ((_182 * (_64 - _146)) + _146);
  } else {
    _193 = _62;
    _194 = _63;
    _195 = _64;
  }
  _201 = WaveReadLaneFirst(_materialIndex);
  _209 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_201 < (uint)170000), _201, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._radialBlurIntensity);
  if (_209 > 0.0f) {
    _212 = WaveReadLaneFirst(_materialIndex);
    _221 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_212 < (uint)170000), _212, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._radialBlurPosition.x);
    _222 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_212 < (uint)170000), _212, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._radialBlurPosition.y);
    _226 = (_srcTargetSizeAndInv.x * TEXCOORD.x) / _srcTargetSizeAndInv.x;
    _227 = (_srcTargetSizeAndInv.y * TEXCOORD.y) / _srcTargetSizeAndInv.y;
    _230 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_226, _227));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _240 = (pow(_230.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _241 = (pow(_230.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _242 = (pow(_230.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
    _272 = 32.0f / _209;
    _323 = _226;
    _324 = _227;
    _325 = (exp2(log2(max(0.0f, (_240 + -0.8359375f)) / (18.851562f - (_240 * 18.6875f))) * 6.277395f) * 10000.0f);
    _326 = (exp2(log2(max(0.0f, (_241 + -0.8359375f)) / (18.851562f - (_241 * 18.6875f))) * 6.277395f) * 10000.0f);
    _327 = (exp2(log2(max(0.0f, (_242 + -0.8359375f)) / (18.851562f - (_242 * 18.6875f))) * 6.277395f) * 10000.0f);
    _328 = 1.0f;
    _329 = 0;
    while(true) {
      _330 = _323 + (((_221 - _226) / _272) * 0.1f);
      _331 = _324 + (((_222 - _227) / _272) * 0.1f);
      _334 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_330, _331));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _344 = (pow(_334.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _345 = (pow(_334.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _346 = (pow(_334.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
      _371 = _328 * 9000.0f;
      _375 = (exp2(log2(max(0.0f, (_344 + -0.8359375f)) / (18.851562f - (_344 * 18.6875f))) * 6.277395f) * _371) + _325;
      _376 = (exp2(log2(max(0.0f, (_345 + -0.8359375f)) / (18.851562f - (_345 * 18.6875f))) * 6.277395f) * _371) + _326;
      _377 = (exp2(log2(max(0.0f, (_346 + -0.8359375f)) / (18.851562f - (_346 * 18.6875f))) * 6.277395f) * _371) + _327;
      _379 = (int)(_329) + (int)(1);
      if (!(_379 == 10)) {
        _323 = _330;
        _324 = _331;
        _325 = _375;
        _326 = _376;
        _327 = _377;
        _328 = (_328 * 0.99f);
        _329 = _379;
        continue;
      }
      while(true) {
        _278 = _375 * 0.1f;
        _279 = _376 * 0.1f;
        _280 = _377 * 0.1f;
        _281 = WaveReadLaneFirst(_materialIndex);
        _289 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_281 < (uint)170000), _281, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._radialBlurClampInnerRadius);
        _290 = WaveReadLaneFirst(_materialIndex);
        _298 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_290 < (uint)170000), _290, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._radialBlurClampHardness);
        _300 = (TEXCOORD.x - _221) * _68;
        _301 = TEXCOORD.y - _222;
        // [sem: expr_sat]
        _312 = saturate((1.0f - ((1.0f / max(1e-05f, _289)) * sqrt(dot(float2(_300, _301), float2(_300, _301))))) * (1.0f / max((1.0f - _298), 1e-05f)));
        _382 = ((_312 * (_193 - _278)) + _278);
        _383 = ((_312 * (_194 - _279)) + _279);
        _384 = ((_312 * (_195 - _280)) + _280);
        break;
      }
      break;
    }
  } else {
    _382 = _193;
    _383 = _194;
    _384 = _195;
  }
  _385 = WaveReadLaneFirst(_materialIndex);
  _395 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_385 < (uint)170000), _385, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._saturation.x);
  _396 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_385 < (uint)170000), _385, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._saturation.y);
  _397 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_385 < (uint)170000), _385, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._saturation.z);
  _401 = (1.0f - _395) * 0.3086f;
  _403 = (1.0f - _396) * 0.6094f;
  _405 = (1.0f - _397) * 0.082f;
  _410 = _401 * _382;
  _415 = WaveReadLaneFirst(_materialIndex);
  _423 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_415 < (uint)170000), _415, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._contrast);
  _427 = WaveReadLaneFirst(_materialIndex);
  _435 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_427 < (uint)170000), _427, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._contrast);
  _436 = max(_435, 0.0f);
  _443 = max(0.0f, ((_436 * (mad(_384, _405, mad(_383, _403, ((_401 + _395) * _382))) + -0.5f)) + 0.5f));
  _444 = max(0.0f, ((_436 * (mad(_384, _405, mad(_383, (_403 + _396), _410)) + -0.5f)) + 0.5f));
  _445 = max(0.0f, ((_436 * (mad(_384, (_405 + _397), mad(_383, _403, _410)) + -0.5f)) + 0.5f));
  if (_97) {
    _447 = WaveReadLaneFirst(_materialIndex);
    _455 = WaveReadLaneFirst(BindlessParameters_PostProcessAction[((int)((uint)((uint)(select(((uint)_447 < (uint)170000), _447, 0))) + (uint)(0)))].BindlessParameters_PostProcessAction._borderColor);
    _458 = (float)((uint)((uint)(((uint)((uint)(_455)) >> 16) & 255)));
    _461 = (float)((uint)((uint)(((uint)((uint)(_455)) >> 8) & 255)));
    _463 = (float)((uint)((uint)(_455 & 255)));
    _494 = 1.0f / max(0.001f, _exposure0.x);
    _508 = ((((_494 * select(((_458 * 0.003921569f) < 0.04045f), (_458 * 0.000303527f), exp2(log2((_458 * 0.003717127f) + 0.052132703f) * 2.4f))) - _443) * _147) + _443);
    _509 = ((((_494 * select(((_461 * 0.003921569f) < 0.04045f), (_461 * 0.000303527f), exp2(log2((_461 * 0.003717127f) + 0.052132703f) * 2.4f))) - _444) * _147) + _444);
    _510 = ((((_494 * select(((_463 * 0.003921569f) < 0.04045f), (_463 * 0.000303527f), exp2(log2((_463 * 0.003717127f) + 0.052132703f) * 2.4f))) - _445) * _147) + _445);
  } else {
    _508 = _443;
    _509 = _444;
    _510 = _445;
  }
  _511 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _524 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _511, 0)))).x) & 127)))) + 0.5f);
  } else {
    _524 = 1.0f;
  }
  _527 = (_localToneMappingParams.w > 0.0f);
  if (_527) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_508, _509, _510));
    _787 = _rndx_tonemapped_color.x;
    _788 = _rndx_tonemapped_color.y;
    _789 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _795 = 1.0f - abs(_etcParams.w);
      _799 = saturate(_etcParams.w);  // [sem: expr_sat]
      _800 = (_795 * _787) + _799;
      _801 = (_795 * _788) + _799;
      _802 = (_795 * _789) + _799;
      if (_colorGradingParams.w > 0.0f) {
        _807 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _824 = (((max(0.0f, (1.0f - _800)) - _800) * _807) + _800);
        _825 = (((max(0.0f, (1.0f - _801)) - _801) * _807) + _801);
        _826 = (((max(0.0f, (1.0f - _802)) - _802) * _807) + _802);
      } else {
        _824 = _800;
        _825 = _801;
        _826 = _802;
      }
      _832 = _userImageAdjust.y + 1.0f;
      _836 = _userImageAdjust.x + 0.5f;
      _837 = ((_824 + -0.5f) * _832) + _836;
      _838 = ((_825 + -0.5f) * _832) + _836;
      _839 = ((_826 + -0.5f) * _832) + _836;
      _869 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _880 = exp2(log2(saturate(mad(_colorBlind0.z, _839, mad(_colorBlind0.y, _838, (_colorBlind0.x * _837))))) * _869);
      _881 = exp2(log2(saturate(mad(_colorBlind1.z, _839, mad(_colorBlind1.y, _838, (_colorBlind1.x * _837))))) * _869);
      _882 = exp2(log2(saturate(mad(_colorBlind2.z, _839, mad(_colorBlind2.y, _838, (_colorBlind2.x * _837))))) * _869);
    } else {
      _880 = _787;
      _881 = _788;
      _882 = _789;
    }
  } else {
    _880 = _508;
    _881 = _509;
    _882 = _510;
  }
  if (_etcParams.y > 1.0f) {
    _891 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _892 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _896 = saturate(1.0f - (dot(float2(_891, _892), float2(_891, _892)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _901 = (_896 * _880);
    _902 = (_896 * _881);
    _903 = (_896 * _882);
  } else {
    _901 = _880;
    _902 = _881;
    _903 = _882;
  }
  if (_527 && (_etcParams.z > 0.0f)) {
    _933 = select((_901 <= 0.0031308f), (_901 * 12.92f), (((pow(_901, 0.41666666f)) * 1.055f) + -0.055f));
    _934 = select((_902 <= 0.0031308f), (_902 * 12.92f), (((pow(_902, 0.41666666f)) * 1.055f) + -0.055f));
    _935 = select((_903 <= 0.0031308f), (_903 * 12.92f), (((pow(_903, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _933 = _901;
    _934 = _902;
    _935 = _903;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _940 = (float)((uint)((uint)(_511)));
    if (!(_940 < _viewDir.w)) {
      if (!(_940 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _949 = _933;
        _950 = _934;
        _951 = _935;
      } else {
        _949 = 0.0f;
        _950 = 0.0f;
        _951 = 0.0f;
      }
    } else {
      _949 = 0.0f;
      _950 = 0.0f;
      _951 = 0.0f;
    }
  } else {
    _949 = _933;
    _950 = _934;
    _951 = _935;
  }
  _961 = exp2(log2(_949 * 0.0001f) * 0.15930176f);
  _962 = exp2(log2(_950 * 0.0001f) * 0.15930176f);
  _963 = exp2(log2(_951 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_961 * 18.6875f) + 1.0f)) * ((_961 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_962 * 18.6875f) + 1.0f)) * ((_962 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_963 * 18.6875f) + 1.0f)) * ((_963 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _524;
  return SV_Target;
}
