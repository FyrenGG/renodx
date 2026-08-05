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
  float _457;
  float _458;
  float _459;
  float _460;
  float _476;
  float _681;
  float _682;
  float _683;
  float _776;
  float _777;
  float _778;
  float _832;
  float _833;
  float _834;
  float _853;
  float _854;
  float _855;
  float _885;
  float _886;
  float _887;
  float _901;
  float _902;
  float _903;
  float _50;
  int _53;
  int _61;
  float _65;
  int _68;
  int _76;
  float4 _90;
  float _93;
  float _94;
  float _95;
  float _97;
  bool _98;
  bool _99;
  bool _100;
  bool _101;
  float _112;
  float _113;
  float _116;
  float _119;
  int _122;
  int _130;
  float4 _142;
  float _144;
  float _146;
  float _158;
  float _161;
  int _164;
  int _172;
  float4 _187;
  float _195;
  float _206;
  float _210;
  float _214;
  float4 _221;
  float _227;
  float _230;
  float _233;
  float4 _238;
  float _244;
  float _247;
  float _250;
  float4 _255;
  float _261;
  float _264;
  float _267;
  float _294;
  float _321;
  float _348;
  float _349;
  int _352;
  int _360;
  float _363;
  float _366;
  float _368;
  float _377;
  float _386;
  float _395;
  float _399;
  float _403;
  float _407;
  float _415;
  float _419;
  float _425;
  float _431;
  float _437;
  float _440;
  float _443;
  uint _461;
  bool _479;
  float _485;
  float _504;
  float _520;
  float _536;
  float _537;
  float _541;
  float _544;
  float _547;
  float _554;
  float _561;
  float _568;
  float _569;
  float _570;
  float _571;
  float _572;
  float _573;
  float _574;
  float _590;
  float _606;
  float _622;
  float _623;
  float _624;
  float _625;
  float _626;
  float _643;
  float _644;
  float _645;
  float _646;
  float _649;
  float _652;
  float _656;
  float _660;
  float _664;
  float _684;
  float _696;
  float _708;
  float _720;
  float _727;
  float _734;
  float _741;
  float _747;
  float _748;
  float _750;
  float _752;
  float _754;
  float _759;
  float _780;
  float _782;
  float _785;
  float _788;
  float _791;
  float _797;
  float _839;
  float _842;
  float _848;
  float _890;
  float _907;
  float _911;
  float _915;
  _22 = WaveReadLaneFirst(_materialIndex);
  _30 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_22 < (uint)170000), _22, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._blendRatio);
  _33 = WaveReadLaneFirst(_materialIndex);
  _41 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_33 < (uint)170000), _33, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._enableBlend);
  if ((_30 < 0.001f) && (_41 < 0.001f)) {
    if (true) discard;
  }
  _50 = _screenSizeAndInvSize.x / _screenSizeAndInvSize.y;
  _53 = WaveReadLaneFirst(_materialIndex);
  _61 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_53 < (uint)170000), _53, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._noiseTex);
  if (_30 > 0.0f) {
    _65 = saturate(_30 * 2.0f);  // [sem: expr_sat]
    _68 = WaveReadLaneFirst(_materialIndex);
    _76 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_68 < (uint)170000), _68, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._noiseTex);
    _90 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_76 < (uint)65000), _76, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((TEXCOORD.x * 2.0f) * _50), ((_time.x * 0.02f) + (TEXCOORD.y * 2.0f))));
    _93 = TEXCOORD.x + -0.5f;
    _94 = TEXCOORD.y + -0.5f;
    _95 = _50 * _93;
    _97 = atan(_94 / _95);
    _98 = (_95 < 0.0f);
    _99 = (_95 == 0.0f);
    _100 = (_94 >= 0.0f);
    _101 = (_94 < 0.0f);
    _112 = select((_100 && _99), 0.5f, select((_101 && _99), -0.5f, (select((_101 && _98), (_97 + -3.1415927f), select((_100 && _98), (_97 + 3.1415927f), _97)) * 0.31830987f)));
    _113 = _94 * _94;
    _116 = sqrt((_95 * _95) + _113);
    _119 = _time.x * 0.2f;
    _122 = WaveReadLaneFirst(_materialIndex);
    _130 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_122 < (uint)170000), _122, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._noiseTex);
    _142 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_130 < (uint)65000), _130, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_50 * 2.0f) * _112) - _119), ((_116 * 0.5f) - _119)));
    _144 = 1.0f - _65;
    _146 = (_65 * 2.0f) + -1.0f;
    // [sem: expr_sat]
    _158 = saturate((_116 - ((_144 * 1.5f) * ((((_142.x + -1.0f) + ((_90.w - _142.x) * saturate(_146))) * _65) + 1.0f))) / _144);
    _161 = saturate(1.5f - abs(_146));  // [sem: expr_sat]
    _164 = WaveReadLaneFirst(_materialIndex);
    _172 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_164 < (uint)170000), _164, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._noiseTex);
    _187 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_172 < (uint)65000), _172, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_112 * _50) * 6.0f) - (_time.x * 0.2f)), ((_116 - _time.x) * 0.5f)));
    _195 = (_161 * 4.0f) * saturate(sqrt(_113 + (_93 * _93)));
    _206 = ((saturate(1.5f - abs((_158 * 2.0f) + -1.0f)) * 4.0f) * saturate((1.0f - _158) * 5.0f)) + _161;
    _210 = (_206 + (_195 * (_187.x + -0.5f))) * _93;
    _214 = (_206 + (_195 * (_187.y + -0.5f))) * _94;
    // [sem: _3__36__0__0__g_sceneColor_sample]
    _221 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - (_210 * 0.033333335f)), (TEXCOORD.y - (_214 * 0.033333335f))));
    _227 = (pow(_221.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _230 = (pow(_221.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _233 = (pow(_221.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    // [sem: _3__36__0__0__g_sceneColor_sample]
    _238 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - (_210 * 0.06666667f)), (TEXCOORD.y - (_214 * 0.06666667f))));
    _244 = (pow(_238.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _247 = (pow(_238.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _250 = (pow(_238.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    // [sem: _3__36__0__0__g_sceneColor_sample]
    _255 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - (_210 * 0.1f)), (TEXCOORD.y - (_214 * 0.1f))));
    _261 = (pow(_255.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _264 = (pow(_255.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _267 = (pow(_255.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _294 = ((exp2(log2(max(0.0f, (_227 + -0.8359375f)) / (18.851562f - (_227 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_244 + -0.8359375f)) / (18.851562f - (_244 * 18.6875f))) * 6.277395f)) + exp2(log2(max(0.0f, (_261 + -0.8359375f)) / (18.851562f - (_261 * 18.6875f))) * 6.277395f)) * 2500.0f;
    _321 = ((exp2(log2(max(0.0f, (_230 + -0.8359375f)) / (18.851562f - (_230 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_247 + -0.8359375f)) / (18.851562f - (_247 * 18.6875f))) * 6.277395f)) + exp2(log2(max(0.0f, (_264 + -0.8359375f)) / (18.851562f - (_264 * 18.6875f))) * 6.277395f)) * 2500.0f;
    _348 = ((exp2(log2(max(0.0f, (_233 + -0.8359375f)) / (18.851562f - (_233 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_250 + -0.8359375f)) / (18.851562f - (_250 * 18.6875f))) * 6.277395f)) + exp2(log2(max(0.0f, (_267 + -0.8359375f)) / (18.851562f - (_267 * 18.6875f))) * 6.277395f)) * 2500.0f;
    _349 = dot(float3(_294, _321, _348), float3(0.2126f, 0.7152f, 0.0722f));
    _352 = WaveReadLaneFirst(_materialIndex);
    _360 = WaveReadLaneFirst(BindlessParameters_PostProcessWeatherBlend[((int)((uint)((uint)(select(((uint)_352 < (uint)170000), _352, 0))) + (uint)(0)))].BindlessParameters_PostProcessWeatherBlend._berserkColor);
    _363 = (float)((uint)((uint)(((uint)((uint)(_360)) >> 16) & 255)));
    _366 = (float)((uint)((uint)(((uint)((uint)(_360)) >> 8) & 255)));
    _368 = (float)((uint)((uint)(_360 & 255)));
    _377 = select(((_363 * 0.003921569f) < 0.04045f), (_363 * 0.000303527f), exp2(log2((_363 * 0.003717127f) + 0.052132703f) * 2.4f));
    _386 = select(((_366 * 0.003921569f) < 0.04045f), (_366 * 0.000303527f), exp2(log2((_366 * 0.003717127f) + 0.052132703f) * 2.4f));
    _395 = select(((_368 * 0.003921569f) < 0.04045f), (_368 * 0.000303527f), exp2(log2((_368 * 0.003717127f) + 0.052132703f) * 2.4f));
    _399 = (((_377 + -1.0f) * 0.8f) + 1.0f) * _294;
    _403 = (((_386 + -1.0f) * 0.8f) + 1.0f) * _321;
    _407 = (((_395 + -1.0f) * 0.8f) + 1.0f) * _348;
    // [sem: expr_sat]
    _415 = saturate((((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x) + (_90.z * 0.025f)) * 12.5f);
    _419 = (_415 * _415) * (3.0f - (_415 * 2.0f));
    _425 = (_419 * ((lerp(_294, _349, 0.8f)) - _399)) + _399;
    _431 = (_419 * ((lerp(_321, _349, 0.8f)) - _403)) + _403;
    _437 = (_419 * ((lerp(_348, _349, 0.8f)) - _407)) + _407;
    _440 = saturate((_30 + -0.5f) * 2.0f);  // [sem: expr_sat]
    _443 = max(0.001f, _exposure0.x);
    _457 = ((((_395 / _443) - _437) * _440) + _437);
    _458 = ((((_386 / _443) - _431) * _440) + _431);
    _459 = ((((_377 / _443) - _425) * _440) + _425);
    _460 = _158;
  } else {
    _457 = 0.0f;
    _458 = 0.0f;
    _459 = 0.0f;
    _460 = 0.0f;
  }
  _461 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    // [sem: _460_sat]
    _476 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _461, 0)))).x) & 127)))) + 0.5f);
  } else {
    _476 = saturate(_460);  // [sem: _460_sat]
  }
  _479 = (_localToneMappingParams.w > 0.0f);
  if (_479) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_459, _458, _457));
    _727 = _rndx_tonemapped_color.x;
    _734 = _rndx_tonemapped_color.y;
    _741 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _747 = 1.0f - abs(_etcParams.w);
      _748 = saturate(_etcParams.w);  // [sem: expr_sat]
      _750 = (_747 * _727) + _748;
      _752 = (_747 * _734) + _748;
      _754 = (_747 * _741) + _748;
      if (_colorGradingParams.w > 0.0f) {
        _759 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _776 = (((max(0.0f, (1.0f - _754)) - _754) * _759) + _754);
        _777 = (((max(0.0f, (1.0f - _752)) - _752) * _759) + _752);
        _778 = (((max(0.0f, (1.0f - _750)) - _750) * _759) + _750);
      } else {
        _776 = _754;
        _777 = _752;
        _778 = _750;
      }
      _780 = _userImageAdjust.y + 1.0f;
      _782 = _userImageAdjust.x + 0.5f;
      _785 = ((_778 + -0.5f) * _780) + _782;
      _788 = ((_777 + -0.5f) * _780) + _782;
      _791 = ((_776 + -0.5f) * _780) + _782;
      _797 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _832 = exp2(log2(saturate(mad(_colorBlind2.z, _791, mad(_colorBlind2.y, _788, (_colorBlind2.x * _785))))) * _797);
      _833 = exp2(log2(saturate(mad(_colorBlind1.z, _791, mad(_colorBlind1.y, _788, (_colorBlind1.x * _785))))) * _797);
      _834 = exp2(log2(saturate(mad(_colorBlind0.z, _791, mad(_colorBlind0.y, _788, (_colorBlind0.x * _785))))) * _797);
    } else {
      _832 = _741;
      _833 = _734;
      _834 = _727;
    }
  } else {
    _832 = _457;
    _833 = _458;
    _834 = _459;
  }
  if (_etcParams.y > 1.0f) {
    _839 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _842 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _848 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_839, _842), float2(_839, _842))));  // [sem: expr_sat]
    _853 = (_848 * _832);
    _854 = (_848 * _833);
    _855 = (_848 * _834);
  } else {
    _853 = _832;
    _854 = _833;
    _855 = _834;
  }
  if (_479 && (_etcParams.z > 0.0f)) {
    _885 = select((_855 <= 0.0031308f), (_855 * 12.92f), (((pow(_855, 0.41666666f)) * 1.055f) + -0.055f));
    _886 = select((_854 <= 0.0031308f), (_854 * 12.92f), (((pow(_854, 0.41666666f)) * 1.055f) + -0.055f));
    _887 = select((_853 <= 0.0031308f), (_853 * 12.92f), (((pow(_853, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _885 = _855;
    _886 = _854;
    _887 = _853;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _890 = (float)((uint)((uint)(_461)));
    if (!(_890 < _viewDir.w)) {
      if (!(!(_890 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _901 = 0.0f;
        _902 = 0.0f;
        _903 = 0.0f;
      } else {
        _901 = _885;
        _902 = _886;
        _903 = _887;
      }
    } else {
      _901 = 0.0f;
      _902 = 0.0f;
      _903 = 0.0f;
    }
  } else {
    _901 = _885;
    _902 = _886;
    _903 = _887;
  }
  _907 = exp2(log2(_901 * 0.0001f) * 0.15930176f);
  _911 = exp2(log2(_902 * 0.0001f) * 0.15930176f);
  _915 = exp2(log2(_903 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_907 * 18.6875f) + 1.0f)) * ((_907 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_911 * 18.6875f) + 1.0f)) * ((_911 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_915 * 18.6875f) + 1.0f)) * ((_915 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _476;
  return SV_Target;
}
