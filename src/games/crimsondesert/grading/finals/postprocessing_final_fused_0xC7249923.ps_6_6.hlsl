Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t22, space36);

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
  float _295;
  float _296;
  float _297;
  float _565;
  float _566;
  float _567;
  float _800;
  float _801;
  float _802;
  float _1035;
  float _1036;
  float _1037;
  float _1270;
  float _1271;
  float _1272;
  float _1371;
  float _1372;
  float _1373;
  float _1409;
  float _1410;
  float _1411;
  float _1513;
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
  float _160;
  float _161;
  float _180;
  float _181;
  float _182;
  float _183;
  float _184;
  float _185;
  float _186;
  float _187;
  float _188;
  float _234;
  float _235;
  float _236;
  float _237;
  float _238;
  float _239;
  float _240;
  bool _245;
  float _257;
  float _258;
  float _259;
  float _260;
  float _266;
  float _269;
  float _276;
  float _277;
  float _278;
  float _307;
  float _332;
  float _333;
  float _334;
  float _353;
  float _354;
  float _355;
  float _357;
  float _365;
  float4 _372;
  float4 _377;
  float4 _382;
  float4 _387;
  float _424;
  float _425;
  float _426;
  float _427;
  float _434;
  float _435;
  float _436;
  float _455;
  float _456;
  float _457;
  float _458;
  float _459;
  float _460;
  float _461;
  float _462;
  float _463;
  float _509;
  float _510;
  float _511;
  float _512;
  float _513;
  float _514;
  float _515;
  float _527;
  float _528;
  float _529;
  float _530;
  float _536;
  float _539;
  float _546;
  float _547;
  float _548;
  float _577;
  float _602;
  float _603;
  float _604;
  float _624;
  float _659;
  float _660;
  float _661;
  float _662;
  float _669;
  float _670;
  float _671;
  float _690;
  float _691;
  float _692;
  float _693;
  float _694;
  float _695;
  float _696;
  float _697;
  float _698;
  float _744;
  float _745;
  float _746;
  float _747;
  float _748;
  float _749;
  float _750;
  float _762;
  float _763;
  float _764;
  float _765;
  float _771;
  float _774;
  float _781;
  float _782;
  float _783;
  float _812;
  float _837;
  float _838;
  float _839;
  float _859;
  float _894;
  float _895;
  float _896;
  float _897;
  float _904;
  float _905;
  float _906;
  float _925;
  float _926;
  float _927;
  float _928;
  float _929;
  float _930;
  float _931;
  float _932;
  float _933;
  float _979;
  float _980;
  float _981;
  float _982;
  float _983;
  float _984;
  float _985;
  float _997;
  float _998;
  float _999;
  float _1000;
  float _1006;
  float _1009;
  float _1016;
  float _1017;
  float _1018;
  float _1047;
  float _1072;
  float _1073;
  float _1074;
  float _1094;
  float _1129;
  float _1130;
  float _1131;
  float _1132;
  float _1139;
  float _1140;
  float _1141;
  float _1160;
  float _1161;
  float _1162;
  float _1163;
  float _1164;
  float _1165;
  float _1166;
  float _1167;
  float _1168;
  float _1214;
  float _1215;
  float _1216;
  float _1217;
  float _1218;
  float _1219;
  float _1220;
  float _1232;
  float _1233;
  float _1234;
  float _1235;
  float _1241;
  float _1244;
  float _1251;
  float _1252;
  float _1253;
  float _1282;
  float _1307;
  float _1308;
  float _1309;
  float _1329;
  float _1338;
  float _1345;
  float _1348;
  float _1380;
  float _1384;
  float _1385;
  float _1386;
  float _1387;
  float _1392;
  float _1417;
  float _1421;
  float _1422;
  float _1423;
  float _1424;
  float _1454;
  float _1465;
  float _1466;
  float _1467;
  float _1495;
  float _1498;
  float _1499;
  float _1516;
  float _1517;
  float _1521;
  bool _1530;
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
  _160 = ((_149 - _152) * _powerParams.w) + _152;
  _161 = ((_150 - _152) * _powerParams.w) + _152;
  _180 = min(max(log2(mad(_161, 0.079223745f, mad(_160, 0.0784336f, (_159 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
  _181 = min(max(log2(mad(_161, 0.07916613f, mad(_160, 0.87846863f, (_159 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
  _182 = min(max(log2(mad(_161, 0.879143f, mad(_160, 0.0784336f, (_159 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
  _183 = _180 * 0.060606062f;
  _184 = _181 * 0.060606062f;
  _185 = _182 * 0.060606062f;
  _186 = _183 * _183;
  _187 = _184 * _184;
  _188 = _185 * _185;
  _234 = min(0.0f, (-0.0f - (((_180 * 0.0072181816f) + ((_186 * 0.4298f) + (((_186 * _186) * ((31.96f - (_180 * 2.4327273f)) + (_186 * 15.5f))) - ((_180 * 0.41624245f) * _186)))) + -0.00232f)));
  _235 = min(0.0f, (-0.0f - (((_181 * 0.0072181816f) + ((_187 * 0.4298f) + (((_187 * _187) * ((31.96f - (_181 * 2.4327273f)) + (_187 * 15.5f))) - ((_181 * 0.41624245f) * _187)))) + -0.00232f)));
  _236 = min(0.0f, (-0.0f - (((_182 * 0.0072181816f) + ((_188 * 0.4298f) + (((_188 * _188) * ((31.96f - (_182 * 2.4327273f)) + (_188 * 15.5f))) - ((_182 * 0.41624245f) * _188)))) + -0.00232f)));
  _237 = -0.0f - _234;
  _238 = -0.0f - _235;
  _239 = -0.0f - _236;
  _240 = dot(float3(_237, _238, _239), float3(0.2126f, 0.7152f, 0.0722f));
  _245 = (_nightToneParm == 1);
  if (_245) {
    _257 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
    _258 = -0.79999995f / _257;
    _259 = -1.2f / _257;
    _260 = 0.20000005f / _257;
    _266 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
    _269 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
    _276 = (_258 + 1.4f) + (_269 * (-0.39999998f - _258));
    _277 = (_259 + 1.6f) + (_269 * (-0.6f - _259));
    _278 = (_260 + 0.9f) + (_269 * (0.5f - _260));
    _295 = (lerp(_277, 1.2f, _266));  // [sem: blended]
    _296 = (lerp(_276, 1.0f, _266));  // [sem: blended]
    _297 = (lerp(_278, 1.4f, _266));  // [sem: blended]
  } else {
    _295 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    _296 = 1.0f;  // [sem: blended]
    _297 = 1.4f;  // [sem: blended]
  }
  _307 = 1.0f - _295;
  _332 = ((exp2(log2(((saturate((_234 * _234) * _237) * _307) + _295) * _237) * _296) - _240) * _297) + _240;
  _333 = ((exp2(log2(((saturate((_235 * _235) * _238) * _307) + _295) * _238) * _296) - _240) * _297) + _240;
  _334 = ((exp2(log2(((saturate((_236 * _236) * _239) * _307) + _295) * _239) * _296) - _240) * _297) + _240;
  _353 = saturate(exp2(log2(mad(_334, -0.09902974f, mad(_333, -0.09802088f, (_332 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
  _354 = saturate(exp2(log2(mad(_334, -0.098961174f, mad(_333, 1.1519032f, (_332 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
  _355 = saturate(exp2(log2(mad(_334, 1.1510737f, mad(_333, -0.09804345f, (_332 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
  _357 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_357.x < 1e-07f) || (_357.x == 1.0f))) {
    _365 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _372 = __3__36__0__0__g_sceneColor.Load(int3(_94, ((int)((uint)((uint)(_95)) + (uint)(-1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _377 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_94)) + (uint)(-1))), _95, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _382 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_94)) + (uint)(1))), _95, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _387 = __3__36__0__0__g_sceneColor.Load(int3(_94, ((int)((uint)((uint)(_95)) + (uint)(1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _424 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_372.x * 1.70505f) - (_372.y * 0.62179f)) - (_372.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _425 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_372.y * 1.1408f) - (_372.x * 0.13026f)) - (_372.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _426 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_372.x * -0.024f) - (_372.y * 0.12897f)) + (_372.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _427 = dot(float3(_424, _425, _426), float3(0.212671f, 0.71516f, 0.072169f));
    _434 = ((_424 - _427) * _powerParams.w) + _427;
    _435 = ((_425 - _427) * _powerParams.w) + _427;
    _436 = ((_426 - _427) * _powerParams.w) + _427;
    _455 = min(max(log2(mad(_436, 0.079223745f, mad(_435, 0.0784336f, (_434 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _456 = min(max(log2(mad(_436, 0.07916613f, mad(_435, 0.87846863f, (_434 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _457 = min(max(log2(mad(_436, 0.879143f, mad(_435, 0.0784336f, (_434 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _458 = _455 * 0.060606062f;
    _459 = _456 * 0.060606062f;
    _460 = _457 * 0.060606062f;
    _461 = _458 * _458;
    _462 = _459 * _459;
    _463 = _460 * _460;
    _509 = min(0.0f, (-0.0f - (((_455 * 0.0072181816f) + ((_461 * 0.4298f) + (((_461 * _461) * ((31.96f - (_455 * 2.4327273f)) + (_461 * 15.5f))) - ((_455 * 0.41624245f) * _461)))) + -0.00232f)));
    _510 = min(0.0f, (-0.0f - (((_456 * 0.0072181816f) + ((_462 * 0.4298f) + (((_462 * _462) * ((31.96f - (_456 * 2.4327273f)) + (_462 * 15.5f))) - ((_456 * 0.41624245f) * _462)))) + -0.00232f)));
    _511 = min(0.0f, (-0.0f - (((_457 * 0.0072181816f) + ((_463 * 0.4298f) + (((_463 * _463) * ((31.96f - (_457 * 2.4327273f)) + (_463 * 15.5f))) - ((_457 * 0.41624245f) * _463)))) + -0.00232f)));
    _512 = -0.0f - _509;
    _513 = -0.0f - _510;
    _514 = -0.0f - _511;
    _515 = dot(float3(_512, _513, _514), float3(0.2126f, 0.7152f, 0.0722f));
    if (_245) {
      _527 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _528 = -0.79999995f / _527;
      _529 = -1.2f / _527;
      _530 = 0.20000005f / _527;
      _536 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _539 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _546 = (_528 + 1.4f) + (_539 * (-0.39999998f - _528));
      _547 = (_529 + 1.6f) + (_539 * (-0.6f - _529));
      _548 = (_530 + 0.9f) + (_539 * (0.5f - _530));
      _565 = (lerp(_547, 1.2f, _536));  // [sem: blended]
      _566 = (lerp(_546, 1.0f, _536));  // [sem: blended]
      _567 = (lerp(_548, 1.4f, _536));  // [sem: blended]
    } else {
      _565 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _566 = 1.0f;  // [sem: blended]
      _567 = 1.4f;  // [sem: blended]
    }
    _577 = 1.0f - _565;
    _602 = ((exp2(log2(((saturate((_509 * _509) * _512) * _577) + _565) * _512) * _566) - _515) * _567) + _515;
    _603 = ((exp2(log2(((saturate((_510 * _510) * _513) * _577) + _565) * _513) * _566) - _515) * _567) + _515;
    _604 = ((exp2(log2(((saturate((_511 * _511) * _514) * _577) + _565) * _514) * _566) - _515) * _567) + _515;
    _624 = saturate(exp2(log2(mad(_604, -0.098961174f, mad(_603, 1.1519032f, (_602 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _659 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_377.x * 1.70505f) - (_377.y * 0.62179f)) - (_377.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _660 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_377.y * 1.1408f) - (_377.x * 0.13026f)) - (_377.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _661 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_377.x * -0.024f) - (_377.y * 0.12897f)) + (_377.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _662 = dot(float3(_659, _660, _661), float3(0.212671f, 0.71516f, 0.072169f));
    _669 = ((_659 - _662) * _powerParams.w) + _662;
    _670 = ((_660 - _662) * _powerParams.w) + _662;
    _671 = ((_661 - _662) * _powerParams.w) + _662;
    _690 = min(max(log2(mad(_671, 0.079223745f, mad(_670, 0.0784336f, (_669 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _691 = min(max(log2(mad(_671, 0.07916613f, mad(_670, 0.87846863f, (_669 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _692 = min(max(log2(mad(_671, 0.879143f, mad(_670, 0.0784336f, (_669 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _693 = _690 * 0.060606062f;
    _694 = _691 * 0.060606062f;
    _695 = _692 * 0.060606062f;
    _696 = _693 * _693;
    _697 = _694 * _694;
    _698 = _695 * _695;
    _744 = min(0.0f, (-0.0f - (((_690 * 0.0072181816f) + ((_696 * 0.4298f) + (((_696 * _696) * ((31.96f - (_690 * 2.4327273f)) + (_696 * 15.5f))) - ((_690 * 0.41624245f) * _696)))) + -0.00232f)));
    _745 = min(0.0f, (-0.0f - (((_691 * 0.0072181816f) + ((_697 * 0.4298f) + (((_697 * _697) * ((31.96f - (_691 * 2.4327273f)) + (_697 * 15.5f))) - ((_691 * 0.41624245f) * _697)))) + -0.00232f)));
    _746 = min(0.0f, (-0.0f - (((_692 * 0.0072181816f) + ((_698 * 0.4298f) + (((_698 * _698) * ((31.96f - (_692 * 2.4327273f)) + (_698 * 15.5f))) - ((_692 * 0.41624245f) * _698)))) + -0.00232f)));
    _747 = -0.0f - _744;
    _748 = -0.0f - _745;
    _749 = -0.0f - _746;
    _750 = dot(float3(_747, _748, _749), float3(0.2126f, 0.7152f, 0.0722f));
    if (_245) {
      _762 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _763 = -0.79999995f / _762;
      _764 = -1.2f / _762;
      _765 = 0.20000005f / _762;
      _771 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _774 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _781 = (_763 + 1.4f) + (_774 * (-0.39999998f - _763));
      _782 = (_764 + 1.6f) + (_774 * (-0.6f - _764));
      _783 = (_765 + 0.9f) + (_774 * (0.5f - _765));
      _800 = (lerp(_782, 1.2f, _771));  // [sem: blended]
      _801 = (lerp(_781, 1.0f, _771));  // [sem: blended]
      _802 = (lerp(_783, 1.4f, _771));  // [sem: blended]
    } else {
      _800 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _801 = 1.0f;  // [sem: blended]
      _802 = 1.4f;  // [sem: blended]
    }
    _812 = 1.0f - _800;
    _837 = ((exp2(log2(((saturate((_744 * _744) * _747) * _812) + _800) * _747) * _801) - _750) * _802) + _750;
    _838 = ((exp2(log2(((saturate((_745 * _745) * _748) * _812) + _800) * _748) * _801) - _750) * _802) + _750;
    _839 = ((exp2(log2(((saturate((_746 * _746) * _749) * _812) + _800) * _749) * _801) - _750) * _802) + _750;
    _859 = saturate(exp2(log2(mad(_839, -0.098961174f, mad(_838, 1.1519032f, (_837 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _894 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_382.x * 1.70505f) - (_382.y * 0.62179f)) - (_382.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _895 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_382.y * 1.1408f) - (_382.x * 0.13026f)) - (_382.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _896 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_382.x * -0.024f) - (_382.y * 0.12897f)) + (_382.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _897 = dot(float3(_894, _895, _896), float3(0.212671f, 0.71516f, 0.072169f));
    _904 = ((_894 - _897) * _powerParams.w) + _897;
    _905 = ((_895 - _897) * _powerParams.w) + _897;
    _906 = ((_896 - _897) * _powerParams.w) + _897;
    _925 = min(max(log2(mad(_906, 0.079223745f, mad(_905, 0.0784336f, (_904 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _926 = min(max(log2(mad(_906, 0.07916613f, mad(_905, 0.87846863f, (_904 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _927 = min(max(log2(mad(_906, 0.879143f, mad(_905, 0.0784336f, (_904 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _928 = _925 * 0.060606062f;
    _929 = _926 * 0.060606062f;
    _930 = _927 * 0.060606062f;
    _931 = _928 * _928;
    _932 = _929 * _929;
    _933 = _930 * _930;
    _979 = min(0.0f, (-0.0f - (((_925 * 0.0072181816f) + ((_931 * 0.4298f) + (((_931 * _931) * ((31.96f - (_925 * 2.4327273f)) + (_931 * 15.5f))) - ((_925 * 0.41624245f) * _931)))) + -0.00232f)));
    _980 = min(0.0f, (-0.0f - (((_926 * 0.0072181816f) + ((_932 * 0.4298f) + (((_932 * _932) * ((31.96f - (_926 * 2.4327273f)) + (_932 * 15.5f))) - ((_926 * 0.41624245f) * _932)))) + -0.00232f)));
    _981 = min(0.0f, (-0.0f - (((_927 * 0.0072181816f) + ((_933 * 0.4298f) + (((_933 * _933) * ((31.96f - (_927 * 2.4327273f)) + (_933 * 15.5f))) - ((_927 * 0.41624245f) * _933)))) + -0.00232f)));
    _982 = -0.0f - _979;
    _983 = -0.0f - _980;
    _984 = -0.0f - _981;
    _985 = dot(float3(_982, _983, _984), float3(0.2126f, 0.7152f, 0.0722f));
    if (_245) {
      _997 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _998 = -0.79999995f / _997;
      _999 = -1.2f / _997;
      _1000 = 0.20000005f / _997;
      _1006 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _1009 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _1016 = (_998 + 1.4f) + (_1009 * (-0.39999998f - _998));
      _1017 = (_999 + 1.6f) + (_1009 * (-0.6f - _999));
      _1018 = (_1000 + 0.9f) + (_1009 * (0.5f - _1000));
      _1035 = (lerp(_1018, 1.4f, _1006));  // [sem: blended]
      _1036 = (lerp(_1016, 1.0f, _1006));  // [sem: blended]
      _1037 = (lerp(_1017, 1.2f, _1006));  // [sem: blended]
    } else {
      _1035 = 1.4f;  // [sem: blended]
      _1036 = 1.0f;  // [sem: blended]
      _1037 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _1047 = 1.0f - _1037;
    _1072 = ((exp2(log2(((saturate((_979 * _979) * _982) * _1047) + _1037) * _982) * _1036) - _985) * _1035) + _985;
    _1073 = ((exp2(log2(((saturate((_980 * _980) * _983) * _1047) + _1037) * _983) * _1036) - _985) * _1035) + _985;
    _1074 = ((exp2(log2(((saturate((_981 * _981) * _984) * _1047) + _1037) * _984) * _1036) - _985) * _1035) + _985;
    _1094 = saturate(exp2(log2(mad(_1074, -0.098961174f, mad(_1073, 1.1519032f, (_1072 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _1129 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_387.x * 1.70505f) - (_387.y * 0.62179f)) - (_387.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _1130 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_387.y * 1.1408f) - (_387.x * 0.13026f)) - (_387.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _1131 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_387.x * -0.024f) - (_387.y * 0.12897f)) + (_387.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _1132 = dot(float3(_1129, _1130, _1131), float3(0.212671f, 0.71516f, 0.072169f));
    _1139 = ((_1129 - _1132) * _powerParams.w) + _1132;
    _1140 = ((_1130 - _1132) * _powerParams.w) + _1132;
    _1141 = ((_1131 - _1132) * _powerParams.w) + _1132;
    _1160 = min(max(log2(mad(_1141, 0.079223745f, mad(_1140, 0.0784336f, (_1139 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1161 = min(max(log2(mad(_1141, 0.07916613f, mad(_1140, 0.87846863f, (_1139 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1162 = min(max(log2(mad(_1141, 0.879143f, mad(_1140, 0.0784336f, (_1139 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1163 = _1160 * 0.060606062f;
    _1164 = _1161 * 0.060606062f;
    _1165 = _1162 * 0.060606062f;
    _1166 = _1163 * _1163;
    _1167 = _1164 * _1164;
    _1168 = _1165 * _1165;
    _1214 = min(0.0f, (-0.0f - (((_1160 * 0.0072181816f) + ((_1166 * 0.4298f) + (((_1166 * _1166) * ((31.96f - (_1160 * 2.4327273f)) + (_1166 * 15.5f))) - ((_1160 * 0.41624245f) * _1166)))) + -0.00232f)));
    _1215 = min(0.0f, (-0.0f - (((_1161 * 0.0072181816f) + ((_1167 * 0.4298f) + (((_1167 * _1167) * ((31.96f - (_1161 * 2.4327273f)) + (_1167 * 15.5f))) - ((_1161 * 0.41624245f) * _1167)))) + -0.00232f)));
    _1216 = min(0.0f, (-0.0f - (((_1162 * 0.0072181816f) + ((_1168 * 0.4298f) + (((_1168 * _1168) * ((31.96f - (_1162 * 2.4327273f)) + (_1168 * 15.5f))) - ((_1162 * 0.41624245f) * _1168)))) + -0.00232f)));
    _1217 = -0.0f - _1214;
    _1218 = -0.0f - _1215;
    _1219 = -0.0f - _1216;
    _1220 = dot(float3(_1217, _1218, _1219), float3(0.2126f, 0.7152f, 0.0722f));
    if (_245) {
      _1232 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _1233 = -0.79999995f / _1232;
      _1234 = -1.2f / _1232;
      _1235 = 0.20000005f / _1232;
      _1241 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _1244 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _1251 = (_1233 + 1.4f) + (_1244 * (-0.39999998f - _1233));
      _1252 = (_1234 + 1.6f) + (_1244 * (-0.6f - _1234));
      _1253 = (_1235 + 0.9f) + (_1244 * (0.5f - _1235));
      _1270 = (lerp(_1252, 1.2f, _1241));  // [sem: blended]
      _1271 = (lerp(_1251, 1.0f, _1241));  // [sem: blended]
      _1272 = (lerp(_1253, 1.4f, _1241));  // [sem: blended]
    } else {
      _1270 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _1271 = 1.0f;  // [sem: blended]
      _1272 = 1.4f;  // [sem: blended]
    }
    _1282 = 1.0f - _1270;
    _1307 = ((exp2(log2(((saturate((_1214 * _1214) * _1217) * _1282) + _1270) * _1217) * _1271) - _1220) * _1272) + _1220;
    _1308 = ((exp2(log2(((saturate((_1215 * _1215) * _1218) * _1282) + _1270) * _1218) * _1271) - _1220) * _1272) + _1220;
    _1309 = ((exp2(log2(((saturate((_1216 * _1216) * _1219) * _1282) + _1270) * _1219) * _1271) - _1220) * _1272) + _1220;
    _1329 = saturate(exp2(log2(mad(_1309, -0.098961174f, mad(_1308, 1.1519032f, (_1307 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _1338 = max(max(_354, _624), max(max(_859, _1094), _1329));
    _1345 = sqrt(saturate(min(min(min(_354, _624), min(min(_859, _1094), _1329)), (1.0f - _1338)) * (1.0f / _1338))) * (-1.0f / (((1.0f - _365) * 8.0f) + (_365 * 5.0f)));
    _1348 = 1.0f / ((_1345 * 4.0f) + 1.0f);
    // [sem: expr_sat]
    _1371 = saturate(((_1345 * (((saturate(exp2(log2(mad(_839, -0.09902974f, mad(_838, -0.09802088f, (_837 * 1.196879f)))) * 2.2f)) + saturate(exp2(log2(mad(_604, -0.09902974f, mad(_603, -0.09802088f, (_602 * 1.196879f)))) * 2.2f))) + saturate(exp2(log2(mad(_1074, -0.09902974f, mad(_1073, -0.09802088f, (_1072 * 1.196879f)))) * 2.2f))) + saturate(exp2(log2(mad(_1309, -0.09902974f, mad(_1308, -0.09802088f, (_1307 * 1.196879f)))) * 2.2f)))) + _353) * _1348);
    _1372 = saturate(((_1345 * (((_859 + _624) + _1094) + _1329)) + _354) * _1348);  // [sem: expr_sat]
    // [sem: expr_sat]
    _1373 = saturate(((_1345 * (((saturate(exp2(log2(mad(_839, 1.1510737f, mad(_838, -0.09804345f, (_837 * -0.052971635f)))) * 2.2f)) + saturate(exp2(log2(mad(_604, 1.1510737f, mad(_603, -0.09804345f, (_602 * -0.052971635f)))) * 2.2f))) + saturate(exp2(log2(mad(_1074, 1.1510737f, mad(_1073, -0.09804345f, (_1072 * -0.052971635f)))) * 2.2f))) + saturate(exp2(log2(mad(_1309, 1.1510737f, mad(_1308, -0.09804345f, (_1307 * -0.052971635f)))) * 2.2f)))) + _355) * _1348);
  } else {
    _1371 = _353;  // [sem: expr_sat]
    _1372 = _354;  // [sem: expr_sat]
    _1373 = _355;  // [sem: expr_sat]
  }
  _1380 = 1.0f - abs(_etcParams.w);
  _1384 = saturate(_etcParams.w);  // [sem: expr_sat]
  _1385 = (_1380 * saturate(_1371)) + _1384;
  _1386 = (_1380 * saturate(_1372)) + _1384;
  _1387 = (_1380 * saturate(_1373)) + _1384;
  if (_colorGradingParams.w > 0.0f) {
    _1392 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _1409 = (((max(0.0f, (1.0f - _1385)) - _1385) * _1392) + _1385);
    _1410 = (((max(0.0f, (1.0f - _1386)) - _1386) * _1392) + _1386);
    _1411 = (((max(0.0f, (1.0f - _1387)) - _1387) * _1392) + _1387);
  } else {
    _1409 = _1385;
    _1410 = _1386;
    _1411 = _1387;
  }
  _1417 = _userImageAdjust.y + 1.0f;
  _1421 = _userImageAdjust.x + 0.5f;
  _1422 = ((_1409 + -0.5f) * _1417) + _1421;
  _1423 = ((_1410 + -0.5f) * _1417) + _1421;
  _1424 = ((_1411 + -0.5f) * _1417) + _1421;
  _1454 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _1465 = (TEXCOORD.x * 2.0f) + -1.0f;
  _1466 = TEXCOORD.y * 2.0f;
  _1467 = 1.0f - _1466;
  _1495 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _1467, ((_projToPrevProj[3].x) * _1465))) + (_projToPrevProj[3].w);
  _1498 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _1467, ((_projToPrevProj[0].x) * _1465))) + (_projToPrevProj[0].w)) / _1495) - _1465;
  _1499 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _1467, ((_projToPrevProj[1].x) * _1465))) + (_projToPrevProj[1].w)) / _1495) - _1467;
  if (_localToneMappingParams.w > 0.0f) {
    _1513 = saturate(1.0f - (sqrt((_1499 * _1499) + (_1498 * _1498)) * 2.0f));  // [sem: expr_sat]
  } else {
    _1513 = 1.0f;  // [sem: expr_sat]
  }
  _1516 = abs(_1465);
  _1517 = abs(_1466 + -1.0f);
  _1521 = saturate(1.0f - ((_1513 * _postProcessParams.x) * dot(float2(_1516, _1517), float2(_1516, _1517))));  // [sem: expr_sat]
  _1530 = (!(SV_Position.y < _viewDir.w)) && (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w)));
  SV_Target.x = select(_1530, (_1521 * exp2(log2(saturate(mad(_colorBlind0.z, _1424, mad(_colorBlind0.y, _1423, (_colorBlind0.x * _1422))))) * _1454)), 0.0f);
  SV_Target.y = select(_1530, (_1521 * exp2(log2(saturate(mad(_colorBlind1.z, _1424, mad(_colorBlind1.y, _1423, (_colorBlind1.x * _1422))))) * _1454)), 0.0f);
  SV_Target.z = select(_1530, (_1521 * exp2(log2(saturate(mad(_colorBlind2.z, _1424, mad(_colorBlind2.y, _1423, (_colorBlind2.x * _1422))))) * _1454)), 0.0f);
  SV_Target.w = _18.w;
  return SV_Target;
}
