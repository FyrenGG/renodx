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
    _41 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003f) + -0.0015f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
    _42 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003f) + -0.0015f)) + TEXCOORD.y)), 0.0f))).z);
  } else {
    _41 = _18.x;
    _42 = _18.z;
  }
  if (_slopeParams.w > 0.0f) {
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
  _94 = (uint)(_screenSizeAndInvSize.x * TEXCOORD.x);
  _95 = (uint)(_screenSizeAndInvSize.y * TEXCOORD.y);
  _100 = _userImageAdjust.z * _exposure0.x;
  _130 = _100 * _slopeParams.x;
  _132 = _100 * _slopeParams.y;
  _134 = _100 * _slopeParams.z;
  _148 = exp2(log2(max(0.0f, (_offsetParams.x + (_130 * max(0.0f, (((_86 * 1.70505f) - (_87 * 0.62179f)) - (_88 * 0.08326f))))))) * _powerParams.x);
  _149 = exp2(log2(max(0.0f, (_offsetParams.y + (_132 * max(0.0f, (((_87 * 1.1408f) - (_86 * 0.13026f)) - (_88 * 0.01055f))))))) * _powerParams.y);
  _150 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_86 * -0.024f) - (_87 * 0.12897f)) + (_88 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _152 = dot(float3(_148, _149, _150), float3(0.212671f, 0.71516f, 0.072169f));
  _159 = ((_148 - _152) * _powerParams.w) + _152;
  _162 = (lerp(_152, _149, _powerParams.w)) * 3.0f;  // [sem: blended]
  _163 = (lerp(_152, _150, _powerParams.w)) * 3.0f;  // [sem: blended]
  _166 = mad(-1.7106533e-05f, _163, mad(0.00040110573f, _162, (_159 * 3.0009599f)));
  _169 = mad(-2.34209e-05f, _163, mad(0.9997657f, _162, (_159 * -6.0908147e-05f)));
  _172 = mad(1.0005832f, _163, mad(8.34018e-05f, _162, (_159 * 4.855916e-05f)));
  _175 = mad(0.04736635f, _172, mad(0.33951214f, _169, (_166 * 0.61319155f)));
  _178 = mad(0.013450007f, _172, mad(0.91633576f, _169, (_166 * 0.07020692f)));
  _181 = mad(0.8696068f, _172, mad(0.1095673f, _169, (_166 * 0.020618873f)));
  _182 = dot(float3(_175, _178, _181), float3(0.27222872f, 0.67408174f, 0.053689517f));
  _186 = (_175 / _182) + -1.0f;
  _187 = (_178 / _182) + -1.0f;
  _188 = (_181 / _182) + -1.0f;
  _197 = (1.0f - exp2((_182 * _182) * -4.0f)) * (1.0f - exp2(dot(float3(_186, _187, _188), float3(_186, _187, _188)) * -4.0f));
  _213 = ((mad(-0.06368284f, _181, mad(-0.3292913f, _178, (_175 * 1.3704128f))) - _175) * _197) + _175;
  _214 = ((mad(-0.010861567f, _181, mad(1.0970908f, _178, (_175 * -0.08343426f))) - _178) * _197) + _178;
  _215 = ((mad(1.2036945f, _181, mad(-0.098625645f, _178, (_175 * -0.02579326f))) - _181) * _197) + _181;
  _229 = ((mad(0.061360642f, _215, mad(-4.5401976e-09f, _214, (_213 * 0.9386394f))) - _213) * 0.6f) + _213;
  _230 = ((mad(0.1692059f, _215, mad(0.8307942f, _214, (_213 * 6.775372e-08f))) - _214) * 0.6f) + _214;
  _231 = (mad(-2.3283064e-10f, _214, (_213 * -9.313226e-10f)) * 0.6f) + _215;
  _234 = mad(0.16386905f, _231, mad(0.14067869f, _230, (_229 * 0.6954522f)));
  _237 = mad(0.095534325f, _231, mad(0.8596711f, _230, (_229 * 0.04479458f)));
  _240 = mad(1.0015007f, _231, mad(0.00402521f, _230, (_229 * -0.005525883f)));
  _244 = max(max(_234, _237), _240);
  _249 = (max(_244, 1e-10f) - max(min(min(_234, _237), _240), 1e-10f)) / max(_244, 0.01f);
  _262 = ((_237 + _234) + _240) + (sqrt((((_240 - _237) * _240) + ((_237 - _234) * _237)) + ((_234 - _240) * _234)) * 1.75f);
  _263 = _262 * 0.33333334f;
  _264 = _249 + -0.4f;
  _265 = _264 * 5.0f;
  _269 = max((1.0f - abs(_264 * 2.5f)), 0.0f);
  _280 = ((((float)((int)((int)((int)(uint)((int)(_265 > 0.0f))) - (int)((int)(uint)((int)(_265 < 0.0f)))))) * (1.0f - (_269 * _269))) + 1.0f) * 0.025f;
  if (!(_263 <= 0.053333335f)) {
    if (!(_263 >= 0.16f)) {
      _289 = (((0.24f / _262) + -0.5f) * _280);
    } else {
      _289 = 0.0f;
    }
  } else {
    _289 = _280;
  }
  _290 = _289 + 1.0f;
  _291 = _290 * _234;
  _292 = _290 * _237;
  _293 = _290 * _240;
  if (!((_291 == _292) && (_292 == _293))) {
    _300 = ((_291 * 2.0f) - _292) - _293;
    _303 = ((_237 - _240) * 1.7320508f) * _290;
    _305 = atan(_303 / _300);
    _308 = (_300 < 0.0f);
    _309 = (_300 == 0.0f);
    _310 = (_303 >= 0.0f);
    _311 = (_303 < 0.0f);
    _320 = select((_310 && _309), 90.0f, select((_311 && _309), -90.0f, (select((_311 && _308), (_305 + -3.1415927f), select((_310 && _308), (_305 + 3.1415927f), _305)) * 57.295776f)));
    if (_320 < 0.0f) {
      _325 = (_320 + 360.0f);
    } else {
      _325 = _320;
    }
  } else {
    _325 = 0.0f;
  }
  _327 = min(max(_325, 0.0f), 360.0f);
  if (_327 < -180.0f) {
    _336 = (_327 + 360.0f);
  } else {
    if (_327 > 180.0f) {
      _336 = (_327 + -360.0f);
    } else {
      _336 = _327;
    }
  }
  _340 = saturate(1.0f - abs(_336 * 0.014814815f));  // [sem: expr_sat]
  _344 = (_340 * _340) * (3.0f - (_340 * 2.0f));
  _350 = ((_344 * _344) * ((_249 * 0.18f) * (0.03f - _291))) + _291;
  _363 = log2(max(0.0f, mad(-0.21492857f, _293, mad(-0.23651075f, _292, (_350 * 1.4514393f)))));
  _364 = log2(max(0.0f, mad(-0.09967592f, _293, mad(1.1762297f, _292, (_350 * -0.07655378f)))));
  _365 = log2(max(0.0f, mad(0.9977163f, _293, mad(-0.0060324497f, _292, (_350 * 0.008316148f)))));
  _366 = _363 * 0.30103f;
  _367 = _364 * 0.30103f;
  _368 = _365 * 0.30103f;
  _370 = (_363 * 0.2739373f) + 0.7790625f;
  _372 = (_364 * 0.2739373f) + 0.7790625f;
  _374 = (_365 * 0.2739373f) + 0.7790625f;
  _411 = select((_366 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_363 * 1.43712f)) + 1.0f)), _370);
  _412 = select((_367 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_364 * 1.43712f)) + 1.0f)), _372);
  _413 = select((_368 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_365 * 1.43712f)) + 1.0f)), _374);
  _429 = 1.0f - saturate(-0.78987026f - (_363 * 0.9446112f));
  _430 = 1.0f - saturate(-0.78987026f - (_364 * 0.9446112f));
  _431 = 1.0f - saturate(-0.78987026f - (_365 * 0.9446112f));
  _453 = max(0.0f, ((((_429 * _429) * (select((_366 > -0.57039833f), (1.04f - (1.56f / (exp2((_363 * 1.013354f) + 1.9201254f) + 1.0f))), _370) - _411)) * (3.0f - (_429 * 2.0f))) + _411));
  _454 = max(0.0f, ((((_430 * _430) * (select((_367 > -0.57039833f), (1.04f - (1.56f / (exp2((_364 * 1.013354f) + 1.9201254f) + 1.0f))), _372) - _412)) * (3.0f - (_430 * 2.0f))) + _412));
  _455 = max(0.0f, ((((_431 * _431) * (select((_368 > -0.57039833f), (1.04f - (1.56f / (exp2((_365 * 1.013354f) + 1.9201254f) + 1.0f))), _374) - _413)) * (3.0f - (_431 * 2.0f))) + _413));
  _471 = ((mad(-0.06537104f, _455, mad(1.4518155e-06f, _454, (_453 * 1.0653747f))) - _453) * 0.6f) + _453;
  _472 = ((mad(-0.2036677f, _455, mad(1.2036635f, _454, (_453 * -2.5716145e-07f))) - _454) * 0.6f) + _454;
  _473 = ((mad(0.99999964f, _455, mad(2.0954758e-08f, _454, (_453 * 1.8626451e-08f))) - _455) * 0.6f) + _455;
  _486 = saturate(max(0.0f, mad(-0.08325848f, _473, mad(-0.6217906f, _472, (_471 * 1.7050515f)))));  // [sem: expr_sat]
  _487 = saturate(max(0.0f, mad(-0.010548528f, _473, mad(1.1408027f, _472, (_471 * -0.13025719f)))));  // [sem: expr_sat]
  _488 = saturate(max(0.0f, mad(1.1529719f, _473, mad(-0.12896876f, _472, (_471 * -0.024003278f)))));  // [sem: expr_sat]
  _490 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_490.x < 1e-07f) || (_490.x == 1.0f))) {
    _498 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _505 = __3__36__0__0__g_sceneColor.Load(int3(_94, ((int)((uint)((uint)(_95)) + (uint)(-1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _510 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_94)) + (uint)(-1))), _95, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _515 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_94)) + (uint)(1))), _95, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _520 = __3__36__0__0__g_sceneColor.Load(int3(_94, ((int)((uint)((uint)(_95)) + (uint)(1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _557 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_505.x * 1.70505f) - (_505.y * 0.62179f)) - (_505.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _558 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_505.y * 1.1408f) - (_505.x * 0.13026f)) - (_505.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _559 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_505.x * -0.024f) - (_505.y * 0.12897f)) + (_505.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _560 = dot(float3(_557, _558, _559), float3(0.212671f, 0.71516f, 0.072169f));
    _567 = ((_557 - _560) * _powerParams.w) + _560;
    _570 = (lerp(_560, _558, _powerParams.w)) * 3.0f;  // [sem: blended]
    _571 = (lerp(_560, _559, _powerParams.w)) * 3.0f;  // [sem: blended]
    _574 = mad(-1.7106533e-05f, _571, mad(0.00040110573f, _570, (_567 * 3.0009599f)));
    _577 = mad(-2.34209e-05f, _571, mad(0.9997657f, _570, (_567 * -6.0908147e-05f)));
    _580 = mad(1.0005832f, _571, mad(8.34018e-05f, _570, (_567 * 4.855916e-05f)));
    _583 = mad(0.04736635f, _580, mad(0.33951214f, _577, (_574 * 0.61319155f)));
    _586 = mad(0.013450007f, _580, mad(0.91633576f, _577, (_574 * 0.07020692f)));
    _589 = mad(0.8696068f, _580, mad(0.1095673f, _577, (_574 * 0.020618873f)));
    _590 = dot(float3(_583, _586, _589), float3(0.27222872f, 0.67408174f, 0.053689517f));
    _594 = (_583 / _590) + -1.0f;
    _595 = (_586 / _590) + -1.0f;
    _596 = (_589 / _590) + -1.0f;
    _605 = (1.0f - exp2((_590 * _590) * -4.0f)) * (1.0f - exp2(dot(float3(_594, _595, _596), float3(_594, _595, _596)) * -4.0f));
    _621 = ((mad(-0.06368284f, _589, mad(-0.3292913f, _586, (_583 * 1.3704128f))) - _583) * _605) + _583;
    _622 = ((mad(-0.010861567f, _589, mad(1.0970908f, _586, (_583 * -0.08343426f))) - _586) * _605) + _586;
    _623 = ((mad(1.2036945f, _589, mad(-0.098625645f, _586, (_583 * -0.02579326f))) - _589) * _605) + _589;
    _637 = ((mad(0.061360642f, _623, mad(-4.5401976e-09f, _622, (_621 * 0.9386394f))) - _621) * 0.6f) + _621;
    _638 = ((mad(0.1692059f, _623, mad(0.8307942f, _622, (_621 * 6.775372e-08f))) - _622) * 0.6f) + _622;
    _639 = (mad(-2.3283064e-10f, _622, (_621 * -9.313226e-10f)) * 0.6f) + _623;
    _642 = mad(0.16386905f, _639, mad(0.14067869f, _638, (_637 * 0.6954522f)));
    _645 = mad(0.095534325f, _639, mad(0.8596711f, _638, (_637 * 0.04479458f)));
    _648 = mad(1.0015007f, _639, mad(0.00402521f, _638, (_637 * -0.005525883f)));
    _652 = max(max(_642, _645), _648);
    _657 = (max(_652, 1e-10f) - max(min(min(_642, _645), _648), 1e-10f)) / max(_652, 0.01f);
    _670 = ((_645 + _642) + _648) + (sqrt((((_648 - _645) * _648) + ((_645 - _642) * _645)) + ((_642 - _648) * _642)) * 1.75f);
    _671 = _670 * 0.33333334f;
    _672 = _657 + -0.4f;
    _673 = _672 * 5.0f;
    _677 = max((1.0f - abs(_672 * 2.5f)), 0.0f);
    _688 = ((((float)((int)((int)((int)(uint)((int)(_673 > 0.0f))) - (int)((int)(uint)((int)(_673 < 0.0f)))))) * (1.0f - (_677 * _677))) + 1.0f) * 0.025f;
    if (!(_671 <= 0.053333335f)) {
      if (!(_671 >= 0.16f)) {
        _697 = (((0.24f / _670) + -0.5f) * _688);
      } else {
        _697 = 0.0f;
      }
    } else {
      _697 = _688;
    }
    _698 = _697 + 1.0f;
    _699 = _698 * _642;
    _700 = _698 * _645;
    _701 = _698 * _648;
    if (!((_699 == _700) && (_700 == _701))) {
      _708 = ((_699 * 2.0f) - _700) - _701;
      _711 = ((_645 - _648) * 1.7320508f) * _698;
      _713 = atan(_711 / _708);
      _716 = (_708 < 0.0f);
      _717 = (_708 == 0.0f);
      _718 = (_711 >= 0.0f);
      _719 = (_711 < 0.0f);
      _728 = select((_718 && _717), 90.0f, select((_719 && _717), -90.0f, (select((_719 && _716), (_713 + -3.1415927f), select((_718 && _716), (_713 + 3.1415927f), _713)) * 57.295776f)));
      if (_728 < 0.0f) {
        _733 = (_728 + 360.0f);
      } else {
        _733 = _728;
      }
    } else {
      _733 = 0.0f;
    }
    _735 = min(max(_733, 0.0f), 360.0f);
    if (_735 < -180.0f) {
      _744 = (_735 + 360.0f);
    } else {
      if (_735 > 180.0f) {
        _744 = (_735 + -360.0f);
      } else {
        _744 = _735;
      }
    }
    _748 = saturate(1.0f - abs(_744 * 0.014814815f));  // [sem: expr_sat]
    _752 = (_748 * _748) * (3.0f - (_748 * 2.0f));
    _758 = ((_752 * _752) * ((_657 * 0.18f) * (0.03f - _699))) + _699;
    _771 = log2(max(0.0f, mad(-0.21492857f, _701, mad(-0.23651075f, _700, (_758 * 1.4514393f)))));
    _772 = log2(max(0.0f, mad(-0.09967592f, _701, mad(1.1762297f, _700, (_758 * -0.07655378f)))));
    _773 = log2(max(0.0f, mad(0.9977163f, _701, mad(-0.0060324497f, _700, (_758 * 0.008316148f)))));
    _774 = _771 * 0.30103f;
    _775 = _772 * 0.30103f;
    _776 = _773 * 0.30103f;
    _778 = (_771 * 0.2739373f) + 0.7790625f;
    _780 = (_772 * 0.2739373f) + 0.7790625f;
    _782 = (_773 * 0.2739373f) + 0.7790625f;
    _819 = select((_774 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_771 * 1.43712f)) + 1.0f)), _778);
    _820 = select((_775 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_772 * 1.43712f)) + 1.0f)), _780);
    _821 = select((_776 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_773 * 1.43712f)) + 1.0f)), _782);
    _837 = 1.0f - saturate(-0.78987026f - (_771 * 0.9446112f));
    _838 = 1.0f - saturate(-0.78987026f - (_772 * 0.9446112f));
    _839 = 1.0f - saturate(-0.78987026f - (_773 * 0.9446112f));
    _861 = max(0.0f, ((((_837 * _837) * (select((_774 > -0.57039833f), (1.04f - (1.56f / (exp2((_771 * 1.013354f) + 1.9201254f) + 1.0f))), _778) - _819)) * (3.0f - (_837 * 2.0f))) + _819));
    _862 = max(0.0f, ((((_838 * _838) * (select((_775 > -0.57039833f), (1.04f - (1.56f / (exp2((_772 * 1.013354f) + 1.9201254f) + 1.0f))), _780) - _820)) * (3.0f - (_838 * 2.0f))) + _820));
    _863 = max(0.0f, ((((_839 * _839) * (select((_776 > -0.57039833f), (1.04f - (1.56f / (exp2((_773 * 1.013354f) + 1.9201254f) + 1.0f))), _782) - _821)) * (3.0f - (_839 * 2.0f))) + _821));
    _879 = ((mad(-0.06537104f, _863, mad(1.4518155e-06f, _862, (_861 * 1.0653747f))) - _861) * 0.6f) + _861;
    _880 = ((mad(-0.2036677f, _863, mad(1.2036635f, _862, (_861 * -2.5716145e-07f))) - _862) * 0.6f) + _862;
    _881 = ((mad(0.99999964f, _863, mad(2.0954758e-08f, _862, (_861 * 1.8626451e-08f))) - _863) * 0.6f) + _863;
    _895 = saturate(max(0.0f, mad(-0.010548528f, _881, mad(1.1408027f, _880, (_879 * -0.13025719f)))));  // [sem: expr_sat]
    _930 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_510.x * 1.70505f) - (_510.y * 0.62179f)) - (_510.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _931 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_510.y * 1.1408f) - (_510.x * 0.13026f)) - (_510.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _932 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_510.x * -0.024f) - (_510.y * 0.12897f)) + (_510.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _933 = dot(float3(_930, _931, _932), float3(0.212671f, 0.71516f, 0.072169f));
    _940 = ((_930 - _933) * _powerParams.w) + _933;
    _943 = (lerp(_933, _931, _powerParams.w)) * 3.0f;  // [sem: blended]
    _944 = (lerp(_933, _932, _powerParams.w)) * 3.0f;  // [sem: blended]
    _947 = mad(-1.7106533e-05f, _944, mad(0.00040110573f, _943, (_940 * 3.0009599f)));
    _950 = mad(-2.34209e-05f, _944, mad(0.9997657f, _943, (_940 * -6.0908147e-05f)));
    _953 = mad(1.0005832f, _944, mad(8.34018e-05f, _943, (_940 * 4.855916e-05f)));
    _956 = mad(0.04736635f, _953, mad(0.33951214f, _950, (_947 * 0.61319155f)));
    _959 = mad(0.013450007f, _953, mad(0.91633576f, _950, (_947 * 0.07020692f)));
    _962 = mad(0.8696068f, _953, mad(0.1095673f, _950, (_947 * 0.020618873f)));
    _963 = dot(float3(_956, _959, _962), float3(0.27222872f, 0.67408174f, 0.053689517f));
    _967 = (_956 / _963) + -1.0f;
    _968 = (_959 / _963) + -1.0f;
    _969 = (_962 / _963) + -1.0f;
    _978 = (1.0f - exp2((_963 * _963) * -4.0f)) * (1.0f - exp2(dot(float3(_967, _968, _969), float3(_967, _968, _969)) * -4.0f));
    _994 = ((mad(-0.06368284f, _962, mad(-0.3292913f, _959, (_956 * 1.3704128f))) - _956) * _978) + _956;
    _995 = ((mad(-0.010861567f, _962, mad(1.0970908f, _959, (_956 * -0.08343426f))) - _959) * _978) + _959;
    _996 = ((mad(1.2036945f, _962, mad(-0.098625645f, _959, (_956 * -0.02579326f))) - _962) * _978) + _962;
    _1010 = ((mad(0.061360642f, _996, mad(-4.5401976e-09f, _995, (_994 * 0.9386394f))) - _994) * 0.6f) + _994;
    _1011 = ((mad(0.1692059f, _996, mad(0.8307942f, _995, (_994 * 6.775372e-08f))) - _995) * 0.6f) + _995;
    _1012 = (mad(-2.3283064e-10f, _995, (_994 * -9.313226e-10f)) * 0.6f) + _996;
    _1015 = mad(0.16386905f, _1012, mad(0.14067869f, _1011, (_1010 * 0.6954522f)));
    _1018 = mad(0.095534325f, _1012, mad(0.8596711f, _1011, (_1010 * 0.04479458f)));
    _1021 = mad(1.0015007f, _1012, mad(0.00402521f, _1011, (_1010 * -0.005525883f)));
    _1025 = max(max(_1015, _1018), _1021);
    _1030 = (max(_1025, 1e-10f) - max(min(min(_1015, _1018), _1021), 1e-10f)) / max(_1025, 0.01f);
    _1043 = ((_1018 + _1015) + _1021) + (sqrt((((_1021 - _1018) * _1021) + ((_1018 - _1015) * _1018)) + ((_1015 - _1021) * _1015)) * 1.75f);
    _1044 = _1043 * 0.33333334f;
    _1045 = _1030 + -0.4f;
    _1046 = _1045 * 5.0f;
    _1050 = max((1.0f - abs(_1045 * 2.5f)), 0.0f);
    _1061 = ((((float)((int)((int)((int)(uint)((int)(_1046 > 0.0f))) - (int)((int)(uint)((int)(_1046 < 0.0f)))))) * (1.0f - (_1050 * _1050))) + 1.0f) * 0.025f;
    if (!(_1044 <= 0.053333335f)) {
      if (!(_1044 >= 0.16f)) {
        _1070 = (((0.24f / _1043) + -0.5f) * _1061);
      } else {
        _1070 = 0.0f;
      }
    } else {
      _1070 = _1061;
    }
    _1071 = _1070 + 1.0f;
    _1072 = _1071 * _1015;
    _1073 = _1071 * _1018;
    _1074 = _1071 * _1021;
    if (!((_1072 == _1073) && (_1073 == _1074))) {
      _1081 = ((_1072 * 2.0f) - _1073) - _1074;
      _1084 = ((_1018 - _1021) * 1.7320508f) * _1071;
      _1086 = atan(_1084 / _1081);
      _1089 = (_1081 < 0.0f);
      _1090 = (_1081 == 0.0f);
      _1091 = (_1084 >= 0.0f);
      _1092 = (_1084 < 0.0f);
      _1101 = select((_1091 && _1090), 90.0f, select((_1092 && _1090), -90.0f, (select((_1092 && _1089), (_1086 + -3.1415927f), select((_1091 && _1089), (_1086 + 3.1415927f), _1086)) * 57.295776f)));
      if (_1101 < 0.0f) {
        _1106 = (_1101 + 360.0f);
      } else {
        _1106 = _1101;
      }
    } else {
      _1106 = 0.0f;
    }
    _1108 = min(max(_1106, 0.0f), 360.0f);
    if (_1108 < -180.0f) {
      _1117 = (_1108 + 360.0f);
    } else {
      if (_1108 > 180.0f) {
        _1117 = (_1108 + -360.0f);
      } else {
        _1117 = _1108;
      }
    }
    _1121 = saturate(1.0f - abs(_1117 * 0.014814815f));  // [sem: expr_sat]
    _1125 = (_1121 * _1121) * (3.0f - (_1121 * 2.0f));
    _1131 = ((_1125 * _1125) * ((_1030 * 0.18f) * (0.03f - _1072))) + _1072;
    _1144 = log2(max(0.0f, mad(-0.21492857f, _1074, mad(-0.23651075f, _1073, (_1131 * 1.4514393f)))));
    _1145 = log2(max(0.0f, mad(-0.09967592f, _1074, mad(1.1762297f, _1073, (_1131 * -0.07655378f)))));
    _1146 = log2(max(0.0f, mad(0.9977163f, _1074, mad(-0.0060324497f, _1073, (_1131 * 0.008316148f)))));
    _1147 = _1144 * 0.30103f;
    _1148 = _1145 * 0.30103f;
    _1149 = _1146 * 0.30103f;
    _1151 = (_1144 * 0.2739373f) + 0.7790625f;
    _1153 = (_1145 * 0.2739373f) + 0.7790625f;
    _1155 = (_1146 * 0.2739373f) + 0.7790625f;
    _1192 = select((_1147 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1144 * 1.43712f)) + 1.0f)), _1151);
    _1193 = select((_1148 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1145 * 1.43712f)) + 1.0f)), _1153);
    _1194 = select((_1149 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1146 * 1.43712f)) + 1.0f)), _1155);
    _1210 = 1.0f - saturate(-0.78987026f - (_1144 * 0.9446112f));
    _1211 = 1.0f - saturate(-0.78987026f - (_1145 * 0.9446112f));
    _1212 = 1.0f - saturate(-0.78987026f - (_1146 * 0.9446112f));
    _1234 = max(0.0f, ((((_1210 * _1210) * (select((_1147 > -0.57039833f), (1.04f - (1.56f / (exp2((_1144 * 1.013354f) + 1.9201254f) + 1.0f))), _1151) - _1192)) * (3.0f - (_1210 * 2.0f))) + _1192));
    _1235 = max(0.0f, ((((_1211 * _1211) * (select((_1148 > -0.57039833f), (1.04f - (1.56f / (exp2((_1145 * 1.013354f) + 1.9201254f) + 1.0f))), _1153) - _1193)) * (3.0f - (_1211 * 2.0f))) + _1193));
    _1236 = max(0.0f, ((((_1212 * _1212) * (select((_1149 > -0.57039833f), (1.04f - (1.56f / (exp2((_1146 * 1.013354f) + 1.9201254f) + 1.0f))), _1155) - _1194)) * (3.0f - (_1212 * 2.0f))) + _1194));
    _1252 = ((mad(-0.06537104f, _1236, mad(1.4518155e-06f, _1235, (_1234 * 1.0653747f))) - _1234) * 0.6f) + _1234;
    _1253 = ((mad(-0.2036677f, _1236, mad(1.2036635f, _1235, (_1234 * -2.5716145e-07f))) - _1235) * 0.6f) + _1235;
    _1254 = ((mad(0.99999964f, _1236, mad(2.0954758e-08f, _1235, (_1234 * 1.8626451e-08f))) - _1236) * 0.6f) + _1236;
    _1268 = saturate(max(0.0f, mad(-0.010548528f, _1254, mad(1.1408027f, _1253, (_1252 * -0.13025719f)))));  // [sem: expr_sat]
    _1303 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_515.x * 1.70505f) - (_515.y * 0.62179f)) - (_515.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _1304 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_515.y * 1.1408f) - (_515.x * 0.13026f)) - (_515.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _1305 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_515.x * -0.024f) - (_515.y * 0.12897f)) + (_515.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _1306 = dot(float3(_1303, _1304, _1305), float3(0.212671f, 0.71516f, 0.072169f));
    _1313 = ((_1303 - _1306) * _powerParams.w) + _1306;
    _1316 = (lerp(_1306, _1304, _powerParams.w)) * 3.0f;  // [sem: blended]
    _1317 = (lerp(_1306, _1305, _powerParams.w)) * 3.0f;  // [sem: blended]
    _1320 = mad(-1.7106533e-05f, _1317, mad(0.00040110573f, _1316, (_1313 * 3.0009599f)));
    _1323 = mad(-2.34209e-05f, _1317, mad(0.9997657f, _1316, (_1313 * -6.0908147e-05f)));
    _1326 = mad(1.0005832f, _1317, mad(8.34018e-05f, _1316, (_1313 * 4.855916e-05f)));
    _1329 = mad(0.04736635f, _1326, mad(0.33951214f, _1323, (_1320 * 0.61319155f)));
    _1332 = mad(0.013450007f, _1326, mad(0.91633576f, _1323, (_1320 * 0.07020692f)));
    _1335 = mad(0.8696068f, _1326, mad(0.1095673f, _1323, (_1320 * 0.020618873f)));
    _1336 = dot(float3(_1329, _1332, _1335), float3(0.27222872f, 0.67408174f, 0.053689517f));
    _1340 = (_1329 / _1336) + -1.0f;
    _1341 = (_1332 / _1336) + -1.0f;
    _1342 = (_1335 / _1336) + -1.0f;
    _1351 = (1.0f - exp2((_1336 * _1336) * -4.0f)) * (1.0f - exp2(dot(float3(_1340, _1341, _1342), float3(_1340, _1341, _1342)) * -4.0f));
    _1367 = ((mad(-0.06368284f, _1335, mad(-0.3292913f, _1332, (_1329 * 1.3704128f))) - _1329) * _1351) + _1329;
    _1368 = ((mad(-0.010861567f, _1335, mad(1.0970908f, _1332, (_1329 * -0.08343426f))) - _1332) * _1351) + _1332;
    _1369 = ((mad(1.2036945f, _1335, mad(-0.098625645f, _1332, (_1329 * -0.02579326f))) - _1335) * _1351) + _1335;
    _1383 = ((mad(0.061360642f, _1369, mad(-4.5401976e-09f, _1368, (_1367 * 0.9386394f))) - _1367) * 0.6f) + _1367;
    _1384 = ((mad(0.1692059f, _1369, mad(0.8307942f, _1368, (_1367 * 6.775372e-08f))) - _1368) * 0.6f) + _1368;
    _1385 = (mad(-2.3283064e-10f, _1368, (_1367 * -9.313226e-10f)) * 0.6f) + _1369;
    _1388 = mad(0.16386905f, _1385, mad(0.14067869f, _1384, (_1383 * 0.6954522f)));
    _1391 = mad(0.095534325f, _1385, mad(0.8596711f, _1384, (_1383 * 0.04479458f)));
    _1394 = mad(1.0015007f, _1385, mad(0.00402521f, _1384, (_1383 * -0.005525883f)));
    _1398 = max(max(_1388, _1391), _1394);
    _1403 = (max(_1398, 1e-10f) - max(min(min(_1388, _1391), _1394), 1e-10f)) / max(_1398, 0.01f);
    _1416 = ((_1391 + _1388) + _1394) + (sqrt((((_1394 - _1391) * _1394) + ((_1391 - _1388) * _1391)) + ((_1388 - _1394) * _1388)) * 1.75f);
    _1417 = _1416 * 0.33333334f;
    _1418 = _1403 + -0.4f;
    _1419 = _1418 * 5.0f;
    _1423 = max((1.0f - abs(_1418 * 2.5f)), 0.0f);
    _1434 = ((((float)((int)((int)((int)(uint)((int)(_1419 > 0.0f))) - (int)((int)(uint)((int)(_1419 < 0.0f)))))) * (1.0f - (_1423 * _1423))) + 1.0f) * 0.025f;
    if (!(_1417 <= 0.053333335f)) {
      if (!(_1417 >= 0.16f)) {
        _1443 = (((0.24f / _1416) + -0.5f) * _1434);
      } else {
        _1443 = 0.0f;
      }
    } else {
      _1443 = _1434;
    }
    _1444 = _1443 + 1.0f;
    _1445 = _1444 * _1388;
    _1446 = _1444 * _1391;
    _1447 = _1444 * _1394;
    if (!((_1445 == _1446) && (_1446 == _1447))) {
      _1454 = ((_1445 * 2.0f) - _1446) - _1447;
      _1457 = ((_1391 - _1394) * 1.7320508f) * _1444;
      _1459 = atan(_1457 / _1454);
      _1462 = (_1454 < 0.0f);
      _1463 = (_1454 == 0.0f);
      _1464 = (_1457 >= 0.0f);
      _1465 = (_1457 < 0.0f);
      _1474 = select((_1464 && _1463), 90.0f, select((_1465 && _1463), -90.0f, (select((_1465 && _1462), (_1459 + -3.1415927f), select((_1464 && _1462), (_1459 + 3.1415927f), _1459)) * 57.295776f)));
      if (_1474 < 0.0f) {
        _1479 = (_1474 + 360.0f);
      } else {
        _1479 = _1474;
      }
    } else {
      _1479 = 0.0f;
    }
    _1481 = min(max(_1479, 0.0f), 360.0f);
    if (_1481 < -180.0f) {
      _1490 = (_1481 + 360.0f);
    } else {
      if (_1481 > 180.0f) {
        _1490 = (_1481 + -360.0f);
      } else {
        _1490 = _1481;
      }
    }
    _1494 = saturate(1.0f - abs(_1490 * 0.014814815f));  // [sem: expr_sat]
    _1498 = (_1494 * _1494) * (3.0f - (_1494 * 2.0f));
    _1504 = ((_1498 * _1498) * ((_1403 * 0.18f) * (0.03f - _1445))) + _1445;
    _1517 = log2(max(0.0f, mad(-0.21492857f, _1447, mad(-0.23651075f, _1446, (_1504 * 1.4514393f)))));
    _1518 = log2(max(0.0f, mad(-0.09967592f, _1447, mad(1.1762297f, _1446, (_1504 * -0.07655378f)))));
    _1519 = log2(max(0.0f, mad(0.9977163f, _1447, mad(-0.0060324497f, _1446, (_1504 * 0.008316148f)))));
    _1520 = _1517 * 0.30103f;
    _1521 = _1518 * 0.30103f;
    _1522 = _1519 * 0.30103f;
    _1524 = (_1517 * 0.2739373f) + 0.7790625f;
    _1526 = (_1518 * 0.2739373f) + 0.7790625f;
    _1528 = (_1519 * 0.2739373f) + 0.7790625f;
    _1565 = select((_1520 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1517 * 1.43712f)) + 1.0f)), _1524);
    _1566 = select((_1521 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1518 * 1.43712f)) + 1.0f)), _1526);
    _1567 = select((_1522 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1519 * 1.43712f)) + 1.0f)), _1528);
    _1583 = 1.0f - saturate(-0.78987026f - (_1517 * 0.9446112f));
    _1584 = 1.0f - saturate(-0.78987026f - (_1518 * 0.9446112f));
    _1585 = 1.0f - saturate(-0.78987026f - (_1519 * 0.9446112f));
    _1607 = max(0.0f, ((((_1583 * _1583) * (select((_1520 > -0.57039833f), (1.04f - (1.56f / (exp2((_1517 * 1.013354f) + 1.9201254f) + 1.0f))), _1524) - _1565)) * (3.0f - (_1583 * 2.0f))) + _1565));
    _1608 = max(0.0f, ((((_1584 * _1584) * (select((_1521 > -0.57039833f), (1.04f - (1.56f / (exp2((_1518 * 1.013354f) + 1.9201254f) + 1.0f))), _1526) - _1566)) * (3.0f - (_1584 * 2.0f))) + _1566));
    _1609 = max(0.0f, ((((_1585 * _1585) * (select((_1522 > -0.57039833f), (1.04f - (1.56f / (exp2((_1519 * 1.013354f) + 1.9201254f) + 1.0f))), _1528) - _1567)) * (3.0f - (_1585 * 2.0f))) + _1567));
    _1625 = ((mad(-0.06537104f, _1609, mad(1.4518155e-06f, _1608, (_1607 * 1.0653747f))) - _1607) * 0.6f) + _1607;
    _1626 = ((mad(-0.2036677f, _1609, mad(1.2036635f, _1608, (_1607 * -2.5716145e-07f))) - _1608) * 0.6f) + _1608;
    _1627 = ((mad(0.99999964f, _1609, mad(2.0954758e-08f, _1608, (_1607 * 1.8626451e-08f))) - _1609) * 0.6f) + _1609;
    _1641 = saturate(max(0.0f, mad(-0.010548528f, _1627, mad(1.1408027f, _1626, (_1625 * -0.13025719f)))));  // [sem: expr_sat]
    _1676 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_520.x * 1.70505f) - (_520.y * 0.62179f)) - (_520.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _1677 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_520.y * 1.1408f) - (_520.x * 0.13026f)) - (_520.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _1678 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_520.x * -0.024f) - (_520.y * 0.12897f)) + (_520.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _1679 = dot(float3(_1676, _1677, _1678), float3(0.212671f, 0.71516f, 0.072169f));
    _1686 = ((_1676 - _1679) * _powerParams.w) + _1679;
    _1689 = (lerp(_1679, _1677, _powerParams.w)) * 3.0f;  // [sem: blended]
    _1690 = (lerp(_1679, _1678, _powerParams.w)) * 3.0f;  // [sem: blended]
    _1693 = mad(-1.7106533e-05f, _1690, mad(0.00040110573f, _1689, (_1686 * 3.0009599f)));
    _1696 = mad(-2.34209e-05f, _1690, mad(0.9997657f, _1689, (_1686 * -6.0908147e-05f)));
    _1699 = mad(1.0005832f, _1690, mad(8.34018e-05f, _1689, (_1686 * 4.855916e-05f)));
    _1702 = mad(0.04736635f, _1699, mad(0.33951214f, _1696, (_1693 * 0.61319155f)));
    _1705 = mad(0.013450007f, _1699, mad(0.91633576f, _1696, (_1693 * 0.07020692f)));
    _1708 = mad(0.8696068f, _1699, mad(0.1095673f, _1696, (_1693 * 0.020618873f)));
    _1709 = dot(float3(_1702, _1705, _1708), float3(0.27222872f, 0.67408174f, 0.053689517f));
    _1713 = (_1702 / _1709) + -1.0f;
    _1714 = (_1705 / _1709) + -1.0f;
    _1715 = (_1708 / _1709) + -1.0f;
    _1724 = (1.0f - exp2((_1709 * _1709) * -4.0f)) * (1.0f - exp2(dot(float3(_1713, _1714, _1715), float3(_1713, _1714, _1715)) * -4.0f));
    _1740 = ((mad(-0.06368284f, _1708, mad(-0.3292913f, _1705, (_1702 * 1.3704128f))) - _1702) * _1724) + _1702;
    _1741 = ((mad(-0.010861567f, _1708, mad(1.0970908f, _1705, (_1702 * -0.08343426f))) - _1705) * _1724) + _1705;
    _1742 = ((mad(1.2036945f, _1708, mad(-0.098625645f, _1705, (_1702 * -0.02579326f))) - _1708) * _1724) + _1708;
    _1756 = ((mad(0.061360642f, _1742, mad(-4.5401976e-09f, _1741, (_1740 * 0.9386394f))) - _1740) * 0.6f) + _1740;
    _1757 = ((mad(0.1692059f, _1742, mad(0.8307942f, _1741, (_1740 * 6.775372e-08f))) - _1741) * 0.6f) + _1741;
    _1758 = (mad(-2.3283064e-10f, _1741, (_1740 * -9.313226e-10f)) * 0.6f) + _1742;
    _1761 = mad(0.16386905f, _1758, mad(0.14067869f, _1757, (_1756 * 0.6954522f)));
    _1764 = mad(0.095534325f, _1758, mad(0.8596711f, _1757, (_1756 * 0.04479458f)));
    _1767 = mad(1.0015007f, _1758, mad(0.00402521f, _1757, (_1756 * -0.005525883f)));
    _1771 = max(max(_1761, _1764), _1767);
    _1776 = (max(_1771, 1e-10f) - max(min(min(_1761, _1764), _1767), 1e-10f)) / max(_1771, 0.01f);
    _1789 = ((_1764 + _1761) + _1767) + (sqrt((((_1767 - _1764) * _1767) + ((_1764 - _1761) * _1764)) + ((_1761 - _1767) * _1761)) * 1.75f);
    _1790 = _1789 * 0.33333334f;
    _1791 = _1776 + -0.4f;
    _1792 = _1791 * 5.0f;
    _1796 = max((1.0f - abs(_1791 * 2.5f)), 0.0f);
    _1807 = ((((float)((int)((int)((int)(uint)((int)(_1792 > 0.0f))) - (int)((int)(uint)((int)(_1792 < 0.0f)))))) * (1.0f - (_1796 * _1796))) + 1.0f) * 0.025f;
    if (!(_1790 <= 0.053333335f)) {
      if (!(_1790 >= 0.16f)) {
        _1816 = (((0.24f / _1789) + -0.5f) * _1807);
      } else {
        _1816 = 0.0f;
      }
    } else {
      _1816 = _1807;
    }
    _1817 = _1816 + 1.0f;
    _1818 = _1817 * _1761;
    _1819 = _1817 * _1764;
    _1820 = _1817 * _1767;
    if (!((_1818 == _1819) && (_1819 == _1820))) {
      _1827 = ((_1818 * 2.0f) - _1819) - _1820;
      _1830 = ((_1764 - _1767) * 1.7320508f) * _1817;
      _1832 = atan(_1830 / _1827);
      _1835 = (_1827 < 0.0f);
      _1836 = (_1827 == 0.0f);
      _1837 = (_1830 >= 0.0f);
      _1838 = (_1830 < 0.0f);
      _1847 = select((_1837 && _1836), 90.0f, select((_1838 && _1836), -90.0f, (select((_1838 && _1835), (_1832 + -3.1415927f), select((_1837 && _1835), (_1832 + 3.1415927f), _1832)) * 57.295776f)));
      if (_1847 < 0.0f) {
        _1852 = (_1847 + 360.0f);
      } else {
        _1852 = _1847;
      }
    } else {
      _1852 = 0.0f;
    }
    _1854 = min(max(_1852, 0.0f), 360.0f);
    if (_1854 < -180.0f) {
      _1863 = (_1854 + 360.0f);
    } else {
      if (_1854 > 180.0f) {
        _1863 = (_1854 + -360.0f);
      } else {
        _1863 = _1854;
      }
    }
    _1867 = saturate(1.0f - abs(_1863 * 0.014814815f));  // [sem: expr_sat]
    _1871 = (_1867 * _1867) * (3.0f - (_1867 * 2.0f));
    _1877 = ((_1871 * _1871) * ((_1776 * 0.18f) * (0.03f - _1818))) + _1818;
    _1890 = log2(max(0.0f, mad(-0.21492857f, _1820, mad(-0.23651075f, _1819, (_1877 * 1.4514393f)))));
    _1891 = log2(max(0.0f, mad(-0.09967592f, _1820, mad(1.1762297f, _1819, (_1877 * -0.07655378f)))));
    _1892 = log2(max(0.0f, mad(0.9977163f, _1820, mad(-0.0060324497f, _1819, (_1877 * 0.008316148f)))));
    _1893 = _1890 * 0.30103f;
    _1894 = _1891 * 0.30103f;
    _1895 = _1892 * 0.30103f;
    _1897 = (_1890 * 0.2739373f) + 0.7790625f;
    _1899 = (_1891 * 0.2739373f) + 0.7790625f;
    _1901 = (_1892 * 0.2739373f) + 0.7790625f;
    _1938 = select((_1893 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1890 * 1.43712f)) + 1.0f)), _1897);
    _1939 = select((_1894 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1891 * 1.43712f)) + 1.0f)), _1899);
    _1940 = select((_1895 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1892 * 1.43712f)) + 1.0f)), _1901);
    _1956 = 1.0f - saturate(-0.78987026f - (_1890 * 0.9446112f));
    _1957 = 1.0f - saturate(-0.78987026f - (_1891 * 0.9446112f));
    _1958 = 1.0f - saturate(-0.78987026f - (_1892 * 0.9446112f));
    _1980 = max(0.0f, ((((_1956 * _1956) * (select((_1893 > -0.57039833f), (1.04f - (1.56f / (exp2((_1890 * 1.013354f) + 1.9201254f) + 1.0f))), _1897) - _1938)) * (3.0f - (_1956 * 2.0f))) + _1938));
    _1981 = max(0.0f, ((((_1957 * _1957) * (select((_1894 > -0.57039833f), (1.04f - (1.56f / (exp2((_1891 * 1.013354f) + 1.9201254f) + 1.0f))), _1899) - _1939)) * (3.0f - (_1957 * 2.0f))) + _1939));
    _1982 = max(0.0f, ((((_1958 * _1958) * (select((_1895 > -0.57039833f), (1.04f - (1.56f / (exp2((_1892 * 1.013354f) + 1.9201254f) + 1.0f))), _1901) - _1940)) * (3.0f - (_1958 * 2.0f))) + _1940));
    _1998 = ((mad(-0.06537104f, _1982, mad(1.4518155e-06f, _1981, (_1980 * 1.0653747f))) - _1980) * 0.6f) + _1980;
    _1999 = ((mad(-0.2036677f, _1982, mad(1.2036635f, _1981, (_1980 * -2.5716145e-07f))) - _1981) * 0.6f) + _1981;
    _2000 = ((mad(0.99999964f, _1982, mad(2.0954758e-08f, _1981, (_1980 * 1.8626451e-08f))) - _1982) * 0.6f) + _1982;
    _2014 = saturate(max(0.0f, mad(-0.010548528f, _2000, mad(1.1408027f, _1999, (_1998 * -0.13025719f)))));  // [sem: expr_sat]
    _2023 = max(max(_487, _895), max(max(_1268, _1641), _2014));
    _2030 = sqrt(saturate(min(min(min(_487, _895), min(min(_1268, _1641), _2014)), (1.0f - _2023)) * (1.0f / _2023))) * (-1.0f / (((1.0f - _498) * 8.0f) + (_498 * 5.0f)));
    _2033 = 1.0f / ((_2030 * 4.0f) + 1.0f);
    // [sem: expr_sat]
    _2056 = saturate(((_2030 * (((saturate(max(0.0f, mad(-0.08325848f, _1254, mad(-0.6217906f, _1253, (_1252 * 1.7050515f))))) + saturate(max(0.0f, mad(-0.08325848f, _881, mad(-0.6217906f, _880, (_879 * 1.7050515f)))))) + saturate(max(0.0f, mad(-0.08325848f, _1627, mad(-0.6217906f, _1626, (_1625 * 1.7050515f)))))) + saturate(max(0.0f, mad(-0.08325848f, _2000, mad(-0.6217906f, _1999, (_1998 * 1.7050515f))))))) + _486) * _2033);
    _2057 = saturate(((_2030 * (((_1268 + _895) + _1641) + _2014)) + _487) * _2033);  // [sem: expr_sat]
    // [sem: expr_sat]
    _2058 = saturate(((_2030 * (((saturate(max(0.0f, mad(1.1529719f, _1254, mad(-0.12896876f, _1253, (_1252 * -0.024003278f))))) + saturate(max(0.0f, mad(1.1529719f, _881, mad(-0.12896876f, _880, (_879 * -0.024003278f)))))) + saturate(max(0.0f, mad(1.1529719f, _1627, mad(-0.12896876f, _1626, (_1625 * -0.024003278f)))))) + saturate(max(0.0f, mad(1.1529719f, _2000, mad(-0.12896876f, _1999, (_1998 * -0.024003278f))))))) + _488) * _2033);
  } else {
    _2056 = _486;  // [sem: expr_sat]
    _2057 = _487;  // [sem: expr_sat]
    _2058 = _488;  // [sem: expr_sat]
  }
  _2065 = 1.0f - abs(_etcParams.w);
  _2069 = saturate(_etcParams.w);  // [sem: expr_sat]
  _2070 = (_2065 * saturate(_2056)) + _2069;
  _2071 = (_2065 * saturate(_2057)) + _2069;
  _2072 = (_2065 * saturate(_2058)) + _2069;
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
  _2139 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _2150 = (TEXCOORD.x * 2.0f) + -1.0f;
  _2151 = TEXCOORD.y * 2.0f;
  _2152 = 1.0f - _2151;
  _2180 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _2152, ((_projToPrevProj[3].x) * _2150))) + (_projToPrevProj[3].w);
  _2183 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _2152, ((_projToPrevProj[0].x) * _2150))) + (_projToPrevProj[0].w)) / _2180) - _2150;
  _2184 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _2152, ((_projToPrevProj[1].x) * _2150))) + (_projToPrevProj[1].w)) / _2180) - _2152;
  if (_localToneMappingParams.w > 0.0f) {
    _2198 = saturate(1.0f - (sqrt((_2184 * _2184) + (_2183 * _2183)) * 2.0f));  // [sem: expr_sat]
  } else {
    _2198 = 1.0f;  // [sem: expr_sat]
  }
  _2201 = abs(_2150);
  _2202 = abs(_2151 + -1.0f);
  _2206 = saturate(1.0f - ((_2198 * _postProcessParams.x) * dot(float2(_2201, _2202), float2(_2201, _2202))));  // [sem: expr_sat]
  _2215 = (!(SV_Position.y < _viewDir.w)) && (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w)));
  SV_Target.x = select(_2215, (_2206 * exp2(log2(saturate(mad(_colorBlind0.z, _2109, mad(_colorBlind0.y, _2108, (_colorBlind0.x * _2107))))) * _2139)), 0.0f);
  SV_Target.y = select(_2215, (_2206 * exp2(log2(saturate(mad(_colorBlind1.z, _2109, mad(_colorBlind1.y, _2108, (_colorBlind1.x * _2107))))) * _2139)), 0.0f);
  SV_Target.z = select(_2215, (_2206 * exp2(log2(saturate(mad(_colorBlind2.z, _2109, mad(_colorBlind2.y, _2108, (_colorBlind2.x * _2107))))) * _2139)), 0.0f);
  SV_Target.w = _18.w;
  return SV_Target;
}
