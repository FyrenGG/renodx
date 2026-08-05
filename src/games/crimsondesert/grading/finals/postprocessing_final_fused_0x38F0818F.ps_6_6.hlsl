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
  _92 = (uint)(_screenSizeAndInvSize.x * TEXCOORD.x);
  _95 = (uint)(_screenSizeAndInvSize.y * TEXCOORD.y);
  _100 = _exposure0.x * _userImageAdjust.z;
  _102 = _100 * _slopeParams.x;
  _104 = _100 * _slopeParams.y;
  _106 = _100 * _slopeParams.z;
  _122 = exp2(_powerParams.x * log2(max(0.0f, ((_102 * max(0.0f, (((_87 * -0.62179f) - (_86 * 0.08326f)) + (_88 * 1.70505f)))) + _offsetParams.x))));
  _136 = exp2(log2(max(0.0f, ((max(0.0f, (((_87 * 1.1408f) - (_86 * 0.01055f)) - (_88 * 0.13026f))) * _104) + _offsetParams.y))) * _powerParams.y);
  _150 = exp2(log2(max(0.0f, ((max(0.0f, (((_86 * 1.15297f) - (_87 * 0.12897f)) - (_88 * 0.024f))) * _106) + _offsetParams.z))) * _powerParams.z);
  _151 = dot(float3(_122, _136, _150), float3(0.212671f, 0.71516f, 0.072169f));
  _155 = ((_122 - _151) * _powerParams.w) + _151;
  _159 = (lerp(_151, _136, _powerParams.w)) * 3.0f;  // [sem: blended]
  _163 = (lerp(_151, _150, _powerParams.w)) * 3.0f;  // [sem: blended]
  _166 = mad(-1.7106533e-05f, _163, mad(0.00040110573f, _159, (_155 * 3.0009599f)));
  _169 = mad(-2.34209e-05f, _163, mad(0.9997657f, _159, (_155 * -6.0908147e-05f)));
  _172 = mad(1.0005832f, _163, mad(8.34018e-05f, _159, (_155 * 4.855916e-05f)));
  _175 = mad(0.04736635f, _172, mad(0.33951214f, _169, (_166 * 0.61319155f)));
  _178 = mad(0.013450007f, _172, mad(0.91633576f, _169, (_166 * 0.07020692f)));
  _181 = mad(0.8696068f, _172, mad(0.1095673f, _169, (_166 * 0.020618873f)));
  _182 = dot(float3(_175, _178, _181), float3(0.27222872f, 0.67408174f, 0.053689517f));
  _184 = (_175 / _182) + -1.0f;
  _186 = (_178 / _182) + -1.0f;
  _188 = (_181 / _182) + -1.0f;
  _197 = (1.0f - exp2(dot(float3(_184, _186, _188), float3(_184, _186, _188)) * -4.0f)) * (1.0f - exp2((_182 * _182) * -4.0f));
  _203 = ((mad(-0.06368284f, _181, mad(-0.3292913f, _178, (_175 * 1.3704128f))) - _175) * _197) + _175;
  _209 = ((mad(-0.010861567f, _181, mad(1.0970908f, _178, (_175 * -0.08343426f))) - _178) * _197) + _178;
  _215 = ((mad(1.2036945f, _181, mad(-0.098625645f, _178, (_175 * -0.02579326f))) - _181) * _197) + _181;
  _221 = ((mad(0.061360642f, _215, mad(-4.5401976e-09f, _209, (_203 * 0.9386394f))) - _203) * 0.6f) + _203;
  _227 = ((mad(0.1692059f, _215, mad(0.8307942f, _209, (_203 * 6.775372e-08f))) - _209) * 0.6f) + _209;
  _231 = (mad(-2.3283064e-10f, _209, (_203 * -9.313226e-10f)) * 0.6f) + _215;
  _234 = mad(0.16386905f, _231, mad(0.14067869f, _227, (_221 * 0.6954522f)));
  _237 = mad(0.095534325f, _231, mad(0.8596711f, _227, (_221 * 0.04479458f)));
  _240 = mad(1.0015007f, _231, mad(0.00402521f, _227, (_221 * -0.005525883f)));
  _242 = max(max(_234, _237), _240);
  _249 = (max(_242, 1e-10f) - max(min(min(_234, _237), _240), 1e-10f)) / max(_242, 0.01f);
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
    _306 = (_300 < 0.0f);
    _307 = (_300 == 0.0f);
    _308 = (_303 >= 0.0f);
    _309 = (_303 < 0.0f);
    _320 = select((_308 && _307), 90.0f, select((_309 && _307), -90.0f, (select((_309 && _306), (_305 + -3.1415927f), select((_308 && _306), (_305 + 3.1415927f), _305)) * 57.295776f)));
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
  _355 = log2(max(0.0f, mad(-0.21492857f, _293, mad(-0.23651075f, _292, (_350 * 1.4514393f)))));
  _360 = log2(max(0.0f, mad(-0.09967592f, _293, mad(1.1762297f, _292, (_350 * -0.07655378f)))));
  _365 = log2(max(0.0f, mad(0.9977163f, _293, mad(-0.0060324497f, _292, (_350 * 0.008316148f)))));
  _366 = _355 * 0.30103f;
  _367 = _360 * 0.30103f;
  _368 = _365 * 0.30103f;
  _370 = (_355 * 0.2739373f) + 0.7790625f;
  _372 = (_360 * 0.2739373f) + 0.7790625f;
  _374 = (_365 * 0.2739373f) + 0.7790625f;
  _381 = select((_366 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_355 * 1.43712f)) + 1.0f)), _370);
  _388 = select((_367 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_360 * 1.43712f)) + 1.0f)), _372);
  _395 = select((_368 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_365 * 1.43712f)) + 1.0f)), _374);
  _399 = 1.0f - saturate(-0.78987026f - (_355 * 0.9446112f));
  _403 = 1.0f - saturate(-0.78987026f - (_360 * 0.9446112f));
  _407 = 1.0f - saturate(-0.78987026f - (_365 * 0.9446112f));
  _423 = max(0.0f, ((((_399 * _399) * (3.0f - (_399 * 2.0f))) * (select((_366 > -0.57039833f), (1.04f - (1.56f / (exp2((_355 * 1.013354f) + 1.9201254f) + 1.0f))), _370) - _381)) + _381));
  _439 = max(0.0f, ((((_403 * _403) * (3.0f - (_403 * 2.0f))) * (select((_367 > -0.57039833f), (1.04f - (1.56f / (exp2((_360 * 1.013354f) + 1.9201254f) + 1.0f))), _372) - _388)) + _388));
  _455 = max(0.0f, ((((_407 * _407) * (3.0f - (_407 * 2.0f))) * (select((_368 > -0.57039833f), (1.04f - (1.56f / (exp2((_365 * 1.013354f) + 1.9201254f) + 1.0f))), _374) - _395)) + _395));
  _461 = ((mad(-0.06537104f, _455, mad(1.4518155e-06f, _439, (_423 * 1.0653747f))) - _423) * 0.6f) + _423;
  _467 = ((mad(-0.2036677f, _455, mad(1.2036635f, _439, (_423 * -2.5716145e-07f))) - _439) * 0.6f) + _439;
  _473 = ((mad(0.99999964f, _455, mad(2.0954758e-08f, _439, (_423 * 1.8626451e-08f))) - _455) * 0.6f) + _455;
  _478 = saturate(max(0.0f, mad(-0.08325848f, _473, mad(-0.6217906f, _467, (_461 * 1.7050515f)))));  // [sem: expr_sat]
  _483 = saturate(max(0.0f, mad(-0.010548528f, _473, mad(1.1408027f, _467, (_461 * -0.13025719f)))));  // [sem: expr_sat]
  _488 = saturate(max(0.0f, mad(1.1529719f, _473, mad(-0.12896876f, _467, (_461 * -0.024003278f)))));  // [sem: expr_sat]
  _491 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_491.x < 1e-07f) || (_491.x == 1.0f))) {
    _500 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _503 = __3__36__0__0__g_sceneColor.Load(int3(_92, ((int)((uint)((uint)(_95)) + (uint)(-1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _508 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_92)) + (uint)(-1))), _95, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _513 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_92)) + (uint)(1))), _95, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _518 = __3__36__0__0__g_sceneColor.Load(int3(_92, ((int)((uint)((uint)(_95)) + (uint)(1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _537 = exp2(_powerParams.x * log2(max(0.0f, (_offsetParams.x + (max(0.0f, (((_503.x * 1.70505f) - (_503.y * 0.62179f)) - (_503.z * 0.08326f))) * _102)))));
    _551 = exp2(log2(max(0.0f, ((max(0.0f, (((_503.y * 1.1408f) - (_503.x * 0.13026f)) - (_503.z * 0.01055f))) * _104) + _offsetParams.y))) * _powerParams.y);
    _565 = exp2(log2(max(0.0f, ((max(0.0f, (((_503.x * -0.024f) - (_503.y * 0.12897f)) + (_503.z * 1.15297f))) * _106) + _offsetParams.z))) * _powerParams.z);
    _566 = dot(float3(_537, _551, _565), float3(0.212671f, 0.71516f, 0.072169f));
    _570 = ((_537 - _566) * _powerParams.w) + _566;
    _574 = (lerp(_566, _551, _powerParams.w)) * 3.0f;  // [sem: blended]
    _578 = (lerp(_566, _565, _powerParams.w)) * 3.0f;  // [sem: blended]
    _581 = mad(-1.7106533e-05f, _578, mad(0.00040110573f, _574, (_570 * 3.0009599f)));
    _584 = mad(-2.34209e-05f, _578, mad(0.9997657f, _574, (_570 * -6.0908147e-05f)));
    _587 = mad(1.0005832f, _578, mad(8.34018e-05f, _574, (_570 * 4.855916e-05f)));
    _590 = mad(0.04736635f, _587, mad(0.33951214f, _584, (_581 * 0.61319155f)));
    _593 = mad(0.013450007f, _587, mad(0.91633576f, _584, (_581 * 0.07020692f)));
    _596 = mad(0.8696068f, _587, mad(0.1095673f, _584, (_581 * 0.020618873f)));
    _597 = dot(float3(_590, _593, _596), float3(0.27222872f, 0.67408174f, 0.053689517f));
    _599 = (_590 / _597) + -1.0f;
    _601 = (_593 / _597) + -1.0f;
    _603 = (_596 / _597) + -1.0f;
    _612 = (1.0f - exp2(dot(float3(_599, _601, _603), float3(_599, _601, _603)) * -4.0f)) * (1.0f - exp2((_597 * _597) * -4.0f));
    _618 = ((mad(-0.06368284f, _596, mad(-0.3292913f, _593, (_590 * 1.3704128f))) - _590) * _612) + _590;
    _624 = ((mad(-0.010861567f, _596, mad(1.0970908f, _593, (_590 * -0.08343426f))) - _593) * _612) + _593;
    _630 = ((mad(1.2036945f, _596, mad(-0.098625645f, _593, (_590 * -0.02579326f))) - _596) * _612) + _596;
    _636 = ((mad(0.061360642f, _630, mad(-4.5401976e-09f, _624, (_618 * 0.9386394f))) - _618) * 0.6f) + _618;
    _642 = ((mad(0.1692059f, _630, mad(0.8307942f, _624, (_618 * 6.775372e-08f))) - _624) * 0.6f) + _624;
    _646 = (mad(-2.3283064e-10f, _624, (_618 * -9.313226e-10f)) * 0.6f) + _630;
    _649 = mad(0.16386905f, _646, mad(0.14067869f, _642, (_636 * 0.6954522f)));
    _652 = mad(0.095534325f, _646, mad(0.8596711f, _642, (_636 * 0.04479458f)));
    _655 = mad(1.0015007f, _646, mad(0.00402521f, _642, (_636 * -0.005525883f)));
    _657 = max(max(_649, _652), _655);
    _664 = (max(_657, 1e-10f) - max(min(min(_649, _652), _655), 1e-10f)) / max(_657, 0.01f);
    _677 = ((_652 + _649) + _655) + (sqrt((((_655 - _652) * _655) + ((_652 - _649) * _652)) + ((_649 - _655) * _649)) * 1.75f);
    _678 = _677 * 0.33333334f;
    _679 = _664 + -0.4f;
    _680 = _679 * 5.0f;
    _684 = max((1.0f - abs(_679 * 2.5f)), 0.0f);
    _695 = ((((float)((int)((int)((int)(uint)((int)(_680 > 0.0f))) - (int)((int)(uint)((int)(_680 < 0.0f)))))) * (1.0f - (_684 * _684))) + 1.0f) * 0.025f;
    if (!(_678 <= 0.053333335f)) {
      if (!(_678 >= 0.16f)) {
        _704 = (((0.24f / _677) + -0.5f) * _695);
      } else {
        _704 = 0.0f;
      }
    } else {
      _704 = _695;
    }
    _705 = _704 + 1.0f;
    _706 = _705 * _649;
    _707 = _705 * _652;
    _708 = _705 * _655;
    if (!((_706 == _707) && (_707 == _708))) {
      _715 = ((_706 * 2.0f) - _707) - _708;
      _718 = ((_652 - _655) * 1.7320508f) * _705;
      _720 = atan(_718 / _715);
      _721 = (_715 < 0.0f);
      _722 = (_715 == 0.0f);
      _723 = (_718 >= 0.0f);
      _724 = (_718 < 0.0f);
      _735 = select((_723 && _722), 90.0f, select((_724 && _722), -90.0f, (select((_724 && _721), (_720 + -3.1415927f), select((_723 && _721), (_720 + 3.1415927f), _720)) * 57.295776f)));
      if (_735 < 0.0f) {
        _740 = (_735 + 360.0f);
      } else {
        _740 = _735;
      }
    } else {
      _740 = 0.0f;
    }
    _742 = min(max(_740, 0.0f), 360.0f);
    if (_742 < -180.0f) {
      _751 = (_742 + 360.0f);
    } else {
      if (_742 > 180.0f) {
        _751 = (_742 + -360.0f);
      } else {
        _751 = _742;
      }
    }
    _755 = saturate(1.0f - abs(_751 * 0.014814815f));  // [sem: expr_sat]
    _759 = (_755 * _755) * (3.0f - (_755 * 2.0f));
    _765 = ((_759 * _759) * ((_664 * 0.18f) * (0.03f - _706))) + _706;
    _770 = log2(max(0.0f, mad(-0.21492857f, _708, mad(-0.23651075f, _707, (_765 * 1.4514393f)))));
    _775 = log2(max(0.0f, mad(-0.09967592f, _708, mad(1.1762297f, _707, (_765 * -0.07655378f)))));
    _780 = log2(max(0.0f, mad(0.9977163f, _708, mad(-0.0060324497f, _707, (_765 * 0.008316148f)))));
    _781 = _770 * 0.30103f;
    _782 = _775 * 0.30103f;
    _783 = _780 * 0.30103f;
    _785 = (_770 * 0.2739373f) + 0.7790625f;
    _787 = (_775 * 0.2739373f) + 0.7790625f;
    _789 = (_780 * 0.2739373f) + 0.7790625f;
    _796 = select((_781 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_770 * 1.43712f)) + 1.0f)), _785);
    _803 = select((_782 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_775 * 1.43712f)) + 1.0f)), _787);
    _810 = select((_783 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_780 * 1.43712f)) + 1.0f)), _789);
    _814 = 1.0f - saturate(-0.78987026f - (_770 * 0.9446112f));
    _818 = 1.0f - saturate(-0.78987026f - (_775 * 0.9446112f));
    _822 = 1.0f - saturate(-0.78987026f - (_780 * 0.9446112f));
    _838 = max(0.0f, ((((_814 * _814) * (3.0f - (_814 * 2.0f))) * (select((_781 > -0.57039833f), (1.04f - (1.56f / (exp2((_770 * 1.013354f) + 1.9201254f) + 1.0f))), _785) - _796)) + _796));
    _854 = max(0.0f, ((((_818 * _818) * (3.0f - (_818 * 2.0f))) * (select((_782 > -0.57039833f), (1.04f - (1.56f / (exp2((_775 * 1.013354f) + 1.9201254f) + 1.0f))), _787) - _803)) + _803));
    _870 = max(0.0f, ((((_822 * _822) * (3.0f - (_822 * 2.0f))) * (select((_783 > -0.57039833f), (1.04f - (1.56f / (exp2((_780 * 1.013354f) + 1.9201254f) + 1.0f))), _789) - _810)) + _810));
    _876 = ((mad(-0.06537104f, _870, mad(1.4518155e-06f, _854, (_838 * 1.0653747f))) - _838) * 0.6f) + _838;
    _882 = ((mad(-0.2036677f, _870, mad(1.2036635f, _854, (_838 * -2.5716145e-07f))) - _854) * 0.6f) + _854;
    _888 = ((mad(0.99999964f, _870, mad(2.0954758e-08f, _854, (_838 * 1.8626451e-08f))) - _870) * 0.6f) + _870;
    _893 = saturate(max(0.0f, mad(-0.010548528f, _888, mad(1.1408027f, _882, (_876 * -0.13025719f)))));  // [sem: expr_sat]
    _905 = exp2(log2(max(0.0f, ((max(0.0f, (((_508.x * 1.70505f) - (_508.y * 0.62179f)) - (_508.z * 0.08326f))) * _102) + _offsetParams.x))) * _powerParams.x);
    _917 = exp2(log2(max(0.0f, ((max(0.0f, (((_508.y * 1.1408f) - (_508.x * 0.13026f)) - (_508.z * 0.01055f))) * _104) + _offsetParams.y))) * _powerParams.y);
    _929 = exp2(log2(max(0.0f, ((max(0.0f, (((_508.x * -0.024f) - (_508.y * 0.12897f)) + (_508.z * 1.15297f))) * _106) + _offsetParams.z))) * _powerParams.z);
    _930 = dot(float3(_905, _917, _929), float3(0.212671f, 0.71516f, 0.072169f));
    _933 = ((_905 - _930) * _powerParams.w) + _930;
    _937 = (lerp(_930, _917, _powerParams.w)) * 3.0f;  // [sem: blended]
    _941 = (lerp(_930, _929, _powerParams.w)) * 3.0f;  // [sem: blended]
    _944 = mad(-1.7106533e-05f, _941, mad(0.00040110573f, _937, (_933 * 3.0009599f)));
    _947 = mad(-2.34209e-05f, _941, mad(0.9997657f, _937, (_933 * -6.0908147e-05f)));
    _950 = mad(1.0005832f, _941, mad(8.34018e-05f, _937, (_933 * 4.855916e-05f)));
    _953 = mad(0.04736635f, _950, mad(0.33951214f, _947, (_944 * 0.61319155f)));
    _956 = mad(0.013450007f, _950, mad(0.91633576f, _947, (_944 * 0.07020692f)));
    _959 = mad(0.8696068f, _950, mad(0.1095673f, _947, (_944 * 0.020618873f)));
    _960 = dot(float3(_953, _956, _959), float3(0.27222872f, 0.67408174f, 0.053689517f));
    _962 = (_953 / _960) + -1.0f;
    _964 = (_956 / _960) + -1.0f;
    _966 = (_959 / _960) + -1.0f;
    _975 = (1.0f - exp2(dot(float3(_962, _964, _966), float3(_962, _964, _966)) * -4.0f)) * (1.0f - exp2((_960 * _960) * -4.0f));
    _981 = ((mad(-0.06368284f, _959, mad(-0.3292913f, _956, (_953 * 1.3704128f))) - _953) * _975) + _953;
    _987 = ((mad(-0.010861567f, _959, mad(1.0970908f, _956, (_953 * -0.08343426f))) - _956) * _975) + _956;
    _993 = ((mad(1.2036945f, _959, mad(-0.098625645f, _956, (_953 * -0.02579326f))) - _959) * _975) + _959;
    _999 = ((mad(0.061360642f, _993, mad(-4.5401976e-09f, _987, (_981 * 0.9386394f))) - _981) * 0.6f) + _981;
    _1005 = ((mad(0.1692059f, _993, mad(0.8307942f, _987, (_981 * 6.775372e-08f))) - _987) * 0.6f) + _987;
    _1009 = (mad(-2.3283064e-10f, _987, (_981 * -9.313226e-10f)) * 0.6f) + _993;
    _1012 = mad(0.16386905f, _1009, mad(0.14067869f, _1005, (_999 * 0.6954522f)));
    _1015 = mad(0.095534325f, _1009, mad(0.8596711f, _1005, (_999 * 0.04479458f)));
    _1018 = mad(1.0015007f, _1009, mad(0.00402521f, _1005, (_999 * -0.005525883f)));
    _1020 = max(max(_1012, _1015), _1018);
    _1027 = (max(_1020, 1e-10f) - max(min(min(_1012, _1015), _1018), 1e-10f)) / max(_1020, 0.01f);
    _1040 = ((_1015 + _1012) + _1018) + (sqrt((((_1018 - _1015) * _1018) + ((_1015 - _1012) * _1015)) + ((_1012 - _1018) * _1012)) * 1.75f);
    _1041 = _1040 * 0.33333334f;
    _1042 = _1027 + -0.4f;
    _1043 = _1042 * 5.0f;
    _1047 = max((1.0f - abs(_1042 * 2.5f)), 0.0f);
    _1058 = ((((float)((int)((int)((int)(uint)((int)(_1043 > 0.0f))) - (int)((int)(uint)((int)(_1043 < 0.0f)))))) * (1.0f - (_1047 * _1047))) + 1.0f) * 0.025f;
    if (!(_1041 <= 0.053333335f)) {
      if (!(_1041 >= 0.16f)) {
        _1067 = (((0.24f / _1040) + -0.5f) * _1058);
      } else {
        _1067 = 0.0f;
      }
    } else {
      _1067 = _1058;
    }
    _1068 = _1067 + 1.0f;
    _1069 = _1068 * _1012;
    _1070 = _1068 * _1015;
    _1071 = _1068 * _1018;
    if (!((_1069 == _1070) && (_1070 == _1071))) {
      _1078 = ((_1069 * 2.0f) - _1070) - _1071;
      _1081 = ((_1015 - _1018) * 1.7320508f) * _1068;
      _1083 = atan(_1081 / _1078);
      _1084 = (_1078 < 0.0f);
      _1085 = (_1078 == 0.0f);
      _1086 = (_1081 >= 0.0f);
      _1087 = (_1081 < 0.0f);
      _1098 = select((_1086 && _1085), 90.0f, select((_1087 && _1085), -90.0f, (select((_1087 && _1084), (_1083 + -3.1415927f), select((_1086 && _1084), (_1083 + 3.1415927f), _1083)) * 57.295776f)));
      if (_1098 < 0.0f) {
        _1103 = (_1098 + 360.0f);
      } else {
        _1103 = _1098;
      }
    } else {
      _1103 = 0.0f;
    }
    _1105 = min(max(_1103, 0.0f), 360.0f);
    if (_1105 < -180.0f) {
      _1114 = (_1105 + 360.0f);
    } else {
      if (_1105 > 180.0f) {
        _1114 = (_1105 + -360.0f);
      } else {
        _1114 = _1105;
      }
    }
    _1118 = saturate(1.0f - abs(_1114 * 0.014814815f));  // [sem: expr_sat]
    _1122 = (_1118 * _1118) * (3.0f - (_1118 * 2.0f));
    _1128 = ((_1122 * _1122) * ((_1027 * 0.18f) * (0.03f - _1069))) + _1069;
    _1133 = log2(max(0.0f, mad(-0.21492857f, _1071, mad(-0.23651075f, _1070, (_1128 * 1.4514393f)))));
    _1138 = log2(max(0.0f, mad(-0.09967592f, _1071, mad(1.1762297f, _1070, (_1128 * -0.07655378f)))));
    _1143 = log2(max(0.0f, mad(0.9977163f, _1071, mad(-0.0060324497f, _1070, (_1128 * 0.008316148f)))));
    _1144 = _1133 * 0.30103f;
    _1145 = _1138 * 0.30103f;
    _1146 = _1143 * 0.30103f;
    _1148 = (_1133 * 0.2739373f) + 0.7790625f;
    _1150 = (_1138 * 0.2739373f) + 0.7790625f;
    _1152 = (_1143 * 0.2739373f) + 0.7790625f;
    _1159 = select((_1144 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1133 * 1.43712f)) + 1.0f)), _1148);
    _1166 = select((_1145 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1138 * 1.43712f)) + 1.0f)), _1150);
    _1173 = select((_1146 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1143 * 1.43712f)) + 1.0f)), _1152);
    _1177 = 1.0f - saturate(-0.78987026f - (_1133 * 0.9446112f));
    _1181 = 1.0f - saturate(-0.78987026f - (_1138 * 0.9446112f));
    _1185 = 1.0f - saturate(-0.78987026f - (_1143 * 0.9446112f));
    _1201 = max(0.0f, ((((_1177 * _1177) * (3.0f - (_1177 * 2.0f))) * (select((_1144 > -0.57039833f), (1.04f - (1.56f / (exp2((_1133 * 1.013354f) + 1.9201254f) + 1.0f))), _1148) - _1159)) + _1159));
    _1217 = max(0.0f, ((((_1181 * _1181) * (3.0f - (_1181 * 2.0f))) * (select((_1145 > -0.57039833f), (1.04f - (1.56f / (exp2((_1138 * 1.013354f) + 1.9201254f) + 1.0f))), _1150) - _1166)) + _1166));
    _1233 = max(0.0f, ((((_1185 * _1185) * (3.0f - (_1185 * 2.0f))) * (select((_1146 > -0.57039833f), (1.04f - (1.56f / (exp2((_1143 * 1.013354f) + 1.9201254f) + 1.0f))), _1152) - _1173)) + _1173));
    _1239 = ((mad(-0.06537104f, _1233, mad(1.4518155e-06f, _1217, (_1201 * 1.0653747f))) - _1201) * 0.6f) + _1201;
    _1245 = ((mad(-0.2036677f, _1233, mad(1.2036635f, _1217, (_1201 * -2.5716145e-07f))) - _1217) * 0.6f) + _1217;
    _1251 = ((mad(0.99999964f, _1233, mad(2.0954758e-08f, _1217, (_1201 * 1.8626451e-08f))) - _1233) * 0.6f) + _1233;
    _1256 = saturate(max(0.0f, mad(-0.010548528f, _1251, mad(1.1408027f, _1245, (_1239 * -0.13025719f)))));  // [sem: expr_sat]
    _1268 = exp2(log2(max(0.0f, ((max(0.0f, (((_513.x * 1.70505f) - (_513.y * 0.62179f)) - (_513.z * 0.08326f))) * _102) + _offsetParams.x))) * _powerParams.x);
    _1280 = exp2(log2(max(0.0f, ((max(0.0f, (((_513.y * 1.1408f) - (_513.x * 0.13026f)) - (_513.z * 0.01055f))) * _104) + _offsetParams.y))) * _powerParams.y);
    _1292 = exp2(log2(max(0.0f, ((max(0.0f, (((_513.x * -0.024f) - (_513.y * 0.12897f)) + (_513.z * 1.15297f))) * _106) + _offsetParams.z))) * _powerParams.z);
    _1293 = dot(float3(_1268, _1280, _1292), float3(0.212671f, 0.71516f, 0.072169f));
    _1296 = ((_1268 - _1293) * _powerParams.w) + _1293;
    _1300 = (lerp(_1293, _1280, _powerParams.w)) * 3.0f;  // [sem: blended]
    _1304 = (lerp(_1293, _1292, _powerParams.w)) * 3.0f;  // [sem: blended]
    _1307 = mad(-1.7106533e-05f, _1304, mad(0.00040110573f, _1300, (_1296 * 3.0009599f)));
    _1310 = mad(-2.34209e-05f, _1304, mad(0.9997657f, _1300, (_1296 * -6.0908147e-05f)));
    _1313 = mad(1.0005832f, _1304, mad(8.34018e-05f, _1300, (_1296 * 4.855916e-05f)));
    _1316 = mad(0.04736635f, _1313, mad(0.33951214f, _1310, (_1307 * 0.61319155f)));
    _1319 = mad(0.013450007f, _1313, mad(0.91633576f, _1310, (_1307 * 0.07020692f)));
    _1322 = mad(0.8696068f, _1313, mad(0.1095673f, _1310, (_1307 * 0.020618873f)));
    _1323 = dot(float3(_1316, _1319, _1322), float3(0.27222872f, 0.67408174f, 0.053689517f));
    _1325 = (_1316 / _1323) + -1.0f;
    _1327 = (_1319 / _1323) + -1.0f;
    _1329 = (_1322 / _1323) + -1.0f;
    _1338 = (1.0f - exp2(dot(float3(_1325, _1327, _1329), float3(_1325, _1327, _1329)) * -4.0f)) * (1.0f - exp2((_1323 * _1323) * -4.0f));
    _1344 = ((mad(-0.06368284f, _1322, mad(-0.3292913f, _1319, (_1316 * 1.3704128f))) - _1316) * _1338) + _1316;
    _1350 = ((mad(-0.010861567f, _1322, mad(1.0970908f, _1319, (_1316 * -0.08343426f))) - _1319) * _1338) + _1319;
    _1356 = ((mad(1.2036945f, _1322, mad(-0.098625645f, _1319, (_1316 * -0.02579326f))) - _1322) * _1338) + _1322;
    _1362 = ((mad(0.061360642f, _1356, mad(-4.5401976e-09f, _1350, (_1344 * 0.9386394f))) - _1344) * 0.6f) + _1344;
    _1368 = ((mad(0.1692059f, _1356, mad(0.8307942f, _1350, (_1344 * 6.775372e-08f))) - _1350) * 0.6f) + _1350;
    _1372 = (mad(-2.3283064e-10f, _1350, (_1344 * -9.313226e-10f)) * 0.6f) + _1356;
    _1375 = mad(0.16386905f, _1372, mad(0.14067869f, _1368, (_1362 * 0.6954522f)));
    _1378 = mad(0.095534325f, _1372, mad(0.8596711f, _1368, (_1362 * 0.04479458f)));
    _1381 = mad(1.0015007f, _1372, mad(0.00402521f, _1368, (_1362 * -0.005525883f)));
    _1383 = max(max(_1375, _1378), _1381);
    _1390 = (max(_1383, 1e-10f) - max(min(min(_1375, _1378), _1381), 1e-10f)) / max(_1383, 0.01f);
    _1403 = ((_1378 + _1375) + _1381) + (sqrt((((_1381 - _1378) * _1381) + ((_1378 - _1375) * _1378)) + ((_1375 - _1381) * _1375)) * 1.75f);
    _1404 = _1403 * 0.33333334f;
    _1405 = _1390 + -0.4f;
    _1406 = _1405 * 5.0f;
    _1410 = max((1.0f - abs(_1405 * 2.5f)), 0.0f);
    _1421 = ((((float)((int)((int)((int)(uint)((int)(_1406 > 0.0f))) - (int)((int)(uint)((int)(_1406 < 0.0f)))))) * (1.0f - (_1410 * _1410))) + 1.0f) * 0.025f;
    if (!(_1404 <= 0.053333335f)) {
      if (!(_1404 >= 0.16f)) {
        _1430 = (((0.24f / _1403) + -0.5f) * _1421);
      } else {
        _1430 = 0.0f;
      }
    } else {
      _1430 = _1421;
    }
    _1431 = _1430 + 1.0f;
    _1432 = _1431 * _1375;
    _1433 = _1431 * _1378;
    _1434 = _1431 * _1381;
    if (!((_1432 == _1433) && (_1433 == _1434))) {
      _1441 = ((_1432 * 2.0f) - _1433) - _1434;
      _1444 = ((_1378 - _1381) * 1.7320508f) * _1431;
      _1446 = atan(_1444 / _1441);
      _1447 = (_1441 < 0.0f);
      _1448 = (_1441 == 0.0f);
      _1449 = (_1444 >= 0.0f);
      _1450 = (_1444 < 0.0f);
      _1461 = select((_1449 && _1448), 90.0f, select((_1450 && _1448), -90.0f, (select((_1450 && _1447), (_1446 + -3.1415927f), select((_1449 && _1447), (_1446 + 3.1415927f), _1446)) * 57.295776f)));
      if (_1461 < 0.0f) {
        _1466 = (_1461 + 360.0f);
      } else {
        _1466 = _1461;
      }
    } else {
      _1466 = 0.0f;
    }
    _1468 = min(max(_1466, 0.0f), 360.0f);
    if (_1468 < -180.0f) {
      _1477 = (_1468 + 360.0f);
    } else {
      if (_1468 > 180.0f) {
        _1477 = (_1468 + -360.0f);
      } else {
        _1477 = _1468;
      }
    }
    _1481 = saturate(1.0f - abs(_1477 * 0.014814815f));  // [sem: expr_sat]
    _1485 = (_1481 * _1481) * (3.0f - (_1481 * 2.0f));
    _1491 = ((_1485 * _1485) * ((_1390 * 0.18f) * (0.03f - _1432))) + _1432;
    _1496 = log2(max(0.0f, mad(-0.21492857f, _1434, mad(-0.23651075f, _1433, (_1491 * 1.4514393f)))));
    _1501 = log2(max(0.0f, mad(-0.09967592f, _1434, mad(1.1762297f, _1433, (_1491 * -0.07655378f)))));
    _1506 = log2(max(0.0f, mad(0.9977163f, _1434, mad(-0.0060324497f, _1433, (_1491 * 0.008316148f)))));
    _1507 = _1496 * 0.30103f;
    _1508 = _1501 * 0.30103f;
    _1509 = _1506 * 0.30103f;
    _1511 = (_1496 * 0.2739373f) + 0.7790625f;
    _1513 = (_1501 * 0.2739373f) + 0.7790625f;
    _1515 = (_1506 * 0.2739373f) + 0.7790625f;
    _1522 = select((_1507 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1496 * 1.43712f)) + 1.0f)), _1511);
    _1529 = select((_1508 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1501 * 1.43712f)) + 1.0f)), _1513);
    _1536 = select((_1509 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1506 * 1.43712f)) + 1.0f)), _1515);
    _1540 = 1.0f - saturate(-0.78987026f - (_1496 * 0.9446112f));
    _1544 = 1.0f - saturate(-0.78987026f - (_1501 * 0.9446112f));
    _1548 = 1.0f - saturate(-0.78987026f - (_1506 * 0.9446112f));
    _1564 = max(0.0f, ((((_1540 * _1540) * (3.0f - (_1540 * 2.0f))) * (select((_1507 > -0.57039833f), (1.04f - (1.56f / (exp2((_1496 * 1.013354f) + 1.9201254f) + 1.0f))), _1511) - _1522)) + _1522));
    _1580 = max(0.0f, ((((_1544 * _1544) * (3.0f - (_1544 * 2.0f))) * (select((_1508 > -0.57039833f), (1.04f - (1.56f / (exp2((_1501 * 1.013354f) + 1.9201254f) + 1.0f))), _1513) - _1529)) + _1529));
    _1596 = max(0.0f, ((((_1548 * _1548) * (3.0f - (_1548 * 2.0f))) * (select((_1509 > -0.57039833f), (1.04f - (1.56f / (exp2((_1506 * 1.013354f) + 1.9201254f) + 1.0f))), _1515) - _1536)) + _1536));
    _1602 = ((mad(-0.06537104f, _1596, mad(1.4518155e-06f, _1580, (_1564 * 1.0653747f))) - _1564) * 0.6f) + _1564;
    _1608 = ((mad(-0.2036677f, _1596, mad(1.2036635f, _1580, (_1564 * -2.5716145e-07f))) - _1580) * 0.6f) + _1580;
    _1614 = ((mad(0.99999964f, _1596, mad(2.0954758e-08f, _1580, (_1564 * 1.8626451e-08f))) - _1596) * 0.6f) + _1596;
    _1619 = saturate(max(0.0f, mad(-0.010548528f, _1614, mad(1.1408027f, _1608, (_1602 * -0.13025719f)))));  // [sem: expr_sat]
    _1631 = exp2(log2(max(0.0f, ((max(0.0f, (((_518.x * 1.70505f) - (_518.y * 0.62179f)) - (_518.z * 0.08326f))) * _102) + _offsetParams.x))) * _powerParams.x);
    _1643 = exp2(log2(max(0.0f, ((max(0.0f, (((_518.y * 1.1408f) - (_518.x * 0.13026f)) - (_518.z * 0.01055f))) * _104) + _offsetParams.y))) * _powerParams.y);
    _1655 = exp2(log2(max(0.0f, ((max(0.0f, (((_518.x * -0.024f) - (_518.y * 0.12897f)) + (_518.z * 1.15297f))) * _106) + _offsetParams.z))) * _powerParams.z);
    _1656 = dot(float3(_1631, _1643, _1655), float3(0.212671f, 0.71516f, 0.072169f));
    _1659 = ((_1631 - _1656) * _powerParams.w) + _1656;
    _1663 = (lerp(_1656, _1643, _powerParams.w)) * 3.0f;  // [sem: blended]
    _1667 = (lerp(_1656, _1655, _powerParams.w)) * 3.0f;  // [sem: blended]
    _1670 = mad(-1.7106533e-05f, _1667, mad(0.00040110573f, _1663, (_1659 * 3.0009599f)));
    _1673 = mad(-2.34209e-05f, _1667, mad(0.9997657f, _1663, (_1659 * -6.0908147e-05f)));
    _1676 = mad(1.0005832f, _1667, mad(8.34018e-05f, _1663, (_1659 * 4.855916e-05f)));
    _1679 = mad(0.04736635f, _1676, mad(0.33951214f, _1673, (_1670 * 0.61319155f)));
    _1682 = mad(0.013450007f, _1676, mad(0.91633576f, _1673, (_1670 * 0.07020692f)));
    _1685 = mad(0.8696068f, _1676, mad(0.1095673f, _1673, (_1670 * 0.020618873f)));
    _1686 = dot(float3(_1679, _1682, _1685), float3(0.27222872f, 0.67408174f, 0.053689517f));
    _1688 = (_1679 / _1686) + -1.0f;
    _1690 = (_1682 / _1686) + -1.0f;
    _1692 = (_1685 / _1686) + -1.0f;
    _1701 = (1.0f - exp2(dot(float3(_1688, _1690, _1692), float3(_1688, _1690, _1692)) * -4.0f)) * (1.0f - exp2((_1686 * _1686) * -4.0f));
    _1707 = ((mad(-0.06368284f, _1685, mad(-0.3292913f, _1682, (_1679 * 1.3704128f))) - _1679) * _1701) + _1679;
    _1713 = ((mad(-0.010861567f, _1685, mad(1.0970908f, _1682, (_1679 * -0.08343426f))) - _1682) * _1701) + _1682;
    _1719 = ((mad(1.2036945f, _1685, mad(-0.098625645f, _1682, (_1679 * -0.02579326f))) - _1685) * _1701) + _1685;
    _1725 = ((mad(0.061360642f, _1719, mad(-4.5401976e-09f, _1713, (_1707 * 0.9386394f))) - _1707) * 0.6f) + _1707;
    _1731 = ((mad(0.1692059f, _1719, mad(0.8307942f, _1713, (_1707 * 6.775372e-08f))) - _1713) * 0.6f) + _1713;
    _1735 = (mad(-2.3283064e-10f, _1713, (_1707 * -9.313226e-10f)) * 0.6f) + _1719;
    _1738 = mad(0.16386905f, _1735, mad(0.14067869f, _1731, (_1725 * 0.6954522f)));
    _1741 = mad(0.095534325f, _1735, mad(0.8596711f, _1731, (_1725 * 0.04479458f)));
    _1744 = mad(1.0015007f, _1735, mad(0.00402521f, _1731, (_1725 * -0.005525883f)));
    _1746 = max(max(_1738, _1741), _1744);
    _1753 = (max(_1746, 1e-10f) - max(min(min(_1738, _1741), _1744), 1e-10f)) / max(_1746, 0.01f);
    _1766 = ((_1741 + _1738) + _1744) + (sqrt((((_1744 - _1741) * _1744) + ((_1741 - _1738) * _1741)) + ((_1738 - _1744) * _1738)) * 1.75f);
    _1767 = _1766 * 0.33333334f;
    _1768 = _1753 + -0.4f;
    _1769 = _1768 * 5.0f;
    _1773 = max((1.0f - abs(_1768 * 2.5f)), 0.0f);
    _1784 = ((((float)((int)((int)((int)(uint)((int)(_1769 > 0.0f))) - (int)((int)(uint)((int)(_1769 < 0.0f)))))) * (1.0f - (_1773 * _1773))) + 1.0f) * 0.025f;
    if (!(_1767 <= 0.053333335f)) {
      if (!(_1767 >= 0.16f)) {
        _1793 = (((0.24f / _1766) + -0.5f) * _1784);
      } else {
        _1793 = 0.0f;
      }
    } else {
      _1793 = _1784;
    }
    _1794 = _1793 + 1.0f;
    _1795 = _1794 * _1738;
    _1796 = _1794 * _1741;
    _1797 = _1794 * _1744;
    if (!((_1795 == _1796) && (_1796 == _1797))) {
      _1804 = ((_1795 * 2.0f) - _1796) - _1797;
      _1807 = ((_1741 - _1744) * 1.7320508f) * _1794;
      _1809 = atan(_1807 / _1804);
      _1810 = (_1804 < 0.0f);
      _1811 = (_1804 == 0.0f);
      _1812 = (_1807 >= 0.0f);
      _1813 = (_1807 < 0.0f);
      _1824 = select((_1812 && _1811), 90.0f, select((_1813 && _1811), -90.0f, (select((_1813 && _1810), (_1809 + -3.1415927f), select((_1812 && _1810), (_1809 + 3.1415927f), _1809)) * 57.295776f)));
      if (_1824 < 0.0f) {
        _1829 = (_1824 + 360.0f);
      } else {
        _1829 = _1824;
      }
    } else {
      _1829 = 0.0f;
    }
    _1831 = min(max(_1829, 0.0f), 360.0f);
    if (_1831 < -180.0f) {
      _1840 = (_1831 + 360.0f);
    } else {
      if (_1831 > 180.0f) {
        _1840 = (_1831 + -360.0f);
      } else {
        _1840 = _1831;
      }
    }
    _1844 = saturate(1.0f - abs(_1840 * 0.014814815f));  // [sem: expr_sat]
    _1848 = (_1844 * _1844) * (3.0f - (_1844 * 2.0f));
    _1854 = ((_1848 * _1848) * ((_1753 * 0.18f) * (0.03f - _1795))) + _1795;
    _1859 = log2(max(0.0f, mad(-0.21492857f, _1797, mad(-0.23651075f, _1796, (_1854 * 1.4514393f)))));
    _1864 = log2(max(0.0f, mad(-0.09967592f, _1797, mad(1.1762297f, _1796, (_1854 * -0.07655378f)))));
    _1869 = log2(max(0.0f, mad(0.9977163f, _1797, mad(-0.0060324497f, _1796, (_1854 * 0.008316148f)))));
    _1870 = _1859 * 0.30103f;
    _1871 = _1864 * 0.30103f;
    _1872 = _1869 * 0.30103f;
    _1874 = (_1859 * 0.2739373f) + 0.7790625f;
    _1876 = (_1864 * 0.2739373f) + 0.7790625f;
    _1878 = (_1869 * 0.2739373f) + 0.7790625f;
    _1885 = select((_1870 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1859 * 1.43712f)) + 1.0f)), _1874);
    _1892 = select((_1871 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1864 * 1.43712f)) + 1.0f)), _1876);
    _1899 = select((_1872 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1869 * 1.43712f)) + 1.0f)), _1878);
    _1903 = 1.0f - saturate(-0.78987026f - (_1859 * 0.9446112f));
    _1907 = 1.0f - saturate(-0.78987026f - (_1864 * 0.9446112f));
    _1911 = 1.0f - saturate(-0.78987026f - (_1869 * 0.9446112f));
    _1927 = max(0.0f, ((((_1903 * _1903) * (3.0f - (_1903 * 2.0f))) * (select((_1870 > -0.57039833f), (1.04f - (1.56f / (exp2((_1859 * 1.013354f) + 1.9201254f) + 1.0f))), _1874) - _1885)) + _1885));
    _1943 = max(0.0f, ((((_1907 * _1907) * (3.0f - (_1907 * 2.0f))) * (select((_1871 > -0.57039833f), (1.04f - (1.56f / (exp2((_1864 * 1.013354f) + 1.9201254f) + 1.0f))), _1876) - _1892)) + _1892));
    _1959 = max(0.0f, ((((_1911 * _1911) * (3.0f - (_1911 * 2.0f))) * (select((_1872 > -0.57039833f), (1.04f - (1.56f / (exp2((_1869 * 1.013354f) + 1.9201254f) + 1.0f))), _1878) - _1899)) + _1899));
    _1965 = ((mad(-0.06537104f, _1959, mad(1.4518155e-06f, _1943, (_1927 * 1.0653747f))) - _1927) * 0.6f) + _1927;
    _1971 = ((mad(-0.2036677f, _1959, mad(1.2036635f, _1943, (_1927 * -2.5716145e-07f))) - _1943) * 0.6f) + _1943;
    _1977 = ((mad(0.99999964f, _1959, mad(2.0954758e-08f, _1943, (_1927 * 1.8626451e-08f))) - _1959) * 0.6f) + _1959;
    _1982 = saturate(max(0.0f, mad(-0.010548528f, _1977, mad(1.1408027f, _1971, (_1965 * -0.13025719f)))));  // [sem: expr_sat]
    _1986 = max(max(_483, _893), max(max(_1256, _1619), _1982));
    _2002 = (-1.0f / (((1.0f - _500) * 8.0f) + (_500 * 5.0f))) * sqrt(saturate((1.0f / _1986) * min(min(min(_483, _893), min(min(_1256, _1619), _1982)), (1.0f - _1986))));
    _2005 = 1.0f / ((_2002 * 4.0f) + 1.0f);
    // [sem: expr_sat]
    _2068 = saturate((((((saturate(max(0.0f, mad(1.1529719f, _888, mad(-0.12896876f, _882, (_876 * -0.024003278f))))) + saturate(max(0.0f, mad(1.1529719f, _1251, mad(-0.12896876f, _1245, (_1239 * -0.024003278f)))))) + saturate(max(0.0f, mad(1.1529719f, _1614, mad(-0.12896876f, _1608, (_1602 * -0.024003278f)))))) + saturate(max(0.0f, mad(1.1529719f, _1977, mad(-0.12896876f, _1971, (_1965 * -0.024003278f)))))) * _2002) + _488) * _2005);
    _2069 = saturate(((_2002 * (((_1256 + _893) + _1619) + _1982)) + _483) * _2005);  // [sem: expr_sat]
    // [sem: expr_sat]
    _2070 = saturate((((((saturate(max(0.0f, mad(-0.08325848f, _888, mad(-0.6217906f, _882, (_876 * 1.7050515f))))) + saturate(max(0.0f, mad(-0.08325848f, _1251, mad(-0.6217906f, _1245, (_1239 * 1.7050515f)))))) + saturate(max(0.0f, mad(-0.08325848f, _1614, mad(-0.6217906f, _1608, (_1602 * 1.7050515f)))))) + saturate(max(0.0f, mad(-0.08325848f, _1977, mad(-0.6217906f, _1971, (_1965 * 1.7050515f)))))) * _2002) + _478) * _2005);
  } else {
    _2068 = _488;  // [sem: expr_sat]
    _2069 = _483;  // [sem: expr_sat]
    _2070 = _478;  // [sem: expr_sat]
  }
  _2074 = 1.0f - abs(_etcParams.w);
  _2075 = saturate(_etcParams.w);  // [sem: expr_sat]
  _2078 = (saturate(_2070) * _2074) + _2075;
  _2081 = (saturate(_2069) * _2074) + _2075;
  _2084 = (saturate(_2068) * _2074) + _2075;
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
  _2187 = saturate(1.0f - ((_postProcessParams.x * _2177) * dot(float2(_2178, _2180), float2(_2178, _2180))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    _2197 = (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w)));
  } else {
    _2197 = false;
  }
  SV_Target.x = select(_2197, (exp2(log2(saturate(mad(_colorBlind0.z, _2122, mad(_colorBlind0.y, _2119, (_colorBlind0.x * _2116))))) * _2128) * _2187), 0.0f);
  SV_Target.y = select(_2197, (exp2(log2(saturate(mad(_colorBlind1.z, _2122, mad(_colorBlind1.y, _2119, (_colorBlind1.x * _2116))))) * _2128) * _2187), 0.0f);
  SV_Target.z = select(_2197, (exp2(log2(saturate(mad(_colorBlind2.z, _2122, mad(_colorBlind2.y, _2119, (_colorBlind2.x * _2116))))) * _2128) * _2187), 0.0f);
  SV_Target.w = _18.w;
  return SV_Target;
}
