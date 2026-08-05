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

struct BindlessParameters_PostProcessFlashback {
  PostProcessFlashbackStruct BindlessParameters_PostProcessFlashback;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

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
  float4 _25;
  int _31;
  float _39;
  float _40;
  float _64;
  float _65;
  float _66;
  float _96;
  float _97;
  float _98;
  float _169;
  float _170;
  float _171;
  float _199;
  float _200;
  float _201;
  float _383;
  float _384;
  float _385;
  float _409;
  float _410;
  float _411;
  float _425;
  float _630;
  float _631;
  float _632;
  float _725;
  float _726;
  float _727;
  float _781;
  float _782;
  float _783;
  float _802;
  float _803;
  float _804;
  float _834;
  float _835;
  float _836;
  float _850;
  float _851;
  float _852;
  float _47;
  float _50;
  float _51;
  float _56;
  int _69;
  float _77;
  bool _78;
  float _85;
  int _101;
  float _109;
  int _115;
  float _123;
  float _124;
  float _140;
  float _144;
  float _150;
  float _152;
  float4 _174;
  int _179;
  float _187;
  float _194;
  int _204;
  float _212;
  float _219;
  float _223;
  float _227;
  float _233;
  float _234;
  float _235;
  float _236;
  float _240;
  float _244;
  float _248;
  float _250;
  float _252;
  float _255;
  float _267;
  float _276;
  float _285;
  float _294;
  float _296;
  float _306;
  float _318;
  int _321;
  float _329;
  int _332;
  int _340;
  float4 _355;
  float _359;
  float _366;
  int _388;
  float _396;
  float _397;
  float _401;
  uint _412;
  bool _428;
  float _434;
  float _453;
  float _469;
  float _485;
  float _486;
  float _490;
  float _493;
  float _496;
  float _503;
  float _510;
  float _517;
  float _518;
  float _519;
  float _520;
  float _521;
  float _522;
  float _523;
  float _539;
  float _555;
  float _571;
  float _572;
  float _573;
  float _574;
  float _575;
  float _592;
  float _593;
  float _594;
  float _595;
  float _598;
  float _601;
  float _605;
  float _609;
  float _613;
  float _633;
  float _645;
  float _657;
  float _669;
  float _676;
  float _683;
  float _690;
  float _696;
  float _697;
  float _699;
  float _701;
  float _703;
  float _708;
  float _729;
  float _731;
  float _734;
  float _737;
  float _740;
  float _746;
  float _788;
  float _791;
  float _797;
  float _839;
  _25 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
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
      _64 = ((_56 * _25.z) + _25.z);
      _65 = ((_56 * _25.y) + _25.y);
      _66 = ((_56 * _25.x) + _25.x);
    } else {
      _64 = _25.z;
      _65 = _25.y;
      _66 = _25.x;
    }
    _69 = WaveReadLaneFirst(_materialIndex);
    _77 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_69 < (uint)170000), _69, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._contrastRatio);
    _78 = (_40 >= 0.001f);
    if (!((_77 == 1.0f) || (!_78))) {
      _85 = ((_77 + -1.0f) * _40) + 1.0f;
      _96 = ((_85 * (_64 - _51)) + _51);
      _97 = ((_85 * (_65 - _51)) + _51);
      _98 = ((_85 * (_66 - _51)) + _51);
    } else {
      _96 = _64;
      _97 = _65;
      _98 = _66;
    }
    _101 = WaveReadLaneFirst(_materialIndex);
    _109 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_101 < (uint)170000), _101, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._depthFadingContrast);
    if (_78 && (_109 < 1.0f)) {
      _115 = WaveReadLaneFirst(_materialIndex);
      _123 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_115 < (uint)170000), _115, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._depthFadingDistance);
      _124 = max(0.0001f, _123);
      // [sem: expr_sat]
      _140 = saturate((1.0f - saturate(_nearFarProj.x / (max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x)) * _124))) / (1.0f - saturate(1.5f / _124)));
      _144 = (_140 * _140) * (3.0f - (_140 * 2.0f));
      _150 = (((1.0f - saturate(_50)) * 0.3f) * (1.0f - _144)) + _144;
      _152 = (1.0f - _109) * _40;
      _169 = ((((_150 * (_96 - _51)) + _51) * _152) + _96);
      _170 = ((((_150 * (_97 - _51)) + _51) * _152) + _97);
      _171 = ((((_150 * (_98 - _51)) + _51) * _152) + _98);
    } else {
      _169 = _96;
      _170 = _97;
      _171 = _98;
    }
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _174 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _179 = WaveReadLaneFirst(_materialIndex);
    _187 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_179 < (uint)170000), _179, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._flickeringIntensity);
    [branch]
    if (!(!(_187 >= 0.001f))) {
      _194 = 1.0f - (((_40 * 0.6f) * _174.x) * _187);
      _199 = (_194 * _169);
      _200 = (_194 * _170);
      _201 = (_194 * _171);
    } else {
      _199 = _169;
      _200 = _170;
      _201 = _171;
    }
    _204 = WaveReadLaneFirst(_materialIndex);
    _212 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_204 < (uint)170000), _204, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._lensDirtIntensity);
    [branch]
    if (!(!(_212 >= 0.0001f))) {
      _219 = saturate((_sunDirection.y + 0.1f) * 5.0f);  // [sem: expr_sat]
      _223 = (_219 * _219) * (3.0f - (_219 * 2.0f));
      // [sem: invLength]
      _227 = rsqrt(dot(float3(_sunDirection.x, _sunDirection.y, _sunDirection.z), float3(_sunDirection.x, _sunDirection.y, _sunDirection.z)));
      // [sem: invLength]
      _233 = rsqrt(dot(float3(_moonDirection.x, _moonDirection.y, _moonDirection.z), float3(_moonDirection.x, _moonDirection.y, _moonDirection.z)));
      _234 = _233 * _moonDirection.x;
      _235 = _233 * _moonDirection.y;
      _236 = _233 * _moonDirection.z;
      _240 = (((_227 * _sunDirection.x) - _234) * _223) + _234;
      _244 = (((_227 * _sunDirection.y) - _235) * _223) + _235;
      _248 = (((_227 * _sunDirection.z) - _236) * _223) + _236;
      _250 = rsqrt(dot(float3(_240, _244, _248), float3(_240, _244, _248)));  // [sem: invLength]
      _252 = (TEXCOORD.x * 2.0f) + -1.0f;
      _255 = ((1.0f - TEXCOORD.y) * 2.0f) + -1.0f;
      _267 = ((_invViewProjRelative[3].z) + (_invViewProjRelative[3].w)) + mad((_invViewProjRelative[3].y), _255, ((_invViewProjRelative[3].x) * _252));
      _276 = (((_invViewProjRelative[0].z) + (_invViewProjRelative[0].w)) + mad((_invViewProjRelative[0].y), _255, ((_invViewProjRelative[0].x) * _252))) / _267;
      _285 = (((_invViewProjRelative[1].z) + (_invViewProjRelative[1].w)) + mad((_invViewProjRelative[1].y), _255, ((_invViewProjRelative[1].x) * _252))) / _267;
      _294 = (((_invViewProjRelative[2].z) + (_invViewProjRelative[2].w)) + mad((_invViewProjRelative[2].y), _255, ((_invViewProjRelative[2].x) * _252))) / _267;
      _296 = rsqrt(dot(float3(_276, _285, _294), float3(_276, _285, _294)));  // [sem: invLength]
      // [sem: expr_sat]
      _306 = saturate((dot(float3((_296 * _276), (_296 * _285), (_296 * _294)), float3((_240 * _250), (_244 * _250), (_248 * _250))) + -0.5f) * 2.0f);
      _318 = (((_223 * 4.0f) + 3.0f) * _174.z) * saturate(exp2(log2((_306 * _306) * (3.0f - (_306 * 2.0f))) * 3.0f));
      _321 = WaveReadLaneFirst(_materialIndex);
      _329 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_321 < (uint)170000), _321, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._lensDirtTexScale);
      _332 = WaveReadLaneFirst(_materialIndex);
      _340 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_332 < (uint)170000), _332, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._lensDirtTex);
      _355 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_340 < (uint)65000), _340, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_329 * TEXCOORD.x) * (1.0f / _srcTargetSizeAndInv.y)) * _srcTargetSizeAndInv.x), (_329 * TEXCOORD.y)));
      _359 = dot(float3(0.3f, 0.59f, 0.11f), float3(_355.x, _355.y, _355.z));
      _366 = (((_47 * _40) * _212) * (6.0f - (_223 * 2.0f))) * (_318 + _174.z);
      _383 = (((lerp(_359, _355.z, _318)) * _366) + _199);
      _384 = (((lerp(_359, _355.y, _318)) * _366) + _200);
      _385 = (((lerp(_359, _355.x, _318)) * _366) + _201);
    } else {
      _383 = _199;
      _384 = _200;
      _385 = _201;
    }
    _388 = WaveReadLaneFirst(_materialIndex);
    _396 = WaveReadLaneFirst(BindlessParameters_PostProcessFlashback[((int)((uint)((uint)(select(((uint)_388 < (uint)170000), _388, 0))) + (uint)(0)))].BindlessParameters_PostProcessFlashback._vignetteRatio);
    _397 = saturate(_396);  // [sem: _396_sat]
    [branch]
    if (!(!(_397 >= 0.001f))) {
      _401 = (_174.y * _40) * _397;
      _409 = (_383 - (_401 * _383));
      _410 = (_384 - (_401 * _384));
      _411 = (_385 - (_401 * _385));
    } else {
      _409 = _383;
      _410 = _384;
      _411 = _385;
    }
  } else {
    _409 = _25.z;
    _410 = _25.y;
    _411 = _25.x;
  }
  _412 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _425 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _412, 0)))).x) & 127)))) + 0.5f);
  } else {
    _425 = 1.0f;
  }
  _428 = (_localToneMappingParams.w > 0.0f);
  if (_428) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_411, _410, _409));
    _676 = _rndx_tonemapped_color.x;
    _683 = _rndx_tonemapped_color.y;
    _690 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _696 = 1.0f - abs(_etcParams.w);
      _697 = saturate(_etcParams.w);  // [sem: expr_sat]
      _699 = (_696 * _676) + _697;
      _701 = (_696 * _683) + _697;
      _703 = (_696 * _690) + _697;
      if (_colorGradingParams.w > 0.0f) {
        _708 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _725 = (((max(0.0f, (1.0f - _703)) - _703) * _708) + _703);
        _726 = (((max(0.0f, (1.0f - _701)) - _701) * _708) + _701);
        _727 = (((max(0.0f, (1.0f - _699)) - _699) * _708) + _699);
      } else {
        _725 = _703;
        _726 = _701;
        _727 = _699;
      }
      _729 = _userImageAdjust.y + 1.0f;
      _731 = _userImageAdjust.x + 0.5f;
      _734 = ((_727 + -0.5f) * _729) + _731;
      _737 = ((_726 + -0.5f) * _729) + _731;
      _740 = ((_725 + -0.5f) * _729) + _731;
      _746 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _781 = exp2(log2(saturate(mad(_colorBlind2.z, _740, mad(_colorBlind2.y, _737, (_colorBlind2.x * _734))))) * _746);
      _782 = exp2(log2(saturate(mad(_colorBlind1.z, _740, mad(_colorBlind1.y, _737, (_colorBlind1.x * _734))))) * _746);
      _783 = exp2(log2(saturate(mad(_colorBlind0.z, _740, mad(_colorBlind0.y, _737, (_colorBlind0.x * _734))))) * _746);
    } else {
      _781 = _690;
      _782 = _683;
      _783 = _676;
    }
  } else {
    _781 = _409;
    _782 = _410;
    _783 = _411;
  }
  if (_etcParams.y > 1.0f) {
    _788 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _791 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _797 = saturate(1.0f - (dot(float2(_788, _791), float2(_788, _791)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _802 = (_797 * _781);
    _803 = (_797 * _782);
    _804 = (_797 * _783);
  } else {
    _802 = _781;
    _803 = _782;
    _804 = _783;
  }
  if (_428 && (_etcParams.z > 0.0f)) {
    _834 = select((_804 <= 0.0031308f), (_804 * 12.92f), (((pow(_804, 0.41666666f)) * 1.055f) + -0.055f));
    _835 = select((_803 <= 0.0031308f), (_803 * 12.92f), (((pow(_803, 0.41666666f)) * 1.055f) + -0.055f));
    _836 = select((_802 <= 0.0031308f), (_802 * 12.92f), (((pow(_802, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _834 = _804;
    _835 = _803;
    _836 = _802;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _839 = (float)((uint)((uint)(_412)));
    if (!(_839 < _viewDir.w)) {
      if (!(!(_839 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _850 = 0.0f;
        _851 = 0.0f;
        _852 = 0.0f;
      } else {
        _850 = _834;
        _851 = _835;
        _852 = _836;
      }
    } else {
      _850 = 0.0f;
      _851 = 0.0f;
      _852 = 0.0f;
    }
  } else {
    _850 = _834;
    _851 = _835;
    _852 = _836;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_850, _851, _852), _sunDirection.y, _moonDirection.y);
    _850 = _rndx_final_color.x;
    _851 = _rndx_final_color.y;
    _852 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _850;
  SV_Target.y = _851;
  SV_Target.z = _852;
  SV_Target.w = _425;
  return SV_Target;
}
