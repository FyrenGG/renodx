struct PostProcessDrugStruct {
  float _panningSpeed;
  float _changeSpeed;
  float _panningWidth;
  float _distortionScale;
  float _distortionSpeed;
  float _distortionDensity;
  float _blendBias;
  float3 _colorTint;
  float _drugPPIntensity;
  float _centerMaskRadius;
  float _centerMaskHardness;
};


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

struct BindlessParameters_PostProcessDrug {
  PostProcessDrugStruct BindlessParameters_PostProcessDrug;
};

typedef BindlessParameters_PostProcessDrug BindlessParameters_PostProcessDrug_t;
ConstantBuffer<BindlessParameters_PostProcessDrug_t> BindlessParameters_PostProcessDrug[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float _27;
  float _28;
  float _37;
  float4 _40;
  float _50;
  float _51;
  float _52;
  float _77;
  float _78;
  float _79;
  int _80;
  float _88;
  int _89;
  float _97;
  float _103;
  float _104;
  int _108;
  float _116;
  int _125;
  float _133;
  int _134;
  float _142;
  int _143;
  float _151;
  float _154;
  float _157;
  float4 _162;
  float4 _173;
  int _179;
  float _187;
  float _192;
  float _193;
  float _200;
  float _201;
  float _202;
  float4 _209;
  float _219;
  float _220;
  float _221;
  float _252;
  int _262;
  float _272;
  float _273;
  float _274;
  int _299;
  float _307;
  int _312;
  float _320;
  int _322;
  float _330;
  int _331;
  float _339;
  float _346;
  float _356;
  float _357;
  float _358;
  uint _359;
  float _373;
  float _578;
  float _579;
  float _580;
  float _673;
  float _674;
  float _675;
  float _729;
  float _730;
  float _731;
  float _750;
  float _751;
  float _752;
  float _782;
  float _783;
  float _784;
  float _798;
  float _799;
  float _800;
  bool _376;
  float _382;
  float _431;
  float _432;
  float _433;
  float _435;
  float _442;
  float _443;
  float _444;
  float _463;
  float _464;
  float _465;
  float _466;
  float _467;
  float _468;
  float _469;
  float _470;
  float _471;
  float _517;
  float _518;
  float _519;
  float _520;
  float _521;
  float _522;
  float _523;
  float _540;
  float _541;
  float _542;
  float _543;
  float _549;
  float _552;
  float _559;
  float _560;
  float _561;
  float _590;
  float _615;
  float _616;
  float _617;
  float _636;
  float _637;
  float _638;
  float _644;
  float _648;
  float _649;
  float _650;
  float _651;
  float _656;
  float _681;
  float _685;
  float _686;
  float _687;
  float _688;
  float _718;
  float _740;
  float _741;
  float _745;
  float _789;
  float _810;
  float _811;
  float _812;
  _27 = TEXCOORD.x + -0.5f;
  _28 = TEXCOORD.y + -0.5f;
  // [sem: expr_sat]
  _37 = saturate(min(((0.5f - abs(_27)) * _srcTargetSizeAndInv.x), ((0.5f - abs(_28)) * _srcTargetSizeAndInv.y)) * 0.05f);
  _40 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _50 = (pow(_40.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _51 = (pow(_40.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _52 = (pow(_40.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _77 = exp2(log2(max(0.0f, (_50 + -0.8359375f)) / (18.851562f - (_50 * 18.6875f))) * 6.277395f) * 10000.0f;
  _78 = exp2(log2(max(0.0f, (_51 + -0.8359375f)) / (18.851562f - (_51 * 18.6875f))) * 6.277395f) * 10000.0f;
  _79 = exp2(log2(max(0.0f, (_52 + -0.8359375f)) / (18.851562f - (_52 * 18.6875f))) * 6.277395f) * 10000.0f;
  _80 = WaveReadLaneFirst(_materialIndex);
  _88 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_80 < (uint)170000), _80, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._distortionDensity);
  _89 = WaveReadLaneFirst(_materialIndex);
  _97 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_89 < (uint)170000), _89, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._distortionScale);
  _103 = _97 * 0.01f;
  _104 = cos(_time.x + (_88 * TEXCOORD.x)) * _103;
  _108 = WaveReadLaneFirst(_materialIndex);
  _116 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_108 < (uint)170000), _108, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._distortionSpeed);
  _125 = WaveReadLaneFirst(_materialIndex);
  _133 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_125 < (uint)170000), _125, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._panningWidth);
  _134 = WaveReadLaneFirst(_materialIndex);
  _142 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_134 < (uint)170000), _134, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._blendBias);
  _143 = WaveReadLaneFirst(_materialIndex);
  _151 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_143 < (uint)170000), _143, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._panningSpeed);
  _154 = _time.x * _151;
  _157 = _133 * -0.01f;
  // [sem: _3__36__0__0__g_sceneColor_sample]
  _162 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((sin(_154 * 0.8975979f) * _157) + TEXCOORD.y)));
  // [sem: _3__36__0__0__g_sceneColor_sample]
  _173 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (((_133 * 0.01f) * sin(_154 * 2.0943952f)) + TEXCOORD.y)));
  _179 = WaveReadLaneFirst(_materialIndex);
  _187 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_179 < (uint)170000), _179, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._changeSpeed);
  _192 = min(max((sin(_187 * _time.x) * 2.0f), 0.0f), 1.0f);
  _193 = _192 * _142;
  _200 = (_193 * (_173.x - _162.x)) + _162.x;
  _201 = (_193 * (_173.y - _162.y)) + _162.y;
  _202 = (_193 * (_173.z - _162.z)) + _162.z;
  // [sem: _3__36__0__0__g_sceneColor_sample]
  _209 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(((sin(_154 * 1.2566371f) * _157) + ((_104 * _37) + TEXCOORD.x)), (((_103 * _37) * sin((_116 * _time.x) + (((TEXCOORD.y + TEXCOORD.x) + _104) * _88))) + TEXCOORD.y)));
  _219 = (pow(_209.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _220 = (pow(_209.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _221 = (pow(_209.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _252 = min(max((1.0f - _192), 0.0f), 1.0f) * _142;
  _262 = WaveReadLaneFirst(_materialIndex);
  _272 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_262 < (uint)170000), _262, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._colorTint.x);
  _273 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_262 < (uint)170000), _262, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._colorTint.y);
  _274 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_262 < (uint)170000), _262, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._colorTint.z);
  _299 = WaveReadLaneFirst(_materialIndex);
  _307 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_299 < (uint)170000), _299, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._drugPPIntensity);
  _312 = WaveReadLaneFirst(_materialIndex);
  _320 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_312 < (uint)170000), _312, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._centerMaskRadius);
  _322 = WaveReadLaneFirst(_materialIndex);
  _330 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_322 < (uint)170000), _322, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._centerMaskHardness);
  _331 = WaveReadLaneFirst(_materialIndex);
  _339 = WaveReadLaneFirst(BindlessParameters_PostProcessDrug[((int)((uint)((uint)(select(((uint)_331 < (uint)170000), _331, 0))) + (uint)(0)))].BindlessParameters_PostProcessDrug._centerMaskRadius);
  _346 = saturate((sqrt((_28 * _28) + (_27 * _27)) - _320) / max(0.001f, (saturate(_339 * 2.0f) * _330))) * _37;
  _356 = (_346 * ((select((_272 < 0.04045f), (_272 * 0.07739938f), exp2(log2((_272 + 0.055f) * 0.94786733f) * 2.4f)) * ((_252 * ((exp2(log2(max(0.0f, (_219 + -0.8359375f)) / (18.851562f - (_219 * 18.6875f))) * 6.277395f) * 10000.0f) - _200)) + _200)) - _77)) + _77;
  _357 = (_346 * ((select((_273 < 0.04045f), (_273 * 0.07739938f), exp2(log2((_273 + 0.055f) * 0.94786733f) * 2.4f)) * ((_252 * ((exp2(log2(max(0.0f, (_220 + -0.8359375f)) / (18.851562f - (_220 * 18.6875f))) * 6.277395f) * 10000.0f) - _201)) + _201)) - _78)) + _78;
  _358 = (_346 * ((select((_274 < 0.04045f), (_274 * 0.07739938f), exp2(log2((_274 + 0.055f) * 0.94786733f) * 2.4f)) * ((_252 * ((exp2(log2(max(0.0f, (_221 + -0.8359375f)) / (18.851562f - (_221 * 18.6875f))) * 6.277395f) * 10000.0f) - _202)) + _202)) - _79)) + _79;
  _359 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _373 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _359, 0)))).x) & 127)))) + 0.5f);
  } else {
    _373 = _postProcessParams.x;
  }
  _376 = (_localToneMappingParams.w > 0.0f);
  if (_376) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_356, _357, _358));
    _636 = _rndx_tonemapped_color.x;
    _637 = _rndx_tonemapped_color.y;
    _638 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _644 = 1.0f - abs(_etcParams.w);
      _648 = saturate(_etcParams.w);  // [sem: expr_sat]
      _649 = (_644 * _636) + _648;
      _650 = (_644 * _637) + _648;
      _651 = (_644 * _638) + _648;
      if (_colorGradingParams.w > 0.0f) {
        _656 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _673 = (((max(0.0f, (1.0f - _649)) - _649) * _656) + _649);
        _674 = (((max(0.0f, (1.0f - _650)) - _650) * _656) + _650);
        _675 = (((max(0.0f, (1.0f - _651)) - _651) * _656) + _651);
      } else {
        _673 = _649;
        _674 = _650;
        _675 = _651;
      }
      _681 = _userImageAdjust.y + 1.0f;
      _685 = _userImageAdjust.x + 0.5f;
      _686 = ((_673 + -0.5f) * _681) + _685;
      _687 = ((_674 + -0.5f) * _681) + _685;
      _688 = ((_675 + -0.5f) * _681) + _685;
      _718 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _729 = exp2(log2(saturate(mad(_colorBlind0.z, _688, mad(_colorBlind0.y, _687, (_colorBlind0.x * _686))))) * _718);
      _730 = exp2(log2(saturate(mad(_colorBlind1.z, _688, mad(_colorBlind1.y, _687, (_colorBlind1.x * _686))))) * _718);
      _731 = exp2(log2(saturate(mad(_colorBlind2.z, _688, mad(_colorBlind2.y, _687, (_colorBlind2.x * _686))))) * _718);
    } else {
      _729 = _636;
      _730 = _637;
      _731 = _638;
    }
  } else {
    _729 = _356;
    _730 = _357;
    _731 = _358;
  }
  if (_etcParams.y > 1.0f) {
    _740 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _741 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _745 = saturate(1.0f - (dot(float2(_740, _741), float2(_740, _741)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _750 = (_745 * _729);
    _751 = (_745 * _730);
    _752 = (_745 * _731);
  } else {
    _750 = _729;
    _751 = _730;
    _752 = _731;
  }
  if (_376 && (_etcParams.z > 0.0f)) {
    _782 = select((_750 <= 0.0031308f), (_750 * 12.92f), (((pow(_750, 0.41666666f)) * 1.055f) + -0.055f));
    _783 = select((_751 <= 0.0031308f), (_751 * 12.92f), (((pow(_751, 0.41666666f)) * 1.055f) + -0.055f));
    _784 = select((_752 <= 0.0031308f), (_752 * 12.92f), (((pow(_752, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _782 = _750;
    _783 = _751;
    _784 = _752;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _789 = (float)((uint)((uint)(_359)));
    if (!(_789 < _viewDir.w)) {
      if (!(_789 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _798 = _782;
        _799 = _783;
        _800 = _784;
      } else {
        _798 = 0.0f;
        _799 = 0.0f;
        _800 = 0.0f;
      }
    } else {
      _798 = 0.0f;
      _799 = 0.0f;
      _800 = 0.0f;
    }
  } else {
    _798 = _782;
    _799 = _783;
    _800 = _784;
  }
  _810 = exp2(log2(_798 * 0.0001f) * 0.15930176f);
  _811 = exp2(log2(_799 * 0.0001f) * 0.15930176f);
  _812 = exp2(log2(_800 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_810 * 18.6875f) + 1.0f)) * ((_810 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_811 * 18.6875f) + 1.0f)) * ((_811 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_812 * 18.6875f) + 1.0f)) * ((_812 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _373;
  return SV_Target;
}
