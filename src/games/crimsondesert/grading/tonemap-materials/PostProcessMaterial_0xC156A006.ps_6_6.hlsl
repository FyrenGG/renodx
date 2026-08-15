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


Texture2D<float4> __0__7__0__0__g_bindlessTextures[] : register(t0, space7);

Texture2D<float> __3__36__0__0__g_waterDepthTop : register(t105, space36);

Texture2D<float> __3__36__0__0__g_waterDepthTopDetail : register(t106, space36);

Texture2D<float> __3__36__0__0__g_waterDepthBottom : register(t107, space36);

Texture2D<float> __3__36__0__0__g_airPocketDepthTop : register(t108, space36);

Texture2D<float> __3__36__0__0__g_airPocketDepthBottom : register(t124, space36);

Texture2D<float4> __3__36__0__0__g_postProcessSizeColor : register(t63, space36);

Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

Texture2D<float4> __3__36__0__0__g_gbufferNormal : register(t69, space36);

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
  float4 _waterDepthDetailFieldSize : packoffset(c026.x);
  float4 _waterDepthDetailFieldTextureSize : packoffset(c027.x);
  column_major float4x4 _waterDepthDetailViewProjRelative : packoffset(c028.x);
  column_major float4x4 _waterDepthDetailViewProjRelativeInv : packoffset(c032.x);
  float4 _waterDepthDetailFrustumPlanes[6] : packoffset(c036.x);
  float4 _ripplePivot : packoffset(c042.x);
  float4 _rippleFieldSize : packoffset(c043.x);
  float4 _rippleFieldTextureSize : packoffset(c044.x);
  float4 _shallowWaterPivot : packoffset(c045.x);
  float4 _shallowWaterFieldSize : packoffset(c046.x);
  float4 _shallowWaterFieldTextureSize : packoffset(c047.x);
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

struct BindlessParameters_PostProcessUnderwater {
  PostProcessUnderwaterStruct BindlessParameters_PostProcessUnderwater;
};

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
  float4 _38;
  float _47;
  int _48;
  float _56;
  float _57;
  float _58;
  float _59;
  int _62;
  float _70;
  float _71;
  int _108;
  float _116;
  float _117;
  float _226;
  float _227;
  float _228;
  float _352;
  float _353;
  float _354;
  float _487;
  bool _543;
  float _544;
  float _558;
  float _559;
  float _560;
  float _833;
  float _834;
  float _835;
  float _913;
  float _914;
  float _915;
  float _928;
  float _929;
  float _1527;
  float _1528;
  float _1529;
  float _1543;
  float _1748;
  float _1749;
  float _1750;
  float _1843;
  float _1844;
  float _1845;
  float _1899;
  float _1900;
  float _1901;
  float _1920;
  float _1921;
  float _1922;
  float _1952;
  float _1953;
  float _1954;
  float _1968;
  float _1969;
  float _1970;
  int _120;
  float _128;
  float _129;
  int _132;
  float _140;
  float _141;
  float _144;
  float _145;
  int _158;
  int _166;
  float4 _173;
  int _177;
  int _185;
  float4 _192;
  float _214;
  float _219;
  float _220;
  int _229;
  float _237;
  float _246;
  float _247;
  float _253;
  float _254;
  float _255;
  float _256;
  float _278;
  float _282;
  float _286;
  float _290;
  float _292;
  float _293;
  float _295;
  float _303;
  float4 _317;
  float _330;
  float _331;
  float _332;
  float _334;
  float _356;
  float _357;
  float _358;
  float _359;
  float _362;
  float _366;
  float _368;
  int _369;
  int _377;
  float _380;
  float _383;
  float _385;
  float _413;
  float _418;
  float _420;
  float _424;
  float _427;
  float _429;
  float _443;
  float _444;
  float _445;
  float _454;
  float _457;
  float _469;
  float _471;
  float _493;
  float _495;
  float _497;
  float _500;
  float _507;
  float _509;
  float _522;
  float _535;
  float _547;
  float4 _567;
  float _574;
  float _575;
  float _576;
  float _580;
  float _585;
  float4 _587;
  float4 _592;
  float _596;
  float4 _598;
  float4 _603;
  float _608;
  float _609;
  float4 _612;
  float4 _618;
  float _622;
  float _623;
  float4 _626;
  float4 _632;
  float _670;
  float _680;
  float _682;
  int _699;
  float _707;
  float _708;
  float4 _711;
  float _724;
  float _725;
  float _730;
  float _734;
  bool _735;
  int _736;
  float _744;
  float _746;
  float _764;
  float _769;
  float4 _772;
  float _781;
  float _783;
  float _785;
  float _786;
  float _787;
  float _788;
  float _789;
  float4 _810;
  float _818;
  float _821;
  float _828;
  float _839;
  int _844;
  float _852;
  float _857;
  float _860;
  float _861;
  float _862;
  float4 _877;
  float4 _881;
  float _887;
  float _889;
  float _899;
  float _900;
  float _901;
  float _902;
  float _922;
  int _930;
  float _938;
  int _939;
  float _947;
  float _948;
  float _949;
  float _952;
  float _955;
  float _956;
  float _957;
  float _959;
  float _960;
  float _961;
  float _962;
  float _963;
  float _964;
  float _965;
  float _966;
  float _967;
  float _968;
  int _969;
  float _977;
  float _978;
  float _980;
  int _982;
  int _990;
  int _999;
  int _1007;
  int _1016;
  int _1024;
  int _1033;
  float _1041;
  float _1042;
  float _1044;
  int _1046;
  int _1054;
  int _1063;
  int _1071;
  int _1080;
  int _1088;
  int _1100;
  float _1108;
  float _1109;
  float _1110;
  float _1113;
  float _1118;
  float _1119;
  float _1120;
  float _1125;
  float _1126;
  float _1127;
  float _1128;
  float _1129;
  float _1130;
  float _1131;
  float _1132;
  float _1133;
  float _1134;
  int _1135;
  float _1143;
  float _1144;
  float _1146;
  int _1148;
  int _1156;
  int _1165;
  int _1173;
  int _1182;
  int _1190;
  int _1199;
  float _1207;
  float _1208;
  float _1210;
  int _1212;
  int _1220;
  int _1229;
  int _1237;
  int _1246;
  int _1254;
  int _1266;
  float _1274;
  int _1281;
  int _1289;
  float _1292;
  float _1295;
  float _1297;
  int _1325;
  float _1333;
  int _1335;
  float _1343;
  float _1348;
  float _1349;
  float _1359;
  float _1366;
  float _1371;
  float _1377;
  float _1394;
  float _1396;
  float _1398;
  float _1402;
  float4 _1409;
  float _1413;
  float4 _1415;
  float4 _1420;
  float _1424;
  float4 _1426;
  float4 _1431;
  float _1436;
  float _1437;
  float4 _1440;
  float4 _1446;
  float _1450;
  float _1451;
  float4 _1454;
  float4 _1460;
  float _1498;
  float _1508;
  float _1510;
  uint _1530;
  bool _1546;
  float _1552;
  float _1601;
  float _1602;
  float _1603;
  float _1605;
  float _1612;
  float _1613;
  float _1614;
  float _1633;
  float _1634;
  float _1635;
  float _1636;
  float _1637;
  float _1638;
  float _1639;
  float _1640;
  float _1641;
  float _1687;
  float _1688;
  float _1689;
  float _1690;
  float _1691;
  float _1692;
  float _1693;
  float _1710;
  float _1711;
  float _1712;
  float _1713;
  float _1719;
  float _1722;
  float _1729;
  float _1730;
  float _1731;
  float _1760;
  float _1785;
  float _1786;
  float _1787;
  float _1806;
  float _1807;
  float _1808;
  float _1814;
  float _1818;
  float _1819;
  float _1820;
  float _1821;
  float _1826;
  float _1851;
  float _1855;
  float _1856;
  float _1857;
  float _1858;
  float _1888;
  float _1910;
  float _1911;
  float _1915;
  float _1959;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
  _38 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
  _47 = (_srcTargetSizeAndInv.x / max(_srcTargetSizeAndInv.y, 1.0f)) * TEXCOORD.x;
  _48 = WaveReadLaneFirst(_materialIndex);
  _56 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_48 < (uint)170000), _48, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._wobbleScale);
  _57 = max(_56, 0.001f);
  _58 = _57 * _47;
  _59 = _57 * TEXCOORD.y;
  _62 = WaveReadLaneFirst(_materialIndex);
  _70 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_62 < (uint)170000), _62, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._wobbleSpeed);
  _71 = _70 * _time.x;
  _108 = WaveReadLaneFirst(_materialIndex);
  _116 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_108 < (uint)170000), _108, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._hazeStrength);
  _117 = max(_116, 0.0f);
  if (!(_117 <= 0.0f)) {
    _120 = WaveReadLaneFirst(_materialIndex);
    _128 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_120 < (uint)170000), _120, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._hazeScale);
    _129 = max(_128, 0.001f);
    _132 = WaveReadLaneFirst(_materialIndex);
    _140 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_132 < (uint)170000), _132, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._hazeSpeed);
    _141 = _140 * _time.x;
    _144 = (_47 * 1.65f) * _129;
    _145 = (TEXCOORD.y * 0.72f) * _129;
    _158 = WaveReadLaneFirst(_materialIndex);
    _166 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_158 < (uint)170000), _158, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._heatHazeLookupTexture);
    _173 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_166 < (uint)65000), _166, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_141 * 0.035f) + _144), ((_141 * 0.22f) + _145)));
    _177 = WaveReadLaneFirst(_materialIndex);
    _185 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_177 < (uint)170000), _177, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._heatHazeLookupTexture);
    _192 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_185 < (uint)65000), _185, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_144 * 1.73f) + 0.37f) - (_141 * 0.027f)), (((_145 * 1.21f) + 0.61f) + (_141 * 0.16f))));
    // [sem: expr_sat]
    _214 = saturate((min(min(TEXCOORD.x, (1.0f - TEXCOORD.x)), min(TEXCOORD.y, (1.0f - TEXCOORD.y))) + -0.015f) * 15.384616f);
    _219 = ((_214 * _214) * ((_192.z * 0.32f) + (_173.z * 0.68f))) * (3.0f - (_214 * 2.0f));
    _220 = _219 * _117;
    _226 = _219;
    _227 = (((((_173.x * 1.36f) + -1.0f) + (_192.x * 0.64f)) * 1.3f) * _220);
    _228 = (((((_173.y * 1.36f) + -1.0f) + (_192.y * 0.64f)) * 0.78f) * _220);
  } else {
    _226 = 0.0f;
    _227 = 0.0f;
    _228 = 0.0f;
  }
  _229 = WaveReadLaneFirst(_materialIndex);
  _237 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_229 < (uint)170000), _229, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._wobbleStrength);
  _246 = min(max(((_227 + TEXCOORD.x) + (_237 * (((sin((((TEXCOORD.y + _47) * 10.0f) * _57) - (_71 * 1.35f)) * 0.35f) + sin((_71 * 2.0f) + (_59 * 18.0f))) + (cos((_59 * 7.0f) - (_71 * 1.1f)) * 0.2f)))), 0.001f), 0.999f);
  _247 = min(max(((_228 + TEXCOORD.y) + (_237 * (((sin((_71 * 1.2f) + (((_47 - TEXCOORD.y) * 9.0f) * _57)) * 0.3f) + cos((_58 * 16.0f) - (_71 * 1.75f))) + (sin((_71 * 1.05f) + (_58 * 6.0f)) * 0.18f)))), 0.001f), 0.999f);
  _253 = (_246 * 2.0f) + -1.0f;
  _254 = _247 * 2.0f;
  _255 = 1.0f - _254;
  _256 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_246, _247))).x));
  _278 = mad((_invViewProj[0].y), _255, ((_invViewProj[0].x) * _253));
  _282 = mad((_invViewProj[1].y), _255, ((_invViewProj[1].x) * _253));
  _286 = mad((_invViewProj[2].y), _255, ((_invViewProj[2].x) * _253));
  _290 = mad((_invViewProj[3].y), _255, ((_invViewProj[3].x) * _253));
  _292 = mad((_invViewProj[3].z), _256, _290) + (_invViewProj[3].w);
  _293 = (mad((_invViewProj[0].z), _256, _278) + (_invViewProj[0].w)) / _292;
  _295 = (mad((_invViewProj[2].z), _256, _286) + (_invViewProj[2].w)) / _292;
  _303 = ((_invViewProj[3].w) + (_invViewProj[3].z)) + _290;
  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _317 = __3__36__0__0__g_gbufferNormal.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _246) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _247) + -0.5f))), 0));
  _330 = (saturate(_317.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _331 = (saturate(_317.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _332 = (saturate(_317.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _334 = rsqrt(dot(float3(_330, _331, _332), float3(_330, _331, _332)));  // [sem: invLength]
  if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
    _352 = _sunDirection.x;
    _353 = _sunDirection.y;
    _354 = _sunDirection.z;
  } else {
    _352 = _moonDirection.x;
    _353 = _moonDirection.y;
    _354 = _moonDirection.z;
  }
  _356 = rsqrt(dot(float3(_352, _353, _354), float3(_352, _353, _354)));  // [sem: invLength]
  _357 = _356 * _352;
  _358 = _356 * _353;
  _359 = _356 * _354;
  _362 = saturate((_358 + -0.15f) * 3.3333335f);  // [sem: expr_sat]
  _366 = (_362 * _362) * (3.0f - (_362 * 2.0f));
  _368 = saturate(dot(float3((_334 * _330), (_334 * _331), (_332 * _334)), float3(_357, _358, _359)));  // [sem: expr_sat]
  _369 = WaveReadLaneFirst(_materialIndex);
  _377 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_369 < (uint)170000), _369, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterTintColor);
  _380 = (float)((uint)((uint)(((uint)((uint)(_377)) >> 16) & 255)));
  _383 = (float)((uint)((uint)(((uint)((uint)(_377)) >> 8) & 255)));
  _385 = (float)((uint)((uint)(_377 & 255)));
  _413 = ((((_invViewProj[1].w) + (_invViewProj[1].z)) + _282) / _303) + -0.006f;
  _418 = (((_278 + (_invViewProj[0].z)) + (_invViewProj[0].w)) / _303) - _viewPos.x;
  _420 = ((((_invViewProj[2].w) + (_invViewProj[2].z)) + _286) / _303) - _viewPos.z;
  _424 = (_waterDepthFieldSize.x + -1.0f) * 0.5f;
  _427 = abs(_418);
  _429 = abs(_420);
  if ((((_427 - _424) < 0.0f) && (((1.0f - _waterDepthMinMax.z) + abs(_413 - _viewPos.y)) < 0.0f)) && ((_429 - _424) < 0.0f)) {
    _443 = _waterDepthFieldSize.w * _420;
    _444 = (_waterDepthFieldSize.z * _418) + 0.5f;
    _445 = _443 + 0.5f;
    if (!((_445 >= 1.0f) || ((_445 <= 0.0f) || ((_444 <= 0.0f) || (_444 >= 1.0f))))) {
      _454 = 0.5f - _443;
      // [sem: _3__36__0__0__g_waterDepthBottom_sampleLod]
      _457 = __3__36__0__0__g_waterDepthBottom.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_444, _454), 0.0f);
      _469 = _waterDepthMinMax.y - _waterDepthMinMax.x;
      _471 = (_viewPos.y + _waterDepthMinMax.z) - _waterDepthMinMax.x;
      if ((_427 < (_waterDepthDetailFieldSize.x * 0.5f)) && (_429 < (_waterDepthDetailFieldSize.z * 0.5f))) {
        _487 = ((__3__36__0__0__g_waterDepthTopDetail.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_waterDepthDetailFieldSize.z * _418) + 0.5f), (0.5f - (_waterDepthDetailFieldSize.w * _420))), 0.0f)).x);
      } else {
        _487 = ((__3__36__0__0__g_waterDepthTop.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_444, _454), 0.0f)).x);
      }
      _493 = select((_487 < 1.0f), (_471 - (_487 * _469)), -10000.0f);
      _495 = select((_457.x < 1.0f), (_471 - (_469 * _457.x)), -10000.0f);
      // [sem: _3__36__0__0__g_airPocketDepthTop_sampleLod]
      _497 = __3__36__0__0__g_airPocketDepthTop.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_444, _454), 0.0f);
      // [sem: _3__36__0__0__g_airPocketDepthBottom_sampleLod]
      _500 = __3__36__0__0__g_airPocketDepthBottom.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_444, _454), 0.0f);
      _507 = select((_497.x < 1.0f), (_471 - (_497.x * _469)), -10000.0f);
      _509 = select((_500.x < 1.0f), (_471 - (_500.x * _469)), -10000.0f);
      if (((_413 >= _495) && (_413 < _493)) && ((_413 > _507) || (_413 < _509))) {
        _522 = select((_509 < _495), 0.0f, 1.0f) * select((_493 < _507), 0.0f, 1.0f);
        _535 = (_522 * ((_509 - _493) + ((_493 - _509) * select((_413 < _507), 0.0f, 1.0f)))) + _493;
        _543 = true;
        _544 = ((_413 - _535) - (((select((_493 < _509), 0.0f, 1.0f) * select((_507 < _493), 0.0f, 1.0f)) * (1.0f - _522)) * (_509 - _535)));
      } else {
        _543 = false;
        _544 = 0.0f;
      }
    } else {
      _543 = false;
      _544 = 0.0f;
    }
  } else {
    _543 = false;
    _544 = 0.0f;
  }
  if (_543) {
    _547 = saturate(_544 * -166.66667f);  // [sem: expr_sat]
    _558 = ((_547 * (select(((_380 * 0.003921569f) < 0.04045f), (_380 * 0.000303527f), exp2(log2((_380 * 0.003717127f) + 0.052132703f) * 2.4f)) + -1.0f)) + 1.0f);
    _559 = ((_547 * (select(((_383 * 0.003921569f) < 0.04045f), (_383 * 0.000303527f), exp2(log2((_383 * 0.003717127f) + 0.052132703f) * 2.4f)) + -1.0f)) + 1.0f);
    _560 = ((_547 * (select(((_385 * 0.003921569f) < 0.04045f), (_385 * 0.000303527f), exp2(log2((_385 * 0.003717127f) + 0.052132703f) * 2.4f)) + -1.0f)) + 1.0f);
  } else {
    _558 = 1.0f;
    _559 = 1.0f;
    _560 = 1.0f;
  }
  if ((_368 <= 0.0f) || (!_543)) {
    _567 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
    _574 = (_567.x * _558) + _38.x;
    _575 = (_567.y * _559) + _38.y;
    _576 = (_567.z * _560) + _38.z;
    if (_543) {
      _580 = 1.0f - saturate(_544 * -25.0f);
      if (_580 > 0.0f) {
        _585 = _srcTargetSizeAndInv.w * 1.3846154f;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _587 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_585 + TEXCOORD.y)));
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _592 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _585)));
        _596 = _srcTargetSizeAndInv.w * 3.2307692f;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _598 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_596 + TEXCOORD.y)));
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _603 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _596)));
        _608 = _srcTargetSizeAndInv.z * 0.8307693f;
        _609 = _srcTargetSizeAndInv.w * 2.7692308f;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _612 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_608 + TEXCOORD.x), (_609 + TEXCOORD.y)));
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _618 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _608), (TEXCOORD.y - _609)));
        _622 = _srcTargetSizeAndInv.z * 1.9384615f;
        _623 = _srcTargetSizeAndInv.w * 6.4615383f;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _626 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_622 + TEXCOORD.x), (_623 + TEXCOORD.y)));
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _632 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _622), (TEXCOORD.y - _623)));
        _670 = sin(_580 * 3.1415927f);
        _680 = saturate(exp2(log2(_670 * ((_580 * 3.0f) + 1.0f))));  // [sem: expr_sat]
        _682 = 0.35f - (saturate(pow(_670, 5.0f)) * 0.14999999f);
        _1527 = (((((_682 * _558) * ((((((_592.x + _587.x) + _612.x) + _618.x) * 0.31621623f) + (_567.x * 0.45405406f)) + ((((_603.x + _598.x) + _626.x) + _632.x) * 0.07027027f))) - _574) * _680) + _574);
        _1528 = (((((_682 * _559) * ((((((_592.y + _587.y) + _612.y) + _618.y) * 0.31621623f) + (_567.y * 0.45405406f)) + ((((_603.y + _598.y) + _626.y) + _632.y) * 0.07027027f))) - _575) * _680) + _575);
        _1529 = (((((_682 * _560) * ((((((_592.z + _587.z) + _612.z) + _618.z) * 0.31621623f) + (_567.z * 0.45405406f)) + ((((_603.z + _598.z) + _626.z) + _632.z) * 0.07027027f))) - _576) * _680) + _576);
      } else {
        _1527 = _574;
        _1528 = _575;
        _1529 = _576;
      }
    } else {
      _1527 = _574;
      _1528 = _575;
      _1529 = _576;
    }
  } else {
    _699 = WaveReadLaneFirst(_materialIndex);
    _707 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_699 < (uint)170000), _699, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._chromaticAberrationStrength);
    _708 = max(_707, 0.0f);
    if (!(_708 <= 0.0f)) {
      _724 = (_708 * 0.00046296295f) * _bufferSizeAndInvSize.y;
      _725 = _254 + -1.0f;
      _730 = (_bufferSizeAndInvSize.x / max(_bufferSizeAndInvSize.y, 1.0f)) * _253;
      _734 = sqrt((_730 * _730) + (_725 * _725));
      _735 = (_734 > 0.0001f);
      _736 = WaveReadLaneFirst(_materialIndex);
      _744 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_736 < (uint)170000), _736, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._chromaticAberrationFalloff);
      _746 = saturate(saturate(max(abs(_253), abs(_725))));  // [sem: expr_sat]
      // [sem: expr_sat]
      _764 = saturate((min((min(_246, (1.0f - _246)) * _bufferSizeAndInvSize.x), (min(_247, (1.0f - _247)) * _bufferSizeAndInvSize.y)) + -0.5f) / (_724 + 0.5f));
      _769 = ((_764 * _764) * exp2(log2((_746 * _746) * (3.0f - (_746 * 2.0f))) * max(_744, 0.001f))) * (3.0f - (_764 * 2.0f));
      if (!(_769 <= 0.0001f)) {
        _781 = _769 * _724;
        _783 = (_781 * _bufferSizeAndInvSize.z) * select(_735, (_730 / _734), 0.0f);
        _785 = (_781 * _bufferSizeAndInvSize.w) * select(_735, (_725 / _734), 0.0f);
        _786 = _bufferSizeAndInvSize.z * 0.5f;
        _787 = _bufferSizeAndInvSize.w * 0.5f;
        _788 = 1.0f - _786;
        _789 = 1.0f - _787;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _810 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(min(max(_246, _786), _788), min(max(_247, _787), _789)));
        _818 = (((((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(min(max((_246 - (_783 * 2.0f)), _786), _788), min(max((_247 - (_785 * 2.0f)), _787), _789))))).x) - _810.x) * 0.65f) + _810.x;
        _821 = (((((float4)(__3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(min(max((_246 - _783), _786), _788), min(max((_247 - _785), _787), _789))))).z) - _810.z) * 0.65f) + _810.z;
        _828 = min(max(((dot(float3(_810.x, _810.y, _810.z), float3(0.2126f, 0.7152f, 0.0722f)) + 0.0001f) / (dot(float3(_818, _810.y, _821), float3(0.2126f, 0.7152f, 0.0722f)) + 0.0001f)), 0.75f), 1.25f);
        _833 = (_828 * _818);
        _834 = (_828 * _810.y);
        _835 = (_828 * _821);
      } else {
        _772 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_246, _247));  // [sem: _3__36__0__0__g_sceneColor_sample]
        _833 = _772.x;
        _834 = _772.y;
        _835 = _772.z;
      }
    } else {
      _711 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_246, _247));  // [sem: _3__36__0__0__g_sceneColor_sample]
      _833 = _711.x;
      _834 = _711.y;
      _835 = _711.z;
    }
    _839 = sqrt((_228 * _228) + (_227 * _227));
    if (!((_226 <= 0.0001f) || (_839 <= 1e-06f))) {
      _844 = WaveReadLaneFirst(_materialIndex);
      _852 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_844 < (uint)170000), _844, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._hazeStrength);
      _857 = max(_852, 0.0f) * _226;
      _860 = min(((_857 * 0.04f) + (_839 * 0.7f)), 0.0028f);
      _861 = _860 * (_227 / _839);
      _862 = _860 * (_228 / _839);
      // [sem: _3__36__0__0__g_sceneColor_sample]
      _877 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(min(max((_861 + _246), 0.001f), 0.999f), min(max((_862 + _247), 0.001f), 0.999f)));
      // [sem: _3__36__0__0__g_sceneColor_sample]
      _881 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(min(max((_246 - _861), 0.001f), 0.999f), min(max((_247 - _862), 0.001f), 0.999f)));
      _887 = min(max((_857 * 18.0f), 0.0f), 0.14f);
      _889 = 1.0f - (_887 * 2.0f);
      _899 = (_889 * _833) + ((_881.x + _877.x) * _887);
      _900 = (_889 * _834) + ((_881.y + _877.y) * _887);
      _901 = (_889 * _835) + ((_881.z + _877.z) * _887);
      _902 = _887 * 0.45f;
      _913 = (lerp(_899, _877.x, _902));  // [sem: blended]
      _914 = (lerp(_900, _834, _902));  // [sem: blended]
      _915 = (lerp(_901, _881.z, _902));  // [sem: blended]
    } else {
      _913 = _833;  // [sem: blended]
      _914 = _834;  // [sem: blended]
      _915 = _835;  // [sem: blended]
    }
    if (!(_358 <= 0.0f)) {
      _922 = (_seaBaseline - ((mad((_invViewProj[1].z), _256, _282) + (_invViewProj[1].w)) / _292)) / max(_358, 0.05f);
      _928 = ((_922 * _357) + _293);
      _929 = ((_922 * _359) + _295);
    } else {
      _928 = _293;
      _929 = _295;
    }
    _930 = WaveReadLaneFirst(_materialIndex);
    _938 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_930 < (uint)170000), _930, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSpeed);
    _939 = WaveReadLaneFirst(_materialIndex);
    _947 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_939 < (uint)170000), _939, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsWorldScale);
    _948 = max(_947, 0.001f);
    _949 = 1.0f / _948;
    _952 = _time.x * _938;
    _955 = _949 * _929;
    _956 = (_949 * _928) + (_952 * 0.75f);
    _957 = -1.0f / _948;
    _959 = _957 * _929;
    _960 = _952 + (_957 * _928);
    _961 = ddx_coarse(_956);
    _962 = ddx_coarse(_955);
    _963 = ddy_coarse(_956);
    _964 = ddy_coarse(_955);
    _965 = ddx_coarse(_960);
    _966 = ddx_coarse(_959);
    _967 = ddy_coarse(_960);
    _968 = ddy_coarse(_959);
    _969 = WaveReadLaneFirst(_materialIndex);
    _977 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_969 < (uint)170000), _969, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSplit);
    _978 = _977 + _956;
    _980 = _955 - _977;
    _982 = WaveReadLaneFirst(_materialIndex);
    _990 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_982 < (uint)170000), _982, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _999 = WaveReadLaneFirst(_materialIndex);
    _1007 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_999 < (uint)170000), _999, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1016 = WaveReadLaneFirst(_materialIndex);
    _1024 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1016 < (uint)170000), _1016, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1033 = WaveReadLaneFirst(_materialIndex);
    _1041 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1033 < (uint)170000), _1033, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSplit);
    _1042 = _1041 + _960;
    _1044 = _959 - _1041;
    _1046 = WaveReadLaneFirst(_materialIndex);
    _1054 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1046 < (uint)170000), _1046, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1063 = WaveReadLaneFirst(_materialIndex);
    _1071 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1063 < (uint)170000), _1063, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1080 = WaveReadLaneFirst(_materialIndex);
    _1088 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1080 < (uint)170000), _1080, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1100 = WaveReadLaneFirst(_materialIndex);
    _1108 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1100 < (uint)170000), _1100, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSmallWorldScale);
    _1109 = max(_1108, 0.001f);
    _1110 = 1.0f / _1109;
    _1113 = _time.x * _938;
    _1118 = ((_1113 * 1.15f) + 0.37f) + (_1110 * _928);
    _1119 = (_1110 * _929) + 0.61f;
    _1120 = -1.0f / _1109;
    _1125 = ((_1113 * 1.35f) + -0.61f) + (_1120 * _928);
    _1126 = (_1120 * _929) + -0.37f;
    _1127 = ddx_coarse(_1118);
    _1128 = ddx_coarse(_1119);
    _1129 = ddy_coarse(_1118);
    _1130 = ddy_coarse(_1119);
    _1131 = ddx_coarse(_1125);
    _1132 = ddx_coarse(_1126);
    _1133 = ddy_coarse(_1125);
    _1134 = ddy_coarse(_1126);
    _1135 = WaveReadLaneFirst(_materialIndex);
    _1143 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1135 < (uint)170000), _1135, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSplit);
    _1144 = _1143 + _1118;
    _1146 = _1119 - _1143;
    _1148 = WaveReadLaneFirst(_materialIndex);
    _1156 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1148 < (uint)170000), _1148, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1165 = WaveReadLaneFirst(_materialIndex);
    _1173 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1165 < (uint)170000), _1165, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1182 = WaveReadLaneFirst(_materialIndex);
    _1190 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1182 < (uint)170000), _1182, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1199 = WaveReadLaneFirst(_materialIndex);
    _1207 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1199 < (uint)170000), _1199, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSplit);
    _1208 = _1207 + _1125;
    _1210 = _1126 - _1207;
    _1212 = WaveReadLaneFirst(_materialIndex);
    _1220 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1212 < (uint)170000), _1212, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1229 = WaveReadLaneFirst(_materialIndex);
    _1237 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1229 < (uint)170000), _1229, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1246 = WaveReadLaneFirst(_materialIndex);
    _1254 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1246 < (uint)170000), _1246, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _1266 = WaveReadLaneFirst(_materialIndex);
    _1274 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1266 < (uint)170000), _1266, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSmallStrength);
    _1281 = WaveReadLaneFirst(_materialIndex);
    _1289 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1281 < (uint)170000), _1281, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTint);
    _1292 = (float)((uint)((uint)(((uint)((uint)(_1289)) >> 16) & 255)));
    _1295 = (float)((uint)((uint)(((uint)((uint)(_1289)) >> 8) & 255)));
    _1297 = (float)((uint)((uint)(_1289 & 255)));
    _1325 = WaveReadLaneFirst(_materialIndex);
    _1333 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1325 < (uint)170000), _1325, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsStrength);
    _1335 = WaveReadLaneFirst(_materialIndex);
    _1343 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1335 < (uint)170000), _1335, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsLuminanceMaskStrength);
    _1348 = (min(max(_1343, 0.0f), 1.0f) * (dot(float3(_913, _914, _915), float3(0.2126f, 0.7152f, 0.0722f)) + -1.0f)) + 1.0f;
    _1349 = abs(_544);
    _1359 = (saturate(_1349 * 2.0f) * _368) * exp2(log2(1.0f - saturate(_1349 * 0.033333335f)) * 16.0f);
    _1366 = saturate((max((_nearFarProj.x / _256), 0.0f) + -40.0f) * 0.025f);  // [sem: expr_sat]
    _1371 = 1.0f - ((_1366 * _1366) * (3.0f - (_1366 * 2.0f)));
    _1377 = _1333 * ((_366 * _366) * 10.0f);
    _1394 = ((_913 * _558) + _38.x) + (((((_1377 * ((_1274 * min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1156 < (uint)65000), _1156, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_1144, (_1143 + _1119)), float2(_1127, _1128), float2(_1129, _1130), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1220 < (uint)65000), _1220, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_1208, (_1207 + _1126)), float2(_1131, _1132), float2(_1133, _1134), int2(0, 0)))).x))) + min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_990 < (uint)65000), _990, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_978, (_977 + _955)), float2(_961, _962), float2(_963, _964), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1054 < (uint)65000), _1054, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_1042, (_1041 + _959)), float2(_965, _966), float2(_967, _968), int2(0, 0)))).x)))) * select(((_1292 * 0.003921569f) < 0.04045f), (_1292 * 0.000303527f), exp2(log2((_1292 * 0.003717127f) + 0.052132703f) * 2.4f))) * _1348) * _1359) * _1371);
    _1396 = ((_914 * _559) + _38.y) + (((((_1377 * ((_1274 * min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1173 < (uint)65000), _1173, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_1144, _1146), float2(_1127, _1128), float2(_1129, _1130), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1237 < (uint)65000), _1237, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_1208, _1210), float2(_1131, _1132), float2(_1133, _1134), int2(0, 0)))).x))) + min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1007 < (uint)65000), _1007, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_978, _980), float2(_961, _962), float2(_963, _964), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1071 < (uint)65000), _1071, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_1042, _1044), float2(_965, _966), float2(_967, _968), int2(0, 0)))).x)))) * select(((_1295 * 0.003921569f) < 0.04045f), (_1295 * 0.000303527f), exp2(log2((_1295 * 0.003717127f) + 0.052132703f) * 2.4f))) * _1348) * _1359) * _1371);
    _1398 = ((_915 * _560) + _38.z) + (((((_1377 * ((_1274 * min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1190 < (uint)65000), _1190, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2((_1118 - _1143), _1146), float2(_1127, _1128), float2(_1129, _1130), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1254 < (uint)65000), _1254, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2((_1125 - _1207), _1210), float2(_1131, _1132), float2(_1133, _1134), int2(0, 0)))).x))) + min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1024 < (uint)65000), _1024, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2((_956 - _977), _980), float2(_961, _962), float2(_963, _964), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_1088 < (uint)65000), _1088, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2((_960 - _1041), _1044), float2(_965, _966), float2(_967, _968), int2(0, 0)))).x)))) * select(((_1297 * 0.003921569f) < 0.04045f), (_1297 * 0.000303527f), exp2(log2((_1297 * 0.003717127f) + 0.052132703f) * 2.4f))) * _1348) * _1359) * _1371);
    if (_543) {
      _1402 = 1.0f - saturate(_544 * -25.0f);
      if (_1402 > 0.0f) {
        _1409 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
        _1413 = _srcTargetSizeAndInv.w * 1.3846154f;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _1415 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_1413 + TEXCOORD.y)));
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _1420 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _1413)));
        _1424 = _srcTargetSizeAndInv.w * 3.2307692f;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _1426 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_1424 + TEXCOORD.y)));
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _1431 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _1424)));
        _1436 = _srcTargetSizeAndInv.z * 0.8307693f;
        _1437 = _srcTargetSizeAndInv.w * 2.7692308f;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _1440 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_1436 + TEXCOORD.x), (_1437 + TEXCOORD.y)));
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _1446 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _1436), (TEXCOORD.y - _1437)));
        _1450 = _srcTargetSizeAndInv.z * 1.9384615f;
        _1451 = _srcTargetSizeAndInv.w * 6.4615383f;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _1454 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_1450 + TEXCOORD.x), (_1451 + TEXCOORD.y)));
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _1460 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _1450), (TEXCOORD.y - _1451)));
        _1498 = sin(_1402 * 3.1415927f);
        _1508 = saturate(exp2(log2(_1498 * ((_1402 * 3.0f) + 1.0f))));  // [sem: expr_sat]
        _1510 = 0.35f - (saturate(pow(_1498, 5.0f)) * 0.14999999f);
        _1527 = (((((_1510 * _558) * ((((((_1420.x + _1415.x) + _1440.x) + _1446.x) * 0.31621623f) + (_1409.x * 0.45405406f)) + ((((_1431.x + _1426.x) + _1454.x) + _1460.x) * 0.07027027f))) - _1394) * _1508) + _1394);
        _1528 = (((((_1510 * _559) * ((((((_1420.y + _1415.y) + _1440.y) + _1446.y) * 0.31621623f) + (_1409.y * 0.45405406f)) + ((((_1431.y + _1426.y) + _1454.y) + _1460.y) * 0.07027027f))) - _1396) * _1508) + _1396);
        _1529 = (((((_1510 * _560) * ((((((_1420.z + _1415.z) + _1440.z) + _1446.z) * 0.31621623f) + (_1409.z * 0.45405406f)) + ((((_1431.z + _1426.z) + _1454.z) + _1460.z) * 0.07027027f))) - _1398) * _1508) + _1398);
      } else {
        _1527 = _1394;
        _1528 = _1396;
        _1529 = _1398;
      }
    } else {
      _1527 = _1394;
      _1528 = _1396;
      _1529 = _1398;
    }
  }
  _1530 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _1543 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _1530, 0)))).x) & 127)))) + 0.5f);
  } else {
    _1543 = 1.0f;
  }
  _1546 = (_localToneMappingParams.w > 0.0f);
  if (_1546) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_1527, _1528, _1529));
    _1806 = _rndx_tonemapped_color.x;
    _1807 = _rndx_tonemapped_color.y;
    _1808 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _1814 = 1.0f - abs(_etcParams.w);
      _1818 = saturate(_etcParams.w);  // [sem: expr_sat]
      _1819 = (_1814 * _1806) + _1818;
      _1820 = (_1814 * _1807) + _1818;
      _1821 = (_1814 * _1808) + _1818;
      if (_colorGradingParams.w > 0.0f) {
        _1826 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _1843 = (((max(0.0f, (1.0f - _1819)) - _1819) * _1826) + _1819);
        _1844 = (((max(0.0f, (1.0f - _1820)) - _1820) * _1826) + _1820);
        _1845 = (((max(0.0f, (1.0f - _1821)) - _1821) * _1826) + _1821);
      } else {
        _1843 = _1819;
        _1844 = _1820;
        _1845 = _1821;
      }
      _1851 = _userImageAdjust.y + 1.0f;
      _1855 = _userImageAdjust.x + 0.5f;
      _1856 = ((_1843 + -0.5f) * _1851) + _1855;
      _1857 = ((_1844 + -0.5f) * _1851) + _1855;
      _1858 = ((_1845 + -0.5f) * _1851) + _1855;
      _1888 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _1899 = exp2(log2(saturate(mad(_colorBlind0.z, _1858, mad(_colorBlind0.y, _1857, (_colorBlind0.x * _1856))))) * _1888);
      _1900 = exp2(log2(saturate(mad(_colorBlind1.z, _1858, mad(_colorBlind1.y, _1857, (_colorBlind1.x * _1856))))) * _1888);
      _1901 = exp2(log2(saturate(mad(_colorBlind2.z, _1858, mad(_colorBlind2.y, _1857, (_colorBlind2.x * _1856))))) * _1888);
    } else {
      _1899 = _1806;
      _1900 = _1807;
      _1901 = _1808;
    }
  } else {
    _1899 = _1527;
    _1900 = _1528;
    _1901 = _1529;
  }
  if (_etcParams.y > 1.0f) {
    _1910 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _1911 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    // RenoDX: >>> [Patch: PostProcessMaterialVignette] [Version: 1.13.00]
    // Description: When this SDR PostProcessMaterial permutation is the visible final output (_etcParams.z == 0, the display target's sRGB view encodes in hardware), scale the shader's native vignette strength by the RenoDX Vignette setting so vignette intensity matches the standalone-final arrangement instead of snapping to full native strength while the effect draws. Intermediate draws (_etcParams.z > 0) keep the native strength.
    float _rndx_vignette_strength = saturate(_etcParams.y + -1.0f);
    if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
      _rndx_vignette_strength *= CUSTOM_VIGNETTE;
    }
    _1915 = saturate(1.0f - (dot(float2(_1910, _1911), float2(_1910, _1911)) * _rndx_vignette_strength));  // [sem: expr_sat]
    // RenoDX: <<< [Patch: PostProcessMaterialVignette]
    _1920 = (_1915 * _1899);
    _1921 = (_1915 * _1900);
    _1922 = (_1915 * _1901);
  } else {
    _1920 = _1899;
    _1921 = _1900;
    _1922 = _1901;
  }
  if (_1546 && (_etcParams.z > 0.0f)) {
    _1952 = select((_1920 <= 0.0031308f), (_1920 * 12.92f), (((pow(_1920, 0.41666666f)) * 1.055f) + -0.055f));
    _1953 = select((_1921 <= 0.0031308f), (_1921 * 12.92f), (((pow(_1921, 0.41666666f)) * 1.055f) + -0.055f));
    _1954 = select((_1922 <= 0.0031308f), (_1922 * 12.92f), (((pow(_1922, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _1952 = _1920;
    _1953 = _1921;
    _1954 = _1922;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _1959 = (float)((uint)((uint)(_1530)));
    if (!(_1959 < _viewDir.w)) {
      if (!(_1959 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _1968 = _1952;
        _1969 = _1953;
        _1970 = _1954;
      } else {
        _1968 = 0.0f;
        _1969 = 0.0f;
        _1970 = 0.0f;
      }
    } else {
      _1968 = 0.0f;
      _1969 = 0.0f;
      _1970 = 0.0f;
    }
  } else {
    _1968 = _1952;
    _1969 = _1953;
    _1970 = _1954;
  }
  // RenoDX: >>> [Patch: PostProcessMaterialFinalizeSDR] [Version: 1.13.00]
  // Description: For SDR output, this PostProcessMaterial permutation can be the visible final output while its effect draws: it writes the display target directly when _etcParams.z == 0 and no standalone SDR final pass draws after it. Without this block, the RenoDX white point/color-temperature adjustment, Purkinje night handling, and SDR gamma finalization are skipped for the duration of the effect and return when it stops drawing. Applies FinalizeSDR to the post-letterbox color in the same pipeline position where the standalone SDR final pass finalizes.
  if (CUSTOM_BASIC_POSTPROCESS_FINAL == 1.f && !(_etcParams.z > 0.0f)) {
    float3 _rndx_final_color = FinalizeSDR(float3(_1968, _1969, _1970), _sunDirection.y, _moonDirection.y);
    _1968 = _rndx_final_color.x;
    _1969 = _rndx_final_color.y;
    _1970 = _rndx_final_color.z;
  }
  // RenoDX: <<< [Patch: PostProcessMaterialFinalizeSDR]
  SV_Target.x = _1968;
  SV_Target.y = _1969;
  SV_Target.z = _1970;
  SV_Target.w = _1543;
  return SV_Target;
}
