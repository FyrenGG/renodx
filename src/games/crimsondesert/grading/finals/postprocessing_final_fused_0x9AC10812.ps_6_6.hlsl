Texture2D<float4> __3__36__0__0__g_sceneColor : register(t9, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t29, space36);

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
  row_major float4x4 _viewProj;
  row_major float4x4 _viewProjNoJitter;
  row_major float4x4 _viewProjRelative;
  row_major float4x4 _viewProjRelativeNoJitter;
  row_major float4x4 _invViewProj;
  row_major float4x4 _invViewProjRelative;
  row_major float4x4 _invViewProjRelativeNoJitter;
  row_major float4x4 _viewProjRelativeOrtho;
  float4 _sunDirection;
  float4 _moonDirection;
  float4 _moonRight;
  float4 _moonUp;
  float4 _ssaoRandomDirection[16];
  row_major float4x4 _view;
  row_major float4x4 _viewRelative;
  row_major float4x4 _viewRelativePrev;
  row_major float4x4 _proj;
  row_major float4x4 _projNoJitter;
  float4 _viewPosPrev;
  row_major float4x4 _viewProjNoJitterPrev;
  row_major float4x4 _viewProjRelativePrev;
  row_major float4x4 _viewProjRelativeNoJitterPrev;
  row_major float4x4 _invViewProjPrev;
  row_major float4x4 _invViewProjRelativePrev;
  row_major float4x4 _projToPrevProj;
  row_major float4x4 _projToPrevProjNoTranslation;
  row_major float4x4 _viewProjectionTexScale;
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
  min16float4 _debugBaseColor16;
  min16float4 _debugNormal16;
  min16float4 _debugMaterial16;
  min16float4 _debugMultiplier16;
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

#define RENODX_TONEMAP_EXTERNAL_SCENE_CONSTANT_BUFFER 1
#define RENODX_TONEMAP_SCENE_TIME_W _time.w
#include "../tonemap.hlsli"



#if 0 // Provided by tonemap.hlsli
cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};
#endif

#if 0 // Provided by tonemap.hlsli
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
#endif

#if 0 // Provided by tonemap.hlsli
cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};
#endif

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
  float _697;
  float _733;
  float _744;
  float _1070;
  float _1106;
  float _1117;
  float _1443;
  float _1479;
  float _1490;
  float _1816;
  float _1852;
  float _1863;
  float _2056;
  float _2057;
  float _2058;
  float _2094;
  float _2095;
  float _2096;
  float _2198;
  float _52;
  float _53;
  float _57;
  float _62;
  float _66;
  float _71;
  float _75;
  float _81;
  uint _94;
  uint _95;
  float _100;
  float _130;
  float _132;
  float _134;
  float _148;
  float _149;
  float _150;
  float _152;
  float _159;
  float _162;
  float _163;
  float _166;
  float _169;
  float _172;
  float _175;
  float _178;
  float _181;
  float _182;
  float _186;
  float _187;
  float _188;
  float _197;
  float _213;
  float _214;
  float _215;
  float _229;
  float _230;
  float _231;
  float _234;
  float _237;
  float _240;
  float _244;
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
  bool _308;
  bool _309;
  bool _310;
  bool _311;
  float _320;
  float _327;
  float _340;
  float _344;
  float _350;
  float _363;
  float _364;
  float _365;
  float _366;
  float _367;
  float _368;
  float _370;
  float _372;
  float _374;
  float _411;
  float _412;
  float _413;
  float _429;
  float _430;
  float _431;
  float _453;
  float _454;
  float _455;
  float _471;
  float _472;
  float _473;
  float _486;
  float _487;
  float _488;
  float _490;
  float _498;
  float4 _505;
  float4 _510;
  float4 _515;
  float4 _520;
  float _557;
  float _558;
  float _559;
  float _560;
  float _567;
  float _570;
  float _571;
  float _574;
  float _577;
  float _580;
  float _583;
  float _586;
  float _589;
  float _590;
  float _594;
  float _595;
  float _596;
  float _605;
  float _621;
  float _622;
  float _623;
  float _637;
  float _638;
  float _639;
  float _642;
  float _645;
  float _648;
  float _652;
  float _657;
  float _670;
  float _671;
  float _672;
  float _673;
  float _677;
  float _688;
  float _698;
  float _699;
  float _700;
  float _701;
  float _708;
  float _711;
  float _713;
  bool _716;
  bool _717;
  bool _718;
  bool _719;
  float _728;
  float _735;
  float _748;
  float _752;
  float _758;
  float _771;
  float _772;
  float _773;
  float _774;
  float _775;
  float _776;
  float _778;
  float _780;
  float _782;
  float _819;
  float _820;
  float _821;
  float _837;
  float _838;
  float _839;
  float _861;
  float _862;
  float _863;
  float _879;
  float _880;
  float _881;
  float _895;
  float _930;
  float _931;
  float _932;
  float _933;
  float _940;
  float _943;
  float _944;
  float _947;
  float _950;
  float _953;
  float _956;
  float _959;
  float _962;
  float _963;
  float _967;
  float _968;
  float _969;
  float _978;
  float _994;
  float _995;
  float _996;
  float _1010;
  float _1011;
  float _1012;
  float _1015;
  float _1018;
  float _1021;
  float _1025;
  float _1030;
  float _1043;
  float _1044;
  float _1045;
  float _1046;
  float _1050;
  float _1061;
  float _1071;
  float _1072;
  float _1073;
  float _1074;
  float _1081;
  float _1084;
  float _1086;
  bool _1089;
  bool _1090;
  bool _1091;
  bool _1092;
  float _1101;
  float _1108;
  float _1121;
  float _1125;
  float _1131;
  float _1144;
  float _1145;
  float _1146;
  float _1147;
  float _1148;
  float _1149;
  float _1151;
  float _1153;
  float _1155;
  float _1192;
  float _1193;
  float _1194;
  float _1210;
  float _1211;
  float _1212;
  float _1234;
  float _1235;
  float _1236;
  float _1252;
  float _1253;
  float _1254;
  float _1268;
  float _1303;
  float _1304;
  float _1305;
  float _1306;
  float _1313;
  float _1316;
  float _1317;
  float _1320;
  float _1323;
  float _1326;
  float _1329;
  float _1332;
  float _1335;
  float _1336;
  float _1340;
  float _1341;
  float _1342;
  float _1351;
  float _1367;
  float _1368;
  float _1369;
  float _1383;
  float _1384;
  float _1385;
  float _1388;
  float _1391;
  float _1394;
  float _1398;
  float _1403;
  float _1416;
  float _1417;
  float _1418;
  float _1419;
  float _1423;
  float _1434;
  float _1444;
  float _1445;
  float _1446;
  float _1447;
  float _1454;
  float _1457;
  float _1459;
  bool _1462;
  bool _1463;
  bool _1464;
  bool _1465;
  float _1474;
  float _1481;
  float _1494;
  float _1498;
  float _1504;
  float _1517;
  float _1518;
  float _1519;
  float _1520;
  float _1521;
  float _1522;
  float _1524;
  float _1526;
  float _1528;
  float _1565;
  float _1566;
  float _1567;
  float _1583;
  float _1584;
  float _1585;
  float _1607;
  float _1608;
  float _1609;
  float _1625;
  float _1626;
  float _1627;
  float _1641;
  float _1676;
  float _1677;
  float _1678;
  float _1679;
  float _1686;
  float _1689;
  float _1690;
  float _1693;
  float _1696;
  float _1699;
  float _1702;
  float _1705;
  float _1708;
  float _1709;
  float _1713;
  float _1714;
  float _1715;
  float _1724;
  float _1740;
  float _1741;
  float _1742;
  float _1756;
  float _1757;
  float _1758;
  float _1761;
  float _1764;
  float _1767;
  float _1771;
  float _1776;
  float _1789;
  float _1790;
  float _1791;
  float _1792;
  float _1796;
  float _1807;
  float _1817;
  float _1818;
  float _1819;
  float _1820;
  float _1827;
  float _1830;
  float _1832;
  bool _1835;
  bool _1836;
  bool _1837;
  bool _1838;
  float _1847;
  float _1854;
  float _1867;
  float _1871;
  float _1877;
  float _1890;
  float _1891;
  float _1892;
  float _1893;
  float _1894;
  float _1895;
  float _1897;
  float _1899;
  float _1901;
  float _1938;
  float _1939;
  float _1940;
  float _1956;
  float _1957;
  float _1958;
  float _1980;
  float _1981;
  float _1982;
  float _1998;
  float _1999;
  float _2000;
  float _2014;
  float _2023;
  float _2030;
  float _2033;
  float _2065;
  float _2069;
  float _2070;
  float _2071;
  float _2072;
  float _2077;
  float _2102;
  float _2106;
  float _2107;
  float _2108;
  float _2109;
  float _2139;
  float _2150;
  float _2151;
  float _2152;
  float _2180;
  float _2183;
  float _2184;
  float _2201;
  float _2202;
  float _2206;
  bool _2215;
  _18 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_postProcessParams.w > 0.0f) {
    _41 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003000000026077032f) + -0.001500000013038516f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
    _42 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003000000026077032f) + -0.001500000013038516f)) + TEXCOORD.y)), 0.0f))).z);
  } else {
    _41 = _18.x;
    _42 = _18.z;
  }
  // RenoDX: >>> [Patch: FinalChromaticAberration] [Version: 1.13.00]
  _41 = lerp(_18.x, _41, CUSTOM_CHROMATIC_ABERRATION);
  _42 = lerp(_18.z, _42, CUSTOM_CHROMATIC_ABERRATION);
  // RenoDX: <<< [Patch: FinalChromaticAberration]

  // RenoDX: >>> [Patch: CustomFilmGrainGate] [Version: 1.13.00]
  bool vanilla_film_grain = (_slopeParams.w > 0.0f) && CUSTOM_FILM_GRAIN_TYPE == 0;
  // RenoDX: <<< [Patch: CustomFilmGrainGate]
  if (vanilla_film_grain) {
    _52 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    _53 = _52 * 0.7692307829856873f;
    _57 = frac(abs(_53));
    _62 = _52 * 0.08130080997943878f;
    _66 = frac(abs(_62));
    _71 = ((select((_62 >= (-0.0f - _62)), _66, (-0.0f - _66)) * 1230.0f) + 10.0f) * ((select((_53 >= (-0.0f - _53)), _57, (-0.0f - _57)) * 13.0f) + 1.0f);
    _75 = frac(abs(_71));
    _81 = ((0.007500052452087402f - (select((_71 >= (-0.0f - _71)), _75, (-0.0f - _75)) * 0.15000000596046448f)) * _slopeParams.w) + 1.0f;
    _86 = (_81 * _41);
    _87 = (_81 * _18.y);
    _88 = (_81 * _42);
  } else {
    _86 = _41;
    _87 = _18.y;
    _88 = _42;
  }
  _94 = uint(_screenSizeAndInvSize.x * TEXCOORD.x);
  _95 = uint(_screenSizeAndInvSize.y * TEXCOORD.y);
  _100 = _userImageAdjust.z * _exposure0.x;
  _130 = _100 * _slopeParams.x;
  _132 = _100 * _slopeParams.y;
  _134 = _100 * _slopeParams.z;
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
  _2065 = 1.0f - abs(_etcParams.w);
  _2069 = saturate(_etcParams.w);
  _2070 = (_2065 * saturate(_rndx_tonemapped_color.x)) + _2069;
  _2071 = (_2065 * saturate(_rndx_tonemapped_color.y)) + _2069;
  _2072 = (_2065 * saturate(_rndx_tonemapped_color.z)) + _2069;
  // RenoDX: <<< [Patch: FusedFinalFadeRestore]
  if (_colorGradingParams.w > 0.0f) {
    _2077 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _2094 = (((max(0.0f, (1.0f - _2070)) - _2070) * _2077) + _2070);
    _2095 = (((max(0.0f, (1.0f - _2071)) - _2071) * _2077) + _2071);
    _2096 = (((max(0.0f, (1.0f - _2072)) - _2072) * _2077) + _2072);
  } else {
    _2094 = _2070;
    _2095 = _2071;
    _2096 = _2072;
  }
  _2102 = _userImageAdjust.y + 1.0f;
  _2106 = _userImageAdjust.x + 0.5f;
  _2107 = ((_2094 + -0.5f) * _2102) + _2106;
  _2108 = ((_2095 + -0.5f) * _2102) + _2106;
  _2109 = ((_2096 + -0.5f) * _2102) + _2106;
  _2139 = 2.200000047683716f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.800000011920929f) + 2.200000047683716f);
  _2150 = (TEXCOORD.x * 2.0f) + -1.0f;
  _2151 = TEXCOORD.y * 2.0f;
  _2152 = 1.0f - _2151;
  _2180 = mad((_projToPrevProj[2].w), 1.0000000116860974e-07f, mad((_projToPrevProj[1].w), _2152, ((_projToPrevProj[0].w) * _2150))) + (_projToPrevProj[3].w);
  _2183 = ((mad((_projToPrevProj[2].x), 1.0000000116860974e-07f, mad((_projToPrevProj[1].x), _2152, ((_projToPrevProj[0].x) * _2150))) + (_projToPrevProj[3].x)) / _2180) - _2150;
  _2184 = ((mad((_projToPrevProj[2].y), 1.0000000116860974e-07f, mad((_projToPrevProj[1].y), _2152, ((_projToPrevProj[0].y) * _2150))) + (_projToPrevProj[3].y)) / _2180) - _2152;
  if (_localToneMappingParams.w > 0.0f) {
    _2198 = saturate(1.0f - (sqrt((_2184 * _2184) + (_2183 * _2183)) * 2.0f));  // [sem: expr_sat]
  } else {
    _2198 = 1.0f;  // [sem: expr_sat]
  }
  _2201 = abs(_2150);
  _2202 = abs(_2151 + -1.0f);
  _2206 = saturate(1.0f - ((_2198 * _postProcessParams.x * CUSTOM_VIGNETTE) * dot(float2(_2201, _2202), float2(_2201, _2202))));  // [sem: expr_sat]
  _2215 = (!(SV_Position.y < _viewDir.w)) && (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w)));
  SV_Target.x = select(_2215, (_2206 * exp2(log2(saturate(mad(_colorBlind0.z, _2109, mad(_colorBlind0.y, _2108, (_colorBlind0.x * _2107))))) * _2139)), 0.0f);
  SV_Target.y = select(_2215, (_2206 * exp2(log2(saturate(mad(_colorBlind1.z, _2109, mad(_colorBlind1.y, _2108, (_colorBlind1.x * _2107))))) * _2139)), 0.0f);
  SV_Target.z = select(_2215, (_2206 * exp2(log2(saturate(mad(_colorBlind2.z, _2109, mad(_colorBlind2.y, _2108, (_colorBlind2.x * _2107))))) * _2139)), 0.0f);
  SV_Target.w = _18.w;

  // RenoDX: >>> [Patch: FinalizePostProcessSDR] [Version: 1.13.00]
  SV_Target.xyz = FinalizeSDR(SV_Target.xyz, _sunDirection.y, _moonDirection.y);
  // RenoDX: <<< [Patch: FinalizePostProcessSDR]
  return SV_Target;
}
