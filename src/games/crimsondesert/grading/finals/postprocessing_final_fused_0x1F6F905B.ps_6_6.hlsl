Texture2D<float4> __3__36__0__0__g_sceneColor : register(t12, space36);

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
  float _587;
  float _772;
  float _773;
  float _774;
  float _876;
  float _898;
  float _899;
  float _900;
  float _51;
  float _52;
  float _56;
  float _61;
  float _65;
  float _70;
  float _74;
  float _80;
  float _90;
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
  float _165;
  float _169;
  float _173;
  float _174;
  float _175;
  float _176;
  float _177;
  float _178;
  float _186;
  float _188;
  float _190;
  float _194;
  float _198;
  float _199;
  float _200;
  float _219;
  float _221;
  float _223;
  float _225;
  float _259;
  float _260;
  float _261;
  float _264;
  float _265;
  float _266;
  float _300;
  float _301;
  float _302;
  float _303;
  float _310;
  float _311;
  float _312;
  float _313;
  float _314;
  float _315;
  float _316;
  float _317;
  float _318;
  float _326;
  float _328;
  float _330;
  float _337;
  float _338;
  float _339;
  float _358;
  float _360;
  float _362;
  float _403;
  float _407;
  float _409;
  float _410;
  float _411;
  float _445;
  float _446;
  float _447;
  float _448;
  float _455;
  float _456;
  float _457;
  float _458;
  float _459;
  float _460;
  float _461;
  float _462;
  float _463;
  float _471;
  float _473;
  float _475;
  float _482;
  float _483;
  float _484;
  float _503;
  float _505;
  float _507;
  float _548;
  float _549;
  float _550;
  float _551;
  float _553;
  float _560;
  float _561;
  float _562;
  float _564;
  float _576;
  float _578;
  float _588;
  float _589;
  float _590;
  float _593;
  float _634;
  float _635;
  float _636;
  float _637;
  float _644;
  float _645;
  float _646;
  float _647;
  float _648;
  float _649;
  float _650;
  float _651;
  float _652;
  float _660;
  float _662;
  float _664;
  float _671;
  float _672;
  float _673;
  float _692;
  float _694;
  float _696;
  float _743;
  float _747;
  float _748;
  float _749;
  float _750;
  float _755;
  float _780;
  float _784;
  float _785;
  float _786;
  float _787;
  float _817;
  float _828;
  float _829;
  float _830;
  float _858;
  float _861;
  float _862;
  float _879;
  float _880;
  float _884;
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
  _90 = _exposure0.x * 0.65f;
  _93 = _90 * _userImageAdjust.z;
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
  _165 = ((_toneMapParams0.x - _toneMapParams0.z) * _toneMapParams0.w) / _toneMapParams0.y;
  _169 = (_toneMapParams0.x - _toneMapParams0.z) - (_165 * _toneMapParams0.y);
  _173 = _152 / _toneMapParams0.z;
  _174 = _153 / _toneMapParams0.z;
  _175 = _154 / _toneMapParams0.z;
  _176 = saturate(_173);  // [sem: _173_sat]
  _177 = saturate(_174);  // [sem: _174_sat]
  _178 = saturate(_175);  // [sem: _175_sat]
  _186 = (_176 * _176) * (3.0f - (_176 * 2.0f));
  _188 = (_177 * _177) * (3.0f - (_177 * 2.0f));
  _190 = (_178 * _178) * (3.0f - (_178 * 2.0f));
  _194 = _165 + _toneMapParams0.z;
  _198 = select((_152 < _194), 0.0f, 1.0f);
  _199 = select((_153 < _194), 0.0f, 1.0f);
  _200 = select((_154 < _194), 0.0f, 1.0f);
  _219 = _152 - _toneMapParams0.z;
  _221 = _153 - _toneMapParams0.z;
  _223 = _154 - _toneMapParams0.z;
  _225 = ((-0.0f - ((_toneMapParams0.x * _toneMapParams0.y) / _169)) / _toneMapParams0.x) * 1.442695f;
  // [sem: expr_sat]
  _259 = saturate((((((pow(_173, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _186)) + ((_186 - _198) * ((_219 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_225 * (_219 - _165)) * _169)) * _198));
  // [sem: expr_sat]
  _260 = saturate((((((pow(_174, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _188)) + ((_188 - _199) * ((_221 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_225 * (_221 - _165)) * _169)) * _199));
  // [sem: expr_sat]
  _261 = saturate((((((pow(_175, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _190)) + ((_190 - _200) * ((_223 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_225 * (_223 - _165)) * _169)) * _200));
  _264 = _localToneMappingParams.x * _85;
  _265 = _localToneMappingParams.x * _86;
  _266 = _localToneMappingParams.x * _87;
  _300 = exp2(log2(max(0.0f, ((_123 * max(0.0f, (((_264 * 1.70505f) - (_265 * 0.62179f)) - (_266 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _301 = exp2(log2(max(0.0f, ((_125 * max(0.0f, (((_265 * 1.1408f) - (_264 * 0.13026f)) - (_266 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _302 = exp2(log2(max(0.0f, ((_127 * max(0.0f, (((_264 * -0.024f) - (_265 * 0.12897f)) + (_266 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _303 = dot(float3(_300, _301, _302), float3(0.212671f, 0.71516f, 0.072169f));
  _310 = ((_300 - _303) * _powerParams.w) + _303;
  _311 = ((_301 - _303) * _powerParams.w) + _303;
  _312 = ((_302 - _303) * _powerParams.w) + _303;
  _313 = _310 / _toneMapParams0.z;
  _314 = _311 / _toneMapParams0.z;
  _315 = _312 / _toneMapParams0.z;
  _316 = saturate(_313);  // [sem: _313_sat]
  _317 = saturate(_314);  // [sem: _314_sat]
  _318 = saturate(_315);  // [sem: _315_sat]
  _326 = (_316 * _316) * (3.0f - (_316 * 2.0f));
  _328 = (_317 * _317) * (3.0f - (_317 * 2.0f));
  _330 = (_318 * _318) * (3.0f - (_318 * 2.0f));
  _337 = select((_310 < _194), 0.0f, 1.0f);
  _338 = select((_311 < _194), 0.0f, 1.0f);
  _339 = select((_312 < _194), 0.0f, 1.0f);
  _358 = _310 - _toneMapParams0.z;
  _360 = _311 - _toneMapParams0.z;
  _362 = _312 - _toneMapParams0.z;
  _403 = dot(float3(saturate(saturate((((((pow(_313, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _326)) + ((_326 - _337) * ((_358 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_225 * (_358 - _165)) * _169)) * _337))), saturate(saturate((((((pow(_314, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _328)) + ((_328 - _338) * ((_360 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_225 * (_360 - _165)) * _169)) * _338))), saturate(saturate((((((pow(_315, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _330)) + ((_330 - _339) * ((_362 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_225 * (_362 - _165)) * _169)) * _339)))), float3(0.1f, 0.7f, 0.2f));
  _407 = dot(float3(saturate(_259), saturate(_260), saturate(_261)), float3(0.1f, 0.7f, 0.2f));
  _409 = _localToneMappingParams.y * _85;
  _410 = _localToneMappingParams.y * _86;
  _411 = _localToneMappingParams.y * _87;
  _445 = exp2(log2(max(0.0f, ((_123 * max(0.0f, (((_409 * 1.70505f) - (_410 * 0.62179f)) - (_411 * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
  _446 = exp2(log2(max(0.0f, ((_125 * max(0.0f, (((_410 * 1.1408f) - (_409 * 0.13026f)) - (_411 * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
  _447 = exp2(log2(max(0.0f, ((_127 * max(0.0f, (((_409 * -0.024f) - (_410 * 0.12897f)) + (_411 * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
  _448 = dot(float3(_445, _446, _447), float3(0.212671f, 0.71516f, 0.072169f));
  _455 = ((_445 - _448) * _powerParams.w) + _448;
  _456 = ((_446 - _448) * _powerParams.w) + _448;
  _457 = ((_447 - _448) * _powerParams.w) + _448;
  _458 = _455 / _toneMapParams0.z;
  _459 = _456 / _toneMapParams0.z;
  _460 = _457 / _toneMapParams0.z;
  _461 = saturate(_458);  // [sem: _458_sat]
  _462 = saturate(_459);  // [sem: _459_sat]
  _463 = saturate(_460);  // [sem: _460_sat]
  _471 = (_461 * _461) * (3.0f - (_461 * 2.0f));
  _473 = (_462 * _462) * (3.0f - (_462 * 2.0f));
  _475 = (_463 * _463) * (3.0f - (_463 * 2.0f));
  _482 = select((_455 < _194), 0.0f, 1.0f);
  _483 = select((_456 < _194), 0.0f, 1.0f);
  _484 = select((_457 < _194), 0.0f, 1.0f);
  _503 = _455 - _toneMapParams0.z;
  _505 = _456 - _toneMapParams0.z;
  _507 = _457 - _toneMapParams0.z;
  _548 = dot(float3(saturate(saturate((((((pow(_458, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _471)) + ((_471 - _482) * ((_503 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_225 * (_503 - _165)) * _169)) * _482))), saturate(saturate((((((pow(_459, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _473)) + ((_473 - _483) * ((_505 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_225 * (_505 - _165)) * _169)) * _483))), saturate(saturate((((((pow(_460, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _475)) + ((_475 - _484) * ((_507 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_225 * (_507 - _165)) * _169)) * _484)))), float3(0.1f, 0.7f, 0.2f));
  _549 = _403 + -0.5f;
  _550 = _407 + -0.5f;
  _551 = _548 + -0.5f;
  _553 = _localToneMappingParams.z * -0.7213475f;
  _560 = exp2((_549 * _549) * _553);
  _561 = exp2((_550 * _550) * _553);
  _562 = exp2((_551 * _551) * _553);
  _564 = dot(float3(_560, _561, _562), float3(1.0f, 1.0f, 1.0f)) + 1e-05f;
  _576 = dot(float3(max(_259, 0.0f), max(_260, 0.0f), max(_261, 0.0f)), float3(0.1f, 0.7f, 0.2f)) + 1e-05f;
  _578 = max(dot(float3(((_560 / _564) * _403), ((_561 / _564) * _407), ((_562 / _564) * _548)), float3(1.0f, 1.0f, 1.0f)), 0.0f) / _576;
  if (!(_576 > 0.007f)) {
    _587 = ((((_576 * _576) * 20408.16f) * (_578 + -1.0f)) + 1.0f);
  } else {
    _587 = _578;
  }
  _588 = _587 * _85;
  _589 = _587 * _86;
  _590 = _587 * _87;
  _593 = _userImageAdjust.z * _90;
  _634 = exp2(log2(max(0.0f, (((_593 * max(0.0f, (((_588 * 1.70505f) - (_589 * 0.62179f)) - (_590 * 0.08326f)))) * _slopeParams.x) + _offsetParams.x))) * _powerParams.x);
  _635 = exp2(log2(max(0.0f, (((max(0.0f, (((_589 * 1.1408f) - (_588 * 0.13026f)) - (_590 * 0.01055f))) * _593) * _slopeParams.y) + _offsetParams.y))) * _powerParams.y);
  _636 = exp2(log2(max(0.0f, (((max(0.0f, (((_588 * -0.024f) - (_589 * 0.12897f)) + (_590 * 1.15297f))) * _593) * _slopeParams.z) + _offsetParams.z))) * _powerParams.z);
  _637 = dot(float3(_634, _635, _636), float3(0.212671f, 0.71516f, 0.072169f));
  _644 = ((_634 - _637) * _powerParams.w) + _637;
  _645 = ((_635 - _637) * _powerParams.w) + _637;
  _646 = ((_636 - _637) * _powerParams.w) + _637;
  _647 = _644 / _toneMapParams0.z;
  _648 = _645 / _toneMapParams0.z;
  _649 = _646 / _toneMapParams0.z;
  _650 = saturate(_647);  // [sem: _647_sat]
  _651 = saturate(_648);  // [sem: _648_sat]
  _652 = saturate(_649);  // [sem: _649_sat]
  _660 = (_650 * _650) * (3.0f - (_650 * 2.0f));
  _662 = (_651 * _651) * (3.0f - (_651 * 2.0f));
  _664 = (_652 * _652) * (3.0f - (_652 * 2.0f));
  _671 = select((_644 < _194), 0.0f, 1.0f);
  _672 = select((_645 < _194), 0.0f, 1.0f);
  _673 = select((_646 < _194), 0.0f, 1.0f);
  _692 = _644 - _toneMapParams0.z;
  _694 = _645 - _toneMapParams0.z;
  _696 = _646 - _toneMapParams0.z;
  _743 = 1.0f - abs(_etcParams.w);
  _747 = saturate(_etcParams.w);  // [sem: expr_sat]
  _748 = (_743 * saturate(max(saturate((((((pow(_647, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _660)) + ((_660 - _671) * ((_692 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_225 * (_692 - _165)) * _169)) * _671)), 0.0f))) + _747;
  _749 = (_743 * saturate(max(saturate((((((pow(_648, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _662)) + ((_662 - _672) * ((_694 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_225 * (_694 - _165)) * _169)) * _672)), 0.0f))) + _747;
  _750 = (_743 * saturate(max(saturate((((((pow(_649, _toneMapParams1.x)) * _toneMapParams0.z) + _toneMapParams1.y) * (1.0f - _664)) + ((_664 - _673) * ((_696 * _toneMapParams0.y) + _toneMapParams0.z))) + ((_toneMapParams0.x - (exp2(_225 * (_696 - _165)) * _169)) * _673)), 0.0f))) + _747;
  if (_colorGradingParams.w > 0.0f) {
    _755 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _772 = (((max(0.0f, (1.0f - _748)) - _748) * _755) + _748);
    _773 = (((max(0.0f, (1.0f - _749)) - _749) * _755) + _749);
    _774 = (((max(0.0f, (1.0f - _750)) - _750) * _755) + _750);
  } else {
    _772 = _748;
    _773 = _749;
    _774 = _750;
  }
  _780 = _userImageAdjust.y + 1.0f;
  _784 = _userImageAdjust.x + 0.5f;
  _785 = ((_772 + -0.5f) * _780) + _784;
  _786 = ((_773 + -0.5f) * _780) + _784;
  _787 = ((_774 + -0.5f) * _780) + _784;
  _817 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _828 = (TEXCOORD.x * 2.0f) + -1.0f;
  _829 = TEXCOORD.y * 2.0f;
  _830 = 1.0f - _829;
  _858 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _830, ((_projToPrevProj[3].x) * _828))) + (_projToPrevProj[3].w);
  _861 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _830, ((_projToPrevProj[0].x) * _828))) + (_projToPrevProj[0].w)) / _858) - _828;
  _862 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _830, ((_projToPrevProj[1].x) * _828))) + (_projToPrevProj[1].w)) / _858) - _830;
  if (_localToneMappingParams.w > 0.0f) {
    _876 = saturate(1.0f - (sqrt((_862 * _862) + (_861 * _861)) * 2.0f));  // [sem: expr_sat]
  } else {
    _876 = 1.0f;  // [sem: expr_sat]
  }
  _879 = abs(_828);
  _880 = abs(_829 + -1.0f);
  _884 = saturate(1.0f - ((_876 * _postProcessParams.x) * dot(float2(_879, _880), float2(_879, _880))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    if (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w))) {
      _898 = (_884 * exp2(log2(saturate(mad(_colorBlind0.z, _787, mad(_colorBlind0.y, _786, (_colorBlind0.x * _785))))) * _817));
      _899 = (_884 * exp2(log2(saturate(mad(_colorBlind1.z, _787, mad(_colorBlind1.y, _786, (_colorBlind1.x * _785))))) * _817));
      _900 = (_884 * exp2(log2(saturate(mad(_colorBlind2.z, _787, mad(_colorBlind2.y, _786, (_colorBlind2.x * _785))))) * _817));
    } else {
      _898 = 0.0f;
      _899 = 0.0f;
      _900 = 0.0f;
    }
  } else {
    _898 = 0.0f;
    _899 = 0.0f;
    _900 = 0.0f;
  }
  SV_Target.x = _898;
  SV_Target.y = _899;
  SV_Target.z = _900;
  SV_Target.w = _17.w;
  return SV_Target;
}
