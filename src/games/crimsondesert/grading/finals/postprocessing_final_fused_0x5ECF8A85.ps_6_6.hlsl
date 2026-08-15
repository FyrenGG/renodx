Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

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
  float4 _17;
  float _40;
  float _41;
  float _85;
  float _86;
  float _87;
  float _288;
  float _289;
  float _290;
  float _528;
  float _529;
  float _530;
  float _775;
  float _776;
  float _777;
  float _878;
  float _1056;
  float _1057;
  float _1058;
  float _1155;
  float _1156;
  float _1157;
  float _1258;
  float _1280;
  float _1281;
  float _1282;
  float _51;
  float _52;
  float _56;
  float _61;
  float _65;
  float _70;
  float _74;
  float _80;
  float _93;
  float _123;
  float _125;
  float _127;
  float _141;
  float _142;
  float _143;
  float _145;
  float _152;
  float _153;
  float _154;
  float _173;
  float _174;
  float _175;
  float _176;
  float _177;
  float _178;
  float _179;
  float _180;
  float _181;
  float _227;
  float _228;
  float _229;
  float _230;
  float _231;
  float _232;
  float _233;
  bool _238;
  float _250;
  float _251;
  float _252;
  float _253;
  float _259;
  float _262;
  float _269;
  float _270;
  float _271;
  float _300;
  float _325;
  float _326;
  float _327;
  float _346;
  float _347;
  float _348;
  float _351;
  float _352;
  float _353;
  float _387;
  float _388;
  float _389;
  float _390;
  float _397;
  float _398;
  float _399;
  float _418;
  float _419;
  float _420;
  float _421;
  float _422;
  float _423;
  float _424;
  float _425;
  float _426;
  float _472;
  float _473;
  float _474;
  float _475;
  float _476;
  float _477;
  float _478;
  float _490;
  float _491;
  float _492;
  float _493;
  float _499;
  float _502;
  float _509;
  float _510;
  float _511;
  float _540;
  float _565;
  float _566;
  float _567;
  float _592;
  float _596;
  float _598;
  float _599;
  float _600;
  float _634;
  float _635;
  float _636;
  float _637;
  float _644;
  float _645;
  float _646;
  float _665;
  float _666;
  float _667;
  float _668;
  float _669;
  float _670;
  float _671;
  float _672;
  float _673;
  float _719;
  float _720;
  float _721;
  float _722;
  float _723;
  float _724;
  float _725;
  float _737;
  float _738;
  float _739;
  float _740;
  float _746;
  float _749;
  float _756;
  float _757;
  float _758;
  float _787;
  float _812;
  float _813;
  float _814;
  float _839;
  float _840;
  float _841;
  float _842;
  float _844;
  float _851;
  float _852;
  float _853;
  float _855;
  float _867;
  float _869;
  float _879;
  float _880;
  float _881;
  float _915;
  float _916;
  float _917;
  float _918;
  float _925;
  float _926;
  float _927;
  float _946;
  float _947;
  float _948;
  float _949;
  float _950;
  float _951;
  float _952;
  float _953;
  float _954;
  float _1000;
  float _1001;
  float _1002;
  float _1003;
  float _1004;
  float _1005;
  float _1006;
  float _1018;
  float _1019;
  float _1020;
  float _1021;
  float _1027;
  float _1030;
  float _1037;
  float _1038;
  float _1039;
  float _1068;
  float _1093;
  float _1094;
  float _1095;
  float _1126;
  float _1130;
  float _1131;
  float _1132;
  float _1133;
  float _1138;
  float _1163;
  float _1167;
  float _1168;
  float _1169;
  float _1170;
  float _1200;
  float _1211;
  float _1212;
  float _1213;
  float _1241;
  float _1244;
  float _1245;
  float _1261;
  float _1262;
  float _1266;
  _17 = __3__36__0__0__g_sceneColor.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_sceneColor_sample]
  if (_postProcessParams.w > 0.0f) {
    _40 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(((_postProcessParams.w * ((TEXCOORD.x * 0.003f) + -0.0015f)) + TEXCOORD.x), TEXCOORD.y), 0.0f))).x);
    _41 = (((float4)(__3__36__0__0__g_sceneColor.SampleLevel(__0__4__0__0__g_staticBilinearClamp, float2(TEXCOORD.x, ((_postProcessParams.w * ((TEXCOORD.y * 0.003f) + -0.0015f)) + TEXCOORD.y)), 0.0f))).z);
  } else {
    _40 = _17.x;
    _41 = _17.z;
  }
  if (_slopeParams.w > 0.0f) {
    _51 = ((TEXCOORD.y + 4.0f) * (TEXCOORD.x + 4.0f)) * _time.x;
    _52 = _51 * 0.7692308f;
    _56 = frac(abs(_52));
    _61 = _51 * 0.08130081f;
    _65 = frac(abs(_61));
    _70 = ((select((_61 >= (-0.0f - _61)), _65, (-0.0f - _65)) * 1230.0f) + 10.0f) * ((select((_52 >= (-0.0f - _52)), _56, (-0.0f - _56)) * 13.0f) + 1.0f);
    _74 = frac(abs(_70));
    _80 = ((0.0075000525f - (select((_70 >= (-0.0f - _70)), _74, (-0.0f - _74)) * 0.15f)) * _slopeParams.w) + 1.0f;
    _85 = (_80 * _40);
    _86 = (_80 * _17.y);
    _87 = (_80 * _41);
  } else {
    _85 = _40;
    _86 = _17.y;
    _87 = _41;
  }
  _93 = (_exposure0.x * 0.65f) * _userImageAdjust.z;
  _123 = _93 * _slopeParams.x;
  _125 = _93 * _slopeParams.y;
  _127 = _93 * _slopeParams.z;
  _141 = exp2(log2(max(0.0f, (_offsetParams.x + (_123 * max(0.0f, (((_85 * 1.70505f) - (_86 * 0.62179f)) - (_87 * 0.08326f))))))) * _powerParams.x);
  _142 = exp2(log2(max(0.0f, (_offsetParams.y + (_125 * max(0.0f, (((_86 * 1.1408f) - (_85 * 0.13026f)) - (_87 * 0.01055f))))))) * _powerParams.y);
  _143 = exp2(log2(max(0.0f, ((_127 * max(0.0f, (((_85 * -0.024f) - (_86 * 0.12897f)) + (_87 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _145 = dot(float3(_141, _142, _143), float3(0.212671f, 0.71516f, 0.072169f));
  _152 = ((_141 - _145) * _powerParams.w) + _145;
  _153 = ((_142 - _145) * _powerParams.w) + _145;
  _154 = ((_143 - _145) * _powerParams.w) + _145;
  _173 = min(max(log2(mad(_154, 0.079223745f, mad(_153, 0.0784336f, (_152 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
  _174 = min(max(log2(mad(_154, 0.07916613f, mad(_153, 0.87846863f, (_152 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
  _175 = min(max(log2(mad(_154, 0.879143f, mad(_153, 0.0784336f, (_152 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
  _176 = _173 * 0.060606062f;
  _177 = _174 * 0.060606062f;
  _178 = _175 * 0.060606062f;
  _179 = _176 * _176;
  _180 = _177 * _177;
  _181 = _178 * _178;
  _227 = min(0.0f, (-0.0f - (((_173 * 0.0072181816f) + ((_179 * 0.4298f) + (((_179 * _179) * ((31.96f - (_173 * 2.4327273f)) + (_179 * 15.5f))) - ((_173 * 0.41624245f) * _179)))) + -0.00232f)));
  _228 = min(0.0f, (-0.0f - (((_174 * 0.0072181816f) + ((_180 * 0.4298f) + (((_180 * _180) * ((31.96f - (_174 * 2.4327273f)) + (_180 * 15.5f))) - ((_174 * 0.41624245f) * _180)))) + -0.00232f)));
  _229 = min(0.0f, (-0.0f - (((_175 * 0.0072181816f) + ((_181 * 0.4298f) + (((_181 * _181) * ((31.96f - (_175 * 2.4327273f)) + (_181 * 15.5f))) - ((_175 * 0.41624245f) * _181)))) + -0.00232f)));
  _230 = -0.0f - _227;
  _231 = -0.0f - _228;
  _232 = -0.0f - _229;
  _233 = dot(float3(_230, _231, _232), float3(0.2126f, 0.7152f, 0.0722f));
  _238 = (_nightToneParm == 1);
  if (_238) {
    _250 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
    _251 = -0.79999995f / _250;
    _252 = -1.2f / _250;
    _253 = 0.20000005f / _250;
    _259 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
    _262 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
    _269 = (_251 + 1.4f) + (_262 * (-0.39999998f - _251));
    _270 = (_252 + 1.6f) + (_262 * (-0.6f - _252));
    _271 = (_253 + 0.9f) + (_262 * (0.5f - _253));
    _288 = (lerp(_270, 1.2f, _259));  // [sem: blended]
    _289 = (lerp(_269, 1.0f, _259));  // [sem: blended]
    _290 = (lerp(_271, 1.4f, _259));  // [sem: blended]
  } else {
    _288 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    _289 = 1.0f;  // [sem: blended]
    _290 = 1.4f;  // [sem: blended]
  }
  _300 = 1.0f - _288;
  _325 = ((exp2(log2(((saturate((_227 * _227) * _230) * _300) + _288) * _230) * _289) - _233) * _290) + _233;
  _326 = ((exp2(log2(((saturate((_228 * _228) * _231) * _300) + _288) * _231) * _289) - _233) * _290) + _233;
  _327 = ((exp2(log2(((saturate((_229 * _229) * _232) * _300) + _288) * _232) * _289) - _233) * _290) + _233;
  _346 = saturate(exp2(log2(mad(_327, -0.09902974f, mad(_326, -0.09802088f, (_325 * 1.196879f)))) * 2.2f));  // [sem: expr_sat]
  _347 = saturate(exp2(log2(mad(_327, -0.098961174f, mad(_326, 1.1519032f, (_325 * -0.052896854f)))) * 2.2f));  // [sem: expr_sat]
  _348 = saturate(exp2(log2(mad(_327, 1.1510737f, mad(_326, -0.09804345f, (_325 * -0.052971635f)))) * 2.2f));  // [sem: expr_sat]
  _351 = _localToneMappingParams.x * _85;
  _352 = _localToneMappingParams.x * _86;
  _353 = _localToneMappingParams.x * _87;
  _387 = exp2(log2(max(0.0f, ((_123 * max(0.0f, (((_351 * 1.70505f) - (_352 * 0.62179f)) - (_353 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _388 = exp2(log2(max(0.0f, ((_125 * max(0.0f, (((_352 * 1.1408f) - (_351 * 0.13026f)) - (_353 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _389 = exp2(log2(max(0.0f, ((_127 * max(0.0f, (((_351 * -0.024f) - (_352 * 0.12897f)) + (_353 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _390 = dot(float3(_387, _388, _389), float3(0.212671f, 0.71516f, 0.072169f));
  _397 = ((_387 - _390) * _powerParams.w) + _390;
  _398 = ((_388 - _390) * _powerParams.w) + _390;
  _399 = ((_389 - _390) * _powerParams.w) + _390;
  _418 = min(max(log2(mad(_399, 0.079223745f, mad(_398, 0.0784336f, (_397 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
  _419 = min(max(log2(mad(_399, 0.07916613f, mad(_398, 0.87846863f, (_397 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
  _420 = min(max(log2(mad(_399, 0.879143f, mad(_398, 0.0784336f, (_397 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
  _421 = _418 * 0.060606062f;
  _422 = _419 * 0.060606062f;
  _423 = _420 * 0.060606062f;
  _424 = _421 * _421;
  _425 = _422 * _422;
  _426 = _423 * _423;
  _472 = min(0.0f, (-0.0f - (((_418 * 0.0072181816f) + ((_424 * 0.4298f) + (((_424 * _424) * ((31.96f - (_418 * 2.4327273f)) + (_424 * 15.5f))) - ((_418 * 0.41624245f) * _424)))) + -0.00232f)));
  _473 = min(0.0f, (-0.0f - (((_419 * 0.0072181816f) + ((_425 * 0.4298f) + (((_425 * _425) * ((31.96f - (_419 * 2.4327273f)) + (_425 * 15.5f))) - ((_419 * 0.41624245f) * _425)))) + -0.00232f)));
  _474 = min(0.0f, (-0.0f - (((_420 * 0.0072181816f) + ((_426 * 0.4298f) + (((_426 * _426) * ((31.96f - (_420 * 2.4327273f)) + (_426 * 15.5f))) - ((_420 * 0.41624245f) * _426)))) + -0.00232f)));
  _475 = -0.0f - _472;
  _476 = -0.0f - _473;
  _477 = -0.0f - _474;
  _478 = dot(float3(_475, _476, _477), float3(0.2126f, 0.7152f, 0.0722f));
  if (_238) {
    _490 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
    _491 = -0.79999995f / _490;
    _492 = -1.2f / _490;
    _493 = 0.20000005f / _490;
    _499 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
    _502 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
    _509 = (_491 + 1.4f) + (_502 * (-0.39999998f - _491));
    _510 = (_492 + 1.6f) + (_502 * (-0.6f - _492));
    _511 = (_493 + 0.9f) + (_502 * (0.5f - _493));
    _528 = (lerp(_510, 1.2f, _499));  // [sem: blended]
    _529 = (lerp(_509, 1.0f, _499));  // [sem: blended]
    _530 = (lerp(_511, 1.4f, _499));  // [sem: blended]
  } else {
    _528 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    _529 = 1.0f;  // [sem: blended]
    _530 = 1.4f;  // [sem: blended]
  }
  _540 = 1.0f - _528;
  _565 = ((exp2(log2(((saturate((_472 * _472) * _475) * _540) + _528) * _475) * _529) - _478) * _530) + _478;
  _566 = ((exp2(log2(((saturate((_473 * _473) * _476) * _540) + _528) * _476) * _529) - _478) * _530) + _478;
  _567 = ((exp2(log2(((saturate((_474 * _474) * _477) * _540) + _528) * _477) * _529) - _478) * _530) + _478;
  _592 = dot(float3(saturate(saturate(exp2(log2(mad(_567, -0.09902974f, mad(_566, -0.09802088f, (_565 * 1.196879f)))) * 2.2f))), saturate(saturate(exp2(log2(mad(_567, -0.098961174f, mad(_566, 1.1519032f, (_565 * -0.052896854f)))) * 2.2f))), saturate(saturate(exp2(log2(mad(_567, 1.1510737f, mad(_566, -0.09804345f, (_565 * -0.052971635f)))) * 2.2f)))), float3(0.1f, 0.7f, 0.2f));
  _596 = dot(float3(saturate(_346), saturate(_347), saturate(_348)), float3(0.1f, 0.7f, 0.2f));
  _598 = _localToneMappingParams.y * _85;
  _599 = _localToneMappingParams.y * _86;
  _600 = _localToneMappingParams.y * _87;
  _634 = exp2(log2(max(0.0f, ((_123 * max(0.0f, (((_598 * 1.70505f) - (_599 * 0.62179f)) - (_600 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _635 = exp2(log2(max(0.0f, ((_125 * max(0.0f, (((_599 * 1.1408f) - (_598 * 0.13026f)) - (_600 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _636 = exp2(log2(max(0.0f, ((_127 * max(0.0f, (((_598 * -0.024f) - (_599 * 0.12897f)) + (_600 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _637 = dot(float3(_634, _635, _636), float3(0.212671f, 0.71516f, 0.072169f));
  _644 = ((_634 - _637) * _powerParams.w) + _637;
  _645 = ((_635 - _637) * _powerParams.w) + _637;
  _646 = ((_636 - _637) * _powerParams.w) + _637;
  _665 = min(max(log2(mad(_646, 0.079223745f, mad(_645, 0.0784336f, (_644 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
  _666 = min(max(log2(mad(_646, 0.07916613f, mad(_645, 0.87846863f, (_644 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
  _667 = min(max(log2(mad(_646, 0.879143f, mad(_645, 0.0784336f, (_644 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
  _668 = _665 * 0.060606062f;
  _669 = _666 * 0.060606062f;
  _670 = _667 * 0.060606062f;
  _671 = _668 * _668;
  _672 = _669 * _669;
  _673 = _670 * _670;
  _719 = min(0.0f, (-0.0f - (((_665 * 0.0072181816f) + ((_671 * 0.4298f) + (((_671 * _671) * ((31.96f - (_665 * 2.4327273f)) + (_671 * 15.5f))) - ((_665 * 0.41624245f) * _671)))) + -0.00232f)));
  _720 = min(0.0f, (-0.0f - (((_666 * 0.0072181816f) + ((_672 * 0.4298f) + (((_672 * _672) * ((31.96f - (_666 * 2.4327273f)) + (_672 * 15.5f))) - ((_666 * 0.41624245f) * _672)))) + -0.00232f)));
  _721 = min(0.0f, (-0.0f - (((_667 * 0.0072181816f) + ((_673 * 0.4298f) + (((_673 * _673) * ((31.96f - (_667 * 2.4327273f)) + (_673 * 15.5f))) - ((_667 * 0.41624245f) * _673)))) + -0.00232f)));
  _722 = -0.0f - _719;
  _723 = -0.0f - _720;
  _724 = -0.0f - _721;
  _725 = dot(float3(_722, _723, _724), float3(0.2126f, 0.7152f, 0.0722f));
  if (_238) {
    _737 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
    _738 = -0.79999995f / _737;
    _739 = -1.2f / _737;
    _740 = 0.20000005f / _737;
    _746 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
    _749 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
    _756 = (_738 + 1.4f) + (_749 * (-0.39999998f - _738));
    _757 = (_739 + 1.6f) + (_749 * (-0.6f - _739));
    _758 = (_740 + 0.9f) + (_749 * (0.5f - _740));
    _775 = (lerp(_757, 1.2f, _746));  // [sem: blended]
    _776 = (lerp(_756, 1.0f, _746));  // [sem: blended]
    _777 = (lerp(_758, 1.4f, _746));  // [sem: blended]
  } else {
    _775 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
    _776 = 1.0f;  // [sem: blended]
    _777 = 1.4f;  // [sem: blended]
  }
  _787 = 1.0f - _775;
  _812 = ((exp2(log2(((saturate((_719 * _719) * _722) * _787) + _775) * _722) * _776) - _725) * _777) + _725;
  _813 = ((exp2(log2(((saturate((_720 * _720) * _723) * _787) + _775) * _723) * _776) - _725) * _777) + _725;
  _814 = ((exp2(log2(((saturate((_721 * _721) * _724) * _787) + _775) * _724) * _776) - _725) * _777) + _725;
  _839 = dot(float3(saturate(saturate(exp2(log2(mad(_814, -0.09902974f, mad(_813, -0.09802088f, (_812 * 1.196879f)))) * 2.2f))), saturate(saturate(exp2(log2(mad(_814, -0.098961174f, mad(_813, 1.1519032f, (_812 * -0.052896854f)))) * 2.2f))), saturate(saturate(exp2(log2(mad(_814, 1.1510737f, mad(_813, -0.09804345f, (_812 * -0.052971635f)))) * 2.2f)))), float3(0.1f, 0.7f, 0.2f));
  _840 = _592 + -0.5f;
  _841 = _596 + -0.5f;
  _842 = _839 + -0.5f;
  _844 = _localToneMappingParams.z * -0.7213475f;
  _851 = exp2((_840 * _840) * _844);
  _852 = exp2((_841 * _841) * _844);
  _853 = exp2((_842 * _842) * _844);
  _855 = dot(float3(_851, _852, _853), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _867 = dot(float3(max(_346, 0.0f), max(_347, 0.0f), max(_348, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _869 = max(dot(float3(((_851 / _855) * _592), ((_852 / _855) * _596), ((_853 / _855) * _839)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _867;
  if (!(_867 > 0.007f)) {
    _878 = ((((_867 * _867) * 20408.16f) * (_869 + -1.0f)) + 1.0f);
  } else {
    _878 = _869;
  }
  _879 = _878 * _85;
  _880 = _878 * _86;
  _881 = _878 * _87;
  _915 = exp2(log2(max(0.0f, ((_123 * max(0.0f, (((_879 * 1.70505f) - (_880 * 0.62179f)) - (_881 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _916 = exp2(log2(max(0.0f, ((_125 * max(0.0f, (((_880 * 1.1408f) - (_879 * 0.13026f)) - (_881 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _917 = exp2(log2(max(0.0f, ((_127 * max(0.0f, (((_879 * -0.024f) - (_880 * 0.12897f)) + (_881 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _918 = dot(float3(_915, _916, _917), float3(0.212671f, 0.71516f, 0.072169f));
  _925 = ((_915 - _918) * _powerParams.w) + _918;
  _926 = ((_916 - _918) * _powerParams.w) + _918;
  _927 = ((_917 - _918) * _powerParams.w) + _918;
  _946 = min(max(log2(mad(_927, 0.079223745f, mad(_926, 0.0784336f, (_925 * 0.84247905f)))), -12.47393f), 4.026069f) + 12.47393f;
  _947 = min(max(log2(mad(_927, 0.07916613f, mad(_926, 0.87846863f, (_925 * 0.042328242f)))), -12.47393f), 4.026069f) + 12.47393f;
  _948 = min(max(log2(mad(_927, 0.879143f, mad(_926, 0.0784336f, (_925 * 0.042375654f)))), -12.47393f), 4.026069f) + 12.47393f;
  _949 = _946 * 0.060606062f;
  _950 = _947 * 0.060606062f;
  _951 = _948 * 0.060606062f;
  _952 = _949 * _949;
  _953 = _950 * _950;
  _954 = _951 * _951;
  _1000 = min(0.0f, (-0.0f - (((_946 * 0.0072181816f) + ((_952 * 0.4298f) + (((_952 * _952) * ((31.96f - (_946 * 2.4327273f)) + (_952 * 15.5f))) - ((_946 * 0.41624245f) * _952)))) + -0.00232f)));
  _1001 = min(0.0f, (-0.0f - (((_947 * 0.0072181816f) + ((_953 * 0.4298f) + (((_953 * _953) * ((31.96f - (_947 * 2.4327273f)) + (_953 * 15.5f))) - ((_947 * 0.41624245f) * _953)))) + -0.00232f)));
  _1002 = min(0.0f, (-0.0f - (((_948 * 0.0072181816f) + ((_954 * 0.4298f) + (((_954 * _954) * ((31.96f - (_948 * 2.4327273f)) + (_954 * 15.5f))) - ((_948 * 0.41624245f) * _954)))) + -0.00232f)));
  _1003 = -0.0f - _1000;
  _1004 = -0.0f - _1001;
  _1005 = -0.0f - _1002;
  _1006 = dot(float3(_1003, _1004, _1005), float3(0.2126f, 0.7152f, 0.0722f));
  if (_238) {
    _1018 = exp2(exp2(log2(abs((_time.w * 0.11666667f) + -1.4f)) * 8.0f) * -1.442695f) + 1.0f;
    _1019 = -0.79999995f / _1018;
    _1020 = -1.2f / _1018;
    _1021 = 0.20000005f / _1018;
    _1027 = saturate((_exposure2.x + -0.6f) * 0.10638298f);  // [sem: expr_sat]
    _1030 = saturate((_exposure2.x + -0.1f) * 2.0f);  // [sem: expr_sat]
    _1037 = (_1019 + 1.4f) + (_1030 * (-0.39999998f - _1019));
    _1038 = (_1020 + 1.6f) + (_1030 * (-0.6f - _1020));
    _1039 = (_1021 + 0.9f) + (_1030 * (0.5f - _1021));
    _1056 = (lerp(_1039, 1.4f, _1027));  // [sem: blended]
    _1057 = (lerp(_1037, 1.0f, _1027));  // [sem: blended]
    _1058 = (lerp(_1038, 1.2f, _1027));  // [sem: blended]
  } else {
    _1056 = 1.4f;  // [sem: blended]
    _1057 = 1.0f;  // [sem: blended]
    _1058 = ((saturate((_exposure2.x + -3.0f) * 0.14285715f) * 0.20000005f) + 1.0f);  // [sem: blended]
  }
  _1068 = 1.0f - _1058;
  _1093 = ((exp2(log2(((saturate((_1000 * _1000) * _1003) * _1068) + _1058) * _1003) * _1057) - _1006) * _1056) + _1006;
  _1094 = ((exp2(log2(((saturate((_1001 * _1001) * _1004) * _1068) + _1058) * _1004) * _1057) - _1006) * _1056) + _1006;
  _1095 = ((exp2(log2(((saturate((_1002 * _1002) * _1005) * _1068) + _1058) * _1005) * _1057) - _1006) * _1056) + _1006;
  _1126 = 1.0f - abs(_etcParams.w);
  _1130 = saturate(_etcParams.w);  // [sem: expr_sat]
  _1131 = (_1126 * saturate(max(saturate(exp2(log2(mad(_1095, -0.09902974f, mad(_1094, -0.09802088f, (_1093 * 1.196879f)))) * 2.2f)), 0.0f))) + _1130;
  _1132 = (_1126 * saturate(max(saturate(exp2(log2(mad(_1095, -0.098961174f, mad(_1094, 1.1519032f, (_1093 * -0.052896854f)))) * 2.2f)), 0.0f))) + _1130;
  _1133 = (_1126 * saturate(max(saturate(exp2(log2(mad(_1095, 1.1510737f, mad(_1094, -0.09804345f, (_1093 * -0.052971635f)))) * 2.2f)), 0.0f))) + _1130;
  if (_colorGradingParams.w > 0.0f) {
    _1138 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _1155 = (((max(0.0f, (1.0f - _1131)) - _1131) * _1138) + _1131);
    _1156 = (((max(0.0f, (1.0f - _1132)) - _1132) * _1138) + _1132);
    _1157 = (((max(0.0f, (1.0f - _1133)) - _1133) * _1138) + _1133);
  } else {
    _1155 = _1131;
    _1156 = _1132;
    _1157 = _1133;
  }
  _1163 = _userImageAdjust.y + 1.0f;
  _1167 = _userImageAdjust.x + 0.5f;
  _1168 = ((_1155 + -0.5f) * _1163) + _1167;
  _1169 = ((_1156 + -0.5f) * _1163) + _1167;
  _1170 = ((_1157 + -0.5f) * _1163) + _1167;
  _1200 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _1211 = (TEXCOORD.x * 2.0f) + -1.0f;
  _1212 = TEXCOORD.y * 2.0f;
  _1213 = 1.0f - _1212;
  _1241 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _1213, ((_projToPrevProj[3].x) * _1211))) + (_projToPrevProj[3].w);
  _1244 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _1213, ((_projToPrevProj[0].x) * _1211))) + (_projToPrevProj[0].w)) / _1241) - _1211;
  _1245 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _1213, ((_projToPrevProj[1].x) * _1211))) + (_projToPrevProj[1].w)) / _1241) - _1213;
  if (_localToneMappingParams.w > 0.0f) {
    _1258 = saturate(1.0f - (sqrt((_1245 * _1245) + (_1244 * _1244)) * 2.0f));  // [sem: expr_sat]
  } else {
    _1258 = 1.0f;  // [sem: expr_sat]
  }
  _1261 = abs(_1211);
  _1262 = abs(_1212 + -1.0f);
  _1266 = saturate(1.0f - ((_1258 * _postProcessParams.x) * dot(float2(_1261, _1262), float2(_1261, _1262))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _1280 = (_1266 * exp2(log2(saturate(mad(_colorBlind0.z, _1170, mad(_colorBlind0.y, _1169, (_colorBlind0.x * _1168))))) * _1200));
      _1281 = (_1266 * exp2(log2(saturate(mad(_colorBlind1.z, _1170, mad(_colorBlind1.y, _1169, (_colorBlind1.x * _1168))))) * _1200));
      _1282 = (_1266 * exp2(log2(saturate(mad(_colorBlind2.z, _1170, mad(_colorBlind2.y, _1169, (_colorBlind2.x * _1168))))) * _1200));
    } else {
      _1280 = 0.0f;
      _1281 = 0.0f;
      _1282 = 0.0f;
    }
  } else {
    _1280 = 0.0f;
    _1281 = 0.0f;
    _1282 = 0.0f;
  }
  SV_Target.x = _1280;
  SV_Target.y = _1281;
  SV_Target.z = _1282;
  SV_Target.w = _17.w;
  return SV_Target;
}
