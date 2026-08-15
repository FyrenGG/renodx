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
  float _624;
  float _625;
  float _626;
  float _662;
  float _663;
  float _664;
  float _766;
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
  float _172;
  float _173;
  float _176;
  float _180;
  float _183;
  float _184;
  float _185;
  float _186;
  float _187;
  float _188;
  float _189;
  float _190;
  float _218;
  float _219;
  float _220;
  float _222;
  float _230;
  float4 _237;
  float4 _242;
  float4 _247;
  float4 _252;
  float _289;
  float _290;
  float _291;
  float _292;
  float _302;
  float _303;
  float _304;
  float _305;
  float _306;
  float _307;
  float _336;
  float _371;
  float _372;
  float _373;
  float _374;
  float _384;
  float _385;
  float _386;
  float _387;
  float _388;
  float _389;
  float _418;
  float _453;
  float _454;
  float _455;
  float _456;
  float _466;
  float _467;
  float _468;
  float _469;
  float _470;
  float _471;
  float _500;
  float _535;
  float _536;
  float _537;
  float _538;
  float _548;
  float _549;
  float _550;
  float _551;
  float _552;
  float _553;
  float _582;
  float _591;
  float _598;
  float _601;
  float _633;
  float _637;
  float _638;
  float _639;
  float _640;
  float _645;
  float _670;
  float _674;
  float _675;
  float _676;
  float _677;
  float _707;
  float _718;
  float _719;
  float _720;
  float _748;
  float _751;
  float _752;
  float _769;
  float _770;
  float _774;
  bool _783;
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
  _172 = _toneMapParams0.x * _toneMapParams1.z;
  _173 = _toneMapParams0.y * _toneMapParams0.z;
  _176 = _toneMapParams0.w * _toneMapParams1.x;
  _180 = _toneMapParams0.w * _toneMapParams1.y;
  _183 = _toneMapParams1.x / _toneMapParams1.y;
  _184 = ((((_172 + _173) * _toneMapParams1.z) + _176) / (((_172 + _toneMapParams0.y) * _toneMapParams1.z) + _180)) - _183;
  _185 = (lerp(_152, _148, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _186 = (lerp(_152, _149, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _187 = (lerp(_152, _150, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
  _188 = _185 * _toneMapParams0.x;
  _189 = _186 * _toneMapParams0.x;
  _190 = _187 * _toneMapParams0.x;
  _218 = saturate((((((_188 + _173) * _185) + _176) / (((_188 + _toneMapParams0.y) * _185) + _180)) - _183) / _184);  // [sem: expr_sat]
  _219 = saturate((((((_189 + _173) * _186) + _176) / (((_189 + _toneMapParams0.y) * _186) + _180)) - _183) / _184);  // [sem: expr_sat]
  _220 = saturate((((((_190 + _173) * _187) + _176) / (((_190 + _toneMapParams0.y) * _187) + _180)) - _183) / _184);  // [sem: expr_sat]
  _222 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_222.x < 1e-07f) || (_222.x == 1.0f))) {
    _230 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _237 = __3__36__0__0__g_sceneColor.Load(int3(_94, ((int)((uint)((uint)(_95)) + (uint)(-1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _242 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_94)) + (uint)(-1))), _95, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _247 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_94)) + (uint)(1))), _95, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _252 = __3__36__0__0__g_sceneColor.Load(int3(_94, ((int)((uint)((uint)(_95)) + (uint)(1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _289 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_237.x * 1.70505f) - (_237.y * 0.62179f)) - (_237.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _290 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_237.y * 1.1408f) - (_237.x * 0.13026f)) - (_237.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _291 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_237.x * -0.024f) - (_237.y * 0.12897f)) + (_237.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _292 = dot(float3(_289, _290, _291), float3(0.212671f, 0.71516f, 0.072169f));
    _302 = (lerp(_292, _289, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
    _303 = (lerp(_292, _290, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
    _304 = (lerp(_292, _291, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
    _305 = _302 * _toneMapParams0.x;
    _306 = _303 * _toneMapParams0.x;
    _307 = _304 * _toneMapParams0.x;
    _336 = saturate((((((_306 + _173) * _303) + _176) / (((_306 + _toneMapParams0.y) * _303) + _180)) - _183) / _184);  // [sem: expr_sat]
    _371 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_242.x * 1.70505f) - (_242.y * 0.62179f)) - (_242.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _372 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_242.y * 1.1408f) - (_242.x * 0.13026f)) - (_242.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _373 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_242.x * -0.024f) - (_242.y * 0.12897f)) + (_242.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _374 = dot(float3(_371, _372, _373), float3(0.212671f, 0.71516f, 0.072169f));
    _384 = (lerp(_374, _371, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
    _385 = (lerp(_374, _372, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
    _386 = (lerp(_374, _373, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
    _387 = _384 * _toneMapParams0.x;
    _388 = _385 * _toneMapParams0.x;
    _389 = _386 * _toneMapParams0.x;
    _418 = saturate((((((_388 + _173) * _385) + _176) / (((_388 + _toneMapParams0.y) * _385) + _180)) - _183) / _184);  // [sem: expr_sat]
    _453 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_247.x * 1.70505f) - (_247.y * 0.62179f)) - (_247.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _454 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_247.y * 1.1408f) - (_247.x * 0.13026f)) - (_247.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _455 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_247.x * -0.024f) - (_247.y * 0.12897f)) + (_247.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _456 = dot(float3(_453, _454, _455), float3(0.212671f, 0.71516f, 0.072169f));
    _466 = (lerp(_456, _453, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
    _467 = (lerp(_456, _454, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
    _468 = (lerp(_456, _455, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
    _469 = _466 * _toneMapParams0.x;
    _470 = _467 * _toneMapParams0.x;
    _471 = _468 * _toneMapParams0.x;
    _500 = saturate((((((_470 + _173) * _467) + _176) / (((_470 + _toneMapParams0.y) * _467) + _180)) - _183) / _184);  // [sem: expr_sat]
    _535 = exp2(log2(max(0.0f, ((_130 * max(0.0f, (((_252.x * 1.70505f) - (_252.y * 0.62179f)) - (_252.z * 0.08326f)))) + _offsetParams.x))) * _powerParams.x);
    _536 = exp2(log2(max(0.0f, ((_132 * max(0.0f, (((_252.y * 1.1408f) - (_252.x * 0.13026f)) - (_252.z * 0.01055f)))) + _offsetParams.y))) * _powerParams.y);
    _537 = exp2(log2(max(0.0f, ((_134 * max(0.0f, (((_252.x * -0.024f) - (_252.y * 0.12897f)) + (_252.z * 1.15297f)))) + _offsetParams.z))) * _powerParams.z);
    _538 = dot(float3(_535, _536, _537), float3(0.212671f, 0.71516f, 0.072169f));
    _548 = (lerp(_538, _535, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
    _549 = (lerp(_538, _536, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
    _550 = (lerp(_538, _537, _powerParams.w)) * _toneMapParams1.w;  // [sem: blended]
    _551 = _548 * _toneMapParams0.x;
    _552 = _549 * _toneMapParams0.x;
    _553 = _550 * _toneMapParams0.x;
    _582 = saturate((((((_552 + _173) * _549) + _176) / (((_552 + _toneMapParams0.y) * _549) + _180)) - _183) / _184);  // [sem: expr_sat]
    _591 = max(max(_219, _336), max(max(_418, _500), _582));
    _598 = sqrt(saturate(min(min(min(_219, _336), min(min(_418, _500), _582)), (1.0f - _591)) * (1.0f / _591))) * (-1.0f / (((1.0f - _230) * 8.0f) + (_230 * 5.0f)));
    _601 = 1.0f / ((_598 * 4.0f) + 1.0f);
    // [sem: expr_sat]
    _624 = saturate(((_598 * (((saturate((((((_387 + _173) * _384) + _176) / (((_387 + _toneMapParams0.y) * _384) + _180)) - _183) / _184) + saturate((((((_305 + _173) * _302) + _176) / (((_305 + _toneMapParams0.y) * _302) + _180)) - _183) / _184)) + saturate((((((_469 + _173) * _466) + _176) / (((_469 + _toneMapParams0.y) * _466) + _180)) - _183) / _184)) + saturate((((((_551 + _173) * _548) + _176) / (((_551 + _toneMapParams0.y) * _548) + _180)) - _183) / _184))) + _218) * _601);
    _625 = saturate(((_598 * (((_418 + _336) + _500) + _582)) + _219) * _601);  // [sem: expr_sat]
    // [sem: expr_sat]
    _626 = saturate(((_598 * (((saturate((((((_389 + _173) * _386) + _176) / (((_389 + _toneMapParams0.y) * _386) + _180)) - _183) / _184) + saturate((((((_307 + _173) * _304) + _176) / (((_307 + _toneMapParams0.y) * _304) + _180)) - _183) / _184)) + saturate((((((_471 + _173) * _468) + _176) / (((_471 + _toneMapParams0.y) * _468) + _180)) - _183) / _184)) + saturate((((((_553 + _173) * _550) + _176) / (((_553 + _toneMapParams0.y) * _550) + _180)) - _183) / _184))) + _220) * _601);
  } else {
    _624 = _218;  // [sem: expr_sat]
    _625 = _219;  // [sem: expr_sat]
    _626 = _220;  // [sem: expr_sat]
  }
  _633 = 1.0f - abs(_etcParams.w);
  _637 = saturate(_etcParams.w);  // [sem: expr_sat]
  _638 = (_633 * saturate(_624)) + _637;
  _639 = (_633 * saturate(_625)) + _637;
  _640 = (_633 * saturate(_626)) + _637;
  if (_colorGradingParams.w > 0.0f) {
    _645 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _662 = (((max(0.0f, (1.0f - _638)) - _638) * _645) + _638);
    _663 = (((max(0.0f, (1.0f - _639)) - _639) * _645) + _639);
    _664 = (((max(0.0f, (1.0f - _640)) - _640) * _645) + _640);
  } else {
    _662 = _638;
    _663 = _639;
    _664 = _640;
  }
  _670 = _userImageAdjust.y + 1.0f;
  _674 = _userImageAdjust.x + 0.5f;
  _675 = ((_662 + -0.5f) * _670) + _674;
  _676 = ((_663 + -0.5f) * _670) + _674;
  _677 = ((_664 + -0.5f) * _670) + _674;
  _707 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _718 = (TEXCOORD.x * 2.0f) + -1.0f;
  _719 = TEXCOORD.y * 2.0f;
  _720 = 1.0f - _719;
  _748 = mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _720, ((_projToPrevProj[3].x) * _718))) + (_projToPrevProj[3].w);
  _751 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _720, ((_projToPrevProj[0].x) * _718))) + (_projToPrevProj[0].w)) / _748) - _718;
  _752 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _720, ((_projToPrevProj[1].x) * _718))) + (_projToPrevProj[1].w)) / _748) - _720;
  if (_localToneMappingParams.w > 0.0f) {
    _766 = saturate(1.0f - (sqrt((_752 * _752) + (_751 * _751)) * 2.0f));  // [sem: expr_sat]
  } else {
    _766 = 1.0f;  // [sem: expr_sat]
  }
  _769 = abs(_718);
  _770 = abs(_719 + -1.0f);
  _774 = saturate(1.0f - ((_766 * _postProcessParams.x) * dot(float2(_769, _770), float2(_769, _770))));  // [sem: expr_sat]
  _783 = (!(SV_Position.y < _viewDir.w)) && (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w)));
  SV_Target.x = select(_783, (_774 * exp2(log2(saturate(mad(_colorBlind0.z, _677, mad(_colorBlind0.y, _676, (_colorBlind0.x * _675))))) * _707)), 0.0f);
  SV_Target.y = select(_783, (_774 * exp2(log2(saturate(mad(_colorBlind1.z, _677, mad(_colorBlind1.y, _676, (_colorBlind1.x * _675))))) * _707)), 0.0f);
  SV_Target.z = select(_783, (_774 * exp2(log2(saturate(mad(_colorBlind2.z, _677, mad(_colorBlind2.y, _676, (_colorBlind2.x * _675))))) * _707)), 0.0f);
  SV_Target.w = _18.w;
  return SV_Target;
}
