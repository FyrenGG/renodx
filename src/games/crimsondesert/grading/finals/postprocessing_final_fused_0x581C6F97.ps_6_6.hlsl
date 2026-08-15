Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

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
// Description: Reuses this shader's native SceneConstantBuffer time field, imports the shared tonemap declarations consumed by the fused final grading path, and begins suppressing the duplicate native exposure declaration.
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

// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Begins suppressing native GlobalPushConstants because tonemap.hlsli provides the ABI-compatible live declaration consumed by the fused final grading path.
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

// RenoDX: >>> [Patch: RenoDXDependencyBindings] [Version: 1.16.00]
// Description: Begins suppressing the native ColorBlindConstantBuffer because tonemap.hlsli provides the ABI-compatible live declaration used by the fused final grading path.
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
  float _1286;
  float _1287;
  float _1288;
  float _1396;
  float _1397;
  float _1398;
  float _1497;
  float _1498;
  float _1499;
  float _1598;
  float _1599;
  float _1600;
  float _1690;
  float _1691;
  float _1692;
  float _1728;
  float _1729;
  float _1730;
  float _1831;
  float _1853;
  float _1854;
  float _1855;
  float _52;
  float _53;
  float _57;
  float _62;
  float _66;
  float _71;
  float _75;
  float _81;
  float _94;
  float _124;
  float _126;
  float _128;
  float _142;
  float _143;
  float _144;
  float _146;
  float _153;
  float _154;
  float _155;
  float _174;
  float _175;
  float _176;
  float _177;
  float _178;
  float _179;
  float _180;
  float _181;
  float _182;
  float _228;
  float _229;
  float _230;
  float _231;
  float _232;
  float _233;
  float _234;
  bool _239;
  float _251;
  float _252;
  float _253;
  float _254;
  float _260;
  float _263;
  float _270;
  float _271;
  float _272;
  float _301;
  float _326;
  float _327;
  float _328;
  float _347;
  float _348;
  float _349;
  float _352;
  float _353;
  float _354;
  float _388;
  float _389;
  float _390;
  float _391;
  float _398;
  float _399;
  float _400;
  float _419;
  float _420;
  float _421;
  float _422;
  float _423;
  float _424;
  float _425;
  float _426;
  float _427;
  float _473;
  float _474;
  float _475;
  float _476;
  float _477;
  float _478;
  float _479;
  float _491;
  float _492;
  float _493;
  float _494;
  float _500;
  float _503;
  float _510;
  float _511;
  float _512;
  float _541;
  float _566;
  float _567;
  float _568;
  float _593;
  float _597;
  float _599;
  float _600;
  float _601;
  float _635;
  float _636;
  float _637;
  float _638;
  float _645;
  float _646;
  float _647;
  float _666;
  float _667;
  float _668;
  float _669;
  float _670;
  float _671;
  float _672;
  float _673;
  float _674;
  float _720;
  float _721;
  float _722;
  float _723;
  float _724;
  float _725;
  float _726;
  float _738;
  float _739;
  float _740;
  float _741;
  float _747;
  float _750;
  float _757;
  float _758;
  float _759;
  float _788;
  float _813;
  float _814;
  float _815;
  float _840;
  float _841;
  float _842;
  float _843;
  float _845;
  float _852;
  float _853;
  float _854;
  float _856;
  float _868;
  float _870;
  float _880;
  float _881;
  float _882;
  float _916;
  float _917;
  float _918;
  float _919;
  float _926;
  float _927;
  float _928;
  float _947;
  float _948;
  float _949;
  float _950;
  float _951;
  float _952;
  float _953;
  float _954;
  float _955;
  float _1001;
  float _1002;
  float _1003;
  float _1004;
  float _1005;
  float _1006;
  float _1007;
  float _1019;
  float _1020;
  float _1021;
  float _1022;
  float _1028;
  float _1031;
  float _1038;
  float _1039;
  float _1040;
  float _1069;
  float _1094;
  float _1095;
  float _1096;
  float _1118;
  float _1119;
  float _1120;
  float _1122;
  float _1130;
  float _1145;
  float _1146;
  float _1147;
  float _1148;
  float _1155;
  float _1156;
  float _1157;
  float _1176;
  float _1177;
  float _1178;
  float _1179;
  float _1180;
  float _1181;
  float _1182;
  float _1183;
  float _1184;
  float _1230;
  float _1231;
  float _1232;
  float _1233;
  float _1234;
  float _1235;
  float _1236;
  float _1248;
  float _1249;
  float _1250;
  float _1251;
  float _1257;
  float _1260;
  float _1267;
  float _1268;
  float _1269;
  float _1295;
  float _1296;
  float _1297;
  float _1298;
  float _1323;
  float _1324;
  float _1325;
  float _1345;
  float _1358;
  float _1359;
  float _1360;
  float _1361;
  float _1367;
  float _1370;
  float _1377;
  float _1378;
  float _1379;
  float _1399;
  float _1424;
  float _1425;
  float _1426;
  float _1446;
  float _1459;
  float _1460;
  float _1461;
  float _1462;
  float _1468;
  float _1471;
  float _1478;
  float _1479;
  float _1480;
  float _1500;
  float _1525;
  float _1526;
  float _1527;
  float _1547;
  float _1560;
  float _1561;
  float _1562;
  float _1563;
  float _1569;
  float _1572;
  float _1579;
  float _1580;
  float _1581;
  float _1601;
  float _1626;
  float _1627;
  float _1628;
  float _1648;
  float _1657;
  float _1664;
  float _1667;
  float _1699;
  float _1703;
  float _1704;
  float _1705;
  float _1706;
  float _1711;
  float _1736;
  float _1740;
  float _1741;
  float _1742;
  float _1743;
  float _1773;
  float _1784;
  float _1785;
  float _1786;
  float _1814;
  float _1817;
  float _1818;
  float _1834;
  float _1835;
  float _1839;
  _18 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_postProcessParams.w > 0.0f) {
    _41 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003f) + -0.0015f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
    _42 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003f) + -0.0015f)) + TEXCOORD.y)), 0.0f))).z);
  } else {
    _41 = _18.x;
    _42 = _18.z;
  }
  // RenoDX: >>> [Patch: FinalChromaticAberration] [Version: 1.16.00]
  // Description: Scales only the native red/blue chromatic-aberration offsets between the unchanged center sample and native shifted samples. The effective scalar is 1 when RenoDX is Off, preserving the native offsets.
  _41 = lerp(_18.x, _41, CUSTOM_CHROMATIC_ABERRATION);
  _42 = lerp(_18.z, _42, CUSTOM_CHROMATIC_ABERRATION);
  // RenoDX: <<< [Patch: FinalChromaticAberration]

  // RenoDX: >>> [Patch: CustomFilmGrainGate] [Version: 1.16.00]
  // Description: Keeps the native film-grain branch enabled only when its native strength is positive and RenoDX custom film grain is not selected. RenoDX Off clears the custom type flag, restoring the native condition.
  bool vanilla_film_grain = (_slopeParams.w > 0.0f) && CUSTOM_FILM_GRAIN_TYPE == 0;
  if (vanilla_film_grain) {
  // RenoDX: <<< [Patch: CustomFilmGrainGate]
    _52 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    _53 = _52 * 0.7692308f;
    _57 = frac(abs(_53));
    _62 = _52 * 0.08130081f;
    _66 = frac(abs(_62));
    _71 = ((select((_62 >= (-0.0f - _62)), _66, (-0.0f - _66)) * 1230.0f) + 10.0f) * ((select((_53 >= (-0.0f - _53)), _57, (-0.0f - _57)) * 13.0f) + 1.0f);
    _75 = frac(abs(_71));
    _81 = ((0.0075000525f - (select((_71 >= (-0.0f - _71)), _75, (-0.0f - _75)) * 0.15f)) * _slopeParams.w) + 1.0f;
    _86 = (_81 * _41);
    _87 = (_81 * _18.y);
    _88 = (_81 * _42);
  } else {
    _86 = _41;
    _87 = _18.y;
    _88 = _42;
  }
  _94 = (_exposure0.x * 0.65f) * _userImageAdjust.z;
  _124 = _94 * _slopeParams.x;
  _126 = _94 * _slopeParams.y;
  _128 = _94 * _slopeParams.z;
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
  _1699 = 1.0f - abs(_etcParams.w);
  _1703 = saturate(_etcParams.w);
  _1704 = (_1699 * saturate(_rndx_tonemapped_color.x)) + _1703;
  _1705 = (_1699 * saturate(_rndx_tonemapped_color.y)) + _1703;
  _1706 = (_1699 * saturate(_rndx_tonemapped_color.z)) + _1703;
  // RenoDX: <<< [Patch: FusedFinalFadeRestore]
  if (_colorGradingParams.w > 0.0f) {
    _1711 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _1728 = (((max(0.0f, (1.0f - _1704)) - _1704) * _1711) + _1704);
    _1729 = (((max(0.0f, (1.0f - _1705)) - _1705) * _1711) + _1705);
    _1730 = (((max(0.0f, (1.0f - _1706)) - _1706) * _1711) + _1706);
  } else {
    _1728 = _1704;
    _1729 = _1705;
    _1730 = _1706;
  }
  _1736 = _userImageAdjust.y + 1.0f;
  _1740 = _userImageAdjust.x + 0.5f;
  _1741 = ((_1728 + -0.5f) * _1736) + _1740;
  _1742 = ((_1729 + -0.5f) * _1736) + _1740;
  _1743 = ((_1730 + -0.5f) * _1736) + _1740;
  _1773 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _1784 = (TEXCOORD.x * 2.0f) + -1.0f;
  _1785 = TEXCOORD.y * 2.0f;
  _1786 = 1.0f - _1785;
  _1814 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _1786, ((_projToPrevProj[3].x) * _1784))) + (_projToPrevProj[3].w);
  _1817 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _1786, ((_projToPrevProj[0].x) * _1784))) + (_projToPrevProj[0].w)) / _1814) - _1784;
  _1818 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _1786, ((_projToPrevProj[1].x) * _1784))) + (_projToPrevProj[1].w)) / _1814) - _1786;
  if (_localToneMappingParams.w > 0.0f) {
    _1831 = saturate(1.0f - (sqrt((_1818 * _1818) + (_1817 * _1817)) * 2.0f));  // [sem: expr_sat]
  } else {
    _1831 = 1.0f;  // [sem: expr_sat]
  }
  _1834 = abs(_1784);
  _1835 = abs(_1785 + -1.0f);
  // RenoDX: >>> [Patch: FinalVignetteStrength] [Version: 1.16.00]
  // Description: The native final pass derives its vignette attenuation from _postProcessParams.x and the squared screen-space radius. This block multiplies only that native coefficient by CUSTOM_VIGNETTE so the control scales the existing vignette without changing its center, falloff equation, saturation, or output routing. CUSTOM_VIGNETTE resolves to 1 when RenoDX is Off, restoring the native expression.
  _1839 = saturate(1.0f - ((_1831 * _postProcessParams.x * CUSTOM_VIGNETTE) * dot(float2(_1834, _1835), float2(_1834, _1835))));  // [sem: expr_sat]
  // RenoDX: <<< [Patch: FinalVignetteStrength]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _1853 = (_1839 * exp2(log2(saturate(mad(_colorBlind0.z, _1743, mad(_colorBlind0.y, _1742, (_colorBlind0.x * _1741))))) * _1773));
      _1854 = (_1839 * exp2(log2(saturate(mad(_colorBlind1.z, _1743, mad(_colorBlind1.y, _1742, (_colorBlind1.x * _1741))))) * _1773));
      _1855 = (_1839 * exp2(log2(saturate(mad(_colorBlind2.z, _1743, mad(_colorBlind2.y, _1742, (_colorBlind2.x * _1741))))) * _1773));
    } else {
      _1853 = 0.0f;
      _1854 = 0.0f;
      _1855 = 0.0f;
    }
  } else {
    _1853 = 0.0f;
    _1854 = 0.0f;
    _1855 = 0.0f;
  }
  SV_Target.x = _1853;
  SV_Target.y = _1854;
  SV_Target.z = _1855;
  SV_Target.w = _18.w;

  // RenoDX: >>> [Patch: FinalizePostProcessSDR] [Version: 1.13.00]
  // Description: Runs the shared SDR finalizer after the native output has been assembled so enabled RenoDX display adjustments are applied once. Its effective controls are neutral when RenoDX is Off.
  SV_Target.xyz = FinalizeSDR(SV_Target.xyz, _sunDirection.y, _moonDirection.y);
  // RenoDX: <<< [Patch: FinalizePostProcessSDR]
  return SV_Target;
}
