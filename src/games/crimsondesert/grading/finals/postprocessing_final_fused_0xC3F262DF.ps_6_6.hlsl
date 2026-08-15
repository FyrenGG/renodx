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
  float _671;
  float _672;
  float _673;
  float _709;
  float _710;
  float _711;
  float _813;
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
  float _194;
  float _195;
  float _196;
  float _209;
  float _210;
  float _211;
  float _213;
  float _221;
  float4 _228;
  float4 _233;
  float4 _238;
  float4 _243;
  float _280;
  float _281;
  float _282;
  float _283;
  float _290;
  float _293;
  float _294;
  float _297;
  float _300;
  float _303;
  float _325;
  float _326;
  float _327;
  float _341;
  float _376;
  float _377;
  float _378;
  float _379;
  float _386;
  float _389;
  float _390;
  float _393;
  float _396;
  float _399;
  float _421;
  float _422;
  float _423;
  float _437;
  float _472;
  float _473;
  float _474;
  float _475;
  float _482;
  float _485;
  float _486;
  float _489;
  float _492;
  float _495;
  float _517;
  float _518;
  float _519;
  float _533;
  float _568;
  float _569;
  float _570;
  float _571;
  float _578;
  float _581;
  float _582;
  float _585;
  float _588;
  float _591;
  float _613;
  float _614;
  float _615;
  float _629;
  float _638;
  float _645;
  float _648;
  float _680;
  float _684;
  float _685;
  float _686;
  float _687;
  float _692;
  float _717;
  float _721;
  float _722;
  float _723;
  float _724;
  float _754;
  float _765;
  float _766;
  float _767;
  float _795;
  float _798;
  float _799;
  float _816;
  float _817;
  float _821;
  bool _830;
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
  _162 = (lerp(_152, _149, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _163 = (lerp(_152, _150, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _166 = mad(0.04823f, _163, mad(0.35458f, _162, (_159 * 0.9953167f)));
  _169 = mad(0.01566f, _163, mad(0.90834f, _162, (_159 * 0.12666667f)));
  _172 = mad(0.83777f, _163, mad(0.13383f, _162, (_159 * 0.047333334f)));
  _194 = (((_166 + 0.0245786f) * _166) + -9.0537e-05f) / ((((_166 * 0.983729f) + 0.432951f) * _166) + 0.238081f);
  _195 = (((_169 + 0.0245786f) * _169) + -9.0537e-05f) / ((((_169 * 0.983729f) + 0.432951f) * _169) + 0.238081f);
  _196 = (((_172 + 0.0245786f) * _172) + -9.0537e-05f) / ((((_172 * 0.983729f) + 0.432951f) * _172) + 0.238081f);
  _209 = saturate(saturate(mad(-0.07367f, _196, mad(-0.53108f, _195, (_194 * 1.60475f)))));  // [sem: expr_sat]
  _210 = saturate(saturate(mad(-0.00605f, _196, mad(1.10813f, _195, (_194 * -0.10208f)))));  // [sem: expr_sat]
  _211 = saturate(saturate(mad(1.07602f, _196, mad(-0.07276f, _195, (_194 * -0.00327f)))));  // [sem: expr_sat]
  _213 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_213.x < 1e-07f) || (_213.x == 1.0f))) {
    _221 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _228 = __3__36__0__0__g_sceneColor.Load(int3(_94, ((int)((uint)((uint)(_95)) + (uint)(-1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _233 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_94)) + (uint)(-1))), _95, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _238 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_94)) + (uint)(1))), _95, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _243 = __3__36__0__0__g_sceneColor.Load(int3(_94, ((int)((uint)((uint)(_95)) + (uint)(1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _280 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_228.x * 1.70505f) - (_228.y * 0.62179f)) - (_228.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _281 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_228.y * 1.1408f) - (_228.x * 0.13026f)) - (_228.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _282 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_228.x * -0.024f) - (_228.y * 0.12897f)) + (_228.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _283 = dot(float3(_280, _281, _282), float3(0.212671f, 0.71516f, 0.072169f));
    _290 = ((_280 - _283) * _powerParams.w) + _283;
    _293 = (lerp(_283, _281, _powerParams.w)) * 1.6666666f;  // [sem: blended]
    _294 = (lerp(_283, _282, _powerParams.w)) * 1.6666666f;  // [sem: blended]
    _297 = mad(0.04823f, _294, mad(0.35458f, _293, (_290 * 0.9953167f)));
    _300 = mad(0.01566f, _294, mad(0.90834f, _293, (_290 * 0.12666667f)));
    _303 = mad(0.83777f, _294, mad(0.13383f, _293, (_290 * 0.047333334f)));
    _325 = (((_297 + 0.0245786f) * _297) + -9.0537e-05f) / ((((_297 * 0.983729f) + 0.432951f) * _297) + 0.238081f);
    _326 = (((_300 + 0.0245786f) * _300) + -9.0537e-05f) / ((((_300 * 0.983729f) + 0.432951f) * _300) + 0.238081f);
    _327 = (((_303 + 0.0245786f) * _303) + -9.0537e-05f) / ((((_303 * 0.983729f) + 0.432951f) * _303) + 0.238081f);
    _341 = saturate(saturate(mad(-0.00605f, _327, mad(1.10813f, _326, (_325 * -0.10208f)))));  // [sem: expr_sat]
    _376 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_233.x * 1.70505f) - (_233.y * 0.62179f)) - (_233.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _377 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_233.y * 1.1408f) - (_233.x * 0.13026f)) - (_233.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _378 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_233.x * -0.024f) - (_233.y * 0.12897f)) + (_233.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _379 = dot(float3(_376, _377, _378), float3(0.212671f, 0.71516f, 0.072169f));
    _386 = ((_376 - _379) * _powerParams.w) + _379;
    _389 = (lerp(_379, _377, _powerParams.w)) * 1.6666666f;  // [sem: blended]
    _390 = (lerp(_379, _378, _powerParams.w)) * 1.6666666f;  // [sem: blended]
    _393 = mad(0.04823f, _390, mad(0.35458f, _389, (_386 * 0.9953167f)));
    _396 = mad(0.01566f, _390, mad(0.90834f, _389, (_386 * 0.12666667f)));
    _399 = mad(0.83777f, _390, mad(0.13383f, _389, (_386 * 0.047333334f)));
    _421 = (((_393 + 0.0245786f) * _393) + -9.0537e-05f) / ((((_393 * 0.983729f) + 0.432951f) * _393) + 0.238081f);
    _422 = (((_396 + 0.0245786f) * _396) + -9.0537e-05f) / ((((_396 * 0.983729f) + 0.432951f) * _396) + 0.238081f);
    _423 = (((_399 + 0.0245786f) * _399) + -9.0537e-05f) / ((((_399 * 0.983729f) + 0.432951f) * _399) + 0.238081f);
    _437 = saturate(saturate(mad(-0.00605f, _423, mad(1.10813f, _422, (_421 * -0.10208f)))));  // [sem: expr_sat]
    _472 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_238.x * 1.70505f) - (_238.y * 0.62179f)) - (_238.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _473 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_238.y * 1.1408f) - (_238.x * 0.13026f)) - (_238.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _474 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_238.x * -0.024f) - (_238.y * 0.12897f)) + (_238.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _475 = dot(float3(_472, _473, _474), float3(0.212671f, 0.71516f, 0.072169f));
    _482 = ((_472 - _475) * _powerParams.w) + _475;
    _485 = (lerp(_475, _473, _powerParams.w)) * 1.6666666f;  // [sem: blended]
    _486 = (lerp(_475, _474, _powerParams.w)) * 1.6666666f;  // [sem: blended]
    _489 = mad(0.04823f, _486, mad(0.35458f, _485, (_482 * 0.9953167f)));
    _492 = mad(0.01566f, _486, mad(0.90834f, _485, (_482 * 0.12666667f)));
    _495 = mad(0.83777f, _486, mad(0.13383f, _485, (_482 * 0.047333334f)));
    _517 = (((_489 + 0.0245786f) * _489) + -9.0537e-05f) / ((((_489 * 0.983729f) + 0.432951f) * _489) + 0.238081f);
    _518 = (((_492 + 0.0245786f) * _492) + -9.0537e-05f) / ((((_492 * 0.983729f) + 0.432951f) * _492) + 0.238081f);
    _519 = (((_495 + 0.0245786f) * _495) + -9.0537e-05f) / ((((_495 * 0.983729f) + 0.432951f) * _495) + 0.238081f);
    _533 = saturate(saturate(mad(-0.00605f, _519, mad(1.10813f, _518, (_517 * -0.10208f)))));  // [sem: expr_sat]
    _568 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_243.x * 1.70505f) - (_243.y * 0.62179f)) - (_243.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _569 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_243.y * 1.1408f) - (_243.x * 0.13026f)) - (_243.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _570 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_243.x * -0.024f) - (_243.y * 0.12897f)) + (_243.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _571 = dot(float3(_568, _569, _570), float3(0.212671f, 0.71516f, 0.072169f));
    _578 = ((_568 - _571) * _powerParams.w) + _571;
    _581 = (lerp(_571, _569, _powerParams.w)) * 1.6666666f;  // [sem: blended]
    _582 = (lerp(_571, _570, _powerParams.w)) * 1.6666666f;  // [sem: blended]
    _585 = mad(0.04823f, _582, mad(0.35458f, _581, (_578 * 0.9953167f)));
    _588 = mad(0.01566f, _582, mad(0.90834f, _581, (_578 * 0.12666667f)));
    _591 = mad(0.83777f, _582, mad(0.13383f, _581, (_578 * 0.047333334f)));
    _613 = (((_585 + 0.0245786f) * _585) + -9.0537e-05f) / ((((_585 * 0.983729f) + 0.432951f) * _585) + 0.238081f);
    _614 = (((_588 + 0.0245786f) * _588) + -9.0537e-05f) / ((((_588 * 0.983729f) + 0.432951f) * _588) + 0.238081f);
    _615 = (((_591 + 0.0245786f) * _591) + -9.0537e-05f) / ((((_591 * 0.983729f) + 0.432951f) * _591) + 0.238081f);
    _629 = saturate(saturate(mad(-0.00605f, _615, mad(1.10813f, _614, (_613 * -0.10208f)))));  // [sem: expr_sat]
    _638 = max(max(_210, _341), max(max(_437, _533), _629));
    _645 = sqrt(saturate(min(min(min(_210, _341), min(min(_437, _533), _629)), (1.0f - _638)) * (1.0f / _638))) * (-1.0f / (((1.0f - _221) * 8.0f) + (_221 * 5.0f)));
    _648 = 1.0f / ((_645 * 4.0f) + 1.0f);
    // [sem: expr_sat]
    _671 = saturate(((_645 * (((saturate(saturate(mad(-0.07367f, _423, mad(-0.53108f, _422, (_421 * 1.60475f))))) + saturate(saturate(mad(-0.07367f, _327, mad(-0.53108f, _326, (_325 * 1.60475f)))))) + saturate(saturate(mad(-0.07367f, _519, mad(-0.53108f, _518, (_517 * 1.60475f)))))) + saturate(saturate(mad(-0.07367f, _615, mad(-0.53108f, _614, (_613 * 1.60475f))))))) + _209) * _648);
    _672 = saturate(((_645 * (((_437 + _341) + _533) + _629)) + _210) * _648);  // [sem: expr_sat]
    // [sem: expr_sat]
    _673 = saturate(((_645 * (((saturate(saturate(mad(1.07602f, _423, mad(-0.07276f, _422, (_421 * -0.00327f))))) + saturate(saturate(mad(1.07602f, _327, mad(-0.07276f, _326, (_325 * -0.00327f)))))) + saturate(saturate(mad(1.07602f, _519, mad(-0.07276f, _518, (_517 * -0.00327f)))))) + saturate(saturate(mad(1.07602f, _615, mad(-0.07276f, _614, (_613 * -0.00327f))))))) + _211) * _648);
  } else {
    _671 = _209;  // [sem: expr_sat]
    _672 = _210;  // [sem: expr_sat]
    _673 = _211;  // [sem: expr_sat]
  }
  _680 = 1.0f - abs(_etcParams.w);
  _684 = saturate(_etcParams.w);  // [sem: expr_sat]
  _685 = (_680 * saturate(_671)) + _684;
  _686 = (_680 * saturate(_672)) + _684;
  _687 = (_680 * saturate(_673)) + _684;
  if (_colorGradingParams.w > 0.0f) {
    _692 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _709 = (((max(0.0f, (1.0f - _685)) - _685) * _692) + _685);
    _710 = (((max(0.0f, (1.0f - _686)) - _686) * _692) + _686);
    _711 = (((max(0.0f, (1.0f - _687)) - _687) * _692) + _687);
  } else {
    _709 = _685;
    _710 = _686;
    _711 = _687;
  }
  _717 = _userImageAdjust.y + 1.0f;
  _721 = _userImageAdjust.x + 0.5f;
  _722 = ((_709 + -0.5f) * _717) + _721;
  _723 = ((_710 + -0.5f) * _717) + _721;
  _724 = ((_711 + -0.5f) * _717) + _721;
  _754 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _765 = (TEXCOORD.x * 2.0f) + -1.0f;
  _766 = TEXCOORD.y * 2.0f;
  _767 = 1.0f - _766;
  _795 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _767, ((_projToPrevProj[3].x) * _765))) + (_projToPrevProj[3].w);
  _798 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _767, ((_projToPrevProj[0].x) * _765))) + (_projToPrevProj[0].w)) / _795) - _765;
  _799 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _767, ((_projToPrevProj[1].x) * _765))) + (_projToPrevProj[1].w)) / _795) - _767;
  if (_localToneMappingParams.w > 0.0f) {
    _813 = saturate(1.0f - (sqrt((_799 * _799) + (_798 * _798)) * 2.0f));  // [sem: expr_sat]
  } else {
    _813 = 1.0f;  // [sem: expr_sat]
  }
  _816 = abs(_765);
  _817 = abs(_766 + -1.0f);
  _821 = saturate(1.0f - ((_813 * _postProcessParams.x) * dot(float2(_816, _817), float2(_816, _817))));  // [sem: expr_sat]
  _830 = (!(SV_Position.y < _viewDir.w)) && (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w)));
  SV_Target.x = select(_830, (_821 * exp2(log2(saturate(mad(_colorBlind0.z, _724, mad(_colorBlind0.y, _723, (_colorBlind0.x * _722))))) * _754)), 0.0f);
  SV_Target.y = select(_830, (_821 * exp2(log2(saturate(mad(_colorBlind1.z, _724, mad(_colorBlind1.y, _723, (_colorBlind1.x * _722))))) * _754)), 0.0f);
  SV_Target.z = select(_830, (_821 * exp2(log2(saturate(mad(_colorBlind2.z, _724, mad(_colorBlind2.y, _723, (_colorBlind2.x * _722))))) * _754)), 0.0f);
  SV_Target.w = _18.w;
  return SV_Target;
}
