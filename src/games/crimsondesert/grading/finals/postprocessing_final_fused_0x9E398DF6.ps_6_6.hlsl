Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

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
  float _290;
  float _291;
  float _529;
  float _530;
  float _531;
  float _776;
  float _777;
  float _778;
  float _879;
  float _1057;
  float _1058;
  float _1059;
  float _1294;
  float _1295;
  float _1296;
  float _1390;
  float _1391;
  float _1392;
  float _1477;
  float _1478;
  float _1479;
  float _1564;
  float _1565;
  float _1566;
  float _1703;
  float _1704;
  float _1705;
  float _1741;
  float _1742;
  float _1743;
  float _1812;
  float _1869;
  float _1870;
  float _1871;
  float _52;
  float _53;
  float _55;
  float _56;
  float _58;
  float _71;
  float _73;
  float _81;
  float _94;
  float _96;
  float _98;
  float _100;
  float _116;
  float _130;
  float _144;
  float _145;
  float _149;
  float _152;
  float _155;
  float _162;
  float _169;
  float _176;
  float _177;
  float _178;
  float _179;
  float _180;
  float _181;
  float _182;
  float _198;
  float _214;
  float _230;
  float _231;
  float _232;
  float _233;
  float _234;
  bool _237;
  float _251;
  float _252;
  float _253;
  float _254;
  float _257;
  float _260;
  float _264;
  float _268;
  float _272;
  float _292;
  float _304;
  float _316;
  float _328;
  float _335;
  float _342;
  float _349;
  float _352;
  float _353;
  float _354;
  float _366;
  float _378;
  float _390;
  float _391;
  float _394;
  float _397;
  float _400;
  float _407;
  float _414;
  float _421;
  float _422;
  float _423;
  float _424;
  float _425;
  float _426;
  float _427;
  float _443;
  float _459;
  float _475;
  float _476;
  float _477;
  float _478;
  float _479;
  float _491;
  float _492;
  float _493;
  float _494;
  float _497;
  float _500;
  float _504;
  float _508;
  float _512;
  float _532;
  float _544;
  float _556;
  float _568;
  float _593;
  float _597;
  float _599;
  float _600;
  float _601;
  float _613;
  float _625;
  float _637;
  float _638;
  float _641;
  float _644;
  float _647;
  float _654;
  float _661;
  float _668;
  float _669;
  float _670;
  float _671;
  float _672;
  float _673;
  float _674;
  float _690;
  float _706;
  float _722;
  float _723;
  float _724;
  float _725;
  float _726;
  float _738;
  float _739;
  float _740;
  float _741;
  float _744;
  float _747;
  float _751;
  float _755;
  float _759;
  float _779;
  float _791;
  float _803;
  float _815;
  float _840;
  float _841;
  float _842;
  float _843;
  float _845;
  float _848;
  float _851;
  float _854;
  float _856;
  float _861;
  float _870;
  float _880;
  float _881;
  float _882;
  float _894;
  float _906;
  float _918;
  float _919;
  float _922;
  float _925;
  float _928;
  float _935;
  float _942;
  float _949;
  float _950;
  float _951;
  float _952;
  float _953;
  float _954;
  float _955;
  float _971;
  float _987;
  float _1003;
  float _1004;
  float _1005;
  float _1006;
  float _1007;
  float _1019;
  float _1020;
  float _1021;
  float _1022;
  float _1025;
  float _1028;
  float _1032;
  float _1036;
  float _1040;
  float _1060;
  float _1072;
  float _1084;
  float _1096;
  float _1104;
  float _1112;
  float _1120;
  float _1123;
  float _1132;
  float _1140;
  float _1146;
  float _1152;
  float _1153;
  float _1157;
  float _1160;
  float _1163;
  float _1170;
  float _1177;
  float _1184;
  float _1185;
  float _1186;
  float _1187;
  float _1188;
  float _1189;
  float _1190;
  float _1206;
  float _1222;
  float _1238;
  float _1239;
  float _1240;
  float _1241;
  float _1242;
  float _1256;
  float _1257;
  float _1258;
  float _1259;
  float _1262;
  float _1265;
  float _1269;
  float _1273;
  float _1277;
  float _1299;
  float _1302;
  float _1305;
  float _1306;
  float _1315;
  float _1324;
  float _1333;
  float _1340;
  float _1352;
  float _1353;
  float _1354;
  float _1355;
  float _1358;
  float _1361;
  float _1365;
  float _1369;
  float _1373;
  float _1393;
  float _1402;
  float _1411;
  float _1420;
  float _1427;
  float _1439;
  float _1440;
  float _1441;
  float _1442;
  float _1445;
  float _1448;
  float _1452;
  float _1456;
  float _1460;
  float _1480;
  float _1489;
  float _1498;
  float _1507;
  float _1514;
  float _1526;
  float _1527;
  float _1528;
  float _1529;
  float _1532;
  float _1535;
  float _1539;
  float _1543;
  float _1547;
  float _1567;
  float _1576;
  float _1585;
  float _1594;
  float _1601;
  float _1605;
  float _1621;
  float _1624;
  float _1709;
  float _1710;
  float _1713;
  float _1716;
  float _1719;
  float _1724;
  float _1746;
  float _1748;
  float _1751;
  float _1754;
  float _1757;
  float _1763;
  float _1765;
  float _1766;
  float _1767;
  float _1779;
  float _1789;
  float _1799;
  float _1813;
  float _1815;
  float _1822;
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
  _94 = (_exposure0.x * 0.65f) * _userImageAdjust.z;
  _96 = _94 * _slopeParams.x;
  _98 = _94 * _slopeParams.y;
  _100 = _94 * _slopeParams.z;
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
  _1709 = 1.0f - abs(_etcParams.w);
  _1710 = saturate(_etcParams.w);
  _1719 = (_1709 * saturate(_rndx_tonemapped_color.x)) + _1710;
  _1716 = (_1709 * saturate(_rndx_tonemapped_color.y)) + _1710;
  _1713 = (_1709 * saturate(_rndx_tonemapped_color.z)) + _1710;
  // RenoDX: <<< [Patch: FusedFinalFadeRestore]
  if (_colorGradingParams.w > 0.0f) {
    _1724 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _1741 = (((max(0.0f, (1.0f - _1719)) - _1719) * _1724) + _1719);
    _1742 = (((max(0.0f, (1.0f - _1716)) - _1716) * _1724) + _1716);
    _1743 = (((max(0.0f, (1.0f - _1713)) - _1713) * _1724) + _1713);
  } else {
    _1741 = _1719;
    _1742 = _1716;
    _1743 = _1713;
  }
  _1746 = _userImageAdjust.y + 1.0f;
  _1748 = _userImageAdjust.x + 0.5f;
  _1751 = (_1746 * (_1743 + -0.5f)) + _1748;
  _1754 = (_1746 * (_1742 + -0.5f)) + _1748;
  _1757 = (_1746 * (_1741 + -0.5f)) + _1748;
  _1763 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _1765 = (TEXCOORD.x * 2.0f) + -1.0f;
  _1766 = TEXCOORD.y * 2.0f;
  _1767 = 1.0f - _1766;
  _1779 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _1767, ((_projToPrevProj[3].x) * _1765)));
  _1789 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _1767, ((_projToPrevProj[0].x) * _1765))) + (_projToPrevProj[0].w)) / _1779) - _1765;
  _1799 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _1767, ((_projToPrevProj[1].x) * _1765))) + (_projToPrevProj[1].w)) / _1779) - _1767;
  if (_localToneMappingParams.w > 0.0f) {
    _1812 = saturate(1.0f - (sqrt((_1799 * _1799) + (_1789 * _1789)) * 2.0f));  // [sem: expr_sat]
  } else {
    _1812 = 1.0f;  // [sem: expr_sat]
  }
  _1813 = abs(_1765);
  _1815 = abs(_1766 + -1.0f);
  // RenoDX: >>> [Patch: FinalVignetteStrength] [Version: 1.16.00]
  // Description: The native final pass derives its vignette attenuation from _postProcessParams.x and the squared screen-space radius. This block multiplies only that native coefficient by CUSTOM_VIGNETTE so the control scales the existing vignette without changing its center, falloff equation, saturation, or output routing. CUSTOM_VIGNETTE resolves to 1 when RenoDX is Off, restoring the native expression.
  _1822 = saturate(1.0f - ((_postProcessParams.x * CUSTOM_VIGNETTE * _1812) * dot(float2(_1813, _1815), float2(_1813, _1815))));  // [sem: expr_sat]
  // RenoDX: <<< [Patch: FinalVignetteStrength]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _1869 = (exp2(log2(saturate(mad(_colorBlind0.z, _1757, mad(_colorBlind0.y, _1754, (_colorBlind0.x * _1751))))) * _1763) * _1822);
      _1870 = (exp2(log2(saturate(mad(_colorBlind1.z, _1757, mad(_colorBlind1.y, _1754, (_colorBlind1.x * _1751))))) * _1763) * _1822);
      _1871 = (exp2(log2(saturate(mad(_colorBlind2.z, _1757, mad(_colorBlind2.y, _1754, (_colorBlind2.x * _1751))))) * _1763) * _1822);
    } else {
      _1869 = 0.0f;
      _1870 = 0.0f;
      _1871 = 0.0f;
    }
  } else {
    _1869 = 0.0f;
    _1870 = 0.0f;
    _1871 = 0.0f;
  }
  SV_Target.x = _1869;
  SV_Target.y = _1870;
  SV_Target.z = _1871;
  SV_Target.w = _18.w;
  // RenoDX: >>> [Patch: FinalizePostProcessSDR] [Version: 1.13.00]
  // Description: Runs the shared SDR finalizer after the native output has been assembled so enabled RenoDX display adjustments are applied once. Its effective controls are neutral when RenoDX is Off.
  SV_Target.xyz = FinalizeSDR(SV_Target.xyz, _sunDirection.y, _moonDirection.y);
  // RenoDX: <<< [Patch: FinalizePostProcessSDR]
  return SV_Target;
}
