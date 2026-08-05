// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Imports the shared RenoDX option macros required by Contact Micro Shadows; this declaration changes no native output by itself.
#include "../shared.h"
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

struct anon {
  uint4 g_tileIndex[4096];
};


Texture2D<float4> __3__36__0__0__g_terrainShadowDepth : register(t37, space36);

Texture2DArray<float4> __3__36__0__0__g_dynamicShadowDepthArray : register(t236, space36);

Texture2DArray<half4> __3__36__0__0__g_dynamicShadowColorArray : register(t238, space36);

Texture2DArray<float4> __3__36__0__0__g_shadowDepthArray : register(t239, space36);

Texture2D<uint4> __3__36__0__0__g_baseColor : register(t18, space36);

Texture2D<uint> __3__36__0__0__g_depthStencil : register(t49, space36);

Texture2D<uint> __3__36__0__0__g_sceneNormal : register(t50, space36);

Texture2D<float> __3__36__0__0__g_nearFieldShadowDepth : register(t129, space36);

RWTexture2D<half4> __3__38__0__1__g_shadowColorResultUAV : register(u38, space38);

cbuffer __3__35__0__0__SceneConstantBuffer : register(b15, space35) {
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

cbuffer __3__35__0__0__ShadowConstantBuffer : register(b35, space35) {
  float4 _shadowDepthRanges : packoffset(c000.x);
  float4 _massiveShadowSizeAndInvSize : packoffset(c001.x);
  uint4 _shadowParam : packoffset(c002.x);
  int4 _updateIndex : packoffset(c003.x);
  float4 _jitterOffset[8] : packoffset(c004.x);
  float4 _shadowRelativePosition : packoffset(c012.x);
  float4 _dynmaicShadowSizeAndInvSize : packoffset(c013.x);
  column_major float4x4 _dynamicShadowProjTexScale[2] : packoffset(c014.x);
  column_major float4x4 _dynamicShadowProjRelativeTexScale[2] : packoffset(c022.x);
  float4 _dynamicShadowFrustumPlanes0[6] : packoffset(c030.x);
  float4 _dynamicShadowFrustumPlanes1[6] : packoffset(c036.x);
  column_major float4x4 _dynamicShadowViewProj[2] : packoffset(c042.x);
  column_major float4x4 _dynamicShadowViewProjPrev[2] : packoffset(c050.x);
  column_major float4x4 _invDynamicShadowViewProj[2] : packoffset(c058.x);
  float4 _dynamicShadowPosition[2] : packoffset(c066.x);
  float4 _shadowSizeAndInvSize : packoffset(c068.x);
  column_major float4x4 _shadowProjTexScale[2] : packoffset(c069.x);
  column_major float4x4 _shadowProjRelativeTexScale[2] : packoffset(c077.x);
  float4 _staticShadowPosition[2] : packoffset(c085.x);
  column_major float4x4 _shadowViewProj[2] : packoffset(c087.x);
  column_major float4x4 _shadowViewProjRelative[2] : packoffset(c095.x);
  column_major float4x4 _invShadowViewProj[2] : packoffset(c103.x);
  float4 _currShadowFrustumPlanes[6] : packoffset(c111.x);
  column_major float4x4 _currShadowViewProjRelative : packoffset(c117.x);
  column_major float4x4 _currInvShadowViewProjRelative : packoffset(c121.x);
  float4 _currStaticShadowPosition : packoffset(c125.x);
  float4 _currTerrainShadowFrustumPlanes[6] : packoffset(c126.x);
  column_major float4x4 _terrainShadowProjTexScale : packoffset(c132.x);
  column_major float4x4 _terrainShadowProjRelativeTexScale : packoffset(c136.x);
  column_major float4x4 _terrainShadowViewProj : packoffset(c140.x);
  column_major float4x4 _nearFieldShadowViewProj : packoffset(c144.x);
  float4 _nearFieldShadowFlag : packoffset(c148.x);
  float4 _nearFieldShadowFrustumPlanes[6] : packoffset(c149.x);
};

cbuffer __3__35__0__0__TileConstantBuffer : register(b26, space35) {
  struct {
    uint4 g_tileIndex[4096];
  } __3__35__0__0__TileConstantBuffer_view : packoffset(c000.x);

  // Raw views preserve dynamic cbufferLoadLegacy.f32/i32 access.
  float4 __3__35__0__0__TileConstantBuffer_raw[4096] : packoffset(c0);
  uint4 __3__35__0__0__TileConstantBuffer_raw_uint[4096] : packoffset(c0);
};

cbuffer __3__35__0__0__NearFieldShadowConstantBuffer : register(b42, space35) {
  float4 _nearFieldShadowBoundsMin : packoffset(c000.x);
  float4 _nearFieldShadowBoundsMax : packoffset(c001.x);
  column_major float4x4 _nearFieldShadowViewProjCompacted : packoffset(c002.x);
};

cbuffer __3__1__0__0__GlobalPushConstants : register(b0, space1) {
  float4 _shadowAOParams : packoffset(c000.x);
  float4 _tiledRadianceCacheParams : packoffset(c001.x);
};

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointClamp : register(s10, space4);

SamplerComparisonState __3__40__0__0__g_samplerShadow : register(s0, space40);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

static const float _global_0[32] = { -7.0f, -8.0f, 0.0f, -7.0f, -4.0f, -6.0f, 3.0f, -5.0f, 7.0f, -4.0f, -1.0f, -3.0f, -5.0f, -2.0f, 4.0f, -1.0f, -8.0f, 0.0f, 1.0f, 1.0f, -3.0f, 2.0f, 5.0f, 3.0f, -6.0f, 4.0f, 2.0f, 5.0f, -2.0f, 6.0f, 6.0f, 7.0f };

// RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
// Description: Pulls in the shared depth-bias micro detail shadow helper used by the contact
//              shadow region later in this shader. The include sits here rather than at the top
//              of the file because the helper references the shader-local resource and cbuffer
//              declarations above it. The helper returns its input unchanged when Contact Micro
//              Shadows is Off, so pulling it in adds no behavior on the vanilla path.
#include "micro_detail_shadows.hlsli"
// RenoDX: <<< [Patch: ContactMicroShadowsFamily]
[numthreads(8, 8, 1)]
void main(
  uint3 SV_DispatchThreadID : SV_DispatchThreadID,
  uint3 SV_GroupID : SV_GroupID,
  uint3 SV_GroupThreadID : SV_GroupThreadID,
  uint SV_GroupIndex : SV_GroupIndex
) {
    // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
    // Description: Zero-initialized carrier variables for the contact-shadow ray direction used by
    //              the micro detail shadow helper later in this shader. The native direction
    //              temporaries they copy are only assigned inside the shadow-evaluation gate that
    //              follows; reading those raw temporaries at the helper call site outside the gate
    //              compiles to undefined values on the gate's skip edge (phi-undef in DXIL). The
    //              helper call is gated on the same condition, so the zero fallbacks are never
    //              actually marched; they exist so every control path carries defined values. The
    //              march origin needs no carrier in this variant because it comes from the shaded
    //              world position, which is computed before this gate. These are storage only and do
    //              not affect any native computation.
    float _rndxMicroDirX = 0.0f;
    float _rndxMicroDirY = 0.0f;
    float _rndxMicroDirZ = 0.0f;
    // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
  int4 _35;
  int _47;
  int _51;
  uint _57;
  uint _64;
  float _65;
  float _66;
  float _72;
  float _77;
  uint _79;
  int _81;
  float _84;
  int _85;
  uint _87;
  float _93;
  float _99;
  float _105;
  float _107;
  float _108;
  float _109;
  float _110;
  bool _111;
  int _372;
  float _555;
  float _568;
  float _569;
  float _570;
  float _644;
  int _645;
  float _646;
  int _770;
  float _771;
  bool _820;
  int _821;
  float _822;
  int _823;
  int _824;
  float _825;
  int _980;
  int _1101;
  half _1609;
  half _1610;
  half _1611;
  float _1612;
  float _1613;
  float _1689;
  float _1690;
  float _1691;
  int _1732;
  int _1771;
  float _1785;
  int _1787;
  float _1788;
  float _1890;
  float _1891;
  float _1892;
  int _1894;
  float _1895;
  float _1935;
  float _1936;
  float _1965;
  float _1966;
  float _1967;
  float _2068;
  float _2083;
  int _2258;
  float _2264;
  float _2273;
  float _2282;
  float _2283;
  float _2284;
  float _2436;
  float _2437;
  int _2438;
  float _2439;
  float _2440;
  float _2441;
  float _2442;
  float _2443;
  int _2444;
  int _2522;
  float _2546;
  float _2566;
  int _2567;
  float _2580;
  float _2599;
  float _2600;
  float _2601;
  float _2602;
  float _2603;
  float _2611;
  float _2612;
  int _2613;
  float _2614;
  float _2615;
  float _2616;
  float _2617;
  float _2618;
  int _2619;
  int _2697;
  float _2721;
  float _2741;
  int _2742;
  float _2755;
  float _2774;
  float _2775;
  float _2776;
  float _2777;
  float _2778;
  float _2785;
  float _2786;
  float _2787;
  float _2788;
  int _2789;
  float _2790;
  float _2837;
  float _2882;
  float _2927;
  float _2979;
  float _2980;
  float _2981;
  float _2982;
  int _2983;
  float _2984;
  float _3019;
  float _3064;
  float _3109;
  float _3160;
  float _3164;
  float _3187;
  float _3188;
  float _3189;
  float _3190;
  float _115;
  float _117;
  float _120;
  float _132;
  float _141;
  float _150;
  float _159;
  float _161;
  int _168;
  bool _169;
  float _181;
  float _189;
  float _197;
  float _210;
  float _216;
  float _222;
  float _227;
  uint _239;
  uint _247;
  uint _255;
  uint _263;
  uint _271;
  uint _279;
  uint _287;
  uint _295;
  uint _303;
  uint _311;
  uint _319;
  uint _327;
  uint _335;
  uint _343;
  uint _351;
  uint _359;
  uint _377;
  float _386;
  float _388;
  float _395;
  float _397;
  float _400;
  float _402;
  float _406;
  float _409;
  float _412;
  float4 _415;
  float _420;
  float _422;
  float _424;
  float _429;
  float _433;
  float _436;
  float _439;
  float4 _440;
  float _446;
  float _448;
  float _453;
  float _457;
  float _460;
  float _463;
  float4 _464;
  float _470;
  float _472;
  float _477;
  float _481;
  float _484;
  float _487;
  float4 _488;
  float _494;
  float _496;
  float _501;
  float _558;
  bool _559;
  float _588;
  float _596;
  float _604;
  float _607;
  float _608;
  bool _614;
  float _628;
  float _634;
  float _658;
  float _666;
  float _674;
  float _693;
  float _699;
  float _713;
  float _715;
  float _717;
  float _720;
  float _722;
  float _724;
  float _736;
  float _744;
  float _752;
  float _755;
  float _756;
  float _774;
  float _776;
  float _778;
  float _790;
  float _798;
  float _806;
  uint _839;
  uint _847;
  uint _855;
  uint _863;
  uint _871;
  uint _879;
  uint _887;
  uint _895;
  uint _903;
  uint _911;
  uint _919;
  uint _927;
  uint _935;
  uint _943;
  uint _951;
  uint _959;
  bool _961;
  int _962;
  float _967;
  float _968;
  float _969;
  float _983;
  float _985;
  float _986;
  float _987;
  float _993;
  float _999;
  float _1000;
  float _1001;
  float _1007;
  float _1013;
  float _1019;
  float _1025;
  float _1031;
  float _1037;
  float _1059;
  float _1080;
  float _1086;
  float _1087;
  float _1088;
  float _1090;
  float _1104;
  float _1106;
  float _1108;
  float _1109;
  float _1110;
  float _1116;
  float _1122;
  float _1123;
  float _1124;
  half4 _1127;
  float _1136;
  float _1142;
  half4 _1143;
  float _1152;
  float _1158;
  half4 _1159;
  float _1168;
  float _1174;
  half4 _1175;
  float _1184;
  float _1190;
  half4 _1191;
  float _1200;
  float _1206;
  half4 _1207;
  float _1216;
  float _1222;
  half4 _1223;
  float _1232;
  float _1238;
  half4 _1239;
  float _1248;
  float _1254;
  half4 _1255;
  float _1264;
  float _1270;
  half4 _1271;
  float _1280;
  float _1286;
  half4 _1287;
  float _1296;
  float _1302;
  half4 _1303;
  float _1312;
  float _1318;
  half4 _1319;
  float _1328;
  float _1334;
  half4 _1335;
  float _1344;
  float _1350;
  half4 _1351;
  float _1360;
  float _1366;
  half4 _1367;
  float _1452;
  float _1532;
  half _1551;
  half _1570;
  half _1589;
  float _1592;
  float _1593;
  float _1594;
  float _1595;
  bool _1614;
  float _1616;
  float _1620;
  float _1621;
  bool _1629;
  float _1704;
  float _1710;
  float _1716;
  float _1721;
  uint _1737;
  float _1748;
  float _1755;
  float _1757;
  float _1758;
  float _1759;
  float _1760;
  uint _1776;
  int _1792;
  float _1796;
  float _1801;
  float _1818;
  int _1819;
  float _1823;
  float _1825;
  float _1827;
  int _1899;
  float _1903;
  float _1908;
  float _1925;
  int _1926;
  float _1941;
  int _1944;
  bool _1945;
  bool _1947;
  float _1948;
  int _1968;
  int _1969;
  uint _1981;
  int _1986;
  int _1991;
  float _1992;
  float _1998;
  float _2004;
  float _2009;
  float _2019;
  float _2029;
  float _2032;
  float _2034;
  float _2036;
  float _2038;
  float _2041;
  float _2042;
  float _2043;
  float _2044;
  float _2050;
  float _2056;
  float _2061;
  int _2062;
  float _2075;
  float _2096;
  bool _2099;
  float _2103;
  uint _2125;
  uint _2133;
  uint _2141;
  uint _2149;
  uint _2157;
  uint _2165;
  uint _2173;
  uint _2181;
  uint _2189;
  uint _2197;
  uint _2205;
  uint _2213;
  uint _2221;
  uint _2229;
  uint _2237;
  uint _2245;
  float _2277;
  float _2285;
  float _2286;
  float _2287;
  float _2299;
  float _2302;
  float _2311;
  float _2323;
  float _2331;
  float _2333;
  float _2335;
  float _2337;
  float _2341;
  float _2350;
  float _2359;
  float _2360;
  float _2366;
  float _2372;
  float _2374;
  float _2388;
  float _2395;
  float _2406;
  float _2407;
  float _2408;
  float _2410;
  float _2412;
  float _2413;
  float _2420;
  float _2421;
  float _2425;
  float _2429;
  float _2431;
  float _2434;
  uint _2456;
  int _2458;
  float _2461;
  int _2462;
  bool _2463;
  float _2464;
  float _2468;
  float _2471;
  bool _2475;
  int _2476;
  float _2548;
  float _2551;
  int _2604;
  float _2609;
  uint _2631;
  int _2633;
  float _2636;
  int _2637;
  bool _2638;
  float _2639;
  float _2643;
  float _2646;
  bool _2650;
  int _2651;
  float _2723;
  float _2726;
  int _2779;
  bool _2791;
  float _2804;
  float _2806;
  float _2818;
  bool _2828;
  float _2898;
  int _2899;
  uint4 _2938;
  float _2944;
  float _2947;
  float _2951;
  float _2952;
  float _2953;
  float _2954;
  float _2986;
  float _2988;
  float _3000;
  bool _3010;
  float _3080;
  int _3081;
  uint4 _3120;
  float _3126;
  float _3129;
  float _3133;
  float _3134;
  float _3135;
  float _3136;
  float _3165;
  int __loop_jump_target = -1;
  int _26[4];
  float _27[2];
  float _28[2];
  float _29[2];
  _35 = asint(__3__35__0__0__TileConstantBuffer_raw_uint[((int)((uint)(SV_GroupID.x) >> 7))]);
  _26[0] = _35.x;
  _26[1] = _35.y;
  _26[2] = _35.z;
  _26[3] = _35.w;
  _47 = _26[(((uint)(SV_GroupID.x) >> 5) & 3)];
  _51 = select((((int)(SV_GroupID.x) & 16) == 0), _47, ((uint)((uint)(_47)) >> 16));
  _57 = (uint)((uint)((int)((int)(((int)((uint)((uint)(_51)) << 2)) & 1020) | (int)((int)(SV_GroupID.x) & 3)) << 3)) + (uint)(SV_GroupThreadID.x);
  _64 = (uint)((uint)((int)((int)(((uint)((uint)(_51)) >> 6) & 1020) | (int)(((uint)(SV_GroupID.x) >> 2) & 3)) << 3)) + (uint)(SV_GroupThreadID.y);
  _65 = (float)((uint)((uint)(_57)));
  _66 = (float)((uint)((uint)(_64)));
  _72 = ((_bufferSizeAndInvSize.z * 2.0f) * (_65 + 0.5f)) + -1.0f;
  _77 = 1.0f - ((_bufferSizeAndInvSize.w * 2.0f) * (_66 + 0.5f));
  _79 = __3__36__0__0__g_depthStencil.Load(int3(_57, _64, 0));  // [sem: _3__36__0__0__g_depthStencil_load]
  _81 = (uint)((uint)(_79.x)) >> 24;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
  _84 = ((float)((uint)((uint)(_79.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
  _85 = _81 & 127;
  _87 = __3__36__0__0__g_sceneNormal.Load(int3(_57, _64, 0));  // [sem: _3__36__0__0__g_sceneNormal_load]
  _93 = min(1.0f, ((((float)((uint)((uint)(_87.x & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _99 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_87.x)) >> 10) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _105 = min(1.0f, ((((float)((uint)((uint)(((uint)((uint)(_87.x)) >> 20) & 1023)))) * 0.0019569471f) + -1.0f));  // [sem: _3__36__0__0__g_sceneNormal_load_derived]
  _107 = rsqrt(dot(float3(_93, _99, _105), float3(_93, _99, _105)));  // [sem: invLength]
  _108 = _107 * _93;
  _109 = _107 * _99;
  _110 = _107 * _105;
  _111 = (_84 == 1.0f);
  if ((_84 < 1e-07f) || _111) {
    _115 = select(_111, 0.0f, 1.0f);
    _3187 = _115;
    _3188 = _115;
    _3189 = _115;
    _3190 = _115;  // [sem: expr_sat]
  } else {
    _117 = max(1e-07f, _84);
    _120 = _nearFarProj.x / _117;
    _132 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _117, mad((_invViewProjRelative[3].y), _77, ((_invViewProjRelative[3].x) * _72)));
    _141 = (mad((_invViewProjRelative[0].z), _117, mad((_invViewProjRelative[0].y), _77, ((_invViewProjRelative[0].x) * _72))) + (_invViewProjRelative[0].w)) / _132;
    _150 = (mad((_invViewProjRelative[1].z), _117, mad((_invViewProjRelative[1].y), _77, ((_invViewProjRelative[1].x) * _72))) + (_invViewProjRelative[1].w)) / _132;
    _159 = (mad((_invViewProjRelative[2].z), _117, mad((_invViewProjRelative[2].y), _77, ((_invViewProjRelative[2].x) * _72))) + (_invViewProjRelative[2].w)) / _132;
    _161 = rsqrt(dot(float3(_141, _150, _159), float3(_141, _150, _159)));  // [sem: invLength]
    _27[0] = 0.0f;
    _28[0] = 0.0f;
    _29[0] = 0.0f;
    _27[1] = 0.0f;
    _28[1] = 0.0f;
    _29[1] = 0.0f;
    _168 = (int)(_85) + (int)(-52);
    _169 = ((uint)_168 < (uint)16);
    _181 = (_terrainShadowProjRelativeTexScale[0].w) + mad((_terrainShadowProjRelativeTexScale[0].z), _159, mad((_terrainShadowProjRelativeTexScale[0].y), _150, ((_terrainShadowProjRelativeTexScale[0].x) * _141)));
    _189 = mad((_terrainShadowProjRelativeTexScale[1].z), _159, mad((_terrainShadowProjRelativeTexScale[1].y), _150, ((_terrainShadowProjRelativeTexScale[1].x) * _141))) + (_terrainShadowProjRelativeTexScale[1].w);
    _197 = mad((_terrainShadowProjRelativeTexScale[2].z), _159, mad((_terrainShadowProjRelativeTexScale[2].y), _150, ((_terrainShadowProjRelativeTexScale[2].x) * _141))) + (_terrainShadowProjRelativeTexScale[2].w);
    if ((_197 <= 1.0f) && ((saturate(_181) == _181) && (_197 >= 0.0001f))) {
      if (saturate(_189) == _189) {
        _210 = (float)((uint)((uint)(_frameNumber.x)));
        _216 = (frac(((_210 * 92.0f) + _65) * 0.0078125f) * 128.0f) + -64.34062f;
        _222 = (frac(((_210 * 71.0f) + _66) * 0.0078125f) * 128.0f) + -72.46562f;
        _227 = frac(dot(float3((_216 * _216), (_222 * _222), (_222 * _216)), float3(20.390625f, 60.703125f, 2.4281209f)));
        _239 = (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524)))) + (uint)((uint)((_66 * _bufferSizeAndInvSize.x) + _65));
        _247 = (uint)((uint)((((int)((uint)((uint)((uint)(_239)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_239)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_239)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
        _255 = (uint)((uint)((((int)((uint)((uint)((uint)(_247)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_247)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_247)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_239));
        _263 = (uint)((uint)((((int)((uint)((uint)((uint)(_255)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_255)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_255)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_247));
        _271 = (uint)((uint)((((int)((uint)((uint)((uint)(_263)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_263)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_263)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_255));
        _279 = (uint)((uint)((((int)((uint)((uint)((uint)(_271)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_271)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_271)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_263));
        _287 = (uint)((uint)((((int)((uint)((uint)((uint)(_279)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_279)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_279)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_271));
        _295 = (uint)((uint)((((int)((uint)((uint)((uint)(_287)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_287)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_287)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_279));
        _303 = (uint)((uint)((((int)((uint)((uint)((uint)(_295)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_295)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_295)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_287));
        _311 = (uint)((uint)((((int)((uint)((uint)((uint)(_303)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_303)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_303)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_295));
        _319 = (uint)((uint)((((int)((uint)((uint)((uint)(_311)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_311)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_311)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_303));
        _327 = (uint)((uint)((((int)((uint)((uint)((uint)(_319)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_319)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_319)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_311));
        _335 = (uint)((uint)((((int)((uint)((uint)((uint)(_327)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_327)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_327)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_319));
        _343 = (uint)((uint)((((int)((uint)((uint)((uint)(_335)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_335)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_335)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_327));
        _351 = (uint)((uint)((((int)((uint)((uint)((uint)(_343)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_343)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_343)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_335));
        _359 = (uint)((uint)((((int)((uint)((uint)((uint)(_351)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_351)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_351)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_343));
        if ((_351 & 16777215) == 0) {
          _372 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_359)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_359)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_359)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_351))));
        } else {
          _372 = _351;
        }
        _377 = (uint)(((float)((uint)((uint)(((int)((uint)((uint)(_372)) * (uint)(48271))) & 16777215)))) * 3.8146377e-06f);
        _386 = frac((((float)((uint)((uint)(_377)))) * 0.015625f) + (((float)((uint)((uint)(((int)((uint)(_227 * 5.1540816e+07f))) & 65535)))) * 1.5258789e-05f));
        _388 = (_386 * 2.0f) + -1.0f;
        _395 = (((float)((uint)((uint)(reversebits(_377) ^ ((int)((uint)(_227 * 2.8747837e+08f))))))) * 4.656613e-10f) + -1.0f;
        _397 = rsqrt(dot(float2(_388, _395), float2(_388, _395)));  // [sem: invLength]
        _400 = _397 * ((_386 * 0.0009765625f) + -0.00048828125f);
        _402 = (_397 * 0.00048828125f) * _395;
        _406 = ((_jitterOffset[0].x) * _400) + _181;
        _409 = (_402 * (_jitterOffset[0].y)) + _189;
        _412 = frac((_406 * 1024.0f) + -0.5f);
        _415 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_406, _409));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
        _420 = _197 + -0.005f;
        _422 = select((_415.w > _420), 1.0f, 0.0f);
        _424 = select((_415.x > _420), 1.0f, 0.0f);
        _429 = ((select((_415.z > _420), 1.0f, 0.0f) - _422) * _412) + _422;
        _433 = ((_jitterOffset[1].x) * _400) + _181;
        _436 = ((_jitterOffset[1].y) * _402) + _189;
        _439 = frac((_433 * 1024.0f) + -0.5f);
        _440 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_433, _436));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
        _446 = select((_440.w > _420), 1.0f, 0.0f);
        _448 = select((_440.x > _420), 1.0f, 0.0f);
        _453 = ((select((_440.z > _420), 1.0f, 0.0f) - _446) * _439) + _446;
        _457 = ((_jitterOffset[2].x) * _400) + _181;
        _460 = ((_jitterOffset[2].y) * _402) + _189;
        _463 = frac((_457 * 1024.0f) + -0.5f);
        _464 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_457, _460));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
        _470 = select((_464.w > _420), 1.0f, 0.0f);
        _472 = select((_464.x > _420), 1.0f, 0.0f);
        _477 = ((select((_464.z > _420), 1.0f, 0.0f) - _470) * _463) + _470;
        _481 = ((_jitterOffset[3].x) * _400) + _181;
        _484 = ((_jitterOffset[3].y) * _402) + _189;
        _487 = frac((_481 * 1024.0f) + -0.5f);
        _488 = __3__36__0__0__g_terrainShadowDepth.GatherRed(__0__4__0__0__g_staticPointClamp, float2(_481, _484));  // [sem: _3__36__0__0__g_terrainShadowDepth_gather]
        _494 = select((_488.w > _420), 1.0f, 0.0f);
        _496 = select((_488.x > _420), 1.0f, 0.0f);
        _501 = ((select((_488.z > _420), 1.0f, 0.0f) - _494) * _487) + _494;
        _555 = ((((saturate((frac((_409 * 1024.0f) + -0.5f) * ((((select((_415.y > _420), 1.0f, 0.0f) - _424) * _412) + _424) - _429)) + _429) + saturate((frac((_436 * 1024.0f) + -0.5f) * ((((select((_440.y > _420), 1.0f, 0.0f) - _448) * _439) + _448) - _453)) + _453)) + saturate((frac((_460 * 1024.0f) + -0.5f) * ((((select((_464.y > _420), 1.0f, 0.0f) - _472) * _463) + _472) - _477)) + _477)) + saturate((((((select((_488.y > _420), 1.0f, 0.0f) - _496) * _487) + _496) - _501) * frac((_484 * 1024.0f) + -0.5f)) + _501)) * 0.25f);
      } else {
        _555 = 1.0f;
      }
    } else {
      _555 = 1.0f;
    }
    _558 = min(max((_120 * 0.002f), 0.005f), 0.5f);
    _559 = ((uint)_168 > (uint)15);
    if (_559) {
      _568 = ((_558 * _110) + _159);
      _569 = ((_558 * _109) + _150);
      _570 = ((_558 * _108) + _141);
    } else {
      _568 = _159;
      _569 = _150;
      _570 = _141;
    }
    _588 = (_dynamicShadowProjRelativeTexScale[1][0].w) + mad((_dynamicShadowProjRelativeTexScale[1][0].z), _568, mad((_dynamicShadowProjRelativeTexScale[1][0].y), _569, ((_dynamicShadowProjRelativeTexScale[1][0].x) * _570)));
    _596 = mad((_dynamicShadowProjRelativeTexScale[1][1].z), _568, mad((_dynamicShadowProjRelativeTexScale[1][1].y), _569, ((_dynamicShadowProjRelativeTexScale[1][1].x) * _570))) + (_dynamicShadowProjRelativeTexScale[1][1].w);
    _604 = mad((_dynamicShadowProjRelativeTexScale[1][2].z), _568, mad((_dynamicShadowProjRelativeTexScale[1][2].y), _569, ((_dynamicShadowProjRelativeTexScale[1][2].x) * _570))) + (_dynamicShadowProjRelativeTexScale[1][2].w);
    _607 = 4.0f / _dynmaicShadowSizeAndInvSize.y;
    _608 = 1.0f - _607;
    _614 = (sqrt(((_150 * _150) + (_141 * _141)) + (_159 * _159)) < 128.0f);
    if ((_596 >= _607) && ((_604 <= 1.0f) && ((_604 >= -1.0f) && (_614 && ((_596 <= _608) && ((_588 >= _607) && (_588 <= _608))))))) {
      _628 = max(0.0f, ((abs((_588 * 2.0f) + -1.0f) + -0.9f) * 10.0f));
      _634 = max(0.0f, ((abs((_596 * 2.0f) + -1.0f) + -0.9f) * 10.0f));
      _27[1] = _588;
      _28[1] = _596;
      _29[1] = _604;
      _644 = sqrt((_634 * _634) + (_628 * _628));
      _645 = 1;
      _646 = select((_terrainNormalParams.y > 0.0f), 2e-05f, 8e-05f);
    } else {
      _644 = 0.0f;
      _645 = 0;
      _646 = 0.0f;
    }
    _658 = (_dynamicShadowProjRelativeTexScale[0][0].w) + mad((_dynamicShadowProjRelativeTexScale[0][0].z), _568, mad((_dynamicShadowProjRelativeTexScale[0][0].y), _569, ((_dynamicShadowProjRelativeTexScale[0][0].x) * _570)));
    _666 = mad((_dynamicShadowProjRelativeTexScale[0][1].z), _568, mad((_dynamicShadowProjRelativeTexScale[0][1].y), _569, ((_dynamicShadowProjRelativeTexScale[0][1].x) * _570))) + (_dynamicShadowProjRelativeTexScale[0][1].w);
    _674 = mad((_dynamicShadowProjRelativeTexScale[0][2].z), _568, mad((_dynamicShadowProjRelativeTexScale[0][2].y), _569, ((_dynamicShadowProjRelativeTexScale[0][2].x) * _570))) + (_dynamicShadowProjRelativeTexScale[0][2].w);
    if ((_674 <= 1.0f) && ((_666 >= _607) && ((_614 && (((_658 >= _607) && (_658 <= _608)) && (_666 <= _608))) && (_674 >= -1.0f)))) {
      _693 = max(0.0f, ((abs((_658 * 2.0f) + -1.0f) + -0.9f) * 10.0f));
      _699 = max(0.0f, ((abs((_666 * 2.0f) + -1.0f) + -0.9f) * 10.0f));
      _27[0] = _658;
      _28[0] = _666;
      _29[0] = _674;
      _820 = false;
      _821 = 1;
      _822 = sqrt((_699 * _699) + (_693 * _693));
      _823 = 0;
      _824 = 1;
      _825 = select((_terrainNormalParams.y > 0.0f), 5e-06f, 2e-05f);
    } else {
      [branch]
      if (_645 == 0) {
        _713 = _viewPos.x + _570;
        _715 = _viewPos.y + _569;
        _717 = _viewPos.z + _568;
        _720 = _713 - (_staticShadowPosition[1].x);
        _722 = _715 - (_staticShadowPosition[1].y);
        _724 = _717 - (_staticShadowPosition[1].z);
        _736 = (_shadowProjRelativeTexScale[1][0].w) + mad((_shadowProjRelativeTexScale[1][0].z), _724, mad((_shadowProjRelativeTexScale[1][0].y), _722, ((_shadowProjRelativeTexScale[1][0].x) * _720)));
        _744 = mad((_shadowProjRelativeTexScale[1][1].z), _724, mad((_shadowProjRelativeTexScale[1][1].y), _722, ((_shadowProjRelativeTexScale[1][1].x) * _720))) + (_shadowProjRelativeTexScale[1][1].w);
        _752 = mad((_shadowProjRelativeTexScale[1][2].z), _724, mad((_shadowProjRelativeTexScale[1][2].y), _722, ((_shadowProjRelativeTexScale[1][2].x) * _720))) + (_shadowProjRelativeTexScale[1][2].w);
        _755 = 2.0f / _shadowSizeAndInvSize.y;
        _756 = 1.0f - _755;
        if ((_744 >= _755) && ((_752 <= 1.0f) && ((_752 >= 0.0001f) && ((_744 <= _756) && ((_736 >= _755) && (_736 <= _756)))))) {
          _27[1] = _736;
          _28[1] = _744;
          _29[1] = _752;
          _770 = 1;
          _771 = 0.0002f;
        } else {
          _770 = 0;
          _771 = _646;
        }
        _774 = _713 - (_staticShadowPosition[0].x);
        _776 = _715 - (_staticShadowPosition[0].y);
        _778 = _717 - (_staticShadowPosition[0].z);
        _790 = (_shadowProjRelativeTexScale[0][0].w) + mad((_shadowProjRelativeTexScale[0][0].z), _778, mad((_shadowProjRelativeTexScale[0][0].y), _776, ((_shadowProjRelativeTexScale[0][0].x) * _774)));
        _798 = mad((_shadowProjRelativeTexScale[0][1].z), _778, mad((_shadowProjRelativeTexScale[0][1].y), _776, ((_shadowProjRelativeTexScale[0][1].x) * _774))) + (_shadowProjRelativeTexScale[0][1].w);
        _806 = mad((_shadowProjRelativeTexScale[0][2].z), _778, mad((_shadowProjRelativeTexScale[0][2].y), _776, ((_shadowProjRelativeTexScale[0][2].x) * _774))) + (_shadowProjRelativeTexScale[0][2].w);
        if ((_806 <= 1.0f) && ((_798 >= _755) && ((((_790 >= _755) && (_790 <= _756)) && (_798 <= _756)) && (_806 >= 0.0001f)))) {
          _27[0] = _790;
          _28[0] = _798;
          _29[0] = _806;
          _820 = true;
          _821 = 0;
          _822 = _644;
          _823 = 0;
          _824 = 1;
          _825 = 0.0002f;
        } else {
          _820 = true;
          _821 = 0;
          _822 = _644;
          _823 = _770;
          _824 = _770;
          _825 = _771;
        }
      } else {
        _820 = false;
        _821 = 1;
        _822 = _644;
        _823 = 1;
        _824 = 1;
        _825 = _646;
      }
    }
    _839 = (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524)))) + (uint)((uint)((_66 * _bufferSizeAndInvSize.x) + _65));
    _847 = (uint)((uint)((((int)((uint)((uint)((uint)(_839)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_839)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_839)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
    _855 = (uint)((uint)((((int)((uint)((uint)((uint)(_847)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_847)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_847)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_839));
    _863 = (uint)((uint)((((int)((uint)((uint)((uint)(_855)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_855)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_855)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_847));
    _871 = (uint)((uint)((((int)((uint)((uint)((uint)(_863)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_863)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_863)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_855));
    _879 = (uint)((uint)((((int)((uint)((uint)((uint)(_871)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_871)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_871)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_863));
    _887 = (uint)((uint)((((int)((uint)((uint)((uint)(_879)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_879)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_879)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_871));
    _895 = (uint)((uint)((((int)((uint)((uint)((uint)(_887)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_887)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_887)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_879));
    _903 = (uint)((uint)((((int)((uint)((uint)((uint)(_895)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_895)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_895)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_887));
    _911 = (uint)((uint)((((int)((uint)((uint)((uint)(_903)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_903)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_903)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_895));
    _919 = (uint)((uint)((((int)((uint)((uint)((uint)(_911)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_911)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_911)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_903));
    _927 = (uint)((uint)((((int)((uint)((uint)((uint)(_919)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_919)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_919)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_911));
    _935 = (uint)((uint)((((int)((uint)((uint)((uint)(_927)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_927)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_927)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_919));
    _943 = (uint)((uint)((((int)((uint)((uint)((uint)(_935)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_935)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_935)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_927));
    _951 = (uint)((uint)((((int)((uint)((uint)((uint)(_943)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_943)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_943)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_935));
    _959 = (uint)((uint)((((int)((uint)((uint)((uint)(_951)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_951)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_951)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_943));
    _961 = ((_951 & 16777215) == 0);
    _962 = (int)min((uint)(_823), (uint)(1));
    [branch]
    if (_820) {
      _967 = _27[_962];
      _968 = _28[_962];
      _969 = _29[_962];
      if (_961) {
        _980 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_959)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_959)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_959)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_951))));
      } else {
        _980 = _951;
      }
      _983 = _shadowSizeAndInvSize.z * 2.0f;
      _985 = _shadowSizeAndInvSize.w * 2.0f;
      _986 = _shadowSizeAndInvSize.z * 2.3841858e-07f;
      _987 = _shadowSizeAndInvSize.w * 2.3841858e-07f;
      _993 = ((_986 * ((float)((uint)((uint)(((int)((uint)((uint)(_980)) * (uint)(48271))) & 16777215))))) - _983) + _967;
      _999 = ((_987 * ((float)((uint)((uint)(((int)((uint)((uint)(_980)) * (uint)(-1964877855))) & 16777215))))) - _985) + _968;
      _1000 = (float)((uint)((uint)(_823)));
      _1001 = _969 - _825;
      _1007 = ((_986 * ((float)((uint)((uint)(((int)((uint)((uint)(_980)) * (uint)(-856141137))) & 16777215))))) - _983) + _967;
      _1013 = ((_987 * ((float)((uint)((uint)(((int)((uint)((uint)(_980)) * (uint)(-613502015))) & 16777215))))) - _985) + _968;
      _1019 = ((_986 * ((float)((uint)((uint)(((int)((uint)((uint)(_980)) * (uint)(-556260145))) & 16777215))))) - _983) + _967;
      _1025 = ((_987 * ((float)((uint)((uint)(((int)((uint)((uint)(_980)) * (uint)(902075297))) & 16777215))))) - _985) + _968;
      _1031 = ((_986 * ((float)((uint)((uint)(((int)((uint)((uint)(_980)) * (uint)(1698214639))) & 16777215))))) - _983) + _967;
      _1037 = ((_987 * ((float)((uint)((uint)(((int)((uint)((uint)(_980)) * (uint)(773027713))) & 16777215))))) - _985) + _968;
      _1059 = (((saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_993, _999, _1000), _1001)).x)) + saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1007, _1013, _1000), _1001)).x))) + saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1019, _1025, _1000), _1001)).x))) + saturate(1.0f - ((__3__36__0__0__g_shadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1031, _1037, _1000), _1001)).x))) * 0.25f;
      _1080 = (((max(0.0f, (_969 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_993, _999, _1000), 0.0f))).x))) + max(0.0f, (_969 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1007, _1013, _1000), 0.0f))).x)))) + max(0.0f, (_969 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1019, _1025, _1000), 0.0f))).x)))) + max(0.0f, (_969 - (((float4)(__3__36__0__0__g_shadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1031, _1037, _1000), 0.0f))).x)))) * 0.25f;
      _1609 = 1.0h;
      _1610 = 1.0h;
      _1611 = 1.0h;
      _1612 = saturate(_1080 * _1080);  // [sem: expr_sat]
      _1613 = saturate(_1059 * _1059);  // [sem: expr_sat]
    } else {
      _1086 = _27[_962];
      _1087 = _28[_962];
      _1088 = _29[_962];
      _1090 = select((_823 == 0), 2.5f, 1.0f);
      if (_961) {
        _1101 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_959)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_959)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_959)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_951))));
      } else {
        _1101 = _951;
      }
      _1104 = select(_169, (_1090 * 0.75f), _1090) * 0.66f;
      _1106 = _1104 * _dynmaicShadowSizeAndInvSize.z;
      _1108 = _1104 * _dynmaicShadowSizeAndInvSize.w;
      _1109 = _1106 * 1.1920929e-07f;
      _1110 = _1108 * 1.1920929e-07f;
      _1116 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(48271))) & 16777215)))) * _1109) - _1106) + _1086;
      _1122 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(-1964877855))) & 16777215)))) * _1110) - _1108) + _1087;
      _1123 = (float)((uint)((uint)(_823)));
      _1124 = _1088 - _825;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1127 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1116, _1122, _1123), 0.0f);
      _1136 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(-856141137))) & 16777215)))) * _1109) - _1106) + _1086;
      _1142 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(-613502015))) & 16777215)))) * _1110) - _1108) + _1087;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1143 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1136, _1142, _1123), 0.0f);
      _1152 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(-556260145))) & 16777215)))) * _1109) - _1106) + _1086;
      _1158 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(902075297))) & 16777215)))) * _1110) - _1108) + _1087;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1159 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1152, _1158, _1123), 0.0f);
      _1168 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(1698214639))) & 16777215)))) * _1109) - _1106) + _1086;
      _1174 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(773027713))) & 16777215)))) * _1110) - _1108) + _1087;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1175 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1168, _1174, _1123), 0.0f);
      _1184 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(144866575))) & 16777215)))) * _1109) - _1106) + _1086;
      _1190 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(647683937))) & 16777215)))) * _1110) - _1108) + _1087;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1191 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1184, _1190, _1123), 0.0f);
      _1200 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(1284375343))) & 16777215)))) * _1109) - _1106) + _1086;
      _1206 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(229264193))) & 16777215)))) * _1110) - _1108) + _1087;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1207 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1200, _1206, _1123), 0.0f);
      _1216 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(-1318861489))) & 16777215)))) * _1109) - _1106) + _1086;
      _1222 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(1537293089))) & 16777215)))) * _1110) - _1108) + _1087;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1223 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1216, _1222, _1123), 0.0f);
      _1232 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(-1770241169))) & 16777215)))) * _1109) - _1106) + _1086;
      _1238 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(1357852417))) & 16777215)))) * _1110) - _1108) + _1087;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1239 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1232, _1238, _1123), 0.0f);
      _1248 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(-601883249))) & 16777215)))) * _1109) - _1106) + _1086;
      _1254 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(1947444961))) & 16777215)))) * _1110) - _1108) + _1087;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1255 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1248, _1254, _1123), 0.0f);
      _1264 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(1166504879))) & 16777215)))) * _1109) - _1106) + _1086;
      _1270 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(1335763649))) & 16777215)))) * _1110) - _1108) + _1087;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1271 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1264, _1270, _1123), 0.0f);
      _1280 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(-1696913969))) & 16777215)))) * _1109) - _1106) + _1086;
      _1286 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(1882071713))) & 16777215)))) * _1110) - _1108) + _1087;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1287 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1280, _1286, _1123), 0.0f);
      _1296 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(-1959554065))) & 16777215)))) * _1109) - _1106) + _1086;
      _1302 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(-1569511807))) & 16777215)))) * _1110) - _1108) + _1087;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1303 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1296, _1302, _1123), 0.0f);
      _1312 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(1318665743))) & 16777215)))) * _1109) - _1106) + _1086;
      _1318 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(1898753633))) & 16777215)))) * _1110) - _1108) + _1087;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1319 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1312, _1318, _1123), 0.0f);
      _1328 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(134521903))) & 16777215)))) * _1109) - _1106) + _1086;
      _1334 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(-483771839))) & 16777215)))) * _1110) - _1108) + _1087;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1335 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1328, _1334, _1123), 0.0f);
      _1344 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(-413252017))) & 16777215)))) * _1109) - _1106) + _1086;
      _1350 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(2034977313))) & 16777215)))) * _1110) - _1108) + _1087;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1351 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1344, _1350, _1123), 0.0f);
      _1360 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(192849007))) & 16777215)))) * _1109) - _1106) + _1086;
      _1366 = ((((float)((uint)((uint)(((int)((uint)((uint)(_1101)) * (uint)(1820286465))) & 16777215)))) * _1110) - _1108) + _1087;
      // [sem: _3__36__0__0__g_dynamicShadowColorArray_sampleLod]
      half4 _1367 = __3__36__0__0__g_dynamicShadowColorArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1360, _1366, _1123), 0.0f);
      _1452 = (((((((((((((((saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1116, _1122, _1123), _1124)).x)) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1136, _1142, _1123), _1124)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1152, _1158, _1123), _1124)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1168, _1174, _1123), _1124)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1184, _1190, _1123), _1124)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1200, _1206, _1123), _1124)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1216, _1222, _1123), _1124)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1232, _1238, _1123), _1124)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1248, _1254, _1123), _1124)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1264, _1270, _1123), _1124)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1280, _1286, _1123), _1124)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1296, _1302, _1123), _1124)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1312, _1318, _1123), _1124)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1328, _1334, _1123), _1124)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1344, _1350, _1123), _1124)).x))) + saturate(1.0f - ((__3__36__0__0__g_dynamicShadowDepthArray.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float3(_1360, _1366, _1123), _1124)).x))) * 0.0625f;
      _1532 = (((((((((((((((max(0.0f, (_1088 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1116, _1122, _1123), 0.0f))).x))) + max(0.0f, (_1088 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1136, _1142, _1123), 0.0f))).x)))) + max(0.0f, (_1088 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1152, _1158, _1123), 0.0f))).x)))) + max(0.0f, (_1088 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1168, _1174, _1123), 0.0f))).x)))) + max(0.0f, (_1088 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1184, _1190, _1123), 0.0f))).x)))) + max(0.0f, (_1088 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1200, _1206, _1123), 0.0f))).x)))) + max(0.0f, (_1088 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1216, _1222, _1123), 0.0f))).x)))) + max(0.0f, (_1088 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1232, _1238, _1123), 0.0f))).x)))) + max(0.0f, (_1088 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1248, _1254, _1123), 0.0f))).x)))) + max(0.0f, (_1088 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1264, _1270, _1123), 0.0f))).x)))) + max(0.0f, (_1088 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1280, _1286, _1123), 0.0f))).x)))) + max(0.0f, (_1088 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1296, _1302, _1123), 0.0f))).x)))) + max(0.0f, (_1088 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1312, _1318, _1123), 0.0f))).x)))) + max(0.0f, (_1088 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1328, _1334, _1123), 0.0f))).x)))) + max(0.0f, (_1088 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1344, _1350, _1123), 0.0f))).x)))) + max(0.0f, (_1088 - (((float4)(__3__36__0__0__g_dynamicShadowDepthArray.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float3(_1360, _1366, _1123), 0.0f))).x)))) * 0.0625f;
      _1551 = half(float(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)((half)(_1143.x) + (half)(_1127.x))) + (half)(_1159.x))) + (half)(_1175.x))) + (half)(_1191.x))) + (half)(_1207.x))) + (half)(_1223.x))) + (half)(_1239.x))) + (half)(_1255.x))) + (half)(_1271.x))) + (half)(_1287.x))) + (half)(_1303.x))) + (half)(_1319.x))) + (half)(_1335.x))) + (half)(_1351.x))) + ((half)((half)(_1367.x) * 2.0h))) * 0.05882353f);
      _1570 = half(float(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)((half)(_1143.y) + (half)(_1127.y))) + (half)(_1159.y))) + (half)(_1175.y))) + (half)(_1191.y))) + (half)(_1207.y))) + (half)(_1223.y))) + (half)(_1239.y))) + (half)(_1255.y))) + (half)(_1271.y))) + (half)(_1287.y))) + (half)(_1303.y))) + (half)(_1319.y))) + (half)(_1335.y))) + (half)(_1351.y))) + ((half)((half)(_1367.y) * 2.0h))) * 0.05882353f);
      _1589 = half(float(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)(((half)((half)(_1143.z) + (half)(_1127.z))) + (half)(_1159.z))) + (half)(_1175.z))) + (half)(_1191.z))) + (half)(_1207.z))) + (half)(_1223.z))) + (half)(_1239.z))) + (half)(_1255.z))) + (half)(_1271.z))) + (half)(_1287.z))) + (half)(_1303.z))) + (half)(_1319.z))) + (half)(_1335.z))) + (half)(_1351.z))) + ((half)((half)(_1367.z) * 2.0h))) * 0.05882353f);
      if (_823 == 1) {
        _1592 = float(_1551);
        _1593 = float(_1570);
        _1594 = float(_1589);
        _1595 = -0.0f - _822;
        _1609 = (half)(half((_1594 + _822) + (_1594 * _1595)));
        _1610 = (half)(half((_1593 + _822) + (_1593 * _1595)));
        _1611 = (half)(half((_1592 + _822) + (_1592 * _1595)));
        _1612 = _1532;  // [sem: expr_sat]
        _1613 = _1452;  // [sem: expr_sat]
      } else {
        _1609 = _1589;
        _1610 = _1570;
        _1611 = _1551;
        _1612 = _1532;  // [sem: expr_sat]
        _1613 = _1452;  // [sem: expr_sat]
      }
    }
    _1614 = (_824 != 0);
    _1616 = min(_555, select(_1614, _1613, 1.0f));
    _1620 = select((_821 != 0), select(_1614, (_1612 * 400.0f), 4e+06f), 1.0f);
    _1621 = _1620 + 0.98f;
    if (_169) {
      [branch]
      if (_nearFieldShadowFlag.x > 0.0f) {
        _1629 = (_shadowAOParams.w > 0.0f);
        if (_1629) {
          _1689 = (mad((_nearFieldShadowViewProjCompacted[2].z), _159, mad((_nearFieldShadowViewProjCompacted[2].y), _150, ((_nearFieldShadowViewProjCompacted[2].x) * _141))) + (_nearFieldShadowViewProjCompacted[2].w));
          _1690 = (mad((_nearFieldShadowViewProjCompacted[1].z), _159, mad((_nearFieldShadowViewProjCompacted[1].y), _150, ((_nearFieldShadowViewProjCompacted[1].x) * _141))) + (_nearFieldShadowViewProjCompacted[1].w));
          _1691 = ((_nearFieldShadowViewProjCompacted[0].w) + mad((_nearFieldShadowViewProjCompacted[0].z), _159, mad((_nearFieldShadowViewProjCompacted[0].y), _150, ((_nearFieldShadowViewProjCompacted[0].x) * _141))));
        } else {
          _1689 = (mad((_nearFieldShadowViewProj[2].z), _159, mad((_nearFieldShadowViewProj[2].y), _150, ((_nearFieldShadowViewProj[2].x) * _141))) + (_nearFieldShadowViewProj[2].w));
          _1690 = (mad((_nearFieldShadowViewProj[1].z), _159, mad((_nearFieldShadowViewProj[1].y), _150, ((_nearFieldShadowViewProj[1].x) * _141))) + (_nearFieldShadowViewProj[1].w));
          _1691 = ((_nearFieldShadowViewProj[0].w) + mad((_nearFieldShadowViewProj[0].z), _159, mad((_nearFieldShadowViewProj[0].y), _150, ((_nearFieldShadowViewProj[0].x) * _141))));
        }
        if (!((_1689 > 1.0f) || ((_1689 < 0.0f) || ((_1690 > 1.0f) || ((_1690 < -1.0f) || ((_1691 < -1.0f) || (_1691 > 1.0f))))))) {
          _1704 = (float)((uint)((uint)(_frameNumber.x)));
          _1710 = (frac(((_1704 * 92.0f) + _65) * 0.0078125f) * 128.0f) + -64.34062f;
          _1716 = (frac(((_1704 * 71.0f) + _66) * 0.0078125f) * 128.0f) + -72.46562f;
          _1721 = frac(dot(float3((_1710 * _1710), (_1716 * _1716), (_1716 * _1710)), float3(20.390625f, 60.703125f, 2.4281209f)));
          if (_961) {
            _1732 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_959)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_959)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_959)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_951))));
          } else {
            _1732 = _951;
          }
          _1737 = (uint)(((float)((uint)((uint)(((int)((uint)((uint)(_1732)) * (uint)(48271))) & 16777215)))) * 3.8146377e-06f);
          _1748 = (frac((((float)((uint)((uint)(_1737)))) * 0.015625f) + (((float)((uint)((uint)(((int)((uint)(_1721 * 5.1540816e+07f))) & 65535)))) * 1.5258789e-05f)) * 2.0f) + -1.0f;
          _1755 = (((float)((uint)((uint)(reversebits(_1737) ^ ((int)((uint)(_1721 * 2.8747837e+08f))))))) * 4.656613e-10f) + -1.0f;
          _1757 = rsqrt(dot(float2(_1748, _1755), float2(_1748, _1755)));  // [sem: invLength]
          _1758 = _1757 * _1748;
          _1759 = _1755 * _1757;
          _1760 = -0.0f - _1759;
          if (_961) {
            _1771 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_959)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_959)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_959)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_951))));
          } else {
            _1771 = _951;
          }
          _1776 = (uint)(((float)((uint)((uint)(((int)((uint)((uint)(_1771)) * (uint)(48271))) & 16777215)))) * 9.5307826e-07f);
          if (_1629) {
            _1785 = max(3.0517578e-05f, (min(0.0003f, (_nearFieldShadowBoundsMax.w * 0.00048828125f)) / _nearFieldShadowBoundsMax.w));
          } else {
            _1785 = 0.00048828125f;
          }
          _1787 = 0;
          _1788 = 0.0f;
          while(true) {
            _1792 = ((int)((uint)((uint)((uint)((uint)(_1787)) << 2) + (uint)((uint)(_1776))) << 1)) & 30;
            _1796 = (_global_0[((int)min((uint)(_1792), (uint)(31)))]) * _1785;
            _1801 = (_global_0[((int)min((uint)(((int)(_1792) | (int)(1))), (uint)(31)))]) * _1785;
            _1818 = (1.0f - ((__3__36__0__0__g_nearFieldShadowDepth.SampleCmpLevelZero(__3__40__0__0__g_samplerShadow, float2((((_1691 * 0.5f) + 0.5f) + mad(_1759, _1801, (_1796 * _1758))), ((0.5f - (_1690 * 0.5f)) + mad(_1758, _1801, (_1796 * _1760)))), (_1689 + -4e-05f))).x)) + _1788;
            _1819 = (int)(_1787) + (int)(1);
            if (!(_1819 == 4)) {
              _1787 = _1819;
              _1788 = _1818;
              continue;
            }
            _1823 = _141 - (_108 * 0.012f);
            _1825 = _150 - (_109 * 0.012f);
            _1827 = _159 - (_110 * 0.012f);
            if (_shadowAOParams.w > 0.0f) {
              _1890 = (mad((_nearFieldShadowViewProjCompacted[2].z), _1827, mad((_nearFieldShadowViewProjCompacted[2].y), _1825, ((_nearFieldShadowViewProjCompacted[2].x) * _1823))) + (_nearFieldShadowViewProjCompacted[2].w));
              _1891 = (mad((_nearFieldShadowViewProjCompacted[1].z), _1827, mad((_nearFieldShadowViewProjCompacted[1].y), _1825, ((_nearFieldShadowViewProjCompacted[1].x) * _1823))) + (_nearFieldShadowViewProjCompacted[1].w));
              _1892 = ((_nearFieldShadowViewProjCompacted[0].w) + mad((_nearFieldShadowViewProjCompacted[0].z), _1827, mad((_nearFieldShadowViewProjCompacted[0].y), _1825, ((_nearFieldShadowViewProjCompacted[0].x) * _1823))));
            } else {
              _1890 = (mad((_nearFieldShadowViewProj[2].z), _1827, mad((_nearFieldShadowViewProj[2].y), _1825, ((_nearFieldShadowViewProj[2].x) * _1823))) + (_nearFieldShadowViewProj[2].w));
              _1891 = (mad((_nearFieldShadowViewProj[1].z), _1827, mad((_nearFieldShadowViewProj[1].y), _1825, ((_nearFieldShadowViewProj[1].x) * _1823))) + (_nearFieldShadowViewProj[1].w));
              _1892 = ((_nearFieldShadowViewProj[0].w) + mad((_nearFieldShadowViewProj[0].z), _1827, mad((_nearFieldShadowViewProj[0].y), _1825, ((_nearFieldShadowViewProj[0].x) * _1823))));
            }
            _1894 = 0;
            _1895 = 0.0f;
            while(true) {
              _1899 = ((int)((uint)((uint)((uint)((uint)(_1894)) << 2) + (uint)((uint)(_1776))) << 1)) & 30;
              _1903 = (_global_0[((int)min((uint)(_1899), (uint)(31)))]) * _1785;
              _1908 = (_global_0[((int)min((uint)(((int)(_1899) | (int)(1))), (uint)(31)))]) * _1785;
              _1925 = max(0.0f, (_1890 - ((__3__36__0__0__g_nearFieldShadowDepth.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2((((_1892 * 0.5f) + 0.5f) + mad(_1759, _1908, (_1903 * _1758))), ((0.5f - (_1891 * 0.5f)) + mad(_1758, _1908, (_1903 * _1760)))), 0.0f)).x))) + _1895;
              _1926 = (int)(_1894) + (int)(1);
              if (!(_1926 == 4)) {
                _1894 = _1926;
                _1895 = _1925;
                continue;
              }
              _1935 = max(_1620, max(0.002f, (_1925 * 25.0f)));
              _1936 = min(_1616, (_1818 * 0.25f));
              break;
            }
            break;
          }
        } else {
          _1935 = _1621;
          _1936 = _1616;
        }
      } else {
        _1935 = _1621;
        _1936 = _1616;
      }
    } else {
      _1935 = _1620;
      _1936 = _1616;
    }
    _1941 = (_1936 - (_shadowAOParams.x * _1936)) + _shadowAOParams.x;
    [branch]
    if (_1941 > 0.0f) {
      _1944 = _81 & 126;
      _1945 = (_1944 == 64);
      _1947 = _1945 || (_85 == 66);
      _1948 = select(_1947, 2.0f, 4.0f);
      if ((_sunDirection.y > 0.0f) || ((!(_sunDirection.y > 0.0f)) && (_sunDirection.y > _moonDirection.y))) {
        _1965 = _sunDirection.z;
        _1966 = _sunDirection.y;
        _1967 = _sunDirection.x;
      } else {
        _1965 = _moonDirection.z;
        _1966 = _moonDirection.y;
        _1967 = _moonDirection.x;
      }
      // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
      // Description: Seeds the contact-shadow ray direction carriers with the dominant light direction
      //              the native path just selected. Runs on the main path of the native
      //              shadow-evaluation gate, so the carriers hold the native values on every path that
      //              can reach the micro detail helper call (which is gated on the same condition).
      //              This block only copies values and changes no native result.
      _rndxMicroDirX = _1967;
      _rndxMicroDirY = _1966;
      _rndxMicroDirZ = _1965;
      // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      _1968 = _57 & 3;
      _1969 = _64 & 3;
      _1981 = (uint)((uint)((uint)(_frameNumber.x)) * (uint)(1551)) + (uint)((uint)((int)(((int)((int)((int)(_1969) << 1) | (int)(_1969)) << 1) & 10) | (int)(((int)((int)(_1968) << 1) | (int)(_1968)) & 5)));
      _1986 = (int)(((int)((uint)((uint)(_1981)) << 2)) & -858993460) | (int)(((uint)((uint)(_1981)) >> 2) & 858993459);
      _1991 = (int)(((int)((uint)((uint)(_1986)) << 1)) & 10) | (int)(((uint)((uint)(_1986)) >> 1) & 21);
      _1992 = (float)((uint)((uint)(_frameNumber.x)));
      _1998 = (frac(((_1992 * 92.0f) + _65) * 0.0078125f) * 128.0f) + -64.34062f;
      _2004 = (frac(((_1992 * 71.0f) + _66) * 0.0078125f) * 128.0f) + -72.46562f;
      _2009 = frac(dot(float3((_1998 * _1998), (_2004 * _2004), (_2004 * _1998)), float3(20.390625f, 60.703125f, 2.4281209f)));
      _2019 = frac((((float)((uint)((uint)(_1991)))) * 0.03125f) + (((float)((uint)((uint)(((int)((uint)(_2009 * 5.1540816e+07f))) & 65535)))) * 1.5258789e-05f)) * 6.2831855f;
      _2029 = (((1.0f - _shadowAOParams.z) * 2.3283064e-10f) * ((float)((uint)((uint)(reversebits(_1991) ^ ((int)((uint)(_2009 * 2.8747837e+08f)))))))) + _shadowAOParams.z;
      _2032 = sqrt(1.0f - (_2029 * _2029));
      _2034 = cos(_2019) * _2032;
      _2036 = sin(_2019) * _2032;
      _2038 = select((_1965 >= 0.0f), 1.0f, -1.0f);
      _2041 = -0.0f - (1.0f / (_2038 + _1965));
      _2042 = _1966 * _2041;
      _2043 = _2042 * _1967;
      _2044 = _2038 * _1967;
      _2050 = mad(_2029, _1967, mad(_2036, _2043, ((((_2044 * _1967) * _2041) + 1.0f) * _2034)));
      _2056 = mad(_2029, _1966, mad(_2036, ((_2042 * _1966) + _2038), ((_2034 * _2038) * _2043)));
      _2061 = mad(_2029, _1965, mad(_2036, (-0.0f - _1966), (-0.0f - (_2044 * _2034))));
      // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
      // Description: The vanilla contact-shadow ray direction is the sun/moon direction rotated onto a
      //              randomly sampled cone that changes every frame, which the shadow denoiser is expected
      //              to resolve. Contact Micro Shadows adds extra sub-pixel occlusion on top of this march,
      //              and the per-frame cone wobble makes that added detail crawl and shimmer between frames.
      //              While any Contact Micro Shadows quality level is active this substitutes the unrotated
      //              light direction so the added detail is temporally stable; with the feature Off the
      //              vanilla jittered direction is left untouched.
      if (CONTACT_SHADOW_STABLE_DIRECTION == 1.f) {
        _2050 = _1967;
        _2056 = _1966;
        _2061 = _1965;
      }
      // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      _2062 = select(_1945, 10, 8);
      // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
      // Description: The vanilla screen-space contact-shadow ray takes only 8 or 10 march steps depending
      //              on the material class, which undersamples thin and small occluders and leaves gaps in
      //              the contact darkening. While a Contact Micro Shadows quality level is active this
      //              raises the step count toward 16 in proportion to the selected quality; with the
      //              feature Off the vanilla step count is used unchanged.
      if (CONTACT_SHADOW_DETAIL_PATH == 1.f) {
        _2062 = (int)(lerp(float(_2062), 16.0f, CONTACT_SHADOW_MARCH_BLEND) + 0.5f);
      }
      // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      if (!_169) {
        _2068 = min(0.5f, ((_120 * 0.0025f) + 0.25f));
      } else {
        _2068 = 1.0f;
      }
      // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
      // Description: Sets how far along the light direction the contact shadow is allowed to march.
      //              Vanilla caps this path at a 0.01 world-space reach, which is too short to pick up
      //              contact occlusion from anything larger than immediate sub-pixel detail. The lerp
      //              extends the reach toward 0.05 in proportion to the Contact Micro Shadows quality; at
      //              the Off value the lerp returns the vanilla 0.01 exactly, leaving the march unchanged.
      _2075 = ((abs(_1966) * (select(_1947, 12.0f, 2.0f) - _1948)) + _1948) * select(_169, lerp(0.009999999776482582f, 0.05000000074505806f, CONTACT_SHADOW_REACH_BLEND), 0.10000000149011612f);
      // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      if (!_169) {
        _2083 = max((_120 * select(((uint)((int)(_85) + (int)(-11)) < (uint)9), 0.008f, 0.03f)), _2075);
      } else {
        _2083 = _2075;
      }
      // [sem: expr_sat]
      _2096 = saturate(((_120 * 0.01f) * (1.0f - saturate(dot(float3(_108, _109, _110), float3((-0.0f - (_141 * _161)), (-0.0f - (_150 * _161)), (-0.0f - (_159 * _161))))))) + 0.01f);
      _2099 = (_terrainNormalParams.z > 0.0f);
      if (_2099) {
        _2103 = (float)((uint)((uint)(((int)((uint)((uint)(_frameNumber.x)) * (uint)(73))) & 255)));
        _2264 = frac(frac(dot(float2(((_2103 * 32.665f) + _65), ((_2103 * 11.815f) + _66)), float2(0.06711056f, 0.00583715f))) * 52.982918f);
      } else {
        _2125 = (uint)((uint)((_bufferSizeAndInvSize.x * _66) + _65)) + (uint)((uint)((((int)((uint)((uint)((uint)(_frameNumber.x)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_frameNumber.x)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)(_frameNumber.x)) >> 5) + (int)(-939442524))));
        _2133 = (uint)((uint)((((int)((uint)((uint)((uint)(_2125)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2125)) + (uint)(-1640531527)))) ^ ((int)((uint)((uint)((uint)((uint)(_2125)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_frameNumber.x));
        _2141 = (uint)((uint)((((int)((uint)((uint)((uint)(_2133)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2133)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)(_2133)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2125));
        _2149 = (uint)((uint)((((int)((uint)((uint)((uint)(_2141)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2141)) + (uint)(1013904242)))) ^ ((int)((uint)((uint)((uint)((uint)(_2141)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2133));
        _2157 = (uint)((uint)((((int)((uint)((uint)((uint)(_2149)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2149)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)(_2149)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2141));
        _2165 = (uint)((uint)((((int)((uint)((uint)((uint)(_2157)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2157)) + (uint)(-626627285)))) ^ ((int)((uint)((uint)((uint)((uint)(_2157)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2149));
        _2173 = (uint)((uint)((((int)((uint)((uint)((uint)(_2165)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2165)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)(_2165)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2157));
        _2181 = (uint)((uint)((((int)((uint)((uint)((uint)(_2173)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2173)) + (uint)(2027808484)))) ^ ((int)((uint)((uint)((uint)((uint)(_2173)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2165));
        _2189 = (uint)((uint)((((int)((uint)((uint)((uint)(_2181)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2181)) + (uint)(387276957)))) ^ ((int)((uint)((uint)(_2181)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2173));
        _2197 = (uint)((uint)((((int)((uint)((uint)((uint)(_2189)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2189)) + (uint)(387276957)))) ^ ((int)((uint)((uint)((uint)((uint)(_2189)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2181));
        _2205 = (uint)((uint)((((int)((uint)((uint)((uint)(_2197)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2197)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)(_2197)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2189));
        _2213 = (uint)((uint)((((int)((uint)((uint)((uint)(_2205)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2205)) + (uint)(-1253254570)))) ^ ((int)((uint)((uint)((uint)((uint)(_2205)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2197));
        _2221 = (uint)((uint)((((int)((uint)((uint)((uint)(_2213)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2213)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)(_2213)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2205));
        _2229 = (uint)((uint)((((int)((uint)((uint)((uint)(_2221)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2221)) + (uint)(1401181199)))) ^ ((int)((uint)((uint)((uint)((uint)(_2221)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2213));
        _2237 = (uint)((uint)((((int)((uint)((uint)((uint)(_2229)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2229)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)(_2229)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2221));
        _2245 = (uint)((uint)((((int)((uint)((uint)((uint)(_2237)) << 4) + (uint)(-1383041155))) ^ ((int)((uint)((uint)(_2237)) + (uint)(-239350328)))) ^ ((int)((uint)((uint)((uint)((uint)(_2237)) >> 5)) + (uint)(2123724318))))) + (uint)((uint)(_2229));
        if ((_2237 & 16777215) == 0) {
          _2258 = ((int)((uint)((uint)((((int)((uint)((uint)((uint)(_2245)) << 4) + (uint)(-1556008596))) ^ ((int)((uint)((uint)(_2245)) + (uint)(-1879881855)))) ^ ((int)((uint)((uint)(_2245)) >> 5) + (int)(-939442524)))) + (uint)((uint)(_2237))));
        } else {
          _2258 = _2237;
        }
        _2264 = (((float)((uint)((uint)(((int)((uint)((uint)(_2258)) * (uint)(48271))) & 16777215)))) * 5.9604645e-08f);
      }
      if (_85 == 15) {
        // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
        // Description: The contact ray's first sample is offset by a per-pixel random value scaled by this
        //              factor, so neighbouring pixels start at different distances and the march dithers
        //              instead of banding. On this depth-faded material branch vanilla scales the random by
        //              up to 10 units, which pushes the first sample past small nearby occluders and loses
        //              their contact darkening entirely. The lerp pulls the start scale toward 2 as the
        //              Contact Micro Shadows quality rises; at the Off value it returns the vanilla scale
        //              exactly.
        _2273 = ((lerp((10.0f - (saturate(_120 * 0.0010000000474974513f) * 9.0f)), 2.0f, CONTACT_SHADOW_START_BLEND)) * _2264);
        // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      } else {
        _2273 = _2264;
      }
      if (!_2099) {
        _2277 = saturate(_120 * 0.0625f) * 0.05f;
        _2282 = (_2277 * _110);
        _2283 = (_2277 * _109);
        _2284 = (_2277 * _108);
      } else {
        _2282 = 0.0f;
        _2283 = 0.0f;
        _2284 = 0.0f;
      }
      _2285 = _2284 + _141;
      _2286 = _2283 + _150;
      _2287 = _2282 + _159;
      _2299 = (_viewRelative[2].w) + mad((_viewRelative[2].z), _2287, mad((_viewRelative[2].y), _2286, ((_viewRelative[2].x) * _2285)));
      _2302 = mad((_viewRelative[2].z), _2061, mad((_viewRelative[2].y), _2056, ((_viewRelative[2].x) * _2050)));
      _2311 = select((((_2302 * _2083) + _2299) < _nearFarProj.x), ((_nearFarProj.x - _2299) / _2302), _2083);
      _2323 = (_viewProjRelative[2].w) + mad((_viewProjRelative[2].z), _2287, mad((_viewProjRelative[2].y), _2286, ((_viewProjRelative[2].x) * _2285)));
      _2331 = mad((_viewProjRelative[3].z), _2287, mad((_viewProjRelative[3].y), _2286, ((_viewProjRelative[3].x) * _2285))) + (_viewProjRelative[3].w);
      _2333 = (_2311 * _2050) + _2285;
      _2335 = (_2311 * _2056) + _2286;
      _2337 = (_2311 * _2061) + _2287;
      _2341 = mad((_viewProjRelative[3].z), _2337, mad((_viewProjRelative[3].y), _2335, (_2333 * (_viewProjRelative[3].x)))) + (_viewProjRelative[3].w);
      _2350 = (mad((_viewProjRelative[0].z), _2287, mad((_viewProjRelative[0].y), _2286, ((_viewProjRelative[0].x) * _2285))) + (_viewProjRelative[0].w)) / _2331;
      _2359 = (mad((_viewProjRelative[1].z), _2287, mad((_viewProjRelative[1].y), _2286, ((_viewProjRelative[1].x) * _2285))) + (_viewProjRelative[1].w)) / _2331;
      _2360 = _2323 / _2331;
      _2366 = ((mad((_viewProjRelative[0].z), _2337, mad((_viewProjRelative[0].y), _2335, (_2333 * (_viewProjRelative[0].x)))) + (_viewProjRelative[0].w)) / _2341) - _2350;
      _2372 = ((mad((_viewProjRelative[1].z), _2337, mad((_viewProjRelative[1].y), _2335, (_2333 * (_viewProjRelative[1].x)))) + (_viewProjRelative[1].w)) / _2341) - _2359;
      _2374 = 1.0f / ((float)((uint)((uint)(_2062))));
      _2388 = max(_2374, (1.0f / min(1.0f, (max(((_bufferSizeAndInvSize.x * 0.5f) * abs(_2366)), ((_bufferSizeAndInvSize.y * 0.5f) * abs(_2372))) * _2374))));
      _2395 = (((mad((_viewProjRelative[2].z), _2337, mad((_viewProjRelative[2].y), _2335, (_2333 * (_viewProjRelative[2].x)))) + (_viewProjRelative[2].w)) / _2341) - _2360) * _2388;
      _2406 = max(abs(_2395), (_2360 - ((mad((_proj[2].z), _120, 0.0f) + _2323) / (mad((_proj[3].z), _120, 0.0f) + _2331))));
      _2407 = max(0.0625f, _2374);
      _2408 = _2388 * _2374;
      _2410 = (_2366 * 0.5f) * _2408;
      _2412 = (_2372 * -0.5f) * _2408;
      _2413 = _2395 * _2374;
      _2420 = max(_2273, (1.0f / max((abs(_2410) * _bufferSizeAndInvSize.x), (abs(_2412) * _bufferSizeAndInvSize.y))));
      _2421 = 0.5f / _bufferSizeAndInvSize.x;
      _2425 = ((_2350 * 0.5f) + 0.5f) + (_2420 * _2410);
      _2429 = (_2420 * _2412) + (0.5f - (_2359 * 0.5f));
      _2431 = (_2420 * _2413) + _2360;
      if (_120 < 8.0f) {
        _2434 = (_2406 * _2068) * _2407;
        _2436 = 0.0f;
        _2437 = 0.0f;
        _2438 = 0;
        _2439 = _2096;
        _2440 = _2273;
        _2441 = _2431;
        _2442 = _2429;
        _2443 = _2425;
        _2444 = 0;
        while(true) {
          // [sem: _3__36__0__0__g_depthStencil_load]
          // RenoDX: >>> [Patch: ShadowEdgeNoiseFix] [Version: 1.16.00]
          // Description: Replaces the vanilla X clamp at this contact-shadow depth load. Vanilla clamps the
          //              sampled X coordinate to the first/last half texel while leaving Y unclamped, so a ray
          //              that walks off the left or right edge of the screen keeps re-reading the same border
          //              column and smears or flickers the shadow it produces there. The macro keeps the
          //              vanilla clamp when the fix is off and passes X through unclamped when it is on, so the
          //              out-of-bounds sample fails instead of stretching the edge column.
          _2456 = __3__36__0__0__g_depthStencil.Load(int3(int(SHADOW_CONTACT_SAMPLE_X(_2443, _2421) * _bufferSizeAndInvSize.x), int(_2442 * _bufferSizeAndInvSize.y), 0));
          // RenoDX: <<< [Patch: ShadowEdgeNoiseFix]
          _2458 = (uint)((uint)(_2456.x)) >> 24;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
          _2461 = ((float)((uint)((uint)(_2456.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
          _2462 = _2458 & 127;
          _2463 = (_2438 == 0);
          _2464 = select(_2463, 1.0f, _2439);
          _2468 = _nearFarProj.x / max(1e-07f, _2461);
          _2471 = _2468 - (_nearFarProj.x / max(1e-07f, _2441));
          _2475 = (abs((_2441 + _2434) - _2461) < _2434);
          _2476 = (int)(uint)(_2475);
          if (_2475) {
            if (((uint)((int)(_2462) + (int)(-19)) < (uint)2) || ((_2462 == 18) || (((_2458 & 125) == 105) || ((_2462 == 106) || (((uint)((int)(_2462) + (int)(-27)) < (uint)2) || ((_2462 == 26) || ((_2462 == 107) || (((uint)((int)(_2462) + (int)(-5)) < (uint)2) || (((_2458 & 126) == 66) || ((_2462 == 7) || (_2462 == 53))))))))))) {
              _2522 = ((int)(uint)((int)((_2471 < 0.0f) && (_2471 > -0.08f))));
            } else {
              if ((_2462 != 67) && ((uint)((int)(_2462) + (int)(-52)) < (uint)16)) {
                _2522 = ((int)(uint)((int)((_2471 < 0.0f) && (_2471 > select((_2468 < 32.0f), -0.08f, -1.0f)))));
              } else {
                _2522 = _2476;
              }
            }
          } else {
            _2522 = _2476;
          }
          if (!(_2522 == 0)) {
            if ((uint)_2462 > (uint)11) {
              if (!((uint)_2462 < (uint)16)) {
                if (!(_2462 == 17)) {
                  if (!(_2462 == 16)) {
                    if (!(((_2462 == 18) || (_2462 == 107)) || ((uint)((int)(_2462) + (int)(-19)) < (uint)2))) {
                      _2546 = select((_2462 == 66), 0.1f, 0.0f);
                    } else {
                      _2546 = 0.15f;
                    }
                  } else {
                    _2546 = 0.1f;
                  }
                } else {
                  _2546 = 0.7f;
                }
              } else {
                _2546 = 0.9f;
              }
            } else {
              _2546 = select((_2462 == 11), 0.1f, 0.0f);
            }
            _2548 = saturate(_2468 * 0.015625f);  // [sem: expr_sat]
            _2551 = (1.0f - _2548) + (_2548 * _2546);
            // [sem: expr_sat]
            // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
            // Description: Rewrites the contact-shadow accumulation so the occlusion term can be scaled
            //              without disturbing the base shadow it is added to. The vanilla expression is
            //              saturate(((saturate(1 - d*d*s) * (1 - base)) * fade) + base): d*d*s is the
            //              accumulated ray occlusion, (1 - base) limits the contribution to the light that is
            //              still unshadowed, and fade is an occluder thickness/penetration confidence ramp
            //              that discards hits whose depth delta is too large to be a real contact. The whole
            //              product is hoisted into a named value and multiplied by a quality-driven gain
            //              (1.0 -> 0.7), so higher Contact Micro Shadows settings reshape the coarse native
            //              contact result before the finer sub-pixel detail is composited on top of it. At the
            //              Off value the gain is exactly 1.0 and the expression reduces to the vanilla one bit
            //              for bit.
            float _microNearAccum = (saturate(1.0f - ((_2551 * _2551) * _2546)) * (1.0f - _2436)) * saturate((-0.0f - _2471) / (_2440 * 0.004654859658330679f));
            _2566 = saturate((_microNearAccum * lerp(1.0f, 0.7f, CONTACT_SHADOW_BASE_TUNING)) + _2436);
            // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
            _2567 = _2462;
          } else {
            _2566 = _2436;  // [sem: expr_sat]
            _2567 = _2444;
          }
          if ((_2462 != 0) && (_2566 > 0.95f)) {
            if (!_2463) {
              _2580 = (saturate((_2437 - _2461) / (_2437 - _2441)) - min(_2440, _2464));
            } else {
              _2580 = 0.0f;
            }
            _2785 = ((_2580 * _2413) + _2441);
            _2786 = ((_2580 * _2412) + _2442);
            _2787 = ((_2580 * _2410) + _2443);
            _2788 = _2566;
            _2789 = _2462;
            _2790 = _2461;
          } else {
            if ((uint)_2438 < (uint)((int)(_2062) + (int)(-1))) {
              _2599 = _2461;
              _2600 = (_2464 + _2440);
              _2601 = ((_2464 * _2413) + _2441);
              _2602 = (_2442 + (_2464 * _2412));
              _2603 = (_2443 + (_2464 * _2410));
            } else {
              _2599 = _2437;
              _2600 = _2440;
              _2601 = _2441;
              _2602 = _2442;
              _2603 = _2443;
            }
            _2604 = (int)(_2438) + (int)(1);
            if ((uint)_2604 < (uint)_2062) {
              _2436 = _2566;
              _2437 = _2599;
              _2438 = _2604;
              _2439 = _2464;
              _2440 = _2600;
              _2441 = _2601;
              _2442 = _2602;
              _2443 = _2603;
              _2444 = _2567;
              continue;
            } else {
              _2785 = _2441;
              _2786 = _2442;
              _2787 = _2443;
              _2788 = _2566;
              _2789 = _2567;
              _2790 = _2461;
            }
          }
          _2791 = (_2788 > 0.0f);
          if (_2785 > 0.0f) {
            if ((_2791) || ((_2786 <= 1.0f) && ((_2786 >= 0.0f) && ((_2787 >= 0.0f) && (_2787 <= 1.0f))))) {
              _2804 = (_2787 * 2.0f) + -1.0f;
              _2806 = 1.0f - (_2786 * 2.0f);
              _2818 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _2785, mad((_invViewProjRelative[3].y), _2806, ((_invViewProjRelative[3].x) * _2804)));
              if (!(_2789 == 2)) {
                if (!(_2789 == 3)) {
                  if (_2789 == 21) {
                    _2837 = select((_85 == 21), 20.0f, 0.0f);
                  } else {
                    _2828 = (_2789 == 22);
                    _2837 = select(((_85 == 22) && _2828), 20.0f, select(_2828, 0.0f, 1.0f));
                  }
                } else {
                  _2837 = 0.0f;
                }
              } else {
                _2837 = select((_85 == 2), 20.0f, 0.0f);
              }
              if (_559 && (_2788 == 1.0f)) {
                // [sem: expr_sat]
                _2882 = saturate(((((_2083 * 0.9375f) - max(0.0f, dot(float3(_2050, _2056, _2061), float3((((mad((_invViewProjRelative[0].z), _2785, mad((_invViewProjRelative[0].y), _2806, ((_invViewProjRelative[0].x) * _2804))) + (_invViewProjRelative[0].w)) / _2818) - _2285), (((mad((_invViewProjRelative[1].z), _2785, mad((_invViewProjRelative[1].y), _2806, ((_invViewProjRelative[1].x) * _2804))) + (_invViewProjRelative[1].w)) / _2818) - _2286), (((mad((_invViewProjRelative[2].z), _2785, mad((_invViewProjRelative[2].y), _2806, ((_invViewProjRelative[2].x) * _2804))) + (_invViewProjRelative[2].w)) / _2818) - _2287))))) * ((_120 * 0.015625f) + 1.5f)) / _2083) * 0.9375f);
              } else {
                _2882 = _2788;  // [sem: expr_sat]
              }
              _2898 = saturate(exp2(min(0.0f, (((_120 * 0.019f) + 0.1f) + (((_nearFarProj.x / max(1e-07f, _2790)) - (_nearFarProj.x / max(1e-07f, _2785))) * _2837))) * 1.442695f)) * _2882;
              _2899 = _2789 & -2;
              if (!(_2899 == 6)) {
                if ((((_85 == 33) && (_2789 == 33)) || (!(_85 == 33) && ((_85 == 54) && (_2789 == 54))))) {
                  _3160 = (_2898 * 0.01f);
                } else {
                  if (!((_2789 == 53) || (_2899 == 66)) || (((_2789 == 53) || (_2899 == 66)) && (!((_1944 == 66) || (_85 == 53))))) {
                    if (!_169) {
                      if ((uint)((int)((uint)((uint)(_2789)) + (uint)(-52))) < (uint)16) {
                        _2927 = saturate(_120 * 0.03125f);  // [sem: expr_sat]
                      } else {
                        _2927 = 1.0f;  // [sem: expr_sat]
                      }
                      _3160 = (_2927 * _2898);
                    } else {
                      _3160 = _2898;
                    }
                  } else {
                    // [sem: _3__36__0__0__g_baseColor_load]
                    _2938 = __3__36__0__0__g_baseColor.Load(int3(((int)(_bufferSizeAndInvSize.x * _2787)), ((int)(_bufferSizeAndInvSize.y * _2786)), 0));
                    _2944 = ((float)((uint)((uint)(((uint)((uint)(_2938.x)) >> 8) & 255)))) * 0.003921569f;
                    _2947 = ((float)((uint)((uint)(_2938.x & 255)))) * 0.003921569f;
                    _2951 = ((float)((uint)((uint)(((uint)((uint)(_2938.y)) >> 8) & 255)))) * 0.003921569f;
                    _2952 = _2944 * _2944;
                    _2953 = _2947 * _2947;
                    _2954 = _2951 * _2951;
                    _3160 = (saturate(1.0f - (dot(float3((((_2952 * 0.61312f) + (_2953 * 0.33951f)) + (_2954 * 0.04737f)), (((_2952 * 0.0702f) + (_2953 * 0.91636f)) + (_2954 * 0.01345f)), (((_2952 * 0.02062f) + (_2953 * 0.10958f)) + (_2954 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _2898);
                  }
                }
              } else {
                _3160 = (_2898 * 0.01f);
              }
            } else {
              _3160 = 0.0f;
            }
          } else {
            if (_2791) {
              _2979 = _2785;
              _2980 = _2786;
              _2981 = _2787;
              _2982 = _2788;
              _2983 = _2789;
              _2984 = _2790;
              _2986 = (_2981 * 2.0f) + -1.0f;
              _2988 = 1.0f - (_2980 * 2.0f);
              _3000 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _2979, mad((_invViewProjRelative[3].y), _2988, ((_invViewProjRelative[3].x) * _2986)));
              if (!(_2983 == 2)) {
                if (!(_2983 == 3)) {
                  if (_2983 == 21) {
                    _3019 = select((_85 == 21), 20.0f, 0.0f);
                  } else {
                    _3010 = (_2983 == 22);
                    _3019 = select(((_85 == 22) && _3010), 20.0f, select(_3010, 0.0f, 1.0f));
                  }
                } else {
                  _3019 = 0.0f;
                }
              } else {
                _3019 = select((_85 == 2), 20.0f, 0.0f);
              }
              if (_559 && (_2982 == 1.0f)) {
                // [sem: expr_sat]
                _3064 = saturate(((((_2083 * 0.9375f) - max(0.0f, dot(float3(_2050, _2056, _2061), float3((((mad((_invViewProjRelative[0].z), _2979, mad((_invViewProjRelative[0].y), _2988, ((_invViewProjRelative[0].x) * _2986))) + (_invViewProjRelative[0].w)) / _3000) - _2285), (((mad((_invViewProjRelative[1].z), _2979, mad((_invViewProjRelative[1].y), _2988, ((_invViewProjRelative[1].x) * _2986))) + (_invViewProjRelative[1].w)) / _3000) - _2286), (((mad((_invViewProjRelative[2].z), _2979, mad((_invViewProjRelative[2].y), _2988, ((_invViewProjRelative[2].x) * _2986))) + (_invViewProjRelative[2].w)) / _3000) - _2287))))) * ((_120 * 0.015625f) + 1.5f)) / _2083) * 0.9375f);
              } else {
                _3064 = _2982;  // [sem: expr_sat]
              }
              _3080 = saturate(exp2(min(0.0f, (((_120 * 0.019f) + 0.1f) + (((_nearFarProj.x / max(1e-07f, _2984)) - (_nearFarProj.x / max(1e-07f, _2979))) * _3019))) * 1.442695f)) * _3064;
              _3081 = _2983 & -2;
              if (!(_3081 == 6)) {
                if ((((_85 == 33) && (_2983 == 33)) || (!(_85 == 33) && ((_85 == 54) && (_2983 == 54))))) {
                  _3160 = (_3080 * 0.01f);
                } else {
                  if (!((_2983 == 53) || (_3081 == 66)) || (((_2983 == 53) || (_3081 == 66)) && (!((_1944 == 66) || (_85 == 53))))) {
                    if (!_169) {
                      if ((uint)((int)((uint)((uint)(_2983)) + (uint)(-52))) < (uint)16) {
                        _3109 = saturate(_120 * 0.03125f);  // [sem: expr_sat]
                      } else {
                        _3109 = 1.0f;  // [sem: expr_sat]
                      }
                      _3160 = (_3109 * _3080);
                    } else {
                      _3160 = _3080;
                    }
                  } else {
                    // [sem: _3__36__0__0__g_baseColor_load]
                    _3120 = __3__36__0__0__g_baseColor.Load(int3(((int)(_bufferSizeAndInvSize.x * _2981)), ((int)(_bufferSizeAndInvSize.y * _2980)), 0));
                    _3126 = ((float)((uint)((uint)(((uint)((uint)(_3120.x)) >> 8) & 255)))) * 0.003921569f;
                    _3129 = ((float)((uint)((uint)(_3120.x & 255)))) * 0.003921569f;
                    _3133 = ((float)((uint)((uint)(((uint)((uint)(_3120.y)) >> 8) & 255)))) * 0.003921569f;
                    _3134 = _3126 * _3126;
                    _3135 = _3129 * _3129;
                    _3136 = _3133 * _3133;
                    _3160 = (saturate(1.0f - (dot(float3((((_3134 * 0.61312f) + (_3135 * 0.33951f)) + (_3136 * 0.04737f)), (((_3134 * 0.0702f) + (_3135 * 0.91636f)) + (_3136 * 0.01345f)), (((_3134 * 0.02062f) + (_3135 * 0.10958f)) + (_3136 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _3080);
                  }
                }
              } else {
                _3160 = (_3080 * 0.01f);
              }
            } else {
              _3160 = 0.0f;
            }
          }
          break;
        }
      } else {
        _2609 = ((_2406 * _2068) * 0.5f) * _2407;
        _2611 = 0.0f;
        _2612 = 0.0f;
        _2613 = 0;
        _2614 = _2431;
        _2615 = _2429;
        _2616 = _2425;
        _2617 = _2273;
        _2618 = _2096;
        _2619 = 0;
        while(true) {
          // [sem: _3__36__0__0__g_depthStencil_load]
          // RenoDX: >>> [Patch: ShadowEdgeNoiseFix] [Version: 1.16.00]
          // Description: Replaces the vanilla X clamp at this contact-shadow depth load. Vanilla clamps the
          //              sampled X coordinate to the first/last half texel while leaving Y unclamped, so a ray
          //              that walks off the left or right edge of the screen keeps re-reading the same border
          //              column and smears or flickers the shadow it produces there. The macro keeps the
          //              vanilla clamp when the fix is off and passes X through unclamped when it is on, so the
          //              out-of-bounds sample fails instead of stretching the edge column.
          _2631 = __3__36__0__0__g_depthStencil.Load(int3(int(SHADOW_CONTACT_SAMPLE_X(_2616, _2421) * _bufferSizeAndInvSize.x), int(_2615 * _bufferSizeAndInvSize.y), 0));
          // RenoDX: <<< [Patch: ShadowEdgeNoiseFix]
          _2633 = (uint)((uint)(_2631.x)) >> 24;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
          _2636 = ((float)((uint)((uint)(_2631.x & 16777215)))) * 5.960465e-08f;  // [sem: _3__36__0__0__g_depthStencil_load_derived]
          _2637 = _2633 & 127;
          _2638 = (_2619 == 0);
          _2639 = select(_2638, 1.0f, _2618);
          _2643 = _nearFarProj.x / max(1e-07f, _2636);
          _2646 = _2643 - (_nearFarProj.x / max(1e-07f, _2614));
          _2650 = (abs((_2614 + _2609) - _2636) < _2609);
          _2651 = (int)(uint)(_2650);
          if (_2650) {
            if (((uint)((int)(_2637) + (int)(-19)) < (uint)2) || ((_2637 == 18) || (((_2633 & 125) == 105) || ((_2637 == 106) || (((uint)((int)(_2637) + (int)(-27)) < (uint)2) || ((_2637 == 26) || ((_2637 == 107) || (((uint)((int)(_2637) + (int)(-5)) < (uint)2) || (((_2633 & 126) == 66) || ((_2637 == 7) || (_2637 == 53))))))))))) {
              _2697 = ((int)(uint)((int)((_2646 < 0.0f) && (_2646 > -0.08f))));
            } else {
              if ((_2637 != 67) && ((uint)((int)(_2637) + (int)(-52)) < (uint)16)) {
                _2697 = ((int)(uint)((int)((_2646 < 0.0f) && (_2646 > select((_2643 < 32.0f), -0.08f, -1.0f)))));
              } else {
                _2697 = _2651;
              }
            }
          } else {
            _2697 = _2651;
          }
          if (!(_2697 == 0)) {
            if ((uint)_2637 > (uint)11) {
              if (!((uint)_2637 < (uint)16)) {
                if (!(_2637 == 17)) {
                  if (!(_2637 == 16)) {
                    if (!(((_2637 == 18) || (_2637 == 107)) || ((uint)((int)(_2637) + (int)(-19)) < (uint)2))) {
                      _2721 = select((_2637 == 66), 0.1f, 0.0f);
                    } else {
                      _2721 = 0.15f;
                    }
                  } else {
                    _2721 = 0.1f;
                  }
                } else {
                  _2721 = 0.7f;
                }
              } else {
                _2721 = 0.9f;
              }
            } else {
              _2721 = select((_2637 == 11), 0.1f, 0.0f);
            }
            _2723 = saturate(_2643 * 0.015625f);  // [sem: expr_sat]
            _2726 = (1.0f - _2723) + (_2723 * _2721);
            // [sem: expr_sat]
            // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
            // Description: Rewrites the contact-shadow accumulation so the occlusion term can be scaled
            //              without disturbing the base shadow it is added to. The vanilla expression is
            //              saturate(((saturate(1 - d*d*s) * (1 - base)) * fade) + base): d*d*s is the
            //              accumulated ray occlusion, (1 - base) limits the contribution to the light that is
            //              still unshadowed, and fade is an occluder thickness/penetration confidence ramp
            //              that discards hits whose depth delta is too large to be a real contact. The whole
            //              product is hoisted into a named value and multiplied by a quality-driven gain
            //              (1.0 -> 0.7), so higher Contact Micro Shadows settings reshape the coarse native
            //              contact result before the finer sub-pixel detail is composited on top of it. At the
            //              Off value the gain is exactly 1.0 and the expression reduces to the vanilla one bit
            //              for bit.
            float _microFarAccum = (saturate(1.0f - ((_2726 * _2726) * _2721)) * (1.0f - _2611)) * saturate((-0.0f - _2646) / (_2617 * 0.004654859658330679f));
            _2741 = saturate((_microFarAccum * lerp(1.0f, 0.7f, CONTACT_SHADOW_BASE_TUNING)) + _2611);
            // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
            _2742 = _2637;
          } else {
            _2741 = _2611;  // [sem: expr_sat]
            _2742 = _2613;
          }
          if ((_2637 != 0) && (_2741 > 0.95f)) {
            if (!_2638) {
              _2755 = (saturate((_2612 - _2636) / (_2612 - _2614)) - min(_2617, _2639));
            } else {
              _2755 = 0.0f;
            }
            _2785 = ((_2755 * _2413) + _2614);
            _2786 = ((_2755 * _2412) + _2615);
            _2787 = ((_2755 * _2410) + _2616);
            _2788 = _2741;
            _2789 = _2637;
            _2790 = _2636;
            _2791 = (_2788 > 0.0f);
            if (_2785 > 0.0f) {
              if ((_2791) || ((_2786 <= 1.0f) && ((_2786 >= 0.0f) && ((_2787 >= 0.0f) && (_2787 <= 1.0f))))) {
                _2804 = (_2787 * 2.0f) + -1.0f;
                _2806 = 1.0f - (_2786 * 2.0f);
                _2818 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _2785, mad((_invViewProjRelative[3].y), _2806, ((_invViewProjRelative[3].x) * _2804)));
                if (!(_2789 == 2)) {
                  if (!(_2789 == 3)) {
                    if (_2789 == 21) {
                      _2837 = select((_85 == 21), 20.0f, 0.0f);
                    } else {
                      _2828 = (_2789 == 22);
                      _2837 = select(((_85 == 22) && _2828), 20.0f, select(_2828, 0.0f, 1.0f));
                    }
                  } else {
                    _2837 = 0.0f;
                  }
                } else {
                  _2837 = select((_85 == 2), 20.0f, 0.0f);
                }
                if (_559 && (_2788 == 1.0f)) {
                  // [sem: expr_sat]
                  _2882 = saturate(((((_2083 * 0.9375f) - max(0.0f, dot(float3(_2050, _2056, _2061), float3((((mad((_invViewProjRelative[0].z), _2785, mad((_invViewProjRelative[0].y), _2806, ((_invViewProjRelative[0].x) * _2804))) + (_invViewProjRelative[0].w)) / _2818) - _2285), (((mad((_invViewProjRelative[1].z), _2785, mad((_invViewProjRelative[1].y), _2806, ((_invViewProjRelative[1].x) * _2804))) + (_invViewProjRelative[1].w)) / _2818) - _2286), (((mad((_invViewProjRelative[2].z), _2785, mad((_invViewProjRelative[2].y), _2806, ((_invViewProjRelative[2].x) * _2804))) + (_invViewProjRelative[2].w)) / _2818) - _2287))))) * ((_120 * 0.015625f) + 1.5f)) / _2083) * 0.9375f);
                } else {
                  _2882 = _2788;  // [sem: expr_sat]
                }
                _2898 = saturate(exp2(min(0.0f, (((_120 * 0.019f) + 0.1f) + (((_nearFarProj.x / max(1e-07f, _2790)) - (_nearFarProj.x / max(1e-07f, _2785))) * _2837))) * 1.442695f)) * _2882;
                _2899 = _2789 & -2;
                if (!(_2899 == 6)) {
                  if ((((_85 == 33) && (_2789 == 33)) || (!(_85 == 33) && ((_85 == 54) && (_2789 == 54))))) {
                    _3160 = (_2898 * 0.01f);
                  } else {
                    if (!((_2789 == 53) || (_2899 == 66)) || (((_2789 == 53) || (_2899 == 66)) && (!((_1944 == 66) || (_85 == 53))))) {
                      if (!_169) {
                        if ((uint)((int)((uint)((uint)(_2789)) + (uint)(-52))) < (uint)16) {
                          _2927 = saturate(_120 * 0.03125f);  // [sem: expr_sat]
                        } else {
                          _2927 = 1.0f;  // [sem: expr_sat]
                        }
                        _3160 = (_2927 * _2898);
                      } else {
                        _3160 = _2898;
                      }
                    } else {
                      // [sem: _3__36__0__0__g_baseColor_load]
                      _2938 = __3__36__0__0__g_baseColor.Load(int3(((int)(_bufferSizeAndInvSize.x * _2787)), ((int)(_bufferSizeAndInvSize.y * _2786)), 0));
                      _2944 = ((float)((uint)((uint)(((uint)((uint)(_2938.x)) >> 8) & 255)))) * 0.003921569f;
                      _2947 = ((float)((uint)((uint)(_2938.x & 255)))) * 0.003921569f;
                      _2951 = ((float)((uint)((uint)(((uint)((uint)(_2938.y)) >> 8) & 255)))) * 0.003921569f;
                      _2952 = _2944 * _2944;
                      _2953 = _2947 * _2947;
                      _2954 = _2951 * _2951;
                      _3160 = (saturate(1.0f - (dot(float3((((_2952 * 0.61312f) + (_2953 * 0.33951f)) + (_2954 * 0.04737f)), (((_2952 * 0.0702f) + (_2953 * 0.91636f)) + (_2954 * 0.01345f)), (((_2952 * 0.02062f) + (_2953 * 0.10958f)) + (_2954 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _2898);
                    }
                  }
                } else {
                  _3160 = (_2898 * 0.01f);
                }
              } else {
                _3160 = 0.0f;
              }
            } else {
              if (_2791) {
                _2979 = _2785;
                _2980 = _2786;
                _2981 = _2787;
                _2982 = _2788;
                _2983 = _2789;
                _2984 = _2790;
                _2986 = (_2981 * 2.0f) + -1.0f;
                _2988 = 1.0f - (_2980 * 2.0f);
                _3000 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _2979, mad((_invViewProjRelative[3].y), _2988, ((_invViewProjRelative[3].x) * _2986)));
                if (!(_2983 == 2)) {
                  if (!(_2983 == 3)) {
                    if (_2983 == 21) {
                      _3019 = select((_85 == 21), 20.0f, 0.0f);
                    } else {
                      _3010 = (_2983 == 22);
                      _3019 = select(((_85 == 22) && _3010), 20.0f, select(_3010, 0.0f, 1.0f));
                    }
                  } else {
                    _3019 = 0.0f;
                  }
                } else {
                  _3019 = select((_85 == 2), 20.0f, 0.0f);
                }
                if (_559 && (_2982 == 1.0f)) {
                  // [sem: expr_sat]
                  _3064 = saturate(((((_2083 * 0.9375f) - max(0.0f, dot(float3(_2050, _2056, _2061), float3((((mad((_invViewProjRelative[0].z), _2979, mad((_invViewProjRelative[0].y), _2988, ((_invViewProjRelative[0].x) * _2986))) + (_invViewProjRelative[0].w)) / _3000) - _2285), (((mad((_invViewProjRelative[1].z), _2979, mad((_invViewProjRelative[1].y), _2988, ((_invViewProjRelative[1].x) * _2986))) + (_invViewProjRelative[1].w)) / _3000) - _2286), (((mad((_invViewProjRelative[2].z), _2979, mad((_invViewProjRelative[2].y), _2988, ((_invViewProjRelative[2].x) * _2986))) + (_invViewProjRelative[2].w)) / _3000) - _2287))))) * ((_120 * 0.015625f) + 1.5f)) / _2083) * 0.9375f);
                } else {
                  _3064 = _2982;  // [sem: expr_sat]
                }
                _3080 = saturate(exp2(min(0.0f, (((_120 * 0.019f) + 0.1f) + (((_nearFarProj.x / max(1e-07f, _2984)) - (_nearFarProj.x / max(1e-07f, _2979))) * _3019))) * 1.442695f)) * _3064;
                _3081 = _2983 & -2;
                if (!(_3081 == 6)) {
                  if ((((_85 == 33) && (_2983 == 33)) || (!(_85 == 33) && ((_85 == 54) && (_2983 == 54))))) {
                    _3160 = (_3080 * 0.01f);
                  } else {
                    if (!((_2983 == 53) || (_3081 == 66)) || (((_2983 == 53) || (_3081 == 66)) && (!((_1944 == 66) || (_85 == 53))))) {
                      if (!_169) {
                        if ((uint)((int)((uint)((uint)(_2983)) + (uint)(-52))) < (uint)16) {
                          _3109 = saturate(_120 * 0.03125f);  // [sem: expr_sat]
                        } else {
                          _3109 = 1.0f;  // [sem: expr_sat]
                        }
                        _3160 = (_3109 * _3080);
                      } else {
                        _3160 = _3080;
                      }
                    } else {
                      // [sem: _3__36__0__0__g_baseColor_load]
                      _3120 = __3__36__0__0__g_baseColor.Load(int3(((int)(_bufferSizeAndInvSize.x * _2981)), ((int)(_bufferSizeAndInvSize.y * _2980)), 0));
                      _3126 = ((float)((uint)((uint)(((uint)((uint)(_3120.x)) >> 8) & 255)))) * 0.003921569f;
                      _3129 = ((float)((uint)((uint)(_3120.x & 255)))) * 0.003921569f;
                      _3133 = ((float)((uint)((uint)(((uint)((uint)(_3120.y)) >> 8) & 255)))) * 0.003921569f;
                      _3134 = _3126 * _3126;
                      _3135 = _3129 * _3129;
                      _3136 = _3133 * _3133;
                      _3160 = (saturate(1.0f - (dot(float3((((_3134 * 0.61312f) + (_3135 * 0.33951f)) + (_3136 * 0.04737f)), (((_3134 * 0.0702f) + (_3135 * 0.91636f)) + (_3136 * 0.01345f)), (((_3134 * 0.02062f) + (_3135 * 0.10958f)) + (_3136 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _3080);
                    }
                  }
                } else {
                  _3160 = (_3080 * 0.01f);
                }
              } else {
                _3160 = 0.0f;
              }
            }
          } else {
            if ((uint)_2619 < (uint)((int)(_2062) + (int)(-1))) {
              _2774 = _2636;
              _2775 = ((_2639 * _2413) + _2614);
              _2776 = ((_2639 * _2412) + _2615);
              _2777 = ((_2639 * _2410) + _2616);
              _2778 = (_2639 + _2617);
            } else {
              _2774 = _2612;
              _2775 = _2614;
              _2776 = _2615;
              _2777 = _2616;
              _2778 = _2617;
            }
            _2779 = (int)(_2619) + (int)(1);
            if ((uint)_2779 < (uint)_2062) {
              _2611 = _2741;
              _2612 = _2774;
              _2613 = _2742;
              _2614 = _2775;
              _2615 = _2776;
              _2616 = _2777;
              _2617 = _2778;
              _2618 = _2639;
              _2619 = _2779;
              continue;
            } else {
              if (_2741 > 0.0f) {
                _2979 = -1.0f;
                _2980 = 0.0f;
                _2981 = 0.0f;
                _2982 = _2741;
                _2983 = _2742;
                _2984 = 0.0f;
                _2986 = (_2981 * 2.0f) + -1.0f;
                _2988 = 1.0f - (_2980 * 2.0f);
                _3000 = (_invViewProjRelative[3].w) + mad((_invViewProjRelative[3].z), _2979, mad((_invViewProjRelative[3].y), _2988, ((_invViewProjRelative[3].x) * _2986)));
                if (!(_2983 == 2)) {
                  if (!(_2983 == 3)) {
                    if (_2983 == 21) {
                      _3019 = select((_85 == 21), 20.0f, 0.0f);
                    } else {
                      _3010 = (_2983 == 22);
                      _3019 = select(((_85 == 22) && _3010), 20.0f, select(_3010, 0.0f, 1.0f));
                    }
                  } else {
                    _3019 = 0.0f;
                  }
                } else {
                  _3019 = select((_85 == 2), 20.0f, 0.0f);
                }
                if (_559 && (_2982 == 1.0f)) {
                  // [sem: expr_sat]
                  _3064 = saturate(((((_2083 * 0.9375f) - max(0.0f, dot(float3(_2050, _2056, _2061), float3((((mad((_invViewProjRelative[0].z), _2979, mad((_invViewProjRelative[0].y), _2988, ((_invViewProjRelative[0].x) * _2986))) + (_invViewProjRelative[0].w)) / _3000) - _2285), (((mad((_invViewProjRelative[1].z), _2979, mad((_invViewProjRelative[1].y), _2988, ((_invViewProjRelative[1].x) * _2986))) + (_invViewProjRelative[1].w)) / _3000) - _2286), (((mad((_invViewProjRelative[2].z), _2979, mad((_invViewProjRelative[2].y), _2988, ((_invViewProjRelative[2].x) * _2986))) + (_invViewProjRelative[2].w)) / _3000) - _2287))))) * ((_120 * 0.015625f) + 1.5f)) / _2083) * 0.9375f);
                } else {
                  _3064 = _2982;  // [sem: expr_sat]
                }
                _3080 = saturate(exp2(min(0.0f, (((_120 * 0.019f) + 0.1f) + (((_nearFarProj.x / max(1e-07f, _2984)) - (_nearFarProj.x / max(1e-07f, _2979))) * _3019))) * 1.442695f)) * _3064;
                _3081 = _2983 & -2;
                if (!(_3081 == 6)) {
                  if ((((_85 == 33) && (_2983 == 33)) || (!(_85 == 33) && ((_85 == 54) && (_2983 == 54))))) {
                    _3160 = (_3080 * 0.01f);
                  } else {
                    if (!((_2983 == 53) || (_3081 == 66)) || (((_2983 == 53) || (_3081 == 66)) && (!((_1944 == 66) || (_85 == 53))))) {
                      if (!_169) {
                        if ((uint)((int)((uint)((uint)(_2983)) + (uint)(-52))) < (uint)16) {
                          _3109 = saturate(_120 * 0.03125f);  // [sem: expr_sat]
                        } else {
                          _3109 = 1.0f;  // [sem: expr_sat]
                        }
                        _3160 = (_3109 * _3080);
                      } else {
                        _3160 = _3080;
                      }
                    } else {
                      // [sem: _3__36__0__0__g_baseColor_load]
                      _3120 = __3__36__0__0__g_baseColor.Load(int3(((int)(_bufferSizeAndInvSize.x * _2981)), ((int)(_bufferSizeAndInvSize.y * _2980)), 0));
                      _3126 = ((float)((uint)((uint)(((uint)((uint)(_3120.x)) >> 8) & 255)))) * 0.003921569f;
                      _3129 = ((float)((uint)((uint)(_3120.x & 255)))) * 0.003921569f;
                      _3133 = ((float)((uint)((uint)(((uint)((uint)(_3120.y)) >> 8) & 255)))) * 0.003921569f;
                      _3134 = _3126 * _3126;
                      _3135 = _3129 * _3129;
                      _3136 = _3133 * _3133;
                      _3160 = (saturate(1.0f - (dot(float3((((_3134 * 0.61312f) + (_3135 * 0.33951f)) + (_3136 * 0.04737f)), (((_3134 * 0.0702f) + (_3135 * 0.91636f)) + (_3136 * 0.01345f)), (((_3134 * 0.02062f) + (_3135 * 0.10958f)) + (_3136 * 0.8698f))), float3(0.212671f, 0.71516f, 0.072169f)) * 0.875f)) * _3080);
                    }
                  }
                } else {
                  _3160 = (_3080 * 0.01f);
                }
              } else {
                _3160 = 0.0f;
              }
            }
          }
          break;
        }
      }
      _3164 = saturate(1.0f - _3160);  // [sem: expr_sat]
    } else {
      _3164 = 1.0f;  // [sem: expr_sat]
    }
    // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
    // Description: The native contact-shadow march is a short ray with very few steps, so it misses
    //              sub-pixel and small-scale occluders and leaves surface detail such as ground litter,
    //              pebbles, cloth folds and foliage sitting on the ground without any contact darkening.
    //              This calls the shared depth-bias micro detail shadow helper, which re-marches the
    //              depth buffer with a continuous thickness window instead of a binary hit test and
    //              returns a darkened contact value. The helper returns its input unchanged when
    //              Contact Micro Shadows is Off, so the vanilla shadow value is preserved. The whole
    //              region is gated on the same native shadow-evaluation condition that seeds the ray
    //              carriers: when that gate is skipped the carriers were never given real values, and
    //              the native composite below takes min(gateValue, contactValue). On that edge the native
    //              else-branch sets contactValue to exactly 1.0 and gateValue is <= 0, so the min returns the
    //              gate value and the helper result could not affect the output there. The same holds if
    //              gateValue is NaN: the native if/else still yields 1.0 and the min resolves to the non-NaN
    //              operand, so gating actually restores vanilla for that pixel, where the un-gated form would
    //              have marched with unseeded carriers and could have returned less than 1.0.
    if (_1941 > 0.0f) {
      _3164 = ApplyContactMicroDetailShadow(
          _3164,
          float2(_65, _66),
          _120,
          _85,
          float3(_rndxMicroDirX, _rndxMicroDirY, _rndxMicroDirZ),
          float3(_141, _150, _159),
          CONTACT_MICRO_DETAIL_STRENGTH,
          (CONTACT_SHADOW_IS_FULL ? -0.022f : -0.025f),
          (CONTACT_SHADOW_IS_FULL ? 3.10f : 3.0f),
          CONTACT_MICRO_RANGE_NEAR,
          CONTACT_MICRO_RANGE_FAR,
          CONTACT_MICRO_THICKNESS_MULTIPLIER,
          CONTACT_MICRO_OCCLUSION_SCALE,
          CONTACT_MICRO_SELF_REJECT_PIXELS,
          2.0f,
          1.0f,
          1.0f);
      // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
      // RenoDX: >>> [Patch: ContactMicroShadowsFamily] [Version: 1.16.00]
      // Description: The micro detail shadow helper marches in screen space, so close to the frame border
      //              its ray walks out of the depth buffer, loses the occluders that would have been found
      //              there and produces an abrupt brightness seam along the edges of the image. This
      //              attenuates the helper's extra darkening toward the border, falling back to a
      //              half-strength blend at the outermost pixels so the transition is smooth. It only runs
      //              when a Contact Micro Shadows quality level is active, so the vanilla value is
      //              untouched when the feature is Off.
      if (CONTACT_SHADOW_DETAIL_PATH == 1.f && _3164 < 1.0f) {
        float2 _rndxMicroScreenUV = float2((_65 + 0.5f) * _bufferSizeAndInvSize.z,
                                           (_66 + 0.5f) * _bufferSizeAndInvSize.w);
        float2 _rndxMicroEdgeDist = min(_rndxMicroScreenUV, 1.0f - _rndxMicroScreenUV);
        float _rndxMicroEdgeFade = saturate(min(_rndxMicroEdgeDist.x, _rndxMicroEdgeDist.y) * 10.0f);
        _3164 = lerp(lerp(1.0f, _3164, 0.5f), _3164, _rndxMicroEdgeFade);
      }
    }
    // RenoDX: <<< [Patch: ContactMicroShadowsFamily]
    _3165 = min(_1941, _3164);
    _3187 = float(half(_3165 * float(_1611)));
    _3188 = float(half(_3165 * float(_1610)));
    _3189 = float(half(_3165 * float(_1609)));
    _3190 = saturate((1.0f - _555) + (exp2(log2(saturate(_1935)) * 0.45454544f) * _555));  // [sem: expr_sat]
  }
  __3__38__0__1__g_shadowColorResultUAV[int2(_57, _64)] = float4((half)(half(_3187)), (half)(half(_3188)), (half)(half(_3189)), (half)(half(_3190)));
}
