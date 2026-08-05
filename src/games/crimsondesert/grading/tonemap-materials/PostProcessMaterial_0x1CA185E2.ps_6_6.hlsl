struct PostProcessDamageStruct {
  uint _bloodColor;
  float _bloodRatio;
  uint _dirtTexture;
  uint _dirtMaskTexture;
  float _dirtRatio1;
  float _dirtRatio2;
  float _dirtRatio3;
  uint _waterNormalTexture;
  uint _waterMaskTexture;
  float _waterRatio1;
  float _waterRatio2;
  float _waterRatio3;
  float _isDead;
  float _isBloodEffect;
};

struct BindlessParameters_PostProcessDamage {
  PostProcessDamageStruct BindlessParameters_PostProcessDamage;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

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

typedef BindlessParameters_PostProcessDamage BindlessParameters_PostProcessDamage_t;
ConstantBuffer<BindlessParameters_PostProcessDamage_t> BindlessParameters_PostProcessDamage[] : register(b0, space100);

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
  int _21;
  int _29;
  float4 _36;
  int _41;
  int _49;
  float4 _56;
  int _62;
  float _70;
  int _73;
  float _81;
  int _84;
  float _92;
  float _93;
  float4 _106;
  float _112;
  float _115;
  float _118;
  float _127;
  float _136;
  float _145;
  int _148;
  float _156;
  float _157;
  float _160;
  float _163;
  float _166;
  float _169;
  float _172;
  int _175;
  int _183;
  float _186;
  float _189;
  float _191;
  float _200;
  int _203;
  float _211;
  bool _219;
  float _372;
  float _577;
  float _578;
  float _579;
  float _672;
  float _673;
  float _674;
  float _728;
  float _729;
  float _730;
  float _743;
  float _744;
  float _745;
  float _775;
  float _776;
  float _777;
  float _791;
  float _792;
  float _793;
  float _220;
  int _223;
  int _231;
  float4 _238;
  int _245;
  int _253;
  float4 _260;
  int _266;
  float _274;
  int _277;
  float _285;
  int _288;
  float _296;
  float _298;
  float _301;
  float _304;
  float _307;
  int _310;
  float _318;
  float _322;
  float _327;
  float _341;
  float _355;
  uint _356;
  bool _375;
  float _381;
  float _400;
  float _416;
  float _432;
  float _433;
  float _437;
  float _440;
  float _443;
  float _450;
  float _457;
  float _464;
  float _465;
  float _466;
  float _467;
  float _468;
  float _469;
  float _470;
  float _486;
  float _502;
  float _518;
  float _519;
  float _520;
  float _521;
  float _522;
  float _539;
  float _540;
  float _541;
  float _542;
  float _545;
  float _548;
  float _552;
  float _556;
  float _560;
  float _580;
  float _592;
  float _604;
  float _616;
  float _623;
  float _630;
  float _637;
  float _643;
  float _644;
  float _646;
  float _648;
  float _650;
  float _655;
  float _676;
  float _678;
  float _681;
  float _684;
  float _687;
  float _693;
  float _738;
  float _780;
  float _797;
  float _801;
  float _805;
  _21 = WaveReadLaneFirst(_materialIndex);
  _29 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_21 < (uint)170000), _21, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._waterNormalTexture);
  _36 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_29 < (uint)65000), _29, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
  _41 = WaveReadLaneFirst(_materialIndex);
  _49 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_41 < (uint)170000), _41, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._waterMaskTexture);
  _56 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_49 < (uint)65000), _49, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
  _62 = WaveReadLaneFirst(_materialIndex);
  _70 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_62 < (uint)170000), _62, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._waterRatio1);
  _73 = WaveReadLaneFirst(_materialIndex);
  _81 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_73 < (uint)170000), _73, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._waterRatio2);
  _84 = WaveReadLaneFirst(_materialIndex);
  _92 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_84 < (uint)170000), _84, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._waterRatio3);
  _93 = dot(float3(_56.x, _56.y, _56.z), float3(_70, _81, _92));
  // [sem: _3__36__0__0__g_sceneColor_sample]
  _106 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(abs((_93 * ((_36.x * 0.2f) + -0.09960785f)) + TEXCOORD.x), abs(TEXCOORD.y - (_93 * ((_36.y * 0.2f) + -0.09960785f)))));
  _112 = (pow(_106.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _115 = (pow(_106.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _118 = (pow(_106.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _127 = exp2(log2(max(0.0f, (_112 + -0.8359375f)) / (18.851562f - (_112 * 18.6875f))) * 6.277395f) * 10000.0f;
  _136 = exp2(log2(max(0.0f, (_115 + -0.8359375f)) / (18.851562f - (_115 * 18.6875f))) * 6.277395f) * 10000.0f;
  _145 = exp2(log2(max(0.0f, (_118 + -0.8359375f)) / (18.851562f - (_118 * 18.6875f))) * 6.277395f) * 10000.0f;
  _148 = WaveReadLaneFirst(_materialIndex);
  _156 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_148 < (uint)170000), _148, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._isDead);
  _157 = dot(float3(_127, _136, _145), float3(0.2627f, 0.678f, 0.0593f));
  _160 = ((_157 - _127) * _156) + _127;
  _163 = ((_157 - _136) * _156) + _136;
  _166 = ((_157 - _145) * _156) + _145;
  _169 = abs((TEXCOORD.x * 2.0f) + -1.0f);
  _172 = abs((TEXCOORD.y * 2.0f) + -1.0f);
  _175 = WaveReadLaneFirst(_materialIndex);
  _183 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_175 < (uint)170000), _175, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._bloodColor);
  _186 = (float)((uint)((uint)(((uint)((uint)(_183)) >> 16) & 255)));
  _189 = (float)((uint)((uint)(((uint)((uint)(_183)) >> 8) & 255)));
  _191 = (float)((uint)((uint)(_183 & 255)));
  _200 = select(((_186 * 0.003921569f) < 0.04045f), (_186 * 0.000303527f), exp2(log2((_186 * 0.003717127f) + 0.052132703f) * 2.4f));
  _203 = WaveReadLaneFirst(_materialIndex);
  _211 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_203 < (uint)170000), _203, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._isBloodEffect);
  if (_211 > 0.001f) {
    _219 = ((_isPhotosensitiveMode_isAllolwBlood & 1) == 0);
  } else {
    _219 = false;
  }
  _220 = _200 * 0.4f;
  _223 = WaveReadLaneFirst(_materialIndex);
  _231 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_223 < (uint)170000), _223, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._dirtTexture);
  _238 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_231 < (uint)65000), _231, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
  _245 = WaveReadLaneFirst(_materialIndex);
  _253 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_245 < (uint)170000), _245, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._dirtMaskTexture);
  _260 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_253 < (uint)65000), _253, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
  _266 = WaveReadLaneFirst(_materialIndex);
  _274 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_266 < (uint)170000), _266, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._dirtRatio1);
  _277 = WaveReadLaneFirst(_materialIndex);
  _285 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_277 < (uint)170000), _277, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._dirtRatio2);
  _288 = WaveReadLaneFirst(_materialIndex);
  _296 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_288 < (uint)170000), _288, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._dirtRatio3);
  _298 = dot(float3(_260.x, _260.y, _260.z), float3(_274, _285, _296)) * _238.w;
  _301 = (_298 * (_238.x - _160)) + _160;
  _304 = (_298 * (_238.y - _163)) + _163;
  _307 = (_298 * (_238.z - _166)) + _166;
  _310 = WaveReadLaneFirst(_materialIndex);
  _318 = WaveReadLaneFirst(BindlessParameters_PostProcessDamage[((int)((uint)((uint)(select(((uint)_310 < (uint)170000), _310, 0))) + (uint)(0)))].BindlessParameters_PostProcessDamage._bloodRatio);
  _322 = max((_169 * _169), (_172 * _172)) * _318;
  _327 = _301 - ((_301 * (1.0f - select(_219, _220, _200))) * _322);
  _341 = _304 - ((_322 * _304) * (1.0f - select(_219, _220, select(((_189 * 0.003921569f) < 0.04045f), (_189 * 0.000303527f), exp2(log2((_189 * 0.003717127f) + 0.052132703f) * 2.4f)))));
  _355 = _307 - ((_322 * _307) * (1.0f - select(_219, _220, select(((_191 * 0.003921569f) < 0.04045f), (_191 * 0.000303527f), exp2(log2((_191 * 0.003717127f) + 0.052132703f) * 2.4f)))));
  _356 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _372 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _356, 0)))).x) & 127)))) + 0.5f);
  } else {
    _372 = _postProcessParams.x;
  }
  _375 = (_localToneMappingParams.w > 0.0f);
  if (_375) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_327, _341, _355));
    _623 = _rndx_tonemapped_color.x;
    _630 = _rndx_tonemapped_color.y;
    _637 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _643 = 1.0f - abs(_etcParams.w);
      _644 = saturate(_etcParams.w);  // [sem: expr_sat]
      _646 = (_643 * _623) + _644;
      _648 = (_643 * _630) + _644;
      _650 = (_643 * _637) + _644;
      if (_colorGradingParams.w > 0.0f) {
        _655 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _672 = (((max(0.0f, (1.0f - _646)) - _646) * _655) + _646);
        _673 = (((max(0.0f, (1.0f - _648)) - _648) * _655) + _648);
        _674 = (((max(0.0f, (1.0f - _650)) - _650) * _655) + _650);
      } else {
        _672 = _646;
        _673 = _648;
        _674 = _650;
      }
      _676 = _userImageAdjust.y + 1.0f;
      _678 = _userImageAdjust.x + 0.5f;
      _681 = ((_672 + -0.5f) * _676) + _678;
      _684 = ((_673 + -0.5f) * _676) + _678;
      _687 = ((_674 + -0.5f) * _676) + _678;
      _693 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _728 = exp2(log2(saturate(mad(_colorBlind0.z, _687, mad(_colorBlind0.y, _684, (_colorBlind0.x * _681))))) * _693);
      _729 = exp2(log2(saturate(mad(_colorBlind1.z, _687, mad(_colorBlind1.y, _684, (_colorBlind1.x * _681))))) * _693);
      _730 = exp2(log2(saturate(mad(_colorBlind2.z, _687, mad(_colorBlind2.y, _684, (_colorBlind2.x * _681))))) * _693);
    } else {
      _728 = _623;
      _729 = _630;
      _730 = _637;
    }
  } else {
    _728 = _327;
    _729 = _341;
    _730 = _355;
  }
  if (_etcParams.y > 1.0f) {
    _738 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_169, _172), float2(_169, _172))));  // [sem: expr_sat]
    _743 = (_738 * _728);
    _744 = (_738 * _729);
    _745 = (_738 * _730);
  } else {
    _743 = _728;
    _744 = _729;
    _745 = _730;
  }
  if (_375 && (_etcParams.z > 0.0f)) {
    _775 = select((_743 <= 0.0031308f), (_743 * 12.92f), (((pow(_743, 0.41666666f)) * 1.055f) + -0.055f));
    _776 = select((_744 <= 0.0031308f), (_744 * 12.92f), (((pow(_744, 0.41666666f)) * 1.055f) + -0.055f));
    _777 = select((_745 <= 0.0031308f), (_745 * 12.92f), (((pow(_745, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _775 = _743;
    _776 = _744;
    _777 = _745;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _780 = (float)((uint)((uint)(_356)));
    if (!(_780 < _viewDir.w)) {
      if (!(!(_780 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _791 = 0.0f;
        _792 = 0.0f;
        _793 = 0.0f;
      } else {
        _791 = _775;
        _792 = _776;
        _793 = _777;
      }
    } else {
      _791 = 0.0f;
      _792 = 0.0f;
      _793 = 0.0f;
    }
  } else {
    _791 = _775;
    _792 = _776;
    _793 = _777;
  }
  _797 = exp2(log2(_791 * 0.0001f) * 0.15930176f);
  _801 = exp2(log2(_792 * 0.0001f) * 0.15930176f);
  _805 = exp2(log2(_793 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_797 * 18.6875f) + 1.0f)) * ((_797 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_801 * 18.6875f) + 1.0f)) * ((_801 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_805 * 18.6875f) + 1.0f)) * ((_805 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _372;
  return SV_Target;
}
