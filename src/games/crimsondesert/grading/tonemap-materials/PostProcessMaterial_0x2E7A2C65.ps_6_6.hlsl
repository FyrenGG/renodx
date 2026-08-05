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
  float _41;
  float _44;
  float _47;
  float _53;
  int _56;
  float _64;
  float _65;
  float _66;
  float _67;
  int _70;
  float _78;
  float _81;
  int _84;
  float _92;
  float _93;
  float _210;
  float _211;
  float _212;
  float _362;
  float _363;
  float _364;
  float _503;
  float _504;
  float _881;
  float _882;
  float _883;
  float _1032;
  float _1033;
  float _1034;
  float _1047;
  float _1048;
  float _1556;
  float _1557;
  float _1558;
  float _1602;
  float _1807;
  float _1808;
  float _1809;
  float _1902;
  float _1903;
  float _1904;
  float _1958;
  float _1959;
  float _1960;
  float _1979;
  float _1980;
  float _1981;
  float _2011;
  float _2012;
  float _2013;
  float _2027;
  float _2028;
  float _2029;
  int _98;
  float _106;
  float _107;
  int _110;
  float _118;
  float _121;
  float _123;
  float _125;
  int _128;
  int _136;
  float4 _147;
  int _153;
  int _161;
  float4 _176;
  float _187;
  float _195;
  float _196;
  int _215;
  float _223;
  float _246;
  float _269;
  float _271;
  float _272;
  float _273;
  float _278;
  float _290;
  float _299;
  float _308;
  float _317;
  float4 _328;
  float _335;
  float _339;
  float _343;
  float _345;
  float _366;
  float _367;
  float _368;
  float _369;
  float _372;
  float _376;
  float _381;
  int _384;
  int _392;
  float _395;
  float _398;
  float _400;
  float _407;
  float _419;
  float _431;
  float _443;
  float _444;
  float _446;
  float _448;
  float _452;
  float _470;
  float _473;
  float _474;
  float _483;
  float _486;
  float _489;
  float _494;
  float _496;
  float _505;
  float _509;
  float _511;
  float _514;
  float _519;
  float _523;
  float _536;
  float _544;
  float _554;
  float4 _564;
  float _570;
  float _573;
  float _576;
  int _610;
  float _618;
  float _619;
  float _627;
  float _628;
  float _632;
  float _636;
  bool _637;
  int _640;
  float _648;
  float _653;
  float _667;
  float _680;
  float _683;
  float _688;
  float _693;
  float _694;
  float _695;
  float _696;
  float _697;
  float _710;
  float4 _715;
  float _721;
  float _724;
  float _727;
  float _735;
  float _743;
  float _744;
  float _753;
  float _754;
  float _765;
  float _776;
  float _787;
  float _794;
  float4 _799;
  float _805;
  float _808;
  float _811;
  float4 _840;
  float _846;
  float _849;
  float _852;
  float _887;
  int _894;
  float _902;
  float _904;
  float _908;
  float _910;
  float _912;
  float4 _921;
  float _927;
  float _930;
  float _933;
  float _941;
  float4 _948;
  float _954;
  float _957;
  float _960;
  float _968;
  float _971;
  float _973;
  float _974;
  float _986;
  float _1006;
  float _1018;
  float _1019;
  float _1041;
  int _1051;
  float _1059;
  int _1062;
  float _1070;
  float _1071;
  float _1072;
  float _1075;
  float _1076;
  float _1079;
  float _1080;
  float _1081;
  float _1083;
  float _1084;
  float _1085;
  float _1086;
  float _1087;
  float _1088;
  float _1089;
  float _1090;
  float _1091;
  int _1094;
  float _1102;
  float _1103;
  float _1104;
  int _1107;
  int _1115;
  int _1118;
  int _1126;
  int _1129;
  int _1137;
  int _1140;
  float _1148;
  float _1149;
  float _1150;
  int _1153;
  int _1161;
  int _1164;
  int _1172;
  int _1175;
  int _1183;
  int _1186;
  float _1194;
  float _1195;
  float _1196;
  float _1199;
  float _1203;
  float _1205;
  float _1206;
  float _1210;
  float _1212;
  float _1213;
  float _1214;
  float _1215;
  float _1216;
  float _1217;
  float _1218;
  float _1219;
  float _1220;
  int _1223;
  float _1231;
  float _1232;
  float _1233;
  int _1236;
  int _1244;
  int _1247;
  int _1255;
  int _1258;
  int _1266;
  int _1269;
  float _1277;
  float _1278;
  float _1279;
  int _1282;
  int _1290;
  int _1293;
  int _1301;
  int _1304;
  int _1312;
  int _1315;
  float _1323;
  int _1326;
  int _1334;
  float _1337;
  float _1340;
  float _1342;
  int _1345;
  float _1353;
  int _1356;
  float _1364;
  float _1371;
  float _1386;
  float _1448;
  float _1568;
  float _1578;
  float _1588;
  uint _1589;
  bool _1605;
  float _1611;
  float _1630;
  float _1646;
  float _1662;
  float _1663;
  float _1667;
  float _1670;
  float _1673;
  float _1680;
  float _1687;
  float _1694;
  float _1695;
  float _1696;
  float _1697;
  float _1698;
  float _1699;
  float _1700;
  float _1716;
  float _1732;
  float _1748;
  float _1749;
  float _1750;
  float _1751;
  float _1752;
  float _1769;
  float _1770;
  float _1771;
  float _1772;
  float _1775;
  float _1778;
  float _1782;
  float _1786;
  float _1790;
  float _1810;
  float _1822;
  float _1834;
  float _1846;
  float _1853;
  float _1860;
  float _1867;
  float _1873;
  float _1874;
  float _1876;
  float _1878;
  float _1880;
  float _1885;
  float _1906;
  float _1908;
  float _1911;
  float _1914;
  float _1917;
  float _1923;
  float _1965;
  float _1968;
  float _1974;
  float _2016;
  float _2033;
  float _2037;
  float _2041;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
  _35 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
  _41 = (pow(_35.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  _44 = (pow(_35.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  _47 = (pow(_35.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  _53 = (_srcTargetSizeAndInv.x / max(_srcTargetSizeAndInv.y, 1.0f)) * TEXCOORD.x;
  _56 = WaveReadLaneFirst(_materialIndex);
  _64 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_56 < (uint)170000), _56, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._wobbleScale);
  _65 = max(_64, 0.001f);
  _66 = _65 * _53;
  _67 = _65 * TEXCOORD.y;
  _70 = WaveReadLaneFirst(_materialIndex);
  _78 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_70 < (uint)170000), _70, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._wobbleSpeed);
  _81 = _time.x * _78;
  _84 = WaveReadLaneFirst(_materialIndex);
  _92 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_84 < (uint)170000), _84, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._hazeStrength);
  _93 = max(_92, 0.0f);
  if (!(_93 <= 0.0f)) {
    _98 = WaveReadLaneFirst(_materialIndex);
    _106 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_98 < (uint)170000), _98, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._hazeScale);
    _107 = max(_106, 0.001f);
    _110 = WaveReadLaneFirst(_materialIndex);
    _118 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_110 < (uint)170000), _110, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._hazeSpeed);
    _121 = _time.x * _118;
    _123 = (_53 * 1.65f) * _107;
    _125 = (TEXCOORD.y * 0.72f) * _107;
    _128 = WaveReadLaneFirst(_materialIndex);
    _136 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_128 < (uint)170000), _128, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._heatHazeLookupTexture);
    _147 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_136 < (uint)65000), _136, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_121 * 0.035f) + _123), ((_121 * 0.22f) + _125)));
    _153 = WaveReadLaneFirst(_materialIndex);
    _161 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_153 < (uint)170000), _153, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._heatHazeLookupTexture);
    _176 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_161 < (uint)65000), _161, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_123 * 1.73f) + 0.37f) - (_121 * 0.027f)), (((_125 * 1.21f) + 0.61f) + (_121 * 0.16f))));
    // [sem: expr_sat]
    _187 = saturate((min(min(TEXCOORD.x, (1.0f - TEXCOORD.x)), min(TEXCOORD.y, (1.0f - TEXCOORD.y))) + -0.015f) * 15.384616f);
    _195 = ((_187 * _187) * ((_176.z * 0.32f) + (_147.z * 0.68f))) * (3.0f - (_187 * 2.0f));
    _196 = _195 * _93;
    _210 = (((((_147.y * 1.36f) + -1.0f) + (_176.y * 0.64f)) * 0.78f) * _196);
    _211 = (((((_147.x * 1.36f) + -1.0f) + (_176.x * 0.64f)) * 1.3f) * _196);
    _212 = _195;
  } else {
    _210 = 0.0f;
    _211 = 0.0f;
    _212 = 0.0f;
  }
  _215 = WaveReadLaneFirst(_materialIndex);
  _223 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_215 < (uint)170000), _215, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._wobbleStrength);
  _246 = min(max(((_211 + TEXCOORD.x) + ((((sin((((_53 + TEXCOORD.y) * 10.0f) * _65) - (_81 * 1.35f)) * 0.35f) + sin((_81 * 2.0f) + (_67 * 18.0f))) + (cos((_67 * 7.0f) - (_81 * 1.1f)) * 0.2f)) * _223)), 0.001f), 0.999f);
  _269 = min(max(((_210 + TEXCOORD.y) + ((((sin((_81 * 1.2f) + (((_53 - TEXCOORD.y) * 9.0f) * _65)) * 0.3f) + cos((_66 * 16.0f) - (_81 * 1.75f))) + (sin((_81 * 1.05f) + (_66 * 6.0f)) * 0.18f)) * _223)), 0.001f), 0.999f);
  _271 = (_246 * 2.0f) + -1.0f;
  _272 = _269 * 2.0f;
  _273 = 1.0f - _272;
  _278 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_246, _269))).x));
  _290 = (_invViewProj[3].w) + mad((_invViewProj[3].z), _278, mad((_invViewProj[3].y), _273, ((_invViewProj[3].x) * _271)));
  _299 = (mad((_invViewProj[0].z), _278, mad((_invViewProj[0].y), _273, ((_invViewProj[0].x) * _271))) + (_invViewProj[0].w)) / _290;
  _308 = (mad((_invViewProj[1].z), _278, mad((_invViewProj[1].y), _273, ((_invViewProj[1].x) * _271))) + (_invViewProj[1].w)) / _290;
  _317 = (mad((_invViewProj[2].z), _278, mad((_invViewProj[2].y), _273, ((_invViewProj[2].x) * _271))) + (_invViewProj[2].w)) / _290;
  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _328 = __3__36__0__0__g_gbufferNormal.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _246) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _269) + -0.5f))), 0));
  _335 = (saturate(_328.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _339 = (saturate(_328.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _343 = (saturate(_328.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _345 = rsqrt(dot(float3(_335, _339, _343), float3(_335, _339, _343)));  // [sem: invLength]
  if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
    _362 = _sunDirection.z;
    _363 = _sunDirection.y;
    _364 = _sunDirection.x;
  } else {
    _362 = _moonDirection.z;
    _363 = _moonDirection.y;
    _364 = _moonDirection.x;
  }
  _366 = rsqrt(dot(float3(_364, _363, _362), float3(_364, _363, _362)));  // [sem: invLength]
  _367 = _366 * _364;
  _368 = _366 * _363;
  _369 = _366 * _362;
  _372 = saturate((_368 + -0.15f) * 3.3333335f);  // [sem: expr_sat]
  _376 = (_372 * _372) * (3.0f - (_372 * 2.0f));
  _381 = saturate(dot(float3((_345 * _335), (_345 * _339), (_343 * _345)), float3(_367, _368, _369)));  // [sem: expr_sat]
  _384 = WaveReadLaneFirst(_materialIndex);
  _392 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_384 < (uint)170000), _384, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterTintColor);
  _395 = (float)((uint)((uint)(((uint)((uint)(_392)) >> 16) & 255)));
  _398 = (float)((uint)((uint)(((uint)((uint)(_392)) >> 8) & 255)));
  _400 = (float)((uint)((uint)(_392 & 255)));
  _407 = saturate((_seaBaseline - _viewPos.y) * 5.0f);  // [sem: expr_sat]
  _419 = ((select(((_395 * 0.003921569f) < 0.04045f), (_395 * 0.000303527f), exp2(log2((_395 * 0.003717127f) + 0.052132703f) * 2.4f)) + -1.0f) * _407) + 1.0f;
  _431 = ((select(((_398 * 0.003921569f) < 0.04045f), (_398 * 0.000303527f), exp2(log2((_398 * 0.003717127f) + 0.052132703f) * 2.4f)) + -1.0f) * _407) + 1.0f;
  _443 = ((select(((_400 * 0.003921569f) < 0.04045f), (_400 * 0.000303527f), exp2(log2((_400 * 0.003717127f) + 0.052132703f) * 2.4f)) + -1.0f) * _407) + 1.0f;
  _444 = _308 + 0.1f;
  _446 = _299 - _viewPos.x;
  _448 = _317 - _viewPos.z;
  _452 = (_waterDepthFieldSize.x + -1.0f) * 0.5f;
  if ((abs(_446) - _452) < 0.0f) {
    if (((1.0f - _waterDepthMinMax.z) + abs(_444 - _viewPos.y)) < 0.0f) {
      if ((abs(_448) - _452) < 0.0f) {
        _470 = _waterDepthFieldSize.w * _448;
        _473 = (_waterDepthFieldSize.z * _446) + 0.5f;
        _474 = _470 + 0.5f;
        if ((_473 >= 1.0f) || ((_473 <= 0.0f) || ((_474 >= 1.0f) || (_474 <= 0.0f)))) {
          // [sem: _3__36__0__0__g_sceneColor_sample]
          _564 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
          _570 = (pow(_564.x, 0.012683313f));
          _573 = (pow(_564.y, 0.012683313f));
          _576 = (pow(_564.z, 0.012683313f));
          _1556 = ((_443 * 10000.0f) * exp2(log2(max(0.0f, (_576 + -0.8359375f)) / (18.851562f - (_576 * 18.6875f))) * 6.277395f));
          _1557 = ((_431 * 10000.0f) * exp2(log2(max(0.0f, (_573 + -0.8359375f)) / (18.851562f - (_573 * 18.6875f))) * 6.277395f));
          _1558 = ((_419 * 10000.0f) * exp2(log2(max(0.0f, (_570 + -0.8359375f)) / (18.851562f - (_570 * 18.6875f))) * 6.277395f));
        } else {
          _483 = 0.5f - _470;
          // [sem: _3__36__0__0__g_waterDepthTop_sampleLod]
          _486 = __3__36__0__0__g_waterDepthTop.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_473, _483), 0.0f);
          // [sem: _3__36__0__0__g_waterDepthBottom_sampleLod]
          _489 = __3__36__0__0__g_waterDepthBottom.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_473, _483), 0.0f);
          _494 = _waterDepthMinMax.y - _waterDepthMinMax.x;
          if (_486.x < 1.0f) {
            _496 = _waterDepthMinMax.z + _viewPos.y;
            _503 = ((_496 - _waterDepthMinMax.x) - (_486.x * _494));
            _504 = _496;
          } else {
            _503 = -10000.0f;
            _504 = (_waterDepthMinMax.z + _viewPos.y);
          }
          _505 = _504 - _waterDepthMinMax.x;
          _509 = select((_489.x < 1.0f), (_505 - (_494 * _489.x)), -10000.0f);
          // [sem: _3__36__0__0__g_airPocketDepthTop_sampleLod]
          _511 = __3__36__0__0__g_airPocketDepthTop.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_473, _483), 0.0f);
          // [sem: _3__36__0__0__g_airPocketDepthBottom_sampleLod]
          _514 = __3__36__0__0__g_airPocketDepthBottom.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_473, _483), 0.0f);
          _519 = select((_511.x < 1.0f), (_505 - (_511.x * _494)), -10000.0f);
          _523 = select((_514.x < 1.0f), (_505 - (_514.x * _494)), -10000.0f);
          if ((_444 < _503) && (_444 >= _509)) {
            if ((_444 > _519) || (_444 < _523)) {
              _536 = select((_523 < _509), 0.0f, 1.0f) * select((_503 < _519), 0.0f, 1.0f);
              _544 = (_536 * ((_523 - _503) + ((_503 - _523) * select((_444 < _519), 0.0f, 1.0f)))) + _503;
              _554 = (((select((_503 < _523), 0.0f, 1.0f) * select((_519 < _503), 0.0f, 1.0f)) * (1.0f - _536)) * (_523 - _544)) + _544;
              if (!(_381 <= 0.0f)) {
                _610 = WaveReadLaneFirst(_materialIndex);
                _618 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_610 < (uint)170000), _610, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._chromaticAberrationStrength);
                _619 = max(_618, 0.0f);
                if (!(_619 <= 0.0f)) {
                  _627 = (_619 * 0.00046296295f) * _bufferSizeAndInvSize.y;
                  _628 = _272 + -1.0f;
                  _632 = (_bufferSizeAndInvSize.x / max(_bufferSizeAndInvSize.y, 1.0f)) * _271;
                  _636 = sqrt((_632 * _632) + (_628 * _628));
                  _637 = (_636 > 0.0001f);
                  _640 = WaveReadLaneFirst(_materialIndex);
                  _648 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_640 < (uint)170000), _640, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._chromaticAberrationFalloff);
                  _653 = saturate(saturate(max(abs(_271), abs(_628))));  // [sem: expr_sat]
                  // [sem: expr_sat]
                  _667 = saturate((min((_bufferSizeAndInvSize.x * min(_246, (1.0f - _246))), (_bufferSizeAndInvSize.y * min(_269, (1.0f - _269)))) + -0.5f) / (_627 + 0.5f));
                  _680 = ((_667 * _667) * (3.0f - (_667 * 2.0f))) * exp2(max(_648, 0.001f) * log2((_653 * _653) * (3.0f - (_653 * 2.0f))));
                  if (!(_680 <= 0.0001f)) {
                    _683 = _680 * _627;
                    _688 = (_683 * _bufferSizeAndInvSize.z) * select(_637, (_632 / _636), 0.0f);
                    _693 = (_683 * _bufferSizeAndInvSize.w) * select(_637, (_628 / _636), 0.0f);
                    _694 = _bufferSizeAndInvSize.z * 0.5f;
                    _695 = _bufferSizeAndInvSize.w * 0.5f;
                    _696 = 1.0f - _694;
                    _697 = 1.0f - _695;
                    _710 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(min(max((_246 - (_688 * 2.0f)), _694), _696), min(max((_269 - (_693 * 2.0f)), _695), _697))))).x) * 0.012683313f);
                    // [sem: _3__36__0__0__g_sceneColor_sample]
                    _715 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(min(max(_246, _694), _696), min(max(_269, _695), _697)));
                    _721 = (pow(_715.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
                    _724 = (pow(_715.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
                    _727 = (pow(_715.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
                    _735 = exp2(log2(max(0.0f, (_721 + -0.8359375f)) / (18.851562f - (_721 * 18.6875f))) * 6.277395f);
                    _743 = exp2(log2(max(0.0f, (_727 + -0.8359375f)) / (18.851562f - (_727 * 18.6875f))) * 6.277395f);
                    _744 = _735 * 10000.0f;
                    _753 = exp2(log2(max(0.0f, (_724 + -0.8359375f)) / (18.851562f - (_724 * 18.6875f))) * 6.277395f) * 10000.0f;
                    _754 = _743 * 10000.0f;
                    _765 = exp2(log2(((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(min(max((_246 - _688), _694), _696), min(max((_269 - _693), _695), _697))))).z) * 0.012683313f);
                    _776 = ((exp2(log2(max(0.0f, (_710 + -0.8359375f)) / (18.851562f - (_710 * 18.6875f))) * 6.277395f) - _735) * 6500.0f) + _744;
                    _787 = ((exp2(log2(max(0.0f, (_765 + -0.8359375f)) / (18.851562f - (_765 * 18.6875f))) * 6.277395f) - _743) * 6500.0f) + _754;
                    _794 = min(max(((dot(float3(_744, _753, _754), float3(0.2126f, 0.7152f, 0.0722f)) + 0.0001f) / (dot(float3(_776, _753, _787), float3(0.2126f, 0.7152f, 0.0722f)) + 0.0001f)), 0.75f), 1.25f);
                    _881 = (_794 * _787);
                    _882 = (_794 * _753);
                    _883 = (_794 * _776);
                  } else {
                    _799 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_246, _269));  // [sem: _3__36__0__0__g_sceneColor_sample]
                    _805 = (pow(_799.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
                    _808 = (pow(_799.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
                    _811 = (pow(_799.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
                    _881 = (exp2(log2(max(0.0f, (_811 + -0.8359375f)) / (18.851562f - (_811 * 18.6875f))) * 6.277395f) * 10000.0f);
                    _882 = (exp2(log2(max(0.0f, (_808 + -0.8359375f)) / (18.851562f - (_808 * 18.6875f))) * 6.277395f) * 10000.0f);
                    _883 = (exp2(log2(max(0.0f, (_805 + -0.8359375f)) / (18.851562f - (_805 * 18.6875f))) * 6.277395f) * 10000.0f);
                  }
                } else {
                  _840 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_246, _269));  // [sem: _3__36__0__0__g_sceneColor_sample]
                  _846 = (pow(_840.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
                  _849 = (pow(_840.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
                  _852 = (pow(_840.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
                  _881 = (exp2(log2(max(0.0f, (_852 + -0.8359375f)) / (18.851562f - (_852 * 18.6875f))) * 6.277395f) * 10000.0f);
                  _882 = (exp2(log2(max(0.0f, (_849 + -0.8359375f)) / (18.851562f - (_849 * 18.6875f))) * 6.277395f) * 10000.0f);
                  _883 = (exp2(log2(max(0.0f, (_846 + -0.8359375f)) / (18.851562f - (_846 * 18.6875f))) * 6.277395f) * 10000.0f);
                }
                _887 = sqrt((_211 * _211) + (_210 * _210));
                if (!((_212 <= 0.0001f) || (_887 <= 1e-06f))) {
                  _894 = WaveReadLaneFirst(_materialIndex);
                  _902 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_894 < (uint)170000), _894, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._hazeStrength);
                  _904 = max(_902, 0.0f) * _212;
                  _908 = min(((_904 * 0.04f) + (_887 * 0.7f)), 0.0028f);
                  _910 = (_211 / _887) * _908;
                  _912 = (_210 / _887) * _908;
                  // [sem: _3__36__0__0__g_sceneColor_sample]
                  _921 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(min(max((_910 + _246), 0.001f), 0.999f), min(max((_912 + _269), 0.001f), 0.999f)));
                  _927 = (pow(_921.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
                  _930 = (pow(_921.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
                  _933 = (pow(_921.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
                  _941 = exp2(log2(max(0.0f, (_927 + -0.8359375f)) / (18.851562f - (_927 * 18.6875f))) * 6.277395f);
                  // [sem: _3__36__0__0__g_sceneColor_sample]
                  _948 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(min(max((_246 - _910), 0.001f), 0.999f), min(max((_269 - _912), 0.001f), 0.999f)));
                  _954 = (pow(_948.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
                  _957 = (pow(_948.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
                  _960 = (pow(_948.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
                  _968 = exp2(log2(max(0.0f, (_960 + -0.8359375f)) / (18.851562f - (_960 * 18.6875f))) * 6.277395f);
                  _971 = min(max((_904 * 18.0f), 0.0f), 0.14f);
                  _973 = 1.0f - (_971 * 2.0f);
                  _974 = _971 * 10000.0f;
                  _986 = ((exp2(log2(max(0.0f, (_954 + -0.8359375f)) / (18.851562f - (_954 * 18.6875f))) * 6.277395f) + _941) * _974) + (_973 * _883);
                  _1006 = ((exp2(log2(max(0.0f, (_930 + -0.8359375f)) / (18.851562f - (_930 * 18.6875f))) * 6.277395f) + exp2(log2(max(0.0f, (_957 + -0.8359375f)) / (18.851562f - (_957 * 18.6875f))) * 6.277395f)) * _974) + (_973 * _882);
                  _1018 = ((exp2(log2(max(0.0f, (_933 + -0.8359375f)) / (18.851562f - (_933 * 18.6875f))) * 6.277395f) + _968) * _974) + (_973 * _881);
                  _1019 = _971 * 0.45f;
                  _1032 = ((((_968 * 10000.0f) - _1018) * _1019) + _1018);
                  _1033 = (lerp(_1006, _882, _1019));  // [sem: blended]
                  _1034 = ((((_941 * 10000.0f) - _986) * _1019) + _986);
                } else {
                  _1032 = _881;
                  _1033 = _882;  // [sem: blended]
                  _1034 = _883;
                }
                if (!(_368 <= 0.0f)) {
                  _1041 = (_seaBaseline - _308) / max(_368, 0.05f);
                  _1047 = ((_1041 * _369) + _317);
                  _1048 = ((_1041 * _367) + _299);
                } else {
                  _1047 = _317;
                  _1048 = _299;
                }
                _1051 = WaveReadLaneFirst(_materialIndex);
                _1059 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1051 < (uint)170000), _1051, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSpeed);
                _1062 = WaveReadLaneFirst(_materialIndex);
                _1070 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1062 < (uint)170000), _1062, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsWorldScale);
                _1071 = max(_1070, 0.001f);
                _1072 = 1.0f / _1071;
                _1075 = _time.x * _1059;
                _1076 = _1072 * _1047;
                _1079 = (_1075 * 0.75f) + (_1072 * _1048);
                _1080 = -1.0f / _1071;
                _1081 = _1080 * _1047;
                _1083 = _1075 + (_1080 * _1048);
                _1084 = ddx_coarse(_1079);
                _1085 = ddx_coarse(_1076);
                _1086 = ddy_coarse(_1079);
                _1087 = ddy_coarse(_1076);
                _1088 = ddx_coarse(_1083);
                _1089 = ddx_coarse(_1081);
                _1090 = ddy_coarse(_1083);
                _1091 = ddy_coarse(_1081);
                _1094 = WaveReadLaneFirst(_materialIndex);
                _1102 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1094 < (uint)170000), _1094, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSplit);
                _1103 = _1102 + _1079;
                _1104 = _1076 - _1102;
                _1107 = WaveReadLaneFirst(_materialIndex);
                _1115 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1107 < (uint)170000), _1107, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
                _1118 = WaveReadLaneFirst(_materialIndex);
                _1126 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1118 < (uint)170000), _1118, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
                _1129 = WaveReadLaneFirst(_materialIndex);
                _1137 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1129 < (uint)170000), _1129, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
                _1140 = WaveReadLaneFirst(_materialIndex);
                _1148 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1140 < (uint)170000), _1140, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSplit);
                _1149 = _1148 + _1083;
                _1150 = _1081 - _1148;
                _1153 = WaveReadLaneFirst(_materialIndex);
                _1161 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1153 < (uint)170000), _1153, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
                _1164 = WaveReadLaneFirst(_materialIndex);
                _1172 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1164 < (uint)170000), _1164, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
                _1175 = WaveReadLaneFirst(_materialIndex);
                _1183 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1175 < (uint)170000), _1175, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
                _1186 = WaveReadLaneFirst(_materialIndex);
                _1194 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1186 < (uint)170000), _1186, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSmallWorldScale);
                _1195 = max(_1194, 0.001f);
                _1196 = 1.0f / _1195;
                _1199 = _time.x * _1059;
                _1203 = ((_1196 * _1048) + 0.37f) + (_1199 * 1.15f);
                _1205 = (_1196 * _1047) + 0.61f;
                _1206 = -1.0f / _1195;
                _1210 = ((_1206 * _1048) + -0.61f) + (_1199 * 1.35f);
                _1212 = (_1206 * _1047) + -0.37f;
                _1213 = ddx_coarse(_1203);
                _1214 = ddx_coarse(_1205);
                _1215 = ddy_coarse(_1203);
                _1216 = ddy_coarse(_1205);
                _1217 = ddx_coarse(_1210);
                _1218 = ddx_coarse(_1212);
                _1219 = ddy_coarse(_1210);
                _1220 = ddy_coarse(_1212);
                _1223 = WaveReadLaneFirst(_materialIndex);
                _1231 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1223 < (uint)170000), _1223, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSplit);
                _1232 = _1231 + _1203;
                _1233 = _1205 - _1231;
                _1236 = WaveReadLaneFirst(_materialIndex);
                _1244 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1236 < (uint)170000), _1236, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
                _1247 = WaveReadLaneFirst(_materialIndex);
                _1255 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1247 < (uint)170000), _1247, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
                _1258 = WaveReadLaneFirst(_materialIndex);
                _1266 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1258 < (uint)170000), _1258, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
                _1269 = WaveReadLaneFirst(_materialIndex);
                _1277 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1269 < (uint)170000), _1269, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSplit);
                _1278 = _1277 + _1210;
                _1279 = _1212 - _1277;
                _1282 = WaveReadLaneFirst(_materialIndex);
                _1290 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1282 < (uint)170000), _1282, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
                _1293 = WaveReadLaneFirst(_materialIndex);
                _1301 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1293 < (uint)170000), _1293, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
                _1304 = WaveReadLaneFirst(_materialIndex);
                _1312 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1304 < (uint)170000), _1304, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
                _1315 = WaveReadLaneFirst(_materialIndex);
                _1323 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1315 < (uint)170000), _1315, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSmallStrength);
                _1326 = WaveReadLaneFirst(_materialIndex);
                _1334 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1326 < (uint)170000), _1326, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTint);
                _1337 = (float)((uint)((uint)(((uint)((uint)(_1334)) >> 16) & 255)));
                _1340 = (float)((uint)((uint)(((uint)((uint)(_1334)) >> 8) & 255)));
                _1342 = (float)((uint)((uint)(_1334 & 255)));
                _1345 = WaveReadLaneFirst(_materialIndex);
                _1353 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1345 < (uint)170000), _1345, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsStrength);
                _1356 = WaveReadLaneFirst(_materialIndex);
                _1364 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1356 < (uint)170000), _1356, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsLuminanceMaskStrength);
                _1371 = abs(_444 - _554);
                _1386 = saturate((max((_nearFarProj.x / _278), 0.0f) + -40.0f) * 0.025f);  // [sem: expr_sat]
                _1448 = ((((((_376 * _376) * (_381 * 10.0f)) * _1353) * saturate(_1371 * 2.0f)) * (((dot(float3(_1034, _1033, _1032), float3(0.2126f, 0.7152f, 0.0722f)) + -1.0f) * min(max(_1364, 0.0f), 1.0f)) + 1.0f)) * exp2(log2(1.0f - saturate(_1371 * 0.033333335f)) * select((abs(_554 - _503) < 0.0001f), 0.5f, 16.0f))) * (1.0f - ((_1386 * _1386) * (3.0f - (_1386 * 2.0f))));
                _1556 = ((((min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1137 < (uint)65000), _1137, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2((_1079 - _1102), _1104), float2(_1084, _1085), float2(_1086, _1087), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1183 < (uint)65000), _1183, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2((_1083 - _1148), _1150), float2(_1088, _1089), float2(_1090, _1091), int2(0, 0)))).x)) + (min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1266 < (uint)65000), _1266, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2((_1203 - _1231), _1233), float2(_1213, _1214), float2(_1215, _1216), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1312 < (uint)65000), _1312, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2((_1210 - _1277), _1279), float2(_1217, _1218), float2(_1219, _1220), int2(0, 0)))).x)) * _1323)) * _1448) * select(((_1342 * 0.003921569f) < 0.04045f), (_1342 * 0.000303527f), exp2(log2((_1342 * 0.003717127f) + 0.052132703f) * 2.4f))) + (_1032 * _443));
                _1557 = ((((min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1126 < (uint)65000), _1126, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_1103, _1104), float2(_1084, _1085), float2(_1086, _1087), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1172 < (uint)65000), _1172, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_1149, _1150), float2(_1088, _1089), float2(_1090, _1091), int2(0, 0)))).x)) + (min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1255 < (uint)65000), _1255, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_1232, _1233), float2(_1213, _1214), float2(_1215, _1216), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1301 < (uint)65000), _1301, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_1278, _1279), float2(_1217, _1218), float2(_1219, _1220), int2(0, 0)))).x)) * _1323)) * _1448) * select(((_1340 * 0.003921569f) < 0.04045f), (_1340 * 0.000303527f), exp2(log2((_1340 * 0.003717127f) + 0.052132703f) * 2.4f))) + (_1033 * _431));
                _1558 = ((((min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1115 < (uint)65000), _1115, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_1103, (_1102 + _1076)), float2(_1084, _1085), float2(_1086, _1087), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1161 < (uint)65000), _1161, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_1149, (_1148 + _1081)), float2(_1088, _1089), float2(_1090, _1091), int2(0, 0)))).x)) + (min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1244 < (uint)65000), _1244, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_1232, (_1231 + _1205)), float2(_1213, _1214), float2(_1215, _1216), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1290 < (uint)65000), _1290, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_1278, (_1277 + _1212)), float2(_1217, _1218), float2(_1219, _1220), int2(0, 0)))).x)) * _1323)) * _1448) * select(((_1337 * 0.003921569f) < 0.04045f), (_1337 * 0.000303527f), exp2(log2((_1337 * 0.003717127f) + 0.052132703f) * 2.4f))) + (_1034 * _419));
              } else {
                // [sem: _3__36__0__0__g_sceneColor_sample]
                _564 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
                _570 = (pow(_564.x, 0.012683313f));
                _573 = (pow(_564.y, 0.012683313f));
                _576 = (pow(_564.z, 0.012683313f));
                _1556 = ((_443 * 10000.0f) * exp2(log2(max(0.0f, (_576 + -0.8359375f)) / (18.851562f - (_576 * 18.6875f))) * 6.277395f));
                _1557 = ((_431 * 10000.0f) * exp2(log2(max(0.0f, (_573 + -0.8359375f)) / (18.851562f - (_573 * 18.6875f))) * 6.277395f));
                _1558 = ((_419 * 10000.0f) * exp2(log2(max(0.0f, (_570 + -0.8359375f)) / (18.851562f - (_570 * 18.6875f))) * 6.277395f));
              }
            } else {
              // [sem: _3__36__0__0__g_sceneColor_sample]
              _564 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
              _570 = (pow(_564.x, 0.012683313f));
              _573 = (pow(_564.y, 0.012683313f));
              _576 = (pow(_564.z, 0.012683313f));
              _1556 = ((_443 * 10000.0f) * exp2(log2(max(0.0f, (_576 + -0.8359375f)) / (18.851562f - (_576 * 18.6875f))) * 6.277395f));
              _1557 = ((_431 * 10000.0f) * exp2(log2(max(0.0f, (_573 + -0.8359375f)) / (18.851562f - (_573 * 18.6875f))) * 6.277395f));
              _1558 = ((_419 * 10000.0f) * exp2(log2(max(0.0f, (_570 + -0.8359375f)) / (18.851562f - (_570 * 18.6875f))) * 6.277395f));
            }
          } else {
            // [sem: _3__36__0__0__g_sceneColor_sample]
            _564 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
            _570 = (pow(_564.x, 0.012683313f));
            _573 = (pow(_564.y, 0.012683313f));
            _576 = (pow(_564.z, 0.012683313f));
            _1556 = ((_443 * 10000.0f) * exp2(log2(max(0.0f, (_576 + -0.8359375f)) / (18.851562f - (_576 * 18.6875f))) * 6.277395f));
            _1557 = ((_431 * 10000.0f) * exp2(log2(max(0.0f, (_573 + -0.8359375f)) / (18.851562f - (_573 * 18.6875f))) * 6.277395f));
            _1558 = ((_419 * 10000.0f) * exp2(log2(max(0.0f, (_570 + -0.8359375f)) / (18.851562f - (_570 * 18.6875f))) * 6.277395f));
          }
        }
      } else {
        _564 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
        _570 = (pow(_564.x, 0.012683313f));
        _573 = (pow(_564.y, 0.012683313f));
        _576 = (pow(_564.z, 0.012683313f));
        _1556 = ((_443 * 10000.0f) * exp2(log2(max(0.0f, (_576 + -0.8359375f)) / (18.851562f - (_576 * 18.6875f))) * 6.277395f));
        _1557 = ((_431 * 10000.0f) * exp2(log2(max(0.0f, (_573 + -0.8359375f)) / (18.851562f - (_573 * 18.6875f))) * 6.277395f));
        _1558 = ((_419 * 10000.0f) * exp2(log2(max(0.0f, (_570 + -0.8359375f)) / (18.851562f - (_570 * 18.6875f))) * 6.277395f));
      }
    } else {
      _564 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
      _570 = (pow(_564.x, 0.012683313f));
      _573 = (pow(_564.y, 0.012683313f));
      _576 = (pow(_564.z, 0.012683313f));
      _1556 = ((_443 * 10000.0f) * exp2(log2(max(0.0f, (_576 + -0.8359375f)) / (18.851562f - (_576 * 18.6875f))) * 6.277395f));
      _1557 = ((_431 * 10000.0f) * exp2(log2(max(0.0f, (_573 + -0.8359375f)) / (18.851562f - (_573 * 18.6875f))) * 6.277395f));
      _1558 = ((_419 * 10000.0f) * exp2(log2(max(0.0f, (_570 + -0.8359375f)) / (18.851562f - (_570 * 18.6875f))) * 6.277395f));
    }
  } else {
    _564 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
    _570 = (pow(_564.x, 0.012683313f));
    _573 = (pow(_564.y, 0.012683313f));
    _576 = (pow(_564.z, 0.012683313f));
    _1556 = ((_443 * 10000.0f) * exp2(log2(max(0.0f, (_576 + -0.8359375f)) / (18.851562f - (_576 * 18.6875f))) * 6.277395f));
    _1557 = ((_431 * 10000.0f) * exp2(log2(max(0.0f, (_573 + -0.8359375f)) / (18.851562f - (_573 * 18.6875f))) * 6.277395f));
    _1558 = ((_419 * 10000.0f) * exp2(log2(max(0.0f, (_570 + -0.8359375f)) / (18.851562f - (_570 * 18.6875f))) * 6.277395f));
  }
  _1568 = (exp2(log2(max(0.0f, (_41 + -0.8359375f)) / (18.851562f - (_41 * 18.6875f))) * 6.277395f) * 10000.0f) + _1558;
  _1578 = (exp2(log2(max(0.0f, (_44 + -0.8359375f)) / (18.851562f - (_44 * 18.6875f))) * 6.277395f) * 10000.0f) + _1557;
  _1588 = (exp2(log2(max(0.0f, (_47 + -0.8359375f)) / (18.851562f - (_47 * 18.6875f))) * 6.277395f) * 10000.0f) + _1556;
  _1589 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _1602 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _1589, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1602 = 1.0f;
  }
  _1605 = (_localToneMappingParams.w > 0.0f);
  if (_1605) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_1568, _1578, _1588));
    _1853 = _rndx_tonemapped_color.x;
    _1860 = _rndx_tonemapped_color.y;
    _1867 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _1873 = 1.0f - abs(_etcParams.w);
      _1874 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1876 = (_1873 * _1853) + _1874;
      _1878 = (_1873 * _1860) + _1874;
      _1880 = (_1873 * _1867) + _1874;
      if (_colorGradingParams.w > 0.0f) {
        _1885 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1902 = (((max(0.0f, (1.0f - _1876)) - _1876) * _1885) + _1876);
        _1903 = (((max(0.0f, (1.0f - _1878)) - _1878) * _1885) + _1878);
        _1904 = (((max(0.0f, (1.0f - _1880)) - _1880) * _1885) + _1880);
      } else {
        _1902 = _1876;
        _1903 = _1878;
        _1904 = _1880;
      }
      _1906 = _userImageAdjust.y + 1.0f;
      _1908 = _userImageAdjust.x + 0.5f;
      _1911 = ((_1902 + -0.5f) * _1906) + _1908;
      _1914 = ((_1903 + -0.5f) * _1906) + _1908;
      _1917 = ((_1904 + -0.5f) * _1906) + _1908;
      _1923 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1958 = exp2(log2(saturate(mad(_colorBlind0.z, _1917, mad(_colorBlind0.y, _1914, (_colorBlind0.x * _1911))))) * _1923);
      _1959 = exp2(log2(saturate(mad(_colorBlind1.z, _1917, mad(_colorBlind1.y, _1914, (_colorBlind1.x * _1911))))) * _1923);
      _1960 = exp2(log2(saturate(mad(_colorBlind2.z, _1917, mad(_colorBlind2.y, _1914, (_colorBlind2.x * _1911))))) * _1923);
    } else {
      _1958 = _1853;
      _1959 = _1860;
      _1960 = _1867;
    }
  } else {
    _1958 = _1568;
    _1959 = _1578;
    _1960 = _1588;
  }
  if (_etcParams.y > 1.0f) {
    _1965 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _1968 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _1974 = saturate(1.0f - (saturate(_etcParams.y + -1.0f) * dot(float2(_1965, _1968), float2(_1965, _1968))));  // [sem: expr_sat]
    _1979 = (_1974 * _1958);
    _1980 = (_1974 * _1959);
    _1981 = (_1974 * _1960);
  } else {
    _1979 = _1958;
    _1980 = _1959;
    _1981 = _1960;
  }
  if (_1605 && (_etcParams.z > 0.0f)) {
    _2011 = select((_1979 <= 0.0031308f), (_1979 * 12.92f), (((pow(_1979, 0.41666666f)) * 1.055f) + -0.055f));
    _2012 = select((_1980 <= 0.0031308f), (_1980 * 12.92f), (((pow(_1980, 0.41666666f)) * 1.055f) + -0.055f));
    _2013 = select((_1981 <= 0.0031308f), (_1981 * 12.92f), (((pow(_1981, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _2011 = _1979;
    _2012 = _1980;
    _2013 = _1981;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _2016 = (float)((uint)((uint)(_1589)));
    if (!(_2016 < _viewDir.w)) {
      if (!(!(_2016 >= (_screenSizeAndInvSize.y - _viewDir.w)))) {
        _2027 = 0.0f;
        _2028 = 0.0f;
        _2029 = 0.0f;
      } else {
        _2027 = _2011;
        _2028 = _2012;
        _2029 = _2013;
      }
    } else {
      _2027 = 0.0f;
      _2028 = 0.0f;
      _2029 = 0.0f;
    }
  } else {
    _2027 = _2011;
    _2028 = _2012;
    _2029 = _2013;
  }
  _2033 = exp2(log2(_2027 * 0.0001f) * 0.15930176f);
  _2037 = exp2(log2(_2028 * 0.0001f) * 0.15930176f);
  _2041 = exp2(log2(_2029 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_2033 * 18.6875f) + 1.0f)) * ((_2033 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_2037 * 18.6875f) + 1.0f)) * ((_2037 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_2041 * 18.6875f) + 1.0f)) * ((_2041 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _1602;
  return SV_Target;
}
