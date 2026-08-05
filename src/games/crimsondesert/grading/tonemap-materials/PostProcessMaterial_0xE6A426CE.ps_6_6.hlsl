struct PostProcessUnderwaterStruct {
  uint _causticsTexture;
  uint _heatHazeLookupTexture;
  float _lightThreshHold;
  float _shaftStretchLength;
  float _shaftIntensity;
  float _shaftDecay;
  float _blurStrength;
  float _blurDecay;
  float _surfaceEdgeWidth;
  float _wobbleScale;
  float _wobbleSpeed;
  float _wobbleStrength;
  float _hazeStrength;
  float _hazeScale;
  float _hazeSpeed;
  float _chromaticAberrationStrength;
  float _chromaticAberrationFalloff;
  uint _underWaterTintColor;
  float _causticsSplit;
  float _causticsStrength;
  uint _causticsTint;
  float _causticsSpeed;
  float _causticsLuminanceMaskStrength;
  float _causticsWorldScale;
  float _causticsSmallWorldScale;
  float _causticsSmallStrength;
};

struct BindlessParameters_PostProcessUnderwater {
  PostProcessUnderwaterStruct BindlessParameters_PostProcessUnderwater;
};


Texture2D<float> __3__36__0__0__g_waterDepthTop : register(t111, space36);

Texture2D<float> __3__36__0__0__g_waterDepthBottom : register(t112, space36);

Texture2D<float> __3__36__0__0__g_airPocketDepthTop : register(t105, space36);

Texture2D<float> __3__36__0__0__g_airPocketDepthBottom : register(t113, space36);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

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

cbuffer __3__35__0__0__WaterConstantBuffer : register(b2, space35) {
  float4 _waterDepthFieldSize : packoffset(c000.x);
  float4 _waterDepthFieldTextureSize : packoffset(c001.x);
  float4 _waterDepthMinMax : packoffset(c002.x);
  column_major float4x4 _waterDepthViewProjRelative : packoffset(c003.x);
  column_major float4x4 _waterDepthViewProjRelativeInv : packoffset(c007.x);
  float4 _waterDepthFrustumPlanes[6] : packoffset(c011.x);
  float4 _waterReadbackTextureSize : packoffset(c017.x);
  column_major float4x4 _waterReadbackViewProjRelative : packoffset(c018.x);
  column_major float4x4 _waterReadbackViewProjRelativeInv : packoffset(c022.x);
  float4 _ripplePivot : packoffset(c026.x);
  float4 _rippleFieldSize : packoffset(c027.x);
  float4 _rippleFieldTextureSize : packoffset(c028.x);
  float4 _shallowWaterPivot : packoffset(c029.x);
  float4 _shallowWaterFieldSize : packoffset(c030.x);
  float4 _shallowWaterFieldTextureSize : packoffset(c031.x);
};

cbuffer __3__35__0__0__SeaConstantBuffer : register(b0, space35) {
  float _seaBaseline : packoffset(c000.x);
  float _seaBaselinePrev : packoffset(c000.y);
  float _seaBaselineLow : packoffset(c000.z);
  float _seaDryBaseLine : packoffset(c000.w);
  float _cascadeSize1 : packoffset(c001.x);
  float _cascadeSize2 : packoffset(c001.y);
  float _cascadeSize3 : packoffset(c001.z);
  float _cascadeSize4 : packoffset(c001.w);
  float _cascadeAmplitude1 : packoffset(c002.x);
  float _cascadeAmplitude2 : packoffset(c002.y);
  float _cascadeAmplitude3 : packoffset(c002.z);
  float _cascadeAmplitude4 : packoffset(c002.w);
  float _choppyScale : packoffset(c003.x);
  float _seaExtinctionCoefficient : packoffset(c003.y);
  float _underWaterMossRate : packoffset(c003.z);
  float _underWaterMossScale : packoffset(c003.w);
  uint _scatteringAlbedo : packoffset(c004.x);
  float _waterRatio : packoffset(c004.y);
  float _mossHeightDepth : packoffset(c004.z);
  float _mossFadeRange : packoffset(c004.w);
  float _dirDependency : packoffset(c005.x);
  float _underWaterFroxelExtinctionNearScale : packoffset(c005.y);
  float _underWaterFroxelExtinctionFarScale : packoffset(c005.z);
  float _underWaterFroxelExtinctionStartDistance : packoffset(c005.w);
  float4 _underWaterTintParams0 : packoffset(c006.x);
  float4 _underWaterTintParams1 : packoffset(c007.x);
  uint _applyOceanWave : packoffset(c008.x);
  float _seaWaveTime : packoffset(c008.y);
  uint2 _seaConstantdummy : packoffset(c008.z);
};

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

typedef BindlessParameters_PostProcessUnderwater BindlessParameters_PostProcessUnderwater_t;
ConstantBuffer<BindlessParameters_PostProcessUnderwater_t> BindlessParameters_PostProcessUnderwater[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticBilinearBlackBorder : register(s4, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

static const int _global_0[1];

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  bool _2;
  float _261;
  float _262;
  float _263;
  float _389;
  float _390;
  float _450;
  float _490;
  float _491;
  float _492;
  int _538;
  float _539;
  float _540;
  float _541;
  float _542;
  float _697;
  float _698;
  float _758;
  float _773;
  float _900;
  float _901;
  float _902;
  float _948;
  float _949;
  float _950;
  float _951;
  int _952;
  float _1004;
  float _1005;
  float _1006;
  float _1007;
  int _1008;
  float _1035;
  float _1036;
  float _1037;
  float _1051;
  float _1256;
  float _1257;
  float _1258;
  float _1351;
  float _1352;
  float _1353;
  float _1407;
  float _1408;
  float _1409;
  float _1428;
  float _1429;
  float _1430;
  float _1460;
  float _1461;
  float _1462;
  float _1476;
  float _1477;
  float _1478;
  int _50;
  float _62;
  float _64;
  float _69;
  int _98;
  float _106;
  float4 _109;
  int _115;
  float _123;
  float _124;
  float _126;
  float _127;
  float _132;
  float _137;
  float _140;
  float _142;
  float _156;
  float4 _195;
  float _201;
  float4 _203;
  float4 _208;
  float _212;
  float4 _214;
  float4 _219;
  bool _249;
  float _265;
  float _266;
  float _269;
  float _273;
  float _281;
  float _283;
  float _288;
  float _300;
  float _309;
  float _310;
  float _322;
  float _333;
  float _337;
  float _356;
  float _359;
  float _360;
  float _369;
  float _372;
  float _375;
  float _380;
  float _382;
  float _391;
  float _395;
  float _397;
  float _400;
  float _405;
  float _409;
  float _422;
  float _430;
  float _444;
  float _456;
  float _463;
  float _467;
  float _469;
  float _478;
  float _493;
  float _494;
  float _495;
  float _507;
  float _518;
  float _529;
  bool _530;
  float _533;
  float _536;
  float _543;
  int _546;
  float _554;
  float _562;
  float _564;
  float _566;
  int _569;
  float _577;
  float _581;
  float _589;
  float _591;
  float _596;
  float _608;
  float _617;
  float _618;
  float _630;
  float _641;
  float _645;
  float _664;
  float _667;
  float _668;
  float _677;
  float _680;
  float _683;
  float _688;
  float _690;
  float _699;
  float _703;
  float _705;
  float _708;
  float _713;
  float _717;
  float _730;
  float _738;
  float _752;
  float _764;
  float4 _776;
  float _783;
  float _785;
  float _787;
  float _789;
  float _790;
  int _791;
  float _802;
  float _803;
  float _804;
  float _805;
  float _809;
  float _813;
  int _816;
  float _824;
  float _825;
  float4 _831;
  float _837;
  float4 _839;
  float4 _844;
  float _848;
  float4 _850;
  float4 _855;
  float _903;
  float _904;
  float _905;
  float _917;
  float _928;
  float _939;
  bool _940;
  float _943;
  float _946;
  float _953;
  int _956;
  float _964;
  float _969;
  int _972;
  float _980;
  float _983;
  float4 _990;
  float _995;
  float _997;
  float _999;
  float _1000;
  int _1001;
  float _1010;
  uint _1038;
  bool _1054;
  float _1060;
  float _1079;
  float _1095;
  float _1111;
  float _1112;
  float _1116;
  float _1119;
  float _1122;
  float _1129;
  float _1136;
  float _1143;
  float _1144;
  float _1145;
  float _1146;
  float _1147;
  float _1148;
  float _1149;
  float _1165;
  float _1181;
  float _1197;
  float _1198;
  float _1199;
  float _1200;
  float _1201;
  float _1218;
  float _1219;
  float _1220;
  float _1221;
  float _1224;
  float _1227;
  float _1231;
  float _1235;
  float _1239;
  float _1259;
  float _1271;
  float _1283;
  float _1295;
  float _1302;
  float _1309;
  float _1316;
  float _1322;
  float _1323;
  float _1325;
  float _1327;
  float _1329;
  float _1334;
  float _1355;
  float _1357;
  float _1360;
  float _1363;
  float _1366;
  float _1372;
  float _1414;
  float _1417;
  float _1423;
  float _1465;
  int __loop_jump_target = -1;
  _2 = ((_global_0[0]) == 0);
  if (_passIndex == 0) {
    _50 = (((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * TEXCOORD.x) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * TEXCOORD.y) + -0.5f))), 0)))).x) & 127;
    if (!(((uint)((int)(_50) + (int)(-105)) < (uint)2) || ((_50 == 26) || ((_50 == 107) || ((uint)((int)(_50) + (int)(-27)) < (uint)2))))) {
      _62 = (TEXCOORD.x * 2.0f) + -1.0f;
      _64 = 1.0f - (TEXCOORD.y * 2.0f);
      _69 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
      if (abs((((_invViewProj[1].w) + mad((_invViewProj[1].z), _69, mad((_invViewProj[1].y), _64, ((_invViewProj[1].x) * _62)))) / (mad((_invViewProj[3].z), _69, mad((_invViewProj[3].y), _64, ((_invViewProj[3].x) * _62))) + (_invViewProj[3].w))) - _seaBaseline) < 1.0f) {
        _98 = WaveReadLaneFirst(_materialIndex);
        _106 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_98 < (uint)170000), _98, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._surfaceEdgeWidth);
        _109 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
        _115 = WaveReadLaneFirst(_materialIndex);
        _123 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_115 < (uint)170000), _115, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._lightThreshHold);
        _124 = dot(float3(_109.x, _109.y, _109.z), float3(0.2126f, 0.7152f, 0.0722f));
        _126 = (_123 * 0.75f) + 1e-05f;
        _127 = _124 - _123;
        _132 = saturate((_127 + _126) / ((_123 * 1.5f) + 2e-05f));  // [sem: expr_sat]
        _137 = (float)((uint)((uint)(((uint)((uint)(_scatteringAlbedo)) >> 16) & 255)));
        _140 = (float)((uint)((uint)(((uint)((uint)(_scatteringAlbedo)) >> 8) & 255)));
        _142 = (float)((uint)((uint)(_scatteringAlbedo & 255)));
        // [sem: expr_sat]
        _156 = saturate(min(min(TEXCOORD.x, (1.0f - TEXCOORD.x)), min(TEXCOORD.y, (1.0f - TEXCOORD.y))) / max(_106, 0.001f)) * (max(_127, ((_132 * _132) * _126)) / max(_124, 1e-05f));
        _1035 = ((_156 * _109.z) * select(((_142 * 0.003921569f) < 0.04045f), (_142 * 0.000303527f), exp2(log2((_142 * 0.003717127f) + 0.052132703f) * 2.4f)));
        _1036 = ((_156 * _109.y) * select(((_140 * 0.003921569f) < 0.04045f), (_140 * 0.000303527f), exp2(log2((_140 * 0.003717127f) + 0.052132703f) * 2.4f)));
        _1037 = ((_156 * _109.x) * select(((_137 * 0.003921569f) < 0.04045f), (_137 * 0.000303527f), exp2(log2((_137 * 0.003717127f) + 0.052132703f) * 2.4f)));
      } else {
        _1035 = 0.0f;
        _1036 = 0.0f;
        _1037 = 0.0f;
      }
    } else {
      _1035 = 0.0f;
      _1036 = 0.0f;
      _1037 = 0.0f;
    }
  } else {
    if (_passIndex == 1) {
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _195 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
      _201 = _srcTargetSizeAndInv.z * 1.3846154f;
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _203 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_201 + TEXCOORD.x), TEXCOORD.y));
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _208 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _201), TEXCOORD.y));
      _212 = _srcTargetSizeAndInv.z * 3.2307692f;
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _214 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_212 + TEXCOORD.x), TEXCOORD.y));
      // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
      _219 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _212), TEXCOORD.y));
      _1035 = ((((_208.z + _203.z) * 0.31621623f) + (_195.z * 0.22702703f)) + ((_219.z + _214.z) * 0.07027027f));
      _1036 = ((((_208.y + _203.y) * 0.31621623f) + (_195.y * 0.22702703f)) + ((_219.y + _214.y) * 0.07027027f));
      _1037 = ((((_208.x + _203.x) * 0.31621623f) + (_195.x * 0.22702703f)) + ((_219.x + _214.x) * 0.07027027f));
    } else {
      if (_passIndex == 2) {
        _249 = (_sunDirection.y > 0.0f);
        if ((_249) || ((!(_249)) && (_sunDirection.y > _moonDirection.y))) {
          _261 = _sunDirection.z;
          _262 = _sunDirection.y;
          _263 = _sunDirection.x;
        } else {
          _261 = _moonDirection.z;
          _262 = _moonDirection.y;
          _263 = _moonDirection.x;
        }
        _265 = rsqrt(dot(float3(_263, _262, _261), float3(_263, _262, _261)));  // [sem: invLength]
        _266 = _265 * _262;
        _269 = saturate((_266 + -0.08f) * 3.7037039f);  // [sem: expr_sat]
        _273 = (_269 * _269) * (3.0f - (_269 * 2.0f));
        if (TEXCOORD.x == saturate(TEXCOORD.x)) {
          if (TEXCOORD.y == saturate(TEXCOORD.y)) {
            _281 = (TEXCOORD.x * 2.0f) + -1.0f;
            _283 = 1.0f - (TEXCOORD.y * 2.0f);
            _288 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y))).x));
            _300 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _288, mad((_invViewProj[3].y), _283, ((_invViewProj[3].x) * _281)));
            _309 = (mad((_invViewProj[1].z), _288, mad((_invViewProj[1].y), _283, ((_invViewProj[1].x) * _281))) + (_invViewProj[1].w)) / _300;
            _310 = _309 + 0.1f;
            _322 = ((mad((_invViewProj[0].z), _288, mad((_invViewProj[0].y), _283, ((_invViewProj[0].x) * _281))) + (_invViewProj[0].w)) / _300) - _viewPos.x;
            _333 = ((mad((_invViewProj[2].z), _288, mad((_invViewProj[2].y), _283, ((_invViewProj[2].x) * _281))) + (_invViewProj[2].w)) / _300) - _viewPos.z;
            _337 = (_waterDepthFieldSize.x + -1.0f) * 0.5f;
            if ((abs(_322) - _337) < 0.0f) {
              if (((1.0f - _waterDepthMinMax.z) + abs(_310 - _viewPos.y)) < 0.0f) {
                if ((abs(_333) - _337) < 0.0f) {
                  _356 = _waterDepthFieldSize.w * _333;
                  _359 = (_waterDepthFieldSize.z * _322) + 0.5f;
                  _360 = _356 + 0.5f;
                  if (!((_359 >= 1.0f) || ((_359 <= 0.0f) || ((_360 >= 1.0f) || (_360 <= 0.0f))))) {
                    _369 = 0.5f - _356;
                    // [sem: _3__36__0__0__g_waterDepthTop_sampleLod]
                    _372 = __3__36__0__0__g_waterDepthTop.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_359, _369), 0.0f);
                    // [sem: _3__36__0__0__g_waterDepthBottom_sampleLod]
                    _375 = __3__36__0__0__g_waterDepthBottom.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_359, _369), 0.0f);
                    _380 = _waterDepthMinMax.y - _waterDepthMinMax.x;
                    if (_372.x < 1.0f) {
                      _382 = _waterDepthMinMax.z + _viewPos.y;
                      _389 = ((_382 - _waterDepthMinMax.x) - (_372.x * _380));
                      _390 = _382;
                    } else {
                      _389 = -10000.0f;
                      _390 = (_waterDepthMinMax.z + _viewPos.y);
                    }
                    _391 = _390 - _waterDepthMinMax.x;
                    _395 = select((_375.x < 1.0f), (_391 - (_380 * _375.x)), -10000.0f);
                    // [sem: _3__36__0__0__g_airPocketDepthTop_sampleLod]
                    _397 = __3__36__0__0__g_airPocketDepthTop.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_359, _369), 0.0f);
                    // [sem: _3__36__0__0__g_airPocketDepthBottom_sampleLod]
                    _400 = __3__36__0__0__g_airPocketDepthBottom.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_359, _369), 0.0f);
                    _405 = select((_397.x < 1.0f), (_391 - (_397.x * _380)), -10000.0f);
                    _409 = select((_400.x < 1.0f), (_391 - (_400.x * _380)), -10000.0f);
                    if ((_310 < _389) && (_310 >= _395)) {
                      if ((_310 > _405) || (_310 < _409)) {
                        _422 = select((_409 < _395), 0.0f, 1.0f) * select((_389 < _405), 0.0f, 1.0f);
                        _430 = (_422 * ((_409 - _389) + ((_389 - _409) * select((_310 < _405), 0.0f, 1.0f)))) + _389;
                        // [sem: expr_sat]
                        _444 = saturate(abs((_310 - _430) - (((select((_389 < _409), 0.0f, 1.0f) * select((_405 < _389), 0.0f, 1.0f)) * (1.0f - _422)) * (_409 - _430))) * 1.3333334f);
                        _450 = ((_444 * _444) * (3.0f - (_444 * 2.0f)));
                      } else {
                        _450 = 0.0f;
                      }
                    } else {
                      _450 = 0.0f;
                    }
                  } else {
                    _450 = 0.0f;
                  }
                } else {
                  _450 = 0.0f;
                }
              } else {
                _450 = 0.0f;
              }
            } else {
              _450 = 0.0f;
            }
            _456 = saturate(abs(_309 - _seaBaseline) * 0.6666667f);  // [sem: expr_sat]
            _463 = saturate(max(_450, (1.0f - ((_456 * _456) * (3.0f - (_456 * 2.0f))))));  // [sem: expr_sat]
            if (!(_463 <= 0.0f)) {
              _467 = _309 - _viewPos.y;
              _469 = rsqrt(dot(float3(_322, _467, _333), float3(_322, _467, _333)));  // [sem: invLength]
              // [sem: expr_sat]
              _478 = saturate((dot(float3((_469 * _322), (_469 * _467), (_469 * _333)), float3((_265 * _263), _266, (_265 * _261))) * 0.5f) + 0.5f);
              if ((_249) || ((!(_249)) && (_sunDirection.y > _moonDirection.y))) {
                _490 = _sunDirection.z;
                _491 = _sunDirection.y;
                _492 = _sunDirection.x;
              } else {
                _490 = _moonDirection.z;
                _491 = _moonDirection.y;
                _492 = _moonDirection.x;
              }
              _493 = _492 * 10000.0f;
              _494 = _491 * 10000.0f;
              _495 = _490 * 10000.0f;
              _507 = (_viewProjRelative[3].w) + mad((_viewProjRelative[3].z), _495, mad((_viewProjRelative[3].y), _494, ((_viewProjRelative[3].x) * _493)));
              _518 = (((mad((_viewProjRelative[0].z), _495, mad((_viewProjRelative[0].y), _494, ((_viewProjRelative[0].x) * _493))) + (_viewProjRelative[0].w)) / _507) * 0.5f) + 0.5f;
              _529 = 0.5f - (((mad((_viewProjRelative[1].z), _495, mad((_viewProjRelative[1].y), _494, ((_viewProjRelative[1].x) * _493))) + (_viewProjRelative[1].w)) / _507) * 0.5f);
              _530 = (_507 <= 0.0f);
              _533 = TEXCOORD.x - select(_530, (-0.0f - _518), _518);
              _536 = TEXCOORD.y - select(_530, (-0.0f - _529), _529);
              _538 = 0;
              _539 = 0.0f;
              _540 = 0.0f;
              _541 = 0.0f;
              _542 = 0.0f;
              while(true) {
                _543 = (float)((int)(_538));
                _546 = WaveReadLaneFirst(_materialIndex);
                _554 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_546 < (uint)170000), _546, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._shaftStretchLength);
                _562 = (exp2(log2(_543 * 0.06666667f) * 1.1f) * _554) * rsqrt(dot(float2(_533, _536), float2(_533, _536)));
                _564 = TEXCOORD.x - (_562 * _533);
                _566 = TEXCOORD.y - (_562 * _536);
                _569 = WaveReadLaneFirst(_materialIndex);
                _577 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_569 < (uint)170000), _569, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._shaftDecay);
                _581 = exp2((_543 * 0.9f) * log2(_577));
                if (_564 == saturate(_564)) {
                  if (_566 == saturate(_566)) {
                    _589 = (_564 * 2.0f) + -1.0f;
                    _591 = 1.0f - (_566 * 2.0f);
                    _596 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_564, _566))).x));
                    _608 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _596, mad((_invViewProj[3].y), _591, ((_invViewProj[3].x) * _589)));
                    _617 = (mad((_invViewProj[1].z), _596, mad((_invViewProj[1].y), _591, ((_invViewProj[1].x) * _589))) + (_invViewProj[1].w)) / _608;
                    _618 = _617 + 0.1f;
                    _630 = ((mad((_invViewProj[0].z), _596, mad((_invViewProj[0].y), _591, ((_invViewProj[0].x) * _589))) + (_invViewProj[0].w)) / _608) - _viewPos.x;
                    _641 = ((mad((_invViewProj[2].z), _596, mad((_invViewProj[2].y), _591, ((_invViewProj[2].x) * _589))) + (_invViewProj[2].w)) / _608) - _viewPos.z;
                    _645 = (_waterDepthFieldSize.x + -1.0f) * 0.5f;
                    if ((abs(_630) - _645) < 0.0f) {
                      if (((1.0f - _waterDepthMinMax.z) + abs(_618 - _viewPos.y)) < 0.0f) {
                        if ((abs(_641) - _645) < 0.0f) {
                          _664 = _waterDepthFieldSize.w * _641;
                          _667 = (_waterDepthFieldSize.z * _630) + 0.5f;
                          _668 = _664 + 0.5f;
                          if (!((_667 >= 1.0f) || ((_667 <= 0.0f) || ((_668 >= 1.0f) || (_668 <= 0.0f))))) {
                            _677 = 0.5f - _664;
                            // [sem: _3__36__0__0__g_waterDepthTop_sampleLod]
                            _680 = __3__36__0__0__g_waterDepthTop.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_667, _677), 0.0f);
                            // [sem: _3__36__0__0__g_waterDepthBottom_sampleLod]
                            _683 = __3__36__0__0__g_waterDepthBottom.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_667, _677), 0.0f);
                            _688 = _waterDepthMinMax.y - _waterDepthMinMax.x;
                            if (_680.x < 1.0f) {
                              _690 = _waterDepthMinMax.z + _viewPos.y;
                              _697 = ((_690 - _waterDepthMinMax.x) - (_680.x * _688));
                              _698 = _690;
                            } else {
                              _697 = -10000.0f;
                              _698 = (_waterDepthMinMax.z + _viewPos.y);
                            }
                            _699 = _698 - _waterDepthMinMax.x;
                            _703 = select((_683.x < 1.0f), (_699 - (_688 * _683.x)), -10000.0f);
                            // [sem: _3__36__0__0__g_airPocketDepthTop_sampleLod]
                            _705 = __3__36__0__0__g_airPocketDepthTop.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_667, _677), 0.0f);
                            // [sem: _3__36__0__0__g_airPocketDepthBottom_sampleLod]
                            _708 = __3__36__0__0__g_airPocketDepthBottom.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_667, _677), 0.0f);
                            _713 = select((_705.x < 1.0f), (_699 - (_705.x * _688)), -10000.0f);
                            _717 = select((_708.x < 1.0f), (_699 - (_708.x * _688)), -10000.0f);
                            if ((_618 < _697) && (_618 >= _703)) {
                              if ((_618 > _713) || (_618 < _717)) {
                                _730 = select((_717 < _703), 0.0f, 1.0f) * select((_697 < _713), 0.0f, 1.0f);
                                _738 = (_730 * ((_717 - _697) + ((_697 - _717) * select((_618 < _713), 0.0f, 1.0f)))) + _697;
                                // [sem: expr_sat]
                                _752 = saturate(abs((_618 - _738) - (((select((_697 < _717), 0.0f, 1.0f) * select((_713 < _697), 0.0f, 1.0f)) * (1.0f - _730)) * (_717 - _738))) * 1.3333334f);
                                _758 = ((_752 * _752) * (3.0f - (_752 * 2.0f)));
                              } else {
                                _758 = 0.0f;
                              }
                            } else {
                              _758 = 0.0f;
                            }
                          } else {
                            _758 = 0.0f;
                          }
                        } else {
                          _758 = 0.0f;
                        }
                      } else {
                        _758 = 0.0f;
                      }
                    } else {
                      _758 = 0.0f;
                    }
                    _764 = saturate(abs(_617 - _seaBaseline) * 0.6666667f);  // [sem: expr_sat]
                    _773 = saturate(max(_758, (1.0f - ((_764 * _764) * (3.0f - (_764 * 2.0f))))));  // [sem: expr_sat]
                  } else {
                    _773 = 0.0f;  // [sem: expr_sat]
                  }
                } else {
                  _773 = 0.0f;  // [sem: expr_sat]
                }
                // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
                _776 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearBlackBorder, float2(_564, _566));
                _783 = (lerp(_463, _773, 0.35f)) * _581;  // [sem: blended]
                _785 = (_776.x * _783) + _542;
                _787 = (_776.y * _783) + _541;
                _789 = (_776.z * _783) + _540;
                _790 = _581 + _539;
                _791 = (int)(_538) + (int)(1);
                if (!(_791 == 16)) {
                  _538 = _791;
                  _539 = _790;
                  _540 = _789;
                  _541 = _787;
                  _542 = _785;
                  continue;
                }
                while(true) {
                  _802 = max(_790, 0.0001f);
                  _803 = _785 / _802;
                  _804 = _787 / _802;
                  _805 = _789 / _802;
                  // [sem: expr_sat]
                  _809 = saturate((dot(float3(_803, _804, _805), float3(0.2126f, 0.7152f, 0.0722f)) + -0.02f) * 10.000001f);
                  _813 = (_809 * _809) * (3.0f - (_809 * 2.0f));
                  _816 = WaveReadLaneFirst(_materialIndex);
                  _824 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_816 < (uint)170000), _816, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._shaftIntensity);
                  _825 = ((((_273 * _273) * 1.25f) * _463) * (((_478 * _478) * 0.75f) + 0.5f)) * _824;
                  if (!_2) {
                    continue;
                  }
                  _1035 = (exp2(log2(max((_813 * _805), 0.0f)) * 1.05f) * _825);
                  _1036 = (exp2(log2(max((_813 * _804), 0.0f)) * 1.05f) * _825);
                  _1037 = (exp2(log2(max((_813 * _803), 0.0f)) * 1.05f) * _825);
                  break;
                }
                break;
              }
            } else {
              _1035 = 0.0f;
              _1036 = 0.0f;
              _1037 = 0.0f;
            }
          } else {
            _1035 = 0.0f;
            _1036 = 0.0f;
            _1037 = 0.0f;
          }
        } else {
          _1035 = 0.0f;
          _1036 = 0.0f;
          _1037 = 0.0f;
        }
      } else {
        if (_passIndex == 3) {
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _831 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
          _837 = _srcTargetSizeAndInv.z * 1.0384616f;
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _839 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_837 + TEXCOORD.x), TEXCOORD.y));
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _844 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _837), TEXCOORD.y));
          _848 = _srcTargetSizeAndInv.z * 2.4230769f;
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _850 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_848 + TEXCOORD.x), TEXCOORD.y));
          // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
          _855 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _848), TEXCOORD.y));
          _1035 = ((((_844.z + _839.z) * 0.31621623f) + (_831.z * 0.22702703f)) + ((_855.z + _850.z) * 0.07027027f));
          _1036 = ((((_844.y + _839.y) * 0.31621623f) + (_831.y * 0.22702703f)) + ((_855.y + _850.y) * 0.07027027f));
          _1037 = ((((_844.x + _839.x) * 0.31621623f) + (_831.x * 0.22702703f)) + ((_855.x + _850.x) * 0.07027027f));
        } else {
          if ((_passIndex & -2) == 4) {
            if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
              _900 = _sunDirection.z;
              _901 = _sunDirection.y;
              _902 = _sunDirection.x;
            } else {
              _900 = _moonDirection.z;
              _901 = _moonDirection.y;
              _902 = _moonDirection.x;
            }
            _903 = _902 * 10000.0f;
            _904 = _901 * 10000.0f;
            _905 = _900 * 10000.0f;
            _917 = (_viewProjRelative[3].w) + mad((_viewProjRelative[3].z), _905, mad((_viewProjRelative[3].y), _904, ((_viewProjRelative[3].x) * _903)));
            _928 = (((mad((_viewProjRelative[0].z), _905, mad((_viewProjRelative[0].y), _904, ((_viewProjRelative[0].x) * _903))) + (_viewProjRelative[0].w)) / _917) * 0.5f) + 0.5f;
            _939 = 0.5f - (((mad((_viewProjRelative[1].z), _905, mad((_viewProjRelative[1].y), _904, ((_viewProjRelative[1].x) * _903))) + (_viewProjRelative[1].w)) / _917) * 0.5f);
            _940 = (_917 <= 0.0f);
            _943 = TEXCOORD.x - select(_940, (-0.0f - _928), _928);
            _946 = TEXCOORD.y - select(_940, (-0.0f - _939), _939);
            _948 = 0.0f;
            _949 = 0.0f;
            _950 = 0.0f;
            _951 = 0.0f;
            _952 = 0;
            while(true) {
              _953 = (float)((int)(_952));
              _956 = WaveReadLaneFirst(_materialIndex);
              _964 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_956 < (uint)170000), _956, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._blurStrength);
              _969 = ((_953 * 0.06666667f) * _964) * rsqrt(dot(float2(_943, _946), float2(_943, _946)));
              _972 = WaveReadLaneFirst(_materialIndex);
              _980 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_972 < (uint)170000), _972, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._blurDecay);
              _983 = (pow(_980, _953));
              // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
              _990 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearBlackBorder, float2((TEXCOORD.x - (_969 * _943)), (TEXCOORD.y - (_969 * _946))));
              _995 = (_990.x * _983) + _950;
              _997 = (_990.y * _983) + _949;
              _999 = (_990.z * _983) + _948;
              _1000 = _983 + _951;
              _1001 = (int)(_952) + (int)(1);
              if (!(_1001 == 16)) {
                _1004 = _999;
                _1005 = _997;
                _1006 = _995;
                _1007 = _1000;
                _1008 = _1001;
                while(true) {
                  _948 = _1004;
                  _949 = _1005;
                  _950 = _1006;
                  _951 = _1007;
                  _952 = _1008;
                  __loop_jump_target = 947;
                  break;
                  break;
                }
                if (__loop_jump_target == 947) {
                  __loop_jump_target = -1;
                  continue;
                }
                if (__loop_jump_target != -1) {
                  break;
                }
              }
              _1010 = max(_1000, 0.0001f);
              if (!_2) {
                _1004 = _948;
                _1005 = _949;
                _1006 = _950;
                _1007 = _951;
                _1008 = _952;
                while(true) {
                  _948 = _1004;
                  _949 = _1005;
                  _950 = _1006;
                  _951 = _1007;
                  _952 = _1008;
                  __loop_jump_target = 947;
                  break;
                  break;
                }
                if (__loop_jump_target == 947) {
                  __loop_jump_target = -1;
                  continue;
                }
                if (__loop_jump_target != -1) {
                  break;
                }
              }
              _1035 = (_999 / _1010);
              _1036 = (_997 / _1010);
              _1037 = (_995 / _1010);
              break;
            }
          } else {
            _1035 = 0.0f;
            _1036 = 0.0f;
            _1037 = 0.0f;
          }
        }
      }
    }
  }
  _1038 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _1051 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _1038, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1051 = 1.0f;
  }
  _1054 = (_localToneMappingParams.w > 0.0f);
  if (_1054) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_1037, _1036, _1035));
    _1302 = _rndx_tonemapped_color.x;
    _1309 = _rndx_tonemapped_color.y;
    _1316 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _1322 = 1.0f - abs(_etcParams.w);
      _1323 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1325 = (_1322 * _1302) + _1323;
      _1327 = (_1322 * _1309) + _1323;
      _1329 = (_1322 * _1316) + _1323;
      if (_colorGradingParams.w > 0.0f) {
        _1334 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1351 = (((max(0.0f, (1.0f - _1329)) - _1329) * _1334) + _1329);
        _1352 = (((max(0.0f, (1.0f - _1327)) - _1327) * _1334) + _1327);
        _1353 = (((max(0.0f, (1.0f - _1325)) - _1325) * _1334) + _1325);
      } else {
        _1351 = _1329;
        _1352 = _1327;
        _1353 = _1325;
      }
      _1355 = _userImageAdjust.y + 1.0f;
      _1357 = _userImageAdjust.x + 0.5f;
      _1360 = ((_1353 + -0.5f) * _1355) + _1357;
      _1363 = ((_1352 + -0.5f) * _1355) + _1357;
      _1366 = ((_1351 + -0.5f) * _1355) + _1357;
      _1372 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1407 = exp2(log2(saturate(mad(_colorBlind2.z, _1366, mad(_colorBlind2.y, _1363, (_colorBlind2.x * _1360))))) * _1372);
      _1408 = exp2(log2(saturate(mad(_colorBlind1.z, _1366, mad(_colorBlind1.y, _1363, (_colorBlind1.x * _1360))))) * _1372);
      _1409 = exp2(log2(saturate(mad(_colorBlind0.z, _1366, mad(_colorBlind0.y, _1363, (_colorBlind0.x * _1360))))) * _1372);
    } else {
      _1407 = _1316;
      _1408 = _1309;
      _1409 = _1302;
    }
  } else {
    _1407 = _1035;
    _1408 = _1036;
    _1409 = _1037;
  }
  if (_etcParams.y > 1.0f) {
    _1414 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _1417 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _1423 = saturate(1.0f - (dot(float2(_1414, _1417), float2(_1414, _1417)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _1428 = (_1423 * _1407);
    _1429 = (_1423 * _1408);
    _1430 = (_1423 * _1409);
  } else {
    _1428 = _1407;
    _1429 = _1408;
    _1430 = _1409;
  }
  if (_1054 && (_etcParams.z > 0.0f)) {
    _1460 = select((_1428 <= 0.0031308f), (_1428 * 12.92f), (((pow(_1428, 0.41666666f)) * 1.055f) + -0.055f));
    _1461 = select((_1429 <= 0.0031308f), (_1429 * 12.92f), (((pow(_1429, 0.41666666f)) * 1.055f) + -0.055f));
    _1462 = select((_1430 <= 0.0031308f), (_1430 * 12.92f), (((pow(_1430, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1460 = _1428;
    _1461 = _1429;
    _1462 = _1430;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1465 = (float)((uint)((uint)(_1038)));
    if (!(_1465 < _viewDir.w)) {
      if (!(!(_1465 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _1476 = 0.0f;
        _1477 = 0.0f;
        _1478 = 0.0f;
      } else {
        _1476 = _1462;
        _1477 = _1461;
        _1478 = _1460;
      }
    } else {
      _1476 = 0.0f;
      _1477 = 0.0f;
      _1478 = 0.0f;
    }
  } else {
    _1476 = _1462;
    _1477 = _1461;
    _1478 = _1460;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_1476, _1477, _1478), _sunDirection.y, _moonDirection.y);
    _1476 = _rndx_final_color.x;
    _1477 = _rndx_final_color.y;
    _1478 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _1476;
  SV_Target.y = _1477;
  SV_Target.z = _1478;
  SV_Target.w = _1051;
  return SV_Target;
}
