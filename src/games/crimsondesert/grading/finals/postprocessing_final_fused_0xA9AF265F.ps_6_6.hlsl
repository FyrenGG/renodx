Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

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
  if (_slopeParams.w > 0.0f) {
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
  _115 = exp2(_powerParams.x * log2(max(0.0f, ((_95 * max(0.0f, (((_86 * -0.62179f) - (_85 * 0.08326f)) + (_87 * 1.70505f)))) + _offsetParams.x))));
  _129 = exp2(log2(max(0.0f, ((max(0.0f, (((_86 * 1.1408f) - (_85 * 0.01055f)) - (_87 * 0.13026f))) * _97) + _offsetParams.y))) * _powerParams.y);
  _143 = exp2(log2(max(0.0f, ((max(0.0f, (((_85 * 1.15297f) - (_86 * 0.12897f)) - (_87 * 0.024f))) * _99) + _offsetParams.z))) * _powerParams.z);
  _144 = dot(float3(_115, _129, _143), float3(0.212671f, 0.71516f, 0.072169f));
  _148 = ((_115 - _144) * _powerParams.w) + _144;
  _152 = (lerp(_144, _129, _powerParams.w)) * 3.0f;  // [sem: blended]
  _156 = (lerp(_144, _143, _powerParams.w)) * 3.0f;  // [sem: blended]
  _159 = mad(-1.7106533e-05f, _156, mad(0.00040110573f, _152, (_148 * 3.0009599f)));
  _162 = mad(-2.34209e-05f, _156, mad(0.9997657f, _152, (_148 * -6.0908147e-05f)));
  _165 = mad(1.0005832f, _156, mad(8.34018e-05f, _152, (_148 * 4.855916e-05f)));
  _168 = mad(0.04736635f, _165, mad(0.33951214f, _162, (_159 * 0.61319155f)));
  _171 = mad(0.013450007f, _165, mad(0.91633576f, _162, (_159 * 0.07020692f)));
  _174 = mad(0.8696068f, _165, mad(0.1095673f, _162, (_159 * 0.020618873f)));
  _175 = dot(float3(_168, _171, _174), float3(0.27222872f, 0.67408174f, 0.053689517f));
  _177 = (_168 / _175) + -1.0f;
  _179 = (_171 / _175) + -1.0f;
  _181 = (_174 / _175) + -1.0f;
  _190 = (1.0f - exp2(dot(float3(_177, _179, _181), float3(_177, _179, _181)) * -4.0f)) * (1.0f - exp2((_175 * _175) * -4.0f));
  _196 = ((mad(-0.06368284f, _174, mad(-0.3292913f, _171, (_168 * 1.3704128f))) - _168) * _190) + _168;
  _202 = ((mad(-0.010861567f, _174, mad(1.0970908f, _171, (_168 * -0.08343426f))) - _171) * _190) + _171;
  _208 = ((mad(1.2036945f, _174, mad(-0.098625645f, _171, (_168 * -0.02579326f))) - _174) * _190) + _174;
  _214 = ((mad(0.061360642f, _208, mad(-4.5401976e-09f, _202, (_196 * 0.9386394f))) - _196) * 0.6f) + _196;
  _220 = ((mad(0.1692059f, _208, mad(0.8307942f, _202, (_196 * 6.775372e-08f))) - _202) * 0.6f) + _202;
  _224 = (mad(-2.3283064e-10f, _202, (_196 * -9.313226e-10f)) * 0.6f) + _208;
  _227 = mad(0.16386905f, _224, mad(0.14067869f, _220, (_214 * 0.6954522f)));
  _230 = mad(0.095534325f, _224, mad(0.8596711f, _220, (_214 * 0.04479458f)));
  _233 = mad(1.0015007f, _224, mad(0.00402521f, _220, (_214 * -0.005525883f)));
  _235 = max(max(_227, _230), _233);
  _242 = (max(_235, 1e-10f) - max(min(min(_227, _230), _233), 1e-10f)) / max(_235, 0.01f);
  _255 = ((_230 + _227) + _233) + (sqrt((((_233 - _230) * _233) + ((_230 - _227) * _230)) + ((_227 - _233) * _227)) * 1.75f);
  _256 = _255 * 0.33333334f;
  _257 = _242 + -0.4f;
  _258 = _257 * 5.0f;
  _262 = max((1.0f - abs(_257 * 2.5f)), 0.0f);
  _273 = ((((float)((int)((int)((int)(uint)((int)(_258 > 0.0f))) - (int)((int)(uint)((int)(_258 < 0.0f)))))) * (1.0f - (_262 * _262))) + 1.0f) * 0.025f;
  if (!(_256 <= 0.053333335f)) {
    if (!(_256 >= 0.16f)) {
      _282 = (((0.24f / _255) + -0.5f) * _273);
    } else {
      _282 = 0.0f;
    }
  } else {
    _282 = _273;
  }
  _283 = _282 + 1.0f;
  _284 = _283 * _227;
  _285 = _283 * _230;
  _286 = _283 * _233;
  if (!((_284 == _285) && (_285 == _286))) {
    _293 = ((_284 * 2.0f) - _285) - _286;
    _296 = ((_230 - _233) * 1.7320508f) * _283;
    _298 = atan(_296 / _293);
    _299 = (_293 < 0.0f);
    _300 = (_293 == 0.0f);
    _301 = (_296 >= 0.0f);
    _302 = (_296 < 0.0f);
    _313 = select((_301 && _300), 90.0f, select((_302 && _300), -90.0f, (select((_302 && _299), (_298 + -3.1415927f), select((_301 && _299), (_298 + 3.1415927f), _298)) * 57.295776f)));
    if (_313 < 0.0f) {
      _318 = (_313 + 360.0f);
    } else {
      _318 = _313;
    }
  } else {
    _318 = 0.0f;
  }
  _320 = min(max(_318, 0.0f), 360.0f);
  if (_320 < -180.0f) {
    _329 = (_320 + 360.0f);
  } else {
    if (_320 > 180.0f) {
      _329 = (_320 + -360.0f);
    } else {
      _329 = _320;
    }
  }
  _333 = saturate(1.0f - abs(_329 * 0.014814815f));  // [sem: expr_sat]
  _337 = (_333 * _333) * (3.0f - (_333 * 2.0f));
  _343 = ((_337 * _337) * ((_242 * 0.18f) * (0.03f - _284))) + _284;
  _348 = log2(max(0.0f, mad(-0.21492857f, _286, mad(-0.23651075f, _285, (_343 * 1.4514393f)))));
  _353 = log2(max(0.0f, mad(-0.09967592f, _286, mad(1.1762297f, _285, (_343 * -0.07655378f)))));
  _358 = log2(max(0.0f, mad(0.9977163f, _286, mad(-0.0060324497f, _285, (_343 * 0.008316148f)))));
  _359 = _348 * 0.30103f;
  _360 = _353 * 0.30103f;
  _361 = _358 * 0.30103f;
  _363 = (_348 * 0.2739373f) + 0.7790625f;
  _365 = (_353 * 0.2739373f) + 0.7790625f;
  _367 = (_358 * 0.2739373f) + 0.7790625f;
  _374 = select((_359 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_348 * 1.43712f)) + 1.0f)), _363);
  _381 = select((_360 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_353 * 1.43712f)) + 1.0f)), _365);
  _388 = select((_361 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_358 * 1.43712f)) + 1.0f)), _367);
  _392 = 1.0f - saturate(-0.78987026f - (_348 * 0.9446112f));
  _396 = 1.0f - saturate(-0.78987026f - (_353 * 0.9446112f));
  _400 = 1.0f - saturate(-0.78987026f - (_358 * 0.9446112f));
  _416 = max(0.0f, ((((_392 * _392) * (3.0f - (_392 * 2.0f))) * (select((_359 > -0.57039833f), (1.04f - (1.56f / (exp2((_348 * 1.013354f) + 1.9201254f) + 1.0f))), _363) - _374)) + _374));
  _432 = max(0.0f, ((((_396 * _396) * (3.0f - (_396 * 2.0f))) * (select((_360 > -0.57039833f), (1.04f - (1.56f / (exp2((_353 * 1.013354f) + 1.9201254f) + 1.0f))), _365) - _381)) + _381));
  _448 = max(0.0f, ((((_400 * _400) * (3.0f - (_400 * 2.0f))) * (select((_361 > -0.57039833f), (1.04f - (1.56f / (exp2((_358 * 1.013354f) + 1.9201254f) + 1.0f))), _367) - _388)) + _388));
  _454 = ((mad(-0.06537104f, _448, mad(1.4518155e-06f, _432, (_416 * 1.0653747f))) - _416) * 0.6f) + _416;
  _460 = ((mad(-0.2036677f, _448, mad(1.2036635f, _432, (_416 * -2.5716145e-07f))) - _432) * 0.6f) + _432;
  _466 = ((mad(0.99999964f, _448, mad(2.0954758e-08f, _432, (_416 * 1.8626451e-08f))) - _448) * 0.6f) + _448;
  _471 = saturate(max(0.0f, mad(-0.08325848f, _466, mad(-0.6217906f, _460, (_454 * 1.7050515f)))));  // [sem: expr_sat]
  _476 = saturate(max(0.0f, mad(-0.010548528f, _466, mad(1.1408027f, _460, (_454 * -0.13025719f)))));  // [sem: expr_sat]
  _481 = saturate(max(0.0f, mad(1.1529719f, _466, mad(-0.12896876f, _460, (_454 * -0.024003278f)))));  // [sem: expr_sat]
  _484 = _localToneMappingParams.x * _87;
  _485 = _localToneMappingParams.x * _86;
  _486 = _localToneMappingParams.x * _85;
  _498 = exp2(log2(max(0.0f, ((max(0.0f, (((_484 * 1.70505f) - (_485 * 0.62179f)) - (_486 * 0.08326f))) * _95) + _offsetParams.x))) * _powerParams.x);
  _510 = exp2(log2(max(0.0f, ((max(0.0f, (((_485 * 1.1408f) - (_484 * 0.13026f)) - (_486 * 0.01055f))) * _97) + _offsetParams.y))) * _powerParams.y);
  _522 = exp2(log2(max(0.0f, ((max(0.0f, (((_484 * -0.024f) - (_485 * 0.12897f)) + (_486 * 1.15297f))) * _99) + _offsetParams.z))) * _powerParams.z);
  _523 = dot(float3(_498, _510, _522), float3(0.212671f, 0.71516f, 0.072169f));
  _526 = ((_498 - _523) * _powerParams.w) + _523;
  _530 = (lerp(_523, _510, _powerParams.w)) * 3.0f;  // [sem: blended]
  _534 = (lerp(_523, _522, _powerParams.w)) * 3.0f;  // [sem: blended]
  _537 = mad(-1.7106533e-05f, _534, mad(0.00040110573f, _530, (_526 * 3.0009599f)));
  _540 = mad(-2.34209e-05f, _534, mad(0.9997657f, _530, (_526 * -6.0908147e-05f)));
  _543 = mad(1.0005832f, _534, mad(8.34018e-05f, _530, (_526 * 4.855916e-05f)));
  _546 = mad(0.04736635f, _543, mad(0.33951214f, _540, (_537 * 0.61319155f)));
  _549 = mad(0.013450007f, _543, mad(0.91633576f, _540, (_537 * 0.07020692f)));
  _552 = mad(0.8696068f, _543, mad(0.1095673f, _540, (_537 * 0.020618873f)));
  _553 = dot(float3(_546, _549, _552), float3(0.27222872f, 0.67408174f, 0.053689517f));
  _555 = (_546 / _553) + -1.0f;
  _557 = (_549 / _553) + -1.0f;
  _559 = (_552 / _553) + -1.0f;
  _568 = (1.0f - exp2(dot(float3(_555, _557, _559), float3(_555, _557, _559)) * -4.0f)) * (1.0f - exp2((_553 * _553) * -4.0f));
  _574 = ((mad(-0.06368284f, _552, mad(-0.3292913f, _549, (_546 * 1.3704128f))) - _546) * _568) + _546;
  _580 = ((mad(-0.010861567f, _552, mad(1.0970908f, _549, (_546 * -0.08343426f))) - _549) * _568) + _549;
  _586 = ((mad(1.2036945f, _552, mad(-0.098625645f, _549, (_546 * -0.02579326f))) - _552) * _568) + _552;
  _592 = ((mad(0.061360642f, _586, mad(-4.5401976e-09f, _580, (_574 * 0.9386394f))) - _574) * 0.6f) + _574;
  _598 = ((mad(0.1692059f, _586, mad(0.8307942f, _580, (_574 * 6.775372e-08f))) - _580) * 0.6f) + _580;
  _602 = (mad(-2.3283064e-10f, _580, (_574 * -9.313226e-10f)) * 0.6f) + _586;
  _605 = mad(0.16386905f, _602, mad(0.14067869f, _598, (_592 * 0.6954522f)));
  _608 = mad(0.095534325f, _602, mad(0.8596711f, _598, (_592 * 0.04479458f)));
  _611 = mad(1.0015007f, _602, mad(0.00402521f, _598, (_592 * -0.005525883f)));
  _613 = max(max(_605, _608), _611);
  _620 = (max(_613, 1e-10f) - max(min(min(_605, _608), _611), 1e-10f)) / max(_613, 0.01f);
  _633 = ((_608 + _605) + _611) + (sqrt((((_611 - _608) * _611) + ((_608 - _605) * _608)) + ((_605 - _611) * _605)) * 1.75f);
  _634 = _633 * 0.33333334f;
  _635 = _620 + -0.4f;
  _636 = _635 * 5.0f;
  _640 = max((1.0f - abs(_635 * 2.5f)), 0.0f);
  _651 = ((((float)((int)((int)((int)(uint)((int)(_636 > 0.0f))) - (int)((int)(uint)((int)(_636 < 0.0f)))))) * (1.0f - (_640 * _640))) + 1.0f) * 0.025f;
  if (!(_634 <= 0.053333335f)) {
    if (!(_634 >= 0.16f)) {
      _660 = (((0.24f / _633) + -0.5f) * _651);
    } else {
      _660 = 0.0f;
    }
  } else {
    _660 = _651;
  }
  _661 = _660 + 1.0f;
  _662 = _661 * _605;
  _663 = _661 * _608;
  _664 = _661 * _611;
  if (!((_662 == _663) && (_663 == _664))) {
    _671 = ((_662 * 2.0f) - _663) - _664;
    _674 = ((_608 - _611) * 1.7320508f) * _661;
    _676 = atan(_674 / _671);
    _677 = (_671 < 0.0f);
    _678 = (_671 == 0.0f);
    _679 = (_674 >= 0.0f);
    _680 = (_674 < 0.0f);
    _691 = select((_679 && _678), 90.0f, select((_680 && _678), -90.0f, (select((_680 && _677), (_676 + -3.1415927f), select((_679 && _677), (_676 + 3.1415927f), _676)) * 57.295776f)));
    if (_691 < 0.0f) {
      _696 = (_691 + 360.0f);
    } else {
      _696 = _691;
    }
  } else {
    _696 = 0.0f;
  }
  _698 = min(max(_696, 0.0f), 360.0f);
  if (_698 < -180.0f) {
    _707 = (_698 + 360.0f);
  } else {
    if (_698 > 180.0f) {
      _707 = (_698 + -360.0f);
    } else {
      _707 = _698;
    }
  }
  _711 = saturate(1.0f - abs(_707 * 0.014814815f));  // [sem: expr_sat]
  _715 = (_711 * _711) * (3.0f - (_711 * 2.0f));
  _721 = ((_715 * _715) * ((_620 * 0.18f) * (0.03f - _662))) + _662;
  _726 = log2(max(0.0f, mad(-0.21492857f, _664, mad(-0.23651075f, _663, (_721 * 1.4514393f)))));
  _731 = log2(max(0.0f, mad(-0.09967592f, _664, mad(1.1762297f, _663, (_721 * -0.07655378f)))));
  _736 = log2(max(0.0f, mad(0.9977163f, _664, mad(-0.0060324497f, _663, (_721 * 0.008316148f)))));
  _737 = _726 * 0.30103f;
  _738 = _731 * 0.30103f;
  _739 = _736 * 0.30103f;
  _741 = (_726 * 0.2739373f) + 0.7790625f;
  _743 = (_731 * 0.2739373f) + 0.7790625f;
  _745 = (_736 * 0.2739373f) + 0.7790625f;
  _752 = select((_737 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_726 * 1.43712f)) + 1.0f)), _741);
  _759 = select((_738 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_731 * 1.43712f)) + 1.0f)), _743);
  _766 = select((_739 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_736 * 1.43712f)) + 1.0f)), _745);
  _770 = 1.0f - saturate(-0.78987026f - (_726 * 0.9446112f));
  _774 = 1.0f - saturate(-0.78987026f - (_731 * 0.9446112f));
  _778 = 1.0f - saturate(-0.78987026f - (_736 * 0.9446112f));
  _794 = max(0.0f, ((((_770 * _770) * (3.0f - (_770 * 2.0f))) * (select((_737 > -0.57039833f), (1.04f - (1.56f / (exp2((_726 * 1.013354f) + 1.9201254f) + 1.0f))), _741) - _752)) + _752));
  _810 = max(0.0f, ((((_774 * _774) * (3.0f - (_774 * 2.0f))) * (select((_738 > -0.57039833f), (1.04f - (1.56f / (exp2((_731 * 1.013354f) + 1.9201254f) + 1.0f))), _743) - _759)) + _759));
  _826 = max(0.0f, ((((_778 * _778) * (3.0f - (_778 * 2.0f))) * (select((_739 > -0.57039833f), (1.04f - (1.56f / (exp2((_736 * 1.013354f) + 1.9201254f) + 1.0f))), _745) - _766)) + _766));
  _832 = ((mad(-0.06537104f, _826, mad(1.4518155e-06f, _810, (_794 * 1.0653747f))) - _794) * 0.6f) + _794;
  _838 = ((mad(-0.2036677f, _826, mad(1.2036635f, _810, (_794 * -2.5716145e-07f))) - _810) * 0.6f) + _810;
  _844 = ((mad(0.99999964f, _826, mad(2.0954758e-08f, _810, (_794 * 1.8626451e-08f))) - _826) * 0.6f) + _826;
  _863 = dot(float3(saturate(saturate(max(0.0f, mad(-0.08325848f, _844, mad(-0.6217906f, _838, (_832 * 1.7050515f)))))), saturate(saturate(max(0.0f, mad(-0.010548528f, _844, mad(1.1408027f, _838, (_832 * -0.13025719f)))))), saturate(saturate(max(0.0f, mad(1.1529719f, _844, mad(-0.12896876f, _838, (_832 * -0.024003278f))))))), float3(0.1f, 0.7f, 0.2f));
  _867 = dot(float3(saturate(_471), saturate(_476), saturate(_481)), float3(0.1f, 0.7f, 0.2f));
  _869 = _localToneMappingParams.y * _87;
  _870 = _localToneMappingParams.y * _86;
  _871 = _localToneMappingParams.y * _85;
  _883 = exp2(log2(max(0.0f, ((max(0.0f, (((_869 * 1.70505f) - (_870 * 0.62179f)) - (_871 * 0.08326f))) * _95) + _offsetParams.x))) * _powerParams.x);
  _895 = exp2(log2(max(0.0f, ((max(0.0f, (((_870 * 1.1408f) - (_869 * 0.13026f)) - (_871 * 0.01055f))) * _97) + _offsetParams.y))) * _powerParams.y);
  _907 = exp2(log2(max(0.0f, ((max(0.0f, (((_869 * -0.024f) - (_870 * 0.12897f)) + (_871 * 1.15297f))) * _99) + _offsetParams.z))) * _powerParams.z);
  _908 = dot(float3(_883, _895, _907), float3(0.212671f, 0.71516f, 0.072169f));
  _911 = ((_883 - _908) * _powerParams.w) + _908;
  _915 = (lerp(_908, _895, _powerParams.w)) * 3.0f;  // [sem: blended]
  _919 = (lerp(_908, _907, _powerParams.w)) * 3.0f;  // [sem: blended]
  _922 = mad(-1.7106533e-05f, _919, mad(0.00040110573f, _915, (_911 * 3.0009599f)));
  _925 = mad(-2.34209e-05f, _919, mad(0.9997657f, _915, (_911 * -6.0908147e-05f)));
  _928 = mad(1.0005832f, _919, mad(8.34018e-05f, _915, (_911 * 4.855916e-05f)));
  _931 = mad(0.04736635f, _928, mad(0.33951214f, _925, (_922 * 0.61319155f)));
  _934 = mad(0.013450007f, _928, mad(0.91633576f, _925, (_922 * 0.07020692f)));
  _937 = mad(0.8696068f, _928, mad(0.1095673f, _925, (_922 * 0.020618873f)));
  _938 = dot(float3(_931, _934, _937), float3(0.27222872f, 0.67408174f, 0.053689517f));
  _940 = (_931 / _938) + -1.0f;
  _942 = (_934 / _938) + -1.0f;
  _944 = (_937 / _938) + -1.0f;
  _953 = (1.0f - exp2(dot(float3(_940, _942, _944), float3(_940, _942, _944)) * -4.0f)) * (1.0f - exp2((_938 * _938) * -4.0f));
  _959 = ((mad(-0.06368284f, _937, mad(-0.3292913f, _934, (_931 * 1.3704128f))) - _931) * _953) + _931;
  _965 = ((mad(-0.010861567f, _937, mad(1.0970908f, _934, (_931 * -0.08343426f))) - _934) * _953) + _934;
  _971 = ((mad(1.2036945f, _937, mad(-0.098625645f, _934, (_931 * -0.02579326f))) - _937) * _953) + _937;
  _977 = ((mad(0.061360642f, _971, mad(-4.5401976e-09f, _965, (_959 * 0.9386394f))) - _959) * 0.6f) + _959;
  _983 = ((mad(0.1692059f, _971, mad(0.8307942f, _965, (_959 * 6.775372e-08f))) - _965) * 0.6f) + _965;
  _987 = (mad(-2.3283064e-10f, _965, (_959 * -9.313226e-10f)) * 0.6f) + _971;
  _990 = mad(0.16386905f, _987, mad(0.14067869f, _983, (_977 * 0.6954522f)));
  _993 = mad(0.095534325f, _987, mad(0.8596711f, _983, (_977 * 0.04479458f)));
  _996 = mad(1.0015007f, _987, mad(0.00402521f, _983, (_977 * -0.005525883f)));
  _998 = max(max(_990, _993), _996);
  _1005 = (max(_998, 1e-10f) - max(min(min(_990, _993), _996), 1e-10f)) / max(_998, 0.01f);
  _1018 = ((_993 + _990) + _996) + (sqrt((((_996 - _993) * _996) + ((_993 - _990) * _993)) + ((_990 - _996) * _990)) * 1.75f);
  _1019 = _1018 * 0.33333334f;
  _1020 = _1005 + -0.4f;
  _1021 = _1020 * 5.0f;
  _1025 = max((1.0f - abs(_1020 * 2.5f)), 0.0f);
  _1036 = ((((float)((int)((int)((int)(uint)((int)(_1021 > 0.0f))) - (int)((int)(uint)((int)(_1021 < 0.0f)))))) * (1.0f - (_1025 * _1025))) + 1.0f) * 0.025f;
  if (!(_1019 <= 0.053333335f)) {
    if (!(_1019 >= 0.16f)) {
      _1045 = (((0.24f / _1018) + -0.5f) * _1036);
    } else {
      _1045 = 0.0f;
    }
  } else {
    _1045 = _1036;
  }
  _1046 = _1045 + 1.0f;
  _1047 = _1046 * _990;
  _1048 = _1046 * _993;
  _1049 = _1046 * _996;
  if (!((_1047 == _1048) && (_1048 == _1049))) {
    _1056 = ((_1047 * 2.0f) - _1048) - _1049;
    _1059 = ((_993 - _996) * 1.7320508f) * _1046;
    _1061 = atan(_1059 / _1056);
    _1062 = (_1056 < 0.0f);
    _1063 = (_1056 == 0.0f);
    _1064 = (_1059 >= 0.0f);
    _1065 = (_1059 < 0.0f);
    _1076 = select((_1064 && _1063), 90.0f, select((_1065 && _1063), -90.0f, (select((_1065 && _1062), (_1061 + -3.1415927f), select((_1064 && _1062), (_1061 + 3.1415927f), _1061)) * 57.295776f)));
    if (_1076 < 0.0f) {
      _1081 = (_1076 + 360.0f);
    } else {
      _1081 = _1076;
    }
  } else {
    _1081 = 0.0f;
  }
  _1083 = min(max(_1081, 0.0f), 360.0f);
  if (_1083 < -180.0f) {
    _1092 = (_1083 + 360.0f);
  } else {
    if (_1083 > 180.0f) {
      _1092 = (_1083 + -360.0f);
    } else {
      _1092 = _1083;
    }
  }
  _1096 = saturate(1.0f - abs(_1092 * 0.014814815f));  // [sem: expr_sat]
  _1100 = (_1096 * _1096) * (3.0f - (_1096 * 2.0f));
  _1106 = ((_1100 * _1100) * ((_1005 * 0.18f) * (0.03f - _1047))) + _1047;
  _1111 = log2(max(0.0f, mad(-0.21492857f, _1049, mad(-0.23651075f, _1048, (_1106 * 1.4514393f)))));
  _1116 = log2(max(0.0f, mad(-0.09967592f, _1049, mad(1.1762297f, _1048, (_1106 * -0.07655378f)))));
  _1121 = log2(max(0.0f, mad(0.9977163f, _1049, mad(-0.0060324497f, _1048, (_1106 * 0.008316148f)))));
  _1122 = _1111 * 0.30103f;
  _1123 = _1116 * 0.30103f;
  _1124 = _1121 * 0.30103f;
  _1126 = (_1111 * 0.2739373f) + 0.7790625f;
  _1128 = (_1116 * 0.2739373f) + 0.7790625f;
  _1130 = (_1121 * 0.2739373f) + 0.7790625f;
  _1137 = select((_1122 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1111 * 1.43712f)) + 1.0f)), _1126);
  _1144 = select((_1123 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1116 * 1.43712f)) + 1.0f)), _1128);
  _1151 = select((_1124 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1121 * 1.43712f)) + 1.0f)), _1130);
  _1155 = 1.0f - saturate(-0.78987026f - (_1111 * 0.9446112f));
  _1159 = 1.0f - saturate(-0.78987026f - (_1116 * 0.9446112f));
  _1163 = 1.0f - saturate(-0.78987026f - (_1121 * 0.9446112f));
  _1179 = max(0.0f, ((((_1155 * _1155) * (3.0f - (_1155 * 2.0f))) * (select((_1122 > -0.57039833f), (1.04f - (1.56f / (exp2((_1111 * 1.013354f) + 1.9201254f) + 1.0f))), _1126) - _1137)) + _1137));
  _1195 = max(0.0f, ((((_1159 * _1159) * (3.0f - (_1159 * 2.0f))) * (select((_1123 > -0.57039833f), (1.04f - (1.56f / (exp2((_1116 * 1.013354f) + 1.9201254f) + 1.0f))), _1128) - _1144)) + _1144));
  _1211 = max(0.0f, ((((_1163 * _1163) * (3.0f - (_1163 * 2.0f))) * (select((_1124 > -0.57039833f), (1.04f - (1.56f / (exp2((_1121 * 1.013354f) + 1.9201254f) + 1.0f))), _1130) - _1151)) + _1151));
  _1217 = ((mad(-0.06537104f, _1211, mad(1.4518155e-06f, _1195, (_1179 * 1.0653747f))) - _1179) * 0.6f) + _1179;
  _1223 = ((mad(-0.2036677f, _1211, mad(1.2036635f, _1195, (_1179 * -2.5716145e-07f))) - _1195) * 0.6f) + _1195;
  _1229 = ((mad(0.99999964f, _1211, mad(2.0954758e-08f, _1195, (_1179 * 1.8626451e-08f))) - _1211) * 0.6f) + _1211;
  _1248 = dot(float3(saturate(saturate(max(0.0f, mad(-0.08325848f, _1229, mad(-0.6217906f, _1223, (_1217 * 1.7050515f)))))), saturate(saturate(max(0.0f, mad(-0.010548528f, _1229, mad(1.1408027f, _1223, (_1217 * -0.13025719f)))))), saturate(saturate(max(0.0f, mad(1.1529719f, _1229, mad(-0.12896876f, _1223, (_1217 * -0.024003278f))))))), float3(0.1f, 0.7f, 0.2f));
  _1249 = _863 + -0.5f;
  _1250 = _867 + -0.5f;
  _1251 = _1248 + -0.5f;
  _1253 = _localToneMappingParams.z * -0.7213475f;
  _1256 = exp2((_1249 * _1249) * _1253);
  _1259 = exp2((_1250 * _1250) * _1253);
  _1262 = exp2((_1251 * _1251) * _1253);
  _1264 = dot(float3(_1256, _1259, _1262), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _1269 = dot(float3(max(_471, 0.0f), max(_476, 0.0f), max(_481, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _1278 = max(dot(float3(((_1256 / _1264) * _863), ((_1259 / _1264) * _867), ((_1262 / _1264) * _1248)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _1269;
  if (!(_1269 > 0.007f)) {
    _1287 = ((((_1269 * _1269) * 20408.16f) * (_1278 + -1.0f)) + 1.0f);
  } else {
    _1287 = _1278;
  }
  _1288 = _1287 * _87;
  _1289 = _1287 * _86;
  _1290 = _1287 * _85;
  _1302 = exp2(log2(max(0.0f, ((max(0.0f, (((_1288 * 1.70505f) - (_1289 * 0.62179f)) - (_1290 * 0.08326f))) * _95) + _offsetParams.x))) * _powerParams.x);
  _1314 = exp2(log2(max(0.0f, ((max(0.0f, (((_1289 * 1.1408f) - (_1288 * 0.13026f)) - (_1290 * 0.01055f))) * _97) + _offsetParams.y))) * _powerParams.y);
  _1326 = exp2(log2(max(0.0f, ((max(0.0f, (((_1288 * -0.024f) - (_1289 * 0.12897f)) + (_1290 * 1.15297f))) * _99) + _offsetParams.z))) * _powerParams.z);
  _1327 = dot(float3(_1302, _1314, _1326), float3(0.212671f, 0.71516f, 0.072169f));
  _1330 = ((_1302 - _1327) * _powerParams.w) + _1327;
  _1334 = (lerp(_1327, _1314, _powerParams.w)) * 3.0f;  // [sem: blended]
  _1338 = (lerp(_1327, _1326, _powerParams.w)) * 3.0f;  // [sem: blended]
  _1341 = mad(-1.7106533e-05f, _1338, mad(0.00040110573f, _1334, (_1330 * 3.0009599f)));
  _1344 = mad(-2.34209e-05f, _1338, mad(0.9997657f, _1334, (_1330 * -6.0908147e-05f)));
  _1347 = mad(1.0005832f, _1338, mad(8.34018e-05f, _1334, (_1330 * 4.855916e-05f)));
  _1350 = mad(0.04736635f, _1347, mad(0.33951214f, _1344, (_1341 * 0.61319155f)));
  _1353 = mad(0.013450007f, _1347, mad(0.91633576f, _1344, (_1341 * 0.07020692f)));
  _1356 = mad(0.8696068f, _1347, mad(0.1095673f, _1344, (_1341 * 0.020618873f)));
  _1357 = dot(float3(_1350, _1353, _1356), float3(0.27222872f, 0.67408174f, 0.053689517f));
  _1359 = (_1350 / _1357) + -1.0f;
  _1361 = (_1353 / _1357) + -1.0f;
  _1363 = (_1356 / _1357) + -1.0f;
  _1372 = (1.0f - exp2(dot(float3(_1359, _1361, _1363), float3(_1359, _1361, _1363)) * -4.0f)) * (1.0f - exp2((_1357 * _1357) * -4.0f));
  _1378 = ((mad(-0.06368284f, _1356, mad(-0.3292913f, _1353, (_1350 * 1.3704128f))) - _1350) * _1372) + _1350;
  _1384 = ((mad(-0.010861567f, _1356, mad(1.0970908f, _1353, (_1350 * -0.08343426f))) - _1353) * _1372) + _1353;
  _1390 = ((mad(1.2036945f, _1356, mad(-0.098625645f, _1353, (_1350 * -0.02579326f))) - _1356) * _1372) + _1356;
  _1396 = ((mad(0.061360642f, _1390, mad(-4.5401976e-09f, _1384, (_1378 * 0.9386394f))) - _1378) * 0.6f) + _1378;
  _1402 = ((mad(0.1692059f, _1390, mad(0.8307942f, _1384, (_1378 * 6.775372e-08f))) - _1384) * 0.6f) + _1384;
  _1406 = (mad(-2.3283064e-10f, _1384, (_1378 * -9.313226e-10f)) * 0.6f) + _1390;
  _1409 = mad(0.16386905f, _1406, mad(0.14067869f, _1402, (_1396 * 0.6954522f)));
  _1412 = mad(0.095534325f, _1406, mad(0.8596711f, _1402, (_1396 * 0.04479458f)));
  _1415 = mad(1.0015007f, _1406, mad(0.00402521f, _1402, (_1396 * -0.005525883f)));
  _1417 = max(max(_1409, _1412), _1415);
  _1424 = (max(_1417, 1e-10f) - max(min(min(_1409, _1412), _1415), 1e-10f)) / max(_1417, 0.01f);
  _1437 = ((_1412 + _1409) + _1415) + (sqrt((((_1415 - _1412) * _1415) + ((_1412 - _1409) * _1412)) + ((_1409 - _1415) * _1409)) * 1.75f);
  _1438 = _1437 * 0.33333334f;
  _1439 = _1424 + -0.4f;
  _1440 = _1439 * 5.0f;
  _1444 = max((1.0f - abs(_1439 * 2.5f)), 0.0f);
  _1455 = ((((float)((int)((int)((int)(uint)((int)(_1440 > 0.0f))) - (int)((int)(uint)((int)(_1440 < 0.0f)))))) * (1.0f - (_1444 * _1444))) + 1.0f) * 0.025f;
  if (!(_1438 <= 0.053333335f)) {
    if (!(_1438 >= 0.16f)) {
      _1464 = (((0.24f / _1437) + -0.5f) * _1455);
    } else {
      _1464 = 0.0f;
    }
  } else {
    _1464 = _1455;
  }
  _1465 = _1464 + 1.0f;
  _1466 = _1465 * _1409;
  _1467 = _1465 * _1412;
  _1468 = _1465 * _1415;
  if (!((_1466 == _1467) && (_1467 == _1468))) {
    _1475 = ((_1466 * 2.0f) - _1467) - _1468;
    _1478 = ((_1412 - _1415) * 1.7320508f) * _1465;
    _1480 = atan(_1478 / _1475);
    _1481 = (_1475 < 0.0f);
    _1482 = (_1475 == 0.0f);
    _1483 = (_1478 >= 0.0f);
    _1484 = (_1478 < 0.0f);
    _1495 = select((_1483 && _1482), 90.0f, select((_1484 && _1482), -90.0f, (select((_1484 && _1481), (_1480 + -3.1415927f), select((_1483 && _1481), (_1480 + 3.1415927f), _1480)) * 57.295776f)));
    if (_1495 < 0.0f) {
      _1500 = (_1495 + 360.0f);
    } else {
      _1500 = _1495;
    }
  } else {
    _1500 = 0.0f;
  }
  _1502 = min(max(_1500, 0.0f), 360.0f);
  if (_1502 < -180.0f) {
    _1511 = (_1502 + 360.0f);
  } else {
    if (_1502 > 180.0f) {
      _1511 = (_1502 + -360.0f);
    } else {
      _1511 = _1502;
    }
  }
  _1515 = saturate(1.0f - abs(_1511 * 0.014814815f));  // [sem: expr_sat]
  _1519 = (_1515 * _1515) * (3.0f - (_1515 * 2.0f));
  _1525 = ((_1519 * _1519) * ((_1424 * 0.18f) * (0.03f - _1466))) + _1466;
  _1530 = log2(max(0.0f, mad(-0.21492857f, _1468, mad(-0.23651075f, _1467, (_1525 * 1.4514393f)))));
  _1535 = log2(max(0.0f, mad(-0.09967592f, _1468, mad(1.1762297f, _1467, (_1525 * -0.07655378f)))));
  _1540 = log2(max(0.0f, mad(0.9977163f, _1468, mad(-0.0060324497f, _1467, (_1525 * 0.008316148f)))));
  _1541 = _1530 * 0.30103f;
  _1542 = _1535 * 0.30103f;
  _1543 = _1540 * 0.30103f;
  _1545 = (_1530 * 0.2739373f) + 0.7790625f;
  _1547 = (_1535 * 0.2739373f) + 0.7790625f;
  _1549 = (_1540 * 0.2739373f) + 0.7790625f;
  _1556 = select((_1541 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1530 * 1.43712f)) + 1.0f)), _1545);
  _1563 = select((_1542 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1535 * 1.43712f)) + 1.0f)), _1547);
  _1570 = select((_1543 < -0.25171694f), (1.1f / (exp2(-1.2016989f - (_1540 * 1.43712f)) + 1.0f)), _1549);
  _1574 = 1.0f - saturate(-0.78987026f - (_1530 * 0.9446112f));
  _1578 = 1.0f - saturate(-0.78987026f - (_1535 * 0.9446112f));
  _1582 = 1.0f - saturate(-0.78987026f - (_1540 * 0.9446112f));
  _1598 = max(0.0f, ((((_1574 * _1574) * (3.0f - (_1574 * 2.0f))) * (select((_1541 > -0.57039833f), (1.04f - (1.56f / (exp2((_1530 * 1.013354f) + 1.9201254f) + 1.0f))), _1545) - _1556)) + _1556));
  _1614 = max(0.0f, ((((_1578 * _1578) * (3.0f - (_1578 * 2.0f))) * (select((_1542 > -0.57039833f), (1.04f - (1.56f / (exp2((_1535 * 1.013354f) + 1.9201254f) + 1.0f))), _1547) - _1563)) + _1563));
  _1630 = max(0.0f, ((((_1582 * _1582) * (3.0f - (_1582 * 2.0f))) * (select((_1543 > -0.57039833f), (1.04f - (1.56f / (exp2((_1540 * 1.013354f) + 1.9201254f) + 1.0f))), _1549) - _1570)) + _1570));
  _1636 = ((mad(-0.06537104f, _1630, mad(1.4518155e-06f, _1614, (_1598 * 1.0653747f))) - _1598) * 0.6f) + _1598;
  _1642 = ((mad(-0.2036677f, _1630, mad(1.2036635f, _1614, (_1598 * -2.5716145e-07f))) - _1614) * 0.6f) + _1614;
  _1648 = ((mad(0.99999964f, _1630, mad(2.0954758e-08f, _1614, (_1598 * 1.8626451e-08f))) - _1630) * 0.6f) + _1630;
  _1652 = 1.0f - abs(_etcParams.w);
  _1653 = saturate(_etcParams.w);  // [sem: expr_sat]
  _1662 = (saturate(max(saturate(max(0.0f, mad(-0.08325848f, _1648, mad(-0.6217906f, _1642, (_1636 * 1.7050515f))))), 0.0f)) * _1652) + _1653;
  _1671 = (saturate(max(saturate(max(0.0f, mad(-0.010548528f, _1648, mad(1.1408027f, _1642, (_1636 * -0.13025719f))))), 0.0f)) * _1652) + _1653;
  _1680 = (saturate(max(saturate(max(0.0f, mad(1.1529719f, _1648, mad(-0.12896876f, _1642, (_1636 * -0.024003278f))))), 0.0f)) * _1652) + _1653;
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
  _1780 = saturate(1.0f - ((_1771 * _postProcessParams.x) * dot(float2(_1772, _1774), float2(_1772, _1774))));  // [sem: expr_sat]
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
  return SV_Target;
}
