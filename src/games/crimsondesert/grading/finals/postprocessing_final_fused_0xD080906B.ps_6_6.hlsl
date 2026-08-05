Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

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
// Description: Tells tonemap.hlsli to reuse this shader's native SceneConstantBuffer instead of declaring a duplicate binding; Maps tonemap.hlsli's scene-time input to this shader's native `_time.w` carrier; Imports "../tonemap.hlsli" for the custom tonemap helpers and ABI-compatible exposure/global constant-buffer declarations used below; Begins suppression of native declarations whose ABI-compatible live definitions are supplied by tonemap.hlsli.
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
// Description: Ends the native-declaration suppression supplied by tonemap.hlsli so following declarations compile normally; Begins suppression of native declarations whose ABI-compatible live definitions are supplied by tonemap.hlsli.
#endif
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
// Description: Ends the native-declaration suppression supplied by tonemap.hlsli so following declarations compile normally; Begins suppression of native declarations whose ABI-compatible live definitions are supplied by tonemap.hlsli.
#endif
#if 0 // Provided by tonemap.hlsli
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};
// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Ends the native-declaration suppression supplied by tonemap.hlsli so following declarations compile normally.
#endif
// RenoDX: <<< [Patch: RenoDXDependencyBindings]

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

SamplerState __0__4__0__0__g_staticPointBlackBorder : register(s11, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float4 _18;
  float _41;
  float _42;
  float _86;
  float _87;
  float _88;
  float _289;
  float _325;
  float _336;
  float _704;
  float _740;
  float _751;
  float _1067;
  float _1103;
  float _1114;
  float _1430;
  float _1466;
  float _1477;
  float _1793;
  float _1829;
  float _1840;
  float _2068;
  float _2069;
  float _2070;
  float _2106;
  float _2107;
  float _2108;
  float _2177;
  bool _2197;
  float _52;
  float _53;
  float _55;
  float _56;
  float _58;
  float _71;
  float _73;
  float _81;
  uint _92;
  uint _95;
  float _100;
  float _102;
  float _104;
  float _106;
  float _122;
  float _136;
  float _150;
  float _151;
  float _155;
  float _159;
  float _163;
  float _166;
  float _169;
  float _172;
  float _175;
  float _178;
  float _181;
  float _182;
  float _184;
  float _186;
  float _188;
  float _197;
  float _203;
  float _209;
  float _215;
  float _221;
  float _227;
  float _231;
  float _234;
  float _237;
  float _240;
  float _242;
  float _249;
  float _262;
  float _263;
  float _264;
  float _265;
  float _269;
  float _280;
  float _290;
  float _291;
  float _292;
  float _293;
  float _300;
  float _303;
  float _305;
  bool _306;
  bool _307;
  bool _308;
  bool _309;
  float _320;
  float _327;
  float _340;
  float _344;
  float _350;
  float _355;
  float _360;
  float _365;
  float _366;
  float _367;
  float _368;
  float _370;
  float _372;
  float _374;
  float _381;
  float _388;
  float _395;
  float _399;
  float _403;
  float _407;
  float _423;
  float _439;
  float _455;
  float _461;
  float _467;
  float _473;
  float _478;
  float _483;
  float _488;
  float _491;
  float _500;
  float4 _503;
  float4 _508;
  float4 _513;
  float4 _518;
  float _537;
  float _551;
  float _565;
  float _566;
  float _570;
  float _574;
  float _578;
  float _581;
  float _584;
  float _587;
  float _590;
  float _593;
  float _596;
  float _597;
  float _599;
  float _601;
  float _603;
  float _612;
  float _618;
  float _624;
  float _630;
  float _636;
  float _642;
  float _646;
  float _649;
  float _652;
  float _655;
  float _657;
  float _664;
  float _677;
  float _678;
  float _679;
  float _680;
  float _684;
  float _695;
  float _705;
  float _706;
  float _707;
  float _708;
  float _715;
  float _718;
  float _720;
  bool _721;
  bool _722;
  bool _723;
  bool _724;
  float _735;
  float _742;
  float _755;
  float _759;
  float _765;
  float _770;
  float _775;
  float _780;
  float _781;
  float _782;
  float _783;
  float _785;
  float _787;
  float _789;
  float _796;
  float _803;
  float _810;
  float _814;
  float _818;
  float _822;
  float _838;
  float _854;
  float _870;
  float _876;
  float _882;
  float _888;
  float _893;
  float _905;
  float _917;
  float _929;
  float _930;
  float _933;
  float _937;
  float _941;
  float _944;
  float _947;
  float _950;
  float _953;
  float _956;
  float _959;
  float _960;
  float _962;
  float _964;
  float _966;
  float _975;
  float _981;
  float _987;
  float _993;
  float _999;
  float _1005;
  float _1009;
  float _1012;
  float _1015;
  float _1018;
  float _1020;
  float _1027;
  float _1040;
  float _1041;
  float _1042;
  float _1043;
  float _1047;
  float _1058;
  float _1068;
  float _1069;
  float _1070;
  float _1071;
  float _1078;
  float _1081;
  float _1083;
  bool _1084;
  bool _1085;
  bool _1086;
  bool _1087;
  float _1098;
  float _1105;
  float _1118;
  float _1122;
  float _1128;
  float _1133;
  float _1138;
  float _1143;
  float _1144;
  float _1145;
  float _1146;
  float _1148;
  float _1150;
  float _1152;
  float _1159;
  float _1166;
  float _1173;
  float _1177;
  float _1181;
  float _1185;
  float _1201;
  float _1217;
  float _1233;
  float _1239;
  float _1245;
  float _1251;
  float _1256;
  float _1268;
  float _1280;
  float _1292;
  float _1293;
  float _1296;
  float _1300;
  float _1304;
  float _1307;
  float _1310;
  float _1313;
  float _1316;
  float _1319;
  float _1322;
  float _1323;
  float _1325;
  float _1327;
  float _1329;
  float _1338;
  float _1344;
  float _1350;
  float _1356;
  float _1362;
  float _1368;
  float _1372;
  float _1375;
  float _1378;
  float _1381;
  float _1383;
  float _1390;
  float _1403;
  float _1404;
  float _1405;
  float _1406;
  float _1410;
  float _1421;
  float _1431;
  float _1432;
  float _1433;
  float _1434;
  float _1441;
  float _1444;
  float _1446;
  bool _1447;
  bool _1448;
  bool _1449;
  bool _1450;
  float _1461;
  float _1468;
  float _1481;
  float _1485;
  float _1491;
  float _1496;
  float _1501;
  float _1506;
  float _1507;
  float _1508;
  float _1509;
  float _1511;
  float _1513;
  float _1515;
  float _1522;
  float _1529;
  float _1536;
  float _1540;
  float _1544;
  float _1548;
  float _1564;
  float _1580;
  float _1596;
  float _1602;
  float _1608;
  float _1614;
  float _1619;
  float _1631;
  float _1643;
  float _1655;
  float _1656;
  float _1659;
  float _1663;
  float _1667;
  float _1670;
  float _1673;
  float _1676;
  float _1679;
  float _1682;
  float _1685;
  float _1686;
  float _1688;
  float _1690;
  float _1692;
  float _1701;
  float _1707;
  float _1713;
  float _1719;
  float _1725;
  float _1731;
  float _1735;
  float _1738;
  float _1741;
  float _1744;
  float _1746;
  float _1753;
  float _1766;
  float _1767;
  float _1768;
  float _1769;
  float _1773;
  float _1784;
  float _1794;
  float _1795;
  float _1796;
  float _1797;
  float _1804;
  float _1807;
  float _1809;
  bool _1810;
  bool _1811;
  bool _1812;
  bool _1813;
  float _1824;
  float _1831;
  float _1844;
  float _1848;
  float _1854;
  float _1859;
  float _1864;
  float _1869;
  float _1870;
  float _1871;
  float _1872;
  float _1874;
  float _1876;
  float _1878;
  float _1885;
  float _1892;
  float _1899;
  float _1903;
  float _1907;
  float _1911;
  float _1927;
  float _1943;
  float _1959;
  float _1965;
  float _1971;
  float _1977;
  float _1982;
  float _1986;
  float _2002;
  float _2005;
  float _2074;
  float _2075;
  float _2078;
  float _2081;
  float _2084;
  float _2089;
  float _2111;
  float _2113;
  float _2116;
  float _2119;
  float _2122;
  float _2128;
  float _2130;
  float _2131;
  float _2132;
  float _2144;
  float _2154;
  float _2164;
  float _2178;
  float _2180;
  float _2187;
  _18 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_postProcessParams.w > 0.0f) {
    _41 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003f) + -0.0015f)) + TEXCOORD.y)), 0.0f))).z);
    _42 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003f) + -0.0015f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
  } else {
    _41 = _18.z;
    _42 = _18.x;
  }
  // RenoDX: >>> [Patch: FinalChromaticAberration] [Version: 1.16.00]
  // Description: Scales only the native red/blue chromatic-aberration offsets between the unchanged center sample and native shifted samples. The effective scalar is 1 when RenoDX is Off, preserving the native offsets.
  _42 = lerp(_18.x, _42, CUSTOM_CHROMATIC_ABERRATION);
  _41 = lerp(_18.z, _41, CUSTOM_CHROMATIC_ABERRATION);
  // RenoDX: <<< [Patch: FinalChromaticAberration]
  // RenoDX: >>> [Patch: CustomFilmGrainGate] [Version: 1.16.00]
  // Description: Keeps the native film-grain branch enabled only when its native strength is positive and RenoDX custom film grain is not selected. RenoDX Off clears the custom type flag, restoring the native condition.
  bool vanilla_film_grain = (_slopeParams.w > 0.0f) && CUSTOM_FILM_GRAIN_TYPE == 0;
  if (vanilla_film_grain) {
  // RenoDX: <<< [Patch: CustomFilmGrainGate]
    _52 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    _53 = _52 * 0.7692308f;
    _55 = frac(abs(_53));
    _56 = _52 * 0.08130081f;
    _58 = frac(abs(_56));
    _71 = ((select((_56 >= (-0.0f - _56)), _58, (-0.0f - _58)) * 1230.0f) + 10.0f) * ((select((_53 >= (-0.0f - _53)), _55, (-0.0f - _55)) * 13.0f) + 1.0f);
    _73 = frac(abs(_71));
    _81 = ((0.0075000525f - (select((_71 >= (-0.0f - _71)), _73, (-0.0f - _73)) * 0.15f)) * _slopeParams.w) + 1.0f;
    _86 = (_81 * _41);
    _87 = (_81 * _18.y);
    _88 = (_81 * _42);
  } else {
    _86 = _41;
    _87 = _18.y;
    _88 = _42;
  }
  _92 = (uint)(_screenSizeAndInvSize.x * TEXCOORD.x);
  _95 = (uint)(_screenSizeAndInvSize.y * TEXCOORD.y);
  _100 = _exposure0.x * _userImageAdjust.z;
  _102 = _100 * _slopeParams.x;
  _104 = _100 * _slopeParams.y;
  _106 = _100 * _slopeParams.z;
  // RenoDX: >>> [Patch: FusedFinalTonemapReplace] [Version: 1.13.00]
  // Description: This standalone-final permutation inlines the vanilla tonemap pipeline directly in the final pass and runs it unconditionally on the raw scene color, so an unreplaced permutation renders the whole screen with the vanilla look whenever the game selects it. This block replaces everything from the color-matrix grade through the per-permutation tone curve and output transform with the shared TonemapReplacer. The vanilla screen fade that was fused with the curve output is re-emitted below so the untouched downstream suite - wash, user brightness and contrast, user gamma, color-blind matrix where present, vignette, letterbox, and the alpha passthrough - keeps running unchanged on the replaced color.
  float3 _rndx_tonemapped_color = TonemapReplacer(float3(_86, _87, _88));
  // RenoDX: <<< [Patch: FusedFinalTonemapReplace]
  // RenoDX: >>> [Patch: FusedFinalSharpening] [Version: 1.13.00]
  // Description: The standalone final pass is where RenoDX RCAS sharpening runs, but this fused permutation tonemaps inside the final pass itself, so no completed final-color texture exists to sample neighbor pixels from. Reconstruct the four RCAS neighbor taps by sampling the raw scene color one texel away in each direction and pass each tap through the same TonemapReplacer applied to the center pixel, then run the shared RCAS resolve. The fused vanilla sharpener, where this permutation carried one, was removed together with the replaced tonemap segment above.
  if (CUSTOM_SHARPENING_TYPE == 1 && CUSTOM_SHARPENING > 0.f) {
    uint _rndx_scene_w, _rndx_scene_h;
    __3__36__0__0__g_sceneColor.GetDimensions(_rndx_scene_w, _rndx_scene_h);
    float2 _rndx_texel = 1.0f / float2(_rndx_scene_w, _rndx_scene_h);
    float3 _rndx_tap_b = TonemapReplacer(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, TEXCOORD + float2(0.0f, -_rndx_texel.y), 0).rgb);
    float3 _rndx_tap_d = TonemapReplacer(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, TEXCOORD + float2(-_rndx_texel.x, 0.0f), 0).rgb);
    float3 _rndx_tap_f = TonemapReplacer(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, TEXCOORD + float2(_rndx_texel.x, 0.0f), 0).rgb);
    float3 _rndx_tap_h = TonemapReplacer(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, TEXCOORD + float2(0.0f, _rndx_texel.y), 0).rgb);
    _rndx_tonemapped_color = ApplyRCASTaps(_rndx_tonemapped_color, _rndx_tap_b, _rndx_tap_d, _rndx_tap_f, _rndx_tap_h);
  }
  // RenoDX: <<< [Patch: FusedFinalSharpening]
  // RenoDX: >>> [Patch: FusedFinalFilmGrain] [Version: 1.13.00]
  // Description: The standalone final pass is where RenoDX custom film grain runs. This fused permutation is the visible final output whenever it draws, so apply the custom film grain to the tonemapped color here, in the same pipeline position the slim standalone finals apply it. The vanilla film grain earlier in this shader stays under the CustomFilmGrainGate patch and only runs when custom grain is off.
  if (CUSTOM_FILM_GRAIN_TYPE != 0) {
    _rndx_tonemapped_color = renodx::effects::ApplyFilmGrain(_rndx_tonemapped_color, TEXCOORD, CUSTOM_RANDOM, CUSTOM_FILM_GRAIN_STRENGTH * 0.03f);
  }
  // RenoDX: <<< [Patch: FusedFinalFilmGrain]
  // RenoDX: >>> [Patch: FusedFinalFadeRestore] [Version: 1.13.00]
  // Description: Re-emits the vanilla screen-fade lines that were fused with the replaced tone curve so the downstream final-output suite consumes the replaced color through the original variables.
  _2074 = 1.0f - abs(_etcParams.w);
  _2075 = saturate(_etcParams.w);
  _2078 = (_2074 * saturate(_rndx_tonemapped_color.x)) + _2075;
  _2081 = (_2074 * saturate(_rndx_tonemapped_color.y)) + _2075;
  _2084 = (_2074 * saturate(_rndx_tonemapped_color.z)) + _2075;
  // RenoDX: <<< [Patch: FusedFinalFadeRestore]
  if (_colorGradingParams.w > 0.0f) {
    _2089 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _2106 = (((max(0.0f, (1.0f - _2078)) - _2078) * _2089) + _2078);
    _2107 = (((max(0.0f, (1.0f - _2081)) - _2081) * _2089) + _2081);
    _2108 = (((max(0.0f, (1.0f - _2084)) - _2084) * _2089) + _2084);
  } else {
    _2106 = _2078;
    _2107 = _2081;
    _2108 = _2084;
  }
  _2111 = _userImageAdjust.y + 1.0f;
  _2113 = _userImageAdjust.x + 0.5f;
  _2116 = (_2111 * (_2106 + -0.5f)) + _2113;
  _2119 = (_2111 * (_2107 + -0.5f)) + _2113;
  _2122 = (_2111 * (_2108 + -0.5f)) + _2113;
  _2128 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _2130 = (TEXCOORD.x * 2.0f) + -1.0f;
  _2131 = TEXCOORD.y * 2.0f;
  _2132 = 1.0f - _2131;
  _2144 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _2132, ((_projToPrevProj[3].x) * _2130)));
  _2154 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _2132, ((_projToPrevProj[0].x) * _2130))) + (_projToPrevProj[0].w)) / _2144) - _2130;
  _2164 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _2132, ((_projToPrevProj[1].x) * _2130))) + (_projToPrevProj[1].w)) / _2144) - _2132;
  if (_localToneMappingParams.w > 0.0f) {
    _2177 = saturate(1.0f - (sqrt((_2164 * _2164) + (_2154 * _2154)) * 2.0f));  // [sem: expr_sat]
  } else {
    _2177 = 1.0f;  // [sem: expr_sat]
  }
  _2178 = abs(_2130);
  _2180 = abs(_2131 + -1.0f);
  // RenoDX: >>> [Patch: FinalVignetteStrength] [Version: 1.16.00]
  // Description: The native final pass derives its vignette attenuation from _postProcessParams.x and the squared screen-space radius. This block multiplies only that native coefficient by CUSTOM_VIGNETTE so the control scales the existing vignette without changing its center, falloff equation, saturation, or output routing. CUSTOM_VIGNETTE resolves to 1 when RenoDX is Off, restoring the native expression.
  _2187 = saturate(1.0f - ((_postProcessParams.x * CUSTOM_VIGNETTE * _2177) * dot(float2(_2178, _2180), float2(_2178, _2180))));  // [sem: expr_sat]
  // RenoDX: <<< [Patch: FinalVignetteStrength]
  if (!(SV_Position.y < _viewDir.w)) {
    _2197 = (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w)));
  } else {
    _2197 = false;
  }
  SV_Target.x = select(_2197, (exp2(log2(saturate(mad(_colorBlind0.z, _2122, mad(_colorBlind0.y, _2119, (_colorBlind0.x * _2116))))) * _2128) * _2187), 0.0f);
  SV_Target.y = select(_2197, (exp2(log2(saturate(mad(_colorBlind1.z, _2122, mad(_colorBlind1.y, _2119, (_colorBlind1.x * _2116))))) * _2128) * _2187), 0.0f);
  SV_Target.z = select(_2197, (exp2(log2(saturate(mad(_colorBlind2.z, _2122, mad(_colorBlind2.y, _2119, (_colorBlind2.x * _2116))))) * _2128) * _2187), 0.0f);
  SV_Target.w = _18.w;
  // RenoDX: >>> [Patch: FinalizePostProcessSDR] [Version: 1.16.00]
  // Description: Runs the shared SDR finalizer after the native output has been assembled so enabled RenoDX display adjustments are applied once. Its effective controls are neutral when RenoDX is Off.
  SV_Target.xyz = FinalizeSDR(SV_Target.xyz, _sunDirection.y, _moonDirection.y);
  // RenoDX: <<< [Patch: FinalizePostProcessSDR]
  return SV_Target;
}
