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
  float _876;
  float _877;
  float _878;
  float _914;
  float _915;
  float _916;
  float _1020;
  float _1042;
  float _1043;
  float _1044;
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
  float _172;
  float _176;
  float _180;
  float _181;
  float _182;
  float _183;
  float _184;
  float _185;
  float _193;
  float _195;
  float _197;
  float _201;
  float _205;
  float _206;
  float _207;
  float _226;
  float _228;
  float _230;
  float _232;
  float _266;
  float _267;
  float _268;
  float _270;
  float _278;
  float4 _285;
  float4 _290;
  float4 _295;
  float4 _300;
  float _337;
  float _338;
  float _339;
  float _340;
  float _347;
  float _348;
  float _349;
  float _350;
  float _351;
  float _352;
  float _353;
  float _354;
  float _355;
  float _363;
  float _365;
  float _367;
  float _374;
  float _375;
  float _376;
  float _395;
  float _397;
  float _399;
  float _435;
  float _470;
  float _471;
  float _472;
  float _473;
  float _480;
  float _481;
  float _482;
  float _483;
  float _484;
  float _485;
  float _486;
  float _487;
  float _488;
  float _496;
  float _498;
  float _500;
  float _507;
  float _508;
  float _509;
  float _528;
  float _530;
  float _532;
  float _568;
  float _603;
  float _604;
  float _605;
  float _606;
  float _613;
  float _614;
  float _615;
  float _616;
  float _617;
  float _618;
  float _619;
  float _620;
  float _621;
  float _629;
  float _631;
  float _633;
  float _640;
  float _641;
  float _642;
  float _661;
  float _663;
  float _665;
  float _701;
  float _736;
  float _737;
  float _738;
  float _739;
  float _746;
  float _747;
  float _748;
  float _749;
  float _750;
  float _751;
  float _752;
  float _753;
  float _754;
  float _762;
  float _764;
  float _766;
  float _773;
  float _774;
  float _775;
  float _794;
  float _796;
  float _798;
  float _834;
  float _843;
  float _850;
  float _853;
  float _885;
  float _889;
  float _890;
  float _891;
  float _892;
  float _897;
  float _923;
  float _927;
  float _928;
  float _929;
  float _930;
  float _960;
  float _971;
  float _972;
  float _973;
  float _1001;
  float _1004;
  float _1005;
  float _1023;
  float _1024;
  float _1028;
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
  _172 = ((_toneMapParams0.x - _toneMapParams0.z) * _toneMapParams0.w) / _toneMapParams0.y;
  _176 = (_toneMapParams0.x - _toneMapParams0.z) - (_172 * _toneMapParams0.y);
  _180 = _159 / _toneMapParams0.z;
  _181 = _160 / _toneMapParams0.z;
  _182 = _161 / _toneMapParams0.z;
  _183 = saturate(_180);  // [sem: _180_sat]
  _184 = saturate(_181);  // [sem: _181_sat]
  _185 = saturate(_182);  // [sem: _182_sat]
  _193 = (_183 * _183) * (3.0f - (_183 * 2.0f));
  _195 = (_184 * _184) * (3.0f - (_184 * 2.0f));
  _197 = (_185 * _185) * (3.0f - (_185 * 2.0f));
  _201 = _172 + _toneMapParams0.z;
  _205 = select((_159 < _201), 0.0f, 1.0f);
  _206 = select((_160 < _201), 0.0f, 1.0f);
  _207 = select((_161 < _201), 0.0f, 1.0f);
  _226 = _159 - _toneMapParams0.z;
  _228 = _160 - _toneMapParams0.z;
  _230 = _161 - _toneMapParams0.z;
  _232 = ((-0.0f - ((_toneMapParams0.x * _toneMapParams0.y) / _176)) / _toneMapParams0.x) * 1.442695f;
  // [sem: expr_sat]
  _266 = saturate((((((pow(_180, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _193)) + ((_193 - _205) * ((_226 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_232 * (_226 - _172)) * _176)) * _205));
  // [sem: expr_sat]
  _267 = saturate((((((pow(_181, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _195)) + ((_195 - _206) * ((_228 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_232 * (_228 - _172)) * _176)) * _206));
  // [sem: expr_sat]
  _268 = saturate((((((pow(_182, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _197)) + ((_197 - _207) * ((_230 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_232 * (_230 - _172)) * _176)) * _207));
  _270 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_270.x < 1e-07f) || (_270.x == 1.0f))) {
    _278 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _285 = __3__36__0__0__g_sceneColor.Load(int3(_94, ((int)((uint)((uint)(_95)) + (uint)(-1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _290 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_94)) + (uint)(-1))), _95, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _295 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_94)) + (uint)(1))), _95, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _300 = __3__36__0__0__g_sceneColor.Load(int3(_94, ((int)((uint)((uint)(_95)) + (uint)(1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _337 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_285.x * 1.70505f) - (_285.y * 0.62179f)) - (_285.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _338 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_285.y * 1.1408f) - (_285.x * 0.13026f)) - (_285.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _339 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_285.x * -0.024f) - (_285.y * 0.12897f)) + (_285.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _340 = dot(float3(_337, _338, _339), float3(0.212671f, 0.71516f, 0.072169f));
    _347 = ((_337 - _340) * _powerParams.w) + _340;
    _348 = ((_338 - _340) * _powerParams.w) + _340;
    _349 = ((_339 - _340) * _powerParams.w) + _340;
    _350 = _347 / _toneMapParams0.z;
    _351 = _348 / _toneMapParams0.z;
    _352 = _349 / _toneMapParams0.z;
    _353 = saturate(_350);  // [sem: _350_sat]
    _354 = saturate(_351);  // [sem: _351_sat]
    _355 = saturate(_352);  // [sem: _352_sat]
    _363 = (_353 * _353) * (3.0f - (_353 * 2.0f));
    _365 = (_354 * _354) * (3.0f - (_354 * 2.0f));
    _367 = (_355 * _355) * (3.0f - (_355 * 2.0f));
    _374 = select((_347 < _201), 0.0f, 1.0f);
    _375 = select((_348 < _201), 0.0f, 1.0f);
    _376 = select((_349 < _201), 0.0f, 1.0f);
    _395 = _347 - _toneMapParams0.z;
    _397 = _348 - _toneMapParams0.z;
    _399 = _349 - _toneMapParams0.z;
    // [sem: expr_sat]
    _435 = saturate((((((pow(_351, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _365)) + ((_365 - _375) * ((_397 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_232 * (_397 - _172)) * _176)) * _375));
    _470 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_290.x * 1.70505f) - (_290.y * 0.62179f)) - (_290.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _471 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_290.y * 1.1408f) - (_290.x * 0.13026f)) - (_290.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _472 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_290.x * -0.024f) - (_290.y * 0.12897f)) + (_290.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _473 = dot(float3(_470, _471, _472), float3(0.212671f, 0.71516f, 0.072169f));
    _480 = ((_470 - _473) * _powerParams.w) + _473;
    _481 = ((_471 - _473) * _powerParams.w) + _473;
    _482 = ((_472 - _473) * _powerParams.w) + _473;
    _483 = _480 / _toneMapParams0.z;
    _484 = _481 / _toneMapParams0.z;
    _485 = _482 / _toneMapParams0.z;
    _486 = saturate(_483);  // [sem: _483_sat]
    _487 = saturate(_484);  // [sem: _484_sat]
    _488 = saturate(_485);  // [sem: _485_sat]
    _496 = (_486 * _486) * (3.0f - (_486 * 2.0f));
    _498 = (_487 * _487) * (3.0f - (_487 * 2.0f));
    _500 = (_488 * _488) * (3.0f - (_488 * 2.0f));
    _507 = select((_480 < _201), 0.0f, 1.0f);
    _508 = select((_481 < _201), 0.0f, 1.0f);
    _509 = select((_482 < _201), 0.0f, 1.0f);
    _528 = _480 - _toneMapParams0.z;
    _530 = _481 - _toneMapParams0.z;
    _532 = _482 - _toneMapParams0.z;
    // [sem: expr_sat]
    _568 = saturate((((((pow(_484, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _498)) + ((_498 - _508) * ((_530 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_232 * (_530 - _172)) * _176)) * _508));
    _603 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_295.x * 1.70505f) - (_295.y * 0.62179f)) - (_295.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _604 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_295.y * 1.1408f) - (_295.x * 0.13026f)) - (_295.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _605 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_295.x * -0.024f) - (_295.y * 0.12897f)) + (_295.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _606 = dot(float3(_603, _604, _605), float3(0.212671f, 0.71516f, 0.072169f));
    _613 = ((_603 - _606) * _powerParams.w) + _606;
    _614 = ((_604 - _606) * _powerParams.w) + _606;
    _615 = ((_605 - _606) * _powerParams.w) + _606;
    _616 = _613 / _toneMapParams0.z;
    _617 = _614 / _toneMapParams0.z;
    _618 = _615 / _toneMapParams0.z;
    _619 = saturate(_616);  // [sem: _616_sat]
    _620 = saturate(_617);  // [sem: _617_sat]
    _621 = saturate(_618);  // [sem: _618_sat]
    _629 = (_619 * _619) * (3.0f - (_619 * 2.0f));
    _631 = (_620 * _620) * (3.0f - (_620 * 2.0f));
    _633 = (_621 * _621) * (3.0f - (_621 * 2.0f));
    _640 = select((_613 < _201), 0.0f, 1.0f);
    _641 = select((_614 < _201), 0.0f, 1.0f);
    _642 = select((_615 < _201), 0.0f, 1.0f);
    _661 = _613 - _toneMapParams0.z;
    _663 = _614 - _toneMapParams0.z;
    _665 = _615 - _toneMapParams0.z;
    // [sem: expr_sat]
    _701 = saturate((((((pow(_617, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _631)) + ((_631 - _641) * ((_663 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_232 * (_663 - _172)) * _176)) * _641));
    _736 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_300.x * 1.70505f) - (_300.y * 0.62179f)) - (_300.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _737 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_300.y * 1.1408f) - (_300.x * 0.13026f)) - (_300.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _738 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_300.x * -0.024f) - (_300.y * 0.12897f)) + (_300.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _739 = dot(float3(_736, _737, _738), float3(0.212671f, 0.71516f, 0.072169f));
    _746 = ((_736 - _739) * _powerParams.w) + _739;
    _747 = ((_737 - _739) * _powerParams.w) + _739;
    _748 = ((_738 - _739) * _powerParams.w) + _739;
    _749 = _746 / _toneMapParams0.z;
    _750 = _747 / _toneMapParams0.z;
    _751 = _748 / _toneMapParams0.z;
    _752 = saturate(_749);  // [sem: _749_sat]
    _753 = saturate(_750);  // [sem: _750_sat]
    _754 = saturate(_751);  // [sem: _751_sat]
    _762 = (_752 * _752) * (3.0f - (_752 * 2.0f));
    _764 = (_753 * _753) * (3.0f - (_753 * 2.0f));
    _766 = (_754 * _754) * (3.0f - (_754 * 2.0f));
    _773 = select((_746 < _201), 0.0f, 1.0f);
    _774 = select((_747 < _201), 0.0f, 1.0f);
    _775 = select((_748 < _201), 0.0f, 1.0f);
    _794 = _746 - _toneMapParams0.z;
    _796 = _747 - _toneMapParams0.z;
    _798 = _748 - _toneMapParams0.z;
    // [sem: expr_sat]
    _834 = saturate((((((pow(_750, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _764)) + ((_764 - _774) * ((_796 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_232 * (_796 - _172)) * _176)) * _774));
    _843 = max(max(_267, _435), max(max(_568, _701), _834));
    _850 = sqrt(saturate(min(min(min(_267, _435), min(min(_568, _701), _834)), (1.0f - _843)) * (1.0f / _843))) * (-1.0f / (((1.0f - _278) * 8.0f) + (_278 * 5.0f)));
    _853 = 1.0f / ((_850 * 4.0f) + 1.0f);
    // [sem: expr_sat]
    _876 = saturate(((_850 * (((saturate((((((pow(_483, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _496)) + ((_496 - _507) * ((_528 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_232 * (_528 - _172)) * _176)) * _507)) + saturate((((((pow(_350, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _363)) + ((_363 - _374) * ((_395 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_232 * (_395 - _172)) * _176)) * _374))) + saturate((((((pow(_616, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _629)) + ((_629 - _640) * ((_661 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_232 * (_661 - _172)) * _176)) * _640))) + saturate((((((pow(_749, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _762)) + ((_762 - _773) * ((_794 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_232 * (_794 - _172)) * _176)) * _773)))) + _266) * _853);
    _877 = saturate(((_850 * (((_568 + _435) + _701) + _834)) + _267) * _853);  // [sem: expr_sat]
    // [sem: expr_sat]
    _878 = saturate(((_850 * (((saturate((((((pow(_485, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _500)) + ((_500 - _509) * ((_532 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_232 * (_532 - _172)) * _176)) * _509)) + saturate((((((pow(_352, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _367)) + ((_367 - _376) * ((_399 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_232 * (_399 - _172)) * _176)) * _376))) + saturate((((((pow(_618, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _633)) + ((_633 - _642) * ((_665 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_232 * (_665 - _172)) * _176)) * _642))) + saturate((((((pow(_751, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _766)) + ((_766 - _775) * ((_798 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_232 * (_798 - _172)) * _176)) * _775)))) + _268) * _853);
  } else {
    _876 = _266;  // [sem: expr_sat]
    _877 = _267;  // [sem: expr_sat]
    _878 = _268;  // [sem: expr_sat]
  }
  _885 = 1.0f - abs(_etcParams.w);
  _889 = saturate(_etcParams.w);  // [sem: expr_sat]
  _890 = (_885 * saturate(_876)) + _889;
  _891 = (_885 * saturate(_877)) + _889;
  _892 = (_885 * saturate(_878)) + _889;
  if (_colorGradingParams.w > 0.0f) {
    _897 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _914 = (((max(0.0f, (1.0f - _890)) - _890) * _897) + _890);
    _915 = (((max(0.0f, (1.0f - _891)) - _891) * _897) + _891);
    _916 = (((max(0.0f, (1.0f - _892)) - _892) * _897) + _892);
  } else {
    _914 = _890;
    _915 = _891;
    _916 = _892;
  }
  _923 = _userImageAdjust.y + 1.0f;
  _927 = _userImageAdjust.x + 0.5f;
  _928 = (_923 * (_914 + -0.5f)) + _927;
  _929 = (_923 * (_915 + -0.5f)) + _927;
  _930 = (_923 * (_916 + -0.5f)) + _927;
  _960 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _971 = (TEXCOORD.x * 2.0f) + -1.0f;
  _972 = TEXCOORD.y * 2.0f;
  _973 = 1.0f - _972;
  _1001 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _973, ((_projToPrevProj[3].x) * _971))) + (_projToPrevProj[3].w);
  _1004 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _973, ((_projToPrevProj[0].x) * _971))) + (_projToPrevProj[0].w)) / _1001) - _971;
  _1005 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _973, ((_projToPrevProj[1].x) * _971))) + (_projToPrevProj[1].w)) / _1001) - _973;
  if (_localToneMappingParams.w > 0.0f) {
    _1020 = saturate(1.0f - (sqrt((_1005 * _1005) + (_1004 * _1004)) * 2.0f));  // [sem: expr_sat]
  } else {
    _1020 = 1.0f;  // [sem: expr_sat]
  }
  _1023 = abs(_971);
  _1024 = abs(_972 + -1.0f);
  _1028 = saturate(1.0f - ((_1020 * _postProcessParams.x) * dot(float2(_1023, _1024), float2(_1023, _1024))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _1042 = (_1028 * exp2(log2(saturate(mad(_colorBlind0.z, _930, mad(_colorBlind0.y, _929, (_928 * _colorBlind0.x))))) * _960));
      _1043 = (_1028 * exp2(log2(saturate(mad(_colorBlind1.z, _930, mad(_colorBlind1.y, _929, (_928 * _colorBlind1.x))))) * _960));
      _1044 = (_1028 * exp2(log2(saturate(mad(_colorBlind2.z, _930, mad(_colorBlind2.y, _929, (_928 * _colorBlind2.x))))) * _960));
    } else {
      _1042 = 0.0f;
      _1043 = 0.0f;
      _1044 = 0.0f;
    }
  } else {
    _1042 = 0.0f;
    _1043 = 0.0f;
    _1044 = 0.0f;
  }
  SV_Target.x = _1042;
  SV_Target.y = _1043;
  SV_Target.z = _1044;
  SV_Target.w = _18.w;
  return SV_Target;
}
