Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

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
  float4 _17;
  float _40;
  float _41;
  float _85;
  float _86;
  float _87;
  float _282;
  float _318;
  float _329;
  float _660;
  float _696;
  float _707;
  float _1045;
  float _1081;
  float _1092;
  float _1287;
  float _1464;
  float _1500;
  float _1511;
  float _1702;
  float _1703;
  float _1704;
  float _1771;
  float _1827;
  float _1828;
  float _1829;
  float _51;
  float _52;
  float _54;
  float _55;
  float _57;
  float _70;
  float _72;
  float _80;
  float _93;
  float _95;
  float _97;
  float _99;
  float _115;
  float _129;
  float _143;
  float _144;
  float _148;
  float _152;
  float _156;
  float _159;
  float _162;
  float _165;
  float _168;
  float _171;
  float _174;
  float _175;
  float _177;
  float _179;
  float _181;
  float _190;
  float _196;
  float _202;
  float _208;
  float _214;
  float _220;
  float _224;
  float _227;
  float _230;
  float _233;
  float _235;
  float _242;
  float _255;
  float _256;
  float _257;
  float _258;
  float _262;
  float _273;
  float _283;
  float _284;
  float _285;
  float _286;
  float _293;
  float _296;
  float _298;
  bool _299;
  bool _300;
  bool _301;
  bool _302;
  float _313;
  float _320;
  float _333;
  float _337;
  float _343;
  float _348;
  float _353;
  float _358;
  float _359;
  float _360;
  float _361;
  float _363;
  float _365;
  float _367;
  float _374;
  float _381;
  float _388;
  float _392;
  float _396;
  float _400;
  float _416;
  float _432;
  float _448;
  float _454;
  float _460;
  float _466;
  float _471;
  float _476;
  float _481;
  float _484;
  float _485;
  float _486;
  float _498;
  float _510;
  float _522;
  float _523;
  float _526;
  float _530;
  float _534;
  float _537;
  float _540;
  float _543;
  float _546;
  float _549;
  float _552;
  float _553;
  float _555;
  float _557;
  float _559;
  float _568;
  float _574;
  float _580;
  float _586;
  float _592;
  float _598;
  float _602;
  float _605;
  float _608;
  float _611;
  float _613;
  float _620;
  float _633;
  float _634;
  float _635;
  float _636;
  float _640;
  float _651;
  float _661;
  float _662;
  float _663;
  float _664;
  float _671;
  float _674;
  float _676;
  bool _677;
  bool _678;
  bool _679;
  bool _680;
  float _691;
  float _698;
  float _711;
  float _715;
  float _721;
  float _726;
  float _731;
  float _736;
  float _737;
  float _738;
  float _739;
  float _741;
  float _743;
  float _745;
  float _752;
  float _759;
  float _766;
  float _770;
  float _774;
  float _778;
  float _794;
  float _810;
  float _826;
  float _832;
  float _838;
  float _844;
  float _863;
  float _867;
  float _869;
  float _870;
  float _871;
  float _883;
  float _895;
  float _907;
  float _908;
  float _911;
  float _915;
  float _919;
  float _922;
  float _925;
  float _928;
  float _931;
  float _934;
  float _937;
  float _938;
  float _940;
  float _942;
  float _944;
  float _953;
  float _959;
  float _965;
  float _971;
  float _977;
  float _983;
  float _987;
  float _990;
  float _993;
  float _996;
  float _998;
  float _1005;
  float _1018;
  float _1019;
  float _1020;
  float _1021;
  float _1025;
  float _1036;
  float _1046;
  float _1047;
  float _1048;
  float _1049;
  float _1056;
  float _1059;
  float _1061;
  bool _1062;
  bool _1063;
  bool _1064;
  bool _1065;
  float _1076;
  float _1083;
  float _1096;
  float _1100;
  float _1106;
  float _1111;
  float _1116;
  float _1121;
  float _1122;
  float _1123;
  float _1124;
  float _1126;
  float _1128;
  float _1130;
  float _1137;
  float _1144;
  float _1151;
  float _1155;
  float _1159;
  float _1163;
  float _1179;
  float _1195;
  float _1211;
  float _1217;
  float _1223;
  float _1229;
  float _1248;
  float _1249;
  float _1250;
  float _1251;
  float _1253;
  float _1256;
  float _1259;
  float _1262;
  float _1264;
  float _1269;
  float _1278;
  float _1288;
  float _1289;
  float _1290;
  float _1302;
  float _1314;
  float _1326;
  float _1327;
  float _1330;
  float _1334;
  float _1338;
  float _1341;
  float _1344;
  float _1347;
  float _1350;
  float _1353;
  float _1356;
  float _1357;
  float _1359;
  float _1361;
  float _1363;
  float _1372;
  float _1378;
  float _1384;
  float _1390;
  float _1396;
  float _1402;
  float _1406;
  float _1409;
  float _1412;
  float _1415;
  float _1417;
  float _1424;
  float _1437;
  float _1438;
  float _1439;
  float _1440;
  float _1444;
  float _1455;
  float _1465;
  float _1466;
  float _1467;
  float _1468;
  float _1475;
  float _1478;
  float _1480;
  bool _1481;
  bool _1482;
  bool _1483;
  bool _1484;
  float _1495;
  float _1502;
  float _1515;
  float _1519;
  float _1525;
  float _1530;
  float _1535;
  float _1540;
  float _1541;
  float _1542;
  float _1543;
  float _1545;
  float _1547;
  float _1549;
  float _1556;
  float _1563;
  float _1570;
  float _1574;
  float _1578;
  float _1582;
  float _1598;
  float _1614;
  float _1630;
  float _1636;
  float _1642;
  float _1648;
  float _1652;
  float _1653;
  float _1662;
  float _1671;
  float _1680;
  float _1685;
  float _1706;
  float _1708;
  float _1711;
  float _1714;
  float _1717;
  float _1723;
  float _1725;
  float _1726;
  float _1727;
  float _1739;
  float _1749;
  float _1759;
  float _1772;
  float _1774;
  float _1780;
  _17 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_postProcessParams.w > 0.0f) {
    _40 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003f) + -0.0015f)) + TEXCOORD.y)), 0.0f))).z);
    _41 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003f) + -0.0015f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
  } else {
    _40 = _17.z;
    _41 = _17.x;
  }
  // RenoDX: >>> [Patch: FinalChromaticAberration] [Version: 1.16.00]
  // Description: Scales only the native red/blue chromatic-aberration offsets between the unchanged center sample and native shifted samples. The effective scalar is 1 when RenoDX is Off, preserving the native offsets.
  _41 = lerp(_17.x, _41, CUSTOM_CHROMATIC_ABERRATION);
  _40 = lerp(_17.z, _40, CUSTOM_CHROMATIC_ABERRATION);
  // RenoDX: <<< [Patch: FinalChromaticAberration]
  // RenoDX: >>> [Patch: CustomFilmGrainGate] [Version: 1.16.00]
  // Description: Keeps the native film-grain branch enabled only when its native strength is positive and RenoDX custom film grain is not selected. RenoDX Off clears the custom type flag, restoring the native condition.
  bool vanilla_film_grain = (_slopeParams.w > 0.0f) && CUSTOM_FILM_GRAIN_TYPE == 0;
  if (vanilla_film_grain) {
  // RenoDX: <<< [Patch: CustomFilmGrainGate]
    _51 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    _52 = _51 * 0.7692308f;
    _54 = frac(abs(_52));
    _55 = _51 * 0.08130081f;
    _57 = frac(abs(_55));
    _70 = ((select((_55 >= (-0.0f - _55)), _57, (-0.0f - _57)) * 1230.0f) + 10.0f) * ((select((_52 >= (-0.0f - _52)), _54, (-0.0f - _54)) * 13.0f) + 1.0f);
    _72 = frac(abs(_70));
    _80 = ((0.0075000525f - (select((_70 >= (-0.0f - _70)), _72, (-0.0f - _72)) * 0.15f)) * _slopeParams.w) + 1.0f;
    _85 = (_80 * _40);
    _86 = (_80 * _17.y);
    _87 = (_80 * _41);
  } else {
    _85 = _40;
    _86 = _17.y;
    _87 = _41;
  }
  _93 = (_exposure0.x * 0.65f) * _userImageAdjust.z;
  _95 = _93 * _slopeParams.x;
  _97 = _93 * _slopeParams.y;
  _99 = _93 * _slopeParams.z;
  // RenoDX: >>> [Patch: FusedFinalTonemapReplace] [Version: 1.13.00]
  // Description: This standalone-final permutation inlines the vanilla tonemap pipeline directly in the final pass and runs it unconditionally on the raw scene color, so an unreplaced permutation renders the whole screen with the vanilla look whenever the game selects it. This block replaces everything from the color-matrix grade through the per-permutation tone curve and output transform with the shared TonemapReplacer. The vanilla screen fade that was fused with the curve output is re-emitted below so the untouched downstream suite - wash, user brightness and contrast, user gamma, color-blind matrix where present, vignette, letterbox, and the alpha passthrough - keeps running unchanged on the replaced color.
  float3 _rndx_tonemapped_color = TonemapReplacer(float3(_85, _86, _87));
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
  _1652 = 1.0f - abs(_etcParams.w);
  _1653 = saturate(_etcParams.w);
  _1680 = (_1652 * saturate(_rndx_tonemapped_color.x)) + _1653;
  _1671 = (_1652 * saturate(_rndx_tonemapped_color.y)) + _1653;
  _1662 = (_1652 * saturate(_rndx_tonemapped_color.z)) + _1653;
  // RenoDX: <<< [Patch: FusedFinalFadeRestore]
  if (_colorGradingParams.w > 0.0f) {
    _1685 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _1702 = (((max(0.0f, (1.0f - _1680)) - _1680) * _1685) + _1680);
    _1703 = (((max(0.0f, (1.0f - _1671)) - _1671) * _1685) + _1671);
    _1704 = (((max(0.0f, (1.0f - _1662)) - _1662) * _1685) + _1662);
  } else {
    _1702 = _1680;
    _1703 = _1671;
    _1704 = _1662;
  }
  _1706 = _userImageAdjust.y + 1.0f;
  _1708 = _userImageAdjust.x + 0.5f;
  _1711 = ((_1704 + -0.5f) * _1706) + _1708;
  _1714 = ((_1703 + -0.5f) * _1706) + _1708;
  _1717 = ((_1702 + -0.5f) * _1706) + _1708;
  _1723 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _1725 = (TEXCOORD.x * 2.0f) + -1.0f;
  _1726 = TEXCOORD.y * 2.0f;
  _1727 = 1.0f - _1726;
  _1739 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _1727, ((_projToPrevProj[3].x) * _1725)));
  _1749 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _1727, ((_projToPrevProj[0].x) * _1725))) + (_projToPrevProj[0].w)) / _1739) - _1725;
  _1759 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _1727, ((_projToPrevProj[1].x) * _1725))) + (_projToPrevProj[1].w)) / _1739) - _1727;
  if (_localToneMappingParams.w > 0.0f) {
    _1771 = saturate(1.0f - (sqrt((_1759 * _1759) + (_1749 * _1749)) * 2.0f));  // [sem: expr_sat]
  } else {
    _1771 = 1.0f;  // [sem: expr_sat]
  }
  _1772 = abs(_1725);
  _1774 = abs(_1726 + -1.0f);
  // RenoDX: >>> [Patch: FinalVignetteStrength] [Version: 1.16.00]
  // Description: The native final pass derives its vignette attenuation from _postProcessParams.x and the squared screen-space radius. This block multiplies only that native coefficient by CUSTOM_VIGNETTE so the control scales the existing vignette without changing its center, falloff equation, saturation, or output routing. CUSTOM_VIGNETTE resolves to 1 when RenoDX is Off, restoring the native expression.
  _1780 = saturate(1.0f - ((_1771 * _postProcessParams.x * CUSTOM_VIGNETTE) * dot(float2(_1772, _1774), float2(_1772, _1774))));  // [sem: expr_sat]
  // RenoDX: <<< [Patch: FinalVignetteStrength]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _1827 = (exp2(log2(saturate(mad(_colorBlind0.z, _1717, mad(_colorBlind0.y, _1714, (_colorBlind0.x * _1711))))) * _1723) * _1780);
      _1828 = (exp2(log2(saturate(mad(_colorBlind1.z, _1717, mad(_colorBlind1.y, _1714, (_colorBlind1.x * _1711))))) * _1723) * _1780);
      _1829 = (exp2(log2(saturate(mad(_colorBlind2.z, _1717, mad(_colorBlind2.y, _1714, (_colorBlind2.x * _1711))))) * _1723) * _1780);
    } else {
      _1827 = 0.0f;
      _1828 = 0.0f;
      _1829 = 0.0f;
    }
  } else {
    _1827 = 0.0f;
    _1828 = 0.0f;
    _1829 = 0.0f;
  }
  SV_Target.x = _1827;
  SV_Target.y = _1828;
  SV_Target.z = _1829;
  SV_Target.w = _17.w;
  // RenoDX: >>> [Patch: FinalizePostProcessSDR] [Version: 1.13.00]
  // Description: Runs the shared SDR finalizer after the native output has been assembled so enabled RenoDX display adjustments are applied once. Its effective controls are neutral when RenoDX is Off.
  SV_Target.xyz = FinalizeSDR(SV_Target.xyz, _sunDirection.y, _moonDirection.y);
  // RenoDX: <<< [Patch: FinalizePostProcessSDR]
  return SV_Target;
}
