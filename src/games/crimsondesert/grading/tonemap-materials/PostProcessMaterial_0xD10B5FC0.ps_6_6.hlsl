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
  float _underWaterSaturation;
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
  float _48;
  float _49;
  float _50;
  float _75;
  float _76;
  float _77;
  float _83;
  int _84;
  float _92;
  float _93;
  float _94;
  float _95;
  int _98;
  float _106;
  float _107;
  int _144;
  float _152;
  float _153;
  float _262;
  float _263;
  float _264;
  float _388;
  float _389;
  float _390;
  float _523;
  bool _583;
  float _584;
  float _585;
  float _599;
  float _600;
  float _601;
  float _670;
  float _671;
  float _672;
  float _1794;
  float _1795;
  float _1796;
  float _1988;
  float _1989;
  float _1990;
  float _2003;
  float _2004;
  float _3183;
  float _3184;
  float _3185;
  float _3199;
  float _3404;
  float _3405;
  float _3406;
  float _3499;
  float _3500;
  float _3501;
  float _3555;
  float _3556;
  float _3557;
  float _3576;
  float _3577;
  float _3578;
  float _3608;
  float _3609;
  float _3610;
  float _3624;
  float _3625;
  float _3626;
  int _156;
  float _164;
  float _165;
  int _168;
  float _176;
  float _177;
  float _180;
  float _181;
  int _194;
  int _202;
  float4 _209;
  int _213;
  int _221;
  float4 _228;
  float _250;
  float _255;
  float _256;
  int _265;
  float _273;
  float _282;
  float _283;
  float _289;
  float _290;
  float _291;
  float _292;
  float _314;
  float _318;
  float _322;
  float _326;
  float _328;
  float _329;
  float _331;
  float _339;
  float4 _353;
  float _366;
  float _367;
  float _368;
  float _370;
  float _392;
  float _393;
  float _394;
  float _395;
  float _398;
  float _402;
  float _404;
  int _405;
  int _413;
  float _416;
  float _419;
  float _421;
  float _449;
  float _454;
  float _456;
  float _460;
  float _463;
  float _465;
  float _479;
  float _480;
  float _481;
  float _490;
  float _493;
  float _505;
  float _507;
  float _529;
  float _531;
  float _533;
  float _536;
  float _543;
  float _545;
  float _558;
  float _571;
  float _576;
  float _588;
  float4 _608;
  float _618;
  float _619;
  float _620;
  float _645;
  float _646;
  float _647;
  float _649;
  int _650;
  float _658;
  float _659;
  float _676;
  float _677;
  float _678;
  float _682;
  float4 _689;
  float _699;
  float _700;
  float _701;
  float _726;
  float _727;
  float _728;
  float _729;
  int _730;
  float _738;
  float _739;
  float _746;
  float4 _750;
  float _760;
  float _761;
  float _762;
  float _787;
  float _788;
  float _789;
  float _790;
  int _791;
  float _799;
  float _800;
  float4 _810;
  float _820;
  float _821;
  float _822;
  float _847;
  float _848;
  float _849;
  float _850;
  int _851;
  float _859;
  float _860;
  float _867;
  float4 _871;
  float _881;
  float _882;
  float _883;
  float _908;
  float _909;
  float _910;
  float _911;
  int _912;
  float _920;
  float _921;
  float4 _931;
  float _941;
  float _942;
  float _943;
  float _968;
  float _969;
  float _970;
  float _971;
  int _972;
  float _980;
  float _981;
  float4 _993;
  float _1003;
  float _1004;
  float _1005;
  float _1030;
  float _1031;
  float _1032;
  float _1033;
  int _1034;
  float _1042;
  float _1043;
  float _1050;
  float _1051;
  float4 _1056;
  float _1066;
  float _1067;
  float _1068;
  float _1093;
  float _1094;
  float _1095;
  float _1096;
  int _1097;
  float _1105;
  float _1106;
  float4 _1117;
  float _1127;
  float _1128;
  float _1129;
  float _1154;
  float _1155;
  float _1156;
  float _1157;
  int _1158;
  float _1166;
  float _1167;
  float _1174;
  float _1175;
  float4 _1180;
  float _1190;
  float _1191;
  float _1192;
  float _1217;
  float _1218;
  float _1219;
  float _1220;
  int _1221;
  float _1229;
  float _1230;
  float4 _1241;
  float _1251;
  float _1252;
  float _1253;
  float _1278;
  float _1279;
  float _1280;
  float _1281;
  int _1282;
  float _1290;
  float _1291;
  float _1298;
  float _1306;
  float _1314;
  float _1359;
  float _1369;
  float _1371;
  int _1388;
  float _1396;
  float _1397;
  float4 _1400;
  float _1410;
  float _1411;
  float _1412;
  float _1437;
  float _1438;
  float _1439;
  float _1440;
  int _1441;
  float _1449;
  float _1450;
  float _1469;
  float _1470;
  float _1475;
  float _1479;
  bool _1480;
  int _1481;
  float _1489;
  float _1491;
  float _1509;
  float _1514;
  float4 _1517;
  float _1527;
  float _1528;
  float _1529;
  float _1554;
  float _1555;
  float _1556;
  float _1557;
  int _1558;
  float _1566;
  float _1567;
  float _1582;
  float _1584;
  float _1586;
  float _1587;
  float _1588;
  float _1589;
  float _1590;
  float4 _1605;
  float _1615;
  float _1616;
  float _1617;
  float _1642;
  float _1645;
  int _1646;
  float _1654;
  float4 _1663;
  float _1673;
  float _1674;
  float _1675;
  float _1700;
  float _1701;
  float _1702;
  float _1703;
  int _1704;
  float _1712;
  float _1713;
  float _1720;
  float _1721;
  float _1722;
  float4 _1723;
  float _1733;
  float _1734;
  float _1735;
  float _1762;
  float _1763;
  int _1764;
  float _1772;
  float _1778;
  float _1782;
  float _1789;
  float _1800;
  int _1805;
  float _1813;
  float _1818;
  float _1821;
  float _1822;
  float _1823;
  float4 _1838;
  float _1848;
  float _1849;
  float _1850;
  float _1875;
  float _1876;
  float _1877;
  float _1878;
  int _1879;
  float _1887;
  float _1888;
  float _1895;
  float4 _1899;
  float _1909;
  float _1910;
  float _1911;
  float _1936;
  float _1937;
  float _1938;
  float _1939;
  int _1940;
  float _1948;
  float _1949;
  float _1956;
  float _1959;
  float _1961;
  float _1974;
  float _1975;
  float _1976;
  float _1977;
  float _1997;
  int _2005;
  float _2013;
  int _2014;
  float _2022;
  float _2023;
  float _2024;
  float _2027;
  float _2030;
  float _2031;
  float _2032;
  float _2034;
  float _2035;
  float _2036;
  float _2037;
  float _2038;
  float _2039;
  float _2040;
  float _2041;
  float _2042;
  float _2043;
  int _2044;
  float _2052;
  float _2053;
  float _2055;
  int _2057;
  int _2065;
  int _2074;
  int _2082;
  int _2091;
  int _2099;
  int _2108;
  float _2116;
  float _2117;
  float _2119;
  int _2121;
  int _2129;
  int _2138;
  int _2146;
  int _2155;
  int _2163;
  int _2175;
  float _2183;
  float _2184;
  float _2185;
  float _2188;
  float _2193;
  float _2194;
  float _2195;
  float _2200;
  float _2201;
  float _2202;
  float _2203;
  float _2204;
  float _2205;
  float _2206;
  float _2207;
  float _2208;
  float _2209;
  int _2210;
  float _2218;
  float _2219;
  float _2221;
  int _2223;
  int _2231;
  int _2240;
  int _2248;
  int _2257;
  int _2265;
  int _2274;
  float _2282;
  float _2283;
  float _2285;
  int _2287;
  int _2295;
  int _2304;
  int _2312;
  int _2321;
  int _2329;
  int _2341;
  float _2349;
  int _2356;
  int _2364;
  float _2367;
  float _2370;
  float _2372;
  int _2400;
  float _2408;
  int _2410;
  float _2418;
  float _2423;
  float _2424;
  float _2434;
  float _2441;
  float _2446;
  float _2452;
  float _2469;
  float _2471;
  float _2473;
  float _2477;
  float4 _2484;
  float _2494;
  float _2495;
  float _2496;
  float _2521;
  float _2522;
  float _2523;
  float _2524;
  int _2525;
  float _2533;
  float _2534;
  float _2541;
  float4 _2545;
  float _2555;
  float _2556;
  float _2557;
  float _2582;
  float _2583;
  float _2584;
  float _2585;
  int _2586;
  float _2594;
  float _2595;
  float4 _2605;
  float _2615;
  float _2616;
  float _2617;
  float _2642;
  float _2643;
  float _2644;
  float _2645;
  int _2646;
  float _2654;
  float _2655;
  float _2662;
  float4 _2666;
  float _2676;
  float _2677;
  float _2678;
  float _2703;
  float _2704;
  float _2705;
  float _2706;
  int _2707;
  float _2715;
  float _2716;
  float4 _2726;
  float _2736;
  float _2737;
  float _2738;
  float _2763;
  float _2764;
  float _2765;
  float _2766;
  int _2767;
  float _2775;
  float _2776;
  float4 _2788;
  float _2798;
  float _2799;
  float _2800;
  float _2825;
  float _2826;
  float _2827;
  float _2828;
  int _2829;
  float _2837;
  float _2838;
  float _2845;
  float _2846;
  float4 _2851;
  float _2861;
  float _2862;
  float _2863;
  float _2888;
  float _2889;
  float _2890;
  float _2891;
  int _2892;
  float _2900;
  float _2901;
  float4 _2912;
  float _2922;
  float _2923;
  float _2924;
  float _2949;
  float _2950;
  float _2951;
  float _2952;
  int _2953;
  float _2961;
  float _2962;
  float _2969;
  float _2970;
  float4 _2975;
  float _2985;
  float _2986;
  float _2987;
  float _3012;
  float _3013;
  float _3014;
  float _3015;
  int _3016;
  float _3024;
  float _3025;
  float4 _3036;
  float _3046;
  float _3047;
  float _3048;
  float _3073;
  float _3074;
  float _3075;
  float _3076;
  int _3077;
  float _3085;
  float _3086;
  float _3093;
  float _3101;
  float _3109;
  float _3154;
  float _3164;
  float _3166;
  uint _3186;
  bool _3202;
  float _3208;
  float _3257;
  float _3258;
  float _3259;
  float _3261;
  float _3268;
  float _3269;
  float _3270;
  float _3289;
  float _3290;
  float _3291;
  float _3292;
  float _3293;
  float _3294;
  float _3295;
  float _3296;
  float _3297;
  float _3343;
  float _3344;
  float _3345;
  float _3346;
  float _3347;
  float _3348;
  float _3349;
  float _3366;
  float _3367;
  float _3368;
  float _3369;
  float _3375;
  float _3378;
  float _3385;
  float _3386;
  float _3387;
  float _3416;
  float _3441;
  float _3442;
  float _3443;
  float _3462;
  float _3463;
  float _3464;
  float _3470;
  float _3474;
  float _3475;
  float _3476;
  float _3477;
  float _3482;
  float _3507;
  float _3511;
  float _3512;
  float _3513;
  float _3514;
  float _3544;
  float _3566;
  float _3567;
  float _3571;
  float _3615;
  float _3636;
  float _3637;
  float _3638;
  // [sem: _3__36__0__0__g_postProcessSizeColor_sample]
  _38 = __3__36__0__0__g_postProcessSizeColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));
  _48 = (pow(_38.x, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  _49 = (pow(_38.y, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  _50 = (pow(_38.z, 0.012683313f));  // [sem: _3__36__0__0__g_postProcessSizeColor_sample_derived]
  _75 = exp2(log2(max(0.0f, (_48 + -0.8359375f)) / (18.851562f - (_48 * 18.6875f))) * 6.277395f) * 10000.0f;
  _76 = exp2(log2(max(0.0f, (_49 + -0.8359375f)) / (18.851562f - (_49 * 18.6875f))) * 6.277395f) * 10000.0f;
  _77 = exp2(log2(max(0.0f, (_50 + -0.8359375f)) / (18.851562f - (_50 * 18.6875f))) * 6.277395f) * 10000.0f;
  _83 = (_srcTargetSizeAndInv.x / max(_srcTargetSizeAndInv.y, 1.0f)) * TEXCOORD.x;
  _84 = WaveReadLaneFirst(_materialIndex);
  _92 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_84 < (uint)170000), _84, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._wobbleScale);
  _93 = max(_92, 0.001f);
  _94 = _93 * _83;
  _95 = _93 * TEXCOORD.y;
  _98 = WaveReadLaneFirst(_materialIndex);
  _106 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_98 < (uint)170000), _98, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._wobbleSpeed);
  _107 = _106 * _time.x;
  _144 = WaveReadLaneFirst(_materialIndex);
  _152 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_144 < (uint)170000), _144, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._hazeStrength);
  _153 = max(_152, 0.0f);
  if (!(_153 <= 0.0f)) {
    _156 = WaveReadLaneFirst(_materialIndex);
    _164 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_156 < (uint)170000), _156, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._hazeScale);
    _165 = max(_164, 0.001f);
    _168 = WaveReadLaneFirst(_materialIndex);
    _176 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_168 < (uint)170000), _168, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._hazeSpeed);
    _177 = _176 * _time.x;
    _180 = (_83 * 1.65f) * _165;
    _181 = (TEXCOORD.y * 0.72f) * _165;
    _194 = WaveReadLaneFirst(_materialIndex);
    _202 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_194 < (uint)170000), _194, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._heatHazeLookupTexture);
    _209 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_202 < (uint)65000), _202, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2(((_177 * 0.035f) + _180), ((_177 * 0.22f) + _181)));
    _213 = WaveReadLaneFirst(_materialIndex);
    _221 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_213 < (uint)170000), _213, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._heatHazeLookupTexture);
    _228 = __0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_221 < (uint)65000), _221, 0))) + (uint)(0)))].Sample(__0__4__0__0__g_staticBilinearWrap, float2((((_180 * 1.73f) + 0.37f) - (_177 * 0.027f)), (((_181 * 1.21f) + 0.61f) + (_177 * 0.16f))));
    // [sem: expr_sat]
    _250 = saturate((min(min(TEXCOORD.x, (1.0f - TEXCOORD.x)), min(TEXCOORD.y, (1.0f - TEXCOORD.y))) + -0.015f) * 15.384616f);
    _255 = ((_250 * _250) * ((_228.z * 0.32f) + (_209.z * 0.68f))) * (3.0f - (_250 * 2.0f));
    _256 = _255 * _153;
    _262 = _255;
    _263 = (((((_209.x * 1.36f) + -1.0f) + (_228.x * 0.64f)) * 1.3f) * _256);
    _264 = (((((_209.y * 1.36f) + -1.0f) + (_228.y * 0.64f)) * 0.78f) * _256);
  } else {
    _262 = 0.0f;
    _263 = 0.0f;
    _264 = 0.0f;
  }
  _265 = WaveReadLaneFirst(_materialIndex);
  _273 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_265 < (uint)170000), _265, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._wobbleStrength);
  _282 = min(max(((_263 + TEXCOORD.x) + (_273 * (((sin((((TEXCOORD.y + _83) * 10.0f) * _93) - (_107 * 1.35f)) * 0.35f) + sin((_107 * 2.0f) + (_95 * 18.0f))) + (cos((_95 * 7.0f) - (_107 * 1.1f)) * 0.2f)))), 0.001f), 0.999f);
  _283 = min(max(((_264 + TEXCOORD.y) + (_273 * (((sin((_107 * 1.2f) + (((_83 - TEXCOORD.y) * 9.0f) * _93)) * 0.3f) + cos((_94 * 16.0f) - (_107 * 1.75f))) + (sin((_107 * 1.05f) + (_94 * 6.0f)) * 0.18f)))), 0.001f), 0.999f);
  _289 = (_282 * 2.0f) + -1.0f;
  _290 = _283 * 2.0f;
  _291 = 1.0f - _290;
  _292 = max(1e-07f, ((__3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_282, _283))).x));
  _314 = mad((_invViewProj[0].y), _291, ((_invViewProj[0].x) * _289));
  _318 = mad((_invViewProj[1].y), _291, ((_invViewProj[1].x) * _289));
  _322 = mad((_invViewProj[2].y), _291, ((_invViewProj[2].x) * _289));
  _326 = mad((_invViewProj[3].y), _291, ((_invViewProj[3].x) * _289));
  _328 = mad((_invViewProj[3].z), _292, _326) + (_invViewProj[3].w);
  _329 = (mad((_invViewProj[0].z), _292, _314) + (_invViewProj[0].w)) / _328;
  _331 = (mad((_invViewProj[2].z), _292, _322) + (_invViewProj[2].w)) / _328;
  _339 = ((_invViewProj[3].w) + (_invViewProj[3].z)) + _326;
  // [sem: _3__36__0__0__g_gbufferNormal_load]
  _353 = __3__36__0__0__g_gbufferNormal.Load(int3(((int)((uint)((_bufferSizeAndInvSize.x * _282) + -0.5f))), ((int)((uint)((_bufferSizeAndInvSize.y * _283) + -0.5f))), 0));
  _366 = (saturate(_353.x * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _367 = (saturate(_353.y * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _368 = (saturate(_353.z * 1.0009785f) * 2.0f) + -1.0f;  // [sem: _3__36__0__0__g_gbufferNormal_load_derived]
  _370 = rsqrt(dot(float3(_366, _367, _368), float3(_366, _367, _368)));  // [sem: invLength]
  if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
    _388 = _sunDirection.x;
    _389 = _sunDirection.y;
    _390 = _sunDirection.z;
  } else {
    _388 = _moonDirection.x;
    _389 = _moonDirection.y;
    _390 = _moonDirection.z;
  }
  _392 = rsqrt(dot(float3(_388, _389, _390), float3(_388, _389, _390)));  // [sem: invLength]
  _393 = _392 * _388;
  _394 = _392 * _389;
  _395 = _392 * _390;
  _398 = saturate((_394 + -0.15f) * 3.3333335f);  // [sem: expr_sat]
  _402 = (_398 * _398) * (3.0f - (_398 * 2.0f));
  _404 = saturate(dot(float3((_370 * _366), (_370 * _367), (_368 * _370)), float3(_393, _394, _395)));  // [sem: expr_sat]
  _405 = WaveReadLaneFirst(_materialIndex);
  _413 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_405 < (uint)170000), _405, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterTintColor);
  _416 = (float)((uint)((uint)(((uint)((uint)(_413)) >> 16) & 255)));
  _419 = (float)((uint)((uint)(((uint)((uint)(_413)) >> 8) & 255)));
  _421 = (float)((uint)((uint)(_413 & 255)));
  _449 = ((((_invViewProj[1].w) + (_invViewProj[1].z)) + _318) / _339) + -0.006f;
  _454 = (((_314 + (_invViewProj[0].z)) + (_invViewProj[0].w)) / _339) - _viewPos.x;
  _456 = ((((_invViewProj[2].w) + (_invViewProj[2].z)) + _322) / _339) - _viewPos.z;
  _460 = (_waterDepthFieldSize.x + -1.0f) * 0.5f;
  _463 = abs(_454);
  _465 = abs(_456);
  if ((((_463 - _460) < 0.0f) && (((1.0f - _waterDepthMinMax.z) + abs(_449 - _viewPos.y)) < 0.0f)) && ((_465 - _460) < 0.0f)) {
    _479 = _waterDepthFieldSize.w * _456;
    _480 = (_waterDepthFieldSize.z * _454) + 0.5f;
    _481 = _479 + 0.5f;
    if (!((_481 >= 1.0f) || ((_481 <= 0.0f) || ((_480 <= 0.0f) || (_480 >= 1.0f))))) {
      _490 = 0.5f - _479;
      // [sem: _3__36__0__0__g_waterDepthBottom_sampleLod]
      _493 = __3__36__0__0__g_waterDepthBottom.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_480, _490), 0.0f);
      _505 = _waterDepthMinMax.y - _waterDepthMinMax.x;
      _507 = (_viewPos.y + _waterDepthMinMax.z) - _waterDepthMinMax.x;
      if ((_463 < (_waterDepthDetailFieldSize.x * 0.5f)) && (_465 < (_waterDepthDetailFieldSize.z * 0.5f))) {
        _523 = ((__3__36__0__0__g_waterDepthTopDetail.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_waterDepthDetailFieldSize.z * _454) + 0.5f), (0.5f - (_waterDepthDetailFieldSize.w * _456))), 0.0f)).x);
      } else {
        _523 = ((__3__36__0__0__g_waterDepthTop.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_480, _490), 0.0f)).x);
      }
      _529 = select((_523 < 1.0f), (_507 - (_523 * _505)), -10000.0f);
      _531 = select((_493.x < 1.0f), (_507 - (_505 * _493.x)), -10000.0f);
      // [sem: _3__36__0__0__g_airPocketDepthTop_sampleLod]
      _533 = __3__36__0__0__g_airPocketDepthTop.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_480, _490), 0.0f);
      // [sem: _3__36__0__0__g_airPocketDepthBottom_sampleLod]
      _536 = __3__36__0__0__g_airPocketDepthBottom.SampleLevel(__0__4__0__0__g_staticBilinearBlackBorder, float2(_480, _490), 0.0f);
      _543 = select((_533.x < 1.0f), (_507 - (_533.x * _505)), -10000.0f);
      _545 = select((_536.x < 1.0f), (_507 - (_536.x * _505)), -10000.0f);
      if (((_449 >= _531) && (_449 < _529)) && ((_449 > _543) || (_449 < _545))) {
        _558 = select((_545 < _531), 0.0f, 1.0f) * select((_529 < _543), 0.0f, 1.0f);
        _571 = (_558 * ((_545 - _529) + ((_529 - _545) * select((_449 < _543), 0.0f, 1.0f)))) + _529;
        _576 = (((select((_529 < _545), 0.0f, 1.0f) * select((_543 < _529), 0.0f, 1.0f)) * (1.0f - _558)) * (_545 - _571)) + _571;
        _583 = true;
        _584 = select((abs(_576 - _529) < 0.0001f), 0.5f, 16.0f);
        _585 = (_449 - _576);
      } else {
        _583 = false;
        _584 = 16.0f;
        _585 = 0.0f;
      }
    } else {
      _583 = false;
      _584 = 16.0f;
      _585 = 0.0f;
    }
  } else {
    _583 = false;
    _584 = 16.0f;
    _585 = 0.0f;
  }
  if (_583) {
    _588 = saturate(_585 * -166.66667f);  // [sem: expr_sat]
    _599 = ((_588 * (select(((_416 * 0.003921569f) < 0.04045f), (_416 * 0.000303527f), exp2(log2((_416 * 0.003717127f) + 0.052132703f) * 2.4f)) + -1.0f)) + 1.0f);
    _600 = ((_588 * (select(((_419 * 0.003921569f) < 0.04045f), (_419 * 0.000303527f), exp2(log2((_419 * 0.003717127f) + 0.052132703f) * 2.4f)) + -1.0f)) + 1.0f);
    _601 = ((_588 * (select(((_421 * 0.003921569f) < 0.04045f), (_421 * 0.000303527f), exp2(log2((_421 * 0.003717127f) + 0.052132703f) * 2.4f)) + -1.0f)) + 1.0f);
  } else {
    _599 = 1.0f;
    _600 = 1.0f;
    _601 = 1.0f;
  }
  if ((_404 <= 0.0f) || (!_583)) {
    _608 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
    _618 = (pow(_608.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _619 = (pow(_608.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _620 = (pow(_608.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
    _645 = exp2(log2(max(0.0f, (_618 + -0.8359375f)) / (18.851562f - (_618 * 18.6875f))) * 6.277395f) * 10000.0f;
    _646 = exp2(log2(max(0.0f, (_619 + -0.8359375f)) / (18.851562f - (_619 * 18.6875f))) * 6.277395f) * 10000.0f;
    _647 = exp2(log2(max(0.0f, (_620 + -0.8359375f)) / (18.851562f - (_620 * 18.6875f))) * 6.277395f) * 10000.0f;
    if (_583) {
      _649 = dot(float3(_645, _646, _647), float3(0.2126f, 0.7152f, 0.0722f));
      _650 = WaveReadLaneFirst(_materialIndex);
      _658 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_650 < (uint)170000), _650, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
      _659 = max(_658, 0.0f);
      _670 = ((_659 * (_645 - _649)) + _649);
      _671 = ((_659 * (_646 - _649)) + _649);
      _672 = ((_659 * (_647 - _649)) + _649);
    } else {
      _670 = _645;
      _671 = _646;
      _672 = _647;
    }
    _676 = (_670 * _599) + _75;
    _677 = (_671 * _600) + _76;
    _678 = (_672 * _601) + _77;
    if (_583) {
      _682 = 1.0f - saturate(_585 * -25.0f);
      if (_682 > 0.0f) {
        _689 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
        _699 = (pow(_689.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _700 = (pow(_689.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _701 = (pow(_689.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _726 = exp2(log2(max(0.0f, (_699 + -0.8359375f)) / (18.851562f - (_699 * 18.6875f))) * 6.277395f) * 10000.0f;
        _727 = exp2(log2(max(0.0f, (_700 + -0.8359375f)) / (18.851562f - (_700 * 18.6875f))) * 6.277395f) * 10000.0f;
        _728 = exp2(log2(max(0.0f, (_701 + -0.8359375f)) / (18.851562f - (_701 * 18.6875f))) * 6.277395f) * 10000.0f;
        _729 = dot(float3(_726, _727, _728), float3(0.2126f, 0.7152f, 0.0722f));
        _730 = WaveReadLaneFirst(_materialIndex);
        _738 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_730 < (uint)170000), _730, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _739 = max(_738, 0.0f);
        _746 = _srcTargetSizeAndInv.w * 1.3846154f;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _750 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_746 + TEXCOORD.y)));
        _760 = (pow(_750.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _761 = (pow(_750.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _762 = (pow(_750.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _787 = exp2(log2(max(0.0f, (_760 + -0.8359375f)) / (18.851562f - (_760 * 18.6875f))) * 6.277395f) * 10000.0f;
        _788 = exp2(log2(max(0.0f, (_761 + -0.8359375f)) / (18.851562f - (_761 * 18.6875f))) * 6.277395f) * 10000.0f;
        _789 = exp2(log2(max(0.0f, (_762 + -0.8359375f)) / (18.851562f - (_762 * 18.6875f))) * 6.277395f) * 10000.0f;
        _790 = dot(float3(_787, _788, _789), float3(0.2126f, 0.7152f, 0.0722f));
        _791 = WaveReadLaneFirst(_materialIndex);
        _799 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_791 < (uint)170000), _791, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _800 = max(_799, 0.0f);
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _810 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _746)));
        _820 = (pow(_810.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _821 = (pow(_810.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _822 = (pow(_810.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _847 = exp2(log2(max(0.0f, (_820 + -0.8359375f)) / (18.851562f - (_820 * 18.6875f))) * 6.277395f) * 10000.0f;
        _848 = exp2(log2(max(0.0f, (_821 + -0.8359375f)) / (18.851562f - (_821 * 18.6875f))) * 6.277395f) * 10000.0f;
        _849 = exp2(log2(max(0.0f, (_822 + -0.8359375f)) / (18.851562f - (_822 * 18.6875f))) * 6.277395f) * 10000.0f;
        _850 = dot(float3(_847, _848, _849), float3(0.2126f, 0.7152f, 0.0722f));
        _851 = WaveReadLaneFirst(_materialIndex);
        _859 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_851 < (uint)170000), _851, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _860 = max(_859, 0.0f);
        _867 = _srcTargetSizeAndInv.w * 3.2307692f;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _871 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_867 + TEXCOORD.y)));
        _881 = (pow(_871.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _882 = (pow(_871.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _883 = (pow(_871.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _908 = exp2(log2(max(0.0f, (_881 + -0.8359375f)) / (18.851562f - (_881 * 18.6875f))) * 6.277395f) * 10000.0f;
        _909 = exp2(log2(max(0.0f, (_882 + -0.8359375f)) / (18.851562f - (_882 * 18.6875f))) * 6.277395f) * 10000.0f;
        _910 = exp2(log2(max(0.0f, (_883 + -0.8359375f)) / (18.851562f - (_883 * 18.6875f))) * 6.277395f) * 10000.0f;
        _911 = dot(float3(_908, _909, _910), float3(0.2126f, 0.7152f, 0.0722f));
        _912 = WaveReadLaneFirst(_materialIndex);
        _920 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_912 < (uint)170000), _912, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _921 = max(_920, 0.0f);
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _931 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _867)));
        _941 = (pow(_931.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _942 = (pow(_931.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _943 = (pow(_931.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _968 = exp2(log2(max(0.0f, (_941 + -0.8359375f)) / (18.851562f - (_941 * 18.6875f))) * 6.277395f) * 10000.0f;
        _969 = exp2(log2(max(0.0f, (_942 + -0.8359375f)) / (18.851562f - (_942 * 18.6875f))) * 6.277395f) * 10000.0f;
        _970 = exp2(log2(max(0.0f, (_943 + -0.8359375f)) / (18.851562f - (_943 * 18.6875f))) * 6.277395f) * 10000.0f;
        _971 = dot(float3(_968, _969, _970), float3(0.2126f, 0.7152f, 0.0722f));
        _972 = WaveReadLaneFirst(_materialIndex);
        _980 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_972 < (uint)170000), _972, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _981 = max(_980, 0.0f);
        _993 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
        _1003 = (pow(_993.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1004 = (pow(_993.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1005 = (pow(_993.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1030 = exp2(log2(max(0.0f, (_1003 + -0.8359375f)) / (18.851562f - (_1003 * 18.6875f))) * 6.277395f) * 10000.0f;
        _1031 = exp2(log2(max(0.0f, (_1004 + -0.8359375f)) / (18.851562f - (_1004 * 18.6875f))) * 6.277395f) * 10000.0f;
        _1032 = exp2(log2(max(0.0f, (_1005 + -0.8359375f)) / (18.851562f - (_1005 * 18.6875f))) * 6.277395f) * 10000.0f;
        _1033 = dot(float3(_1030, _1031, _1032), float3(0.2126f, 0.7152f, 0.0722f));
        _1034 = WaveReadLaneFirst(_materialIndex);
        _1042 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1034 < (uint)170000), _1034, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _1043 = max(_1042, 0.0f);
        _1050 = _srcTargetSizeAndInv.z * 0.8307693f;
        _1051 = _srcTargetSizeAndInv.w * 2.7692308f;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _1056 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_1050 + TEXCOORD.x), (_1051 + TEXCOORD.y)));
        _1066 = (pow(_1056.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1067 = (pow(_1056.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1068 = (pow(_1056.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1093 = exp2(log2(max(0.0f, (_1066 + -0.8359375f)) / (18.851562f - (_1066 * 18.6875f))) * 6.277395f) * 10000.0f;
        _1094 = exp2(log2(max(0.0f, (_1067 + -0.8359375f)) / (18.851562f - (_1067 * 18.6875f))) * 6.277395f) * 10000.0f;
        _1095 = exp2(log2(max(0.0f, (_1068 + -0.8359375f)) / (18.851562f - (_1068 * 18.6875f))) * 6.277395f) * 10000.0f;
        _1096 = dot(float3(_1093, _1094, _1095), float3(0.2126f, 0.7152f, 0.0722f));
        _1097 = WaveReadLaneFirst(_materialIndex);
        _1105 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1097 < (uint)170000), _1097, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _1106 = max(_1105, 0.0f);
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _1117 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _1050), (TEXCOORD.y - _1051)));
        _1127 = (pow(_1117.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1128 = (pow(_1117.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1129 = (pow(_1117.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1154 = exp2(log2(max(0.0f, (_1127 + -0.8359375f)) / (18.851562f - (_1127 * 18.6875f))) * 6.277395f) * 10000.0f;
        _1155 = exp2(log2(max(0.0f, (_1128 + -0.8359375f)) / (18.851562f - (_1128 * 18.6875f))) * 6.277395f) * 10000.0f;
        _1156 = exp2(log2(max(0.0f, (_1129 + -0.8359375f)) / (18.851562f - (_1129 * 18.6875f))) * 6.277395f) * 10000.0f;
        _1157 = dot(float3(_1154, _1155, _1156), float3(0.2126f, 0.7152f, 0.0722f));
        _1158 = WaveReadLaneFirst(_materialIndex);
        _1166 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1158 < (uint)170000), _1158, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _1167 = max(_1166, 0.0f);
        _1174 = _srcTargetSizeAndInv.z * 1.9384615f;
        _1175 = _srcTargetSizeAndInv.w * 6.4615383f;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _1180 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_1174 + TEXCOORD.x), (_1175 + TEXCOORD.y)));
        _1190 = (pow(_1180.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1191 = (pow(_1180.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1192 = (pow(_1180.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1217 = exp2(log2(max(0.0f, (_1190 + -0.8359375f)) / (18.851562f - (_1190 * 18.6875f))) * 6.277395f) * 10000.0f;
        _1218 = exp2(log2(max(0.0f, (_1191 + -0.8359375f)) / (18.851562f - (_1191 * 18.6875f))) * 6.277395f) * 10000.0f;
        _1219 = exp2(log2(max(0.0f, (_1192 + -0.8359375f)) / (18.851562f - (_1192 * 18.6875f))) * 6.277395f) * 10000.0f;
        _1220 = dot(float3(_1217, _1218, _1219), float3(0.2126f, 0.7152f, 0.0722f));
        _1221 = WaveReadLaneFirst(_materialIndex);
        _1229 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1221 < (uint)170000), _1221, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _1230 = max(_1229, 0.0f);
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _1241 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _1174), (TEXCOORD.y - _1175)));
        _1251 = (pow(_1241.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1252 = (pow(_1241.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1253 = (pow(_1241.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1278 = exp2(log2(max(0.0f, (_1251 + -0.8359375f)) / (18.851562f - (_1251 * 18.6875f))) * 6.277395f) * 10000.0f;
        _1279 = exp2(log2(max(0.0f, (_1252 + -0.8359375f)) / (18.851562f - (_1252 * 18.6875f))) * 6.277395f) * 10000.0f;
        _1280 = exp2(log2(max(0.0f, (_1253 + -0.8359375f)) / (18.851562f - (_1253 * 18.6875f))) * 6.277395f) * 10000.0f;
        _1281 = dot(float3(_1278, _1279, _1280), float3(0.2126f, 0.7152f, 0.0722f));
        _1282 = WaveReadLaneFirst(_materialIndex);
        _1290 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1282 < (uint)170000), _1282, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _1291 = max(_1290, 0.0f);
        _1298 = _971 + _911;
        _1306 = _850 + _790;
        _1314 = _1033 + _729;
        _1359 = sin(_682 * 3.1415927f);
        _1369 = saturate(exp2(log2(_1359 * ((_682 * 3.0f) + 1.0f))));  // [sem: expr_sat]
        _1371 = 0.35f - (saturate(pow(_1359, 5.0f)) * 0.14999999f);
        _3183 = (((((_1371 * _599) * (((((((((_1306 + (_800 * (_787 - _790))) + (_860 * (_847 - _850))) + _1096) + (_1106 * (_1093 - _1096))) + _1157) + (_1167 * (_1154 - _1157))) * 0.31621623f) + (((_1314 + (_739 * (_726 - _729))) + (_1043 * (_1030 - _1033))) * 0.22702703f)) + (((((((_1298 + (_921 * (_908 - _911))) + (_981 * (_968 - _971))) + _1220) + (_1230 * (_1217 - _1220))) + _1281) + (_1291 * (_1278 - _1281))) * 0.07027027f))) - _676) * _1369) + _676);
        _3184 = (((((_1371 * _600) * (((((((((_1306 + (_800 * (_788 - _790))) + (_860 * (_848 - _850))) + _1096) + (_1106 * (_1094 - _1096))) + _1157) + (_1167 * (_1155 - _1157))) * 0.31621623f) + (((_1314 + (_739 * (_727 - _729))) + (_1043 * (_1031 - _1033))) * 0.22702703f)) + (((((((_1298 + (_921 * (_909 - _911))) + (_981 * (_969 - _971))) + _1220) + (_1230 * (_1218 - _1220))) + _1281) + (_1291 * (_1279 - _1281))) * 0.07027027f))) - _677) * _1369) + _677);
        _3185 = (((((_1371 * _601) * (((((((((_1306 + (_800 * (_789 - _790))) + (_860 * (_849 - _850))) + _1096) + (_1106 * (_1095 - _1096))) + _1157) + (_1167 * (_1156 - _1157))) * 0.31621623f) + (((_1314 + (_739 * (_728 - _729))) + (_1043 * (_1032 - _1033))) * 0.22702703f)) + (((((((_1298 + (_921 * (_910 - _911))) + (_981 * (_970 - _971))) + _1220) + (_1230 * (_1219 - _1220))) + _1281) + (_1291 * (_1280 - _1281))) * 0.07027027f))) - _678) * _1369) + _678);
      } else {
        _3183 = _676;
        _3184 = _677;
        _3185 = _678;
      }
    } else {
      _3183 = _676;
      _3184 = _677;
      _3185 = _678;
    }
  } else {
    _1388 = WaveReadLaneFirst(_materialIndex);
    _1396 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1388 < (uint)170000), _1388, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._chromaticAberrationStrength);
    _1397 = max(_1396, 0.0f);
    if (!(_1397 <= 0.0f)) {
      _1469 = (_1397 * 0.00046296295f) * _bufferSizeAndInvSize.y;
      _1470 = _290 + -1.0f;
      _1475 = (_bufferSizeAndInvSize.x / max(_bufferSizeAndInvSize.y, 1.0f)) * _289;
      _1479 = sqrt((_1475 * _1475) + (_1470 * _1470));
      _1480 = (_1479 > 0.0001f);
      _1481 = WaveReadLaneFirst(_materialIndex);
      _1489 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1481 < (uint)170000), _1481, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._chromaticAberrationFalloff);
      _1491 = saturate(saturate(max(abs(_289), abs(_1470))));  // [sem: expr_sat]
      // [sem: expr_sat]
      _1509 = saturate((min((min(_282, (1.0f - _282)) * _bufferSizeAndInvSize.x), (min(_283, (1.0f - _283)) * _bufferSizeAndInvSize.y)) + -0.5f) / (_1469 + 0.5f));
      _1514 = ((_1509 * _1509) * exp2(log2((_1491 * _1491) * (3.0f - (_1491 * 2.0f))) * max(_1489, 0.001f))) * (3.0f - (_1509 * 2.0f));
      if (!(_1514 <= 0.0001f)) {
        _1582 = _1514 * _1469;
        _1584 = (_1582 * _bufferSizeAndInvSize.z) * select(_1480, (_1475 / _1479), 0.0f);
        _1586 = (_1582 * _bufferSizeAndInvSize.w) * select(_1480, (_1470 / _1479), 0.0f);
        _1587 = _bufferSizeAndInvSize.z * 0.5f;
        _1588 = _bufferSizeAndInvSize.w * 0.5f;
        _1589 = 1.0f - _1587;
        _1590 = 1.0f - _1588;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _1605 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(min(max((_282 - (_1584 * 2.0f)), _1587), _1589), min(max((_283 - (_1586 * 2.0f)), _1588), _1590)));
        _1615 = (pow(_1605.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1616 = (pow(_1605.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1617 = (pow(_1605.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1642 = exp2(log2(max(0.0f, (_1615 + -0.8359375f)) / (18.851562f - (_1615 * 18.6875f))) * 6.277395f) * 10000.0f;
        _1645 = dot(float3(_1642, (exp2(log2(max(0.0f, (_1616 + -0.8359375f)) / (18.851562f - (_1616 * 18.6875f))) * 6.277395f) * 10000.0f), (exp2(log2(max(0.0f, (_1617 + -0.8359375f)) / (18.851562f - (_1617 * 18.6875f))) * 6.277395f) * 10000.0f)), float3(0.2126f, 0.7152f, 0.0722f));
        _1646 = WaveReadLaneFirst(_materialIndex);
        _1654 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1646 < (uint)170000), _1646, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _1663 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(min(max(_282, _1587), _1589), min(max(_283, _1588), _1590)));
        _1673 = (pow(_1663.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1674 = (pow(_1663.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1675 = (pow(_1663.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1700 = exp2(log2(max(0.0f, (_1673 + -0.8359375f)) / (18.851562f - (_1673 * 18.6875f))) * 6.277395f) * 10000.0f;
        _1701 = exp2(log2(max(0.0f, (_1674 + -0.8359375f)) / (18.851562f - (_1674 * 18.6875f))) * 6.277395f) * 10000.0f;
        _1702 = exp2(log2(max(0.0f, (_1675 + -0.8359375f)) / (18.851562f - (_1675 * 18.6875f))) * 6.277395f) * 10000.0f;
        _1703 = dot(float3(_1700, _1701, _1702), float3(0.2126f, 0.7152f, 0.0722f));
        _1704 = WaveReadLaneFirst(_materialIndex);
        _1712 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1704 < (uint)170000), _1704, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _1713 = max(_1712, 0.0f);
        _1720 = (_1713 * (_1700 - _1703)) + _1703;
        _1721 = (_1713 * (_1701 - _1703)) + _1703;
        _1722 = (_1713 * (_1702 - _1703)) + _1703;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _1723 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(min(max((_282 - _1584), _1587), _1589), min(max((_283 - _1586), _1588), _1590)));
        _1733 = (pow(_1723.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1734 = (pow(_1723.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1735 = (pow(_1723.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1762 = exp2(log2(max(0.0f, (_1735 + -0.8359375f)) / (18.851562f - (_1735 * 18.6875f))) * 6.277395f) * 10000.0f;
        _1763 = dot(float3((exp2(log2(max(0.0f, (_1733 + -0.8359375f)) / (18.851562f - (_1733 * 18.6875f))) * 6.277395f) * 10000.0f), (exp2(log2(max(0.0f, (_1734 + -0.8359375f)) / (18.851562f - (_1734 * 18.6875f))) * 6.277395f) * 10000.0f), _1762), float3(0.2126f, 0.7152f, 0.0722f));
        _1764 = WaveReadLaneFirst(_materialIndex);
        _1772 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1764 < (uint)170000), _1764, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _1778 = ((((max(_1654, 0.0f) * (_1642 - _1645)) + _1645) - _1720) * 0.65f) + _1720;
        _1782 = (((_1763 - _1722) + (max(_1772, 0.0f) * (_1762 - _1763))) * 0.65f) + _1722;
        _1789 = min(max(((dot(float3(_1720, _1721, _1722), float3(0.2126f, 0.7152f, 0.0722f)) + 0.0001f) / (dot(float3(_1778, _1721, _1782), float3(0.2126f, 0.7152f, 0.0722f)) + 0.0001f)), 0.75f), 1.25f);
        _1794 = (_1789 * _1778);
        _1795 = (_1789 * _1721);
        _1796 = (_1789 * _1782);
      } else {
        _1517 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_282, _283));  // [sem: _3__36__0__0__g_sceneColor_sample]
        _1527 = (pow(_1517.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1528 = (pow(_1517.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1529 = (pow(_1517.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _1554 = exp2(log2(max(0.0f, (_1527 + -0.8359375f)) / (18.851562f - (_1527 * 18.6875f))) * 6.277395f) * 10000.0f;
        _1555 = exp2(log2(max(0.0f, (_1528 + -0.8359375f)) / (18.851562f - (_1528 * 18.6875f))) * 6.277395f) * 10000.0f;
        _1556 = exp2(log2(max(0.0f, (_1529 + -0.8359375f)) / (18.851562f - (_1529 * 18.6875f))) * 6.277395f) * 10000.0f;
        _1557 = dot(float3(_1554, _1555, _1556), float3(0.2126f, 0.7152f, 0.0722f));
        _1558 = WaveReadLaneFirst(_materialIndex);
        _1566 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1558 < (uint)170000), _1558, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _1567 = max(_1566, 0.0f);
        _1794 = ((_1567 * (_1554 - _1557)) + _1557);
        _1795 = ((_1567 * (_1555 - _1557)) + _1557);
        _1796 = ((_1567 * (_1556 - _1557)) + _1557);
      }
    } else {
      _1400 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(_282, _283));  // [sem: _3__36__0__0__g_sceneColor_sample]
      _1410 = (pow(_1400.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _1411 = (pow(_1400.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _1412 = (pow(_1400.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _1437 = exp2(log2(max(0.0f, (_1410 + -0.8359375f)) / (18.851562f - (_1410 * 18.6875f))) * 6.277395f) * 10000.0f;
      _1438 = exp2(log2(max(0.0f, (_1411 + -0.8359375f)) / (18.851562f - (_1411 * 18.6875f))) * 6.277395f) * 10000.0f;
      _1439 = exp2(log2(max(0.0f, (_1412 + -0.8359375f)) / (18.851562f - (_1412 * 18.6875f))) * 6.277395f) * 10000.0f;
      _1440 = dot(float3(_1437, _1438, _1439), float3(0.2126f, 0.7152f, 0.0722f));
      _1441 = WaveReadLaneFirst(_materialIndex);
      _1449 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1441 < (uint)170000), _1441, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
      _1450 = max(_1449, 0.0f);
      _1794 = ((_1450 * (_1437 - _1440)) + _1440);
      _1795 = ((_1450 * (_1438 - _1440)) + _1440);
      _1796 = ((_1450 * (_1439 - _1440)) + _1440);
    }
    _1800 = sqrt((_264 * _264) + (_263 * _263));
    if (!((_262 <= 0.0001f) || (_1800 <= 1e-06f))) {
      _1805 = WaveReadLaneFirst(_materialIndex);
      _1813 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1805 < (uint)170000), _1805, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._hazeStrength);
      _1818 = max(_1813, 0.0f) * _262;
      _1821 = min(((_1818 * 0.04f) + (_1800 * 0.7f)), 0.0028f);
      _1822 = _1821 * (_263 / _1800);
      _1823 = _1821 * (_264 / _1800);
      // [sem: _3__36__0__0__g_sceneColor_sample]
      _1838 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(min(max((_1822 + _282), 0.001f), 0.999f), min(max((_1823 + _283), 0.001f), 0.999f)));
      _1848 = (pow(_1838.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _1849 = (pow(_1838.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _1850 = (pow(_1838.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _1875 = exp2(log2(max(0.0f, (_1848 + -0.8359375f)) / (18.851562f - (_1848 * 18.6875f))) * 6.277395f) * 10000.0f;
      _1876 = exp2(log2(max(0.0f, (_1849 + -0.8359375f)) / (18.851562f - (_1849 * 18.6875f))) * 6.277395f) * 10000.0f;
      _1877 = exp2(log2(max(0.0f, (_1850 + -0.8359375f)) / (18.851562f - (_1850 * 18.6875f))) * 6.277395f) * 10000.0f;
      _1878 = dot(float3(_1875, _1876, _1877), float3(0.2126f, 0.7152f, 0.0722f));
      _1879 = WaveReadLaneFirst(_materialIndex);
      _1887 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1879 < (uint)170000), _1879, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
      _1888 = max(_1887, 0.0f);
      _1895 = (_1888 * (_1875 - _1878)) + _1878;
      // [sem: _3__36__0__0__g_sceneColor_sample]
      _1899 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(min(max((_282 - _1822), 0.001f), 0.999f), min(max((_283 - _1823), 0.001f), 0.999f)));
      _1909 = (pow(_1899.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _1910 = (pow(_1899.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _1911 = (pow(_1899.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
      _1936 = exp2(log2(max(0.0f, (_1909 + -0.8359375f)) / (18.851562f - (_1909 * 18.6875f))) * 6.277395f) * 10000.0f;
      _1937 = exp2(log2(max(0.0f, (_1910 + -0.8359375f)) / (18.851562f - (_1910 * 18.6875f))) * 6.277395f) * 10000.0f;
      _1938 = exp2(log2(max(0.0f, (_1911 + -0.8359375f)) / (18.851562f - (_1911 * 18.6875f))) * 6.277395f) * 10000.0f;
      _1939 = dot(float3(_1936, _1937, _1938), float3(0.2126f, 0.7152f, 0.0722f));
      _1940 = WaveReadLaneFirst(_materialIndex);
      _1948 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_1940 < (uint)170000), _1940, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
      _1949 = max(_1948, 0.0f);
      _1956 = (_1949 * (_1938 - _1939)) + _1939;
      _1959 = min(max((_1818 * 18.0f), 0.0f), 0.14f);
      _1961 = 1.0f - (_1959 * 2.0f);
      _1974 = (_1961 * _1794) + (((_1939 + _1895) + (_1949 * (_1936 - _1939))) * _1959);
      _1975 = (_1961 * _1795) + (((((_1888 * (_1876 - _1878)) + _1878) + _1939) + (_1949 * (_1937 - _1939))) * _1959);
      _1976 = (_1961 * _1796) + ((((_1888 * (_1877 - _1878)) + _1878) + _1956) * _1959);
      _1977 = _1959 * 0.45f;
      _1988 = (lerp(_1974, _1895, _1977));  // [sem: blended]
      _1989 = (lerp(_1975, _1795, _1977));  // [sem: blended]
      _1990 = (lerp(_1976, _1956, _1977));  // [sem: blended]
    } else {
      _1988 = _1794;  // [sem: blended]
      _1989 = _1795;  // [sem: blended]
      _1990 = _1796;  // [sem: blended]
    }
    if (!(_394 <= 0.0f)) {
      _1997 = (_seaBaseline - ((mad((_invViewProj[1].z), _292, _318) + (_invViewProj[1].w)) / _328)) / max(_394, 0.05f);
      _2003 = ((_1997 * _393) + _329);
      _2004 = ((_1997 * _395) + _331);
    } else {
      _2003 = _329;
      _2004 = _331;
    }
    _2005 = WaveReadLaneFirst(_materialIndex);
    _2013 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_2005 < (uint)170000), _2005, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSpeed);
    _2014 = WaveReadLaneFirst(_materialIndex);
    _2022 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_2014 < (uint)170000), _2014, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsWorldScale);
    _2023 = max(_2022, 0.001f);
    _2024 = 1.0f / _2023;
    _2027 = _time.x * _2013;
    _2030 = _2024 * _2004;
    _2031 = (_2024 * _2003) + (_2027 * 0.75f);
    _2032 = -1.0f / _2023;
    _2034 = _2032 * _2004;
    _2035 = _2027 + (_2032 * _2003);
    _2036 = ddx_coarse(_2031);
    _2037 = ddx_coarse(_2030);
    _2038 = ddy_coarse(_2031);
    _2039 = ddy_coarse(_2030);
    _2040 = ddx_coarse(_2035);
    _2041 = ddx_coarse(_2034);
    _2042 = ddy_coarse(_2035);
    _2043 = ddy_coarse(_2034);
    _2044 = WaveReadLaneFirst(_materialIndex);
    _2052 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_2044 < (uint)170000), _2044, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSplit);
    _2053 = _2052 + _2031;
    _2055 = _2030 - _2052;
    _2057 = WaveReadLaneFirst(_materialIndex);
    _2065 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_2057 < (uint)170000), _2057, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _2074 = WaveReadLaneFirst(_materialIndex);
    _2082 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_2074 < (uint)170000), _2074, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _2091 = WaveReadLaneFirst(_materialIndex);
    _2099 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_2091 < (uint)170000), _2091, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _2108 = WaveReadLaneFirst(_materialIndex);
    _2116 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_2108 < (uint)170000), _2108, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSplit);
    _2117 = _2116 + _2035;
    _2119 = _2034 - _2116;
    _2121 = WaveReadLaneFirst(_materialIndex);
    _2129 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_2121 < (uint)170000), _2121, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _2138 = WaveReadLaneFirst(_materialIndex);
    _2146 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_2138 < (uint)170000), _2138, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _2155 = WaveReadLaneFirst(_materialIndex);
    _2163 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_2155 < (uint)170000), _2155, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _2175 = WaveReadLaneFirst(_materialIndex);
    _2183 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_2175 < (uint)170000), _2175, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSmallWorldScale);
    _2184 = max(_2183, 0.001f);
    _2185 = 1.0f / _2184;
    _2188 = _time.x * _2013;
    _2193 = ((_2188 * 1.15f) + 0.37f) + (_2185 * _2003);
    _2194 = (_2185 * _2004) + 0.61f;
    _2195 = -1.0f / _2184;
    _2200 = ((_2188 * 1.35f) + -0.61f) + (_2195 * _2003);
    _2201 = (_2195 * _2004) + -0.37f;
    _2202 = ddx_coarse(_2193);
    _2203 = ddx_coarse(_2194);
    _2204 = ddy_coarse(_2193);
    _2205 = ddy_coarse(_2194);
    _2206 = ddx_coarse(_2200);
    _2207 = ddx_coarse(_2201);
    _2208 = ddy_coarse(_2200);
    _2209 = ddy_coarse(_2201);
    _2210 = WaveReadLaneFirst(_materialIndex);
    _2218 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_2210 < (uint)170000), _2210, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSplit);
    _2219 = _2218 + _2193;
    _2221 = _2194 - _2218;
    _2223 = WaveReadLaneFirst(_materialIndex);
    _2231 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_2223 < (uint)170000), _2223, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _2240 = WaveReadLaneFirst(_materialIndex);
    _2248 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_2240 < (uint)170000), _2240, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _2257 = WaveReadLaneFirst(_materialIndex);
    _2265 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_2257 < (uint)170000), _2257, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _2274 = WaveReadLaneFirst(_materialIndex);
    _2282 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_2274 < (uint)170000), _2274, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSplit);
    _2283 = _2282 + _2200;
    _2285 = _2201 - _2282;
    _2287 = WaveReadLaneFirst(_materialIndex);
    _2295 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_2287 < (uint)170000), _2287, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _2304 = WaveReadLaneFirst(_materialIndex);
    _2312 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_2304 < (uint)170000), _2304, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _2321 = WaveReadLaneFirst(_materialIndex);
    _2329 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_2321 < (uint)170000), _2321, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTexture);
    _2341 = WaveReadLaneFirst(_materialIndex);
    _2349 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_2341 < (uint)170000), _2341, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsSmallStrength);
    _2356 = WaveReadLaneFirst(_materialIndex);
    _2364 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_2356 < (uint)170000), _2356, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsTint);
    _2367 = (float)((uint)((uint)(((uint)((uint)(_2364)) >> 16) & 255)));
    _2370 = (float)((uint)((uint)(((uint)((uint)(_2364)) >> 8) & 255)));
    _2372 = (float)((uint)((uint)(_2364 & 255)));
    _2400 = WaveReadLaneFirst(_materialIndex);
    _2408 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_2400 < (uint)170000), _2400, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsStrength);
    _2410 = WaveReadLaneFirst(_materialIndex);
    _2418 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_2410 < (uint)170000), _2410, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._causticsLuminanceMaskStrength);
    _2423 = (min(max(_2418, 0.0f), 1.0f) * (dot(float3(_1988, _1989, _1990), float3(0.2126f, 0.7152f, 0.0722f)) + -1.0f)) + 1.0f;
    _2424 = abs(_585);
    _2434 = (saturate(_2424 * 2.0f) * _404) * exp2(log2(1.0f - saturate(_2424 * 0.033333335f)) * _584);
    _2441 = saturate((max((_nearFarProj.x / _292), 0.0f) + -40.0f) * 0.025f);  // [sem: expr_sat]
    _2446 = 1.0f - ((_2441 * _2441) * (3.0f - (_2441 * 2.0f)));
    _2452 = _2408 * ((_402 * _402) * 10.0f);
    _2469 = ((_1988 * _599) + _75) + (((((_2452 * ((_2349 * min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_2231 < (uint)65000), _2231, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_2219, (_2218 + _2194)), float2(_2202, _2203), float2(_2204, _2205), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_2295 < (uint)65000), _2295, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_2283, (_2282 + _2201)), float2(_2206, _2207), float2(_2208, _2209), int2(0, 0)))).x))) + min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_2065 < (uint)65000), _2065, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_2053, (_2052 + _2030)), float2(_2036, _2037), float2(_2038, _2039), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_2129 < (uint)65000), _2129, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_2117, (_2116 + _2034)), float2(_2040, _2041), float2(_2042, _2043), int2(0, 0)))).x)))) * select(((_2367 * 0.003921569f) < 0.04045f), (_2367 * 0.000303527f), exp2(log2((_2367 * 0.003717127f) + 0.052132703f) * 2.4f))) * _2423) * _2434) * _2446);
    _2471 = ((_1989 * _600) + _76) + (((((_2452 * ((_2349 * min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_2248 < (uint)65000), _2248, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_2219, _2221), float2(_2202, _2203), float2(_2204, _2205), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_2312 < (uint)65000), _2312, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_2283, _2285), float2(_2206, _2207), float2(_2208, _2209), int2(0, 0)))).x))) + min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_2082 < (uint)65000), _2082, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_2053, _2055), float2(_2036, _2037), float2(_2038, _2039), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_2146 < (uint)65000), _2146, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2(_2117, _2119), float2(_2040, _2041), float2(_2042, _2043), int2(0, 0)))).x)))) * select(((_2370 * 0.003921569f) < 0.04045f), (_2370 * 0.000303527f), exp2(log2((_2370 * 0.003717127f) + 0.052132703f) * 2.4f))) * _2423) * _2434) * _2446);
    _2473 = ((_1990 * _601) + _77) + (((((_2452 * ((_2349 * min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_2265 < (uint)65000), _2265, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2((_2193 - _2218), _2221), float2(_2202, _2203), float2(_2204, _2205), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_2329 < (uint)65000), _2329, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2((_2200 - _2282), _2285), float2(_2206, _2207), float2(_2208, _2209), int2(0, 0)))).x))) + min((((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_2099 < (uint)65000), _2099, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2((_2031 - _2052), _2055), float2(_2036, _2037), float2(_2038, _2039), int2(0, 0)))).x), (((float4)(__0__7__0__0__g_bindlessTextures[((int)((uint)((uint)(select(((uint)_2163 < (uint)65000), _2163, 0))) + (uint)(0)))].SampleGrad(__0__4__0__0__g_staticBilinearWrap, float2((_2035 - _2116), _2119), float2(_2040, _2041), float2(_2042, _2043), int2(0, 0)))).x)))) * select(((_2372 * 0.003921569f) < 0.04045f), (_2372 * 0.000303527f), exp2(log2((_2372 * 0.003717127f) + 0.052132703f) * 2.4f))) * _2423) * _2434) * _2446);
    if (_583) {
      _2477 = 1.0f - saturate(_585 * -25.0f);
      if (_2477 > 0.0f) {
        _2484 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
        _2494 = (pow(_2484.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2495 = (pow(_2484.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2496 = (pow(_2484.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2521 = exp2(log2(max(0.0f, (_2494 + -0.8359375f)) / (18.851562f - (_2494 * 18.6875f))) * 6.277395f) * 10000.0f;
        _2522 = exp2(log2(max(0.0f, (_2495 + -0.8359375f)) / (18.851562f - (_2495 * 18.6875f))) * 6.277395f) * 10000.0f;
        _2523 = exp2(log2(max(0.0f, (_2496 + -0.8359375f)) / (18.851562f - (_2496 * 18.6875f))) * 6.277395f) * 10000.0f;
        _2524 = dot(float3(_2521, _2522, _2523), float3(0.2126f, 0.7152f, 0.0722f));
        _2525 = WaveReadLaneFirst(_materialIndex);
        _2533 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_2525 < (uint)170000), _2525, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _2534 = max(_2533, 0.0f);
        _2541 = _srcTargetSizeAndInv.w * 1.3846154f;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _2545 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_2541 + TEXCOORD.y)));
        _2555 = (pow(_2545.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2556 = (pow(_2545.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2557 = (pow(_2545.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2582 = exp2(log2(max(0.0f, (_2555 + -0.8359375f)) / (18.851562f - (_2555 * 18.6875f))) * 6.277395f) * 10000.0f;
        _2583 = exp2(log2(max(0.0f, (_2556 + -0.8359375f)) / (18.851562f - (_2556 * 18.6875f))) * 6.277395f) * 10000.0f;
        _2584 = exp2(log2(max(0.0f, (_2557 + -0.8359375f)) / (18.851562f - (_2557 * 18.6875f))) * 6.277395f) * 10000.0f;
        _2585 = dot(float3(_2582, _2583, _2584), float3(0.2126f, 0.7152f, 0.0722f));
        _2586 = WaveReadLaneFirst(_materialIndex);
        _2594 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_2586 < (uint)170000), _2586, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _2595 = max(_2594, 0.0f);
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _2605 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _2541)));
        _2615 = (pow(_2605.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2616 = (pow(_2605.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2617 = (pow(_2605.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2642 = exp2(log2(max(0.0f, (_2615 + -0.8359375f)) / (18.851562f - (_2615 * 18.6875f))) * 6.277395f) * 10000.0f;
        _2643 = exp2(log2(max(0.0f, (_2616 + -0.8359375f)) / (18.851562f - (_2616 * 18.6875f))) * 6.277395f) * 10000.0f;
        _2644 = exp2(log2(max(0.0f, (_2617 + -0.8359375f)) / (18.851562f - (_2617 * 18.6875f))) * 6.277395f) * 10000.0f;
        _2645 = dot(float3(_2642, _2643, _2644), float3(0.2126f, 0.7152f, 0.0722f));
        _2646 = WaveReadLaneFirst(_materialIndex);
        _2654 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_2646 < (uint)170000), _2646, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _2655 = max(_2654, 0.0f);
        _2662 = _srcTargetSizeAndInv.w * 3.2307692f;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _2666 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (_2662 + TEXCOORD.y)));
        _2676 = (pow(_2666.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2677 = (pow(_2666.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2678 = (pow(_2666.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2703 = exp2(log2(max(0.0f, (_2676 + -0.8359375f)) / (18.851562f - (_2676 * 18.6875f))) * 6.277395f) * 10000.0f;
        _2704 = exp2(log2(max(0.0f, (_2677 + -0.8359375f)) / (18.851562f - (_2677 * 18.6875f))) * 6.277395f) * 10000.0f;
        _2705 = exp2(log2(max(0.0f, (_2678 + -0.8359375f)) / (18.851562f - (_2678 * 18.6875f))) * 6.277395f) * 10000.0f;
        _2706 = dot(float3(_2703, _2704, _2705), float3(0.2126f, 0.7152f, 0.0722f));
        _2707 = WaveReadLaneFirst(_materialIndex);
        _2715 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_2707 < (uint)170000), _2707, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _2716 = max(_2715, 0.0f);
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _2726 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, (TEXCOORD.y - _2662)));
        _2736 = (pow(_2726.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2737 = (pow(_2726.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2738 = (pow(_2726.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2763 = exp2(log2(max(0.0f, (_2736 + -0.8359375f)) / (18.851562f - (_2736 * 18.6875f))) * 6.277395f) * 10000.0f;
        _2764 = exp2(log2(max(0.0f, (_2737 + -0.8359375f)) / (18.851562f - (_2737 * 18.6875f))) * 6.277395f) * 10000.0f;
        _2765 = exp2(log2(max(0.0f, (_2738 + -0.8359375f)) / (18.851562f - (_2738 * 18.6875f))) * 6.277395f) * 10000.0f;
        _2766 = dot(float3(_2763, _2764, _2765), float3(0.2126f, 0.7152f, 0.0722f));
        _2767 = WaveReadLaneFirst(_materialIndex);
        _2775 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_2767 < (uint)170000), _2767, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _2776 = max(_2775, 0.0f);
        _2788 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
        _2798 = (pow(_2788.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2799 = (pow(_2788.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2800 = (pow(_2788.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2825 = exp2(log2(max(0.0f, (_2798 + -0.8359375f)) / (18.851562f - (_2798 * 18.6875f))) * 6.277395f) * 10000.0f;
        _2826 = exp2(log2(max(0.0f, (_2799 + -0.8359375f)) / (18.851562f - (_2799 * 18.6875f))) * 6.277395f) * 10000.0f;
        _2827 = exp2(log2(max(0.0f, (_2800 + -0.8359375f)) / (18.851562f - (_2800 * 18.6875f))) * 6.277395f) * 10000.0f;
        _2828 = dot(float3(_2825, _2826, _2827), float3(0.2126f, 0.7152f, 0.0722f));
        _2829 = WaveReadLaneFirst(_materialIndex);
        _2837 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_2829 < (uint)170000), _2829, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _2838 = max(_2837, 0.0f);
        _2845 = _srcTargetSizeAndInv.z * 0.8307693f;
        _2846 = _srcTargetSizeAndInv.w * 2.7692308f;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _2851 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_2845 + TEXCOORD.x), (_2846 + TEXCOORD.y)));
        _2861 = (pow(_2851.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2862 = (pow(_2851.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2863 = (pow(_2851.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2888 = exp2(log2(max(0.0f, (_2861 + -0.8359375f)) / (18.851562f - (_2861 * 18.6875f))) * 6.277395f) * 10000.0f;
        _2889 = exp2(log2(max(0.0f, (_2862 + -0.8359375f)) / (18.851562f - (_2862 * 18.6875f))) * 6.277395f) * 10000.0f;
        _2890 = exp2(log2(max(0.0f, (_2863 + -0.8359375f)) / (18.851562f - (_2863 * 18.6875f))) * 6.277395f) * 10000.0f;
        _2891 = dot(float3(_2888, _2889, _2890), float3(0.2126f, 0.7152f, 0.0722f));
        _2892 = WaveReadLaneFirst(_materialIndex);
        _2900 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_2892 < (uint)170000), _2892, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _2901 = max(_2900, 0.0f);
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _2912 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _2845), (TEXCOORD.y - _2846)));
        _2922 = (pow(_2912.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2923 = (pow(_2912.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2924 = (pow(_2912.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2949 = exp2(log2(max(0.0f, (_2922 + -0.8359375f)) / (18.851562f - (_2922 * 18.6875f))) * 6.277395f) * 10000.0f;
        _2950 = exp2(log2(max(0.0f, (_2923 + -0.8359375f)) / (18.851562f - (_2923 * 18.6875f))) * 6.277395f) * 10000.0f;
        _2951 = exp2(log2(max(0.0f, (_2924 + -0.8359375f)) / (18.851562f - (_2924 * 18.6875f))) * 6.277395f) * 10000.0f;
        _2952 = dot(float3(_2949, _2950, _2951), float3(0.2126f, 0.7152f, 0.0722f));
        _2953 = WaveReadLaneFirst(_materialIndex);
        _2961 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_2953 < (uint)170000), _2953, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _2962 = max(_2961, 0.0f);
        _2969 = _srcTargetSizeAndInv.z * 1.9384615f;
        _2970 = _srcTargetSizeAndInv.w * 6.4615383f;
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _2975 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((_2969 + TEXCOORD.x), (_2970 + TEXCOORD.y)));
        _2985 = (pow(_2975.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2986 = (pow(_2975.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _2987 = (pow(_2975.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _3012 = exp2(log2(max(0.0f, (_2985 + -0.8359375f)) / (18.851562f - (_2985 * 18.6875f))) * 6.277395f) * 10000.0f;
        _3013 = exp2(log2(max(0.0f, (_2986 + -0.8359375f)) / (18.851562f - (_2986 * 18.6875f))) * 6.277395f) * 10000.0f;
        _3014 = exp2(log2(max(0.0f, (_2987 + -0.8359375f)) / (18.851562f - (_2987 * 18.6875f))) * 6.277395f) * 10000.0f;
        _3015 = dot(float3(_3012, _3013, _3014), float3(0.2126f, 0.7152f, 0.0722f));
        _3016 = WaveReadLaneFirst(_materialIndex);
        _3024 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_3016 < (uint)170000), _3016, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _3025 = max(_3024, 0.0f);
        // [sem: _3__36__0__0__g_sceneColor_sample]
        _3036 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2((TEXCOORD.x - _2969), (TEXCOORD.y - _2970)));
        _3046 = (pow(_3036.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _3047 = (pow(_3036.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _3048 = (pow(_3036.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
        _3073 = exp2(log2(max(0.0f, (_3046 + -0.8359375f)) / (18.851562f - (_3046 * 18.6875f))) * 6.277395f) * 10000.0f;
        _3074 = exp2(log2(max(0.0f, (_3047 + -0.8359375f)) / (18.851562f - (_3047 * 18.6875f))) * 6.277395f) * 10000.0f;
        _3075 = exp2(log2(max(0.0f, (_3048 + -0.8359375f)) / (18.851562f - (_3048 * 18.6875f))) * 6.277395f) * 10000.0f;
        _3076 = dot(float3(_3073, _3074, _3075), float3(0.2126f, 0.7152f, 0.0722f));
        _3077 = WaveReadLaneFirst(_materialIndex);
        _3085 = WaveReadLaneFirst(BindlessParameters_PostProcessUnderwater[((int)((uint)((uint)(select(((uint)_3077 < (uint)170000), _3077, 0))) + (uint)(0)))].BindlessParameters_PostProcessUnderwater._underWaterSaturation);
        _3086 = max(_3085, 0.0f);
        _3093 = _2766 + _2706;
        _3101 = _2645 + _2585;
        _3109 = _2828 + _2524;
        _3154 = sin(_2477 * 3.1415927f);
        _3164 = saturate(exp2(log2(_3154 * ((_2477 * 3.0f) + 1.0f))));  // [sem: expr_sat]
        _3166 = 0.35f - (saturate(pow(_3154, 5.0f)) * 0.14999999f);
        _3183 = (((((_3166 * _599) * (((((((((_3101 + (_2595 * (_2582 - _2585))) + (_2655 * (_2642 - _2645))) + _2891) + (_2901 * (_2888 - _2891))) + _2952) + (_2962 * (_2949 - _2952))) * 0.31621623f) + (((_3109 + (_2534 * (_2521 - _2524))) + (_2838 * (_2825 - _2828))) * 0.22702703f)) + (((((((_3093 + (_2716 * (_2703 - _2706))) + (_2776 * (_2763 - _2766))) + _3015) + (_3025 * (_3012 - _3015))) + _3076) + (_3086 * (_3073 - _3076))) * 0.07027027f))) - _2469) * _3164) + _2469);
        _3184 = (((((_3166 * _600) * (((((((((_3101 + (_2595 * (_2583 - _2585))) + (_2655 * (_2643 - _2645))) + _2891) + (_2901 * (_2889 - _2891))) + _2952) + (_2962 * (_2950 - _2952))) * 0.31621623f) + (((_3109 + (_2534 * (_2522 - _2524))) + (_2838 * (_2826 - _2828))) * 0.22702703f)) + (((((((_3093 + (_2716 * (_2704 - _2706))) + (_2776 * (_2764 - _2766))) + _3015) + (_3025 * (_3013 - _3015))) + _3076) + (_3086 * (_3074 - _3076))) * 0.07027027f))) - _2471) * _3164) + _2471);
        _3185 = (((((_3166 * _601) * (((((((((_3101 + (_2595 * (_2584 - _2585))) + (_2655 * (_2644 - _2645))) + _2891) + (_2901 * (_2890 - _2891))) + _2952) + (_2962 * (_2951 - _2952))) * 0.31621623f) + (((_3109 + (_2534 * (_2523 - _2524))) + (_2838 * (_2827 - _2828))) * 0.22702703f)) + (((((((_3093 + (_2716 * (_2705 - _2706))) + (_2776 * (_2765 - _2766))) + _3015) + (_3025 * (_3014 - _3015))) + _3076) + (_3086 * (_3075 - _3076))) * 0.07027027f))) - _2473) * _3164) + _2473);
      } else {
        _3183 = _2469;
        _3184 = _2471;
        _3185 = _2473;
      }
    } else {
      _3183 = _2469;
      _3184 = _2471;
      _3185 = _2473;
    }
  }
  _3186 = (uint)(SV_Position.y);
  if (_etcParams.y == 1.0f) {
    _3199 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _3186, 0)))).x) & 127)))) + 0.5f);
  } else {
    _3199 = 1.0f;
  }
  _3202 = (_localToneMappingParams.w > 0.0f);
  if (_3202) {
    // RenoDX: >>> [Patch: PostProcessMaterialTonemapReplace] [Version: 1.13.00]
    // Description: Every PostProcessMaterial permutation statically inlines the full vanilla tonemap pipeline and can own the visible final output while its effect draws: the game skips this shader's manual sRGB encode and writes the display target directly when _etcParams.z == 0. An unreplaced curve renders the whole screen with the vanilla look for the duration of that effect. This block replaces the vanilla slope/offset/power grade, log-space tone curve, night tone adjustment, and output matrix with the shared TonemapReplacer while preserving the vanilla _etcParams.z == 0 final-output suite below (screen fade, fade-to-inverse wash, user brightness/contrast, user gamma, color-blind matrix), which must keep running when this draw is the visible final.
    float3 _rndx_tonemapped_color = TonemapReplacer(float3(_3183, _3184, _3185));
    _3462 = _rndx_tonemapped_color.x;
    _3463 = _rndx_tonemapped_color.y;
    _3464 = _rndx_tonemapped_color.z;
    // RenoDX: <<< [Patch: PostProcessMaterialTonemapReplace]
    if (_etcParams.z == 0.0f) {
      _3470 = 1.0f - abs(_etcParams.w);
      _3474 = saturate(_etcParams.w);  // [sem: expr_sat]
      _3475 = (_3470 * _3462) + _3474;
      _3476 = (_3470 * _3463) + _3474;
      _3477 = (_3470 * _3464) + _3474;
      if (_colorGradingParams.w > 0.0f) {
        _3482 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
        _3499 = (((max(0.0f, (1.0f - _3475)) - _3475) * _3482) + _3475);
        _3500 = (((max(0.0f, (1.0f - _3476)) - _3476) * _3482) + _3476);
        _3501 = (((max(0.0f, (1.0f - _3477)) - _3477) * _3482) + _3477);
      } else {
        _3499 = _3475;
        _3500 = _3476;
        _3501 = _3477;
      }
      _3507 = _userImageAdjust.y + 1.0f;
      _3511 = _userImageAdjust.x + 0.5f;
      _3512 = ((_3499 + -0.5f) * _3507) + _3511;
      _3513 = ((_3500 + -0.5f) * _3507) + _3511;
      _3514 = ((_3501 + -0.5f) * _3507) + _3511;
      _3544 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
      _3555 = exp2(log2(saturate(mad(_colorBlind0.z, _3514, mad(_colorBlind0.y, _3513, (_colorBlind0.x * _3512))))) * _3544);
      _3556 = exp2(log2(saturate(mad(_colorBlind1.z, _3514, mad(_colorBlind1.y, _3513, (_colorBlind1.x * _3512))))) * _3544);
      _3557 = exp2(log2(saturate(mad(_colorBlind2.z, _3514, mad(_colorBlind2.y, _3513, (_colorBlind2.x * _3512))))) * _3544);
    } else {
      _3555 = _3462;
      _3556 = _3463;
      _3557 = _3464;
    }
  } else {
    _3555 = _3183;
    _3556 = _3184;
    _3557 = _3185;
  }
  if (_etcParams.y > 1.0f) {
    _3566 = abs((TEXCOORD.x * 2.0f) + -1.0f);
    _3567 = abs((TEXCOORD.y * 2.0f) + -1.0f);
    _3571 = saturate(1.0f - (dot(float2(_3566, _3567), float2(_3566, _3567)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
    _3576 = (_3571 * _3555);
    _3577 = (_3571 * _3556);
    _3578 = (_3571 * _3557);
  } else {
    _3576 = _3555;
    _3577 = _3556;
    _3578 = _3557;
  }
  if (_3202 && (_etcParams.z > 0.0f)) {
    _3608 = select((_3576 <= 0.0031308f), (_3576 * 12.92f), (((pow(_3576, 0.41666666f)) * 1.055f) + -0.055f));
    _3609 = select((_3577 <= 0.0031308f), (_3577 * 12.92f), (((pow(_3577, 0.41666666f)) * 1.055f) + -0.055f));
    _3610 = select((_3578 <= 0.0031308f), (_3578 * 12.92f), (((pow(_3578, 0.41666666f)) * 1.055f) + -0.055f));
  } else {
    _3608 = _3576;
    _3609 = _3577;
    _3610 = _3578;
  }
  if (!(!(_etcParams.y >= 1.0f))) {
    _3615 = (float)((uint)((uint)(_3186)));
    if (!(_3615 < _viewDir.w)) {
      if (!(_3615 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
        _3624 = _3608;
        _3625 = _3609;
        _3626 = _3610;
      } else {
        _3624 = 0.0f;
        _3625 = 0.0f;
        _3626 = 0.0f;
      }
    } else {
      _3624 = 0.0f;
      _3625 = 0.0f;
      _3626 = 0.0f;
    }
  } else {
    _3624 = _3608;
    _3625 = _3609;
    _3626 = _3610;
  }
  _3636 = exp2(log2(_3624 * 0.0001f) * 0.15930176f);
  _3637 = exp2(log2(_3625 * 0.0001f) * 0.15930176f);
  _3638 = exp2(log2(_3626 * 0.0001f) * 0.15930176f);
  SV_Target.x = exp2(log2((1.0f / ((_3636 * 18.6875f) + 1.0f)) * ((_3636 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.y = exp2(log2((1.0f / ((_3637 * 18.6875f) + 1.0f)) * ((_3637 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.z = exp2(log2((1.0f / ((_3638 * 18.6875f) + 1.0f)) * ((_3638 * 18.851562f) + 0.8359375f)) * 78.84375f);
  SV_Target.w = _3199;
  return SV_Target;
}
