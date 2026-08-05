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

cbuffer __3__35__0__0__ExposureConstantBuffer : register(b31, space35) {
  float4 _exposure0 : packoffset(c000.x);
  float4 _exposure1 : packoffset(c001.x);
  float4 _exposure2 : packoffset(c002.x);
  float4 _exposure3 : packoffset(c003.x);
  float4 _exposure4 : packoffset(c004.x);
};

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

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};

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
  if (_slopeParams.w > 0.0f) {
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
  _116 = exp2(_powerParams.x * log2(max(0.0f, ((_96 * max(0.0f, (((_87 * -0.62179f) - (_86 * 0.08326f)) + (_88 * 1.70505f)))) + _offsetParams.x))));
  _130 = exp2(log2(max(0.0f, ((max(0.0f, (((_87 * 1.1408f) - (_86 * 0.01055f)) - (_88 * 0.13026f))) * _98) + _offsetParams.y))) * _powerParams.y);
  _144 = exp2(log2(max(0.0f, ((max(0.0f, (((_86 * 1.15297f) - (_87 * 0.12897f)) - (_88 * 0.024f))) * _100) + _offsetParams.z))) * _powerParams.z);
  _145 = dot(float3(_116, _130, _144), float3(0.212671f, 0.71516f, 0.072169f));
  _149 = ((_116 - _145) * _powerParams.w) + _145;
  _152 = ((_130 - _145) * _powerParams.w) + _145;
  _155 = ((_144 - _145) * _powerParams.w) + _145;
  _162 = min(max(log2(mad(_155, 0.079223745f, mad(_152, 0.0784336f, (_149 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
  _169 = min(max(log2(mad(_155, 0.07916613f, mad(_152, 0.87846863f, (_149 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
  _176 = min(max(log2(mad(_155, 0.879143f, mad(_152, 0.0784336f, (_149 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
  _177 = _162 * 0.060606062f;
  _178 = _169 * 0.060606062f;
  _179 = _176 * 0.060606062f;
  _180 = _177 * _177;
  _181 = _178 * _178;
  _182 = _179 * _179;
  _198 = min(0.0f, (-0.0f - (((_162 * 0.0072181816f) + ((_180 * 0.4298f) + (((_180 * _180) * ((31.96f - (_162 * 2.4327273f)) + (_180 * 15.5f))) - ((_162 * 0.41624245f) * _180)))) + -0.00232f)));
  _214 = min(0.0f, (-0.0f - (((_169 * 0.0072181816f) + ((_181 * 0.4298f) + (((_181 * _181) * ((31.96f - (_169 * 2.4327273f)) + (_181 * 15.5f))) - ((_169 * 0.41624245f) * _181)))) + -0.00232f)));
  _230 = min(0.0f, (-0.0f - (((_176 * 0.0072181816f) + ((_182 * 0.4298f) + (((_182 * _182) * ((31.96f - (_176 * 2.4327273f)) + (_182 * 15.5f))) - ((_176 * 0.41624245f) * _182)))) + -0.00232f)));
  _231 = -0.0f - _198;
  _232 = -0.0f - _214;
  _233 = -0.0f - _230;
  _234 = dot(float3(_231, _232, _233), float3(0.2126f, 0.7152f, 0.0722f));
  _237 = (_nightToneParm == 1);
  if (_237) {
    _251 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
    _252 = -0.79999995f / _251;
    _253 = -1.2f / _251;
    _254 = 0.20000005f / _251;
    _257 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
    _260 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
    _264 = (_252 + 1.4f) + (_260 * (-0.39999998f - _252));
    _268 = (_253 + 1.6f) + (_260 * (-0.6f - _253));
    _272 = (_254 + 0.9f) + (_260 * (0.5f - _254));
    _289 = (lerp(_272, 1.4f, _257));  // [sem: blended]
    _290 = (lerp(_264, 1.0f, _257));  // [sem: blended]
    _291 = (lerp(_268, 1.2f, _257));  // [sem: blended]
  } else {
    _289 = 1.4f;  // [sem: blended]
    _290 = 1.0f;  // [sem: blended]
    _291 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
  }
  _292 = 1.0f - _291;
  _304 = ((exp2(log2(((saturate((_198 * _198) * _231) * _292) + _291) * _231) * _290) - _234) * _289) + _234;
  _316 = ((exp2(log2(((saturate((_214 * _214) * _232) * _292) + _291) * _232) * _290) - _234) * _289) + _234;
  _328 = ((exp2(log2(((saturate((_230 * _230) * _233) * _292) + _291) * _233) * _290) - _234) * _289) + _234;
  _335 = saturate(exp2(log2(mad(_328, -0.09902974f, mad(_316, -0.09802088f, (_304 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
  _342 = saturate(exp2(log2(mad(_328, -0.098961174f, mad(_316, 1.1519032f, (_304 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
  _349 = saturate(exp2(log2(mad(_328, 1.1510737f, mad(_316, -0.09804345f, (_304 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
  _352 = _localToneMappingParams.x * _88;
  _353 = _localToneMappingParams.x * _87;
  _354 = _localToneMappingParams.x * _86;
  _366 = exp2(log2(max(0.0f, ((max(0.0f, (((_352 * 1.70505f) - (_353 * 0.62179f)) - (_354 * 0.08326f))) * _96) + _offsetParams.x))) * _powerParams.x);
  _378 = exp2(log2(max(0.0f, ((max(0.0f, (((_353 * 1.1408f) - (_352 * 0.13026f)) - (_354 * 0.01055f))) * _98) + _offsetParams.y))) * _powerParams.y);
  _390 = exp2(log2(max(0.0f, ((max(0.0f, (((_352 * -0.024f) - (_353 * 0.12897f)) + (_354 * 1.15297f))) * _100) + _offsetParams.z))) * _powerParams.z);
  _391 = dot(float3(_366, _378, _390), float3(0.212671f, 0.71516f, 0.072169f));
  _394 = ((_366 - _391) * _powerParams.w) + _391;
  _397 = ((_378 - _391) * _powerParams.w) + _391;
  _400 = ((_390 - _391) * _powerParams.w) + _391;
  _407 = min(max(log2(mad(_400, 0.079223745f, mad(_397, 0.0784336f, (_394 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
  _414 = min(max(log2(mad(_400, 0.07916613f, mad(_397, 0.87846863f, (_394 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
  _421 = min(max(log2(mad(_400, 0.879143f, mad(_397, 0.0784336f, (_394 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
  _422 = _407 * 0.060606062f;
  _423 = _414 * 0.060606062f;
  _424 = _421 * 0.060606062f;
  _425 = _422 * _422;
  _426 = _423 * _423;
  _427 = _424 * _424;
  _443 = min(0.0f, (-0.0f - (((_407 * 0.0072181816f) + ((_425 * 0.4298f) + (((_425 * _425) * ((31.96f - (_407 * 2.4327273f)) + (_425 * 15.5f))) - ((_407 * 0.41624245f) * _425)))) + -0.00232f)));
  _459 = min(0.0f, (-0.0f - (((_414 * 0.0072181816f) + ((_426 * 0.4298f) + (((_426 * _426) * ((31.96f - (_414 * 2.4327273f)) + (_426 * 15.5f))) - ((_414 * 0.41624245f) * _426)))) + -0.00232f)));
  _475 = min(0.0f, (-0.0f - (((_421 * 0.0072181816f) + ((_427 * 0.4298f) + (((_427 * _427) * ((31.96f - (_421 * 2.4327273f)) + (_427 * 15.5f))) - ((_421 * 0.41624245f) * _427)))) + -0.00232f)));
  _476 = -0.0f - _443;
  _477 = -0.0f - _459;
  _478 = -0.0f - _475;
  _479 = dot(float3(_476, _477, _478), float3(0.2126f, 0.7152f, 0.0722f));
  if (_237) {
    _491 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
    _492 = -0.79999995f / _491;
    _493 = -1.2f / _491;
    _494 = 0.20000005f / _491;
    _497 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
    _500 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
    _504 = (_492 + 1.4f) + (_500 * (-0.39999998f - _492));
    _508 = (_493 + 1.6f) + (_500 * (-0.6f - _493));
    _512 = (_494 + 0.9f) + (_500 * (0.5f - _494));
    _529 = (lerp(_512, 1.4f, _497));  // [sem: blended]
    _530 = (lerp(_504, 1.0f, _497));  // [sem: blended]
    _531 = (lerp(_508, 1.2f, _497));  // [sem: blended]
  } else {
    _529 = 1.4f;  // [sem: blended]
    _530 = 1.0f;  // [sem: blended]
    _531 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
  }
  _532 = 1.0f - _531;
  _544 = ((exp2(log2(((saturate((_443 * _443) * _476) * _532) + _531) * _476) * _530) - _479) * _529) + _479;
  _556 = ((exp2(log2(((saturate((_459 * _459) * _477) * _532) + _531) * _477) * _530) - _479) * _529) + _479;
  _568 = ((exp2(log2(((saturate((_475 * _475) * _478) * _532) + _531) * _478) * _530) - _479) * _529) + _479;
  _593 = dot(float3(saturate(saturate(exp2(log2(mad(_568, -0.09902974f, mad(_556, -0.09802088f, (_544 * 1.196879f)))) * 2.2f))), saturate(saturate(exp2(log2(mad(_568, -0.098961174f, mad(_556, 1.1519032f, (_544 * -0.052896854f)))) * 2.2f))), saturate(saturate(exp2(log2(mad(_568, 1.1510737f, mad(_556, -0.09804345f, (_544 * -0.052971635f)))) * 2.2f)))), float3(0.1f, 0.7f, 0.2f));
  _597 = dot(float3(saturate(_335), saturate(_342), saturate(_349)), float3(0.1f, 0.7f, 0.2f));
  _599 = _localToneMappingParams.y * _88;
  _600 = _localToneMappingParams.y * _87;
  _601 = _localToneMappingParams.y * _86;
  _613 = exp2(log2(max(0.0f, ((max(0.0f, (((_599 * 1.70505f) - (_600 * 0.62179f)) - (_601 * 0.08326f))) * _96) + _offsetParams.x))) * _powerParams.x);
  _625 = exp2(log2(max(0.0f, ((max(0.0f, (((_600 * 1.1408f) - (_599 * 0.13026f)) - (_601 * 0.01055f))) * _98) + _offsetParams.y))) * _powerParams.y);
  _637 = exp2(log2(max(0.0f, ((max(0.0f, (((_599 * -0.024f) - (_600 * 0.12897f)) + (_601 * 1.15297f))) * _100) + _offsetParams.z))) * _powerParams.z);
  _638 = dot(float3(_613, _625, _637), float3(0.212671f, 0.71516f, 0.072169f));
  _641 = ((_613 - _638) * _powerParams.w) + _638;
  _644 = ((_625 - _638) * _powerParams.w) + _638;
  _647 = ((_637 - _638) * _powerParams.w) + _638;
  _654 = min(max(log2(mad(_647, 0.079223745f, mad(_644, 0.0784336f, (_641 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
  _661 = min(max(log2(mad(_647, 0.07916613f, mad(_644, 0.87846863f, (_641 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
  _668 = min(max(log2(mad(_647, 0.879143f, mad(_644, 0.0784336f, (_641 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
  _669 = _654 * 0.060606062f;
  _670 = _661 * 0.060606062f;
  _671 = _668 * 0.060606062f;
  _672 = _669 * _669;
  _673 = _670 * _670;
  _674 = _671 * _671;
  _690 = min(0.0f, (-0.0f - (((_654 * 0.0072181816f) + ((_672 * 0.4298f) + (((_672 * _672) * ((31.96f - (_654 * 2.4327273f)) + (_672 * 15.5f))) - ((_654 * 0.41624245f) * _672)))) + -0.00232f)));
  _706 = min(0.0f, (-0.0f - (((_661 * 0.0072181816f) + ((_673 * 0.4298f) + (((_673 * _673) * ((31.96f - (_661 * 2.4327273f)) + (_673 * 15.5f))) - ((_661 * 0.41624245f) * _673)))) + -0.00232f)));
  _722 = min(0.0f, (-0.0f - (((_668 * 0.0072181816f) + ((_674 * 0.4298f) + (((_674 * _674) * ((31.96f - (_668 * 2.4327273f)) + (_674 * 15.5f))) - ((_668 * 0.41624245f) * _674)))) + -0.00232f)));
  _723 = -0.0f - _690;
  _724 = -0.0f - _706;
  _725 = -0.0f - _722;
  _726 = dot(float3(_723, _724, _725), float3(0.2126f, 0.7152f, 0.0722f));
  if (_237) {
    _738 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
    _739 = -0.79999995f / _738;
    _740 = -1.2f / _738;
    _741 = 0.20000005f / _738;
    _744 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
    _747 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
    _751 = (_739 + 1.4f) + (_747 * (-0.39999998f - _739));
    _755 = (_740 + 1.6f) + (_747 * (-0.6f - _740));
    _759 = (_741 + 0.9f) + (_747 * (0.5f - _741));
    _776 = (lerp(_759, 1.4f, _744));  // [sem: blended]
    _777 = (lerp(_751, 1.0f, _744));  // [sem: blended]
    _778 = (lerp(_755, 1.2f, _744));  // [sem: blended]
  } else {
    _776 = 1.4f;  // [sem: blended]
    _777 = 1.0f;  // [sem: blended]
    _778 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
  }
  _779 = 1.0f - _778;
  _791 = ((exp2(log2(((saturate((_690 * _690) * _723) * _779) + _778) * _723) * _777) - _726) * _776) + _726;
  _803 = ((exp2(log2(((saturate((_706 * _706) * _724) * _779) + _778) * _724) * _777) - _726) * _776) + _726;
  _815 = ((exp2(log2(((saturate((_722 * _722) * _725) * _779) + _778) * _725) * _777) - _726) * _776) + _726;
  _840 = dot(float3(saturate(saturate(exp2(log2(mad(_815, -0.09902974f, mad(_803, -0.09802088f, (_791 * 1.196879f)))) * 2.2f))), saturate(saturate(exp2(log2(mad(_815, -0.098961174f, mad(_803, 1.1519032f, (_791 * -0.052896854f)))) * 2.2f))), saturate(saturate(exp2(log2(mad(_815, 1.1510737f, mad(_803, -0.09804345f, (_791 * -0.052971635f)))) * 2.2f)))), float3(0.1f, 0.7f, 0.2f));
  _841 = _593 + -0.5f;
  _842 = _597 + -0.5f;
  _843 = _840 + -0.5f;
  _845 = _localToneMappingParams.z * -0.7213475f;
  _848 = exp2((_841 * _841) * _845);
  _851 = exp2((_842 * _842) * _845);
  _854 = exp2((_843 * _843) * _845);
  _856 = dot(float3(_848, _851, _854), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _861 = dot(float3(max(_335, 0.0f), max(_342, 0.0f), max(_349, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _870 = max(dot(float3(((_848 / _856) * _593), ((_851 / _856) * _597), ((_854 / _856) * _840)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _861;
  if (!(_861 > 0.007f)) {
    _879 = ((((_861 * _861) * 20408.16f) * (_870 + -1.0f)) + 1.0f);
  } else {
    _879 = _870;
  }
  _880 = _879 * _88;
  _881 = _879 * _87;
  _882 = _879 * _86;
  _894 = exp2(log2(max(0.0f, ((max(0.0f, (((_880 * 1.70505f) - (_881 * 0.62179f)) - (_882 * 0.08326f))) * _96) + _offsetParams.x))) * _powerParams.x);
  _906 = exp2(log2(max(0.0f, ((max(0.0f, (((_881 * 1.1408f) - (_880 * 0.13026f)) - (_882 * 0.01055f))) * _98) + _offsetParams.y))) * _powerParams.y);
  _918 = exp2(log2(max(0.0f, ((max(0.0f, (((_880 * -0.024f) - (_881 * 0.12897f)) + (_882 * 1.15297f))) * _100) + _offsetParams.z))) * _powerParams.z);
  _919 = dot(float3(_894, _906, _918), float3(0.212671f, 0.71516f, 0.072169f));
  _922 = ((_894 - _919) * _powerParams.w) + _919;
  _925 = ((_906 - _919) * _powerParams.w) + _919;
  _928 = ((_918 - _919) * _powerParams.w) + _919;
  _935 = min(max(log2(mad(_928, 0.079223745f, mad(_925, 0.0784336f, (_922 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
  _942 = min(max(log2(mad(_928, 0.07916613f, mad(_925, 0.87846863f, (_922 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
  _949 = min(max(log2(mad(_928, 0.879143f, mad(_925, 0.0784336f, (_922 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
  _950 = _935 * 0.060606062f;
  _951 = _942 * 0.060606062f;
  _952 = _949 * 0.060606062f;
  _953 = _950 * _950;
  _954 = _951 * _951;
  _955 = _952 * _952;
  _971 = min(0.0f, (-0.0f - (((_935 * 0.0072181816f) + ((_953 * 0.4298f) + (((_953 * _953) * ((31.96f - (_935 * 2.4327273f)) + (_953 * 15.5f))) - ((_935 * 0.41624245f) * _953)))) + -0.00232f)));
  _987 = min(0.0f, (-0.0f - (((_942 * 0.0072181816f) + ((_954 * 0.4298f) + (((_954 * _954) * ((31.96f - (_942 * 2.4327273f)) + (_954 * 15.5f))) - ((_942 * 0.41624245f) * _954)))) + -0.00232f)));
  _1003 = min(0.0f, (-0.0f - (((_949 * 0.0072181816f) + ((_955 * 0.4298f) + (((_955 * _955) * ((31.96f - (_949 * 2.4327273f)) + (_955 * 15.5f))) - ((_949 * 0.41624245f) * _955)))) + -0.00232f)));
  _1004 = -0.0f - _971;
  _1005 = -0.0f - _987;
  _1006 = -0.0f - _1003;
  _1007 = dot(float3(_1004, _1005, _1006), float3(0.2126f, 0.7152f, 0.0722f));
  if (_237) {
    _1019 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
    _1020 = -0.79999995f / _1019;
    _1021 = -1.2f / _1019;
    _1022 = 0.20000005f / _1019;
    _1025 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
    _1028 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
    _1032 = (_1020 + 1.4f) + (_1028 * (-0.39999998f - _1020));
    _1036 = (_1021 + 1.6f) + (_1028 * (-0.6f - _1021));
    _1040 = (_1022 + 0.9f) + (_1028 * (0.5f - _1022));
    _1057 = (lerp(_1040, 1.4f, _1025));  // [sem: blended]
    _1058 = (lerp(_1032, 1.0f, _1025));  // [sem: blended]
    _1059 = (lerp(_1036, 1.2f, _1025));  // [sem: blended]
  } else {
    _1057 = 1.4f;  // [sem: blended]
    _1058 = 1.0f;  // [sem: blended]
    _1059 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
  }
  _1060 = 1.0f - _1059;
  _1072 = ((exp2(log2(((saturate((_971 * _971) * _1004) * _1060) + _1059) * _1004) * _1058) - _1007) * _1057) + _1007;
  _1084 = ((exp2(log2(((saturate((_987 * _987) * _1005) * _1060) + _1059) * _1005) * _1058) - _1007) * _1057) + _1007;
  _1096 = ((exp2(log2(((saturate((_1003 * _1003) * _1006) * _1060) + _1059) * _1006) * _1058) - _1007) * _1057) + _1007;
  _1104 = max(saturate(exp2(log2(mad(_1096, -0.09902974f, mad(_1084, -0.09802088f, (_1072 * 1.196879f)))) * 2.2f)), 0.0f);
  _1112 = max(saturate(exp2(log2(mad(_1096, -0.098961174f, mad(_1084, 1.1519032f, (_1072 * -0.052896854f)))) * 2.2f)), 0.0f);
  _1120 = max(saturate(exp2(log2(mad(_1096, 1.1510737f, mad(_1084, -0.09804345f, (_1072 * -0.052971635f)))) * 2.2f)), 0.0f);
  _1123 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_1123.x < 1e-07f) || (_1123.x == 1.0f))) {
    _1132 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _1140 = exp2(_powerParams.x * log2(max(0.0f, _offsetParams.x)));
    _1146 = exp2(log2(max(0.0f, _offsetParams.y)) * _powerParams.y);
    _1152 = exp2(log2(max(0.0f, _offsetParams.z)) * _powerParams.z);
    _1153 = dot(float3(_1140, _1146, _1152), float3(0.212671f, 0.71516f, 0.072169f));
    _1157 = ((_1140 - _1153) * _powerParams.w) + _1153;
    _1160 = ((_1146 - _1153) * _powerParams.w) + _1153;
    _1163 = ((_1152 - _1153) * _powerParams.w) + _1153;
    _1170 = min(max(log2(mad(_1163, 0.079223745f, mad(_1160, 0.0784336f, (_1157 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1177 = min(max(log2(mad(_1163, 0.07916613f, mad(_1160, 0.87846863f, (_1157 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1184 = min(max(log2(mad(_1163, 0.879143f, mad(_1160, 0.0784336f, (_1157 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1185 = _1170 * 0.060606062f;
    _1186 = _1177 * 0.060606062f;
    _1187 = _1184 * 0.060606062f;
    _1188 = _1185 * _1185;
    _1189 = _1186 * _1186;
    _1190 = _1187 * _1187;
    _1206 = min(0.0f, (-0.0f - (((_1170 * 0.0072181816f) + ((_1188 * 0.4298f) + (((_1188 * _1188) * ((31.96f - (_1170 * 2.4327273f)) + (_1188 * 15.5f))) - ((_1170 * 0.41624245f) * _1188)))) + -0.00232f)));
    _1222 = min(0.0f, (-0.0f - (((_1177 * 0.0072181816f) + ((_1189 * 0.4298f) + (((_1189 * _1189) * ((31.96f - (_1177 * 2.4327273f)) + (_1189 * 15.5f))) - ((_1177 * 0.41624245f) * _1189)))) + -0.00232f)));
    _1238 = min(0.0f, (-0.0f - (((_1184 * 0.0072181816f) + ((_1190 * 0.4298f) + (((_1190 * _1190) * ((31.96f - (_1184 * 2.4327273f)) + (_1190 * 15.5f))) - ((_1184 * 0.41624245f) * _1190)))) + -0.00232f)));
    _1239 = -0.0f - _1206;
    _1240 = -0.0f - _1222;
    _1241 = -0.0f - _1238;
    _1242 = dot(float3(_1239, _1240, _1241), float3(0.2126f, 0.7152f, 0.0722f));
    if (_237) {
      _1256 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _1257 = -0.79999995f / _1256;
      _1258 = -1.2f / _1256;
      _1259 = 0.20000005f / _1256;
      _1262 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _1265 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _1269 = (_1257 + 1.4f) + (_1265 * (-0.39999998f - _1257));
      _1273 = (_1258 + 1.6f) + (_1265 * (-0.6f - _1258));
      _1277 = (_1259 + 0.9f) + (_1265 * (0.5f - _1259));
      _1294 = (lerp(_1277, 1.4f, _1262));  // [sem: blended]
      _1295 = (lerp(_1269, 1.0f, _1262));  // [sem: blended]
      _1296 = (lerp(_1273, 1.2f, _1262));  // [sem: blended]
    } else {
      _1294 = 1.4f;  // [sem: blended]
      _1295 = 1.0f;  // [sem: blended]
      _1296 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _1299 = saturate((_1206 * _1206) * _1239);  // [sem: expr_sat]
    _1302 = saturate((_1222 * _1222) * _1240);  // [sem: expr_sat]
    _1305 = saturate((_1238 * _1238) * _1241);  // [sem: expr_sat]
    _1306 = 1.0f - _1296;
    _1315 = ((exp2(log2(((_1299 * _1306) + _1296) * _1239) * _1295) - _1242) * _1294) + _1242;
    _1324 = ((exp2(log2(((_1302 * _1306) + _1296) * _1240) * _1295) - _1242) * _1294) + _1242;
    _1333 = ((exp2(log2(((_1305 * _1306) + _1296) * _1241) * _1295) - _1242) * _1294) + _1242;
    _1340 = saturate(exp2(log2(mad(_1333, -0.098961174f, mad(_1324, 1.1519032f, (_1315 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    if (_237) {
      _1352 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _1353 = -0.79999995f / _1352;
      _1354 = -1.2f / _1352;
      _1355 = 0.20000005f / _1352;
      _1358 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _1361 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _1365 = (_1353 + 1.4f) + (_1361 * (-0.39999998f - _1353));
      _1369 = (_1354 + 1.6f) + (_1361 * (-0.6f - _1354));
      _1373 = (_1355 + 0.9f) + (_1361 * (0.5f - _1355));
      _1390 = (lerp(_1373, 1.4f, _1358));  // [sem: blended]
      _1391 = (lerp(_1365, 1.0f, _1358));  // [sem: blended]
      _1392 = (lerp(_1369, 1.2f, _1358));  // [sem: blended]
    } else {
      _1390 = 1.4f;  // [sem: blended]
      _1391 = 1.0f;  // [sem: blended]
      _1392 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _1393 = 1.0f - _1392;
    _1402 = ((exp2(log2(((_1393 * _1299) + _1392) * _1239) * _1391) - _1242) * _1390) + _1242;
    _1411 = ((exp2(log2(((_1393 * _1302) + _1392) * _1240) * _1391) - _1242) * _1390) + _1242;
    _1420 = ((exp2(log2(((_1393 * _1305) + _1392) * _1241) * _1391) - _1242) * _1390) + _1242;
    _1427 = saturate(exp2(log2(mad(_1420, -0.098961174f, mad(_1411, 1.1519032f, (_1402 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    if (_237) {
      _1439 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _1440 = -0.79999995f / _1439;
      _1441 = -1.2f / _1439;
      _1442 = 0.20000005f / _1439;
      _1445 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _1448 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _1452 = (_1440 + 1.4f) + (_1448 * (-0.39999998f - _1440));
      _1456 = (_1441 + 1.6f) + (_1448 * (-0.6f - _1441));
      _1460 = (_1442 + 0.9f) + (_1448 * (0.5f - _1442));
      _1477 = (lerp(_1456, 1.2f, _1445));  // [sem: blended]
      _1478 = (lerp(_1452, 1.0f, _1445));  // [sem: blended]
      _1479 = (lerp(_1460, 1.4f, _1445));  // [sem: blended]
    } else {
      _1477 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _1478 = 1.0f;  // [sem: blended]
      _1479 = 1.4f;  // [sem: blended]
    }
    _1480 = 1.0f - _1477;
    _1489 = ((exp2(log2(((_1480 * _1299) + _1477) * _1239) * _1478) - _1242) * _1479) + _1242;
    _1498 = ((exp2(log2(((_1480 * _1302) + _1477) * _1240) * _1478) - _1242) * _1479) + _1242;
    _1507 = ((exp2(log2(((_1480 * _1305) + _1477) * _1241) * _1478) - _1242) * _1479) + _1242;
    _1514 = saturate(exp2(log2(mad(_1507, -0.098961174f, mad(_1498, 1.1519032f, (_1489 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    if (_237) {
      _1526 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _1527 = -0.79999995f / _1526;
      _1528 = -1.2f / _1526;
      _1529 = 0.20000005f / _1526;
      _1532 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _1535 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _1539 = (_1527 + 1.4f) + (_1535 * (-0.39999998f - _1527));
      _1543 = (_1528 + 1.6f) + (_1535 * (-0.6f - _1528));
      _1547 = (_1529 + 0.9f) + (_1535 * (0.5f - _1529));
      _1564 = (lerp(_1547, 1.4f, _1532));  // [sem: blended]
      _1565 = (lerp(_1539, 1.0f, _1532));  // [sem: blended]
      _1566 = (lerp(_1543, 1.2f, _1532));  // [sem: blended]
    } else {
      _1564 = 1.4f;  // [sem: blended]
      _1565 = 1.0f;  // [sem: blended]
      _1566 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _1567 = 1.0f - _1566;
    _1576 = ((exp2(log2(((_1567 * _1299) + _1566) * _1239) * _1565) - _1242) * _1564) + _1242;
    _1585 = ((exp2(log2(((_1567 * _1302) + _1566) * _1240) * _1565) - _1242) * _1564) + _1242;
    _1594 = ((exp2(log2(((_1567 * _1305) + _1566) * _1241) * _1565) - _1242) * _1564) + _1242;
    _1601 = saturate(exp2(log2(mad(_1594, -0.098961174f, mad(_1585, 1.1519032f, (_1576 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _1605 = max(max(_1112, _1340), max(max(_1427, _1514), _1601));
    _1621 = (-1.0f / (((1.0f - _1132) * 8.0f) + (_1132 * 5.0f))) * sqrt(saturate((1.0f / _1605) * min(min(min(_1112, _1340), min(min(_1427, _1514), _1601)), (1.0f - _1605))));
    _1624 = 1.0f / ((_1621 * 4.0f) + 1.0f);
    // [sem: expr_sat]
    _1703 = saturate((((((saturate(exp2(log2(mad(_1333, 1.1510737f, mad(_1324, -0.09804345f, (_1315 * -0.052971635f)))) * 2.2f)) + saturate(exp2(log2(mad(_1420, 1.1510737f, mad(_1411, -0.09804345f, (_1402 * -0.052971635f)))) * 2.2f))) + saturate(exp2(log2(mad(_1507, 1.1510737f, mad(_1498, -0.09804345f, (_1489 * -0.052971635f)))) * 2.2f))) + saturate(exp2(log2(mad(_1594, 1.1510737f, mad(_1585, -0.09804345f, (_1576 * -0.052971635f)))) * 2.2f))) * _1621) + _1120) * _1624);
    _1704 = saturate(((_1621 * (((_1427 + _1340) + _1514) + _1601)) + _1112) * _1624);  // [sem: expr_sat]
    // [sem: expr_sat]
    _1705 = saturate((((((saturate(exp2(log2(mad(_1333, -0.09902974f, mad(_1324, -0.09802088f, (_1315 * 1.196879f)))) * 2.2f)) + saturate(exp2(log2(mad(_1420, -0.09902974f, mad(_1411, -0.09802088f, (_1402 * 1.196879f)))) * 2.2f))) + saturate(exp2(log2(mad(_1507, -0.09902974f, mad(_1498, -0.09802088f, (_1489 * 1.196879f)))) * 2.2f))) + saturate(exp2(log2(mad(_1594, -0.09902974f, mad(_1585, -0.09802088f, (_1576 * 1.196879f)))) * 2.2f))) * _1621) + _1104) * _1624);
  } else {
    _1703 = _1120;  // [sem: expr_sat]
    _1704 = _1112;  // [sem: expr_sat]
    _1705 = _1104;  // [sem: expr_sat]
  }
  _1709 = 1.0f - abs(_etcParams.w);
  _1710 = saturate(_etcParams.w);  // [sem: expr_sat]
  _1713 = (saturate(_1705) * _1709) + _1710;
  _1716 = (saturate(_1704) * _1709) + _1710;
  _1719 = (saturate(_1703) * _1709) + _1710;
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
  _1822 = saturate(1.0f - ((_postProcessParams.x * _1812) * dot(float2(_1813, _1815), float2(_1813, _1815))));  // [sem: expr_sat]
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
  return SV_Target;
}
