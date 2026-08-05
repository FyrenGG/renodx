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


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float> __3__36__0__0__g_waterDepthTop : register(t111, space36);

Texture2D<float> __3__36__0__0__g_waterDepthBottom : register(t112, space36);

Texture2D<float> __3__36__0__0__g_airPocketDepthTop : register(t105, space36);

Texture2D<float> __3__36__0__0__g_airPocketDepthBottom : register(t113, space36);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t19, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t70, space36);

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

SamplerState __0__4__0__0__g_staticBilinearWrap : register(s0, space4);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticBilinearBlackBorder : register(s4, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _35;
  float _44;
  int _47;
  float _55;
  float _56;
  float _57;
  float _58;
  int _61;
  float _69;
  float _72;
  int _75;
  float _83;
  float _84;
  float _201;
  float _202;
  float _203;
  float _353;
  float _354;
  float _355;
  float _494;
  float _495;
  float _706;
  float _707;
  float _708;
  float _788;
  float _789;
  float _790;
  float _803;
  float _804;
  float _1312;
  float _1313;
  float _1314;
  float _1331;
  float _1536;
  float _1537;
  float _1538;
  float _1631;
  float _1632;
  float _1633;
  float _1687;
  float _1688;
  float _1689;
  float _1708;
  float _1709;
  float _1710;
  float _1740;
  float _1741;
  float _1742;
  float _1756;
  float _1757;
  float _1758;
  int _89;
  float _97;
  float _98;
  int _101;
  float _109;
  float _112;
  float _114;
  float _116;
  int _119;
  int _127;
  float4 _138;
  int _144;
  int _152;
  float4 _167;
  float _178;
  float _186;
  float _187;
  int _206;
  float _214;
  float _237;
  float _260;
  float _262;
  float _263;
  float _264;
  float _269;
  float _281;
  float _290;
  float _299;
  float _308;
  float4 _319;
  float _326;
  float _330;
  float _334;
  float _336;
  float _357;
  float _358;
  float _359;
  float _360;
  float _363;
  float _367;
  float _372;
  int _375;
  int _383;
  float _386;
  float _389;
  float _391;
  float _398;
  float _410;
  float _422;
  float _434;
  float _435;
  float _437;
  float _439;
  float _443;
  float _461;
  float _464;
  float _465;
  float _474;
  float _477;
  float _480;
  float _485;
  float _487;
  float _496;
  float _500;
  float _502;
  float _505;
  float _510;
  float _514;
  float _527;
  float _535;
  float _545;
  float4 _555;
  int _565;
  float _573;
  float _574;
  float _582;
  float _583;
  float _587;
  float _591;
  bool _592;
  int _595;
  float _603;
  float _608;
  float _622;
  float _635;
  float _638;
  float _643;
  float _648;
  float _649;
  float _650;
  float _651;
  float _652;
  float4 _657;
  float _673;
  float _684;
  float _691;
  float4 _696;
  float4 _701;
  float _712;
  int _719;
  float _727;
  float _729;
  float _733;
  float _735;
  float _737;
  float4 _746;
  float4 _756;
  float _762;
  float _764;
  float _768;
  float _772;
  float _776;
  float _777;
  float _797;
  int _807;
  float _815;
  int _818;
  float _826;
  float _827;
  float _828;
  float _831;
  float _832;
  float _835;
  float _836;
  float _837;
  float _839;
  float _840;
  float _841;
  float _842;
  float _843;
  float _844;
  float _845;
  float _846;
  float _847;
  int _850;
  float _858;
  float _859;
  float _860;
  int _863;
  int _871;
  int _874;
  int _882;
  int _885;
  int _893;
  int _896;
  float _904;
  float _905;
  float _906;
  int _909;
  int _917;
  int _920;
  int _928;
  int _931;
  int _939;
  int _942;
  float _950;
  float _951;
  float _952;
  float _955;
  float _959;
  float _961;
  float _962;
  float _966;
  float _968;
  float _969;
  float _970;
  float _971;
  float _972;
  float _973;
  float _974;
  float _975;
  float _976;
  int _979;
  float _987;
  float _988;
  float _989;
  int _992;
  int _1000;
  int _1003;
  int _1011;
  int _1014;
  int _1022;
  int _1025;
  float _1033;
  float _1034;
  float _1035;
  int _1038;
  int _1046;
  int _1049;
  int _1057;
  int _1060;
  int _1068;
  int _1071;
  float _1079;
  int _1082;
  int _1090;
  float _1093;
  float _1096;
  float _1098;
  int _1101;
  float _1109;
  int _1112;
  float _1120;
  float _1127;
  float _1142;
  float _1204;
  float _1315;
  float _1316;
  float _1317;
  uint _1318;
  bool _1334;
  float _1340;
  float _1359;
  float _1375;
  float _1391;
  float _1392;
  float _1396;
  float _1399;
  float _1402;
  float _1409;
  float _1416;
  float _1423;
  float _1424;
  float _1425;
  float _1426;
  float _1427;
  float _1428;
  float _1429;
  float _1445;
  float _1461;
  float _1477;
  float _1478;
  float _1479;
  float _1480;
  float _1481;
  float _1498;
  float _1499;
  float _1500;
  float _1501;
  float _1504;
  float _1507;
  float _1511;
  float _1515;
  float _1519;
  float _1539;
  float _1551;
  float _1563;
  float _1575;
  float _1582;
  float _1589;
  float _1596;
  float _1602;
  float _1603;
  float _1605;
  float _1607;
  float _1609;
  float _1614;
  float _1635;
  float _1637;
  float _1640;
  float _1643;
  float _1646;
  float _1652;
  float _1694;
  float _1697;
  float _1703;
  float _1745;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
  _35 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
  _44 = (_srcTargetSizeAndInv.x / max(_srcTargetSizeAndInv.y, 1.0f)) * TEXCOORD.x;
  _47 = WaveReadLaneFirst(_materialIndex);
  _55 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_47 < (uint)170000), _47, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._wobbleScale);
  _56 = max(_55, 0.001f);
  _57 = _56 * _44;
  _58 = _56 * TEXCOORD.y;
  _61 = WaveReadLaneFirst(_materialIndex);
  _69 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_61 < (uint)170000), _61, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._wobbleSpeed);
  _72 = _time.x * _69;
  _75 = WaveReadLaneFirst(_materialIndex);
  _83 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_75 < (uint)170000), _75, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._hazeStrength);
  _84 = max(_83, 0.0f);
  if (!(_84 <= 0.0f)) {
    _89 = WaveReadLaneFirst(_materialIndex);
    _97 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_89 < (uint)170000), _89, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._hazeScale);
    _98 = max(_97, 0.001f);
    _101 = WaveReadLaneFirst(_materialIndex);
    _109 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_101 < (uint)170000), _101, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._hazeSpeed);
    _112 = _time.x * _109;
    _114 = (_44 * 1.65f) * _98;
    _116 = (TEXCOORD.y * 0.72f) * _98;
    _119 = WaveReadLaneFirst(_materialIndex);
    _127 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_119 < (uint)170000), _119, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._heatHazeLookupTexture);
    _138 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_127 < (uint)65000), _127, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_112 * 0.035f) + _114), ((_112 * 0.22f) + _116)));
    _144 = WaveReadLaneFirst(_materialIndex);
    _152 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_144 < (uint)170000), _144, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._heatHazeLookupTexture);
    _167 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_152 < (uint)65000), _152, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_114 * 1.73f) + 0.37f) - (_112 * 0.027f)), (((_116 * 1.21f) + 0.61f) + (_112 * 0.16f))));
    // [sem: expr_sat]
    _178 = saturate((min(min(TEXCOORD.x, (1.0f - TEXCOORD.x)), min(TEXCOORD.y, (1.0f - TEXCOORD.y))) + -0.015f) * 15.384616f);
    _186 = ((_178 * _178) * ((_167.z * 0.32f) + (_138.z * 0.68f))) * (3.0f - (_178 * 2.0f));
    _187 = _186 * _84;
    _201 = (((((_138.y * 1.36f) + -1.0f) + (_167.y * 0.64f)) * 0.78f) * _187);
    _202 = (((((_138.x * 1.36f) + -1.0f) + (_167.x * 0.64f)) * 1.3f) * _187);
    _203 = _186;
  } else {
    _201 = 0.0f;
    _202 = 0.0f;
    _203 = 0.0f;
  }
  _206 = WaveReadLaneFirst(_materialIndex);
  _214 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_206 < (uint)170000), _206, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._wobbleStrength);
  _237 = min(max(((_202 + TEXCOORD.x) + ((((sin((((_44 + TEXCOORD.y) * 10.0f) * _56) - (_72 * 1.35f)) * 0.35f) + sin((_72 * 2.0f) + (_58 * 18.0f))) + (cos((_58 * 7.0f) - (_72 * 1.1f)) * 0.2f)) * _214)), 0.001f), 0.999f);
  _260 = min(max(((_201 + TEXCOORD.y) + ((((sin((_72 * 1.2f) + (((_44 - TEXCOORD.y) * 9.0f) * _56)) * 0.3f) + cos((_57 * 16.0f) - (_72 * 1.75f))) + (sin((_72 * 1.05f) + (_57 * 6.0f)) * 0.18f)) * _214)), 0.001f), 0.999f);
  _262 = (_237 * 2.0f) + -1.0f;
  _263 = _260 * 2.0f;
  _264 = 1.0f - _263;
  _269 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_237, _260))).x));
  _281 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _269, mad((_invViewProj[3].y), _264, ((_invViewProj[3].x) * _262)));
  _290 = (mad((_invViewProj[0].z), _269, mad((_invViewProj[0].y), _264, ((_invViewProj[0].x) * _262))) + (_invViewProj[0].w)) / _281;
  _299 = (mad((_invViewProj[1].z), _269, mad((_invViewProj[1].y), _264, ((_invViewProj[1].x) * _262))) + (_invViewProj[1].w)) / _281;
  _308 = (mad((_invViewProj[2].z), _269, mad((_invViewProj[2].y), _264, ((_invViewProj[2].x) * _262))) + (_invViewProj[2].w)) / _281;
  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _319 = __3__36__0__0__g_gbufferNormal.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _237) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _260) + -0.5f))), 0));
  _326 = (saturate(_319.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _330 = (saturate(_319.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _334 = (saturate(_319.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _336 = rsqrt(dot(float3(_326, _330, _334), float3(_326, _330, _334)));  // [sem: invLength]
  if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
    _353 = _sunDirection.z;
    _354 = _sunDirection.y;
    _355 = _sunDirection.x;
  } else {
    _353 = _moonDirection.z;
    _354 = _moonDirection.y;
    _355 = _moonDirection.x;
  }
  _357 = rsqrt(dot(float3(_355, _354, _353), float3(_355, _354, _353)));  // [sem: invLength]
  _358 = _357 * _355;
  _359 = _357 * _354;
  _360 = _357 * _353;
  _363 = saturate((_359 + -0.15f) * 3.3333335f);  // [sem: expr_sat]
  _367 = (_363 * _363) * (3.0f - (_363 * 2.0f));
  _372 = saturate(dot(float3((_336 * _326), (_336 * _330), (_334 * _336)), float3(_358, _359, _360)));  // [sem: expr_sat]
  _375 = WaveReadLaneFirst(_materialIndex);
  _383 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_375 < (uint)170000), _375, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterTintColor);
  _386 = (float)((uint)((uint)(((uint)((uint)(_383)) >> 16) & 255)));
  _389 = (float)((uint)((uint)(((uint)((uint)(_383)) >> 8) & 255)));
  _391 = (float)((uint)((uint)(_383 & 255)));
  _398 = saturate((_seaBaseline - _viewPos.y) * 5.0f);  // [sem: expr_sat]
  _410 = ((select(((_386 * 0.003921569f) < 0.04045f), (_386 * 0.000303527f), exp2(log2((_386 * 0.003717127f) + 0.052132703f) * 2.4f)) + -1.0f) * _398) + 1.0f;
  _422 = ((select(((_389 * 0.003921569f) < 0.04045f), (_389 * 0.000303527f), exp2(log2((_389 * 0.003717127f) + 0.052132703f) * 2.4f)) + -1.0f) * _398) + 1.0f;
  _434 = ((select(((_391 * 0.003921569f) < 0.04045f), (_391 * 0.000303527f), exp2(log2((_391 * 0.003717127f) + 0.052132703f) * 2.4f)) + -1.0f) * _398) + 1.0f;
  _435 = _299 + 0.1f;
  _437 = _290 - _viewPos.x;
  _439 = _308 - _viewPos.z;
  _443 = (_waterDepthFieldSize.x + -1.0f) * 0.5f;
  if ((abs(_437) - _443) < 0.0f) {
    if (((1.0f - _waterDepthMinMax.z) + abs(_435 - _viewPos.y)) < 0.0f) {
      if ((abs(_439) - _443) < 0.0f) {
        _461 = _waterDepthFieldSize.w * _439;
        _464 = (_waterDepthFieldSize.z * _437) + 0.5f;
        _465 = _461 + 0.5f;
        if ((_464 >= 1.0f) || ((_464 <= 0.0f) || ((_465 >= 1.0f) || (_465 <= 0.0f)))) {
          // [sem: _3__36__0__0__g_sceneColor_sample]
          _555 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
          _1312 = (_555.z * _434);
          _1313 = (_555.y * _422);
          _1314 = (_555.x * _410);
        } else {
          _474 = 0.5f - _461;
          // [sem: _3__36__0__0__g_waterDepthTop_sampleLod]
          _477 = __3__36__0__0__g_waterDepthTop.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_464, _474), 0.0f);
          // [sem: _3__36__0__0__g_waterDepthBottom_sampleLod]
          _480 = __3__36__0__0__g_waterDepthBottom.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_464, _474), 0.0f);
          _485 = _waterDepthMinMax.y - _waterDepthMinMax.x;
          if (_477.x < 1.0f) {
            _487 = _waterDepthMinMax.z + _viewPos.y;
            _494 = ((_487 - _waterDepthMinMax.x) - (_477.x * _485));
            _495 = _487;
          } else {
            _494 = -10000.0f;
            _495 = (_waterDepthMinMax.z + _viewPos.y);
          }
          _496 = _495 - _waterDepthMinMax.x;
          _500 = select((_480.x < 1.0f), (_496 - (_485 * _480.x)), -10000.0f);
          // [sem: _3__36__0__0__g_airPocketDepthTop_sampleLod]
          _502 = __3__36__0__0__g_airPocketDepthTop.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_464, _474), 0.0f);
          // [sem: _3__36__0__0__g_airPocketDepthBottom_sampleLod]
          _505 = __3__36__0__0__g_airPocketDepthBottom.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_464, _474), 0.0f);
          _510 = select((_502.x < 1.0f), (_496 - (_502.x * _485)), -10000.0f);
          _514 = select((_505.x < 1.0f), (_496 - (_505.x * _485)), -10000.0f);
          if ((_435 < _494) && (_435 >= _500)) {
            if ((_435 > _510) || (_435 < _514)) {
              _527 = select((_514 < _500), 0.0f, 1.0f) * select((_494 < _510), 0.0f, 1.0f);
              _535 = (_527 * ((_514 - _494) + ((_494 - _514) * select((_435 < _510), 0.0f, 1.0f)))) + _494;
              _545 = (((select((_494 < _514), 0.0f, 1.0f) * select((_510 < _494), 0.0f, 1.0f)) * (1.0f - _527)) * (_514 - _535)) + _535;
              if (!(_372 <= 0.0f)) {
                _565 = WaveReadLaneFirst(_materialIndex);
                _573 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_565 < (uint)170000), _565, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._chromaticAberrationStrength);
                _574 = max(_573, 0.0f);
                if (!(_574 <= 0.0f)) {
                  _582 = (_574 * 0.00046296295f) * _bufferSizeAndInvSize.y;
                  _583 = _263 + -1.0f;
                  _587 = (_bufferSizeAndInvSize.x / max(_bufferSizeAndInvSize.y, 1.0f)) * _262;
                  _591 = sqrt((_587 * _587) + (_583 * _583));
                  _592 = (_591 > 0.0001f);
                  _595 = WaveReadLaneFirst(_materialIndex);
                  _603 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_595 < (uint)170000), _595, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._chromaticAberrationFalloff);
                  _608 = saturate(saturate(max(abs(_262), abs(_583))));  // [sem: expr_sat]
                  // [sem: expr_sat]
                  _622 = saturate((min((_bufferSizeAndInvSize.x * min(_237, (1.0f - _237))), (_bufferSizeAndInvSize.y * min(_260, (1.0f - _260)))) + -0.5f) / (_582 + 0.5f));
                  _635 = ((_622 * _622) * (3.0f - (_622 * 2.0f))) * exp2(max(_603, 0.001f) * log2((_608 * _608) * (3.0f - (_608 * 2.0f))));
                  if (!(_635 <= 0.0001f)) {
                    _638 = _635 * _582;
                    _643 = (_638 * _bufferSizeAndInvSize.z) * select(_592, (_587 / _591), 0.0f);
                    _648 = (_638 * _bufferSizeAndInvSize.w) * select(_592, (_583 / _591), 0.0f);
                    _649 = _bufferSizeAndInvSize.z * 0.5f;
                    _650 = _bufferSizeAndInvSize.w * 0.5f;
                    _651 = 1.0f - _649;
                    _652 = 1.0f - _650;
                    // [sem: _3__36__0__0__g_sceneColor_sample]
                    _657 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(min(max(_237, _649), _651), min(max(_260, _650), _652)));
                    _673 = (((((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(min(max((_237 - (_643 * 2.0f)), _649), _651), min(max((_260 - (_648 * 2.0f)), _650), _652))))).x) - _657.x) * 0.65f) + _657.x;
                    _684 = (((((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(min(max((_237 - _643), _649), _651), min(max((_260 - _648), _650), _652))))).z) - _657.z) * 0.65f) + _657.z;
                    _691 = min(max(((dot(float3(_657.x, _657.y, _657.z), float3(0.2126f, 0.7152f, 0.0722f)) + 0.0001f) / (dot(float3(_673, _657.y, _684), float3(0.2126f, 0.7152f, 0.0722f)) + 0.0001f)), 0.75f), 1.25f);
                    _706 = (_691 * _684);
                    _707 = (_691 * _657.y);
                    _708 = (_691 * _673);
                  } else {
                    _696 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_237, _260));  // [sem: _3__36__0__0__g_sceneColor_sample]
                    _706 = _696.z;
                    _707 = _696.y;
                    _708 = _696.x;
                  }
                } else {
                  _701 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_237, _260));  // [sem: _3__36__0__0__g_sceneColor_sample]
                  _706 = _701.z;
                  _707 = _701.y;
                  _708 = _701.x;
                }
                _712 = sqrt((_202 * _202) + (_201 * _201));
                if (!((_203 <= 0.0001f) || (_712 <= 1e-06f))) {
                  _719 = WaveReadLaneFirst(_materialIndex);
                  _727 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_719 < (uint)170000), _719, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._hazeStrength);
                  _729 = max(_727, 0.0f) * _203;
                  _733 = min(((_729 * 0.04f) + (_712 * 0.7f)), 0.0028f);
                  _735 = (_202 / _712) * _733;
                  _737 = (_201 / _712) * _733;
                  // [sem: _3__36__0__0__g_sceneColor_sample]
                  _746 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(min(max((_735 + _237), 0.001f), 0.999f), min(max((_737 + _260), 0.001f), 0.999f)));
                  // [sem: _3__36__0__0__g_sceneColor_sample]
                  _756 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(min(max((_237 - _735), 0.001f), 0.999f), min(max((_260 - _737), 0.001f), 0.999f)));
                  _762 = min(max((_729 * 18.0f), 0.0f), 0.14f);
                  _764 = 1.0f - (_762 * 2.0f);
                  _768 = (_764 * _708) + ((_756.x + _746.x) * _762);
                  _772 = (_764 * _707) + ((_756.y + _746.y) * _762);
                  _776 = (_764 * _706) + ((_756.z + _746.z) * _762);
                  _777 = _762 * 0.45f;
                  _788 = (lerp(_776, _756.z, _777));  // [sem: blended]
                  _789 = (lerp(_772, _707, _777));  // [sem: blended]
                  _790 = (lerp(_768, _746.x, _777));  // [sem: blended]
                } else {
                  _788 = _706;  // [sem: blended]
                  _789 = _707;  // [sem: blended]
                  _790 = _708;  // [sem: blended]
                }
                if (!(_359 <= 0.0f)) {
                  _797 = (_seaBaseline - _299) / max(_359, 0.05f);
                  _803 = ((_797 * _360) + _308);
                  _804 = ((_797 * _358) + _290);
                } else {
                  _803 = _308;
                  _804 = _290;
                }
                _807 = WaveReadLaneFirst(_materialIndex);
                _815 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_807 < (uint)170000), _807, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSpeed);
                _818 = WaveReadLaneFirst(_materialIndex);
                _826 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_818 < (uint)170000), _818, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsWorldScale);
                _827 = max(_826, 0.001f);
                _828 = 1.0f / _827;
                _831 = _time.x * _815;
                _832 = _828 * _803;
                _835 = (_831 * 0.75f) + (_828 * _804);
                _836 = -1.0f / _827;
                _837 = _836 * _803;
                _839 = _831 + (_836 * _804);
                _840 = ddx_coarse(_835);
                _841 = ddx_coarse(_832);
                _842 = ddy_coarse(_835);
                _843 = ddy_coarse(_832);
                _844 = ddx_coarse(_839);
                _845 = ddx_coarse(_837);
                _846 = ddy_coarse(_839);
                _847 = ddy_coarse(_837);
                _850 = WaveReadLaneFirst(_materialIndex);
                _858 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_850 < (uint)170000), _850, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSplit);
                _859 = _858 + _835;
                _860 = _832 - _858;
                _863 = WaveReadLaneFirst(_materialIndex);
                _871 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_863 < (uint)170000), _863, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
                _874 = WaveReadLaneFirst(_materialIndex);
                _882 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_874 < (uint)170000), _874, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
                _885 = WaveReadLaneFirst(_materialIndex);
                _893 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_885 < (uint)170000), _885, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
                _896 = WaveReadLaneFirst(_materialIndex);
                _904 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_896 < (uint)170000), _896, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSplit);
                _905 = _904 + _839;
                _906 = _837 - _904;
                _909 = WaveReadLaneFirst(_materialIndex);
                _917 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_909 < (uint)170000), _909, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
                _920 = WaveReadLaneFirst(_materialIndex);
                _928 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_920 < (uint)170000), _920, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
                _931 = WaveReadLaneFirst(_materialIndex);
                _939 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_931 < (uint)170000), _931, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
                _942 = WaveReadLaneFirst(_materialIndex);
                _950 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_942 < (uint)170000), _942, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSmallWorldScale);
                _951 = max(_950, 0.001f);
                _952 = 1.0f / _951;
                _955 = _time.x * _815;
                _959 = ((_952 * _804) + 0.37f) + (_955 * 1.15f);
                _961 = (_952 * _803) + 0.61f;
                _962 = -1.0f / _951;
                _966 = ((_962 * _804) + -0.61f) + (_955 * 1.35f);
                _968 = (_962 * _803) + -0.37f;
                _969 = ddx_coarse(_959);
                _970 = ddx_coarse(_961);
                _971 = ddy_coarse(_959);
                _972 = ddy_coarse(_961);
                _973 = ddx_coarse(_966);
                _974 = ddx_coarse(_968);
                _975 = ddy_coarse(_966);
                _976 = ddy_coarse(_968);
                _979 = WaveReadLaneFirst(_materialIndex);
                _987 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_979 < (uint)170000), _979, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSplit);
                _988 = _987 + _959;
                _989 = _961 - _987;
                _992 = WaveReadLaneFirst(_materialIndex);
                _1000 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_992 < (uint)170000), _992, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
                _1003 = WaveReadLaneFirst(_materialIndex);
                _1011 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1003 < (uint)170000), _1003, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
                _1014 = WaveReadLaneFirst(_materialIndex);
                _1022 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1014 < (uint)170000), _1014, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
                _1025 = WaveReadLaneFirst(_materialIndex);
                _1033 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1025 < (uint)170000), _1025, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSplit);
                _1034 = _1033 + _966;
                _1035 = _968 - _1033;
                _1038 = WaveReadLaneFirst(_materialIndex);
                _1046 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1038 < (uint)170000), _1038, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
                _1049 = WaveReadLaneFirst(_materialIndex);
                _1057 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1049 < (uint)170000), _1049, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
                _1060 = WaveReadLaneFirst(_materialIndex);
                _1068 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1060 < (uint)170000), _1060, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
                _1071 = WaveReadLaneFirst(_materialIndex);
                _1079 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1071 < (uint)170000), _1071, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSmallStrength);
                _1082 = WaveReadLaneFirst(_materialIndex);
                _1090 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1082 < (uint)170000), _1082, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTint);
                _1093 = (float)((uint)((uint)(((uint)((uint)(_1090)) >> 16) & 255)));
                _1096 = (float)((uint)((uint)(((uint)((uint)(_1090)) >> 8) & 255)));
                _1098 = (float)((uint)((uint)(_1090 & 255)));
                _1101 = WaveReadLaneFirst(_materialIndex);
                _1109 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1101 < (uint)170000), _1101, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsStrength);
                _1112 = WaveReadLaneFirst(_materialIndex);
                _1120 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1112 < (uint)170000), _1112, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsLuminanceMaskStrength);
                _1127 = abs(_435 - _545);
                _1142 = saturate((max((_nearFarProj.x / _269), 0.0f) + -40.0f) * 0.025f);  // [sem: expr_sat]
                _1204 = ((((((_367 * _367) * (_372 * 10.0f)) * _1109) * saturate(_1127 * 2.0f)) * (((dot(float3(_790, _789, _788), float3(0.2126f, 0.7152f, 0.0722f)) + -1.0f) * min(max(_1120, 0.0f), 1.0f)) + 1.0f)) * exp2(log2(1.0f - saturate(_1127 * 0.033333335f)) * select((abs(_545 - _494) < 0.0001f), 0.5f, 16.0f))) * (1.0f - ((_1142 * _1142) * (3.0f - (_1142 * 2.0f))));
                _1312 = ((((min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_893 < (uint)65000), _893, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2((_835 - _858), _860), float2(_840, _841), float2(_842, _843), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_939 < (uint)65000), _939, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2((_839 - _904), _906), float2(_844, _845), float2(_846, _847), int2(0, 0)))).x)) + (min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1022 < (uint)65000), _1022, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2((_959 - _987), _989), float2(_969, _970), float2(_971, _972), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1068 < (uint)65000), _1068, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2((_966 - _1033), _1035), float2(_973, _974), float2(_975, _976), int2(0, 0)))).x)) * _1079)) * _1204) * select(((_1098 * 0.003921569f) < 0.04045f), (_1098 * 0.000303527f), exp2(log2((_1098 * 0.003717127f) + 0.052132703f) * 2.4f))) + (_788 * _434));
                _1313 = ((((min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_882 < (uint)65000), _882, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_859, _860), float2(_840, _841), float2(_842, _843), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_928 < (uint)65000), _928, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_905, _906), float2(_844, _845), float2(_846, _847), int2(0, 0)))).x)) + (min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1011 < (uint)65000), _1011, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_988, _989), float2(_969, _970), float2(_971, _972), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1057 < (uint)65000), _1057, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_1034, _1035), float2(_973, _974), float2(_975, _976), int2(0, 0)))).x)) * _1079)) * _1204) * select(((_1096 * 0.003921569f) < 0.04045f), (_1096 * 0.000303527f), exp2(log2((_1096 * 0.003717127f) + 0.052132703f) * 2.4f))) + (_789 * _422));
                _1314 = ((((min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_871 < (uint)65000), _871, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_859, (_858 + _832)), float2(_840, _841), float2(_842, _843), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_917 < (uint)65000), _917, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_905, (_904 + _837)), float2(_844, _845), float2(_846, _847), int2(0, 0)))).x)) + (min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1000 < (uint)65000), _1000, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_988, (_987 + _961)), float2(_969, _970), float2(_971, _972), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1046 < (uint)65000), _1046, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_1034, (_1033 + _968)), float2(_973, _974), float2(_975, _976), int2(0, 0)))).x)) * _1079)) * _1204) * select(((_1093 * 0.003921569f) < 0.04045f), (_1093 * 0.000303527f), exp2(log2((_1093 * 0.003717127f) + 0.052132703f) * 2.4f))) + (_790 * _410));
              } else {
                // [sem: _3__36__0__0__g_sceneColor_sample]
                _555 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
                _1312 = (_555.z * _434);
                _1313 = (_555.y * _422);
                _1314 = (_555.x * _410);
              }
            } else {
              // [sem: _3__36__0__0__g_sceneColor_sample]
              _555 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
              _1312 = (_555.z * _434);
              _1313 = (_555.y * _422);
              _1314 = (_555.x * _410);
            }
          } else {
            // [sem: _3__36__0__0__g_sceneColor_sample]
            _555 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
            _1312 = (_555.z * _434);
            _1313 = (_555.y * _422);
            _1314 = (_555.x * _410);
          }
        }
      } else {
        _555 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
        _1312 = (_555.z * _434);
        _1313 = (_555.y * _422);
        _1314 = (_555.x * _410);
      }
    } else {
      _555 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
      _1312 = (_555.z * _434);
      _1313 = (_555.y * _422);
      _1314 = (_555.x * _410);
    }
  } else {
    _555 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
    _1312 = (_555.z * _434);
    _1313 = (_555.y * _422);
    _1314 = (_555.x * _410);
  }
  _1315 = _1314 + _35.x;
  _1316 = _1313 + _35.y;
  _1317 = _1312 + _35.z;
  _1318 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _1331 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _1318, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1331 = 1.0f;
  }
  _1334 = (_localToneMappingParams.w > 0.0f);
  if (_1334) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_1315, _1316, _1317));
    _1582 = _rndx_tonemapped_color.x;
    _1589 = _rndx_tonemapped_color.y;
    _1596 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _1602 = 1.0f - abs(_etcParams.w);
      _1603 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1605 = (_1602 * _1582) + _1603;
      _1607 = (_1602 * _1589) + _1603;
      _1609 = (_1602 * _1596) + _1603;
      if (_colorGradingParams.w > 0.0f) {
        _1614 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1631 = (((max(0.0f, (1.0f - _1605)) - _1605) * _1614) + _1605);
        _1632 = (((max(0.0f, (1.0f - _1607)) - _1607) * _1614) + _1607);
        _1633 = (((max(0.0f, (1.0f - _1609)) - _1609) * _1614) + _1609);
      } else {
        _1631 = _1605;
        _1632 = _1607;
        _1633 = _1609;
      }
      _1635 = _userImageAdjust.y + 1.0f;
      _1637 = _userImageAdjust.x + 0.5f;
      _1640 = ((_1631 + -0.5f) * _1635) + _1637;
      _1643 = ((_1632 + -0.5f) * _1635) + _1637;
      _1646 = ((_1633 + -0.5f) * _1635) + _1637;
      _1652 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1687 = exp2(log2(saturate(mad(_colorBlind0.z, _1646, mad(_colorBlind0.y, _1643, (_colorBlind0.x * _1640))))) * _1652);
      _1688 = exp2(log2(saturate(mad(_colorBlind1.z, _1646, mad(_colorBlind1.y, _1643, (_colorBlind1.x * _1640))))) * _1652);
      _1689 = exp2(log2(saturate(mad(_colorBlind2.z, _1646, mad(_colorBlind2.y, _1643, (_colorBlind2.x * _1640))))) * _1652);
    } else {
      _1687 = _1582;
      _1688 = _1589;
      _1689 = _1596;
    }
  } else {
    _1687 = _1315;
    _1688 = _1316;
    _1689 = _1317;
  }
  if (_etcParams.y > 1.0f) {
    _1694 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _1697 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _1703 = saturate(1.0f - (dot(float2(_1694, _1697), float2(_1694, _1697)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _1708 = (_1703 * _1687);
    _1709 = (_1703 * _1688);
    _1710 = (_1703 * _1689);
  } else {
    _1708 = _1687;
    _1709 = _1688;
    _1710 = _1689;
  }
  if (_1334 && (_etcParams.z > 0.0f)) {
    _1740 = select((_1708 <= 0.0031308f), (_1708 * 12.92f), (((pow(_1708, 0.41666666f)) * 1.055f) + -0.055f));
    _1741 = select((_1709 <= 0.0031308f), (_1709 * 12.92f), (((pow(_1709, 0.41666666f)) * 1.055f) + -0.055f));
    _1742 = select((_1710 <= 0.0031308f), (_1710 * 12.92f), (((pow(_1710, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1740 = _1708;
    _1741 = _1709;
    _1742 = _1710;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1745 = (float)((uint)((uint)(_1318)));
    if (!(_1745 < _viewDir.w)) {
      if (!(!(_1745 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _1756 = 0.0f;
        _1757 = 0.0f;
        _1758 = 0.0f;
      } else {
        _1756 = _1740;
        _1757 = _1741;
        _1758 = _1742;
      }
    } else {
      _1756 = 0.0f;
      _1757 = 0.0f;
      _1758 = 0.0f;
    }
  } else {
    _1756 = _1740;
    _1757 = _1741;
    _1758 = _1742;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_1756, _1757, _1758), _sunDirection.y, _moonDirection.y);
    _1756 = _rndx_final_color.x;
    _1757 = _rndx_final_color.y;
    _1758 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _1756;
  SV_Target.y = _1757;
  SV_Target.z = _1758;
  SV_Target.w = _1331;
  return SV_Target;
}
