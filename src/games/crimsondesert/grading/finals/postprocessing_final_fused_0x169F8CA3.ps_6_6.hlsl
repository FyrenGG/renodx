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
  float _641;
  float _642;
  float _643;
  float _679;
  float _680;
  float _681;
  float _750;
  bool _770;
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
  float _156;
  float _159;
  float _162;
  float _164;
  float _165;
  float _173;
  float _179;
  float _183;
  float _187;
  float _188;
  float _189;
  float _190;
  float _200;
  float _210;
  float _220;
  float _223;
  float _232;
  float4 _235;
  float4 _240;
  float4 _245;
  float4 _250;
  float _269;
  float _283;
  float _297;
  float _298;
  float _305;
  float _309;
  float _313;
  float _316;
  float _317;
  float _318;
  float _329;
  float _341;
  float _353;
  float _365;
  float _366;
  float _370;
  float _374;
  float _378;
  float _379;
  float _380;
  float _381;
  float _391;
  float _403;
  float _415;
  float _427;
  float _428;
  float _432;
  float _436;
  float _440;
  float _441;
  float _442;
  float _443;
  float _453;
  float _465;
  float _477;
  float _489;
  float _490;
  float _494;
  float _498;
  float _502;
  float _503;
  float _504;
  float _505;
  float _515;
  float _519;
  float _535;
  float _538;
  float _647;
  float _648;
  float _651;
  float _654;
  float _657;
  float _662;
  float _684;
  float _686;
  float _689;
  float _692;
  float _695;
  float _701;
  float _703;
  float _704;
  float _705;
  float _717;
  float _727;
  float _737;
  float _751;
  float _753;
  float _760;
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
  _156 = _toneMapParams1.z * _toneMapParams0.x;
  _159 = _toneMapParams0.z * _toneMapParams0.y;
  _162 = _toneMapParams1.x * _toneMapParams0.w;
  _164 = _toneMapParams1.y * _toneMapParams0.w;
  _165 = _toneMapParams1.x / _toneMapParams1.y;
  _173 = ((((_156 + _159) * _toneMapParams1.z) + _162) / (((_156 + _toneMapParams0.y) * _toneMapParams1.z) + _164)) - _165;
  _179 = (lerp(_151, _122, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _183 = (lerp(_151, _136, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _187 = (lerp(_151, _150, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _188 = _179 * _toneMapParams0.x;
  _189 = _183 * _toneMapParams0.x;
  _190 = _187 * _toneMapParams0.x;
  _200 = saturate((((((_188 + _159) * _179) + _162) / (((_188 + _toneMapParams0.y) * _179) + _164)) - _165) / _173);  // [sem: expr_sat]
  _210 = saturate((((((_189 + _159) * _183) + _162) / (((_189 + _toneMapParams0.y) * _183) + _164)) - _165) / _173);  // [sem: expr_sat]
  _220 = saturate((((((_190 + _159) * _187) + _162) / (((_190 + _toneMapParams0.y) * _187) + _164)) - _165) / _173);  // [sem: expr_sat]
  _223 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_223.x < 1e-07f) || (_223.x == 1.0f))) {
    _232 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _235 = __3__36__0__0__g_sceneColor.Load(int3(_92, ((int)((uint)((uint)(_95)) + (uint)(-1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _240 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_92)) + (uint)(-1))), _95, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _245 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_92)) + (uint)(1))), _95, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _250 = __3__36__0__0__g_sceneColor.Load(int3(_92, ((int)((uint)((uint)(_95)) + (uint)(1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _269 = exp2(_powerParams.x * log2(max(0.0f, (_offsetParams.x + (max(0.0f, (((_235.x * 1.70505f) - (_235.y * 0.62179f)) - (_235.z * 0.08326f))) * _102)))));
    _283 = exp2(log2(max(0.0f, ((max(0.0f, (((_235.y * 1.1408f) - (_235.x * 0.13026f)) - (_235.z * 0.01055f))) * _104) + _offsetParams.y))) * _powerParams.y);
    _297 = exp2(log2(max(0.0f, ((max(0.0f, (((_235.x * -0.024f) - (_235.y * 0.12897f)) + (_235.z * 1.15297f))) * _106) + _offsetParams.z))) * _powerParams.z);
    _298 = dot(float3(_269, _283, _297), float3(0.212671f, 0.71516f, 0.072169f));
    _305 = (lerp(_298, _269, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
    _309 = (lerp(_298, _283, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
    _313 = (lerp(_298, _297, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
    _316 = _305 * _toneMapParams0.x;
    _317 = _309 * _toneMapParams0.x;
    _318 = _313 * _toneMapParams0.x;
    _329 = saturate((((((_317 + _159) * _309) + _162) / (((_317 + _toneMapParams0.y) * _309) + _164)) - _165) / _173);  // [sem: expr_sat]
    _341 = exp2(log2(max(0.0f, ((max(0.0f, (((_240.x * 1.70505f) - (_240.y * 0.62179f)) - (_240.z * 0.08326f))) * _102) + _offsetParams.x))) * _powerParams.x);
    _353 = exp2(log2(max(0.0f, ((max(0.0f, (((_240.y * 1.1408f) - (_240.x * 0.13026f)) - (_240.z * 0.01055f))) * _104) + _offsetParams.y))) * _powerParams.y);
    _365 = exp2(log2(max(0.0f, ((max(0.0f, (((_240.x * -0.024f) - (_240.y * 0.12897f)) + (_240.z * 1.15297f))) * _106) + _offsetParams.z))) * _powerParams.z);
    _366 = dot(float3(_341, _353, _365), float3(0.212671f, 0.71516f, 0.072169f));
    _370 = (lerp(_366, _341, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
    _374 = (lerp(_366, _353, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
    _378 = (lerp(_366, _365, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
    _379 = _370 * _toneMapParams0.x;
    _380 = _374 * _toneMapParams0.x;
    _381 = _378 * _toneMapParams0.x;
    _391 = saturate((((((_380 + _159) * _374) + _162) / (((_380 + _toneMapParams0.y) * _374) + _164)) - _165) / _173);  // [sem: expr_sat]
    _403 = exp2(log2(max(0.0f, ((max(0.0f, (((_245.x * 1.70505f) - (_245.y * 0.62179f)) - (_245.z * 0.08326f))) * _102) + _offsetParams.x))) * _powerParams.x);
    _415 = exp2(log2(max(0.0f, ((max(0.0f, (((_245.y * 1.1408f) - (_245.x * 0.13026f)) - (_245.z * 0.01055f))) * _104) + _offsetParams.y))) * _powerParams.y);
    _427 = exp2(log2(max(0.0f, ((max(0.0f, (((_245.x * -0.024f) - (_245.y * 0.12897f)) + (_245.z * 1.15297f))) * _106) + _offsetParams.z))) * _powerParams.z);
    _428 = dot(float3(_403, _415, _427), float3(0.212671f, 0.71516f, 0.072169f));
    _432 = (lerp(_428, _403, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
    _436 = (lerp(_428, _415, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
    _440 = (lerp(_428, _427, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
    _441 = _432 * _toneMapParams0.x;
    _442 = _436 * _toneMapParams0.x;
    _443 = _440 * _toneMapParams0.x;
    _453 = saturate((((((_442 + _159) * _436) + _162) / (((_442 + _toneMapParams0.y) * _436) + _164)) - _165) / _173);  // [sem: expr_sat]
    _465 = exp2(log2(max(0.0f, ((max(0.0f, (((_250.x * 1.70505f) - (_250.y * 0.62179f)) - (_250.z * 0.08326f))) * _102) + _offsetParams.x))) * _powerParams.x);
    _477 = exp2(log2(max(0.0f, ((max(0.0f, (((_250.y * 1.1408f) - (_250.x * 0.13026f)) - (_250.z * 0.01055f))) * _104) + _offsetParams.y))) * _powerParams.y);
    _489 = exp2(log2(max(0.0f, ((max(0.0f, (((_250.x * -0.024f) - (_250.y * 0.12897f)) + (_250.z * 1.15297f))) * _106) + _offsetParams.z))) * _powerParams.z);
    _490 = dot(float3(_465, _477, _489), float3(0.212671f, 0.71516f, 0.072169f));
    _494 = (lerp(_490, _465, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
    _498 = (lerp(_490, _477, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
    _502 = (lerp(_490, _489, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
    _503 = _494 * _toneMapParams0.x;
    _504 = _498 * _toneMapParams0.x;
    _505 = _502 * _toneMapParams0.x;
    _515 = saturate((((((_504 + _159) * _498) + _162) / (((_504 + _toneMapParams0.y) * _498) + _164)) - _165) / _173);  // [sem: expr_sat]
    _519 = max(max(_210, _329), max(max(_391, _453), _515));
    _535 = (-1.0f / (((1.0f - _232) * 8.0f) + (_232 * 5.0f))) * sqrt(saturate((1.0f / _519) * min(min(min(_210, _329), min(min(_391, _453), _515)), (1.0f - _519))));
    _538 = 1.0f / ((_535 * 4.0f) + 1.0f);
    // [sem: expr_sat]
    _641 = saturate((((((saturate((((((_318 + _159) * _313) + _162) / (((_318 + _toneMapParams0.y) * _313) + _164)) - _165) / _173) + saturate((((((_381 + _159) * _378) + _162) / (((_381 + _toneMapParams0.y) * _378) + _164)) - _165) / _173)) + saturate((((((_443 + _159) * _440) + _162) / (((_443 + _toneMapParams0.y) * _440) + _164)) - _165) / _173)) + saturate((((((_505 + _159) * _502) + _162) / (((_505 + _toneMapParams0.y) * _502) + _164)) - _165) / _173)) * _535) + _220) * _538);
    _642 = saturate(((_535 * (((_391 + _329) + _453) + _515)) + _210) * _538);  // [sem: expr_sat]
    // [sem: expr_sat]
    _643 = saturate((((((saturate((((((_316 + _159) * _305) + _162) / (((_316 + _toneMapParams0.y) * _305) + _164)) - _165) / _173) + saturate((((((_379 + _159) * _370) + _162) / (((_379 + _toneMapParams0.y) * _370) + _164)) - _165) / _173)) + saturate((((((_441 + _159) * _432) + _162) / (((_441 + _toneMapParams0.y) * _432) + _164)) - _165) / _173)) + saturate((((((_503 + _159) * _494) + _162) / (((_503 + _toneMapParams0.y) * _494) + _164)) - _165) / _173)) * _535) + _200) * _538);
  } else {
    _641 = _220;  // [sem: expr_sat]
    _642 = _210;  // [sem: expr_sat]
    _643 = _200;  // [sem: expr_sat]
  }
  _647 = 1.0f - abs(_etcParams.w);
  _648 = saturate(_etcParams.w);  // [sem: expr_sat]
  _651 = (saturate(_643) * _647) + _648;
  _654 = (saturate(_642) * _647) + _648;
  _657 = (saturate(_641) * _647) + _648;
  if (_colorGradingParams.w > 0.0f) {
    _662 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _679 = (((max(0.0f, (1.0f - _651)) - _651) * _662) + _651);
    _680 = (((max(0.0f, (1.0f - _654)) - _654) * _662) + _654);
    _681 = (((max(0.0f, (1.0f - _657)) - _657) * _662) + _657);
  } else {
    _679 = _651;
    _680 = _654;
    _681 = _657;
  }
  _684 = _userImageAdjust.y + 1.0f;
  _686 = _userImageAdjust.x + 0.5f;
  _689 = (_684 * (_679 + -0.5f)) + _686;
  _692 = (_684 * (_680 + -0.5f)) + _686;
  _695 = (_684 * (_681 + -0.5f)) + _686;
  _701 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _703 = (TEXCOORD.x * 2.0f) + -1.0f;
  _704 = TEXCOORD.y * 2.0f;
  _705 = 1.0f - _704;
  _717 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _705, ((_projToPrevProj[3].x) * _703)));
  _727 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _705, ((_projToPrevProj[0].x) * _703))) + (_projToPrevProj[0].w)) / _717) - _703;
  _737 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _705, ((_projToPrevProj[1].x) * _703))) + (_projToPrevProj[1].w)) / _717) - _705;
  if (_localToneMappingParams.w > 0.0f) {
    _750 = saturate(1.0f - (sqrt((_737 * _737) + (_727 * _727)) * 2.0f));  // [sem: expr_sat]
  } else {
    _750 = 1.0f;  // [sem: expr_sat]
  }
  _751 = abs(_703);
  _753 = abs(_704 + -1.0f);
  _760 = saturate(1.0f - ((_postProcessParams.x * _750) * dot(float2(_751, _753), float2(_751, _753))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    _770 = (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w)));
  } else {
    _770 = false;
  }
  SV_Target.x = select(_770, (exp2(log2(saturate(mad(_colorBlind0.z, _695, mad(_colorBlind0.y, _692, (_colorBlind0.x * _689))))) * _701) * _760), 0.0f);
  SV_Target.y = select(_770, (exp2(log2(saturate(mad(_colorBlind1.z, _695, mad(_colorBlind1.y, _692, (_colorBlind1.x * _689))))) * _701) * _760), 0.0f);
  SV_Target.z = select(_770, (exp2(log2(saturate(mad(_colorBlind2.z, _695, mad(_colorBlind2.y, _692, (_colorBlind2.x * _689))))) * _701) * _760), 0.0f);
  SV_Target.w = _18.w;
  return SV_Target;
}
