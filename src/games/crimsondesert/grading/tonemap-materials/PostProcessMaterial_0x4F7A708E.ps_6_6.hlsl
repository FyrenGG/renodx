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

struct BindlessParameters_PostProcessWeatherBlend {
  PostProcessWeatherBlendStruct BindlessParameters_PostProcessWeatherBlend;
};


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

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
  int _33;
  float _41;
  float4 _44;
  int _50;
  float _58;
  int _61;
  float _69;
  float _359;
  float _360;
  float _361;
  float _375;
  float _580;
  float _581;
  float _582;
  float _675;
  float _676;
  float _677;
  float _731;
  float _732;
  float _733;
  float _752;
  float _753;
  float _754;
  float _784;
  float _785;
  float _786;
  float _800;
  float _801;
  float _802;
  int _76;
  int _84;
  float4 _95;
  float4 _102;
  float _109;
  float _112;
  float _115;
  float _116;
  float _117;
  float _119;
  bool _120;
  bool _121;
  bool _122;
  bool _123;
  float _134;
  float _138;
  int _141;
  int _149;
  float4 _170;
  float _175;
  float _178;
  float _181;
  int _184;
  int _192;
  float4 _211;
  int _215;
  int _223;
  float _226;
  float _229;
  float _231;
  float _234;
  float _243;
  float _256;
  float _269;
  float _282;
  int _285;
  int _293;
  float _296;
  float _299;
  float _301;
  float _304;
  float _306;
  float _319;
  float _332;
  float _345;
  float _348;
  uint _362;
  bool _378;
  float _384;
  float _403;
  float _419;
  float _435;
  float _436;
  float _440;
  float _443;
  float _446;
  float _453;
  float _460;
  float _467;
  float _468;
  float _469;
  float _470;
  float _471;
  float _472;
  float _473;
  float _489;
  float _505;
  float _521;
  float _522;
  float _523;
  float _524;
  float _525;
  float _542;
  float _543;
  float _544;
  float _545;
  float _548;
  float _551;
  float _555;
  float _559;
  float _563;
  float _583;
  float _595;
  float _607;
  float _619;
  float _626;
  float _633;
  float _640;
  float _646;
  float _647;
  float _649;
  float _651;
  float _653;
  float _658;
  float _679;
  float _681;
  float _684;
  float _687;
  float _690;
  float _696;
  float _738;
  float _741;
  float _747;
  float _789;
  _22 = WaveReadLaneFirst(_materialIndex);
  _30 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_22 < (uint)170000), _22, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._chromaticAberrationRatio);
  _33 = WaveReadLaneFirst(_materialIndex);
  _41 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_33 < (uint)170000), _33, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._chromaticAberrationShiftValue);
  _44 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _50 = WaveReadLaneFirst(_materialIndex);
  _58 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_50 < (uint)170000), _50, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._blendRatio);
  _61 = WaveReadLaneFirst(_materialIndex);
  _69 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_61 < (uint)170000), _61, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._enableBlend);
  if ((_58 >= 0.01f) && (_69 > 0.01f)) {
    _76 = WaveReadLaneFirst(_materialIndex);
    _84 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_76 < (uint)170000), _76, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._noiseTex);
    _95 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_84 < (uint)65000), _84, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(TEXCOORD.x, ((_time.x * 0.2f) + TEXCOORD.y)));
    // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
    _102 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
    _109 = ((_102.x - _44.x) * _102.w) + _44.x;
    _112 = ((_102.y - _44.y) * _102.w) + _44.y;
    _115 = ((_102.z - _44.z) * _102.w) + _44.z;
    _116 = TEXCOORD.x + -0.5f;
    _117 = TEXCOORD.y + -0.5f;
    _119 = atan(_117 / _116);
    _120 = (_116 < 0.0f);
    _121 = (_116 == 0.0f);
    _122 = (_117 >= 0.0f);
    _123 = (_117 < 0.0f);
    _134 = select((_121 && _122), 0.5f, select((_121 && _123), -0.5f, (select((_120 && _123), (_119 + -3.1415927f), select((_120 && _122), (_119 + 3.1415927f), _119)) * 0.31830987f)));
    _138 = sqrt((_117 * _117) + (_116 * _116));
    _141 = WaveReadLaneFirst(_materialIndex);
    _149 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_141 < (uint)170000), _141, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._noiseTex);
    _170 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_149 < (uint)65000), _149, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_134 * 15.0f) - ((_95.z + -0.5f) * 0.5f)) - (_time.x * 0.2f)), (((_138 * 2.0f) - ((_95.w + -0.5f) * 0.5f)) - (_time.x * 1.5f))));
    _175 = (1.75f - saturate(_58 * 1.4285715f)) * 0.5f;
    _178 = max((abs(_116) - _175), 0.0f);
    _181 = max((abs(_117) - _175), 0.0f);
    _184 = WaveReadLaneFirst(_materialIndex);
    _192 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_184 < (uint)170000), _184, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._borderEdgeNoiseTexture);
    _211 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_192 < (uint)65000), _192, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_134 * 9.0f) + (_95.x * 0.05f)) - (_170.x * 0.1f)), ((_138 + (_95.y * 0.05f)) - ((_time.x + _170.x) * 0.1f))));
    _215 = WaveReadLaneFirst(_materialIndex);
    _223 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_215 < (uint)170000), _215, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._berserkColor);
    _226 = (float)((uint)((uint)(((uint)((uint)(_223)) >> 16) & 255)));
    _229 = (float)((uint)((uint)(((uint)((uint)(_223)) >> 8) & 255)));
    _231 = (float)((uint)((uint)(_223 & 255)));
    _234 = max(0.001f, _exposure0.x);
    _243 = ((_211.y * _211.y) * _211.y) * saturate(sqrt((_181 * _181) + (_178 * _178)) * 6.6666665f);
    _256 = (((select(((_226 * 0.003921569f) < 0.04045f), (_226 * 0.000303527f), exp2(log2((_226 * 0.003717127f) + 0.052132703f) * 2.4f)) / _234) - _109) * _243) + _109;
    _269 = (((select(((_229 * 0.003921569f) < 0.04045f), (_229 * 0.000303527f), exp2(log2((_229 * 0.003717127f) + 0.052132703f) * 2.4f)) / _234) - _112) * _243) + _112;
    _282 = (((select(((_231 * 0.003921569f) < 0.04045f), (_231 * 0.000303527f), exp2(log2((_231 * 0.003717127f) + 0.052132703f) * 2.4f)) / _234) - _115) * _243) + _115;
    _285 = WaveReadLaneFirst(_materialIndex);
    _293 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_285 < (uint)170000), _285, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._berserkEndColor);
    _296 = (float)((uint)((uint)(((uint)((uint)(_293)) >> 16) & 255)));
    _299 = (float)((uint)((uint)(((uint)((uint)(_293)) >> 8) & 255)));
    _301 = (float)((uint)((uint)(_293 & 255)));
    _304 = max(0.001f, _exposure0.x);
    _306 = select((_58 > 0.7f), 1.0f, 0.0f);
    _319 = (((select(((_296 * 0.003921569f) < 0.04045f), (_296 * 0.000303527f), exp2(log2((_296 * 0.003717127f) + 0.052132703f) * 2.4f)) / _304) - _256) * _306) + _256;
    _332 = (((select(((_299 * 0.003921569f) < 0.04045f), (_299 * 0.000303527f), exp2(log2((_299 * 0.003717127f) + 0.052132703f) * 2.4f)) / _304) - _269) * _306) + _269;
    _345 = (((select(((_301 * 0.003921569f) < 0.04045f), (_301 * 0.000303527f), exp2(log2((_301 * 0.003717127f) + 0.052132703f) * 2.4f)) / _304) - _282) * _306) + _282;
    _348 = saturate((_58 + -0.8f) * 5.0f);  // [sem: expr_sat]
    _359 = (lerp(_345, _44.z, _348));  // [sem: blended]
    _360 = ((_348 * (_44.y - _332)) + _332);
    _361 = ((_348 * (_44.x - _319)) + _319);
  } else {
    _359 = _44.z;  // [sem: blended]
    _360 = _44.y;
    _361 = _44.x;
  }
  _362 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _375 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _362, 0)))).x) & 127)))) + 0.5f);
  } else {
    _375 = 1.0f;
  }
  _378 = (_localToneMappingParams.w > 0.0f);
  if (_378) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_361, _360, _359));
    _626 = _rndx_tonemapped_color.x;
    _633 = _rndx_tonemapped_color.y;
    _640 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _646 = 1.0f - abs(_etcParams.w);
      _647 = saturate(_etcParams.w);  // [sem: expr_sat]
      _649 = (_646 * _626) + _647;
      _651 = (_646 * _633) + _647;
      _653 = (_646 * _640) + _647;
      if (_colorGradingParams.w > 0.0f) {
        _658 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _675 = (((max(0.0f, (1.0f - _653)) - _653) * _658) + _653);
        _676 = (((max(0.0f, (1.0f - _651)) - _651) * _658) + _651);
        _677 = (((max(0.0f, (1.0f - _649)) - _649) * _658) + _649);
      } else {
        _675 = _653;
        _676 = _651;
        _677 = _649;
      }
      _679 = _userImageAdjust.y + 1.0f;
      _681 = _userImageAdjust.x + 0.5f;
      _684 = ((_677 + -0.5f) * _679) + _681;
      _687 = ((_676 + -0.5f) * _679) + _681;
      _690 = ((_675 + -0.5f) * _679) + _681;
      _696 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _731 = exp2(log2(saturate(mad(_colorBlind0.z, _690, mad(_colorBlind0.y, _687, (_colorBlind0.x * _684))))) * _696);
      _732 = exp2(log2(saturate(mad(_colorBlind1.z, _690, mad(_colorBlind1.y, _687, (_colorBlind1.x * _684))))) * _696);
      _733 = exp2(log2(saturate(mad(_colorBlind2.z, _690, mad(_colorBlind2.y, _687, (_colorBlind2.x * _684))))) * _696);
    } else {
      _731 = _626;
      _732 = _633;
      _733 = _640;
    }
  } else {
    _731 = _361;
    _732 = _360;
    _733 = _359;
  }
  if (_etcParams.y > 1.0f) {
    _738 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _741 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _747 = saturate(1.0f - (dot(float2(_738, _741), float2(_738, _741)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _752 = (_747 * _731);
    _753 = (_747 * _732);
    _754 = (_747 * _733);
  } else {
    _752 = _731;
    _753 = _732;
    _754 = _733;
  }
  if (_378 && (_etcParams.z > 0.0f)) {
    _784 = select((_752 <= 0.0031308f), (_752 * 12.92f), (((pow(_752, 0.41666666f)) * 1.055f) + -0.055f));
    _785 = select((_753 <= 0.0031308f), (_753 * 12.92f), (((pow(_753, 0.41666666f)) * 1.055f) + -0.055f));
    _786 = select((_754 <= 0.0031308f), (_754 * 12.92f), (((pow(_754, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _784 = _752;
    _785 = _753;
    _786 = _754;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _789 = (float)((uint)((uint)(_362)));
    if (!(_789 < _viewDir.w)) {
      if (!(!(_789 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _800 = 0.0f;
        _801 = 0.0f;
        _802 = 0.0f;
      } else {
        _800 = _784;
        _801 = _785;
        _802 = _786;
      }
    } else {
      _800 = 0.0f;
      _801 = 0.0f;
      _802 = 0.0f;
    }
  } else {
    _800 = _784;
    _801 = _785;
    _802 = _786;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_800, _801, _802), _sunDirection.y, _moonDirection.y);
    _800 = _rndx_final_color.x;
    _801 = _rndx_final_color.y;
    _802 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _800;
  SV_Target.y = _801;
  SV_Target.z = _802;
  SV_Target.w = _375;
  return SV_Target;
}
