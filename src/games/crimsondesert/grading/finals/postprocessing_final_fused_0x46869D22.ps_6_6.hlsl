Texture2D<float4> __3__36__0__0__g_sceneColor : register(t11, space36);

Texture2D<float> __3__36__0__0__g_depth : register(t24, space36);

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
  float _683;
  float _684;
  float _685;
  float _721;
  float _722;
  float _723;
  float _792;
  bool _812;
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
  float _159;
  float _163;
  float _166;
  float _169;
  float _172;
  float _180;
  float _188;
  float _196;
  float _201;
  float _206;
  float _211;
  float _214;
  float _223;
  float4 _226;
  float4 _231;
  float4 _236;
  float4 _241;
  float _260;
  float _274;
  float _288;
  float _289;
  float _293;
  float _297;
  float _301;
  float _304;
  float _307;
  float _310;
  float _318;
  float _326;
  float _334;
  float _339;
  float _351;
  float _363;
  float _375;
  float _376;
  float _379;
  float _383;
  float _387;
  float _390;
  float _393;
  float _396;
  float _404;
  float _412;
  float _420;
  float _425;
  float _437;
  float _449;
  float _461;
  float _462;
  float _465;
  float _469;
  float _473;
  float _476;
  float _479;
  float _482;
  float _490;
  float _498;
  float _506;
  float _511;
  float _523;
  float _535;
  float _547;
  float _548;
  float _551;
  float _555;
  float _559;
  float _562;
  float _565;
  float _568;
  float _576;
  float _584;
  float _592;
  float _597;
  float _601;
  float _617;
  float _620;
  float _689;
  float _690;
  float _693;
  float _696;
  float _699;
  float _704;
  float _726;
  float _728;
  float _731;
  float _734;
  float _737;
  float _743;
  float _745;
  float _746;
  float _747;
  float _759;
  float _769;
  float _779;
  float _793;
  float _795;
  float _802;
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
  _159 = (lerp(_151, _136, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _163 = (lerp(_151, _150, _powerParams.w)) * 1.6666666f;  // [sem: blended]
  _166 = mad(0.04823f, _163, mad(0.35458f, _159, (_155 * 0.9953167f)));
  _169 = mad(0.01566f, _163, mad(0.90834f, _159, (_155 * 0.12666667f)));
  _172 = mad(0.83777f, _163, mad(0.13383f, _159, (_155 * 0.047333334f)));
  _180 = (((_166 + 0.0245786f) * _166) + -9.0537e-05f) / ((((_166 * 0.983729f) + 0.432951f) * _166) + 0.238081f);
  _188 = (((_169 + 0.0245786f) * _169) + -9.0537e-05f) / ((((_169 * 0.983729f) + 0.432951f) * _169) + 0.238081f);
  _196 = (((_172 + 0.0245786f) * _172) + -9.0537e-05f) / ((((_172 * 0.983729f) + 0.432951f) * _172) + 0.238081f);
  _201 = saturate(saturate(mad(-0.07367f, _196, mad(-0.53108f, _188, (_180 * 1.60475f)))));  // [sem: expr_sat]
  _206 = saturate(saturate(mad(-0.00605f, _196, mad(1.10813f, _188, (_180 * -0.10208f)))));  // [sem: expr_sat]
  _211 = saturate(saturate(mad(1.07602f, _196, mad(-0.07276f, _188, (_180 * -0.00327f)))));  // [sem: expr_sat]
  _214 = __3__36__0__0__g_depth.Sample(__0__4__0__0__g_staticPointBlackBorder, float2(TEXCOORD.x, TEXCOORD.y));  // [sem: _3__36__0__0__g_depth_sample]
  if (!((_214.x < 1e-07f) || (_214.x == 1.0f))) {
    _223 = select((_postProcessParams.z >= 1.0f), 1.0f, 0.25f);
    _226 = __3__36__0__0__g_sceneColor.Load(int3(_92, ((int)((uint)((uint)(_95)) + (uint)(-1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _231 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_92)) + (uint)(-1))), _95, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _236 = __3__36__0__0__g_sceneColor.Load(int3(((int)((uint)((uint)(_92)) + (uint)(1))), _95, 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _241 = __3__36__0__0__g_sceneColor.Load(int3(_92, ((int)((uint)((uint)(_95)) + (uint)(1))), 0));  // [sem: _3__36__0__0__g_sceneColor_load]
    _260 = exp2(_powerParams.x * log2(max(0.0f, (_offsetParams.x + (max(0.0f, (((_226.x * 1.70505f) - (_226.y * 0.62179f)) - (_226.z * 0.08326f))) * _102)))));
    _274 = exp2(log2(max(0.0f, ((max(0.0f, (((_226.y * 1.1408f) - (_226.x * 0.13026f)) - (_226.z * 0.01055f))) * _104) + _offsetParams.y))) * _powerParams.y);
    _288 = exp2(log2(max(0.0f, ((max(0.0f, (((_226.x * -0.024f) - (_226.y * 0.12897f)) + (_226.z * 1.15297f))) * _106) + _offsetParams.z))) * _powerParams.z);
    _289 = dot(float3(_260, _274, _288), float3(0.212671f, 0.71516f, 0.072169f));
    _293 = ((_260 - _289) * _powerParams.w) + _289;
    _297 = (lerp(_289, _274, _powerParams.w)) * 1.6666666f;  // [sem: blended]
    _301 = (lerp(_289, _288, _powerParams.w)) * 1.6666666f;  // [sem: blended]
    _304 = mad(0.04823f, _301, mad(0.35458f, _297, (_293 * 0.9953167f)));
    _307 = mad(0.01566f, _301, mad(0.90834f, _297, (_293 * 0.12666667f)));
    _310 = mad(0.83777f, _301, mad(0.13383f, _297, (_293 * 0.047333334f)));
    _318 = (((_304 + 0.0245786f) * _304) + -9.0537e-05f) / ((((_304 * 0.983729f) + 0.432951f) * _304) + 0.238081f);
    _326 = (((_307 + 0.0245786f) * _307) + -9.0537e-05f) / ((((_307 * 0.983729f) + 0.432951f) * _307) + 0.238081f);
    _334 = (((_310 + 0.0245786f) * _310) + -9.0537e-05f) / ((((_310 * 0.983729f) + 0.432951f) * _310) + 0.238081f);
    _339 = saturate(saturate(mad(-0.00605f, _334, mad(1.10813f, _326, (_318 * -0.10208f)))));  // [sem: expr_sat]
    _351 = exp2(log2(max(0.0f, ((max(0.0f, (((_231.x * 1.70505f) - (_231.y * 0.62179f)) - (_231.z * 0.08326f))) * _102) + _offsetParams.x))) * _powerParams.x);
    _363 = exp2(log2(max(0.0f, ((max(0.0f, (((_231.y * 1.1408f) - (_231.x * 0.13026f)) - (_231.z * 0.01055f))) * _104) + _offsetParams.y))) * _powerParams.y);
    _375 = exp2(log2(max(0.0f, ((max(0.0f, (((_231.x * -0.024f) - (_231.y * 0.12897f)) + (_231.z * 1.15297f))) * _106) + _offsetParams.z))) * _powerParams.z);
    _376 = dot(float3(_351, _363, _375), float3(0.212671f, 0.71516f, 0.072169f));
    _379 = ((_351 - _376) * _powerParams.w) + _376;
    _383 = (lerp(_376, _363, _powerParams.w)) * 1.6666666f;  // [sem: blended]
    _387 = (lerp(_376, _375, _powerParams.w)) * 1.6666666f;  // [sem: blended]
    _390 = mad(0.04823f, _387, mad(0.35458f, _383, (_379 * 0.9953167f)));
    _393 = mad(0.01566f, _387, mad(0.90834f, _383, (_379 * 0.12666667f)));
    _396 = mad(0.83777f, _387, mad(0.13383f, _383, (_379 * 0.047333334f)));
    _404 = (((_390 + 0.0245786f) * _390) + -9.0537e-05f) / ((((_390 * 0.983729f) + 0.432951f) * _390) + 0.238081f);
    _412 = (((_393 + 0.0245786f) * _393) + -9.0537e-05f) / ((((_393 * 0.983729f) + 0.432951f) * _393) + 0.238081f);
    _420 = (((_396 + 0.0245786f) * _396) + -9.0537e-05f) / ((((_396 * 0.983729f) + 0.432951f) * _396) + 0.238081f);
    _425 = saturate(saturate(mad(-0.00605f, _420, mad(1.10813f, _412, (_404 * -0.10208f)))));  // [sem: expr_sat]
    _437 = exp2(log2(max(0.0f, ((max(0.0f, (((_236.x * 1.70505f) - (_236.y * 0.62179f)) - (_236.z * 0.08326f))) * _102) + _offsetParams.x))) * _powerParams.x);
    _449 = exp2(log2(max(0.0f, ((max(0.0f, (((_236.y * 1.1408f) - (_236.x * 0.13026f)) - (_236.z * 0.01055f))) * _104) + _offsetParams.y))) * _powerParams.y);
    _461 = exp2(log2(max(0.0f, ((max(0.0f, (((_236.x * -0.024f) - (_236.y * 0.12897f)) + (_236.z * 1.15297f))) * _106) + _offsetParams.z))) * _powerParams.z);
    _462 = dot(float3(_437, _449, _461), float3(0.212671f, 0.71516f, 0.072169f));
    _465 = ((_437 - _462) * _powerParams.w) + _462;
    _469 = (lerp(_462, _449, _powerParams.w)) * 1.6666666f;  // [sem: blended]
    _473 = (lerp(_462, _461, _powerParams.w)) * 1.6666666f;  // [sem: blended]
    _476 = mad(0.04823f, _473, mad(0.35458f, _469, (_465 * 0.9953167f)));
    _479 = mad(0.01566f, _473, mad(0.90834f, _469, (_465 * 0.12666667f)));
    _482 = mad(0.83777f, _473, mad(0.13383f, _469, (_465 * 0.047333334f)));
    _490 = (((_476 + 0.0245786f) * _476) + -9.0537e-05f) / ((((_476 * 0.983729f) + 0.432951f) * _476) + 0.238081f);
    _498 = (((_479 + 0.0245786f) * _479) + -9.0537e-05f) / ((((_479 * 0.983729f) + 0.432951f) * _479) + 0.238081f);
    _506 = (((_482 + 0.0245786f) * _482) + -9.0537e-05f) / ((((_482 * 0.983729f) + 0.432951f) * _482) + 0.238081f);
    _511 = saturate(saturate(mad(-0.00605f, _506, mad(1.10813f, _498, (_490 * -0.10208f)))));  // [sem: expr_sat]
    _523 = exp2(log2(max(0.0f, ((max(0.0f, (((_241.x * 1.70505f) - (_241.y * 0.62179f)) - (_241.z * 0.08326f))) * _102) + _offsetParams.x))) * _powerParams.x);
    _535 = exp2(log2(max(0.0f, ((max(0.0f, (((_241.y * 1.1408f) - (_241.x * 0.13026f)) - (_241.z * 0.01055f))) * _104) + _offsetParams.y))) * _powerParams.y);
    _547 = exp2(log2(max(0.0f, ((max(0.0f, (((_241.x * -0.024f) - (_241.y * 0.12897f)) + (_241.z * 1.15297f))) * _106) + _offsetParams.z))) * _powerParams.z);
    _548 = dot(float3(_523, _535, _547), float3(0.212671f, 0.71516f, 0.072169f));
    _551 = ((_523 - _548) * _powerParams.w) + _548;
    _555 = (lerp(_548, _535, _powerParams.w)) * 1.6666666f;  // [sem: blended]
    _559 = (lerp(_548, _547, _powerParams.w)) * 1.6666666f;  // [sem: blended]
    _562 = mad(0.04823f, _559, mad(0.35458f, _555, (_551 * 0.9953167f)));
    _565 = mad(0.01566f, _559, mad(0.90834f, _555, (_551 * 0.12666667f)));
    _568 = mad(0.83777f, _559, mad(0.13383f, _555, (_551 * 0.047333334f)));
    _576 = (((_562 + 0.0245786f) * _562) + -9.0537e-05f) / ((((_562 * 0.983729f) + 0.432951f) * _562) + 0.238081f);
    _584 = (((_565 + 0.0245786f) * _565) + -9.0537e-05f) / ((((_565 * 0.983729f) + 0.432951f) * _565) + 0.238081f);
    _592 = (((_568 + 0.0245786f) * _568) + -9.0537e-05f) / ((((_568 * 0.983729f) + 0.432951f) * _568) + 0.238081f);
    _597 = saturate(saturate(mad(-0.00605f, _592, mad(1.10813f, _584, (_576 * -0.10208f)))));  // [sem: expr_sat]
    _601 = max(max(_206, _339), max(max(_425, _511), _597));
    _617 = (-1.0f / (((1.0f - _223) * 8.0f) + (_223 * 5.0f))) * sqrt(saturate((1.0f / _601) * min(min(min(_206, _339), min(min(_425, _511), _597)), (1.0f - _601))));
    _620 = 1.0f / ((_617 * 4.0f) + 1.0f);
    // [sem: expr_sat]
    _683 = saturate((((((saturate(saturate(mad(1.07602f, _334, mad(-0.07276f, _326, (_318 * -0.00327f))))) + saturate(saturate(mad(1.07602f, _420, mad(-0.07276f, _412, (_404 * -0.00327f)))))) + saturate(saturate(mad(1.07602f, _506, mad(-0.07276f, _498, (_490 * -0.00327f)))))) + saturate(saturate(mad(1.07602f, _592, mad(-0.07276f, _584, (_576 * -0.00327f)))))) * _617) + _211) * _620);
    _684 = saturate(((_617 * (((_425 + _339) + _511) + _597)) + _206) * _620);  // [sem: expr_sat]
    // [sem: expr_sat]
    _685 = saturate((((((saturate(saturate(mad(-0.07367f, _334, mad(-0.53108f, _326, (_318 * 1.60475f))))) + saturate(saturate(mad(-0.07367f, _420, mad(-0.53108f, _412, (_404 * 1.60475f)))))) + saturate(saturate(mad(-0.07367f, _506, mad(-0.53108f, _498, (_490 * 1.60475f)))))) + saturate(saturate(mad(-0.07367f, _592, mad(-0.53108f, _584, (_576 * 1.60475f)))))) * _617) + _201) * _620);
  } else {
    _683 = _211;  // [sem: expr_sat]
    _684 = _206;  // [sem: expr_sat]
    _685 = _201;  // [sem: expr_sat]
  }
  _689 = 1.0f - abs(_etcParams.w);
  _690 = saturate(_etcParams.w);  // [sem: expr_sat]
  _693 = (saturate(_685) * _689) + _690;
  _696 = (saturate(_684) * _689) + _690;
  _699 = (saturate(_683) * _689) + _690;
  if (_colorGradingParams.w > 0.0f) {
    _704 = saturate(_colorGradingParams.w);  // [sem: expr_sat]
    _721 = (((max(0.0f, (1.0f - _693)) - _693) * _704) + _693);
    _722 = (((max(0.0f, (1.0f - _696)) - _696) * _704) + _696);
    _723 = (((max(0.0f, (1.0f - _699)) - _699) * _704) + _699);
  } else {
    _721 = _693;
    _722 = _696;
    _723 = _699;
  }
  _726 = _userImageAdjust.y + 1.0f;
  _728 = _userImageAdjust.x + 0.5f;
  _731 = (_726 * (_721 + -0.5f)) + _728;
  _734 = (_726 * (_722 + -0.5f)) + _728;
  _737 = (_726 * (_723 + -0.5f)) + _728;
  _743 = 2.2f / ((min(max(_userImageAdjust.w, -1.0f), 1.0f) * 0.8f) + 2.2f);
  _745 = (TEXCOORD.x * 2.0f) + -1.0f;
  _746 = TEXCOORD.y * 2.0f;
  _747 = 1.0f - _746;
  _759 = (_projToPrevProj[3].w) + mad((_projToPrevProj[3].z), 1e-07f, mad((_projToPrevProj[3].y), _747, ((_projToPrevProj[3].x) * _745)));
  _769 = ((mad((_projToPrevProj[0].z), 1e-07f, mad((_projToPrevProj[0].y), _747, ((_projToPrevProj[0].x) * _745))) + (_projToPrevProj[0].w)) / _759) - _745;
  _779 = ((mad((_projToPrevProj[1].z), 1e-07f, mad((_projToPrevProj[1].y), _747, ((_projToPrevProj[1].x) * _745))) + (_projToPrevProj[1].w)) / _759) - _747;
  if (_localToneMappingParams.w > 0.0f) {
    _792 = saturate(1.0f - (sqrt((_779 * _779) + (_769 * _769)) * 2.0f));  // [sem: expr_sat]
  } else {
    _792 = 1.0f;  // [sem: expr_sat]
  }
  _793 = abs(_745);
  _795 = abs(_746 + -1.0f);
  _802 = saturate(1.0f - ((_postProcessParams.x * _792) * dot(float2(_793, _795), float2(_793, _795))));  // [sem: expr_sat]
  if (!(SV_Position.y < _viewDir.w)) {
    _812 = (!(SV_Position.y >= (_screenSizeAndInvSize.y - _viewDir.w)));
  } else {
    _812 = false;
  }
  SV_Target.x = select(_812, (exp2(log2(saturate(mad(_colorBlind0.z, _737, mad(_colorBlind0.y, _734, (_colorBlind0.x * _731))))) * _743) * _802), 0.0f);
  SV_Target.y = select(_812, (exp2(log2(saturate(mad(_colorBlind1.z, _737, mad(_colorBlind1.y, _734, (_colorBlind1.x * _731))))) * _743) * _802), 0.0f);
  SV_Target.z = select(_812, (exp2(log2(saturate(mad(_colorBlind2.z, _737, mad(_colorBlind2.y, _734, (_colorBlind2.x * _731))))) * _743) * _802), 0.0f);
  SV_Target.w = _18.w;
  return SV_Target;
}
