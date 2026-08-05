Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

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
  float _295;
  float _296;
  float _297;
  float _574;
  float _575;
  float _576;
  float _795;
  float _796;
  float _797;
  float _1016;
  float _1017;
  float _1018;
  float _1237;
  float _1238;
  float _1239;
  float _1385;
  float _1386;
  float _1387;
  float _1423;
  float _1424;
  float _1425;
  float _1494;
  bool _1514;
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
  float _158;
  float _161;
  float _168;
  float _175;
  float _182;
  float _183;
  float _184;
  float _185;
  float _186;
  float _187;
  float _188;
  float _204;
  float _220;
  float _236;
  float _237;
  float _238;
  float _239;
  float _240;
  bool _243;
  float _257;
  float _258;
  float _259;
  float _260;
  float _263;
  float _266;
  float _270;
  float _274;
  float _278;
  float _298;
  float _310;
  float _322;
  float _334;
  float _341;
  float _348;
  float _355;
  float _358;
  float _367;
  float4 _370;
  float4 _375;
  float4 _380;
  float4 _385;
  float _404;
  float _418;
  float _432;
  float _433;
  float _437;
  float _440;
  float _443;
  float _450;
  float _457;
  float _464;
  float _465;
  float _466;
  float _467;
  float _468;
  float _469;
  float _470;
  float _486;
  float _502;
  float _518;
  float _519;
  float _520;
  float _521;
  float _522;
  float _536;
  float _537;
  float _538;
  float _539;
  float _542;
  float _545;
  float _549;
  float _553;
  float _557;
  float _577;
  float _589;
  float _601;
  float _613;
  float _620;
  float _632;
  float _644;
  float _656;
  float _657;
  float _660;
  float _663;
  float _666;
  float _673;
  float _680;
  float _687;
  float _688;
  float _689;
  float _690;
  float _691;
  float _692;
  float _693;
  float _709;
  float _725;
  float _741;
  float _742;
  float _743;
  float _744;
  float _745;
  float _757;
  float _758;
  float _759;
  float _760;
  float _763;
  float _766;
  float _770;
  float _774;
  float _778;
  float _798;
  float _810;
  float _822;
  float _834;
  float _841;
  float _853;
  float _865;
  float _877;
  float _878;
  float _881;
  float _884;
  float _887;
  float _894;
  float _901;
  float _908;
  float _909;
  float _910;
  float _911;
  float _912;
  float _913;
  float _914;
  float _930;
  float _946;
  float _962;
  float _963;
  float _964;
  float _965;
  float _966;
  float _978;
  float _979;
  float _980;
  float _981;
  float _984;
  float _987;
  float _991;
  float _995;
  float _999;
  float _1019;
  float _1031;
  float _1043;
  float _1055;
  float _1062;
  float _1074;
  float _1086;
  float _1098;
  float _1099;
  float _1102;
  float _1105;
  float _1108;
  float _1115;
  float _1122;
  float _1129;
  float _1130;
  float _1131;
  float _1132;
  float _1133;
  float _1134;
  float _1135;
  float _1151;
  float _1167;
  float _1183;
  float _1184;
  float _1185;
  float _1186;
  float _1187;
  float _1199;
  float _1200;
  float _1201;
  float _1202;
  float _1205;
  float _1208;
  float _1212;
  float _1216;
  float _1220;
  float _1240;
  float _1252;
  float _1264;
  float _1276;
  float _1283;
  float _1287;
  float _1303;
  float _1306;
  float _1391;
  float _1392;
  float _1395;
  float _1398;
  float _1401;
  float _1406;
  float _1428;
  float _1430;
  float _1433;
  float _1436;
  float _1439;
  float _1445;
  float _1447;
  float _1448;
  float _1449;
  float _1461;
  float _1471;
  float _1481;
  float _1495;
  float _1497;
  float _1504;
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
  _158 = ((_136 - _151) * _powerParams.w) + _151;
  _161 = ((_150 - _151) * _powerParams.w) + _151;
  _168 = min(max(log2(mad(_161, 0.079223745f, mad(_158, 0.0784336f, (_155 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
  _175 = min(max(log2(mad(_161, 0.07916613f, mad(_158, 0.87846863f, (_155 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
  _182 = min(max(log2(mad(_161, 0.879143f, mad(_158, 0.0784336f, (_155 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
  _183 = _168 * 0.060606062f;
  _184 = _175 * 0.060606062f;
  _185 = _182 * 0.060606062f;
  _186 = _183 * _183;
  _187 = _184 * _184;
  _188 = _185 * _185;
  _204 = min(0.0f, (-0.0f - (((_168 * 0.0072181816f) + ((_186 * 0.4298f) + (((_186 * _186) * ((31.96f - (_168 * 2.4327273f)) + (_186 * 15.5f))) - ((_168 * 0.41624245f) * _186)))) + -0.00232f)));
  _220 = min(0.0f, (-0.0f - (((_175 * 0.0072181816f) + ((_187 * 0.4298f) + (((_187 * _187) * ((31.96f - (_175 * 2.4327273f)) + (_187 * 15.5f))) - ((_175 * 0.41624245f) * _187)))) + -0.00232f)));
  _236 = min(0.0f, (-0.0f - (((_182 * 0.0072181816f) + ((_188 * 0.4298f) + (((_188 * _188) * ((31.96f - (_182 * 2.4327273f)) + (_188 * 15.5f))) - ((_182 * 0.41624245f) * _188)))) + -0.00232f)));
  _237 = -0.0f - _204;
  _238 = -0.0f - _220;
  _239 = -0.0f - _236;
  _240 = dot(float3(_237, _238, _239), float3(0.2126f, 0.7152f, 0.0722f));
  _243 = (_nightToneParm == 1);
  if (_243) {
    _257 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
    _258 = -0.79999995f / _257;
    _259 = -1.2f / _257;
    _260 = 0.20000005f / _257;
    _263 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
    _266 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
    _270 = (_258 + 1.4f) + (_266 * (-0.39999998f - _258));
    _274 = (_259 + 1.6f) + (_266 * (-0.6f - _259));
    _278 = (_260 + 0.9f) + (_266 * (0.5f - _260));
    _295 = (lerp(_278, 1.4f, _263));  // [sem: blended]
    _296 = (lerp(_270, 1.0f, _263));  // [sem: blended]
    _297 = (lerp(_274, 1.2f, _263));  // [sem: blended]
  } else {
    _295 = 1.4f;  // [sem: blended]
    _296 = 1.0f;  // [sem: blended]
    _297 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
  }
  _298 = 1.0f - _297;
  _310 = ((exp2(log2(((saturate((_204 * _204) * _237) * _298) + _297) * _237) * _296) - _240) * _295) + _240;
  _322 = ((exp2(log2(((saturate((_220 * _220) * _238) * _298) + _297) * _238) * _296) - _240) * _295) + _240;
  _334 = ((exp2(log2(((saturate((_236 * _236) * _239) * _298) + _297) * _239) * _296) - _240) * _295) + _240;
  _341 = saturate(exp2(log2(mad(_334, -0.09902974f, mad(_322, -0.09802088f, (_310 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
  _348 = saturate(exp2(log2(mad(_334, -0.098961174f, mad(_322, 1.1519032f, (_310 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
  _355 = saturate(exp2(log2(mad(_334, 1.1510737f, mad(_322, -0.09804345f, (_310 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
  _358 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_358.x < 1e-07f) || (_358.x == 1.0f))) {
    _367 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _370 = __3__36__0__0__g_sceneColor.Load(int3(_92, ((int)((uint)((uint)(_95)) + (uint)(-1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _375 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_92)) + (uint)(-1))), _95, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _380 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_92)) + (uint)(1))), _95, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _385 = __3__36__0__0__g_sceneColor.Load(int3(_92, ((int)((uint)((uint)(_95)) + (uint)(1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _404 = exp2(_powerParams.x * log2(max(0.0f, (_offsetParams.x + (max(0.0f, (((_370.x * 1.70505f) - (_370.y * 0.62179f)) - (_370.z * 0.08326f))) * _102)))));
    _418 = exp2(log2(max(0.0f, ((max(0.0f, (((_370.y * 1.1408f) - (_370.x * 0.13026f)) - (_370.z * 0.01055f))) * _104) + _offsetParams.y))) * _powerParams.y);
    _432 = exp2(log2(max(0.0f, ((max(0.0f, (((_370.x * -0.024f) - (_370.y * 0.12897f)) + (_370.z * 1.15297f))) * _106) + _offsetParams.z))) * _powerParams.z);
    _433 = dot(float3(_404, _418, _432), float3(0.212671f, 0.71516f, 0.072169f));
    _437 = ((_404 - _433) * _powerParams.w) + _433;
    _440 = ((_418 - _433) * _powerParams.w) + _433;
    _443 = ((_432 - _433) * _powerParams.w) + _433;
    _450 = min(max(log2(mad(_443, 0.079223745f, mad(_440, 0.0784336f, (_437 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _457 = min(max(log2(mad(_443, 0.07916613f, mad(_440, 0.87846863f, (_437 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _464 = min(max(log2(mad(_443, 0.879143f, mad(_440, 0.0784336f, (_437 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _465 = _450 * 0.060606062f;
    _466 = _457 * 0.060606062f;
    _467 = _464 * 0.060606062f;
    _468 = _465 * _465;
    _469 = _466 * _466;
    _470 = _467 * _467;
    _486 = min(0.0f, (-0.0f - (((_450 * 0.0072181816f) + ((_468 * 0.4298f) + (((_468 * _468) * ((31.96f - (_450 * 2.4327273f)) + (_468 * 15.5f))) - ((_450 * 0.41624245f) * _468)))) + -0.00232f)));
    _502 = min(0.0f, (-0.0f - (((_457 * 0.0072181816f) + ((_469 * 0.4298f) + (((_469 * _469) * ((31.96f - (_457 * 2.4327273f)) + (_469 * 15.5f))) - ((_457 * 0.41624245f) * _469)))) + -0.00232f)));
    _518 = min(0.0f, (-0.0f - (((_464 * 0.0072181816f) + ((_470 * 0.4298f) + (((_470 * _470) * ((31.96f - (_464 * 2.4327273f)) + (_470 * 15.5f))) - ((_464 * 0.41624245f) * _470)))) + -0.00232f)));
    _519 = -0.0f - _486;
    _520 = -0.0f - _502;
    _521 = -0.0f - _518;
    _522 = dot(float3(_519, _520, _521), float3(0.2126f, 0.7152f, 0.0722f));
    if (_243) {
      _536 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _537 = -0.79999995f / _536;
      _538 = -1.2f / _536;
      _539 = 0.20000005f / _536;
      _542 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _545 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _549 = (_537 + 1.4f) + (_545 * (-0.39999998f - _537));
      _553 = (_538 + 1.6f) + (_545 * (-0.6f - _538));
      _557 = (_539 + 0.9f) + (_545 * (0.5f - _539));
      _574 = (lerp(_557, 1.4f, _542));  // [sem: blended]
      _575 = (lerp(_549, 1.0f, _542));  // [sem: blended]
      _576 = (lerp(_553, 1.2f, _542));  // [sem: blended]
    } else {
      _574 = 1.4f;  // [sem: blended]
      _575 = 1.0f;  // [sem: blended]
      _576 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _577 = 1.0f - _576;
    _589 = ((exp2(log2(((saturate((_486 * _486) * _519) * _577) + _576) * _519) * _575) - _522) * _574) + _522;
    _601 = ((exp2(log2(((saturate((_502 * _502) * _520) * _577) + _576) * _520) * _575) - _522) * _574) + _522;
    _613 = ((exp2(log2(((saturate((_518 * _518) * _521) * _577) + _576) * _521) * _575) - _522) * _574) + _522;
    _620 = saturate(exp2(log2(mad(_613, -0.098961174f, mad(_601, 1.1519032f, (_589 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _632 = exp2(log2(max(0.0f, ((max(0.0f, (((_375.x * 1.70505f) - (_375.y * 0.62179f)) - (_375.z * 0.08326f))) * _102) + _offsetParams.x))) * _powerParams.x);
    _644 = exp2(log2(max(0.0f, ((max(0.0f, (((_375.y * 1.1408f) - (_375.x * 0.13026f)) - (_375.z * 0.01055f))) * _104) + _offsetParams.y))) * _powerParams.y);
    _656 = exp2(log2(max(0.0f, ((max(0.0f, (((_375.x * -0.024f) - (_375.y * 0.12897f)) + (_375.z * 1.15297f))) * _106) + _offsetParams.z))) * _powerParams.z);
    _657 = dot(float3(_632, _644, _656), float3(0.212671f, 0.71516f, 0.072169f));
    _660 = ((_632 - _657) * _powerParams.w) + _657;
    _663 = ((_644 - _657) * _powerParams.w) + _657;
    _666 = ((_656 - _657) * _powerParams.w) + _657;
    _673 = min(max(log2(mad(_666, 0.079223745f, mad(_663, 0.0784336f, (_660 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _680 = min(max(log2(mad(_666, 0.07916613f, mad(_663, 0.87846863f, (_660 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _687 = min(max(log2(mad(_666, 0.879143f, mad(_663, 0.0784336f, (_660 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _688 = _673 * 0.060606062f;
    _689 = _680 * 0.060606062f;
    _690 = _687 * 0.060606062f;
    _691 = _688 * _688;
    _692 = _689 * _689;
    _693 = _690 * _690;
    _709 = min(0.0f, (-0.0f - (((_673 * 0.0072181816f) + ((_691 * 0.4298f) + (((_691 * _691) * ((31.96f - (_673 * 2.4327273f)) + (_691 * 15.5f))) - ((_673 * 0.41624245f) * _691)))) + -0.00232f)));
    _725 = min(0.0f, (-0.0f - (((_680 * 0.0072181816f) + ((_692 * 0.4298f) + (((_692 * _692) * ((31.96f - (_680 * 2.4327273f)) + (_692 * 15.5f))) - ((_680 * 0.41624245f) * _692)))) + -0.00232f)));
    _741 = min(0.0f, (-0.0f - (((_687 * 0.0072181816f) + ((_693 * 0.4298f) + (((_693 * _693) * ((31.96f - (_687 * 2.4327273f)) + (_693 * 15.5f))) - ((_687 * 0.41624245f) * _693)))) + -0.00232f)));
    _742 = -0.0f - _709;
    _743 = -0.0f - _725;
    _744 = -0.0f - _741;
    _745 = dot(float3(_742, _743, _744), float3(0.2126f, 0.7152f, 0.0722f));
    if (_243) {
      _757 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _758 = -0.79999995f / _757;
      _759 = -1.2f / _757;
      _760 = 0.20000005f / _757;
      _763 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _766 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _770 = (_758 + 1.4f) + (_766 * (-0.39999998f - _758));
      _774 = (_759 + 1.6f) + (_766 * (-0.6f - _759));
      _778 = (_760 + 0.9f) + (_766 * (0.5f - _760));
      _795 = (lerp(_778, 1.4f, _763));  // [sem: blended]
      _796 = (lerp(_770, 1.0f, _763));  // [sem: blended]
      _797 = (lerp(_774, 1.2f, _763));  // [sem: blended]
    } else {
      _795 = 1.4f;  // [sem: blended]
      _796 = 1.0f;  // [sem: blended]
      _797 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _798 = 1.0f - _797;
    _810 = ((exp2(log2(((saturate((_709 * _709) * _742) * _798) + _797) * _742) * _796) - _745) * _795) + _745;
    _822 = ((exp2(log2(((saturate((_725 * _725) * _743) * _798) + _797) * _743) * _796) - _745) * _795) + _745;
    _834 = ((exp2(log2(((saturate((_741 * _741) * _744) * _798) + _797) * _744) * _796) - _745) * _795) + _745;
    _841 = saturate(exp2(log2(mad(_834, -0.098961174f, mad(_822, 1.1519032f, (_810 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _853 = exp2(log2(max(0.0f, ((max(0.0f, (((_380.x * 1.70505f) - (_380.y * 0.62179f)) - (_380.z * 0.08326f))) * _102) + _offsetParams.x))) * _powerParams.x);
    _865 = exp2(log2(max(0.0f, ((max(0.0f, (((_380.y * 1.1408f) - (_380.x * 0.13026f)) - (_380.z * 0.01055f))) * _104) + _offsetParams.y))) * _powerParams.y);
    _877 = exp2(log2(max(0.0f, ((max(0.0f, (((_380.x * -0.024f) - (_380.y * 0.12897f)) + (_380.z * 1.15297f))) * _106) + _offsetParams.z))) * _powerParams.z);
    _878 = dot(float3(_853, _865, _877), float3(0.212671f, 0.71516f, 0.072169f));
    _881 = ((_853 - _878) * _powerParams.w) + _878;
    _884 = ((_865 - _878) * _powerParams.w) + _878;
    _887 = ((_877 - _878) * _powerParams.w) + _878;
    _894 = min(max(log2(mad(_887, 0.079223745f, mad(_884, 0.0784336f, (_881 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _901 = min(max(log2(mad(_887, 0.07916613f, mad(_884, 0.87846863f, (_881 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _908 = min(max(log2(mad(_887, 0.879143f, mad(_884, 0.0784336f, (_881 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _909 = _894 * 0.060606062f;
    _910 = _901 * 0.060606062f;
    _911 = _908 * 0.060606062f;
    _912 = _909 * _909;
    _913 = _910 * _910;
    _914 = _911 * _911;
    _930 = min(0.0f, (-0.0f - (((_894 * 0.0072181816f) + ((_912 * 0.4298f) + (((_912 * _912) * ((31.96f - (_894 * 2.4327273f)) + (_912 * 15.5f))) - ((_894 * 0.41624245f) * _912)))) + -0.00232f)));
    _946 = min(0.0f, (-0.0f - (((_901 * 0.0072181816f) + ((_913 * 0.4298f) + (((_913 * _913) * ((31.96f - (_901 * 2.4327273f)) + (_913 * 15.5f))) - ((_901 * 0.41624245f) * _913)))) + -0.00232f)));
    _962 = min(0.0f, (-0.0f - (((_908 * 0.0072181816f) + ((_914 * 0.4298f) + (((_914 * _914) * ((31.96f - (_908 * 2.4327273f)) + (_914 * 15.5f))) - ((_908 * 0.41624245f) * _914)))) + -0.00232f)));
    _963 = -0.0f - _930;
    _964 = -0.0f - _946;
    _965 = -0.0f - _962;
    _966 = dot(float3(_963, _964, _965), float3(0.2126f, 0.7152f, 0.0722f));
    if (_243) {
      _978 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _979 = -0.79999995f / _978;
      _980 = -1.2f / _978;
      _981 = 0.20000005f / _978;
      _984 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _987 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _991 = (_979 + 1.4f) + (_987 * (-0.39999998f - _979));
      _995 = (_980 + 1.6f) + (_987 * (-0.6f - _980));
      _999 = (_981 + 0.9f) + (_987 * (0.5f - _981));
      _1016 = (lerp(_995, 1.2f, _984));  // [sem: blended]
      _1017 = (lerp(_991, 1.0f, _984));  // [sem: blended]
      _1018 = (lerp(_999, 1.4f, _984));  // [sem: blended]
    } else {
      _1016 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
      _1017 = 1.0f;  // [sem: blended]
      _1018 = 1.4f;  // [sem: blended]
    }
    _1019 = 1.0f - _1016;
    _1031 = ((exp2(log2(((saturate((_930 * _930) * _963) * _1019) + _1016) * _963) * _1017) - _966) * _1018) + _966;
    _1043 = ((exp2(log2(((saturate((_946 * _946) * _964) * _1019) + _1016) * _964) * _1017) - _966) * _1018) + _966;
    _1055 = ((exp2(log2(((saturate((_962 * _962) * _965) * _1019) + _1016) * _965) * _1017) - _966) * _1018) + _966;
    _1062 = saturate(exp2(log2(mad(_1055, -0.098961174f, mad(_1043, 1.1519032f, (_1031 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _1074 = exp2(log2(max(0.0f, ((max(0.0f, (((_385.x * 1.70505f) - (_385.y * 0.62179f)) - (_385.z * 0.08326f))) * _102) + _offsetParams.x))) * _powerParams.x);
    _1086 = exp2(log2(max(0.0f, ((max(0.0f, (((_385.y * 1.1408f) - (_385.x * 0.13026f)) - (_385.z * 0.01055f))) * _104) + _offsetParams.y))) * _powerParams.y);
    _1098 = exp2(log2(max(0.0f, ((max(0.0f, (((_385.x * -0.024f) - (_385.y * 0.12897f)) + (_385.z * 1.15297f))) * _106) + _offsetParams.z))) * _powerParams.z);
    _1099 = dot(float3(_1074, _1086, _1098), float3(0.212671f, 0.71516f, 0.072169f));
    _1102 = ((_1074 - _1099) * _powerParams.w) + _1099;
    _1105 = ((_1086 - _1099) * _powerParams.w) + _1099;
    _1108 = ((_1098 - _1099) * _powerParams.w) + _1099;
    _1115 = min(max(log2(mad(_1108, 0.079223745f, mad(_1105, 0.0784336f, (_1102 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1122 = min(max(log2(mad(_1108, 0.07916613f, mad(_1105, 0.87846863f, (_1102 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1129 = min(max(log2(mad(_1108, 0.879143f, mad(_1105, 0.0784336f, (_1102 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
    _1130 = _1115 * 0.060606062f;
    _1131 = _1122 * 0.060606062f;
    _1132 = _1129 * 0.060606062f;
    _1133 = _1130 * _1130;
    _1134 = _1131 * _1131;
    _1135 = _1132 * _1132;
    _1151 = min(0.0f, (-0.0f - (((_1115 * 0.0072181816f) + ((_1133 * 0.4298f) + (((_1133 * _1133) * ((31.96f - (_1115 * 2.4327273f)) + (_1133 * 15.5f))) - ((_1115 * 0.41624245f) * _1133)))) + -0.00232f)));
    _1167 = min(0.0f, (-0.0f - (((_1122 * 0.0072181816f) + ((_1134 * 0.4298f) + (((_1134 * _1134) * ((31.96f - (_1122 * 2.4327273f)) + (_1134 * 15.5f))) - ((_1122 * 0.41624245f) * _1134)))) + -0.00232f)));
    _1183 = min(0.0f, (-0.0f - (((_1129 * 0.0072181816f) + ((_1135 * 0.4298f) + (((_1135 * _1135) * ((31.96f - (_1129 * 2.4327273f)) + (_1135 * 15.5f))) - ((_1129 * 0.41624245f) * _1135)))) + -0.00232f)));
    _1184 = -0.0f - _1151;
    _1185 = -0.0f - _1167;
    _1186 = -0.0f - _1183;
    _1187 = dot(float3(_1184, _1185, _1186), float3(0.2126f, 0.7152f, 0.0722f));
    if (_243) {
      _1199 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
      _1200 = -0.79999995f / _1199;
      _1201 = -1.2f / _1199;
      _1202 = 0.20000005f / _1199;
      _1205 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
      _1208 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
      _1212 = (_1200 + 1.4f) + (_1208 * (-0.39999998f - _1200));
      _1216 = (_1201 + 1.6f) + (_1208 * (-0.6f - _1201));
      _1220 = (_1202 + 0.9f) + (_1208 * (0.5f - _1202));
      _1237 = (lerp(_1220, 1.4f, _1205));  // [sem: blended]
      _1238 = (lerp(_1212, 1.0f, _1205));  // [sem: blended]
      _1239 = (lerp(_1216, 1.2f, _1205));  // [sem: blended]
    } else {
      _1237 = 1.4f;  // [sem: blended]
      _1238 = 1.0f;  // [sem: blended]
      _1239 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    }
    _1240 = 1.0f - _1239;
    _1252 = ((exp2(log2(((saturate((_1151 * _1151) * _1184) * _1240) + _1239) * _1184) * _1238) - _1187) * _1237) + _1187;
    _1264 = ((exp2(log2(((saturate((_1167 * _1167) * _1185) * _1240) + _1239) * _1185) * _1238) - _1187) * _1237) + _1187;
    _1276 = ((exp2(log2(((saturate((_1183 * _1183) * _1186) * _1240) + _1239) * _1186) * _1238) - _1187) * _1237) + _1187;
    _1283 = saturate(exp2(log2(mad(_1276, -0.098961174f, mad(_1264, 1.1519032f, (_1252 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
    _1287 = max(max(_348, _620), max(max(_841, _1062), _1283));
    _1303 = (-1.0f / (((1.0f - _367) * 8.0f) + (_367 * 5.0f))) * sqrt(saturate((1.0f / _1287) * min(min(min(_348, _620), min(min(_841, _1062), _1283)), (1.0f - _1287))));
    _1306 = 1.0f / ((_1303 * 4.0f) + 1.0f);
    // [sem: expr_sat]
    _1385 = saturate((((((saturate(exp2(log2(mad(_613, 1.1510737f, mad(_601, -0.09804345f, (_589 * -0.052971635f)))) * 2.2f)) + saturate(exp2(log2(mad(_834, 1.1510737f, mad(_822, -0.09804345f, (_810 * -0.052971635f)))) * 2.2f))) + saturate(exp2(log2(mad(_1055, 1.1510737f, mad(_1043, -0.09804345f, (_1031 * -0.052971635f)))) * 2.2f))) + saturate(exp2(log2(mad(_1276, 1.1510737f, mad(_1264, -0.09804345f, (_1252 * -0.052971635f)))) * 2.2f))) * _1303) + _355) * _1306);
    _1386 = saturate(((_1303 * (((_841 + _620) + _1062) + _1283)) + _348) * _1306);  // [sem: expr_sat]
    // [sem: expr_sat]
    _1387 = saturate((((((saturate(exp2(log2(mad(_613, -0.09902974f, mad(_601, -0.09802088f, (_589 * 1.196879f)))) * 2.2f)) + saturate(exp2(log2(mad(_834, -0.09902974f, mad(_822, -0.09802088f, (_810 * 1.196879f)))) * 2.2f))) + saturate(exp2(log2(mad(_1055, -0.09902974f, mad(_1043, -0.09802088f, (_1031 * 1.196879f)))) * 2.2f))) + saturate(exp2(log2(mad(_1276, -0.09902974f, mad(_1264, -0.09802088f, (_1252 * 1.196879f)))) * 2.2f))) * _1303) + _341) * _1306);
  } else {
    _1385 = _355;  // [sem: expr_sat]
    _1386 = _348;  // [sem: expr_sat]
    _1387 = _341;  // [sem: expr_sat]
  }
  _1391 = 1.0f - abs(_etcParams.w);
  _1392 = saturate(_etcParams.w);  // [sem: expr_sat]
  _1395 = (saturate(_1387) * _1391) + _1392;
  _1398 = (saturate(_1386) * _1391) + _1392;
  _1401 = (saturate(_1385) * _1391) + _1392;
  if (_colorGradingParams.w > 0.0f) {
    _1406 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _1423 = (((max(0.0f, (1.0f - _1395)) - _1395) * _1406) + _1395);
    _1424 = (((max(0.0f, (1.0f - _1398)) - _1398) * _1406) + _1398);
    _1425 = (((max(0.0f, (1.0f - _1401)) - _1401) * _1406) + _1401);
  } else {
    _1423 = _1395;
    _1424 = _1398;
    _1425 = _1401;
  }
  _1428 = _userImageAdjust.y + 1.0f;
  _1430 = _userImageAdjust.x + 0.5f;
  _1433 = (_1428 * (_1423 + -0.5f)) + _1430;
  _1436 = (_1428 * (_1424 + -0.5f)) + _1430;
  _1439 = (_1428 * (_1425 + -0.5f)) + _1430;
  _1445 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _1447 = (TEXCOORD.x * 2.0f) + -1.0f;
  _1448 = TEXCOORD.y * 2.0f;
  _1449 = 1.0f - _1448;
  _1461 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _1449, ((_projToPrevProj[3].x) * _1447)));
  _1471 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _1449, ((_projToPrevProj[0].x) * _1447))) + (_projToPrevProj[0].w)) / _1461) - _1447;
  _1481 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _1449, ((_projToPrevProj[1].x) * _1447))) + (_projToPrevProj[1].w)) / _1461) - _1449;
  if (_localToneMappingParams.w > 0.0f) {
    _1494 = saturate(1.0f - (sqrt((_1481 * _1481) + (_1471 * _1471)) * 2.0f));  // [sem: expr_sat]
  } else {
    _1494 = 1.0f;  // [sem: expr_sat]
  }
  _1495 = abs(_1447);
  _1497 = abs(_1448 + -1.0f);
  _1504 = saturate(1.0f - ((_postProcessParams.x * _1494) * dot(float2(_1495, _1497), float2(_1495, _1497))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    _1514 = (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w)));
  } else {
    _1514 = false;
  }
  SV_Target.x = select(_1514, (exp2(log2(saturate(mad(_colorBlind0.z, _1439, mad(_colorBlind0.y, _1436, (_colorBlind0.x * _1433))))) * _1445) * _1504), 0.0f);
  SV_Target.y = select(_1514, (exp2(log2(saturate(mad(_colorBlind1.z, _1439, mad(_colorBlind1.y, _1436, (_colorBlind1.x * _1433))))) * _1445) * _1504), 0.0f);
  SV_Target.z = select(_1514, (exp2(log2(saturate(mad(_colorBlind2.z, _1439, mad(_colorBlind2.y, _1436, (_colorBlind2.x * _1433))))) * _1445) * _1504), 0.0f);
  SV_Target.w = _18.w;
  return SV_Target;
}
