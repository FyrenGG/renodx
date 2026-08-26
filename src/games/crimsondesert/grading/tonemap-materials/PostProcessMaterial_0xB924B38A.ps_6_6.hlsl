struct PostProcessFlashbackStruct {
  float _blendingRatio;
  float _flickeringIntensity;
  float _contrastRatio;
  float _depthFadingContrast;
  float _depthFadingDistance;
  float _vignetteRatio;
  float _vignetteWidth;
  float _vignetteShape;
  float _lensDirtIntensity;
  float _lensDirtTexScale;
  uint _lensDirtTex;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

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

struct BindlessParameters_PostProcessFlashback {
  PostProcessFlashbackStruct BindlessParameters_PostProcessFlashback;
};

typedef BindlessParameters_PostProcessFlashback BindlessParameters_PostProcessFlashback_t;
ConstantBuffer<BindlessParameters_PostProcessFlashback_t> BindlessParameters_PostProcessFlashback[] : register(b0, space100);

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
  float4 _27;
  int _31;
  float _39;
  float _40;
  float _64;
  float _65;
  float _66;
  float _93;
  float _94;
  float _95;
  float _162;
  float _163;
  float _164;
  float _190;
  float _191;
  float _192;
  float _368;
  float _369;
  float _370;
  float _392;
  float _393;
  float _394;
  float _408;
  float _613;
  float _614;
  float _615;
  float _708;
  float _709;
  float _710;
  float _764;
  float _765;
  float _766;
  float _785;
  float _786;
  float _787;
  float _817;
  float _818;
  float _819;
  float _833;
  float _834;
  float _835;
  float _47;
  float _50;
  float _51;
  float _56;
  int _67;
  float _75;
  bool _77;
  float _82;
  int _96;
  float _104;
  int _108;
  float _116;
  float _117;
  float _133;
  float _137;
  float _143;
  float _154;
  float4 _167;
  int _170;
  float _178;
  float _185;
  int _193;
  float _201;
  float _212;
  float _216;
  float _220;
  float _229;
  float _230;
  float _231;
  float _232;
  float _239;
  float _240;
  float _241;
  float _243;
  float _248;
  float _251;
  float _287;
  float _288;
  float _289;
  float _290;
  float _292;
  float _299;
  float _311;
  int _315;
  float _323;
  int _328;
  int _336;
  float4 _343;
  float _347;
  float _360;
  int _371;
  float _379;
  float _380;
  float _384;
  uint _395;
  bool _411;
  float _417;
  float _466;
  float _467;
  float _468;
  float _470;
  float _477;
  float _478;
  float _479;
  float _498;
  float _499;
  float _500;
  float _501;
  float _502;
  float _503;
  float _504;
  float _505;
  float _506;
  float _552;
  float _553;
  float _554;
  float _555;
  float _556;
  float _557;
  float _558;
  float _575;
  float _576;
  float _577;
  float _578;
  float _584;
  float _587;
  float _594;
  float _595;
  float _596;
  float _625;
  float _650;
  float _651;
  float _652;
  float _671;
  float _672;
  float _673;
  float _679;
  float _683;
  float _684;
  float _685;
  float _686;
  float _691;
  float _716;
  float _720;
  float _721;
  float _722;
  float _723;
  float _753;
  float _775;
  float _776;
  float _780;
  float _824;
  _27 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _31 = WaveReadLaneFirst(_materialIndex);
  _39 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_31 < (uint)170000), _31, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._blendingRatio);
  _40 = saturate(_39);  // [sem: _39_sat]
  [branch]
  if (!(_40 < 0.0001f)) {
    _47 = 1.0f / max(0.001f, abs(_exposure0.x));
    _50 = _exposure2.x * _47;
    _51 = _47 * 0.5f;
    [branch]
    if (!(!(_40 >= 0.001f))) {
      _56 = (1.0f - saturate(_50)) * _40;
      _64 = ((_56 * _27.x) + _27.x);
      _65 = ((_56 * _27.y) + _27.y);
      _66 = ((_56 * _27.z) + _27.z);
    } else {
      _64 = _27.x;
      _65 = _27.y;
      _66 = _27.z;
    }
    _67 = WaveReadLaneFirst(_materialIndex);
    _75 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_67 < (uint)170000), _67, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._contrastRatio);
    _77 = (_40 >= 0.001f);
    if (_77 && (!(_75 == 1.0f))) {
      _82 = ((_75 + -1.0f) * _40) + 1.0f;
      _93 = ((_82 * (_64 - _51)) + _51);
      _94 = ((_82 * (_65 - _51)) + _51);
      _95 = ((_82 * (_66 - _51)) + _51);
    } else {
      _93 = _64;
      _94 = _65;
      _95 = _66;
    }
    _96 = WaveReadLaneFirst(_materialIndex);
    _104 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_96 < (uint)170000), _96, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._depthFadingContrast);
    if (_77 && (_104 < 1.0f)) {
      _108 = WaveReadLaneFirst(_materialIndex);
      _116 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_108 < (uint)170000), _108, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._depthFadingDistance);
      _117 = max(0.0001f, _116);
      // [sem: expr_sat]
      _133 = saturate((1.0f - saturate(_nearFarProj.x / (max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x)) * _117))) / (1.0f - saturate(1.5f / _117)));
      _137 = (_133 * _133) * (3.0f - (_133 * 2.0f));
      _143 = (((1.0f - saturate(_50)) * 0.3f) * (1.0f - _137)) + _137;
      _154 = (1.0f - _104) * _40;
      _162 = ((((_143 * (_93 - _51)) + _51) * _154) + _93);
      _163 = ((((_143 * (_94 - _51)) + _51) * _154) + _94);
      _164 = ((((_143 * (_95 - _51)) + _51) * _154) + _95);
    } else {
      _162 = _93;
      _163 = _94;
      _164 = _95;
    }
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _167 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _170 = WaveReadLaneFirst(_materialIndex);
    _178 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_170 < (uint)170000), _170, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._flickeringIntensity);
    [branch]
    if (!(!(_178 >= 0.001f))) {
      _185 = 1.0f - (((_40 * 0.6f) * _167.x) * _178);
      _190 = (_185 * _162);
      _191 = (_185 * _163);
      _192 = (_185 * _164);
    } else {
      _190 = _162;
      _191 = _163;
      _192 = _164;
    }
    _193 = WaveReadLaneFirst(_materialIndex);
    _201 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_193 < (uint)170000), _193, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._lensDirtIntensity);
    [branch]
    if (!(!(_201 >= 0.0001f))) {
      _212 = saturate((_sunDirection.y + 0.1f) * 5.0f);  // [sem: expr_sat]
      _216 = (_212 * _212) * (3.0f - (_212 * 2.0f));
      // [sem: invLength]
      _220 = rsqrt(dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)));
      // [sem: invLength]
      _229 = rsqrt(dot(float3(_moonDirection.x, _moonDirection.y, _moonDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)));
      _230 = _229 * _moonDirection.x;
      _231 = _229 * _moonDirection.y;
      _232 = _229 * _moonDirection.z;
      _239 = (((_220 * _sunDirection.x) - _230) * _216) + _230;
      _240 = (((_220 * _sunDirection.y) - _231) * _216) + _231;
      _241 = (((_220 * _sunDirection.z) - _232) * _216) + _232;
      _243 = rsqrt(dot(float3(_239, _240, _241), float3(_239, _240, _241)));  // [sem: invLength]
      _248 = (TEXCOORD.x * 2.0f) + -1.0f;
      _251 = ((1.0f - TEXCOORD.y) * 2.0f) + -1.0f;
      _287 = ((_invViewProjRelative[3].w) + (_invViewProjRelative[3].z)) + mad((_invViewProjRelative[3].y), _251, ((_invViewProjRelative[3].x) * _248));
      _288 = ((mad((_invViewProjRelative[0].y), _251, ((_invViewProjRelative[0].x) * _248)) + (_invViewProjRelative[0].z)) + (_invViewProjRelative[0].w)) / _287;
      _289 = (((_invViewProjRelative[1].w) + (_invViewProjRelative[1].z)) + mad((_invViewProjRelative[1].y), _251, ((_invViewProjRelative[1].x) * _248))) / _287;
      _290 = (((_invViewProjRelative[2].w) + (_invViewProjRelative[2].z)) + mad((_invViewProjRelative[2].y), _251, ((_invViewProjRelative[2].x) * _248))) / _287;
      _292 = rsqrt(dot(float3(_288, _289, _290), float3(_288, _289, _290)));  // [sem: invLength]
      // [sem: expr_sat]
      _299 = saturate((dot(float3((_292 * _288), (_292 * _289), (_292 * _290)), float3((_239 * _243), (_240 * _243), (_241 * _243))) + -0.5f) * 2.0f);
      _311 = (((_216 * 3.6f) + 0.9f) * _167.z) * saturate(exp2(log2((_299 * _299) * (3.0f - (_299 * 2.0f))) * 3.0f));
      _315 = WaveReadLaneFirst(_materialIndex);
      _323 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_315 < (uint)170000), _315, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._lensDirtTexScale);
      _328 = WaveReadLaneFirst(_materialIndex);
      _336 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_328 < (uint)170000), _328, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._lensDirtTex);
      _343 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_336 < (uint)65000), _336, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((((1.0f / _srcTargetSizeAndInv.y) * TEXCOORD.x) * _srcTargetSizeAndInv.x) * _323), (_323 * TEXCOORD.y)));
      _347 = dot(float3(0.3f, 0.59f, 0.11f), float3(_343.x, _343.y, _343.z));
      _360 = (((_47 * _40) * _201) * (0.096f - (_216 * 0.013000004f))) * (_311 + _167.z);
      _368 = (((lerp(_347, _343.x, _311)) * _360) + _190);
      _369 = (((lerp(_347, _343.y, _311)) * _360) + _191);
      _370 = (((lerp(_347, _343.z, _311)) * _360) + _192);
    } else {
      _368 = _190;
      _369 = _191;
      _370 = _192;
    }
    _371 = WaveReadLaneFirst(_materialIndex);
    _379 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_371 < (uint)170000), _371, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._vignetteRatio);
    _380 = saturate(_379);  // [sem: _379_sat]
    [branch]
    if (!(!(_380 >= 0.001f))) {
      _384 = (_167.y * _40) * _380;
      _392 = (_368 - (_384 * _368));
      _393 = (_369 - (_384 * _369));
      _394 = (_370 - (_384 * _370));
    } else {
      _392 = _368;
      _393 = _369;
      _394 = _370;
    }
  } else {
    _392 = _27.x;
    _393 = _27.y;
    _394 = _27.z;
  }
  _395 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _408 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _395, 0)))).x) & 127)))) + 0.5f);
  } else {
    _408 = 1.0f;
  }
  _411 = (_localToneMappingParams.w > 0.0f);
  if (_411) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_392, _393, _394));
    _671 = _rndx_tonemapped_color.x;
    _672 = _rndx_tonemapped_color.y;
    _673 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _679 = 1.0f - abs(_etcParams.w);
      _683 = saturate(_etcParams.w);  // [sem: expr_sat]
      _684 = (_679 * _671) + _683;
      _685 = (_679 * _672) + _683;
      _686 = (_679 * _673) + _683;
      if (_colorGradingParams.w > 0.0f) {
        _691 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _708 = (((max(0.0f, (1.0f - _684)) - _684) * _691) + _684);
        _709 = (((max(0.0f, (1.0f - _685)) - _685) * _691) + _685);
        _710 = (((max(0.0f, (1.0f - _686)) - _686) * _691) + _686);
      } else {
        _708 = _684;
        _709 = _685;
        _710 = _686;
      }
      _716 = _userImageAdjust.y + 1.0f;
      _720 = _userImageAdjust.x + 0.5f;
      _721 = ((_708 + -0.5f) * _716) + _720;
      _722 = ((_709 + -0.5f) * _716) + _720;
      _723 = ((_710 + -0.5f) * _716) + _720;
      _753 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _764 = exp2(log2(saturate(mad(_colorBlind0.z, _723, mad(_colorBlind0.y, _722, (_colorBlind0.x * _721))))) * _753);
      _765 = exp2(log2(saturate(mad(_colorBlind1.z, _723, mad(_colorBlind1.y, _722, (_colorBlind1.x * _721))))) * _753);
      _766 = exp2(log2(saturate(mad(_colorBlind2.z, _723, mad(_colorBlind2.y, _722, (_colorBlind2.x * _721))))) * _753);
    } else {
      _764 = _671;
      _765 = _672;
      _766 = _673;
    }
  } else {
    _764 = _392;
    _765 = _393;
    _766 = _394;
  }
  if (_etcParams.y > 1.0f) {
    _775 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _776 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _780 = saturate(1.0f - (dot(float2(_775, _776), float2(_775, _776)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _785 = (_780 * _764);
    _786 = (_780 * _765);
    _787 = (_780 * _766);
  } else {
    _785 = _764;
    _786 = _765;
    _787 = _766;
  }
  if (_411 && (_etcParams.z > 0.0f)) {
    _817 = select((_785 <= 0.0031308f), (_785 * 12.92f), (((pow(_785, 0.41666666f)) * 1.055f) + -0.055f));
    _818 = select((_786 <= 0.0031308f), (_786 * 12.92f), (((pow(_786, 0.41666666f)) * 1.055f) + -0.055f));
    _819 = select((_787 <= 0.0031308f), (_787 * 12.92f), (((pow(_787, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _817 = _785;
    _818 = _786;
    _819 = _787;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _824 = (float)((uint)((uint)(_395)));
    if (!(_824 < _viewDir.w)) {
      if (!(_824 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _833 = _817;
        _834 = _818;
        _835 = _819;
      } else {
        _833 = 0.0f;
        _834 = 0.0f;
        _835 = 0.0f;
      }
    } else {
      _833 = 0.0f;
      _834 = 0.0f;
      _835 = 0.0f;
    }
  } else {
    _833 = _817;
    _834 = _818;
    _835 = _819;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_833, _834, _835), _sunDirection.y, _moonDirection.y);
    _833 = _rndx_final_color.x;
    _834 = _rndx_final_color.y;
    _835 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _833;
  SV_Target.y = _834;
  SV_Target.z = _835;
  SV_Target.w = _408;
  return SV_Target;
}
