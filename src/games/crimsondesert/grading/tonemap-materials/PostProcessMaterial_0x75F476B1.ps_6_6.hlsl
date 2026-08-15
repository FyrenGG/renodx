struct PostProcessAbyssEnterIntro_CDStruct {
  float _cubeScale;
  float _cameraSpeed;
  float _cameraSinIntensity;
  float3 _screenFadeColor;
  float _screenFadeRatio;
  float3 _fogColor;
  float3 _ambientColor;
  float3 _mainTintColor;
  float3 _waveColor;
  float3 _globalColor;
  float3 _lightColor;
  float3 _centerGlowColor;
  float _centerGlowRadius;
  float _stardustIntensity;
  float _stardustDensity;
  float _particleIntensity;
  float _particleEmissionWidth;
  float _anamorphicIntensity;
  float _anamorphicWidth;
  float _largeHalo;
  float _largeHaloIntensity;
  float _middleHaloIntensity;
  float _blubIntensity;
  float _streakGlowIntensity;
  float _centerpoint;
  float _tunnelTotal;
  float _cameraFov;
  float _cubeDistance;
  uint _screenWarpTex;
  float _screenWarpRatio;
  float _edgeFlowSpeed;
  float _cubeMinScale;
  float _borderRatio;
  float _borderWidth;
  float _borderSmoothness;
  uint _borderColor;
  float _fadeRatio;
};


Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<uint2> __3__36__0__0__g_stencil : register(t18, space36);

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

cbuffer __3__1__0__0__PostProcessSizeConstant : register(b1, space1) {
  float4 _srcTargetSizeAndInv : packoffset(c000.x);
  float4 _destTargetSizAndInv : packoffset(c001.x);
};

cbuffer __3__1__0__0__PostProcessMaterialIndex : register(b2, space1) {
  int _materialIndex : packoffset(c000.x);
  int _passIndex : packoffset(c000.y);
};

cbuffer __3__35__0__0__ColorBlindConstantBuffer : register(b47, space35) {
  float4 _colorBlind0 : packoffset(c000.x);
  float4 _colorBlind1 : packoffset(c001.x);
  float4 _colorBlind2 : packoffset(c002.x);
};

struct BindlessParameters_PostProcessAbyssEnterIntro_CD {
  PostProcessAbyssEnterIntro_CDStruct BindlessParameters_PostProcessAbyssEnterIntro_CD;
};

typedef BindlessParameters_PostProcessAbyssEnterIntro_CD BindlessParameters_PostProcessAbyssEnterIntro_CD_t;
ConstantBuffer<BindlessParameters_PostProcessAbyssEnterIntro_CD_t> BindlessParameters_PostProcessAbyssEnterIntro_CD[] : register(b0, space100);

SamplerState __0__4__0__0__g_staticBilinearClamp : register(s3, space4);

// DXIL FirstbitHi: returns bit position counting from MSB (leading zeros count)
uint firstbithigh_msb(int value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }
uint firstbithigh_msb(uint value) { return (value == 0) ? 0xFFFFFFFF : (31u - firstbithigh(value)); }

float4 main(
  precise noperspective float4 SV_Position : SV_Position,
  linear float2 TEXCOORD : TEXCOORD
) : SV_Target {
  float4 SV_Target;
  float _24;
  float _26;
  float4 _29;
  float _39;
  float _40;
  float _41;
  int _69;
  int _77;
  int _78;
  float _86;
  int _87;
  float _95;
  int _96;
  float _104;
  float _116;
  float _117;
  float _119;
  float _121;
  float _122;
  float _124;
  float _129;
  float _131;
  float _132;
  float _135;
  float _136;
  float _137;
  float _140;
  float _146;
  float _148;
  float _149;
  float _152;
  float _153;
  float _155;
  float _156;
  float _157;
  float _158;
  float _160;
  float _161;
  float _162;
  float _166;
  float _171;
  float _172;
  float _176;
  float _177;
  float _178;
  float _180;
  float _181;
  float _182;
  float _183;
  float _186;
  float _187;
  float _188;
  float _190;
  float _193;
  int _194;
  float _202;
  float _203;
  float _204;
  float _205;
  float _206;
  float _207;
  float _208;
  float _209;
  float _210;
  float _211;
  float _227;
  float _228;
  float _229;
  float _230;
  float _232;
  float _233;
  float _234;
  float _249;
  float _250;
  float _251;
  float _252;
  float _253;
  float _254;
  float _255;
  float _256;
  float _257;
  float _258;
  float _259;
  float _260;
  float _261;
  int _262;
  float _359;
  float _360;
  float _361;
  float _362;
  float _363;
  float _364;
  float _365;
  float _397;
  float _398;
  float _399;
  float _401;
  float _402;
  float _403;
  float _456;
  float _457;
  float _458;
  float _459;
  float _460;
  float _461;
  int _462;
  float _537;
  float _869;
  float _870;
  float _871;
  float _872;
  float _873;
  float _874;
  int _875;
  float _950;
  float _1052;
  float _1261;
  float _1262;
  float _1263;
  float _1264;
  float _1387;
  float _1448;
  float _1449;
  float _1450;
  float _2121;
  float _2326;
  float _2327;
  float _2328;
  float _2421;
  float _2422;
  float _2423;
  float _2477;
  float _2478;
  float _2479;
  float _2498;
  float _2499;
  float _2500;
  float _2530;
  float _2531;
  float _2532;
  float _2546;
  float _2547;
  float _2548;
  float _272;
  float _273;
  float _274;
  float _277;
  float _297;
  float _299;
  float _301;
  float _302;
  float _306;
  float _307;
  float _308;
  float _328;
  float _333;
  float _337;
  float _342;
  float _344;
  float _345;
  float _346;
  float _347;
  float _348;
  float _353;
  float _354;
  float _355;
  float _356;
  float _379;
  float _381;
  float _383;
  float _387;
  float _388;
  float _389;
  float _390;
  float _391;
  float _392;
  int _393;
  int _404;
  float _412;
  int _413;
  float _421;
  int _422;
  float _430;
  int _431;
  float _439;
  float _440;
  float _441;
  float _442;
  float _463;
  float _464;
  float _465;
  float _479;
  float _481;
  float _483;
  float _487;
  float _488;
  float _489;
  float _493;
  float _499;
  float _500;
  float _503;
  float _508;
  float _509;
  bool _530;
  float _540;
  float _541;
  float _544;
  float _546;
  float _548;
  float _550;
  float _551;
  float _552;
  float _554;
  float _559;
  float _562;
  float _563;
  float _564;
  float _571;
  float _574;
  float _575;
  float _576;
  float _577;
  float _578;
  float _579;
  float _580;
  float _584;
  float _585;
  float _586;
  float _590;
  float _591;
  float _592;
  float _597;
  float _599;
  float _632;
  float _634;
  float _635;
  float _636;
  float _637;
  float _638;
  float _640;
  float _641;
  float _643;
  float _645;
  float _647;
  float _648;
  float _649;
  float _650;
  float _652;
  float _655;
  float _657;
  float _660;
  float _664;
  float _680;
  float _682;
  float _684;
  float _688;
  float _689;
  float _690;
  float _691;
  float _692;
  float _693;
  int _694;
  float _700;
  float _701;
  float _702;
  int _703;
  float _713;
  float _714;
  float _715;
  float _717;
  float _723;
  int _724;
  float _734;
  float _735;
  float _736;
  float _761;
  float _765;
  float _766;
  float _767;
  float _769;
  float _770;
  float _771;
  float _772;
  float _778;
  float _779;
  float _786;
  float _787;
  float _788;
  float _790;
  int _802;
  float _810;
  float _815;
  float _819;
  float _826;
  float _827;
  float _828;
  float _829;
  float _830;
  float _831;
  float _832;
  float _833;
  float _834;
  float _850;
  float _851;
  float _852;
  float _876;
  float _877;
  float _878;
  float _892;
  float _894;
  float _896;
  float _900;
  float _901;
  float _902;
  float _906;
  float _912;
  float _913;
  float _916;
  float _921;
  float _922;
  bool _943;
  float _953;
  float _956;
  float _958;
  float _960;
  float _962;
  float _963;
  float _964;
  float _966;
  float _971;
  float _975;
  float _976;
  float _987;
  float _988;
  float _989;
  float _990;
  float _991;
  float _992;
  float _996;
  float _997;
  float _998;
  float _1009;
  float _1011;
  float _1015;
  float _1031;
  float _1033;
  float _1035;
  float _1039;
  float _1040;
  float _1041;
  float _1042;
  float _1043;
  float _1044;
  int _1045;
  int _1053;
  float _1063;
  float _1064;
  float _1065;
  float _1090;
  float _1092;
  float _1098;
  int _1099;
  float _1109;
  float _1110;
  float _1111;
  float _1136;
  float _1137;
  int _1147;
  float _1157;
  float _1158;
  float _1159;
  float _1184;
  int _1188;
  float _1198;
  float _1199;
  float _1200;
  float _1226;
  float _1233;
  float _1238;
  float _1243;
  int _1265;
  float _1275;
  float _1276;
  float _1277;
  float _1305;
  float _1315;
  float _1316;
  float _1317;
  int _1318;
  float _1328;
  float _1329;
  float _1330;
  int _1361;
  float _1369;
  float _1370;
  float _1372;
  float _1373;
  float _1374;
  float _1375;
  float _1380;
  float _1392;
  float _1393;
  float _1394;
  float _1395;
  float _1396;
  float _1398;
  float _1400;
  float _1403;
  float _1405;
  float _1406;
  float _1411;
  float _1412;
  float _1425;
  float _1426;
  float _1429;
  float _1431;
  float _1432;
  float _1434;
  float _1438;
  float _1440;
  int _1454;
  float _1462;
  float _1466;
  int _1476;
  float _1484;
  int _1485;
  float _1493;
  float _1501;
  float _1502;
  float _1503;
  float _1504;
  float _1508;
  float _1520;
  float _1525;
  float _1526;
  float _1527;
  float _1528;
  float _1529;
  float _1530;
  float _1531;
  float _1532;
  float _1533;
  float _1537;
  float _1543;
  float _1544;
  float _1545;
  float _1554;
  float _1555;
  float _1556;
  float _1560;
  float _1582;
  float _1594;
  int _1595;
  float _1603;
  float _1605;
  float _1609;
  float _1615;
  float _1619;
  float _1627;
  float _1630;
  float _1633;
  float _1635;
  float _1636;
  float _1637;
  float _1645;
  float _1651;
  float _1655;
  float _1663;
  float _1666;
  float _1669;
  float _1671;
  float _1672;
  float _1673;
  float _1681;
  float _1687;
  float _1691;
  float _1699;
  float _1702;
  float _1706;
  float _1707;
  float _1710;
  float _1714;
  float _1718;
  float _1721;
  float _1737;
  float _1742;
  float _1753;
  float _1757;
  float _1763;
  float _1767;
  float _1768;
  float _1769;
  float _1773;
  float _1776;
  float _1784;
  float _1787;
  float _1789;
  bool _1792;
  bool _1793;
  bool _1794;
  bool _1795;
  float _1808;
  float _1810;
  bool _1813;
  bool _1814;
  float _1830;
  int _1835;
  float _1843;
  int _1856;
  float _1864;
  float _1867;
  int _1868;
  float _1876;
  int _1877;
  float _1885;
  int _1889;
  float _1897;
  int _1898;
  float _1906;
  float _1907;
  float _1910;
  float _1916;
  float _1921;
  float _1931;
  float _1933;
  float _1939;
  int _1961;
  float _1969;
  float _1979;
  float _1983;
  float _1984;
  float _1985;
  int _1986;
  float _1994;
  int _1995;
  float _2003;
  float _2009;
  float _2012;
  float _2013;
  int _2020;
  int _2028;
  float _2031;
  float _2034;
  float _2036;
  float _2066;
  int _2070;
  float _2078;
  float _2079;
  float _2086;
  float _2087;
  float _2088;
  int _2089;
  float _2097;
  float _2098;
  float _2105;
  float _2106;
  float _2107;
  uint _2108;
  bool _2124;
  float _2130;
  float _2179;
  float _2180;
  float _2181;
  float _2183;
  float _2190;
  float _2191;
  float _2192;
  float _2211;
  float _2212;
  float _2213;
  float _2214;
  float _2215;
  float _2216;
  float _2217;
  float _2218;
  float _2219;
  float _2265;
  float _2266;
  float _2267;
  float _2268;
  float _2269;
  float _2270;
  float _2271;
  float _2288;
  float _2289;
  float _2290;
  float _2291;
  float _2297;
  float _2300;
  float _2307;
  float _2308;
  float _2309;
  float _2338;
  float _2363;
  float _2364;
  float _2365;
  float _2384;
  float _2385;
  float _2386;
  float _2392;
  float _2396;
  float _2397;
  float _2398;
  float _2399;
  float _2404;
  float _2429;
  float _2433;
  float _2434;
  float _2435;
  float _2436;
  float _2466;
  float _2488;
  float _2489;
  float _2493;
  float _2537;
  float _2558;
  float _2559;
  float _2560;
  int __loop_jump_target = -1;
  _24 = _srcTargetSizeAndInv.x * TEXCOORD.x;
  _26 = _srcTargetSizeAndInv.y * TEXCOORD.y;
  _29 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  _39 = (pow(_29.x, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _40 = (pow(_29.y, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _41 = (pow(_29.z, 0.012683313f));  // [sem: _3__36__0__0__g_sceneColor_sample_derived]
  _69 = WaveReadLaneFirst(_materialIndex);
  _77 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_69 < (uint)170000), _69, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._screenWarpTex);
  _78 = WaveReadLaneFirst(_materialIndex);
  _86 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_78 < (uint)170000), _78, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._cameraSpeed);
  _87 = WaveReadLaneFirst(_materialIndex);
  _95 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_87 < (uint)170000), _87, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._cameraSinIntensity);
  _96 = WaveReadLaneFirst(_materialIndex);
  _104 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_96 < (uint)170000), _96, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._cameraFov);
  _116 = _time.x * _86;
  _117 = _116 + -1.0f;
  _119 = sin(_time.x * 0.1f);
  _121 = (_119 + 3.0f) + _116;
  _122 = _116 * 0.1308997f;
  _124 = sin(_122 + 1.7f);
  _129 = _117 * 0.1308997f;
  _131 = sin(_129 + 1.7f);
  _132 = _131 * _95;
  _135 = _132 * 2.0f;
  _136 = (cos(_129) * _95) * _132;
  _137 = _121 * 0.1308997f;
  _140 = sin(_137 + 1.7f) * _95;
  _146 = _140 - sin(_time.x * 0.001f);
  _148 = ((cos(_137) * _95) * _140) + -1.0f;
  _149 = 3.1415927f / _104;
  _152 = (_95 * 2.0f) * (_124 - _131);
  _153 = (((_95 * _95) * _124) * cos(_122)) - _136;
  _155 = rsqrt(dot(float3(_152, _153, 1.0f), float3(_152, _153, 1.0f)));  // [sem: invLength]
  _156 = _155 * _152;
  _157 = _155 * _153;
  _158 = -0.0f - _156;
  _160 = rsqrt(dot(float3(_155, 0.0f, _158), float3(_155, 0.0f, _158)));  // [sem: invLength]
  _161 = _160 * _155;
  _162 = _160 * _158;
  _166 = _149 * ((_24 - (_srcTargetSizeAndInv.x * 0.5f)) / _srcTargetSizeAndInv.y);
  _171 = _149 * ((_26 - (_srcTargetSizeAndInv.y * 0.5f)) / _srcTargetSizeAndInv.y);
  _172 = _157 * _171;
  _176 = ((_161 * _166) + _156) + (_162 * _172);
  _177 = (((_161 * _155) - (_162 * _156)) * _171) + _157;
  _178 = ((_162 * _166) + _155) - (_161 * _172);
  _180 = rsqrt(dot(float3(_176, _177, _178), float3(_176, _177, _178)));  // [sem: invLength]
  _181 = _176 * _180;
  _182 = _177 * _180;
  _183 = _178 * _180;
  _186 = sin(-0.0f - _132) * 0.4f;
  _187 = cos(_186);
  _188 = sin(_186);
  _190 = mad(_188, _182, (_181 * _187));
  _193 = mad(_187, _182, (-0.0f - (_188 * _181)));
  _194 = WaveReadLaneFirst(_materialIndex);
  _202 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_194 < (uint)170000), _194, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._stardustDensity);
  _203 = _132 * 2.6666667f;
  _204 = _136 * 1.3333334f;
  _205 = _117 * 1.3333334f;
  _206 = floor(_203);
  _207 = floor(_204);
  _208 = floor(_205);
  _209 = 1.0f / _190;
  _210 = 1.0f / _193;
  _211 = 1.0f / _183;
  _227 = (float)((int)((int)((int)(uint)((int)(_190 > 0.0f))) - (int)((int)(uint)((int)(_190 < 0.0f)))));
  _228 = (float)((int)((int)((int)(uint)((int)(_193 > 0.0f))) - (int)((int)(uint)((int)(_193 < 0.0f)))));
  _229 = (float)((int)((int)((int)(uint)((int)(_183 > 0.0f))) - (int)((int)(uint)((int)(_183 < 0.0f)))));
  _230 = _202 * 30.0f;
  _232 = _227 * 0.5f;
  _233 = _228 * 0.5f;
  _234 = _229 * 0.5f;
  if (_230 > 0.0f) {
    _249 = _206;
    _250 = _207;
    _251 = _208;
    _252 = (_209 * (((0.5f - _203) + _232) + _206));
    _253 = (_210 * (((0.5f - _204) + _233) + _207));
    _254 = (_211 * (((0.5f - _205) + _234) + _208));
    _255 = 0.0f;
    _256 = 0.0f;
    _257 = 0.0f;
    _258 = 0.0f;
    _259 = 0.0f;
    _260 = 0.0f;
    _261 = 0.0f;
    _262 = 0;
    while(true) {
      _359 = _255;
      _360 = _256;
      _361 = _257;
      _362 = _258;
      _363 = _259;
      _364 = _260;
      _365 = _261;
      _272 = frac(sin(dot(float3(_249, _250, _251), float3(127.1f, 311.7f, 74.7f))) * 43758.547f);
      _273 = frac(sin(dot(float3(_249, _250, _251), float3(269.5f, 183.3f, 246.1f))) * 43758.547f);
      _274 = frac(sin(dot(float3(_249, _250, _251), float3(113.5f, 271.9f, 124.6f))) * 43758.547f);
      _277 = _time.x * _272;
      _297 = (_249 - _203) + min(max(((cos(_277 + _272) * 0.1f) + _272), 0.015f), 0.985f);
      _299 = (_250 - _204) + min(max(((cos(_277 + _273) * 0.1f) + _273), 0.015f), 0.985f);
      _301 = (_251 - _205) + min(max(((cos(_277 + _274) * 0.1f) + _274), 0.015f), 0.985f);
      _302 = dot(float3(_297, _299, _301), float3(_190, _193, _183));
      _306 = _297 - (_302 * _190);
      _307 = _299 - (_302 * _193);
      _308 = _301 - (_302 * _183);
      bool __branch_chain_248;
      if (!((_302 > 0.0f) && ((_302 * 0.75f) < 50.0f))) {
        _359 = _255;
        _360 = _256;
        _361 = _257;
        _362 = _258;
        _363 = _259;
        _364 = _260;
        _365 = _261;
        __branch_chain_248 = true;
      } else {
        _328 = saturate((sqrt(((_306 * _306) + (_307 * _307)) + (_308 * _308)) + -0.0075f) * 133.33334f);  // [sem: expr_sat]
        _333 = 1.0f - ((_328 * _328) * (3.0f - (_328 * 2.0f)));
        _337 = saturate((_302 - _230) / (-0.0f - _230));  // [sem: expr_sat]
        _342 = ((_337 * _337) * (3.0f - (_337 * 2.0f))) * _333;
        _344 = _333 * (_342 / _302);
        _345 = _344 * ((_255 * 0.4f) + 0.6f);
        _346 = _344 * ((_256 * 0.4f) + 0.6f);
        _347 = _344 * ((_257 * 0.4f) + 0.6f);
        _348 = 1.0f - _261;
        _353 = (_345 * _348) + _258;
        _354 = (_346 * _348) + _259;
        _355 = (_347 * _348) + _260;
        _356 = (_342 * _348) + _261;
        if (!(_356 > 0.99f)) {
          _359 = _345;
          _360 = _346;
          _361 = _347;
          _362 = _353;
          _363 = _354;
          _364 = _355;
          _365 = _356;
          __branch_chain_248 = true;
        } else {
          _397 = _353;
          _398 = _354;
          _399 = _355;
          __branch_chain_248 = false;
        }
      }
      if (__branch_chain_248) {
        _379 = (select((_253 < _252), 0.0f, 1.0f) * _227) * select((_254 < _252), 0.0f, 1.0f);
        _381 = (select((_252 < _253), 0.0f, 1.0f) * _228) * select((_254 < _253), 0.0f, 1.0f);
        _383 = (select((_252 < _254), 0.0f, 1.0f) * _229) * select((_253 < _254), 0.0f, 1.0f);
        _387 = (_379 * _209) + _252;
        _388 = (_381 * _210) + _253;
        _389 = (_383 * _211) + _254;
        _390 = _379 + _249;
        _391 = _381 + _250;
        _392 = _383 + _251;
        _393 = (int)(_262) + (int)(1);
        if (((float)((int)(_393))) < _230) {
          _249 = _390;
          _250 = _391;
          _251 = _392;
          _252 = _387;
          _253 = _388;
          _254 = _389;
          _255 = _359;
          _256 = _360;
          _257 = _361;
          _258 = _362;
          _259 = _363;
          _260 = _364;
          _261 = _365;
          _262 = _393;
          continue;
        } else {
          _397 = _362;
          _398 = _363;
          _399 = _364;
        }
      }
      _401 = _397;
      _402 = _398;
      _403 = _399;
      break;
    }
  } else {
    _401 = 0.0f;
    _402 = 0.0f;
    _403 = 0.0f;
  }
  _404 = WaveReadLaneFirst(_materialIndex);
  _412 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_404 < (uint)170000), _404, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._stardustIntensity);
  _413 = WaveReadLaneFirst(_materialIndex);
  _421 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_413 < (uint)170000), _413, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._cubeScale);
  _422 = WaveReadLaneFirst(_materialIndex);
  _430 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_422 < (uint)170000), _422, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._cubeDistance);
  _431 = WaveReadLaneFirst(_materialIndex);
  _439 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_431 < (uint)170000), _431, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._cubeMinScale);
  _440 = floor(_135);
  _441 = floor(_136);
  _442 = floor(_117);
  _456 = _440;
  _457 = _441;
  _458 = _442;
  _459 = ((((0.5f - _135) + _232) + _440) * _209);
  _460 = ((((0.5f - _136) + _233) + _441) * _210);
  _461 = ((((1.5f - _116) + _234) + _442) * _211);
  _462 = 0;
  while(true) {
    _463 = _456 * 0.35f;
    _464 = _457 * 0.35f;
    _465 = _458 * 0.35f;
    _479 = (_456 + -0.5f) + frac(sin(dot(float3(_463, _464, _465), float3(127.1f, 311.7f, 74.7f))) * 43758.547f);
    _481 = (_457 + -0.5f) + frac(sin(dot(float3(_463, _464, _465), float3(269.5f, 183.3f, 246.1f))) * 43758.547f);
    _483 = (_458 + -0.5f) + frac(sin(dot(float3(_463, _464, _465), float3(113.5f, 271.9f, 124.6f))) * 43758.547f);
    _487 = frac(_479 * 0.1031f);
    _488 = frac(_481 * 0.1031f);
    _489 = frac(_483 * 0.1031f);
    _493 = dot(float3(_487, _488, _489), float3((_488 + 19.19f), (_489 + 19.19f), (_487 + 19.19f)));
    _499 = frac(((_488 + _487) + (_493 * 2.0f)) * (_493 + _489));
    _500 = _483 * 0.1308997f;
    _503 = sin(_500 + 1.7f) * _95;
    _508 = _479 - (_503 * 2.0f);
    _509 = _481 - ((cos(_500) * _95) * _503);
    if (!(abs(select((_509 < 0.0f), 0.5f, 0.0f) + _509) > 0.35f) || ((abs(select((_509 < 0.0f), 0.5f, 0.0f) + _509) > 0.35f) && (!(sqrt((_509 * _509) + (_508 * _508)) > (_430 - ((_499 * 6.0f) * exp2(log2(saturate(_461 * 0.015625f)) * 2.2f))))))) {
      _680 = (select((_460 < _459), 0.0f, 1.0f) * _227) * select((_461 < _459), 0.0f, 1.0f);
      _682 = (select((_459 < _460), 0.0f, 1.0f) * _228) * select((_461 < _460), 0.0f, 1.0f);
      _684 = (select((_459 < _461), 0.0f, 1.0f) * _229) * select((_460 < _461), 0.0f, 1.0f);
      _688 = (_680 * _209) + _459;
      _689 = (_682 * _210) + _460;
      _690 = (_684 * _211) + _461;
      _691 = _680 + _456;
      _692 = _682 + _457;
      _693 = _684 + _458;
      _694 = (int)(_462) + (int)(1);
      if ((int)_694 < (int)64) {
        _456 = _691;
        _457 = _692;
        _458 = _693;
        _459 = _688;
        _460 = _689;
        _461 = _690;
        _462 = _694;
        continue;
      } else {
        _1261 = 0.0f;
        _1262 = 0.0f;
        _1263 = 0.0f;
        _1264 = 50.0f;
      }
    } else {
      _530 = (_499 < 0.35f);
      if (!_530) {
        _537 = ((_499 + _458) + _time.x);
      } else {
        _537 = 0.0f;
      }
      _540 = select(_530, 0.0f, ((_537 * 2.0f) + _457));
      _541 = _439 * 0.25f;
      _544 = min(max((_499 * 0.4f), _541), _421);
      _546 = (_135 + -0.5f) - _479;
      _548 = (_136 + -0.5f) - _481;
      _550 = (_116 + -1.5f) - _483;
      _551 = cos(_537);
      _552 = sin(_537);
      _554 = mad(_552, _548, (_551 * _550));
      _559 = mad(_552, _193, (_551 * _183));
      _562 = mad(_551, _193, (-0.0f - (_183 * _552)));
      _563 = cos(_540);
      _564 = sin(_540);
      _571 = mad(_564, _559, (_563 * _190));
      _574 = mad(_563, _559, (-0.0f - (_190 * _564)));
      _575 = 1.0f / _571;
      _576 = 1.0f / _562;
      _577 = 1.0f / _574;
      _578 = _575 * mad(_564, _554, (_563 * _546));
      _579 = _576 * mad(_551, _548, (-0.0f - (_550 * _552)));
      _580 = _577 * mad(_563, _554, (-0.0f - (_546 * _564)));
      _584 = abs(_575) * _544;
      _585 = abs(_576) * _544;
      _586 = abs(_577) * _544;
      _590 = (-0.0f - _578) - _584;
      _591 = (-0.0f - _579) - _585;
      _592 = (-0.0f - _580) - _586;
      _597 = max(max(_590, _591), _592);
      _599 = min(min((_584 - _578), (_585 - _579)), (_586 - _580));
      _632 = (select((_590 < _591), 0.0f, 1.0f) * ((float)((int)((int)((int)(uint)((int)(_571 < 0.0f))) - (int)((int)(uint)((int)(_571 > 0.0f))))))) * select((_590 < _592), 0.0f, 1.0f);
      _634 = (select((_591 < _590), 0.0f, 1.0f) * ((float)((int)((int)((int)(uint)((int)(_562 < 0.0f))) - (int)((int)(uint)((int)(_562 > 0.0f))))))) * select((_591 < _592), 0.0f, 1.0f);
      _635 = (select((_592 < _590), 0.0f, 1.0f) * ((float)((int)((int)((int)(uint)((int)(_574 < 0.0f))) - (int)((int)(uint)((int)(_574 > 0.0f))))))) * select((_592 < _591), 0.0f, 1.0f);
      _636 = -0.0f - _537;
      _637 = cos(_636);
      _638 = sin(_636);
      _640 = mad(_638, _634, (_635 * _637));
      _641 = -0.0f - _638;
      _643 = mad(_637, _634, (_635 * _641));
      _645 = mad(_638, _643, (_640 * _637));
      _647 = mad(_637, _643, (_640 * _641));
      _648 = -0.0f - _540;
      _649 = cos(_648);
      _650 = sin(_648);
      _652 = mad(_650, _645, (_649 * _632));
      _655 = mad(_649, _645, (-0.0f - (_632 * _650)));
      _657 = mad(_650, _655, (_652 * _649));
      _660 = mad(_649, _655, (-0.0f - (_650 * _652)));
      _664 = select(((_597 > _599) || (_599 < 0.0f)), 0.0f, _597);
      if (_664 > 0.0f) {
        _700 = (_664 * _190) + _135;
        _701 = (_664 * _193) + _136;
        _702 = (_664 * _183) + _117;
        _703 = WaveReadLaneFirst(_materialIndex);
        _713 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_703 < (uint)170000), _703, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._lightColor.x);
        _714 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_703 < (uint)170000), _703, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._lightColor.y);
        _715 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_703 < (uint)170000), _703, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._lightColor.z);
        _717 = rsqrt(dot(float3(_713, _714, _715), float3(_713, _714, _715)));  // [sem: invLength]
        _723 = max(dot(float3((_717 * _713), (_717 * _714), (_717 * _715)), float3(_657, _647, _660)), 0.05f) * 0.01f;
        _724 = WaveReadLaneFirst(_materialIndex);
        _734 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_724 < (uint)170000), _724, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._ambientColor.x);
        _735 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_724 < (uint)170000), _724, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._ambientColor.y);
        _736 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_724 < (uint)170000), _724, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._ambientColor.z);
        _761 = max(0.0f, _647);
        _765 = (_146 * 2.0f) - _700;
        _766 = _148 - _701;
        _767 = _121 - _702;
        _769 = rsqrt(dot(float3(_765, _766, _767), float3(_765, _766, _767)));  // [sem: invLength]
        _770 = _769 * _765;
        _771 = _769 * _766;
        _772 = _769 * _767;
        _778 = sqrt(((_765 * _765) + (_766 * _766)) + (_767 * _767));
        _779 = _778 * _778;
        _786 = -0.0f - _770;
        _787 = -0.0f - _771;
        _788 = -0.0f - _772;
        _790 = dot(float3(_786, _787, _788), float3(_657, _647, _660)) * 2.0f;
        _802 = WaveReadLaneFirst(_materialIndex);
        _810 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_802 < (uint)170000), _802, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._edgeFlowSpeed);
        _815 = ((_time.x * 8.0f) + _702) * 0.025f;
        _819 = frac(abs(_815));
        _826 = _700 - (_190 * 0.01f);
        _827 = _701 - (_193 * 0.01f);
        _828 = _702 - (_183 * 0.01f);
        _829 = floor(_826);
        _830 = floor(_827);
        _831 = floor(_828);
        _832 = 1.0f / _770;
        _833 = 1.0f / _771;
        _834 = 1.0f / _772;
        _850 = (float)((int)((int)((int)(uint)((int)(_770 > 0.0f))) - (int)((int)(uint)((int)(_770 < 0.0f)))));
        _851 = (float)((int)((int)((int)(uint)((int)(_771 > 0.0f))) - (int)((int)(uint)((int)(_771 < 0.0f)))));
        _852 = (float)((int)((int)((int)(uint)((int)(_772 > 0.0f))) - (int)((int)(uint)((int)(_772 < 0.0f)))));
        _869 = _829;
        _870 = _830;
        _871 = _831;
        _872 = (_832 * (((0.5f - _826) + (_850 * 0.5f)) + _829));
        _873 = (_833 * (((0.5f - _827) + (_851 * 0.5f)) + _830));
        _874 = (_834 * (((0.5f - _828) + (_852 * 0.5f)) + _831));
        _875 = 0;
        while(true) {
          _876 = _869 * 0.35f;
          _877 = _870 * 0.35f;
          _878 = _871 * 0.35f;
          _892 = (_869 + -0.5f) + frac(sin(dot(float3(_876, _877, _878), float3(127.1f, 311.7f, 74.7f))) * 43758.547f);
          _894 = (_870 + -0.5f) + frac(sin(dot(float3(_876, _877, _878), float3(269.5f, 183.3f, 246.1f))) * 43758.547f);
          _896 = (_871 + -0.5f) + frac(sin(dot(float3(_876, _877, _878), float3(113.5f, 271.9f, 124.6f))) * 43758.547f);
          _900 = frac(_892 * 0.1031f);
          _901 = frac(_894 * 0.1031f);
          _902 = frac(_896 * 0.1031f);
          _906 = dot(float3(_900, _901, _902), float3((_901 + 19.19f), (_902 + 19.19f), (_900 + 19.19f)));
          _912 = frac(((_901 + _900) + (_906 * 2.0f)) * (_906 + _902));
          _913 = _896 * 0.1308997f;
          _916 = sin(_913 + 1.7f) * _95;
          _921 = _892 - (_916 * 2.0f);
          _922 = _894 - ((cos(_913) * _95) * _916);
          if (!(abs(select((_922 < 0.0f), 0.5f, 0.0f) + _922) > 0.35f) || ((abs(select((_922 < 0.0f), 0.5f, 0.0f) + _922) > 0.35f) && (!(sqrt((_922 * _922) + (_921 * _921)) > (_430 - ((_912 * 6.0f) * exp2(log2(saturate(_874 * 0.015625f)) * 2.2f))))))) {
            _1031 = (select((_873 < _872), 0.0f, 1.0f) * _850) * select((_874 < _872), 0.0f, 1.0f);
            _1033 = (select((_872 < _873), 0.0f, 1.0f) * _851) * select((_874 < _873), 0.0f, 1.0f);
            _1035 = (select((_872 < _874), 0.0f, 1.0f) * _852) * select((_873 < _874), 0.0f, 1.0f);
            _1039 = (_1031 * _832) + _872;
            _1040 = (_1033 * _833) + _873;
            _1041 = (_1035 * _834) + _874;
            _1042 = _1031 + _869;
            _1043 = _1033 + _870;
            _1044 = _1035 + _871;
            _1045 = (int)(_875) + (int)(1);
            if ((int)_1045 < (int)64) {
              _869 = _1042;
              _870 = _1043;
              _871 = _1044;
              _872 = _1039;
              _873 = _1040;
              _874 = _1041;
              _875 = _1045;
              continue;
            } else {
              _1052 = 1.0f;
            }
          } else {
            _943 = (_912 < 0.35f);
            if (!_943) {
              _950 = ((_912 + _871) + _time.x);
            } else {
              _950 = 0.0f;
            }
            _953 = select(_943, 0.0f, ((_950 * 2.0f) + _870));
            _956 = min(max((_912 * 0.4f), _541), _421);
            _958 = (_826 + -0.5f) - _892;
            _960 = (_827 + -0.5f) - _894;
            _962 = (_828 + -0.5f) - _896;
            _963 = cos(_950);
            _964 = sin(_950);
            _966 = mad(_964, _960, (_963 * _962));
            _971 = mad(_964, _771, (_963 * _772));
            _975 = cos(_953);
            _976 = sin(_953);
            _987 = 1.0f / mad(_976, _971, (_975 * _770));
            _988 = 1.0f / mad(_963, _771, (-0.0f - (_772 * _964)));
            _989 = 1.0f / mad(_975, _971, (-0.0f - (_770 * _976)));
            _990 = _987 * mad(_976, _966, (_975 * _958));
            _991 = _988 * mad(_963, _960, (-0.0f - (_962 * _964)));
            _992 = _989 * mad(_975, _966, (-0.0f - (_958 * _976)));
            _996 = abs(_987) * _956;
            _997 = abs(_988) * _956;
            _998 = abs(_989) * _956;
            _1009 = max(max(((-0.0f - _990) - _996), ((-0.0f - _991) - _997)), ((-0.0f - _992) - _998));
            _1011 = min(min((_996 - _990), (_997 - _991)), (_998 - _992));
            _1015 = select(((_1009 > _1011) || (_1011 < 0.0f)), 0.0f, _1009);
            if (_1015 > 0.0f) {
              _1052 = select((_1015 < _778), 0.0f, 1.0f);
            } else {
              _1031 = (select((_873 < _872), 0.0f, 1.0f) * _850) * select((_874 < _872), 0.0f, 1.0f);
              _1033 = (select((_872 < _873), 0.0f, 1.0f) * _851) * select((_874 < _873), 0.0f, 1.0f);
              _1035 = (select((_872 < _874), 0.0f, 1.0f) * _852) * select((_873 < _874), 0.0f, 1.0f);
              _1039 = (_1031 * _832) + _872;
              _1040 = (_1033 * _833) + _873;
              _1041 = (_1035 * _834) + _874;
              _1042 = _1031 + _869;
              _1043 = _1033 + _870;
              _1044 = _1035 + _871;
              _1045 = (int)(_875) + (int)(1);
              if ((int)_1045 < (int)64) {
                _869 = _1042;
                _870 = _1043;
                _871 = _1044;
                _872 = _1039;
                _873 = _1040;
                _874 = _1041;
                _875 = _1045;
                continue;
              } else {
                _1052 = 1.0f;
              }
            }
          }
          _1053 = WaveReadLaneFirst(_materialIndex);
          _1063 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1053 < (uint)170000), _1053, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._globalColor.x);
          _1064 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1053 < (uint)170000), _1053, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._globalColor.y);
          _1065 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1053 < (uint)170000), _1053, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._globalColor.z);
          _1090 = dot(float3(_770, _771, _772), float3(_657, _647, _660));
          _1092 = max(_1090, 0.05f) * (1.0f / ((_779 * 0.05f) + 1.0f));
          _1098 = 1.0f / ((_779 * 0.1f) + 1.0f);
          _1099 = WaveReadLaneFirst(_materialIndex);
          _1109 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1099 < (uint)170000), _1099, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._mainTintColor.x);
          _1110 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1099 < (uint)170000), _1099, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._mainTintColor.y);
          _1111 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1099 < (uint)170000), _1099, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._mainTintColor.z);
          _1136 = max(_1090, 0.01f);
          _1137 = _1136 * _1098;
          _1147 = WaveReadLaneFirst(_materialIndex);
          _1157 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1147 < (uint)170000), _1147, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._mainTintColor.x);
          _1158 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1147 < (uint)170000), _1147, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._mainTintColor.y);
          _1159 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1147 < (uint)170000), _1147, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._mainTintColor.z);
          _1184 = _1098 * exp2(log2(max(dot(float3((_786 - (_790 * _657)), (_787 - (_790 * _647)), (_788 - (_790 * _660))), float3((-0.0f - _190), (-0.0f - _193), (-0.0f - _183))), 0.0f)) * 100.0f);
          _1188 = WaveReadLaneFirst(_materialIndex);
          _1198 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1188 < (uint)170000), _1188, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._waveColor.x);
          _1199 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1188 < (uint)170000), _1188, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._waveColor.y);
          _1200 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1188 < (uint)170000), _1188, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._waveColor.z);
          _1226 = _1136 * (_1098 * 2.0f);
          _1233 = exp2(log2(_1184 * 0.3185468f) * 0.8333333f);
          _1238 = select(((select((_815 >= (-0.0f - _815)), _819, (-0.0f - _819)) * 40.0f) > 4.0f), 0.0f, 1.0f);
          _1243 = (_664 * 0.1f) + 1.0f;
          _1261 = (((((_761 * select((_734 < 0.04045f), (_734 * 0.07739938f), exp2(log2((_734 + 0.055f) * 0.94786733f) * 2.4f))) + _723) + (((_1137 * select((_1109 < 0.04045f), (_1109 * 0.07739938f), exp2(log2((_1109 + 0.055f) * 0.94786733f) * 2.4f))) + (_1092 * select((_1063 < 0.04045f), (_1063 * 0.07739938f), exp2(log2((_1063 + 0.055f) * 0.94786733f) * 2.4f)))) * _1052)) + (select((_1157 < 0.04045f), (_1157 * 0.07739938f), exp2(log2((_1157 + 0.055f) * 0.94786733f) * 2.4f)) * _1184)) + (((_1233 + (_1226 * select((_1198 < 0.04045f), (_1198 * 0.07739938f), exp2(log2((_1198 + 0.055f) * 0.94786733f) * 2.4f)))) * _1238) / _1243));
          _1262 = (((((_761 * select((_735 < 0.04045f), (_735 * 0.07739938f), exp2(log2((_735 + 0.055f) * 0.94786733f) * 2.4f))) + _723) + (((_1137 * select((_1110 < 0.04045f), (_1110 * 0.07739938f), exp2(log2((_1110 + 0.055f) * 0.94786733f) * 2.4f))) + (_1092 * select((_1064 < 0.04045f), (_1064 * 0.07739938f), exp2(log2((_1064 + 0.055f) * 0.94786733f) * 2.4f)))) * _1052)) + (select((_1158 < 0.04045f), (_1158 * 0.07739938f), exp2(log2((_1158 + 0.055f) * 0.94786733f) * 2.4f)) * _1184)) + (((_1233 + (_1226 * select((_1199 < 0.04045f), (_1199 * 0.07739938f), exp2(log2((_1199 + 0.055f) * 0.94786733f) * 2.4f)))) * _1238) / _1243));
          _1263 = (((((select((_736 < 0.04045f), (_736 * 0.07739938f), exp2(log2((_736 + 0.055f) * 0.94786733f) * 2.4f)) * _761) + _723) + (((_1137 * select((_1111 < 0.04045f), (_1111 * 0.07739938f), exp2(log2((_1111 + 0.055f) * 0.94786733f) * 2.4f))) + (_1092 * select((_1065 < 0.04045f), (_1065 * 0.07739938f), exp2(log2((_1065 + 0.055f) * 0.94786733f) * 2.4f)))) * _1052)) + (select((_1159 < 0.04045f), (_1159 * 0.07739938f), exp2(log2((_1159 + 0.055f) * 0.94786733f) * 2.4f)) * _1184)) + ((((_1226 * select((_1200 < 0.04045f), (_1200 * 0.07739938f), exp2(log2((_1200 + 0.055f) * 0.94786733f) * 2.4f))) + _1233) * _1238) / _1243));
          _1264 = _664;
          break;
        }
      } else {
        _680 = (select((_460 < _459), 0.0f, 1.0f) * _227) * select((_461 < _459), 0.0f, 1.0f);
        _682 = (select((_459 < _460), 0.0f, 1.0f) * _228) * select((_461 < _460), 0.0f, 1.0f);
        _684 = (select((_459 < _461), 0.0f, 1.0f) * _229) * select((_460 < _461), 0.0f, 1.0f);
        _688 = (_680 * _209) + _459;
        _689 = (_682 * _210) + _460;
        _690 = (_684 * _211) + _461;
        _691 = _680 + _456;
        _692 = _682 + _457;
        _693 = _684 + _458;
        _694 = (int)(_462) + (int)(1);
        if ((int)_694 < (int)64) {
          _456 = _691;
          _457 = _692;
          _458 = _693;
          _459 = _688;
          _460 = _689;
          _461 = _690;
          _462 = _694;
          continue;
        } else {
          _1261 = 0.0f;
          _1262 = 0.0f;
          _1263 = 0.0f;
          _1264 = 50.0f;
        }
      }
    }
    _1265 = WaveReadLaneFirst(_materialIndex);
    _1275 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1265 < (uint)170000), _1265, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._fogColor.x);
    _1276 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1265 < (uint)170000), _1265, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._fogColor.y);
    _1277 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1265 < (uint)170000), _1265, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._fogColor.z);
    _1305 = exp2(log2(_1264 * 0.02f) * 6.0f);
    _1315 = ((_1305 * (select((_1275 < 0.04045f), (_1275 * 0.07739938f), exp2(log2((_1275 + 0.055f) * 0.94786733f) * 2.4f)) - _1261)) + _1261) * 1.2f;
    _1316 = ((_1305 * (select((_1276 < 0.04045f), (_1276 * 0.07739938f), exp2(log2((_1276 + 0.055f) * 0.94786733f) * 2.4f)) - _1262)) + _1262) * 1.2f;
    _1317 = ((_1305 * (select((_1277 < 0.04045f), (_1277 * 0.07739938f), exp2(log2((_1277 + 0.055f) * 0.94786733f) * 2.4f)) - _1263)) + _1263) * 1.2f;
    _1318 = WaveReadLaneFirst(_materialIndex);
    _1328 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1318 < (uint)170000), _1318, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._centerGlowColor.x);
    _1329 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1318 < (uint)170000), _1318, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._centerGlowColor.y);
    _1330 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1318 < (uint)170000), _1318, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._centerGlowColor.z);
    _1361 = WaveReadLaneFirst(_materialIndex);
    _1369 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1361 < (uint)170000), _1361, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._centerGlowRadius);
    _1370 = _1369 * ((sin(_time.x * 5.0f) * 0.050000012f) + 0.95f);
    _1372 = (_132 - _146) * 2.0f;
    _1373 = _136 - _148;
    _1374 = -4.0f - _119;
    _1375 = dot(float3(_1372, _1373, _1374), float3(_190, _193, _183));
    _1380 = (_1375 * _1375) - (dot(float3(_1372, _1373, _1374), float3(_1372, _1373, _1374)) - (_1370 * _1370));
    if (!(_1380 < 0.0f)) {
      _1387 = ((-0.0f - _1375) - sqrt(_1380));
    } else {
      _1387 = 0.0f;
    }
    if ((_1387 > 0.0f) && (_1387 < _1264)) {
      _1392 = 50.0f / _1370;
      _1393 = _1372 / _1370;
      _1394 = _1373 / _1370;
      _1395 = _1374 / _1370;
      _1396 = dot(float3(_190, _193, _183), float3(_1393, _1394, _1395));
      _1398 = dot(float3(_1393, _1394, _1395), float3(_1393, _1394, _1395)) + -1.0f;
      _1400 = (_1396 * _1396) - _1398;
      if (!(_1400 < 0.0f)) {
        _1403 = sqrt(_1400);
        _1405 = (-0.0f - _1396) - _1403;
        _1406 = _1403 - _1396;
        if (!((_1406 < 0.0f) || (_1405 > _1392))) {
          _1411 = max(_1405, 0.0f);
          _1412 = min(_1406, _1392);
          _1425 = ((((-0.0f - _1398) - (_1412 * _1396)) + ((_1412 * _1412) * -0.33333334f)) * _1412) + (((((_1411 * 0.33333334f) + _1396) * _1411) + _1398) * _1411);
          _1426 = _1425 * 0.75f;
          if (_1426 > 0.0f) {
            _1429 = _1426 * _1426;
            _1431 = _1426 * (_1429 * _1429);
            _1432 = _1431 * _1431;
            _1434 = (_1432 * _1432) * 5.0f;
            _1438 = _1426 * _1425;
            _1440 = _1438 * 0.22500001f;
            _1448 = (((_1434 * select((_1328 < 0.04045f), (_1328 * 0.07739938f), exp2(log2((_1328 + 0.055f) * 0.94786733f) * 2.4f))) + _1315) + (_1438 * 0.075f));
            _1449 = (((_1434 * select((_1329 < 0.04045f), (_1329 * 0.07739938f), exp2(log2((_1329 + 0.055f) * 0.94786733f) * 2.4f))) + _1316) + _1440);
            _1450 = (((_1434 * select((_1330 < 0.04045f), (_1330 * 0.07739938f), exp2(log2((_1330 + 0.055f) * 0.94786733f) * 2.4f))) + _1317) + _1440);
          } else {
            _1448 = _1315;
            _1449 = _1316;
            _1450 = _1317;
          }
        } else {
          _1448 = _1315;
          _1449 = _1316;
          _1450 = _1317;
        }
      } else {
        _1448 = _1315;
        _1449 = _1316;
        _1450 = _1317;
      }
    } else {
      _1448 = _1315;
      _1449 = _1316;
      _1450 = _1317;
    }
    _1454 = WaveReadLaneFirst(_materialIndex);
    _1462 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1454 < (uint)170000), _1454, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._tunnelTotal);
    _1466 = _412 * _202;
    _1476 = WaveReadLaneFirst(_materialIndex);
    _1484 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1476 < (uint)170000), _1476, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._particleEmissionWidth);
    _1485 = WaveReadLaneFirst(_materialIndex);
    _1493 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1485 < (uint)170000), _1485, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._particleIntensity);
    _1501 = (_24 - (_srcTargetSizeAndInv.x * 0.5f)) / _srcTargetSizeAndInv.y;
    _1502 = (_26 - (_srcTargetSizeAndInv.y * 0.5f)) / _srcTargetSizeAndInv.y;
    _1503 = _1501 * 1.5f;
    _1504 = _1502 * 1.5f;
    _1508 = sqrt((_1504 * _1504) + (_1503 * _1503));
    _1520 = frac((sin((_1502 * 0.15f) + (_1501 * 25.5f)) * 10000.0f) * (abs(sin((_1502 * 19.5f) + _1503)) + 0.1f));
    _1525 = _time.x * 0.5f;
    _1526 = _1525 + (_1501 * 22.5f);
    _1527 = _1525 + (_1502 * 22.5f);
    _1528 = floor(_1526);
    _1529 = floor(_1527);
    _1530 = frac(_1526);
    _1531 = frac(_1527);
    _1532 = _1528 * 17.0f;
    _1533 = _1529 * 0.1f;
    _1537 = _1529 * 13.0f;
    _1543 = frac((sin(_1533 + _1532) * 10000.0f) * (abs(sin(_1537 + _1528)) + 0.1f));
    _1544 = _1528 + 1.0f;
    _1545 = _1544 * 17.0f;
    _1554 = frac((sin(_1545 + _1533) * 10000.0f) * (abs(sin(_1537 + _1544)) + 0.1f));
    _1555 = _1529 + 1.0f;
    _1556 = _1555 * 0.1f;
    _1560 = _1555 * 13.0f;
    _1582 = (_1530 * _1530) * (3.0f - (_1530 * 2.0f));
    // [sem: blended]
    _1594 = (lerp(_1543, _1554, _1582)) + (((_1531 * _1531) * (3.0f - (_1531 * 2.0f))) * (((frac((sin(_1556 + _1545) * 10000.0f) * (abs(sin(_1560 + _1544)) + 0.1f)) - _1554) * _1582) + ((frac((sin(_1556 + _1532) * 10000.0f) * (abs(sin(_1560 + _1528)) + 0.1f)) - _1543) * (1.0f - _1582))));
    _1595 = WaveReadLaneFirst(_materialIndex);
    _1603 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1595 < (uint)170000), _1595, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._anamorphicWidth);
    _1605 = (_1603 * 0.9f) + 0.11f;
    _1609 = saturate((_1508 - _1605) / (-0.0f - _1605));  // [sem: expr_sat]
    _1615 = saturate((cos(_1503) * 0.4f) + -1.0f);  // [sem: expr_sat]
    _1619 = (_1615 * _1615) * (3.0f - (_1615 * 2.0f));
    _1627 = saturate(((abs(_1619 + _1504) + -0.04f) + abs(_1504 - _1619)) * -25.0f);  // [sem: expr_sat]
    _1630 = _1609 * _1627;
    _1633 = ((3.0f - (_1627 * 2.0f)) * (3.0f - (_1609 * 2.0f))) * (_1630 * _1630);
    _1635 = (_1603 * 0.5f) + 0.12f;
    _1636 = _1503 + -0.08f;
    _1637 = _1504 + 0.005f;
    _1645 = saturate((sqrt((_1637 * _1637) + (_1636 * _1636)) - _1635) / (-0.0f - _1635));  // [sem: expr_sat]
    _1651 = saturate((cos(_1636) * 0.4f) + -1.0f);  // [sem: expr_sat]
    _1655 = (_1651 * _1651) * (3.0f - (_1651 * 2.0f));
    _1663 = saturate(((abs(_1655 + _1637) + -0.018f) + abs(_1637 - _1655)) * -55.555557f);  // [sem: expr_sat]
    _1666 = _1645 * _1663;
    _1669 = ((3.0f - (_1663 * 2.0f)) * (3.0f - (_1645 * 2.0f))) * (_1666 * _1666);
    _1671 = (_1603 * 0.7f) + 0.13f;
    _1672 = _1503 + 0.09f;
    _1673 = _1504 + -0.005f;
    _1681 = saturate((sqrt((_1673 * _1673) + (_1672 * _1672)) - _1671) / (-0.0f - _1671));  // [sem: expr_sat]
    _1687 = saturate((cos(_1672) * 0.4f) + -1.0f);  // [sem: expr_sat]
    _1691 = (_1687 * _1687) * (3.0f - (_1687 * 2.0f));
    _1699 = saturate(((abs(_1691 + _1673) + -0.0143f) + abs(_1673 - _1691)) * -69.93007f);  // [sem: expr_sat]
    _1702 = _1681 * _1699;
    _1706 = _1501 * 2.25f;
    _1707 = _1502 * 2.25f;
    _1710 = (_1594 * 0.08f) + 0.15f;
    _1714 = saturate((abs(_1707) - _1710) / (-0.0f - _1710));  // [sem: expr_sat]
    _1718 = sqrt((_1707 * _1707) + (_1706 * _1706));
    _1721 = saturate((_1718 + -0.8f) * -0.7692308f);  // [sem: expr_sat]
    _1737 = max(0.9f, frac(frac((sin(_time.x * 8.55f) * 10000.0f) * (abs(sin(_time.x * 7.0f)) + 0.1f)))) * 0.08f;
    _1742 = saturate(((_1718 + -0.1f) - _1737) / (-0.120000005f - _1737));  // [sem: expr_sat]
    _1753 = saturate(((abs(_1706) * abs(_1502 * 1.6875f)) + -0.07f) * -5.882353f);  // [sem: expr_sat]
    _1757 = (_1714 * _1721) * _1753;
    _1763 = (((3.0f - (_1721 * 2.0f)) * (15.0f - (_1714 * 10.0f))) * (3.0f - (_1753 * 2.0f))) * (_1757 * _1757);
    _1767 = _1594 * -0.015f;
    _1768 = _1767 + (_1501 * 2.85f);
    _1769 = _1767 + (_1502 * 2.85f);
    _1773 = sqrt((_1768 * _1768) + (_1769 * _1769));
    _1776 = saturate((_1773 + -1.0f) * -1.4285715f);  // [sem: expr_sat]
    _1784 = saturate(((((_1776 * _1776) * _1773) * (3.0f - (_1776 * 2.0f))) + -0.1f) * 2.5f);  // [sem: expr_sat]
    _1787 = abs(_1503);
    _1789 = atan(_1504 / _1787);
    _1792 = (_1787 < 0.0f);
    _1793 = (_1787 == 0.0f);
    _1794 = (_1504 >= 0.0f);
    _1795 = (_1504 < 0.0f);
    _1808 = abs(-0.0f - _1503);
    _1810 = atan(_1504 / _1808);
    _1813 = (_1808 < 0.0f);
    _1814 = (_1808 == 0.0f);
    _1830 = saturate(-0.0f - (_1508 + -1.0f));  // [sem: expr_sat]
    _1835 = WaveReadLaneFirst(_materialIndex);
    _1843 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1835 < (uint)170000), _1835, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._blubIntensity);
    _1856 = WaveReadLaneFirst(_materialIndex);
    _1864 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1856 < (uint)170000), _1856, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._middleHaloIntensity);
    _1867 = (((lerp(_1520, 1.0f, 0.97f)) * 0.9f) * exp2(log2(((abs(sin(select((_1794 && _1814), 1.2566371f, select((_1795 && _1814), -1.2566371f, (select((_1795 && _1813), (_1810 + -3.1415927f), select((_1794 && _1813), (_1810 + 3.1415927f), _1810)) * 0.8f))))) + abs(sin(select((_1794 && _1793), 1.0995574f, select((_1795 && _1793), -1.0995574f, (select((_1795 && _1792), (_1789 + -3.1415927f), select((_1794 && _1792), (_1789 + 3.1415927f), _1789)) * 0.7f)))))) * 0.5f) * (((_1830 * _1830) * (3.0f - (_1830 * 2.0f))) - ((((_1784 * _1784) * 0.4f) * (3.0f - (_1784 * 2.0f))) * _1843))) * 2.5f)) * _1864;
    _1868 = WaveReadLaneFirst(_materialIndex);
    _1876 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1868 < (uint)170000), _1868, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._largeHalo);
    _1877 = WaveReadLaneFirst(_materialIndex);
    _1885 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1877 < (uint)170000), _1877, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._largeHaloIntensity);
    _1889 = WaveReadLaneFirst(_materialIndex);
    _1897 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1889 < (uint)170000), _1889, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._centerpoint);
    _1898 = WaveReadLaneFirst(_materialIndex);
    _1906 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1898 < (uint)170000), _1898, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._streakGlowIntensity);
    _1907 = (_1763 * _1763) * _1906;
    _1910 = ((_1742 * _1742) * (3.0f - (_1742 * 2.0f))) * _1897;
    _1916 = exp2(log2(_1910 * 1.2f) * 5.0f);
    _1921 = exp2(log2(_1910 * 1.1f) * 24.0f);
    _1931 = _1916 + (_1910 * 0.2f);
    _1933 = (_1907 * 0.049657132f) + (_1633 * 0.0100228265f);
    _1939 = (((3.0f - (_1699 * 2.0f)) * (3.0f - (_1681 * 2.0f))) * (_1702 * _1702)) + _1669;
    _1961 = WaveReadLaneFirst(_materialIndex);
    _1969 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1961 < (uint)170000), _1961, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._anamorphicIntensity);
    _1979 = 1.0f / max(0.001f, _exposure0.x);
    _1983 = max(0.0f, (_1979 * (((_1462 * saturate(_1448)) + ((_401 * 5.0f) * _1466)) + (_1969 * exp2(log2(((((_1933 + (_1669 * 0.033104755f)) + (((_1867 * 0.16689524f) + 0.033104755f) * _1867)) + _1921) + (_1931 * 0.07323897f)) * 2.0f))))));
    _1984 = max(0.0f, (_1979 * (((_1462 * saturate(_1449)) + ((_402 * 7.0f) * _1466)) + (_1969 * exp2(log2(((((_1933 + (_1939 * 0.033104755f)) + ((0.07323897f - (_1867 * 0.023238968f)) * _1867)) + _1921) + (_1931 * 0.21404113f)) * 2.0f))))));
    _1985 = max(0.0f, (_1979 * (((_1462 * saturate(_1450)) + ((_403 * 9.0f) * _1466)) + (_1969 * exp2(log2((((((((_1939 * 0.07323897f) + (_1633 * 0.033104755f)) + ((0.13286835f - (_1867 * 0.08286835f)) * _1867)) + (_1910 * 0.06370936f)) + (_1907 * 0.10985845f)) + (_1916 * 0.6038274f)) + _1921) * 2.0f))))));
    _1986 = WaveReadLaneFirst(_materialIndex);
    _1994 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1986 < (uint)170000), _1986, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._borderSmoothness);
    _1995 = WaveReadLaneFirst(_materialIndex);
    _2003 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_1995 < (uint)170000), _1995, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._borderWidth);
    _2009 = (1.0f - _2003) * 0.5f;
    _2012 = max((abs(TEXCOORD.x + -0.5f) - _2009), 0.0f);
    _2013 = max((abs(TEXCOORD.y + -0.5f) - _2009), 0.0f);
    _2020 = WaveReadLaneFirst(_materialIndex);
    _2028 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_2020 < (uint)170000), _2020, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._borderColor);
    _2031 = (float)((uint)((uint)(((uint)((uint)(_2028)) >> 16) & 255)));
    _2034 = (float)((uint)((uint)(((uint)((uint)(_2028)) >> 8) & 255)));
    _2036 = (float)((uint)((uint)(_2028 & 255)));
    _2066 = max(0.001f, _exposure0.x);
    _2070 = WaveReadLaneFirst(_materialIndex);
    _2078 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_2070 < (uint)170000), _2070, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._borderRatio);
    _2079 = _2078 * saturate(sqrt((_2013 * _2013) + (_2012 * _2012)) / _1994);
    _2086 = (_2079 * ((select(((_2031 * 0.003921569f) < 0.04045f), (_2031 * 0.000303527f), exp2(log2((_2031 * 0.003717127f) + 0.052132703f) * 2.4f)) / _2066) - _1983)) + _1983;
    _2087 = (_2079 * ((select(((_2034 * 0.003921569f) < 0.04045f), (_2034 * 0.000303527f), exp2(log2((_2034 * 0.003717127f) + 0.052132703f) * 2.4f)) / _2066) - _1984)) + _1984;
    _2088 = (_2079 * ((select(((_2036 * 0.003921569f) < 0.04045f), (_2036 * 0.000303527f), exp2(log2((_2036 * 0.003717127f) + 0.052132703f) * 2.4f)) / _2066) - _1985)) + _1985;
    _2089 = WaveReadLaneFirst(_materialIndex);
    _2097 = WaveReadLaneFirst(BindlessParameters_PostProcessAbyssEnterIntro_CD[((int)((uint)((uint)(select(((uint)_2089 < (uint)170000), _2089, 0))) + (uint)(0)))].BindlessParameters_PostProcessAbyssEnterIntro_CD._fadeRatio);
    _2098 = saturate(_2097);  // [sem: _2097_sat]
    _2105 = (_2098 * ((exp2(log2(max(0.0f, (_39 + -0.8359375f)) / (18.851562f - (_39 * 18.6875f))) * 6.277395f) * 10000.0f) - _2086)) + _2086;
    _2106 = (_2098 * ((exp2(log2(max(0.0f, (_40 + -0.8359375f)) / (18.851562f - (_40 * 18.6875f))) * 6.277395f) * 10000.0f) - _2087)) + _2087;
    _2107 = (_2098 * ((exp2(log2(max(0.0f, (_41 + -0.8359375f)) / (18.851562f - (_41 * 18.6875f))) * 6.277395f) * 10000.0f) - _2088)) + _2088;
    _2108 = (uint)(SV_Position.y);
    if (_etcParams.y == 1.0f) {
      _2121 = (((float)((uint)((uint)((((uint2)(__3__36__0__0__g_stencil.Load(int3(((int)((uint)(SV_Position.x))), _2108, 0)))).x) & 127)))) + 0.5f);
    } else {
      _2121 = 1.0f;
    }
    _2124 = (_localToneMappingParams.w > 0.0f);
    if (_2124) {
      _2130 = _userImageAdjust.z * _exposure0.x;
      _2179 = exp2(log2(max(0.0f, (((_2130 * max(0.0f, (((_2105 * 1.70505f) - (_2106 * 0.62179f)) - (_2107 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
      _2180 = exp2(log2(max(0.0f, (((max(0.0f, (((_2106 * 1.1408f) - (_2105 * 0.13026f)) - (_2107 * 0.01055f))) * _2130) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
      _2181 = exp2(log2(max(0.0f, (((max(0.0f, (((_2105 * -0.024f) - (_2106 * 0.12897f)) + (_2107 * 1.15297f))) * _2130) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
      _2183 = dot(float3(_2179, _2180, _2181), float3(0.212671f, 0.71516f, 0.072169f));
      _2190 = ((_2179 - _2183) * _powerParams.w) + _2183;
      _2191 = ((_2180 - _2183) * _powerParams.w) + _2183;
      _2192 = ((_2181 - _2183) * _powerParams.w) + _2183;
      _2211 = min(max(log2(mad(_2192, 0.079223745f, mad(_2191, 0.0784336f, (_2190 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
      _2212 = min(max(log2(mad(_2192, 0.07916613f, mad(_2191, 0.87846863f, (_2190 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
      _2213 = min(max(log2(mad(_2192, 0.879143f, mad(_2191, 0.0784336f, (_2190 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
      _2214 = _2211 * 0.060606062f;
      _2215 = _2212 * 0.060606062f;
      _2216 = _2213 * 0.060606062f;
      _2217 = _2214 * _2214;
      _2218 = _2215 * _2215;
      _2219 = _2216 * _2216;
      _2265 = min(0.0f, (-0.0f - (((_2211 * 0.0072181816f) + ((_2217 * 0.4298f) + (((_2217 * _2217) * ((31.96f - (_2211 * 2.4327273f)) + (_2217 * 15.5f))) - ((_2211 * 0.41624245f) * _2217)))) + -0.00232f)));
      _2266 = min(0.0f, (-0.0f - (((_2212 * 0.0072181816f) + ((_2218 * 0.4298f) + (((_2218 * _2218) * ((31.96f - (_2212 * 2.4327273f)) + (_2218 * 15.5f))) - ((_2212 * 0.41624245f) * _2218)))) + -0.00232f)));
      _2267 = min(0.0f, (-0.0f - (((_2213 * 0.0072181816f) + ((_2219 * 0.4298f) + (((_2219 * _2219) * ((31.96f - (_2213 * 2.4327273f)) + (_2219 * 15.5f))) - ((_2213 * 0.41624245f) * _2219)))) + -0.00232f)));
      _2268 = -0.0f - _2265;
      _2269 = -0.0f - _2266;
      _2270 = -0.0f - _2267;
      _2271 = dot(float3(_2268, _2269, _2270), float3(0.2126f, 0.7152f, 0.0722f));
      if (_nightToneParm == 1) {
        _2288 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
        _2289 = -0.79999995f / _2288;
        _2290 = -1.2f / _2288;
        _2291 = 0.20000005f / _2288;
        _2297 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
        _2300 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
        _2307 = (_2289 + 1.4f) + (_2300 * (-0.39999998f - _2289));
        _2308 = (_2290 + 1.6f) + (_2300 * (-0.6f - _2290));
        _2309 = (_2291 + 0.9f) + (_2300 * (0.5f - _2291));
        _2326 = (lerp(_2308, 1.2f, _2297));  // [sem: blended]
        _2327 = (lerp(_2307, 1.0f, _2297));  // [sem: blended]
        _2328 = (lerp(_2309, 1.4f, _2297));  // [sem: blended]
      } else {
        _2326 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
        _2327 = 1.0f;  // [sem: blended]
        _2328 = 1.4f;  // [sem: blended]
      }
      _2338 = 1.0f - _2326;
      _2363 = ((exp2(log2(((saturate((_2265 * _2265) * _2268) * _2338) + _2326) * _2268) * _2327) - _2271) * _2328) + _2271;
      _2364 = ((exp2(log2(((saturate((_2266 * _2266) * _2269) * _2338) + _2326) * _2269) * _2327) - _2271) * _2328) + _2271;
      _2365 = ((exp2(log2(((saturate((_2267 * _2267) * _2270) * _2338) + _2326) * _2270) * _2327) - _2271) * _2328) + _2271;
      _2384 = saturate(exp2(log2(mad(_2365, -0.09902974f, mad(_2364, -0.09802088f, (_2363 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
      _2385 = saturate(exp2(log2(mad(_2365, -0.098961174f, mad(_2364, 1.1519032f, (_2363 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
      _2386 = saturate(exp2(log2(mad(_2365, 1.1510737f, mad(_2364, -0.09804345f, (_2363 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
      if (_etcParams.z == 0.0f) {
        _2392 = 1.0f - abs(_etcParams.w);
        _2396 = saturate(_etcParams.w);  // [sem: expr_sat]
        _2397 = (_2392 * _2384) + _2396;
        _2398 = (_2392 * _2385) + _2396;
        _2399 = (_2392 * _2386) + _2396;
        if (_colorGradingParams.w > 0.0f) {
          _2404 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
          _2421 = (((max(0.0f, (1.0f - _2397)) - _2397) * _2404) + _2397);
          _2422 = (((max(0.0f, (1.0f - _2398)) - _2398) * _2404) + _2398);
          _2423 = (((max(0.0f, (1.0f - _2399)) - _2399) * _2404) + _2399);
        } else {
          _2421 = _2397;
          _2422 = _2398;
          _2423 = _2399;
        }
        _2429 = _userImageAdjust.y + 1.0f;
        _2433 = _userImageAdjust.x + 0.5f;
        _2434 = ((_2421 + -0.5f) * _2429) + _2433;
        _2435 = ((_2422 + -0.5f) * _2429) + _2433;
        _2436 = ((_2423 + -0.5f) * _2429) + _2433;
        _2466 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
        _2477 = exp2(log2(saturate(mad(_colorBlind0.z, _2436, mad(_colorBlind0.y, _2435, (_colorBlind0.x * _2434))))) * _2466);
        _2478 = exp2(log2(saturate(mad(_colorBlind1.z, _2436, mad(_colorBlind1.y, _2435, (_colorBlind1.x * _2434))))) * _2466);
        _2479 = exp2(log2(saturate(mad(_colorBlind2.z, _2436, mad(_colorBlind2.y, _2435, (_colorBlind2.x * _2434))))) * _2466);
      } else {
        _2477 = _2384;
        _2478 = _2385;
        _2479 = _2386;
      }
    } else {
      _2477 = _2105;
      _2478 = _2106;
      _2479 = _2107;
    }
    if (_etcParams.y > 1.0f) {
      _2488 = abs((TEXCOORD.x * 2.0f) + -1.0f);
      _2489 = abs((TEXCOORD.y * 2.0f) + -1.0f);
      _2493 = saturate(1.0f - (dot(float2(_2488, _2489), float2(_2488, _2489)) * saturate(_etcParams.y + -1.0f)));  // [sem: expr_sat]
      _2498 = (_2493 * _2477);
      _2499 = (_2493 * _2478);
      _2500 = (_2493 * _2479);
    } else {
      _2498 = _2477;
      _2499 = _2478;
      _2500 = _2479;
    }
    if (_2124 && (_etcParams.z > 0.0f)) {
      _2530 = select((_2498 <= 0.0031308f), (_2498 * 12.92f), (((pow(_2498, 0.41666666f)) * 1.055f) + -0.055f));
      _2531 = select((_2499 <= 0.0031308f), (_2499 * 12.92f), (((pow(_2499, 0.41666666f)) * 1.055f) + -0.055f));
      _2532 = select((_2500 <= 0.0031308f), (_2500 * 12.92f), (((pow(_2500, 0.41666666f)) * 1.055f) + -0.055f));
    } else {
      _2530 = _2498;
      _2531 = _2499;
      _2532 = _2500;
    }
    if (!(!(_etcParams.y >= 1.0f))) {
      _2537 = (float)((uint)((uint)(_2108)));
      if (!(_2537 < _viewDir.w)) {
        if (!(_2537 >= (_screenSizeAndInvSize.y - _viewDir.w))) {
          _2546 = _2530;
          _2547 = _2531;
          _2548 = _2532;
        } else {
          _2546 = 0.0f;
          _2547 = 0.0f;
          _2548 = 0.0f;
        }
      } else {
        _2546 = 0.0f;
        _2547 = 0.0f;
        _2548 = 0.0f;
      }
    } else {
      _2546 = _2530;
      _2547 = _2531;
      _2548 = _2532;
    }
    _2558 = exp2(log2(_2546 * 0.0001f) * 0.15930176f);
    _2559 = exp2(log2(_2547 * 0.0001f) * 0.15930176f);
    _2560 = exp2(log2(_2548 * 0.0001f) * 0.15930176f);
    SV_Target.x = exp2(log2((1.0f / ((_2558 * 18.6875f) + 1.0f)) * ((_2558 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.y = exp2(log2((1.0f / ((_2559 * 18.6875f) + 1.0f)) * ((_2559 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.z = exp2(log2((1.0f / ((_2560 * 18.6875f) + 1.0f)) * ((_2560 * 18.851562f) + 0.8359375f)) * 78.84375f);
    SV_Target.w = _2121;
    break;
  }
  return SV_Target;
}
